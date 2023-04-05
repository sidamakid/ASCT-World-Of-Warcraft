local is_Classic_Wow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_CLASSIC)
if is_Classic_Wow then
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
      local db_Human = Advanced_Scrolling_Combat_Text_DB["Human"][Spell_Localize]
      local db_Dwarf = Advanced_Scrolling_Combat_Text_DB["Dwarf"][Spell_Localize]
      local db_Gnome = Advanced_Scrolling_Combat_Text_DB["Gnome"][Spell_Localize]
      local db_Undead = Advanced_Scrolling_Combat_Text_DB["Undead"][Spell_Localize]
      local db_Night_Elf = Advanced_Scrolling_Combat_Text_DB["Night Elf"][Spell_Localize]
      local db_Orc = Advanced_Scrolling_Combat_Text_DB["Orc"][Spell_Localize]
      local db_Tauren = Advanced_Scrolling_Combat_Text_DB["Tauren"][Spell_Localize]
      local db_Troll = Advanced_Scrolling_Combat_Text_DB["Troll"][Spell_Localize]
      if
      --Races
      db_Human and db_Human.SpellEnable == true or
      db_Dwarf and db_Dwarf.SpellEnable == true or
      db_Gnome and db_Gnome.SpellEnable == true or
      db_Undead and db_Undead.SpellEnable == true or
      db_Night_Elf and db_Night_Elf.SpellEnable == true or
      db_Orc and db_Orc.SpellEnable == true or
      db_Tauren and db_Tauren.SpellEnable == true or
      db_Troll and db_Troll.SpellEnable == true
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local details = " "
                local dbSettings = Advanced_Scrolling_Combat_Text_DB["Human"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Dwarf"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Gnome"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Undead"][Spell_Localize] or
                Advanced_Scrolling_Combat_Text_DB["Night Elf"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Orc"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Tauren"][Spell_Localize] or Advanced_Scrolling_Combat_Text_DB["Troll"][Spell_Localize]
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