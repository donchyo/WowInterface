local _
-- global functions and variebles to locals to keep LINT happy
local assert = _G.assert
local ARTIFACT_RELIC_TALENT_AVAILABLE = _G.ARTIFACT_RELIC_TALENT_AVAILABLE; assert(ARTIFACT_RELIC_TALENT_AVAILABLE ~= nil,'ARTIFACT_RELIC_TALENT_AVAILABLE')
local C_Garrison = _G.C_Garrison; assert(C_Garrison ~= nil,'C_Garrison')
local C_Reputation = _G.C_Reputation; assert(C_Reputation ~= nil,'C_Reputation')
local CreateFrame = _G.CreateFrame; assert(CreateFrame ~= nil,'CreateFrame')
local date = _G.date; assert(date ~= nil,'date')
local debugprofilestop = _G.debugprofilestop; assert(debugprofilestop ~= nil,'debugprofilestop')
local ERR_SPELL_FAILED_REAGENTS_GENERIC = _G.ERR_SPELL_FAILED_REAGENTS_GENERIC; assert(ERR_SPELL_FAILED_REAGENTS_GENERIC ~= nil,'ERR_SPELL_FAILED_REAGENTS_GENERIC')
local ExpandAllFactionHeaders = _G.ExpandAllFactionHeaders; assert(ExpandAllFactionHeaders ~= nil,'ExpandAllFactionHeaders')
local format = _G.format; assert(format ~= nil,'format')
local GetArchaeologyRaceInfo = _G.GetArchaeologyRaceInfo; assert(GetArchaeologyRaceInfo ~= nil,'GetArchaeologyRaceInfo')
local GetCVar = _G.GetCVar; assert(GetCVar ~= nil,'GetCVar')
local GetFactionInfo = _G.GetFactionInfo; assert(GetFactionInfo ~= nil,'GetFactionInfo')
local GetFactionInfoByID = _G.GetFactionInfoByID; assert(GetFactionInfoByID ~= nil,'GetFactionInfoByID')
local GetChatWindowInfo = _G.GetChatWindowInfo; assert(GetChatWindowInfo ~= nil,'GetChatWindowInfo')
local GetItemCount = _G.GetItemCount; assert(GetItemCount ~= nil,'GetItemCount')
local GetItemInfo = _G.GetItemInfo; assert(GetItemInfo ~= nil,'GetItemInfo')
local GetItemSpell = _G.GetItemSpell; assert(GetItemSpell ~= nil,'GetItemSpell')
local GetMinimapZoneText = _G.GetMinimapZoneText; assert(GetMinimapZoneText ~= nil,'GetMinimapZoneText')
local GetNumArchaeologyRaces = _G.GetNumArchaeologyRaces; assert(GetNumArchaeologyRaces ~= nil,'GetNumArchaeologyRaces')
local GetNumFactions = _G.GetNumFactions; assert(GetNumFactions ~= nil,'GetNumFactions')
local GetSpellCooldown = _G.GetSpellCooldown; assert(GetSpellCooldown ~= nil,'GetSpellCooldown')
local GetSpellInfo = _G.GetSpellInfo; assert(GetSpellInfo ~= nil,'GetSpellInfo')
local GetTime = _G.GetTime; assert(GetTime ~= nil,'GetTime')
local gsub = _G.gsub; assert(gsub ~= nil,'gsub')
local InCombatLockdown = _G.InCombatLockdown; assert(InCombatLockdown ~= nil,'InCombatLockdown')
local ipairs = _G.ipairs; assert(ipairs ~= nil,'ipairs')
local IsPlayerSpell = _G.IsPlayerSpell; assert(IsPlayerSpell ~= nil,'IsPlayerSpell')
local ITEM_OPENABLE = _G.ITEM_OPENABLE; assert(ITEM_OPENABLE ~= nil,'ITEM_OPENABLE')
local ITEM_SPELL_TRIGGER_ONUSE = _G.ITEM_SPELL_TRIGGER_ONUSE; assert(ITEM_SPELL_TRIGGER_ONUSE ~= nil,'ITEM_SPELL_TRIGGER_ONUSE')
local LE_FOLLOWER_TYPE_SHIPYARD_6_2 = _G.LE_FOLLOWER_TYPE_SHIPYARD_6_2; assert(LE_FOLLOWER_TYPE_SHIPYARD_6_2 ~= nil,'LE_FOLLOWER_TYPE_SHIPYARD_6_2')
local LE_GARRISON_TYPE_6_0 = _G.LE_GARRISON_TYPE_6_0; assert(LE_GARRISON_TYPE_6_0 ~= nil,'LE_GARRISON_TYPE_6_0')
local LE_GARRISON_TYPE_7_0 = _G.LE_GARRISON_TYPE_7_0; assert(LE_GARRISON_TYPE_7_0 ~= nil,'LE_GARRISON_TYPE_7_0')
local LibStub = _G.LibStub; assert(LibStub ~= nil,'LibStub')
local math = _G.math; assert(math ~= nil,'math')
local NUM_CHAT_WINDOWS = _G.NUM_CHAT_WINDOWS; assert(NUM_CHAT_WINDOWS ~= nil,'NUM_CHAT_WINDOWS')
local pairs = _G.pairs; assert(pairs ~= nil,'pairs')
local select = _G.select; assert(select ~= nil,'select')
local string = _G.string; assert(string ~= nil,'string')
local tonumber = _G.tonumber; assert(tonumber ~= nil,'tonumber')
local type = _G.type; assert(type ~= nil,'type')
local UIParent = _G.UIParent; assert(UIParent ~= nil,'UIParent')
local UnitClass = _G.UnitClass; assert(UnitClass ~= nil,'UnitClass')
local unpack = _G.unpack; assert(unpack ~= nil,'unpack')
local wipe = _G.wipe; assert(wipe ~= nil,'wipe')
local PLAYER_LIST_DELIMITER = _G.PLAYER_LIST_DELIMITER; assert(PLAYER_LIST_DELIMITER ~= nil,'PLAYER_LIST_DELIMITER')
local table = _G.table; assert(table ~= nil,'table')
-- local AddOn
local ADDON, P = ...
local NOP = LibStub("AceAddon-3.0"):GetAddon(ADDON)
--
local ARCHAELOGY_ANNOUNCE = P.ARCHAELOGY_ANNOUNCE; assert(ARCHAELOGY_ANNOUNCE ~= nil,'ARCHAELOGY_ANNOUNCE')
local ARTIFACT_ANNOUNCE = P.ARTIFACT_ANNOUNCE; assert(ARTIFACT_ANNOUNCE ~= nil,'ARTIFACT_ANNOUNCE')
local CB_CVAR = P.CB_CVAR; assert(CB_CVAR ~= nil,'CB_CVAR')
local L = P.L
local PRI_REP = P.PRI_REP; assert(PRI_REP ~= nil,'PRI_REP')
local REWARD_ANNOUNCE = P.REWARD_ANNOUNCE; assert(REWARD_ANNOUNCE ~= nil,'REWARD_ANNOUNCE')
local RGB_RED = P.RGB_RED; assert(RGB_RED ~= nil,'RGB_RED')
local RGB_YELLOW = P.RGB_YELLOW; assert(RGB_YELLOW ~= nil,'RGB_YELLOW')
local SHIPYARD_ANNOUNCE = P.SHIPYARD_ANNOUNCE; assert(SHIPYARD_ANNOUNCE ~= nil,'SHIPYARD_ANNOUNCE')
local SPELL_PICKLOCK = P.SPELL_PICKLOCK; assert(SPELL_PICKLOCK ~= nil,'SPELL_PICKLOCK')
local TALENT_ANNOUNCE = P.TALENT_ANNOUNCE; assert(TALENT_ANNOUNCE ~= nil,'TALENT_ANNOUNCE')
local TOGO_ANNOUNCE = P.TOGO_ANNOUNCE; assert(TOGO_ANNOUNCE ~= nil,'TOGO_ANNOUNCE')
local TOOLTIP_ITEM = P.TOOLTIP_ITEM; assert(TOOLTIP_ITEM ~= nil,'TOOLTIP_ITEM')
local TOOLTIP_SCAN = P.TOOLTIP_SCAN; assert(TOOLTIP_SCAN ~= nil,'TOOLTIP_SCAN')
local TOOLTIP_SPELL = P.TOOLTIP_SPELL; assert(TOOLTIP_SPELL ~= nil,'TOOLTIP_SPELL')
local whoCalls = P.whoCalls; assert(whoCalls ~= nil,'whoCalls')
local WORK_ANNOUNCE = P.WORK_ANNOUNCE; assert(WORK_ANNOUNCE ~= nil,'WORK_ANNOUNCE')
local LIB_ARTIFACTDATA = P.LIB_ARTIFACTDATA; assert(LIB_ARTIFACTDATA ~= nil,'LIB_ARTIFACTDATA')
local LIB_HEREBEDRAGONS = P.LIB_HEREBEDRAGONS; assert(LIB_HEREBEDRAGONS ~= nil,'LIB_HEREBEDRAGONS')
local LIB_MASQUE = P.LIB_MASQUE; -- this one could not exist
local LIB_QUESTITEM = P.LIB_QUESTITEM; assert(LIB_QUESTITEM ~= nil,'LIB_QUESTITEM')
local print = P.print; assert(print ~= nil,'print')
local T_BLACKLIST = P.T_BLACKLIST; assert(T_BLACKLIST ~= nil,'T_BLACKLIST')
local T_CHECK = P.T_CHECK; assert(T_CHECK ~= nil,'T_CHECK')
local T_OPEN = P.T_OPEN; assert(T_OPEN ~= nil,'T_OPEN')
local T_RECIPES_FIND = P.T_RECIPES_FIND; assert(T_RECIPES_FIND ~= nil,'T_RECIPES_FIND')
local T_REPS = P.T_REPS; assert(T_REPS ~= nil,'T_REPS')
local T_SPELL_FIND = P.T_SPELL_FIND; assert(T_SPELL_FIND ~= nil,'T_SPELL_FIND')
local T_USE = P.T_USE; assert(T_USE ~= nil,'T_USE')
--
function NOP:Verbose(...) -- if verbose then output
  if NOP.DB.verbose then print(...) end
