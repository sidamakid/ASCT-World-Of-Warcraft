local L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Frames_Table, ASCT_Widget_Methods_Table
L_ASCT_Frames["InitializeOptions_Frame"] = L_ASCT_Frames["CreateFrame"](L_ASCT_Frames["Create_Frame"])
L_ASCT_Frames["ASCT_Config"] = L_ASCT_Widget_Methods["Create_GUI_Frame"]("ASCT_Config", UIParent, "UIPanelDialogTemplate")