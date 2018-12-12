
BugGrabberDB = {
	["session"] = 6400,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar1:SetWidth()'.",
			["time"] = "2018/12/01 20:25:36",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\core\\toolkit.lua:54: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:158: in function `PositionAndSizeBar'\n[string \"local bars, E = {1,2,3,4,5}, unpack(ElvUI);...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2158: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4734: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4396: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2884: in function <Interface\\FrameXML\\ChatFrame.lua:2877>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:623: in function <Interface\\FrameXML\\SecureTemplates.lua:571>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 6313,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'FriendGroups' tried to call the protected function 'MultiBarBottomRightButton1:Hide()'.",
			["time"] = "2018/12/02 12:32:51",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\FrameXML\\ActionButton.lua:494: in function `ActionButton_HideGrid'\nInterface\\FrameXML\\MultiActionBars.lua:128: in function `MultiActionBar_UpdateGrid'\nInterface\\FrameXML\\MultiActionBars.lua:110: in function `MultiActionBar_ShowAllGrids'\nInterface\\FrameXML\\SpellBookFrame.lua:194: in function <Interface\\FrameXML\\SpellBookFrame.lua:185>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2614: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2459: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2320: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3141: in function `ShowUIPanel'\nInterface\\FrameXML\\SpellBookFrame.lua:69: in function `ToggleSpellBook'\n[string \"TOGGLESPELLBOOK\"]:1: in function <[string \"TOGGLESPELLBOOK\"]:1>",
			["session"] = 6320,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2018/12/02 13:57:26",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2946: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2329: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3118: in function <Interface\\FrameXML\\UIParent.lua:3116>\n[C]: in function `UIParent_ManageFramePositions'\n...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:25: in function <...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:3>\n[C]: in function `layoutFunc'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:225: in function `UpdateWidgetSetContainerLayout'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:318: in function `ProcessWidgetSet'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:340: in function `UpdateAllWidgets'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:33: in function <...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:31>",
			["session"] = 6351,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'Search()'.",
			["time"] = "2018/12/02 13:03:38",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Search'\nInterface\\FrameXML\\LFGList.lua:1734: in function `LFGListSearchPanel_DoSearch'\nInterface\\FrameXML\\LFGList.lua:1895: in function <Interface\\FrameXML\\LFGList.lua:1889>\n[C]: ?\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-81.lua:6682: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:6678>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-81.lua:6775: in function `LFG_Search'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-81.lua:7180: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7154>",
			["session"] = 6356,
			["counter"] = 5,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RCLootCouncil' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2018/12/08 12:32:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2946: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2329: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3118: in function <Interface\\FrameXML\\UIParent.lua:3116>\n[C]: in function `UIParent_ManageFramePositions'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:20: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:19>\n[C]: in function `Hide'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:305: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:304>",
			["session"] = 6357,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:174: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/09 13:32:45",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:174: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6372,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2018/12/06 00:03:23",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1099>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 6373,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:58: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2018/12/09 14:09:22",
			["locals"] = "self = WorldQuestGroupFinderAddon {\n 0 = <userdata>\n}\nevent = \"ADDON_LOADED\"\naddon = \"WorldQuestGroupFinder\"\n(*temporary) = nil\n(*temporary) = \"WQGF\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\nBROADCAST_PREFIX = \"WQGF\"\n",
			["stack"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:58: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:56>\n(tail call): ?",
			["session"] = 6376,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:433: hooksecurefunc(): TaskPOI_OnClick is not a function",
			["time"] = "2018/12/09 14:09:52",
			["locals"] = "",
			["stack"] = "[C]: in function `hooksecurefunc'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:433: in function `SetHooks'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:73: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:69>\n(tail call): ?",
			["session"] = 6376,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:423: attempt to call global 'QuestUtils_CanUseAutoGroupFinder' (a nil value)",
			["time"] = "2018/12/09 14:09:52",
			["locals"] = "block = <unnamed> {\n 0 = <userdata>\n lines = <table> {\n }\n id = 52026\n HeaderButton = ObjectiveTrackerBlocksFrameHeader {\n }\n HeaderText = <unnamed> {\n }\n height = 0\n used = true\n lineWidth = 226.22222137451\n module = <table> {\n }\n}\nquestID = 52026\ncanFindGroup = false\n(*temporary) = nil\n(*temporary) = 52026\n(*temporary) = true\n(*temporary) = \"attempt to call global 'QuestUtils_CanUseAutoGroupFinder' (a nil value)\"\nblacklistedQuests = <table> {\n}\n",
			["stack"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:423: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:410>\n[C]: in function `QuestObjectiveSetupBlockButton_FindGroup'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:52: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:49>\n[C]: in function `SetBlockHeader'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:387: in function `func'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:209: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:205>\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:221: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:218>\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:374: in function `Update'\n...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:1073: in function <...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:1032>\n[C]: ?\n[C]: ?\n[C]: in function `ObjectiveTracker_Update'\n...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:753: in function <...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:669>",
			["session"] = 6376,
			["counter"] = 98,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'DialogKey' tried to call the protected function 'UIParent:EnableMouseWheel()'.",
			["time"] = "2018/12/02 14:21:38",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EnableMouseWheel'\nInterface\\AddOns\\DialogKey\\core.lua:62: in function <Interface\\AddOns\\DialogKey\\core.lua:62>\n[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:2598: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2678: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2324: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3157: in function `HideUIPanel'\nInterface\\FrameXML\\QuestFrame.lua:25: in function <Interface\\FrameXML\\QuestFrame.lua:23>\n[C]: in function `AcceptQuest'\nInterface\\FrameXML\\QuestFrame.lua:508: in function <Interface\\FrameXML\\QuestFrame.lua:501>\n[C]: in function `Click'\nInterface\\AddOns\\DialogKey\\core.lua:794: in function `ClickButton'\nInterface\\AddOns\\DialogKey\\core.lua:733: in function `ClickButtons'\nInterface\\AddOns\\DialogKey\\core.lua:683: in function <Interface\\AddOns\\DialogKey\\core.lua:630>",
			["session"] = 6377,
			["counter"] = 2,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\TipTac\\ttIcons.lua:17: Usage: GetRaidTargetIndex(unit)",
			["time"] = "2018/12/09 15:10:19",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `GetRaidTargetIndex'\nInterface\\AddOns\\TipTac\\ttIcons.lua:17: in function `SetIcon'\nInterface\\AddOns\\TipTac\\ttIcons.lua:67: in function `?'\nInterface\\AddOns\\TipTac\\ttCore.lua:300: in function `SendElementEvent'\nInterface\\AddOns\\TipTac\\ttCore.lua:676: in function `ApplyUnitAppearance'\nInterface\\AddOns\\TipTac\\ttCore.lua:821: in function <Interface\\AddOns\\TipTac\\ttCore.lua:782>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `SetUnit'\nInterface\\AddOns\\ElvUI\\Modules\\tooltip\\tooltip.lua:595: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6378,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'DialogKey' tried to call the protected function 'ConfirmAzeriteEmpoweredItemRespec()'.",
			["time"] = "2018/12/11 14:52:02",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ConfirmAzeriteEmpoweredItemRespec'\nInterface\\FrameXML\\StaticPopup.lua:1977: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:4973: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>\n[C]: in function `Click'\nInterface\\AddOns\\DialogKey\\core.lua:794: in function `ClickButton'\nInterface\\AddOns\\DialogKey\\core.lua:733: in function `ClickButtons'\nInterface\\AddOns\\DialogKey\\core.lua:683: in function <Interface\\AddOns\\DialogKey\\core.lua:630>",
			["session"] = 6394,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'FriendGroups' tried to call the protected function 'CompactRaidGroup4Member2:Show()'.",
			["time"] = "2018/12/11 15:12:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:350: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:283: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:117: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 6394,
			["counter"] = 1,
		}, -- [14]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'WeakAuras' tried to call the protected function 'TargetUnit()'.",
			["time"] = "2018/12/01 20:20:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `TargetUnit'\n[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:29: in function <[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:466: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.1-6-g69f7ce6.lua:4076: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4070>",
			["session"] = 6394,
			["counter"] = 4,
		}, -- [15]
		{
			["message"] = "[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:10: Usage: CheckInteractDistance(\"unit\", distIndex)",
			["time"] = "2018/12/01 20:20:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:10: in function `rangecheck'\n[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:30: in function <[string \"--[[ Error in '01-Cudgle of Gore' ]] return...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:466: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.1-6-g69f7ce6.lua:4076: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4070>",
			["session"] = 6394,
			["counter"] = 95,
		}, -- [16]
		{
			["message"] = "Interface\\FrameXML\\UnitFrame.lua:474: Usage: GameTooltip:SetUnit(\"unit\"[, hideStatus])",
			["time"] = "2018/12/11 15:30:19",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `SetUnit'\nInterface\\FrameXML\\UnitFrame.lua:474: in function `UnitFrame_UpdateTooltip'\nInterface\\FrameXML\\UnitFrame.lua:460: in function <Interface\\FrameXML\\UnitFrame.lua:447>",
			["session"] = 6394,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1169: attempt to index upvalue 'color' (a nil value)",
			["time"] = "2018/12/02 12:39:41",
			["stack"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1169: in function <...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1167>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1203: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1087>\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:762: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:752>\n[C]: in function `EditMacro'\nInterface\\AddOns\\TalentMacros\\TalentMacros-v1.1.6.lua:222: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6394,
			["counter"] = 17,
		}, -- [18]
		{
			["message"] = "[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:96: bad argument #1 to 'find' (string expected, got nil)",
			["time"] = "2018/12/01 21:57:42",
			["stack"] = "[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:96: in function <[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:517: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:659: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:821: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.1-6-g69f7ce6.lua:1796: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.1-6-g69f7ce6.lua:1662: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.1-6-g69f7ce6.lua:1732: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1730>",
			["session"] = 6396,
			["counter"] = 35,
		}, -- [19]
		{
			["message"] = "[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:41: Usage: UnitDebuff(\"unit\", [index][, \"filter\"])",
			["time"] = "2018/12/01 20:09:08",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:41: in function <[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:622: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:684: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>",
			["session"] = 6396,
			["counter"] = 1786,
		}, -- [20]
		{
			["message"] = "...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:417: attempt to index field 'CloseButtonBorder' (a nil value)",
			["time"] = "2018/12/12 19:23:04",
			["stack"] = "...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:417: in function <...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\garrison.lua:14>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1257: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:639: in function `Garrison_LoadUI'\nInterface\\FrameXML\\GarrisonBaseUtils.lua:266: in function `ShowGarrisonLandingPage'\nInterface\\FrameXML\\Minimap.lua:625: in function `GarrisonLandingPage_Toggle'\nInterface\\FrameXML\\Minimap.lua:618: in function <Interface\\FrameXML\\Minimap.lua:617>",
			["session"] = 6398,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "...face\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\Azerite.lua:18: attempt to index global 'AzeriteEmpoweredItemUIPortraitFrame' (a nil value)",
			["time"] = "2018/12/12 19:26:27",
			["stack"] = "...face\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\Azerite.lua:18: in function <...face\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\Azerite.lua:12>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1257: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:1054: in function `OpenAzeriteEmpoweredItemUIFromLink'\nInterface\\FrameXML\\ItemButtonTemplate.lua:159: in function <Interface\\FrameXML\\ItemButtonTemplate.lua:135>\n(tail call): ?\n(tail call): ?\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 6398,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: attempt to index field 'Combat' (a nil value)",
			["time"] = "2018/12/01 20:12:02",
			["locals"] = "E = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:364\n privateVars = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:423\n ExitVehicleShowFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1126\n StaticPopup_EscapePressed = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:545\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:654\n MassGuildKick = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:78\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\core\\movers.lua:471\n ScheduleTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:94\n PriestColors = <table> {\n }\n RegisterModule = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1275\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:164\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:11\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:210\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\core\\pixelperfect.lua:50\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:125\n SetEnabledState = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:455\n Hook = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n Layout = <table> {\n }\n tDeleteItem = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:290\n LoadCommands = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:220\n UnregisterEventForObject = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1224\n HiddenFrame = <unnamed> {\n }\n NewModule = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:266\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:229\n MinimapWidth = 176\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:606\n Truncate = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:106\n UpdateBackdropColors = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:468\n TimeThreshold = 3\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:691\n name = \"ElvUI\"\n WorldMap = <table> {\n }\n MinimapHeight = 176\n Disable = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:345\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:174\n isMacClient = false\n Print = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:182\n Install = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:799\n UnregisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1157\n LockedCVars = <table> {\n }\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:111\n RegisterPetBattleHideFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1073\n HealingClasses = <table> {\n }\n loadedtime = 947820.224\n Tutorials = <function> defined @Interface\\AddOns\\ElvUI\\core\\tutorials.lua:115\n UpdateNudgeFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\config.lua:189\n GetCPUImpact = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:124\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:398\n ProfileTableToPluginFormat = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:775\n Blizzard = <table> {\n }\n wowbuild = 28153\n RegisteredInitialModules = <table> {\n }\n EnableModule = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:363\n unitFrameElements = <table> {\n }\n RegisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1134\n RawHookScript = <function> def",
			["stack"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: in main chunk",
			["session"] = 6400,
			["counter"] = 90,
		}, -- [23]
		{
			["message"] = "Interface\\AddOns\\Plater\\Plater-1.nil.lua:4915: hooksecurefunc(): SetupClassNameplateBar is not a function",
			["time"] = "2018/12/12 19:20:53",
			["stack"] = "Interface\\AddOns\\Plater\\Plater-1.nil.lua:4915: in function <Interface\\AddOns\\Plater\\Plater.lua:4378>\n[C]: in function `xpcall'\nInterface\\AddOns\\Plater\\libs\\DF\\addon.lua:55: in function <Interface\\AddOns\\Plater\\libs\\DF\\addon.lua:15>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:9: in function <[string \"safecall Dispatcher[1]\"]:5>\n(tail call): ?\n...AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0-12.lua:529: in function `InitializeAddon'\n...AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0-12.lua:644: in function <...AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:636>",
			["session"] = 6400,
			["counter"] = 3,
		}, -- [24]
		{
			["message"] = "(null)",
			["session"] = 6400,
			["time"] = "2018/12/01 20:12:16",
			["counter"] = 270,
		}, -- [25]
		{
			["message"] = "...ns\\ElvUI\\Modules\\skins\\blizzard\\ScrappingMachine.lua:21: attempt to index field 'LeftSeparator' (a nil value)",
			["time"] = "2018/12/12 19:21:09",
			["stack"] = "...ns\\ElvUI\\Modules\\skins\\blizzard\\ScrappingMachine.lua:21: in function <...ns\\ElvUI\\Modules\\skins\\blizzard\\ScrappingMachine.lua:15>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1353: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1344>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1387: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1386>\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:155: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1352: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1574: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:152: in function <Interface\\AddOns\\ElvUI\\init.lua:151>",
			["session"] = 6400,
			["counter"] = 3,
		}, -- [26]
		{
			["message"] = "...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:20: attempt to index global 'DressUpFramePortraitFrame' (a nil value)",
			["time"] = "2018/12/12 19:21:09",
			["stack"] = "...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:20: in function <...AddOns\\ElvUI\\Modules\\skins\\blizzard\\dressingroom.lua:12>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1361: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1344>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1387: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1386>\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:155: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1352: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1574: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:152: in function <Interface\\AddOns\\ElvUI\\init.lua:151>",
			["session"] = 6400,
			["counter"] = 3,
		}, -- [27]
		{
			["message"] = "...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:31: attempt to index global 'PVEFrameTitleBg' (a nil value)",
			["time"] = "2018/12/12 19:21:09",
			["stack"] = "...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:31: in function <...nterface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\lfg.lua:23>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1361: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1344>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1387: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1386>\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:155: in function <...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...dia\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1352: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1574: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:152: in function <Interface\\AddOns\\ElvUI\\init.lua:151>",
			["session"] = 6400,
			["counter"] = 3,
		}, -- [28]
	},
}
