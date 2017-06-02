if ( GetLocale() ~= "esMX" ) then
	return;
end
local ns = select( 2, ... );
ns.L = {
	ARMOR = "Armor", -- Requires localization
	ASSIGN_WORK = "Assign followers to work", -- Requires localization
	COLOR_CHANGE = "Hey there, |n this is a one time message to inform you about a change regarding the colors you will see now for each counter a different color based on the follower status, there is just one problem you can read more about that in the Basic Options and you can define your own colors in the Colors config section", -- Requires localization
	COMPLETE_ALL_BUTTON = "Complete all missions", -- Requires localization
	CONFIG_AUTO_PLACE_SIMPLE = "Ubicar seguidores automáticamente ", -- Needs review
	CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN = "This will place a follower automatic into party, if you have only 1 available who can counter a trait it dont put them if you have several who can do it", -- Requires localization
	CONFIG_AVAILABLE = "Available", -- Requires localization
	CONFIG_BASIC = "Opciones Basicas", -- Needs review
	CONFIG_BODYGUARD_GOSSIP = "Dont show the gossip frame for the body guard on click,|n you can override this with holding down ctrl while clicking", -- Requires localization
	CONFIG_COLORS = "Colors", -- Requires localization
	CONFIG_COUNTER_TRAIT = "Mostrar habilidades de la misión y si pueden ser contrarestadas", -- Needs review
	CONFIG_COUNTER_TRAIT_EXPLAIN = "It will show a own color for different status of your follower, like being on work, on mission etc |n There is currently one problem if there is for example 2 same abilities in 1 encounter and there is one who can counter it on mission and one available, it will show for one that it can be countered with 1 on mission and 1 available and the other one will show as not being able to counter, it does work correctly if there are 2  of the same status who can counter. |n Click in the configuration Colors to choose your own colors", -- Requires localization
	CONFIG_FAST_ASSIGN = "Enable right click to assign/unassign a follower to the mission", -- Requires localization
	CONFIG_FAST_ASSIGN_EXPLAIN = "This deactivates the default right click which shows a context menu, but only on the mission detail page and follower who are available or in party otherwise the right click will behave like usual", -- Requires localization
	CONFIG_FOLLOWER = "Follower", -- Requires localization
	CONFIG_FOLLOWER_REQUIRED = "Mostrar cantidad de seguidores necesarios para la mision", -- Needs review
	CONFIG_GLOBAL_SAVE = "Configuración Global", -- Needs review
	CONFIG_GLOBAL_SAVE_EXPLAIN = "El personaje utilizara la configuración global si se selecciona, desmarcar para usar otras opciones en este personaje", -- Needs review
	CONFIG_HIDE_ALERT = "Hides the alert pop-up while being in an instances", -- Requires localization
	CONFIG_HIDE_FOLLOWER_UPGRADE = "Hide the follower confirmation dialog on upgrading", -- Requires localization
	CONFIG_HIDE_GARRISON_ABILITY = "Hide the Garrison special ability button", -- Requires localization
	CONFIG_INACTIVE = "Inactive", -- Requires localization
	CONFIG_MISSION = "Mission", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON = "Show complete all mission button", -- Requires localization
	CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN = "This will add a button to complete all missions with 1 click on the mission complete window|n|n ATTENTION: This is not verbose by design, it only shows that it started to complete and when it is done, not what the outcome is!", -- Requires localization
	CONFIG_NOCOUNTER = "No counter", -- Requires localization
	CONFIG_ONMISSION = "On mission", -- Requires localization
	CONFIG_ON_MISSION = "Mostrar el tiempo pasado desde que tuviste una mision", -- Needs review
	CONFIG_QUICK_ASSIGN_WORKER = "Show the buttons to quickly assign/unassign all workers at architect table", -- Requires localization
	CONFIG_REALOAD_UI = "Changing this options requires an reloadui", -- Requires localization
	CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB = "Show on the follower tab what abilities a follower can counter", -- Requires localization
	CONFIG_SHOW_GOLD_EXP = "Shows the number of gold/experience in numbers inside the reward icon", -- Requires localization
	CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB = "Show on the follower tab the weapon and armor itemlevel", -- Requires localization
	CONFIG_SHOW_SALVAGE = "Show buttons for the salvage crates when being at the salvage yard", -- Requires localization
	CONFIG_SHOW_SALVAGE_EXPLAIN = "With using shift and holding down left mouse button on the first button you can change the position of the buttons.|n|nIn order for this to work the localisation for the Salvage Yard is needed, if you dont see the buttons then it is most likely not translated for your language, you can find on the addon website a link where to translate it.", -- Requires localization
	CONFIG_SHOW_TIME_LEFT = "Mostrar tiempo restante para que un seguidor termine la mision", -- Needs review
	CONFIG_WORKING = "Working", -- Requires localization
	CONFIG_WORK_ORDER = "Work order", -- Requires localization
	CONFIG_WORK_ORDER_TIMES = "Show times for work order on the report page", -- Requires localization
	COUNTERED_BY = "Countered by", -- Requires localization
	FOLLOWER_REQUIRED = "Follower required", -- Requires localization
	ITEM_LEVEL = "iLevel", -- Requires localization
	LEVEL = "Level", -- Requires localization
	MISSION_AVAILABLE = "Mission available", -- Requires localization
	MISSION_FINISH_START = "Starting to finish missions", -- Requires localization
	MISSION_FINISH_STOP = "All missions finished", -- Requires localization
	SALVAGE_YARD = "Patio de rescate", -- Needs review
	SCAVENGER = "Scavenger", -- Requires localization
	STARTING_ASSIGN = "Starting to assign followers", -- Requires localization
	STARTING_UNASSIGN = "Starting to unassign followers", -- Requires localization
	STOPPING_ASSIGN = "Completed to assign follower", -- Requires localization
	STOPPING_UNASSIGN = "Completed to unassign follower", -- Requires localization
	UNASSIGN_WORK = "Unassign followers from work", -- Requires localization
	WEAPON = "Weapon", -- Requires localization
	WORKER_ASSIGNED = "Added %s to %s", -- Requires localization
	WORKER_UNASSIGNED = "Removed %s from %s", -- Requires localization
}


--[===[@debug@ 
{}
--@end-debug@]===]