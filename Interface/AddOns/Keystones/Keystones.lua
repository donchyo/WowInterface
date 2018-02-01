local addonName, ns = ...
Keystones = LibStub("AceAddon-3.0"):NewAddon("Keystones", "AceConsole-3.0", "AceEvent-3.0")
--ns.LDB = LibStub("LibDataBroker-1.1", true)
--ns.icon = ns.LDB and LibStub("LibDBIcon-1.0", true)

local MYTHIC_KEYSTONE_ID = 138019
local RESET_NA = 1486479600
local RESET_EU = 1485327600

local _, myAccName = BNGetInfo()
myAccName = strsplit("#", myAccName)
local myCharName, realm = UnitName("player")
local _, myClass = UnitClass("player")
local myRealm = GetRealmName()
local myGuild = GetGuildInfo("player") or ""
local myCharLvl = UnitLevel("player")
local myFaction, _ = UnitFactionGroup("player")

ns.myAccName = myAccName
ns.myCharName = myCharName
ns.myRealm = myRealm
ns.myClass = myClass
ns.myGuild = myGuild
ns.myCharLvl = myCharLvl
ns.myFaction = myFaction


if (not keystonesDB) then
    keystonesDB = {}
end

function Keystones:UpdateConfig()
    if (not keystonesConfig or keystonesConfig.version ~= GetAddOnMetadata(addonName, "Version")) then
        keystonesConfig = {
            version = GetAddOnMetadata(addonName, "Version"),
            debug = false,
            announceNewToParty = true,
            displayNewKeyOf = "PARTY",
            maxRewardLevel = 10,
            longTooltip = false,
            minimapIcon = { hide = false },
            guiOptions = { headers = { "Character", "Best", "Dungeon", "Level" }, showOfflineChars = true, showOfflineAccs = false, showCharsWithoutKey = false, keepAccsTogether = false, colorizeNames = false, dungeonBlacklist = {} },
        }
        
        keystonesDB = {}
    end
end
Keystones:UpdateConfig()

ns.guildRoster = {}
ns.guildAccRoster = {}
ns.groupRoster = {}
ns.groupAccRoster = {}

ns.sortedGroupKeys = {}
ns.sortedGuildKeys = {}
ns.sortedOwnKeys = {}

local dungeonIDtoShortName = {
    [197] = 'EoA',
    [198] = 'DHT',
    [199] = 'BRH',
    [200] = 'HoV',
    [206] = 'Nel',
    [207] = 'VotW',
    [208] = 'MoS',
    [209] = 'Arc',
    [210] = 'CoS',
    [233] = 'CoEN',
    [227] = 'Kara:L',
    [234] = 'Kara:U',
    [239] = 'SoT',
}



function Keystones:CheckMyKeystone()
    local foundKey = false
    for bag = 0, NUM_BAG_SLOTS do
        local numSlots = GetContainerNumSlots(bag)
        if numSlots ~= 0 then
            for slot = 1, numSlots do
                if (GetContainerItemID(bag, slot) == MYTHIC_KEYSTONE_ID) then
                    foundKey = true
                    local keystoneLink = GetContainerItemLink(bag, slot)
                    keystoneInfo = Keystones:GetKeystoneInfo(keystoneLink)

                    return Keystones:UpdateMyKeystone(keystoneInfo)
                end
            end
        end
    end
    if (not foundKey and not (keystonesDB[myAccName] and keystonesDB[myAccName][myCharName] and keystonesDB[myAccName][myCharName].dungeonID)) then
        Keystones:UpdateMyKeystone({ dungeonID = 0, level = 0, dungeonName = "" })
    end
end

function Keystones:GetKeystoneInfo(keystoneLink)
    local keystoneInfos = { strsplit(":", keystoneLink) }

    local dungeonID = tonumber(keystoneInfos[2])
    local level = tonumber(keystoneInfos[3])
    local dungeonName = C_ChallengeMode.GetMapInfo(dungeonID)

    return {
        dungeonID = dungeonID,
        level = level,
        dungeonName = dungeonName
    }
