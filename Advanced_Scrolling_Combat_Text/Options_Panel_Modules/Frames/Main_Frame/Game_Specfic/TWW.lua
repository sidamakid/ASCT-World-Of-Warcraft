local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
    if ASCT.Client.tocversion["is110000"] then
        ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    end
end