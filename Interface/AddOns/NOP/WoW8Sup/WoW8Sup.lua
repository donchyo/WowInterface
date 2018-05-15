-- WoW8Sup
local MAJOR, MINOR = "WoW8Sup", 100
assert(LibStub, MAJOR .. " requires LibStub")
local P, oldversion = LibStub:NewLibrary(MAJOR, MINOR)
if not P then return end
local tocVersion = select(4,_G.GetBuildInfo()) -- resolve version
local WoW7 = (tocVersion < 80000)
-- wrappers
function P.UnitChannelInfo(unit) -- 7.x to 8.x transience 2nd return value removed
  if WoW7 then return _G.UnitChannelInfo(unit) end
  local retTable = {_G.UnitChannelInfo(unit)}
  if retTable[1] then table.insert(retTable,2,'') end
  return unpack(retTable)
end
function P.UnitCastingInfo(...) -- 7.x to 8.x transience 2nd return value removed
  if WoW7 then return _G.UnitCastingInfo(...) end
  local retTable = {_G.UnitCastingInfo(...)}
  if retTable[1] then table.insert(retTable,2,'') end
  return unpack(retTable)
end
function P.GetSpellInfo(...) -- 7.x to 8.x transience 2nd return value replaced with nil
  if WoW7 then return _G.GetSpellInfo(...) end
  local retTable = {_G.GetSpellInfo(...)}
  if retTable[1] then retTable[2] = '' end
  return unpack(retTable)
end
function P.GetMacroSpell(...) -- 7.x to 8.x transience 1st and 2nd return value removed
  if WoW7 then return _G.GetMacroSpell(...) end
  local retTable = {_G.GetMacroSpell(...)}
  if retTable[1] then
    local name = _G.GetSpellInfo(retTable[1])
    if name then 
      table.insert(retTable,1,'')
      table.insert(retTable,1,name)
    end
  end
  return unpack(retTable)
end
function P.GetPetActionInfo(...) -- 7.x to 8.x transience 2nd return value removed
  if WoW7 then return _G.GetPetActionInfo(...) end
  local retTable = {_G.GetPetActionInfo(...)}
  if retTable[1] then table.insert(retTable,2,'') end
  return unpack(retTable)
end
function P.GetPossessInfo(...) -- 7.x to 8.x transience 2nd return value changed from spell name to spell ID.
  if WoW7 then return _G.GetPossessInfo(...) end
  local retTable = {_G.GetPossessInfo(...)}
  if retTable[2] then
    local name = _G.GetSpellInfo(retTable[2])
    retTable[2] = name
  end
  return unpack(retTable)
end
function P.GetItemSpell(...) -- 7.x to 8.x transience 2nd return value removed
  if WoW7 then return _G.GetItemSpell(...) end
  local retTable = {_G.GetItemSpell(...)}
  if retTable[1] then table.insert(retTable,2,'') end
  return unpack(retTable)
end
function P.GetSpellLink(...) -- 7.x to 8.x transience 2nd return value removed
  if WoW7 then return _G.GetSpellLink(...) end
  local retTable = {_G.GetSpellLink(...)}
  if retTable[1] then table.insert(retTable,2,_G.GetSpellTradeSkillLink(...)) end
  return unpack(retTable)
end
local UnitAuraCache = {} -- cached values are updated ten times per second and stored by unit+filter
function P.UnitAura(unit, ...) -- 7.x to 8.x transience 2nd return value removed and only spellID argument is supported
  if WoW7 then return _G.UnitAura(unit, ...) end
  local retTable
  local index = select(1,...)
  if type(index) == 'number' then -- now only spellID is accepted
    retTable = {_G.UnitAura(unit, ...)}
    if retTable[1] then table.insert(retTable,2,'') end
  elseif type(index) == 'string' then -- lokup by spellName must be done on own by fetching all auras and then looking up by name
    local index, _, filter = select(1,...)
    local key = string.lower(filter or 'default')
    index = string.lower(index) -- lookup by spell name
    unit = string.lower(unit)
    local cache = UnitAuraCache[unit] -- fetch unit aura cache
    if cache and cache[key] and cache[key]['stamp'] == ("%.1f"):format(GetTime()) then -- cached values updated 10 times per second
      if cache[key][index] then retTable = cache[key][index] else retTable = {} end
    else -- fetch new cached values
      if not UnitAuraCache[unit] then UnitAuraCache[unit] = {} end
      if not UnitAuraCache[unit][key] then UnitAuraCache[unit][key] = {} else table.wipe(UnitAuraCache[unit][key]) end
      cache = UnitAuraCache[unit][key]
      local n = 1
      local name
      repeat
        retTable = {_G.UnitAura(unit, n, filter)}
        name = retTable[1]
        if name then
          table.insert(retTable,2,'')
          cache[string.lower(name)] = table.copy(retTable)
        end
        n = n + 1
      until not name;
      cache['stamp'] = ("%.1f"):format(GetTime())
      if cache[index] then
        retTable = cache[index]
      else
        retTable = {nil}
      end
    end
  end
  return unpack(retTable)
