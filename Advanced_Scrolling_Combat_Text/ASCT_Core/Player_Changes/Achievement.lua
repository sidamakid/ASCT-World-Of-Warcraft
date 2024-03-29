local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table
if ASCT.Client["isWrathWowOrAbove"] then
local f = L_ASCT_Frames["Achievement_Frame"]
L_ASCT_Handlers["OnEvent"](f, function(self, event, achievementID, alreadyEarned)
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Achievement Gains"] == true then
    local _, name, _, _, _, _, _, _, _, icon = GetAchievementInfo(achievementID)
    local msg = string.format("|T%d:18|t ".." ".."%s", icon, name)
    L_Function_Keys["Combat_Text_Function_Yellow"](msg)
    end
end)
end