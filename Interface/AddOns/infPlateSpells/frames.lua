
local folder, core = ...

if not core.LibNameplate then
	return
end

local _G = _G
local pairs = pairs
local GetTime = GetTime
local CreateFrame = CreateFrame
local table_remove = table.remove
local table_sort = table.sort
local type = type
local table_getn = table.getn
local table_getn = table.getn
local select = select
local string_gsub = string.gsub

local LibNameplate = core.LibNameplate
local nametoGUIDs = core.nametoGUIDs
local buffBars = core.buffBars
local buffFrames = core.buffFrames
local guidBuffs = core.guidBuffs

local DebuffTypeColors = {
	["Magic"] = {r = 0.20, g = 0.60, b = 1.00},
	["Curse"] = {r = 0.60, g = 0.00, b = 1.00},
	["Disease"] = {r = 0.60, g = 0.40, b = 0},
	["Poison"] = {r = 0.00, g = 0.60, b = 0}
}

------------------------------------------
local function iconOnShow(self)			--
-- Called when spell frames are shown.	--
------------------------------------------
	self:SetAlpha(1)

	self.cd:Hide()
	self.stack:Hide()
	self.border:Hide()

	if self.expirationTime > 0 then
		self.cd:Show()
	end
	
	if self.stackCount and self.stackCount > 1 then
		self.stack:SetText(self.stackCount)
		self.stack:Show()
		self.stack:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
	end

	local colour = DebuffTypeColors[self.isDebuff and self.debuffType or self.dispelType]
	if colour then
		self.border:SetVertexColor(colour.r, colour.g, colour.b)
	else
		self.border:SetVertexColor(0.28, 0.28, 0.28)
	end
	self.border:Show()

	self.icon:SetWidth(32)
	self.icon:SetHeight(32)
	self:SetWidth(32)
	self:SetHeight(32)
end

------------------------------------------
local function iconOnHide(self)			--
-- Called when spell frames are shown.	--
------------------------------------------
	self.stack:Hide()
	self.border:Hide()
	self.cd:Hide()
	self:SetAlpha(1)
end

----------------------------------------------
local function iconOnUpdate(self, elapsed)	--
-- Fires for spell frames.					--
----------------------------------------------
	self.lastUpdate = self.lastUpdate + elapsed
	if self.lastUpdate > 0.1 then --abit fast for cooldown flash.
		self.lastUpdate = 0

		if self.expirationTime > 0 then
			local rawTimeLeft = self.expirationTime - GetTime()
			local timeLeft
			--[[if rawTimeLeft < 10 then
				timeLeft = core:Round(rawTimeLeft, 1)
			else]]
				timeLeft = core:Round(rawTimeLeft)
			--end

			self.cd:SetText(core:SecondsToString(timeLeft, 1))
			if timeLeft > 59 then
				self.cd:SetTextColor(1, 1, 1)
			elseif timeLeft > 5 then
				self.cd:SetTextColor(1, 1, 0)
			else
				self.cd:SetTextColor(1, 0, 0)
			end

			if GetTime() > self.expirationTime then
				self:Hide()

				local GUID = LibNameplate:GetGUID(self.realPlate)
				if GUID then
					core:RemoveOldSpells(GUID)
					core:AddBuffsToPlate(self.realPlate, GUID)
				else
					local plateName = LibNameplate:GetName(self.realPlate)
					if plateName and nametoGUIDs[plateName] then
						core:RemoveOldSpells(nametoGUIDs[plateName])
						core:AddBuffsToPlate(self.realPlate, nametoGUIDs[plateName])
					end
				end
			end
		end
	end
end

function core:RemoveOldSpells(GUID)
	for i=(6), 1, -1 do
		if guidBuffs[GUID] and guidBuffs[GUID][i] then
			if guidBuffs[GUID][i].expirationTime and guidBuffs[GUID][i].expirationTime > 0 and GetTime() > guidBuffs[GUID][i].expirationTime then
				table_remove(guidBuffs[GUID], i)
			end
		end
	end
end

