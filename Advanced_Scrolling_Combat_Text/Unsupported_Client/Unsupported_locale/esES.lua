local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Spanish (Spain)
-------------------------------------
if locale == "esES" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "Estás ejecutando Texto de combate de desplazamiento avanzado en una versión de juego no compatible.";
    L["Unsupported_Line_2"] = "El complemento no funciona en servidores privados.";
    L["Unsupported_Line_3"] = "El complemento solo es compatible con los servidores oficiales de Blizzard.";
    L["Unsupported_Line_4"] = "¿Desea deshabilitar el complemento? ¿O mantenerlo habilitado?";
    L["Unsupported_Line_5"] = "¡El texto de combate de desplazamiento avanzado no está cargado!";
    L["Keep Enabled"] = "Mantener habilitado";
    L["Disable"] = "Inutilizar";
end