
AuraFramesDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["SpellCooldowns"] = {
			["HUNTER"] = {
			},
			["WARRIOR"] = {
			},
			["ROGUE"] = {
			},
			["MAGE"] = {
			},
			["DEATHKNIGHT"] = {
			},
			["WARLOCK"] = {
			},
			["DEMONHUNTER"] = {
			},
			["SHAMAN"] = {
			},
			["DRUID"] = {
			},
			["MONK"] = {
			},
			["PALADIN"] = {
			},
		},
		["InternalCooldowns"] = {
		},
	},
	["profileKeys"] = {
		["Krixiyo - Twisting Nether"] = "Krixiyo - Twisting Nether",
		["Bawsi - Shattered Hand"] = "Bawsi - Shattered Hand",
		["Krixidk - Grim Batol"] = "Main",
		["Kroxi - Grim Batol"] = "Main",
		["Namji - Grim Batol"] = "Main",
		["Bawsie - Grim Batol"] = "Main",
		["Zolution - Grim Batol"] = "Main",
		["Donch - Shattered Hand"] = "Donch - Shattered Hand",
		["Lowerboost - Lightbringer"] = "Lowerboost - Lightbringer",
		["Krixicx - Shattered Hand"] = "Krixicx - Shattered Hand",
		["Krixi - Grim Batol"] = "Main",
		["Krixiyo - Blackmoore"] = "Krixiyo - Blackmoore",
		["Lilgaykrixi - Kazzak"] = "Lilgaykrixi - Kazzak",
		["Donchyo - Shattered Hand"] = "Donchyo - Shattered Hand",
		["Gnomalock - Grim Batol"] = "Main",
		["Krixidh - Grim Batol"] = "Main",
		["Líttle - Grim Batol"] = "Main",
		["Donch - Grim Batol"] = "Main",
		["Zetiz - Grim Batol"] = "Main",
		["Zuriz - Grim Batol"] = "Main",
		["Nyrith - Grim Batol"] = "Main",
		["Krixidk - Valley of Heroes - EU"] = "Krixidk - Valley of Heroes - EU",
	},
	["profiles"] = {
		["Donch - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Bawsi - Shattered Hand"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Krixidk - Grim Batol"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
		},
		["Kroxi - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Namji - Grim Batol"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Bawsie - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Gnomalock - Grim Batol"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Donch - Shattered Hand"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
			["DbVersion"] = 235,
		},
		["Lowerboost - Lightbringer"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["DurationPosX"] = 0,
						["MiniBarOffsetY"] = -25,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["DurationPosX"] = 0,
						["MiniBarOffsetY"] = -25,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
			["DbVersion"] = 235,
		},
		["Krixicx - Shattered Hand"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
		},
		["Krixi - Grim Batol"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Lilgaykrixi - Kazzak"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
			["DbVersion"] = 235,
		},
		["Krixiyo - Blackmoore"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
			["DbVersion"] = 235,
		},
		["Donchyo - Shattered Hand"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Skullflower"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
		},
		["Krixiyo - Twisting Nether"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Krixidh - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Zetiz - Grim Batol"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Default"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
		["Main"] = {
			["DbVersion"] = 235,
			["CancelCombatAura"] = {
				["Enabled"] = true,
			},
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Id"] = "PlayerBuffs",
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = -8.59999999999999,
						["Scale"] = 1,
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 12,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "RIGHT",
						["TooltipShowUnitName"] = false,
						["MiniBarTexture"] = "Blizzard",
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -27.9,
						["ButtonSizeX"] = 50,
						["CountOutline"] = "OUTLINE",
						["CountFont"] = "Friz Quadrata TT",
						["VerticalSize"] = 3,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 16,
						["CooldownDrawEdge"] = true,
						["DynamicSize"] = false,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["MiniBarOffsetX"] = 0,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountSize"] = 16,
						["DurationPosX"] = 0,
						["DurationFont"] = "Expressway",
						["TooltipShowClassification"] = true,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 50,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = false,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = -5.8,
					},
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -177.277252197266,
						["OffsetY"] = -19.9444789886475,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = false,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = false,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = false,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = false,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Id"] = "PlayerDebuffs",
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = -8.59999999999999,
						["Scale"] = 1,
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 12,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "RIGHT",
						["TooltipShowUnitName"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -27.4,
						["ButtonSizeX"] = 50,
						["CountOutline"] = "OUTLINE",
						["DynamicSize"] = false,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["ShowDuration"] = true,
						["DurationSize"] = 18,
						["CooldownDrawEdge"] = true,
						["CountMonochrome"] = false,
						["MiniBarOffsetY"] = -25,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["DurationPosX"] = 0,
						["SpaceX"] = -5.8,
						["CountSize"] = 18,
						["MiniBarWidth"] = 8,
						["DurationFont"] = "Expressway",
						["TooltipShowClassification"] = false,
						["DurationAlignment"] = "CENTER",
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 50,
						["TooltipShowPrefix"] = false,
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["VerticalSize"] = 3,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["MiniBarTexture"] = "Blizzard",
						["CountPosX"] = 10,
						["Direction"] = "LEFTDOWN",
					},
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -154.166610717773,
						["OffsetX"] = -177.277374267578,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = false,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = false,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = false,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = false,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
		},
		["Líttle - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Zolution - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerBuffs",
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -7.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["MiniBarTexture"] = "Blizzard",
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarOffsetY"] = -25,
						["DurationPosX"] = 0,
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["TooltipShowPrefix"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowCooldown"] = false,
						["TooltipShowAuraId"] = false,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["CountPosY"] = -6,
						["ShowBorder"] = "ALWAYS",
						["ShowCount"] = true,
						["CountMonochrome"] = false,
						["CooldownDisableOmniCC"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["ShowDuration"] = true,
						["CountPosX"] = 10,
						["SpaceX"] = 5,
					},
					["Id"] = "PlayerDebuffs",
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "None",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Magic",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Curse",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Disease",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HARMFUL",
											},
										}, -- [1]
										{
											["Operator"] = "Equal",
											["Subject"] = "Classification",
											["Args"] = {
												["String"] = "Poison",
											},
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "HELPFUL",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Operator"] = "Equal",
											["Subject"] = "Type",
											["Args"] = {
												["String"] = "WEAPON",
											},
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -106.5,
						["OffsetX"] = -183.5,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Animations"] = {
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Times"] = 3,
							["Animation"] = "Flash",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
					},
				},
			},
			["DbVersion"] = 235,
		},
		["Zuriz - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = -8.59999999999999,
						["DurationFont"] = "Expressway",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 12,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "RIGHT",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -27.9,
						["ButtonSizeX"] = 50,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = -5.8,
						["VerticalSize"] = 3,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 16,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 50,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = false,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = false,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = false,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = false,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["FramePoint"] = "TOPRIGHT",
						["OffsetY"] = -19.9444789886475,
						["OffsetX"] = -177.277252197266,
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = -8.59999999999999,
						["DurationFont"] = "Expressway",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["SpaceX"] = -5.8,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "RIGHT",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -27.4,
						["ButtonSizeX"] = 50,
						["CountOutline"] = "OUTLINE",
						["ShowDuration"] = true,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 16,
						["CountPosX"] = 10,
						["MiniBarTexture"] = "Blizzard",
						["MiniBarOffsetY"] = -25,
						["CountMonochrome"] = false,
						["MiniBarWidth"] = 8,
						["HorizontalSize"] = 12,
						["CountSize"] = 10,
						["MiniBarOffsetX"] = 0,
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["VerticalSize"] = 3,
						["ShowCount"] = true,
						["ButtonSizeY"] = 50,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["DurationPosX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["DynamicSize"] = false,
						["CooldownDrawEdge"] = true,
						["CountFont"] = "Friz Quadrata TT",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = false,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = false,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = false,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = false,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -177.277374267578,
						["OffsetY"] = -154.166610717773,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Nyrith - Grim Batol"] = {
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Operator"] = "First",
								["Subject"] = "ExpirationTime",
								["Args"] = {
									["Float"] = 0,
								},
							}, -- [1]
							{
								["Operator"] = "NumberDesc",
								["Subject"] = "ExpirationTime",
								["Args"] = {
								},
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["MiniBarWidth"] = 8,
						["DurationPosX"] = 0,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["DurationAlignment"] = "CENTER",
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["TooltipShowPrefix"] = false,
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["CountFont"] = "Friz Quadrata TT",
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
			["DbVersion"] = 235,
		},
		["Krixidk - Valley of Heroes - EU"] = {
			["DbVersion"] = 235,
			["Containers"] = {
				["PlayerBuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["DurationPosX"] = 0,
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["WEAPON"] = true,
							["HELPFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -7.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Buffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerBuffs",
				},
				["PlayerDebuffs"] = {
					["Type"] = "ButtonContainer",
					["Order"] = {
						["Expert"] = false,
						["Predefined"] = "NoTimeTimeLeftDesc",
						["Rules"] = {
							{
								["Args"] = {
									["Float"] = 0,
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "First",
							}, -- [1]
							{
								["Args"] = {
								},
								["Subject"] = "ExpirationTime",
								["Operator"] = "NumberDesc",
							}, -- [2]
						},
					},
					["Layout"] = {
						["DurationOutline"] = "OUTLINE",
						["SpaceY"] = 15,
						["DurationFont"] = "Friz Quadrata TT",
						["DurationMonochrome"] = false,
						["Clickable"] = true,
						["ShowTooltip"] = true,
						["HorizontalSize"] = 16,
						["MiniBarDirection"] = "HIGHSHRINK",
						["CountAlignment"] = "CENTER",
						["TooltipShowUnitName"] = false,
						["MiniBarColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["CountColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["MiniBarLength"] = 36,
						["DurationPosY"] = -25,
						["ButtonSizeX"] = 36,
						["CountOutline"] = "OUTLINE",
						["SpaceX"] = 5,
						["VerticalSize"] = 2,
						["Direction"] = "LEFTDOWN",
						["DurationSize"] = 10,
						["CountPosX"] = 10,
						["ShowDuration"] = true,
						["MiniBarOffsetY"] = -25,
						["CountFont"] = "Friz Quadrata TT",
						["MiniBarWidth"] = 8,
						["DynamicSize"] = false,
						["CountSize"] = 10,
						["DurationColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Scale"] = 1,
						["TooltipShowClassification"] = false,
						["CountMonochrome"] = false,
						["ShowCount"] = true,
						["ButtonSizeY"] = 36,
						["TooltipShowPrefix"] = false,
						["ShowBorder"] = "ALWAYS",
						["CountPosY"] = -6,
						["DurationLayout"] = "ABBREVSPACE",
						["CooldownReverse"] = false,
						["TooltipShowAuraId"] = false,
						["ShowCooldown"] = false,
						["MiniBarStyle"] = "HORIZONTAL",
						["DurationAlignment"] = "CENTER",
						["CooldownDisableOmniCC"] = true,
						["MiniBarOffsetX"] = 0,
						["TooltipShowCaster"] = true,
						["MiniBarEnabled"] = false,
						["DurationPosX"] = 0,
						["CooldownDrawEdge"] = true,
						["MiniBarTexture"] = "Blizzard",
					},
					["Animations"] = {
						["AuraNew"] = {
							["Enabled"] = true,
							["Duration"] = 0.5,
							["Animation"] = "FadeIn",
						},
						["AuraChanging"] = {
							["Enabled"] = true,
							["Duration"] = 0.3,
							["Scale"] = 2.5,
							["Animation"] = "Popup",
						},
						["AuraExpiring"] = {
							["Enabled"] = true,
							["Duration"] = 1,
							["Animation"] = "Flash",
							["Times"] = 3,
						},
						["ContainerVisibility"] = {
							["Enabled"] = true,
							["InvisibleAlpha"] = 0.6,
							["Animation"] = "Fade",
							["Duration"] = 0.5,
							["MouseEventsWhenInactive"] = false,
						},
					},
					["Sources"] = {
						["player"] = {
							["HARMFUL"] = true,
						},
					},
					["Colors"] = {
						["Expert"] = false,
						["DefaultColor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["Rules"] = {
							{
								["Color"] = {
									0.8, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Unknown Debuff Type",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "None",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [1]
							{
								["Color"] = {
									0.2, -- [1]
									0.6, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Magic",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Magic",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [2]
							{
								["Color"] = {
									0.6, -- [1]
									0, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Curse",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Curse",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [3]
							{
								["Color"] = {
									0.6, -- [1]
									0.4, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Disease",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Disease",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [4]
							{
								["Color"] = {
									0, -- [1]
									0.6, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["Name"] = "Debuff Type Poison",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HARMFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
										{
											["Args"] = {
												["String"] = "Poison",
											},
											["Subject"] = "Classification",
											["Operator"] = "Equal",
										}, -- [2]
									}, -- [1]
								},
							}, -- [5]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Buff",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "HELPFUL",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [6]
							{
								["Color"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["Name"] = "Weapon",
								["Groups"] = {
									{
										{
											["Args"] = {
												["String"] = "WEAPON",
											},
											["Subject"] = "Type",
											["Operator"] = "Equal",
										}, -- [1]
									}, -- [1]
								},
							}, -- [7]
						},
					},
					["Filter"] = {
						["Groups"] = {
						},
						["Expert"] = false,
					},
					["Location"] = {
						["OffsetX"] = -183.5,
						["OffsetY"] = -106.5,
						["FramePoint"] = "TOPRIGHT",
						["RelativePoint"] = "TOPRIGHT",
					},
					["Name"] = "Player Debuffs",
					["Visibility"] = {
						["AlwaysVisible"] = true,
						["VisibleWhen"] = {
						},
						["VisibleWhenNot"] = {
						},
					},
					["Id"] = "PlayerDebuffs",
				},
			},
		},
	},
}
