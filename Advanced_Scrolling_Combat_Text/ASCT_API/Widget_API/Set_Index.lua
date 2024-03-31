local ASCT = ASCT_Table
--ASCT.Widget.API
ASCT.Widget.API["SetMovable"] = function(Frame, boolean) Frame:SetMovable(boolean) return Frame end
ASCT.Widget.API["SetResizable"] = function(Frame, boolean) Frame:SetResizable(boolean) return Frame end
ASCT.Widget.API["SetClampedToScreen"] = function(Frame, boolean) Frame:SetClampedToScreen(boolean) return Frame end
ASCT.Widget.API["SetPoint"] = function(Frame, point, relativeTo, relativePoint, offsetX, offsetY) Frame:SetPoint(point, relativeTo, relativePoint, offsetX, offsetY) return Frame end
---------------------------
ASCT.Widget.API["SetSize"] = function(Frame, w, h) Frame:SetSize(w, h) return Frame end
ASCT.Widget.API["SetTexture"] = function(Frame, texture) Frame:SetTexture(texture) return Frame end
ASCT.Widget.API["SetMinResize"] = function(Frame, Width, Height) Frame:SetMinResize(Width, Height) return Frame end
ASCT.Widget.API["SetMaxResize"] = function(Frame, Width, Height) Frame:SetMaxResize(Width, Height) return Frame end
ASCT.Widget.API["SetResizeBounds"] = function(Frame, minWidth, minHeight, maxWidth, maxHeight) Frame:SetResizeBounds(minWidth, minHeight, maxWidth, maxHeight) return Frame end
---------------------------
ASCT.Widget.API["SetWidth"] = function(Frame, Width) Frame:SetWidth(Width) return Frame end
ASCT.Widget.API["SetHeight"] = function(Frame, Height) Frame:SetHeight(Height) return Frame end
ASCT.Widget.API["SetOrientation"] = function(Frame, Orientation) Frame:SetOrientation(Orientation) return Frame end
ASCT.Widget.API["SetMinMaxValues"] = function(Frame, MinVal, MaxVal) Frame:SetMinMaxValues(MinVal, MaxVal) return Frame end
ASCT.Widget.API["SetValue"] = function(Frame, Val) Frame:SetValue(Val) return Frame end
ASCT.Widget.API["SetValueStep"] = function(Frame, Val) Frame:SetValueStep(Val) return Frame end
ASCT.Widget.API["SetObeyStepOnDrag"] = function(Frame, boolean) Frame:SetObeyStepOnDrag(boolean) return Frame end
ASCT.Widget.API["SetText"] = function(Frame, Text) Frame:SetText(Text) return Frame end
ASCT.Widget.API["SetChecked"] = function(Frame, Checked) Frame:SetChecked(Checked) return Frame end
ASCT.Widget.API["SetEnabled"] = function(Frame, Enabled) Frame:SetEnabled(Enabled) return Frame end
ASCT.Widget.API["SetFontObject"] = function(Frame, fontObject) Frame:SetFontObject(fontObject) return Frame end
ASCT.Widget.API["SetID"] = function(Frame, ID) Frame:SetID(ID) return Frame end
ASCT.Widget.API["SetScrollChild"] = function(Frame, Child) Frame:SetScrollChild(Child) return Frame end
---------------------------
ASCT.Widget.API["SetOwner"] = function(Frame, OwnerFrame, anchor) Frame:SetOwner(OwnerFrame, anchor) return Frame end