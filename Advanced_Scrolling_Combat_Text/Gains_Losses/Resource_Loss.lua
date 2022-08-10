local L = ASDC_LOCALE_TABLE
local lastPower = nil
local power
if select(2,UnitPowerType('player')) == "MANA" then
  power = L["Mana"]
elseif select(2,UnitPowerType('player')) == "RAGE" then
 power = L["Rage"]
elseif select(2,UnitPowerType('player')) == "ENERGY" then
  power = L["Energy"]
elseif select(2,UnitPowerType('player')) == "RUNIC_POWER" then
  power = L["Runic Power"]
end
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
f:SetScript("OnEvent", function()
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text"]["Resource lost"] == true then
  if not lastPower then
    lastPower = UnitPower('player')
    return
  end

  if UnitPower('player') + 4 < lastPower then
    CombatText_AddMessage("-"..lastPower - UnitPower('player').." "..power, CombatText_StandardScroll, 0.1, 0.1, 1 )
  end

  lastPower = UnitPower('player')
end
end)