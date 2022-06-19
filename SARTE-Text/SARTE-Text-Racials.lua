local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableRacials and (SARTESPELLDB["Blood Elf"] and SARTESPELLDB["Blood Elf"][spellName] == true) or (SARTESPELLDB["Orc"] and SARTESPELLDB["Orc"][spellName] == true) or (SARTESPELLDB["Troll"] and SARTESPELLDB["Troll"][spellName] == true) or
      (SARTESPELLDB["Tauren"] and SARTESPELLDB["Tauren"][spellName] == true) or (SARTESPELLDB["Undead"] and SARTESPELLDB["Undead"][spellName] == true) or (SARTESPELLDB["Human"] and SARTESPELLDB["Human"][spellName] == true) or (SARTESPELLDB["Night Elf"] and SARTESPELLDB["Night Elf"][spellName] == true)
      or (SARTESPELLDB["Dranei"] and SARTESPELLDB["Dranei"][spellName] == true) or (SARTESPELLDB["Gnome"] and SARTESPELLDB["Gnome"][spellName] == true) or (SARTESPELLDB["Dwarf"] and SARTESPELLDB["Dwarf"][spellName] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                  local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s is now ready!", icon, name)
                CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)