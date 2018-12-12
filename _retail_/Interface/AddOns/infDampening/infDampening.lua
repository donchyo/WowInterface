----------------------------------------------
-- infDampening
----------------------------------------------

local dampening

--Upvalue some frequently used calls.
local str_match = string.match
local GetText = GetText
local UnitDebuff = UnitDebuff

local infDampening = CreateFrame("Frame", "infDampening")
infDampening:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infDampening:RegisterEvent("PLAYER_ENTERING_WORLD")

function infDampening:Create()
	local anchorPoint = NUM_ALWAYS_UP_UI_FRAMES

	dampening_frame = CreateFrame("Frame", nil, UIParent)
	dampening_frame:SetSize(45, 24)
	dampening_frame:SetPoint("TOP", _G["AlwaysUpFrame"..anchorPoint], "BOTTOM")
	dampening_frame:Hide()

	--Dummy texture, doing this to mimic the default WorldState format.
	--Basically it is so it always lines up perfectly, regardless of UIScale, custom fonts etc.
	dampening_frame.texture = dampening_frame:CreateTexture(nil, "BACKGROUND")
	dampening_frame.texture:SetSize(42, 42)
	dampening_frame.texture:SetPoint("LEFT", -6, 0)

	dampening_frame.text = dampening_frame:CreateFontString(nil, "BACKGROUND")
	dampening_frame.text:SetPoint("LEFT", dampening_frame.texture, "RIGHT", -12, 10)
	dampening_frame.text:SetFontObject(GameFontNormalSmall)

	--Tooltip scanning is the only way as of right now. (5.4.8)
	--Hopefully in WoD UnitDebuff will have the percent in the Returns. Some spells already do.
	CreateFrame("GameTooltip", "TextTooltip", nil, "GameTooltipTemplate")
	TextTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
	TextTooltip:AddFontStrings(
	TextTooltip:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
	TextTooltip:CreateFontString("$parentTextRight1", nil, "GameTooltipText"))
end

local function IsInArena()
	local _, instanceType = IsInInstance()
	return instanceType == "arena"
end

--Only unreg ARENA_OPPONENT_UPDATE here in case you leave before the gates open.
function infDampening:PLAYER_ENTERING_WORLD()
	if IsInArena() then
		self:RegisterUnitEvent("UNIT_AURA", "player")
		self:RegisterEvent("ARENA_OPPONENT_UPDATE")
	else
		self:UnregisterEvent("UNIT_AURA")
		self:UnregisterEvent("ARENA_OPPONENT_UPDATE")
		if dampening_frame and dampening_frame:IsShown() then
			dampening_frame:Hide()
		end
	end
end

--Reg ARENA_OPPONENT_UPDATE because NUM_ALWAYS_UP_UI_FRAMES only returns "2" before the gates open.
--Only create the frame once you actually do arena, but only once, always re-use afterwards.
function infDampening:ARENA_OPPONENT_UPDATE(event, _, type)
	if type == "seen" then
		if dampening_frame then
			local anchorPoint = NUM_ALWAYS_UP_UI_FRAMES
			dampening_frame:SetPoint("TOP", _G["AlwaysUpFrame"..anchorPoint], "BOTTOM")
		else
			self:Create()
		end
		self:UnregisterEvent(event)
	end
end

function infDampening:UNIT_AURA(_, unit)
	local t = 0
	while true do
		t = t + 1
		local _, _, _, _, _, _, _, _, _, _, spellId = UnitDebuff(unit, t)
		if spellId == 110310 then
			TextTooltip:SetUnitDebuff(unit, t)
			local txt = TextTooltipTextLeft2:GetText()
			local val = str_match(txt, "%d+")
			if dampening ~= val then
				dampening = val
				dampening_frame.text:SetText("Dampening: "..val.."%")
				if not dampening_frame:IsShown() then
					dampening_frame:Show()
				end
			end
		end
		if not UnitDebuff(unit, t) then break end
	end
end

