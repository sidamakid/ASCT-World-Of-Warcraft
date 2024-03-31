local ASCT = ASCT_Table
if ASCT.Client["isVanillaWow"] then
if ASCT.Client["is11403"] then
    ASCT.Widget.API["SetMinResize"](ASCT.Frames.Initializers["ASCT_Config"], 950,200)
    ASCT.Widget.API["SetMaxResize"](ASCT.Frames.Initializers["ASCT_Config"], 950,650)
elseif ASCT.Client["is11404"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
elseif ASCT.Client["is11500"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
elseif ASCT.Client["is11501"] then
    ASCT.Widget.API["SetResizeBounds"](ASCT.Frames.Initializers["ASCT_Config"], 950,200, 950,650)
end
end