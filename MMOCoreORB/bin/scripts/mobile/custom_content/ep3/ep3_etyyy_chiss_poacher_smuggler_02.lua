ep3_etyyy_chiss_poacher_smuggler_02 = Creature:new {
	customName = "Chiss Poacher Smuggler",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 300,
	damageMax = 550,
	baseXp = 1609,
	baseHAM = 8000,
	baseHAMmax = 9000,
	armor = 1,
	resists = {40,40,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_etyyy_chiss_poacher_smuggler_02.iff"},
	lootGroups = {},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_chiss_poacher_smuggler_02, "ep3_etyyy_chiss_poacher_smuggler_02")
