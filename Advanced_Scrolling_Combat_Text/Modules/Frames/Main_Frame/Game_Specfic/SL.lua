local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Widget_Methods_Table
if L_Version_Check_Keys["isShadowlandsWow"] then
    L_ASCT_Widget_Methods["SetMinResize"](L_ASCT_Frames["ASCT_Config"], 1000,200)
    L_ASCT_Widget_Methods["SetMaxResize"](L_ASCT_Frames["ASCT_Config"], 1000,650)
end