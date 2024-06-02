local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--English
-------------------------------------
if locale == "enUS" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "Advanced Scrolling Combat Text not loaded!";
    L["Unsupported_Line_2"] = "You're running Advanced Scrolling Combat Text in an unsupported game version.";
    L["Unsupported_Line_3"] = "The addon does not work on Private Servers and is only supported on Official Blizzard Servers.";
    L["Unsupported_Line_4"] = "Would you like to disable the addon? Or keep it enabled?";
    L["Keep Enabled"] = "Keep Enabled";
    L["Disable"] = "Disable";
end