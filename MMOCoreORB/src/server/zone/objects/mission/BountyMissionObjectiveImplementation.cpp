/*
 * BountyMissionObjectiveImplementation.cpp
 *
 *  Created on: 20/08/2010
 *      Author: dannuic
 */

#include "server/zone/objects/mission/BountyMissionObjective.h"

#include "server/zone/objects/waypoint/WaypointObject.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/object/ObjectManager.h"
#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/mission/MissionObject.h"
#include "server/zone/objects/mission/MissionObserver.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/chat/ChatManager.h"
#include "server/zone/objects/mission/bountyhunter/BountyHunterDroid.h"
#include "server/zone/objects/mission/bountyhunter/events/BountyHunterTargetTask.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/loot/LootManager.h"

void BountyMissionObjectiveImplementation::setNpcTemplateToSpawn(SharedObjectTemplate* sp) {
	npcTemplateToSpawn = sp;
}

void BountyMissionObjectiveImplementation::activate() {
	Locker locker(&syncMutex);

	MissionObjectiveImplementation::activate();

	bool failMission = false;

	//Start NPC task or add observers to player target.
	if (getObserverCount() == 2) {
		removeNpcTargetObservers();
		startNpcTargetTask();
	} else if (getObserverCount() != 6) {
		if (isPlayerTarget()) {
			failMission = !addPlayerTargetObservers();
		} else {
			startNpcTargetTask();
		}
	}
  
	if (failMission) {
		getPlayerOwner().get()->sendSystemMessage("@mission/mission_generic:failed"); // Mission failed
		abort();
		removeMissionFromPlayer();
	}
}

void BountyMissionObjectiveImplementation::deactivate() {
	MissionObjectiveImplementation::deactivate();

	if (activeDroid != NULL) {
		if (!activeDroid->isPlayerCreature()) {
			Locker locker(activeDroid);
			activeDroid->destroyObjectFromDatabase();
			activeDroid->destroyObjectFromWorld(true);
		}

		activeDroid = NULL;
	}
}

void BountyMissionObjectiveImplementation::abort() {
	Locker locker(&syncMutex);

	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	ManagedReference<MissionObject*> strongRef = mission.get();

	MissionObjectiveImplementation::abort();

	cancelAllTasks();

	if (strongRef == NULL || owner == NULL)
		return;

	owner->getZoneServer()->getMissionManager()->removeBountyHunterFromPlayerBounty(strongRef->getTargetObjectId(), owner->getObjectID());

	removeFromBountyLock(true);

	WaypointObject* waypoint = strongRef->getWaypointToMission();
	if (waypoint != NULL && waypoint->isActive()) {
		Locker wplocker(waypoint);
		waypoint->setActive(false);
	}

	//Remove observers
	if (hasObservers()) {
		if (isPlayerTarget()) {
			removePlayerTargetObservers();
		} else {
			removeNpcTargetObservers();
		}
	}

}

void BountyMissionObjectiveImplementation::complete() {
	Locker locker(&syncMutex);

	cancelAllTasks();

	ManagedReference<MissionObject* > mission = this->mission.get();

	if(mission == NULL)
		return;

	ManagedReference<CreatureObject*> owner = getPlayerOwner();
	//Award bountyhunter xp.
	owner->getZoneServer()->getPlayerManager()->awardExperience(owner, "bountyhunter", mission->getRewardCredits() / 10, true, 1);

	owner->getZoneServer()->getMissionManager()->completePlayerBounty(mission->getTargetObjectId(), owner->getObjectID());

	removeFromBountyLock(true);

	MissionObjectiveImplementation::complete();
}

