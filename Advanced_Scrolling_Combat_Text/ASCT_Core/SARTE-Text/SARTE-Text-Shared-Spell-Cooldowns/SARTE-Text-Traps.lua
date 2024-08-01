local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Locale = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Locale
if Client.LE_EXPANSION_LEVEL["is_Vanilla-Tbc-Wrath_Wow"] then
local class_Check = select(3, API.Documentation["UnitClass"](Strings.UnitId["player"]))
if class_Check == 3 then
local ASCT_SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableHunterTraps = {}
if Client["is30403"]then
      SpellTableHunterTraps["Freezing Trap"] = "Freezing Trap"
      SpellTableHunterTraps["Snake Trap"] = "Snake Trap"
      SpellTableHunterTraps["Immolation Trap"] = "Immolation Trap"
      SpellTableHunterTraps["Explosive Trap"] = "Explosive Trap"
      SpellTableHunterTraps["Frost Trap"] = "Frost Trap"
      SpellTableHunterTraps["Trap Launcher: Explosive Trap"] = "Trap Launcher: Explosive Trap"
else
      SpellTableHunterTraps["Freezing Trap"] = "Freezing Trap"
      SpellTableHunterTraps["Snake Trap"] = "Snake Trap"
      SpellTableHunterTraps["Immolation Trap"] = "Immolation Trap"
      SpellTableHunterTraps["Explosive Trap"] = "Explosive Trap"
      SpellTableHunterTraps["Frost Trap"] = "Frost Trap"
end
---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = Frames.SARTE["SARTE-Text-Traps_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
Scripts.Frame["OnEvent"](f, --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = API.Documentation["GetSpellInfo"](spellName)
      if unit == Strings.UnitId["player"] then
       if SpellTableHunterTraps[Locale.Spells["ASCT_GetEnglishName"](spellName)] and ASCT_DB["Shared_Hunter_spells"]["Traps"] == true then
         local spellFrame = _G[ASCT_SARTE..spellName] or API.Documentation["CreateFrame"](Strings.FrameType["Frame"], ASCT_SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         Scripts.Frame["OnUpdate"](spellFrame, --Run forever!
            function()
               start, duration = API.Documentation["GetSpellCooldown"](spellName) --Grab the needed time data
               if start == 0 then
                  local Comabt_Text = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
                  if Comabt_Text == false then
                     Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
                  if Comabt_Text == true then
                     local msg = L["msg_Traps"]
                     Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
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
end