end
function NOP:OnInitialize() -- app initialize
  self:InitEvents() -- register events
  self:ProfileLoad() -- initialize AceDB
  self:OptionsLoad() -- initialize AceConfig
  self.scanFrame = self:TooltipCreate(TOOLTIP_SCAN)
  self.itemFrame = self:TooltipCreate(TOOLTIP_ITEM)
  self.spellFrame = self:TooltipCreate(TOOLTIP_SPELL) -- /run NOP.spellFrame = NOP:TooltipCreate("NOP_TOOLTIP_SPELL")
  LIB_ARTIFACTDATA.RegisterCallback(self,"ARTIFACT_ADDED",           "ArtifactCallback")
  LIB_ARTIFACTDATA.RegisterCallback(self,"ARTIFACT_POWER_CHANGED" ,  "ArtifactCallback")
  LIB_ARTIFACTDATA.RegisterCallback(self,"ARTIFACT_RELIC_CHANGED" ,  "ArtifactCallback")
  LIB_ARTIFACTDATA.RegisterCallback(self,"ARTIFACT_TRAITS_CHANGED" , "ArtifactCallback")
end
function NOP:OnEnable() -- add-on enable
  self.masque = LIB_MASQUE and LIB_MASQUE:Group(ADDON) -- when user has installed Masque addon, then skinnig is done by Masque save new group pointer
  LIB_QUESTITEM.RegisterCallback(self, "LibQuestItem_Update","QBUpdate")