void BountyMissionObjectiveImplementation::spawnTarget(const String& zoneName) {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();

	if (mission == NULL || (npcTarget != NULL && npcTarget->isInQuadTree()) || isPlayerTarget()) {
		return;
	}

	ZoneServer* zoneServer = getPlayerOwner().get()->getZoneServer();
	Zone* zone = zoneServer->getZone(zoneName);
	CreatureManager* cmng = zone->getCreatureManager();

	if (npcTarget == NULL) {
		Vector3 position = getTargetPosition();

		try {
			npcTarget = cast<AiAgent*>(zone->getCreatureManager()->spawnCreatureWithAi(mission->getTargetOptionalTemplate().hashCode(), position.getX(), zone->getHeight(position.getX(), position.getY()), position.getY(), 0));
		} catch (Exception& e) {
			fail();
			ManagedReference<CreatureObject*> player = getPlayerOwner();
			if (player != NULL) {
				player->sendSystemMessage("ERROR: could not find template for target. Please report this on Mantis to help us track down the root cause.");
			}
			error("Template error: " + e.getMessage() + " Template = '" + mission->getTargetOptionalTemplate() +"'");
		}
		if (npcTarget != NULL) {
			npcTarget->setCustomObjectName(mission->getTargetName(), true);
			//TODO add observer to catch player kill and fail mission in that case.
			addObserverToCreature(ObserverEventType::OBJECTDESTRUCTION, npcTarget);
			addObserverToCreature(ObserverEventType::DAMAGERECEIVED, npcTarget);
		} else {
			fail();
			ManagedReference<CreatureObject*> player = getPlayerOwner();
			if (player != NULL) {
				player->sendSystemMessage("ERROR: could not find template for target. Please report this on Mantis to help us track down the root cause.");
			}
			error("Could not spawn template: '" + mission->getTargetOptionalTemplate() + "'");
		}
	}
}

int BountyMissionObjectiveImplementation::notifyObserverEvent(MissionObserver* observer, uint32 eventType, Observable* observable, ManagedObject* arg1, int64 arg2) {
	Locker locker(&syncMutex);

	if (eventType == ObserverEventType::OBJECTDESTRUCTION) {
		handleNpcTargetKilled(observable);
	} else if (eventType == ObserverEventType::DAMAGERECEIVED) {
		return handleNpcTargetReceivesDamage(arg1);
	} else if (eventType == ObserverEventType::PLAYERKILLED) {
		handlePlayerKilled(arg1);
	} else if (eventType == ObserverEventType::DEFENDERADDED) {
		handleDefenderAdded(arg1);
	} else if (eventType == ObserverEventType::DEFENDERDROPPED) {
		handleDefenderDropped(arg1);
	}

	return 0;
}

void BountyMissionObjectiveImplementation::updateMissionStatus(int informantLevel) {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();

	if (getPlayerOwner() == NULL || mission == NULL) {
		return;
	}

	switch (objectiveStatus) {
	case INITSTATUS:
		if (mission->getTargetOptionalTemplate() != "") {
			startNpcTargetTask();
		}

		if (informantLevel == 1) {
			updateWaypoint();
		}
		objectiveStatus = HASBIOSIGNATURESTATUS;
		break;
	case HASBIOSIGNATURESTATUS:
		if (informantLevel > 1) {
			updateWaypoint();
		}
		objectiveStatus = HASTALKED;
		break;
	case HASTALKED:
		if (informantLevel > 1) {
			updateWaypoint();
		}
		break;
	default:
		break;
	}
}

void BountyMissionObjectiveImplementation::updateWaypoint() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();

	if(mission == NULL)
		return;

	WaypointObject* waypoint = mission->getWaypointToMission();

	Locker wplocker(waypoint);

	waypoint->setPlanetCRC(getTargetZoneName().hashCode());
	Vector3 position = getTargetPosition();
	waypoint->setPosition(position.getX(), 0, position.getY());
	waypoint->setActive(true);

	mission->updateMissionLocation();

	if (mission->getMissionLevel() == 1) {
		getPlayerOwner().get()->sendSystemMessage("@mission/mission_bounty_informant:target_location_received"); // Target Waypoint Received.
	}
}

