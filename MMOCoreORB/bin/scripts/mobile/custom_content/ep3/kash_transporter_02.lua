kash_transporter_02 = Creature:new {
	customName = "Tree Guide",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 750,
	damageMax = 900,
	baseXp = 4500,
	baseHAM = 20000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_forlorn_wookiee_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(kash_transporter_02, "kash_transporter_02")
