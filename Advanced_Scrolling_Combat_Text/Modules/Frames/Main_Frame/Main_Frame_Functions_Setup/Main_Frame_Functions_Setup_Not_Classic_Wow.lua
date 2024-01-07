local ASCT, L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Table, ASCT_Frames_Table, ASCT_Widget_Methods_Table
if ASCT.Client["isShadowlandsWowOrAbove"] then
L_ASCT_Widget_Methods["SetMovable"](L_ASCT_Frames["ASCT_Config"], true)
L_ASCT_Widget_Methods["EnableMouse"](L_ASCT_Frames["ASCT_Config"], true)
L_ASCT_Widget_Methods["SetResizable"](L_ASCT_Frames["ASCT_Config"], true)
L_ASCT_Widget_Methods["SetClampedToScreen"](L_ASCT_Frames["ASCT_Config"], true)
L_ASCT_Widget_Methods["SetPoint"](L_ASCT_Frames["ASCT_Config"], "CENTER", UIParent, "CENTER", 1000, 650)
L_ASCT_Widget_Methods["SetPoint_Config_Frame"](L_ASCT_Frames["ASCT_Config"], "CENTER", UIParent, "CENTER")
L_ASCT_Widget_Methods["SetSize"](L_ASCT_Frames["ASCT_Config"], 1000, 650)
L_ASCT_Widget_Methods["RegisterForDrag"](L_ASCT_Frames["ASCT_Config"], "LeftButton")
L_ASCT_Widget_Methods["Hide"](L_ASCT_Frames["ASCT_Config"])
end