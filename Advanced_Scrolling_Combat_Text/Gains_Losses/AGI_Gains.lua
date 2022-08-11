local L = ASDC_LOCALE_TABLE
local lastAgility = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Agility"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Agility"].Gains == true then
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Comabt_Text == false then
    return
  end
  if Comabt_Text == true then
  local stat, effectiveStat, posBuff, negBuff = UnitStat("player", 2)
  if not lastAgility then
    lastAgility = effectiveStat
    return
  end
  if effectiveStat > lastAgility then
    CombatText_AddMessage(format("+%d".." "..L["Agility"].." ".."(%d)", effectiveStat - lastAgility, effectiveStat), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastAgility = effectiveStat
end
end
end)