end
function NOP:TooltipCreate(name) -- create tooltip frame
  local frame
  if _G[name] and _G[name].SetOwner then -- test if frame exist, workaround for broken tooltip, no need create new tooltip frame, reuse old one
    frame = _G[name]
  else
    frame = CreateFrame("GameTooltip",name,nil,"GameTooltipTemplate") -- create new frame
  end
  frame:SetOwner(UIParent,"ANCHOR_NONE") -- frame out of screen and start updating
  return frame
end
function NOP:ItemLoad() -- load template item tooltips
  local itemRetry = nil
  self:Profile(true)
  local nCB = tonumber(GetCVar(CB_CVAR)) -- if colorblind mode activated then on 2nd line there is extra info
  for itemID, data in pairs(NOP.T_RECIPES) do
    if not T_RECIPES_FIND[itemID] then -- need fill pattern
      local name = GetItemInfo(itemID) -- query or fill client side cache
      if (name == nil) or (name == "") then -- item has no info on client side yet, let wait for server
        itemRetry = itemID
      else
        local c,pattern,zone,map,faction = unpack(data,1,5)
        if (c[2] == PRI_REP) and faction then T_REPS[name] = faction end -- fill-up item name to faction table
        self.itemFrame:ClearLines() -- clean tooltip frame
        self.itemFrame:SetItemByID(itemID)
        local count = self.itemFrame:NumLines()
        if count > 1 then -- I must have at least 2 lines in tooltip
          if type(pattern) == "number" then
            if count >= pattern then
              local i = pattern + nCB
              local tooltipText = TOOLTIP_ITEM .. "TextLeft" .. i
              local text = _G[tooltipText].GetText and _G[tooltipText]:GetText() or "none"
              if text and (text ~= "none") then T_RECIPES_FIND[itemID] = {c,text,zone,map,faction} end
            end
          elseif type(pattern) == "string" then
            local tooltipText = TOOLTIP_ITEM .. "TextLeft" .. 1
            local heading = _G[tooltipText]:GetText()
            if heading then -- look in 1st line
              local compare = gsub(heading,pattern,"%1")
              if (compare ~= heading) then
                T_RECIPES_FIND[itemID] = {c,compare,zone,map,faction}
              end
            end
          end
        else
          self:Verbose("ItemLoad:Empty tooltip", itemID)
          itemRetry = itemID
          self.itemFrame = self:TooltipCreate(TOOLTIP_ITEM) -- empty tooltip I just throw out old one. Workaround for bad tooltip frame init damn Blizzard!
          break
        end
      end
    end
  end
  self:Profile(false)
  self.itemLoad = true
  --print("ItemLoad",itemRetry)
