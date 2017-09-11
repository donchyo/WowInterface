
BugGrabberDB = {
	["session"] = 1510,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TipTac' tried to call the protected function '<unnamed>:Hide()'.",
			["time"] = "2017/09/05 13:20:01",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Hide'\nInterface\\FrameXML\\WorldMapActionButton.lua:58: in function `Clear'\nInterface\\FrameXML\\WorldMapActionButton.lua:67: in function `Refresh'\nInterface\\FrameXML\\WorldMapActionButton.lua:19: in function `SetMapAreaID'\nInterface\\FrameXML\\WorldMapFrame.lua:1368: in function `WorldMapFrame_Update'\nInterface\\FrameXML\\WorldMapFrame.lua:2955: in function `WorldMapFrame_UpdateMap'\nInterface\\FrameXML\\WorldMapFrame.lua:460: in function <Interface\\FrameXML\\WorldMapFrame.lua:444>\n[C]: ?\n[C]: in function `SetMapToCurrentZone'\nInterface\\FrameXML\\WorldMapFrame.lua:390: in function <Interface\\FrameXML\\WorldMapFrame.lua:369>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2441: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2243: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2151: in function <Interface\\FrameXML\\UIParent.lua:2147>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:2935: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2919: in function `ToggleFrame'\nInterface\\FrameXML\\WorldMapFrame.lua:267: in function <Interface\\FrameXML\\WorldMapFrame.lua:239>\n[C]: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 1408,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\ErrorFilter\\ErrorFilter-v3.2.lua:888: attempt to call global 'PlaySoundKitID' (a nil value)",
			["time"] = "2017/09/05 13:49:49",
			["stack"] = "Interface\\AddOns\\ErrorFilter\\ErrorFilter-v3.2.lua:888: in function `OutputMessage'\nInterface\\AddOns\\ErrorFilter\\ErrorFilter-v3.2.lua:813: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:143: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:143>\n[string \"safecall Dispatcher[3]\"]:4: in function <[string \"safecall Dispatcher[3]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1413,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TipTac' tried to call the protected function '<unnamed>:ClearAllPoints()'.",
			["time"] = "2017/09/05 14:22:57",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\WorldMapFrame.lua:1565: in function `WorldMapFrame_SetOverlayLocation'\nInterface\\FrameXML\\WorldMapFrame.lua:1588: in function `WorldMapFrame_UpdateOverlayLocations'\nInterface\\FrameXML\\WorldMapFrame.lua:528: in function <Interface\\FrameXML\\WorldMapFrame.lua:444>\n[C]: ?",
			["session"] = 1414,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'oRA3' tried to call the protected function 'CompactPartyFrame:unusedFunc()'.",
			["time"] = "2017/09/05 16:12:36",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `unusedFunc'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:160: in function `CompactRaidFrameContainer_LayoutFrames'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:130: in function `CompactRaidFrameContainer_TryUpdate'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 1419,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:74: attempt to index global 'WorldMapFrameSizeDownButton' (a nil value)",
			["time"] = "2017/09/03 16:18:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:74: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1419,
			["counter"] = 328,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:1463: Usage: PlaySound(soundKitID, optional[\"SFX\",\"Music\",\"Ambience\", \"Dialog\" or \"Master\"], [forceNoDuplicates, runFinishCallback])",
			["time"] = "2017/09/03 16:19:49",
			["locals"] = "(*temporary) = \"TellMessage\"\n",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:1463: in function `ChatFrame_MessageEventHandler'\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:1491: in function `ChatFrame_OnEvent'\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:1497: in function <Interface\\AddOns\\ElvUI\\Modules\\chat\\chat.lua:1496>",
			["session"] = 1419,
			["counter"] = 47,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:69: attempt to index global 'WorldMapFrameSizeDownButton' (a nil value)",
			["time"] = "2017/09/03 16:18:36",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:69: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\Bartender4\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1419,
			["counter"] = 328,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:53: attempt to index global 'WorldMapFrameSizeUpButton' (a nil value)",
			["time"] = "2017/09/03 16:59:34",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:53: in function `SetLargeWorldMap'\nInterface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:166: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:180: in function <Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:179>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:155: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1276: in function `InitializeInitialModules'\nInterface\\AddOns\\ElvUI\\init.lua:92: in function <Interface\\AddOns\\ElvUI\\init.lua:42>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:9: in function <[string \"safecall Dispatcher[1]\"]:5>\n(tail call): ?\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:529: in function `InitializeAddon'\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:644: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:636>",
			["session"] = 1420,
			["counter"] = 49,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:64: attempt to index global 'WorldMapFrameSizeUpButton' (a nil value)",
			["time"] = "2017/09/03 16:59:41",
			["locals"] = "self = <table> {\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:398\n Enable = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:325\n NewModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:266\n EnableModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:363\n modules = <table> {\n }\n GetModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:241\n IterateEmbeds = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:473\n SecureHookScript = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:410\n defaultModuleLibraries = <table> {\n }\n TimeLeft = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:170\n RawHookScript = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:395\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:127\n CancelAllTimers = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:158\n GetName = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:310\n baseName = \"ElvUI\"\n CoordsTimer = <table> {\n }\n name = \"ElvUI_WorldMap\"\n Initialize = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:138\n IsEnabled = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:482\n orderedModules = <table> {\n }\n ScheduleTimer = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:92\n DisableModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:381\n PositionCoords = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:122\n UpdateCoords = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:93\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:79\n PLAYER_REGEN_DISABLED = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:73\n RegisterMessage = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n HookScript = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:366\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:68\n Disable = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:345\n IsHooked = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:493\n SetLargeWorldMap = <function> defined @Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:34\n CancelTimer = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:145\n IsModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:248\n defaultModuleState = true\n SetDefaultModuleState = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:418\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:200\n SendMessage = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:85\n SetEnabledState = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:455\n Hook = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:274\n enabledState = true\n UnregisterMessage = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n RegisterEvent = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n UnregisterAllMessages = <function> defined @Interface\\AddOns\\DataStore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:200\n hooks = <table> {\n }\n SetDefaultModulePrototype = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:440\n SecureHook = <functi",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:64: in function <Interface\\AddOns\\ElvUI\\Modules\\maps\\worldmap.lua:61>\n(tail call): ?\n[C]: in function `WorldMap_ToggleSizeDown'\nInterface\\FrameXML\\WorldMapFrame.lua:498: in function <Interface\\FrameXML\\WorldMapFrame.lua:444>\n[C]: ?",
			["session"] = 1420,
			["counter"] = 47,
		}, -- [9]
		{
			["message"] = "...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:1072: attempt to index global 'ReportPlayerNameDialog' (a nil value)",
			["time"] = "2017/09/03 16:59:44",
			["stack"] = "...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:1072: in function <...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:13>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:732: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:715>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:758: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:757>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:155: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1302: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1491: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:137: in function <Interface\\AddOns\\ElvUI\\init.lua:136>",
			["session"] = 1420,
			["counter"] = 47,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:40: doesn't exist!",
			["time"] = "2017/09/03 16:59:44",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:40: in function `HandleButton'\n...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\worldmap.lua:48: in function <...ace\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\worldmap.lua:8>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:732: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:715>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:758: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:757>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:155: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:155>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1302: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1491: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:137: in function <Interface\\AddOns\\ElvUI\\init.lua:136>",
			["session"] = 1420,
			["counter"] = 47,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:395: Usage: PlaySound(soundKitID, optional[\"SFX\",\"Music\",\"Ambience\", \"Dialog\" or \"Master\"], [forceNoDuplicates, runFinishCallback])",
			["time"] = "2017/09/03 16:59:44",
			["locals"] = "(*temporary) = \"igMainMenuOpen\"\n",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\core\\staticpopups.lua:395: in function <Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:394>\n[C]: in function `Show'\nInterface\\AddOns\\ElvUI\\core\\staticpopups.lua:964: in function `StaticPopup_Show'\nInterface\\AddOns\\ElvUI_SLE\\core\\core.lua:118: in function `Initialize'\nInterface\\AddOns\\ElvUI_SLE\\core\\core.lua:48: in function <Interface\\AddOns\\ElvUI_SLE\\core\\core.lua:47>",
			["session"] = 1420,
			["counter"] = 48,
		}, -- [12]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:513: Usage: PlaySound(soundKitID, optional[\"SFX\",\"Music\",\"Ambience\", \"Dialog\" or \"Master\"], [forceNoDuplicates, runFinishCallback])",
			["time"] = "2017/09/03 16:59:53",
			["locals"] = "(*temporary) = \"igMainMenuClose\"\n",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\core\\staticpopups.lua:513: in function <Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:512>\n[C]: in function `Hide'\nInterface\\AddOns\\ElvUI\\core\\staticpopups.lua:596: in function `StaticPopup_OnClick'\nInterface\\AddOns\\ElvUI\\core\\staticpopups.lua:1000: in function <Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:999>",
			["session"] = 1420,
			["counter"] = 47,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI_SLE' tried to call the protected function '<unnamed>:SetEnabled()'.",
			["time"] = "2017/09/06 16:17:19",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetEnabled'\nInterface\\FrameXML\\WorldMapActionButton.lua:96: in function `UpdateCooldown'\nInterface\\FrameXML\\WorldMapActionButton.lua:5: in function <Interface\\FrameXML\\WorldMapActionButton.lua:3>",
			["session"] = 1441,
			["counter"] = 1,
		}, -- [14]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'SmoothDurability' tried to call the protected function 'MultiBarLeft:originalShow()'.",
			["time"] = "2017/09/06 17:23:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `originalShow'\nInterface\\FrameXML\\FrameLocks.lua:97: in function <Interface\\FrameXML\\FrameLocks.lua:75>\nInterface\\FrameXML\\FrameLocks.lua:110: in function <Interface\\FrameXML\\FrameLocks.lua:103>\nInterface\\FrameXML\\FrameLocks.lua:132: in function `Show'\nInterface\\FrameXML\\MultiActionBars.lua:60: in function `MultiActionBar_Update'\nInterface\\FrameXML\\ActionBarController.lua:177: in function `ValidateActionBarTransition'\nInterface\\FrameXML\\ActionBarController.lua:145: in function `ActionBarController_UpdateAll'\nInterface\\FrameXML\\ActionBarController.lua:64: in function <Interface\\FrameXML\\ActionBarController.lua:53>",
			["session"] = 1441,
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\misc.lua:223: bad argument #1 to 'gsub' (string expected, got nil)",
			["time"] = "2017/09/06 17:42:52",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\misc\\misc.lua:223: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[8]\"]:4: in function <[string \"safecall Dispatcher[8]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[8]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1443,
			["counter"] = 1,
		}, -- [16]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI_SLE' tried to call the protected function '<unnamed>:Hide()'.",
			["time"] = "2017/09/07 19:09:05",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Hide'\nInterface\\FrameXML\\WorldMapActionButton.lua:58: in function `Clear'\nInterface\\FrameXML\\WorldMapActionButton.lua:67: in function `Refresh'\nInterface\\FrameXML\\WorldMapActionButton.lua:19: in function `SetMapAreaID'\nInterface\\FrameXML\\WorldMapFrame.lua:1368: in function `WorldMapFrame_Update'\nInterface\\FrameXML\\WorldMapFrame.lua:2955: in function `WorldMapFrame_UpdateMap'\nInterface\\FrameXML\\WorldMapFrame.lua:460: in function <Interface\\FrameXML\\WorldMapFrame.lua:444>\n[C]: ?\n[C]: in function `SetMapToCurrentZone'\nInterface\\FrameXML\\WorldMapFrame.lua:390: in function <Interface\\FrameXML\\WorldMapFrame.lua:369>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2441: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2243: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2151: in function <Interface\\FrameXML\\UIParent.lua:2147>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:2935: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2919: in function `ToggleFrame'\nInterface\\FrameXML\\WorldMapFrame.lua:267: in function <Interface\\FrameXML\\WorldMapFrame.lua:239>\n[C]: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 1456,
			["counter"] = 3,
		}, -- [17]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1094: attempt to index upvalue 'color' (a nil value)",
			["time"] = "2017/09/08 19:42:22",
			["stack"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1094: in function <...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1092>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0-70.lua:1173: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1061>\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0-70.lua:755: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:745>\n[C]: in function `EditMacro'\nInterface\\AddOns\\TalentMacros\\TalentMacros-v1.1.4.lua:184: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1462,
			["counter"] = 3,
		}, -- [18]
		{
			["message"] = "[string \"--[[ Error in ' Ckoudburst buff' ]]return f...\"]:3: attempt to compare nil with number",
			["time"] = "2017/09/06 11:05:02",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in ' Ckoudburst buff' ]]return f...\"]:3: in function <[string \"--[[ Error in ' Ckoudburst buff' ]]return f...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:392: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3335: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3331>",
			["session"] = 1463,
			["counter"] = 45,
		}, -- [19]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAurasOptions' tried to call the protected function 'CompactRaidGroup1:unusedFunc()'.",
			["time"] = "2017/09/08 21:49:24",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `unusedFunc'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:160: in function `CompactRaidFrameContainer_LayoutFrames'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:130: in function `CompactRaidFrameContainer_TryUpdate'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 1464,
			["counter"] = 1,
		}, -- [20]
		{
			["message"] = "[string \"--[[ Error in ' Overflowing' ]]return funct...\"]:3: attempt to compare nil with number",
			["time"] = "2017/09/09 00:01:09",
			["locals"] = "value = nil\n(*temporary) = 17\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"player\"\n(*temporary) = \"Overflow\"\n(*temporary) = \"attempt to compare nil with number\"\n",
			["stack"] = "[string \"--[[ Error in ' Overflowing' ]]return funct...\"]:3: in function <[string \"--[[ Error in ' Overflowing' ]]return funct...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:392: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3335: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3331>",
			["session"] = 1468,
			["counter"] = 88,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:2560: attempt to index field '?' (a nil value)",
			["time"] = "2017/09/09 23:01:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:2560: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:454: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3609: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3563>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3665: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3657>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3748: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\BuffTrigger.lua:748: in function `ScanAuras'\nInterface\\AddOns\\WeakAuras\\BuffTrigger.lua:1216: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1213>",
			["session"] = 1493,
			["counter"] = 2,
		}, -- [22]
		{
			["message"] = "[string \"--[[ Error in ' umbilicus eternus' ]]return...\"]:3: attempt to compare nil with number",
			["time"] = "2017/09/03 17:15:18",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in ' umbilicus eternus' ]]return...\"]:3: in function <[string \"--[[ Error in ' umbilicus eternus' ]]return...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:392: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3335: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3331>",
			["session"] = 1502,
			["counter"] = 442,
		}, -- [23]
		{
			["message"] = "[string \"--[[ Error in ' Caress of the tidemother' ]...\"]:3: attempt to perform arithmetic on local 'stacks' (a nil value)",
			["time"] = "2017/09/04 20:40:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in ' Caress of the tidemother' ]...\"]:3: in function <[string \"--[[ Error in ' Caress of the tidemother' ]...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:392: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3335: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3331>",
			["session"] = 1506,
			["counter"] = 996,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function '<unnamed>:ClearAllPoints()'.",
			["time"] = "2017/09/10 19:45:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\WorldMapFrame.lua:1565: in function `WorldMapFrame_SetOverlayLocation'\nInterface\\FrameXML\\WorldMapFrame.lua:1588: in function `WorldMapFrame_UpdateOverlayLocations'\nInterface\\FrameXML\\WorldMapFrame.lua:528: in function <Interface\\FrameXML\\WorldMapFrame.lua:444>\n[C]: ?",
			["session"] = 1506,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "[string \"--[[ Error in ' Ghost in the mist' ]]return...\"]:5: attempt to perform arithmetic on local 'stacks' (a nil value)",
			["time"] = "2017/09/04 20:53:44",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in ' Ghost in the mist' ]]return...\"]:5: in function <[string \"--[[ Error in ' Ghost in the mist' ]]return...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:392: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.4.21.lua:3335: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3331>",
			["session"] = 1506,
			["counter"] = 739,
		}, -- [26]
		{
			["message"] = "...terface\\AddOns\\DataStore_Quests\\DataStore_Quests-r43.lua:84: attempt to perform arithmetic on local 'value' (a string value)",
			["time"] = "2017/09/05 23:09:09",
			["locals"] = "value = \"0|Azsuna\"\npos = 0\nmask = 1\n(*temporary) = 2\n(*temporary) = \"attempt to perform arithmetic on local 'value' (a string value)\"\n",
			["stack"] = "...terface\\AddOns\\DataStore_Quests\\DataStore_Quests-r43.lua:84: in function <...terface\\AddOns\\DataStore_Quests\\DataStore_Quests.lua:81>\n...terface\\AddOns\\DataStore_Quests\\DataStore_Quests-r43.lua:402: in function <...terface\\AddOns\\DataStore_Quests\\DataStore_Quests.lua:398>\n...terface\\AddOns\\DataStore_Quests\\DataStore_Quests-r43.lua:549: in function <...terface\\AddOns\\DataStore_Quests\\DataStore_Quests.lua:536>\n(tail call): ?\nInterface\\AddOns\\Altoholic\\Altoholic-r183.lua:625: in function `ListCharsOnQuest'\nInterface\\AddOns\\Altoholic\\Tooltip.lua:658: in function <Interface\\AddOns\\Altoholic\\Tooltip.lua:657>\n[C]: ?\n[C]: ?\n[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:915: in function <Interface\\AddOns\\ElvUI\\Modules\\chat\\chat.lua:905>\nInterface\\AddOns\\!BugGrabber\\BugGrabber.lua:399: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:394>\n(tail call): ?\n...\n[C]: ?\nInterface\\AddOns\\oRA3\\modules\\Alerts.lua:724: in function <Interface\\AddOns\\oRA3\\modules\\Alerts.lua:722>\n...ace\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua:3573: in function <...ace\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua:3509>\n[C]: in function `SetItemRef'\nInterface\\AddOns\\ElvUI_SLE\\modules\\chat\\links.lua:191: in function <Interface\\AddOns\\ElvUI_SLE\\modules\\chat\\links.lua:166>\n(tail call): ?\nInterface\\FrameXML\\ChatFrame.lua:3468: in function <Interface\\FrameXML\\ChatFrame.lua:3467>\n[C]: ?\n[C]: in function `ChatFrame_OnHyperlinkShow'\n[string \"*:OnHyperlinkClick\"]:1: in function <[string \"*:OnHyperlinkClick\"]:1>",
			["session"] = 1509,
			["counter"] = 55,
		}, -- [27]
		{
			["message"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: attempt to index field 'Combat' (a nil value)",
			["time"] = "2017/09/03 16:59:34",
			["locals"] = "E = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:322\n resolution = \"1920x1080\"\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:145\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:366\n ExitVehicleShowFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1149\n StaticPopup_EscapePressed = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:411\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:678\n MassGuildKick = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:78\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\core\\movers.lua:469\n ScheduleTimer = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:92\n PriestColors = <table> {\n }\n RegisterModule = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1225\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:217\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:11\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:206\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\core\\pixelperfect.lua:18\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:96\n SetEnabledState = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:455\n Hook = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n Layout = <table> {\n }\n tDeleteItem = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:290\n LoadCommands = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:232\n HiddenFrame = <unnamed> {\n }\n NewModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:266\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:229\n MinimapWidth = 149.99989318848\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:472\n Truncate = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:77\n GetName = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:310\n StaticPopup_OnHide = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:512\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:722\n name = \"ElvUI\"\n WorldMap = <table> {\n }\n MinimapHeight = 149.99989318848\n Disable = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:345\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:174\n Unhook = <function> defined @Interface\\AddOns\\Bartender4\\libs\\AceHook-3.0\\AceHook-3.0.lua:418\n Print = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:177\n Install = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:855\n UnregisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1180\n LockedCVars = <table> {\n }\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:82\n RequestBGInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:419\n HealingClasses = <table> {\n }\n Tutorials = <function> defined @Interface\\AddOns\\ElvUI\\core\\tutorials.lua:115\n UpdateNudgeFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\config.lua:184\n GetCPUImpact = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:124\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:398\n ProfileTableToPluginFormat = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:807\n Blizzard = <table> {\n }\n wowbuild = 24931\n RegisteredInitialModules = <table> {\n }\n EnableModule = <function> defined @Interface\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:363\n unitFrameElements = <table> {\n }\n RegisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.",
			["stack"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: in main chunk",
			["session"] = 1510,
			["counter"] = 137,
		}, -- [28]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2017/09/03 21:27:03",
			["locals"] = "(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: ?\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:139>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:474: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:470>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?",
			["session"] = 1510,
			["counter"] = 63,
		}, -- [29]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:212: attempt to index field '?' (a nil value)",
			["time"] = "2017/09/10 21:24:27",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:212: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1510,
			["counter"] = 4,
		}, -- [30]
	},
}
