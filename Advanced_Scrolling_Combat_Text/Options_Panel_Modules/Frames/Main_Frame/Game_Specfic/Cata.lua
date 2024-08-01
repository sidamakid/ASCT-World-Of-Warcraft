local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] then
    if ASCT.Client.tocversion["is40300"] then
        ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif ASCT.Client.tocversion["is40400"] then
        ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end