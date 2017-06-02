if ( GetLocale() ~= "koKR" ) then
	return;
end
local ns = select( 2, ... );
ns.L = {
	ARMOR = "방어구", -- Needs review
	ASSIGN_WORK = "Assign followers to work", -- Requires localization
	COLOR_CHANGE = "안녕하세요. 이 메세지는 추종자의 상태에 따라 위협요소에 대해 각각 다른 색상을 부여할 수 있음과 그 색상 변화에 대해 설명하는 안내 메세지입니다. 각 상태 색상은 색상 설정 부분에서 사용자가 원하는 고유의 색상으로 정의할 수 있으며, 해당 되는 문제는 색상으로 알아보실 수 있습니다.", -- Needs review
	COMPLETE_ALL_BUTTON = "Complete all missions", -- Requires localization
	CONFIG_AUTO_PLACE_SIMPLE = "추종자 자동 배치",
	CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN = "이 기능은 추종자를 자동으로 파티에 배치합니다. 만약 하나의 추종자만 필요한 임무인 경우, 몇가지 대안이 되는 추종자가 있다면 이 기능은 작동하지 않습니다.", -- Needs review
	CONFIG_AVAILABLE = "사용 가능", -- Needs review
	CONFIG_BASIC = "기본 옵션",
	CONFIG_BODYGUARD_GOSSIP = "Dont show the gossip frame for the body guard on click,|n you can override this with holding down ctrl while clicking", -- Requires localization
	CONFIG_COLORS = "색상", -- Needs review
	CONFIG_COUNTER_TRAIT = "임무의 위협 요소와 제거 가능 여부를 보여주기",
	CONFIG_COUNTER_TRAIT_EXPLAIN = [=[
이 기능은 추종자의 상태에 따라 서로 다른 각각의 색상을 보여줍니다. 임무에 필요한 위협 요소 제거 가능 능력을 가진 추종자의 상태(사용 가능, 임무 수행중, 건물에 배치 중 등)에 따라서 설정된 색상으로 임무에 활용가능한 것인가를 확인할 수 있습니다.

또한, 사용자가 원하는 고유의 색상을 설정할 수 있습니다.]=], -- Needs review
	CONFIG_FAST_ASSIGN = "우클릭으로 추종자의 임무 등록/해제하도록 활성화", -- Needs review
	CONFIG_FAST_ASSIGN_EXPLAIN = "이 기능은 우클릭시 보이는 마우스 확장메뉴를 비활성화 합니다. 단, 임무 상세 페이지나 파티에 사용가능한 추종자가 아닌 경우 기존 기능을 수행합니다.", -- Needs review
	CONFIG_FOLLOWER = "Follower", -- Requires localization
	CONFIG_FOLLOWER_REQUIRED = "얼마나 많은 추종자가 임무에 필요한지 보여주기",
	CONFIG_GLOBAL_SAVE = "전역 설정",
	CONFIG_GLOBAL_SAVE_EXPLAIN = "만약 이 캐릭터에서 전역 설정을 사용할 경우, 이 캐릭터가 사용하지 않는 다른 옵션들도 사용하게 됩니다.", -- Needs review
	CONFIG_HIDE_ALERT = "인스턴스 던전을 진행중인 경우 알림 메세지를 숨깁니다.", -- Needs review
	CONFIG_HIDE_FOLLOWER_UPGRADE = "Hide the follower confirmation dialog on upgrading", -- Requires localization
	CONFIG_HIDE_GARRISON_ABILITY = "Hide the Garrison special ability button", -- Requires localization
	CONFIG_INACTIVE = "비활성", -- Needs review
	CONFIG_MISSION = "Mission", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON = "Show complete all mission button", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN = "This will add a button to complete all missions with 1 click on the mission complete window|n|n ATTENTION: This is not verbose by design, it only shows that it started to complete and when it is done, not what the outcome is!", -- Requires localization
	CONFIG_NOCOUNTER = "사용 불가", -- Needs review
	CONFIG_ONMISSION = "임무 수행 중", -- Needs review
	CONFIG_ON_MISSION = "플레이어에게 임무가 전달된 경과시간을 보여주기",
	CONFIG_QUICK_ASSIGN_WORKER = "Show the buttons to quickly assign/unassign all workers at architect table", -- Requires localization
	CONFIG_REALOAD_UI = "Changing this options requires an reloadui", -- Requires localization
	CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB = "추종자 목록에서 위협 요소를 제거할 수 있는 능력 보이기", -- Needs review
	CONFIG_SHOW_GOLD_EXP = "아이콘 옆에 골드/경험치 보상을 보여주기", -- Needs review
	CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB = "추종자 목록에서 무기와 방어구의 아이템 레벨 보이기", -- Needs review
	CONFIG_SHOW_SALVAGE = "Show buttons for the salvage crates when being at the salvage yard", -- Requires localization
	CONFIG_SHOW_SALVAGE_EXPLAIN = "With using shift and holding down left mouse button on the first button you can change the position of the buttons.|n|nIn order for this to work the localisation for the Salvage Yard is needed, if you dont see the buttons then it is most likely not translated for your language, you can find on the addon website a link where to translate it.", -- Requires localization
	CONFIG_SHOW_TIME_LEFT = "추종자의 임무가 완료될 때까지의 남은 시간을 보여주기",
	CONFIG_WORKING = "건물 배치 중", -- Needs review
	CONFIG_WORK_ORDER = "Work order", -- Requires localization
	CONFIG_WORK_ORDER_TIMES = "Show times for work order on the report page", -- Requires localization
	COUNTERED_BY = "Countered by", -- Requires localization
	FOLLOWER_REQUIRED = "필요한 추종자 수",
	ITEM_LEVEL = "아이템 레벨", -- Needs review
	LEVEL = "레벨", -- Needs review
	MISSION_AVAILABLE = "임무 전달 경과시간", -- Needs review
	MISSION_FINISH_START = "Starting to finish missions", -- Requires localization
	MISSION_FINISH_STOP = "All missions finished", -- Requires localization
	SALVAGE_YARD = "재활용 처리장", -- Needs review
	SCAVENGER = "Scavenger", -- Requires localization
	STARTING_ASSIGN = "Starting to assign followers", -- Requires localization
	STARTING_UNASSIGN = "Starting to unassign followers", -- Requires localization
	STOPPING_ASSIGN = "Completed to assign follower", -- Requires localization
	STOPPING_UNASSIGN = "Completed to unassign follower", -- Requires localization
	UNASSIGN_WORK = "Unassign followers from work", -- Requires localization
	WEAPON = "무기", -- Needs review
	WORKER_ASSIGNED = "Added %s to %s", -- Requires localization
	WORKER_UNASSIGNED = "Removed %s from %s", -- Requires localization
}


--[===[@debug@ 
{}
--@end-debug@]===]
