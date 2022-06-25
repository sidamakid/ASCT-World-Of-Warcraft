local locale = GetLocale()
local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local is_Tbc_Classic_Wow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC) or (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205

if locale == "esMX" then
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
      --Rogue
      SpellTableRogue[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Assassination"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Subtlety"][SDT_GetEnglishName(spellName)] == true)) or
      --Priest
      SpellTablePriest[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Shadow"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Holy"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Discipline"][SDT_GetEnglishName(spellName)] == true)) or
      --Shaman
      SpellTableShaman[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Elemental"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Enhancement"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Shaman_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Warrior
      SpellTableWarrior[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arms"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fury"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Protection_Warrior"][SDT_GetEnglishName(spellName)] == true)) or
      --Warlock
      SpellTableWarlock[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Affliction"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Demonology"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Destruction"][SDT_GetEnglishName(spellName)] == true)) or
      --Paladin
      SpellTablePaladin[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Holy_Paladin"][SDT_GetEnglishName(spellName)] == true) or ( SARTESPELLDB["Protection_Paladin"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Retribution"][SDT_GetEnglishName(spellName)] == true)) or
      --Mage
      SpellTableMage[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arcane"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fire"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Frost_Mage"][SDT_GetEnglishName(spellName)] == true)) or
      --Druid
      SpellTableDruid[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Balance"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Feral_Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Druid_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Hunter
      SpellTableHunter[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Beast Mastery"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Marksmanship"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Survival"][SDT_GetEnglishName(spellName)] == true))
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
               local name, _, icon = GetSpellInfo(spellName)
               local msg = format("|T%d:18|t  %s ya está listo!", icon, name)
                CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
         )
  
      end
   end
)
elseif is_Tbc_Classic_Wow then
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
      --Rogue
      SpellTableRogue[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Assassination"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Subtlety"][SDT_GetEnglishName(spellName)] == true)) or
      --Priest
      SpellTablePriest[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Shadow"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Holy"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Discipline"][SDT_GetEnglishName(spellName)] == true)) or
      --Shaman
      SpellTableShaman[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Elemental"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Enhancement"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Shaman_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Warrior
      SpellTableWarrior[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arms"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fury"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Protection_Warrior"][SDT_GetEnglishName(spellName)] == true)) or
      --Warlock
      SpellTableWarlock[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Affliction"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Demonology"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Destruction"][SDT_GetEnglishName(spellName)] == true)) or
      --Paladin
      SpellTablePaladin[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Holy_Paladin"][SDT_GetEnglishName(spellName)] == true) or ( SARTESPELLDB["Protection_Paladin"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Retribution"][SDT_GetEnglishName(spellName)] == true)) or
      --Mage
      SpellTableMage[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arcane"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fire"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Frost_Mage"][SDT_GetEnglishName(spellName)] == true)) or
      --Druid
      SpellTableDruid[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Balance"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Feral_Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Druid_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Hunter
      SpellTableHunter[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Beast Mastery"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Marksmanship"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Survival"][SDT_GetEnglishName(spellName)] == true))
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s ya está listo!", icon, name)
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
      --Rogue
      SpellTableRogue[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Assassination"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Subtlety"][SDT_GetEnglishName(spellName)] == true)) or
      --Priest
      SpellTablePriest[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Shadow"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Holy"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Discipline"][SDT_GetEnglishName(spellName)] == true)) or
      --Shaman
      SpellTableShaman[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Elemental"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Enhancement"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Shaman_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Warrior
      SpellTableWarrior[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arms"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fury"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Protection_Warrior"][SDT_GetEnglishName(spellName)] == true)) or
      --Warlock
      SpellTableWarlock[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Affliction"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Demonology"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Destruction"][SDT_GetEnglishName(spellName)] == true)) or
      --Paladin
      SpellTablePaladin[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Holy_Paladin"][SDT_GetEnglishName(spellName)] == true) or ( SARTESPELLDB["Protection_Paladin"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Retribution"][SDT_GetEnglishName(spellName)] == true)) or
      --Mage
      SpellTableMage[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Arcane"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Fire"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Frost_Mage"][SDT_GetEnglishName(spellName)] == true)) or
      --Druid
      SpellTableDruid[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Balance"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Feral_Combat"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Druid_Restoration"][SDT_GetEnglishName(spellName)] == true)) or
      --Hunter
      SpellTableHunter[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Beast Mastery"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Marksmanship"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Survival"][SDT_GetEnglishName(spellName)] == true)) or
      --Death_Knight
      SpellTableDeath_Knight[SDT_GetEnglishName(spellName)] and ((SARTESPELLDB["Blood"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Frost_DK"][SDT_GetEnglishName(spellName)] == true) or (SARTESPELLDB["Unholy"][SDT_GetEnglishName(spellName)] == true))
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                  local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s ya está listo!", icon, name)
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