end

function Keystones:GetAffixInfo(keystoneLink)
    local tmp = { strsplit("|", keystoneLink) }
    tmp = tmp[3]
    tmp = { strsplit(":", tmp) }
    
    local affixes = {}
    
    for i = 1, 3 do
        affixes[i] = tmp[i + 3] or 0
        local affName, affText, affImg = C_ChallengeMode.GetAffixInfo(affixes[i])
        print(affName)
    end
    
    return affixes
end

function Keystones:CheckMyWeeklyBest(suppressAnnounce)
    local myWeeklyBest = Keystones:GetMyWeeklyBest()

    if (not keystonesDB[myAccName] or not keystonesDB[myAccName][myCharName]) then
        Keystones:AddMyWeeklyBestToDatabase()
        if (not suppressAnnounce) then
            Keystones:SendMyWeeklyBest("GUILD")
            if (UnitInRaid("player") == 1 or UnitIsParty("player")) then
                Keystones:SendMyWeeklyBest("RAID")
            end
        end
    end

    if (keystonesDB[myAccName] and keystonesDB[myAccName][myCharName] and (keystonesDB[myAccName][myCharName].weeklyBest < myWeeklyBest)) then
        Keystones:AddMyWeeklyBestToDatabase()
        if (not suppressAnnounce) then
            Keystones:SendMyWeeklyBest("GUILD")
            if (UnitInRaid("player") == 1 or UnitInParty("player")) then
                Keystones:SendMyWeeklyBest("RAID")
            end
        end
    end
end

function Keystones:GetMyWeeklyBest()
    C_ChallengeMode.RequestMapInfo()
    local mapTable = C_ChallengeMode.GetMapTable()

    bestLevel = 0
    for i, mapId in pairs(mapTable) do
        local _, _, weeklyBestLevel = C_ChallengeMode.GetMapPlayerStats(mapId)
        if weeklyBestLevel and weeklyBestLevel > bestLevel then
            bestLevel = weeklyBestLevel
        end
    end
    return tonumber(bestLevel)
end

function Keystones:CheckWeeklyReset()
    if not keystonesConfig.nextReset then
        local region = GetCurrentRegion()
        if (region == 1) then
            keystonesConfig.nextReset = RESET_NA
        elseif (region == 3) then
            keystonesConfig.nextReset = RESET_EU
        else
            keystonesConfig.nextReset = RESET_EU
        end
    end

    local currTime = GetServerTime()

    if (currTime > keystonesConfig.nextReset) then
        local weekInSec = 7 * 24 * 60 * 60
        keystonesConfig.nextReset = keystonesConfig.nextReset + weekInSec * math.ceil((currTime - keystonesConfig.nextReset) / weekInSec)
        keystonesDB = {}
    end
end



---------------- database functions ----------------
function Keystones:AddKeystoneToDatabase(accName, charName, dungeonID, level, weeklyBest, class, guild, realm, charLvl, faction)
    -- needed to work with older versions
    if (faction == "true" or faction == "false") then
        faction = nil
    end
    
    if not keystonesDB[accName] then
        keystonesDB[accName] = {}
    end

    local keyChanged = false
    if (not keystonesDB[accName][charName] or keystonesDB[accName][charName].dungeonID ~= dungeonID or keystonesDB[accName][charName].level ~= level) then
        keyChanged = true
    end

    keystonesDB[accName][charName] = { dungeonID = tonumber(dungeonID), level = tonumber(level), weeklyBest = tonumber(weeklyBest), class = class, guild = guild, realm = realm, charLvl = tonumber(charLvl), faction = faction or myFaction }
    return keyChanged
end

