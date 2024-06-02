local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--German
-------------------------------------
if locale == "deDE" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "Advanced Scrolling Combat Text nicht geladen!";
    L["Unsupported_Line_2"] = "Du führst Advanced Scrolling Combat Text in einer Spielversion aus, die nicht unterstützt wird.";
    L["Unsupported_Line_3"] = "Das Addon funktioniert nicht auf privaten Servern und wird nur auf offiziellen Blizzard-Servern unterstützt.";
    L["Unsupported_Line_4"] = "Möchten Sie das Addon deaktivieren? Oder es aktiviert lassen?";
    L["Keep Enabled"] = "Aktiviert lassen";
    L["Disable"] = "Abschalten";
end