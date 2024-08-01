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
  local CP_One_Rupture = 8
  local CP_Two_Rupture = 10
  local CP_Three_Rupture = 12
  local CP_Four_Rupture = 14
  local CP_Five_Rupture = 16
  if Comabt_Text == true then
  for i = 1, 40 do
    local name, icon, count, dispelType, duration, expirationTime, source = UnitDebuff(Strings.UnitId["target"], i)
    if source == Strings.UnitId["player"] then
      if not name then
        return
      end
      local remainingTime = expirationTime - API.Documentation["GetTime"]()
      --[[
      local Number_Or_Word_1
      local Number_Or_Word_2
      local Number_Or_Word_3
      local Number_Or_Word_4
      local Number_Or_Word_5
      if ASCT_DB["Number_Or_Word"]["Number"] then
        Number_Or_Word_1 = L["<1 Combo Point>"]
        Number_Or_Word_2 = L["<2 Combo Point>"]
        Number_Or_Word_3 = L["<3 Combo Point>"]
        Number_Or_Word_4 = L["<4 Combo Point>"]
        Number_Or_Word_5 = L["<5 Combo Point>"]
      end
      ]]

      local Glyph_Of_Rupture = C_SpellBook.GetSpellLinkFromSpellID(56801)
      if Glyph_Of_Rupture then
        if remainingTime == 12 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<1 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 14 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<2 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 16 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<3 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 18 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<4 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 20 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<5 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
      elseif not Glyph_Of_Rupture then
        if remainingTime == 8 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<1 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 10 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<2 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 12 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<3 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 14 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<4 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        elseif remainingTime == 16 then
          if not debuffsTrigggered[name] then
            local Message = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .." "..L["<5 Combo Point>"].. " " .. "%s" .. " ", icon, name)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](Message)
            debuffsTrigggered[name] = true
          end
        else
          debuffsTrigggered[name] = false
        end
      else
        debuffsTrigggered[name] = false
      end
    end
    end
  end
end
end

local f = Frames.SARTE["CP_Rupture_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() ASCT.Scripts.Frame["OnUpdate"](f, onUpdate) end)