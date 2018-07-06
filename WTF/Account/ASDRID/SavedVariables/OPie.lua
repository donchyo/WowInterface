
OneRing_Config = {
	["CharProfiles"] = {
		["Grim Batol-Krixidk"] = "default",
	},
	["_GameVersion"] = "7.3.5",
	["_OPieVersion"] = "Vanilla 4 (3.92)",
	["ProfileStorage"] = {
		["default"] = {
			["RingAtMouse"] = true,
			["Bindings"] = {
				["SpecMenu"] = false,
				["CommonTrades"] = false,
				["RaidSymbols"] = false,
				["DeathKnightPresence"] = false,
				["DKCombat"] = false,
				["OPieTracking"] = false,
				["Gearsets"] = "F5",
				["WorldMarkers"] = false,
				["OPieTrinkets"] = false,
				["OPieAutoQuest"] = false,
			},
		},
	},
	["PersistentStorage"] = {
		["RingKeeper"] = {
			["Gearsets"] = {
				{
					"equipmentset", -- [1]
					"Blood necro", -- [2]
					["caption"] = "Necro",
					["sliceToken"] = "ABuestYWifj",
				}, -- [1]
				{
					"equipmentset", -- [1]
					"blood phys", -- [2]
					["caption"] = "Blood phys",
					["sliceToken"] = "ABuestYWifg",
				}, -- [2]
				{
					"equipmentset", -- [1]
					"Blood Single", -- [2]
					["caption"] = "Blood St",
					["sliceToken"] = "ABuestYWifh",
				}, -- [3]
				{
					"equipmentset", -- [1]
					"Speed", -- [2]
					["caption"] = "Speed",
					["sliceToken"] = "ABuestYWifl",
				}, -- [4]
				{
					"equipmentset", -- [1]
					"Blood aoe tank", -- [2]
					["caption"] = "Blood aoe",
					["sliceToken"] = "ABuestYWifk",
				}, -- [5]
				{
					"equipmentset", -- [1]
					"Blood Tanky", -- [2]
					["caption"] = "Blood Tanky",
					["sliceToken"] = "ABuestYWif4",
				}, -- [6]
				["limit"] = "Krixidk-GrimBatol",
				["save"] = true,
				["name"] = "Gearsets",
				["hotkey"] = "F2",
			},
			["DeathKnightPresence"] = {
				{
					["id"] = "/cast [help,dead] {{spell:61999}}; [nopet,nomounted][@pet,dead] {{spell:46584}}; [@pet,nodead,exists][nomod] {{spell:47541}}; [mod] {{spell:48743}}",
					["sliceToken"] = "OPCDPp",
					["c"] = "52ff5a",
				}, -- [1]
				{
					["id"] = 48263,
					["sliceToken"] = "OPCDPb",
					["c"] = "e54c19",
				}, -- [2]
				{
					["id"] = 48266,
					["sliceToken"] = "OPCDPf",
					["c"] = "1999e5",
				}, -- [3]
				{
					["id"] = 48265,
					["sliceToken"] = "OPCDPu",
					["c"] = "4ce519",
				}, -- [4]
				{
					["id"] = 50977,
					["sliceToken"] = "OPCDPg",
					["c"] = "a93ae8",
				}, -- [5]
				{
					["id"] = "/cast [flyable,nomod][flying] {{spell:54729}}; {{spell:48778}}; [flyable,nomod][flying] {{mount:air}}; {{mount:ground}}",
					["sliceToken"] = "OPCDPm",
					["c"] = "e8c682",
				}, -- [6]
				{
					["id"] = 3714,
					["sliceToken"] = "OPCDPo",
					["c"] = "63eaff",
				}, -- [7]
				["limit"] = "DEATHKNIGHT",
				["save"] = true,
				["name"] = "Presences",
				["hotkey"] = "BUTTON4",
			},
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
			},
		},
	},
	["_GameLocale"] = "enUS",
}
