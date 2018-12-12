----------------------------------------------
-- infDCBuyout
----------------------------------------------

local lastClickTime = nil
local lastBrowseClicked = nil

local infDCBuyout = CreateFrame("Frame", "infDCBuyout")
infDCBuyout:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infDCBuyout:RegisterEvent("ADDON_LOADED")

function infDCBuyout:ADDON_LOADED(event, addon)
	if addon ~= "Blizzard_AuctionUI" then return end
	self:UnregisterEvent(event)

	self:MakeScript()
end

function infDCBuyout:MakeScript()
	for i = 1, NUM_BROWSE_TO_DISPLAY do
		local browseButton = _G["BrowseButton"..i]
		local browseButtonOnClick = browseButton:GetScript("OnClick")

		browseButton:SetScript("OnClick", function(self)
			local currentTime, browseClicked = GetTime(), self:GetID()
			if lastClickTime and (currentTime - lastClickTime) < 0.5 and lastBrowseClicked and lastBrowseClicked == browseClicked then
				PlaceAuctionBid(AuctionFrame.type, GetSelectedAuctionItem(AuctionFrame.type), AuctionFrame.buyoutPrice)

				lastBrowseClicked = nil
				lastClick = nil
			else
				browseButtonOnClick(self)

				lastBrowseClicked = browseClicked
				lastClickTime = currentTime
			end
		end)
	end
end

