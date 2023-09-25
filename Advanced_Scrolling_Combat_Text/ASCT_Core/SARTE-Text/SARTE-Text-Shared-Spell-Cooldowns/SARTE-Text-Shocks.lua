local L_ASCT_Locale_Spells, L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Spell_Locale_Table, ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if L_Version_Check_Keys["is_Classic_TBC_Wrath"] then
local class_Check = select(3, UnitClass("player"))
if class_Check == 7 then
local SARTE = ... --This assigns the name of the addon to addonName
local start, duration --nil vars used later
local SpellTableShamanShocks = {
["Frost Shock"] = "Frost Shock",
["Earth Shock"] = "Earth Shock",
["Flame Shock"] = "Flame Shock",
}

---------------------------
--L_Function_Keys frame for our frame
---------------------------
local f = L_ASCT_Frames["SARTE-Text-Shocks_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()
L_ASCT_Handlers["OnEvent"](f, --Run when our event fires
   function(self, event, unit, _, spellName)
      local spellName = GetSpellInfo(spellName)
      if unit == "player" then
       if SpellTableShamanShocks[L_ASCT_Locale_Spells["ASCT_GetEnglishName"](spellName)] and ASCT_DB["Shared_Shaman_spells"]["Shocks"] == true then
         local spellFrame = _G[SARTE..spellName] or CreateFrame("Frame", SARTE..spellName) --Make a frame whose name is the name of the addon + the name of the spell so it will be unique and safe
         L_ASCT_Handlers["OnUpdate"](spellFrame, --Run forever!
            function()
               start, duration = GetSpellCooldown(spellName) --Grab the needed time data
               if start == 0 then
               local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
               if Comabt_Text == false then
                  L_ASCT_Handlers["OnUpdate"](spellFrame, nil) -- This breaks the OnUpdate so it doesn't run once the spell is off CD
                  return end
               if Comabt_Text == true then
                  local msg = L["msg_Shocks"]
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