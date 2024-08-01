local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Locale = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Locale
if Client.LE_EXPANSION_LEVEL["isWrathWow"] then
local ASCT_SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later
---------------------------
--Frames.SARTE frame for our frame
---------------------------
local f = Frames.SARTE["SARTE-Text_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
Scripts.Frame["OnEvent"](f, --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = API.Documentation["GetSpellInfo"](spellName)
      if unit == Strings.UnitId["player"] then
      local Spell_Localize = Locale.Spells["ASCT_GetEnglishName"](spellName)
      --Spells
         local dbSettings_Rogue = ASCT_DB["Assassination"][Spell_Localize] or ASCT_DB["Combat"][Spell_Localize] or ASCT_DB["Subtlety"][Spell_Localize]
         local dbSettings_Priest = ASCT_DB["Shadow"][Spell_Localize] or ASCT_DB["Holy_Priest"][Spell_Localize] or ASCT_DB["Discipline"][Spell_Localize]
         local dbSettings_Shaman = ASCT_DB["Elemental"][Spell_Localize] or ASCT_DB["Enhancement"][Spell_Localize] or ASCT_DB["Shaman_Restoration"][Spell_Localize]
         local dbSettings_Warrior = ASCT_DB["Arms"][Spell_Localize] or ASCT_DB["Fury"][Spell_Localize] or ASCT_DB["Protection_Warrior"][Spell_Localize]
         local dbSettings_Warlock = ASCT_DB["Affliction"][Spell_Localize] or ASCT_DB["Demonology"][Spell_Localize] or ASCT_DB["Destruction"][Spell_Localize]
         local dbSettings_Paladin = ASCT_DB["Holy_Paladin"][Spell_Localize] or ASCT_DB["Protection_Paladin"][Spell_Localize] or ASCT_DB["Retribution"][Spell_Localize]
         local dbSettings_Mage = ASCT_DB["Arcane"][Spell_Localize] or ASCT_DB["Fire"][Spell_Localize] or ASCT_DB["Frost_Mage"][Spell_Localize]
         local dbSettings_Druid = ASCT_DB["Balance"][Spell_Localize] or ASCT_DB["Feral_Combat"][Spell_Localize] or ASCT_DB["Druid_Restoration"][Spell_Localize]
         local dbSettings_Hunter = ASCT_DB["Beast Mastery"][Spell_Localize] or ASCT_DB["Marksmanship"][Spell_Localize] or ASCT_DB["Survival"][Spell_Localize]
         local dbSettings_Death_Knight = ASCT_DB["Blood"][Spell_Localize] or ASCT_DB["Frost_DK"][Spell_Localize] or ASCT_DB["Unholy"][Spell_Localize]
      --Racials
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
      if
      --Spells
         --Rogue
         dbSettings_Rogue and (dbSettings_Rogue.SpellEnable == true) or
         --Priest
         dbSettings_Priest and (dbSettings_Priest.SpellEnable == true) or
         --Shaman
         dbSettings_Shaman and (dbSettings_Shaman.SpellEnable == true) or
         --Warrior
         dbSettings_Warrior and (dbSettings_Warrior.SpellEnable == true) or
         --Warlock
         dbSettings_Warlock and (dbSettings_Warlock.SpellEnable == true) or
         --Paladin
         dbSettings_Paladin and (dbSettings_Paladin.SpellEnable == true) or
         --Mage
         dbSettings_Mage and (dbSettings_Mage.SpellEnable == true) or
         --Druid
         dbSettings_Druid and (dbSettings_Druid.SpellEnable == true) or
         --Hunter
         dbSettings_Hunter and (dbSettings_Hunter.SpellEnable == true) or
         --Death_Knight
         dbSettings_Death_Knight and dbSettings_Death_Knight.SpellEnable == true or
      --Racials
         --Human
         db_Human and (db_Human.SpellEnable == true) or
         --Dwarf
         db_Dwarf and (db_Dwarf.SpellEnable == true) or
         --Gnome
         db_Gnome and (db_Gnome.SpellEnable == true) or
         --Undead
         db_Undead and (db_Undead.SpellEnable == true) or
         --Night Elf
         db_Night_Elf and (db_Night_Elf.SpellEnable == true) or
         --Orc
         db_Orc and (db_Orc.SpellEnable == true) or
         --Tauren
         db_Tauren and (db_Tauren.SpellEnable == true) or
         --Troll
         db_Troll and (db_Troll.SpellEnable == true) or
         --Blood Elf
         db_Blood_Elf and (db_Blood_Elf.SpellEnable == true) or
         --Draenei
         db_Draenei and (db_Draenei.SpellEnable == true)
      then
         local spellFrame = _G[ASCT_SARTE..spellName] or API.Documentation["CreateFrame"](Strings.FrameType["Frame"], ASCT_SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         Scripts.Frame["OnUpdate"](spellFrame, --Run forever!
         function()
            ---------------------------
            --Grab the needed time data
            ---------------------------
            start, duration = API.Documentation["GetSpellCooldown"](spellName)
            if start == 0 then
            local name, _, icon = API.Documentation["GetSpellInfo"](spellName)
            local details = " "
            local dbSettings = dbSettings_Rogue or dbSettings_Priest or dbSettings_Shaman or dbSettings_Warrior or dbSettings_Warlock or dbSettings_Paladin or dbSettings_Mage or dbSettings_Druid or dbSettings_Hunter or dbSettings_Death_Knight or
            --Racials
            db_Human or
            db_Dwarf or
            db_Gnome or
            db_Undead or
            db_Night_Elf or
            db_Orc or
            db_Tauren or
            db_Troll or
            db_Blood_Elf or
            db_Draenei
            --if dbSettings.iconEnable then details = details..string.format("|T%d:18|t ".." ", icon) end
            if dbSettings.iconEnable then details = details..string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t ".." ", icon) end
            if dbSettings.nameEnable then details = details..name.." " end
            if dbSettings.iconEnable == false and dbSettings.nameEnable == false then
               Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               return end
            --[[
            local msg
            if ASCT_DB["Message_Selector"]["is now ready!"] == true then
               msg = string.format ("%s"..L["is now ready!"], details)
            elseif ASCT_DB["Message_Selector"]["Ready!"] == true then
               msg = string.format ("%s"..L["Ready!"], details)
            elseif ASCT_DB["Message_Selector"]["Is Ready!"] == true then
               msg = string.format ("%s"..L["Is Ready!"], details)
            end
            ]]
            local msg = string.format ("%s"..L["msg"], details)
            local Comabt_Text = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
            if Comabt_Text == false then
               Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               return end
            if Comabt_Text == true then
               Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
             ---------------------------
            --Break the Onupdate event
            ---------------------------
            Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
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