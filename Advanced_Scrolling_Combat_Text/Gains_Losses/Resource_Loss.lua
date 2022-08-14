local L = ASDC_LOCALE_TABLE
local lastPower = nil
local power
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function()
  if select(2,UnitPowerType('player')) == "MANA" then
    power = L["Mana"]
  elseif select(2,UnitPowerType('player')) == "RAGE" then
    power = L["Rage"]
  elseif select(2,UnitPowerType('player')) == "ENERGY" then
    power = L["Energy"]
  elseif select(2,UnitPowerType('player')) == "RUNIC_POWER" then
    power = L["Runic Power"]
  end
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = UnitPower('player')
    return
  end
  if Comabt_Text == false then
    return
    end
  if Comabt_Text == true then
  if UnitPower('player') + 4 < lastPower then
    CombatText_AddMessage(format("-%d".." "..power.." ".."(%d)", lastPower - UnitPower('player'), UnitPower("player")), CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
  end

  lastPower = UnitPower('player')
  end
  end
end)