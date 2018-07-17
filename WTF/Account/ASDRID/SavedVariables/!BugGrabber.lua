
BugGrabberDB = {
	["session"] = 4932,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: attempt to perform arithmetic on local 'endTimeMS' (a nil value)",
			["time"] = "2018/07/08 17:38:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: in function <Interface\\AddOns\\SMT\\core\\core.lua:1031>",
			["session"] = 4829,
			["counter"] = 7,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar1:SetWidth()'.",
			["time"] = "2018/07/08 20:46:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\core\\toolkit.lua:61: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:163: in function `PositionAndSizeBar'\n[string \"local bars, E = {1,2,3,4,5,6}, unpack(ElvUI...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2069: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2767: in function <Interface\\FrameXML\\ChatFrame.lua:2760>\n[C]: ?\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:346: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:619: in function <Interface\\FrameXML\\SecureTemplates.lua:567>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 4838,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'BigWigs' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2018/07/08 20:46:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:10: in function <Interface\\FrameXML\\SecureStateDriver.lua:8>\n(tail call): ?\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:265: in function `PositionAndSizeBar'\n[string \"local bars, E = {1,2,3,4,5,6}, unpack(ElvUI...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2069: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2767: in function <Interface\\FrameXML\\ChatFrame.lua:2760>\n[C]: ?\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:346: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:619: in function <Interface\\FrameXML\\SecureTemplates.lua:567>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 4838,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'UseEquipmentSet()'.",
			["time"] = "2018/07/10 21:25:20",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `UseEquipmentSet'\nInterface\\FrameXML\\EquipmentManager.lua:320: in function `EquipmentManager_EquipSet'\n[string \"*:OnDoubleClick\"]:3: in function <[string \"*:OnDoubleClick\"]:1>",
			["session"] = 4838,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:585: attempt to index field 'UnitFrame' (a nil value)",
			["time"] = "2018/07/08 20:46:09",
			["locals"] = "token = \"nameplate7\"\nnpcID = 114626\nnameplate = NamePlate4 {\n 0 = <userdata>\n unitFrame = ElvUI_NamePlate4 {\n }\n}\n(*temporary) = <table> {\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = NamePlate4 {\n 0 = <userdata>\n unitFrame = ElvUI_NamePlate4 {\n }\n}\n(*temporary) = \"nameplate7mppProgress\"\n(*temporary) = nil\n(*temporary) = \"114626\"\n(*temporary) = \"attempt to index field 'UnitFrame' (a nil value)\"\ngetNPCID = <function> defined @Interface\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:139\nactiveNameplates = <table> {\n}\n",
			["stack"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:585: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:577>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:643: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:641>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:696: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:685>",
			["session"] = 4838,
			["counter"] = 3470,
		}, -- [5]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:520: attempt to index field 'UnitFrame' (a nil value)",
			["time"] = "2018/07/08 20:46:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:520: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:517>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:564: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:557>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:712: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:708>",
			["session"] = 4838,
			["counter"] = 24192,
		}, -- [6]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2018/07/11 18:44:54",
			["locals"] = "(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: ?\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:139>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:474: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:470>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?",
			["session"] = 4853,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in ' Argus - Soulburst' ]]return...\"]:12: attempt to concatenate local 'marker' (a nil value)",
			["time"] = "2018/07/11 23:28:09",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1281: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.12.lua:3556: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3550>",
			["session"] = 4859,
			["counter"] = 45,
		}, -- [8]
		{
			["message"] = "...ols\\Blizzard_TableInspectorAttributeDataProvider.lua:72: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2018/07/12 21:56:52",
			["locals"] = "(*temporary) = SimpleCheckout {\n 0 = <userdata>\n RightOutside = <unnamed> {\n }\n RightInside = <unnamed> {\n }\n Background = <unnamed> {\n }\n LeftInside = <unnamed> {\n }\n OnShow = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:54\n OnLoad = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:27\n BottomOutside = <unnamed> {\n }\n TopInside = <unnamed> {\n }\n LeftOutside = <unnamed> {\n }\n BottomInside = <unnamed> {\n }\n TopOutside = <unnamed> {\n }\n OnHide = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:61\n OnRequestNewSize = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:75\n OnEvent = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:31\n RecalculateSize = <function> defined @Interface\\AddOns\\Blizzard_StoreUI\\Blizzard_SimpleCheckout.lua:101\n CloseButton = <unnamed> {\n }\n}\n",
			["stack"] = "[C]: in function `GetDebugName'\n...ols\\Blizzard_TableInspectorAttributeDataProvider.lua:72: in function `RefreshData'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:73: in function `RefreshAllData'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:222: in function `InspectTable'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:108: in function `OpenParentDisplay'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:235: in function <...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:234>",
			["session"] = 4875,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua:549: <unnamed>:SetAllPoints(): trying to anchor to itself",
			["time"] = "2018/07/12 21:57:25",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n HighlightFrame = <function> defined @Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:577\n RetrieveAnchorHighlight = <function> defined @Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:565\n}\n(*temporary) = <unnamed> {\n 0 = <userdata>\n HighlightFrame = <function> defined @Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:577\n RetrieveAnchorHighlight = <function> defined @Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:565\n}\n",
			["stack"] = "[C]: in function `SetAllPoints'\n...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua:549: in function <...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:548>\n...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua:578: in function `HighlightFrame'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:165: in function `UpdateFocusedHighlight'\n...dOns\\Blizzard_DebugTools\\Blizzard_TableInspector.lua:206: in function `InspectTable'\n...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua:617: in function <...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:598>",
			["session"] = 4875,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\TidyPlates\\TidyPlatesCore.lua:938: attempt to index a nil value",
			["time"] = "2018/07/11 22:52:09",
			["locals"] = "self = \"NAME_PLATE_UNIT_ADDED\"\nunitid = \"nameplate3\"\nplate = NamePlate1 {\n carrier = TidyPlatesCarrier-1 {\n }\n unitFrame = ElvUI_NamePlate1 {\n }\n extended = <unnamed> {\n }\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index a nil value\"\nGetNamePlateForUnit = <function> defined =[C]:-1\nOnShowNameplate = <function> defined @Interface\\AddOns\\TidyPlates\\TidyPlatesCore.lua:334\n",
			["stack"] = "Interface\\AddOns\\TidyPlates\\TidyPlatesCore.lua:938: in function `?'\nInterface\\AddOns\\TidyPlates\\TidyPlatesCore.lua:907: in function <Interface\\AddOns\\TidyPlates\\TidyPlatesCore.lua:906>",
			["session"] = 4911,
			["counter"] = 185,
		}, -- [11]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1135: attempt to index upvalue 'color' (a nil value)",
			["time"] = "2018/07/08 20:07:52",
			["stack"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1135: in function <...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1133>\n[string \"safecall Dispatcher[2]\"]:4: in function <[string \"safecall Dispatcher[2]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:13: in function `?'\n...igs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:92: in function `Fire'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1202: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1086>\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:766: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:756>\n[C]: in function `EditMacro'\nInterface\\AddOns\\TalentMacros\\TalentMacros-v1.1.4.lua:184: in function `?'\n...igs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:147: in function <...igs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:147>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...igs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:92: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 4931,
			["counter"] = 84,
		}, -- [12]
	},
}
