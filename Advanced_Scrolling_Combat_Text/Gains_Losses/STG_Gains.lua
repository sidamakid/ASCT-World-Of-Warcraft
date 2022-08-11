local L = ASDC_LOCALE_TABLE
local lastStrength = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Strength"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Strength"].Gains == true then
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Comabt_Text == false then
    return
  end
  if Comabt_Text == true then
  local stat, effectiveStat, posBuff, negBuff = UnitStat("player", 1)
  if not lastStrength then
    lastStrength = effectiveStat
    return
  end
  if effectiveStat > lastStrength then
    CombatText_AddMessage(format("+%d".." "..L["Strength"].." ".."(%d)", effectiveStat - lastStrength, effectiveStat), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastStrength = effectiveStat
end
end
end)