end
local spellLoaded = {}
function NOP:SpellLoad() -- load spell patterns
  local spellRetry = nil
  self:Profile(true)
  for itemID,data in pairs(NOP.T_SPELL_BY_NAME) do
    if not spellLoaded[itemID] then -- not yet added
      local name = GetItemInfo(itemID) -- 1st fetch item into cache
      if name == nil or name == "" then
        spellRetry = itemID
      end
    end
    local spell = GetItemSpell(itemID) -- now query if it has spell
    if spell and spell ~= "" then
      T_SPELL_FIND[spell] = data
      spellLoaded[itemID] = true
    else
      spellRetry = itemID
    end
  end
  self:Profile(false)
  self.spellLoad = true
  --print("SpellLoad",spellRetry)
end
function NOP:PickLockUpdate() -- rogue picklocking
  if IsPlayerSpell(SPELL_PICKLOCK) then -- have it in spellbook?
    self.spellFrame:ClearLines() -- clean tooltip frame
    self.spellFrame:SetSpellByID(SPELL_PICKLOCK) -- Fills the tooltip with information about a spell specified by ID
    local count = self.spellFrame:NumLines()
    if count > 3 then
      local text = _G[P.TOOLTIP_SPELL .. "TextLeft" .. 4]:GetText() -- 4th line contains actual level of picklocking
      if text and text ~= "" then
        self.pickLockLevel = tonumber(string.match(text,"%d+")) -- /run local level = string.match("blabla 500.","%d+"); print(level)
        if self.pickLockLevel then
          self.pickLockSpell = GetSpellInfo(SPELL_PICKLOCK) -- save name for later use
        else
          print("Can't determine level of",GetSpellInfo(SPELL_PICKLOCK),"unexpected formating of tooltip!",text) -- diagnostic
        end
      end
    else
      self:Verbose("Tooltip has less lines than expected, has", count, "instead more than 3.") -- diagnostic
    end
  end
