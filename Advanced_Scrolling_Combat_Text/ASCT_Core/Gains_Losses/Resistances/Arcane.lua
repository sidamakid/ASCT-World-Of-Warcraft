local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isNotMistsWow"] then
local lastStat = -1
local f = L_ASCT_Frames["Arcane_Resistance_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
L_ASCT_Handlers["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Arcane Resistance"]
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])) then return end
    local base, total, bonus, minus = UnitResistance("player", 6)
    local diff = total - lastStat;
    if not lastStat then
      lastStat = total
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Arcane Resistance"],  total)
        L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
    lastStat = total
end)
end)
end