local function CreateBuffFrame(parentFrame, realPlate)
	local f = CreateFrame("Frame", "MainFrame", parentFrame)
	f.realPlate = realPlate
	f:SetFrameStrata("BACKGROUND")
	
	f.icon = CreateFrame("Frame", "MainFrameIcon", f)
	f.icon:SetPoint("TOP", f)

	f.texture = f.icon:CreateTexture(nil, "BACKGROUND")
	f.texture:SetAllPoints(f.icon)

	f.cd = f.icon:CreateFontString(nil, "ARTWORK")
	f.cd:SetFont(STANDARD_TEXT_FONT, 22, "OUTLINE")
	f.cd:SetShadowColor(0, 0, 0, 0.8)
	f.cd:SetShadowOffset(1, -1)
	f.cd:SetText("0")
	f.cd:SetAllPoints(f.icon)
	
	f.stack = f.icon:CreateFontString(nil, "OVERLAY", "ChatFontNormal")
	f.stack:SetText("0")
	f.stack:SetPoint("BOTTOMRIGHT", f.icon, "BOTTOMRIGHT", -1, 3)

	f.border = f.icon:CreateTexture(nil, "BORDER")
	f.border:SetPoint("TOPLEFT", f.icon, "TOPLEFT", -2, 2)
	f.border:SetPoint("BOTTOMRIGHT", f.icon ,"BOTTOMRIGHT", 2, -2)
	f.border:SetTexture("Interface\\AddOns\\infPlateSpells\\Textures\\Border")

	--f.border = f.icon:CreateTexture(nil, "BORDER")
	--f.border:SetPoint("TOPLEFT", f.icon, "TOPLEFT", -1, 1)
	--f.border:SetPoint("BOTTOMRIGHT", f.icon ,"BOTTOMRIGHT", 1, -1)
	--f.border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays")
	--f.border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625)

	f.lastUpdate = 0
	f.expirationTime = 0
	f:SetScript("OnShow", iconOnShow)
	f:SetScript("OnHide", iconOnHide)

	f:SetScript("OnUpdate", iconOnUpdate)
	f.stackCount = 0

	f.cd:Hide()
	f.border:Hide()
	f.stack:Hide()

	return f
end

----------------------------------------------------------
local function CreateBarFrame(parentFrame, realPlate)	--
-- Create and return a bar frame.						--
----------------------------------------------------------
	local f = CreateFrame("frame", nil, parentFrame)
	f.realPlate = realPlate

	f:SetFrameStrata("BACKGROUND")

	f:SetWidth(1)
	f:SetHeight(1)

	f:Show()

	return f
end

----------------------------------------------------------------------
local function BuildPlateBars(plate, visibleFrame)					--
-- Build all our bar frames for a plate. 							--
-- We anchor these to the plate and our spell frames to the bar.	--
----------------------------------------------------------------------
	buffBars[plate] = buffBars[plate] or {}

	if not buffBars[plate][1] then
		buffBars[plate][1] = CreateBarFrame(visibleFrame, plate)
	end
	buffBars[plate][1]:ClearAllPoints()
	buffBars[plate][1]:SetPoint("BOTTOM", visibleFrame, "TOP", 0, 9)
	buffBars[plate][1]:SetParent(visibleFrame)

	local barPoint = "BOTTOM"
	local parentPoint = "TOP"
	barPoint = string_gsub(barPoint, "TOP", "BOTTOM");
	parentPoint = string_gsub(parentPoint, "BOTTOM", "TOP");
end

local function GetBarChildrenSize(n, ...)
	local frame
	local totalWidth = 1
	local totalHeight = 1
	if n > 6 then
		n = 6
	end
    for i = 1, n do
		frame = select(i, ...)
		if frame:IsShown() then
			totalWidth = totalWidth + frame:GetWidth()
			if frame:GetHeight() > totalHeight then
				totalHeight = frame:GetHeight()
			end
		end
    end
	return totalWidth, totalHeight
end

--------------------------------------------------------------------------------------
local function UpdateBarSize(barFrame)												--
-- Update a bar's size taking into account all the spell frame's height and width.	--
--------------------------------------------------------------------------------------
	if barFrame:GetNumChildren() == 0 then
		return
	end

	local totalWidth, totalHeight = GetBarChildrenSize(barFrame:GetNumChildren(), barFrame:GetChildren())

	barFrame:SetWidth(totalWidth)
	barFrame:SetHeight(totalHeight)
