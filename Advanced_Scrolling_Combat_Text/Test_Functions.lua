-- ASCT_OptionsPanel_SpellRefresher.lua
local ASCT_Refresher = {}

function ASCT_Refresher.RefreshSpellCategory(tabFrame, dbTableName, rowKey, colKey)
  Integers.SpellToggle.Row[rowKey] = 0
  for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB[dbTableName]) do
    local spellID = settings.SpellID or settings.ID
    if spellID and IsPlayerSpell(spellID) then
      local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, tabFrame)
      Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"],
        Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b) + Integers.SpellToggle.Width["Width_Cata"])
        * (Integers.SpellToggle.Row[rowKey] % Integers.SpellToggle.Column[colKey]),
        Integers.SpellToggle.Y["Point_Cata"] + (-Widget.API["GetHeight"](b) - 70)
        * Lua_API.Math["math.floor"](Integers.SpellToggle.Row[rowKey] / Integers.SpellToggle.Column[colKey]))
      Integers.SpellToggle.Row[rowKey] = Integers.SpellToggle.Row[rowKey] + 1
      CreateNameIconToggles(b, settings, tabFrame)
    end
  end
end

return ASCT_Refresher
