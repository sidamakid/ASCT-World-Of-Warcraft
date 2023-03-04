local L = ASDC_LOCALE_TABLE
local isDFWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_DRAGONFLIGHT)
local msg = {
	L["Unsupported_Line_1"],
	L["Unsupported_Line_2"],

	L["Unsupported_Line_3"],
	L["Unsupported_Line_4"],
	L["Unsupported_Line_5"],
};
if isDFWow then
StaticPopupDialogs["UNSUPPORTED_GAME_VERSION"] = {
	text = "\124cnPURE_RED_COLOR:"..msg[5].."\124r".. "\n\n" ..msg[1].. "\n\n" .. msg[2].. "\n\n" .. msg[3].. "\n\n" .. msg[4],
	button1 = L["Disable"],
	button2 = L["Keep Enabled"],
	OnAccept = function()
		DisableAddOn("Advanced_Scrolling_Combat_Text")
		DisableAddOn("Advanced_Scrolling_Combat_Text_Localize")
		DisableAddOn("Advanced_Scrolling_Combat_Text_Options")
		ReloadUI()
	  end,
	timeout = 0,
	hideOnEscape = false,
}
elseif not isDFWow then
StaticPopupDialogs["UNSUPPORTED_GAME_VERSION"] = {
	text = "\124cFFFF0000"..msg[5].."\124r".. "\n\n" ..msg[1].. "\n\n" .. msg[2].. "\n\n" .. msg[3].. "\n\n" .. msg[4],
	button1 = L["Disable"],
	button2 = L["Keep Enabled"],
	OnAccept = function()
		DisableAddOn("Advanced_Scrolling_Combat_Text")
		DisableAddOn("Advanced_Scrolling_Combat_Text_Localize")
		DisableAddOn("Advanced_Scrolling_Combat_Text_Options")
		ReloadUI()
		end,
	timeout = 0,
	hideOnEscape = false,
}
end
StaticPopup_Show("UNSUPPORTED_GAME_VERSION")