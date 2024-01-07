local ASCT, L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Table, ASCT_Frames_Table, ASCT_Widget_Methods_Table
if ASCT.Client["isVanillaWow"] then
if ASCT.Client["is11403"] then
L_ASCT_Widget_Methods["SetMinResize"](L_ASCT_Frames["ASCT_Config"], 950,200)
L_ASCT_Widget_Methods["SetMaxResize"](L_ASCT_Frames["ASCT_Config"], 950,650)
elseif ASCT.Client["is11404"] then
L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 950,200, 950,650)
elseif ASCT.Client["is11500"] then
L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 950,200, 950,650)
end
end