void BountyMissionObjectiveImplementation::performDroidAction(int action, SceneObject* sceneObject, CreatureObject* player) {
	Locker locker(&syncMutex);

	if (!playerHasMissionOfCorrectLevel(action)) {
		player->sendSystemMessage("@mission/mission_generic:bounty_no_ability"); // You do not understand how to use this item.
		return;
	}

	if (droid == NULL) {
		droid = new BountyHunterDroid();
	}

	Reference<Task*> task = droid->performAction(action, sceneObject, player, getMissionObject().get());

	if (task != NULL)
		droidTasks.add(task);
}

bool BountyMissionObjectiveImplementation::hasArakydFindTask() {
	Locker locker(&syncMutex);

	for (int i = 0; i < droidTasks.size(); i++) {
		Reference<Task*> task = droidTasks.get(i);

		if (task != NULL) {
			Reference<FindTargetTask*> findTask = task.castTo<FindTargetTask*>();

			if (findTask != NULL) {
				if (!findTask->isCompleted() && findTask->isArakydTask())
					return true;
			}
		}
	}

	return false;
}

bool BountyMissionObjectiveImplementation::playerHasMissionOfCorrectLevel(int action) {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();
	if(mission == NULL)
		return false;

	int levelNeeded = 2;
	if (action == BountyHunterDroid::FINDANDTRACKTARGET) {
		levelNeeded = 3;
	}

	return mission->getMissionLevel() >= levelNeeded;
}

Vector3 BountyMissionObjectiveImplementation::getTargetPosition() {
	Locker locker(&syncMutex);

	Vector3 empty;

	ManagedReference<MissionObject* > mission = this->mission.get();

	if(mission == NULL)
		return empty;

	if (isPlayerTarget()) {
		uint64 targetId = mission->getTargetObjectId();

		ZoneServer* zoneServer = getPlayerOwner().get()->getZoneServer();
		if (zoneServer != NULL) {
			ManagedReference<CreatureObject*> creature = zoneServer->getObject(targetId).castTo<CreatureObject*>();

			if (creature != NULL) {
				return creature->getWorldPosition();
			}
		}
	} else {
		if (targetTask != NULL) {
			return targetTask->getTargetPosition();
		}
	}

	return empty;
}

void BountyMissionObjectiveImplementation::cancelAllTasks() {
	Locker locker(&syncMutex);

	if (targetTask != NULL && targetTask->isScheduled()) {
		targetTask->cancel();
		targetTask = NULL;
	}

	for (int i = 0; i < droidTasks.size(); i++) {
		Reference<Task*> droidTask = droidTasks.get(i);

		if (droidTask != NULL && droidTask->isScheduled()) {
			droidTask->cancel();
		}
	}

	droidTasks.removeAll();
}

void BountyMissionObjectiveImplementation::cancelCallArakydTask() {
	Locker locker(&syncMutex);

	for (int i = 0; i < droidTasks.size(); i++) {
		Reference<Task*> task = droidTasks.get(i);

		if (task != NULL) {
			Reference<CallArakydTask*> callTask = task.castTo<CallArakydTask*>();

			if (callTask != NULL && callTask->isScheduled()) {
				callTask->cancel();
			}
		}
	}
}

String BountyMissionObjectiveImplementation::getTargetZoneName() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();
	if(mission == NULL)
		return "dungeon1";

	if (isPlayerTarget()) {
		uint64 targetId = mission->getTargetObjectId();

		ZoneServer* zoneServer = getPlayerOwner().get()->getZoneServer();
		if (zoneServer != NULL) {
			ManagedReference<CreatureObject*> creature = zoneServer->getObject(targetId).castTo<CreatureObject*>();

			if (creature != NULL && creature->getZone() != NULL) {
				return creature->getZone()->getZoneName();
			}
		}
	} else {
		if (targetTask != NULL) {
			return targetTask->getTargetZoneName();
		}
	}

	//No target task, return dungeon1 which is not able to find.
	return "dungeon1";
}

