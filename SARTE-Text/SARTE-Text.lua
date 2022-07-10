local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)


if isRetailWow then
local L = SARTE_LOCALE_TABLE
local SARTE = ... --This assigns the name of the addon to SARTE
local start, duration --nil vars used later


local f = CreateFrame"Frame" --Make our frame
SDT_AddLocalizedCallback(function()
   f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED") --Register event
 end)
f:SetScript("OnEvent", --Run when our event fires
    function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
      local Spell_Localize = SDT_GetEnglishName(spellName)
      local dbSettings_Rogue = SARTESPELLDB["Assassination"][Spell_Localize] or SARTESPELLDB["Outlaw"][Spell_Localize] or SARTESPELLDB["Subtlety"][Spell_Localize]
      local dbSettings_Priest = SARTESPELLDB["Shadow"][Spell_Localize] or SARTESPELLDB["Holy_Priest"][Spell_Localize] or SARTESPELLDB["Discipline"][Spell_Localize]
      local dbSettings_Shaman = SARTESPELLDB["Elemental"][Spell_Localize] or SARTESPELLDB["Enhancement"][Spell_Localize] or SARTESPELLDB["Shaman_Restoration"][Spell_Localize]
      local dbSettings_Warrior = SARTESPELLDB["Arms"][Spell_Localize] or SARTESPELLDB["Fury"][Spell_Localize] or SARTESPELLDB["Protection_Warrior"][Spell_Localize]
      local dbSettings_Warlock = SARTESPELLDB["Affliction"][Spell_Localize] or SARTESPELLDB["Demonology"][Spell_Localize] or SARTESPELLDB["Destruction"][Spell_Localize]
      local dbSettings_Paladin = SARTESPELLDB["Holy_Paladin"][Spell_Localize] or SARTESPELLDB["Protection_Paladin"][Spell_Localize] or SARTESPELLDB["Retribution"][Spell_Localize]
      local dbSettings_Mage = SARTESPELLDB["Arcane"][Spell_Localize] or SARTESPELLDB["Fire"][Spell_Localize] or SARTESPELLDB["Frost_Mage"][Spell_Localize]
      local dbSettings_Druid = SARTESPELLDB["Balance"][Spell_Localize] or SARTESPELLDB["Feral_Combat"][Spell_Localize] or SARTESPELLDB["Druid_Restoration"][Spell_Localize]
      local dbSettings_Hunter = SARTESPELLDB["Beast Mastery"][Spell_Localize] or SARTESPELLDB["Marksmanship"][Spell_Localize] or SARTESPELLDB["Survival"][Spell_Localize]
      local dbSettings_Death_Knight = SARTESPELLDB["Blood"][Spell_Localize] or SARTESPELLDB["Frost_DK"][Spell_Localize] or SARTESPELLDB["Unholy"][Spell_Localize]
      local dbSettings_Monk = SARTESPELLDB["Brewmaster"][Spell_Localize] or SARTESPELLDB["Mistweaver"][Spell_Localize] or SARTESPELLDB["Windwalker"][Spell_Localize]
      local dbSettings_Demon_Hunter = SARTESPELLDB["Havoc"][Spell_Localize] or SARTESPELLDB["Vengeance"][Spell_Localize]
      if
      --Rogue
      SpellTableRogue[Spell_Localize] and (dbSettings_Rogue.SpellEnable == true) or
      --Priest
      SpellTablePriest[Spell_Localize] and (dbSettings_Priest.SpellEnable == true) or
      --Shaman
      SpellTableShaman[Spell_Localize] and (dbSettings_Shaman.SpellEnable == true) or
      --Warrior
      SpellTableWarrior[Spell_Localize] and (dbSettings_Warrior.SpellEnable == true) or
      --Warlock
      SpellTableWarlock[Spell_Localize] and (dbSettings_Warlock.SpellEnable == true) or
      --Paladin
      SpellTablePaladin[Spell_Localize] and (dbSettings_Paladin.SpellEnable == true) or
      --Mage
      SpellTableMage[Spell_Localize] and (dbSettings_Mage.SpellEnable) or
      --Druid
      SpellTableDruid[Spell_Localize] and (dbSettings_Druid.SpellEnable) or
      --Hunter
      SpellTableHunter[Spell_Localize] and (dbSettings_Hunter.SpellEnable) or
      --Death_Knight
      SpellTableDeath_Knight[Spell_Localize] and (dbSettings_Death_Knight.SpellEnable) or
      --Monk
      SpellTableMonk[Spell_Localize] and (dbSettings_Monk.SpellEnable == true) or
      --Demon_Hunter
      SpellTableDemon_Hunter[Spell_Localize] and (dbSettings_Demon_Hunter.SpellEnable)
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
               local dbSettings = SARTESPELLDB["Assassination"][Spell_Localize] or SARTESPELLDB["Combat"][Spell_Localize] or SARTESPELLDB["Subtlety"][Spell_Localize] or
                                  SARTESPELLDB["Shadow"][Spell_Localize] or SARTESPELLDB["Holy_Priest"][Spell_Localize] or SARTESPELLDB["Discipline"][Spell_Localize] or
                                  SARTESPELLDB["Elemental"][Spell_Localize] or SARTESPELLDB["Enhancement"][Spell_Localize] or SARTESPELLDB["Shaman_Restoration"][Spell_Localize] or
                                  SARTESPELLDB["Arms"][Spell_Localize] or SARTESPELLDB["Fury"][Spell_Localize] or SARTESPELLDB["Protection_Warrior"][Spell_Localize] or
                                  SARTESPELLDB["Affliction"][Spell_Localize] or SARTESPELLDB["Demonology"][Spell_Localize] or SARTESPELLDB["Destruction"][Spell_Localize] or
                                  SARTESPELLDB["Holy_Paladin"][Spell_Localize] or SARTESPELLDB["Protection_Paladin"][Spell_Localize] or SARTESPELLDB["Retribution"][Spell_Localize] or
                                  SARTESPELLDB["Arcane"][Spell_Localize] or SARTESPELLDB["Fire"][Spell_Localize] or SARTESPELLDB["Frost_Mage"][Spell_Localize] or
                                  SARTESPELLDB["Balance"][Spell_Localize] or SARTESPELLDB["Feral_Combat"][Spell_Localize] or SARTESPELLDB["Druid_Restoration"][Spell_Localize] or
                                  SARTESPELLDB["Beast Mastery"][Spell_Localize] or SARTESPELLDB["Marksmanship"][Spell_Localize] or SARTESPELLDB["Survival"][Spell_Localize] or
                                  SARTESPELLDB["Blood"][Spell_Localize] or SARTESPELLDB["Frost_DK"][Spell_Localize] or SARTESPELLDB["Unholy"][Spell_Localize] or
                                  SARTESPELLDB["Brewmaster"][Spell_Localize] or SARTESPELLDB["Mistweaver"][Spell_Localize] or SARTESPELLDB["Windwalker"][Spell_Localize] or
                                  SARTESPELLDB["Havoc"][Spell_Localize] or SARTESPELLDB["Vengeance"][Spell_Localize]
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
               CombatText_AddMessage(msg, CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
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