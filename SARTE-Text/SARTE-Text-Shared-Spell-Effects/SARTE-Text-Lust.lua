local isTbcWowOrAbove = select(4, GetBuildInfo()) > 11403

if isTbcWowOrAbove then
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
      if self and unit == "player" and SpellTableLust[SDT_GetEnglishName(spellName)] and SARTESPELLDB["Shared_Shaman_spells"]["Lust"] == true then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                  CombatText_AddMessage(L["msg_Lust"], CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)
end