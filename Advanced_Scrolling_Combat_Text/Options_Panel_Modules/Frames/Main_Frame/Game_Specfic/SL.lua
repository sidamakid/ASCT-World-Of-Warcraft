local ASCT = ASCT_Table
if ASCT.Client["isShadowlandsWow"] then
    if ASCT.Client.tocversion["90207"] then
    ASCT.Widget.API["SetMinResize"](ASCT.Frames.Initializers["ASCT_Config"], 1000,200)
    ASCT.Widget.API["SetMaxResize"](ASCT.Frames.Initializers["ASCT_Config"], 1000,650)
    end
end