local ASCT = ASCT_Table
if ASCT.Client["isWrathWow"] then
    if ASCT.Client.tocversion["is30400"] then
    ASCT.Widget.API["SetMinResize"](ASCT.Frames.Initializers["ASCT_Config"], 950,200)
    ASCT.Widget.API["SetMaxResize"](ASCT.Frames.Initializers["ASCT_Config"], 950,650)
    elseif ASCT.Client.tocversion["is30401"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif ASCT.Client.tocversion["is30402"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif ASCT.Client.tocversion["is30403"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end