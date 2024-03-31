local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] then
local lastStat = -1
local f = ASCT.Frames.SARTE["Resilience_Frame"]
ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Resilience Rating"]
    local Resilience = ASCT.API.Documentation["GetCombatRating"](ASCT.Str_Int.CR["CR_RESILIENCE_CRIT_TAKEN"])
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])) then return end
    local currentStat = Resilience
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Resilience Rating"],  currentStat)
        ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)
end