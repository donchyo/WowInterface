----------------------------------------------
-- infRunes
----------------------------------------------

local RUNETYPEC_BLOOD = 1;
local RUNETYPEC_UNHOLY = 2;
local RUNETYPEC_FROST = 3;
local RUNETYPEC_DEATH = 4;

local runeY = {
	[1] = -6,
	[2] = -6,
	[3] = -28,
	[4] = -50,
	[5] = -28,
	[6] = -50
}

local runeX = {
	[1] = 6,
	[2] = 28,
	[3] = 6,
	[4] = 6,
	[5] = 28,
	[6] = 28
}

local runeDir = {
	[1] = -80,
	[2] = 80,
	[3] = -80,
	[4] = -80,
	[5] = 80,
	[6] = 80
}

function RuneButtonC_OnLoad(self)
	RuneFrameC_AddRune(RuneFrameC, self);

	self.rune = getglobal(self:GetName().."Rune");
	self.border = getglobal(self:GetName().."Border");
	self.bg = getglobal(self:GetName().."BG");

	RuneButtonC_Update(self);
 
	self:SetScript("OnUpdate", RuneButtonC_OnUpdate);

	self:SetFrameLevel(self:GetFrameLevel() + 2*self:GetID());
	self.border:SetFrameLevel(self:GetFrameLevel() + 1);
end

function RuneButtonC_OnUpdate(self, elapsed)
	local start, duration, r = GetRuneCooldown(self:GetID());
	if r then
		self:SetAlpha(1);
		self:SetPoint("TOPLEFT", "RuneFrameC", "TOPLEFT", runeX[self:GetID()], runeY[self:GetID()]);
	else
		local remain = (duration - GetTime() + start) / duration;
		if (remain < 0) then
			self:SetAlpha(1); 
			self:SetPoint("TOPLEFT", "RuneFrameC", "TOPLEFT", runeX[self:GetID()], runeY[self:GetID()]);
		else
			self:SetAlpha(.5);
			self:SetPoint("TOPLEFT", "RuneFrameC", "TOPLEFT", runeX[self:GetID()] + remain*(runeDir[self:GetID()]), runeY[self:GetID()]);
		end
	end
end

function RuneButtonC_Update(self, rune)
	local runeType = GetRuneType(self:GetID());
	if (runeType == RUNETYPEC_BLOOD) then
		self.rune:SetTexture("Interface\\AddOns\\infRunes\\textures\\blood.tga");
		self.rune:SetWidth(27);
		self.rune:SetHeight(27);
	elseif (runeType == RUNETYPEC_UNHOLY) then
		self.rune:SetTexture("Interface\\AddOns\\infRunes\\textures\\unholy.tga");
		self.rune:SetWidth(27);
		self.rune:SetHeight(27);
	elseif (runeType == RUNETYPEC_FROST) then
		self.rune:SetTexture("Interface\\AddOns\\infRunes\\textures\\frost.tga");
		self.rune:SetWidth(27);
		self.rune:SetHeight(27);
	elseif (runeType == RUNETYPEC_DEATH) then
		self.rune:SetTexture("Interface\\AddOns\\infRunes\\textures\\death.tga");
		self.rune:SetWidth(32);
		self.rune:SetHeight(32);
	end
end

function RuneFrameC_OnLoad(self)
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("RUNE_TYPE_UPDATE");
	self:RegisterEvent("RUNE_POWER_UPDATE");
	self:RegisterEvent("RUNE_REGEN_UPDATE");

	self:SetScript("OnEvent", RuneFrameC_OnEvent);

	self.runes = {};

	RuneFrameC:SetPoint("CENTER", "UIParent", "CENTER", 1, -170);
end

function RuneFrameC_OnEvent(self, event, ...)
	if (event == "PLAYER_ENTERING_WORLD") then
		for rune in next, self.runes do
			RuneButtonC_Update(self.runes[rune], rune);
		end
	elseif (event == "RUNE_TYPE_UPDATE") then
		for rune in next, self.runes do
			RuneButtonC_Update(self.runes[rune], rune);
		end
	end
end

function RuneFrameC_AddRune(runeFrameC, rune)
	tinsert(runeFrameC.runes, rune);
end

