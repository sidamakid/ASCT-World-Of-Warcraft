local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isVanillaWow"] or ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] then
local class_Check = select(3, ASCT.API.Documentation["UnitClass"](ASCT.Strings.UnitId["player"]))
if class_Check == 7 then
local ASCT_SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableShamanShocks = {
["Frost Shock"] = "Frost Shock",
["Earth Shock"] = "Earth Shock",
["Flame Shock"] = "Flame Shock",
}

---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = ASCT.Frames.SARTE["SARTE-Text-Shocks_Frame"]
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
ASCT.Scripts.Frame["OnEvent"](f, --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = ASCT.API.Documentation["GetSpellInfo"](spellName)
      if unit == ASCT.Strings.UnitId["player"] then
       if SpellTableShamanShocks[ASCT.Locale.Spells["ASCT_GetEnglishName"](spellName)] and ASCT_DB["Shared_Shaman_spells"]["Shocks"] == true then
         local spellFrame = _G[ASCT_SARTE..spellName] or ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["Frame"], ASCT_SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         ASCT.Scripts.Frame["OnUpdate"](spellFrame, --Run forever!
            function()
               start, duration = ASCT.API.Documentation["GetSpellCooldown"](spellName) --Grab the needed time data
               if start == 0 then
               local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])
               if Comabt_Text == false then
                  ASCT.Scripts.Frame["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
                  local msg = L["msg_Shocks"]
                  ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
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
end