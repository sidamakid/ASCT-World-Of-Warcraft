local ASCT = ASCT_Table
local Client, Frames, Functions, Scripts, API, Strings = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
if Client.LE_EXPANSION_LEVEL["isWrathWowOrAbove"] then
local f = Frames.SARTE["Achievement_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function(self, event, achievementID, alreadyEarned)
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Achievement Gains"] == true then
    local _, name, _, _, _, _, _, _, _, icon = API.Documentation["GetAchievementInfo"](achievementID)
    local msg = string.format("|T%d:18|t ".." ".."%s", icon, name)
    Functions.CombatText["CombatText_AddMessage_Yellow"](msg)
    end
end)
end)
end