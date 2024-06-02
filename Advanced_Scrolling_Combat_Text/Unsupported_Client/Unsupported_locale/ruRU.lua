local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Russian
-------------------------------------
if locale == "ruRU" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "Расширенная прокрутка боевого текста не загружена!";
    L["Unsupported_Line_2"] = "Вы используете Advanced Scrolling Combat Text в неподдерживаемой версии игры.";
    L["Unsupported_Line_3"] = "Аддон не работает на частных серверах и поддерживается только на официальных серверах Blizzard.";
    L["Unsupported_Line_4"] = "Хотите отключить аддон? Или оставить его включенным?";
    L["Keep Enabled"] = "Сохранить включенным";
    L["Disable"] = "Отключить";
end