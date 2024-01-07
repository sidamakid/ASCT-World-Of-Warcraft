local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local UnitAura = _G.UnitAura
local UnitDebuff = _G.UnitDebuff

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
  local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"]["Fading DeBuffs"] == true and Comabt_Text == true then
  for i = 1, 40 do
    local name, icon, count, dispelType, duration, expirationTime, source = UnitDebuff("target", i)
    if source == "player" then
      if not name then
        return
      end
      if duration <= ASCT_DB["Integer_Values"].Debuff_time then
        return
      end
      local remainingTime = expirationTime - GetTime()
      if remainingTime < ASCT_DB["Integer_Values"].Debuff_time then
        if not debuffsTrigggered[name] then
          local msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .. " " .. "%s" .. " " .. L["Is About to Fade!"], icon, name)
          L_Function_Keys["Combat_Text_Function_Yellow"](msg)
          debuffsTrigggered[name] = true
        end
      else
        debuffsTrigggered[name] = false
      end
    end
  end
end
end

local f = L_ASCT_Frames["Aura_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function() L_ASCT_Handlers["OnUpdate"](f, onUpdate) end)