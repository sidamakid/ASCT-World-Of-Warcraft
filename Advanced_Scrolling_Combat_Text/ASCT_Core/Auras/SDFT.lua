local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Client, API, Strings, Frames, Functions, Scripts = Keys.Metatables["Client"], Keys.Metatables["API"], Keys.Metatables["Strings"], Keys.Metatables["Frames"], Keys.Metatables["Functions"], Keys.Metatables["Scripts"]

if not Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
  local UnitAura = API.Documentation["_G.UnitAura"]
  local UnitDebuff = API.Documentation["_G.UnitDebuff"]

  if Client.LE_EXPANSION_LEVEL["isVanillaWow"] then
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
              local msg = Lua_API.String["string.format"]("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t " .. " " .. "%s" .. " " .. L["Is About to Fade!"], icon, name)
              Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
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
  Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() Scripts.Frame["OnUpdate"](f, onUpdate) end)
elseif Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
  local debuffsTriggered = {}

  local function onUpdate()
    -- Check if Floating Combat Text is enabled
    local Combat_Text = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"]["Fading DeBuffs"] == true and Combat_Text == true then
        for i = 1, 40 do
          -- Use C_UnitAuras.GetAuraDataByIndex to retrieve debuff data
          local auraData = API.Documentation["C_UnitAuras.GetAuraDataByIndex"]("target", i, "HARMFUL")
          if auraData then
            local name = auraData.name
            local icon = auraData.icon
            local duration = auraData.duration
            local expirationTime = auraData.expirationTime
            local source = auraData.sourceUnit

            if source == Strings.UnitId["player"] then
                if not name then
                    return
                end
                -- Calculate remaining time
                local remainingTime = expirationTime - API.Documentation["GetTime"]()
                if remainingTime < ASCT_DB["Integer_Values"].Debuff_time then
                    if not debuffsTriggered[name] then
                      -- Format and display the message
                      local msg = Lua_API.String["string.format"]("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t ".." ".. "%s" .." " .. L["Is About to Fade!"], icon, name)
                      Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
                      debuffsTriggered[name] = true
                    end
                else
                    debuffsTriggered[name] = false
                end
            end
          end
        end
    end
  end

  -- Initialize the frame
  local f = Frames.SARTE["Aura_Frame"]
  Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
      Scripts.Frame["OnUpdate"](f, onUpdate)
  end)
end