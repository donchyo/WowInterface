SunnArt = LibStub("AceAddon-3.0"):NewAddon("SunnArt", "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0")

local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SunnArt", true)
local f = {}	--Frame
local MaxArtSections = 5
local SunnArtVisible = true
local SunnArt_MESSAGECOLOR = "FF0000FF"
local wr	-- World Ratio

SunnArt_OptionsTable = {}
SunnArt_Optionstable2 = {}
SunnArt.ThemeDB = {index={}, overlap={}, panels={}, length={}}
SunnArt.overlap = SunnArt.ThemeDB.overlap

function SunnArt:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("SunnArt3DB", SunnArt_DEFAULTS, "Default")
	self.db.RegisterCallback(self, "OnProfileChanged", "ProfileUpdate")
	self.db.RegisterCallback(self, "OnProfileCopied", "ProfileUpdate")
	self.db.RegisterCallback(self, "OnProfileReset", "ProfileUpdate")
	
	self.options = SunnArt_Options
	self.options.args.profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	local LibDualSpec = LibStub("LibDualSpec-1.0")
	LibDualSpec:EnhanceDatabase(self.db, "SunnArt")
	LibDualSpec:EnhanceOptions(self.options.args.profiles, self.db)
	
	LibStub("AceConfig-3.0"):RegisterOptionsTable("SunnArt", self.options, {"sunnart","sa"})
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SunnArt", "SunnArt")
	
	self:RegisterChatCommand("SunnArt", "ChatCommand")
	self:RegisterChatCommand("sa", "ChatCommand")
	
	self:HookScript(UIParent, "OnShow", function() self:ToggleUI() end)
	self:HookScript(UIParent, "OnHide", function() self:ToggleUI() end)
	
	self:GraphicsBugFix()
	self:RegisterEvent("PLAY_MOVIE", function() self:CheckCinematic() end) -- Fix for Cinematics that disable viewport in combat
	
	if self.db.global.worldframeglow then SetCVar("ffxGlow", 0) end
	print("|c"..SunnArt_MESSAGECOLOR, L["SunnArt"], "|r: ", L["Loaded"], " - ", L["Type \"/sa\" to open options or \"/sa help\" for console commands"])
end

function SunnArt:GraphicsBugFix()
	local DX9VPEnabled = (self.db.profile.bar[1].resize or self.db.profile.bar[2].resize or self.db.profile.bar[3].resize or self.db.profile.bar[4].resize) and (GetCVar("gxApi") == "D3D9")
	local LiquidDetail = (tonumber(GetCVar("WaterDetail")) > 1)
	local SSAO = (tonumber(GetCVar("SSAO")) > 0)
	local Multisample = (tonumber(GetCVar("ffxAntiAliasingMode")) > 1)
	if DX9VPEnabled and Multisample and (LiquidDetail or SSAO) then
		print("|c"..SunnArt_MESSAGECOLOR, L["SunnArt"], "|r: |cFFFF0000", L["DX9VPEnabled"], "|r")
		if LiquidDetail then
			print("|c"..SunnArt_MESSAGECOLOR, L["SunnArt"], "|r: |cFFFF0000", L["LiquidDetail"], "|r")
		end
		if SSAO then
			print("|c"..SunnArt_MESSAGECOLOR, L["SunnArt"], "|r: |cFFFF0000", L["SSAO"], "|r")
		end
	end
end

function SunnArt:ChatCommand(input)
	if not input or input:trim() == "" then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	else
		if input:trim() == "help" then input = "" end
		LibStub("AceConfigCmd-3.0").HandleCommand(self, "sa", "SunnArt", input)
	end
end

function SunnArt:OnEnable()
	if self.db.global.worldframeglow then SetCVar("ffxGlow", 0) end
	SunnArt:GetThemeList()
	if (not f[0]) then SunnArt:CreateFrames() end
	SunnArt:SetViewport()
end

