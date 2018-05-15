
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
				["hotkey"] = "F2",
				["name"] = "Gearsets",
			},
			["DeathKnightPresence"] = {
				{
					["sliceToken"] = "OPCDPp",
					["c"] = "52ff5a",
					["id"] = "/cast [help,dead] {{spell:61999}}; [nopet,nomounted][@pet,dead] {{spell:46584}}; [@pet,nodead,exists][nomod] {{spell:47541}}; [mod] {{spell:48743}}",
				}, -- [1]
				{
					["sliceToken"] = "OPCDPb",
					["c"] = "e54c19",
					["id"] = 48263,
				}, -- [2]
				{
					["sliceToken"] = "OPCDPf",
					["c"] = "1999e5",
					["id"] = 48266,
				}, -- [3]
				{
					["sliceToken"] = "OPCDPu",
					["c"] = "4ce519",
					["id"] = 48265,
				}, -- [4]
				{
					["sliceToken"] = "OPCDPg",
					["c"] = "a93ae8",
					["id"] = 50977,
				}, -- [5]
				{
					["sliceToken"] = "OPCDPm",
					["c"] = "e8c682",
					["id"] = "/cast [flyable,nomod][flying] {{spell:54729}}; {{spell:48778}}; [flyable,nomod][flying] {{mount:air}}; {{mount:ground}}",
				}, -- [6]
				{
					["sliceToken"] = "OPCDPo",
					["c"] = "63eaff",
					["id"] = 3714,
				}, -- [7]
				["limit"] = "DEATHKNIGHT",
				["save"] = true,
				["hotkey"] = "BUTTON4",
				["name"] = "Presences",
			},
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
			},
		},
	},
	["_GameLocale"] = "enUS",
}