void BountyMissionObjectiveImplementation::addToBountyLock() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();

	ManagedReference<PlayerObject*> ghost = getPlayerOwner().get()->getPlayerObject();

	if (ghost == NULL || mission == NULL) {
		return;
	}

	ghost->addToBountyLockList(mission->getTargetObjectId());
}

void BountyMissionObjectiveImplementation::removeFromBountyLock(bool immediately) {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();

	ManagedReference<PlayerObject*> ghost = getPlayerOwner().get()->getPlayerObject();

	if (ghost == NULL || mission == NULL) {
		return;
	}

	ghost->removeFromBountyLockList(mission->getTargetObjectId(), immediately);
}

void BountyMissionObjectiveImplementation::removePlayerTargetObservers() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if(owner == NULL || mission == NULL)
		return;

	removeObserver(5, ObserverEventType::DEFENDERDROPPED, owner);
	removeObserver(4, ObserverEventType::DEFENDERADDED, owner);
	removeObserver(3, ObserverEventType::PLAYERKILLED, owner);

	ZoneServer* zoneServer = owner->getZoneServer();

	if (zoneServer != NULL) {
		ManagedReference<CreatureObject*> target = zoneServer->getObject(mission->getTargetObjectId()).castTo<CreatureObject*>();

		removeObserver(2, ObserverEventType::DEFENDERDROPPED, target);
		removeObserver(1, ObserverEventType::DEFENDERADDED, target);
		removeObserver(0, ObserverEventType::PLAYERKILLED, target);
	}
}

void BountyMissionObjectiveImplementation::removeNpcTargetObservers() {
	if (npcTarget != NULL) {
		ManagedReference<SceneObject*> npcHolder = npcTarget.get();
		Locker locker(npcTarget);

		removeObserver(1, ObserverEventType::DAMAGERECEIVED, npcTarget);
		removeObserver(0, ObserverEventType::OBJECTDESTRUCTION, npcTarget);

		npcTarget->destroyObjectFromDatabase();
		npcTarget->destroyObjectFromWorld(true);

		npcTarget = NULL;
	} else {
		// NPC not spawned, remove observers anyway.
		Locker locker(&syncMutex);

		dropObserver(getObserver(1), true);
		dropObserver(getObserver(0), true);
	}
}

void BountyMissionObjectiveImplementation::removeObserver(int observerNumber, unsigned int observerType, CreatureObject* creature) {
	Locker locker(&syncMutex);

	if (getObserverCount() <= observerNumber) {
		//Observer does not exist.
		return;
	}

	ManagedReference<MissionObserver*> observer = getObserver(observerNumber);

	if (creature != NULL)
	 creature->dropObserver(observerType, observer);

	dropObserver(observer, true);
}

void BountyMissionObjectiveImplementation::addObserverToCreature(unsigned int observerType, CreatureObject* creature) {
	ManagedReference<MissionObserver*> observer = new MissionObserver(_this.getReferenceUnsafeStaticCast());
	addObserver(observer, true);

	creature->registerObserver(observerType, observer);
}

bool BountyMissionObjectiveImplementation::addPlayerTargetObservers() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if(mission == NULL || owner == NULL)
		return false;

	ZoneServer* zoneServer = owner->getZoneServer();

	if (zoneServer != NULL) {
		ManagedReference<CreatureObject*> target = zoneServer->getObject(mission->getTargetObjectId()).castTo<CreatureObject*>();

		if (target != NULL) {
			addObserverToCreature(ObserverEventType::PLAYERKILLED, target);
			addObserverToCreature(ObserverEventType::DEFENDERADDED, target);
			addObserverToCreature(ObserverEventType::DEFENDERDROPPED, target);

			addObserverToCreature(ObserverEventType::PLAYERKILLED, owner);
			addObserverToCreature(ObserverEventType::DEFENDERADDED, owner);
			addObserverToCreature(ObserverEventType::DEFENDERDROPPED, owner);

			owner->getZoneServer()->getMissionManager()->addBountyHunterToPlayerBounty(mission->getTargetObjectId(), owner->getObjectID());

			//Update aggressive status on target for bh.
			target->sendPvpStatusTo(owner);

			return true;
		}
	}

	return false;
}

