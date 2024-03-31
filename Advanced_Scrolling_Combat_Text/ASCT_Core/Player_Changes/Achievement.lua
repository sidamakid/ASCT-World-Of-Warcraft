local ASCT = ASCT_Table
if ASCT.Client["isWrathWowOrAbove"] then
local f = ASCT.Frames.SARTE["Achievement_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, function(self, event, achievementID, alreadyEarned)
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Achievement Gains"] == true then
    local _, name, _, _, _, _, _, _, _, icon = ASCT.API.Documentation["GetAchievementInfo"](achievementID)
    local msg = string.format("|T%d:18|t ".." ".."%s", icon, name)
    ASCT.Functions["CombatText_AddMessage_Yellow"](msg)
    end
end)
end