local ASCT = ASCT_Table
local Frames, Documentation, frameType = ASCT.Frames, ASCT.API.Documentation, ASCT.Strings.FrameType["Frame"]
--ASCT.Frames
Frames.Initializers["InitializeOptions_Frame"] = Documentation["CreateFrame"](frameType)
Frames.Initializers["ASCT_Config"] = Documentation["CreateFrame"](frameType, "ASCT_Config", UIParent, "UIPanelDialogTemplate")