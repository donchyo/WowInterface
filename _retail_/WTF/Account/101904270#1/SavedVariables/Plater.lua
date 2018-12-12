
PlaterDB = {
	["profileKeys"] = {
		["Watesting - Grim Batol"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 129,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, 0.2, 0, 1)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, 0.2, 1, 0)\n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \nend\n\n\n\n\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.SmallFlashAnimationHub:Play()\nend\n\n\n",
					["SpellIds"] = {
						257791, -- [1]
						258313, -- [2]
						257785, -- [3]
						271046, -- [4]
						258153, -- [5]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1531412155,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1528748982,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 72,
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["SpellIds"] = {
						277735, -- [1]
						277556, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1528748982,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531694289,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n        envTable.Glow:Stop()\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 197,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						257016, -- [1]
						271840, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531412154,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 198,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531694289,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
				}, -- [6]
			},
			["first_run2"] = true,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.8",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateGlobalScale"] = "1.0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "56",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateMinScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "1",
				["nameplateShowSelf"] = "0",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateOtherTopInset"] = "0.025",
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
		},
	},
}
