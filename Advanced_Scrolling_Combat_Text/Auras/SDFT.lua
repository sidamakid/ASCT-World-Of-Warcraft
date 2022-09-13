local isClassicWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_CLASSIC)
local L = ASDC_LOCALE_TABLE
local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
local UnitAura = _G.UnitAura
local UnitDebuff = _G.UnitDebuff

if isClassicWow then
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
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Auras"]["Fading DeBuffs"] == true and Comabt_Text == true then
  for i = 1, 40 do
    local name, icon, count, dispelType, duration, expirationTime, source = UnitDebuff("target", i)
    if source == "player" then
      if not name then
        return
      end
      if duration <= 5 then
        return
      end
      local remainingTime = expirationTime - GetTime()
      if remainingTime < 5 then
        if not debuffsTrigggered[name] then
          local msg = string.format("|T%d:18|t " .. " " .. "%s" .. " " .. L["Is About to Fade!"], icon, name)
          CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
          debuffsTrigggered[name] = true
        end
      else
        debuffsTrigggered[name] = false
      end
    end
  end
end
end

local f = CreateFrame("Frame")
f:SetScript("OnUpdate", onUpdate)
