----------------------------------------------
-- infFlares
----------------------------------------------

BINDING_HEADER_infFlares = "infFlares"
BINDING_CATEGORY_infAddons = "infAddons"

BINDING_NAME_RAIDFLARE0 = "Clear All Raid Flares"

BINDING_NAME_RAIDFLARE1 = "Blue Raid Flare"
BINDING_NAME_RAIDFLARE2 = "Green Raid Flare"
BINDING_NAME_RAIDFLARE3 = "Purple Raid Flare"
BINDING_NAME_RAIDFLARE4 = "Red Raid Flare"
BINDING_NAME_RAIDFLARE5 = "Yellow Raid Flare"
BINDING_NAME_RAIDFLARE6 = "Orange Raid Flare"
BINDING_NAME_RAIDFLARE7 = "Silver Raid Flare"
BINDING_NAME_RAIDFLARE8 = "White Raid Flare"

_G["BINDING_NAME_CLICK RaidFlare1:LeftButton"] = "Blue Flare"
_G["BINDING_NAME_CLICK RaidFlare2:LeftButton"] = "Green Flare"
_G["BINDING_NAME_CLICK RaidFlare3:LeftButton"] = "Purple Flare"
_G["BINDING_NAME_CLICK RaidFlare4:LeftButton"] = "Red Flare"
_G["BINDING_NAME_CLICK RaidFlare5:LeftButton"] = "Yellow Flare"
_G["BINDING_NAME_CLICK RaidFlare6:LeftButton"] = "Orange Flare"
_G["BINDING_NAME_CLICK RaidFlare7:LeftButton"] = "Silver Flare"
_G["BINDING_NAME_CLICK RaidFlare8:LeftButton"] = "White Flare"
_G["BINDING_NAME_CLICK ClearRaidFlares:LeftButton"] = "Clear All Flares"

local function make(name, command)
	local btn = CreateFrame("Button", name, nil, "SecureActionButtonTemplate")
	btn:SetAttribute("type", "macro")
	btn:SetAttribute("macrotext", command)
	btn:RegisterForClicks("AnyDown")
end

make("RaidFlare1", "/cwm 1\n/wm 1")
make("RaidFlare2", "/cwm 2\n/wm 2")
make("RaidFlare3", "/cwm 3\n/wm 3")
make("RaidFlare4", "/cwm 4\n/wm 4")
make("RaidFlare5", "/cwm 5\n/wm 5")
make("RaidFlare5", "/cwm 6\n/wm 6")
make("RaidFlare5", "/cwm 7\n/wm 7")
make("RaidFlare5", "/cwm 8\n/wm 8")

make("ClearRaidFlares", "/cwm all")

