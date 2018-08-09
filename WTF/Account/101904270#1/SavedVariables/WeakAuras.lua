
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Anti-Magic Shell"] = {
			[48707] = 136120,
		},
		["Power Word: Shield"] = {
			[17] = 135940,
		},
		["Vampiric Blood"] = {
			[55233] = 136168,
		},
		["Umbilicus Eternus"] = {
			[193249] = 1392546,
		},
		["Archimonde's Hatred Reborn"] = {
			[235169] = 136030,
		},
	},
	["login_squelch_time"] = 10,
	["displays"] = {
		["sendaddonmessagetest"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 311.358337402344,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_alwaystrue"] = true,
				["use_absorbMode"] = true,
				["names"] = {
					"Power Word: Shield", -- [1]
				},
				["spellName"] = 47540,
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["type"] = "aura",
				["custom_type"] = "event",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_unit"] = true,
				["event"] = "Conditions",
				["events"] = "CHAT_MSG_ADDON",
				["realSpellName"] = "Penance",
				["use_spellName"] = true,
				["custom"] = "function(event, ...)\n    local arg1, arg2, arg3, arg4 = ...\n    print(GetGameTime())\n    print(\"event\", event)\n    print(\"1\", arg1)\n    print(\"2\", arg2)\n    print(\"3\", arg3)\n    print(\"4\", arg4)\n    return true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
				["spellName"] = 47540,
			},
			["actions"] = {
				["start"] = {
					["do_custom"] = true,
					["do_message"] = false,
					["custom"] = "C_ChatInfo.SendAddonMessage(\"KRIXI_MESSAGE\", \"testing\", \"RAID\")\nprint(\"sending test message at:\", GetGameTime())\n    \n    \n    \n    \n\n",
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"KRIXI_MESSAGE\")\n\n\n\n",
				},
			},
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["inverse"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["id"] = "sendaddonmessagetest",
			["zoom"] = 0,
			["text2Enabled"] = false,
			["width"] = 64,
			["stickyDuration"] = false,
			["xOffset"] = 14.456298828125,
			["numTriggers"] = 1,
			["glow"] = false,
			["conditions"] = {
			},
			["disjunctive"] = "all",
			["internalVersion"] = 5,
		},
		["!!!! Addon Message Test"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["disjunctive"] = "all",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
			},
			["fixedWidth"] = 200,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"KRIXI_MESSAGE\")",
				},
			},
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["internalVersion"] = 5,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["custom_hide"] = "timed",
				["type"] = "custom",
				["custom_type"] = "event",
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["use_absorbMode"] = true,
				["event"] = "Health",
				["names"] = {
				},
				["unit"] = "player",
				["spellIds"] = {
				},
				["events"] = "CHAT_MSG_ADDON",
				["custom"] = "function(event, ...)\n    local arg1, arg2, arg3, arg4 = ...\n    print(GetGameTime())\n    print(\"event\", event)\n    print(\"1\", arg1)\n    print(\"2\", arg2)\n    print(\"3\", arg3)\n    print(\"4\", arg4)\n    \n    C_ChatInfo.SendAddonMessage(\"KRIXI_MESSAGE\", \"returntesting\", \"PARTY\")\n    return true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 22.1111030578613,
			["id"] = "!!!! Addon Message Test",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["wordWrap"] = "WordWrap",
			["height"] = 11.5555553436279,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -31.28955078125,
		["width"] = 825.303283691406,
		["height"] = 570.121948242188,
		["yOffset"] = -280.754211425781,
	},
	["editor_theme"] = "Monokai",
}
