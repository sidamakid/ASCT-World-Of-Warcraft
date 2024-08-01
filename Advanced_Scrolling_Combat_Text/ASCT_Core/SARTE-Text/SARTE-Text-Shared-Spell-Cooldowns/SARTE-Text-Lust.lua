local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Locale = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Locale
if Client.LE_EXPANSION_LEVEL["isTbcWowOrAbove"] then
local class_Check = select(3, API.Documentation["UnitClass"](Strings.UnitId["player"]))
if class_Check == 7 then
local ASCT_SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableShamanLust = {
["Heroism"] = "Heroism",
["Bloodlust"] = "Bloodlust",
}
---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = Frames.SARTE["SARTE-Text-Shared-Spell-Cooldowns_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
Scripts.Frame["OnEvent"](f, --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = API.Documentation["GetSpellInfo"](spellName)
      if unit == Strings.UnitId["player"] then
       if SpellTableShamanLust[Locale.Spells["ASCT_GetEnglishName"](spellName)] and ASCT_DB["Shared_Shaman_spells"]["Lust"] == true then
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
                  local msg = L["msg_Lust"]
                  Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
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