-- Daily Global Check - Legion World Quests plugin
-- Jadya EU-Well of Eternity

local tinsert, tsort = table.insert, table.sort

local Z = DailyGlobalCheck.Z

local item_class = setmetatable({}, { __index = function(t, k)
												 local class = select(12, GetItemInfo(k))
												 if class then
												  t[k] = class
												  return class
												 end
												end})

local tag_info = setmetatable({}, { __index = function(t, k)
                                               local tag, name, type, rarity, isElite = GetQuestTagInfo(k)
                                               t[k] = {tag, name, type, rarity, isElite}
											   return t[k]
											  end})

local questsdata = {}
local initialized = 0
local quests_changed, active_quests, svar
local artifact_xp_items = {138785,141932,139617,141702,141921,139510,141859,141706,141922,139507,140322,139614,141956,139511,141930,139508,141927,141708,139612,139608,139610,141923,141931,141704,141707,141703,141926,139615,141929,139509,139512,139609,141928,139611,141925,141709,141710,141705,141924,139613,141711,139616,141872}
local order_cache =
 {
  -- by zone
   {
    {Z[1015]},
    {Z[1018]},
	{Z[1024]},
	{Z[1017]},
	{Z[1033]},
	{Z[1014]},
	{Z[1096]}
   },
  -- by type
   {
    {WORLD_QUEST_BANNER},
    {CALENDAR_TYPE_DUNGEON},
    {ELITE},
    {BATTLE_PET_SOURCE_5},
    {GUILD_INTEREST_PVP},
    {BATTLE_PET_SOURCE_4},
   },
  -- by reward
   {
    {ARTIFACT_POWER},
	{select(1, GetCurrencyInfo(1220))},
	{BONUS_ROLL_REWARD_MONEY},
	{RELICSLOT},
	{BAG_FILTER_EQUIPMENT},
	{"Blood of Sargeras"},
	{BATTLE_PET_SOURCE_4},
	{OTHER},
   },
  -- by faction
   {
    {select(1, GetFactionInfoByID(1894))}, -- wardens
    {select(1, GetFactionInfoByID(1900))}, -- court
    {select(1, GetFactionInfoByID(1090))}, -- kirin
    {select(1, GetFactionInfoByID(1859))}, -- night
    {select(1, GetFactionInfoByID(1883))}, -- dreamw
    {select(1, GetFactionInfoByID(1828))}, -- high
    {select(1, GetFactionInfoByID(1948))}, -- dreamw
   },
 }

local plugin_data = {
 ["Title"] = "Legion World Quests",
 ["Icon"]  = "Interface\\Icons\\Achievement_BG_ABshutout",
 ["Version"] = 1004,
 ["Options"] = {
				{"Radiobutton","Sort by Zone"      ,true},
				{"Radiobutton","Sort by Quest Type",false},
				{"Radiobutton","Sort by Reward"    ,false},
				{"Radiobutton","Sort by Faction"   ,false},
			   },
 ["Order"] = {},
}

local zone_indexes = {
                      [1015] = 1,
                      [1018] = 2,
                      [1024] = 3,
                      [1017] = 4,
                      [1033] = 5,
                      [1014] = 6,
                      [1096] = 7,
					 }
local type_indexes = {
                      [LE_QUEST_TAG_TYPE_PROFESSION] = 6,
					  [LE_QUEST_TAG_TYPE_PVP] = 5,
					  [LE_QUEST_TAG_TYPE_PET_BATTLE] = 4,
					  [LE_QUEST_TAG_TYPE_DUNGEON] = 2,
					 }
					 
local type_factions = {
                       [1894] = 1,
                       [1900] = 2,
					   [1090] = 3,
					   [1859] = 4,
					   [1883] = 5,
					   [1828] = 6,
					   [1948] = 7,
					  }
				 
