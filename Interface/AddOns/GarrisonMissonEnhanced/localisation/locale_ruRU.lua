if ( GetLocale() ~= "ruRU" ) then
	return;
end
local ns = select( 2, ... );
ns.L = {
	ARMOR = "Броня", -- Needs review
	ASSIGN_WORK = "Assign followers to work", -- Requires localization
	COLOR_CHANGE = "Привет, |n это одноразовое сообщение об изменении цветов - теперь каждый счётчик будет подсвечиваться по разному, в зависимости от статус соратника. Вы можете выбрать цвета в базовых настройках в закладке Цвета", -- Needs review
	COMPLETE_ALL_BUTTON = "Complete all missions", -- Requires localization
	CONFIG_AUTO_PLACE_SIMPLE = "Автоматически назначать соратников",
	CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN = "Автоматически назначает соратника в группу если он единственный, кто может противостоять угрозам противника.",
	CONFIG_AVAILABLE = "Доступно", -- Needs review
	CONFIG_BASIC = "Основные настройки",
	CONFIG_BODYGUARD_GOSSIP = "Dont show the gossip frame for the body guard on click,|n you can override this with holding down ctrl while clicking", -- Requires localization
	CONFIG_COLORS = "Цвета", -- Needs review
	CONFIG_COUNTER_TRAIT = "Показать угрозы задания и возможность их нейтрализации",
	CONFIG_COUNTER_TRAIT_EXPLAIN = "It will show a own color for different status of your follower, like being on work, on mission etc |n There is currently one problem if there is for example 2 same abilities in 1 encounter and there is one who can counter it on mission and one available, it will show for one that it can be countered with 1 on mission and 1 available and the other one will show as not being able to counter, it does work correctly if there are 2  of the same status who can counter. |n Click in the configuration Colors to choose your own colors", -- Requires localization
	CONFIG_FAST_ASSIGN = "Включить возможность отправлять соратников на задание щелчком правой кнопки мыши",
	CONFIG_FAST_ASSIGN_EXPLAIN = "Отключает показ стандартного меню по клику правой кнопкой, но только в окне информации о задании и для соратников, которые доступны для размещения в группе. В прочих случаях контекстное меню будет доступно.", -- Needs review
	CONFIG_FOLLOWER = "Follower", -- Requires localization
	CONFIG_FOLLOWER_REQUIRED = "Показать сколько соратников требуется для задания",
	CONFIG_GLOBAL_SAVE = "Глобальные настройки",
	CONFIG_GLOBAL_SAVE_EXPLAIN = "Если включено, все персонажи будут использовать одни и те же настройки. Отключите, чтобы этот персонаж использовал собственные настройки.",
	CONFIG_HIDE_ALERT = "Прячет всплывающее окошко о завершении задания во время пребывания в подземелье", -- Needs review
	CONFIG_HIDE_FOLLOWER_UPGRADE = "Hide the follower confirmation dialog on upgrading", -- Requires localization
	CONFIG_HIDE_GARRISON_ABILITY = "Hide the Garrison special ability button", -- Requires localization
	CONFIG_INACTIVE = "Неактивно", -- Needs review
	CONFIG_MISSION = "Mission", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON = "Show complete all mission button", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN = "This will add a button to complete all missions with 1 click on the mission complete window|n|n ATTENTION: This is not verbose by design, it only shows that it started to complete and when it is done, not what the outcome is!", -- Requires localization
	CONFIG_NOCOUNTER = "Нет счётчика", -- Needs review
	CONFIG_ONMISSION = "На задании", -- Needs review
	CONFIG_ON_MISSION = "Показать как давно доступно задание", -- Needs review
	CONFIG_QUICK_ASSIGN_WORKER = "Show the buttons to quickly assign/unassign all workers at architect table", -- Requires localization
	CONFIG_REALOAD_UI = "Changing this options requires an reloadui", -- Requires localization
	CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB = "Показывать на закладке соратника, что он контрит", -- Needs review
	CONFIG_SHOW_GOLD_EXP = "Показывает под иконкой количество золота/опыта, получаемого в награду",
	CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB = "Показывать на закладке соратника уровень оружия и брони", -- Needs review
	CONFIG_SHOW_SALVAGE = "Show buttons for the salvage crates when being at the salvage yard", -- Requires localization
	CONFIG_SHOW_SALVAGE_EXPLAIN = "With using shift and holding down left mouse button on the first button you can change the position of the buttons.|n|nIn order for this to work the localisation for the Salvage Yard is needed, if you dont see the buttons then it is most likely not translated for your language, you can find on the addon website a link where to translate it.", -- Requires localization
	CONFIG_SHOW_TIME_LEFT = "Показать время, оставшееся до завершения задания",
	CONFIG_WORKING = "Работает", -- Needs review
	CONFIG_WORK_ORDER = "Work order", -- Requires localization
	CONFIG_WORK_ORDER_TIMES = "Show times for work order on the report page", -- Requires localization
	COUNTERED_BY = "Нейтрализуется", -- Needs review
	FOLLOWER_REQUIRED = "Нужен соратник",
	ITEM_LEVEL = "уровень", -- Needs review
	LEVEL = "Уровень", -- Needs review
	MISSION_AVAILABLE = "Задание доступно",
	MISSION_FINISH_START = "Starting to finish missions", -- Requires localization
	MISSION_FINISH_STOP = "All missions finished", -- Requires localization
	SALVAGE_YARD = "Склад утиля", -- Needs review
	SCAVENGER = "Scavenger", -- Requires localization
	STARTING_ASSIGN = "Starting to assign followers", -- Requires localization
	STARTING_UNASSIGN = "Starting to unassign followers", -- Requires localization
	STOPPING_ASSIGN = "Completed to assign follower", -- Requires localization
	STOPPING_UNASSIGN = "Completed to unassign follower", -- Requires localization
	UNASSIGN_WORK = "Unassign followers from work", -- Requires localization
	WEAPON = "Оружие", -- Needs review
	WORKER_ASSIGNED = "Added %s to %s", -- Requires localization
	WORKER_UNASSIGNED = "Removed %s from %s", -- Requires localization
}


--[===[@debug@ 
{}
--@end-debug@]===]