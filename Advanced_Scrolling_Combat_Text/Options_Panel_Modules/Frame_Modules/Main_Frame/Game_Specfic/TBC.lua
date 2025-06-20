local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isTbcWow"] then
    if Client.tocversion["is20504"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end