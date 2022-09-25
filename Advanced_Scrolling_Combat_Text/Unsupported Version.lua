local L = ASDC_LOCALE_TABLE
local msg = {
	L["Unsupported_Line_1"],
	L["Unsupported_Line_2"],

	L["Unsupported_Line_3"],
	L["Unsupported_Line_4"],
};
StaticPopupDialogs["UNSUPPORTED_GAME_VERSION"] = {
	text = msg[1].. "\n\n" .. msg[2].. "\n\n" .. msg[3].. "\n\n" .. msg[4],
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
StaticPopup_Show("UNSUPPORTED_GAME_VERSION")