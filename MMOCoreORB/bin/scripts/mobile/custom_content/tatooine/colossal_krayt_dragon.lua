colossal_krayt_dragon = Creature:new {
	customName = "the Scourge of Tatooine (a colossal krayt dragon)",
	socialGroup = "krayt",
	faction = "",
	level = 360,
	chanceHit = 95.5,
	damageMin = 6275,
	damageMax = 7975,
	baseXp = 32549,
	baseHAM = 1350000,
	baseHAMmax = 1550000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 4,

	templates = {"object/mobile/krayt_dragon.iff"},
	lootGroups = {},

	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {}
}
CreatureTemplates:addCreatureTemplate(colossal_krayt_dragon, "colossal_krayt_dragon")