end
function NOP:PrintTooltip(tooltip) -- dump tooltip in chat frame
  local name = tooltip:GetName()
  for i=1,tooltip:NumLines() do -- scan all lines in tooltip
    local leftText = _G[name .. "TextLeft" .. i]
    local rightText = _G[name .. "TextRight" .. i]
    if leftText and leftText.GetText then
      local r,g,b,a = leftText:GetTextColor()
      local line = leftText:GetText()
      if line and line ~= "" then print(format("L %2d RGBA %3.3d %3.3d %3.3d %3.3d T %s",i,math.floor(r * 255 + 0.5),math.floor(g * 255 + 0.5),math.floor(b * 255 + 0.5),math.floor(a * 255 + 0.5), line)) end
    end
    if rightText and rightText.GetText then
      local r,g,b,a = rightText:GetTextColor()
      local line = rightText:GetText()
      if line and line ~= "" then print(format("R %2d RGBA %3.3d %3.3d %3.3d %3.3d T %s",i,math.floor(r * 255 + 0.5),math.floor(g * 255 + 0.5),math.floor(b * 255 + 0.5),math.floor(a * 255 + 0.5), line)) end
    end
  end
end
function NOP:BlacklistClear() -- reset temporary blacklist
  if not NOP.DB.Skip and T_BLACKLIST and T_BLACKLIST[0] then -- have blacklisted items and is not session sticky, lets erase blacklist and check again
    wipe(T_BLACKLIST) -- empty list
    wipe(T_CHECK)
    return true
  end
end
function NOP:BlacklistReset() -- reset permanent blacklist
  if (type(NOP.DB.T_BLACKLIST) == "table") then
    wipe(NOP.DB.T_BLACKLIST)
  else
    NOP.DB.T_BLACKLIST = {} 
  end
  if (type(NOP.DB.T_BLACKLIST_Q) == "table") then
    wipe(NOP.DB.T_BLACKLIST_Q)
  else
    NOP.DB.T_BLACKLIST_Q = {} 
  end
  wipe(T_CHECK)
  self:ItemShowNew()
end
function NOP:BlacklistItem(isPermanent,itemID) -- right click will add item into blacklist
  if itemID then
    local name = GetItemInfo(itemID)
    if isPermanent then
      if not (type(NOP.DB.T_BLACKLIST) == "table") then NOP.DB.T_BLACKLIST = {} end
      NOP.DB.T_BLACKLIST[0] = true
      NOP.DB.T_BLACKLIST[itemID] = true
      print(L["PERMA_BLACKLIST"],name or itemID)
    else
      if not (type(T_BLACKLIST) == "table") then T_BLACKLIST = {} end
      T_BLACKLIST[0] = true -- blacklist is defined
      T_BLACKLIST[itemID] = true
      if NOP.DB.Skip then
        print(L["SESSION_BLACKLIST"],name or itemID)
      else
        print(L["TEMP_BLACKLIST"],name or itemID)
      end
    end
    T_USE[itemID] = nil; T_CHECK[itemID] = nil
  end
