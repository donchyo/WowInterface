-- Daily Global Check
-- Localization

local addonName, addonTable = ...
local debug
--[===[@debug@
debug = true
--@end-debug@]===]

local L = {}
addonTable.L = L

if debug then
	L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List"
	L["added"] = "added"
	L["size"] = "Size"
	L["repeatable"] = "Repeatable"
	L["availablelists"] = "Available Lists"
	L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name."
	L["b_questid"] = "Quest ID"
	L["b_questname"] = "Quest Name"
	L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist"
	L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist"
	L["customlist"] = "Custom List"
	L["deleted"] = "deleted"
	L["lclicktoopen"] = "Left-click to open the main frame"
	L["namemissing"] = "<name missing>"
	L["nextpage"] = "Next Page"
	L["nolist"] = "No list selected"
	L["notitle"] = "<no title>"
	L["opt_blacklist_remove"] = "Remove a character from the black list"
	L["opt_characters"] = "Characters"
	L["opt_characters_short"] = "(Alt)"
	L["opt_help"] = "Help"
	L["opt_hidecompleted"] = "Hide completed quests"
	L["opt_map_all"] = "Only show world map icons from selected list"
	L["plugin_opt_none"] = "The selected plugin doesn't have any specific option"
	L["plugin_opt_title"] = "Options for the selected plugin:"
	L["prevpage"] = "Previous Page"
	L["questdatamissing"] = "<quest data missing>"
	L["rclicktoopen"] = "Right-click to open the quick list selection menu"
	L["remmenuheader"] = "- Select the quest to remove -"
	L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom"
	L["opt_coords"] = "Show coordinates"
	L["opt_map"] = "Show world map icons"
	L["opt_minimap"] = "Show minimap button"
	L["opt_prefix"] = "Show prefix"
	L["opt_questtype"] = "Show quest type"
	L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame"
	L["opt_suffix"] = "Show suffix"
	L["opt_zonename"] = "Show zone name"
	L["tomtom_button"] = "Set TomTom waypoints"
    L["opt_minimap_icons"] = "Show minimap icons"
	L["list_visibility"] = "List Visibility"
	L["tools"]           = "Tools"
	L["edit_quest"]      = "Edit Quest"
	L["new_quest"]       = "New Quest"
	L["quests_limit"]    = "Quests limit reached (%s)"
	L["delete_list"]     = "Delete List"
	L["create_new_list"] = "Create a new list"
    L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool."
	L["newlist"] = "New List"
	L["add_quest"] = "Add Quest"
	L["new_group"] = "New Group"
	L["new_page"] = "New Page"
	L["del_page"] = "Delete Page"
	L["move_up"] = "Move Selection Up"
	L["move_down"] = "Move Selection Down"
	L["edit_mode"] = "Edit Mode"
	L["lists_limit"] = "Lists limit reached (%s)"
	L["blacklist"] = "Blacklist"

	-- news frame
	L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next"
	L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r"
	L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check"
	L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'"
	L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse"
	L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin"
	L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel"
	L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets"
    L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)"
    L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views"
    L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options"
    L["news_#10"] = "World map icons from adjacent and continent maps are now hidden by default.\nThere is a new option in the Map Options panel to restore them"

	L["quest_options"]   = "Quest Options"
	L["plugin_options"]  = "Plugin Options"
	L["map_options"]     = "Map Options"
	L["b_prefix"] = "Prefix"
	L["b_suffix"] = "Suffix"
    L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists."
	L["coordinates"] = "Coordinates"

	L["help_edt_1"] = "You can create a new custom list by using the %s button."
    L["help_edt_2"] = "You can rename the selected list by using the %s button."
	L["help_edt_3"] = "This button permanently deletes the currently selected custom list."
    L["help_edt_4"] = "This is the quest pool, you can drag any quest from here and drop it on the currently selected list.\n- The %s button permanently deletes the relative custom quest from the quest pool.\n- The %s button is used to edit the relative |cff00ff00custom|r quest."
    L["help_edt_5"] = "This is the selected custom list\n- Quests can be repositioned by simply dragging them.\n- A group of quests can be moved by using the %s buttons at the header's left.\n- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.\n- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.\n- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.\n- The 'New Group' button simply creates a new group."
	L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list."
	L["help_edt_7"] = "Here you can select which section of the quest you wish to modify."
	L["help_edt_8"] = "This frame can be used to edit the chosen quest section."
	L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them."

	L["edit_questID_info"] = "You can insert multiple quest IDs each separated by one of the following keywords:\n %s : this element will result complete if at least one of the quests is completed.\n %s : this element will result complete only when all the quests are completed."
	L["collapsed"] = "Collapsed"
	
	L["map_icons_visibility_list"] = "Map icons visibility for this List"
	L["toggle_all_pages"] = "Toggle All Pages"
	L["account_wide_options"] = "(Account-Wide Options)"
	L["character_specific_options"] = "(Character-specific options)"

	L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells"
	L["spell_id"] = "Spell ID"
	L["generating_database"] = "Generating the %s database..."
	L["classic"] = "Classic"
	L["search_by_name"] = "Search by name"
	L["currency_id"] = "Currency ID"
	L["map_id"] = "Map ID"
    L["show_adjacent_map_icons"] = "Show on adjacent/continent maps"
    L["shown"] = "Shown"
    L["hidden"] = "Hidden"
    L["worldmap_icons"] = "Worldmap Icons"
    L["minimap_icons"] = "Minimap Icons"
	
	-- new
    L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!"
	return
end

local locale = GetLocale()

