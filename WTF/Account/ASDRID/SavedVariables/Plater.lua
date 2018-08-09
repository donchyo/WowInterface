
PlaterDB = {
	["profileKeys"] = {
		["Zetiz - Grim Batol"] = "Default",
		["Krixidh - Grim Batol"] = "Default",
		["Krixidk - Grim Batol"] = "Krixi",
		["Kriximonk - Ravencrest"] = "Default",
		["Zuriz - Grim Batol"] = "Default",
		["Krixiqt - Ravencrest"] = "Default",
		["Krixidk - Valley of Heroes - EU"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, 0.2, 0, 1)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, 0.2, 1, 0)\n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \nend\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.SmallFlashAnimationHub:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1533836810,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, 0.2, 0, 1)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, 0.2, 1, 0)\n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \nend\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 130,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						257791, -- [1]
						258313, -- [2]
						257785, -- [3]
						271046, -- [4]
						258153, -- [5]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Small Alert [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.SmallFlashAnimationHub:Play()\nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1533836805,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 75,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Name"] = "UnitPower [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1533836807,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 73,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						277735, -- [1]
						277556, -- [2]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Fixate [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n        envTable.Glow:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533836831,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 132,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Debuff Alert [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n        envTable.Glow:Stop()\n    \nend\n\n\n",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533836825,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 198,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257016, -- [1]
						271840, -- [2]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Cast - Big Alert [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533836835,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 200,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Buff Alert [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
				}, -- [6]
			},
			["aura_x_offset"] = -40,
			["target_shady_enabled"] = false,
			["first_run2"] = true,
			["plate_config"] = {
				["player"] = {
					["health_incombat"] = {
						205.860107421875, -- [1]
					},
					["health"] = {
						205.860107421875, -- [1]
					},
				},
				["friendlyplayer"] = {
					["plate_order"] = 1,
				},
				["enemynpc"] = {
					["cast"] = {
						110, -- [1]
						10, -- [2]
					},
					["cast_incombat"] = {
						110.828552246094, -- [1]
						10, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 10,
					},
					["actorname_text_anchor"] = {
						["y"] = 11,
						["side"] = 9,
					},
					["health_incombat"] = {
						110, -- [1]
						10, -- [2]
					},
					["health"] = {
						110, -- [1]
						10.793306350708, -- [2]
					},
					["percent_text_ooc"] = true,
				},
			},
			["health_selection_overlay"] = "Skullflower",
			["aura_y_offset"] = 8,
			["tank"] = {
				["colors"] = {
					["anothertank"] = {
						0, -- [1]
						0.67843137254902, -- [2]
						0.976470588235294, -- [3]
						1, -- [4]
					},
					["aggro"] = {
						0.117647058823529, -- [1]
						0.690196078431373, -- [2]
						0.0862745098039216, -- [3]
						1, -- [4]
					},
					["pulling"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["health_statusbar_texture"] = "Skullflower",
			["cast_statusbar_color"] = {
				0, -- [1]
				1, -- [2]
				0.0352941176470588, -- [3]
			},
			["border_thickness"] = 1,
			["indicator_raidmark_scale"] = 0.654656767845154,
			["captured_spells"] = {
				[83877] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Temple Swiftstalker",
					["npcID"] = 48139,
				},
				[80610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Catherine Leland",
					["npcID"] = 5494,
				},
				[23735] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sayge",
					["npcID"] = 14822,
				},
				[197046] = {
					["type"] = "DEBUFF",
					["source"] = "Frankeqt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75590] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Twilight Torturer",
					["npcID"] = 39978,
				},
				[156374] = {
					["encounterID"] = "ENCOUNTER_START",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 48505,
				},
				[2580] = {
					["source"] = "Drmadnezz-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Nurzum-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13322] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Rogue Wizard",
					["npcID"] = 474,
				},
				[75846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Karsh Steelbender",
					["npcID"] = 39698,
				},
				[195901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Baggolas-Frostmane",
					["npcID"] = 0,
				},
				[155898] = {
					["type"] = "BUFF",
					["source"] = "Oregorger",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77182,
				},
				[207472] = {
					["source"] = "Mahesvra-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacksmithing Follower - Alliance",
					["npcID"] = 88403,
				},
				[223665] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sarmienna",
					["npcID"] = 0,
				},
				[102351] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Minitreë",
					["npcID"] = 0,
				},
				[246807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oticapsed-BurningLegion",
					["npcID"] = 0,
				},
				[90398] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Defias Squallshaper",
					["npcID"] = 48521,
				},
				[589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "José-Destromath",
					["npcID"] = 0,
				},
				[89697] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Defias Cannon",
					["npcID"] = 48266,
				},
				[91004] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Defias Envoker",
					["npcID"] = 48418,
				},
				[246585] = {
					["source"] = "Devlynn Styx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[93857] = {
					["npcID"] = 3887,
					["event"] = "SPELL_CAST_START",
					["source"] = "Baron Silverlaine",
					["encounterID"] = "ENCOUNTER_START",
				},
				[89538] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Temple Fireshaper",
					["npcID"] = 48143,
				},
				[185736] = {
					["source"] = "Nunara-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[74780] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 40106,
				},
				[5697] = {
					["type"] = "BUFF",
					["source"] = "Arielrebel-Quel'Thalas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["npcID"] = 43296,
				},
				[188033] = {
					["source"] = "Nunara-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Corla, Herald of Twilight",
					["npcID"] = 39679,
				},
				[75610] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Corla, Herald of Twilight",
					["npcID"] = 39679,
				},
				[79977] = {
					["type"] = "BUFF",
					["source"] = "High Vindicator",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126206,
				},
				[188034] = {
					["source"] = "Zulkrat-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91038] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Mining Monkey",
					["npcID"] = 48440,
				},
				[261730] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bilgewater Rigger",
					["npcID"] = 143673,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baptism",
					["npcID"] = 0,
				},
				[89652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 48230,
				},
				[261764] = {
					["source"] = "Krugar-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75054] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 40817,
				},
				[175670] = {
					["type"] = "BUFF",
					["source"] = "Ironworker",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 87448,
				},
				[173471] = {
					["type"] = "DEBUFF",
					["source"] = "Oregorger",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77182,
				},
				[248473] = {
					["source"] = "Dropdattotem-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baptism",
					["npcID"] = 0,
				},
				[235054] = {
					["source"] = "Mercanertesi-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Zulkrat-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88522] = {
					["type"] = "BUFF",
					["source"] = "Foe Reaper 5000",
					["npcID"] = 43778,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = "ENCOUNTER_START",
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Norious-Kazzak",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dkski",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Mahesvra-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156834] = {
					["type"] = "BUFF",
					["source"] = "Oregorger",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77182,
				},
				[74880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 40170,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iovin-Ragnaros",
					["npcID"] = 0,
				},
				[190909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ornchjuz-Ragnaros",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Midvinter-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 77789,
				},
				[72968] = {
					["source"] = "Bubih-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Zîlf-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 43778,
				},
				[12544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 62,
				},
				[3408] = {
					["source"] = "Drmadnezz-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["type"] = "DEBUFF",
					["source"] = "Frankeqt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cakayx-Hellfire",
					["npcID"] = 0,
				},
				[224125] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 100820,
				},
				[92604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vanessa VanCleef",
					["npcID"] = 49671,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toførti",
					["npcID"] = 0,
				},
				[198817] = {
					["source"] = "Heynx-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 100820,
				},
				[61295] = {
					["type"] = "BUFF",
					["source"] = "Baqshi-Blade'sEdge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6307] = {
					["type"] = "BUFF",
					["source"] = "Zigpit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 416,
				},
				[253384] = {
					["type"] = "DEBUFF",
					["source"] = "Urworried",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["type"] = "DEBUFF",
					["source"] = "Stdsarebop",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58511] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stormwind City Guard",
					["npcID"] = 68,
				},
				[156297] = {
					["type"] = "DEBUFF",
					["source"] = "Oregorger",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77182,
				},
				[155819] = {
					["type"] = "DEBUFF",
					["source"] = "Oregorger",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77182,
				},
				[242551] = {
					["source"] = "Discopowa-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Häwk-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Discopowa-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[76572] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Twilight Sadist",
					["npcID"] = 39980,
				},
				[228399] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Palacinkè-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[150433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azkaal",
					["npcID"] = 0,
				},
				[92857] = {
					["type"] = "BUFF",
					["source"] = "Blackrock Spy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49874,
				},
				[245102] = {
					["source"] = "Devlynn Styx",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121527,
				},
				[80676] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49874,
				},
				[224001] = {
					["source"] = "Zulkrat-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96955,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baptism",
					["npcID"] = 0,
				},
				[6136] = {
					["type"] = "DEBUFF",
					["source"] = "Rogue Wizard",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 474,
				},
				[90938] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Defias Blood Wizard",
					["npcID"] = 48417,
				},
				[89769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mining Powder",
					["npcID"] = 48284,
				},
				[203538] = {
					["source"] = "Jezusrealone-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mongnoje-DunModr",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Velii-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tryhardhero-Ragnaros",
					["npcID"] = 0,
				},
				[91561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 47135,
				},
				[209563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dundersnus-Ragnaros",
					["npcID"] = 0,
				},
				[183585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maxan Anvol",
					["npcID"] = 100022,
				},
				[223203] = {
					["source"] = "Bubih-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Jezusrealone-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Míntyfresh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Whiterunner-Kazzak",
					["npcID"] = 0,
				},
				[92001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 48418,
				},
				[75697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twilight Zealot",
					["npcID"] = 50284,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grivix",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Mahesvra-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Enaxy",
					["npcID"] = 0,
				},
				[101260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Darkmoon Faire Mystic Mage",
					["npcID"] = 54334,
				},
				[91077] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frantic Geist",
					["npcID"] = 47131,
				},
				[118] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Diablis",
					["npcID"] = 0,
				},
				[236021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cheetahx",
					["npcID"] = 0,
				},
				[23738] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sayge",
					["npcID"] = 14822,
				},
				[179252] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azkaal",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Míntyfresh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[173459] = {
					["encounterID"] = "ENCOUNTER_START",
					["source"] = "Oregorger",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 77182,
				},
				[238258] = {
					["source"] = "Thunderstørm-Nemesis",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Zîlf-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sun-Touched Servant",
					["npcID"] = 39366,
				},
				[96847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toy Cart",
					["npcID"] = 52359,
				},
				[225599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toførti",
					["npcID"] = 0,
				},
				[91554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fetid Ghoul",
					["npcID"] = 47135,
				},
				[24450] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 66187,
				},
				[76584] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Twilight Zealot",
					["npcID"] = 39990,
				},
				[82137] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Rom'ogg Bonecrusher",
					["npcID"] = 39665,
				},
				[15497] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Sorcerous Skeleton",
					["npcID"] = 47140,
				},
				[85739] = {
					["source"] = "Zladdé-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75077] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 39994,
				},
				[108211] = {
					["source"] = "Drmadnezz-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[75842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 39698,
				},
				[188031] = {
					["source"] = "Psychogirl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elunisa",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iovin-Ragnaros",
					["npcID"] = 0,
				},
				[156179] = {
					["encounterID"] = "ENCOUNTER_START",
					["source"] = "Oregorger",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 77182,
				},
				[57724] = {
					["source"] = "Nunara-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skipta",
					["npcID"] = 0,
				},
				[76719] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Incendiary Spark",
					["npcID"] = 40021,
				},
				[75608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 50284,
				},
				[88736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Admiral Ripsnarl",
					["npcID"] = 47626,
				},
				[214222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rajaf",
					["npcID"] = 0,
				},
				[82393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ascendant Lord Obsidius",
					["npcID"] = 39705,
				},
				[208693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashtray-Boulderfist",
					["npcID"] = 0,
				},
				[8646] = {
					["type"] = "DEBUFF",
					["source"] = "Bandit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 116,
				},
				[80146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Moonbrook Thug",
					["npcID"] = 42677,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashtray-Boulderfist",
					["npcID"] = 0,
				},
				[75645] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Corla, Herald of Twilight",
					["npcID"] = 39679,
				},
				[6673] = {
					["source"] = "Zulkrat-C'Thun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Enraged Worgen",
					["npcID"] = 49532,
				},
				[89547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Temple Fireshaper",
					["npcID"] = 48143,
				},
				[62179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grivix",
					["npcID"] = 0,
				},
				[76688] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twilight Obsidian Borer",
					["npcID"] = 40019,
				},
				[81039] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irradiated Slime",
					["npcID"] = 6218,
				},
				[9941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 7031,
				},
				[156240] = {
					["encounterID"] = "ENCOUNTER_START",
					["source"] = "Oregorger",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 77182,
				},
				[89757] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Defias Cannon",
					["npcID"] = 48266,
				},
				[73963] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Venomous Skitterer",
					["npcID"] = 39440,
				},
				[80354] = {
					["source"] = "Dropdattotem-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[92100] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vanessa VanCleef",
					["npcID"] = 49429,
				},
				[2823] = {
					["source"] = "Drmadnezz-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91622] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Dread Scryer",
					["npcID"] = 47141,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cakayx-Hellfire",
					["npcID"] = 0,
				},
				[155256] = {
					["type"] = "BUFF",
					["source"] = "Security Guard",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88818,
				},
				[774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skipta",
					["npcID"] = 0,
				},
				[58514] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stormwind City Guard",
					["npcID"] = 68,
				},
				[8690] = {
					["source"] = "Darkhadou-Ragnaros",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[81441] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Millhouse Manastorm",
					["npcID"] = 43391,
				},
				[245686] = {
					["source"] = "Mahesvra-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Minitreë",
					["npcID"] = 0,
				},
				[211793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Odinudar-Stormscale",
					["npcID"] = 0,
				},
				[62175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grivix",
					["npcID"] = 0,
				},
			},
			["hover_highlight_alpha"] = 0.197514176368713,
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.150000035762787, -- [4]
			},
			["aggro_modifies"] = {
				["border_color"] = true,
			},
			["not_affecting_combat_alpha"] = 1,
			["first_run"] = true,
			["target_highlight_alpha"] = 0.204900875687599,
			["auto_toggle_stacking_enabled"] = true,
			["target_shady_alpha"] = 1,
			["indicator_raidmark_anchor"] = {
				["y"] = 0.741641998291016,
				["x"] = 0.150608062744141,
				["side"] = 9,
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "0.8",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateOtherTopInset"] = "0.075",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "50.292678833008",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 1,
				["Aura - Debuff Alert"] = 2,
				["Fixate"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 1,
				["Aura - Buff Alert"] = 2,
			},
			["aura_timer_text_size"] = 7.38273525238037,
			["click_space"] = {
				111.312927246094, -- [1]
				30.399471282959, -- [2]
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.00229716300964,
				},
			},
			["cast_statusbar_bgtexture"] = "Skullflower",
			["dps"] = {
				["colors"] = {
					["noaggro"] = {
						0.0313725490196078, -- [1]
						0.380392156862745, -- [2]
						0.0274509803921569, -- [3]
						1, -- [4]
					},
				},
			},
			["aura_grow_direction"] = 3,
			["cast_statusbar_texture"] = "Skullflower",
			["health_statusbar_bgtexture"] = "Skullflower",
		},
		["Krixi"] = {
			["tank"] = {
				["colors"] = {
					["aggro"] = {
						0.0588235294117647, -- [1]
						0.423529411764706, -- [2]
						0.0392156862745098, -- [3]
						1, -- [4]
					},
					["nocombat"] = {
						0.380392156862745, -- [1]
						0.00392156862745098, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["health_statusbar_texture"] = "Skullflower",
			["target_highlight_alpha"] = 0,
			["cast_statusbar_color"] = {
				0, -- [1]
				1, -- [2]
				0.0352941176470588, -- [3]
			},
			["aura_x_offset"] = 0.376930236816406,
			["click_space"] = {
				116.853546142578, -- [1]
				23.8171844482422, -- [2]
			},
			["border_thickness"] = 1.06486761569977,
			["target_shady_alpha"] = 0.936327695846558,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.00229716300964,
				},
			},
			["cast_statusbar_bgtexture"] = "Skullflower",
			["dps"] = {
				["colors"] = {
					["noaggro"] = {
						0.0313725490196078, -- [1]
						0.380392156862745, -- [2]
						0.0274509803921569, -- [3]
						1, -- [4]
					},
				},
			},
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.980000000447035, -- [4]
			},
			["target_shady_enabled"] = false,
			["aura_timer"] = false,
			["indicator_anchor"] = {
				["side"] = 8,
			},
			["first_run"] = true,
			["cast_statusbar_texture"] = "Skullflower",
			["aggro_modifies"] = {
				["border_color"] = true,
			},
			["target_shady_combat_only"] = false,
			["health_statusbar_bgtexture"] = "Skullflower",
			["plate_config"] = {
				["player"] = {
					["health"] = {
						205.860107421875, -- [1]
					},
					["health_incombat"] = {
						205.860107421875, -- [1]
					},
				},
				["friendlyplayer"] = {
					["health"] = {
						50, -- [1]
						1, -- [2]
					},
				},
				["enemynpc"] = {
					["spellname_text_font"] = "Expressway",
					["quest_color_enemy"] = {
						nil, -- [1]
						0, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["quest_color_neutral"] = {
						nil, -- [1]
						0.976470588235294, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["actorname_text_size"] = 10,
					["cast"] = {
						115, -- [1]
						9, -- [2]
					},
					["percent_text_ooc"] = true,
					["actorname_text_anchor"] = {
						["side"] = 8,
					},
					["actorname_text_spacing"] = 9,
					["percent_text_font"] = "Expressway",
					["buff_frame_y_offset"] = 2.29557800292969,
					["cast_incombat"] = {
						115, -- [1]
						9, -- [2]
					},
					["spellname_text_size"] = 12.2575836181641,
					["health"] = {
						115.362419128418, -- [1]
						10.793306350708, -- [2]
					},
					["health_incombat"] = {
						115, -- [1]
					},
					["actorname_text_font"] = "Expressway",
					["level_text_font"] = "Expressway",
					["quest_enabled"] = false,
				},
			},
			["health_selection_overlay"] = "Skullflower",
			["aura_y_offset"] = 3.33174133300781,
		},
	},
}
