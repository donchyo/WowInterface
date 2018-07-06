
bdCoreData = nil
BD_persistent = {
	["blacklist"] = {
	},
	["mine"] = {
	},
	["General"] = {
		["forcescale"] = false,
		["warning"] = "Changing font and background are still a work in progress.",
		["fancymenu"] = true,
		["errorblock"] = true,
		["interrupt"] = false,
		["border"] = 0,
		["skingmotd"] = false,
		["font"] = "bdFont",
		["changefonts"] = false,
		["skinwas"] = false,
		["tab"] = "Skinning",
		["background"] = "bdSmooth",
		["alteratepowerbar"] = true,
		["doubleclickbo"] = false,
	},
	["gmotd"] = {
		[""] = true,
	},
	["goldtrack"] = {
	},
	["raid"] = {
	},
	["whitelist"] = {
	},
	["auras"] = {
		["class"] = {
			["warrior"] = {
			},
			["paladin"] = {
			},
			["shaman"] = {
			},
			["monk"] = {
			},
			["rogue"] = {
			},
			["mage"] = {
			},
			["demon hunter"] = {
			},
			["druid"] = {
			},
			["death knight"] = {
			},
			["hunter"] = {
			},
			["priest"] = {
			},
			["warlock"] = {
			},
		},
	},
}
BD_profiles = {
	["default"] = {
		["Buffs/Debuffs"] = {
			["tab"] = "Buffs",
			["debuffvgrowth"] = "Downwards",
			["debuffspacing"] = 0,
			["buffvgrowth"] = "Downwards",
			["debuffsize"] = 32,
			["debuffhgrowth"] = "Left",
			["debuffblacklist"] = {
			},
			["buffperrow"] = 13,
			["debuffperrow"] = 10,
			["buffspacing"] = 0,
			["buffblacklist"] = {
			},
			["buffsize"] = 34,
			["buffhgrowth"] = "Left",
		},
		["user"] = {
			["profile"] = "default",
			["profile_spec"] = {
				false, -- [1]
				false, -- [2]
				false, -- [3]
				false, -- [4]
				["current"] = false,
			},
		},
		["Nameplates"] = {
			["nothreatcolor"] = {
				0.3, -- [1]
				1, -- [2]
				0.3, -- [3]
				1, -- [4]
			},
			["specialunits"] = {
				["Felblaze Imp"] = true,
				["Ember of Taeshalach"] = true,
				["Hungering Stalker"] = true,
				["Fanatical Pyromancer"] = true,
				["Fel-Powered Purifier"] = true,
				["Fel Explosives"] = true,
				["Fel-Infused Destructor"] = true,
				["Fel-Charged Obfuscator"] = true,
				["Screaming Shrike"] = true,
			},
			["raidbefuffs"] = 50,
			["debuffsize"] = 40,
			["nameplatedistance"] = 50,
			["friendlynamesize"] = 16,
			["showhptexttargetonly"] = false,
			["hidefriendnames"] = false,
			["hidecasticon"] = false,
			["kickable"] = {
				0.996078431372549, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["enemynamesize"] = 16,
			["castbarheight"] = 18,
			["specialcolor"] = {
				0.8, -- [1]
				0.4, -- [2]
				0.7, -- [3]
				1, -- [4]
			},
			["nonkickable"] = {
				0.701960784313726, -- [1]
				0.701960784313726, -- [2]
				0.701960784313726, -- [3]
				1, -- [4]
			},
			["height"] = 14,
			["tab"] = "Sizing & Display",
			["threatcolor"] = {
				0.79, -- [1]
				0.3, -- [2]
				0.21, -- [3]
				1, -- [4]
			},
			["glowcolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.389999985694885, -- [4]
			},
			["selfwhitelist"] = {
			},
			["blacklist"] = {
			},
			["executerange"] = 0,
			["whitelist"] = {
				["War Stomp"] = true,
				["Arcane Torrent"] = true,
			},
			["automydebuff"] = false,
			["text"] = "Certain abilities are tracked by default, i.e. stuns / silences. You can stop these from showing up using the blacklist. ",
			["hptext"] = "HP - %",
			["verticalspacing"] = 1.8,
			["disableauras"] = false,
			["fixatealert"] = "All",
			["width"] = 164,
			["threatdangercolor"] = {
				1, -- [1]
				0.55, -- [2]
				0.3, -- [3]
				1, -- [4]
			},
			["friendnamealpha"] = 1,
			["raidmarkersize"] = 24,
			["showenergy"] = false,
			["friendlynamehack"] = false,
			["executecolor"] = {
				0.1, -- [1]
				0.4, -- [2]
				0.7, -- [3]
				1, -- [4]
			},
			["unselectedalpha"] = 0.5,
			["markposition"] = "TOP",
		},
		["persistent"] = {
			["blacklist"] = {
			},
			["mine"] = {
			},
			["General"] = {
				["forcescale"] = true,
				["warning"] = "Changing font and background are still a work in progress.",
				["fancymenu"] = true,
				["errorblock"] = true,
				["interrupt"] = false,
				["border"] = 2,
				["skingmotd"] = false,
				["font"] = "bdFont",
				["changefonts"] = false,
				["skinwas"] = true,
				["tab"] = "Skinning",
				["background"] = "bdSmooth",
				["alteratepowerbar"] = true,
				["doubleclickbo"] = false,
			},
			["gmotd"] = {
				[""] = true,
			},
			["goldtrack"] = {
			},
			["raid"] = {
			},
			["whitelist"] = {
			},
			["auras"] = {
				["class"] = {
					["death knight"] = {
					},
				},
			},
		},
		["positions"] = {
			["bdBuffs"] = {
				"TOPRIGHT", -- [1]
				"UIParent", -- [2]
				"TOPRIGHT", -- [3]
				-176.333602905273, -- [4]
				-19.7777519226074, -- [5]
			},
			["bdCore Alt Power"] = {
				"CENTER", -- [1]
				"UIParent", -- [2]
				"CENTER", -- [3]
				-275.555877685547, -- [4]
				123.555824279785, -- [5]
			},
			["bdDebuffs"] = {
				"TOPRIGHT", -- [1]
				"UIParent", -- [2]
				"TOPRIGHT", -- [3]
				-176.332565307617, -- [4]
				-137.000045776367, -- [5]
			},
		},
		["Profiles"] = {
			["createprofile"] = "Krixidk-Grim Batol",
			["deleteprofile"] = "Delete Current Profile",
			["intro"] = "The profile section is new, let me know if you see things that need improvement.",
			["currentprofile"] = "default",
		},
	},
}