if locale == "esES" then 
L["add"] = "Add" -- Requires localization
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Available Lists" -- Requires localization
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Left-click to open the main frame" -- Requires localization
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<name missing>" -- Requires localization
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "<no title>" -- Requires localization
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "<quest data missing>" -- Requires localization
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "Right-click to open the quick list selection menu" -- Requires localization
L["rem"] = "Remove" -- Requires localization
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom" -- Requires localization
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Show coordinates" -- Requires localization
L["opt_main"] = "Options" -- Requires localization
L["opt_map"] = "Show world map icons" -- Requires localization
L["opt_minimap"] = "Show minimap button" -- Requires localization
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Show prefix" -- Requires localization
L["opt_questtype"] = "Show quest type" -- Requires localization
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "Show suffix" -- Requires localization
L["opt_zonename"] = "Show zone name" -- Requires localization
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Set TomTom waypoints" -- Requires localization

elseif locale == "esMX" then 
L["add"] = "Add" -- Requires localization
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Available Lists" -- Requires localization
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Left-click to open the main frame" -- Requires localization
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<name missing>" -- Requires localization
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "<no title>" -- Requires localization
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "<quest data missing>" -- Requires localization
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "Right-click to open the quick list selection menu" -- Requires localization
L["rem"] = "Remove" -- Requires localization
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom" -- Requires localization
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Show coordinates" -- Requires localization
L["opt_main"] = "Options" -- Requires localization
L["opt_map"] = "Show world map icons" -- Requires localization
L["opt_minimap"] = "Show minimap button" -- Requires localization
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Show prefix" -- Requires localization
L["opt_questtype"] = "Show quest type" -- Requires localization
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "Show suffix" -- Requires localization
L["opt_zonename"] = "Show zone name" -- Requires localization
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Set TomTom waypoints" -- Requires localization

elseif locale == "itIT" then 
L["add"] = "Aggiungi"
L["addbtntooltip"] = "Aggiungi la quest selezionata alla tua Lista Personalizzata di Daily Global Check"
L["added"] = "aggiunto"
L["add_quest"] = "Aggiungi Quest" -- Needs review
L["availablelists"] = "Liste Disponibili"
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - Devi inserire l'ID e il nome della quest"
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - La quest e' gia' in lista."
L["blacklist"] = "Lista nera"
L["b_prefix"] = "Prefisso (opzionale)"
L["b_questid"] = "Quest ID"
L["b_questname"] = "Nome Quest"
L["b_suffix"] = "Suffisso (opzionale)"
L["buildframe"] = "Modifica Lista Personalizzata"
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Il personaggio |cff00FF00%s|r è ora nella lista nera" -- Needs review
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Il personaggio |cff00FF00%s|r è stato rimosso dalla lista nera" -- Needs review
L["classic"] = "Classica"
L["collapsed"] = "Ridotto"
L["coordinates"] = "Coordinate"
L["create_new_list"] = "Crea una nuova lista"
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Lista Personalizzata"
L["deleted"] = "eliminato"
L["delete_list"] = "Elimina lista"
L["del_page"] = "Elimina Pagina" -- Needs review
L["edit_mode"] = "Edit Mode" -- Needs review
L["edit_quest"] = "Modifica Quest"
L["edit_questID_info"] = "Puoi inserire più quest ID separati da una delle seguenti parole chiave:\\n %s : questo elemento risulterà completo se almeno una delle quest è completata.\\n %s : questo elemento risulterà completo solo se tutte le quest sono completate."
L["edit_spell_info"] = "Tiene traccia del tempo di recupero di un incantesimo, maggiormente utili con incantesimi di professioni"
L["generating_database"] = "Generazione del database di %s..."
L["help_edt_1"] = "Puoi creare una nuova lista personalizzata usando il pulsante %s"
L["help_edt_2"] = "Puoi rinominare la lista selezionata usando il pulsante %s"
L["help_edt_3"] = "Questo pulsante elimina in modo permanente la lista selezionata."
L["help_edt_4"] = "Questo è il database delle quest, puoi trascinare qualsiasi quest da quì e inserirla nella lista selezionata.\\n- Il pulsante %s elimina in modo permanente la quest dal database.\\n- Il pulsante %s è usato per modificare la quest |cff00ff00personalizzata|r relativa."
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "Questi pulsanti servono a creare o eliminare pagine nella lista selezionata."
L["help_edt_7"] = "Qui puoi selezionare quale sezione della quest modificare."
L["help_edt_8"] = "Questo pannello può essere utilizzato per modificare la sezione di quest selezionata."
L["help_edt_9"] = "Clicca OK per salvare le modifiche, o Annulla per annullarle."
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Click sinistro per aprire il frame principale"
L["lists_limit"] = "Limite delle liste raggiunto (%s)"
L["list_visibility"] = "Visibilità Liste"
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Opzioni Mappa"
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Sposta Selezione Giù" -- Needs review
L["move_up"] = "Sposta Selezione Su" -- Needs review
L["namemissing"] = "<nome mancante>"
L["new_group"] = "Nuovo Gruppo" -- Needs review
L["newlist"] = "Nuova Lista" -- Needs review
L["new_page"] = "Nuova Pagina" -- Needs review
L["new_quest"] = "Nuova Quest"
L["news_#1"] = "Ciao! Sono il tuo assistente e ti mostrerò le novità più importanti riguardo Daily Global Check"
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "Puoi stampare la pagina corrente di DGC in chat digitando '/dgc print'"
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMaggio 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check ha ricevuto una massiccia revisione tecnica in preparazione per Legion. Le vecchie plugin sono incompatibili e devono essere aggiornate alla versione più recente, mi scuso per il disagio :)"
L["news_#8"] = "I gruppi possono essere ridotti cliccando sul loro titolo nel pannello principale, i gruppi ridotti sono nascosti nelle visualizzazioni tramite cursore"
L["news_#9"] = "Puoi nascondere le icone della mappa per pagine a scelta di qualunque lista tramite le sue Opzioni Plugin"
L["news_bottomtext1"] = "|cff11DDFFClick-Sinistro|cffFFFFFF: |cff00FF00Prossimo"
L["news_bottomtext2"] = "|cff11DDFFClick-Destro|cffFFFFFF: |cff00FF00Nascondi|r"
L["nextpage"] = "Pagina successiva" -- Needs review
L["nolist"] = "Nessuna lista selezionata"
L["notitle"] = "<nessun titolo>"
L["opt_blacklist_remove"] = "Rimuovi un personaggio dalla lista nera" -- Needs review
L["opt_characters"] = "Personaggi" -- Needs review
L["opt_characters_short"] = "(Alt)" -- Needs review
L["opt_help"] = "Aiuto" -- Needs review
L["opt_hidecompleted"] = "Nascondi quest completate" -- Needs review
L["opt_map_all"] = "Mostra solo le icone della mappa dalla lista selezionata" -- Needs review
L["plugin_options"] = "Opzioni Plugin"
L["plugin_opt_none"] = "Il plugin selezionato non ha opzioni specifiche" -- Needs review
L["plugin_opt_title"] = "Opzioni per il plugin selezionato:" -- Needs review
L["prevpage"] = "Pagina precedente" -- Needs review
L["questdatamissing"] = "<dati quest mancanti>"
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s aggiunta." -- Needs review
L["quest_options"] = "Opzioni Quest"
L["quests_limit"] = "Limite Quest raggiunto (%s)"
L["questwindow"] = "- Seleziona la posizione -"
L["rclicktoopen"] = "Click destro per aprire il menù di selezione rapida"
L["rem"] = "Rimuovi"
L["remmenuheader"] = "- Seleziona la quest da eliminare -"
L["repeatable"] = "Ripetibile"
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint aggiunto a TomTom"
L["tools"] = "Strumenti"
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Opzioni Account-Wide)"
L["character_specific_options"] = "(Opzioni del personaggio)"
L["map_icons_visibility_list"] = "Visibilità delle icone della mappa per questa Lista"
L["opt_coords"] = "Mostra coordinate"
L["opt_main"] = "Opzioni"
L["opt_map"] = "Mostra icone sulla mappa globale"
L["opt_minimap"] = "Mostra pulsante sulla minimappa" -- Needs review
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Mostra prefisso"
L["opt_questtype"] = "Mostra tipo di quest"
L["opt_showquestbtn"] = "Mostra il pulsante 'Aggiungi quest alla Lista Personalizzata' nel registro missioni" -- Needs review
L["opt_suffix"] = "Mostra suffisso"
L["opt_zonename"] = "Mostra nome della zona" -- Needs review
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Dimensioni"
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Imposta waypoints su TomTom"

