local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Chinese Simplifed
-------------------------------------
if locale == "zhCN" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "高级滚动战斗文本未加载！";
    L["Unsupported_Line_2"] = "您正在不受支持的游戏版本中运行高级滚动战斗文本。";
    L["Unsupported_Line_3"] = "该插件不适用于私人服务器，仅在暴雪官方服务器上受支持。";
    L["Unsupported_Line_4"] = "是否要禁用插件？还是保持启用状态？";
    L["Keep Enabled"] = "保持启用状态";
    L["Disable"] = "禁用";
end