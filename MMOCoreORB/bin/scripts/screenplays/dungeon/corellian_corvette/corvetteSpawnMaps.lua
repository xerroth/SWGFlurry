corvetteStaticSpawns = {
	-- { template, x, z, y, roomName, yaw, customName, functionName, functionData, factionOnlySpawn }
	--TODO: Remove blue frog before publish
	{"object/tangible/terminal/terminal_character_builder.iff", -41.1, 0, 2.6, "airlock1", -140, "", "", "" },

	{ "object/tangible/terminal/terminal_elevator_up.iff", 5, 0, -13.4, "elevator18", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_down.iff", 5, 12, -13.4, "elevator18", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_up.iff", 0, -12, 37.67, "elevator19", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_down.iff", 0, 0, 37.67, "elevator19", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_up.iff", 18, -24, 120.6, "elevator56", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_down.iff", 18, -12, 120.6, "elevator56", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_up.iff", -18, -12, 120.67, "elevator57", 180, "", "", "" },
	{ "object/tangible/terminal/terminal_elevator_down.iff", -18, 0, 120.67, "elevator57", 180, "", "", "" },
	{ "object/tangible/dungeon/terminal_free_s1.iff", -11.9, -12, 4.29, "meetingroom38", 90, "Elevator Control", "setupRoomPanel", "elevator57" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", 20.04, 0, 45.2, "hall10", -176.05, "broken", "", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", -10.02, 0, 5.8, "hall4", 0, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", 19.89, 0, 4.8, "hall10", 0.99, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", 24.95, -12, -20.2, "escapepods34", 0.21, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", 25.02, -12, 36.2, "escapepods34", -178.82, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", -25.02, -12, 36.17, "escapepods39", -178.85, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/terminal/terminal_geo_bunker.iff", -25.06, -12, -20.19, "escapepods39", -0.88, "Escape Pod Controls", "setupEscapePod", "" },
	{ "object/tangible/dungeon/keypad_terminal.iff", -16.9, -10.8, 115.65, "hall53", 180, "Keypad", "setupKeypad", "elevator57" },
	{ "object/tangible/dungeon/keypad_terminal.iff", 1.75, 1.2, 129.5, "hall62", -90, "Keypad", "setupKeypad", "officerquarters64" },
	{ "object/tangible/dungeon/keypad_terminal.iff", -1.75, 1.2, 126.53, "hall62", 90, "Keypad", "setupKeypad", "officerquarters65" },
	{ "object/tangible/dungeon/keypad_terminal.iff", 1.1, 1.2, 142.57, "hall62", 180, "Keypad", "setupKeypad", "bridge66" },
	{ "object/tangible/dungeon/keypad_terminal.iff", 16.9, 1.2, 115.75, "hall61", 180, "Keypad", "setupKeypad", "officerquarters63" },
	{ "object/tangible/dungeon/keypad_terminal.iff", -9.35, -10.8, 128.65, "armory54", 180, "Keypad", "setupKeypad", "armorybackroom55" },
	{ "object/tangible/dungeon/keypad_terminal.iff", -13.05, -10.8, 6.65, "hall37", 270, "Keypad", "setupKeypad", "meetingroom38" },
	{ "object/tangible/dungeon/computer_mainframe.iff", 5.2, -12, 69.7, "hyperdrive47", 0, "Hyperdrive Console", "setupDestroyTerminal", "hyperdrive" },
	{ "object/tangible/dungeon/computer_desktop.iff", 8.21, 0.8, -36.11, "thrusterroom24", -90, "", "setupComputerObject", "one" },
	{ "object/tangible/dungeon/computer_desktop.iff", 8.21, 0.77, -41.03, "thrusterroom24", -90, "", "setupComputerObject", "two" },
	{ "object/tangible/dungeon/computer_desktop.iff", -8.5, 0.75, -36.54, "thrusterroom24", 90, "", "setupComputerObject", "three" },
	{ "object/tangible/dungeon/computer_desktop.iff", -8.4, 0.75, -40.89, "thrusterroom24", 90, "", "setupComputerObject", "four" },
	{ "object/tangible/dungeon/computer_desktop.iff", 2.81, 12.77, 4.73, "vipquarters22", 180, "", "setupComputerObject", "five" },
	{ "object/tangible/dungeon/computer_mainframe.iff", -15.4, -12, 66.65, "radarroom46", 0, "", "setupComputerObject", "six" },
	{ "object/tangible/dungeon/computer_mainframe.iff", 26.2, -12, 65.84, "navroom45", 0, "", "setupComputerObject", "seven" },
	{ "object/tangible/dungeon/computer_mainframe.iff", -1.6, -27, 78.5, "lowerturret60", 0, "", "setupComputerObject", "eight" },
	{ "object/tangible/dungeon/computer_desktop.iff", 4.03, 12.75, -1.45, "vipquarters21", -44, "", "setupComputerObject", "nine", "rebel" },
	{ "object/tangible/dungeon/computer_desktop.iff", 4.03, 12.75, -1.45, "vipquarters21", -44, "", "setupComputerObject", "ten", "imperial" },
	{ "object/tangible/dungeon/computer_mainframe.iff", -4.5, -14, -36.24, "thrustersubroom28", 180, "SECURITY CONSOLE", "setupRoomPanel", "meetingroom38" },
	{ "object/tangible/dungeon/wall_terminal_s4.iff", -7.5, 0, 152, "bridge66", 90, "ENGINE SETTINGS", "setupDestroyTerminal", "engine" },
	{ "object/tangible/dungeon/computer_mainframe.iff", -8.5, -6.7, -38.11, "thrustersubroom27", 180, "FUEL INTAKE CONTROL", "setupDestroyTerminal", "fuel" },
	{ "object/tangible/container/loot/astromech_container.iff", -13.9, 0, 51.44, "spawnroom8", 90, "spare droid (for parts)", "setupLootCrate", "r2" },
	{ "object/tangible/container/general/tech_chest.iff", 0.5, 12, -8.91, "vipquarters21", 0, "", "setupLootCrate", "disk" },
	{ "object/tangible/container/general/tech_armoire.iff", 5.9, 12, 13.2, "vipquarters22", 270, "", "setupLootCrate", "" },
	{ "object/tangible/container/loot/astromech_container.iff", 22.1, -12, 51.87, "spawnroom49", 0, "", "setupLootCrate", "" },
	{ "object/tangible/container/general/tech_armoire.iff", 22.74, -12, 52.08, "spawnroom49", -90, "", "setupLootCrate", "" },
	{ "object/tangible/container/general/tech_armoire.iff", 12.9, -12, 132.97, "armorybackroom55", -90, "", "setupLootCrate", "" },
}

corvetteRebelSpawns = {
	{ "novatrooper_cadet", -12.25, -12, -16.05, 90.35, "escapepods39", "" },
	{ "novatrooper_cadet", 4.77, 0, -20.87, -179.84, "hall17", "" },
	{ "novatrooper_cadet", 20.1, 0, -11.16, -0.27, "hall14", "" },
	{ "novatrooper_cadet", 36.43, 0, -0.04, -90.53, "hall11", "" },
	{ "novatrooper_cadet", 10.44, 0, 28.28, 168.28, "hall12", "" },
	{ "novatrooper_cadet", 0.07, 0, 30.49, -176.47, "hall3", "" },
	{ "novatrooper_cadet", -10.05, 0, 5.9, 1.15, "hall4", "" },
	{ "novatrooper_cadet", -3.98, 0, 49.7, 96.8, "barracks7", "" },
	{ "novatrooper_cadet", -0.4, 0, 10, 87.54, "hall3", "" },
	{ "novatrooper_cadet", -10.09, 0, -11.8, 0.48,"hall13", "" },
	{ "novatrooper_cadet", 4.76, 0, -32.88, 0.8, "hall17", "" },
	{ "novatrooper_ensign", -0.13, -12, 28.3, -1.09,"hall31", "" },
	{ "novatrooper_ensign", -7.64, -12, 40.32, 33.65, "penthall42", "" },
	{ "novatrooper_ensign", -0.08, 0, 115.9, 177.78, "hall62", "" },
	{ "novatrooper", 2, 0, -39.61, -90.49, "thrusterroom24", "" },
	{ "novatrooper", -2, 0, -40.9, 92.22, "thrusterroom24", "" },
	{ "novatrooper", -5.83, 0, -36.9, -95.67, "thrusterroom24", "" },
	{ "novatrooper", -6.72, -12, 0.7, 178.3, "meetingroom38", "" },
	{ "novatrooper", 21.36, -12, 27.69, -167.39, "escapepods34", "" },
	{ "novatrooper", 0.97, -6.7, -40.21, 4.51, "thrustersubroom27", "" },
	{ "novatrooper", 0.75, -6.7, -36.4, 153.28, "thrustersubroom27", "" },
	{ "novatrooper_medic", -23.52, -12, 70.22, -1.43, "radarroom46", "" },
	{ "novatrooper", 2.03, 15, 33.44, -169.99, "upperturret23", "" },
	{ "novatrooper", -4.74, 0, 56.88, -172.67, "barracks7", "" },
	{ "novatrooper_medic", -5.46, -12, 15.46, -14.46, "meetingroom38", "" },
	{ "novatrooper", 5.11, 0, 146.59, 104.11, "bridge66", "" },
	{ "novatrooper_commander", -2.06, -12, 72.17, 128.69, "hyperdrive47", "" },
	{ "novatrooper_commander", -3.73, -12, 66.7, -170.17, "hyperdrive47", "" },
	{ "novatrooper_commander", -4.24, -27, 77.07, -105.52, "lowerturret60", "" },
	{ "novatrooper_commander", 4.45, -12, 49.96, 112.67, "pentroom40", "" },
	{ "novatrooper_commander", 18.19, -12, 70.21, -3.35, "navroom45", "" },
	{ "novatrooper_commander", -24.35, -12, 61.87, 177.97, "radarroom46", "" },
	{ "novatrooper_commander", 25.2, 0, 12.95, 85, "hall10", "" },
	{ "novatrooper_captain", -8.67, -12, 14.6, 25.5, "meetingroom38", "" },
	{ "novatrooper_captain", 8.44, 0, 59.23, -179.63, "barracks7", "" },
	{ "novatrooper_captain", -17.01, 0, 111.87, -1.7, "hall61", "" },
	{ "novatrooper_captain", -2.89, -12, 111.9, 177.53, "hall53", "" },
	{ "novatrooper_captain", -1.7, -24, 111.04, 80.39, "hall58", "" },
	{ "novatrooper_captain", 9.27, -12, 130.65, -86.06, "armorybackroom55", "" },
	{ "novatrooper_captain", 4.55, 12, -7.4, -54.91, "vipquarters21", "" },
	{ "novatrooper_captain", 0.87, 12, 24.52, -114.22, "hall20", "" },
	{ "novatrooper_captain", -2.99, 12, -8.84, 177.81, "hall20", "" },
	{ "novatrooper_captain", 3.4, -12, 111.9, -173.28, "hall53", "" },
	{ "novatrooper_captain", -0.18, -12, 78.19, -0.22, "hall52", "" },
	{ "elite_novatrooper", -10.67, -12, 117.57, 91.23, "armory54", "" },
	{ "elite_novatrooper", 10.65, -12, 120.96, -3.65, "armory54", "" },
	{ "elite_novatrooper", 0.9, -12, 135.86, -93.29, "armorybackroom55", "" },
	{ "elite_novatrooper", -21.15, -12, 56.75, 107.81, "penthall44", "" },
	{ "elite_novatrooper", -21.33, -12, 51.32, 10.5, "spawnroom48", "" },
	{ "elite_novatrooper", 2.97, 12, 14.25, -160.05, "vipquarters22", "" },
	{ "elite_novatrooper", -6.26, 0, 126.47, 75.71, "officerquarters65", "" },
	{ "elite_novatrooper_commander", 4.1, 0, 124.7, 82, "officerquarters64", "" },
	{ "elite_novatrooper", 8.74, 0, 48.53, 93.02, "barracks7", "" },
	{ "elite_novatrooper", 4.76, -12, 1.88, 89.36, "messhall33", "" },
	{ "elite_novatrooper", 5.2, 15, 36.61, -2.51, "upperturret23", "" },
	{ "novatrooper_squad_leader", 9.72, 15, 34.54, 111.42, "upperturret23", "" },
	{ "novatrooper_squad_leader", -17.39, -12, 70.5, 8.02, "radarroom46", "" },
	{ "novatrooper_medic", 10.39, -12, 15.81, -176.62, "messhall33", "" },
	{ "elite_novatrooper", -0.17, 0, 149.98, 2.35, "bridge66", "" },
	{ "elite_novatrooper_commander", 3.67, 12, 3.04, -24.48, "vipquarters22", "" },
	{ "elite_novatrooper", 3.68, -12, 125.46, 3.22, "armory54", "" },
	{ "elite_novatrooper", 3.78, -27, 75.9, 132.24, "lowerturret60", "" },
	{ "dark_trooper_novatrooper", 5.73, 0, 133.93, 154.32, "officerquarters64", "" },
	{ "dark_trooper_novatrooper", -3, 0.2, 151.41, -12.76, "bridge66", "" },
	{ "dark_trooper_novatrooper", 3.14, 12, -0.95, 178.14, "vipquarters21", "" },
	{ "dark_trooper_novatrooper", 24.35, -12, 61.7, 178.44, "navroom45", "" },
	{ "dark_trooper_novatrooper", 18.26, 0.04, 115.54, -155.06, "hall61", "" },
	{ "dark_trooper_novatrooper", -17.84, -12, 61.7, 179.71, "radarroom46", "" },
	{ "corvette_imperial_inquisitor", -6.15, 0, 134, 3.04, "officerquarters65", "setupAssassinationTarget" },
	{ "ra7_bug_droid", 3, 0.2, 151.41, -5.89, "bridge66", "" },
	{ "ra7_bug_droid", 20.61, -12, 50.32, -6.3, "spawnroom49", "" },
	{ "ra7_bug_droid", 3.17, -12, 6.62, 90.79, "messhall33", "" },
	{ "corvette_r2", -18.86, -12, 66.59, 86.2, "radarroom46", "" },
	{ "corvette_r3", 6, -14, -37,180, "thrustersubroom28", "setupBrokenDroid" },
	{ "imperial_battle_droid", -21.48, -12, -59.01, -28.73, "thrusterroom24", "" },
	{ "imperial_battle_droid", -7.42, -14, -46, -2.15, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", 15.87, -12, -44.88, 94.54, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", -12.29, -12, -38.91, -88.99, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", 12.49, -12, -60.45, 3.85, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", 27.19, -12, -56.71, -0.1, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", 7.29, -14, -50.23, 2.11, "thrusterroom24", "" },
	{ "imperial_super_battle_droid", 7.84, -14, -36, 0, "thrustersubroom28", "" },
	{ "mouse_droid", 19.92, 0, 16.15, 0.44, "hall10", "" },
	{ "mouse_droid", -6.71, -14, -54.59, 95.32, "thrusterroom24", "" },
	{ "mouse_droid", -0.81, -6.7, -36.36, -119.65, "thrustersubroom27", "" },
	{ "mouse_droid", -4.68, 0, 146.7, 0, "bridge66", "" },
	{ "mouse_droid", 11.88, -12, -15.89, -89.91, "escapepods34", "" },
	{ "corvette_prisoner", 20.46, 0, 121.82, 22.61, "officerquarters63", "setupPrisoner" },
	{ "gabriel_lan", 15.49, 0, 122.78, 179.18, "officerquarters63", "setupPrisoner" },
}

corvetteImperialSpawns = {
	{ "rebel_ensign", -12.25, -12, -16.05, 90.35, "escapepods39", "" },
	{ "rebel_ensign", -3.98, 0, 49.7, 96.8, "barracks7", "" },
	{ "rebel_first_mate", -7.64, -12, 40.32, 33.65, "penthall42", "" },
	{ "rebel_engineer", 2, 0, -39.61, -90.49, "thrusterroom24", "" },
	{ "rebel_engineer", -2, 0, -40.9, 92.22, "thrusterroom24", "" },
	{ "rebel_engineer", -5.83, 0, -36.9, -95.67, "thrusterroom24", "" },
	{ "rebel_first_mate", -6.72, -12, 0.7, 178.3, "meetingroom38", "" },
	{ "rebel_first_mate", 21.36, -12, 27.69, -167.39, "escapepods34", "" },
	{ "rebel_commodore", 0.97, -6.7, -40.21, 4.51, "thrustersubroom27", "" },
	{ "rebel_engineer", 0.75, -6.7, -36.4, 153.28, "thrustersubroom27", "" },
	{ "rebel_first_mate", -23.52, -12, 70.22, -1.43, "radarroom46", "" },
	{ "rebel_first_mate", 2.03, 15, 33.44, -169.99, "upperturret23", "" },
	{ "rebel_first_mate", -4.74, 0, 56.88, -172.67, "barracks7", "" },
	{ "rebel_first_mate", -5.46, -12, 15.46, -14.46, "meetingroom38", "" },
	{ "rebel_commodore", 5.11, 0, 146.59, 104.11, "bridge66", "" },
	{ "rebel_sailor", -2.06, -12, 72.17, 128.69, "hyperdrive47", "" },
	{ "rebel_sailor", -3.73, -12, 66.7, -170.17, "hyperdrive47", "" },
	{ "rebel_sailor", -4.24, -27, 77.07, -105.52, "lowerturret60", "" },
	{ "rebel_sailor", 4.45, -12, 49.96, 112.67, "pentroom40", "" },
	{ "rebel_midshipman", 18.19, -12, 70.21, -3.35, "navroom45", "" },
	{ "rebel_midshipman", -24.35, -12, 61.87, 177.97, "radarroom46", "" },
	{ "rebel_commodore", -8.67, -12, 14.6, 25.5, "meetingroom38", "" },
	{ "rebel_midshipman", 8.44, 0, 59.23, -179.63, "barracks7", "" },
	{ "rebel_midshipman", 9.27, -12, 130.65, -86.06, "armorybackroom55", "" },
	{ "rebel_commodore", 4.55, 12, -7.4, -54.91, "vipquarters21", "" },
	{ "rebel_commandant", -10.67, -12, 117.57, 91.23, "armory54", "" },
	{ "rebel_commandant", 10.65, -12, 120.96, -3.65, "armory54", "" },
	{ "rebel_midshipman", 0.9, -12, 135.86, -93.29, "armorybackroom55", "" },
	{ "rebel_midshipman", -21.15, -12, 56.75, 107.81, "penthall44", "" },
	{ "rebel_midshipman", -21.33, -12, 51.32, 10.5, "spawnroom48", "" },
	{ "rebel_midshipman", 2.97, 12, 14.25, -160.05, "vipquarters22", "" },
	{ "rebel_midshipman", -6.26, 0, 126.47, 75.71, "officerquarters65", "" },
	{ "rebel_midshipman", 4.1, 0, 124.7, 82, "officerquarters64", "" },
	{ "rebel_midshipman", 8.74, 0, 48.53, 93.02, "barracks7", "" },
	{ "rebel_midshipman", 4.76, -12, 1.88, 89.36, "messhall33", "" },
	{ "rebel_midshipman", 5.2, 15, 36.61, -2.51, "upperturret23", "" },
	{ "rebel_midshipman", 9.72, 15, 34.54, 111.42, "upperturret23", "" },
	{ "rebel_midshipman", -17.39, -12, 70.5, 8.02, "radarroom46", "" },
	{ "rebel_midshipman", 10.39, -12, 15.81, -176.62, "messhall33", "" },
	{ "rebel_midshipman", -0.17, 0, 149.98, 2.35, "bridge66", "" },
	{ "rebel_rear_admiral", 3.67, 12, 3.04, -24.48, "vipquarters22", "" },
	{ "rebel_commodore", 3.68, -12, 125.46, 3.22, "armory54", "" },
	{ "rebel_commodore", 3.78, -27, 75.9, 132.24, "lowerturret60", "" },
	{ "rebel_rear_admiral", 7.2, 0, 135.7, -146, "officerquarters64", "" },
	{ "rebel_commodore", -3, 0.2, 151.41, -12.76, "bridge66", "" },
	{ "rebel_admiral", 3.14, 12, -0.95, 178.14, "vipquarters21", "" },
	{ "rebel_commodore", 24.35, -12, 61.7, 178.44, "navroom45", "" },
	{ "rebel_commodore", 18.26, 0.04, 115.54, -155.06, "hall61", "" },
	{ "rebel_commodore", -17.84, -12, 61.7, 179.71, "radarroom46", "" },
	{ "rebel_admiral", -6.15, 0, 134, 3.04, "officerquarters65", "setupAssassinationTarget" },
	{ "rebel_battle_droid", -21.48, -12, -59.01, -28.73, "thrusterroom24", "" },
	{ "rebel_battle_droid", -7.42, -14, -46, -2.15, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", 15.87, -12, -44.88, 94.54, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", -12.29, -12, -38.91, -88.99, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", 12.49, -12, -60.45, 3.85, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", 27.19, -12, -56.71, -0.1, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", 7.29, -14, -50.23, 2.11, "thrusterroom24", "" },
	{ "rebel_super_battle_droid", 7.84, -14, -36, 0, "thrustersubroom28", "" },
	{ "protocol_droid_3po_red", 20.4, -12, 50.7, 20, "spawnroom49", "" },
	{ "protocol_droid_3po_silver", 3.17,-12,6.62, 90.79, "messhall33", "" },
	{ "corvette_r4", 19.92, 0, 16.15, 0.44, "hall10", "" },
	{ "corvette_r2", -6.71, -14, -54.59, 95.32, "thrusterroom24", "" },
	{ "corvette_r4", -0.81, -6.7, -36.36, -119.65, "thrustersubroom27", "" },
	{ "protocol_droid_3po", 3, 0, 151.41, 0, "bridge66", "" },
	{ "corvette_r3", -4.68, 0, 146.7, 0, "bridge66", "" },
	{ "corvette_r2", -18.86, -12, 66.59, 86.2, "radarroom46", "" },
	{ "corvette_r5", 11.88, -12, -15.89, -89.91, "escapepods34", "" },
	{ "rebel_ensign", 4.77, 0, -20.87, -179.84, "hall17", "" },
	{ "rebel_ensign", 20.1, 0, -11.16, -0.27, "hall14", "" },
	{ "rebel_ensign", 36.43, 0, -0.04, -90.53, "hall11", "" },
	{ "rebel_ensign", 10.44, 0, 28.28, 168.28, "hall12", "" },
	{ "rebel_ensign", 0.07, 0, 30.49, -176.47, "hall3", "" },
	{ "rebel_ensign", -10.05, 0, 5.9, 1.15, "hall4", "" },
	{ "rebel_midshipman", -17.01, 0, 111.87, -1.7, "hall61", "" },
	{ "rebel_midshipman", -2.89, -12, 111.9, 177.53, "hall53", "" },
	{ "rebel_midshipman", -1.7, -24, 111.04, 80.39, "hall58", "" },
	{ "rebel_commandant", 0.87, 12, 24.52, -114.22, "hall20", "" },
	{ "rebel_commandant", -2.99, 12, -8.84, 177.81, "hall20", "" },
	{ "rebel_commandant", 3.4, -12, 111.9, -173.28, "hall53", "" },
	{ "rebel_commandant", -0.18, -12, 78.19, -0.22, "hall52", "" },
	{ "rebel_ensign", -0.4, 0, 10, 87.54, "hall3", "" },
	{ "rebel_ensign", -10.09, 0, -11.8, 0.48,"hall13" , "" },
	{ "rebel_ensign", 4.76, 0, -32.88, 0.8, "hall17", "" },
	{ "rebel_ensign", -0.13, -12, 28.3, -1.09,"hall31" , "" },
	{ "rebel_first_mate", -0.08, 0, 115.9, 177.78, "hall62", "" },
	{ "rebel_midshipman", 25.2, 0, 12.95, 85, "hall10", "" },
	{ "corvette_r3", 6, -14, -37,180, "thrustersubroom28", "setupBrokenDroid" },
	{ "corvette_prisoner", 20, 0, 122, 23, "officerquarters63", "setupPrisoner" },
	{ "dr_bledsoe", 15, 0, 123, 179, "officerquarters63", "setupPrisoner" },
}

corvetteNeutralSpawns = {
	{ "corsec_soldier", 0, 0, 30, -176, "hall3", "" },
	{ "corsec_soldier", 0, 0, 10, 2, "hall3", "" },
	{ "corsec_soldier", -10, 0, 6, 0, "hall4", "" },
	{ "corsec_soldier", 8.2, 0, -27, 42, "hall16", "" },
	{ "corsec_soldier", 20.1, 0, -11, 0, "hall14", "" },
	{ "corsec_soldier", 36, 0, 0, -91, "hall11", "" },
	{ "corsec_soldier", 9.9, 0, 28.2, 170, "hall12", "" },
	{ "corsec_soldier", -10.09, 0, -11.8, 0.48,"hall13" , "" },
	{ "corsec_soldier", 4.76, 0, -32.88, 0.8, "hall17", "" },
	{ "corsec_soldier", -0.13, -12, 28.3, -1.09,"hall31" , "" },
	{ "corsec_soldier", -7.64, -12, 40.32, 33.65, "penthall42", "" },
	{ "corsec_soldier", -0.08, 0, 115.9, 177.78, "hall62", "" },
	{ "corsec_special_ops_sergeant", 25, 0, 13, -100, "hall10", "" },
	{ "corsec_special_agent", 1, 12, 24.52, -114.22, "hall20", "" },
	{ "corsec_special_agent", -2.99, 12, -8.84, 177.81, "hall20", "" },
	{ "corsec_special_agent", 3.4, -12, 111.9, -173.28, "hall53", "" },
	{ "corsec_special_agent", -0.18, -12, 78.19, -0.22, "hall52", "" },
	{ "corsec_special_ops_trainee", -17.01, 0, 111.87, -1.7, "hall61", "" },
	{ "corsec_special_ops_trainee", -2.89, -12, 111.9, 177.53, "hall53", "" },
	{ "corsec_special_ops_trainee", -1.7, -24, 111.04, 80.39, "hall58", "" },
	{ "corsec_special_ops_comissioner", 18.26, 0.04, 115.54, -155.06, "hall61", "" },
	{ "protocol_droid_3po_red", 20.4, -12, 50.7, 20, "spawnroom49", "" },
	{ "protocol_droid_3po_silver", 3.17, -12, 6.62, 90, "messhall33", "" },
	{ "protocol_droid_3po", 3,0.2,151.41, 0.44, "bridge66", "" },
	{ "corvette_r2", -17.4, -12, 67.0, 87,"radarroom46", "" },
	{ "corvette_r3", 20, 0, 16, 0, "hall10", "" },
	{ "corvette_r2", -7, -14, -55, 95, "thrusterroom24", "" },
	{ "corvette_r5", -1, -7, -36, -119, "thrustersubroom27", "" },
	{ "corvette_r3", -5, 0, 147, 0, "bridge66", "" },
	{ "corvette_r4", 12, -12, -16, -90, "escapepods34", "" },
	{ "corvette_r2", -20.9, -12, 62.2, 90, "radarroom46", "" },
	{ "corsec_soldier", -12.25, -12, -16.05, 90.35, "escapepods39", "" },
	{ "corsec_soldier", -3.98, 0, 49.7, 96.8, "barracks7", "" },
	{ "corsec_security_specialist", 2, 0, -39.61, -90.49, "thrusterroom24", "" },
	{ "corsec_security_specialist", -2, 0, -40.9, 92.22, "thrusterroom24", "" },
	{ "corsec_security_specialist", -5.83, 0, -36.9, -95.67, "thrusterroom24", "" },
	{ "corsec_security_specialist", -6.72, -12, 0.7, 178.3, "meetingroom38", "" },
	{ "corsec_security_specialist", 21.36, -12, 27.69, -167.39, "escapepods34", "" },
	{ "corsec_security_specialist", 0.97, -6.7, -40.21, 4.51, "thrustersubroom27", "" },
	{ "corsec_security_specialist", 0.75, -6.7, -36.4, 153.28, "thrustersubroom27", "" },
	{ "corsec_security_specialist", -23.52, -12, 70.22, -1.43, "radarroom46", "" },
	{ "corsec_security_specialist", 2.03, 15, 33.44, -169.99, "upperturret23", "" },
	{ "corsec_security_specialist", -4.74, 0, 56.88, -172.67, "barracks7", "" },
	{ "corsec_security_specialist", -5.46, -12, 15.46, -14.46, "meetingroom38", "" },
	{ "corsec_security_specialist", 5.11, 0, 146.59, 104.11, "bridge66", "" },
	{ "corsec_special_ops_master_sergeant", -2.06, -12, 72.17, 128.69, "hyperdrive47", "" },
	{ "corsec_special_ops_master_sergeant", -3.73, -12, 66.7, -170.17, "hyperdrive47", "" },
	{ "corsec_special_ops_master_sergeant", -4.24, -27, 77.07, -105.52, "lowerturret60", "" },
	{ "corsec_special_ops_master_sergeant", 4.45, -12, 49.96, 112.67, "pentroom40", "" },
	{ "corsec_special_ops_sergeant", 18.19, -12, 70.21, -3.35, "navroom45", "" },
	{ "corsec_special_ops_sergeant", -24.35, -12, 61.87, 177.97, "radarroom46", "" },
	{ "corsec_special_ops_sergeant", -8.67, -12, 14.6, 25.5, "meetingroom38", "" },
	{ "corsec_special_ops_sergeant", 8.44, 0, 59.23, -179.63, "barracks7", "" },
	{ "corsec_special_ops_trainee", 9.27, -12, 130.65, -86.06, "armorybackroom55", "" },
	{ "corsec_special_ops_trainee", 4.55, 12, -7.4, -54.91, "vipquarters21", "" },
	{ "corsec_special_agent", -9.7, -12, 120.8, 91.23, "armory54", "" },
	{ "corsec_special_agent", 9.4, -12, 119.4, -91.65, "armory54", "" },
	{ "corsec_special_agent", 0.9, -12, 135.86, -93.29, "armorybackroom55", "" },
	{ "corsec_special_agent", -21.15, -12, 56.75, 107.81, "penthall44", "" },
	{ "corsec_special_agent", -21.33, -12, 51.32, 10.5, "spawnroom48", "" },
	{ "corsec_special_agent", 2.97, 12, 14.25, -160.05, "vipquarters22", "" },
	{ "corsec_special_agent", -6.26, 0, 126.47, 75.71, "officerquarters65", "" },
	{ "corsec_special_agent", 4.1, 0, 124.7, 82, "officerquarters64", "" },
	{ "corsec_special_agent", 8.74, 0, 48.53, 93.02, "barracks7", "" },
	{ "corsec_special_agent", 4.76, -12, 1.88, 89.36, "messhall33", "" },
	{ "corsec_special_ops_inspector", 5.2, 15, 36.61, -2.51, "upperturret23", "" },
	{ "corsec_special_ops_inspector", 9.72, 15, 34.54, 111.42, "upperturret23", "" },
	{ "corsec_special_ops_inspector", -17.39, -12, 70.5, 8.02, "radarroom46", "" },
	{ "corsec_special_ops_lieutenant", 10.39, -12, 15.81, -176.62, "messhall33", "" },
	{ "corsec_special_ops_captain", -0.17, 0, 149.98, 2.35, "bridge66", "" },
	{ "corsec_special_ops_captain", 3.67, 12, 3.04, -24.48, "vipquarters22", "" },
	{ "corsec_special_ops_major", 1.3, -12, 126.9, 178.22, "armory54", "" },
	{ "corsec_special_ops_major", 3.78, -27, 75.9, 132.24, "lowerturret60", "" },
	{ "corsec_special_ops_major", 5.73, 0, 133.93, 154.32, "officerquarters64", "" },
	{ "corsec_special_ops_captain", -3, 0.2, 151.41, -12.76, "bridge66", "" },
	{ "corsec_special_ops_captain", 3.14, 12, -0.95, 178.14, "vipquarters21", "" },
	{ "corsec_special_ops_captain", 24.35, -12, 61.7, 178.44, "navroom45", "" },
	{ "corsec_special_ops_comissioner", -17.84, -12, 61.7, 179.71, "radarroom46", "" },
	{ "corsec_special_ops_chief", -6.15, 0, 134, 3.04, "officerquarters65", "setupAssassinationTarget" },
	{ "corsec_battle_droid", -21.48, -12, -59.01, -28.73, "thrusterroom24", "" },
	{ "corsec_battle_droid", -7.42, -14, -46, -2.15, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", 15.87, -12, -44.88, 94.54, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", -12.29, -12, -38.91, -88.99, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", 12.49, -12, -60.45, 3.85, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", 27.19, -12, -56.71, -0.1, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", 7.29, -14, -50.23, 2.11, "thrusterroom24", "" },
	{ "corsec_super_battle_droid", 7.84, -14, -36, 0, "thrustersubroom28", "" },
	{ "corvette_r3", 6, -14, -37,180, "thrustersubroom28", "setupBrokenDroid" },
	{ "corvette_prisoner", 20, 0, 122, 23, "officerquarters63", "setupPrisoner" },
	{ "imo_vledmo", 15, 0, 123, 179, "officerquarters63", "setupPrisoner" },
}
