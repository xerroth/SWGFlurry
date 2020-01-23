ep3_etyyy_chiss_poacher_hunter = Creature:new {
	customName = "a chiss poacher hunt master",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 400,
	damageMax = 500,
	baseXp = 4500,
	baseHAM = 17000,
	baseHAMmax = 20000,
	armor = 2,
	resists = {70,70,70,30,30,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_hunter_01.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_hunter_02.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_hunter_03.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_hunter_04.iff"
		},
	lootGroups = {},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_chiss_poacher_hunter, "ep3_etyyy_chiss_poacher_hunter")
