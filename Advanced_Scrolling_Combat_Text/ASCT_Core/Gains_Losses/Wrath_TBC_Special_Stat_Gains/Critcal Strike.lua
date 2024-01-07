local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] then
local lastStat = -1
local f = L_ASCT_Frames["Critical_Strike_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
L_ASCT_Handlers["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Critical Strike Rating"]
    local CritChance = GetCombatRating(CR_CRIT_MELEE)
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])) then return end
    local currentStat = CritChance
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Critical Strike Rating"],  currentStat)
        L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)
end