void BountyMissionObjectiveImplementation::startNpcTargetTask() {
	Locker locker(&syncMutex);

	ManagedReference<MissionObject* > mission = this->mission.get();
	if(mission == NULL)
		return;


	targetTask = new BountyHunterTargetTask(mission, getPlayerOwner().get(), mission->getEndPlanet());

	if (targetTask != NULL && !targetTask->isScheduled()) {
		targetTask->schedule(5 * 1000);
	}
}

bool BountyMissionObjectiveImplementation::isPlayerTarget() {
	ManagedReference<MissionObject* > mission = this->mission.get();
	if(mission == NULL)
		return false;

	return mission->getTargetOptionalTemplate() == "";
}

void BountyMissionObjectiveImplementation::handleNpcTargetKilled(Observable* observable) {
	CreatureObject* target =  cast<CreatureObject*>(observable);
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if (owner == NULL || target == NULL)
		return;

	SceneObject* targetInventory = target->getSlottedObject("inventory");

	if (targetInventory == NULL)
		return;

	uint64 lootOwnerID = targetInventory->getContainerPermissions()->getOwnerID();
	GroupObject* group = owner->getGroup();

	if (lootOwnerID == owner->getObjectID() || (group != NULL && lootOwnerID == group->getObjectID())) {
		//Target killed by player, complete mission.
		complete();
	} else {
		//Target killed by other player, fail mission.
		owner->sendSystemMessage("@mission/mission_generic:failed"); // Mission failed
		abort();
		removeMissionFromPlayer();
	}
}

int BountyMissionObjectiveImplementation::handleNpcTargetReceivesDamage(ManagedObject* arg1) {
	CreatureObject* target = NULL;

	target = cast<CreatureObject*>(arg1);

	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if (mission != NULL && owner != NULL && target != NULL && target->getFirstName() == owner->getFirstName() &&
			target->isPlayerCreature() && objectiveStatus == HASBIOSIGNATURESTATUS) {
		updateMissionStatus(mission->getMissionLevel());

		String diffString = "easy";
		if (mission->getMissionLevel() == 3) {
			diffString = "hard";
		} else if (mission->getMissionLevel() == 2) {
			diffString = "medium";
		}

		target->getZoneServer()->getChatManager()->broadcastChatMessage(npcTarget, "@mission/mission_bounty_neutral_" + diffString + ":m" + String::valueOf(mission->getMissionNumber()) + "v", 0, 0, npcTarget->getMoodID());
		return 1;
	}

	return 0;
}

