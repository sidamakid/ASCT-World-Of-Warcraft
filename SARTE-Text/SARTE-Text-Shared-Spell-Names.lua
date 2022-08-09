local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
f:SetScript("OnEvent", --Run when our event fires
   function(self, event, unit, _, spellID)
      if unit == "player" and SpellTable_Shaman_Shocks[spellID] and SARTESPELLDB["Shared_Shaman_spells"]["Shocks"] == true then
         local spellName = GetSpellInfo(spellID)
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellID) --Grab the needed time data
               if start == 0 then
                  CombatText_AddMessage("Shocks are now Ready!", CombatText_StandardScroll, SARTESPELLDB["Colors"].r, SARTESPELLDB["Colors"].g, SARTESPELLDB.b["Colors"], SARTESPELLDB["Colors"].a)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)