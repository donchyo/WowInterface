----------------------------------------------
-- infRetakeControl
----------------------------------------------

local infRetakeControl = CreateFrame("Frame", "infRetakeControl")
infRetakeControl:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infRetakeControl:RegisterEvent("PLAYER_ENTERING_WORLD")

function infRetakeControl:PLAYER_ENTERING_WORLD()
	LossOfControlFrame:ClearAllPoints() 
	LossOfControlFrame:SetPoint("CENTER", 0, -86)
	
	for i=2, 3 do
		select(i, LossOfControlFrame:GetRegions()):SetAlpha(0)
	end
end

