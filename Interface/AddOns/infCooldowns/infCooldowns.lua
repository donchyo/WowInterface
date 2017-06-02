----------------------------------------------
-- infCooldowns
----------------------------------------------

local infCooldowns = CreateFrame("Frame", "infCooldowns")
infCooldowns:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infCooldowns:RegisterEvent("PLAYER_LOGIN")

local playerGUID

local _ = _
local GetTime = GetTime
local GetItemInfo = GetItemInfo
local GetInventoryItemID = GetInventoryItemID
local GetInventoryItemLink = GetInventoryItemLink
local CooldownFrame_SetTimer = CooldownFrame_SetTimer
local ActionButton_ShowOverlayGlow = ActionButton_ShowOverlayGlow
local ActionButton_HideOverlayGlow = ActionButton_HideOverlayGlow

--link spellId to itemId(s)
local spellToItem = {
	--pvp
	[126700] = {103516,	111233},							-- Prideful Gladiator's Insignia of Victory, Primal Gladiator's Insignia of Victory
	[126705] = {103506, 111228},							-- Prideful Gladiator's Insignia of Dominance, Primal Gladiator's Insignia of Dominance
	[126707] = {103347, 111223, 115750},					-- Prideful Gladiator's Insignia of Conquest, Primal Gladiator's Insignia of Conquest (horde&ally)

	--agi
	[128984] = 79328,										-- Relic of Xuen [Agi]
	[162915] = 112318,										-- Skull of War
	[126483] = 81125,										-- Windswept Pages
	[148896] = 104584,										-- Sigil of Rampage [Heroic]
	[146310] = 104616,										-- Ticking Ebon Detonator [Heroic]
	[146308] = 105472,										-- Assurance of Consequence [Heroic Warforged]
	[148903] = 104531,										-- Haromm's Talisman [Heroic]

	--str
	[146245] = 105491,										-- Evil Eye of Galakras [Heroic Warforged]
	[146250] = 105609,										-- Thok's Tail Tip [Heroic Warforged]
	[148899] = 105459,										-- Fusion-Fire Core [Heroic Warforged]
}

--link spellId to an ICD and duration
local cooldowns = {
	--pvp
	[126700] = {["internal"] = 55, ["duration"] = 20},		-- Prideful Gladiator's Insignia of Victory
	[126705] = {["internal"] = 55, ["duration"] = 20},		-- Prideful Gladiator's Insignia of Dominance
	[126707] = {["internal"] = 55, ["duration"] = 20},		-- Prideful Gladiator's Insignia of Conquest

	--agi
	[128984] = {["internal"] = 55, ["duration"] = 15},		-- Relic of Xuen
	[162915] = {["internal"] = 115, ["duration"] = 20},		-- Skull of War
	[126483] = {["internal"] = 65, ["duration"] = 20},		-- Windswept Pages
	[148896] = {["internal"] = 85, ["duration"] = 15},		-- Sigil of Rampage
	[146310] = {["duration"] = 10},							-- Ticking Ebon Detonator
	[146308] = {["internal"] = 115, ["duration"] = 20}, 	-- Assurance of Consequence
	[148903] = {["duration"] = 10},							-- Haromm's Talisman

	--str
	[146245] = {["internal"] = 55, ["duration"] = 10},		-- Evil Eye of Galakras
	[146250] = {["internal"] = 115, ["duration"] = 20},		-- Thok's Tail Tip
	[148899] = {["internal"] = 85, ["duration"] = 15},		-- Fusion-Fire Core
}

function infCooldowns:PLAYER_LOGIN()
	self:FrameCreation()

	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	--in the future SPELL_AURA_APPLIED_DOSE and SPELL_CAST_SUCCESS might be needed for special trinkets
end

function infCooldowns:FrameCreation()
	--item slot 13
	trinket_13 = CreateFrame("Frame", nil, UIParent)
	trinket_13:SetPoint("TOPLEFT", _G["BT4Button98Border"], "TOPLEFT", 2, -2)
	trinket_13:SetPoint("BOTTOMRIGHT", _G["BT4Button98Border"], "BOTTOMRIGHT", -2, 2)
	trinket_13:SetFrameLevel(4)

	trinket_13.cdtexture = CreateFrame("Cooldown", nil, trinket_13, "CooldownFrameTemplate")
	trinket_13.cdtexture:SetAllPoints(true)
	trinket_13.cdtexture:SetFrameLevel(2)

	trinket_13.overlay = CreateFrame("Frame", nil, trinket_13)
	trinket_13.overlay:ClearAllPoints()
	trinket_13.overlay:SetPoint("TOPLEFT", -4, 4)
	trinket_13.overlay:SetPoint("BOTTOMRIGHT", 4, -4)

	--item slot 14
	trinket_14 = CreateFrame("Frame", nil, UIParent)
	trinket_14:SetPoint("TOPLEFT", _G["BT4Button97Border"], "TOPLEFT", 2, -2)
	trinket_14:SetPoint("BOTTOMRIGHT", _G["BT4Button97Border"], "BOTTOMRIGHT", -2, 2)
	trinket_14:SetFrameLevel(4)

	trinket_14.cdtexture = CreateFrame("Cooldown", nil, trinket_14, "CooldownFrameTemplate")
	trinket_14.cdtexture:SetAllPoints(true)
	trinket_14.cdtexture:SetFrameLevel(2)

	trinket_14.overlay = CreateFrame("Frame", nil, trinket_14)
	trinket_14.overlay:ClearAllPoints()
	trinket_14.overlay:SetPoint("TOPLEFT", -4, 4)
	trinket_14.overlay:SetPoint("BOTTOMRIGHT", 4, -4)
