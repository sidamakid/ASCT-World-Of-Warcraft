local ASCT, L_ASCT_Locale_Spells, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Spell_Locale_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isDragonFlightWow"] then
   local SARTE = ... --This assigns the name of the addon to SARTE
   local start, duration --nil vars used later
   ---------------------------
   --L_Function_Keys frame for our frame
   ---------------------------
   local f = L_ASCT_Frames["SARTE-Text-Racials_Frame"]
   L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
   L_ASCT_Handlers["OnEvent"](f, --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
      local Spell_Localize = L_ASCT_Locale_Spells["ASCT_GetEnglishName"](spellName)
      local db_Human = ASCT_DB["Human"][Spell_Localize]
      local db_Dwarf = ASCT_DB["Dwarf"][Spell_Localize]
      local db_Gnome = ASCT_DB["Gnome"][Spell_Localize]
      local db_Undead = ASCT_DB["Undead"][Spell_Localize]
      local db_Night_Elf = ASCT_DB["Night Elf"][Spell_Localize]
      local db_Orc = ASCT_DB["Orc"][Spell_Localize]
      local db_Tauren = ASCT_DB["Tauren"][Spell_Localize]
      local db_Troll = ASCT_DB["Troll"][Spell_Localize]
      local db_Blood_Elf = ASCT_DB["Blood Elf"][Spell_Localize]
      local db_Draenei = ASCT_DB["Draenei"][Spell_Localize]
      local db_Worgen = ASCT_DB["Worgen"][Spell_Localize]
      local db_Pandaren = ASCT_DB["Pandaren"][Spell_Localize]
      local db_Void_Elf = ASCT_DB["Void Elf"][Spell_Localize]
      local db_Lightforged_Draenei = ASCT_DB["Lightforged Draenei"][Spell_Localize]
      local db_Dark_Iron_Dwarf = ASCT_DB["Dark Iron Dwarf"][Spell_Localize]
      local db_Mechagnome = ASCT_DB["Mechagnome"][Spell_Localize]
      local db_Kul_Tiran = ASCT_DB["Kul Tiran"][Spell_Localize]
      local db_Goblin = ASCT_DB["Goblin"][Spell_Localize]
      local db_Nightborne = ASCT_DB["Nightborne"][Spell_Localize]
      local db_Highmountain_Tauren = ASCT_DB["Highmountain Tauren"][Spell_Localize]
      local db_Vulpera = ASCT_DB["Vulpera"][Spell_Localize]
      local db_Zandalari_Troll = ASCT_DB["Zandalari Troll"][Spell_Localize]
      local db_Maghar_Orc = ASCT_DB["Mag'har Orc"][Spell_Localize]
      local db_Dracthyr = ASCT_DB["Dracthyr"][Spell_Localize]
      if
      --Races
      db_Human and (db_Human.SpellEnable == true) or
      db_Dwarf and (db_Dwarf.SpellEnable == true) or
      db_Gnome and (db_Gnome.SpellEnable == true) or
      db_Undead and (db_Undead.SpellEnable == true) or
      db_Night_Elf and (db_Night_Elf.SpellEnable == true) or
      db_Orc and (db_Orc.SpellEnable == true) or
      db_Tauren and (db_Tauren.SpellEnable == true) or
      db_Troll and (db_Troll.SpellEnable == true) or
      db_Blood_Elf and (db_Blood_Elf.SpellEnable == true) or
      db_Draenei and (db_Draenei.SpellEnable == true) or
      db_Worgen and (db_Worgen.SpellEnable == true) or
      db_Pandaren and (db_Pandaren.SpellEnable == true) or
      db_Void_Elf and (db_Void_Elf.SpellEnable == true) or
      db_Lightforged_Draenei and (db_Lightforged_Draenei.SpellEnable == true) or
      db_Dark_Iron_Dwarf and (db_Dark_Iron_Dwarf.SpellEnable == true) or
      db_Mechagnome and (db_Mechagnome.SpellEnable == true) or
      db_Kul_Tiran and (db_Kul_Tiran.SpellEnable == true) or
      db_Goblin and (db_Goblin.SpellEnable == true) or
      db_Nightborne and (db_Nightborne.SpellEnable == true) or
      db_Highmountain_Tauren and (db_Highmountain_Tauren.SpellEnable == true) or
      db_Vulpera and (db_Vulpera.SpellEnable == true) or
      db_Zandalari_Troll and (db_Zandalari_Troll.SpellEnable == true) or
      db_Maghar_Orc and (db_Maghar_Orc.SpellEnable == true) or
      db_Dracthyr and (db_Dracthyr.SpellEnable == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         L_ASCT_Handlers["OnUpdate"](spellFrame, --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local details = " "
                local dbSettings = ASCT_DB["Human"][Spell_Localize] or ASCT_DB["Dwarf"][Spell_Localize] or
                ASCT_DB["Gnome"][Spell_Localize] or ASCT_DB["Undead"][Spell_Localize] or
                ASCT_DB["Night Elf"][Spell_Localize] or ASCT_DB["Orc"][Spell_Localize] or
                ASCT_DB["Tauren"][Spell_Localize] or ASCT_DB["Troll"][Spell_Localize] or
                ASCT_DB["Blood Elf"][Spell_Localize] or ASCT_DB["Draenei"][Spell_Localize] or
                ASCT_DB["Worgen"][Spell_Localize] or ASCT_DB["Pandaren"][Spell_Localize] or
                ASCT_DB["Void Elf"][Spell_Localize] or ASCT_DB["Lightforged Draenei"][Spell_Localize] or
                ASCT_DB["Dark Iron Dwarf"][Spell_Localize] or ASCT_DB["Mechagnome"][Spell_Localize] or
                ASCT_DB["Kul Tiran"][Spell_Localize] or ASCT_DB["Goblin"][Spell_Localize] or
                ASCT_DB["Nightborne"][Spell_Localize] or ASCT_DB["Highmountain Tauren"][Spell_Localize] or
                ASCT_DB["Vulpera"][Spell_Localize] or ASCT_DB["Zandalari Troll"][Spell_Localize] or ASCT_DB["Mag'har Orc"][Spell_Localize]
                or ASCT_DB["Dracthyr"][Spell_Localize]
               --if dbSettings.iconEnable then details = details..string.format("|T%d:18|t ".." ", icon) end
                if dbSettings.iconEnable then details = details..string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t ".." ", icon) end
                if dbSettings.nameEnable then details = details..name.." " end
                if dbSettings.iconEnable == false and dbSettings.nameEnable == false then
                  L_ASCT_Handlers["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               local msg = string.format ("%s"..L["msg"], details)
                local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])
                  if Comabt_Text == false then
                  L_ASCT_Handlers["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
                  L_Function_Keys["Combat_Text_Function"](msg)
                  L_ASCT_Handlers["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
               end
            end
         )
         
      end
   end
   end
)
end)
end