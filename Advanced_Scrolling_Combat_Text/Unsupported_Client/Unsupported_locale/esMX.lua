local L = ASCT_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Spanish (Mexico)
-------------------------------------
if locale == "esMX" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "¡El texto de combate de desplazamiento avanzado no está cargado!";
    L["Unsupported_Line_2"] = "Estás ejecutando texto de combate de desplazamiento avanzado en una versión de juego no compatible.";
    L["Unsupported_Line_3"] = "El complemento no funciona en servidores privados y solo es compatible con los servidores oficiales de Blizzard.";
    L["Unsupported_Line_4"] = "¿Te gustaría desactivar el complemento? ¿O mantenerlo habilitado?";
    L["Keep Enabled"] = "Mantener habilitado";
    L["Disable"] = "Inutilizar";
end