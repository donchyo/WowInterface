local bdCore, c, f = select(2, ...):unpack()
local interrupt = CreateFrame('frame')
local channel = 'SAY'

local f = CreateFrame("Frame")

local function DBM_Style()
	
end

local function BW_Style()
	if not BigWigs then return end
	local bars = BigWigs:GetPlugin("Bars", true)
	if not bars then return end
	
	bars:RegisterBarStyle("Big Dumb", {
		apiVersion = 1,
		version = 1,
		GetSpacing = function(bar) return 10 end,
		ApplyStyle = function(bar) 
			bar:SetHeight(16)
			bar:SetScale(1)
			bar.SetScale = function() return end
			
			bar.bg = CreateFrame('frame', nil, bar)
			bar.bg:SetFrameStrata("BACKGROUND")
			bar.bg:SetAllPoints(bar.candyBarBar)
			bdCore:setBackdrop(bar.bg)
			
			bar.ibg = CreateFrame('frame', nil, bar)
			bar.ibg:SetFrameStrata("BACKGROUND")
			bar.ibg:SetAllPoints(bar.candyBarIconFrame)
			bdCore:setBackdrop(bar.ibg)
			
			bar.candyBarDuration:SetFont(bdCore.media.font, 14, "OUTLINE")
			bar.candyBarDuration:SetShadowOffset(0,0)
			bar.candyBarDuration:SetJustifyH("RIGHT")
			bar.candyBarDuration:ClearAllPoints()
			bar.candyBarDuration:SetPoint("RIGHT", bar, "RIGHT", 2, 4)
			
			bar.candyBarLabel:SetFont(bdCore.media.font, 13, "OUTLINE")
			bar.candyBarLabel:SetShadowOffset(0,0)
			bar.candyBarLabel:SetJustifyH("LEFT")
			bar.candyBarLabel:ClearAllPoints()
			bar.candyBarLabel:SetPoint("LEFT", bar, "LEFT", -2, 4)
					
			bar.candyBarBar:SetStatusBarTexture(bdCore.media.flat)
			bar.candyBarBackground:SetTexture(bdCore.media.flat)
			bar.candyBarBackground:SetVertexColor(.1,.1,.1,.4)
			bar.candyBarBackground.SetVertexColor = function() return end
			
			bar.candyBarBar:ClearAllPoints()
			bar.candyBarBar:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", 0, 6)
			bar.candyBarBar:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 0, 0)
			bar.candyBarBar.OldSetPoint = bar.candyBarBar.SetPoint
			bar.candyBarBar.SetPoint = function() return end
			
			--[[bar.candyBarBar:SetStatusBarColor(.2, .4, 0.8, 0.8)
			bar.candyBarBar.SetStatusBarColor = function(r, g, b, a)
				return
			end	--]]
			
			bar.candyBarIconFrame:ClearAllPoints()
			bar.candyBarIconFrame:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", -26, 0)
			bar.candyBarIconFrame:SetSize(20, 20)
			bar.candyBarIconFrame.SetWidth = function() return end
			bar.candyBarIconFrame:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		end,
		BarStopped = function(bar) 
			bar.candyBarBar.SetPoint = bar.candyBarBar.OldSetPoint
		end,
		GetStyleName = function() return "BigDumb" end,
	})
end
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_LOGIN")

local reason = nil
f:SetScript("OnEvent", function(self, event, msg)
	if event == "ADDON_LOADED" then
		if not reason then reason = (select(6, GetAddOnInfo("BigWigs_Plugins"))) end
		if (reason == "MISSING" and msg == "BigWigs") or msg == "BigWigs_Plugins" then
			BW_Style()
		end
	elseif event == "PLAYER_LOGIN" then
		--[[if IsAddOnLoaded("BigWigs") then
            BW_Style()
        elseif IsAddOnLoaded("DBM-Core") then
            DBM_Style()
        end--]]
	end
end)
