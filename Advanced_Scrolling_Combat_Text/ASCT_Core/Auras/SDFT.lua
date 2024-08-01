local ASCT, L = ASCT_Table, ASCT_locale_Table
local API, Strings, Frames, Functions = ASCT.API, ASCT.Strings, ASCT.Frames, ASCT.Functions
local UnitAura = API.Documentation["_G.UnitAura"]
local UnitDebuff = API.Documentation["_G.UnitDebuff"]

if ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] then
local LibClassicDurations = LibStub("LibClassicDurations", true)
if LibClassicDurations then
    LibClassicDurations:Register("Advanced_Scrolling_Combat_Text")
    UnitAura = LibClassicDurations.UnitAuraWrapper
    UnitDebuff = function(unit, index)
      return UnitAura(unit, index, "HARMFUL")
    end
end
end

local debuffsTrigggered = {};
local function onUpdate()
  local Comabt_Text = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"]["Fading DeBuffs"] == true and Comabt_Text == true then
  for i = 1, 40 do
    local name, icon, count, dispelType, duration, expirationTime, source = UnitDebuff(Strings.UnitId["target"], i)
    if source == Strings.UnitId["player"] then
      if not name then
        return
      end
      if duration <= ASCT_DB["Integer_Values"].Debuff_time then
        return
      end
      local remainingTime = expirationTime - API.Documentation["GetTime"]()
      if remainingTime < ASCT_DB["Integer_Values"].Debuff_time then
        if not debuffsTrigggered[name] then
          local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .. " " .. "%s" .. " " .. L["Is About to Fade!"], icon, name)
          Functions.CombatText["CombatText_AddMessage_Yellow"](Message)
          debuffsTrigggered[name] = true
        end
      else
        debuffsTrigggered[name] = false
      end
    end
  end
end
end

local f = Frames.SARTE["Aura_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() ASCT.Scripts.Frame["OnUpdate"](f, onUpdate) end)