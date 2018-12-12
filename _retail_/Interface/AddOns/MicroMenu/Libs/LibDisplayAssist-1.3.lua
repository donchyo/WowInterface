local LIB, REVISION = "LibDisplayAssist-1.3", 4
if not (LibStub and LibStub('CallbackHandler-1.0', true)) then
	error(LIB .. " requires LibStub and CallbackHandler-1.0", 0)
end

local lib, oldRevision = LibStub:NewLibrary(LIB, REVISION)
if not lib then return end

--[[----------------------------------------------------------------------------
Version bridge
------------------------------------------------------------------------------]]
local frame, CBH

if oldRevision then
	frame, CBH = lib.__void()
else
	frame = CreateFrame('Frame', nil, UIParent)									-- Must use UIParent for uiscale changes
	frame:SetAllPoints()
	CBH = LibStub('CallbackHandler-1.0'):New(frame, nil, nil, false)
end

--[[----------------------------------------------------------------------------
Detect UIParent size changes and process callbacks
------------------------------------------------------------------------------]]
frame:SetScript('OnEvent', function(self, event)
	self:UnregisterEvent(event)

	self:SetScript('OnEvent', function(self)
		local width, height = UIParent:GetSize()
		CBH:Fire('PLAYER_LOGOUT', width, height, lib.GetResolutionInfo())
	end)
	self:RegisterEvent('PLAYER_LOGOUT')

	self:SetScript('OnSizeChanged', function(self, width, height)
		CBH:Fire('OnSizeChanged', width, height, lib.GetResolutionInfo())
	end)

	local width, height = UIParent:GetSize()
	CBH:Fire('OnSizeChanged', width, height, lib.GetResolutionInfo())
end)
frame:RegisterEvent('VARIABLES_LOADED')

--[[----------------------------------------------------------------------------
LIB.AnchorPoints

The anchor points used for frames, as a dictionary.
------------------------------------------------------------------------------]]
if type(lib.AnchorPoints) ~= 'table' then
	lib.AnchorPoints = {
		BOTTOM = 'BOTTOM', BOTTOMLEFT = 'BOTTOMLEFT', BOTTOMRIGHT = 'BOTTOMRIGHT',
		CENTER = 'CENTER', LEFT = 'LEFT', RIGHT = 'RIGHT',
		TOP = 'TOP', TOPLEFT = 'TOPLEFT', TOPRIGHT = 'TOPRIGHT'
	}
end

--[[----------------------------------------------------------------------------
LIB.StrataLayers

The non-tooltip strata layers generally used by addons, as an array, from lowest
to highest.
------------------------------------------------------------------------------]]
if type(lib.StrataLayers) ~= 'table' then
	lib.StrataLayers = {
		'BACKGROUND', 'LOW', 'MEDIUM', 'HIGH', 'DIALOG', 'FULLSCREEN', 'FULLSCREEN_DIALOG'
	}
end

--[[----------------------------------------------------------------------------

LIB.GetResolutionInfo(res)

	Take a string representing a screen resolution and break it down into useful
	information.

Input:

	res			(string) 	The resolution to break down, or nil to use the
							current resolution.  Example: 1024x768

Returns:

	width		(number)	The resolution width.

	height		(number)	The resolution height.

	isWide		(boolean)	Whether or not the resolution is wide-screen.

------------------------------------------------------------------------------]]
function lib.GetResolutionInfo(resolution)
	if resolution == nil then
		local monitorIndex = (tonumber(GetCVar('gxMonitor')) or 0) + 1
		local currentResolution = tonumber(GetCurrentResolution(monitorIndex))
		if currentResolution and currentResolution > 0 then
			resolution = select(currentResolution, GetScreenResolutions(monitorIndex))
		else
			resolution = "1024x768"
		end
	end
	if type(resolution) ~= 'string' then
		error(("bad argument #%d to %q (%s expected, got %s)"):format(1, "GetResolutionInfo", 'string', type(resolution)), 2)
	end
	local width, height = resolution:match("(%d+)x(%d+)")
	width, height = tonumber(width), tonumber(height)
	if not (width and height) then
		error(("bad argument #%d to %q (%s)"):format(1, "GetResolutionInfo", "improper format"), 2)
	end
	return width, height, height / width < 0.75
end

--[[----------------------------------------------------------------------------

LIB.Register(nameSpace, func [, arg])

	Register for a callback when UIParent's size changes.

Input:

	nameSpace	(table)		The addon that will be receiving the callback.

	func		(function)	A function reference or method name within nameSpace.
				(string)

	arg			(any)		An optional arguement to pass during the callback.

------------------------------------------------------------------------------]]
function lib.Register(nameSpace, ...)
	frame.RegisterCallback(nameSpace, 'OnSizeChanged', ...)
end

--[[----------------------------------------------------------------------------

LIB.RegisterLogout(nameSpace, func [, arg])

	Register for a callback when the PLAYER_LOGOUT event fires to save frame
	positions.

Input:

	nameSpace	(table)		The addon that will be receiving the callback.

	func		(function)	A function reference or method name within nameSpace.
				(string)

	arg			(any)		An optional arguement to pass during the callback.

------------------------------------------------------------------------------]]
function lib.RegisterLogout(nameSpace, ...)
	frame.RegisterCallback(nameSpace, 'PLAYER_LOGOUT', ...)
end

--[[----------------------------------------------------------------------------

LIB.Unregister(nameSpace)

	Unregister for a callback when UIParent's size changes.

Input:

	nameSpace	(table)		The addon that was receiving the callback.

------------------------------------------------------------------------------]]
function lib.Unregister(nameSpace)
	frame.UnregisterCallback(nameSpace, 'OnSizeChanged')
end

--[[----------------------------------------------------------------------------

LIB.UnregisterLogout(nameSpace)

	Unregister for a callback when the PLAYER_LOGOUT event fires.

Input:

	nameSpace	(table)		The addon that was receiving the callback.

------------------------------------------------------------------------------]]
function lib.UnregisterLogout(nameSpace)
	frame.UnregisterCallback(nameSpace, 'PLAYER_LOGOUT')
end

--[[----------------------------------------------------------------------------
Private API
------------------------------------------------------------------------------]]
function lib.__void()
	wipe(lib)
	return frame, CBH
end
