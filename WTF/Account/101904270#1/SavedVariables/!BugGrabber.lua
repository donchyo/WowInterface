
BugGrabberDB = {
	["session"] = 190,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:1: '=' expected near '<eof>'",
			["time"] = "2018/02/02 14:10:00",
			["locals"] = "",
			["stack"] = "",
			["session"] = 2,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:5: Invalid inventory slot in GetInventorySlotInfo",
			["time"] = "2018/02/02 14:26:26",
			["locals"] = "(*temporary) = \"2\"\n",
			["stack"] = "[C]: in function `GetInventorySlotInfo'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:5: in main chunk",
			["session"] = 10,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:6: '<name>' expected near '='",
			["time"] = "2018/02/02 14:32:34",
			["locals"] = "",
			["stack"] = "",
			["session"] = 15,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:11: ')' expected near '='",
			["time"] = "2018/02/02 14:37:46",
			["locals"] = "",
			["stack"] = "",
			["session"] = 18,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: ')' expected near 'prydazEquipped'",
			["time"] = "2018/02/02 14:42:23",
			["locals"] = "",
			["stack"] = "",
			["session"] = 21,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: attempt to concatenate local 'prydazEquipped' (a boolean value)",
			["time"] = "2018/02/02 14:43:16",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\ntexture = 136519\ncheckRelic = false\nitemLink = \"|cff00ccff|Hitem:153130::::::::11:256::::::|h[Man'ari Training Amulet]|h|r\"\nitemId = 153130\nprydazEquipped = false\n(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = \"Is prydaz equipped: \"\n(*temporary) = false\n(*temporary) = \"attempt to concatenate local 'prydazEquipped' (a boolean value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: in main chunk",
			["session"] = 22,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: attempt to index local 'prydazEquipped' (a boolean value)",
			["time"] = "2018/02/02 14:43:35",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\ntexture = 136519\ncheckRelic = false\nitemLink = \"|cff00ccff|Hitem:153130::::::::11:256::::::|h[Man'ari Training Amulet]|h|r\"\nitemId = 153130\nprydazEquipped = false\n(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = \"Is prydaz equipped: \"\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"attempt to index local 'prydazEquipped' (a boolean value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: in main chunk",
			["session"] = 23,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:17: ')' expected near '<eof>'",
			["time"] = "2018/02/02 14:45:29",
			["locals"] = "",
			["stack"] = "",
			["session"] = 25,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:13: ')' expected near 'max_health'",
			["time"] = "2018/02/02 14:49:26",
			["locals"] = "",
			["stack"] = "",
			["session"] = 30,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:13: unexpected symbol near ')'",
			["time"] = "2018/02/02 14:49:54",
			["locals"] = "",
			["stack"] = "",
			["session"] = 31,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "[string \"GetSpecializationInfo()\"]:1: Usage: GetSpecializationInfo(specIndex[, isInspect[, isPet[, inspectTarget[, sex]]]])",
			["time"] = "2018/02/02 16:00:04",
			["locals"] = "",
			["stack"] = "[C]: in function `GetSpecializationInfo'\n[string \"GetSpecializationInfo()\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2069: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 51,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:18: unexpected symbol near ','",
			["time"] = "2018/02/02 16:01:07",
			["locals"] = "",
			["stack"] = "",
			["session"] = 52,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:18: ')' expected near '<eof>'",
			["time"] = "2018/02/02 16:02:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 53,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:18: Usage: GetSpecializationInfo(specIndex[, isInspect[, isPet[, inspectTarget[, sex]]]])",
			["time"] = "2018/02/02 15:12:06",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `GetSpecializationInfo'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:18: in main chunk",
			["session"] = 54,
			["counter"] = 2,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:20: unexpected symbol near ','",
			["time"] = "2018/02/02 16:04:18",
			["locals"] = "",
			["stack"] = "",
			["session"] = 56,
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:19: attempt to concatenate a nil value",
			["time"] = "2018/02/02 16:13:54",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\n(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = \"asd: \"\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to concatenate a nil value\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:19: in main chunk",
			["session"] = 61,
			["counter"] = 1,
		}, -- [16]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:21: ')' expected (to close '(' at line 20) near '<eof>'",
			["time"] = "2018/02/02 17:18:18",
			["locals"] = "",
			["stack"] = "",
			["session"] = 69,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:20: attempt to concatenate a nil value",
			["time"] = "2018/02/02 17:24:09",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\n(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = nil\n(*temporary) = \"test\"\n(*temporary) = 1\n(*temporary) = \"attempt to concatenate a nil value\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:20: in main chunk",
			["session"] = 71,
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "[string \"as this works when doing /run print(GetSpecializationInfo(GetSp...\"]:1: '=' expected near 'this'",
			["time"] = "2018/02/02 17:25:57",
			["locals"] = "(*temporary) = \"as this works when doing /run print(GetSpecializationInfo(GetSpecialization())..\"test\")\"\n",
			["stack"] = "[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2069: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 71,
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:21: attempt to concatenate a nil value",
			["time"] = "2018/02/02 15:12:34",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nspecID = 2\n(*temporary) = <function> defined @Interface\\FrameXML\\RestrictedInfrastructure.lua:116\n(*temporary) = 2\n(*temporary) = \" \"\n(*temporary) = nil\n(*temporary) = 2\n(*temporary) = \"attempt to concatenate a nil value\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:21: in main chunk",
			["session"] = 72,
			["counter"] = 2,
		}, -- [20]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:3: ')' expected (to close '(' at line 2) near 'print'",
			["time"] = "2018/02/02 17:35:14",
			["locals"] = "",
			["stack"] = "",
			["session"] = 77,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:1: attempt to index global 'self' (a nil value)",
			["time"] = "2018/02/02 17:50:27",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'self' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:1: in main chunk",
			["session"] = 84,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:9: ')' expected (to close '(' at line 3) near 'print'",
			["time"] = "2018/02/02 18:01:49",
			["locals"] = "",
			["stack"] = "",
			["session"] = 91,
			["counter"] = 3,
		}, -- [23]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:21: unexpected symbol near '=='",
			["time"] = "2018/02/02 18:08:47",
			["locals"] = "",
			["stack"] = "",
			["session"] = 95,
			["counter"] = 1,
		}, -- [24]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:21: unfinished string near '''",
			["time"] = "2018/02/02 19:02:16",
			["locals"] = "",
			["stack"] = "",
			["session"] = 103,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:33: ')' expected near 'BasicFrameTemplateWithInset'",
			["time"] = "2018/02/02 20:05:58",
			["locals"] = "",
			["stack"] = "",
			["session"] = 108,
			["counter"] = 1,
		}, -- [26]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:38: attempt to call method 'CreateFontStriong' (a nil value)",
			["time"] = "2018/02/02 20:36:29",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nUIConfig = WillILiveFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n InsetBorderTopLeft = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n InsetBg = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n InsetBorderRight = <unnamed> {\n }\n InsetBorderLeft = <unnamed> {\n }\n InsetBorderBottomLeft = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n InsetBorderBottom = <unnamed> {\n }\n InsetBorderTop = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n InsetBorderTopRight = <unnamed> {\n }\n InsetBorderBottomRight = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = WillILiveFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n InsetBorderTopLeft = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n InsetBg = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n InsetBorderRight = <unnamed> {\n }\n InsetBorderLeft = <unnamed> {\n }\n InsetBorderBottomLeft = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n InsetBorderBottom = <unnamed> {\n }\n InsetBorderTop = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n InsetBorderTopRight = <unnamed> {\n }\n InsetBorderBottomRight = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = \"OVERLAY\"\n(*temporary) = \"attempt to call method 'CreateFontStriong' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:38: in main chunk",
			["session"] = 113,
			["counter"] = 1,
		}, -- [27]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:43: ')' expected near 'Â'",
			["time"] = "2018/02/02 20:41:42",
			["locals"] = "",
			["stack"] = "",
			["session"] = 115,
			["counter"] = 1,
		}, -- [28]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:44: <unnamed>:SetPoint(): trying to anchor to itself",
			["time"] = "2018/02/02 20:44:30",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n Text = WillILiveFrameText {\n }\n Right = <unnamed> {\n }\n Middle = <unnamed> {\n }\n Left = <unnamed> {\n }\n}\n(*temporary) = \"TOP\"\n(*temporary) = <unnamed> {\n 0 = <userdata>\n Text = WillILiveFrameText {\n }\n Right = <unnamed> {\n }\n Middle = <unnamed> {\n }\n Left = <unnamed> {\n }\n}\n(*temporary) = \"BOTTOM\"\n(*temporary) = 0\n(*temporary) = -10\n",
			["stack"] = "[C]: in function `SetPoint'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:44: in main chunk",
			["session"] = 117,
			["counter"] = 1,
		}, -- [29]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:47: attempt to call method 'SetFontObject' (a nil value)",
			["time"] = "2018/02/02 20:45:06",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nUIConfig = WillILiveFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n copyButton = <unnamed> {\n }\n InsetBorderTopLeft = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n InsetBorderBottom = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n InsetBg = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n InsetBorderRight = <unnamed> {\n }\n InsetBorderLeft = <unnamed> {\n }\n InsetBorderBottomLeft = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n title = <unnamed> {\n }\n InsetBorderTop = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n InsetBorderTopRight = <unnamed> {\n }\n InsetBorderBottomRight = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = <unnamed> {\n 0 = <userdata>\n Text = WillILiveFrameText {\n }\n Right = <unnamed> {\n }\n Middle = <unnamed> {\n }\n Left = <unnamed> {\n }\n}\n(*temporary) = \"GameFontNormalLarge\"\n(*temporary) = \"attempt to call method 'SetFontObject' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:47: in main chunk",
			["session"] = 118,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:44: unfinished string near '\", 0, +20)'",
			["time"] = "2018/02/02 20:46:50",
			["locals"] = "",
			["stack"] = "",
			["session"] = 123,
			["counter"] = 1,
		}, -- [31]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:44: unfinished string near '\", 0, 20)'",
			["time"] = "2018/02/02 20:46:58",
			["locals"] = "",
			["stack"] = "",
			["session"] = 124,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "Interface\\FrameXML\\ChatFrame.lua:3784: attempt to index field 'chatFrame' (a nil value)",
			["time"] = "2018/02/02 21:09:21",
			["locals"] = "self = WillILiveFrame {\n 0 = <userdata>\n header = WillILiveFrameHeader {\n }\n focusLeft = WillILiveFrameFocusLeft {\n }\n focusRight = WillILiveFrameFocusRight {\n }\n headerSuffix = WillILiveFrameHeaderSuffix {\n }\n focusMid = WillILiveFrameFocusMid {\n }\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = WillILiveFrame {\n 0 = <userdata>\n header = WillILiveFrameHeader {\n }\n focusLeft = WillILiveFrameFocusLeft {\n }\n focusRight = WillILiveFrameFocusRight {\n }\n headerSuffix = WillILiveFrameHeaderSuffix {\n }\n focusMid = WillILiveFrameFocusMid {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'chatFrame' (a nil value)\"\n",
			["stack"] = "Interface\\FrameXML\\ChatFrame.lua:3784: in function `ChatEdit_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>\n[C]: in function `CreateFrame'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:35: in main chunk",
			["session"] = 130,
			["counter"] = 1,
		}, -- [33]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:53: attempt to index global 'Form_MultiBox' (a nil value)",
			["time"] = "2018/02/02 21:11:49",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nUIConfig = WillILiveFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n copyButton = <unnamed> {\n }\n InsetBorderTopLeft = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n InsetBorderBottom = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n InsetBg = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n InsetBorderRight = <unnamed> {\n }\n InsetBorderLeft = <unnamed> {\n }\n InsetBorderBottomLeft = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n title = <unnamed> {\n }\n InsetBorderTop = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n InsetBorderTopRight = <unnamed> {\n }\n InsetBorderBottomRight = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n}\nFormMultiBox = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index global 'Form_MultiBox' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:53: in main chunk",
			["session"] = 131,
			["counter"] = 1,
		}, -- [34]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:90: unfinished string near '\"playerSpecct, max_health, effectiveArmor, versatilityEffect, prydazEquipped'",
			["time"] = "2018/02/02 21:36:38",
			["locals"] = "",
			["stack"] = "",
			["session"] = 144,
			["counter"] = 1,
		}, -- [35]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:84: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 21:21:21",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n}\nframe = MyRaidRosterFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = MyRaidRosterScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:84: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 151,
			["counter"] = 15,
		}, -- [36]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:69: attempt to index global 'UIConfig' (a nil value)",
			["time"] = "2018/02/02 21:48:05",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"OnEscapePressed\"\n(*temporary) = 63608\n(*temporary) = nil\n(*temporary) = <function> defined @Interface\\FrameXML\\UIPanelTemplates.lua:282\n(*temporary) = WillIDieScrollFrame {\n BottomRightTex = <unnamed> {\n }\n BottomLeftTex = <unnamed> {\n }\n TopLeftTex = <unnamed> {\n }\n BottomTex = <unnamed> {\n }\n scrollBarHideable = 1\n TopRightTex = <unnamed> {\n }\n EditBox = <unnamed> {\n }\n CharCount = <unnamed> {\n }\n 0 = <userdata>\n RightTex = <unnamed> {\n }\n ScrollBar = WillIDieScrollFrameScrollBar {\n }\n MiddleTex = <unnamed> {\n }\n LeftTex = <unnamed> {\n }\n TopTex = <unnamed> {\n }\n}\n(*temporary) = \"attempt to index global 'UIConfig' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:69: in main chunk",
			["session"] = 152,
			["counter"] = 1,
		}, -- [37]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:71: attempt to index global 'UIConfig' (a nil value)",
			["time"] = "2018/02/02 21:48:37",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = \"LEFT\"\n(*temporary) = nil\n(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index global 'UIConfig' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:71: in main chunk",
			["session"] = 153,
			["counter"] = 1,
		}, -- [38]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:69: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 21:52:36",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:69: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 157,
			["counter"] = 2,
		}, -- [39]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:65: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 21:49:14",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:65: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 158,
			["counter"] = 3,
		}, -- [40]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:93: '<eof>' expected near 'end'",
			["time"] = "2018/02/02 22:10:22",
			["locals"] = "",
			["stack"] = "",
			["session"] = 161,
			["counter"] = 1,
		}, -- [41]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:92: <unnamed> doesn't have a \"OnClick\" script",
			["time"] = "2018/02/02 22:10:51",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\n(*temporary) = \"OnClick\"\n(*temporary) = <function> defined @Interface\\AddOns\\MyAddon\\MyAddon.lua:93\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:92: in main chunk",
			["session"] = 162,
			["counter"] = 1,
		}, -- [42]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:74: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 22:09:02",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:74: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 163,
			["counter"] = 4,
		}, -- [43]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:89: attempt to index field 'closeButton' (a nil value)",
			["time"] = "2018/02/02 22:21:07",
			["locals"] = "prydazId = 132444\neffectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"\"\nframe = <unnamed> {\n 0 = <userdata>\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"Will I die import frame\"\n(*temporary) = <userdata>\n(*temporary) = \"LEFT\"\n(*temporary) = 5\n(*temporary) = 0\n(*temporary) = \"attempt to index field 'closeButton' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:89: in main chunk",
			["session"] = 164,
			["counter"] = 1,
		}, -- [44]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:89: '<name>' expected near '('",
			["time"] = "2018/02/02 22:21:32",
			["locals"] = "",
			["stack"] = "",
			["session"] = 165,
			["counter"] = 1,
		}, -- [45]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:39: Attempt to find 'this' in non-table object (used '.' instead of ':' ?)",
			["time"] = "2018/02/02 22:22:45",
			["locals"] = "(*temporary) = true\n",
			["stack"] = "[C]: in function `EnableMouse'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:39: in main chunk",
			["session"] = 169,
			["counter"] = 4,
		}, -- [46]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:71: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 22:07:53",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:71: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 173,
			["counter"] = 6,
		}, -- [47]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:76: attempt to concatenate global 'playerSpec' (a nil value)",
			["time"] = "2018/02/02 23:10:00",
			["locals"] = "effectiveArmor = 28\nversatilityEffect = 0.44897967576981\nid = 2\nitemId = 153130\nprydazEquipped = false\nmax_health = 702\nplayerClass = \"Priest\"\nprydazEquipped = false\nplayerSpecc = \"Discipline\"\n(*temporary) = \"Priest\"\n(*temporary) = \" \n\"\n(*temporary) = nil\n(*temporary) = \" \n702 \n28 \n0.44897967576981 \nfalse\"\n(*temporary) = \"702\"\n(*temporary) = \" \n\"\n(*temporary) = \"28\"\n(*temporary) = \" \n\"\n(*temporary) = \"0.44897967576981\"\n(*temporary) = \" \n\"\n(*temporary) = \"false\"\n(*temporary) = false\n(*temporary) = \"attempt to concatenate global 'playerSpec' (a nil value)\"\nprydazId = 132444\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:76: in function `getValues'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:36: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 174,
			["counter"] = 2,
		}, -- [48]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:40: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 23:12:08",
			["locals"] = "msg = \"\"\nlist = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n closeButton = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:40: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 175,
			["counter"] = 2,
		}, -- [49]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:38: attempt to index field 'CharCount' (a nil value)",
			["time"] = "2018/02/02 23:20:56",
			["locals"] = "msg = \"\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"attempt to index field 'CharCount' (a nil value)\"\neditBox = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n title = <unnamed> {\n }\n}\nframe = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n",
			["stack"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:38: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4547: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4215: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4251: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 178,
			["counter"] = 3,
		}, -- [50]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: WillIDieFrame doesn't have a \"OnEscapePressed\" script",
			["time"] = "2018/02/02 23:43:22",
			["locals"] = "(*temporary) = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n(*temporary) = \"OnEscapePressed\"\n(*temporary) = <function> defined =[C]:-1\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: in main chunk",
			["session"] = 182,
			["counter"] = 1,
		}, -- [51]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: function arguments expected near ')'",
			["time"] = "2018/02/02 23:44:32",
			["locals"] = "",
			["stack"] = "",
			["session"] = 183,
			["counter"] = 1,
		}, -- [52]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: Usage: WillIDieFrame:SetScript(\"frameScriptTypeName\", function)",
			["time"] = "2018/02/02 23:44:49",
			["locals"] = "(*temporary) = WillIDieFrame {\n 0 = <userdata>\n TitleText = <unnamed> {\n }\n RightBorder = <unnamed> {\n }\n LeftBorder = <unnamed> {\n }\n TitleBg = <unnamed> {\n }\n BottomBorder = <unnamed> {\n }\n TopRightCorner = <unnamed> {\n }\n TopTileStreaks = <unnamed> {\n }\n BotRightCorner = <unnamed> {\n }\n TopBorder = <unnamed> {\n }\n CloseButton = <unnamed> {\n }\n BotLeftCorner = <unnamed> {\n }\n TopLeftCorner = <unnamed> {\n }\n Bg = <unnamed> {\n }\n scrollFrame = WillIDieScrollFrame {\n }\n}\n(*temporary) = \"OnEscapePressed\"\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: in main chunk",
			["session"] = 184,
			["counter"] = 1,
		}, -- [53]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: Usage: <unnamed>:SetScript(\"frameScriptTypeName\", function)",
			["time"] = "2018/02/02 23:46:08",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n Instructions = <unnamed> {\n }\n}\n(*temporary) = \"OnEscapePressed\"\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: in main chunk",
			["session"] = 185,
			["counter"] = 1,
		}, -- [54]
		{
			["message"] = "Interface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: Attempt to find 'this' in non-table object (used '.' instead of ':' ?)",
			["time"] = "2018/02/02 23:46:28",
			["locals"] = "",
			["stack"] = "[C]: in function `Hide'\nInterface\\AddOns\\MyAddon\\MyAddon-0.1.lua:29: in main chunk",
			["session"] = 186,
			["counter"] = 1,
		}, -- [55]
	},
}
