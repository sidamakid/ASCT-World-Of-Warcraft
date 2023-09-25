local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if L_Version_Check_Keys["isVanillaWow"] then
local lastPower = nil
local power
local f = L_ASCT_Frames["Resource_Loss_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
L_ASCT_Handlers["OnEvent"](f, function()
  if not C_CVar.GetCVarBool("enableFloatingCombatText") then return end
  if select(2,UnitPowerType('player')) == "MANA" then
    power = L["Mana"]
  elseif select(2,UnitPowerType('player')) == "RAGE" then
    power = L["Rage"]
  elseif select(2,UnitPowerType('player')) == "ENERGY" then
    power = L["Energy"]
  end
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = UnitPower('player')
    return
  end
  if UnitPower('player') + 4 < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - UnitPower('player'), power, UnitPower("player"))
    L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
  end

  lastPower = UnitPower('player')
  end
end)
end)
end