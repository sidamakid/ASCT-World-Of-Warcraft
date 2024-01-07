local ASCT, L_ASCT_Locale_Spells, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Spell_Locale_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isWrathWow"] then
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later
---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = L_ASCT_Frames["SARTE-Text_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
L_ASCT_Handlers["OnEvent"](f, --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
      local Spell_Localize = L_ASCT_Locale_Spells["ASCT_GetEnglishName"](spellName)
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
      if
      --Rogue
      dbSettings_Rogue and dbSettings_Rogue.SpellEnable == true or
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
      dbSettings_Hunter and dbSettings_Hunter.SpellEnable == true or
      --Death_Knight
      dbSettings_Death_Knight and dbSettings_Death_Knight.SpellEnable == true
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         L_ASCT_Handlers["OnUpdate"](spellFrame, --Run forever!
         function()
            ---------------------------
            --Grab the needed time data
            ---------------------------
            start, duration = GetSpellCooldown(spellName)
            if start == 0 then
            local name, _, icon = GetSpellInfo(spellName)
            local details = " "
            local dbSettings = dbSettings_Rogue or dbSettings_Priest or dbSettings_Shaman or dbSettings_Warrior or dbSettings_Warlock or dbSettings_Paladin or dbSettings_Mage or dbSettings_Druid or dbSettings_Hunter or dbSettings_Death_Knight
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
             ---------------------------
            --Break the Onupdate event
            ---------------------------
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