function Keystones:AddMyKeystoneToDatabase(keystoneInfo)
    local myWeeklyBest = Keystones:GetMyWeeklyBest()
    if (keystonesDB[myAccName] and keystonesDB[myAccName][myCharName]) then
        if (myWeeklyBest < keystonesDB[myAccName][myCharName].weeklyBest) then
            myWeeklyBest = keystonesDB[myAccName][myCharName].weeklyBest
        end
    end
    return Keystones:AddKeystoneToDatabase(myAccName, myCharName, keystoneInfo.dungeonID, keystoneInfo.level, myWeeklyBest, myClass, myGuild, myRealm, myCharLvl, myFaction)
end

function Keystones:UpdateMyKeystone(keystoneInfo)
    local keyChanged = Keystones:AddMyKeystoneToDatabase(keystoneInfo)

    if (keyChanged and keystonesDB[myAccName][myCharName].dungeonID ~= 0) then
        Keystones:PrintMyKeystone()
        Keystones:SendMyKeystone(true, "RAID")
        Keystones:SendMyKeystone(true, "GUILD")
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateOwnKeys()
        ns.updateGui()
    end
    return keyChanged
end

function Keystones:AddWeeklyBestToDatabase(accName, charName, weeklyBest, class, guild, realm, charLvl, faction)
    if not keystonesDB[accName] then
        keystonesDB[accName] = {}
    end

    local changed = false
    if not keystonesDB[accName][charName] then
        Keystones:AddKeystoneToDatabase(accName, charName, 0, 0, tonumber(weeklyBest), class, guild, realm, charLvl, faction)
        changed = true
    elseif (keystonesDB[accName][charName].weeklyBest ~= tonumber(weeklyBest)) then
        keystonesDB[accName][charName].weeklyBest = tonumber(weeklyBest)
        changed = true
    end
    
    return changed
end

function Keystones:AddMyWeeklyBestToDatabase()
    Keystones:AddWeeklyBestToDatabase(myAccName, myCharName, Keystones:GetMyWeeklyBest(), myClass, myGuild, myRealm, myCharLvl, myFaction)
    ns.updateGroupKeys()
    ns.updateGuildKeys()
    ns.updateOwnKeys()
    ns.updateGui()
end