elseif locale == "ptBR" then 
L["add"] = "Add" -- Requires localization
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Available Lists" -- Requires localization
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Left-click to open the main frame" -- Requires localization
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<name missing>" -- Requires localization
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "<no title>" -- Requires localization
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "<quest data missing>" -- Requires localization
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "Right-click to open the quick list selection menu" -- Requires localization
L["rem"] = "Remove" -- Requires localization
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom" -- Requires localization
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Show coordinates" -- Requires localization
L["opt_main"] = "Options" -- Requires localization
L["opt_map"] = "Show world map icons" -- Requires localization
L["opt_minimap"] = "Show minimap button" -- Requires localization
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Show prefix" -- Requires localization
L["opt_questtype"] = "Show quest type" -- Requires localization
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "Show suffix" -- Requires localization
L["opt_zonename"] = "Show zone name" -- Requires localization
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Set TomTom waypoints" -- Requires localization

elseif locale == "frFR" then
L["add"] = "Ajouter" -- Needs review
L["addbtntooltip"] = "Ajouter la quête sélectionnée à votre liste personnelle de Daily Global Check " -- Needs review
L["added"] = "ajoutée" -- Needs review
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Listes disponibles" -- Needs review
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - Vous devez entrer l'ID de la quête et son nom." -- Needs review
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - Cette quête est déjà présente dans la liste." -- Needs review
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Préfix (optionnel)" -- Needs review
L["b_questid"] = "ID de la quête" -- Needs review
L["b_questname"] = "Nom de la quête" -- Needs review
L["b_suffix"] = "Suffix (optionnel)" -- Needs review
L["buildframe"] = "Modifier la liste personnelle" -- Needs review
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Personnage |cff00FF00%s|r dans la liste des exclus" -- Needs review
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Personnage |cff00FF00%s|r retiré de la liste des exclus" -- Needs review
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Liste personnelle" -- Needs review
L["deleted"] = "supprimée" -- Needs review
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Click gauche pour ouvrir la fenêtre principale" -- Needs review
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<nom manquant>" -- Needs review
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "page suivante" -- Needs review
L["nolist"] = "Aucune liste sélectionnée" -- Needs review
L["notitle"] = "<sans titre>" -- Needs review
L["opt_blacklist_remove"] = "retirer un personnage de la liste des exclus" -- Needs review
L["opt_characters"] = "personnages" -- Needs review
L["opt_characters_short"] = "(Alt)" -- Needs review
L["opt_help"] = "Aide" -- Needs review
L["opt_hidecompleted"] = "Cacher les quêtes achevées" -- Needs review
L["opt_map_all"] = "Afficher seulement les icônes des listes sélectionnées" -- Needs review
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "Le Plugin sélectionné n'as pas d'options spécifiques" -- Needs review
L["plugin_opt_title"] = "Options pour le plugin sélectionné" -- Needs review
L["prevpage"] = "Page précédente" -- Needs review
L["questdatamissing"] = "<données de la quête manquantes>" -- Needs review
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Sélectionnez la position de la quête -" -- Needs review
L["rclicktoopen"] = "Click droite pour ouvrir le menu de sélection des listes rapides" -- Needs review
L["rem"] = "Supprimer" -- Needs review
L["remmenuheader"] = "- Sélectionnez la quête à supprimer -" -- Needs review
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Chemin ajouté à TomTom" -- Needs review
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Voir les coordonnées" -- Needs review
L["opt_main"] = "Options"
L["opt_map"] = "Voir les icônes sur la carte du monde" -- Needs review
L["opt_minimap"] = "Voir l'icône sur la minimap" -- Needs review
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Voir le préfix"
L["opt_questtype"] = "Voir le type de quête"
L["opt_showquestbtn"] = "Voir le bouton \"Ajouter la quête à votre liste personnelle\" dans la fenêtre du journal des quêtes" -- Needs review
L["opt_suffix"] = "Voir le suffix"
L["opt_zonename"] = "Voir le nom de la zone"
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Configurer les chemins TomTom"

