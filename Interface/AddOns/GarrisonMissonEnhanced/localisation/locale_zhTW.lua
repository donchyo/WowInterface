if ( GetLocale() ~= "zhTW" ) then
	return;
end
local ns = select( 2, ... );
ns.L = {
	ARMOR = "護甲",
	ASSIGN_WORK = "指派追隨者工作", -- Needs review
	COLOR_CHANGE = "您好,|n提醒您,本次更新後您看到的任務特性顏色將對應您擁有的追隨者現況呈現不同顏色,若有任何問題可於基本設定看到更多訊息,您也可於顏色設定中定義您習慣的顏色", -- Needs review
	COMPLETE_ALL_BUTTON = "完成所有任務", -- Needs review
	CONFIG_AUTO_PLACE_SIMPLE = "自動配置追隨者",
	CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN = "若你只有一個追隨者可以反制此任務的技能則會自動配置到隊伍中,否則不會自動配置追隨者",
	CONFIG_AVAILABLE = "接受",
	CONFIG_BASIC = "基本設定",
	CONFIG_BODYGUARD_GOSSIP = "點擊“保鏢”追隨者時不顯示聲望關係，需要顯示請按住“Ctrl“並點擊", -- Needs review
	CONFIG_COLORS = "顏色",
	CONFIG_COUNTER_TRAIT = "顯示任務的技能以及是否可被反制",
	CONFIG_COUNTER_TRAIT_EXPLAIN = "它會用自己的顏色顯示您的追隨者不同的狀態，像是還在工作中，或是任務中等等。|n目前有一個問題，例如有在一個任務中有兩個相同的威脅，追隨者當中有一個可以反制另一個則是可用的，它會在任務中的一個威脅顯示以可反制另一個可用，但另一個相同的威脅會顯示為無法反制，如果兩個追隨者在相同的狀態則顯示會正常。|n點擊此設置顏色以選擇您自己的顏色。",
	CONFIG_FAST_ASSIGN = "啟用右鍵快速指派/取消指派追隨者任務",
	CONFIG_FAST_ASSIGN_EXPLAIN = "禁用右鍵顯示下拉選單(只影響任務明細頁面和追隨者隊伍)", -- Needs review
	CONFIG_FOLLOWER = "追隨者", -- Needs review
	CONFIG_FOLLOWER_REQUIRED = "顯示任務需求追隨者數量",
	CONFIG_GLOBAL_SAVE = "一般設定",
	CONFIG_GLOBAL_SAVE_EXPLAIN = "勾選則角色使用通用設定,否則各別角色使用不同選項",
	CONFIG_HIDE_ALERT = "於副本時隱藏彈出警示",
	CONFIG_HIDE_FOLLOWER_UPGRADE = "提升追隨者裝備時隱藏“確認”", -- Needs review
	CONFIG_HIDE_GARRISON_ABILITY = "隱藏要塞技能按鍵", -- Needs review
	CONFIG_INACTIVE = "閒置",
	CONFIG_MISSION = "任務", -- Needs review
	CONFIG_MISSION_COMPLETE_BUTTON = "顯示完成所有任務按鈕", -- Needs review
	CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN = "This will add a button to complete all missions with 1 click on the mission complete window|n|n ATTENTION: This is not verbose by design, it only shows that it started to complete and when it is done, not what the outcome is!", -- Requires localization
	CONFIG_NOCOUNTER = "無可反制者",
	CONFIG_ONMISSION = "任務中",
	CONFIG_ON_MISSION = "顯示任務從接獲到目前為止的時間",
	CONFIG_QUICK_ASSIGN_WORKER = "在建築桌上顯示“指派/調離所有追隨者工作”按鈕", -- Needs review
	CONFIG_REALOAD_UI = "修改此選項需要重新加載界面", -- Needs review
	CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB = "於追隨者列表顯示可反制技能",
	CONFIG_SHOW_GOLD_EXP = "於報酬圖示顯示金額/經驗值數值",
	CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB = "於追隨者列表顯示武器護甲的裝等",
	CONFIG_SHOW_SALVAGE = "Show buttons for the salvage crates when being at the salvage yard", -- Requires localization
	CONFIG_SHOW_SALVAGE_EXPLAIN = "With using shift and holding down left mouse button on the first button you can change the position of the buttons.|n|nIn order for this to work the localisation for the Salvage Yard is needed, if you dont see the buttons then it is most likely not translated for your language, you can find on the addon website a link where to translate it.", -- Requires localization
	CONFIG_SHOW_TIME_LEFT = "顯示追隨者完成任務剩餘時間",
	CONFIG_WORKING = "工作中",
	CONFIG_WORK_ORDER = "訂單", -- Needs review
	CONFIG_WORK_ORDER_TIMES = "在要塞報告裡顯示訂單時間", -- Needs review
	COUNTERED_BY = "反制於", -- Needs review
	FOLLOWER_REQUIRED = "追隨者需求",
	ITEM_LEVEL = "裝備等級", -- Needs review
	LEVEL = "等級", -- Needs review
	MISSION_AVAILABLE = "可接任務",
	MISSION_FINISH_START = "Starting to finish missions", -- Requires localization
	MISSION_FINISH_STOP = "All missions finished", -- Requires localization
	SALVAGE_YARD = "回收場", -- Needs review
	SCAVENGER = "拾荒者", -- Needs review
	STARTING_ASSIGN = "開始指派追隨者", -- Needs review
	STARTING_UNASSIGN = "開始調離追隨者", -- Needs review
	STOPPING_ASSIGN = "指派結束", -- Needs review
	STOPPING_UNASSIGN = "已調離", -- Needs review
	UNASSIGN_WORK = "取消追隨者工作", -- Needs review
	WEAPON = "武器",
	WORKER_ASSIGNED = "指派%s去%s工作", -- Needs review
	WORKER_UNASSIGNED = "把%s從%s工作調離", -- Needs review
}


--[===[@debug@ 
{}
--@end-debug@]===]

