local L = ASDC_LOCALE_TABLE
local f = CreateFrame("Frame")
f:RegisterEvent("DUEL_REQUESTED")
f:SetScript("OnEvent", function (self, event, playerName)
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Duel Requests"] == true then
    CombatText_AddMessage(playerName.." "..L["Has challenged you to a duel."], CombatText_StandardScroll, 0.3, 0.5, 0.9)
    end
    end
end)