function SunnArt:OnDisable() 
	if self.db.global.worldframeglow then SetCVar("ffxGlow", 1) end
	SunnArt:UpdatePanelVisibility(false)
	SunnArt:DisableViewport()
	SAVisible=false;
end

function SunnArt:ProfileUpdate()
	self:SetViewport()
end

function SunnArt:GetThemeList()
	if #self.ThemeDB.index > 0 then return self.ThemeDB.index end
	local themefile, themename, themeindex
	local function f(tf, tn)
		local ti = self:GetThemeIndex(tf)
		if ti == nil then
			self.ThemeDB[tf] = tn
			table.insert(self.ThemeDB.index, tn)
		else
			self.ThemeDB[tf] = tn
			self.ThemeDB.index[ti] = tn
		end
	end
	self.ThemeDB.index = {}
	if SunnArtPack then table.foreach(SunnArtPack.theme, f) end
	if SunnCustomTheme then table.foreach(SunnCustomTheme, f) end
	table.foreach(self.options.args.theme.values, f)
	table.foreach(self.db.global.themes, f)
	table.sort(self.ThemeDB.index)
	SunnArt:ImportThemes()
	return self.ThemeDB.index
end

function SunnArt:ImportThemes()
	local themefile, var
	for themefile, var in pairs(self.db.global.overlaps) do
		self.ThemeDB.overlap[themefile] = var
	end
	for themefile, var in pairs(self.db.global.panels) do
		self.ThemeDB.panels[themefile] = var
	end
	for themefile, var in pairs(self.db.global.lengths) do
		self.ThemeDB.length[themefile] = var
	end
	if SunnArtPack then
		for themefile, var in pairs (SunnArtPack.overlap) do
			self.ThemeDB.overlap[themefile] = var
		end
		for themefile, var in pairs (SunnArtPack.panels) do
			self.ThemeDB.panels[themefile] = var
		end
		for themefile, var in pairs (SunnArtPack.length) do
			self.ThemeDB.length[themefile] = var
		end
	end
end

function SunnArt:CreateFrames()
	local framelevel

	f[0] = CreateFrame("Frame", "SunnArt_DummyFrame", UIParent)
	f[0]:SetFrameStrata("BACKGROUND")
	f[0]:EnableMouse(false)
	f[0]:SetMovable(false)

	f[1] = CreateFrame("Frame", "SunnArt_BottomFrame", f[0])
	f[2] = CreateFrame("Frame", "SunnArt_TopFrame", f[0])
	f[3] = CreateFrame("Frame", "SunnArt_LeftFrame", f[0])
	f[4] = CreateFrame("Frame", "SunnArt_RightFrame", f[0])

	for i = 1,4 do
		f[i]:SetFrameStrata(strsub(self.db.profile.framestrata,3))
		f[i]:EnableMouse(false)
		f[i]:SetMovable(false)

		framelevel = (i > 2) and 0 or 1
		f[i]:SetFrameLevel(framelevel)
		for j = 1, MaxArtSections do f[i]["art"..j] = f[i]:CreateTexture() end
	end
end

function SunnArt:SetViewport(bh, th, lw, rw)
	local vr = UIParent:GetHeight() / 100	-- Screen ratio's (vertical & horizontal) to
	local hr = UIParent:GetWidth() / 100	-- convert from percentages to actual sizes
	
	bh = bh or self.db.profile.bar[1].size
	th = th or self.db.profile.bar[2].size
	lw = lw or self.db.profile.bar[3].size
	rw = rw or self.db.profile.bar[4].size

	bh = self.db.profile.bar[1].enabled and bh or 0
	th = self.db.profile.bar[2].enabled and th or 0
	lw = self.db.profile.bar[3].enabled and lw or 0
	rw = self.db.profile.bar[4].enabled and rw or 0

	th = -th * vr
	bh = bh * vr
	lw = lw * hr
	rw = -rw * hr

	self:SetPoints(f[0], {"TOPLEFT", UIParent, "TOPLEFT", lw, th}, {"BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", rw, bh})
	self:SetBars()
	self:UpdateViewport()
	self:UpdateStrata()
