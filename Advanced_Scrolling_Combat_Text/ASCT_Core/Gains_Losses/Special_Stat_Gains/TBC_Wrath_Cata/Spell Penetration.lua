local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] or ASCT.Client["isCataclysmWow"] then
local lastStat = -1
local f = ASCT.Frames.SARTE["Spell_Pen_Frame"]
ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
ASCT.Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Spell Penetration"]
    local Spell_Penetration = ASCT.API.Documentation["GetSpellPenetration"]()
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])) then return end
    local currentStat = Spell_Penetration
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Spell Penetration"],  currentStat)
        ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)
end