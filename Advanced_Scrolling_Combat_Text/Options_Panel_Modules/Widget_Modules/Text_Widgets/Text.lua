local ASCT = ASCT_Table
ASCT.Frames.Widgets["Interger_Value_Text"] = function (UIParent, Location, x, y, Table_Value, Variable_Value)
  local fs = ASCT.API.Documentation["CreateFontString"](UIParent, nil, "OVERLAY", "GameTooltipText")
  ASCT.Widget.API["SetPoint"](fs, Location, x, y)
  ASCT.Widget.API["SetText"](fs, ASCT_DB[Table_Value][Variable_Value])
  return fs
end