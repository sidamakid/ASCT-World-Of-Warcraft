local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Lua_ASCT, Client, Frames, Functions, Scripts, API, Strings, Str_Int = ASCT.Lua_ASCT, ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Str_Int
if Client.LE_EXPANSION_LEVEL["isDragonFlightWow"] then
local lastPower = Lua_ASCT.SARTE.Variables.Resource_Loss["lastPower"]
local power = Lua_ASCT.SARTE.Variables.Resource_Loss["power"]
local f = Frames.SARTE["Resource_Loss_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
  if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
  if Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Mana"] then
    power = L["Mana"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Rage"] then
    power = L["Rage"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Focus"] then
    power = L["Focus"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Energy"] then
    power = L["Energy"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["RunicPower"] then
    power = L["Runic Power"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["LunarPower"] then
    power = L["Lunar Power"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["HolyPower"] then
    power = L["Holy Power"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Maelstrom"] then
    power = L["Maelstrom"]
  --elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Chi"] then
  --  power = L["Chi"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Insanity"] then
    power = L["Insanity"]
  elseif Lua_API.Functions["Select"](1, API.Documentation["UnitPowerType"](Strings.UnitId["player"])) == Str_Int.PowerType["Fury"] then
    power = L["Fury"]
  end
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
    return
  end
  if API.Documentation["UnitPower"](Strings.UnitId["player"]) + ASCT_DB["Integer_Values"]["Minimum_Resource_Cost"] < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - API.Documentation["UnitPower"](Strings.UnitId["player"]), power, API.Documentation["UnitPower"](Strings.UnitId["player"]))
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
  end
  lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
  end
end)
end)
end