local L = ASCT_LOCALE_TABLE
local isDFWow = (LE_EXPANSION_LEVEL_CURRENT >= LE_EXPANSION_DRAGONFLIGHT)
local msg = {
	L["Unsupported_Line_1"],
	L["Unsupported_Line_2"],


	L["Unsupported_Line_3"],
	L["Unsupported_Line_4"],
};
if isDFWow then
StaticPopupDialogs["UNSUPPORTED_GAME_VERSION"] = {
	text = "\124cnPURE_RED_COLOR:"..msg[1].."\124r".. "\n\n" ..msg[2].. "\n\n" .. msg[3].. "\n\n" .. msg[4],
	button1 = L["Disable"],
	button2 = L["Keep Enabled"],
	OnAccept = function()
		C_AddOns.DisableAddOn("Advanced_Scrolling_Combat_Text")
		ReloadUI()
	  end,
	timeout = 0,
	hideOnEscape = false,
}
elseif not isDFWow then
StaticPopupDialogs["UNSUPPORTED_GAME_VERSION"] = {
	text = "\124cFFFF0000"..msg[1].."\124r".. "\n\n" ..msg[2].. "\n\n" .. msg[3].. "\n\n" .. msg[4],
	button1 = L["Disable"],
	button2 = L["Keep Enabled"],
	OnAccept = function()
		DisableAddOn("Advanced_Scrolling_Combat_Text")
		ReloadUI()
		end,
	timeout = 0,
	hideOnEscape = false,
}
end
StaticPopup_Show("UNSUPPORTED_GAME_VERSION")