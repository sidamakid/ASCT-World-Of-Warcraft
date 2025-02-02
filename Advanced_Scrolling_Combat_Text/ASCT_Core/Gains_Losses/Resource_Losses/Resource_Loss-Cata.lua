local ASCT, L = ASCT_Table, ASCT_locale_Table
local Customs, Client, Frames, Functions, Scripts, API, Strings = ASCT.Customs, ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
if Client.LE_EXPANSION_LEVEL["isCataclysmWow"] then
local lastPower = Customs.Vars.Resource_Loss["lastPower"]
local power = Customs.Vars.Resource_Loss["power"]
local f = Frames.SARTE["Resource_Loss_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
  if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
  if select(2, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == "MANA" then
    power = L["Mana"]
  elseif select(2, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == "RAGE" then
    power = L["Rage"]
  elseif select(2, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == "ENERGY" then
    power = L["Energy"]
  elseif select(2, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == "RUNIC_POWER" then
    power = L["Runic Power"]
  end
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
    return
  end
  if API.Documentation["UnitPower"](Strings.UnitId["player"]) + 4 < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - API.Documentation["UnitPower"](Strings.UnitId["player"]), power, API.Documentation["UnitPower"](Strings.UnitId["player"]))
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
  end

  lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
  end
end)
end)
end