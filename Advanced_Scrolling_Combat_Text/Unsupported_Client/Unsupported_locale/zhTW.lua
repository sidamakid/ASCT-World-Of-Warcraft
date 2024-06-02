local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Chinese Traditional
-------------------------------------
if locale == "zhTW" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "高級滾動戰鬥文本未載入！";
    L["Unsupported_Line_2"] = "您正在不受支援的遊戲版本中運行高級滾動戰鬥文字。";
    L["Unsupported_Line_3"] = "該外掛程式不適用於私人伺服器，僅在暴雪官方伺服器上受支援。";
    L["Unsupported_Line_4"] = "是否要禁用外掛程式？還是保持啟用狀態？";
    L["Keep Enabled"] = "保持啟用狀態";
    L["Disable"] = "禁用";
end