end

function SunnArt:SetBars()
	self:UpdatePanelSizes()
	self:UpdatePanelVisibility()
	self:UpdateAlpha()
end

function SunnArt:UpdatePanelSizes()
	local vl, vr, vt, vb	--Viewport left, right, top, bottom
	local fittop = {}
	local fitbottom = {}
	local fitleft = {}
	local fitright = {}

	vl = f[0]:GetLeft()
	vr = UIParent:GetWidth() - f[0]:GetRight()
	vt = UIParent:GetHeight() - f[0]:GetTop()
	vb = f[0]:GetBottom()

	for i=1,4 do
		if self.db.profile.bar[i].fit == true then
			fitleft[i] = 0
			fitright[i] = 0
			fittop[i] = 0
			fitbottom[i] = 0
		else
			fitleft[i] = vl
			fitright[i] = vr
			fittop[i] = vt
			fitbottom[i] = vb
		end
	end

	self:SetPoints(f[1], {"TOPLEFT", f[0], "BOTTOMLEFT", -fitleft[1], 0}, {"BOTTOMRIGHT", f[0], "BOTTOMRIGHT", fitright[1], -vb})	-- Bottom panel
	self:SetPoints(f[2], {"TOPLEFT", f[0], "TOPLEFT", -fitleft[2], vt}, {"BOTTOMRIGHT", f[0], "TOPRIGHT", fitright[2], 0})			-- Top panel
	self:SetPoints(f[3], {"TOPLEFT", f[0], "TOPLEFT", -vl, fittop[3]}, {"BOTTOMRIGHT", f[0], "BOTTOMLEFT", 0, -fitbottom[3]})		-- Left panel
	self:SetPoints(f[4], {"TOPLEFT", f[0], "TOPRIGHT", 0, fittop[4]}, {"BOTTOMRIGHT", f[0], vr, -fitbottom[4]})							-- Right panel

	self:UpdateArtwork()
end

