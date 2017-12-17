/*
* BossMenuComponent.cpp
*
* Created on: 11/28/2017
*	 Author: Toxic
*  
*/

#include "BossMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/ZoneServer.h"
#include "server/chat/ChatManager.h"

#include "server/zone/objects/group/GroupObject.h"

void BossMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	        menuResponse->addRadialMenuItem(213, 3, "Mini Boss 1"); //MINI BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItem(214, 3, "Mini Boss 2"); //MINI BOSS ENCOUNTER 2
		menuResponse->addRadialMenuItem(215, 3, "Mini Boss 3"); //MINI BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItem(216, 3, "Mini Boss 4"); //MINI BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItem(217, 3, "Mini Boss 5"); //MINI BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItem(220, 3, "Heroic Boss Instances");
		menuResponse->addRadialMenuItemToRadialID(220, 221, 3, "Exar Kun Tomb"); //BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItemToRadialID(220, 222, 3, "Avatar Platform"); //BOSS ENCOTUNER 2
		menuResponse->addRadialMenuItemToRadialID(220, 223, 3, "Hoth Echo Base"); //BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItemToRadialID(220, 224, 3, "IG-88"); //BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItemToRadialID(220, 225, 3, "Imperial Star Destroyer"); //BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItemToRadialID(220, 226, 3, "Myyydril"); //BOSS ENCOUNTER 6
		menuResponse->addRadialMenuItemToRadialID(220, 227, 3, "NightSister Queen"); //BOSS ENCOUNTER 7
		menuResponse->addRadialMenuItemToRadialID(220, 228, 3, "Rogue Star Destroyer"); //BOSS ENCOUNTER 8
}
int BossMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID == 213) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 214) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 215) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 216) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 217) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 221) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
		}
	}

	if (selectedID == 222) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 6193, 250, -5978, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", 6193, 250, -5978, 0);
		}
	}

	if (selectedID == 223) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134);
		}
	}

	if (selectedID == 224) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
		}
	}

	if (selectedID == 225) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198);
		}
	}

	if (selectedID == 226) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("kashyyyk", -4.685, -1.02156, -4.1078, 6296349);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("kashyyyk", -4.685, -1.02156, -4.1078, 6296349);
		}
	}

	if (selectedID == 227) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
		}
	}

	if (selectedID == 228) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("dungeon1", 7, 172.3, 300, 4336867);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("dungeon1", 7, 172.3, 300, 4336867);
		}
	}
	return 0;
}