end
function NOP:Profile(onStart) -- time profiling
  if not self.profileOn then return end
  if not self.profileSession then self.profileSession = GetTime() end -- start of session
  if onStart then
    self.profileCount = (self.profileCount or 0) + 1
    self.profileTP = debugprofilestop()
    return
  end
  local elapsed = (debugprofilestop() - self.profileTP)
  if self.profileMaxRun == nil or self.profileMaxRun < elapsed then self.profileMaxRun = elapsed end
  self.profileTotal = (self.profileTotal or 0) + elapsed
end
function NOP:inCombat() -- combat lockdown
  return InCombatLockdown()
end
function NOP:SecondsToString(s) -- return delta, time-string
  local nH = math.floor(s/3600)
  local nM = math.floor(s/60 - nH*60)
  local nS = math.floor(s - nH*3600 - nM*60)
  if nH > 0  then return 30,string.format("%d",nH) .. ":" .. string.format("%02d",nM); end
  if nM > 0  then return  5,string.format("%d",nM) .. ":" .. string.format("%02d",nS); end
  if s > 9.9 then return  1,string.format("%.0f",s); end
  return 0.1, string.format("%.1f",s)
end
function NOP:ZoneChanged() -- zone and mimapZone change
  self:Profile(true)
  local minimapZone, mapID = GetMinimapZoneText(), LIB_HEREBEDRAGONS:GetPlayerZone()
  if mapID and mapID ~= self.mapID then
    self.mapID = mapID
    table.wipe(T_CHECK) -- empty list, recheck all on new map
  end
  if minimapZone and minimapZone ~= self.Zone then -- new zone need update Button
    self.Zone = minimapZone
    self:ItemShowNew()
  end
  self:Profile(false)
end
function NOP:removekey(t, key) -- remove item in hash table by key
  if t and key and (type(t) == "table") and (t[key] ~= nil) then
    local element = t[key]
    t[key] = nil
    return element
  end
  return nil
