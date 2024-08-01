local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local lastStat = -1
local f = Frames.SARTE["Health_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Health"]
    if not (stats.StatEnable and API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])) then return end
    local currentStat = API.Documentation["UnitHealthMax"](Strings.UnitId["player"])
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Health"],  currentStat)
        Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)