end

local function UpdateAllBarSizes(plate)
	for r=1, 1  do
		UpdateBarSize(buffBars[plate][r])
	end
end

function core:UpdateAllPlateBarSizes()
	for plate in pairs(buffBars) do
		UpdateAllBarSizes(plate)
	end
end

----------------------------------------------
function core:AddBuffsToPlate(plate, GUID)	--
-- Show spells on a plate linked to a GUID.	--
----------------------------------------------
	if not buffFrames[plate] or not buffFrames[plate][6]  then
		self:BuildBuffFrame(plate)
	end

	local t, f
	if guidBuffs[GUID] then
		table_sort(guidBuffs[GUID], function(a,b)
			if(a and b) then
				if a.playerCast ~= b.playerCast then
					return (a.playerCast or 0) > (b.playerCast or 0)
				elseif a.expirationTime == b.expirationTime then
					return a.name  < b.name
				else
					return (a.expirationTime or 0) < (b.expirationTime or 0)
				end
			end
		end)

		for i=1, 6 do
			if buffFrames[plate][i] then
				if guidBuffs[GUID][i] then
					buffFrames[plate][i].spellName		= guidBuffs[GUID][i].name or ""
					buffFrames[plate][i].expirationTime	= guidBuffs[GUID][i].expirationTime or 0
					buffFrames[plate][i].duration		= guidBuffs[GUID][i].duration or 1
					buffFrames[plate][i].startTime		= guidBuffs[GUID][i].startTime or GetTime()
					buffFrames[plate][i].stackCount = guidBuffs[GUID][i].stackCount or 0
					buffFrames[plate][i].isDebuff	= guidBuffs[GUID][i].isDebuff
					buffFrames[plate][i].debuffType = guidBuffs[GUID][i].debuffType
					buffFrames[plate][i].dispelType = guidBuffs[GUID][i].dispelType
					buffFrames[plate][i].playerCast = guidBuffs[GUID][i].playerCast
					buffFrames[plate][i].texture:SetTexture("Interface\\Icons\\"..guidBuffs[GUID][i].icon)
					buffFrames[plate][i]:Show()--make sure OnShow fires.

					--Making sure it does fire. sometimes it doesn't. =/
					iconOnShow(buffFrames[plate][i])

					iconOnUpdate(buffFrames[plate][i], 1) --do a onupdate.
				else
					buffFrames[plate][i]:Hide()
				end
			end
		end
		UpdateAllBarSizes(plate)
	end
end

------------------------------------------------------
function core:BuildBuffFrame(plate)					--
-- Create our buff frames on a plate.				--
------------------------------------------------------
	local visibleFrame = plate
	if not buffBars[plate] then
		BuildPlateBars(plate, visibleFrame)
	end

	if not buffBars[plate][1] then --user increased the size.
		BuildPlateBars(plate, visibleFrame)
	end

	buffFrames[plate] = buffFrames[plate] or {}

	local total = 1 --total number of spell frames
	if not buffFrames[plate][total] then
		buffFrames[plate][total] = CreateBuffFrame(buffBars[plate][1], plate)
	end
	buffFrames[plate][total]:SetParent(buffBars[plate][1]) --Doing this seems to make UpdateBarSize() function properly. =/

	buffFrames[plate][total]:ClearAllPoints()
	buffFrames[plate][total]:SetPoint("BOTTOMLEFT", buffBars[plate][1]) -- + GetCooldownHeight(buffFrames[plate][1])

	local prevFrame = buffFrames[plate][total]
	for i=2, 6 do
		total = total + 1
		if not buffFrames[plate][total] then
			buffFrames[plate][total] = CreateBuffFrame(buffBars[plate][1], plate)
		end
		buffFrames[plate][total]:SetParent(buffBars[plate][1])

		buffFrames[plate][total]:ClearAllPoints()
		buffFrames[plate][total]:SetPoint("LEFT", prevFrame, "RIGHT", 2, 0)

		prevFrame = buffFrames[plate][total]
	end
end	

