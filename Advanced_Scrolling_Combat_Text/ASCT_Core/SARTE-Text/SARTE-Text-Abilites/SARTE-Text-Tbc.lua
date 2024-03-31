local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isTbcWow"] then
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
local f = ASCT.Frames.SARTE["SARTE-Text_Frame"]
ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
ASCT.Scripts.Frame["OnEvent"](f, --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = ASCT.API.Documentation["GetSpellInfo"](spellName)
      if unit == ASCT.Strings.UnitId["player"] then
      local Spell_Localize = ASCT.Locale.Spells["ASCT_GetEnglishName"](spellName)
      local dbSettings_Rogue = ASCT_DB["Assassination"][Spell_Localize] or ASCT_DB["Combat"][Spell_Localize] or ASCT_DB["Subtlety"][Spell_Localize]
      local dbSettings_Priest = ASCT_DB["Shadow"][Spell_Localize] or ASCT_DB["Holy_Priest"][Spell_Localize] or ASCT_DB["Discipline"][Spell_Localize]
      local dbSettings_Shaman = ASCT_DB["Elemental"][Spell_Localize] or ASCT_DB["Enhancement"][Spell_Localize] or ASCT_DB["Shaman_Restoration"][Spell_Localize]
      local dbSettings_Warrior = ASCT_DB["Arms"][Spell_Localize] or ASCT_DB["Fury"][Spell_Localize] or ASCT_DB["Protection_Warrior"][Spell_Localize]
      local dbSettings_Warlock = ASCT_DB["Affliction"][Spell_Localize] or ASCT_DB["Demonology"][Spell_Localize] or ASCT_DB["Destruction"][Spell_Localize]
      local dbSettings_Paladin = ASCT_DB["Holy_Paladin"][Spell_Localize] or ASCT_DB["Protection_Paladin"][Spell_Localize] or ASCT_DB["Retribution"][Spell_Localize]
      local dbSettings_Mage = ASCT_DB["Arcane"][Spell_Localize] or ASCT_DB["Fire"][Spell_Localize] or ASCT_DB["Frost_Mage"][Spell_Localize]
      local dbSettings_Druid = ASCT_DB["Balance"][Spell_Localize] or ASCT_DB["Feral_Combat"][Spell_Localize] or ASCT_DB["Druid_Restoration"][Spell_Localize]
      local dbSettings_Hunter = ASCT_DB["Beast Mastery"][Spell_Localize] or ASCT_DB["Marksmanship"][Spell_Localize] or ASCT_DB["Survival"][Spell_Localize]
      if
      --Rogue
      dbSettings_Rogue and dbSettings_Rogue.SpellEnable == true  or
      --Priest
      dbSettings_Priest and dbSettings_Priest.SpellEnable == true or
      --Shaman
      dbSettings_Shaman and dbSettings_Shaman.SpellEnable == true or
      --Warrior
      dbSettings_Warrior and dbSettings_Warrior.SpellEnable == true or
      --Warlock
      dbSettings_Warlock and dbSettings_Warlock.SpellEnable == true or
      --Paladin
      dbSettings_Paladin and dbSettings_Paladin.SpellEnable == true or
      --Mage
      dbSettings_Mage and dbSettings_Mage.SpellEnable == true or
      --Druid
      dbSettings_Druid and dbSettings_Druid.SpellEnable == true or
      --Hunter
      dbSettings_Hunter and dbSettings_Hunter.SpellEnable == true
      then
         ---------------------------
         --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         ---------------------------
         local spellFrame = _G[ASCT_SARTE..spellName] or ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameName["Frame"], ASCT_SARTE..spellName)
         ASCT.Scripts.Frame["OnUpdate"](spellFrame, --Run forever!
            function()
               ---------------------------
               --Grab the needed time data
               ---------------------------
               start, duration = ASCT.API.Documentation["GetSpellCooldown"](spellName)
               if start == 0 then
               local name, _, icon = ASCT.API.Documentation["GetSpellInfo"](spellName)
               local details = " "
               local dbSettings = dbSettings_Rogue or
                                  dbSettings_Priest or
                                  dbSettings_Shaman or
                                  dbSettings_Warrior or
                                  dbSettings_Warlock or
                                  dbSettings_Paladin or
                                  dbSettings_Mage or
                                  dbSettings_Druid or
                                  dbSettings_Hunter
               --if dbSettings.iconEnable then details = details..string.format("|T%d:18|t ".." ", icon) end
               if dbSettings.iconEnable then details = details..string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t ".." ", icon) end
               if dbSettings.nameEnable then details = details..name.." " end
               if dbSettings.iconEnable == false and dbSettings.nameEnable == false then
                  ASCT.Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               local msg = string.format ("%s"..L["msg"], details)
               local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])
               if Comabt_Text == false then
                  ASCT.Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
                  ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
                ---------------------------
               --Break the Onupdate event
               ---------------------------
                  ASCT.Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
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