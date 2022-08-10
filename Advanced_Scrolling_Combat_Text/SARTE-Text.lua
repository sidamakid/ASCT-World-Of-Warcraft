local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)


if isRetailWow then
local L = ASDC_LOCALE_TABLE
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
ASCT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
      local Spell_Localize = ASCT_GetEnglishName(spellName)
      local dbSettings_Rogue = Advanced_Scrolling_Combat_Text_DB["Assassination"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Outlaw"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Subtlety"][Spell_Localize]
      local dbSettings_Priest = Advanced_Scrolling_Combat_Text_DB["Shadow"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Holy_Priest"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Discipline"][Spell_Localize]
      local dbSettings_Shaman = Advanced_Scrolling_Combat_Text_DB["Elemental"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Enhancement"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Shaman_Restoration"][Spell_Localize]
      local dbSettings_Warrior = Advanced_Scrolling_Combat_Text_DB["Arms"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Fury"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Protection_Warrior"][Spell_Localize]
      local dbSettings_Warlock = Advanced_Scrolling_Combat_Text_DB["Affliction"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Demonology"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Destruction"][Spell_Localize]
      local dbSettings_Paladin = Advanced_Scrolling_Combat_Text_DB["Holy_Paladin"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Protection_Paladin"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Retribution"][Spell_Localize]
      local dbSettings_Mage = Advanced_Scrolling_Combat_Text_DB["Arcane"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Fire"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Frost_Mage"][Spell_Localize]
      local dbSettings_Druid = Advanced_Scrolling_Combat_Text_DB["Balance"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Feral_Combat"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Druid_Restoration"][Spell_Localize]
      local dbSettings_Hunter = Advanced_Scrolling_Combat_Text_DB["Beast Mastery"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Marksmanship"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Survival"][Spell_Localize]
      local dbSettings_Death_Knight = Advanced_Scrolling_Combat_Text_DB["Blood"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Frost_DK"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Unholy"][Spell_Localize]
      local dbSettings_Monk = Advanced_Scrolling_Combat_Text_DB["Brewmaster"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Mistweaver"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Windwalker"][Spell_Localize]
      local dbSettings_Demon_Hunter = Advanced_Scrolling_Combat_Text_DB["Havoc"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Vengeance"][Spell_Localize]
      if
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
      dbSettings_Mage and (dbSettings_Mage.SpellEnable) or
      --Druid
      dbSettings_Druid and (dbSettings_Druid.SpellEnable) or
      --Hunter
      dbSettings_Hunter and (dbSettings_Hunter.SpellEnable) or
      --Death_Knight
      dbSettings_Death_Knight and (dbSettings_Death_Knight.SpellEnable) or
      --Monk
      dbSettings_Monk and (dbSettings_Monk.SpellEnable == true) or
      --Demon_Hunter
      dbSettings_Demon_Hunter and (dbSettings_Demon_Hunter.SpellEnable)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               ---------------------------
               --Grab the needed time data
               ---------------------------
               start, duration = GetSpellCooldown(spellName)
               if start == 0 then
               local name, _, icon = GetSpellInfo(spellName)
               local details = " "
               local dbSettings = dbSettings_Rogue or dbSettings_Priest or dbSettings_Shaman or dbSettings_Warrior or dbSettings_Warlock or dbSettings_Paladin or dbSettings_Mage or dbSettings_Druid or dbSettings_Hunter or dbSettings_Death_Knight
               or dbSettings_Monk or dbSettings_Demon_Hunter
               if dbSettings.iconEnable then details = details..string.format("|T%d:18|t ".." ", icon) end
               if dbSettings.nameEnable then details = details..name.." " end
               if dbSettings.iconEnable == false and dbSettings.nameEnable == false then
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               local msg = string.format ("%s"..L["msg"], details)
               local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
               if Comabt_Text == false then
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
               CombatText_AddMessage(msg, CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
                ---------------------------
               --Break the Onupdate event
               ---------------------------
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
               end
            end
            end
         )
         
      end
   end
   end
)
end