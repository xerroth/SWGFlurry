rebel_second_lieutenant = Creature:new {
	objectName = "@mob/creature_names:rebel_second_lieutenant",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 19,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_second_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_zabrak_female_01.iff"},

--Rebel Officer Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7500000},
				{group = "rebel_officer_common", chance = 2500000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "g_imperial_credit", chance = 10000000}
		},
			lootChance = 200000 
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "imppoints", chance = 10000000}
		},
			lootChance = 100000 
		},
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmid)
}

CreatureTemplates:addCreatureTemplate(rebel_second_lieutenant, "rebel_second_lieutenant")
