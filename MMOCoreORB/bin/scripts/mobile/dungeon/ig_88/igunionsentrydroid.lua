igunionsentrydroid = Creature:new {
	customName = "Union Sentry Droid",
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1500,
	damageMax = 2000,
	baseXp = 600000,
	baseHAM = 600000,
	baseHAMmax = 610000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/som/union_sentry_droid.iff"},
	lootGroups = {
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack",
}
CreatureTemplates:addCreatureTemplate(igunionsentrydroid, "igunionsentrydroid")
