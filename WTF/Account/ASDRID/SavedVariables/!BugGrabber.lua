
BugGrabberDB = {
	["session"] = 4586,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\oRA3\\modules\\Alerts.lua:550: attempt to concatenate local 'extraSpell' (a nil value)",
			["time"] = "2018/04/28 21:47:49",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\oRA3\\modules\\Alerts.lua:550: in function <Interface\\AddOns\\oRA3\\modules\\Alerts.lua:549>\n(tail call): ?",
			["session"] = 4276,
			["counter"] = 5,
		}, -- [1]
		{
			["message"] = "[string \"--[[ Error in ' Argus - Soulburst' ]]return...\"]:12: attempt to concatenate local 'marker' (a nil value)",
			["time"] = "2018/04/29 20:20:23",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in ' Argus - Soulburst' ]]return...\"]:12: in function <[string \"--[[ Error in ' Argus - Soulburst' ]]return...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1278: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:3481: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3477>",
			["session"] = 4285,
			["counter"] = 690,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\DeathNote\\DataCapture.lua:221: attempt to perform arithmetic on field 'max_deaths' (a nil value)",
			["time"] = "2018/04/30 20:12:46",
			["stack"] = "Interface\\AddOns\\DeathNote\\DataCapture.lua:221: in function `CleanData'\nInterface\\AddOns\\DeathNote\\DataCapture.lua:366: in function `?'\n...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...xternal\\Wildpants\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...xternal\\Wildpants\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 4294,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\DeathNote\\DataCapture.lua:240: attempt to perform arithmetic on local 'death_time' (a nil value)",
			["time"] = "2018/04/30 20:49:45",
			["stack"] = "Interface\\AddOns\\DeathNote\\DataCapture.lua:240: in function `CleanData'\nInterface\\AddOns\\DeathNote\\DataCapture.lua:366: in function `?'\n...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...nts\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...xternal\\Wildpants\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...xternal\\Wildpants\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 4296,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"--[[ Error in ' Resto Shaman Manabar' ]]ret...\"]:18: attempt to call global 'toString' (a nil value)",
			["time"] = "2018/04/30 21:32:23",
			["locals"] = "_ = 1100000\n_ = 1100000\nprogress = 1100000\nr = <unnamed> {\n overlays = <table> {\n }\n xOffset = 112\n adjustedMax = false\n Expand = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:468\n yOffset = 36\n anchorPoint = \"CENTER\"\n SetValueFromCustomValueFunc = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:334\n iconFrame = <unnamed> {\n }\n icon = <unnamed> {\n }\n SetOffset = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:198\n SendChat = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:157\n SetInverse = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1499\n toShow = false\n SetTime = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1405\n SetTimerColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1466\n useAuto = false\n bar = <unnamed> {\n }\n UpdateCustomText = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1275\n Color = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1136\n cloneId = \"\"\n stacks = <unnamed> {\n }\n relativePoint = \"CENTER\"\n SoundPlay = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:144\n SetIconColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1430\n color_b = 1\n scaley = 1\n color_r = 0\n SetXOffset = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:207\n text3 = <unnamed> {\n }\n SetRegionWidth = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1489\n state = <table> {\n }\n SetStacksColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1470\n SetBackdropColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1456\n RunCode = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:161\n GetYOffset = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:219\n values = <table> {\n }\n SetOverlayColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1512\n duration = 1100000\n adjustedMin = false\n expirationTime = 1100000\n GetXOffset = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:215\n SetYOffset = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:211\n color_g = 0\n SetAnchor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:185\n backdropInFront = false\n text = <unnamed> {\n }\n Collapse = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:449\n stickyDuration = false\n SetDurationInfo = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:341\n SetTimerSize = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1479\n SetName = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1381\n SetOrientation = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1507\n color_a = 1\n SetRegionHeight = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1494\n SetBackgroundColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1434\n SetOffsetAnim = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:223\n SetStacksSize = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1484\n generatedSetDurationInfo = true\n SetTextSize = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1474\n SetSparkColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1438\n SetSparkHeight = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1442\n SetBorderColor = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1450\n xOffsetAnim = 0\n yOffsetAnim = 0\n SetAdditionalProgress = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1420\n borderInFront = true\n SoundRepeatStop = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\Regi",
			["stack"] = "[string \"--[[ Error in ' Resto Shaman Manabar' ]]ret...\"]:18: in function <[string \"--[[ Error in ' Resto Shaman Manabar' ]]ret...\"]:1>\nInterface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1278: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:3752: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3712>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:3818: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3810>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:3901: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:617: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:1483: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:1526: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:1194: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.10.lua:1144: in function `Resume'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.10.lua:1361: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1338>",
			["session"] = 4301,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestTracker' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2018/05/05 17:22:34",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetTargetClampingInsets'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:242: in function `SetupClassNameplateBars'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:87: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:44: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 4347,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: attempt to index field 'Combat' (a nil value)",
			["time"] = "2018/05/07 19:04:23",
			["locals"] = "E = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:349\n resolution = \"1920x1080\"\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:145\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:393\n ExitVehicleShowFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1136\n StaticPopup_EscapePressed = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:495\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:675\n MassGuildKick = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:77\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\core\\movers.lua:471\n ScheduleTimer = <function> defined @Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:92\n PriestColors = <table> {\n }\n RegisterModule = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1212\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:217\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:11\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:205\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\core\\pixelperfect.lua:37\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:117\n SetEnabledState = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:455\n Hook = <function> defined @Interface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n Layout = <table> {\n }\n tDeleteItem = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:290\n LoadCommands = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:231\n HiddenFrame = <unnamed> {\n }\n NewModule = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:266\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:229\n MinimapWidth = 149.99989318848\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:556\n Truncate = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:98\n GetName = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:310\n StaticPopup_OnHide = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:596\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:712\n name = \"ElvUI\"\n WorldMap = <table> {\n }\n MinimapHeight = 149.99989318848\n Disable = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:345\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:174\n isMacClient = false\n Print = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:179\n Install = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:848\n UnregisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1167\n LockedCVars = <table> {\n }\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:103\n RequestBGInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:421\n HealingClasses = <table> {\n }\n loadedtime = 765255.58\n Tutorials = <function> defined @Interface\\AddOns\\ElvUI\\core\\tutorials.lua:115\n UpdateNudgeFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\config.lua:189\n GetCPUImpact = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:123\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:398\n ProfileTableToPluginFormat = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:796\n Blizzard = <table> {\n }\n wowbuild = 26365\n RegisteredInitialModules = <table> {\n }\n EnableModule = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:363\n unitFrameElements = <table> {\n }\n valueColorUpdateFuncs = <table> {\n }\n RawHookScript = <function> defined @Interface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0.lua:395\n StaticPopup_OnEvent = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:778\n Up",
			["stack"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: in main chunk",
			["session"] = 4378,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in ' kingsbane cooldown' ]]retur...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4382,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "[string \"--[[ Error in ' kingsbane cooldown u' ]]ret...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4382,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "[string \"--[[ Error in ' Toxic Blade' ]]return funct...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4382,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "[string \"--[[ Error in ' cloak of shadows cooldown  ...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4382,
			["counter"] = 2,
		}, -- [11]
		{
			["message"] = "[string \"--[[ Error in ' cloak of shadows cooldown u...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4382,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[string \"--[[ Error in ' missing poison' ]]return   ...\"]:2: attempt to perform arithmetic on local 'progress' (a nil value)",
			["time"] = "2018/05/08 18:14:04",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:2806: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2733>",
			["session"] = 4382,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "[string \"--[[ Error in ' Rogue energy ' ]]return fun...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:14:13",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:621: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:611: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:666: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:658>",
			["session"] = 4382,
			["counter"] = 5,
		}, -- [14]
		{
			["message"] = "[string \"--[[ Error in ' DKRunicPower' ]]return func...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:15:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4383,
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "[string \"--[[ Error in ' dancing rune weapon ' ]]ret...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:15:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4383,
			["counter"] = 2,
		}, -- [16]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1040: attempt to index global 'C_SpecializationInfo' (a nil value)",
			["time"] = "2018/05/08 18:13:52",
			["locals"] = "_ = \"Rogue\"\nplayer_class = \"ROGUE\"\nspec = 1\nformatTalent = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1035\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'C_SpecializationInfo' (a nil value)\"\npvpTalentsInitialized = false\nUnitClass = <function> defined =[C]:-1\nGetSpecialization = <function> defined =[C]:-1\nWeakAuras = <table> {\n SetAuraVisibility = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:295\n GetRuneCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1369\n frame_strata_types = <table> {\n }\n DisplayToString = <function> defined @Interface\\AddOns\\WeakAuras\\Transmission.lua:461\n combat_event_type = <table> {\n }\n regions = <table> {\n }\n ShowOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:338\n CheckItemSlotCooldowns = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1734\n duration_types = <table> {\n }\n EnsureClone = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2551\n debug = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:245\n CanShowNameInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3237\n tutorials = <table> {\n }\n pAdd = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2403\n regionOptions = <table> {\n }\n IsRegisteredForCustomTextUpdates = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3530\n CreateEncounterTable = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1266\n animations = <table> {\n }\n TenchInit = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2318\n regionTypes = <table> {\n }\n absorb_modes = <table> {\n }\n miss_types = <table> {\n }\n GetGCDInfo = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1420\n faction_group = <table> {\n }\n OpenOptions = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:74\n autoeventend_types = <table> {\n }\n CanGroupShowWithZero = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3119\n talent_types = <table> {\n }\n GetSpellCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1377\n LoadFunction = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:454\n circular_group_constant_factor_types = <table> {\n }\n GetAuraTooltipInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3350\n events = <table> {\n }\n AddManyFromAddons = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1838\n WatchForMounts = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2386\n spec_types_3 = <table> {\n }\n HideOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:342\n IsImporting = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1147\n blend_types = <table> {\n }\n text_automatic_width = <table> {\n }\n GetPolarCoordinates = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\DynamicGroup.lua:41\n GetDynamicIconCache = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3658\n custom_trigger_types = <table> {\n }\n LoadEncounterInitScripts = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1278\n CollapseAllClones = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2577\n partyUnits = <table> {\n }\n TimerTick = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:325\n IsSpellInRange = <function> defined @Interface\\AddOns\\WeakAuras\\Prototypes.lua:22\n SetDynamicIconCache = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3653\n text_rotate_types = <table> {\n }\n UpdateMouseoverTooltip = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3300\n spec_types = <table> {\n }\n timers = <table> {\n }\n RegisterCustomTextUpdates = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3521\n anim_color_types = <table> {\n }\n loaded = <table> {\n }\n Convert = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.",
			["stack"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1040: in function `CreatePvPTalentCache'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1127: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 6,
		}, -- [17]
		{
			["message"] = "[string \"--[[ Error in ' Rune Tap' ]]return function...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:16:54",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 2,
		}, -- [18]
		{
			["message"] = "[string \"--[[ Error in ' mind freeze ' ]]return func...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:15:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 4,
		}, -- [19]
		{
			["message"] = "[string \"--[[ Error in ' anti magic shell' ]]return ...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:16:54",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 2,
		}, -- [20]
		{
			["message"] = "[string \"--[[ Error in ' gorefiends grasp' ]]return ...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:15:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 4,
		}, -- [21]
		{
			["message"] = "[string \"--[[ Error in ' wraith walk cooldown' ]]ret...\"]:12: attempt to index local 'state' (a nil value)",
			["time"] = "2018/05/08 18:15:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:528: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:502>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:641: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1493: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1536: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1222: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1172: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:1120: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1071>",
			["session"] = 4384,
			["counter"] = 3,
		}, -- [22]
		{
			["message"] = "[string \"--[[ Error in ' Speed set dk' ]]return     ...\"]:2: attempt to perform arithmetic on local 'progress' (a nil value)",
			["time"] = "2018/05/08 18:17:02",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:2806: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2733>",
			["session"] = 4384,
			["counter"] = 9,
		}, -- [23]
		{
			["message"] = "[string \"--[[ Error in ' Coins' ]]return     functio...\"]:2: attempt to perform arithmetic on local 'progress' (a nil value)",
			["time"] = "2018/05/08 18:14:04",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:2800: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2733>",
			["session"] = 4384,
			["counter"] = 291,
		}, -- [24]
		{
			["message"] = "[string \"--[[ Error in ' Druid Solar_Beam' ]]return ...\"]:2: attempt to perform arithmetic on local 'progress' (a nil value)",
			["time"] = "2018/05/08 18:17:05",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-8.0-beta4.lua:2800: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2733>",
			["session"] = 4384,
			["counter"] = 3,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:596: attempt to call upvalue 'CombatLogGetCurrentEventInfo' (a nil value)",
			["time"] = "2018/05/08 18:14:04",
			["locals"] = "event = \"COMBAT_LOG_EVENT_UNFILTERED\"\narg1 = nil\narg2 = nil\nevent_list = <table> {\n SPELL_AURA_APPLIED = <table> {\n }\n SPELL_AURA_REMOVED = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = \"attempt to call upvalue 'CombatLogGetCurrentEventInfo' (a nil value)\"\nloaded_events = <table> {\n SPELL_COOLDOWN_STARTED = <table> {\n }\n ITEM_SLOT_COOLDOWN_READY = <table> {\n }\n SPELL_COOLDOWN_CHANGED = <table> {\n }\n SEPHUZ_OFF_CD = <table> {\n }\n ITEM_SLOT_COOLDOWN_ITEM_CHANGED = <table> {\n }\n PLAYER_EQUIPMENT_CHANGED = <table> {\n }\n ITEM_SLOT_COOLDOWN_CHANGED = <table> {\n }\n QUEST_TURNED_IN = <table> {\n }\n ITEM_SLOT_COOLDOWN_STARTED = <table> {\n }\n SEPHUZ_ON_CD = <table> {\n }\n UNIT_POWER_FREQUENT = <table> {\n }\n EQUIPMENT_SWAP_FINISHED = <table> {\n }\n COMBAT_LOG_EVENT_UNFILTERED_CUSTOM = <table> {\n }\n FRAME_UPDATE = <table> {\n }\n COMBAT_LOG_EVENT_UNFILTERED = <table> {\n }\n UNIT_DISPLAYPOWER = <table> {\n }\n CONDITIONS_CHECK = <table> {\n }\n UNIT_INVENTORY_CHANGED = <table> {\n }\n PLAYER_TALENT_UPDATE = <table> {\n }\n PLAYER_LOOT_SPEC_UPDATED = <table> {\n }\n PLAYER_ENTERING_WORLD = <table> {\n }\n ITEM_COOLDOWN_STARTED = <table> {\n }\n ITEM_COOLDOWN_CHANGED = <table> {\n }\n COOLDOWN_REMAINING_CHECK = <table> {\n }\n SPELL_COOLDOWN_READY = <table> {\n }\n ITEM_COOLDOWN_READY = <table> {\n }\n WA_DELAYED_PLAYER_ENTERING_WORLD = <table> {\n }\n}\nCombatLogGetCurrentEventInfo = nil\nWeakAuras = <table> {\n SetAuraVisibility = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:295\n GetRuneCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1369\n frame_strata_types = <table> {\n }\n DisplayToString = <function> defined @Interface\\AddOns\\WeakAuras\\Transmission.lua:461\n combat_event_type = <table> {\n }\n regions = <table> {\n }\n ShowOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:338\n CheckItemSlotCooldowns = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1734\n duration_types = <table> {\n }\n EnsureClone = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2551\n debug = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:245\n CanShowNameInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3237\n tutorials = <table> {\n }\n pAdd = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2403\n regionOptions = <table> {\n }\n IsRegisteredForCustomTextUpdates = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3530\n CreateEncounterTable = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1266\n animations = <table> {\n }\n TenchInit = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2318\n regionTypes = <table> {\n }\n absorb_modes = <table> {\n }\n miss_types = <table> {\n }\n GetGCDInfo = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1420\n faction_group = <table> {\n }\n OpenOptions = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:74\n autoeventend_types = <table> {\n }\n CanGroupShowWithZero = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3119\n talent_types = <table> {\n }\n GetSpellCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1377\n LoadFunction = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:454\n circular_group_constant_factor_types = <table> {\n }\n GetAuraTooltipInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3350\n events = <table> {\n }\n AddManyFromAddons = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1838\n WatchForMounts = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2386\n spec_types_3 = <table> {\n }\n HideOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:342\n IsImporting = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1147\n blend_types = <table> {\n }\n text_automatic_width = <table> {\n }\n GetPolarCoordinates = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\DynamicGroup.lua:41\n GetDynamicIconCache = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3658\n custom_trigger_types = <table> {\n }\n LoadEncounterInitScripts = <f",
			["stack"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:596: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:661: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:658>",
			["session"] = 4384,
			["counter"] = 58,
		}, -- [26]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1123: attempt to call upvalue 'CombatLogGetCurrentEventInfo' (a nil value)",
			["time"] = "2018/05/08 18:14:04",
			["locals"] = "frame = <unnamed> {\n 0 = <userdata>\n}\nevent = \"COMBAT_LOG_EVENT_UNFILTERED\"\n(*temporary) = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1009\n(*temporary) = nil\n(*temporary) = \"attempt to call upvalue 'CombatLogGetCurrentEventInfo' (a nil value)\"\ncombatLog = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1009\nCombatLogGetCurrentEventInfo = nil\nuidTrack = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1070\nWeakAuras = <table> {\n SetAuraVisibility = <function> defined @Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:295\n GetRuneCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1369\n frame_strata_types = <table> {\n }\n DisplayToString = <function> defined @Interface\\AddOns\\WeakAuras\\Transmission.lua:461\n combat_event_type = <table> {\n }\n regions = <table> {\n }\n ShowOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:338\n CheckItemSlotCooldowns = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1734\n duration_types = <table> {\n }\n EnsureClone = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2551\n debug = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:245\n CanShowNameInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3237\n tutorials = <table> {\n }\n pAdd = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2403\n regionOptions = <table> {\n }\n IsRegisteredForCustomTextUpdates = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3530\n CreateEncounterTable = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1266\n animations = <table> {\n }\n TenchInit = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2318\n regionTypes = <table> {\n }\n absorb_modes = <table> {\n }\n miss_types = <table> {\n }\n GetGCDInfo = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1420\n faction_group = <table> {\n }\n OpenOptions = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:74\n autoeventend_types = <table> {\n }\n CanGroupShowWithZero = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3119\n talent_types = <table> {\n }\n GetSpellCooldown = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1377\n LoadFunction = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:454\n circular_group_constant_factor_types = <table> {\n }\n GetAuraTooltipInfo = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3350\n events = <table> {\n }\n AddManyFromAddons = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1838\n WatchForMounts = <function> defined @Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:2386\n spec_types_3 = <table> {\n }\n HideOverlayGlow = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:342\n IsImporting = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1147\n blend_types = <table> {\n }\n text_automatic_width = <table> {\n }\n GetPolarCoordinates = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\DynamicGroup.lua:41\n GetDynamicIconCache = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3658\n custom_trigger_types = <table> {\n }\n LoadEncounterInitScripts = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1278\n CollapseAllClones = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2577\n partyUnits = <table> {\n }\n TimerTick = <function> defined @Interface\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:325\n IsSpellInRange = <function> defined @Interface\\AddOns\\WeakAuras\\Prototypes.lua:22\n SetDynamicIconCache = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3653\n text_rotate_types = <table> {\n }\n UpdateMouseoverTooltip = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3300\n spec_types = <table> {\n }\n timers = <table> {\n }\n RegisterCustomTextUpdates = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3521\n anim_color_types = <table> {\n }\n loaded = <table> {\n }\n Convert = <function> defined @Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1776\n LoadDisplay = <function> defined @Interface\\AddOns\\WeakAuras",
			["stack"] = "Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1123: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1121>",
			["session"] = 4384,
			["counter"] = 57,
		}, -- [27]
		{
			["message"] = "invalid key to 'next'",
			["time"] = "2018/05/09 22:29:04",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `(for generator)'\n...Texts\\Libs\\LibDogTag-Unit-3.0\\LibDogTag-Unit-3.0-33333333423333.lua:49: in function <...Texts\\Libs\\LibDogTag-Unit-3.0\\LibDogTag-Unit-3.0.lua:46>\n...Texts\\Libs\\LibDogTag-Unit-3.0\\LibDogTag-Unit-3.0-33333333423333.lua:56: in function <...Texts\\Libs\\LibDogTag-Unit-3.0\\LibDogTag-Unit-3.0.lua:55>",
			["session"] = 4393,
			["counter"] = 1,
		}, -- [28]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'PremadeGroupsFilter' tried to call the protected function '<unnamed>:Hide()'.",
			["time"] = "2018/05/10 15:40:14",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Hide'\nInterface\\FrameXML\\WorldMapActionButton.lua:58: in function `Clear'\nInterface\\FrameXML\\WorldMapActionButton.lua:67: in function `Refresh'\nInterface\\FrameXML\\WorldMapActionButton.lua:19: in function `SetMapAreaID'\nInterface\\FrameXML\\WorldMapFrame.lua:1380: in function `WorldMapFrame_Update'\nInterface\\FrameXML\\WorldMapFrame.lua:2970: in function `WorldMapFrame_UpdateMap'\nInterface\\FrameXML\\WorldMapFrame.lua:469: in function <Interface\\FrameXML\\WorldMapFrame.lua:445>\n[C]: ?\n[C]: in function `SetMapToCurrentZone'\nInterface\\FrameXML\\WorldMapFrame.lua:390: in function <Interface\\FrameXML\\WorldMapFrame.lua:369>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2493: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2295: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2203: in function <Interface\\FrameXML\\UIParent.lua:2199>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:2987: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2971: in function `ToggleFrame'\nInterface\\FrameXML\\WorldMapFrame.lua:267: in function <Interface\\FrameXML\\WorldMapFrame.lua:239>\n[C]: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 4409,
			["counter"] = 1,
		}, -- [29]
		{
			["message"] = "...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3754: script ran too long",
			["time"] = "2018/05/10 21:24:20",
			["locals"] = "filter = \"\"\noverrideReset = true\nid = nil\nrecenter = false\nnumLoaded = 0\nto_sort = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n 19 = <table> {\n }\n 20 = <table> {\n }\n}\nchildren = <table> {\n Cooldowns on Raidframe DG v3 = <table> {\n }\n Druid = <table> {\n }\n Mythic+ Stuff = <table> {\n }\n Raid CD use = <table> {\n }\n Resto Druid dotTracking = <table> {\n }\n DataTexts = <table> {\n }\n Sephuz = <table> {\n }\n}\ncontainsFilter = false\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n ST (M) - Frigid Pulse = <table> {\n }\n storm bolt cooldown  dps = <table> {\n }\n Revival 3 = <table> {\n }\n Avenger's shield Cooldown  = <table> {\n }\n druid mana bar = <table> {\n }\n Hellfire Assault // Howling Axe (Timed Debuff) = <table> {\n }\n warbreaker cooldown up = <table> {\n }\n Magic Binding = <table> {\n }\n thrash cd = <table> {\n }\n Abrasive Slime = <table> {\n }\n Focus bar = <table> {\n }\n Soul Venom = <table> {\n }\n Festering Rip = <table> {\n }\n Grievous Rip = <table> {\n }\n Xhul'horac // Creeping Void (Ground Effect) = <table> {\n }\n Sanguine 2 = <table> {\n }\n swiftmend = <table> {\n }\n vendetta loph = <table> {\n }\n Control Undead = <table> {\n }\n Pet Health = <table> {\n }\n Socrethar the Eternal // Shattered Defenses (Stacking Debuff, Tank Only) = <table> {\n }\n adrenaline rush Cooldown    = <table> {\n }\n incap roar = <table> {\n }\n Agatha-Plague = <table> {\n }\n stampeding roar = <table> {\n }\n Soul Blade = <table> {\n }\n Tyrant Velhari // Font of Corruption (Interactive Debuff) = <table> {\n }\n crimson scurge = <table> {\n }\n Rip Resto Druid = <table> {\n }\n T20-Tomb of Sargeras = <table> {\n }\n Mythic+ Interrupt Tracker DG v2 = <table> {\n }\n riposte cooldown up = <table> {\n }\n icy floes cooldown   = <table> {\n }\n stampeding roar cd = <table> {\n }\n Gorefiend // Gorebound Spirit (Fixate) = <table> {\n }\n GLAZIK BLOOD STACK DEBUFF = <table> {\n }\n healing stream totem  echo = <table> {\n }\n Shadow-Lord Iskar // Fel Beam Fixate (Fixate) = <table> {\n }\n hook cooldown   = <table> {\n }\n Druid Solar_Beam = <table> {\n }\n 11-Vulnerability Nameplate Anchor = <table> {\n }\n expel harm stacks = <table> {\n }\n garrote cooldown up  = <table> {\n }\n Cast Bar = <table> {\n }\n Quake (60s) = <table> {\n }\n Pestilent Pustules = <table> {\n }\n Hellfire citadell dynamic = <table> {\n }\n blast wave cooldown up = <table> {\n }\n Cooldowns on Raidframe v3 = <table> {\n }\n barkskin = <table> {\n }\n Details! Aura Group = <table> {\n }\n Potion Cooldown = <table> {\n }\n void eruption = <table> {\n }\n Warlock shadowlock = <table> {\n }\n Taint of the Sea = <table> {\n }\n sindragosa's fury = <table> {\n }\n Quake 2 = <table> {\n }\n Brackwater Barrage = <table> {\n }\n Detonation = <table> {\n }\n 11-Cone of Death = <table> {\n }\n Blood Death Knight Absorbs Dynamic = <table> {\n }\n Trinket 1 use (dk) = <table> {\n }\n healing elixirs cooldown up  = <table> {\n }\n SK - Shockwave Cast = <table> {\n }\n Ascendance 4 = <table> {\n }\n 01-Annihilation = <table> {\n }\n curse of the dreadblades = <table> {\n }\n 05-Burden of Pain taunt alert = <table> {\n }\n Asphyxiate = <table> {\n }\n Stinging Swarm = <table> {\n }\n 11-Soulbomb p4 = <table> {\n }\n sudden death up  = <table> {\n }\n Druid_Skull_Bash = <table> {\n }\n GUL'DAN = <table> {\n }\n blur coolwodn = <table> {\n }\n LotBF ReM = <table> {\n }\n rebuke cooldown    = <table> {\n }\n shield of the righteous buff = <table> {\n }\n mind blast = <table> {\n }\n Shadow-Lord Iskar // Phantasmal Winds (Interactive Debuff) = <table> {\n }\n blighted rurne weapon = <table> {\n }\n Runic Shield purple = <table> {\n }\n Bone Shield = <table> {\n }\n NYTHENDRA ROT (OUT OF RAID DEBUFF) = <table> {\n }\n fire and brimstone buff = <table> {\n }\n NYTHENDRA INFESTED = <table> {\n }\n ironbark = <table> {\n }\n thrash debuff missing = <table> {\n }\n kick cooldown up   = <table> {\n }\n shield block cooldown  = <table> {\n }\n",
			["stack"] = "...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3754: in function `SortDisplayButtons'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3861: in function `afterScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.11.lua:1491: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1291>",
			["session"] = 4420,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3842: script ran too long",
			["time"] = "2018/05/10 21:24:20",
			["locals"] = "filter = \"\"\noverrideReset = true\nid = nil\nrecenter = false\nnumLoaded = 0\nto_sort = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n 19 = <table> {\n }\n 20 = <table> {\n }\n 21 = <table> {\n }\n 22 = <table> {\n }\n 23 = <table> {\n }\n 24 = <table> {\n }\n 25 = <table> {\n }\n 26 = <table> {\n }\n 27 = <table> {\n }\n 28 = <table> {\n }\n 29 = <table> {\n }\n 30 = <table> {\n }\n 31 = <table> {\n }\n 32 = <table> {\n }\n 33 = <table> {\n }\n 34 = <table> {\n }\n 35 = <table> {\n }\n 36 = <table> {\n }\n 37 = <table> {\n }\n 38 = <table> {\n }\n 39 = <table> {\n }\n 40 = <table> {\n }\n 41 = <table> {\n }\n 42 = <table> {\n }\n 43 = <table> {\n }\n 44 = <table> {\n }\n 45 = <table> {\n }\n 46 = <table> {\n }\n 47 = <table> {\n }\n 48 = <table> {\n }\n 49 = <table> {\n }\n 50 = <table> {\n }\n 51 = <table> {\n }\n 52 = <table> {\n }\n 53 = <table> {\n }\n 54 = <table> {\n }\n 55 = <table> {\n }\n 56 = <table> {\n }\n 57 = <table> {\n }\n 58 = <table> {\n }\n 59 = <table> {\n }\n 60 = <table> {\n }\n 61 = <table> {\n }\n 62 = <table> {\n }\n 63 = <table> {\n }\n 64 = <table> {\n }\n 65 = <table> {\n }\n 66 = <table> {\n }\n 67 = <table> {\n }\n 68 = <table> {\n }\n 69 = <table> {\n }\n 70 = <table> {\n }\n 71 = <table> {\n }\n 72 = <table> {\n }\n 73 = <table> {\n }\n 74 = <table> {\n }\n 75 = <table> {\n }\n 76 = <table> {\n }\n 77 = <table> {\n }\n 78 = <table> {\n }\n 79 = <table> {\n }\n 80 = <table> {\n }\n 81 = <table> {\n }\n 82 = <table> {\n }\n 83 = <table> {\n }\n 84 = <table> {\n }\n 85 = <table> {\n }\n 86 = <table> {\n }\n 87 = <table> {\n }\n 88 = <table> {\n }\n 89 = <table> {\n }\n 90 = <table> {\n }\n 91 = <table> {\n }\n 92 = <table> {\n }\n 93 = <table> {\n }\n 94 = <table> {\n }\n 95 = <table> {\n }\n 96 = <table> {\n }\n 97 = <table> {\n }\n 98 = <table> {\n }\n 99 = <table> {\n }\n 100 = <table> {\n }\n}\nchildren = <table> {\n Legion Dungeon: M+ Interrupt CD = <table> {\n }\n Rogue = <table> {\n }\n Archimonde's Hatred Reborn Absorb+Time Remaining = <table> {\n }\n GUL'DAN = <table> {\n }\n Darkheart Thicket = <table> {\n }\n interrupts = <table> {\n }\n sephuz dynamic group = <table> {\n }\n Trial of Valor = <table> {\n }\n Rogue: Rupture Multi-Target = <table> {\n }\n Black Rook Hold = <table> {\n }\n Mythic+ Interrupt Tracker DG v2 = <table> {\n }\n T21-Antorus the Burning Throne = <table> {\n }\n Monk = <table> {\n }\n interuppt tracking = <table> {\n }\n Mage = <table> {\n }\n stampede grp = <table> {\n }\n The Arcway = <table> {\n }\n Group Frag Belt CDs = <table> {\n }\n Warlock = <table> {\n }\n Engine of Eradication = <table> {\n }\n INTERRUPT CD = <table> {\n }\n Hellfire citadell dynamic = <table> {\n }\n lightningprod grp = <table> {\n }\n Consumption = <table> {\n }\n Legion-Dungeon-Casts = <table> {\n }\n TOS2 Echoing Anguish Dispells DG = <table> {\n }\n Blood Death Knight Offensive Dynamic = <table> {\n }\n Vault of the Wardens = <table> {\n }\n T19 - Nighthold = <table> {\n }\n Leggings of the Black Flame = <table> {\n }\n Taunt Diminishing Return = <table> {\n }\n Missing Consumables = <table> {\n }\n Demon hunter = <table> {\n }\n Dungeon spelltracking v4 = <table> {\n }\n Halls of Valor = <table> {\n }\n Shaman dynamic buffs = <table> {\n }\n Legion Dungeon: Mythic+ Affixes = <table> {\n }\n Death Knight = <table> {\n }\n Hunter = <table> {\n }\n Dark Arbiter = <table> {\n }\n ScanEvents Example = <table> {\n }\n Warrior = <table> {\n }\n Paladin = <table> {\n }\n Agatha Group = <table> {\n }\n Maw of Souls = <table> {\n }\n Eye of Azshara = <table> {\n }\n Argus - Bars = <table> {\n }\n Quaking affix = <table> {\n }\n Blood Death Knight Absorbs Dynamic = <table> {\n }\n Shaman = <table> {\n }\n T20-Tomb of Sargeras = <table> {\n }\n Neltharion's Lair = <table> {\n }\n TANK AOE DOWN M+ = <table> {\n }\n Priest = <table> {\n }\n LEGION AURAS (NIGHTMARE)  = <table> {\n }\n engi stuns = <table> {\n }\n Blood Death Knight Defensives Dynamic = <table> {\n }\n}\ncontainsFilter = true\nnumUnloaded = 0\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 1 =",
			["stack"] = "...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3842: in function `SortDisplayButtons'\n...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.5.11.lua:3861: in function `afterScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.11.lua:1491: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1291>",
			["session"] = 4420,
			["counter"] = 1,
		}, -- [31]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'vexrunes' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2018/05/18 19:36:27",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetTargetClampingInsets'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:242: in function `SetupClassNameplateBars'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:87: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:44: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 4462,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:1019: attempt to perform arithmetic on local 'endTimeMS' (a nil value)",
			["time"] = "2018/05/18 21:54:13",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:1019: in function <Interface\\AddOns\\SMT\\core\\core.lua:1016>",
			["session"] = 4486,
			["counter"] = 4,
		}, -- [33]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:1305: attempt to perform arithmetic on field 'numMembers' (a nil value)",
			["time"] = "2018/05/24 20:23:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\FrameXML\\LFGList.lua:1305: in function `LFGListApplicationViewer_UpdateInviteState'\nInterface\\FrameXML\\LFGList.lua:1128: in function `onEvent'\nInterface\\FrameXML\\LFGList.lua:204: in function <Interface\\FrameXML\\LFGList.lua:108>",
			["session"] = 4521,
			["counter"] = 20,
		}, -- [34]
		{
			["message"] = "Interface\\FrameXML\\LFGList.lua:1481: attempt to index local 'classTextColor' (a nil value)",
			["time"] = "2018/05/24 20:23:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\FrameXML\\LFGList.lua:1481: in function `LFGListApplicationViewer_UpdateApplicantMember'\nInterface\\FrameXML\\LFGList.lua:1372: in function `LFGListApplicationViewer_UpdateApplicant'\nInterface\\FrameXML\\LFGList.lua:1348: in function `LFGListApplicationViewer_UpdateResults'\nInterface\\FrameXML\\LFGList.lua:1119: in function `onEvent'\nInterface\\FrameXML\\LFGList.lua:204: in function <Interface\\FrameXML\\LFGList.lua:108>",
			["session"] = 4521,
			["counter"] = 15,
		}, -- [35]
		{
			["message"] = "Interface\\AddOns\\ExRT\\RaidAttendance.lua:849: attempt to concatenate field '?' (a nil value)",
			["time"] = "2018/05/24 20:42:38",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\ExRT\\RaidAttendance.lua:849: in function <Interface\\AddOns\\ExRT\\RaidAttendance.lua:824>\nInterface\\AddOns\\ExRT\\RaidAttendance.lua:900: in function <Interface\\AddOns\\ExRT\\RaidAttendance.lua:895>\nInterface\\AddOns\\ExRT\\RaidAttendance.lua:932: in function `?'\nInterface\\AddOns\\ExRT\\core.lua:170: in function <Interface\\AddOns\\ExRT\\core.lua:169>",
			["session"] = 4521,
			["counter"] = 2,
		}, -- [36]
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: attempt to perform arithmetic on local 'endTimeMS' (a nil value)",
			["time"] = "2018/05/18 21:50:26",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: in function <Interface\\AddOns\\SMT\\core\\core.lua:1031>",
			["session"] = 4529,
			["counter"] = 7,
		}, -- [37]
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:888: table index is nil",
			["time"] = "2018/05/18 23:14:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:888: in function <Interface\\AddOns\\SMT\\core\\core.lua:886>",
			["session"] = 4532,
			["counter"] = 12,
		}, -- [38]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestTracker' tried to call the protected function 'CompactRaidGroup1:unusedFunc()'.",
			["time"] = "2018/05/28 19:52:47",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `unusedFunc'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:160: in function `CompactRaidFrameContainer_LayoutFrames'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:130: in function `CompactRaidFrameContainer_TryUpdate'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 4545,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2018/04/28 23:30:18",
			["locals"] = "(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: ?\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:139>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:474: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:470>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?",
			["session"] = 4568,
			["counter"] = 44,
		}, -- [40]
	},
}
