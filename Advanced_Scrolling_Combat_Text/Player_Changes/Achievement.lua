local is_Wrath_Retail_WOW = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_NORTHREND) or (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
if is_Wrath_Retail_WOW then
local f = CreateFrame("Frame")
f:RegisterEvent("ACHIEVEMENT_EARNED")
f:SetScript("OnEvent", function(self, event, achievementID, alreadyEarned)
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Achievement Gains"] == true then
    local _, name, _, _, _, _, _, _, _, icon = GetAchievementInfo(achievementID)
    local msg = string.format("|T%d:18|t ".." ".."%s", icon, name)
    CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    end
    end
end)
end