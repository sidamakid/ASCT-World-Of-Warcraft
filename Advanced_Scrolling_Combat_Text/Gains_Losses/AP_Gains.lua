local L = ASDC_LOCALE_TABLE
local lastAttackPower = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"].Gains == true then
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Comabt_Text == false then
    return
  end
  if Comabt_Text == true then
  local base, posBuff, negBuff = UnitAttackPower("player") -- MOVED THIS LINE
  if not lastAttackPower then
    lastAttackPower = posBuff
    return
  end
  if posBuff > lastAttackPower then
    CombatText_AddMessage(format("+%d".." "..L["Attack Power"].." ".."(%d)", posBuff - lastAttackPower, posBuff + base), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastAttackPower = posBuff
end
end
end)