end
local HERALD_ANNOUNCED = {}
function NOP:CheckBuilding(toCheck) -- recheck (force request landing page) and annonce
  if not NOP.DB.herald then return end
  if toCheck then C_Garrison.RequestLandingPageShipmentInfo(); return; end
  if C_Garrison.HasGarrison(LE_GARRISON_TYPE_6_0) then -- garrison shipments
    local buildings = C_Garrison.GetBuildings(LE_GARRISON_TYPE_6_0)
    local numBuildings = #buildings
    if(numBuildings > 0) then
      for i = 1, numBuildings do
        local buildingID = buildings[i].buildingID;
        if buildingID and not HERALD_ANNOUNCED[buildingID] then
          local name, _, _, shipmentsReady, shipmentsTotal = C_Garrison.GetLandingPageShipmentInfo(buildingID)
          if name and shipmentsReady and shipmentsTotal and (shipmentsReady / shipmentsTotal) > WORK_ANNOUNCE then
            self:PrintToActive((TOGO_ANNOUNCE):format(name,shipmentsReady,shipmentsTotal-shipmentsReady))
            HERALD_ANNOUNCED[buildingID] = true
          end
        end
      end
    end
  end
  if C_Garrison.HasGarrison(LE_GARRISON_TYPE_7_0) then -- Order hall
    local followerShipments = C_Garrison.GetFollowerShipments(LE_GARRISON_TYPE_7_0) -- troops ready
    if followerShipments then
      for i = 1, #followerShipments do
        if not HERALD_ANNOUNCED[followerShipments[i]] then
          local name, _, _, shipmentsReady, shipmentsTotal = C_Garrison.GetLandingPageShipmentInfoByContainerID(followerShipments[i])
          if name and shipmentsReady and shipmentsTotal and (shipmentsReady / shipmentsTotal) > WORK_ANNOUNCE then
            self:PrintToActive((TOGO_ANNOUNCE):format(name,shipmentsReady,shipmentsTotal-shipmentsReady))
            HERALD_ANNOUNCED[followerShipments[i]] = true
          end
        end
      end
    end
    local looseShipments = C_Garrison.GetLooseShipments(LE_GARRISON_TYPE_7_0) -- research
    if looseShipments then
      for i = 1, #looseShipments do
        if not HERALD_ANNOUNCED[looseShipments[i]] then
          local name, _, _, shipmentsReady, shipmentsTotal = C_Garrison.GetLandingPageShipmentInfoByContainerID(looseShipments[i])
          if name and shipmentsReady and shipmentsTotal and (shipmentsReady / shipmentsTotal) > WORK_ANNOUNCE then
            self:PrintToActive((TOGO_ANNOUNCE):format(name,shipmentsReady,shipmentsTotal-shipmentsReady))
            HERALD_ANNOUNCED[looseShipments[i]] = true
          end
        end
      end
    end
    local talentTrees = C_Garrison.GetTalentTreeIDsByClassID(LE_GARRISON_TYPE_7_0, select(3, UnitClass("player"))) -- orderhall talents
    if talentTrees then
      local completeTalentID = C_Garrison.GetCompleteTalent(LE_GARRISON_TYPE_7_0)
      if completeTalentID and not HERALD_ANNOUNCED[completeTalentID] then
        for treeIndex, treeID in ipairs(talentTrees) do
          local _, _, tree = C_Garrison.GetTalentTreeInfoForID(treeID)
          for talentIndex, talent in ipairs(tree) do
            if (talent.id == completeTalentID) then
              self:PrintToActive((TALENT_ANNOUNCE):format(talent.name))
              HERALD_ANNOUNCED[completeTalentID] = true
            end
          end
        end
      end
      for treeIndex, treeID in ipairs(talentTrees) do
        local _, _, tree = C_Garrison.GetTalentTreeInfoForID(treeID)
        for talentIndex, talent in ipairs(tree) do
          if talent.selected and not HERALD_ANNOUNCED[talent.perkSpellID] and NOP.T_INSTA_WQ[talent.perkSpellID] then
            local ability = GetSpellInfo(talent.perkSpellID) -- spell name
            local _, duration = GetSpellCooldown(talent.perkSpellID)
            local count = GetItemCount(NOP.T_INSTA_WQ[talent.perkSpellID])
            local name = GetItemInfo(NOP.T_INSTA_WQ[talent.perkSpellID])
            if duration == 0 and name then
              local txt = " " .. RGB_RED .. ERR_SPELL_FAILED_REAGENTS_GENERIC .. " " .. RGB_YELLOW .. name
              self:PrintToActive((TALENT_ANNOUNCE):format(ability) .. ((count == 0) and txt or ""))
              HERALD_ANNOUNCED[talent.perkSpellID] = true
            end
          end
        end
      end
    end
  end -- /run local _, _, t = C_Garrison.GetTalentTreeInfoForID(119); for a,b in ipairs(t) do print(a, b.selected, b.perkSpellID) end
  for i = 1, GetNumArchaeologyRaces() do -- archaelogy can be completed
    local raceName, _, _, have, required = GetArchaeologyRaceInfo(i)
    if raceName and (required > 0) and (have >= required) and not HERALD_ANNOUNCED[raceName] then
      self:PrintToActive((ARCHAELOGY_ANNOUNCE):format(raceName))
      HERALD_ANNOUNCED[raceName] = true
    end
  end
  if not HERALD_ANNOUNCED["shipyard"] then -- shipyard missing ships
    local activeShips, maxShips = C_Garrison.GetNumFollowers(LE_FOLLOWER_TYPE_SHIPYARD_6_2), 0
    local _,_,_,_,_,shipyardRank = C_Garrison.GetOwnedBuildingInfo(98)
    if shipyardRank == 1 then 
      maxShips = 6
    elseif shipyardRank == 2 then
      maxShips = 8
    elseif shipyardRank == 3 then
      maxShips = 10 
    end
    if maxShips > 0 then
      if activeShips < maxShips then
        self:PrintToActive((SHIPYARD_ANNOUNCE):format(activeShips,maxShips))
        HERALD_ANNOUNCED["shipyard"] = true
      end
    end
  end
  ExpandAllFactionHeaders()
  local nF = GetNumFactions()
  local paragon = {}
  for i=1, nF do
    local name, _, _, _, _, value, _, _, header, _, _, _, _, id = GetFactionInfo(i)
    if name and not header and id then
      if C_Reputation.IsFactionParagon(id) then
        local reward = false
        local top
        value, top, _, reward = C_Reputation.GetFactionParagonInfo(id)
        while (value and top and (value > top)) do value = value - top end
        if reward and not HERALD_ANNOUNCED[id] then
          table.insert(paragon,name)
          HERALD_ANNOUNCED[id] = true
        end
      end
    end
  end
  if #paragon > 0 then self:PrintToActive((REWARD_ANNOUNCE):format(table.concat(paragon,PLAYER_LIST_DELIMITER))) end
