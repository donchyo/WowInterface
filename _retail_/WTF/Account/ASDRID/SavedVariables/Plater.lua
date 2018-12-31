
PlaterDB = {
	["profileKeys"] = {
		["Krixirogue - Ravencrest"] = "Default",
		["Donch - Grim Batol"] = "Default",
		["Krixidk - Grim Batol"] = "Krixi",
		["Kroxi - Grim Batol"] = "Default",
		["Bawsie - Grim Batol"] = "Default",
		["Krixikin - Grim Batol"] = "Default",
		["Dumbgoat - Ravencrest"] = "Default",
		["Kroxi - Ravencrest"] = "Default",
		["Zetiz - Grim Batol"] = "Default",
		["Kriximonk - Ravencrest"] = "Default",
		["Krixidh - Ravencrest"] = "Default",
		["Krixidk - Ravencrest"] = "Default",
		["Gnomalock - Grim Batol"] = "Default",
		["Zolution - Grim Batol"] = "Default",
		["Krixidh - Grim Batol"] = "Default",
		["Krixicx - Shattered Hand"] = "Default",
		["Memeinhaler - Ravencrest"] = "Default",
		["Zuriz - Grim Batol"] = "Default",
		["Krixiqt - Ravencrest"] = "Default",
		["Krixidk - Valley of Heroes - EU"] = "Default",
	},
	["profiles"] = {
		["Zetiz - Grim Batol"] = {
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
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 2,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Unit - Important"] = 5,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535473591,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048199,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 138,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlayCastBarTop:Hide()\n    envTable.overlayCastBarBottom:Hide()    \n    envTable.overlaySpark:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.overlayCastBarTop:Show()\n    envTable.overlayCastBarBottom:Show()        \n    \n    envTable.glowEffect:Show()\n    \n    envTable.overlaySpark:Show()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1533948709,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlayCastBarTop.value = envTable._CastPercent\n    envTable.overlayCastBarBottom.value = envTable._CastPercent    \n    \n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 16, 0)\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color\n    Plater.SetNameplateColor (unitFrame, \"orange\")\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the top castbar inside the health bar\n    envTable.overlayCastBarTop = envTable.overlayCastBar or Plater:CreateBar (unitFrame.healthBar)\n    envTable.overlayCastBarTop:SetPoint ('topleft', 0, 2)\n    envTable.overlayCastBarTop:SetPoint ('topright', 0, 2)\n    envTable.overlayCastBarTop.height = 2\n    envTable.overlayCastBarTop.texture = \"Skyline\"\n    envTable.overlayCastBarTop.alpha = 0.73\n    \n    --creates the bottom castbar inside the health bar\n    envTable.overlayCastBarBottom = envTable.overlayCastBar or Plater:CreateBar (unitFrame.healthBar)\n    envTable.overlayCastBarBottom:SetPoint ('bottomleft', 0, -2)\n    envTable.overlayCastBarBottom:SetPoint ('bottomright', 0, -2)\n    envTable.overlayCastBarBottom.height = 2\n    envTable.overlayCastBarBottom.texture = \"Skyline\"\n    envTable.overlayCastBarBottom.alpha = 0.73\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 32\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1533663248,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048441,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 151,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534626968,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						260954, -- [1]
						257739, -- [2]
						257314, -- [3]
						266107, -- [4]
						272584, -- [5]
						244653, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1535815768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535417117,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1528748982,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
				}, -- [11]
			},
			["cast_statusbar_color"] = {
				0, -- [1]
				1, -- [2]
				0.0352941176470588, -- [3]
			},
			["first_run2"] = true,
			["first_run"] = true,
			["border_thickness"] = 1.06486761569977,
			["cast_statusbar_bgtexture"] = "Skullflower",
			["patch_version"] = 1,
			["aura_timer"] = false,
			["click_space"] = {
				116.853546142578, -- [1]
				23.8171844482422, -- [2]
			},
			["target_shady_combat_only"] = false,
			["captured_spells"] = {
				[8690] = {
					["source"] = "Goldant-TwistingNether",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñine-Outland",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Cainaleane-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suregos-Auchindoun",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Nokatochi-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vaknick-TwistingNether",
					["npcID"] = 0,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[703] = {
					["source"] = "Lex-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215607] = {
					["source"] = "Schurkos-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ezredes-TwistingNether",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Shinarus-TwistingNether",
					["npcID"] = 0,
				},
				[182123] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Mhlwar-TwistingNether",
					["npcID"] = 0,
				},
				[234115] = {
					["source"] = "Cheap-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Roxiroyal-TwistingNether",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Festinus-TwistingNether",
					["npcID"] = 0,
				},
				[79892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murgha the Tempered",
					["npcID"] = 96957,
				},
				[1966] = {
					["source"] = "Nicias-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222256] = {
					["source"] = "Sniffly-ChamberofAspects",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Watchurback-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188315] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Dcomp-TwistingNether",
					["npcID"] = 0,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Roxiroyal-TwistingNether",
					["npcID"] = 0,
				},
				[215387] = {
					["source"] = "Schurkos-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dálle-TwistingNether",
					["npcID"] = 0,
				},
				[228224] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91021] = {
					["source"] = "Zenlix-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["source"] = "Blingtron 6000",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 101527,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Festinus-TwistingNether",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56814] = {
					["source"] = "Mortivoro-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Belladònna-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16595] = {
					["source"] = "Rerysa-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Infuze-TwistingNether",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñine-Outland",
					["npcID"] = 0,
				},
				[16591] = {
					["source"] = "Rerysa-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["source"] = "Sniffly-ChamberofAspects",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Agarin-TwistingNether",
					["npcID"] = 0,
				},
				[48168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Matron Ossela",
					["npcID"] = 96955,
				},
				[74589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kebos-Nemesis",
					["npcID"] = 0,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Roxiroyal-TwistingNether",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Cainaleane-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192085] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Kebos-Nemesis",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[193641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghostzero-Jaedenar",
					["npcID"] = 0,
				},
				[183075] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drunken Mage",
					["npcID"] = 106547,
				},
				[79140] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[69369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Festinus-TwistingNether",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amarthiel-TwistingNether",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Effi-Nagrand",
					["npcID"] = 0,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ninjatuga-Aggra(Português)",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shezodiac-TwistingNether",
					["npcID"] = 0,
				},
				[195452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zenlix-Dragonblight",
					["npcID"] = 0,
				},
				[44212] = {
					["source"] = "Arcangelote-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206760] = {
					["source"] = "Zenlix-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shinarus-TwistingNether",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Festinus-TwistingNether",
					["npcID"] = 0,
				},
				[215598] = {
					["source"] = "Schurkos-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Roxiroyal-TwistingNether",
					["npcID"] = 0,
				},
				[139176] = {
					["source"] = "Valywyn-Ragnaros",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shezodiac-TwistingNether",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shezodiac-TwistingNether",
					["npcID"] = 0,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 1860,
				},
				[222695] = {
					["source"] = "Blazaash-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[28567] = {
					["source"] = "Cainaleane-TwistingNether",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[257506] = {
					["source"] = "Goldant-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñine-Outland",
					["npcID"] = 0,
				},
				[16739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suregos-Auchindoun",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñine-Outland",
					["npcID"] = 0,
				},
				[126457] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deterock-Nemesis",
					["npcID"] = 0,
				},
				[6770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lewz-Ghostlands",
					["npcID"] = 0,
				},
				[207472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jumá-TwistingNether",
					["npcID"] = 0,
				},
				[215997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Retroll-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Anderpandar-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohajib",
					["npcID"] = 0,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dcomp-TwistingNether",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dcomp-TwistingNether",
					["npcID"] = 0,
				},
				[212283] = {
					["source"] = "Goldant-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183585] = {
					["source"] = "Lightsworn Anchorite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 109751,
				},
				[185422] = {
					["source"] = "Goldant-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nelur Lightsown",
					["npcID"] = 96954,
				},
				[201979] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Illgoth-TwistingNether",
					["npcID"] = 0,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lundin-TwistingNether",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashlandra-Dunemaul",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leroht-Aggra(Português)",
					["npcID"] = 0,
				},
				[236430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dcomp-TwistingNether",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hitsuji-Nemesis",
					["npcID"] = 0,
				},
				[156071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suregos-Auchindoun",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Whirlstar-Sylvanas",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[1330] = {
					["source"] = "Lex-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Katanari-Nemesis",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashlandra-Dunemaul",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Katanari-Nemesis",
					["npcID"] = 0,
				},
				[216016] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kebos-Nemesis",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñine-Outland",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[8680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[225605] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Twisten",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jumá-TwistingNether",
					["npcID"] = 0,
				},
				[183108] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Drunken Mage",
					["npcID"] = 106547,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dálle-TwistingNether",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andymage-TwistingNether",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leroht-Aggra(Português)",
					["npcID"] = 0,
				},
				[121308] = {
					["source"] = "Schnottz Infantryman",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 48629,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 121571,
				},
				[272572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dálle-TwistingNether",
					["npcID"] = 0,
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.00229716300964,
				},
			},
			["cast_statusbar_texture"] = "Skullflower",
			["aura_x_offset"] = 0.376930236816406,
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.980000000447035, -- [4]
			},
			["target_shady_enabled"] = false,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.8",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateOtherTopInset"] = "-1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "45",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["indicator_anchor"] = {
				["side"] = 8,
			},
			["target_shady_alpha"] = 0.936327695846558,
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
			["aggro_modifies"] = {
				["border_color"] = true,
			},
			["target_highlight_alpha"] = 0,
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
					["quest_enabled"] = false,
					["actorname_text_font"] = "Expressway",
					["level_text_font"] = "Expressway",
					["health_incombat"] = {
						115, -- [1]
					},
				},
			},
			["health_selection_overlay"] = "Skullflower",
			["aura_y_offset"] = 3.33174133300781,
		},
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535473591,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1538507469,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 76,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1538507476,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 184,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Icon"] = 1029718,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1533663248,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538507443,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 554,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Time"] = 1534625053,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Time"] = 1534625053,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535048199,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535048441,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1538507472,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Enabled"] = true,
					["Revision"] = 150,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Icon"] = 135996,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Time"] = 1543250950,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = 2000853,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1542816185,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543253273,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [15]
			},
			["hover_highlight_alpha"] = 0.199999988079071,
			["indicator_raidmark_scale"] = 0.99516886472702,
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
					["spellpercent_text_size"] = 6,
					["spellpercent_text_shadow"] = false,
					["health_incombat"] = {
						50, -- [1]
						1, -- [2]
					},
					["actorname_text_size"] = 6,
					["plate_order"] = 1,
					["actorname_text_spacing"] = 5,
					["only_damaged"] = false,
					["percent_show_percent"] = false,
					["spellname_text_size"] = 6,
					["health"] = {
						50, -- [1]
						1, -- [2]
					},
				},
				["enemynpc"] = {
					["cast"] = {
						110, -- [1]
						10, -- [2]
					},
					["spellpercent_text_anchor"] = {
						["x"] = 0,
					},
					["cast_incombat"] = {
						111, -- [1]
						10, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 10,
					},
					["percent_text_color"] = {
						0.901960784313726, -- [1]
						0.901960784313726, -- [2]
						0.901960784313726, -- [3]
					},
					["actorname_text_size"] = 10,
					["actorname_text_anchor"] = {
						["y"] = 11,
						["side"] = 9,
					},
					["percent_text_size"] = 10,
					["actorname_text_spacing"] = 9,
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
			["first_run2"] = true,
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.150000035762787, -- [4]
			},
			["aggro_modifies"] = {
				["border_color"] = true,
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 627607,
					["Name"] = "Attacking Monk Statue [Plater]",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 53,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "A simple reorder for the health bar and cast bar.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --set the height offset\n    local healthBarOffset = 0\n    local castBarOffset = 0\n    \n    unitFrame.healthBar:ClearAllPoints()\n    unitFrame.healthBar:SetPoint (\"bottomleft\", unitFrame, \"bottomleft\", 0, healthBarOffset)\n    unitFrame.healthBar:SetPoint (\"bottomright\", unitFrame, \"bottomright\", 0, healthBarOffset)\n    \n    unitFrame.castBar:ClearAllPoints()\n    unitFrame.castBar:SetPoint (\"topleft\", unitFrame, \"bottomleft\", 0, castBarOffset)\n    unitFrame.castBar:SetPoint (\"topright\", unitFrame, \"bottomright\", 0, castBarOffset)\n    \nend\n\n\n",
					},
					["Time"] = 1543188991,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 129,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --the border has 3 layers: inner, middle and outter.\n    --you can defyne the alpha of each one of these layers below.\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetBorderColor (r, g, b)\n    local canExportBorder = true\n    \n    --border transparency\n    local innerBorderAlpha = 1.0  --value from 0 to 1\n    local middleBorderAlpha = 1.0\n    local outBorderAlpha = 0\n    \n    --border color\n    local borderColor = \"black\"\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        --creates an overlay frame above the health bar\n        local overlayFrame = CreateFrame (\"frame\", nil, unitFrame.healthBar)\n        overlayFrame:SetAllPoints()\n        overlayFrame:SetFrameLevel (unitFrame.healthBar:GetFrameLevel()+2)        \n        envTable.BorderFrame = overlayFrame\n        \n        DetailsFramework:CreateBorder (overlayFrame, innerBorderAlpha, middleBorderAlpha, outBorderAlpha)\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        overlayFrame:SetBorderColor (r, g, b)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = overlayFrame\n        end\n        \n        if (not isEnabled) then\n            overlayFrame:Hide()\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1543188568,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 135,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateComboPoints()\n    \nend\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        envTable.ComboPointFrame = CreateFrame (\"frame\", nil, unitFrame)\n        envTable.ComboPointFrame:SetScale (sizes.scale)\n        \n        --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n        \n        --animations\n        local onPlayShowAnimation = function (animation)\n            --stop the hide animation if it's playing\n            if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().HideAnimation:Stop()\n            end\n            \n            animation:GetParent():Show()\n        end\n        \n        local onPlayHideAnimation = function (animation)\n            --stop the show animation if it's playing\n            if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().ShowAnimation:Stop()\n            end\n        end        \n        local onStopHideAnimation = function (animation)\n            animation:GetParent():Hide()       \n        end\n        \n        local createAnimations = function (comboPoint)\n            --on show\n            comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n            \n            --on hide\n            comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n        end\n        \n        --build combo point frame        \n        for i =1, 10 do \n            local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n            f:SetSize (sizes.width, sizes.height)\n            tinsert (envTable.ComboPoints, f)\n            \n            local backgroundTexture = f:CreateTexture (nil, \"background\")\n            backgroundTexture:SetTexture (textures.backgroundTexture)\n            backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n            backgroundTexture:SetSize (sizes.width, sizes.height)\n            backgroundTexture:SetPoint (\"center\")\n            \n            local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n            comboPointTexture:SetTexture (textures.comboPointTexture)\n            comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n            \n            comboPointTexture:SetSize (sizes.width, sizes.height)\n            comboPointTexture:SetPoint (\"center\")\n            comboPointTexture:Hide()            \n            \n            f.IsActive = false\n            \n            f.backgroundTexture = backgroundTexture\n            f.comboPointTexture = comboPointTexture\n            \n            createAnimations (f)\n        end\n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1543177139,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 155,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)                \n            else\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = false;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    envTable.TargetAmount = envTable.TargetAmount or Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n    Plater.SetAnchor (envTable.TargetAmount, anchor);\n    \n    if (unitFrame.healthBar.TargetAmount) then\n        print (\"Nameplate Already have a Target Amount String!\")\n    end\n    \n    unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------       \n    \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1542808551,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 67,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1542815875,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [8]
			},
			["health_statusbar_bgcolor"] = {
				0.454901960784314, -- [1]
				0.454901960784314, -- [2]
				0.454901960784314, -- [3]
				0, -- [4]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Color Change"] = 1,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Unit - Important"] = 5,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["click_space"] = {
				111, -- [1]
				30, -- [2]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["cast_statusbar_texture"] = "Skullflower",
			["auto_toggle_friendly"] = {
				["party"] = true,
				["raid"] = true,
				["arena"] = true,
			},
			["aura_x_offset"] = -40,
			["health_statusbar_bgtexture"] = "SkullflowerLight",
			["indicator_raidmark_anchor"] = {
				["y"] = 1,
				["x"] = 0,
				["side"] = 8,
			},
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
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Reorder Nameplate"] = 1,
				["Players Targetting Amount"] = 1,
				["Monk Statue"] = 2,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Extra Border"] = 1,
				["Hide Neutral Units"] = 1,
			},
			["cast_statusbar_color"] = {
				0, -- [1]
				1, -- [2]
				0.0352941176470588, -- [3]
			},
			["not_affecting_combat_alpha"] = 1,
			["cast_statusbar_bgtexture"] = "Skullflower",
			["target_highlight_alpha"] = 0.199999988079071,
			["auto_toggle_stacking_enabled"] = true,
			["target_shady_alpha"] = 1,
			["captured_spells"] = {
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259489] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[115192] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[214968] = {
					["type"] = "DEBUFF",
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[241835] = {
					["source"] = "Pantad-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152279] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[248744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[277308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Troll Corruptor",
					["npcID"] = 136296,
				},
				[258212] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[281403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcanna",
					["npcID"] = 0,
				},
				[272192] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gut-Gut the Glutton",
					["npcID"] = 128674,
				},
				[119415] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[256678] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[31661] = {
					["source"] = "Bodyy-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cucuy",
					["npcID"] = 0,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stormbound Conqueror",
					["npcID"] = 136555,
				},
				[270150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Feathered Viper",
					["npcID"] = 132409,
				},
				[115834] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259495] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[116858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[223929] = {
					["type"] = "DEBUFF",
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Souji-Madmortem",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[238515] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259753] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[45524] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[258219] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[118779] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[190925] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[3409] = {
					["type"] = "DEBUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tnai",
					["npcID"] = 0,
				},
				[273232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[182226] = {
					["source"] = "Leede",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[221887] = {
					["type"] = "BUFF",
					["source"] = "Mahrras-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiwwué",
					["npcID"] = 0,
				},
				[275793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firesting Warrior",
					["npcID"] = 146186,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[258222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Marsh Hornet",
					["npcID"] = 128966,
				},
				[291147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narnel",
					["npcID"] = 0,
				},
				[23922] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[273238] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[291150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Taxikar",
					["npcID"] = 0,
				},
				[199373] = {
					["npcID"] = 24207,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Army of the Dead",
					["encounterID"] = 2145,
				},
				[280404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[232893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[267611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[256434] = {
					["source"] = "Kimick",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[115072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280409] = {
					["source"] = "Stasimus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Matzulanu-Outland",
					["npcID"] = 0,
				},
				[287063] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[274271] = {
					["type"] = "DEBUFF",
					["source"] = "Zul",
					["npcID"] = 138967,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271713] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Luminous Azerite",
					["npcID"] = 149331,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[61391] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[207311] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[210126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liandras",
					["npcID"] = 0,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[273254] = {
					["type"] = "DEBUFF",
					["source"] = "Bloodthirsty Crawg",
					["npcID"] = 139059,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[266091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tjola",
					["npcID"] = 0,
				},
				[279397] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Qaderiko",
					["npcID"] = 0,
				},
				[258233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[276840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scianano",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lycaon-Frostmane",
					["npcID"] = 0,
				},
				[265583] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spineclaw Rockshell",
					["npcID"] = 134788,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cazurron-DunModr",
					["npcID"] = 0,
				},
				[123904] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[1943] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[162794] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[1953] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dalji-Blackmoore",
					["encounterID"] = 2145,
				},
				[251839] = {
					["source"] = "Kunec",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Seikatso",
					["npcID"] = 0,
				},
				[256445] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saurolisk",
					["npcID"] = 123647,
				},
				[256701] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightfurry-Karazhan",
					["npcID"] = 0,
				},
				[214226] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightborne Envoy",
					["npcID"] = 135864,
				},
				[273264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[117892] = {
					["type"] = "BUFF",
					["source"] = "Saltfin Swimmer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126682,
				},
				[42650] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[278383] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[132603] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[271220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonebound Warrior",
					["npcID"] = 139429,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[277365] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kao-Tien Subjugator",
					["npcID"] = 136551,
				},
				[277366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kao-Tien Marauder",
					["npcID"] = 136552,
				},
				[30449] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[258241] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[2050] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[279416] = {
					["type"] = "DEBUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[115080] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[286581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[188389] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[201695] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[257220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reincarnated Berserker",
					["npcID"] = 122602,
				},
				[528] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[277373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stormbound Conqueror",
					["npcID"] = 136555,
				},
				[257221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Golly",
					["npcID"] = 129719,
				},
				[204255] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[261827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hexthralled Soldier",
					["npcID"] = 137134,
				},
				[278911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xaspiin-Sylvanas",
					["npcID"] = 0,
				},
				[261828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hexthralled Soldier",
					["npcID"] = 137134,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thelysea",
					["npcID"] = 0,
				},
				[256711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[266120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Venomscale Hydra",
					["npcID"] = 132740,
				},
				[273286] = {
					["type"] = "DEBUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[102417] = {
					["source"] = "Sòlry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273288] = {
					["type"] = "BUFF",
					["source"] = "Nazmani Crusher",
					["npcID"] = 139051,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[145152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[210657] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[196840] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арбузичка-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[171253] = {
					["source"] = "Trendora",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[585] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[207076] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhodianalpha-Sylvanas",
					["npcID"] = 0,
				},
				[273293] = {
					["source"] = "Feamy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sufferz",
					["npcID"] = 0,
				},
				[91800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Graveflayer",
					["npcID"] = 26125,
				},
				[198121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Applecracker",
					["npcID"] = 0,
				},
				[257740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[272783] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[275343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Coilfang",
					["npcID"] = 140334,
				},
				[210660] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[111759] = {
					["source"] = "Pantad-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275344] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brightscale Screecher",
					["npcID"] = 140355,
				},
				[57111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Enyõ",
					["npcID"] = 0,
				},
				[77472] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rorku",
					["npcID"] = 0,
				},
				[275345] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Screecher",
					["npcID"] = 140335,
				},
				[277904] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[34914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[275346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Screecher",
					["npcID"] = 140335,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[61781] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadòwlìght-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[277394] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coven Hexcaller",
					["npcID"] = 137131,
				},
				[277395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hexbound Familiar",
					["npcID"] = 137132,
				},
				[272278] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bagge",
					["npcID"] = 0,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shift",
					["npcID"] = 0,
				},
				[262094] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275351] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Lÿzaali",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gené",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[232670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[227041] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[269214] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Барбю-Дракономор",
					["npcID"] = 0,
				},
				[266144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Venomscale Monitor",
					["npcID"] = 131411,
				},
				[271774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirocite",
					["npcID"] = 136225,
				},
				[267169] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Astralite Visara",
					["npcID"] = 133738,
				},
				[257748] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[217832] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[273312] = {
					["type"] = "BUFF",
					["source"] = "Sammexx-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirocite",
					["npcID"] = 136225,
				},
				[131347] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[259285] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lesh",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[5394] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[19577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[273316] = {
					["npcID"] = 139051,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nazmani Crusher",
					["encounterID"] = 2145,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[49821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[264106] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[87840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Genov-Silvermoon",
					["npcID"] = 0,
				},
				[272295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drakaej",
					["npcID"] = 0,
				},
				[691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Laenatan",
					["npcID"] = 0,
				},
				[135700] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[204019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[192249] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арбузичка-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[283044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[91807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Graveflayer",
					["npcID"] = 26125,
				},
				[263087] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rune Scribe Lusaris",
					["npcID"] = 133734,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Assylum-Silvermoon",
					["npcID"] = 0,
				},
				[281000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[16827] = {
					["npcID"] = 50159,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2145,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[187647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Sabertusk",
					["npcID"] = 123135,
				},
				[272817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zhnjpka",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Genov-Silvermoon",
					["npcID"] = 0,
				},
				[269747] = {
					["type"] = "DEBUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[279471] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[147732] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[57755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brekkstein",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271287] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gyrum the Virulent",
					["npcID"] = 146869,
				},
				[274358] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[275384] = {
					["npcID"] = 140789,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spark Elemental",
					["encounterID"] = 2145,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Jabboline",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zøey",
					["npcID"] = 0,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[3110] = {
					["npcID"] = 416,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2145,
				},
				[781] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Touchmeall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Venge",
					["npcID"] = 0,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[85288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[256742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kythia-Hellfire",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[19483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[277441] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hexthralled Crossbowman",
					["npcID"] = 138245,
				},
				[115098] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[273348] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[190984] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[274373] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Imprisoned Pterrordax",
					["npcID"] = 129759,
				},
				[277956] = {
					["source"] = "Chardonnáy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bittertide Spineclaw",
					["npcID"] = 131673,
				},
				[256745] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kythia-Hellfire",
					["npcID"] = 0,
				},
				[274376] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenie",
					["npcID"] = 0,
				},
				[274377] = {
					["type"] = "BUFF",
					["source"] = "Scrimshaw Underboss",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134840,
				},
				[228600] = {
					["type"] = "DEBUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mouseaholic-Silvermoon",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[287174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monstrous Shadefeather",
					["npcID"] = 145060,
				},
				[277451] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Venture Surveyor",
					["npcID"] = 139807,
				},
				[6770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[261866] = {
					["source"] = "Scrimshaw Footpad",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134838,
				},
				[243955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orastriosa",
					["npcID"] = 0,
				},
				[273359] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[232698] = {
					["source"] = "Syleesia",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261612] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithless Auditor",
					["npcID"] = 134560,
				},
				[51490] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Icecracker",
					["npcID"] = 140982,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[273365] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[263642] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[32182] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[132653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fenclaw Leaper",
					["npcID"] = 136426,
				},
				[264667] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klarino",
					["npcID"] = 99481,
				},
				[265179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gazlowe",
					["npcID"] = 134997,
				},
				[224001] = {
					["source"] = "Justhaze",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Doratrap-DunModr",
					["encounterID"] = 2145,
				},
				[256754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Matzulanu-Outland",
					["npcID"] = 0,
				},
				[278999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Souji-Madmortem",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Stasimus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[255220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Troll Corruptor",
					["npcID"] = 136296,
				},
				[204301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[107428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bagge",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[256756] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Matzulanu-Outland",
					["npcID"] = 0,
				},
				[250871] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[279515] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Auryck",
					["npcID"] = 0,
				},
				[288215] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Necromancer Conjurer",
					["npcID"] = 146833,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deamonsvin",
					["npcID"] = 0,
				},
				[275936] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271332] = {
					["source"] = "Lil' Friend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143647,
				},
				[280544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khaotik-Archimonde",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271333] = {
					["source"] = "Lil' Friend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143647,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tjola",
					["npcID"] = 0,
				},
				[101545] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[275940] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frostbore Worm",
					["npcID"] = 140984,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amani Battle Bear",
					["npcID"] = 130257,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[283106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[274919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[188443] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арбузичка-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[101546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[34477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[277480] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Mystic",
					["npcID"] = 138887,
				},
				[34861] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[277481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Vrykul",
					["npcID"] = 138820,
				},
				[250878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaylessa",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Qaderiko",
					["npcID"] = 0,
				},
				[277483] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Mystic",
					["npcID"] = 138887,
				},
				[265202] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[255741] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithless Defender",
					["npcID"] = 128682,
				},
				[980] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[100780] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[277486] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dargulf the Spirit-Seeker",
					["npcID"] = 138890,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frosty",
					["npcID"] = 32517,
				},
				[197916] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47528] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[265720] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bristlethorn Broodqueen",
					["npcID"] = 134947,
				},
				[115750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[215572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[185123] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[8042] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Итсоня-Гордунни",
					["npcID"] = 0,
				},
				[265723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ironweb Spinner",
					["npcID"] = 134894,
				},
				[257537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dalji-Blackmoore",
					["encounterID"] = 2145,
				},
				[265724] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bristlethorn Broodqueen",
					["npcID"] = 134947,
				},
				[227344] = {
					["type"] = "BUFF",
					["source"] = "Aæa",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277495] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Horvuld Oceanscythe",
					["npcID"] = 138831,
				},
				[275960] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bonescale Worm",
					["npcID"] = 140989,
				},
				[1022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Horvuld Oceanscythe",
					["npcID"] = 138831,
				},
				[188196] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Dvorzak-Vek'nilash",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[272380] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Merger Specialist Huzzle",
					["npcID"] = 139814,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cucuy",
					["npcID"] = 0,
				},
				[49576] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[186406] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[277499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodwake Mystic",
					["npcID"] = 138887,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 1860,
				},
				[272382] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankylodon Bull",
					["npcID"] = 123093,
				},
				[1064] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[100784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[2139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Doratrap-DunModr",
					["encounterID"] = 2145,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[277505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Warbringer",
					["npcID"] = 138818,
				},
				[265735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trapdoor Ambusher",
					["npcID"] = 134915,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Mystjanna-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[1122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[81340] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[203812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Femaledevil",
					["npcID"] = 0,
				},
				[85690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Swifttail Courser",
					["npcID"] = 145035,
				},
				[271371] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Enslaved Rock Elemental",
					["npcID"] = 146859,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corsi",
					["npcID"] = 0,
				},
				[73920] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[1160] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[262161] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[280073] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[85691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Swifttail Scavenger",
					["npcID"] = 145026,
				},
				[263187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blood Crawg",
					["npcID"] = 128005,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[233496] = {
					["type"] = "DEBUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[199721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Alair-Frostmane",
					["npcID"] = 0,
				},
				[233497] = {
					["type"] = "DEBUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Feral Ravasaur",
					["npcID"] = 131560,
				},
				[85948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[233498] = {
					["type"] = "DEBUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Assylum-Silvermoon",
					["npcID"] = 0,
				},
				[33395] = {
					["npcID"] = 78116,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["encounterID"] = 2145,
				},
				[207400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rorku",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Арбузичка-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[48108] = {
					["source"] = "Stasimus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wapzú",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[266779] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[273432] = {
					["type"] = "BUFF",
					["source"] = "Minion of Zul",
					["npcID"] = 139185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[204843] = {
					["type"] = "DEBUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[274968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mechanical Guardhound",
					["npcID"] = 139805,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eldraen",
					["npcID"] = 0,
				},
				[261648] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Sena",
					["npcID"] = 130872,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[33076] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[285719] = {
					["source"] = "Evanita",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197937] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[285721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Miniteddy-Magtheridon",
					["npcID"] = 0,
				},
				[2643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[204079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[5308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[1330] = {
					["type"] = "DEBUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[58984] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[193333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khaotik-Archimonde",
					["npcID"] = 0,
				},
				[268836] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[31707] = {
					["npcID"] = 78116,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["encounterID"] = 2145,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[273955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Souji-Madmortem",
					["npcID"] = 0,
				},
				[272420] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crawg Rider",
					["npcID"] = 128267,
				},
				[289308] = {
					["type"] = "DEBUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261653] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arachnobomb 2.0",
					["npcID"] = 133004,
				},
				[273956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithless Auditor",
					["npcID"] = 134560,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[30108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[272934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[265770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zandalari Bonebreaker",
					["npcID"] = 135159,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[187707] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[191034] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[290337] = {
					["type"] = "BUFF",
					["source"] = "Sánsá-Frostmane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266285] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonebound Rockmaw",
					["npcID"] = 139461,
				},
				[187708] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[204596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arutemia",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bugmeudie",
					["npcID"] = 0,
				},
				[266288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mudsnout Thornback",
					["npcID"] = 140094,
				},
				[277035] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kvaldir Berserker",
					["npcID"] = 138643,
				},
				[16739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
				},
				[277037] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Risen Hound",
					["npcID"] = 138659,
				},
				[260635] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Queen Tzxi'kik",
					["npcID"] = 128974,
				},
				[36213] = {
					["npcID"] = 61056,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Earth Elemental",
					["encounterID"] = 2145,
				},
				[265780] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trapdoor Hunter",
					["npcID"] = 134916,
				},
				[277039] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hosvir of the Rotting Hull",
					["npcID"] = 138653,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[277040] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hjana Fogbringer",
					["npcID"] = 138647,
				},
				[277041] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kvaldir Mistcaller",
					["npcID"] = 138646,
				},
				[263224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warmother Gutter",
					["npcID"] = 136303,
				},
				[288300] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konrad the Enslaver",
					["npcID"] = 146852,
				},
				[195901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Framet",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frenic",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276020] = {
					["type"] = "DEBUFF",
					["source"] = "Minion of Zul",
					["npcID"] = 139185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skiferpala",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Farmerbobby",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278070] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[77130] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[273977] = {
					["type"] = "DEBUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[212792] = {
					["type"] = "DEBUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Swicharoo",
					["npcID"] = 0,
				},
				[118455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[260643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[212283] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ukiora-Silvermoon",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[101568] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[59052] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271938] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nest",
					["npcID"] = 138172,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Calensia",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irontide Mastiff",
					["npcID"] = 135773,
				},
				[118968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 134936,
				},
				[277569] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Horvuld Oceanscythe",
					["npcID"] = 138831,
				},
				[278081] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[275011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Snowfur Alpha",
					["npcID"] = 140292,
				},
				[273988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[264777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zirid",
					["npcID"] = 0,
				},
				[275013] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Snowfur Alpha",
					["npcID"] = 140292,
				},
				[44212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gasaiiyuno-Garrosh",
					["npcID"] = 0,
				},
				[6572] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[277062] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hjana Fogbringer",
					["npcID"] = 138647,
				},
				[277574] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captured Zandalari",
					["npcID"] = 137766,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[277575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Wayfinder",
					["npcID"] = 138823,
				},
				[248622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[261928] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirokar",
					["npcID"] = 136338,
				},
				[268877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[205636] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[51505] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arwenna-Tichondrius",
					["npcID"] = 0,
				},
				[62124] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[207684] = {
					["source"] = "Твинквин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[277069] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Witch Doctor Unbugu",
					["npcID"] = 130303,
				},
				[1706] = {
					["source"] = "Pantad-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lukey",
					["npcID"] = 0,
				},
				[277070] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Risaz",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenryr",
					["npcID"] = 119990,
				},
				[203848] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Failsong",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Sammexx-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[205385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Forceed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dargulf the Spirit-Seeker",
					["npcID"] = 138890,
				},
				[280149] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ukiora-Silvermoon",
					["npcID"] = 0,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klarino",
					["npcID"] = 99481,
				},
				[212552] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirokar",
					["npcID"] = 136338,
				},
				[258098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Witch Doctor Unbugu",
					["npcID"] = 130303,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[115008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[205644] = {
					["type"] = "DEBUFF",
					["source"] = "Treant",
					["npcID"] = 103822,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[78674] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[258099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Witch Doctor Unbugu",
					["npcID"] = 130303,
				},
				[5221] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[270431] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crag Rager",
					["npcID"] = 135962,
				},
				[1822] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Korey-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[278108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brekkstein",
					["npcID"] = 0,
				},
				[48181] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[225604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenie",
					["npcID"] = 0,
				},
				[5277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[257077] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[278110] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brekkstein",
					["npcID"] = 0,
				},
				[34428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[116] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dalji-Blackmoore",
					["encounterID"] = 2145,
				},
				[1856] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[265319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Headhunter Lee'za",
					["npcID"] = 134637,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[61999] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[66906] = {
					["source"] = "Selendrís-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[265323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Headhunter Lee'za",
					["npcID"] = 134637,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[121536] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[204883] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[113860] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aéwynn",
					["npcID"] = 0,
				},
				[120] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[261688] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Sena",
					["npcID"] = 130872,
				},
				[270444] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gemshard Colossus",
					["npcID"] = 140777,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[211793] = {
					["type"] = "DEBUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[258107] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Witch Doctor Unbugu",
					["npcID"] = 130303,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259387] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[269936] = {
					["type"] = "DEBUFF",
					["source"] = "Minion of Zul",
					["npcID"] = 139185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[240197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259388] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261947] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[117828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tjola",
					["npcID"] = 0,
				},
				[287338] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Craghoof Rockhorn",
					["npcID"] = 140434,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275569] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Craghoof Goat",
					["npcID"] = 140431,
				},
				[49143] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[246852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[279153] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[196189] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bonebeak Vulture",
					["npcID"] = 126909,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konzazt",
					["npcID"] = 1860,
				},
				[273525] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Muskflank Yak",
					["npcID"] = 140442,
				},
				[278133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fizzybubbleh",
					["npcID"] = 0,
				},
				[270457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Goldenvein",
					["npcID"] = 140769,
				},
				[284275] = {
					["source"] = "Feamy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265341] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Headhunter Lee'za",
					["npcID"] = 134637,
				},
				[263806] = {
					["type"] = "BUFF",
					["source"] = "Арбузичка-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[270459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qor-Xin the Earth-Caller",
					["npcID"] = 139474,
				},
				[120517] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[258114] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[254276] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[191587] = {
					["type"] = "DEBUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liandras",
					["npcID"] = 0,
				},
				[261697] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Sena",
					["npcID"] = 130872,
				},
				[105421] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Kounamouta-Bloodscalp",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[256690] = {
					["source"] = "Mahrras-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255074] = {
					["source"] = "Yungharambe-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255040] = {
					["source"] = "Yungharambe-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116680] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Animated Azershard",
					["npcID"] = 147202,
				},
				[133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[223829] = {
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199545] = {
					["type"] = "BUFF",
					["source"] = "Mahrras-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pilgaardbozz",
					["npcID"] = 0,
				},
				[118000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[54710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nelle",
					["npcID"] = 0,
				},
				[273310] = {
					["type"] = "BUFF",
					["source"] = "Sammexx-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[287081] = {
					["type"] = "BUFF",
					["source"] = "Pixieknight-Arathor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256691] = {
					["source"] = "Shias-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278143] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kordas-Dalaran",
					["npcID"] = 0,
				},
				[136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[264968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[278144] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258118] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[256694] = {
					["source"] = "Shias-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106830] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[279945] = {
					["source"] = "Don Adams",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138603,
				},
				[279946] = {
					["source"] = "Don Adams",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138603,
				},
				[274254] = {
					["source"] = "Scrimshaw Underboss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134840,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Dvorzak-Vek'nilash",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276141] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[208693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Symbiosis-Ragnaros",
					["npcID"] = 0,
				},
				[139] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[2948] = {
					["source"] = "Dvorzak-Vek'nilash",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275931] = {
					["type"] = "DEBUFF",
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118345] = {
					["npcID"] = 61056,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Earth Elemental",
					["encounterID"] = 2145,
				},
				[8936] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[285496] = {
					["type"] = "BUFF",
					["source"] = "Dvorzak-Vek'nilash",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122] = {
					["type"] = "DEBUFF",
					["source"] = "Dvorzak-Vek'nilash",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["type"] = "BUFF",
					["source"] = "Caroen-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279684] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[254920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Venomscale Hydra",
					["npcID"] = 132740,
				},
				[73630] = {
					["type"] = "BUFF",
					["source"] = "Mahrras-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252216] = {
					["type"] = "BUFF",
					["source"] = "Bewèar-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[14030] = {
					["type"] = "DEBUFF",
					["source"] = "Constable Astley",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142371,
				},
				[280709] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257408] = {
					["source"] = "Jabboline",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203720] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[258889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithless Skycaller",
					["npcID"] = 128665,
				},
				[55095] = {
					["type"] = "DEBUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[270987] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disciple of Nalorakk",
					["npcID"] = 120949,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vexite",
					["npcID"] = 0,
				},
				[276192] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[277060] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sylveria Reefcaller",
					["npcID"] = 138651,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121571,
				},
				[275594] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodfur the Gorer",
					["npcID"] = 140440,
				},
				[179057] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275083] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sentinel Aeolyn",
					["npcID"] = 140303,
				},
				[191920] = {
					["source"] = "Chardonnáy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47788] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[280713] = {
					["source"] = "Demonfoxx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190356] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[277643] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Uvuld the Forseer",
					["npcID"] = 138889,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[73313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Púñkgøðx-Outland",
					["npcID"] = 0,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Neiva",
					["npcID"] = 0,
				},
				[275597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Craghoof Rockhorn",
					["npcID"] = 140434,
				},
				[278156] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[174453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Invasive Razorwing",
					["npcID"] = 131558,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[79140] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eminémn",
					["npcID"] = 0,
				},
				[228354] = {
					["type"] = "DEBUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[213771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corsi",
					["npcID"] = 0,
				},
				[285835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["npcID"] = 147188,
				},
				[272018] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dalji-Blackmoore",
					["encounterID"] = 2145,
				},
				[197995] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[285836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["npcID"] = 147188,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[190831] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ripshadow",
					["npcID"] = 0,
				},
				[285837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["npcID"] = 147188,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[257103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xeuto",
					["npcID"] = 0,
				},
				[270997] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gut-Gut the Glutton",
					["npcID"] = 128674,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Арбузичка-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[124274] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[256592] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[2061] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[269999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irontide Bruiser",
					["npcID"] = 135777,
				},
				[883] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[257616] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ellionn",
					["npcID"] = 0,
				},
				[79968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Purified Protector",
					["npcID"] = 148646,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Forceed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61882] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[262577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Matriarch Snapjaw",
					["npcID"] = 123655,
				},
				[32546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[370] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[277043] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hosvir of the Rotting Hull",
					["npcID"] = 138653,
				},
				[59548] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[98008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[257618] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[273714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[285630] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[276140] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Muskflank Charger",
					["npcID"] = 140443,
				},
				[263840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenryr",
					["npcID"] = 119990,
				},
				[264352] = {
					["source"] = "Sinestrax-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275611] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Craghoof Leaper",
					["npcID"] = 140432,
				},
				[265888] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[279194] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276124] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275341] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Coilfang",
					["npcID"] = 140334,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bladeîra",
					["npcID"] = 0,
				},
				[261714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[276125] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[262308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Troll Berserker",
					["npcID"] = 136293,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mollietje",
					["npcID"] = 0,
				},
				[276126] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jazmyn",
					["npcID"] = 0,
				},
				[257067] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[123725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[276127] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[209261] = {
					["type"] = "DEBUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276128] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[273350] = {
					["npcID"] = 139057,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nazmani Bloodhexer",
					["encounterID"] = 2145,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Life-Tender Olvarius",
					["npcID"] = 139218,
				},
				[703] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[285853] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["npcID"] = 147225,
				},
				[276130] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[113858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[274119] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[285854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["npcID"] = 147225,
				},
				[276131] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[288210] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Necromancer Conjurer",
					["npcID"] = 146833,
				},
				[256600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[276132] = {
					["type"] = "DEBUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[172] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[285856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azerite Extractor",
					["npcID"] = 147225,
				},
				[278180] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dryad Grove-Tender",
					["npcID"] = 139224,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[279204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[77575] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[256464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithless Raider",
					["npcID"] = 134561,
				},
				[275340] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Screecher",
					["npcID"] = 140335,
				},
				[259277] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["npcID"] = 50159,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[277611] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ingel the Cunning",
					["npcID"] = 138829,
				},
				[278182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Tender",
					["npcID"] = 139202,
				},
				[277479] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Marauder",
					["npcID"] = 138819,
				},
				[277038] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Horvuld Oceanscythe",
					["npcID"] = 138831,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[278183] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Verdant Tender",
					["npcID"] = 139202,
				},
				[277123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodwake Wayfinder",
					["npcID"] = 138823,
				},
				[273794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arwenna-Tichondrius",
					["npcID"] = 0,
				},
				[265390] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gazlowe",
					["npcID"] = 134997,
				},
				[269996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Brigand",
					["npcID"] = 135771,
				},
				[22568] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[116947] = {
					["type"] = "DEBUFF",
					["source"] = "Earthgrab Totem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 60561,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["npcID"] = 3527,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[278185] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Treant",
					["npcID"] = 139203,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Éldariel",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[279152] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[278186] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260249] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[256058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Leatherwing Hunter",
					["npcID"] = 144948,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[290469] = {
					["source"] = "Genndrick",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273871] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ankylodon Bull",
					["npcID"] = 123093,
				},
				[115313] = {
					["source"] = "Forceed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[110645] = {
					["source"] = "Powey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Verdant Treant",
					["npcID"] = 139203,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[201336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sayzon",
					["npcID"] = 0,
				},
				[258908] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithless Sandscout",
					["npcID"] = 129008,
				},
				[255070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diemut",
					["npcID"] = 0,
				},
				[256099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Weaver",
					["npcID"] = 127779,
				},
				[188031] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Riveraz",
					["npcID"] = 0,
				},
				[276143] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[162248] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coati",
					["npcID"] = 131704,
				},
				[277167] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petelka",
					["npcID"] = 0,
				},
				[270515] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unleashed Azerite",
					["npcID"] = 131311,
				},
				[274289] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[253595] = {
					["source"] = "Dusman",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274098] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[348] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tjola",
					["npcID"] = 0,
				},
				[270959] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistscorn Earthbinder",
					["npcID"] = 146864,
				},
				[256607] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loa-Gutter Impaler",
					["npcID"] = 128371,
				},
				[278193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Many-Blooms",
					["npcID"] = 139217,
				},
				[255072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diemut",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[188033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xatkuli-Silvermoon",
					["npcID"] = 0,
				},
				[178702] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bittertide Brinetail",
					["npcID"] = 131674,
				},
				[286894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vitrified Azerite",
					["npcID"] = 149341,
				},
				[204021] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[278192] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Many-Blooms",
					["npcID"] = 139217,
				},
				[257834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[266129] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gargantuan Venomscale",
					["npcID"] = 131410,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[188034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vexite",
					["npcID"] = 0,
				},
				[285472] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[279135] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "John J. Keeshan",
					["npcID"] = 140288,
				},
				[119381] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[264892] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkspeaker Jo'la",
					["npcID"] = 134760,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ellionn",
					["npcID"] = 0,
				},
				[278198] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Many-Blooms",
					["npcID"] = 139217,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[205179] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brekkstein",
					["npcID"] = 0,
				},
				[157331] = {
					["npcID"] = 77942,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["encounterID"] = 2145,
				},
				[11426] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[258146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[254901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loa-Gutter Impaler",
					["npcID"] = 128371,
				},
				[35079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[271652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shandris Feathermoon",
					["npcID"] = 140302,
				},
				[204157] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[279737] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pilgaardbozz",
					["npcID"] = 0,
				},
				[286902] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[277179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lekkasje",
					["npcID"] = 0,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258915] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nazmani Skitterer",
					["npcID"] = 140830,
				},
				[32375] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[261474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sirokar",
					["npcID"] = 136338,
				},
				[256451] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lilscorchy",
					["npcID"] = 0,
				},
				[278049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Spitter",
					["npcID"] = 139199,
				},
				[251838] = {
					["source"] = "Moodieblues",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[53209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[278178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sister Anana",
					["npcID"] = 139226,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[185736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiwwué",
					["npcID"] = 0,
				},
				[261731] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[256688] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[265311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Headhunter Lee'za",
					["npcID"] = 134637,
				},
				[279742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vorthoya-Hellscream",
					["npcID"] = 0,
				},
				[173959] = {
					["source"] = "Silentspirit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Droplet",
					["npcID"] = 130299,
				},
				[264902] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkspeaker Jo'la",
					["npcID"] = 134760,
				},
				[1329] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[256473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Firesting Dominator",
					["npcID"] = 146187,
				},
				[288455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[277185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[281791] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[254824] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275571] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Senior Producer Gixi",
					["npcID"] = 139813,
				},
				[277186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Charged Sentinel",
					["npcID"] = 136550,
				},
				[281792] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kastemagi",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pilgaardbozz",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kintali",
					["npcID"] = 0,
				},
				[277044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hosvir of the Rotting Hull",
					["npcID"] = 138653,
				},
				[203650] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[286911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[278173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evergrove Keeper",
					["npcID"] = 139225,
				},
				[281794] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[198533] = {
					["source"] = "Jade Serpent Statue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[270264] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Baron Blazehollow",
					["npcID"] = 135929,
				},
				[29722] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[281795] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[262349] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Witch Doctor Unbugu",
					["npcID"] = 130303,
				},
				[84714] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[196718] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[280773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brekkstein",
					["npcID"] = 0,
				},
				[195949] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Squírrél-Dragonblight",
					["npcID"] = 0,
				},
				[276880] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hexbound Familiar",
					["npcID"] = 137132,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[124503] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[233490] = {
					["type"] = "DEBUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[1044] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[216695] = {
					["type"] = "BUFF",
					["source"] = "Фаливия-Азурегос",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258154] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[285381] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[43265] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thelysea",
					["npcID"] = 0,
				},
				[280776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[16589] = {
					["source"] = "Forceed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[255852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Starving Darkmaw",
					["npcID"] = 137461,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[274080] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gyrum the Virulent",
					["npcID"] = 146869,
				},
				[255858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Starving Darkmaw",
					["npcID"] = 137461,
				},
				[61295] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[244787] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Monstrous Spineclaw",
					["npcID"] = 134789,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[147362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arutemia",
					["npcID"] = 0,
				},
				[272441] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinegraze Courser",
					["npcID"] = 140086,
				},
				[111400] = {
					["source"] = "Vyanis-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270419] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qor-Xin the Earth-Caller",
					["npcID"] = 139474,
				},
				[261739] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[270334] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinegraze Courser",
					["npcID"] = 140086,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[273889] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[276193] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276189] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[194153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Touloumpas",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiiktaak",
					["npcID"] = 0,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vanyë",
					["npcID"] = 0,
				},
				[265431] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[224127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
				},
				[228477] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[62061] = {
					["source"] = "Chardonnáy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Krixiqt",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["type"] = "DEBUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cucuy",
					["npcID"] = 0,
				},
				[106785] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[225919] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[124506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[262875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rune Scribe Lusaris",
					["npcID"] = 133734,
				},
				[278931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[256715] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Crawg",
					["npcID"] = 128005,
				},
				[280787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[256369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[80240] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[32390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arwenna-Tichondrius",
					["npcID"] = 0,
				},
				[280788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcverde",
					["npcID"] = 0,
				},
				[52610] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261743] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[44614] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dalji-Blackmoore",
					["encounterID"] = 2145,
				},
				[24394] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shockzilla",
					["npcID"] = 17280,
				},
				[225921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[278231] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konzazt",
					["npcID"] = 1860,
				},
				[119582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[34827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bittertide Brinetail",
					["npcID"] = 131674,
				},
				[264415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drakaej",
					["npcID"] = 0,
				},
				[2060] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bomzilz-Silvermoon",
					["encounterID"] = 2145,
				},
				[265427] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Astralite Visara",
					["npcID"] = 133738,
				},
				[205708] = {
					["type"] = "DEBUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[33917] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mathi-Blackmoore",
					["encounterID"] = 2145,
				},
				[280070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[157348] = {
					["type"] = "BUFF",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276187] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[266464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[275038] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Snowfur Snarler",
					["npcID"] = 140293,
				},
				[270657] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[276188] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Isus-Vek'nilash",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[280608] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alkali",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[262152] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Headhunter Lee'za",
					["npcID"] = 134637,
				},
				[45181] = {
					["source"] = "Sanguíne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Canopy Stalker",
					["npcID"] = 144949,
				},
				[276190] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[201872] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless Mindlasher",
					["npcID"] = 138561,
				},
				[160331] = {
					["source"] = "Smooshpuff",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aéwynn",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[256374] = {
					["type"] = "BUFF",
					["source"] = "Doratrap-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[23881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[280286] = {
					["type"] = "DEBUFF",
					["source"] = "Арбузичка-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Entrophius",
					["npcID"] = 0,
				},
				[31687] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[6262] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[8004] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nightfurry-Karazhan",
					["npcID"] = 0,
				},
				[213644] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[276194] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257738] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[210643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[259491] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diviná",
					["encounterID"] = 2145,
				},
				[87024] = {
					["source"] = "Stasimus",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275927] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Icecracker",
					["npcID"] = 140982,
				},
				[262890] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rune Scribe Lusaris",
					["npcID"] = 133734,
				},
				[288371] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[207317] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[257144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Captain Greenbelly",
					["npcID"] = 134332,
				},
				[69369] = {
					["type"] = "BUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[88625] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[247677] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Insannity-Stormscale",
					["npcID"] = 0,
				},
				[202188] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[202770] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[194249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[80576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ku'shif the Cruel",
					["npcID"] = 137773,
				},
				[8680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[34189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trapdoor Spider",
					["npcID"] = 134914,
				},
				[126664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vyndris",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiwwué",
					["npcID"] = 0,
				},
				[285811] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[248446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 126205,
				},
				[185245] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[154796] = {
					["source"] = "Bennyboyy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259449] = {
					["source"] = "Nienorr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anerinn",
					["npcID"] = 0,
				},
				[244882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Giant Claw Tentacle",
					["npcID"] = 138579,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tiwwué",
					["npcID"] = 0,
				},
				[20589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[278249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pilgaardbozz",
					["npcID"] = 0,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[16591] = {
					["source"] = "Forceed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276138] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[89798] = {
					["source"] = "Lord Victor Nefarius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49799,
				},
				[252359] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chaerea",
					["npcID"] = 0,
				},
				[238213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alkali",
					["npcID"] = 0,
				},
				[276204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Cruzzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285720] = {
					["source"] = "Bigblackbear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275973] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Icecracker",
					["npcID"] = 140982,
				},
				[276205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[225602] = {
					["source"] = "Loyloy-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Арбузичка-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259452] = {
					["source"] = "Auurah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zøey",
					["npcID"] = 0,
				},
				[275347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightscale Coilfang",
					["npcID"] = 140334,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lëenore",
					["npcID"] = 0,
				},
				[118] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Doratrap-DunModr",
					["encounterID"] = 2145,
				},
				[276208] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[279302] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[202137] = {
					["source"] = "Твинквин-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raddydk",
					["npcID"] = 0,
				},
				[124007] = {
					["npcID"] = 63508,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xuen",
					["encounterID"] = 2145,
				},
				[16953] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creedruid-Frostmane",
					["encounterID"] = 2145,
				},
				[277233] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forgotten One",
					["npcID"] = 138559,
				},
				[51124] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Iveus-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[276211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[257161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Defiant Scrapper",
					["npcID"] = 135132,
				},
				[27576] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[250499] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Qor-Xin the Earth-Caller",
					["npcID"] = 139474,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[277156] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Abyss Idol",
					["npcID"] = 141782,
				},
				[262907] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[286976] = {
					["type"] = "BUFF",
					["source"] = "Hunkf",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[105771] = {
					["type"] = "DEBUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[198813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[278179] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sister Anana",
					["npcID"] = 139226,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[115175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kamuii",
					["npcID"] = 0,
				},
				[272646] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Crawg Rider",
					["npcID"] = 128267,
				},
				[259456] = {
					["source"] = "Knáds-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225605] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wocceri-Silvermoon",
					["npcID"] = 0,
				},
				[274168] = {
					["npcID"] = 138967,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zul",
					["encounterID"] = 2145,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[194384] = {
					["source"] = "Pantad-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Docile Thrashneck",
					["npcID"] = 126685,
				},
				[49184] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liandras",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scianano",
					["npcID"] = 0,
				},
				[277250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Forgotten One",
					["npcID"] = 138559,
				},
				[276217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ayame",
					["npcID"] = 133980,
				},
				[51271] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Budmin",
					["npcID"] = 0,
				},
				[275993] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frostbore Burster",
					["npcID"] = 140983,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[279572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[163505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[285500] = {
					["type"] = "BUFF",
					["source"] = "Сланьюша-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[278086] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vanyë",
					["npcID"] = 0,
				},
				[245388] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[278267] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[196770] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[277245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Corruption",
					["npcID"] = 138557,
				},
				[27243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[153595] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Myrsin",
					["encounterID"] = 2145,
				},
				[250505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shathhoth the Punisher",
					["npcID"] = 138567,
				},
				[261507] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[1079] = {
					["type"] = "DEBUFF",
					["source"] = "Creedruid-Frostmane",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[6343] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[51460] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[63106] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ifrìd-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[270595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rapacious Fathomjaw",
					["npcID"] = 129305,
				},
				[271107] = {
					["type"] = "BUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Freecok",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ysyvya",
					["npcID"] = 0,
				},
				[116841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pilgaardbozz",
					["npcID"] = 0,
				},
				[262920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[278954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анбеливэбл-Гордунни",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Athinira",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258183] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[213405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kozzo-ChamberofAspects",
					["npcID"] = 0,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slamzy",
					["npcID"] = 0,
				},
				[198304] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Dalji-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Souji-Madmortem",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[47541] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[258184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Berserker Zar'ri",
					["npcID"] = 130302,
				},
				[277623] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[255114] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[280071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[49020] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bävermatsqt",
					["encounterID"] = 2145,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[262926] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[207778] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[244880] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinegraze Fawnmother",
					["npcID"] = 140093,
				},
				[279303] = {
					["type"] = "DEBUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[257674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneaky Pete",
					["npcID"] = 129364,
				},
				[286900] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[259455] = {
					["source"] = "Ullivieri",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadowfiend",
					["npcID"] = 67235,
				},
				[263346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nefarin",
					["npcID"] = 0,
				},
				[212641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[202138] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[270606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tidal Surger",
					["npcID"] = 119724,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[256014] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loa-Gutter Scavenger",
					["npcID"] = 127915,
				},
				[60229] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[262931] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[279819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[277045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hosvir of the Rotting Hull",
					["npcID"] = 138653,
				},
				[116844] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rabbit-BurningBlade",
					["encounterID"] = 2145,
				},
				[262932] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[255647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[23214] = {
					["type"] = "BUFF",
					["source"] = "Ajerax",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253327] = {
					["source"] = "Peanut-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Siroccan",
					["npcID"] = 135006,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cucuy",
					["npcID"] = 0,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["npcID"] = 63508,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[267028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[1066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kaylessa",
					["npcID"] = 0,
				},
				[46968] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[184092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[261516] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[198590] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arwenna-Tichondrius",
					["npcID"] = 0,
				},
				[186289] = {
					["type"] = "BUFF",
					["source"] = "Diviná",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sordir",
					["npcID"] = 0,
				},
				[31850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[274195] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[266286] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vicious Scarhide",
					["npcID"] = 140098,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[262799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Astralite Visara",
					["npcID"] = 133738,
				},
				[278290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Buzz Crankchug",
					["npcID"] = 138256,
				},
				[268567] = {
					["type"] = "BUFF",
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tàkar-Aegwynn",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Quant-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saamael",
					["npcID"] = 0,
				},
				[279827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Father Timothy",
					["npcID"] = 143581,
				},
				[255366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Interrogator Xi'pe",
					["npcID"] = 135156,
				},
				[196782] = {
					["type"] = "DEBUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[30283] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[279828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priestess Lylliana",
					["npcID"] = 143582,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryume",
					["npcID"] = 0,
				},
				[272664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mistscorn Ravager",
					["npcID"] = 146863,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Craghoof Rockhorn",
					["npcID"] = 140434,
				},
				[275998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless One",
					["npcID"] = 138558,
				},
				[278806] = {
					["type"] = "BUFF",
					["source"] = "Rabbit-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[270513] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Geoactive Azershard",
					["npcID"] = 147933,
				},
				[270461] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gemshard Colossus",
					["npcID"] = 140777,
				},
				[14914] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isus-Vek'nilash",
					["encounterID"] = 2145,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Touloumpas",
					["npcID"] = 0,
				},
				[2565] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[280855] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Дисонэ-Гордунни",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[166302] = {
					["source"] = "Blingtron 5000",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77789,
				},
				[256915] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coven Hexcaller",
					["npcID"] = 137131,
				},
				[22703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275140] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gemshard Colossus",
					["npcID"] = 140777,
				},
				[51723] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shizum-Silvermoon",
					["encounterID"] = 2145,
				},
				[256148] = {
					["type"] = "DEBUFF",
					["source"] = "Shizum-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[205448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Mathi-Blackmoore",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[244808] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coralback Surfcrawler",
					["npcID"] = 126424,
				},
				[17962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethmorag-Madmortem",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ukiora-Silvermoon",
					["npcID"] = 0,
				},
				[270246] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unleashed Inferno",
					["npcID"] = 135892,
				},
				[198577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zandalari Drudge",
					["npcID"] = 135865,
				},
				[278812] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[275742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadfang Viper",
					["npcID"] = 140690,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[2649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Frosty",
					["npcID"] = 32517,
				},
				[256661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[275743] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Giant Dreadfang",
					["npcID"] = 140691,
				},
				[278177] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Life-Tender Olvarius",
					["npcID"] = 139218,
				},
				[257222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Golly",
					["npcID"] = 129719,
				},
				[205231] = {
					["npcID"] = 103673,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkglare",
					["encounterID"] = 2145,
				},
				[275744] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Giant Dreadfang",
					["npcID"] = 140691,
				},
				[228260] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[278175] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Life-Tender Olvarius",
					["npcID"] = 139218,
				},
				[270540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rune Scribe Lusaris",
					["npcID"] = 133734,
				},
				[275745] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadfang Snake",
					["npcID"] = 132835,
				},
				[265721] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kil'tilac",
					["npcID"] = 134936,
				},
				[275040] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nok-arak",
					["npcID"] = 140297,
				},
				[278052] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Flytrap",
					["npcID"] = 139200,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harcu",
					["npcID"] = 0,
				},
				[277439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Safety Inspection Bot",
					["npcID"] = 131431,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fenryr",
					["npcID"] = 119990,
				},
				[161222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coati",
					["npcID"] = 131704,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Myrsin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[275037] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Snowfur Snarler",
					["npcID"] = 140293,
				},
				[277115] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Senior Producer Gixi",
					["npcID"] = 139813,
				},
				[289467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[275748] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodbore",
					["npcID"] = 140692,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["npcID"] = 69792,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[272678] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Assylum-Silvermoon",
					["npcID"] = 0,
				},
				[261526] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rock-It! Turret",
					["npcID"] = 132683,
				},
				[270438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Deepstone Crusher",
					["npcID"] = 135961,
				},
				[286907] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Azergem Crystalback",
					["npcID"] = 147938,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Risen Skulker",
					["npcID"] = 99541,
				},
				[256409] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saurolisk",
					["npcID"] = 123647,
				},
				[278056] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Lasher",
					["npcID"] = 139197,
				},
				[256446] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dorp",
					["npcID"] = 134333,
				},
				[280868] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[82691] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[247454] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Акелла-ЧерныйШрам",
					["encounterID"] = 2145,
				},
				[286862] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vitrified Azerite",
					["npcID"] = 149341,
				},
				[198838] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drekmoor-Sylvanas",
					["encounterID"] = 2145,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lunaminica",
					["npcID"] = 0,
				},
				[275752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Giant Dreadfang",
					["npcID"] = 140691,
				},
				[258371] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gritplate Crystaleye",
					["npcID"] = 130335,
				},
				[258215] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[258216] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Serpent Ward",
					["npcID"] = 130421,
				},
				[258221] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shadow Hunter Ju'loa",
					["npcID"] = 130301,
				},
				[266030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tjola",
					["npcID"] = 0,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[258390] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gritplate Gazer",
					["npcID"] = 130334,
				},
				[256053] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thirsting Bloodsucker",
					["npcID"] = 144944,
				},
				[355] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Etiene-Silvermoon",
					["encounterID"] = 2145,
				},
				[212566] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Palefur Devourer",
					["npcID"] = 144951,
				},
				[44535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[247456] = {
					["type"] = "BUFF",
					["source"] = "Акелла-ЧерныйШрам",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[157644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elektraz-Ragnaros",
					["npcID"] = 0,
				},
				[278826] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köllefornia-Lordaeron",
					["npcID"] = 0,
				},
				[262962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Astralite Visara",
					["npcID"] = 133738,
				},
				[276129] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Applecracker",
					["npcID"] = 0,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Zusil-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Drekmoor-Sylvanas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[259739] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Charged Sentinel",
					["npcID"] = 136550,
				},
				[270460] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Goldenvein",
					["npcID"] = 140769,
				},
				[276139] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[290467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fowler-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[264047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[264045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[527] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дисонэ-Гордунни",
					["encounterID"] = 2145,
				},
				[261531] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skaggit",
					["npcID"] = 130871,
				},
				[276136] = {
					["type"] = "BUFF",
					["source"] = "Bomzilz-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[275342] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brightscale Coilfang",
					["npcID"] = 140353,
				},
				[269994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Brigand",
					["npcID"] = 135771,
				},
				[234153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаливия-Азурегос",
					["encounterID"] = 2145,
				},
				[8122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Soonkyu",
					["npcID"] = 0,
				},
				[277105] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[161229] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coati",
					["npcID"] = 131704,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kertank-Silvermoon",
					["npcID"] = 0,
				},
				[261540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Heal Bot",
					["npcID"] = 132692,
				},
				[63560] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krixidk",
					["encounterID"] = 2145,
				},
				[277297] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Senior Producer Gixi",
					["npcID"] = 139813,
				},
				[261631] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lady Sena",
					["npcID"] = 130872,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixiqt",
					["npcID"] = 0,
				},
				[268288] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[276860] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gazlowe",
					["npcID"] = 134998,
				},
				[47568] = {
					["type"] = "BUFF",
					["source"] = "Bävermatsqt",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Winehouser-Sylvanas",
					["npcID"] = 0,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
				},
				[280187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hypehany",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[265725] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bristlethorn Spider",
					["npcID"] = 134941,
				},
				[187645] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Sabertusk",
					["npcID"] = 123135,
				},
				[255393] = {
					["source"] = "Animule-Kilrogg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Etiene-Silvermoon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[205351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bodhius",
					["npcID"] = 0,
				},
				[207289] = {
					["type"] = "BUFF",
					["source"] = "Krixidk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2145,
				},
				[267578] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Moonscythe Pelani",
					["npcID"] = 133733,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Löz",
					["npcID"] = 0,
				},
				[256034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Loa-Gutter Scavenger",
					["npcID"] = 127915,
				},
				[270705] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unstable Typhoon",
					["npcID"] = 130307,
				},
				[277920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Verdant Treant",
					["npcID"] = 139203,
				},
				[278326] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланьюша-Гордунни",
					["encounterID"] = 2145,
				},
				[8143] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hunkf",
					["encounterID"] = 2145,
				},
				[200025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ífëèlú-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kovamonka",
					["npcID"] = 0,
				},
				[236021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodfrenzyx-Thunderhorn",
					["npcID"] = 0,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "1",
				["nameplateMotionSpeed"] = "0.029999999329448",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "50.292678833008",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateOtherTopInset"] = "0.075",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["patch_version"] = 2,
			["aura_timer_text_size"] = 14.1371116638184,
			["hide_friendly_castbars"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.00229716300964,
				},
			},
			["target_shady_enabled"] = false,
			["aura_timer"] = false,
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
			["health_statusbar_texture"] = "Skullflower",
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
			["border_thickness"] = 1,
			["aura_grow_direction"] = 3,
			["auto_toggle_stacking"] = {
				["cities"] = true,
			},
			["first_run"] = true,
		},
		["Grim Batol"] = {
		},
	},
}
