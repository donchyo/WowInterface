
OmniCC4Config = {
	["groups"] = {
		{
			["id"] = "Ignore",
			["rules"] = {
				"LossOfControl", -- [1]
				"TotemFrame", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
		{
			["id"] = "PlaterNameplates Blacklist",
			["rules"] = {
			},
			["enabled"] = true,
		}, -- [2]
	},
	["version"] = "8.0.9",
	["groupSettings"] = {
		["PlaterNameplates Blacklist"] = {
			["enabled"] = false,
			["styles"] = {
				["minutes"] = {
				},
				["soon"] = {
				},
				["seconds"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["mmSSDuration"] = 0,
			["minDuration"] = 2,
		},
		["base"] = {
			["styles"] = {
				["seconds"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
				["minutes"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
				["soon"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
				["hours"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
				["charging"] = {
					["a"] = 0.800000011920929,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
				["controlled"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["r"] = 1,
				},
			},
			["effect"] = "none",
			["minDuration"] = 3,
			["minEffectDuration"] = 0,
			["spiralOpacity"] = 1.00999997742474,
			["yOff"] = 1,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["mmSSDuration"] = 0,
			["fontSize"] = 15,
			["fontFace"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\Expressway.ttf",
		},
		["Ignore"] = {
			["enabled"] = false,
			["styles"] = {
				["seconds"] = {
				},
				["minutes"] = {
				},
				["soon"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
		},
	},
}
