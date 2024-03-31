local ASCT = ASCT_Table
ASCT.Widget.API["GetWidth"] = function(Frame) local width, height = Frame:GetWidth() return width, height end
ASCT.Widget.API["GetHeight"] = function(Frame) local width, height = Frame:GetHeight() return width, height end
ASCT.Widget.API["GetChecked"] = function(Frame) local checked = Frame:GetChecked() return checked end
ASCT.Widget.API["GetName"] = function(Frame) local name = Frame:GetName() return name end
ASCT.Widget.API["GetParent"] = function(Frame) local parent = Frame:GetParent() return parent end
ASCT.Widget.API["GetID"] = function(Frame) local id = Frame:GetID() return id end
ASCT.Widget.API["GetScrollChild"] = function(Frame) local ScrollChild = Frame:GetScrollChild() return ScrollChild end