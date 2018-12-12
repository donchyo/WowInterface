----------------------------------------------
-- infAbsorbs
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "DEATHKNIGHT" then return end

local infAbsorbs = CreateFrame("Frame", "infAbsorbs")
infAbsorbs:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infAbsorbs:RegisterEvent("ADDON_LOADED")

local bs = GetSpellInfo(77535)
local UnitBuff = UnitBuff
local UnitGetTotalAbsorbs = UnitGetTotalAbsorbs

local function IsBlood()
	local specId = GetSpecialization()
	return specId == 1
end

function infAbsorbs:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infAbsorbs:FrameCreation()
	absorb_frame = CreateFrame("Frame", nil, UIParent)
	absorb_frame:SetWidth(120)
	absorb_frame:SetHeight(24)
	absorb_frame:SetPoint("CENTER", 0, -61)
	absorb_frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	})	
	absorb_frame:SetBackdropColor(0, 0, 0, 0.6)
	absorb_frame:Hide()

	absorb_frame.text = absorb_frame:CreateFontString(nil, "OVERLAY")
	absorb_frame.text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	absorb_frame.text:SetAllPoints(true)
	absorb_frame.text:SetText("0/0")
end

function infAbsorbs:PLAYER_TALENT_UPDATE()
	if IsBlood() then
		if not absorb_frame:IsShown() then
			self:RegisterUnitEvent("UNIT_ABSORB_AMOUNT_CHANGED", "player")
			absorb_frame:SetParent(UIParent)
			absorb_frame:Show()
			print("|cff3399FFinf|rAbsorbs: ON")
		end	
	else
		if absorb_frame:IsShown() then
			self:UnregisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
			absorb_frame:SetParent(nil)
			absorb_frame:Hide()
			print("|cff3399FFinf|rAbsorbs: OFF")
		end	
	end
end

function infAbsorbs:UNIT_ABSORB_AMOUNT_CHANGED(_, unit)
	self:ShieldTracker(unit)
end

function infAbsorbs:ShieldTracker(unit)
	local _, _, _, _, _, _, _, _, _, _, _, _, _, _, amount = UnitBuff(unit, bs)

	local bloodShield = amount or 0
	local otherShield = UnitGetTotalAbsorbs(unit) - bloodShield

	absorb_frame.text:SetText(bloodShield.."/"..otherShield)
end

