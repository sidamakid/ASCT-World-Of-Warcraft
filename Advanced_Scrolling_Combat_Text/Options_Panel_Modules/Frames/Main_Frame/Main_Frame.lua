local ASCT = ASCT_Table
--ASCT.Frames
ASCT.Frames.Initializers["InitializeOptions_Frame"] = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameName["Frame"])
ASCT.Frames.Initializers["ASCT_Config"] = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameName["Frame"], "ASCT_Config", UIParent, "UIPanelDialogTemplate")