void BountyMissionObjectiveImplementation::handlePlayerKilled(ManagedObject* arg1) {
	CreatureObject* killer = NULL;

	killer = cast<CreatureObject*>(arg1);


	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();
	ManagedReference<SceneObject*> inventory = killer->getSlottedObject("inventory");
	ManagedReference<LootManager*> lootManager = killer->getZoneServer()->getLootManager();
	

	if(mission == NULL)
		return;

	if (owner != NULL && killer != NULL) {
		String playerName = killer->getFirstName();
		String bhName = owner->getFirstName();
		if (owner->getObjectID() == killer->getObjectID()) {
			//Target killed by player, complete mission.
			ZoneServer* zoneServer = owner->getZoneServer();
			if (zoneServer != NULL) {
				ManagedReference<CreatureObject*> target = zoneServer->getObject(mission->getTargetObjectId()).castTo<CreatureObject*>();
				if (target != NULL) {
					int minXpLoss = -50000;
					int maxXpLoss = -500000;

					VisibilityManager::instance()->clearVisibility(target);
					target->setScreenPlayState("deathBounty", 0);
					StringBuffer bBroadcast;
					if (target->hasSkill("force_title_jedi_rank_01")) {
						int xpLoss = mission->getRewardCredits() * -2;

						if (xpLoss > minXpLoss)
							xpLoss = minXpLoss;
						else if (xpLoss < maxXpLoss)
							xpLoss = maxXpLoss;

						owner->getZoneServer()->getPlayerManager()->awardExperience(target, "jedi_general", xpLoss, true);
						StringIdChatParameter message("base_player","prose_revoke_xp");
						message.setDI(xpLoss * -1);
						message.setTO("exp_n", "jedi_general");
						target->sendSystemMessage(message);
						String victimName = target->getFirstName();
						bBroadcast << "\\#00bfff" << bhName << "\\#ffd700" << " a" << "\\#ff7f00 Bounty Hunter" << "\\#ffd700 has collected the bounty on\\#00bfff " << victimName;
						owner->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, bBroadcast.toString());
						lootManager->createNamedLoot(inventory, "saberhand28", playerName, 300);//, playerName);
						if (target->hasSkill("force_rank_light_novice") || target->hasSkill("force_rank_dark_novice"))
						{
							owner->getZoneServer()->getPlayerManager()->awardExperience(target, "force_rank_xp", -500, true);
							StringIdChatParameter message("base_player","prose_revoke_xp");
							message.setDI(500);
							message.setTO("exp_n", "force_rank_xp");
							target->sendSystemMessage(message);
						}
					}
				}
			}

			complete();
		} else if (mission->getTargetObjectId() == killer->getObjectID() ||
				(npcTarget != NULL && npcTarget->getObjectID() == killer->getObjectID())) {
			//Player killed by target, fail mission.
			owner->sendSystemMessage("@mission/mission_generic:failed"); // Mission failed
			killer->sendSystemMessage("You have defeated a bounty hunter, ruining his mission against you!");
			StringBuffer zBroadcast;
			if (killer->hasSkill("force_rank_light_novice") || killer->hasSkill("force_rank_dark_novice")) {
				if (killer->hasSkill("force_rank_light_novice")){
					zBroadcast << "\\#00bfff" << playerName << "\\#ffd700" << " a" << "\\#00e604 Light Jedi" << "\\#ffd700 has defeated\\#00bfff " << bhName << "\\#ffd700 a" << "\\#ff7f00 Bounty Hunter";
				}
				else{
					zBroadcast << "\\#00bfff" << playerName << "\\#ffd700" << " a" << "\\#e60000 Dark Jedi" << "\\#ffd700 has defeated\\#00bfff " << bhName << "\\#ffd700 a" << "\\#ff7f00 Bounty Hunter";
				}
				
				killer->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
				PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_themequest_victory_imperial.snd");
				killer->sendMessage(pmm);
				killer->getZoneServer()->getPlayerManager()->awardExperience(killer, "force_rank_xp", 5000, true);
			}
			fail();
		}
	}
}

void BountyMissionObjectiveImplementation::handleDefenderAdded(ManagedObject* arg1) {
	CreatureObject* defender = NULL;

	defender = cast<CreatureObject*>(arg1);

	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if (mission != NULL && owner != NULL && defender != NULL) {
		if (owner->getObjectID() == defender->getObjectID() ||
				mission->getTargetObjectId() == defender->getObjectID()) {
			addToBountyLock();
		}
	}
}

void BountyMissionObjectiveImplementation::handleDefenderDropped(ManagedObject* arg1) {
	CreatureObject* defender = NULL;

	defender = cast<CreatureObject*>(arg1);

	ManagedReference<MissionObject* > mission = this->mission.get();
	ManagedReference<CreatureObject*> owner = getPlayerOwner();

	if (owner != NULL && defender != NULL && mission != NULL) {
		if (owner->getObjectID() == defender->getObjectID() ||
				mission->getTargetObjectId() == defender->getObjectID()) {
			removeFromBountyLock(false);
		}
	}
}