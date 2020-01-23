valarian_depot_scout = Creature:new {
	customName = "Valarian Depot Scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = false,
	socialGroup = "valarian",
	faction = "valarian",
	level = 13,
	chanceHit = 0.3,
	damageMin = 140,
	damageMax = 150,
	baseXp = 714,
	baseHAM = 2000,
	baseHAMmax = 2400,
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
				"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
				"object/mobile/dressed_criminal_thug_bothan_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_female_01.iff",
				"object/mobile/dressed_criminal_thug_human_female_02.iff",
				"object/mobile/dressed_criminal_thug_human_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_male_02.iff",
				"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
				"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
				"object/mobile/dressed_crook_zabrak_female_01.iff",
				"object/mobile/dressed_crook_zabrak_male_01.iff",
				"object/mobile/dressed_desperado_bith_female_01.iff",
				"object/mobile/dressed_desperado_bith_male_01.iff",
				"object/mobile/dressed_goon_twk_female_01.iff",
				"object/mobile/dressed_goon_twk_male_01.iff",
				"object/mobile/dressed_hoodlum_zabrak_female_01.iff",
				"object/mobile/dressed_hoodlum_zabrak_male_01.iff",
				"object/mobile/dressed_hooligan_rodian_female_01.iff",
				"object/mobile/dressed_hooligan_rodian_male_01.iff",
				"object/mobile/dressed_mugger.iff",
				"object/mobile/dressed_robber_human_female_01.iff",
				"object/mobile/dressed_robber_human_male_01.iff",
				"object/mobile/dressed_robber_twk_female_01.iff",
				"object/mobile/dressed_robber_twk_male_01.iff",
				"object/mobile/dressed_ruffian_zabrak_female_01.iff",
				"object/mobile/dressed_ruffian_zabrak_male_01.iff",
				"object/mobile/dressed_villain_trandoshan_female_01.iff",
				"object/mobile/dressed_villain_trandoshan_male_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 3000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(valarian_depot_scout, "valarian_depot_scout")
