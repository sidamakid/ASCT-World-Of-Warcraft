local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Widget_Methods_Table
if L_Version_Check_Keys["isVanillaWow"] then
if L_Version_Check_Keys["is11403"] then
L_ASCT_Widget_Methods["SetMinResize"](L_ASCT_Frames["ASCT_Config"], 950,200)
L_ASCT_Widget_Methods["SetMaxResize"](L_ASCT_Frames["ASCT_Config"], 950,650)
elseif L_Version_Check_Keys["is11404"] then
L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 950,200, 950,650)
end
end