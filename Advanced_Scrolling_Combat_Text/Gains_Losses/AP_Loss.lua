local L = ASDC_LOCALE_TABLE
local lastAttackPower = 0
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"].Lost == true then
    local base, posBuff, negBuff = UnitAttackPower("player")
    if posBuff < lastAttackPower then
        CombatText_AddMessage( format("%d".." "..L["Attack Power"].." ".."(%d)", posBuff - lastAttackPower, posBuff + base), CombatText_StandardScroll, 0.1, 0.1, 1 )
    end
    lastAttackPower = posBuff
end
end
end)
