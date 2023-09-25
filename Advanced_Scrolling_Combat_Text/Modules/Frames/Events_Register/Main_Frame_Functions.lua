local L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Frames_Table, ASCT_Widget_Methods_Table
L_ASCT_Widget_Methods["Create_GUI_Frame"] = function(FrameName, Location, Template)
    local Frame = CreateFrame(L_ASCT_Frames["Create_Frame"], FrameName, Location, Template)
    return Frame
end
L_ASCT_Widget_Methods["SetMovable"] = function(Frame, boolean) Frame:SetMovable(boolean) return Frame end
L_ASCT_Widget_Methods["EnableMouse"] = function(Frame, boolean) Frame:EnableMouse(boolean) return Frame end
L_ASCT_Widget_Methods["SetResizable"] = function(Frame, boolean) Frame:SetResizable(boolean) return Frame end
L_ASCT_Widget_Methods["SetClampedToScreen"] = function(Frame, boolean) Frame:SetClampedToScreen(boolean) return Frame end
---------------------------
--SetPoint
---------------------------
L_ASCT_Widget_Methods["SetPoint"] = function(Frame, Location_1, Location_On_Screen, Location_2, x, y) Frame:SetPoint(Location_1, Location_On_Screen, Location_2, x, y) return Frame end
L_ASCT_Widget_Methods["SetPoint_2"] = function(Frame, Location_1, Location_On_Screen, Location_2) Frame:SetPoint(Location_1, Location_On_Screen, Location_2) return Frame end
L_ASCT_Widget_Methods["SetPoint_Config_Frame"] = function(Frame, Location_1, Parentframe, Location_2) Frame:SetPoint(Location_1, Parentframe, Location_2) return Frame end
L_ASCT_Widget_Methods["SetPoint_3"] = function(Frame, Location, x, y) Frame:SetPoint(Location, x, y) return Frame end
L_ASCT_Widget_Methods["SetPoint_4"] = function(Frame, location_1, anchor, location_2, x, y) Frame:SetPoint(location_1, anchor, location_2, x, y) return Frame end
---------------------------
L_ASCT_Widget_Methods["SetSize"] = function(Frame, w, h) Frame:SetSize(w, h) return Frame end
L_ASCT_Widget_Methods["SetTexture"] = function(Frame, texture) Frame:SetTexture(texture) return Frame end
L_ASCT_Widget_Methods["SetMinResize"] = function(Frame, w, h) Frame:SetMinResize(w, h) return Frame end
L_ASCT_Widget_Methods["SetMaxResize"] = function(Frame, w, h) Frame:SetMaxResize(w, h) return Frame end
L_ASCT_Widget_Methods["SetResizeBounds"] = function(Frame, w1, h1, w2, h2) Frame:SetResizeBounds(w1, h1, w2, h2) return Frame end
L_ASCT_Widget_Methods["RegisterForDrag"] = function(Frame, Button) Frame:RegisterForDrag(Button) return Frame end
L_ASCT_Widget_Methods["Hide"] = function(Frame) Frame:Hide() return Frame end
L_ASCT_Widget_Methods["Show"] = function(Frame) Frame:Show() return Frame end
---------------------------
L_ASCT_Widget_Methods["SetWidth"] = function(Frame, Width) Frame:SetWidth(Width) return Frame end
L_ASCT_Widget_Methods["SetHeight"] = function(Frame, Height) Frame:SetHeight(Height) return Frame end
L_ASCT_Widget_Methods["SetOrientation"] = function(Frame, Orientation) Frame:SetOrientation(Orientation) return Frame end
L_ASCT_Widget_Methods["SetMinMaxValues"] = function(Frame, MinVal, MaxVal) Frame:SetMinMaxValues(MinVal, MaxVal) return Frame end
L_ASCT_Widget_Methods["SetValue"] = function(Frame, Val) Frame:SetValue(Val) return Frame end
L_ASCT_Widget_Methods["SetValueStep"] = function(Frame, Val) Frame:SetValueStep(Val) return Frame end
L_ASCT_Widget_Methods["SetObeyStepOnDrag"] = function(Frame, bool) Frame:SetObeyStepOnDrag(bool) return Frame end
L_ASCT_Widget_Methods["SetText"] = function(Frame, Text) Frame:SetText(Text) return Frame end
L_ASCT_Widget_Methods["SetChecked"] = function(Frame, Checked) Frame:SetChecked(Checked) return Frame end
L_ASCT_Widget_Methods["SetEnabled"] = function(Frame, Enabled) Frame:SetEnabled(Enabled) return Frame end
L_ASCT_Widget_Methods["GetChecked"] = function(Frame) Frame:GetChecked() return Frame end
L_ASCT_Widget_Methods["SetFontObject"] = function(Frame, fontObject) Frame:SetFontObject(fontObject) return Frame end
L_ASCT_Widget_Methods["SetID"] = function(Frame, ID) Frame:SetID(ID) return Frame end
---------------------------
L_ASCT_Widget_Methods["SetOwner"] = function(Frame, OwnerFrame, anchor) Frame:SetOwner(OwnerFrame, anchor) return Frame end
L_ASCT_Widget_Methods["AddLine"] = function(Frame, Line) Frame:AddLine(Line) return Frame end