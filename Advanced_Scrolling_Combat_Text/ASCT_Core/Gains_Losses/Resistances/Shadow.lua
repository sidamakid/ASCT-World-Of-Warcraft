local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Str_Int = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Str_Int
if Client.LE_EXPANSION_LEVEL["isNotMistsWow"] then
local lastStat = -1
local f = Frames.SARTE["Shadow_Resistance_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Resistance"]["Shadow Resistance"]
    if not (stats.StatEnable and API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])) then return end
    local base, total, bonus, minus = API.Documentation["UnitResistance"](Strings.UnitId["player"], Str_Int.Resistance["Shadow"])
    local diff = total - lastStat;
    if not lastStat then
      lastStat = total
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Shadow Resistance"],  total)
        Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = total
end)
end)
end