----------------------------------------------
-- infCamera
----------------------------------------------

local infCamera = CreateFrame("Frame", "infCamera")
infCamera:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infCamera:RegisterEvent("PLAYER_LOGIN")

function infCamera:PLAYER_LOGIN()
	SetView(1)
end

--SET cameraDistanceA "38.662666"
--SET cameraPitchA "31.321196"