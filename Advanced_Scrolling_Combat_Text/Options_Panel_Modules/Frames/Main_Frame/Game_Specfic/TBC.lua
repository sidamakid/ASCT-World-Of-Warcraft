local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"] then
if ASCT.Client.tocversion["is20504"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
end
end