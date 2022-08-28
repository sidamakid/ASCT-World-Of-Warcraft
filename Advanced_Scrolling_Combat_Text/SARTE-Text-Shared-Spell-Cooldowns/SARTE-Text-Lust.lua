local is_TBC_Or_Above = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING)
if is_TBC_Or_Above then
local class_Check = select(3, UnitClass("player"))
if class_Check == 7 then
local L = ASDC_LOCALE_TABLE
local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableShamanLust = {
["Heroism"] = "Heroism",
["Bloodlust"] = "Bloodlust",
}

local f = CreateFrame"Frame" --Make our frame
ASCT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
       if SpellTableShamanLust[ASCT_GetEnglishName(spellName)] and Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"]["Lust"] == true then
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
               CombatText_AddMessage(L["msg_Lust"], CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
               spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
               end
            end
         )
         
   end
   end
   end
)
end
end