local _, ns = ...

if ns:IsSameLocale("koKR") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "koKR"

L["ALLOW_IN_LFD"] = "던전 찾기도 허용"
L["ALLOW_IN_LFD_DESC"] = "던전 찾기에서 파티나 신청자를 우클릭하여 Raider.IO 프로필 URL로 복사합니다."
L["ALLOW_ON_PLAYER_UNITS"] = "플레이어 유닛도 허용"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "플레이어를 우클릭하여 Raider.IO 프로필 URL로 복사합니다."
L["ALWAYS_SHOW_EXTENDED_INFO"] = "역할 점수 항상 표시"
L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = "보조키(Shift/Ctrl/Alt)를 누르고 있어야 플레이어의 역할 점수가 툴팁에 표시됩니다. 이 설정을 사용하면 툴팁에 항상 역할 점수가 표시됩니다."
L["BEST_FOR_DUNGEON"] = "해당 던전 기록"
L["BEST_RUN"] = "최고 기록"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[변경 사항이 저장되었지만 변경 사항을 적용하려면 UI를 다시 불러와야 합니다.

지금 하시겠습니까?]=]
L["COPY_RAIDERIO_PROFILE_URL"] = "Raider.IO 프로필 URL 복사"
L["COPY_RAIDERIO_URL"] = "Raider.IO URL 복사"
L["DPS"] = "딜러"
L["DPS_SCORE"] = "딜러 점수"
L["DUNGEON_SHORT_NAME_ARC"] = "비전로"
L["DUNGEON_SHORT_NAME_BRH"] = "검떼"
L["DUNGEON_SHORT_NAME_COEN"] = "대성당"
L["DUNGEON_SHORT_NAME_COS"] = "별궁"
L["DUNGEON_SHORT_NAME_DHT"] = "어숲"
L["DUNGEON_SHORT_NAME_EOA"] = "아즈"
L["DUNGEON_SHORT_NAME_HOV"] = "용맹"
L["DUNGEON_SHORT_NAME_LOWR"] = "하층"
L["DUNGEON_SHORT_NAME_MOS"] = "아귀"
L["DUNGEON_SHORT_NAME_NL"] = "넬타"
L["DUNGEON_SHORT_NAME_SEAT"] = "삼두정"
L["DUNGEON_SHORT_NAME_UPPR"] = "상층"
L["DUNGEON_SHORT_NAME_VOTW"] = "감시관"
L["ENABLE_NO_SCORE_COLORS"] = "점수 색상 끄기"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "점수의 색상 표시를 사용하지 않습니다. 모든 점수는 흰색으로 표시됩니다."
L["ENABLE_SIMPLE_SCORE_COLORS"] = "단순한 점수 색상 사용"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "표준 아이템 품질의 색상만으로 점수를 표시합니다. 이렇게 하면 색각 보정이 필요한 사람들이 점수 등급을 쉽게 구분할 수 있습니다."
L["HEALER"] = "힐러"
L["HEALER_SCORE"] = "힐러 점수"
L["KEYSTONE_COMPLETED_10"] = "+10 (쐐기클)"
L["KEYSTONE_COMPLETED_15"] = "+15 (쐐기클)"
L["MAINS_SCORE"] = "주 캐릭터 점수"
L["MAINS_SCORE_COLON"] = "주 캐릭터 점수: "
L["MODULE_AMERICAS"] = "북미"
L["MODULE_EUROPE"] = "유럽"
L["MODULE_KOREA"] = "한국"
L["MODULE_TAIWAN"] = "대만"
L["MYTHIC_PLUS_DB_MODULES"] = "Mythic Plus 데이터베이스 모듈"
L["MYTHIC_PLUS_SCORES"] = "Mythic Plus 점수"
L["OPEN_CONFIG"] = "설정 열기"
L["OUTDATED_DATABASE"] = "점수는 %d일 전 기록입니다."
L["OUTDATED_DATABASE_S"] = "|cffFFFFFF%s|r의 데이터는 |cffFF6666%d|r일 전 기록입니다. 더 정확한 점수를 확인하기 위해서는 업데이트가 필요합니다."
L["PREV_SEASON_SUFFIX"] = "(*)"
--[[Translation missing --]]
--[[ L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = ""--]] 
L["RAIDERIO_MP_BASE_SCORE"] = "Raider.IO M+ 기본 점수"
L["RAIDERIO_MP_SCORE"] = "Raider.IO M+ 점수"
L["RAIDERIO_MP_SCORE_COLON"] = "Raider.IO M+ 점수: "
L["RAIDERIO_MYTHIC_OPTIONS"] = "Raider.IO M+ 설정"
L["RELOAD_LATER"] = "나중에 다시 불러오겠습니다."
L["RELOAD_NOW"] = "지금 다시 불러오기"
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = ""--]] 
L["SHOW_IN_FRIENDS"] = "친구 목록에 표시"
L["SHOW_IN_FRIENDS_DESC"] = "친구에게 마우스를 올리면 Mythic+ 점수를 표시합니다."
L["SHOW_IN_LFD"] = "던전 찾기에 표시"
L["SHOW_IN_LFD_DESC"] = "파티나 신청자에 마우스를 올리면 Mythic+ 점수를 표시합니다."
L["SHOW_IN_SLASH_WHO_RESULTS"] = "/who 결과에 표시"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "\"/who\" 결과의 누군가에게 Mythic+ 점수가 표시됩니다."
L["SHOW_IN_WHO_UI"] = "누구 UI에 표시"
L["SHOW_IN_WHO_UI_DESC"] = "누구 결과 창에 마우스를 올리면 Mythic+ 점수가 표시됩니다."
L["SHOW_KEYSTONE_INFO"] = "쐐기 던전 정보 표시"
L["SHOW_KEYSTONE_INFO_DESC"] = "쐐기 던전 파티에 속해있을 경우 다른 유저의 해당 던전 최고 기록을 표시합니다."
L["SHOW_MAINS_SCORE"] = "주 캐릭터 시즌 점수 표시"
L["SHOW_MAINS_SCORE_DESC"] = "현재 시즌에 기록한 주 캐릭터의 점수를 표시합니다. 반드시 Raider.IO에 등록되어 있어야 하며 주 캐릭터이어야 합니다."
L["SHOW_ON_GUILD_ROSTER"] = "길드원 목록에 표시"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "길드원에 마우스를 올리면 Mythic+ 점수를 표시합니다."
L["SHOW_ON_PLAYER_UNITS"] = "플레이어 유닛에 표시"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "플레이어 유닛에 마우스를 올리면 Mythic+ 점수를 표시합니다."
L["SHOW_SCORE_IN_COMBAT"] = "전투 중에 점수 표시"
L["SHOW_SCORE_IN_COMBAT_DESC"] = [=[
전투 중에는 플레이어의 상세표시가 성능에 영향을 주지 않도록 비활성화 할수 있습니다.]=]
L["TANK"] = "탱커"
L["TANK_SCORE"] = "탱커 점수"
L["TIMED_10_RUNS"] = "10-14단+ 횟수"
L["TIMED_15_RUNS"] = [=[15단+ 횟수
]=]
L["TOOLTIP_CUSTOMIZATION"] = "툴팁 사용자 정의"
L["UNKNOWN_SCORE"] = "알수없음"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r: 새 서버가 발견되었습니다. |cffFF9999 {|r |cffFFFFFF%s|r  |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r의 정보를 적은 후 개발자에게 보고해주세요. 감사합니다!"


	ns.L = L
end
