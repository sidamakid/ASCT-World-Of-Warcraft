local L = ASDC_LOCALE_TABLE
local lastArmor = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Comabt_Text == false then
    return
  end
  if Comabt_Text == true then
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Armor"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Armor"].Gains == true then
  local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player") -- MOVED THIS LINE
  if not lastArmor then
    lastArmor = effectiveArmor
    return
  end
  if effectiveArmor > lastArmor then
    CombatText_AddMessage(format("+%d".." "..L["Armor"].." ".."(%d)", effectiveArmor - lastArmor, effectiveArmor), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastArmor = effectiveArmor
end
end
end)