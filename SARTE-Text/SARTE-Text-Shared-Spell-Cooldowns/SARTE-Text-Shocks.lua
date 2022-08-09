local isClassic_TBC_Wrath = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_NORTHREND)
if isClassic_TBC_Wrath then
local class_Check = select(3, UnitClass("player"))
if class_Check == 7 then
local L = SARTE_LOCALE_TABLE
local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
       if unit == "player" and SpellTable_Shaman_Shocks[SDT_GetEnglishName(spellName)] and SARTESPELLDB["Shared_Shaman_spells"]["Shocks"] == true then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
               local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
               if Comabt_Text == false then
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
               CombatText_AddMessage(L["msg_Shocks"], CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
               spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
               end
            end
         )
         
      end
   end
)
end
end