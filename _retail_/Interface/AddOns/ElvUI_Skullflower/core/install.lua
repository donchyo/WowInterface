local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB

local CURRENT_PAGE = 0
local MAX_PAGE = 2
ElvUF_Player.Combat:SetAlpha(0)


L['LOGIN_MSG'] = "|cfffb4f4f<Skullflower's UI> |cffffffffType |cfffb4f4f/sf |cffffffffto access the menu or |cfffb4f4f/ec |cffffffffto access ElvUI options"

SLASH_SKULL1, SLASH_SKULL2, SLASH_SKULL3 = '/sf', '/skull', '/skullflower';
function SlashCmdList.SKULL(msg, editbox)
	CURRENT_PAGE = 0
	E:Install()
end

function E:GetColor(r, b, g, a)	
	return { r = r, b = b, g = g, a = a }
end

function E:SetupTheme(theme, noDisplayMsg)
	local classColor = RAID_CLASS_COLORS[E.myclass]
	InstallStepComplete.message = L["Interface Installed"]
	InstallStepComplete:Show()		
	E.private.theme = theme
	if not E.db.movers then E.db.movers = {}; end
		if theme == "SkullflowerUI" then

		----------[Frame Placement]----------
		--Bars
		E.db.movers["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,33"
		E.db.movers["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,66"
		E.db.movers["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,99"
		E.db.movers["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,132"
		E.db.movers["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,0,165"
		E.db.movers["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,0"
		E.db.movers["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-184,245"
		E.db.movers["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,959,172"
		E.db.movers["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-75,-234"
		E.db.movers["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30"
		E.db.movers["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,312"
		E.db.movers["ArtifactBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4"
		E.db.movers["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-33"
		E.db.movers["HonorBarMover"] = "TOP,ElvUIParent,TOP,0,-66"
		--General
		E.db.movers["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30"
		E.db.movers["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,30"
		E.db.movers["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,30"
		E.db.movers["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,207"
		E.db.movers["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30"
		E.db.movers["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,323"
		E.db.movers["LootFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-470,529"
		E.db.movers["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-155"
		E.db.movers["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-490"
		E.db.movers["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,150"
		E.db.movers["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-337"
		--Player
		E.db.movers["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,281"
		E.db.movers["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,267"
		E.db.movers["ComboBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,313"
		E.db.movers["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,313"
		E.db.movers["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,165"
		--Pet
		E.db.movers["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-231,205"
		E.db.movers["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-231,205"
		--Target/ToT
		E.db.movers["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,182,281"
		E.db.movers["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,182,267"
		E.db.movers["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,182,267"
		E.db.movers["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,232,205"
		E.db.movers["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,281"
		E.db.movers["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,281"
		--Group
		E.db.movers["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1075,230"
		E.db.movers["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,309,259"
		E.db.movers["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,30,375"
		E.db.movers["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-300"
		E.db.movers["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-340"
		E.db.movers["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-100"
		E.db.movers["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-297"
		E.db.movers["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-300"
		E.db.movers["AlertFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-450,530"
		--Minimap/Auras
		E.db.movers["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-30"
		E.db.movers["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,-31"
		E.db.movers["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-183,-151"
		--TotemBar
		if E.myclass == "SHAMAN" then
		E.db.movers["TotemBarMover"] = "BOTTOMElvUIParentBOTTOM-182308"
		else
		E.db.movers["TotemBarMover"] = "BOTTOMElvUIParentBOTTOM-182325"
		end

		----------[General]----------
		E.db.general.taintLog = false
		E.db.general.stickyFrames = true
		E.db.general.loginmessage = true
		E.db.general.interruptAnnounce = "NONE"
		E.db.general.autoRepair = "GUILD"
		E.db.general.autoRoll = true
		E.db.general.vendorGrays = true
		E.db.general.autoAcceptInvite = false
		E.db.general.bottomPanel = false
		E.db.general.hideErrorFrame = true
		E.db.general.enhancedPvpMessages = true
		E.db.general.objectiveFrameHeight = 500
		E.db.general.bonusObjectivePosition = "LEFT"
		E.db.general.talkingHeadFrameScale = 0.9
		E.db.general.afk = false
		E.db.general.fontSize = 11
		E.db.general.font = "Expressway"
		E.db.general.namefont = "Expressway"
		E.db.general.chatBubbleFont = "Expressway"
		E.db.general.dmgfont = "Expressway"
		E.db.general.bordercolor = {r = 0/255, g = 0/255, b = 0/255}
		E.db.general.backdropcolor = {r = 18/255, g = 18/255, b = 18/255}
		E.db.general.backdropfadecolor = {r = 18/255, g = 18/255, b = 18/255, a = 0.9}
		E.db.general.valuecolor = E:GetColor(classColor.r, classColor.b, classColor.g)
		E.db.general.minimap.size = 150
		E.db.general.minimap.locationText = "MOUSEOVER"
		E.db.general.minimap.icons.classHall.scale = 0.5
		E.db.general.minimap.icons.classHall.position = "BOTTOMRIGHT"
		E.db.general.minimap.icons.classHall.hide = false
		E.db.general.minimap.icons.calendar.hide = true
		E.db.general.minimap.icons.lfgEye.scale = 0.9
		E.db.general.minimap.icons.lfgEye.position = "BOTTOMLEFT"
		E.db.general.minimap.icons.lfgEye.xOffset = 0 
		E.db.general.minimap.icons.lfgEye.yOffset = -2
		E.db.general.minimap.icons.vehicleLeave.size = 40
		E.db.general.minimap.icons.vehicleLeave.xOffset = 2
		E.db.general.minimap.icons.vehicleLeave.yOffset = 2
		E.db.general.threat.enable = false
		if E.myclass == "SHAMAN" then
			E.db.general.totems.enable = true
		else
			E.db.general.totems.enable = false
		end
		E.db.general.totems.growthDirection = "HORIZONTAL"
		E.db.general.totems.size = 43

		----------[Actionbars]----------
		E.db.actionbar.font = "Expressway"
		E.db.actionbar.fontSize = 12
		E.db.actionbar.fontOutline = "OUTLINE"
		E.db.actionbar.macrotext = false
		E.db.actionbar.hotkeytext = false
		E.db.actionbar.microbar.enabled = true
		E.db.actionbar.microbar.mouseover = true
		E.db.actionbar.microbar.buttonsPerRow = 12
		E.db.actionbar.microbar.alpha = 1
		E.db.actionbar.globalFadeAlpha = 0
		E.db.actionbar.lockActionBars = true
		--Bar 1
		E.db.actionbar.bar1.enabled = true
		E.db.actionbar.bar1.mouseover = false
		E.db.actionbar.bar1.buttons = 12
		E.db.actionbar.bar1.buttonsPerRow = 12
		E.db.actionbar.bar1.point = "BOTTOMLEFT"
		E.db.actionbar.bar1.backdrop = false
		E.db.actionbar.bar1.heightMult = 1
		E.db.actionbar.bar1.widthMult = 1
		E.db.actionbar.bar1.buttonsize = 32
		E.db.actionbar.bar1.buttonspacing = 1
		E.db.actionbar.bar1.backdropSpacing = 0
		E.db.actionbar.bar1.alpha = 1
		E.db.actionbar.bar1.inheritGlobalFade = false
		E.db.actionbar.bar1.showGrid = true
		--Bar 2
		E.db.actionbar.bar2.enabled = true
		E.db.actionbar.bar2.mouseover = false
		E.db.actionbar.bar2.buttons = 12
		E.db.actionbar.bar2.buttonsPerRow = 12
		E.db.actionbar.bar2.point = "BOTTOMLEFT"
		E.db.actionbar.bar2.backdrop = false
		E.db.actionbar.bar2.heightMult = 1
		E.db.actionbar.bar2.widthMult = 1
		E.db.actionbar.bar2.buttonsize = 32
		E.db.actionbar.bar2.buttonspacing = 1
		E.db.actionbar.bar2.backdropSpacing = 0
		E.db.actionbar.bar2.alpha = 1
		E.db.actionbar.bar2.inheritGlobalFade = false
		E.db.actionbar.bar2.showGrid = true
		--Bar 3
		E.db.actionbar.bar3.enabled = false
		E.db.actionbar.bar3.mouseover = false
		E.db.actionbar.bar3.buttons = 12
		E.db.actionbar.bar3.buttonsPerRow = 12
		E.db.actionbar.bar3.point = "BOTTOMLEFT"
		E.db.actionbar.bar3.backdrop = false
		E.db.actionbar.bar3.heightMult = 1
		E.db.actionbar.bar3.widthMult = 1
		E.db.actionbar.bar3.buttonsize = 32
		E.db.actionbar.bar3.buttonspacing = 1
		E.db.actionbar.bar3.backdropSpacing = 0
		E.db.actionbar.bar3.alpha = 0.4
		E.db.actionbar.bar3.inheritGlobalFade = false
		E.db.actionbar.bar3.showGrid = true
		--Bar 4
		E.db.actionbar.bar4.enabled = false
		E.db.actionbar.bar4.mouseover = false
		E.db.actionbar.bar4.buttons = 12
		E.db.actionbar.bar4.buttonsPerRow = 12
		E.db.actionbar.bar4.point = "BOTTOMLEFT"
		E.db.actionbar.bar4.backdrop = false
		E.db.actionbar.bar4.heightMult = 1
		E.db.actionbar.bar4.widthMult = 1
		E.db.actionbar.bar4.buttonsize = 32
		E.db.actionbar.bar4.buttonspacing = 1
		E.db.actionbar.bar4.backdropSpacing = 0
		E.db.actionbar.bar4.alpha = 0.4
		E.db.actionbar.bar4.inheritGlobalFade = false
		E.db.actionbar.bar4.showGrid = true
		--Bar 5
		E.db.actionbar.bar5.enabled = false
		E.db.actionbar.bar5.mouseover = false
		E.db.actionbar.bar5.buttons = 12
		E.db.actionbar.bar5.buttonsPerRow = 12
		E.db.actionbar.bar5.point = "BOTTOMLEFT"
		E.db.actionbar.bar5.backdrop = false
		E.db.actionbar.bar5.heightMult = 1
		E.db.actionbar.bar5.widthMult = 1
		E.db.actionbar.bar5.buttonsize = 32
		E.db.actionbar.bar5.buttonspacing = 1
		E.db.actionbar.bar5.backdropSpacing = 0
		E.db.actionbar.bar5.alpha = 1
		E.db.actionbar.bar5.inheritGlobalFade = false
		E.db.actionbar.bar5.showGrid = true
		--Bar 6
		E.db.actionbar.bar6.enabled = true
		E.db.actionbar.bar6.mouseover = true
		E.db.actionbar.bar6.buttons = 12
		E.db.actionbar.bar6.buttonsPerRow = 12
		E.db.actionbar.bar6.point = "BOTTOMLEFT"
		E.db.actionbar.bar6.backdrop = false
		E.db.actionbar.bar6.heightMult = 1
		E.db.actionbar.bar6.widthMult = 1
		E.db.actionbar.bar6.buttonsize = 32
		E.db.actionbar.bar6.buttonspacing = 1
		E.db.actionbar.bar6.backdropSpacing = 0
		E.db.actionbar.bar6.alpha = 1
		E.db.actionbar.bar6.inheritGlobalFade = false
		E.db.actionbar.bar6.showGrid = true
		--Pet Bar
		E.db.actionbar.barPet.enabled = true
		E.db.actionbar.barPet.mouseover = true
		E.db.actionbar.barPet.style = "darkenInactive"
		E.db.actionbar.barPet.buttons = NUM_STANCE_SLOTS
		E.db.actionbar.barPet.buttonsPerRow = NUM_STANCE_SLOTS
		E.db.actionbar.barPet.point = "BOTTOMLEFT"
		E.db.actionbar.barPet.backdrop = false
		E.db.actionbar.barPet.heightMult = 1
		E.db.actionbar.barPet.widthMult = 1
		E.db.actionbar.barPet.buttonsize = 17
		E.db.actionbar.barPet.buttonspacing = 1
		E.db.actionbar.barPet.backdropSpacing = 0
		E.db.actionbar.barPet.alpha = 1
		E.db.actionbar.barPet.inheritGlobalFade = false
		E.db.actionbar.barPet.showGrid = true
		--Stance Bar
		E.db.actionbar.stanceBar.enabled = false
		E.db.actionbar.stanceBar.mouseover = true
		E.db.actionbar.stanceBar.style = "darkenInactive"
		E.db.actionbar.stanceBar.buttons = NUM_STANCE_SLOTS
		E.db.actionbar.stanceBar.buttonsPerRow = NUM_STANCE_SLOTS
		E.db.actionbar.stanceBar.point = "BOTTOMLEFT"
		E.db.actionbar.stanceBar.backdrop = false
		E.db.actionbar.stanceBar.heightMult = 1
		E.db.actionbar.stanceBar.widthMult = 1
		E.db.actionbar.stanceBar.buttonsize = 32
		E.db.actionbar.stanceBar.buttonspacing = 1
		E.db.actionbar.stanceBar.backdropSpacing = 0
		E.db.actionbar.stanceBar.alpha = 1
		E.db.actionbar.stanceBar.inheritGlobalFade = false
		E.db.actionbar.stanceBar.showGrid = true
		--extraActionButton
		E.db.actionbar.extraActionButton.alpha = 1
		E.db.actionbar.extraActionButton.scale = 1
		E.db.actionbar.extraActionButton.inheritGlobalFade = false

		----------[Bags]----------
		E.db.bags.bagSize = 32
		E.db.bags.bagWidth = 350
		E.db.bags.bankSize = 32
		E.db.bags.bankWidth = 550
		E.db.bags.alignToChat = false
		E.db.bags.moneyCoins = true
		E.db.bags.junkIcon = true
		E.db.bags.itemLevelFont = "Expressway"
		E.db.bags.itemLevelFontSize = 12
		E.db.bags.itemLevelFontOutline = "OUTLINE"
		E.db.bags.countFont = "Expressway"
		E.db.bags.countFontSize = 12
		E.db.bags.countFontOutline = "OUTLINE"
		E.db.bags.bagBar.enable = false

		----------[Auras]----------
		E.db.auras.font = "Expressway"
		E.db.auras.fontSize = 12
		E.db.auras.fontOutline = "OUTLINE"
		E.db.auras.buffs.maxWraps = 2
		E.db.auras.buffs.horizontalSpacing = 1
		E.db.auras.buffs.size = 32
		E.db.auras.debuffs.maxWraps = 2
		E.db.auras.debuffs.horizontalSpacing = 1
		E.db.auras.debuffs.size = 32

		----------[Chat]----------
		E.db.chat.font = "Expressway"
		E.db.chat.fontOutline = "OUTLINE"
		E.db.chat.editBoxPosition = 'BELOW_CHAT'
		E.db.chat.emotionIcons = false
		E.db.chat.lfgIcons = false
		E.db.chat.panelWidth = 350
		E.db.chat.panelHeight = 175
		E.db.chat.panelWidthRight = 350
		E.db.chat.panelHeightRight = 200
		E.db.chat.panelBackdrop = "HIDEBOTH"
		E.db.chat.panelTabBackdrop = false
		E.db.chat.panelTabTransparency = false
		E.db.chat.fadeUndockedTabs = true
		E.db.chat.fadeTabsNoBackdrop = true
		E.db.chat.tabFont = "Expressway"
		E.db.chat.tabFontSize = 12
		E.db.chat.tabFontOutline = "OUTLINE"

		----------[DataBars]----------
		--XP
		E.db.databars.experience.enable = true
		E.db.databars.experience.width = 184
		E.db.databars.experience.height = 20
		E.db.databars.experience.textFormat = "PERCENT"
		E.db.databars.experience.textSize = 10
		E.db.databars.experience.mouseover = false
		E.db.databars.experience.orientation = "HORIZONTAL"
		E.db.databars.experience.reverseFill = false
		E.db.databars.experience.hideAtMaxLevel = true
		E.db.databars.experience.hideInVehicle = false
		--Rep
		E.db.databars.reputation.enable = true
		E.db.databars.reputation.width = 395
		E.db.databars.reputation.height = 32
		E.db.databars.reputation.textFormat = "PERCENT"
		E.db.databars.reputation.textSize = 12
		E.db.databars.reputation.mouseover = true
		E.db.databars.reputation.orientation = "HORIZONTAL"
		E.db.databars.reputation.reverseFill = false
		E.db.databars.reputation.hideInVehicle = false
		--Art
		E.db.databars.artifact.enable = true
		E.db.databars.artifact.width = 395
		E.db.databars.artifact.height = 32
		E.db.databars.artifact.textFormat = "PERCENT"
		E.db.databars.artifact.textSize = 12
		E.db.databars.artifact.mouseover = true
		E.db.databars.artifact.orientation = "HORIZONTAL"
		E.db.databars.artifact.reverseFill = false
		E.db.databars.artifact.hideInVehicle = false
		--Honor
		E.db.databars.honor.enable = true
		E.db.databars.honor.width = 395
		E.db.databars.honor.height = 32
		E.db.databars.honor.textFormat = "PERCENT"
		E.db.databars.honor.textSize = 12
		E.db.databars.honor.mouseover = true
		E.db.databars.honor.orientation = "HORIZONTAL"
		E.db.databars.honor.reverseFill = false
		E.db.databars.honor.hideInVehicle = false

		----------[DataTexts]----------
		E.db.datatexts.font = "Expressway"
		E.db.datatexts.fontSize = 11
		E.db.datatexts.fontOutline = "OUTLINE"
		E.db.datatexts.battleground = false
		E.db.datatexts.panels.LeftChatDataPanel.left = ""
		E.db.datatexts.panels.LeftChatDataPanel.middle = ""
		E.db.datatexts.panels.LeftChatDataPanel.right = ""
		E.db.datatexts.panels.RightChatDataPanel.left = ""
		E.db.datatexts.panels.RightChatDataPanel.middle = ""
		E.db.datatexts.panels.RightChatDataPanel.right = ""
		E.db.datatexts.panels.LeftMiniPanel = ""
		E.db.datatexts.panels.RightMiniPanel = ""
		E.db.datatexts.panels.BottomMiniPanel = "Time"
		E.db.datatexts.panels.TopMiniPanel = ""
		E.db.datatexts.panels.BottomLeftMiniPanel = ""
		E.db.datatexts.panels.BottomRightMiniPanel = ""
		E.db.datatexts.panels.TopRightMiniPanel = ""
		E.db.datatexts.panels.TopLeftMiniPanel = ""
		E.db.datatexts.minimapPanels = false
		E.db.datatexts.leftChatPanel = false
		E.db.datatexts.rightChatPanel = false
		E.db.datatexts.minimapTop = false
		E.db.datatexts.minimapTopLeft = false
		E.db.datatexts.minimapTopRight = false
		E.db.datatexts.minimapBottom = true
		E.db.datatexts.minimapBottomLeft = false
		E.db.datatexts.minimapBottomRight = false

		----------[Nameplates]----------
		E.db.nameplates.statusbar = "Skullflower"
		E.db.nameplates.font = "Expressway"
		E.db.nameplates.fontSize = 12
		E.db.nameplates.fontOutline = "OUTLINE"
		E.db.nameplates.nonTargetTransparency = 0.65
		E.db.nameplates.classbar.enable = false
		E.db.nameplates.units.PLAYER.enable = false
		E.db.nameplates.units.PLAYER.buffs.baseHeight = 30
		E.db.nameplates.units.HEALER.buffs.baseHeight = 30
		E.db.nameplates.units.FRIENDLY_PLAYER.buffs.baseHeight = 30
		E.db.nameplates.units.ENEMY_PLAYER.buffs.baseHeight = 30
		E.db.nameplates.units.FRIENDLY_NPC.buffs.baseHeight = 30
		E.db.nameplates.units.ENEMY_NPC.buffs.baseHeight = 30

		E.db.nameplates.units.PLAYER.debuffs.baseHeight = 30
		E.db.nameplates.units.HEALER.debuffs.baseHeight = 30
		E.db.nameplates.units.FRIENDLY_PLAYER.debuffs.baseHeight = 30
		E.db.nameplates.units.ENEMY_PLAYER.debuffs.baseHeight = 30
		E.db.nameplates.units.FRIENDLY_NPC.debuffs.baseHeight = 30
		E.db.nameplates.units.ENEMY_NPC.debuffs.baseHeight = 30

		---------[Tooltip]----------
		E.db.tooltip.targetInfo = false
		E.db.tooltip.playerTitles = false
		E.db.tooltip.guildRanks = false
		E.db.tooltip.inspectInfo = false
		E.db.tooltip.spellID = false
		E.db.tooltip.font = "Expressway"
		E.db.tooltip.fontOutline = "NONE"
		E.db.tooltip.itemCount = "NONE"
		E.db.tooltip.headerFontSize = 11
		E.db.tooltip.textFontSize = 11
		E.db.tooltip.smallTextFontSize = 11
		E.db.tooltip.healthBar.text = false
		E.db.tooltip.healthBar.height = 0
		E.db.tooltip.healthBar.font = "Expressway"
		E.db.tooltip.healthBar.fontSIze = 11

		---------[UnitFrames]----------
		E.db.unitframe.smoothbars = true
		E.db.unitframe.statusbar = "Skullflower"
		E.db.unitframe.font = "Expressway"
		E.db.unitframe.fontSize = 11
		E.db.unitframe.fontOutline = "OUTLINE"
		E.db.unitframe.smartRaidFilter = false
		--Colors
		E.db.unitframe.colors.healthclass = true
		E.db.unitframe.colors.forcehealthreaction = false
		E.db.unitframe.colors.colorhealthbyvalue = false
		E.db.unitframe.colors.customhealthbackdrop = true
		E.db.unitframe.colors.useDeadBackdrop = false
		E.db.unitframe.colors.castClassColor = false
		E.db.unitframe.colors.classbackdrop = false
		E.db.unitframe.colors.castColor = E:GetColor(17/255, 17/255, 17/255)
		E.db.unitframe.colors.health = { r = 107/255, g = 255/255, b = 103/255 }
		E.db.unitframe.colors.health_backdrop = { r = 18/255, g = 18/255, b = 18/255 }
		E.db.unitframe.colors.tapped = { r = 195/255, g = 202/255, b = 217/255 }
		E.db.unitframe.colors.disconnected = { r = 195/255, g = 202/255, b = 217/255 }
		E.db.unitframe.colors.power.MANA = { r = 0/255, g = 190/255, b = 230/255 }
		E.db.unitframe.colors.power.RAGE = { r = 70/255, g = 70/255, b = 70/255 }
		E.db.unitframe.colors.power.FOCUS = { r = 230/255, g = 140/255, b = 60/255 }
		E.db.unitframe.colors.power.ENERGY = { r = 70/255, g = 70/255, b = 70/255 }
		E.db.unitframe.colors.power.RUNIC_POWER = { r = 70/255, g = 70/255, b = 70/255 }
		E.db.unitframe.colors.reaction.BAD = { r = 239/225, g = 31/225, b = 44/225 }
		E.db.unitframe.colors.reaction.NEUTRAL = { r = 255/255, g = 249/255, b = 94/255 }
		E.db.unitframe.colors.reaction.GOOD = { r = 107/255, g = 255/255, b = 103/255 }
		E.db.unitframe.colors.castColor = { r = 204/255, g = 204/255, b = 204/255 }
		E.db.unitframe.colors.castNoInterrupt = { r = 239/225, g = 31/225, b = 44/225 }
		E.db.unitframe.colors.classResources.bgColor = { r = 18/255, g = 18/255, b = 18/255}
		--Resource Colors
		E.db.unitframe.colors.classResources.MONK[1] = { r = 0/255, g = 255/255, b = 150/255 }
		E.db.unitframe.colors.classResources.MONK[2] = { r = 0/255, g = 255/255, b = 150/255 }
		E.db.unitframe.colors.classResources.MONK[3] = { r = 0/255, g = 255/255, b = 150/255 }
		E.db.unitframe.colors.classResources.MONK[4] = { r = 0/255, g = 255/255, b = 150/255 }
		E.db.unitframe.colors.classResources.MONK[5] = { r = 0/255, g = 255/255, b = 150/255 }
		E.db.unitframe.colors.classResources.MONK[6] = { r = 0/255, g = 255/255, b = 150/255 }
		--Player
		E.db.unitframe.units.player.customTexts = {}
		E.db.unitframe.units.player.customTexts.HealthText = {}
		E.db.unitframe.units.player.restIcon = false
		E.db.unitframe.units.player.width = 184
		E.db.unitframe.units.player.height = 30
		E.db.unitframe.units.player.healPrediction = false
		E.db.unitframe.units.player.threatStyle = "NONE"
		E.db.unitframe.units.player.health.text_format = ""
		E.db.unitframe.units.player.power.text_format = ""
		E.db.unitframe.units.player.power.height = 15
		E.db.unitframe.units.player.power.yOffset = -22
		E.db.unitframe.units.player.power.detachFromFrame = true
		E.db.unitframe.units.player.power.detachedWidth = 184
		E.db.unitframe.units.player.power.druidMana = false
		E.db.unitframe.units.player.pvp.text_format = ""
		E.db.unitframe.units.player.buffs.enable = false
		E.db.unitframe.units.player.buffs.yOffset = 4
		E.db.unitframe.units.player.buffs.attachTo = "Frame"
		E.db.unitframe.units.player.buffs.anchorPoint = "CENTER"
		E.db.unitframe.units.player.debuffs.enable = false
		E.db.unitframe.units.player.debuffs.sizeOverride = 46
		E.db.unitframe.units.player.debuffs.xOffset = -1
		E.db.unitframe.units.player.debuffs.yOffset = -8
		E.db.unitframe.units.player.debuffs.fontSize = 16
		E.db.unitframe.units.player.debuffs.attachTo = "Frame"
		E.db.unitframe.units.player.debuffs.anchorPoint = "LEFT"
		E.db.unitframe.units.player.castbar.enable = true
		E.db.unitframe.units.player.castbar.width = 395
		E.db.unitframe.units.player.castbar.height = 20
		E.db.unitframe.units.player.castbar.icon = false
		E.db.unitframe.units.player.castbar.latency = false
		E.db.unitframe.units.player.castbar.format = "Remaining"
		E.db.unitframe.units.player.castbar.ticks = true
		E.db.unitframe.units.player.castbar.spark = false
		if E.myclass == "DEATHKNIGHT" and IsAddOnLoaded("CompactRunes") or IsAddOnLoaded("mRunes") then
			E.db.unitframe.units.player.classbar.enable = false
			E.db.unitframe.units.player.classbar.height = 0
			E.db.unitframe.units.player.classbar.detachedWidth = 0
		else
			E.db.unitframe.units.player.classbar.enable = true
			E.db.unitframe.units.player.classbar.detachedWidth = 184
			E.db.unitframe.units.player.classbar.height = 15
		end
		E.db.unitframe.units.player.classbar.detachFromFrame = true
		E.db.unitframe.units.player.stagger.enable = false
		E.db.unitframe.units.player.customTexts.HealthText.justifyH = "Left"
		E.db.unitframe.units.player.customTexts.HealthText.xOffset = 11
		E.db.unitframe.units.player.customTexts.HealthText.yOffset = -11
		E.db.unitframe.units.player.customTexts.HealthText.size = 32
		E.db.unitframe.units.player.aurabar.enable = false
		E.db.unitframe.units.player.aurabar.attachTo = 'BUFFS'
		E.db.unitframe.units.player.aurabar.height = 18
		--Target
		E.db.unitframe.units.target.customTexts = {}
		E.db.unitframe.units.target.customTexts.HealthText = {}
		E.db.unitframe.units.target.rangeCheck = false
		E.db.unitframe.units.target.width = 184
		E.db.unitframe.units.target.height = 30
		E.db.unitframe.units.target.healPrediction = false
		E.db.unitframe.units.target.threatStyle = "NONE"
		E.db.unitframe.units.target.health.text_format = ""
		E.db.unitframe.units.target.power.text_format = ""
		E.db.unitframe.units.target.power.position = "LEFT"
		E.db.unitframe.units.target.power.height = 15
		E.db.unitframe.units.target.power.xOffset = 0
		E.db.unitframe.units.target.power.yOffset = -22
		E.db.unitframe.units.target.power.detachFromFrame = true
		E.db.unitframe.units.target.power.detachedWidth = 184
		E.db.unitframe.units.target.power.hideonnpc = false
		E.db.unitframe.units.target.name.position = "LEFT"
		E.db.unitframe.units.target.name.text_format = " [name:medium]"
		E.db.unitframe.units.target.name.xOffset = 0
		E.db.unitframe.units.target.name.yOffset = 0
		E.db.unitframe.units.target.buffs.enable = true
		E.db.unitframe.units.target.buffs.anchorPoint = "TOPLEFT"
		E.db.unitframe.units.target.buffs.attachTo = "FRAME"
		E.db.unitframe.units.target.buffs.fontSize = 11
		E.db.unitframe.units.target.buffs.yOffset = 1
		E.db.unitframe.units.target.debuffs.enable = true
		E.db.unitframe.units.target.debuffs.attachTo = "FRAME"
		E.db.unitframe.units.target.debuffs.anchorPoint = "BOTTOMLEFT"
		E.db.unitframe.units.target.debuffs.fontSize = 11
		E.db.unitframe.units.target.debuffs.yOffset = -16
		E.db.unitframe.units.target.castbar.enable = true
		E.db.unitframe.units.target.castbar.width = 184
		E.db.unitframe.units.target.castbar.height = 17
		E.db.unitframe.units.target.castbar.icon = false
		E.db.unitframe.units.target.castbar.format = "Remaining"
		E.db.unitframe.units.target.castbar.spark = false
		E.db.unitframe.units.target.aurabar.enable = false
		E.db.unitframe.units.target.aurabar.attachTo = 'Debuffs'
		E.db.unitframe.units.target.aurabar.anchorPoint = 'Below'
		E.db.unitframe.units.target.customTexts.HealthText.justifyH = "Right"
		E.db.unitframe.units.target.customTexts.HealthText.xOffset = -11
		E.db.unitframe.units.target.customTexts.HealthText.yOffset = -11
		E.db.unitframe.units.target.customTexts.HealthText.size = 32
		--Target of Target
		E.db.unitframe.units.targettarget.enable = true
		E.db.unitframe.units.targettarget.rangeCheck = false
		E.db.unitframe.units.targettarget.debuffs.enable = false
		E.db.unitframe.units.targettarget.width = 85
		E.db.unitframe.units.targettarget.height = 25
		E.db.unitframe.units.targettarget.power.enable = false
		E.db.unitframe.units.targettarget.name.position = "CENTER"
		E.db.unitframe.units.targettarget.name.text_format = "[name:veryshort]"
		--Focus
		E.db.unitframe.units.focus.rangeCheck = false
		E.db.unitframe.units.focus.width= 179
		E.db.unitframe.units.focus.height = 30
		E.db.unitframe.units.focus.power.enable = false
		E.db.unitframe.units.focus.power.height = 3
		E.db.unitframe.units.focus.threatStyle = "NONE"
		E.db.unitframe.units.focus.name.position = "CENTER"
		E.db.unitframe.units.focus.name.text_format = "[name]"
		E.db.unitframe.units.focus.debuffs.enable = false
		E.db.unitframe.units.focus.castbar.width = 179
		E.db.unitframe.units.focus.castbar.height = 28
		E.db.unitframe.units.focus.castbar.icon = false
		E.db.unitframe.units.focus.castbar.format = "Remaining"
		E.db.unitframe.units.focus.castbar.spark = false
		--Pet
		E.db.unitframe.units.pet.rangeCheck = false
		E.db.unitframe.units.pet.width = 85
		E.db.unitframe.units.pet.height = 25
		E.db.unitframe.units.pet.threatStyle = "NONE"
		E.db.unitframe.units.pet.healPrediction = false
		E.db.unitframe.units.pet.power.enable = false
		E.db.unitframe.units.pet.name.text_format = "[name:short]"
		E.db.unitframe.units.pet.name.position = "CENTER"
		E.db.unitframe.units.pet.buffIndicator.enable = false
		E.db.unitframe.units.pet.castbar.width = 85
		E.db.unitframe.units.pet.castbar.height = 25
		E.db.unitframe.units.pet.castbar.spark = false
		E.db.unitframe.units.pet.castbar.iconAttached = false
		E.db.unitframe.units.pet.insideInfoPanel = false

		--Boss 
		E.db.unitframe.units.boss.enable = false
		E.db.unitframe.units.boss.width = 175
		E.db.unitframe.units.boss.height = 35
		E.db.unitframe.units.boss.health.text_format = "[health:percent]"
		E.db.unitframe.units.boss.health.position = "RIGHT"
		E.db.unitframe.units.boss.power.enable = false
		E.db.unitframe.units.boss.name.text_format = "[name:medium]"
		E.db.unitframe.units.boss.castbar.enable = true
		E.db.unitframe.units.boss.castbar.width = 175
		E.db.unitframe.units.boss.buffs.enable = false
		E.db.unitframe.units.boss.buffs.perrow = 3
		E.db.unitframe.units.boss.buffs.numrows = 1
		E.db.unitframe.units.boss.buffs.anchorPoint = "LEFT"
		E.db.unitframe.units.boss.buffs.fontSize = 22
		E.db.unitframe.units.boss.buffs.xOffset = -3
		E.db.unitframe.units.boss.buffs.yOffset = 0
		E.db.unitframe.units.boss.buffs.sizeOverride = 35
		E.db.unitframe.units.boss.debuffs.enable = true
		E.db.unitframe.units.boss.debuffs.perrow = 3
		E.db.unitframe.units.boss.debuffs.numrows = 1
		E.db.unitframe.units.boss.debuffs.anchorPoint = "RIGHT"
		E.db.unitframe.units.boss.debuffs.fontSize = 22
		E.db.unitframe.units.boss.debuffs.xOffset = 3
		E.db.unitframe.units.boss.debuffs.yOffset = 0
		E.db.unitframe.units.boss.debuffs.sizeOverride = 35
		--Arena
		E.db.unitframe.units.arena.width = 225
		E.db.unitframe.units.arena.height = 40
		E.db.unitframe.units.arena.health.text_format = "[health:current]"
		E.db.unitframe.units.arena.power.text_format = ""
		E.db.unitframe.units.arena.name.text_format = "[name:veryshort]"
		E.db.unitframe.units.arena.buffs.anchorPoint = "RIGHT"
		E.db.unitframe.units.arena.buffs.fontSize = 11
		E.db.unitframe.units.arena.buffs.sizeOverride = 18
		E.db.unitframe.units.arena.buffs.xOffset = 2
		E.db.unitframe.units.arena.buffs.yOffset = 10
		E.db.unitframe.units.arena.debuffs.fontSize = 11
		E.db.unitframe.units.arena.debuffs.sizeOverride = 18
		E.db.unitframe.units.arena.debuffs.xOffset = 2
		E.db.unitframe.units.arena.debuffs.yOffset = -10
		E.db.unitframe.units.arena.castbar.width = 225
		E.db.unitframe.units.arena.castbar.height = 10
		E.db.unitframe.units.arena.castbar.icon = false
		E.db.unitframe.units.arena.castbar.format = ""
		E.db.unitframe.units.arena.castbar.spark = false
		--Party
		E.db.unitframe.units.party.width = 45
		E.db.unitframe.units.party.height = 30
		E.db.unitframe.units.party.threatStyle = "NONE"
		E.db.unitframe.units.party.growthDirection = "LEFT_DOWN"
		E.db.unitframe.units.party.horizontalSpacing = 1
		E.db.unitframe.units.party.verticalSpacing = 1
		E.db.unitframe.units.party.health.text_format = ""
		E.db.unitframe.units.party.power.enable = false
		E.db.unitframe.units.party.name.position = "CENTER"
		E.db.unitframe.units.party.name.text_format = "[name:veryshort]"
		E.db.unitframe.units.party.debuffs.enable = false
		E.db.unitframe.units.party.GPSArrow.enable = false
		E.db.unitframe.units.party.buffIndicator.enable = false
		E.db.unitframe.units.party.roleIcon.enable = false
		E.db.unitframe.units.party.debuffs.perrow = 1
		E.db.unitframe.units.party.debuffs.numrows = 3
		E.db.unitframe.units.party.debuffs.sizeOverride = 30
		E.db.unitframe.units.party.debuffs.yOffset = -1
		E.db.unitframe.units.party.debuffs.anchorPoint = "BOTTOM"
		E.db.unitframe.units.party.debuffs.onlyDispellable = true
		E.db.unitframe.units.party.buffs.perrow = 2
		E.db.unitframe.units.party.buffs.numrows = 1
		E.db.unitframe.units.party.buffs.sizeOverride = 20
		E.db.unitframe.units.party.buffs.xOffset = -47
		E.db.unitframe.units.party.buffs.yOffset = 0
		E.db.unitframe.units.party.buffs.anchorPoint = "RIGHT"
		E.db.unitframe.units.party.visibility = "[@raid6,exists][nogroup] hide;show"
		--Raid
		E.db.unitframe.units.raid.width = 55
		E.db.unitframe.units.raid.height = 30
		E.db.unitframe.units.raid.threatStyle = "NONE"
		E.db.unitframe.units.raid.growthDirection = "LEFT_UP"
		E.db.unitframe.units.raid.visibility = "[@raid6,noexists] hide;show"
		E.db.unitframe.units.raid.horizontalSpacing = 1
		E.db.unitframe.units.raid.verticalSpacing = 1
		E.db.unitframe.units.raid.health.text_format = ""
		E.db.unitframe.units.raid.power.enable = false
		E.db.unitframe.units.raid.name.position = "CENTER"
		E.db.unitframe.units.raid.name.text_format = "[name:veryshort]"
		E.db.unitframe.units.raid.GPSArrow.enable = false
		E.db.unitframe.units.raid.roleIcon.enable = false
		E.db.unitframe.units.raid.numGroups = 8
		E.db.unitframe.units.raid40.enable = false
		E.db.unitframe.units.raid40.width = 55
		E.db.unitframe.units.raid40.height = 30
		E.db.unitframe.units.tank.enable = false
		E.db.unitframe.units.assist.enable = false


		---------[Optional Settings]----------
		--Set Textures to SkullflowerLight
		elseif theme == "LightTexture" then
			E.db.unitframe.statusbar = "SkullflowerLight"
			E.db.nameplates.statusbar = "SkullflowerLight"

		--Set Healer Party/Raid Frames
		elseif theme == "HealerFrames" then
			E.db.movers["ElvUF_RaidMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT272520"
			E.db.movers["ElvUF_PartyMover"] = "TOPLEFTElvUIParentTOPLEFT322-520"
			E.db.unitframe.units.raid.width = 60
			E.db.unitframe.units.raid.height = 35
			E.db.unitframe.units.party.width = 55
			E.db.unitframe.units.party.height = 40
			E.db.unitframe.units.party.buffIndicator.enable = true
			E.db.unitframe.units.party.debuffs.enable = true

		--Unhide Actionbars
		elseif theme == "extraActionBars" then
			E.db.actionbar.bar3.enabled = true
			E.db.actionbar.bar4.enabled = true
			E.db.actionbar.bar3.mouseover = false
			E.db.actionbar.bar4.mouseover = false

		--Square Actionbars
		elseif theme == "squareBars" then
			E.db.movers["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,30"
			E.db.movers["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,88"
			E.db.movers["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-115,30"
			E.db.movers["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,115,30"
			E.db.movers["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,1"
			E.db.movers["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,148"
			E.db.unitframe.units.player.castbar.width = 173
			E.db.actionbar.bar1.buttons = 12
			E.db.actionbar.bar1.buttonsPerRow = 6
			E.db.actionbar.bar2.buttons = 12
			E.db.actionbar.bar2.buttonsPerRow = 6
			E.db.actionbar.bar3.mouseover = true
			E.db.actionbar.bar3.buttons = 8
			E.db.actionbar.bar3.buttonsPerRow = 2
			E.db.actionbar.bar4.buttons = 8
			E.db.actionbar.bar4.buttonsPerRow = 2
			E.db.actionbar.bar4.mouseover = true
			E.db.actionbar.bar1.buttonsize = 28
			E.db.actionbar.bar2.buttonsize = 28
			E.db.actionbar.bar3.buttonsize = 28
			E.db.actionbar.bar4.buttonsize = 28
			E.db.actionbar.bar5.buttonsize = 28
			E.db.actionbar.bar6.buttonsize = 28

		--Enable AuraBars
		elseif theme == "enableAuraBars" then
			E.db.unitframe.units.player.aurabar.enable = true
			E.db.unitframe.units.target.aurabar.enable = true
			E.db.unitframe.units.target.debuffs.enable = false
			E.db.unitframe.units.target.debuffs.yOffset = 31
			E.db.unitframe.units.target.buffs.attachTo = "POWER"
			E.db.unitframe.units.target.buffs.anchorPoint = "BOTTOMLEFT"
			E.db.unitframe.units.target.buffs.yOffset = -1

		--Unhide ActionBars
		elseif theme == "unhideActionBars" then
			E.db.actionbar.bar3.enabled = true
			E.db.actionbar.bar4.enabled = true

		--UF Text
		elseif theme == "unitframeTexts" then
			E.db.unitframe.units.player.customTexts.HealthText.text_format = "[health:current]"
			E.db.unitframe.units.target.customTexts.HealthText.text_format = "[health:current]"
			E.db.unitframe.units.player.power.text_format = "[power:current]"
			E.db.unitframe.units.target.power.text_format = "[health:percent]"

		--Boss frames
		elseif theme == "bossFrame" then
			E.db.unitframe.units.boss.enable = false
		end
		
		if not noDisplayMsg then
			E:UpdateAll(true)
		end
end

function E:SetupAddon(addon)
	if addon == 'Skada' then
		if IsAddOnLoaded('Skada') then
			E:Print(L["A profile for Skada has been created."])
			InstallStepComplete.message = L["AddOn Profiles installed"]
			InstallStepComplete:Show()
			SkadaDB['profiles']['Skullflower'] = {
			["windows"] = {
				{
					["barheight"] = 20,
					["classicons"] = false,
					["barslocked"] = true,
					["y"] = 30,
					["x"] = -30,
					["title"] = {
						["color"] = {
							["a"] = 1,
							["b"] = 0.0784313725490196,
							["g"] = 0.0784313725490196,
							["r"] = 0.0784313725490196,
						},
						["bordertexture"] = "Pixel",
						["font"] = "Expressway",
						["borderthickness"] = 0,
						["fontflags"] = "OUTLINE",
						["height"] = 20,
						["texture"] = "Skullflower",
					},
					["barfontflags"] = "OUTLINE",
					["point"] = "BOTTOMRIGHT",
					["mode"] = "Damage",
					["buttons"] = {
						["menu"] = false,
						["mode"] = false,
					},
					["barwidth"] = 280,
					["barbgcolor"] = {
						["a"] = 1,
						["r"] = 0.301960784313726,
						["g"] = 0.301960784313726,
						["b"] = 0.301960784313726,
					},
					["barcolor"] = {
						["b"] = 1,
						["g"] = 0.349019607843137,
						["r"] = 0.227450980392157,
					},
					["barfontsize"] = 10,
					["background"] = {
						["borderthickness"] = 0,
						["color"] = {
							["a"] = 1,
							["b"] = 0.0784313725490196,
							["g"] = 0.0784313725490196,
							["r"] = 0.0784313725490196,
						},
						["bordertexture"] = "Pixel",
						["texture"] = "ElvUI Blank",
					},
					["bartexture"] = "Skullflower",
					["barfont"] = "Expressway",
				}, -- [1]
			},
			["icon"] = {
				["hide"] = true,
			},
			["columns"] = {
				["Threat_TPS"] = true,
			},
			["tooltiprows"] = 5,
			["hidesolo"] = true,
			["showranks"] = false,
			["hidedisables"] = false,
			["tooltippos"] = "topleft",
			["reset"] = {
				["join"] = 1,
			},
		}
	end

	if IsAddOnLoaded('BigWigs') then
		E:Print(L["A profile for Big Wigs has been created. Type /bw, go to Profiles, and change your profile to Skullflower."])
		InstallStepComplete.message = L["AddOn Profiles installed"]
		InstallStepComplete:Show()
		BigWigs3DB = {
		["namespaces"] = {
		["BigWigs_Plugins_Victory"] = {
		},
		["BigWigs_Plugins_Colors"] = {
		},
		["BigWigs_Plugins_Alt Power"] = {
			["profiles"] = {
				["Default"] = {
					["font"] = "Friz Quadrata TT",
					["fontOutline"] = "",
					["fontSize"] = 11.0000009536743,
				},
				["Skullflower"] = {
					["posx"] = 165.688686737744,
					["fontSize"] = 11.0000009536743,
					["disabled"] = true,
					["posy"] = 239.64436344173,
					["fontOutline"] = "",
					["font"] = "Expressway",
				},
			},
		},
		["BigWigs_Plugins_BossBlock"] = {
		},
		["BigWigs_Plugins_Bars"] = {
			["profiles"] = {
				["Default"] = {
					["font"] = "Friz Quadrata TT",
					["BigWigsAnchor_width"] = 199.999908447266,
				},
				["Skullflower"] = {
					["BigWigsEmphasizeAnchor_y"] = 37.688656511566,
					["fontSize"] = 11,
					["BigWigsAnchor_y"] = 38.4000578959797,
					["emphasizeGrowup"] = true,
					["BigWigsAnchor_x"] = 398.222145059372,
					["texture"] = "SkullflowerLight",
					["barStyle"] = "ElvUI",
					["BigWigsAnchor_width"] = 199.999908447266,
					["BigWigsEmphasizeAnchor_width"] = 203.000076293945,
					["BigWigsEmphasizeAnchor_x"] = 839.111044624115,
					["font"] = "Expressway",
					["outline"] = "OUTLINE",
					["emphasizeScale"] = 1,
				},
			},
		},
		["BigWigs_Plugins_Super Emphasize"] = {
			["profiles"] = {
				["Default"] = {
					["font"] = "Friz Quadrata TT",
				},
				["Skullflower"] = {
					["font"] = "Expressway",
				},
			},
		},
		["BigWigs_Plugins_Sounds"] = {
		},
		["BigWigs_Plugins_Messages"] = {
			["profiles"] = {
				["Default"] = {
					["fontSize"] = 20,
					["font"] = "Friz Quadrata TT",
				},
				["Skullflower"] = {
					["outline"] = "OUTLINE",
					["fontSize"] = 20,
					["BWMessageAnchor_x"] = 608.711212656235,
					["growUpwards"] = false,
					["font"] = "Expressway",
					["BWMessageAnchor_y"] = 620.800015032291,
				},
			},
		},
		["BigWigs_Plugins_Statistics"] = {
		},
		["BigWigs_Plugins_Respawn"] = {
		},
		["BigWigs_Plugins_Proximity"] = {
			["profiles"] = {
				["Default"] = {
					["fontSize"] = 20,
					["font"] = "Friz Quadrata TT",
					["height"] = 120.000007629395,
				},
				["Skullflower"] = {
					["fontSize"] = 20,
					["font"] = "Friz Quadrata TT",
					["posx"] = 351.999834912349,
					["height"] = 120.000007629395,
					["posy"] = 260.977697291637,
				},
			},
		},
		["BigWigs_Plugins_Raid Icons"] = {
		},
		["LibDualSpec-1.0"] = {
		},
	},
		["profiles"] = {
			["Skullflower"] = {
			},
		},
	}
	end

	if IsAddOnLoaded('DBM-Core') then
		E:Print(L["A profile for DBM has been created. Type '/dbm config', go to Options->Profiles and change the profile to Skullflower."])
		InstallStepComplete.message = L["AddOn Profiles installed"]
		InstallStepComplete:Show()
		DBM_AllSavedOptions['Skullflower'] = {
			["SpecialWarningFontSize"] = 50,
			["HUDTextureOverride"] = false,
			["DontShowFarWarnings"] = true,
			["ChosenVoicePack"] = "None",
			["DontShowHudMap2"] = false,
			["AlwaysPlayVoice"] = false,
			["ShowSWarningsInChat"] = false,
			["HideApplicantAlerts"] = 0,
			["HUDAlpha1"] = 0.5,
			["StatusEnabled"] = true,
			["InfoFrameX"] = 393.56005859375,
			["RangeFrameX"] = 50,
			["AlwaysShowSpeedKillTimer"] = true,
			["RangeFrameY"] = -50,
			["FilterSayAndYell"] = false,
			["EnableModels"] = true,
			["SpecialWarningFlashAlph3"] = 0.0,
			["ArrowPoint"] = "TOP",
			["SWarnNameInNote"] = true,
			["FakeBWVersion"] = false,
			["InfoFramePoint"] = "BOTTOMLEFT",
			["CRT_Enabled"] = false,
			["SpecialWarningFlashCol2"] = {
				1, -- [1]
				0.5, -- [2]
				0, -- [3]
			},
			["WarningAlphabetical"] = true,
			["WarningFont"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\Expressway.ttf",
			["CheckGear"] = true,
			["SpecialWarningX"] = 0,
			["WorldBossAlert"] = false,
			["RaidWarningPosition"] = {
				["Y"] = -185,
				["X"] = 0,
				["Point"] = "TOP",
			},
			["DontShowPT2"] = false,
			["MCMessageShown"] = false,
			["DontShowSpecialWarnings"] = true,
			["ShowMinimapButton"] = false,
			["MoviesSeen"] = {
			},
			["ShowQueuePop"] = true,
			["ShowAllVersions"] = true,
			["DebugMode"] = false,
			["HUDTexture3"] = "highlight",
			["SpecialWarningFontCol"] = {
				1, -- [1]
				0.7, -- [2]
				0, -- [3]
			},
			["WarningFontStyle"] = "OUTLINE",
			["InfoFrameY"] = 218.75993347168,
			["ChatFrame"] = "DEFAULT_CHAT_FRAME",
			["WarningIconRight"] = false,
			["UseSoundChannel"] = "Master",
			["ShowCountdownText"] = false,
			["ShowRespawn"] = true,
			["PTCountThreshold"] = 5,
			["HUDSize2"] = 5,
			["ShowFakedRaidWarnings"] = false,
			["FilterDispel"] = true,
			["DebugLevel"] = 1,
			["LFDEnhance"] = true,
			["SpecialWarningFlashDura1"] = 0.4,
			["DontShowPTNoID"] = false,
			["HideGarrisonToasts"] = true,
			["RangeFramePoint"] = "CENTER",
			["SpecialWarningFontShadow"] = false,
			["RLReadyCheckSound"] = true,
			["WOTLKTWMessageShown"] = false,
			["HideObjectivesFrame"] = true,
			["SpecialWarningFlashCol1"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
			},
			["DontShowPTText"] = false,
			["SWarnClassColor"] = true,
			["SpecialWarningFlashCol5"] = {
				0.2, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["ShowFlashFrame"] = true,
			["DontShowHealthFrame"] = false,
			["SpamBlockBossWhispers"] = true,
			["SpecialWarningDuration"] = 2,
			["AlwaysShowHealthFrame"] = false,
			["AutoReplySound"] = true,
			["RangeFrameRadarX"] = -366.999725341797,
			["RangeFrameRadarY"] = 191.000183105469,
			["DontShowPTCountdownText"] = false,
			["LogOnlyRaidBosses"] = false,
			["HUDSizeOverride"] = false,
			["WarningPoint"] = "TOP",
			["CountdownVoice2"] = "Kolt",
			["AutoAcceptGuildInvite"] = false,
			["SpecialWarningSound2"] = "Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.ogg",
			["ArrowPosX"] = 0,
			["HUDSize1"] = 5,
			["AITimer"] = true,
			["SpecialWarningFlashDura3"] = 1,
			["MovieFilter"] = "AfterFirst",
			["HPFramePoint"] = "CENTER",
			["SpecialWarningPoint"] = "TOP",
			["SpecialWarningSound4"] = "Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.ogg",
			["HealthFrameLocked"] = false,
			["SpecialWarningFlashDura5"] = 1,
			["DisableSFX"] = false,
			["AutologBosses"] = false,
			["SpecialWarningFlashDura4"] = 0.7,
			["HUDColor2"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
			},
			["SpecialWarningFlashAlph2"] = 0.3,
			["SpecialWarningFlashCol3"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
			},
			["WarningColors"] = {
				{
					["b"] = 0.941176470588235,
					["g"] = 0.8,
					["r"] = 0.411764705882353,
				}, -- [1]
				{
					["b"] = 0,
					["g"] = 0.949019607843137,
					["r"] = 0.949019607843137,
				}, -- [2]
				{
					["b"] = 0,
					["g"] = 0.501960784313726,
					["r"] = 1,
				}, -- [3]
				{
					["b"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["r"] = 1,
				}, -- [4]
			},
			["SpecialWarningFlashAlph4"] = 0.4,
			["SWarningAlphabetical"] = true,
			["HideTooltips"] = false,
			["BlockNoteShare"] = false,
			["RangeFrameSound2"] = "none",
			["ShowPizzaMessage"] = true,
			["SpecialWarningY"] = 75,
			["ModelSoundValue"] = "Short",
			["FilterSelfHud"] = true,
			["SpecialWarningSound5"] = "Sound\\Creature\\Loathstare\\Loa_Naxx_Aggro02.ogg",
			["HUDTexture2"] = "highlight",
			["RangeFrameRadarPoint"] = "BOTTOM",
			["DontShowInfoFrame"] = false,
			["AutoCorrectTimer"] = false,
			["DontRestoreRange"] = false,
			["RangeFrameUpdates"] = "Average",
			["CountdownVoice3v2"] = "HoTS_R",
			["RoleSpecAlert"] = true,
			["WarningY"] = 260,
			["CustomSounds"] = 0,
			["DontPlayPTCountdown"] = false,
			["SpecialWarningFlashRepeat3"] = true,
			["ShortTimerText"] = true,
			["WhisperStats"] = false,
			["VoiceOverSpecW2"] = "DefaultOnly",
			["DontShowBossAnnounces"] = false,
			["HUDAlpha3"] = 0.5,
			["SpecialWarningFlashAlph5"] = 0.5,
			["WarningIconLeft"] = false,
			["HealthFrameWidth"] = 200,
			["WarningX"] = 0,
			["ShowEngageMessage"] = true,
			["RangeFrameSound1"] = "none",
			["HPFrameY"] = 50,
			["WarningFontSize"] = 20.8266906738281,
			["HUDAlpha2"] = 0.5,
			["SpecialWarningFlashDura2"] = 0.4,
			["LastRevision"] = 0,
			["HUDColor3"] = {
				1, -- [1]
				0.5, -- [2]
				0, -- [3]
			},
			["SettingsMessageShown"] = true,
			["PGMessageShown"] = false,
			["SpecialWarningFlashCol4"] = {
				1, -- [1]
				0, -- [2]
				1, -- [3]
			},
			["FilterInterruptNoteName"] = false,
			["DontShowFlexMessage"] = false,
			["DontSetIcons"] = false,
			["BigBrotherAnnounceToRaid"] = false,
			["SpecialWarningFlashRepeat4"] = false,
			["CountdownVoice"] = "Corsica",
			["HideBossEmoteFrame"] = true,
			["DontPlayCountdowns"] = false,
			["SpecialWarningFlashRepeat2"] = false,
			["WarningFontShadow"] = true,
			["SpecialWarningFlashRepeat5"] = true,
			["AutoRespond"] = true,
			["HealthFrameGrowUp"] = false,
			["WarningDuration"] = 4,
			["RangeFrameFrames"] = "radar",
			["HUDTexture1"] = "highlight",
			["ShowBigBrotherOnCombatStart"] = false,
			["HUDSize3"] = 5,
			["HUDAlphaOverride"] = false,
			["SpecialWarningFlashAlph1"] = 0.3,
			["ShowDefeatMessage"] = true,
			["FilterTankSpec"] = true,
			["DontShowRangeFrame"] = false,
			["HUDSize4"] = 5,
			["InfoFrameShowSelf"] = false,
			["SpecialWarningFont"] = "Fonts\\FRIZQT__.TTF",
			["DisableStatusWhisper"] = false,
			["DontShowUserTimers"] = false,
			["DontShowBossTimers"] = false,
			["SpecialWarningFontStyle"] = "THICKOUTLINE",
			["HUDTexture4"] = "highlight",
			["HUDColorOverride"] = false,
			["HUDColor4"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
			},
			["WorldBossNearAlert"] = false,
			["HPFrameMaxEntries"] = 5,
			["RangeFrameLocked"] = false,
			["SpecialWarningFlashRepeatAmount"] = 2,
			["AutoAcceptFriendInvite"] = false,
			["WarningIconChat"] = true,
			["RaidWarningSound"] = "",
			["HideGuildChallengeUpdates"] = true,
			["DontShowCTCount"] = false,
			["DontSendYells"] = false,
			["HUDAlpha4"] = 0.5,
			["AdvancedAutologBosses"] = false,
			["SpecialWarningFlashRepeat1"] = false,
			["FilterInterrupt"] = true,
			["DontRestoreIcons"] = false,
			["Enabled"] = true,
			["HUDColor1"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
			},
			["BCTWMessageShown"] = false,
			["ArrowPosY"] = -150,
			["ShowGuildMessages"] = true,
			["SpecialWarningSound3"] = "Sound\\Creature\\KilJaeden\\KILJAEDEN02.ogg",
			["ShowWarningsInChat"] = true,
			["NewsMessageShown"] = 5,
			["StripServerName"] = true,
			["SpecialWarningSound"] = "Sound\\Spells\\PVPFlagTaken.ogg",
			["LatencyThreshold"] = 250,
			["HPFrameX"] = -50,
			["ForumsMessageShown"] = 15061,
			["AFKHealthWarning"] = false,
			["CATATWMessageShown"] = false,
			["HelpMessageVersion"] = 2,
	}
		end
		
	if IsAddOnLoaded('CompactRunes') then
		E:Print(L["A profile for CompactRunes has been created."])
		CompactRunesDB['profiles']['Skullflower'] = {
			["ooc_alpha"] = 0.5,
			["profileVersion"] = 2,
			["bars"] = {
				["BloodPlagueBar"] = {
				},
				["DarkTransformationBar"] = {
				},
				["EpidemicBar"] = {
					["enabled"] = false,
				},
				["RunicPowerBar"] = {
					["userPlaced"] = true,
					["overrideWidth"] = true,
					["x"] = 0,
					["width"] = 72,
					["y"] = -281,
				},
				["BloodBoilBar"] = {
				},
				["BoneShieldBar"] = {
					["enabled"] = true,
				},
			},
			["border"] = "Pixel",
			["texture"] = "SkullflowerLight",
			["procIcon"] = {
				["alphas"] = {
					["ooc"] = 0,
				},
			},
			["borderInd"] = "Pixel",
			["cdbars"] = {
				["Unholy"] = {
					["ordering"] = {
						"Summon Gargoyle", -- [1]
						"Dark Arbiter", -- [2]
						"Dark Transformation", -- [3]
						"Apocalypse", -- [4]
						"Anti-Magic Shell", -- [5]
						"Outbreak", -- [6]
						"Army of the Dead", -- [7]
						"Death and Decay", -- [8]
						"Defile", -- [9]
						"Mind Freeze", -- [10]
						"Asphyxiate", -- [11]
						"Corpse Shield", -- [12]
						"Blighted Rune Weapon", -- [13]
						"Soul Reaper", -- [14]
						"Icebound Fortitude", -- [15]
						"Thorasus, the Stone Heart of Draenor", -- [16]
						"Vial of Convulsive Shadows", -- [17]
						"Wraith Walk", -- [18]
					},
				},
				["Frost"] = {
					["ordering"] = {
						"Pillar of Frost", -- [1]
						"Glacial Advance", -- [2]
						"Obliteration", -- [3]
						"Horn of Winter", -- [4]
						"Anti-Magic Shell", -- [5]
						"Hungering Rune Weapon", -- [6]
						"Empower Rune Weapon", -- [7]
						"Remorseless Winter", -- [8]
						"Breath of Sindragosa", -- [9]
						"Mind Freeze", -- [10]
						"Icebound Fortitude", -- [11]
						"Thorasus, the Stone Heart of Draenor", -- [12]
						"Vial of Convulsive Shadows", -- [13]
						"Wraith Walk", -- [14]
						"Blinding Sleet", -- [15]
					},
				},
				["Blood"] = {
					["ordering"] = {
						"Rune Tap", -- [1]
						"Blood Tap", -- [2]
						"Vampiric Blood", -- [3]
						"Anti-Magic Shell", -- [4]
						"Dancing Rune Weapon", -- [5]
						"Death and Decay", -- [6]
						"Gorefiend's Grasp", -- [7]
						"Death's Caress", -- [8]
						"Consumption", -- [9]
						"Blood Mirror", -- [10]
						"Bonestorm", -- [11]
						"Mark of Blood", -- [12]
						"Anti-Magic Zone", -- [13]
						"Mind Freeze", -- [14]
						"Asphyxiate (Blood)", -- [15]
						"Sanctus, Sigil of the Unbroken", -- [16]
						"Vial of Convulsive Shadows", -- [17]
						"Wraith Walk", -- [18]
					},
				},
			},
			["enabled"] = {
				["enabled"] = {
					["Unholy"] = {
						["Festering Wound < 5"] = false,
					},
					["Frost"] = {
						["Empower Rune Weapon"] = false,
					},
					["Blood"] = {
						["Blood Tap"] = true,
						["Blood Boil"] = false,
					},
				},
				["borderInd"] = "Compact Runes",
				["border"] = "None",
				["profileVersion"] = 2,
				["Frost"] = {
					["Empower Rune Weapon"] = false,
					["Breath of Sindragosa"] = false,
				},
				["hideBlizzardFrames"] = true,
				["Unholy"] = {
					["Festering Wound < 5"] = false,
				},
				["priorityList"] = {
					["Unholy"] = {
						"Raise Dead", -- [1]
						"Summon Gargoyle", -- [2]
						"Apocalypse", -- [3]
						"Sudden Doom", -- [4]
						"Dark Transformation", -- [5]
						"Dark Succor", -- [6]
						"Necrosis Buff", -- [7]
						"Festering Wound < 5", -- [8]
						"Death and Decay", -- [9]
					},
				},
				["locked"] = true,
				["frame"] = {
					["y"] = -250,
					["x"] = 0,
				},
				["bars"] = {
					["BloodPlagueBar"] = {
					},
					["RunicPowerBar"] = {
					},
					["DarkTransformationBar"] = {
					},
					["EpidemicBar"] = {
					},
					["BloodBoilBar"] = {
					},
				},
				["cdbars"] = {
					["Unholy"] = {
						["ordering"] = {
							"Summon Gargoyle", -- [1]
							"Dark Arbiter", -- [2]
							"Dark Transformation", -- [3]
							"Apocalypse", -- [4]
							"Anti-Magic Shell", -- [5]
							"Outbreak", -- [6]
							"Army of the Dead", -- [7]
							"Death and Decay", -- [8]
							"Defile", -- [9]
							"Mind Freeze", -- [10]
							"Asphyxiate", -- [11]
							"Corpse Shield", -- [12]
							"Blighted Rune Weapon", -- [13]
							"Soul Reaper", -- [14]
							"Icebound Fortitude", -- [15]
							"Thorasus, the Stone Heart of Draenor", -- [16]
							"Vial of Convulsive Shadows", -- [17]
							"Wraith Walk", -- [18]
						},
					},
					["Frost"] = {
						["ordering"] = {
							"Pillar of Frost", -- [1]
							"Glacial Advance", -- [2]
							"Obliteration", -- [3]
							"Horn of Winter", -- [4]
							"Anti-Magic Shell", -- [5]
							"Hungering Rune Weapon", -- [6]
							"Empower Rune Weapon", -- [7]
							"Remorseless Winter", -- [8]
							"Breath of Sindragosa", -- [9]
							"Mind Freeze", -- [10]
							"Icebound Fortitude", -- [11]
							"Thorasus, the Stone Heart of Draenor", -- [12]
							"Vial of Convulsive Shadows", -- [13]
							"Wraith Walk", -- [14]
							"Blinding Sleet", -- [15]
						},
					},
					["Blood"] = {
						["ordering"] = {
							"Rune Tap", -- [1]
							"Blood Tap", -- [2]
							"Vampiric Blood", -- [3]
							"Anti-Magic Shell", -- [4]
							"Dancing Rune Weapon", -- [5]
							"Death and Decay", -- [6]
							"Gorefiend's Grasp", -- [7]
							"Death's Caress", -- [8]
							"Consumption", -- [9]
							"Blood Mirror", -- [10]
							"Bonestorm", -- [11]
							"Mark of Blood", -- [12]
							"Anti-Magic Zone", -- [13]
							"Mind Freeze", -- [14]
							"Asphyxiate (Blood)", -- [15]
							"Sanctus, Sigil of the Unbroken", -- [16]
							"Vial of Convulsive Shadows", -- [17]
							"Wraith Walk", -- [18]
						},
					},
				},
			},
			["frame"] = {
				["y"] = -250,
			},
		}
		end
		
		if IsAddOnLoaded('xCT+') then
			E:Print(L["A profile for xCT has been created."])
			xCTSavedDB['profiles']['Skullflower'] = {
			["frames"] = {
				["general"] = {
					["enabledFrame"] = false,
					["font"] = "Expressway",
					["colors"] = {
						["auras"] = {
							["colors"] = {
								["debuffsGained"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
								["buffsGained"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["buffsFaded"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["debuffsFaded"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
						["killingBlow"] = {
							["color"] = {
								0.2, -- [1]
								1, -- [2]
								0.2, -- [3]
							},
						},
						["combat"] = {
							["colors"] = {
								["combatLeaving"] = {
									["color"] = {
										0.1, -- [1]
										1, -- [2]
										0.1, -- [3]
									},
								},
								["combatEntering"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["interrupts"] = {
							["color"] = {
								1, -- [1]
								0.5, -- [2]
								0, -- [3]
							},
						},
						["reputation"] = {
							["colors"] = {
								["reputationGain"] = {
									["color"] = {
										0.1, -- [1]
										0.1, -- [2]
										1, -- [3]
									},
								},
								["reputationLoss"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["lowResources"] = {
							["colors"] = {
								["lowResourcesMana"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
								["lowResourcesHealth"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["honorGains"] = {
							["color"] = {
								0.1, -- [1]
								0.1, -- [2]
								1, -- [3]
							},
						},
						["dispells"] = {
							["colors"] = {
								["dispellBuffs"] = {
									["color"] = {
										0, -- [1]
										1, -- [2]
										0.5, -- [3]
									},
								},
								["dispellStolen"] = {
									["color"] = {
										0.31, -- [1]
										0.71, -- [2]
										1, -- [3]
									},
								},
								["dispellDebuffs"] = {
									["color"] = {
										1, -- [1]
										0, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
					},
					["fontOutline"] = "2OUTLINE",
				},
				["power"] = {
					["fontOutline"] = "2OUTLINE",
					["enabledFrame"] = false,
					["font"] = "Expressway",
				},
				["healing"] = {
					["enableRealmNames"] = false,
					["fontSize"] = 12,
					["showFriendlyHealers"] = false,
					["fontOutline"] = "2OUTLINE",
					["Width"] = 68,
					["Y"] = -18,
					["font"] = "Expressway",
					["colors"] = {
						["healingTakenCritical"] = {
							["color"] = {
								0.1, -- [1]
								1, -- [2]
								0.1, -- [3]
							},
						},
						["healingTaken"] = {
							["color"] = {
								0.1, -- [1]
								0.75, -- [2]
								0.1, -- [3]
							},
						},
						["healingTakenPeriodic"] = {
							["color"] = {
								0.1, -- [1]
								0.5, -- [2]
								0.1, -- [3]
							},
						},
						["shieldTaken"] = {
							["color"] = {
								0.6, -- [1]
								0.65, -- [2]
								1, -- [3]
							},
						},
						["healingTakenPeriodicCritical"] = {
							["color"] = {
								0.1, -- [1]
								0.5, -- [2]
								0.1, -- [3]
							},
						},
					},
					["Height"] = 218,
					["X"] = -109,
				},
				["outgoing"] = {
					["fontSize"] = 12,
					["fontOutline"] = "2OUTLINE",
					["Width"] = 122,
					["Y"] = 29,
					["font"] = "Expressway",
					["colors"] = {
						["genericDamage"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["healingSpells"] = {
							["colors"] = {
								["healingOut"] = {
									["color"] = {
										0.1, -- [1]
										0.75, -- [2]
										0.1, -- [3]
									},
								},
								["shieldOut"] = {
									["color"] = {
										0.6, -- [1]
										0.65, -- [2]
										1, -- [3]
									},
								},
								["healingOutPeriodic"] = {
									["color"] = {
										0.1, -- [1]
										0.5, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["spellSchools"] = {
							["colors"] = {
								["SpellSchool_Nature"] = {
									["color"] = {
										0.3, -- [1]
										1, -- [2]
										0.3, -- [3]
									},
								},
								["SpellSchool_Arcane"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Frost"] = {
									["color"] = {
										0.5, -- [1]
										1, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Physical"] = {
									["color"] = {
										1, -- [1]
										1, -- [2]
										0, -- [3]
									},
								},
								["SpellSchool_Shadow"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Holy"] = {
									["color"] = {
										1, -- [1]
										0.9, -- [2]
										0.5, -- [3]
									},
								},
								["SpellSchool_Fire"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										0, -- [3]
									},
								},
							},
						},
						["misstypesOut"] = {
							["color"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
							},
						},
					},
					["Height"] = 317,
					["X"] = 231,
				},
				["critical"] = {
					["fontSize"] = 12,
					["fontOutline"] = "2OUTLINE",
					["Width"] = 96,
					["Y"] = 29,
					["font"] = "Expressway",
					["colors"] = {
						["genericDamageCritical"] = {
							["color"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
							},
						},
						["healingSpells"] = {
							["colors"] = {
								["healingOutCritical"] = {
									["color"] = {
										0.1, -- [1]
										1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
					},
					["Height"] = 317,
					["X"] = 150,
				},
				["procs"] = {
					["fontOutline"] = "2OUTLINE",
					["font"] = "Expressway",
					["colors"] = {
						["spellReactive"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["spellProc"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
					},
					["enabledFrame"] = false,
				},
				["loot"] = {
					["enabledFrame"] = false,
					["fontOutline"] = "2OUTLINE",
					["font"] = "Expressway",
				},
				["class"] = {
					["font"] = "Expressway",
					["colors"] = {
						["comboPoints"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["comboPointsMax"] = {
							["color"] = {
								0, -- [1]
								0.82, -- [2]
								1, -- [3]
							},
						},
					},
					["enabledFrame"] = false,
					["fontOutline"] = "2OUTLINE",
				},
				["damage"] = {
					["fontSize"] = 12,
					["insertText"] = "bottom",
					["X"] = -210,
					["Width"] = 131,
					["Y"] = -18,
					["font"] = "Expressway",
					["colors"] = {
						["missTypesTaken"] = {
							["colors"] = {
								["missTypeBlock"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeMiss"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeImmune"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeDodge"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeParry"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeResist"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeEvade"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeAbsorb"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeDeflect"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeReflect"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
						["damageTakenCritical"] = {
							["color"] = {
								1, -- [1]
								0.1, -- [2]
								0.1, -- [3]
							},
						},
						["spellDamageTaken"] = {
							["color"] = {
								0.75, -- [1]
								0.3, -- [2]
								0.85, -- [3]
							},
						},
						["damageTaken"] = {
							["color"] = {
								0.75, -- [1]
								0.1, -- [2]
								0.1, -- [3]
							},
						},
						["spellDamageTakenCritical"] = {
							["color"] = {
								0.75, -- [1]
								0.3, -- [2]
								0.85, -- [3]
							},
						},
					},
					["Height"] = 218,
					["fontOutline"] = "2OUTLINE",
				},
			},
			
			}
		end
		
		if IsAddOnLoaded('DBM-Profiles') then
		E:Print(L["A profile for DBM has been created. Type /dbm, go to options and change the profile to Skullflower."])
			DeadlyBossModsDB['namespaces']['DeadlyBarTimers']['profiles']['Skullflower'] = {
				["DBM"] = {
						["EndColorG"] = 0,
						["HugeTimerY"] = 6.86094474792481,
						["HugeBarXOffset"] = 0,
						["Scale"] = 0.899999976158142,
						["EnlargeBarsPercent"] = 0.125,
						["HugeBarYOffset"] = 0,
						["HugeWidth"] = 200,
						["BarYOffset"] = 0,
						["TimerY"] = 9.27805233001709,
						["StartColorR"] = 1,
						["ExpandUpwards"] = true,
						["TimerPoint"] = "BOTTOM",
						["StartColorG"] = 0.701960784313726,
						["TimerX"] = -228.361145019531,
						["HugeTimerX"] = 270.277557373047,
						["EndColorR"] = 1,
						["Width"] = 183,
						["HugeTimerPoint"] = "BOTTOM",
						["HugeScale"] = 1,
						["FontSize"] = 10,
						["EnlargeBarsTime"] = 8,
						["StartColorB"] = 0,
						["Height"] = 23,
						["BarXOffset"] = 0,
						["EndColorB"] = 0,
					},
			}
			DeadlyBossModsDB['profiles']['Skullflower'] = {
				["SpecialWarningY"] = -33.8888549804688,
			["SpecialWarningFontCol"] = {
				nil, -- [1]
				0.956862745098039, -- [2]
				0.913725490196078, -- [3]
			},
			["WarningColors"] = {
				{
					["r"] = 0.411764705882353,
					["b"] = 0.941176470588235,
				}, -- [1]
				{
					["g"] = 0.949019607843137,
					["r"] = 0.949019607843137,
				}, -- [2]
				{
					["g"] = 0.501960784313726,
				}, -- [3]
				{
					["g"] = 0.101960784313725,
					["b"] = 0.101960784313725,
				}, -- [4]
			},
			["HPFrameY"] = -148.333389282227,
			["HPFrameX"] = 112.500061035156,
			["SpecialWarningFont"] = "InterfaceAddOnsElvUI_SkullflowermediaontsExpressway.ttf",
			["HPFramePoint"] = "LEFT",
			["LastRevision"] = 11873,
			["SpecialWarningX"] = 2.9166247844696,
			["SettingsMessageShown"] = true,
			["BugMessageShown"] = 1,
			["ForumsMessageShown"] = 11873,
		}
		end
			
		if IsAddOnLoaded('MikScrollingBattleText') then
			E:Print(L["A profile for MSBT has been created. Type /mbst to change the profile."])
			InstallStepComplete.message = L["AddOn profiles installed"]
			InstallStepComplete:Show()
			MSBTProfiles_SavedVars['profiles']['Skullflower'] = {
			["animationSpeed"] = 105,
			["abbreviateAbilities"] = true,
			["events"] = {
				["NOTIFICATION_MONEY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_LOOT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COOLDOWN"] = {
					["disabled"] = true,
				},
			},
			["hideNames"] = true,
			["scrollAreas"] = {
				["Static"] = {
					["direction"] = "Up",
					["critFontName"] = "Expressway",
					["normalOutlineIndex"] = 2,
					["critOutlineIndex"] = 2,
					["stickyDirection"] = "Up",
					["disabled"] = true,
					["normalFontName"] = "Expressway",
					["animationStyle"] = "Straight",
					["stickyAnimationStyle"] = "Static",
				},
				["Incoming"] = {
					["direction"] = "Up",
					["normalOutlineIndex"] = 2,
					["stickyBehavior"] = "MSBT_NORMAL",
					["offsetX"] = -200,
					["textAlignIndex"] = 1,
					["critFontName"] = "Expressway",
					["critOutlineIndex"] = 2,
					["animationSpeed"] = 110,
					["behavior"] = "MSBT_NORMAL",
					["critFontSize"] = 14,
					["stickyDirection"] = "Up",
					["normalFontSize"] = 12,
					["offsetY"] = -175,
					["normalFontName"] = "Expressway",
					["animationStyle"] = "Straight",
					["stickyAnimationStyle"] = "Static",
				},
				["Outgoing"] = {
					["critOutlineIndex"] = 2,
					["direction"] = "Up",
					["critFontName"] = "Expressway",
					["normalOutlineIndex"] = 2,
					["stickyBehavior"] = "MSBT_NORMAL",
					["normalFontSize"] = 12,
					["behavior"] = "MSBT_NORMAL",
					["critFontSize"] = 14,
					["stickyDirection"] = "Up",
					["offsetX"] = 200,
					["offsetY"] = -175,
					["textAlignIndex"] = 3,
					["normalFontName"] = "Expressway",
					["animationStyle"] = "Straight",
					["stickyAnimationStyle"] = "Static",
				},
				["Notification"] = {
					["stickyDirection"] = "Up",
					["critOutlineIndex"] = 2,
					["critFontName"] = "Expressway",
					["normalOutlineIndex"] = 2,
					["disabled"] = true,
					["normalFontName"] = "Expressway",
					["stickyAnimationStyle"] = "Static",
				},
			},
			["hideMergeTrailer"] = true,
			["creationVersion"] = "5.7.138",
		}
		end
	end
end

function SetProfilesToSkullflower()
	local LibStub = _G["LibStub"]
	local AceLibrary = _G["AceLibrary"]
	local Rock = _G["Rock"]
	
	local ls_ace = false
	-- Ace DB 3 check
	if LibStub then
		local AceDB = LibStub:GetLibrary("AceDB-3.0",true)
		if AceDB and AceDB.db_registry then
			for db in pairs(AceDB.db_registry) do
				if not db.parent then --db.sv is a ref to the saved vairable name
						if addon then
							if addon and db.sv == addon then
								db:SetProfile("Skullflower")
							end
						else
							db:SetProfile("Skullflower")
						end
					end
				end
			end
		end

end

local function InstallComplete()
	E.private.install_complete = E.version
	ReloadUI()
end
		
local function ResetAll()
	InstallNextButton:Disable()
	InstallPrevButton:Disable()
	InstallOption1Button:Hide()
	InstallOption1Button:SetScript("OnClick", nil)
	InstallOption1Button:SetText("")
	InstallOption2Button:Hide()
	InstallOption2Button:SetScript('OnClick', nil)
	InstallOption2Button:SetText('')
	InstallOption3Button:Hide()
	InstallOption3Button:SetScript('OnClick', nil)
	InstallOption3Button:SetText('')	
	InstallOption4Button:Hide()
	InstallOption4Button:SetScript('OnClick', nil)
	InstallOption4Button:SetText('')
	InstallOption5Button:Hide()
	InstallOption5Button:SetScript('OnClick', nil)
	InstallOption5Button:SetText('')
	InstallOption6Button:Hide()
	InstallOption6Button:SetScript('OnClick', nil)
	InstallOption6Button:SetText('')
	InstallOption7Button:Hide()
	InstallOption7Button:SetScript('OnClick', nil)
	InstallOption7Button:SetText('')
	InstallOption8Button:Hide()
	InstallOption8Button:SetScript('OnClick', nil)
	InstallOption8Button:SetText('')
	InstallOption9Button:Hide()
	InstallOption9Button:SetScript('OnClick', nil)
	InstallOption9Button:SetText('')
	InstallOption10Button:Hide()
	InstallOption10Button:SetScript('OnClick', nil)
	InstallOption10Button:SetText('')

	InstallBtn:Hide()
	InstallBtn:SetScript('OnClick', nil)
	InstallBtn:SetText('')
	FinishBtn:Hide()
	FinishBtn:SetScript('OnClick', nil)
	FinishBtn:SetText('')
	MoveBtn:Hide()
	MoveBtn:SetScript('OnClick', nil)
	MoveBtn:SetText('')
	ElvUIInstallFrame:Size(320, 64)
end

local function SetPage(PageNum)
	CURRENT_PAGE = PageNum
	ResetAll()
	
	local f = ElvUIInstallFrame
	
	if PageNum == 1 then
		InstallPrevButton:Hide()
		InstallPrevButton:Disable()
		InstallNextButton:Enable()
		InstallNextButton:Show()
	elseif PageNum == 2 then
		InstallPrevButton:Show()
		InstallPrevButton:Enable()
		InstallNextButton:Disable()
		InstallNextButton:Hide()
	end

	if PageNum == 1 then
		InstallBtn:Show()
		InstallBtn:SetScript('OnClick', function() E:SetupAddon('Skada'); SetProfilesToSkullflower(); E:SetupTheme('SkullflowerUI'); end)
		InstallBtn:SetText(L[''])	
		
		MoveBtn:Show()
		MoveBtn:SetScript("OnClick", function() E:ToggleConfigMode() end)
		MoveBtn:SetText(L[''])
		
		FinishBtn:Show()
		FinishBtn:SetText(L[''])
		FinishBtn:SetScript("OnClick", InstallComplete)	
	elseif PageNum == 2 then
		InstallBtn:Show()
		InstallBtn:SetScript('OnClick', function() E:SetupTheme('SkullflowerUI') E:SetupAddon('Skada') end)
		InstallBtn:SetText(L[''])	
		
		MoveBtn:Show()
		MoveBtn:SetScript("OnClick", function() E:ToggleConfigMode() end)
		MoveBtn:SetText(L[''])
		
		FinishBtn:Show()
		FinishBtn:SetText(L[''])
		FinishBtn:SetScript("OnClick", InstallComplete)	
		
		InstallOption1Button:Show()
		InstallOption1Button:SetScript('OnClick', function() E:SetupTheme('SkullflowerUI') end)
		InstallOption1Button:SetText(L['Reset Settings'])
		
		InstallOption2Button:Show()
		InstallOption2Button:SetScript('OnClick', function() E:SetupTheme('LightTexture') end)
		InstallOption2Button:SetText(L['Light Textures'])

		InstallOption3Button:Show()
		InstallOption3Button:SetScript('OnClick', function() E:SetupTheme('HealerFrames') end)
		InstallOption3Button:SetText(L['Healer Frames'])

		InstallOption4Button:Show()
		InstallOption4Button:SetScript('OnClick', function() E:SetupTheme('enableAuraBars') end)
		InstallOption4Button:SetText(L['Aura Bars'])

		InstallOption5Button:Show()
		InstallOption5Button:SetScript('OnClick', function() E:SetupTheme('squareBars') end)
		InstallOption5Button:SetText(L['Square Bars'])

		InstallOption6Button:Show()
		InstallOption6Button:SetScript('OnClick', function() E:SetupTheme('extraActionBars') end)
		InstallOption6Button:SetText(L['Extra ActionBars'])

		InstallOption7Button:Show()
		InstallOption7Button:SetScript('OnClick', function() E:SetupTheme('unitframeTexts') end)
		InstallOption7Button:SetText(L['UnitFrame Texts'])

		InstallOption8Button:Show()
		InstallOption8Button:SetScript('OnClick', function() E:SetupTheme('bossFrame') end)
		InstallOption8Button:SetText(L['Boss Frames'])

	end
end

local function NextPage()	
	if CURRENT_PAGE ~= MAX_PAGE then
		CURRENT_PAGE = CURRENT_PAGE + 1
		SetPage(CURRENT_PAGE)
	end
end

local function PreviousPage()
	if CURRENT_PAGE ~= 1 then
		CURRENT_PAGE = CURRENT_PAGE - 1
		SetPage(CURRENT_PAGE)
	end
end

--Install UI
function E:Install()	
	if not InstallStepComplete then
		local imsg = CreateFrame("Frame", "InstallStepComplete", E.UIParent)
		imsg:Size(142, 150)
		imsg:Point("TOP", 0, -190)
		imsg:Hide()
		imsg:SetScript('OnShow', function(self)
			if self.message then 
				self.text:SetText(self.message)
				UIFrameFadeOut(self, 3.5, 1, 0)
				E:Delay(4, function() self:Hide() end)	
				self.message = nil

				if imsg.firstShow == false then			
					imsg.firstShow = true
				end
			else
				self:Hide()
			end
		end)

		imsg.firstShow = false

		imsg.bg = imsg:CreateTexture(nil, 'BACKGROUND')
		imsg.bg:SetTexture([[Interface\LevelUp\LevelUpTex]])
		imsg.bg:SetPoint('BOTTOM')
		imsg.bg:Size(142, 150)
		imsg.bg:SetTexCoord(0.00195313, 0.63867188, 0.03710938, 0.23828125)
		imsg.bg:SetVertexColor(1, 1, 1, 0.6)

		imsg.lineBottom = imsg:CreateTexture(nil, 'BACKGROUND')
		imsg.lineBottom:SetDrawLayer('BACKGROUND', 2)
		imsg.lineBottom:SetTexture([[Interface\LevelUp\LevelUpTex]])
		imsg.lineBottom:SetPoint("BOTTOM")
		imsg.lineBottom:Size(206, 150)
		imsg.lineBottom:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)

		imsg.text = imsg:CreateFontString(nil, 'ARTWORK', 'GameFont_Gigantic')
		imsg.text:Point("BOTTOM", 0, 12)
		imsg.text:SetTextColor(1, 0.82, 0)
		imsg.text:SetJustifyH("CENTER")
		
	end

	--Create Frame
	if not ElvUIInstallFrame then
		local f = CreateFrame("Button", "ElvUIInstallFrame", E.UIParent)
		f.SetPage = SetPage
		f:Size(78, 150)
		f:SetTemplate("Transparent")
		f:SetPoint("TOP")
		
		f.InstallBtn = CreateFrame("Button", "InstallBtn", f, "UIPanelButtonTemplate")
		f.InstallBtn:StripTextures()
		f.InstallBtn:SetFrameStrata('MEDIUM')
		f.InstallBtn:Size(64, 64)
		f.InstallBtn:Point("LEFT", 0, 0)
		f.InstallBtn:SetText("")
		f.InstallBtn:SetAlpha(0)
		E.Skins:HandleButton(f.InstallBtn, true)
		
		f.Next = CreateFrame("Button", "InstallNextButton", f, "UIPanelButtonTemplate")
		f.Next:StripTextures()
		f.Next:SetTemplate("Default", true)
		f.Next:SetAlpha(0)
		f.Next:Size(64, 64)
		f.Next:Point('RIGHT', f.InstallBtn, 64, 0)
		f.Next:Disable()
		f.Next:SetScript("OnClick", NextPage)
		E.Skins:HandleButton(f.Next, true)
		
		f.Prev = CreateFrame("Button", "InstallPrevButton", f, "UIPanelButtonTemplate")
		f.Prev:StripTextures()
		f.Prev:SetTemplate("Default", true)
		f.Prev:SetAlpha(0)
		f.Prev:Size(64, 64)
		f.Prev:Point('RIGHT', f.InstallBtn, 64, 0)
		f.Prev:Disable()
		f.Prev:SetScript("OnClick", PreviousPage)
		E.Skins:HandleButton(f.Prev, true)
		
		f.MoveBtn = CreateFrame("Button", "MoveBtn", f, "UIPanelButtonTemplate")
		f.MoveBtn:StripTextures()
		f.MoveBtn:SetFrameStrata('MEDIUM')
		f.MoveBtn:Size(64, 64)
		f.MoveBtn:Point('RIGHT', f.Next, 64, 0)
		f.MoveBtn:SetText("")
		f.MoveBtn:SetAlpha(0)
		E.Skins:HandleButton(f.MoveBtn, true)
		
		f.FinishBtn = CreateFrame("Button", "FinishBtn", f, "UIPanelButtonTemplate")
		f.FinishBtn:StripTextures()
		f.FinishBtn:SetFrameStrata('MEDIUM')
		f.FinishBtn:Size(64, 64)
		f.FinishBtn:Point('RIGHT', f.MoveBtn, 64, 0)
		f.FinishBtn:SetText("")
		f.FinishBtn:SetAlpha(0)
		E.Skins:HandleButton(f.FinishBtn, true)
		
		local close = CreateFrame("Button", "InstallCloseButton", f, "UIPanelButtonTemplate")
		close:StripTextures()
		close:Point('RIGHT', f.FinishBtn, 64, 0)
		close:Size(64, 64)
		close:SetAlpha(0)
		close:SetScript("OnClick", function()
			f:Hide()
		end)
		E.Skins:HandleButton(close)
		
		f.Option1 = CreateFrame("Button", "InstallOption1Button", f, "UIPanelButtonTemplate")
		f.Option1:StripTextures()
		f.Option1:Size(100, 25)
		f.Option1:SetAlpha(1)
		f.Option1:Point('TOP', f.Prev, 'BOTTOM', -5, -1)
		f.Option1:SetText("")
		f.Option1:Hide()
		E.Skins:HandleButton(f.Option1, true)
		
		f.Option2 = CreateFrame("Button", "InstallOption2Button", f, "UIPanelButtonTemplate")
		f.Option2:StripTextures()
		f.Option2:Size(100, 25)
		f.Option2:SetAlpha(1)
		f.Option2:Point('TOP', f.Option1, 'BOTTOM', 0, -1)
		f.Option2:SetText("")
		f.Option2:Hide()
		E.Skins:HandleButton(f.Option2, true)		
		
		f.Option3 = CreateFrame("Button", "InstallOption3Button", f, "UIPanelButtonTemplate")
		f.Option3:StripTextures()
		f.Option3:Size(100, 25)
		f.Option3:SetAlpha(1)
		f.Option3:Point('TOP', f.Option2, 'BOTTOM', 0, -1)
		f.Option3:SetText("")
		f.Option3:Hide()
		E.Skins:HandleButton(f.Option3, true)	
		
		f.Option4 = CreateFrame("Button", "InstallOption4Button", f, "UIPanelButtonTemplate")
		f.Option4:StripTextures()
		f.Option4:Size(100, 25)
		f.Option4:SetAlpha(1)
		f.Option4:Point('TOP', f.Option3, 'BOTTOM', 0, -1)
		f.Option4:SetText("")
		E.Skins:HandleButton(f.Option4, true)
		
		f.Option5 = CreateFrame("Button", "InstallOption5Button", f, "UIPanelButtonTemplate")
		f.Option5:StripTextures()
		f.Option5:Size(100, 25)
		f.Option5:SetAlpha(1)
		f.Option5:Point('TOP', f.Option4, 'BOTTOM', 0, -1)
		f.Option5:SetText("")
		E.Skins:HandleButton(f.Option5, true)
		
		f.Option6 = CreateFrame("Button", "InstallOption6Button", f, "UIPanelButtonTemplate")
		f.Option6:StripTextures()
		f.Option6:Size(100, 25)
		f.Option6:SetAlpha(1)
		f.Option6:Point('TOP', f.Option5, 'BOTTOM', 0, -1)
		f.Option6:SetText("")
		E.Skins:HandleButton(f.Option6, true)
		
		f.Option7 = CreateFrame("Button", "InstallOption7Button", f, "UIPanelButtonTemplate")
		f.Option7:StripTextures()
		f.Option7:Size(100, 25)
		f.Option7:SetAlpha(1)
		f.Option7:Point('TOP', f.Option6, 'BOTTOM', 0, -1)
		f.Option7:SetText("")
		E.Skins:HandleButton(f.Option7, true)
		
		f.Option8 = CreateFrame("Button", "InstallOption8Button", f, "UIPanelButtonTemplate")
		f.Option8:StripTextures()
		f.Option8:Size(100, 25)
		f.Option8:SetAlpha(1)
		f.Option8:Point('TOP', f.Option7, 'BOTTOM', 0, -1)
		f.Option8:SetText("")
		E.Skins:HandleButton(f.Option8, true)
		
		f.Option9 = CreateFrame("Button", "InstallOption9Button", f, "UIPanelButtonTemplate")
		f.Option9:StripTextures()
		f.Option9:Size(100, 25)
		f.Option9:SetAlpha(1)
		f.Option9:Point('TOP', f.Option8, 'BOTTOM', 0, -1)
		f.Option9:SetText("")
		E.Skins:HandleButton(f.Option9, true)
		
		f.Option10 = CreateFrame("Button", "InstallOption10Button", f, "UIPanelButtonTemplate")
		f.Option10:StripTextures()
		f.Option10:Size(100, 25)
		f.Option10:SetAlpha(1)
		f.Option10:Point('TOP', f.Option9, 'BOTTOM', 0, -1)
		f.Option10:SetText("")
		E.Skins:HandleButton(f.Option10, true)

		f.SUF = f:CreateTexture('SUF_LOGO')
		f.SUF:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\SkullflowerUI.tga')
		f.SUF:Point('LEFT', "ElvUIInstallFrame", 34, -65)
		
		f.InstallBtn = f:CreateTexture('InstallButton')
		f.InstallBtn:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\install.tga')
		f.InstallBtn:Point('LEFT', "ElvUIInstallFrame", 0, 0)
		
		f.CustomBtn = f:CreateTexture('CustomButton')
		f.CustomBtn:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\customize.tga')
		f.CustomBtn:Point('RIGHT', f.InstallBtn, 64, 0)
		
		f.MoveBtn = f:CreateTexture('MoveButton')
		f.MoveBtn:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\move.tga')
		f.MoveBtn:Point('RIGHT', f.CustomBtn, 64, 0)
		
		f.FinishBtn = f:CreateTexture('FinishButton')
		f.FinishBtn:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\finish.tga')
		f.FinishBtn:Point('RIGHT', f.MoveBtn, 64, 0)
		
		f.CloseBtn = f:CreateTexture('CloseButton')
		f.CloseBtn:SetTexture('Interface\\AddOns\\ElvUI_Skullflower\\media\\textures\\close.tga')
		f.CloseBtn:Point('RIGHT', f.FinishBtn, 64, 0)

	end
	
	ElvUIInstallFrame:Show()
	NextPage()
end