elseif locale == "deDE" then 
L["add"] = "Hinzufügen"
L["addbtntooltip"] = "Füge die ausgewählte Quest deiner eigenen Daily-Global-Check-Liste hinzu."
L["added"] = "hinzugefügt"
L["add_quest"] = "Quest hinzufügen"
L["availablelists"] = "Verfügbare Listen"
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - Du must entweder die Quest-ID oder ihren Namen eingeben."
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - Diese Quest ist schon in der Liste."
L["blacklist"] = "Schwarze Liste"
L["b_prefix"] = "Vorsilbe (optional)"
L["b_questid"] = "Quest-ID"
L["b_questname"] = "Questname"
L["b_suffix"] = "Nachsilbe (optional)"
L["buildframe"] = "Eigene Liste bearbeiten"
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Charakter |cff00FF00%s|r ist nun auf der Schwarzen Liste"
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Charakter |cff00FF00%s|r wurde von der Schwarzen Liste entfernt"
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Koordinaten"
L["create_new_list"] = "Eine neue Liste erstellen"
L["currency_id"] = "Abzeichen-ID"
L["customlist"] = "Eigene Liste"
L["deleted"] = "gelöscht"
L["delete_list"] = "Liste löschen"
L["del_page"] = "Seite löschen"
L["edit_mode"] = "Bearbeitungsmodus"
L["edit_quest"] = "Quest bearbeiten"
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Die Datenbank %s wird erzeugt..."
L["help_edt_1"] = "Mit diesen Schaltflächen können Sie eine neue benutzerdefinierte Liste erstellen oder eine der unten folgenden ausgewählten Listen bearbeiten/entfernen/Aktivieren" -- Needs review
L["help_edt_2"] = [=[Dies ist die Liste der Listen! Es gibt zwei Arten von Listen:
- Pluginlisten: Diese Listen stammen aus den installierten Plugins und können nicht bearbeitet oder entfernt werden
- Benutzerdefinierte Listen: Die Listen, die Sie erstellt haben]=] -- Needs review
L["help_edt_3"] = "Die aktiven Listen (grünes Licht) werden im Daily-Global-Check-Fenster angezeigt, während die inaktiven Listen (rotes Licht) ausgeblendet werden" -- Needs review
L["help_edt_4"] = "Das ist eine Vorschau des ursprünglichen DGC-Fensters (Eigentlich ist es sogar das ursprüngliche DGC-Fenster)" -- Needs review
L["help_edt_5"] = "Diese Schaltfläche deaktiviert den Bearbeitungsmodus" -- Needs review
L["help_edt_6"] = "Hier können Sie den Titel der Liste ändern die gerade bearbeitet wird" -- Needs review
L["help_edt_7"] = "Klicken sie auf eine Spalte, um die Listen zu sortieren" -- Needs review
L["help_edt_8"] = "Dies ist die Liste der Quests. Sie enthält alle Plugin und persönlich hinzugefügte Quests." -- Needs review
L["help_edt_9"] = [=[Hier können Sie Quests hinzufügen oder bearbeiten.
Hinweis: Die bearbeitete Quest ist nicht unbedingt die ausgewählte Quest, es bezieht sich stattdessen auf die Quest, deren Quest-ID ins Bearbeitungsfeld geschrieben wurde.]=] -- Needs review
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Linksklick zum Öffnen des Hauptfensters"
L["lists_limit"] = "Listenlimit erreicht (%s)"
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Karten-ID"
L["map_options"] = "Kartenoptionen"
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Auswahl nach unten verschieben"
L["move_up"] = "Auswahl nach oben verschieben"
L["namemissing"] = "<Name fehlt>"
L["new_group"] = "Neue Gruppe"
L["newlist"] = "Neue Liste"
L["new_page"] = "Neue Seite"
L["new_quest"] = "Neue Quest"
L["news_#1"] = "Hi! ich bin dein Assistent und ich werde dir die wichtigsten Neuigkeiten von Daily Global Check zeigen"
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "Du kannst die momentane DGC-Seitenausgabe im Chatfenster ausgeben, wenn du '/dgc print' eintippst"
L["news_#3"] = "Daily Global Check kann seit v1.3.5 Instanzsperren verfolgen! Das dazugehörige Zusatzmodul (Daily Global Check_InstanceLockouts) kann bei Curse heruntergeladen werden"
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Probiere |cff00ff00DailyGlobalCheck_Hallow's End|r, wenn du Interesse daran hast, deine täglichen Quests des Ereignisses Schlotternächte zu verfolgen."
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLinksklick|cffFFFFFF: |cff00FF00Weiter"
L["news_bottomtext2"] = "|cff11DDFFRechtsklick|cffFFFFFF: |cff00FF00Verstecken|r"
L["nextpage"] = "Nächste Seite"
L["nolist"] = "Keine Liste ausgewählt"
L["notitle"] = "<kein Titel>"
L["opt_blacklist_remove"] = "Entferne einen Charakter von der Schwarzen Liste"
L["opt_characters"] = "Charaktere"
L["opt_characters_short"] = "(Alt)"
L["opt_help"] = "Hilfe"
L["opt_hidecompleted"] = "Verstecke fertige Quests"
L["opt_map_all"] = "Nur Weltkartensymbole der ausgewählten Liste anzeigen"
L["plugin_options"] = "Pluginoptionen"
L["plugin_opt_none"] = "Das ausgewählte Plugin hat keine spezifischen Optionen"
L["plugin_opt_title"] = "Optionen für das ausgewählte Plugin:"
L["prevpage"] = "Vorherige Seite"
L["questdatamissing"] = "<Questdaten fehlen>"
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s hinzugefügt."
L["quest_options"] = "Questoptionen"
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Wähle die Questposition -"
L["rclicktoopen"] = "Rechtsklick zum Öffnen des Schnellauswahlmenüs."
L["rem"] = "Entfernen"
L["remmenuheader"] = "- Wähle die Quest, die entfernt werden soll -"
L["repeatable"] = "Wiederholbar"
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Zauber-ID"
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Wegpunkt für TomTom hinzugefügt"
L["tools"] = "Werkzeuge"
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Accountweite Optionen)"
L["character_specific_options"] = "(Characterspezifische Optionen)"
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Koordinaten anzeigen"
L["opt_main"] = "Einstellungen"
L["opt_map"] = "Weltkartensymbole anzeigen"
L["opt_minimap"] = "Minikartenbutton anzeigen"
L["opt_minimap_icons"] = "Minikartensymbol anzeigen"
L["opt_prefix"] = "Zeige Vorsilbe" -- Needs review
L["opt_questtype"] = "Questtyp anzeigen"
L["opt_showquestbtn"] = "Zeige die Schaltfläche \"Füge Quest zur Eigenen Liste hinzu\" im Questlog an" -- Needs review
L["opt_suffix"] = "Zeige Nachsilbe"
L["opt_zonename"] = "Zonenname anzeigen"
L["plugin_mapicons"] = "Weltkartensymbole für dieses Plugin"
L["plugin_mapicons_minimap"] = "Minikartensymbole für dieses Plugin"
L["size"] = "Größe"
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "TomTom-Wegpunkte setzen"

