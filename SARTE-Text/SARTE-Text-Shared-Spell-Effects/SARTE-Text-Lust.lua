local isTbcWowOrAbove = select(4, GetBuildInfo()) > 11403

if isTbcWowOrAbove then
local L_Is_Now_Ready = SARTE_Ready_Text_Localization_My_Localization_Table
local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
   function(self, event, unit, _, spellID)
      if unit == "player" and SpellTableLust[spellID] and SARTESPELLDB["Shared_Shaman_spells"]["Lust"] == true then
         local spellName = GetSpellInfo(spellID)
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellID) --Grab the needed time data
               if start == 0 then
                  CombatText_AddMessage(L_Is_Now_Ready["msg_Lust"], CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)
end