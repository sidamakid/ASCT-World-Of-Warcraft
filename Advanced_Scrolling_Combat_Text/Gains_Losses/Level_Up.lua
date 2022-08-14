local L = ASDC_LOCALE_TABLE
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LEVEL_UP")
f:SetScript("OnEvent", function()
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Level up message"] == true then
    CombatText_AddMessage(format(L["Congratulations"].."".."%s,"..""..L["you are now level"].." ".."%d", UnitName("player"), UnitLevel("player")), CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
    end
end
end)