end

function infCooldowns:PLAYER_ENTERING_WORLD()
	playerGUID = UnitGUID("player")

	ActionButton_HideOverlayGlow(trinket_13.overlay)
	CooldownFrame_SetTimer(trinket_13.cdtexture, 0, 0, false)
	ActionButton_HideOverlayGlow(trinket_14.overlay)
	CooldownFrame_SetTimer(trinket_14.cdtexture, 0, 0, false)
end

function infCooldowns:PLAYER_EQUIPMENT_CHANGED(_, slot)
	if not (slot == 13 or slot == 14) then return end

	local trinket = (slot == 13 and trinket_13 or trinket_14)
	local itemId = GetInventoryItemID("player", slot)
	local spellId = nil

	for k, _ in pairs(spellToItem) do
		if type(k) == "number" then
			local itemIds = spellToItem[k]
			if type(itemIds) == "table" then --if we have more than 1 item per spellId
				for _, v in ipairs(itemIds) do
					if itemId == v then
						spellId = k
					end
				end
			else
				if itemId == spellToItem[k] then
					spellId = k
				end
			end
		end
	end

	--we changed a trinket, clean that slot before doing anything else.
	ActionButton_HideOverlayGlow(trinket.overlay)
	CooldownFrame_SetTimer(trinket.cdtexture, 0, 0, false)

	--an item we are tracking got equipped.
	if spellId then
		self:SetCooldownFor(spellId, slot, nil, true)
	end	
end

local function isEquipped(itemId)
	local _, _, _, _, _, _, _, _, equipLoc = GetItemInfo(itemId)
	local slots = {INVTYPE_TRINKET = {13, 14},}
	local slot = slots[equipLoc]

	if not slot then return end --nil error fix for evil eye of galakras :s
	for _, v in ipairs(slot) do
		local link = GetInventoryItemLink("player", v)
		if link and link:match(("item:%s"):format(itemId)) then
			return v --returns which trinket slot the item is in
		end
	end
	return false
end

function infCooldowns:COMBAT_LOG_EVENT_UNFILTERED(_, _, event, _, _, _, _, _, destGUID, _, _, _, spellId)
	if destGUID ~= playerGUID then return end
	if event == "SPELL_AURA_APPLIED" then
		self:SetTrinketSlot(spellId, true)
	elseif event == "SPELL_AURA_REMOVED" then
		self:SetTrinketSlot(spellId, nil)
	end
end

function infCooldowns:SetTrinketSlot(spellId, active)
	local itemId = spellToItem[spellId]
	if not itemId then return end
	if type(itemId) == "table" then --if we have more than 1 item per spellId
		for _, trinket in ipairs(itemId) do
			local equipSlot = isEquipped(trinket)
			if equipSlot then
				self:SetCooldownFor(spellId, equipSlot, active)
				return
			end
		end
	else
		local equipSlot = isEquipped(itemId)
		if equipSlot then
			self:SetCooldownFor(spellId, equipSlot, active)
		end
	end
end

function infCooldowns:SetCooldownFor(spellId, trinketSlot, active, equip)
	local icd = cooldowns[spellId].internal or 0
	local duration = cooldowns[spellId].duration or 0
	local startTime = GetTime()
	local trinket = (trinketSlot == 13 and trinket_13 or trinket_14)

	if active then
		if duration > 0 then
			trinket.cdtexture:SetReverse(true)
			CooldownFrame_SetTimer(trinket.cdtexture, startTime, duration, true)
			ActionButton_ShowOverlayGlow(trinket.overlay)
		else
			trinket.cdtexture:SetReverse(false)
			CooldownFrame_SetTimer(trinket.cdtexture, startTime, icd, true)
		end
	else
		ActionButton_HideOverlayGlow(trinket.overlay)
		if icd > 0 then
			trinket.cdtexture:SetReverse(false)
			if not equip then
				CooldownFrame_SetTimer(trinket.cdtexture, startTime, icd-duration, true)
			else
				CooldownFrame_SetTimer(trinket.cdtexture, startTime, icd, true)
			end
		else
			CooldownFrame_SetTimer(trinket.cdtexture, 0, 0, false)
		end
	end
end

