
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 4803,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: attempt to perform arithmetic on local 'endTimeMS' (a nil value)",
			["time"] = "2018/07/02 20:01:56",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:1034: in function <Interface\\AddOns\\SMT\\core\\core.lua:1031>",
			["session"] = 4780,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:1019: attempt to perform arithmetic on local 'endTimeMS' (a nil value)",
			["time"] = "2018/07/02 20:14:11",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:1019: in function <Interface\\AddOns\\SMT\\core\\core.lua:1016>",
			["session"] = 4780,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'AngryKeystones' tried to call the protected function '<unnamed>:Hide()'.",
			["time"] = "2018/07/02 21:08:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Hide'\nInterface\\FrameXML\\WorldMapActionButton.lua:58: in function `Clear'\nInterface\\FrameXML\\WorldMapActionButton.lua:67: in function `Refresh'\nInterface\\FrameXML\\WorldMapActionButton.lua:19: in function `SetMapAreaID'\nInterface\\FrameXML\\WorldMapFrame.lua:1380: in function `WorldMapFrame_Update'\nInterface\\FrameXML\\WorldMapFrame.lua:2970: in function `WorldMapFrame_UpdateMap'\nInterface\\FrameXML\\WorldMapFrame.lua:469: in function <Interface\\FrameXML\\WorldMapFrame.lua:445>\n[C]: ?\n[C]: in function `SetMapToCurrentZone'\nInterface\\FrameXML\\WorldMapFrame.lua:390: in function <Interface\\FrameXML\\WorldMapFrame.lua:369>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2493: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2295: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2203: in function <Interface\\FrameXML\\UIParent.lua:2199>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:2987: in function `ShowUIPanel'\nInterface\\FrameXML\\UIParent.lua:2971: in function `ToggleFrame'\nInterface\\FrameXML\\WorldMapFrame.lua:267: in function <Interface\\FrameXML\\WorldMapFrame.lua:239>\n[C]: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 4780,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[string \"--[[ Error in ' Argus - Soulburst' ]]return...\"]:12: attempt to concatenate local 'marker' (a nil value)",
			["time"] = "2018/07/04 20:36:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\WeakAuras\\RegionTypes\\AuraBar.lua:1281: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.5.12.lua:3556: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:3550>",
			["session"] = 4788,
			["counter"] = 80,
		}, -- [4]
		{
			["message"] = "...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2018/07/04 19:46:57",
			["locals"] = "(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: ?\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:140: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:139>\n...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress-0.3e for Patch 7.1.0.lua:474: in function <...ace\\AddOns\\MythicPlusProgress\\MythicPlusProgress.lua:470>\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?\n[C]: ?",
			["session"] = 4788,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\SMT\\core\\core.lua:888: table index is nil",
			["time"] = "2018/07/02 20:35:07",
			["locals"] = "(*temporary) = <table> {\n Creature-0-3892-1516-4940-98208-00003A6F7F = true\n}\n(*temporary) = nil\n(*temporary) = \"nameplate1\"\n(*temporary) = \"table index is nil\"\nframe = <unnamed> {\n 0 = <userdata>\n glow = <unnamed> {\n }\n source = <table> {\n }\n exp = 93560.693\n enable = true\n update_onedit = <function> defined @Interface\\AddOns\\SMT\\core\\core.lua:798\n target = false\n count = 0\n style = true\n texture = <unnamed> {\n }\n spell_name = \"Summon Chrono Shard\"\n update_onevent = <function> defined @Interface\\AddOns\\SMT\\core\\core.lua:843\n map_id = 1079\n toptext = <unnamed> {\n }\n cast_time = 0\n text = <unnamed> {\n }\n map_check = <function> defined @Interface\\AddOns\\SMT\\core\\core.lua:829\n v = \"1079_cast_no_203881\"\n spell_id = 203881\n t = 0.041000001132488\n sd = <unnamed> {\n }\n bottomtext = <unnamed> {\n }\n spell_icon = 132874\n hl = \"no\"\n update_onframe = <function> defined @Interface\\AddOns\\SMT\\core\\core.lua:919\n reset = <function> defined @Interface\\AddOns\\SMT\\core\\core.lua:790\n}\nUnit = \"nameplate1\"\n",
			["stack"] = "Interface\\AddOns\\SMT\\core\\core.lua:888: in function <Interface\\AddOns\\SMT\\core\\core.lua:886>",
			["session"] = 4798,
			["counter"] = 6,
		}, -- [6]
		{
			["message"] = "Usage: local questTitle, factionID, capped = C_TaskQuest.GetQuestInfoByQuestID(questID)",
			["time"] = "2018/07/05 21:49:09",
			["locals"] = "(*temporary) = \"Usage: local questTitle, factionID, capped = C_TaskQuest.GetQuestInfoByQuestID(questID)\"\n",
			["stack"] = "[C]: in function `GetQuestInfoByQuestID'\nInterface\\FrameXML\\QuestUtils.lua:100: in function `QuestUtils_GetQuestName'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:746: in function `CreateGroup'\n...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder-0.27.lua:297: in function <...dOns\\WorldQuestGroupFinder\\WorldQuestGroupFinder.lua:296>",
			["session"] = 4801,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'DialogKey' tried to call the protected function 'UIParent:EnableMouseWheel()'.",
			["time"] = "2018/07/05 22:00:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `EnableMouseWheel'\nInterface\\AddOns\\DialogKey\\core.lua:62: in function <Interface\\AddOns\\DialogKey\\core.lua:62>\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:2477: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2553: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2207: in function <Interface\\FrameXML\\UIParent.lua:2199>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3003: in function `HideUIPanel'\nInterface\\FrameXML\\QuestFrame.lua:25: in function <Interface\\FrameXML\\QuestFrame.lua:23>\n[C]: in function `AcceptQuest'\nInterface\\FrameXML\\QuestFrame.lua:508: in function <Interface\\FrameXML\\QuestFrame.lua:501>\n[C]: in function `Click'\nInterface\\AddOns\\DialogKey\\core.lua:752: in function `ClickButton'\nInterface\\AddOns\\DialogKey\\core.lua:691: in function `ClickButtons'\nInterface\\AddOns\\DialogKey\\core.lua:682: in function <Interface\\AddOns\\DialogKey\\core.lua:630>",
			["session"] = 4801,
			["counter"] = 1,
		}, -- [8]
	},
}