function SunnArt:UpdateArtwork()
	local olr, elr	-- Overlap and Extralength ratio
	local h, w
	local minh, minw
	local anchor = {}
	local i
	local ThemePanels
	
	for i = 1, 4 do
		olr = 100 / (100 - self.db.profile.bar[i].overlap)
		elr = 1 + (self.db.profile.bar[i].length / 100)

		if (i == 1 or i == 2) then
			w = f[i]:GetWidth() / self.db.profile.bar[i].panels * elr
			h = w * self.db.profile.bar[i].scale / 2
			minh = h / olr
		else
			h = f[i]:GetHeight() / self.db.profile.bar[i].panels * elr
			w = h * self.db.profile.bar[i].scale / 2
			minw = w / olr
		end

		if i == 1 then anchor = {"TOPLEFT", "TOPRIGHT", 0, h - (h / olr), {0,0,0,1,1,0,1,1}} end
		if i == 1 and self.db.profile.bar[i].flip then anchor = {"TOPRIGHT", "TOPLEFT", 0, h-(h/olr), {1,0,1,1,0,0,0,1}} end
		if i == 2 then anchor = {"BOTTOMLEFT", "BOTTOMRIGHT", 0, 0, {0,0,0,1,1,0,1,1}} end
		if i == 2 and self.db.profile.bar[i].rotate then anchor = {"BOTTOMRIGHT", "BOTTOMLEFT", 0, -1 * (h - (h / olr)), {1,1,1,0,0,1,0,0}} end
		if i == 2 and self.db.profile.bar[i].flip then anchor = {"BOTTOMRIGHT", "BOTTOMLEFT", 0, 0, {1,0,1,1,0,0,0,1}} end
		if i == 2 and self.db.profile.bar[i].flip and self.db.profile.bar[i].rotate then anchor = {"BOTTOMLEFT", "BOTTOMRIGHT", 0, -1 * (h - (h / olr)), {0,1,0,0,1,1,1,0}} end
		if i == 3 then anchor = {"TOPRIGHT", "BOTTOMRIGHT", w - (w / olr), 0, {0,1,1,1,0,0,1,0}} end
		if i == 3 and self.db.profile.bar[i].flip then anchor = {"BOTTOMRIGHT", "TOPRIGHT", w - (w / olr), 0, {1,1,0,1,1,0,0,0}} end
		if i == 4 then anchor = {"BOTTOMLEFT", "TOPLEFT", -1 * (w - (w / olr)), 0, {1,0,0,0,1,1,0,1}} end
		if i == 4 and self.db.profile.bar[i].flip then anchor = {"TOPLEFT", "BOTTOMLEFT", -1 * (w - (w / olr)), 0, {0,0,1,0,0,1,1,1}} end
		
		for art = 1, MaxArtSections do
			f[i]["art"..art]:ClearAllPoints()

			if self.db.profile.bar[i].autostretch then
				if i == 1 or i == 2 then
					if minh < f[i]:GetHeight() then
						h = f[i]:GetHeight() * olr
						if i == 1 then anchor[4] = h - (h / olr) end
						if i == 2 and self.db.profile.bar[2].rotate then anchor[4] = -1 * (h - (h / olr)) end
					end
				else
					if minw < f[i]:GetWidth() then
						w = f[i]:GetWidth() * olr
						if i == 3 then anchor[3] = w - (w / olr) end
						if i == 4 then anchor[3] = -1 * (w - (w / olr)) end
					end
				end
			end

			if (h == 0 or w == 0 or not self.db.profile.bar[i].enabled) then f[i]["art"..art]:Hide() else f[i]["art"..art]:Show() end

			f[i]["art"..art]:SetTexture("")
			
			ThemePanels = self.ThemeDB.panels[self.db.profile.bar[i].theme]
			ThemePanels = ThemePanels or 3
			
			if self.db.profile.bar[i].theme == "solid" then
				f[i]["art"..art]:SetColorTexture(self.db.profile.bar[i].red, self.db.profile.bar[i].green, self.db.profile.bar[i].blue)
				f[i]["art"..art]:SetVertexColor(1, 1, 1)
			else
				if art > ThemePanels then
					f[i]["art"..art]:SetTexture(nil)
				else
					f[i]["art"..art]:SetTexture("Interface\\Addons\\"..self.db.profile.bar[i].theme..art, false)
				end
				if self.db.profile.bar[i].filter then
					f[i]["art"..art]:SetVertexColor(self.db.profile.bar[i].red, self.db.profile.bar[i].green, self.db.profile.bar[i].blue)
				else
					f[i]["art"..art]:SetVertexColor( 1, 1, 1)
				end
			end
			
			f[i]["art"..art]:SetWidth(w)
			f[i]["art"..art]:SetHeight(h)

			if art == 1 then
				f[i]["art"..art]:SetPoint(anchor[1], f[i], anchor[1], anchor[3], anchor[4])
			else
				f[i]["art"..art]:SetPoint(anchor[1], f[i]["art"..art-1], anchor[2])
			end
				
			f[i]["art"..art]:SetTexCoord(unpack(anchor[5]))
		end
	end
end

function SunnArt:UpdatePanelVisibility(vis)
	if vis == nil then vis=self.db.profile.artwork end
	for i = 1, 4 do
		if vis then f[i]:Show() else f[i]:Hide() end
	end
	SunnArtVisible = vis
end

function SunnArt:UpdateAlpha()
	for i = 1, 4 do f[i]:SetAlpha(self.db.profile.bar[i].alpha) end
end

