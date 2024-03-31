local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isNotMistsWow"] then
local lastStat = -1
local f = ASCT.Frames.SARTE["Frost_Resistance_Frame"]
ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Resistance"]["Frost Resistance"]
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])) then return end
    local base, total, bonus, minus = ASCT.API.Documentation["UnitResistance"]("player", ASCT.Str_Int.Resistance["Frost"])
    local diff = total - lastStat;
    if not lastStat then
      lastStat = total
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Frost Resistance"],  total)
        ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = total
end)
end)
end