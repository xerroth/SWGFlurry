/*
 * FlurrypresentMenuComponent.cpp
 *
 *  Created on: 11/22/2017
 *      Author: TOXIC
 */

#include "FlurrypresentMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/jedi/JediManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"

void FlurrypresentMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "I have been nice");
}

int FlurrypresentMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {

	if (selectedID != 20)
		return 0;

 	ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
 	ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
	lootManager->createLoot(inventory, "flurry_present", 300);
	lootManager->createLoot(inventory, "flurry_present", 300);
	lootManager->createLoot(inventory, "flurry_present", 300);
	creature->playEffect("clienteffect/hh_15_torpedo_warhead.cef", "");
	creature->playEffect("clienteffect/mus_relay_create.cef", "");
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}