elseif locale == "ruRU" then 
L["add"] = "Добавить" -- Needs review
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Доступные списки" -- Needs review
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Нажмите левую кнопку мыши, чтобы открыть основное окно" -- Needs review
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "Нет имени" -- Needs review
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "Нет названия" -- Needs review
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "Нет данных квеста" -- Needs review
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "Нажмите правую кнопку мыши, чтобы открыть меню быстрого выбора" -- Needs review
L["rem"] = "Удалить" -- Needs review
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - в TomTom добавлено направление." -- Needs review
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Отображать координаты" -- Needs review
L["opt_main"] = "Настройки" -- Needs review
L["opt_map"] = "Показывать иконки на карте мира" -- Needs review
L["opt_minimap"] = "Включить кнопку у миникарты" -- Needs review
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Отображать префикс" -- Needs review
L["opt_questtype"] = "Отображать тип квеста" -- Needs review
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "Отображать суффикс" -- Needs review
L["opt_zonename"] = "Отображать название локации" -- Needs review
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Устанавливать направления в TomTom" -- Needs review

elseif locale == "zhCN" then 
L["add"] = "Add" -- Requires localization
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "可用列表"
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "左键单击打开主框架"
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<名字丢失>"
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "<没有标题>"
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "<任务数据丢失>"
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "右键单击打开快速列表选择菜单"
L["rem"] = "Remove" -- Requires localization
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - 航点加入到TomTom"
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "显示坐标"
L["opt_main"] = "选项"
L["opt_map"] = "显示世界地图图标"
L["opt_minimap"] = "显示小地图按钮" -- Needs review
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "显示前缀"
L["opt_questtype"] = "显示任务类型"
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "显示后缀"
L["opt_zonename"] = "显示区域名称"
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "设置TomTom航点"

