local locale = GetLocale()
local is_Classic_Wow = select(4, GetBuildInfo()) < 20504
if locale == "enUS" then
if is_Classic_Wow then
local SARTE_Race = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableRacials[SDT_GetEnglishName(spellName)] and ((SARTERACIALSDB["Orc"][SDT_GetEnglishName(spellName)] == true) or (SARTERACIALSDB["Troll"][SDT_GetEnglishName(spellName)] == true)) or ((SARTERACIALSDB["Tauren"][SDT_GetEnglishName(spellName)] == true)) or
      ((SARTERACIALSDB["Undead"][SDT_GetEnglishName(spellName)] == true) or (SARTERACIALSDB["Human"][SDT_GetEnglishName(spellName)] == true)) or
      ((SARTERACIALSDB["Night Elf"][SDT_GetEnglishName(spellName)] == true))
      or ((SARTERACIALSDB["Gnome"][SDT_GetEnglishName(spellName)] == true)) or ((SARTERACIALSDB["Dwarf"][SDT_GetEnglishName(spellName)] == true))
      then
         local spellFrame = _G[SARTE_Race..spellName] or CreateFrame("Frame", SARTE_Race..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
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
end
end