end
function NOP:PrintToActive(msg) -- print to all active chat windows
  local ElvUI = _G.ElvUI
  if msg then
    local txt = ("|cff7f7f7f%s|r [|cff007f7f%s|r]" .. " %s"):format(ElvUI and "" or ("[" .. date("%H:%M") .. "]"),ADDON,msg)
    for i = 1, NUM_CHAT_WINDOWS do
      local name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable = GetChatWindowInfo(i)
      if shown and _G["ChatFrame"..i] then
        _G["ChatFrame"..i]:AddMessage(txt)
      end
    end
  end
end
function NOP:CompressText(text) -- printable
  text = string.gsub(text, "\n", "/n") -- novy radek
  text = string.gsub(text, "/n$", "") -- novy radek na konci zahodit
  text = string.gsub(text, "||", "/124") -- interni formatovani WoW
  return string.trim(text)
end
function NOP:GetReputation(name) -- reputation standing with paragon reward check
  local fID = T_REPS[name]; if not fID then return end
  local _, _, level, _, top, value = GetFactionInfoByID(fID)
  local reward
  if C_Reputation.IsFactionParagon(fID) then _, _, _, reward = C_Reputation.GetFactionParagonInfo(fID) end
  return level, top, value, reward
end
local artRanks = {}
local artTraits = {}
function NOP:ArtifactCallback(msg,artifactID) -- LibArtifactData callback with announce
  if not NOP.DB.herald then return end
  if artifactID then
    local _, data = LIB_ARTIFACTDATA:GetArtifactInfo(artifactID)
    if data then
      if data.numRanksPurchasable then
        if (data.numRanksPurchasable > 0) then -- inform about visit OH to spend points on weapons
          if not artRanks[artifactID] then
            self:PrintToActive((ARTIFACT_ANNOUNCE):format(("%s [%d]"):format(data.name,data.numRanksPurchased),data.numRanksPurchasable))
            artRanks[artifactID] = true
          end
        else
          if artRanks[artifactID] then artRanks[artifactID] = nil end
        end
      end
      if data.relics then
        local visit = false
        for i=1, #data.relics do
          if data.relics[i].canAddTalent then visit = true end
        end
        if visit then 
          if not artTraits[artifactID] then
            self:PrintToActive(("%s [%d]. %s"):format(data.name,data.numRanksPurchased,ARTIFACT_RELIC_TALENT_AVAILABLE))
            artTraits[artifactID] = true
          end
        else
          if artTraits[artifactID] then artTraits[artifactID] = nil end -- reset announce when all are spend
        end
      end
    end
  end
end
local T_timers = {}
function NOP:TimerFire(name,period,...) -- timer without overlap
  if not (type(period) == 'number' and period > 0) then whoCalls('Period must be a number greater than zero ' .. period); return; end
  if not (T_timers[name] and (self:TimeLeft(T_timers[name]) > 0)) then T_timers[name] = self:ScheduleTimer(name,period,...) end -- schedule when timer with this name is not running
end
function NOP:TimerCancel(name) -- cancel timer by name
  local timer = T_timers[name]
  if (timer and (self:TimeLeft(timer) > 0)) then self:CancelTimer(timer) end
end