elseif locale == "zhTW" then 
L["add"] = "新增"
L["addbtntooltip"] = "將選擇的任務新增至你自訂的艾澤拉斯日常清單"
L["added"] = "已新增"
L["add_quest"] = "新增任務"
L["availablelists"] = "可用的清單"
L["bf_err1"] = "|cff11DDFF艾澤拉斯的日常|r - 請輸入任務ID或名稱。"
L["bf_err2"] = "|cff11DDFF艾澤拉斯的日常|r - 任務已經在清單中。"
L["blacklist"] = "黑名單"
L["b_prefix"] = "前置詞 (選擇性)"
L["b_questid"] = "任務ID"
L["b_questname"] = "任務名稱"
L["b_suffix"] = "後置詞 (選擇性)"
L["buildframe"] = "更改自訂清單"
L["chars_deleted"] = "|cff11DDFF艾澤拉斯的日常|r - 角色 |cff00FF00%s|r 已加入黑名單"
L["chars_restored"] = "|cff11DDFF艾澤拉斯的日常|r - 角色 |cff00FF00%s|r 已經從黑名單中移除"
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "自訂清單"
L["deleted"] = "已刪除"
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "刪除頁面"
L["edit_mode"] = "編輯模式"
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "使用按鈕來建立新的自訂清單，或選擇下面的清單來編輯/移除/啟用。" -- Needs review
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "左鍵開啟主視窗"
L["lists_limit"] = "達到清單上限 (%s)"
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "選取範圍往下移"
L["move_up"] = "選取範圍往上移"
L["namemissing"] = "<沒有名稱>"
L["new_group"] = "新的群組"
L["newlist"] = "新的清單"
L["new_page"] = "新的頁面"
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! 我是您的小助理，要和您說說艾澤拉斯的日常 Daily Global Check 最重要的新消息"
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "要將目前的艾澤拉斯的日常頁面顯示出來，只要在聊天視窗輸入 '/dgc print'"
L["news_#3"] = "艾澤拉斯的日常從版本 v1.3.5 開始可以追蹤副本開放進度! 在 Curse 網站可以找到相關的模組"
L["news_#4"] = "每週招募追隨者和草藥/礦坑的日常都在 Daily Global Check_Professions 模組"
L["news_#5"] = "稀有怪模組從版本 v1.3.2 開始有兩個特別的選項，可從 選項 -> 模組 面板來設定。"
L["news_#6"] = "追蹤萬鬼節的每日和糖果桶，一定不能錯過 |cff00ff00DailyGlobalCheck_Hallow's End|r"
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFF左鍵|cffFFFFFF: |cff00FF00下一個"
L["news_bottomtext2"] = "|cff11DDFF右鍵|cffFFFFFF: |cff00FF00隱藏|r"
L["nextpage"] = "下一頁"
L["nolist"] = "尚未選取任何清單"
L["notitle"] = "<沒有標題>"
L["opt_blacklist_remove"] = "從黑名單中移除角色"
L["opt_characters"] = "角色"
L["opt_characters_short"] = "(Alt)"
L["opt_help"] = "說明"
L["opt_hidecompleted"] = "隱藏已完成的任務"
L["opt_map_all"] = "只顯示選取清單中的世界地圖圖示"
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "選擇的模組沒有任何特別的選項"
L["plugin_opt_title"] = "選擇模組的選項:"
L["prevpage"] = "上一頁"
L["questdatamissing"] = "<無法找到任務資料>"
L["questlog_quest_added"] = "|cff11DDFF艾澤拉斯的日常|r - 已經新增任務 %s。"
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- 選擇任務位置 -"
L["rclicktoopen"] = "右鍵開啟快速選擇清單"
L["rem"] = "移除"
L["remmenuheader"] = "- 選擇要移除的任務 -"
L["repeatable"] = "可重複的"
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFF艾澤拉斯的日常|r - 已經新增 TomTom 航點"
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "顯示座標"
L["opt_main"] = "選項"
L["opt_map"] = "顯示世界地圖圖示"
L["opt_minimap"] = "顯示小地圖按鈕" -- Needs review
L["opt_minimap_icons"] = "顯示小地圖圖示"
L["opt_prefix"] = "顯示前置詞"
L["opt_questtype"] = "顯示任務類型"
L["opt_showquestbtn"] = "在任務記錄視窗中顯示 '新增任務到自訂清單' 按鈕"
L["opt_suffix"] = "顯示後置詞"
L["opt_zonename"] = "顯示地區名稱"
L["plugin_mapicons"] = "這個模組的世界地圖圖示"
L["plugin_mapicons_minimap"] = "這個模組的小地圖圖示"
L["size"] = "大小"
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "設定 TomTom 航點"

elseif locale == "koKR" then
L["add"] = "Add" -- Requires localization
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List" -- Requires localization
L["added"] = "added" -- Requires localization
L["add_quest"] = "Add Quest" -- Requires localization
L["availablelists"] = "Available Lists" -- Requires localization
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name." -- Requires localization
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists." -- Requires localization
L["blacklist"] = "Blacklist" -- Requires localization
L["b_prefix"] = "Prefix" -- Requires localization
L["b_questid"] = "Quest ID" -- Requires localization
L["b_questname"] = "Quest Name" -- Requires localization
L["b_suffix"] = "Suffix" -- Requires localization
L["buildframe"] = "Modify Custom List" -- Requires localization
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist" -- Requires localization
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist" -- Requires localization
L["classic"] = "Classic" -- Requires localization
L["collapsed"] = "Collapsed" -- Requires localization
L["coordinates"] = "Coordinates" -- Requires localization
L["create_new_list"] = "Create a new list" -- Requires localization
L["currency_id"] = "Currency ID" -- Requires localization
L["customlist"] = "Custom List" -- Requires localization
L["deleted"] = "deleted" -- Requires localization
L["delete_list"] = "Delete List" -- Requires localization
L["del_page"] = "Delete Page" -- Requires localization
L["edit_mode"] = "Edit Mode" -- Requires localization
L["edit_quest"] = "Edit Quest" -- Requires localization
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=] -- Requires localization
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells" -- Requires localization
L["generating_database"] = "Generating the %s database..." -- Requires localization
L["help_edt_1"] = "You can create a new custom list by using the %s button." -- Requires localization
L["help_edt_2"] = "You can rename the selected list by using the %s button." -- Requires localization
L["help_edt_3"] = "This button permanently deletes the currently selected custom list." -- Requires localization
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=] -- Requires localization
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=] -- Requires localization
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list." -- Requires localization
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify." -- Requires localization
L["help_edt_8"] = "This frame can be used to edit the chosen quest section." -- Requires localization
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them." -- Requires localization
L["hidden"] = "Hidden" -- Requires localization
L["lclicktoopen"] = "Left-click to open the main frame" -- Requires localization
L["lists_limit"] = "Lists limit reached (%s)" -- Requires localization
L["list_visibility"] = "List Visibility" -- Requires localization
L["map_id"] = "Map ID" -- Requires localization
L["map_options"] = "Map Options" -- Requires localization
L["minimap_icons"] = "Minimap Icons" -- Requires localization
L["move_down"] = "Move Selection Down" -- Requires localization
L["move_up"] = "Move Selection Up" -- Requires localization
L["namemissing"] = "<name missing>" -- Requires localization
L["new_group"] = "New Group" -- Requires localization
L["newlist"] = "New List" -- Requires localization
L["new_page"] = "New Page" -- Requires localization
L["new_quest"] = "New Quest" -- Requires localization
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check" -- Requires localization
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=] -- Requires localization
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!" -- Requires localization
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'" -- Requires localization
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse" -- Requires localization
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin" -- Requires localization
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel" -- Requires localization
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets" -- Requires localization
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)" -- Requires localization
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views" -- Requires localization
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options" -- Requires localization
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next" -- Requires localization
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r" -- Requires localization
L["nextpage"] = "Next Page" -- Requires localization
L["nolist"] = "No list selected" -- Requires localization
L["notitle"] = "<no title>" -- Requires localization
L["opt_blacklist_remove"] = "Remove a character from the black list" -- Requires localization
L["opt_characters"] = "Characters" -- Requires localization
L["opt_characters_short"] = "(Alt)" -- Requires localization
L["opt_help"] = "Help" -- Requires localization
L["opt_hidecompleted"] = "Hide completed quests" -- Requires localization
L["opt_map_all"] = "Only show world map icons from selected list" -- Requires localization
L["plugin_options"] = "Plugin Options" -- Requires localization
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options" -- Requires localization
L["plugin_opt_title"] = "Options for the selected plugin:" -- Requires localization
L["prevpage"] = "Previous Page" -- Requires localization
L["questdatamissing"] = "<quest data missing>" -- Requires localization
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool." -- Requires localization
L["quest_options"] = "Quest Options" -- Requires localization
L["quests_limit"] = "Quests limit reached (%s)" -- Requires localization
L["questwindow"] = "- Select quest position -" -- Requires localization
L["rclicktoopen"] = "Right-click to open the quick list selection menu" -- Requires localization
L["rem"] = "Remove" -- Requires localization
L["remmenuheader"] = "- Select the quest to remove -" -- Requires localization
L["repeatable"] = "Repeatable" -- Requires localization
L["search_by_name"] = "Search by name" -- Requires localization
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps" -- Requires localization
L["shown"] = "Shown" -- Requires localization
L["spell_id"] = "Spell ID" -- Requires localization
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom" -- Requires localization
L["tools"] = "Tools" -- Requires localization
L["worldmap_icons"] = "Worldmap Icons" -- Requires localization