end
local UnitBuffCache = {} -- cached values are updated ten times per second and stored by unit+filter
function P.UnitBuff(unit, ...) -- 7.x to 8.x transience 2nd return value removed and only spellID argument is supported
  if WoW7 then return _G.UnitBuff(unit, ...) end
  local retTable
  local index = select(1,...)
  if type(index) == 'number' then -- now only spellID is accepted
    retTable = {_G.UnitBuff(unit, ...)}
    if retTable[1] then table.insert(retTable,2,'') end
  elseif type(index) == 'string' then -- lokup by spellName must be done on own by fetching all auras and then looking up by name
    local index, _, filter = select(1,...)
    local key = string.lower(filter or 'default')
    index = string.lower(index) -- lookup by spell name
    unit = string.lower(unit)
    local cache = UnitBuffCache[unit] -- fetch unit aura cache
    if cache and cache[key] and cache[key]['stamp'] == ("%.1f"):format(GetTime()) then -- cached values updated 10 times per second
      if cache[key][index] then retTable = cache[key][index] else retTable = {} end
    else -- fetch new cached values
      if not UnitBuffCache[unit] then UnitBuffCache[unit] = {} end
      if not UnitBuffCache[unit][key] then UnitBuffCache[unit][key] = {} else table.wipe(UnitBuffCache[unit][key]) end
      cache = UnitBuffCache[unit][key]
      local n = 1
      local name
      repeat
        retTable = {_G.UnitBuff(unit, n, filter)}
        name = retTable[1]
        if name then
          table.insert(retTable,2,'')
          cache[string.lower(name)] = table.copy(retTable)
        end
        n = n + 1
      until not name;
      cache['stamp'] = ("%.1f"):format(GetTime())
      if cache[index] then
        retTable = cache[index]
      else
        retTable = {nil}
      end
    end
  end
  return unpack(retTable)
end
local UnitDebuffCache = {} -- cached values are updated ten times per second and stored by unit+filter
function P.UnitDebuff(unit, ...) -- 7.x to 8.x transience 2nd return value removed and only spellID argument is supported
  if WoW7 then return _G.UnitDebuff(unit, ...) end
  local retTable
  local index = select(1,...)
  if type(index) == 'number' then -- now only spellID is accepted
    retTable = {_G.UnitDebuff(unit, ...)}
    if retTable[1] then table.insert(retTable,2,'') end
  elseif type(index) == 'string' then -- lokup by spellName must be done on own by fetching all auras and then looking up by name
    local index, _, filter = select(1,...)
    local key = string.lower(filter or 'default')
    index = string.lower(index) -- lookup by spell name
    unit = string.lower(unit)
    local cache = UnitDebuffCache[unit] -- fetch unit aura cache
    if cache and cache[key] and cache[key]['stamp'] == ("%.1f"):format(GetTime()) then -- cached values updated 10 times per second
      if cache[key][index] then retTable = cache[key][index] else retTable = {} end
    else -- fetch new cached values
      if not UnitDebuffCache[unit] then UnitDebuffCache[unit] = {} end
      if not UnitDebuffCache[unit][key] then UnitDebuffCache[unit][key] = {} else table.wipe(UnitDebuffCache[unit][key]) end
      cache = UnitDebuffCache[unit][key]
      local n = 1
      local name
      repeat
        retTable = {_G.UnitDebuff(unit, n, filter)}
        name = retTable[1]
        if name then
          table.insert(retTable,2,'')
          cache[string.lower(name)] = table.copy(retTable)
        end
        n = n + 1
      until not name;
      cache['stamp'] = ("%.1f"):format(GetTime())
      if cache[index] then
        retTable = cache[index]
      else
        retTable = {nil}
      end
    end
  end
  return unpack(retTable)
end
