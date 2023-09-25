local L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Frames_Table, ASCT_Widget_Methods_Table
L_ASCT_Frames["Interger_Value_Text"] = function (UIParent, Location, x, y, Table_Value, Variable_Value)
  local fs = UIParent:CreateFontString(nil, "OVERLAY", "GameTooltipText")
  L_ASCT_Widget_Methods["SetPoint"](fs, Location, x, y)
  L_ASCT_Widget_Methods["SetText"](fs, ASCT_DB[Table_Value][Variable_Value])
  return fs
end