L["account_wide_options"] = "(Account-Wide Options)" -- Requires localization
L["character_specific_options"] = "(Character-specific options)" -- Requires localization
L["map_icons_visibility_list"] = "Map icons visibility for this List" -- Requires localization
L["opt_coords"] = "Show coordinates" -- Requires localization
L["opt_main"] = "Options" -- Requires localization
L["opt_map"] = "Show world map icons" -- Requires localization
L["opt_minimap"] = "Show minimap button" -- Requires localization
L["opt_minimap_icons"] = "Show minimap icons" -- Requires localization
L["opt_prefix"] = "Show prefix" -- Requires localization
L["opt_questtype"] = "Show quest type" -- Requires localization
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame" -- Requires localization
L["opt_suffix"] = "Show suffix" -- Requires localization
L["opt_zonename"] = "Show zone name" -- Requires localization
L["plugin_mapicons"] = "World map icons for this Plugin" -- Requires localization
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin" -- Requires localization
L["size"] = "Size" -- Requires localization
L["toggle_all_pages"] = "Toggle All Pages" -- Requires localization
L["tomtom_button"] = "Set TomTom waypoints" -- Requires localization

else -- enUS
L["add"] = "Add"
L["addbtntooltip"] = "Add the selected quest to your Daily Global Check Custom List"
L["added"] = "added"
L["add_quest"] = "Add Quest"
L["availablelists"] = "Available Lists"
L["bf_err1"] = "|cff11DDFFDaily Global Check|r - You need to enter either the quest ID and its name."
L["bf_err2"] = "|cff11DDFFDaily Global Check|r - This quest already exists."
L["blacklist"] = "Blacklist"
L["b_prefix"] = "Prefix"
L["b_questid"] = "Quest ID"
L["b_questname"] = "Quest Name"
L["b_suffix"] = "Suffix"
L["buildframe"] = "Modify Custom List"
L["chars_deleted"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r is now in the blacklist"
L["chars_restored"] = "|cff11DDFFDaily Global Check|r - Character |cff00FF00%s|r has been removed from the blacklist"
L["classic"] = "Classic"
L["collapsed"] = "Collapsed"
L["coordinates"] = "Coordinates"
L["create_new_list"] = "Create a new list"
L["currency_id"] = "Currency ID"
L["customlist"] = "Custom List"
L["deleted"] = "deleted"
L["delete_list"] = "Delete List"
L["del_page"] = "Delete Page"
L["edit_mode"] = "Edit Mode"
L["edit_quest"] = "Edit Quest"
L["edit_questID_info"] = [=[You can insert multiple quest IDs each separated by one of the following keywords:
 %s : this element will result complete if at least one of the quests is completed.
 %s : this element will result complete only when all the quests are completed.]=]
L["edit_spell_info"] = "Tracks the cooldown of a spell, mostly useful with profession based spells"
L["generating_database"] = "Generating the %s database..."
L["help_edt_1"] = "You can create a new custom list by using the %s button."
L["help_edt_2"] = "You can rename the selected list by using the %s button."
L["help_edt_3"] = "This button permanently deletes the currently selected custom list."
L["help_edt_4"] = [=[This is the quest pool, you can drag any quest from here and drop it on the currently selected list.
- The %s button permanently deletes the relative custom quest from the quest pool.
- The %s button is used to edit the relative |cff00ff00custom|r quest.]=]
L["help_edt_5"] = [=[This is the selected custom list
- Quests can be repositioned by simply dragging them.
- A group of quests can be moved by using the %s buttons at the header's left.
- The %s button deletes the relative quest (it will still be available in the quest pool) or entire group from the list.
- The %s button is used to edit the relative |cff00ff00custom|r quest or rename the relative group.
- The 'New Quest' button creates a new quest in the quest pool and inserts it at the button's location, ready to be edited.
- The 'New Group' button simply creates a new group.]=]
L["help_edt_6"] = "These buttons are used to create or delete pages within the currently selected list."
L["help_edt_7"] = "Here you can select which section of the quest you wish to modify."
L["help_edt_8"] = "This frame can be used to edit the chosen quest section."
L["help_edt_9"] = "Click Okay to save your changes, or Cancel to revert them."
L["hidden"] = "Hidden"
L["lclicktoopen"] = "Left-click to open the main frame"
L["lists_limit"] = "Lists limit reached (%s)"
L["list_visibility"] = "List Visibility"
L["map_id"] = "Map ID"
L["map_options"] = "Map Options"
L["minimap_icons"] = "Minimap Icons"
L["move_down"] = "Move Selection Down"
L["move_up"] = "Move Selection Up"
L["namemissing"] = "<name missing>"
L["new_group"] = "New Group"
L["newlist"] = "New List"
L["new_page"] = "New Page"
L["new_quest"] = "New Quest"
L["news_#1"] = "Hi! I'm your assistant and I will show you the most important news about Daily Global Check"
L["news_#10"] = [=[World map icons from adjacent and continent maps are now hidden by default.
There is a new option in the Map Options panel to restore them]=]
L["news_#11"] = "Want to save talent sets and change talents with a click? Check out my new addon, |cff00ff00Talent Set Manager|r!"
L["news_#2"] = "You can print the current DGC page output in the chatframe by typing '/dgc print'"
L["news_#3"] = "Daily Global Check can track Instance Lockouts since v1.3.5! The related plugin can be found on Curse"
L["news_#4"] = "Weekly follower and Herb/Mining node counters are available in the Daily Global Check_Professions plugin"
L["news_#5"] = "The Rare Mobs plugin, as of v1.3.2, has two specific options available in the Options->Plugin panel"
L["news_#6"] = "Check out |cff00ff00DailyGlobalCheck_Hallow's End|r if you're interested in tracking Hallow's End dailies and candy buckets"
L["news_#7"] = "|cff00ffffMay 2016|r - |cffAAAAAAv|cff00ff001.5|r - Daily Global Check got a massive technical overhaul in preparation for Legion. The older plugins are incompatible and they will also need to be updated to the newer version, apologies for the inconvenience :)"
L["news_#8"] = "Groups can be collapsed by clicking on their title in the main frame, collapsed groups are hidden in mouseovering views"
L["news_#9"] = "You can hide map icons for chosen pages of any list through its Plugin Options"
L["news_bottomtext1"] = "|cff11DDFFLeft-Click|cffFFFFFF: |cff00FF00Next"
L["news_bottomtext2"] = "|cff11DDFFRight-Click|cffFFFFFF: |cff00FF00Hide|r"
L["nextpage"] = "Next Page"
L["nolist"] = "No list selected"
L["notitle"] = "<no title>"
L["opt_blacklist_remove"] = "Remove a character from the black list"
L["opt_characters"] = "Characters"
L["opt_characters_short"] = "(Alt)"
L["opt_help"] = "Help"
L["opt_hidecompleted"] = "Hide completed quests"
L["opt_map_all"] = "Only show world map icons from selected list"
L["plugin_options"] = "Plugin Options"
L["plugin_opt_none"] = "The selected plugin doesn't have any specific options"
L["plugin_opt_title"] = "Options for the selected plugin:"
L["prevpage"] = "Previous Page"
L["questdatamissing"] = "<quest data missing>"
L["questlog_quest_added"] = "|cff11DDFFDaily Global Check|r - Quest %s added to the custom quests pool."
L["quest_options"] = "Quest Options"
L["quests_limit"] = "Quests limit reached (%s)"
L["questwindow"] = "- Select quest position -"
L["rclicktoopen"] = "Right-click to open the quick list selection menu"
L["rem"] = "Remove"
L["remmenuheader"] = "- Select the quest to remove -"
L["repeatable"] = "Repeatable"
L["search_by_name"] = "Search by name"
L["show_adjacent_map_icons"] = "Show on adjacent/continent maps"
L["shown"] = "Shown"
L["spell_id"] = "Spell ID"
L["s_tomtomset"] = "|cff11DDFFDaily Global Check|r - Waypoint added to TomTom"
L["tools"] = "Tools"
L["worldmap_icons"] = "Worldmap Icons"

L["account_wide_options"] = "(Account-Wide Options)"
L["character_specific_options"] = "(Character-specific options)"
L["map_icons_visibility_list"] = "Map icons visibility for this List"
L["opt_coords"] = "Show coordinates"
L["opt_main"] = "Options"
L["opt_map"] = "Show world map icons"
L["opt_minimap"] = "Show minimap button"
L["opt_minimap_icons"] = "Show minimap icons"
L["opt_prefix"] = "Show prefix"
L["opt_questtype"] = "Show quest type"
L["opt_showquestbtn"] = "Show the 'Add quest to Custom List' button in the Quest Log Frame"
L["opt_suffix"] = "Show suffix"
L["opt_zonename"] = "Show zone name"
L["plugin_mapicons"] = "World map icons for this Plugin"
L["plugin_mapicons_minimap"] = "Minimap icons for this Plugin"
L["size"] = "Size"
L["toggle_all_pages"] = "Toggle All Pages"
L["tomtom_button"] = "Set TomTom waypoints"

end