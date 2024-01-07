local ASCT, L_ASCT_Locale_Spells, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Spell_Locale_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isVanillaWow"] or ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] then
local class_Check = select(3, UnitClass("player"))
if class_Check == 3 then
local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableHunterTraps = {}
if L_Function_Keys["is30400"] or L_Function_Keys["is30401"] or L_Function_Keys["is30402"] then
      SpellTableHunterTraps["Freezing Trap"] = "Freezing Trap"
      SpellTableHunterTraps["Snake Trap"] = "Snake Trap"
      SpellTableHunterTraps["Immolation Trap"] = "Immolation Trap"
      SpellTableHunterTraps["Explosive Trap"] = "Explosive Trap"
      SpellTableHunterTraps["Frost Trap"] = "Frost Trap"
elseif L_Function_Keys["is30403"] then
      SpellTableHunterTraps["Freezing Trap"] = "Freezing Trap"
      SpellTableHunterTraps["Snake Trap"] = "Snake Trap"
      SpellTableHunterTraps["Immolation Trap"] = "Immolation Trap"
      SpellTableHunterTraps["Explosive Trap"] = "Explosive Trap"
      SpellTableHunterTraps["Frost Trap"] = "Frost Trap"
      SpellTableHunterTraps["Trap Launcher: Explosive Trap"] = "Trap Launcher: Explosive Trap"
end
---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = L_ASCT_Frames["SARTE-Text-Traps_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
L_ASCT_Handlers["OnEvent"](f, --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
       if SpellTableHunterTraps[L_ASCT_Locale_Spells["ASCT_GetEnglishName"](spellName)] and ASCT_DB["Shared_Hunter_spells"]["Traps"] == true then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         L_ASCT_Handlers["OnUpdate"](spellFrame, --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
                  local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])
                  if Comabt_Text == false then
                     L_ASCT_Handlers["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
                  if Comabt_Text == true then
                     local msg = L["msg_Traps"]
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
end