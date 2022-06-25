local locale = GetLocale()
local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local is_Classic_Wow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)
local is_TBC_Wow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205

if locale == "ptBR" then
if isRetailWow then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Troll"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableBloodElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Blood Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDranei[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Draenei"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
               local name, _, icon = GetSpellInfo(spellName)
               local msg = format("|T%d:18|t  %s está pronto!", icon, name)
                CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
  
      end
   end
)
elseif is_TBC_Wow then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Troll"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableBloodElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Blood Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDranei[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Draenei"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s está pronto!", icon, name)
                CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)
elseif is_Classic_Wow then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Troll"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s está pronto!", icon, name)
                CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
         
      end
   end
)
elseif isWrathWow then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" and
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Troll"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableBloodElf[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Blood Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDranei[SDT_GetEnglishName(spellName)] and (SARTERACIALSDB["Draenei"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                  local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s está pronto!", icon, name)
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