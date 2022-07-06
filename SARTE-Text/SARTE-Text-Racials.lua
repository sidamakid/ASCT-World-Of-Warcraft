local is_Classic_Wow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)
local is_Tbc_Wow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local L = SARTE_LOCALE_TABLE

if is_Classic_Wow then
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
      if
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Troll"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s"..L["msg"], icon, name)
                local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
               if Comabt_Text == false then
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
               CombatText_AddMessage(msg, CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
                ---------------------------
               --Break the ONupdate event
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
elseif is_Tbc_Wow then
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
      if
      --Races
      SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Human"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Troll"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableBloodElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Blood Elf"][SDT_GetEnglishName(spellName)] == true) or
      SpellTableDranei[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Draenei"][SDT_GetEnglishName(spellName)] == true)
      then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         spellFrame:SetScript("OnUpdate", --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                local name, _, icon = GetSpellInfo(spellName)
                local msg = format("|T%d:18|t  %s"..L["msg"], icon, name)
                local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
                  if Comabt_Text == false then
                  spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
               CombatText_AddMessage(msg, CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
                ---------------------------
               --Break the ONupdate event
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
elseif isRetailWow then
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
         if
         --Races
         SpellTableHuman[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Human"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableDwarf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Dwarf"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableGnome[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Gnome"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableUndead[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Undead"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableNightElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Night Elf"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableOrc[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Orc"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableTauren[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Tauren"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableTroll[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Troll"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableBloodElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Blood Elf"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableDranei[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Draenei"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableWorgen[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Worgen"][SDT_GetEnglishName(spellName)] == true) or
         SpellTablePandaren[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Pandaren"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableVoidElf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Void Elf"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableLightForgedDraenei[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Lightforged Draenei"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableDarkIronDwarf[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Dark Iron Dwarf"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableMechagnome[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Mechagnome"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableKulTiran[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Kul Tiran"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableGoblin[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Goblin"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableNightborne[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Nightborne"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableHighmountainTauren[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Highmountain Tauren"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableVulpera[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Vulpera"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableZandalariTroll[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Zandalari Troll"][SDT_GetEnglishName(spellName)] == true) or
         SpellTableMagharOrc[SDT_GetEnglishName(spellName)] and (SARTESPELLDB["Mag'har Orc"][SDT_GetEnglishName(spellName)] == true)
         then
            local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
            spellFrame:SetScript("OnUpdate", --Run forever!
               function()
                  start, duration = GetSpellCooldown(spellName) --Grab the needed time data
                  if start == 0 then
                   local name, _, icon = GetSpellInfo(spellName)
                   local msg = format("|T%d:18|t  %s"..L["msg"], icon, name)
                   local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
                  if Comabt_Text == false then
                     spellFrame:SetScript("OnUpdate", nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                     return end
                  if Comabt_Text == true then
                  CombatText_AddMessage(msg, CombatText_StandardScroll, SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a)
                  ---------------------------
                  --Break the ONupdate event
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