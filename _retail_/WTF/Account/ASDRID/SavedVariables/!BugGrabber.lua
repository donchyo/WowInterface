
BugGrabberDB = {
	["session"] = 6636,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\AngryKeystones\\Splits.lua:135: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2018/12/16 02:06:58",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `pairs'\nInterface\\AddOns\\AngryKeystones\\Splits.lua:135: in function `?'\nInterface\\AddOns\\AngryKeystones\\Core.lua:10: in function <Interface\\AddOns\\AngryKeystones\\Core.lua:6>",
			["session"] = 6445,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\BulkBuy\\core.lua:77: attempt to call global 'OpenStackSplitFrame' (a nil value)",
			["time"] = "2018/12/16 03:41:19",
			["locals"] = "self = MerchantItem6ItemButton {\n 0 = <userdata>\n SetItemMatchesItemContext = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:182\n IconOverlay = <unnamed> {\n }\n ItemContextOverlay = <unnamed> {\n }\n extendedCost = true\n count = 1\n GetItemContextMatch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:187\n link = \"|cffa335ee|Hitem:159440::::::::120:66::35:4:5448:1557:4786:5401:::|h[Ashvane Warden's Cuirass]|h|r\"\n IconBorder = <unnamed> {\n }\n name = \"Ashvane Warden's Cuirass\"\n hasItem = true\n icon = MerchantItem6ItemButtonIconTexture {\n }\n texture = 1780202\n hover = <unnamed> {\n }\n SetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:173\n UpdateTooltip = <function> defined @Interface\\FrameXML\\MerchantFrame.lua:625\n numInStock = -1\n backdropTexture = <unnamed> {\n }\n glossTex = true\n template = \"Default\"\n pushed = <unnamed> {\n }\n GetItemLocation = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:168\n UpdateItemContextOverlay = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:205\n Count = MerchantItem6ItemButtonCount {\n }\n UpdateItemContextMatching = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:191\n showNonrefundablePrompt = false\n GetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:178\n searchOverlay = MerchantItem6ItemButtonSearchOverlay {\n }\n SplitStack = <function> defined @Interface\\AddOns\\BulkBuy\\core.lua:47\n}\nbutton = \"RightButton\"\n_ = \"Ashvane Warden's Cuirass\"\n_ = 1780202\n_ = 0\nstackCount = 1\n_ = -1\n_ = true\n_ = true\nextendedCost = true\n(*temporary) = nil\n(*temporary) = 10000\n(*temporary) = MerchantItem6ItemButton {\n 0 = <userdata>\n SetItemMatchesItemContext = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:182\n IconOverlay = <unnamed> {\n }\n ItemContextOverlay = <unnamed> {\n }\n extendedCost = true\n count = 1\n GetItemContextMatch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:187\n link = \"|cffa335ee|Hitem:159440::::::::120:66::35:4:5448:1557:4786:5401:::|h[Ashvane Warden's Cuirass]|h|r\"\n IconBorder = <unnamed> {\n }\n name = \"Ashvane Warden's Cuirass\"\n hasItem = true\n icon = MerchantItem6ItemButtonIconTexture {\n }\n texture = 1780202\n hover = <unnamed> {\n }\n SetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:173\n UpdateTooltip = <function> defined @Interface\\FrameXML\\MerchantFrame.lua:625\n numInStock = -1\n backdropTexture = <unnamed> {\n }\n glossTex = true\n template = \"Default\"\n pushed = <unnamed> {\n }\n GetItemLocation = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:168\n UpdateItemContextOverlay = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:205\n Count = MerchantItem6ItemButtonCount {\n }\n UpdateItemContextMatching = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:191\n showNonrefundablePrompt = false\n GetMatchesSearch = <function> defined @Interface\\FrameXML\\ItemButtonTemplate.lua:178\n searchOverlay = MerchantItem6ItemButtonSearchOverlay {\n }\n SplitStack = <function> defined @Interface\\AddOns\\BulkBuy\\core.lua:47\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = \"TOPLEFT\"\n(*temporary) = \"attempt to call global 'OpenStackSplitFrame' (a nil value)\"\nMAX_STACK = 10000\n",
			["stack"] = "Interface\\AddOns\\BulkBuy\\core.lua:77: in function <Interface\\AddOns\\BulkBuy\\core.lua:69>\n[C]: in function `MerchantItemButton_OnModifiedClick'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 6445,
			["counter"] = 26,
		}, -- [2]
		{
			["message"] = "[string \"print(250*5/60 .. min)\"]:1: attempt to concatenate global 'min' (a function value)",
			["time"] = "2018/12/16 17:02:14",
			["locals"] = "(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = 20.833333\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"attempt to concatenate global 'min' (a function value)\"\n",
			["stack"] = "[string \"print(250*5/60 .. min)\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4757: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4418: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4454: in function <Interface\\FrameXML\\ChatFrame.lua:4450>\n[C]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 6447,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'FriendGroups' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2018/12/16 22:59:58",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:571: in function `CompactRaidFrameManager_LockContainer'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:564: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:57: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:50>",
			["session"] = 6458,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AutoTurnIn' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2018/12/18 23:17:41",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:571: in function `CompactRaidFrameManager_LockContainer'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:564: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:57: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:50>",
			["session"] = 6470,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Locales\\ruRU-Russian.lua:616: unfinished long string near '<eof>'",
			["time"] = "2018/12/15 14:29:58",
			["locals"] = "",
			["stack"] = "",
			["session"] = 6486,
			["counter"] = 250,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUI_Bar1:SetWidth()'.",
			["time"] = "2018/12/15 02:48:31",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetWidth'\nInterface\\AddOns\\ElvUI\\core\\toolkit.lua:54: in function `Width'\n...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:158: in function `PositionAndSizeBar'\n[string \"local bars, E = {1,2,3,4,5}, unpack(ElvUI);...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4757: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4418: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:623: in function <Interface\\FrameXML\\SecureTemplates.lua:571>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 6489,
			["counter"] = 7,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\Details\\Libs\\DF\\button.lua:1013: attempt to index local 'parent' (a nil value)",
			["time"] = "2018/12/20 23:32:53",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\Details\\Libs\\DF\\button.lua:1013: in function <Interface\\AddOns\\Details\\Libs\\DF\\button.lua:989>\n(tail call): ?\n...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:4864: in function <...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:468>\n[C]: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 6489,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'CancelLogout()'.",
			["time"] = "2018/12/21 21:08:07",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `CancelLogout'\nInterface\\FrameXML\\StaticPopup.lua:1841: in function `OnHide'\nInterface\\FrameXML\\StaticPopup.lua:4914: in function <Interface\\FrameXML\\StaticPopup.lua:4906>\n[C]: in function `StaticPopup_OnHide'\n[string \"*:OnHide\"]:1: in function <[string \"*:OnHide\"]:1>\n[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\StaticPopup.lua:4730: in function `StaticPopup_Hide'\nInterface\\FrameXML\\UIParent.lua:1293: in function <Interface\\FrameXML\\UIParent.lua:1093>",
			["session"] = 6497,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'ElvUIParent:SetSize()'.",
			["time"] = "2018/12/21 21:04:43",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetSize'\nInterface\\AddOns\\ElvUI\\core\\pixelperfect.lua:97: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6518,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\iKeystones\\iKeystones-1.713.lua:431: table index is nil",
			["time"] = "2018/12/24 11:03:23",
			["locals"] = "self = <unnamed> {\n CHAT_MSG_PARTY_LEADER = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:530\n ADDON_LOADED = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:403\n CHAT_MSG_GUILD = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:512\n PLAYER_LOGIN = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:378\n BAG_UPDATE = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:472\n QUEST_LOG_UPDATE = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:483\n MYTHIC_PLUS_NEW_WEEKLY_RECORD = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:469\n CHALLENGE_MODE_MAPS_UPDATE = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:480\n CHAT_MSG_PARTY = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:527\n MYTHIC_PLUS_CURRENT_AFFIX_UPDATE = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:428\n CHAT_MSG_OFFICER = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:518\n ITEM_PUSH = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:475\n CHAT_MSG_GUILD_LEADER = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:515\n CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:540\n CHAT_MSG_INSTANCE_LEADER = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:524\n CHAT_MSG_RAID_LEADER = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:536\n CHAT_MSG_RAID = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:533\n 0 = <userdata>\n CHAT_MSG_INSTANCE = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:521\n}\ntemp = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n}\n(*temporary) = <table> {\n 1 = 0\n 2 = 0\n 3 = 0\n 4 = 0\n}\n(*temporary) = nil\n(*temporary) = <table> {\n id = 9\n seasonID = 0\n}\n(*temporary) = <table> {\n id = 16\n seasonID = 1\n}\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"table index is nil\"\niKS = <table> {\n getZoneInfo = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:267\n keystonesToMapIDs = <table> {\n }\n createMainWindow = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:701\n printKeystones = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:278\n apFromDungeons = <table> {\n }\n frames = <table> {\n }\n help = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:368\n PasteKeysToChat = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:306\n bd = <table> {\n }\n getItemColor = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:254\n createPlayer = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:186\n weeklyReset = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:174\n affixCycles = <table> {\n }\n createNewLine = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:619\n addToTooltip = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:823\n getAP = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:141\n currentMax = 0\n getKeystoneLink = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:275\n scanInventory = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:225\n currentAffixes = <table> {\n }\n shouldReportKey = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:300\n scanCharacterMaps = <function> defined @Interface\\AddOns\\iKeystones\\iKeystones.lua:213\n}\nsortedAffixes = <table> {\n 13 = 3\n 7 = 2\n 14 = 3\n 2 = 3\n 4 = 3\n 8 = 2\n 16 = 4\n 9 = 1\n 5 = 2\n 10 = 1\n 11 = 2\n 6 = 2\n 12 = 3\n 3 = 3\n}\nplayer = \"Player-1329-067C8B8A\"\n",
			["stack"] = "Interface\\AddOns\\iKeystones\\iKeystones-1.713.lua:431: in function `?'\nInterface\\AddOns\\iKeystones\\iKeystones-1.713.lua:3: in function <Interface\\AddOns\\iKeystones\\iKeystones.lua:2>",
			["session"] = 6531,
			["counter"] = 2,
		}, -- [11]
		{
			["message"] = "...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1449: attempt to call field 'Update' (a nil value)",
			["time"] = "2018/12/20 23:32:57",
			["locals"] = "noCache = true\nshowFade = nil\nisQuestFlaggedRecheck = nil\nforceCriteriaAnimation = nil\nquestList = nil\nquestsAvailable = <table> {\n 895 = <table> {\n }\n 942 = <table> {\n }\n 896 = <table> {\n }\n 62 = <table> {\n }\n 882 = <table> {\n }\n 650 = <table> {\n }\n 790 = <table> {\n }\n 885 = <table> {\n }\n 1165 = <table> {\n }\n 1169 = <table> {\n }\n 625 = <table> {\n }\n 641 = <table> {\n }\n 863 = <table> {\n }\n 864 = <table> {\n }\n 875 = <table> {\n }\n 1161 = <table> {\n }\n 876 = <table> {\n }\n 830 = <table> {\n }\n 14 = <table> {\n }\n 862 = <table> {\n }\n 630 = <table> {\n }\n 646 = <table> {\n }\n 680 = <table> {\n }\n 634 = <table> {\n }\n}\nneedAnotherUpdate = true\nfilters = <table> {\n pet_battles = true\n garrison_resource = true\n equipment = true\n reputation_token = true\n trade_skill = true\n profession = true\n gold = true\n dungeon = true\n artifact_power = true\n pvp = true\n}\ntimePriority = 0\nshowTimeLeftText = false\nforceShowBrokenShore = false\nsortByTimeLeft = true\nworldMapID = 875\nbountyQuestID = 50562\nfailedToUpdate = <table> {\n 50519 = true\n 51640 = true\n 54539 = true\n 50517 = true\n 54691 = true\n 52884 = true\n 54512 = true\n 51415 = true\n 51629 = true\n 51564 = true\n 50459 = true\n 51117 = true\n 51155 = true\n 50961 = true\n 51546 = true\n 51104 = true\n}\nmapChildren = <table> {\n 863 = true\n 862 = true\n 864 = true\n 1165 = true\n}\nbannedQuests = <table> {\n}\navailableQuests = 276\nisUsingTracker = true\nworldMapID = 875\naddToWorldMap = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n}\nquestCounter = 7\n(*temporary) = nil\n(*temporary) = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = \"attempt to call field 'Update' (a nil value)\"\nWorldQuestTracker = <table> {\n LastUpdate = 11127.245000\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:147\n QUEST_POI_FRAME_HEIGHT = 1\n Cache_ShownQuestOnWorldMap = <table> {\n }\n AllCharactersQuests_Add = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker.lua:700\n UpdateArrowFrequence = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_FrameAPI.lua:95\n GetTemplate = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1413\n mapTables = <table> {\n }\n CommFunctions = <table> {\n }\n RareWidgetOnClick = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_RareFinder.lua:711\n ScheduleTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:94\n UpdatingForMap = 875\n IsCurrentMapQuestHub = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_MapAPI.lua:136\n SavedQuestList_GetList = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker.lua:652\n CreateGlowOverlay = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1973\n ShowPanicWarning = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:1798\n db = <table> {\n }\n CheckQuestRewardDataForWidget = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_MapAPI.lua:76\n UnregisterAllComm = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n SetEnabledState = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:424\n ShowTutorialAlertFrame = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1090\n ShowDefaultPinForQuest = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_FrameAPI.lua:66\n ZoneWidgetPool = <table> {\n }\n WorldMapQuestCounter = 0\n GetQuestReward_Resource = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_MapAPI.lua:672\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n CanShowWorldMapWidgets = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_MapAPI.lua:174\n ColorPick = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:1375\n",
			["stack"] = "...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1449: in function `UpdateWorldQuestsOnWorldMap'\n...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1188: in function <...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1185>\nInterface\\SharedXML\\C_TimerAugment.lua:16: in function <Interface\\SharedXML\\C_TimerAugment.lua:14>",
			["session"] = 6545,
			["counter"] = 7,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2018/12/22 15:59:45",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2981: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2357: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3153: in function <Interface\\FrameXML\\UIParent.lua:3151>\n[C]: in function `UIParent_ManageFramePositions'\n...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:25: in function <...ard_UIWidgets\\Blizzard_UIWidgetBelowMinimapFrame.lua:3>\n[C]: in function `layoutFunc'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:225: in function `UpdateWidgetSetContainerLayout'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:318: in function `ProcessWidgetSet'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:340: in function `UpdateAllWidgets'\n...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:33: in function <...dOns\\Blizzard_UIWidgets\\Blizzard_UIWidgetManager.lua:31>",
			["session"] = 6545,
			["counter"] = 2,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'DialogKey' tried to call the protected function 'UIParent:EnableMouseWheel()'.",
			["time"] = "2018/12/15 02:06:42",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EnableMouseWheel'\nInterface\\AddOns\\DialogKey\\core.lua:62: in function <Interface\\AddOns\\DialogKey\\core.lua:62>\n[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:2619: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2699: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2352: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3192: in function `HideUIPanel'\nInterface\\FrameXML\\QuestFrame.lua:25: in function <Interface\\FrameXML\\QuestFrame.lua:23>\n[C]: in function `AcceptQuest'\nInterface\\AddOns\\AutoTurnIn\\AutoTurnIn-7.0.9.lua:387: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6559,
			["counter"] = 5,
		}, -- [14]
		{
			["message"] = "Interface\\FrameXML\\SocialQueue.lua:60: attempt to index local 'searchResultInfo' (a nil value)",
			["time"] = "2018/12/17 16:56:54",
			["locals"] = "queue = <table> {\n queueType = \"lfglist\"\n isBrawl = false\n lfgListID = 2\n}\nnameFormatter = nil\nnameText = <table> {\n}\nname = nil\nsearchResultInfo = nil\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = 2\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'searchResultInfo' (a nil value)\"\nAppendQueueName = <function> defined @Interface\\FrameXML\\SocialQueue.lua:4\n",
			["stack"] = "Interface\\FrameXML\\SocialQueue.lua:60: in function `SocialQueueUtil_GetQueueName'\nInterface\\FrameXML\\QuickJoin.lua:425: in function `Update'\nInterface\\FrameXML\\QuickJoin.lua:361: in function `UpdateEntry'\nInterface\\FrameXML\\QuickJoin.lua:86: in function `UpdateEntry'\nInterface\\FrameXML\\QuickJoin.lua:48: in function <Interface\\FrameXML\\QuickJoin.lua:45>",
			["session"] = 6559,
			["counter"] = 6,
		}, -- [15]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'MainMenuBar:ClearAllPoints()'.",
			["time"] = "2018/12/15 14:58:45",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ClearAllPoints'\nInterface\\FrameXML\\MainMenuBar.lua:43: in function `SetPositionForStatusBars'\nInterface\\FrameXML\\MainMenuBar.lua:122: in function <Interface\\FrameXML\\MainMenuBar.lua:65>",
			["session"] = 6559,
			["counter"] = 5,
		}, -- [16]
		{
			["message"] = "...dOns\\WorldQuestTracker\\WorldQuestTracker_ZoneMap.lua:998: attempt to compare nil with number",
			["time"] = "2018/12/21 20:09:05",
			["locals"] = "self = WorldQuestTrackerTaxyPOI2 {\n 0 = <userdata>\n Shadow = WorldQuestTrackerTaxyPOI2Shadow {\n }\n circleBorder = <unnamed> {\n }\n LastUpdate = 67796.111000\n SupportFrame = <unnamed> {\n }\n worldQuest = true\n onStartTrackAnimation = <unnamed> {\n }\n criteriaIndicatorGlow = <unnamed> {\n }\n criteriaIndicator = <unnamed> {\n }\n bgFlag = <unnamed> {\n }\n timeBlipRed = <unnamed> {\n }\n onEndTrackAnimation = <unnamed> {\n }\n rarity = 2\n squareBorder = <unnamed> {\n }\n FactionID = 2162\n ClearWidget = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_ZoneMap.lua:48\n blackBackground = <unnamed> {\n }\n blackGradient = <unnamed> {\n }\n timeBlipOrange = <unnamed> {\n }\n flagText = <unnamed> {\n }\n IconText = 100\n AddedToTrackerAnimation = <unnamed> {\n }\n AnchorFrame = WorldQuestTrackerTaxyPOI2Anchor {\n }\n BountyRing = <unnamed> {\n }\n flagCriteriaMatchGlow = <unnamed> {\n }\n TextureCustom = WorldQuestTrackerTaxyPOI2TextureCustom {\n }\n worldQuestType = 2\n TimeLeft = 1\n UpdateTooltip = <function> defined =[C]:-1\n highlight = <unnamed> {\n }\n rareGlow = <unnamed> {\n }\n questID = 51774\n CriteriaAnimation = <unnamed> {\n }\n SelectedGlow = WorldQuestTrackerTaxyPOI2SelectedGlow {\n }\n CriteriaMatchGlow = WorldQuestTrackerTaxyPOI2CriteriaMatchGlow {\n }\n timeBlipYellow = <unnamed> {\n }\n IsTrackingRareGlow = WorldQuestTrackerTaxyPOI2IsTrackingRareGlow {\n }\n OnEnterAnimation = <unnamed> {\n }\n FactionPulseAnimation = <unnamed> {\n }\n numObjectives = 1\n isElite = false\n timeBlipGreen = <unnamed> {\n }\n Texture = WorldQuestTrackerTaxyPOI2Texture {\n }\n IconTexture = 2032596\n OnShowAlphaAnimation = <unnamed> {\n }\n SpellTargetGlow = WorldQuestTrackerTaxyPOI2SpellTargetGlow {\n }\n questTypeBlip = <unnamed> {\n }\n rareSerpent = WorldQuestTrackerTaxyPOI2RareSerpent {\n }\n OnLeaveAnimation = <unnamed> {\n }\n RareOverlay = WorldQuestTrackerTaxyPOI2RareOverlay {\n }\n IsTrackingGlow = WorldQuestTrackerTaxyPOI2IsTrackingGlow {\n }\n IsTaxiQuestButton = true\n}\nworldQuestType = 2\nrarity = 2\nisElite = false\ntradeskillLineIndex = nil\ninProgress = nil\nselected = nil\nisCriteria = nil\nisSpellTarget = nil\nmapID = nil\nquestID = 51774\ntitle = \"Ragna\"\nfactionID = 2162\ntagID = 135\ntagName = \"Rare World Quest\"\nworldQuestType = 2\nrarity = 2\nisElite = false\ntradeskillLineIndex = nil\ntimeLeft = nil\n(*temporary) = 51774\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 51774\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to compare nil with number\"\nWorldQuestTracker = <table> {\n LastUpdate = 67784.930000\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:147\n QUEST_POI_FRAME_HEIGHT = 1\n Cache_ShownQuestOnWorldMap = <table> {\n }\n AllCharactersQuests_Add = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker.lua:700\n UpdateArrowFrequence = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_FrameAPI.lua:95\n GetTemplate = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1413\n mapTables = <table> {\n }\n CommFunctions = <table> {\n }\n RareWidgetOnClick = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_RareFinder.lua:711\n ScheduleTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:94\n IsCurrentMapQuestHub = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_MapAPI.lua:136\n SavedQuestList_GetList = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker.lua:652\n CreateGlowOverlay = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\fw.lua:1973\n ShowPanicWarning = <function> defined @Interface\\AddOns\\Details\\Libs\\DF\\panel.lua:1798\n db = <table> {\n }\n CheckQuestRewardDataForWidget = <function> defined @Interfa",
			["stack"] = "...dOns\\WorldQuestTracker\\WorldQuestTracker_ZoneMap.lua:998: in function `SetupWorldQuestButton'\n...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Taxi.lua:468: in function <...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Taxi.lua:305>\n[C]: in function `ApplyPinPosition'\n...ns\\Blizzard_MapCanvas\\MapCanvas_DataProviderBase.lua:337: in function `ApplyCurrentPosition'\n...ns\\Blizzard_MapCanvas\\MapCanvas_DataProviderBase.lua:353: in function `ApplyCurrentScale'\n...ns\\Blizzard_MapCanvas\\MapCanvas_DataProviderBase.lua:271: in function `?'\n...ace\\AddOns\\Blizzard_MapCanvas\\Blizzard_MapCanvas.lua:510: in function `CallMethodOnPinsAndDataProviders'\n...ace\\AddOns\\Blizzard_MapCanvas\\Blizzard_MapCanvas.lua:542: in function `OnCanvasScaleChanged'\n...ace\\AddOns\\Blizzard_FlightMap\\Blizzard_FlightMap.lua:28: in function `OnCanvasScaleChanged'\n...lizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:634: in function `InstantPanAndZoom'\n...lizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:614: in function `ResetZoom'\n...lizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:423: in function `OnCanvasSizeChanged'\n...lizzard_MapCanvas\\MapCanvas_ScrollContainerMixin.lua:407: in function `SetMapID'\n...ace\\AddOns\\Blizzard_MapCanvas\\Blizzard_MapCanvas.lua:33: in function `SetMapID'\n...ace\\AddOns\\Blizzard_FlightMap\\Blizzard_FlightMap.lua:72: in function <...ace\\AddOns\\Blizzard_FlightMap\\Blizzard_FlightMap.lua:69>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2635: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2441: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2348: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3176: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2071: in function <Interface\\FrameXML\\UIParent.lua:1093>",
			["session"] = 6582,
			["counter"] = 54,
		}, -- [17]
		{
			["message"] = "...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1303: attempt to perform arithmetic on local 'timeLeft' (a nil value)",
			["time"] = "2018/12/24 10:18:04",
			["locals"] = "noCache = true\nshowFade = nil\nisQuestFlaggedRecheck = nil\nforceCriteriaAnimation = nil\nquestList = nil\nquestsAvailable = <table> {\n 895 = <table> {\n }\n}\nneedAnotherUpdate = false\nfilters = <table> {\n pet_battles = true\n garrison_resource = true\n equipment = true\n reputation_token = true\n trade_skill = true\n profession = true\n gold = true\n dungeon = true\n artifact_power = true\n pvp = true\n}\ntimePriority = 0\nshowTimeLeftText = false\nforceShowBrokenShore = false\nsortByTimeLeft = true\nworldMapID = 876\nbountyQuestID = 0\nfailedToUpdate = <table> {\n}\nmapChildren = <table> {\n 896 = true\n 1161 = true\n 895 = true\n 1169 = true\n 942 = true\n}\nbannedQuests = <table> {\n}\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 895 = <table> {\n }\n 942 = <table> {\n }\n 896 = <table> {\n }\n 62 = <table> {\n }\n 634 = <table> {\n }\n 650 = <table> {\n }\n 790 = <table> {\n }\n 885 = <table> {\n }\n 862 = <table> {\n }\n 882 = <table> {\n }\n 625 = <table> {\n }\n 641 = <table> {\n }\n 646 = <table> {\n }\n 680 = <table> {\n }\n 875 = <table> {\n }\n 1161 = <table> {\n }\n 876 = <table> {\n }\n 830 = <table> {\n }\n 864 = <table> {\n }\n 14 = <table> {\n }\n 630 = <table> {\n }\n 863 = <table> {\n }\n 1169 = <table> {\n }\n 1165 = <table> {\n }\n}\n(for control) = 895\nmapId = 895\nconfigTable = <table> {\n MapAnchor = <unnamed> {\n }\n Anchor_Y = 0.620000\n show_on_map = <table> {\n }\n factionFrame = WorldQuestTrackerFactionFrame895 {\n }\n Anchor_X = 0.990000\n GrowRight = false\n widgets = <table> {\n }\n}\ntaskInfo = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n}\nshownQuests = 0\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n}\n(for control) = 1\ni = 1\ninfo = <table> {\n y = 0.210337\n x = 0.526451\n numObjectives = 1\n childDepth = 0\n mapID = 895\n questId = 52869\n inProgress = false\n}\nquestID = 52869\ncanUpdateQuest = true\nisWorldQuest = true\nisNotBanned = true\ntitle = \"Azerite Empowerment\"\nfactionID = 2164\ntagID = 151\ntagName = \"Magni World Quest - Azerite\"\nworldQuestType = 2\nrarity = 1\nisElite = false\ntradeskillLineIndex = nil\ntagID = 151\ntagName = \"Magni World Quest - Azerite\"\nworldQuestType = 2\nrarity = 1\nisElite = false\ntradeskillLineIndex = nil\nallowDisplayPastCritical = true\ngold = 0\ngoldFormated = 0\nrewardName = \"Azerite\"\nrewardTexture = 2065624\nnumRewardItems = 274\nitemName = \"Azerite\"\nitemTexture = 2065624\nitemLevel = 0\nquantity = 1\nquality = 1\nisUsable = false\nitemID = 0\nisArtifact = true\nartifactPower = 274\nisStackable = false\nstackAmount = 1\ntimeLeft = nil\nfilter = \"artifact_power\"\norder = 8\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"Azerite\"\n(*temporary) = \"Azerite\"\n(*temporary) = true\n(*temporary) = 1\n(*temporary) = 274\n(*temporary) = 2065624\n(*temporary) = \"artifact_power\"\n(*temporary) = 8\n(*temporary) = \"artifact_power\"\n(*temporary) = 8\n(*temporary) = nil\n(*temporary) = 2\n(*temporary) = 1\n(*temporary) = false\n(*temporary) = nil\n(*temporary) = true\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = \"attempt to perform arithmetic on local 'timeLeft' (a nil value)\"\nWorldQuestTracker = <table> {\n LastUpdate = 292094.483000\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:147\n QUEST_POI_FRAME_HEIGHT = 1\n Cache_ShownQuestOnWorldMap = <table> {\n }\n AllCharactersQuests_Add = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker.lua:700\n UpdateArrowFrequence = <function> defined @Interface\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Fra",
			["stack"] = "...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1303: in function `UpdateWorldQuestsOnWorldMap'\n...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1188: in function <...Ons\\WorldQuestTracker\\WorldQuestTracker_WorldMap.lua:1185>\nInterface\\SharedXML\\C_TimerAugment.lua:16: in function <Interface\\SharedXML\\C_TimerAugment.lua:14>",
			["session"] = 6582,
			["counter"] = 16,
		}, -- [18]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2018/12/27 13:50:01",
			["locals"] = "(*temporary) = \"Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)\"\n",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1099>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 6582,
			["counter"] = 2,
		}, -- [19]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'FriendGroups' tried to call the protected function 'CompactPartyFrame:unusedFunc()'.",
			["time"] = "2018/12/28 09:08:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `unusedFunc'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:160: in function `CompactRaidFrameContainer_LayoutFrames'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:130: in function `CompactRaidFrameContainer_TryUpdate'\n...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:62: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 6586,
			["counter"] = 1,
		}, -- [20]
		{
			["message"] = "Interface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI-1.0.lua:1730: Usage: GetQuestLogRewardInfo(index, [questID])",
			["time"] = "2018/12/28 09:26:34",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetQuestLogRewardInfo'\nInterface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI-1.0.lua:1730: in function `SetUp'\nInterface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI-1.0.lua:1665: in function `Update'\nInterface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI-1.0.lua:954: in function `ConquestFrame_UpdateSeasonFrames'\nInterface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI-1.0.lua:928: in function <Interface\\AddOns\\Blizzard_PVPUI\\Blizzard_PVPUI.lua:919>",
			["session"] = 6586,
			["counter"] = 2,
		}, -- [21]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI_SLE' tried to call the protected function 'CollectionsJournal:EnableMouse()'.",
			["time"] = "2018/12/16 18:06:38",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EnableMouse'\nInterface\\AddOns\\ElvUI_SLE\\modules\\blizzard.lua:193: in function `MakeMovable'\nInterface\\AddOns\\ElvUI_SLE\\modules\\blizzard.lua:238: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:615: in function `CollectionsJournal_LoadUI'\nInterface\\FrameXML\\UIParent.lua:955: in function `SetCollectionsJournalShown'\nInterface\\FrameXML\\UIParent.lua:949: in function `ToggleCollectionsJournal'\n[string \"TOGGLECOLLECTIONSMOUNTJOURNAL\"]:1: in function <[string \"TOGGLECOLLECTIONSMOUNTJOURNAL\"]:1>",
			["session"] = 6596,
			["counter"] = 3,
		}, -- [22]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'DialogKey' tried to call the protected function 'ConfirmAzeriteEmpoweredItemRespec()'.",
			["time"] = "2018/12/29 03:16:55",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `ConfirmAzeriteEmpoweredItemRespec'\nInterface\\FrameXML\\StaticPopup.lua:1982: in function `OnAccept'\nInterface\\FrameXML\\StaticPopup.lua:4990: in function `StaticPopup_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>\n[C]: in function `Click'\nInterface\\AddOns\\DialogKey\\core.lua:794: in function `ClickButton'\nInterface\\AddOns\\DialogKey\\core.lua:733: in function `ClickButtons'\nInterface\\AddOns\\DialogKey\\core.lua:683: in function <Interface\\AddOns\\DialogKey\\core.lua:630>",
			["session"] = 6602,
			["counter"] = 1,
		}, -- [23]
		{
			["message"] = "Interface\\AddOns\\TipTac\\ttIcons.lua:17: Usage: GetRaidTargetIndex(unit)",
			["time"] = "2018/12/19 20:27:51",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `GetRaidTargetIndex'\nInterface\\AddOns\\TipTac\\ttIcons.lua:17: in function `SetIcon'\nInterface\\AddOns\\TipTac\\ttIcons.lua:67: in function `?'\nInterface\\AddOns\\TipTac\\ttCore.lua:300: in function `SendElementEvent'\nInterface\\AddOns\\TipTac\\ttCore.lua:676: in function `ApplyUnitAppearance'\nInterface\\AddOns\\TipTac\\ttCore.lua:821: in function <Interface\\AddOns\\TipTac\\ttCore.lua:782>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: in function `SetUnit'\nInterface\\AddOns\\ElvUI\\Modules\\tooltip\\tooltip.lua:273: in function `InspectReady'\nInterface\\AddOns\\ElvUI\\Modules\\tooltip\\tooltip.lua:795: in function `callback'\n...ace\\AddOns\\ElvUI\\Libraries\\LibInspect\\LibInspect-5.lua:456: in function `RunHooks'\n...ace\\AddOns\\ElvUI\\Libraries\\LibInspect\\LibInspect-5.lua:336: in function `InspectReady'\n...ace\\AddOns\\ElvUI\\Libraries\\LibInspect\\LibInspect-5.lua:482: in function <...ace\\AddOns\\ElvUI\\Libraries\\LibInspect\\LibInspect.lua:480>",
			["session"] = 6602,
			["counter"] = 4,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RCLootCouncil' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2018/12/29 04:11:28",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:571: in function `CompactRaidFrameManager_LockContainer'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:564: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:57: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:50>",
			["session"] = 6602,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Error loading Interface\\AddOns\\AddOnSkins\\Libs\\Ace3\\LibStub\\LibStub.lua",
			["time"] = "2018/12/22 15:14:18",
			["session"] = 6603,
			["counter"] = 3,
		}, -- [26]
		{
			["message"] = "Couldn't open Interface\\AddOns\\AddOnSkins\\Libs\\Ace3\\CallbackHandler-1.0-7\\CallbackHandler-1.0.xml",
			["time"] = "2018/12/22 15:14:18",
			["session"] = 6603,
			["counter"] = 3,
		}, -- [27]
		{
			["message"] = "Couldn't open Interface\\AddOns\\AddOnSkins\\Libs\\Ace3\\AceAddon-3.0-12\\AceAddon-3.0.xml",
			["time"] = "2018/12/22 15:14:18",
			["session"] = 6603,
			["counter"] = 3,
		}, -- [28]
		{
			["message"] = "Couldn't open Interface\\AddOns\\AddOnSkins\\Libs\\Ace3\\AceEvent-3.0-4\\AceEvent-3.0.xml",
			["time"] = "2018/12/22 15:14:18",
			["session"] = 6603,
			["counter"] = 3,
		}, -- [29]
		{
			["message"] = "...ns\\Libs\\AceGUI-3.0-SharedMediaWidgets\\prototypes.lua:14: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...ns\\Libs\\AceGUI-3.0-SharedMediaWidgets\\prototypes.lua:14: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [30]
		{
			["message"] = "...ns\\Libs\\AceGUI-3.0-SharedMediaWidgets\\FontWidget.lua:4: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...ns\\Libs\\AceGUI-3.0-SharedMediaWidgets\\FontWidget.lua:4: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [31]
		{
			["message"] = "...s\\Libs\\AceGUI-3.0-SharedMediaWidgets\\SoundWidget.lua:4: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...s\\Libs\\AceGUI-3.0-SharedMediaWidgets\\SoundWidget.lua:4: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [32]
		{
			["message"] = "...bs\\AceGUI-3.0-SharedMediaWidgets\\StatusbarWidget.lua:4: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...bs\\AceGUI-3.0-SharedMediaWidgets\\StatusbarWidget.lua:4: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [33]
		{
			["message"] = "...\\Libs\\AceGUI-3.0-SharedMediaWidgets\\BorderWidget.lua:4: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...\\Libs\\AceGUI-3.0-SharedMediaWidgets\\BorderWidget.lua:4: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [34]
		{
			["message"] = "...s\\AceGUI-3.0-SharedMediaWidgets\\BackgroundWidget.lua:4: Cannot find a library instance of \"AceGUI-3.0\".",
			["time"] = "2018/12/20 20:32:00",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"AceGUI-3.0\".\"\n",
			["stack"] = "[C]: in function `error'\n...nterface\\AddOns\\SharedMedia\\libs\\LibStub\\LibStub.lua:38: in function `LibStub'\n...s\\AceGUI-3.0-SharedMediaWidgets\\BackgroundWidget.lua:4: in main chunk",
			["session"] = 6604,
			["counter"] = 118,
		}, -- [35]
		{
			["message"] = "[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:87: script ran too long",
			["time"] = "2018/12/29 05:46:36",
			["stack"] = "[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:88: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:82>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:88: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:82>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:88: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:82>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:88: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:82>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:88: in function `FindButtonsForUnit'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:131: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:81>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:145: in function `GetFrame'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:168: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:157>\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:211: in function `updateFrames'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:5: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:517: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\n...\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:447: in function <[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:441>\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:608: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:942: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1166: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 6604,
			["counter"] = 1,
		}, -- [36]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:518: script ran too long",
			["time"] = "2018/12/29 05:46:36",
			["stack"] = "Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1: in function <[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:3388: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:566: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4526: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4477>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4574: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4568>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4676: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:642: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:447: in function <[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:441>\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:608: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:942: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1166: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 6604,
			["counter"] = 1,
		}, -- [37]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:3389: script ran too long",
			["time"] = "2018/12/29 05:46:36",
			["stack"] = "Interface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:3389: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:566: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4526: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4477>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4574: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4568>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4676: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:642: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:447: in function <[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:441>\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:608: in function `watch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:942: in function `addOrUpdateMember'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1166: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 6604,
			["counter"] = 1,
		}, -- [38]
		{
			["message"] = "...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:30: script ran too long",
			["time"] = "2018/12/29 05:46:36",
			["locals"] = "handlers = <table> {\n  = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119\n  = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119\n  = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119\n}\nindex = <table> {\n watching = <table> {\n }\n rebroadcast = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() local ZT = aura_env\n--------------------------------------------------------------------------------\n-- BEGIN CONFIGURATION\n--------------------------------------------------------------------------------\n\n-- Option #1: Whether to show your own cooldowns on a per-type basis\nZT.showMine = {\n    [\"INTERRUPT\"] = true,\n    [\"HARDCC\"]    = true,\n    [\"STHARDCC\"]  = true,\n    [\"SOFTCC\"]    = true,\n    [\"STSOFTCC\"]  = true,\n    [\"EXTERNAL\"]  = true,\n    [\"HEALING\"]   = true,\n    [\"DISPEL\"]    = true,\n    [\"UTILITY\"]   = true,\n    [\"PERSONAL\"]  = true,\n    [\"IMMUNITY\"]  = true,\n    [\"DAMAGE\"]    = true,\n    [\"TANK\"]      = true,\n}\n\n-- Option #2: Blacklist for spells according to their IDs\n--    e.g., ZT.blacklist = {51490, 132469}\n--    Note: You may also comment out lines in the \"BEGIN TRACKED SPELLS\" section\nZT.blacklist = {}\n\n--------------------------------------------------------------------------------\n-- END CONFIGURAT inspectLib = <table> {\n }\n handleCDUpdate = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() local ZT = aura_env\n--------------------------------------------------------------------------------\n-- BEGIN CONFIGURATION\n--------------------------------------------------------------------------------\n\n-- Option #1: Whether to show your own cooldowns on a per-type basis\nZT.showMine = {\n    [\"INTERRUPT\"] = true,\n    [\"HARDCC\"]    = true,\n    [\"STHARDCC\"]  = true,\n    [\"SOFTCC\"]    = true,\n    [\"STSOFTCC\"]  = true,\n    [\"EXTERNAL\"]  = true,\n    [\"HEALING\"]   = true,\n    [\"DISPEL\"]    = true,\n    [\"UTILITY\"]   = true,\n    [\"PERSONAL\"]  = true,\n    [\"IMMUNITY\"]  = true,\n    [\"DAMAGE\"]    = true,\n    [\"TANK\"]      = true,\n}\n\n-- Option #2: Blacklist for spells according to their IDs\n--    e.g., ZT.blacklist = {51490, 132469}\n--    Note: You may also comment out lines in the \"BEGIN TRACKED SPELLS\" section\nZT.blacklist = {}\n\n--------------------------------------------------------------------------------\n-- END CONFIGU DEBUG = false\n handleMessage = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() local ZT = aura_env\n--------------------------------------------------------------------------------\n-- BEGIN CONFIGURATION\n--------------------------------------------------------------------------------\n\n-- Option #1: Whether to show your own cooldowns on a per-type basis\nZT.showMine = {\n    [\"INTERRUPT\"] = true,\n    [\"HARDCC\"]    = true,\n    [\"STHARDCC\"]  = true,\n    [\"SOFTCC\"]    = true,\n    [\"STSOFTCC\"]  = true,\n    [\"EXTERNAL\"]  = true,\n    [\"HEALING\"]   = true,\n    [\"DISPEL\"]    = true,\n    [\"UTILITY\"]   = true,\n    [\"PERSONAL\"]  = true,\n    [\"IMMUNITY\"]  = true,\n    [\"DAMAGE\"]    = true,\n    [\"TANK\"]      = true,\n}\n\n-- Option #2: Blacklist for spells according to their IDs\n--    e.g., ZT.blacklist = {51490, 132469}\n--    Note: You may also comment out lines in the \"BEGIN TRACKED SPELLS\" section\nZT.blacklist = {}\n\n--------------------------------------------------------------------------------\n-- END CONFIGUR removeEventHandler = <function> defined --[[ Error in 'ZenTracker (ZT) Main' ]] return function() local ZT = aura_env\n--------------------------------------------------------------------------------\n-- BEGIN CONFIGURATION\n--------------------------------------------------------------------------------\n\n-- Option #1: Whether to show your own cooldowns on a per-type basis\nZT.showMine = {\n    [\"INTERRUPT\"] = true,\n    [\"HARDCC\"]    = true,\n    [\"STHARDCC\"]  = true,\n    [\"SOFTCC\"]    = true,\n    [\"STSOFTCC\"]  = true,\n    [\"EXTERNAL\"]  = true,\n    [\"HEALING\"]   = true,\n    [\"DISPEL\"]    = true,\n    [",
			["stack"] = "...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:30: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:607: in function `eventhandler'\n...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1-90.lua:120: in function <...ils\\Libs\\LibGroupInSpecT-1.1\\LibGroupInSpecT-1.1.lua:118>",
			["session"] = 6604,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:487: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/29 05:48:47",
			["stack"] = "[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:709: in function `unwatch'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:827: in function `unregisterFrontEnd'\n[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:2: in function <[string \"--[[ Error in 'ZenTracker (ZT) Main' ]] ret...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\n[string \"--[[ Error in 'ZT - Nnogga's Party CD Front...\"]:20: in function `Collapse'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1956: in function `UnloadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1768: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1655>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1801: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1844: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1842>",
			["session"] = 6604,
			["counter"] = 2,
		}, -- [40]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:174: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/22 15:17:18",
			["stack"] = "Interface\\AddOns\\ElvUI\\Modules\\misc\\loot-Loot.lua:174: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6606,
			["counter"] = 4,
		}, -- [41]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'AutoTurnIn' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2018/12/29 15:55:06",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `UseQuestLogSpecialItem'\n...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 6607,
			["counter"] = 1,
		}, -- [42]
		{
			["message"] = "[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:96: bad argument #1 to 'find' (string expected, got nil)",
			["time"] = "2018/12/15 00:48:00",
			["stack"] = "[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:96: in function <[string \"--[[ Error in 'Cast Bar' ]] return function...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:517: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:659: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:821: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.6.lua:1900: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.6.lua:1766: in function `ScanForLoads'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.6.lua:1836: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1834>",
			["session"] = 6617,
			["counter"] = 39,
		}, -- [43]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:58: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2018/12/19 19:15:49",
			["locals"] = "self = WorldQuestGroupFinderAddon {\n 0 = <userdata>\n}\nevent = \"ADDON_LOADED\"\naddon = \"WorldQuestGroupFinder\"\n(*temporary) = nil\n(*temporary) = \"WQGF\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\nBROADCAST_PREFIX = \"WQGF\"\n",
			["stack"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:58: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:56>\n(tail call): ?",
			["session"] = 6624,
			["counter"] = 14,
		}, -- [44]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:433: hooksecurefunc(): TaskPOI_OnClick is not a function",
			["time"] = "2018/12/19 19:16:10",
			["locals"] = "",
			["stack"] = "[C]: in function `hooksecurefunc'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:433: in function `SetHooks'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:73: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:69>\n(tail call): ?",
			["session"] = 6624,
			["counter"] = 14,
		}, -- [45]
		{
			["message"] = "[string \"--[[ Error in 'druid mana bar' ]] return fu...\"]:2: attempt to call global 'UnitMana' (a nil value)",
			["time"] = "2018/12/24 13:35:21",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1291: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4517: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4477>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4574: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4568>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4659: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:666: in function `ScanWithFakeEvent'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:821: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1908: in function `LoadDisplays'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1767: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1655>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1859: in function `ReloadAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1544: in function `ScanAll'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1494: in function `Resume'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:1357: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:1324>",
			["session"] = 6624,
			["counter"] = 44,
		}, -- [46]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2018/12/19 19:16:12",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6624,
			["counter"] = 10,
		}, -- [47]
		{
			["message"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:423: attempt to call global 'QuestUtils_CanUseAutoGroupFinder' (a nil value)",
			["time"] = "2018/12/24 11:07:44",
			["locals"] = "block = <unnamed> {\n 0 = <userdata>\n lines = <table> {\n }\n id = 53037\n HeaderButton = ObjectiveTrackerBlocksFrameHeader {\n }\n HeaderText = <unnamed> {\n }\n height = 0\n used = true\n lineWidth = 226.222221\n module = <table> {\n }\n}\nquestID = 53037\ncanFindGroup = false\n(*temporary) = nil\n(*temporary) = 53037\n(*temporary) = true\n(*temporary) = \"attempt to call global 'QuestUtils_CanUseAutoGroupFinder' (a nil value)\"\nblacklistedQuests = <table> {\n}\n",
			["stack"] = "...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:423: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:410>\n[C]: in function `QuestObjectiveSetupBlockButton_FindGroup'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:52: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:49>\n[C]: in function `SetBlockHeader'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:390: in function `func'\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:209: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:205>\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:221: in function <..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:218>\n..._ObjectiveTracker\\Blizzard_QuestObjectiveTracker.lua:377: in function `Update'\n...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:1073: in function <...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:1032>\n[C]: ?\n[C]: ?\n[C]: in function `ObjectiveTracker_Update'\n...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:701: in function <...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:669>\n[C]: in function `AddQuestWatch'\n...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:685: in function <...zzard_ObjectiveTracker\\Blizzard_ObjectiveTracker.lua:669>",
			["session"] = 6624,
			["counter"] = 329,
		}, -- [48]
		{
			["message"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1188: attempt to index upvalue 'color' (a nil value)",
			["time"] = "2018/12/22 15:14:02",
			["stack"] = "...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1188: in function <...rface\\AddOns\\ElvUI\\Modules\\actionbars\\actionbars.lua:1186>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1203: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:1087>\n...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:762: in function <...ibraries\\LibActionButton-1.0\\LibActionButton-1.0.lua:752>\n[C]: in function `EditMacro'\nInterface\\AddOns\\TalentMacros\\TalentMacros-v1.1.6.lua:222: in function `?'\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ibraries\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...AddOns\\ElvUI\\Libraries\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 6625,
			["counter"] = 29,
		}, -- [49]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WorldQuestsList' tried to call the protected function 'Search()'.",
			["time"] = "2018/12/15 19:26:28",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Search'\nInterface\\FrameXML\\LFGList.lua:1744: in function `LFGListSearchPanel_DoSearch'\nInterface\\FrameXML\\LFGList.lua:1916: in function <Interface\\FrameXML\\LFGList.lua:1910>\n[C]: ?\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-82.lua:6901: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:6897>\n[C]: in function `Click'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-82.lua:6994: in function `LFG_Search'\nInterface\\AddOns\\WorldQuestsList\\WorldQuestsList-82.lua:7399: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:7373>",
			["session"] = 6627,
			["counter"] = 10,
		}, -- [50]
		{
			["message"] = "...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:2293: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/30 21:05:09",
			["locals"] = "InCombatSkipped",
			["stack"] = "...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:2293: in function `AddQuest'\n...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:2431: in function <...\\AddOns\\WorldQuestTracker\\WorldQuestTracker_Core.lua:2406>",
			["session"] = 6631,
			["counter"] = 5,
		}, -- [51]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'WorldQuestsList' tried to call the protected function 'UseQuestLogSpecialItem()'.",
			["time"] = "2018/12/30 21:05:37",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `UseQuestLogSpecialItem'\n...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:95: in function <...ObjectiveTracker\\Blizzard_ObjectiveTrackerShared.lua:88>",
			["session"] = 6631,
			["counter"] = 1,
		}, -- [52]
		{
			["message"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: attempt to index field 'Combat' (a nil value)",
			["time"] = "2018/12/15 14:29:48",
			["locals"] = "E = <table> {\n GetTimeInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:369\n privateVars = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:147\n FormatMoney = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:428\n ExitVehicleShowFrames = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1220\n StaticPopup_EscapePressed = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:591\n CopyTable = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:688\n MassGuildKick = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:78\n SetMoversPositions = <function> defined @Interface\\AddOns\\ElvUI\\core\\movers.lua:478\n ScheduleTimer = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceTimer-3.0\\AceTimer-3.0.lua:94\n PriestColors = <table> {\n }\n RegisterModule = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1369\n SetupTheme = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:164\n media = <table> {\n }\n SetUpAnimGroup = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:11\n EnableBlizzardAddOns = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:210\n UIScale = <function> defined @Interface\\AddOns\\ElvUI\\core\\pixelperfect.lua:13\n db = <table> {\n }\n FramesOverlap = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:126\n SetEnabledState = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceHook-3.0\\AceHook-3.0.lua:274\n Options = <table> {\n }\n Layout = <table> {\n }\n tDeleteItem = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:290\n LoadCommands = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:220\n UnregisterEventForObject = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1318\n HiddenFrame = <unnamed> {\n }\n NewModule = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:235\n UIFrameFade = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:229\n MinimapWidth = 176\n StaticPopup_IsLastDisplayedFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\staticpopups.lua:652\n Truncate = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:107\n UpdateBackdropColors = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:502\n TimeThreshold = 3\n RemoveTableDuplicates = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:725\n name = \"ElvUI\"\n WorldMap = <table> {\n }\n MinimapHeight = 176\n Disable = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:314\n DF = <table> {\n }\n SlideOut = <function> defined @Interface\\AddOns\\ElvUI\\core\\animation.lua:174\n isMacClient = false\n Print = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:184\n Install = <function> defined @Interface\\AddOns\\ElvUI\\core\\install.lua:800\n UnregisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1251\n LockedCVars = <table> {\n }\n TimeFormats = <table> {\n }\n RGBToHex = <function> defined @Interface\\AddOns\\ElvUI\\core\\math.lua:112\n RequestBGInfo = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:413\n HealingClasses = <table> {\n }\n loadedtime = 297.423000\n Tutorials = <function> defined @Interface\\AddOns\\ElvUI\\core\\tutorials.lua:115\n UpdateNudgeFrame = <function> defined @Interface\\AddOns\\ElvUI\\core\\config.lua:189\n GetCPUImpact = <function> defined @Interface\\AddOns\\ElvUI\\core\\commands.lua:124\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:367\n ProfileTableToPluginFormat = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:841\n Blizzard = <table> {\n }\n wowbuild = 28768\n RegisteredInitialModules = <table> {\n }\n EnableModule = <function> defined @Interface\\AddOns\\ElvUI\\Libraries\\AceAddon-3.0\\AceAddon-3.0.lua:332\n unitFrameElements = <table> {\n }\n RegisterObjectForVehicleLock = <function> defined @Interface\\AddOns\\ElvUI\\core\\core.lua:1228\n RawHookScript = <function> defined @Interface",
			["stack"] = "Interface\\AddOns\\ElvUI_Skullflower\\core\\install.lua:5: in main chunk",
			["session"] = 6636,
			["counter"] = 200,
		}, -- [53]
		{
			["message"] = "(null)",
			["session"] = 6636,
			["time"] = "2018/12/15 14:30:06",
			["counter"] = 600,
		}, -- [54]
		{
			["message"] = "[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:41: Usage: UnitDebuff(\"unit\", [index][, \"filter\"])",
			["time"] = "2018/12/15 00:49:09",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:41: in function <[string \"--[[ Error in 'Taunt Diminishing Return 2' ...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:546: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:622: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:684: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>",
			["session"] = 6636,
			["counter"] = 1466,
		}, -- [55]
	},
}
