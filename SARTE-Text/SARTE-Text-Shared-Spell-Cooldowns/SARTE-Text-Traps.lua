local locale = GetLocale
if locale == "enUS" then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
f:SetScript("OnEvent", --Run when our event fires
   function(self, event, unit, _, spellName)
    local spellName = GetSpellInfo(spellName)
      if unit == "player" and SpellTableHunterTraps[spellName] and SARTESPELLDB["Beast Mastery"]["Traps"] == true
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                CombatText_AddMessage("Traps are now ready!", CombatText_StandardScroll, 1, 1, 0);
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )

      end
   end
)
end