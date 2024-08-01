local L = ASCT_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--French
-------------------------------------
if locale == "frFR" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "Advanced Scrolling Combat Text non chargé!";
    L["Unsupported_Line_2"] = "Vous utilisez Advanced Scrolling Combat Text dans une version de jeu non prise en charge.";
    L["Unsupported_Line_3"] = "L’addon ne fonctionne pas sur les serveurs privés et n’est pris en charge que sur les serveurs officiels de Blizzard.";
    L["Unsupported_Line_4"] = "Souhaitez-vous désactiver l’addon ? Ou le garder activé ?";
    L["Keep Enabled"] = "Rester activé";
    L["Disable"] = "Désactiver";
end