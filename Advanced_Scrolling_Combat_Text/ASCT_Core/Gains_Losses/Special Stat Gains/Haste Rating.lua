local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if L_Version_Check_Keys["isWrathWow"] then
local lastStat = -1
local f = L_ASCT_Frames["Haste_Rating_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
L_ASCT_Handlers["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Haste Rating"]
    local HitChance = GetCombatRating(18)
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local currentStat = HitChance
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Haste Rating"],  currentStat)
        L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
    lastStat = currentStat
end)
end)
end