---------------- announce and print functions ----------------
function Keystones:PrintDatabase()
    for accName, acc in pairs(keystonesDB) do
        print(accName)
        for charName, char in pairs(acc) do
            if ((keystonesDB[accName][charName].dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and keystonesDB[accName][charName].charLvl == 110) then
                print(WrapTextInColorCode(charName, select(4, GetClassColor(keystonesDB[accName][charName].class))) .. " - " ..
                    (C_ChallengeMode.GetMapInfo(char.dungeonID) and C_ChallengeMode.GetMapInfo(char.dungeonID) .. " " .. char.level or "has no keystone") ..
                    " - Best: " .. (char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0
                    and WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")))
            end
        end
    end
end

function Keystones:PrintKeystone(accName, charName)
    print("New Keystone: " .. (charName ~= myCharName and WrapTextInColorCode(charName, select(4, GetClassColor(keystonesDB[accName][charName].class))) .. " - " or "") ..
        C_ChallengeMode.GetMapInfo(keystonesDB[accName][charName].dungeonID) .. " " .. keystonesDB[accName][charName].level)
end

function Keystones:PrintMyKeystone()
    Keystones:PrintKeystone(myAccName, myCharName)
end

function Keystones:AnnounceMyKeystone(channel)
    SendChatMessage(C_ChallengeMode.GetMapInfo(keystonesDB[myAccName][myCharName].dungeonID) .. " +" .. tostring(keystonesDB[myAccName][myCharName].level), channel)
end

function Keystones:AnnounceMyKeystones(channel)
    for charName, char in pairs(keystonesDB[myAccName]) do
        if (keystonesDB[myAccName][charName].dungeonID ~= 0) then
            SendChatMessage(charName .. ": " .. C_ChallengeMode.GetMapInfo(keystonesDB[myAccName][charName].dungeonID) .. " +" .. tostring(keystonesDB[myAccName][charName].level), channel)
        end
    end
end

function Keystones:MinimapTooltip(tooltip)
    -- toggle showing of offline characters in tooltip
    local offlines = keystonesConfig.longTooltip
    -- own account
    --tooltip:AddLine(myAccName)
    if (keystonesDB[myAccName]) then
        for charName, char in pairs(keystonesDB[myAccName]) do
            if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110) then
                tooltip:AddDoubleLine(WrapTextInColorCode(charName, select(4, GetClassColor(char.class))),
                    (dungeonIDtoShortName[char.dungeonID] and dungeonIDtoShortName[char.dungeonID] .. " +" .. char.level or "unknown") ..
                    " - Best: " .. (char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0
                    and WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")))
            end
        end
    else
        tooltip:AddLine("no own keystones")
    end

    -- party
    if (UnitInParty("player") and UnitInRaid("player") ~= 1 and #ns.groupAccRoster > 0) then
        tooltip:AddLine(" ")
        tooltip:AddLine("Keys in party:", 170 / 255, 167 / 255, 255 / 255)
        for accName, acc in pairs(keystonesDB) do
            if (ns.contains(ns.groupAccRoster, accName)) then
                if (offlines) then tooltip:AddLine(accName) end
                for charName, char in pairs(acc) do
                    if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction and (offlines or ns.contains(ns.groupRoster, charName))) then
                        tooltip:AddDoubleLine((offlines and "- " or "") .. WrapTextInColorCode(charName, select(4, GetClassColor(char.class))),
                            (dungeonIDtoShortName[char.dungeonID] and dungeonIDtoShortName[char.dungeonID] .. " +" .. char.level or "unknown") ..
                            " - Best: " .. (char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0
                            and WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")))
                    end
                end
            end
        end    
    end
    
    -- rest of keys
    local addedBlankLine = false
    for accName, acc in pairs(keystonesDB) do
        if (accName ~= myAccName and (not ns.contains(ns.groupAccRoster, accName) or UnitInRaid("player") == 1) and (offlines or ns.contains(ns.guildAccRoster, accName))) then
            if (offlines and not addedBlankLine) then
                addedBlankLine = true
                tooltip:AddLine(" ")
                tooltip:AddLine("Keys in guild:", 64 / 255, 251 / 255, 64 / 255)
            end
            if (offlines) then tooltip:AddLine(accName) end
            for charName, char in pairs(acc) do
                if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction and (offlines or ns.contains(ns.guildRoster, charName))) then
                    if (not offlines and not addedBlankLine) then
                        addedBlankLine = true
                        tooltip:AddLine(" ")
                        tooltip:AddLine("Keys in guild:", 64 / 255, 251 / 255, 64 / 255)
                    end
                    tooltip:AddDoubleLine((offlines and "- " or "") .. WrapTextInColorCode(charName, select(4, GetClassColor(char.class))),
                        (dungeonIDtoShortName[char.dungeonID] and dungeonIDtoShortName[char.dungeonID] .. " +" .. char.level or "unknown") ..
                        " - Best: " .. (char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0
                        and WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")))
                end
            end
        end
    end
    
    if (tooltip:NumLines() == 0) then
        tooltip:AddLine("no keystone info available")
    end
end






---------------- send and receive functions ----------------
function Keystones:ReceiveKeystone(event, prefix, msg, channel, sender)
    if (keystonesConfig.debug) then
        print("[" .. prefix .. "] " .. sender .. "-" .. channel .. ": " .. msg)
    end
    
    if (sender ~= myCharName .. "-" .. myRealm) then
        local changed = Keystones:AddKeystoneToDatabase(strsplit("#", msg))
        local message = { strsplit("#", msg) }
    
        if (message[#message] == "true" and (channel == keystonesConfig.displayNewKeyOf or (channel == "RAID" and keystonesConfig.displayNewKeyOf == "PARTY"))) then
            --print("received from " .. sender .. ":")
            Keystones:PrintKeystone(strsplit("#", msg))
        end
        
        if (changed) then
            ns.updateGroupKeys()
            ns.updateGuildKeys()
            ns.updateGui()
        end
    end
end

function Keystones:ReceiveRequest(event, prefix, msg, channel, sender)
    if (keystonesConfig.debug) then
        print("[" .. prefix .. "] " .. sender .. "-" .. channel .. ": " .. msg)
    end
    
    if (sender ~= myCharName) then
        local cmd = { strsplit("#", msg) }

        if (cmd[1] == "keystones") then
            Keystones:SendMyKeystones("WHISPER", sender)
        elseif (cmd[1] == "keystone") then
            Keytones:SendMyKeystone(false, "WHISPER", sender)
        elseif (cmd[1] == "version") then
            SendAddonMessage("KeystonesInfo", "version#" .. keystonesConfig.version, "WHISPER", sender)
        end
    end
end

function Keystones:ReceiveInfo(event, prefix, msg, channel, sender)
    if (keystonesConfig.debug) then
        print("[" .. prefix .. "] " .. sender .. "-" .. channel .. ": " .. msg)
    end
    if (sender ~= myCharName) then
        local info = { strsplit("#", msg, 2) }
        
        if (info[1] == "weeklyBest") then
            if (Keystones:AddWeeklyBestToDatabase(strsplit("#", info[2]))) then
                ns.updateGroupKeys()
                ns.updateGuildKeys()
                ns.updateGui()            
            end
        elseif (info[1] == "version") then
            print(sender .. " has version " .. info[2])
        end
    end
end

function Keystones:SendAllKeystones(channel, receiver)
    for accName, acc in pairs(keystonesDB) do
        for charName, char in pairs(keystonesDB[accName]) do
            Keystones:SendKeystone(accName, charName, false, channel, receiver)
        end
    end
end

function Keystones:SendMyKeystones(channel, receiver)
    if keystonesDB[myAccName] then
        for charName, char in pairs(keystonesDB[myAccName]) do
            Keystones:SendKeystone(myAccName, charName, false, channel, receiver)
        end
    end
end

function Keystones:SendMyKeystone(new, channel, receiver)
    Keystones:SendKeystone(myAccName, myCharName, new, channel, receiver)
end

function Keystones:SendKeystone(accName, charName, new, channel, receiver)
    if keystonesDB[accName] and keystonesDB[accName][charName] then
        local char = keystonesDB[accName][charName]
        local str = accName .. "#" .. charName .. "#" .. tostring(char.dungeonID) .. "#" .. tostring(char.level) .. "#" .. tostring(char.weeklyBest) .. "#" ..
            char.class .. "#" .. char.guild .. "#" .. char.realm .. "#" .. char.charLvl .. "#" .. char.faction .. "#" .. tostring(new)
        if (keystonesConfig.debug and channel == "WHISPER") then
            print("[Sending] " .. receiver .. "-WHISPER: " .. str)
        end
        SendAddonMessage("KeystonesKey", str, channel, receiver)
    end
end

function Keystones:SendMyWeeklyBest(channel, receiver)
    if keystonesDB[myAccName] and keystonesDB[myAccName][myCharName] then
        local myChar = keystonesDB[myAccName][myCharName]
        local str = "weeklyBest#" .. myAccName .. "#" .. myCharName .. "#" .. tostring(myChar.weeklyBest) .. "#" .. myChar.class .. "#" .. myChar.guild .. "#" .. 
            myChar.realm .. "#" .. myChar.charLvl .. "#" .. myChar.faction
        --[[if (keystonesConfig.debug) then
            print("[Sending] " .. channel .. ": " .. str)
        end]]
        SendAddonMessage("KeystonesInfo", str, channel, receiver)
    end
end






---------------- initialize and shortcuts ----------------
function Keystones:OnInitialize()
    --[[if (keystonesConfig.version ~= GetAddOnMetadata(addonName, "Version")) then
        keystonesConfig = {
            version = GetAddOnMetadata(addonName, "Version"),
            debug = false,
            announceNewToParty = true,
            displayNewKeyOf = "PARTY",
            maxRewardLevel = 15,
            longTooltip = false,
            minimapIcon = { hide = false },
            guiOptions = { headers = { "Character", "Best", "Dungeon", "Level" }, showOfflineChars = true, showOfflineAccs = false, showCharsWithoutKey = false, keepAccsTogether = false, dungeonBlacklist = {} },
        }
    end]]

    self:CheckWeeklyReset()
    ns.sortAffixArray()
    RegisterAddonMessagePrefix("KeystonesKey")
    RegisterAddonMessagePrefix("KeystonesReq")
    RegisterAddonMessagePrefix("KeystonesInfo")
    self:RegisterChatCommand("keys", "Command")
    self:RegisterChatCommand("keystones", "Command")
    self:RegisterEvent("CHAT_MSG_ADDON")
    self:RegisterEvent("BAG_UPDATE")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("ADDON_LOADED")
    self:RegisterEvent("GROUP_JOINED")
    self:RegisterEvent("CHALLENGE_MODE_START")
    self:RegisterEvent("CHALLENGE_MODE_RESET")
    self:RegisterEvent("CHALLENGE_MODE_COMPLETED")
    self:RegisterEvent("GUILD_ROSTER_UPDATE")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")

    -- Minimap button
    if ns.icon then
        ns.icon:Register(addonName, ns.dataobject, keystonesConfig.minimapIcon)
        ns.icon:Refresh(addonName)
        if (keystonesConfig.minimapIcon.hide) then
            ns.icon:Hide()
        end
    end

    ns.initializeGui()
    ns.updateGroupKeys()
    ns.updateGuildKeys()
    ns.updateOwnKeys()
    ns.updateGui()
end

function Keystones:OnEnable()
end

function Keystones:OnDisable()
end

function Keystones:Command(input)

    if (input == "") then
        ns.ToggleKeystonesFrame()
    elseif (input == "u") then
        Keystones:CheckMyKeystone()
        Keystones:CheckMyWeeklyBest()
    elseif (input == "p") then
        Keystones:PrintDatabase()
    elseif (input == "r") then
        SendAddonMessage("KeystonesReq", "keystones", "RAID")
        SendAddonMessage("KeystonesReq", "keystones", "GUILD")
    elseif (input == "rv") then
        SendAddonMessage("KeystonesReq", "version", "RAID")
        SendAddonMessage("KeystonesReq", "version", "GUILD")
    elseif (input == "t") then
        keystonesConfig.longTooltip = not keystonesConfig.longTooltip
        ns.UpdateSettingsButtons()
        print((keystonesConfig.longTooltip and "Show" or "Don't show") .. " offline chars on minimap tooltip")
    elseif (input == "clear") then
        keystonesDB = {}
    elseif (input == "reset") then
        Keystones:CheckWeeklyReset()
    elseif (input == "debug") then
        keystonesConfig.debug = not keystonesConfig.debug
        print("Keystones debugging " .. (keystonesConfig.debug and "activated" or "deactivated"))
    elseif (input == "hide") then
        keystonesConfig.guiOptions.showCharsWithoutKey = not keystonesConfig.guiOptions.showCharsWithoutKey
        print((keystonesConfig.guiOptions.showCharsWithoutKey and "Showing" or "Hiding") .. " chars without keystone")
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateGui()    
    elseif (input == "color") then
        keystonesConfig.guiOptions.colorizeNames = not keystonesConfig.guiOptions.colorizeNames
        print((keystonesConfig.guiOptions.colorizeNames and "Colorizing" or "Not colorizing") .. " chars")
        ns.UpdateSettingsButtons()
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateGui()
    elseif (input == "announce") then
        keystonesConfig.announceNewToParty = not keystonesConfig.announceNewToParty
        ns.UpdateSettingsButtons()
        print((keystonesConfig.announceNewToParty and "Announce" or "Don't announce") .. " new keys to party")
    elseif (input == "inform") then
        keystonesConfig.displayNewKeyOf = (keystonesConfig.displayNewKeyOf == "PARTY" and "GUILD" or "PARTY")
        ns.UpdateSettingsButtons()
        print("Notify when " .. keystonesConfig.displayNewKeyOf .. " acquires a new keystone")
    elseif (input == "hidemini") then
        keystonesConfig.minimapIcon.hide = not keystonesConfig.minimapIcon.hide
        ns.icon:Refresh(addonName)
        ns.UpdateSettingsButtons()
        print((keystonesConfig.minimapIcon.hide and "Hiding" or "Showing") .. " minimap button") 
    elseif (input == "offChars") then
        keystonesConfig.guiOptions.showOfflineChars = not keystonesConfig.guiOptions.showOfflineChars
        print((keystonesConfig.guiOptions.showOfflineChars and "Show" or "Don't show") .. " keys of offline characters")
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateGui()
    elseif (input == "offAccs") then
        keystonesConfig.guiOptions.showOfflineAccs = not keystonesConfig.guiOptions.showOfflineAccs
        print((keystonesConfig.guiOptions.showOfflineAccs and "Show" or "Don't show") .. " keys of offline accounts")
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateGui()
    elseif (input == "group") then
        for k, v in pairs(ns.groupRoster) do
            print(v)
        end
    elseif (input == "guild") then
        for k, v in pairs(ns.guildRoster) do
            print(v)
        end
    elseif (input == "groupAcc") then
        for k, v in pairs(ns.groupAccRoster) do
            print(v)
        end
    elseif (input == "guildAcc") then
        for k, v in pairs(ns.guildAccRoster) do
            print(v)
        end
    elseif (input == "ug") then
        ns.updateGroupKeys()
        ns.updateGuildKeys()       
        ns.updateOwnKeys() 
        ns.updateGui()
    elseif (input == "sa") then
        Keystones:SendAllKeystones("GUILD")
    else
        print("/keys p - print whole database")
        print("/keys r - request all keys from guild")
        print("/keys u - update own keystone")
        print("/keys t - switch between long and short minimap tooltip")
        print("/keys hide - toggle showing of chars without key")
        print("/keys color - toggle colorizing of keys")
        print("/keys offChars - toggle showing of offline chars")
        print("/keys offAccs - toggle showing of offline accs")
        print("/keys hidemini - toggle showing of minimap button")
        print("/keys announce - toggle party announce of new key")
        print("/keys inform - change new key notifications")
    end
end



---------------- events ----------------
function Keystones:CHAT_MSG_ADDON(event, prefix, msg, channel, sender)
    --sender, _ = strsplit("-", sender)
    if (prefix == "KeystonesKey") then
        Keystones:ReceiveKeystone(event, prefix, msg, channel, sender)
    elseif (prefix == "KeystonesReq") then
        Keystones:ReceiveRequest(event, prefix, msg, channel, sender)
    elseif (prefix == "KeystonesInfo") then
        Keystones:ReceiveInfo(event, prefix, msg, channel, sender)
    end
end

function Keystones:BAG_UPDATE()
    Keystones:CheckMyKeystone()
end

function Keystones:PLAYER_ENTERING_WORLD()
--Keystones:SendMyKeystones("GUILD")
--SendAddonMessage("KeystonesReq", "send me your keystones", "GUILD")
end

function Keystones:PLAYER_LOGIN()
    C_Timer.After(3, function()
        -- guild and faction might not be loaded on addon load
        myGuild = GetGuildInfo("player") or ""
        ns.myGuild = myGuild
        myFaction = UnitFactionGroup("player")
        ns.myFaction = myFaction
        if (keystonesDB[myAccName] and keystonesDB[myAccName][myCharName]) then
            keystonesDB[myAccName][myCharName].guild = myGuild
            keystonesDB[myAccName][myCharName].faction = myFaction
        end
        Keystones:GROUP_ROSTER_UPDATE()
        Keystones:CheckMyWeeklyBest(true)
        Keystones:SendMyKeystones("GUILD")
        SendAddonMessage("KeystonesReq", "keystones", "GUILD")
        
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateOwnKeys()
        ns.updateGui()
    end)
    
    C_Timer.After(10, function()
        Keystones:CheckMyWeeklyBest()
    end)
end

function Keystones:ADDON_LOADED()
    Keystones:UpdateConfig()
end

function Keystones:GROUP_JOINED()
    Keystones:SendMyKeystones("RAID")
    SendAddonMessage("KeystonesReq", "keystones", "RAID")
    --[[C_Timer.After(.5, function()
        Keystones:GROUP_ROSTER_UPDATE()
    end)]]
end

function Keystones:CHALLENGE_MODE_START()
    if (keystonesConfig.debug) then
        print("challenge mode start")
    end
    Keystones:CheckMyKeystone()
end
function Keystones:CHALLENGE_MODE_RESET()
    if (keystonesConfig.debug) then
        print("challenge mode reset")
    end
end
function Keystones:CHALLENGE_MODE_COMPLETED()
    if (keystonesConfig.debug) then
        print("challenge mode completed")
    end
    C_Timer.After(.5, function()
        local new = Keystones:CheckMyKeystone()
        Keystones:CheckMyWeeklyBest()
        if (new and keystonesConfig.announceNewToParty) then
            Keystones:AnnounceMyKeystone("PARTY")
        end
    end)
    
    C_Timer.After(2, function()
        Keystones:CheckMyWeeklyBest()
    end)
end

function Keystones:GUILD_ROSTER_UPDATE()
    if (keystonesConfig.debug) then
        print("guild roster updated")
    end

    C_Timer.After(1, function()
        ns.guildRoster = {}
        local _, numGuildMembers = GetNumGuildMembers()
        for i = 1, numGuildMembers do
            local charName = GetGuildRosterInfo(i)
            if (charName) then
                charName = strsplit("-", charName)
                ns.guildRoster[i] = charName
            end
        end
    
        ns.guildAccRoster = {}
        for accName, acc in pairs(keystonesDB) do
            for charName, char in pairs(acc) do
                for i, memberName in pairs(ns.guildRoster) do
                    memberName = strsplit("-", memberName)
                    if (charName == memberName) then
                        ns.guildAccRoster[#ns.guildAccRoster + 1] = accName
                    end
                end
            end
        end
        
        ns.updateGuildKeys()    
        ns.updateGui()
    end)
end

function Keystones:GROUP_ROSTER_UPDATE()
    if (keystonesConfig.debug) then
        print("group members changed")
    end

    C_Timer.After(.5, function()
        ns.groupRoster = {}
        local partyMembers = GetHomePartyInfo()
        if partyMembers then
            for i, charName in pairs(partyMembers) do
                if (charName) then
                    charName = strsplit("-", charName)
                    ns.groupRoster[i] = charName
                end
            end
        end
    
        ns.groupAccRoster = {}
        for accName, acc in pairs(keystonesDB) do
            for charName, char in pairs(acc) do
                for i, memberName in pairs(ns.groupRoster) do
                    memberName = strsplit("-", memberName)
                    if (charName == memberName) then
                        ns.groupAccRoster[#ns.groupAccRoster + 1] = accName
                    end
                end
            end
        end
        
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        ns.updateGui()
    end)
end










