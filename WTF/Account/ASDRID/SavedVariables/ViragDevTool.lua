
ViragDevTool_Settings = {
	["isSideBarOpen"] = true,
	["fontSize"] = 10,
	["events"] = {
		{
			["event"] = "CURSOR_UPDATE",
			["active"] = false,
		}, -- [1]
		{
			["active"] = false,
			["event"] = "UNIT_AURA",
			["unit"] = "player",
		}, -- [2]
		{
			["event"] = "CHAT_MSG_CHANNEL",
			["active"] = false,
		}, -- [3]
		{
			["event"] = "ViragDevTools",
			["active"] = false,
		}, -- [4]
	},
	["isWndOpen"] = false,
	["history"] = {
		"find aura_env", -- [1]
		"find WeakAurasFrame", -- [2]
		"find WeakAurasFRame.1e57ddc6930", -- [3]
		"find WeakAurasFRame.1e57dcc6930", -- [4]
		"find 1e57ddc6930", -- [5]
		"find Weakaurasframe", -- [6]
		"find Weak", -- [7]
		"find cavalie", -- [8]
		"startswith Virag", -- [9]
		"_G", -- [10]
		"RESET", -- [11]
		"find LFR", -- [12]
		"find SLASH", -- [13]
		"find Data ViragDevTool", -- [14]
		"ViragDevTool.settings.history", -- [15]
	},
	["colors"] = {
		["ok"] = "|cFF00FF00",
		["string"] = {
			0.67, -- [1]
			0.83, -- [2]
			0.45, -- [3]
			1, -- [4]
		},
		["gray"] = "|cFFBEB9B5",
		["parent"] = "|cFFBEB9B5",
		["lightgreen"] = "|cFF98FB98",
		["number"] = {
			1, -- [1]
			0.96, -- [2]
			0.41, -- [3]
			1, -- [4]
		},
		["default"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
		},
		["function"] = {
			1, -- [1]
			0.49, -- [2]
			0.04, -- [3]
			1, -- [4]
		},
		["table"] = {
			0.411764705882353, -- [1]
			0.8, -- [2]
			0.941176470588235, -- [3]
			1, -- [4]
		},
		["lightblue"] = "|cFF96C0CE",
		["green"] = "|cFF00FF00",
		["darkred"] = "|cFFC25B56",
		["red"] = "|cFFFF0000",
		["error"] = "|cFFFF0000",
		["white"] = "|cFFFFFFFF",
	},
	["tArgs"] = {
	},
	["logs"] = {
	},
	["MAX_HISTORY_SIZE"] = 50,
	["sideBarTabSelected"] = "history",
	["collResizerPosition"] = 450.000061035156,
}