local function determine_group(opt, v, info)
 if opt == 1 then
  return zone_indexes[v[5][1]]
 elseif opt == 2 then
   return (info[5] and info[3] == LE_QUEST_TAG_TYPE_NORMAL) and 3 or (type_indexes[info[3]] or 1)
 elseif opt == 3 then
  if info[7] then
   return 2
  elseif info[3] == LE_QUEST_TAG_TYPE_PROFESSION then
   return 7
  elseif info[8] then
   if tContains(artifact_xp_items, info[8]) then
    return 1
   elseif IsArtifactRelicItem(info[8]) then
    return 4
   elseif info[8] == 124124 then
    return 6
   elseif item_class[info[8]] == 4 then
    return 5
   else
    return 8
   end
  elseif info[6] > 0 then
   return 3
  else
   return 8
  end
 elseif opt == 4 then
  return type_factions[info[9]] or 1
 else
  return 1
 end
end

local function setup_order()

 if not quests_changed then return end

 local opt
 if svar and svar.options then
  for i = 1,4 do
   if svar.options[i] then
    opt = i
    break
   end
  end
  if not opt then opt = 1 end
 else
  opt = 1
 end
 plugin_data.Order[1] = order_cache[opt]
 local order = plugin_data.Order[1]
 
 for _,v in pairs(order) do
  for i = 2,#v do
   v[i] = nil
  end
 end
 
 for k,v in pairs(questsdata) do
  local info = tag_info[k]
  if active_quests[k] and info then
   local group = determine_group(opt, v, info)
   order[group][#order[group] + 1] = k
  end
 end

  for k,v in pairs(plugin_data.Order[1]) do
   tsort(v, function(a, b)
    if type(a) == "string" then return true end
    if type(b) == "string" then return false end
    local ar = C_TaskQuest.GetQuestTimeLeftMinutes(a or 0)
    local br = C_TaskQuest.GetQuestTimeLeftMinutes(b or 0)
    return ar < br
   end)
  end
 quests_changed = nil
end

local function isquestcompleted(questID)
 if IsQuestFlaggedCompleted(questID) then return true end
 -- (tag_info[questID][8] or "")
 return false, SecondsToTime((C_TaskQuest.GetQuestTimeLeftMinutes(questID) or 0) * 60)
end

local function showfunc(questID)
 --return C_TaskQuest.GetQuestTimeLeftMinutes(questID) ~= 0
 return active_quests[questID] and true
end

local function GenerateData()
 local l = DailyGlobalCheck.LocalizeSection
 local timerset
 local lowest_timer = 99999

 local function checkMap(mapID)
  WorldMapFrame:UnregisterEvent("WORLD_MAP_UPDATE")
  SetMapByID(mapID)

  for k,v in pairs(C_TaskQuest.GetQuestsForPlayerByMapID(mapID)) do
   --[[if not HaveQuestData(v.questId) and not timerset then
    C_Timer.After(5, GenerateData)
	timerset = true
   end]]

   local title, factionID = C_TaskQuest.GetQuestInfoByQuestID(v.questId)
   if not questsdata[v.questId] then
    questsdata[v.questId] = {Z[mapID], title, [6] = 0, [9] = showfunc, [10] = isquestcompleted}
   end
   
   local timeLeftMinutes = C_TaskQuest.GetQuestTimeLeftMinutes(v.questId)
   
   if timeLeftMinutes > WORLD_QUESTS_TIME_CRITICAL_MINUTES then
   
	if lowest_timer > timeLeftMinutes then
	 lowest_timer = timeLeftMinutes
	end
   
	local info = tag_info[v.questId]
    local overlay

    local pref = (info[4] == LE_WORLD_QUEST_QUALITY_RARE or info[4] == LE_WORLD_QUEST_QUALITY_EPIC) and WORLD_QUEST_QUALITY_COLORS[info[4]].hex or ""
	
	info[6] = GetQuestLogRewardMoney(v.questId) or 0
	if info[6] > 0 then
	 pref = "|Tinterface\\moneyframe\\UI-GoldIcon:12|t"
     overlay = GetCoinTextureString(info[6])
	end    
    
	info[9] = factionID
	local numQuestCurrencies = GetNumQuestLogRewardCurrencies(questID)
    local cname, ctexture, num = GetQuestLogRewardCurrencyInfo(1, v.questId)
    if cname then
	 info[7] = {cname, ctexture, num}
     overlay = BONUS_OBJECTIVE_REWARD_WITH_COUNT_FORMAT:format(ctexture, num, cname)
	end

    local mapData = (v.floor and v.floor > 0) and nil or {mapID, v.x * 100, v.y * 100}
    
    -- inquisitor tivos portal icon
    if v.questId == 43611 or v.questId == 42631 then
     questsdata[v.questId][6] = nil
     mapData[5] = mapID
     mapData[6] = 26.81
     mapData[7] = 49.06
     mapData[8] = {desc="Legion Portal", icon="interface\\minimap\\vehicle-silvershardmines-arrow"}
    end
	
	if cname then
	 --pref = pref.."|T"..ctexture..":12|t"
	 pref = pref.."|TInterface\\Icons\\Tracking_FindTimber:12|t"
	end
   
    local numRewards = GetNumQuestLogRewards(v.questId)
    if numRewards > 0 then
     for i = 1, numRewards do
      local itemName, itemTexture, quantity, quality, isUsable, itemID = GetQuestLogRewardInfo(i, v.questId)
	  if itemName then
	   info[8] = itemID
	   questsdata[v.questId].itemID = itemID
	   --overlay = "|Hitem:"..itemID..":::::::::::::|h[item"..itemID.."]|h"
	   overlay = "|QR"..v.questId.."|qr"
	   if tContains(artifact_xp_items, itemID) then
	    pref = pref.."|T1394892:12|t"
	   elseif info[8] == 124124 then
	    pref = pref.."|T1417744:12|t"
	   end
	  elseif not timerset then
	    C_Timer.After(5, GenerateData)
		timerset = true
	  end
	 end
    end
	
    if info[3] == LE_QUEST_TAG_TYPE_PET_BATTLE then
     pref = pref.."|Tspells\\Paw_Green:12|t"
	elseif info[3] == LE_QUEST_TAG_TYPE_PVP then
	 pref = pref.."|TInterface\\PvpFrame\\Icon-Combat:12|t"
    end
   
    if info[5] then
	 if info[3] == LE_QUEST_TAG_TYPE_DUNGEON then
	  pref = pref.."|TInterface\\Minimap\\Vehicle-AllianceWarlockPortal:12|t"
	 else
	  pref = pref.."|TInterface\\TargetingFrame\\UI-TargetingFrame-Skull:12|t"
	 end
    end
	questsdata[v.questId][3] = pref
	questsdata[v.questId][5] = mapData
	questsdata[v.questId][13] = overlay
	active_quests[v.questId] = true
   end
  end
 end

 if not timerset and initialized < 3 then
  C_Timer.After(5, GenerateData)
  timerset = true
  initialized = initialized + 1
 end
 
 local prev_mapID = GetCurrentMapAreaID()
 local prev_dungeonID = GetCurrentMapDungeonLevel()
 local prev_cont
 if not prev_mapID or prev_mapID < 0 or prev_mapID == 751 then
  prev_cont = GetCurrentMapContinent()
 end
 wipe(active_quests)
 for k in pairs (zone_indexes) do
  checkMap(k)
 end
 
 quests_changed = true
 
 if prev_cont then
  SetMapZoom(prev_cont)
 else
  SetMapByID(prev_mapID)
  
  if prev_dungeonID > 0 then
   SetDungeonMapLevel(prev_dungeonID)
  end
 end
 WorldMapFrame:RegisterEvent("WORLD_MAP_UPDATE")
 
 if not timerset then
  C_Timer.After(lowest_timer * 60 + 180, function() initialized = 0 GenerateData() end)
  --print("timer in", SecondsToTime(lowest_timer * 60 + 180))
 end
 setup_order()
 
 DailyGlobalCheck:Refresh(plugin_data)
end

local last_opt
local function option_changed(opt, value, list)
 if list ~= plugin_data then return end

 if last_opt ~= opt then
  quests_changed = true
  setup_order()
  last_opt = opt
 end
end

local function Initialize()
 active_quests = {}
 svar = DailyGlobalCheck_PluginData and DailyGlobalCheck_PluginData["Legion World Quests"]
 
 order_cache[3][6][1] = DailyGlobalCheck.LocalizeSection(order_cache[3], 6, 1, "Blood of Sargeras", "item", 124124, 1)
 
 DGCEventFrame:Hook("OPTION_CHANGED_PLUGIN", option_changed)
end

plugin_data.Initialize = Initialize
plugin_data.GenerateData = GenerateData
DailyGlobalCheck:LoadPlugin(plugin_data, questsdata)