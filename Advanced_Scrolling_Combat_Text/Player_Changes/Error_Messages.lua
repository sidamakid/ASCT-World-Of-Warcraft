local f = CreateFrame("Frame")
f:RegisterEvent("UI_INFO_MESSAGE")
f:RegisterEvent("UI_ERROR_MESSAGE")
f:SetScript("OnEvent", function (self, event, errorType, message)
    local msg
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if message == ERR_MAIL_SENT and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Sent Mail"] == true then
        msg = ERR_MAIL_SENT
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    end
end
end)