function SunnArt:UpdateViewport()
	local top, bottom
	local left, right
   	
	if (self.db.profile.bar[1].resize) then bottom = f[1]:GetHeight() - 0.5 else bottom = 0 end
	if (self.db.profile.bar[2].resize) then top = f[2]:GetHeight() - 0.5 else top = 0 end
	if (self.db.profile.bar[3].resize) then left = f[3]:GetWidth() - 0.5 else left = 0 end
	if (self.db.profile.bar[4].resize) then right = f[4]:GetWidth() - 0.5 else right = 0 end
	
	if not wr then
		self:SetPoints(WorldFrame, {"TOPLEFT", 0, 0}, {"BOTTOMRIGHT", 0, 0})
		self:MoveSpellAlerts()
		self:MoveUIErrors()
		wr = WorldFrame:GetWidth() / UIParent:GetWidth()
	end
	
	if not InCombatLockdown() then self:SetPoints(WorldFrame, {"TOPLEFT", left * wr, -top * wr}, {"BOTTOMRIGHT", -right * wr, bottom * wr}) end
	self:HideGryphons()
	self:MoveSpellAlerts()
	self:MoveUIErrors()
end

function SunnArt:DisableViewport()
	if not InCombatLockdown() then self:SetPoints(WorldFrame, {"TOPLEFT", 0, 0}, {"BOTTOMRIGHT", 0, 0}) end
	self:MoveSpellAlerts()
	self:MoveUIErrors()
end

function SunnArt:ToggleUI()
	if (not UIParent:IsShown()) then
		self:DisableViewport()
	else
		self:UpdateViewport()
	end
end

function SunnArt:CheckCinematic()
	if (not UIParent:IsShown()) then
		self:UpdateViewport()
	end
end

function SunnArt:UpdateStrata()
	for i = 1, 4 do
		f[i]:SetFrameStrata(strsub(self.db.profile.framestrata,3))
	end
	if BattlefieldMinimap then
		if BattlefieldMinimap:GetFrameLevel() < 2 then BattlefieldMinimap:SetFrameLevel(2) end
	end
	if PlayerFrame then
		if PlayerFrame:GetFrameLevel() < 2 then PlayerFrame:SetFrameLevel(2) end
	end
	if MinimapCluster then
		if MinimapCluster:GetFrameLevel() < 2 then MinimapCluster:SetFrameLevel(2) end
	end
	
	local childframes = { UIParent:GetChildren(); }
	for _, childframe in ipairs(childframes) do
		local childframename = (not childframe:IsForbidden()) and childframe:GetName() or ""
		if (string.sub(childframename, 0, 9) == "ChatFrame" and tonumber(string.sub(childframename, 10)) and childframe:GetFrameLevel() < 2) then
			childframe:SetFrameLevel(2)
		end
	end
end

function SunnArt:GetThemeIndex(themefile)
	local ti, tn, match
	for ti, tn in ipairs(self.ThemeDB.index) do
		if tn == self.ThemeDB[themefile] then match = ti end
	end
	return match
end

function SunnArt:SetPoints(frame, point1, point2)
	frame:ClearAllPoints()
	frame:SetPoint(unpack(point1))
	frame:SetPoint(unpack(point2))
end

function SunnArt:HideGryphons()
	if self.db.global.hideblizzart then
		MainMenuBarArtFrame.LeftEndCap:Hide()
		MainMenuBarArtFrame.RightEndCap:Hide()
	else
		MainMenuBarArtFrame.LeftEndCap:Show()
		MainMenuBarArtFrame.RightEndCap:Show()
	end
end

function SunnArt:MoveSpellAlerts()
	if self.db.global.centerspellalerts then
		SpellActivationOverlayFrame:ClearAllPoints()
		SpellActivationOverlayFrame:SetPoint("CENTER",WorldFrame,"CENTER",0,0)
	end
end

function SunnArt:MoveUIErrors()
	if self.db.global.centeruierrors then
		point, relativeTo, relativePoint, xOfs, yOfs = UIErrorsFrame:GetPoint()
		UIErrorsFrame:ClearAllPoints()
		UIErrorsFrame:SetPoint(point, WorldFrame, relativePoint, xOfs, yOfs)
	end
end
