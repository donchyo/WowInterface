local _, ns = ...

if ns:IsSameLocale("zhTW") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "zhTW"

L["ALLOW_IN_LFD"] = "允許用在地城搜尋器"
L["ALLOW_IN_LFD_DESC"] = "右鍵點擊地城搜尋器上的隊伍或申請人來複製Raider.IO設定檔網址。"
L["ALLOW_ON_PLAYER_UNITS"] = "允許用在玩家單位"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "右鍵點擊玩家單位來複製Raider.IO資料庫網址。"
L["ALWAYS_SHOW_EXTENDED_INFO"] = "總是顯示角色類型分數"
L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = "按下一個快捷鍵（shift/ctrl/alt）在提示中顯示玩家的角色類型分數。如果您啟用此選項，提示將永遠顯示角色類型分數。"
L["BEST_FOR_DUNGEON"] = "最速地城"
L["BEST_RUN"] = "最高紀錄"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[您的更動已儲存，但您必須重載UI以生效。

你要現在這麼做嗎？]=]
L["COPY_RAIDERIO_PROFILE_URL"] = "複製Raider.IO設定檔網址"
L["COPY_RAIDERIO_URL"] = "複製Raider.IO網址"
L["DPS"] = "DPS"
L["DPS_SCORE"] = "DPS分數"
L["DUNGEON_SHORT_NAME_ARC"] = "地道"
L["DUNGEON_SHORT_NAME_BRH"] = "玄鴉"
L["DUNGEON_SHORT_NAME_COEN"] = "永夜"
L["DUNGEON_SHORT_NAME_COS"] = "眾星"
L["DUNGEON_SHORT_NAME_DHT"] = "暗心"
L["DUNGEON_SHORT_NAME_EOA"] = "艾眼"
L["DUNGEON_SHORT_NAME_HOV"] = "英靈"
L["DUNGEON_SHORT_NAME_LOWR"] = "卡拉下"
L["DUNGEON_SHORT_NAME_MOS"] = "靈魂"
L["DUNGEON_SHORT_NAME_NL"] = "奈巢"
L["DUNGEON_SHORT_NAME_SEAT"] = "三傑"
L["DUNGEON_SHORT_NAME_UPPR"] = "卡拉上"
L["DUNGEON_SHORT_NAME_VOTW"] = "看守"
L["ENABLE_NO_SCORE_COLORS"] = "停用分數著色"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "停用分數的著色，所有分數將顯示為白色。"
L["ENABLE_SIMPLE_SCORE_COLORS"] = "使用簡易分數著色"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "只使用標準物品品質顏色來顯示分數。 這可以使那些具有色弱的人更容易區分評分級別。"
L["HEALER"] = "治療者"
L["HEALER_SCORE"] = "治療者分數"
L["KEYSTONE_COMPLETED_10"] = "+10（完成鑰石）"
L["KEYSTONE_COMPLETED_15"] = "+15（完成鑰石）"
L["MAINS_SCORE"] = "當季分數"
L["MAINS_SCORE_COLON"] = "當季分數："
L["MODULE_AMERICAS"] = "美洲"
L["MODULE_EUROPE"] = "歐洲"
L["MODULE_KOREA"] = "韓國"
L["MODULE_TAIWAN"] = "台灣"
L["MYTHIC_PLUS_DB_MODULES"] = "傳奇+數據庫模組"
L["MYTHIC_PLUS_SCORES"] = "傳奇+分數"
L["OPEN_CONFIG"] = "開啟選項"
L["OUTDATED_DATABASE"] = "分數已有%d天之久"
L["OUTDATED_DATABASE_S"] = "|cffFFFFFF%s|r使用的數據已經有|cffFF6666%d|r天之久了。請更新此插件已呈現更精確的傳奇+分數。"
L["PREV_SEASON_SUFFIX"] = "(*)"
--[[Translation missing --]]
--[[ L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = ""--]] 
L["RAIDERIO_MP_BASE_SCORE"] = "Raider.IO 傳奇+ 基礎分數"
L["RAIDERIO_MP_SCORE"] = "Raider.IO 傳奇+分數"
L["RAIDERIO_MP_SCORE_COLON"] = "Raider.IO 傳奇+分數："
L["RAIDERIO_MYTHIC_OPTIONS"] = "Raider.IO傳奇+選項"
L["RELOAD_LATER"] = "等會才重載"
L["RELOAD_NOW"] = "現在就重載"
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = ""--]] 
L["SHOW_IN_FRIENDS"] = "顯示在好友名單"
L["SHOW_IN_FRIENDS_DESC"] = "當你鼠標懸停在好友時顯示傳奇+分數。"
L["SHOW_IN_LFD"] = "顯示在地城搜尋器"
L["SHOW_IN_LFD_DESC"] = "當你鼠標懸停在隊伍或申請人時顯示傳奇+分數。"
L["SHOW_IN_SLASH_WHO_RESULTS"] = "顯示在 /查詢 結果"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "當你具體查詢某人時顯示傳奇+分數。"
L["SHOW_IN_WHO_UI"] = "顯示在查詢介面"
L["SHOW_IN_WHO_UI_DESC"] = "當你鼠標懸停在查詢結果時顯示傳奇+分數。"
L["SHOW_KEYSTONE_INFO"] = "顯示鑰石資訊"
L["SHOW_KEYSTONE_INFO_DESC"] = "在鑰石提示上增加鑰石資訊。建議此隊伍的傳奇+分數。"
L["SHOW_MAINS_SCORE"] = "顯示當季分數"
L["SHOW_MAINS_SCORE_DESC"] = "顯示玩家本季的主要分數。 玩家必須在Raider.IO上註冊，並決定以何角色為主。"
L["SHOW_ON_GUILD_ROSTER"] = "顯示在公會名冊"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "當你鼠標懸停在公會名冊上的公會成員時顯示傳奇+分數。"
L["SHOW_ON_PLAYER_UNITS"] = "顯示在玩家單位"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "當你鼠標懸停在玩家單位上時顯示傳奇+分數。"
L["SHOW_SCORE_IN_COMBAT"] = "戰鬥中顯示分數"
L["SHOW_SCORE_IN_COMBAT_DESC"] = "當玩家戰鬥中停用可將效能影響降到最低。"
L["TANK"] = "坦克"
L["TANK_SCORE"] = "坦克分數"
L["TIMED_10_RUNS"] = "時限內10-14+次數"
L["TIMED_15_RUNS"] = "時限內15+次數"
L["TOOLTIP_CUSTOMIZATION"] = "提示自定義"
L["UNKNOWN_SCORE"] = "未知"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r已經轉到新伺服器。請記下此資訊|cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r並且回報給開發者，感謝您！"


	ns.L = L
end
