
OmniCC4Config = {
	["version"] = "7.3",
	["groupSettings"] = {
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
			["yOff"] = 1,
			["mmSSDuration"] = 0,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 3.00000004470348,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["minEffectDuration"] = 0,
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
	["groups"] = {
		{
			["id"] = "Ignore",
			["rules"] = {
				"LossOfControl", -- [1]
				"TotemFrame", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
	},
}
