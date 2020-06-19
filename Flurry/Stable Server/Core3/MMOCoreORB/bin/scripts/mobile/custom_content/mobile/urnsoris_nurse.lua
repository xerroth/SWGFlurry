urnsoris_nurse = Creature:new {
--	customName = "urnsoris_nurse",
  objectName = "@mob/creature_names:urnsoris_nurse", 
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
	socialGroup = "townsperson",
	-- faction = "townsperson",
	level = 70,
	chanceHit = 0.92,
	damageMin = 466,
	damageMax = 745,
	baseXp = 4197,
	baseHAM = 9900,
	baseHAMmax = 15400,
	armor = 0,
	resists = {62,62,62,35,62,62,62,62,-1},
	meatType = "meat_insect",
	meatAmount = 61,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + PACK + HEALER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/urnsoris_nurse.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
  	{"strongpoison",""},
		{"blindattack",""},
	 	{"intimidationattack",""},
	  {"stunattack",""},
		{"posturedownattack",""},
    {"dizzyattack",""},
    {"knockdownattack",""},
    {"posturedownattack",""},
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_nurse, "urnsoris_nurse")
