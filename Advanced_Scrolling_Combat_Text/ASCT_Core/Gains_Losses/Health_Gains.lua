local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local lastStat = -1
local f = ASCT.Frames.SARTE["Health_Frame"]
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Health"]
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])) then return end
    local currentStat = ASCT.API.Documentation["UnitHealthMax"](ASCT.Strings.UnitId["player"])
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Health"],  currentStat)
        ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)