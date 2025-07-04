local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Client, Frames, Functions, Scripts, API, Strings, Locale = Keys.Metatables["Client"], Keys.Metatables["Frames"], Keys.Metatables["Functions"], Keys.Metatables["Scripts"], Keys.Metatables["API"], Keys.Metatables["Strings"], Keys.Metatables["Locale"]
if Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
---------------------------
--This assigns the name of the addon to SARTE
---------------------------
local ASCT_SARTE = ...;
---------------------------
--nil vars used later
---------------------------
local start, duration
---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = Frames.SARTE["SARTE-Text_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
Scripts.Frame["OnEvent"](f, --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = API.Documentation["C_Spell.GetSpellName"](spellName)
      if unit == Strings.UnitId["player"] then
      local Spell_Localize, DB = Locale.Spells["ASCT_GetEnglishName"](spellName), ASCT_DB
      --Spells
         local dbSettings_Rogue, dbSettings_Priest,
         dbSettings_Shaman, dbSettings_Warrior,
         dbSettings_Warlock, dbSettings_Paladin,
         dbSettings_Mage, dbSettings_Druid,
         dbSettings_Hunter, dbSettings_Death_Knight,
         dbSettings_Monk, dbSettings_Demon_Hunter,
         dbSettings_Evoker
         =
         DB["Assassination"][Spell_Localize] or DB["Outlaw"][Spell_Localize] or DB["Subtlety"][Spell_Localize], DB["Shadow"][Spell_Localize] or DB["Holy_Priest"][Spell_Localize] or DB["Discipline"][Spell_Localize],
         DB["Elemental"][Spell_Localize] or DB["Enhancement"][Spell_Localize] or DB["Shaman_Restoration"][Spell_Localize], DB["Arms"][Spell_Localize] or DB["Fury"][Spell_Localize] or DB["Protection_Warrior"][Spell_Localize],
         DB["Affliction"][Spell_Localize] or DB["Demonology"][Spell_Localize] or DB["Destruction"][Spell_Localize], DB["Holy_Paladin"][Spell_Localize] or DB["Protection_Paladin"][Spell_Localize] or DB["Retribution"][Spell_Localize],
         DB["Arcane"][Spell_Localize] or DB["Fire"][Spell_Localize] or DB["Frost_Mage"][Spell_Localize], DB["Balance"][Spell_Localize] or DB["Feral_Combat"][Spell_Localize] or DB["Druid_Restoration"][Spell_Localize],
         DB["Beast Mastery"][Spell_Localize] or DB["Marksmanship"][Spell_Localize] or DB["Survival"][Spell_Localize], DB["Blood"][Spell_Localize] or DB["Frost_DK"][Spell_Localize] or DB["Unholy"][Spell_Localize],
         DB["Brewmaster"][Spell_Localize] or DB["Mistweaver"][Spell_Localize] or DB["Windwalker"][Spell_Localize], DB["Havoc"][Spell_Localize] or DB["Vengeance"][Spell_Localize],
         DB["Preservation"][Spell_Localize] or DB["Devastation"][Spell_Localize] or DB["Augmentation"][Spell_Localize]
      --Racials
         local db_Human, db_Dwarf, db_Gnome, db_Undead,
         db_Night_Elf, db_Orc, db_Tauren, db_Troll,
         db_Blood_Elf, db_Draenei, db_Worgen, db_Goblin,
         db_Pandaren, db_Void_Elf, db_Lightforged_Draenei, db_Dark_Iron_Dwarf,
         db_Mechagnome, db_Kul_Tiran, db_Nightborne, db_Highmountain_Tauren,
         db_Vulpera, db_Zandalari_Troll, db_Maghar_Orc, db_Dracthyr,
         db_Earthen
         =
         DB["Human"][Spell_Localize], DB["Dwarf"][Spell_Localize], DB["Gnome"][Spell_Localize], DB["Undead"][Spell_Localize],
         DB["Night Elf"][Spell_Localize], DB["Orc"][Spell_Localize], DB["Tauren"][Spell_Localize], DB["Troll"][Spell_Localize],
         DB["Blood Elf"][Spell_Localize], DB["Draenei"][Spell_Localize], DB["Worgen"][Spell_Localize], DB["Goblin"][Spell_Localize],
         DB["Pandaren"][Spell_Localize], DB["Void Elf"][Spell_Localize], DB["Lightforged Draenei"][Spell_Localize], DB["Dark Iron Dwarf"][Spell_Localize],
         DB["Mechagnome"][Spell_Localize], DB["Kul Tiran"][Spell_Localize], DB["Nightborne"][Spell_Localize], DB["Highmountain Tauren"][Spell_Localize],
         DB["Vulpera"][Spell_Localize], DB["Zandalari Troll"][Spell_Localize], DB["Mag'har Orc"][Spell_Localize],  DB["Dracthyr"][Spell_Localize],
         DB["Earthen"][Spell_Localize]
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
         dbSettings_Death_Knight and (dbSettings_Death_Knight.SpellEnable == true) or
         --Monk
         dbSettings_Monk and (dbSettings_Monk.SpellEnable == true) or
         --Demon_Hunter
         dbSettings_Demon_Hunter and (dbSettings_Demon_Hunter.SpellEnable == true) or
         --Evoker
         dbSettings_Evoker and (dbSettings_Evoker.SpellEnable == true)
         or
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
         db_Draenei and (db_Draenei.SpellEnable == true) or
         --Worgen
         db_Worgen and (db_Worgen.SpellEnable == true) or
         --Goblin
         db_Goblin and (db_Goblin.SpellEnable == true) or
         --Pandaren
         db_Pandaren and (db_Pandaren.SpellEnable == true) or
         --Void Elf
         db_Void_Elf and (db_Void_Elf.SpellEnable == true) or
         --Lightforged Draenei
         db_Lightforged_Draenei and (db_Lightforged_Draenei.SpellEnable == true) or
         --Dark Iron Dwarf
         db_Dark_Iron_Dwarf and (db_Dark_Iron_Dwarf.SpellEnable == true) or
         --Mechagnome
         db_Mechagnome and (db_Mechagnome.SpellEnable == true) or
         --Kul Tiran
         db_Kul_Tiran and (db_Kul_Tiran.SpellEnable == true) or
         --Nightborne
         db_Nightborne and (db_Nightborne.SpellEnable == true) or
         --Highmountain Tauren
         db_Highmountain_Tauren and (db_Highmountain_Tauren.SpellEnable == true) or
         --Vulpera
         db_Vulpera and (db_Vulpera.SpellEnable == true) or
         --Zandalari
         db_Zandalari_Troll and (db_Zandalari_Troll.SpellEnable == true) or
         --Maghar Orc
         db_Maghar_Orc and (db_Maghar_Orc.SpellEnable == true) or
         --Dracthyr
         db_Dracthyr and (db_Dracthyr.SpellEnable == true) or
         --Earthen
         db_Earthen and (db_Earthen.SpellEnable == true)
      then
         local spellFrame = Lua_API.Var_Environment["_G"][ASCT_SARTE..spellName] or API.Documentation["CreateFrame"](Strings.FrameType["Frame"], ASCT_SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame.lastCharges = spellFrame.lastCharges or 1
         Scripts.Frame["OnUpdate"](spellFrame, --Run forever!
            function()
               local chargeData = API.Documentation["C_Spell.GetSpellCharges"](spellName)
               local isReady = false

               if chargeData then
                  local currentCharges = chargeData.currentCharges
                  local wasAtZero = (spellFrame.lastCharges == 0)

                  -- Check if we just regained a charge from zero
                  if wasAtZero and currentCharges == 1 then
                     isReady = true
                  end

                  -- Update tracker AFTER the check
                  spellFrame.lastCharges = currentCharges
               else
                  -- Fallback cooldown handling
                  local cdInfo = API.Documentation["C_Spell.GetSpellCooldown"](spellName)
                  if cdInfo.startTime == 0 then
                     isReady = true
                  end
               end

               if not isReady then return end

               ---------------------------
               -- Proceed to trigger message
               ---------------------------
               local spellInfo = API.Documentation["C_Spell.GetSpellInfo"](spellName)
               local name, icon = spellInfo.name, spellInfo.iconID
               local details = " "
               local dbSettings =
               --Spells
               dbSettings_Rogue or dbSettings_Priest or
               dbSettings_Shaman or dbSettings_Warrior or
               dbSettings_Warlock or dbSettings_Paladin or
               dbSettings_Mage or dbSettings_Druid or
               dbSettings_Hunter or dbSettings_Death_Knight or
               dbSettings_Monk or dbSettings_Demon_Hunter or
               dbSettings_Evoker
               or
               --Racials
               db_Human or db_Dwarf or
               db_Gnome or db_Undead or
               db_Night_Elf or db_Orc or
               db_Tauren or db_Troll or
               db_Blood_Elf or db_Draenei or
               db_Worgen or db_Pandaren or
               db_Void_Elf or db_Lightforged_Draenei or
               db_Dark_Iron_Dwarf or db_Mechagnome or
               db_Kul_Tiran or db_Goblin or
               db_Nightborne or db_Highmountain_Tauren or
               db_Vulpera or db_Zandalari_Troll or
               db_Maghar_Orc or db_Dracthyr or
               db_Earthen
               if dbSettings.iconEnable then
                  details = details..Lua_API.String["string.format"]("|T%d:"..DB["Integer_Values"].Icon.."|t ".." ", icon)
               end
               if dbSettings.nameEnable then
                  details = details..name.." "
               end
               if dbSettings.iconEnable == false and dbSettings.nameEnable == false then
                  Scripts.Frame["OnUpdate"](spellFrame, nil)
                  return
               end

               local msg = Lua_API.String["string.format"]("%s"..L[DB["Message_Selector"]["Msg"]], details)
               local combatTextEnabled = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
               if not combatTextEnabled then
                  Scripts.Frame["OnUpdate"](spellFrame, nil)
                  return
               end

               Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
               Scripts.Frame["OnUpdate"](spellFrame, nil)
            end

         )

      end
   end
   end
)
end)
end