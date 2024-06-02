local ASCT, L_ASCT_Frames, L = ASCT_Table, ASCT_Frames_Table, ASDC_LOCALE_TABLE
local UnitAura = ASCT.API.Documentation["_G.UnitAura"]
local UnitDebuff = ASCT.API.Documentation["_G.UnitDebuff"]

if ASCT.Client["isVanillaWow"] then
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
  local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"]["Fading DeBuffs"] == true and Comabt_Text == true then
  for i = 1, 40 do
    local name, icon, count, dispelType, duration, expirationTime, source = UnitDebuff(ASCT.Strings.UnitId["target"], i)
    if source == ASCT.Strings.UnitId["player"] then
      if not name then
        return
      end
      if duration <= ASCT_DB["Integer_Values"].Debuff_time then
        return
      end
      local remainingTime = expirationTime - ASCT.API.Documentation["GetTime"]()
      if remainingTime < ASCT_DB["Integer_Values"].Debuff_time then
        if not debuffsTrigggered[name] then
          local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .. " " .. "%s" .. " " .. L["Is About to Fade!"], icon, name)
          ASCT.Functions["CombatText_AddMessage_Yellow"](Message)
          debuffsTrigggered[name] = true
        end
      else
        debuffsTrigggered[name] = false
      end
    end
  end
end
end

local f = ASCT.Frames.SARTE["Aura_Frame"]
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() ASCT.Scripts.Frame["OnUpdate"](f, onUpdate) end)