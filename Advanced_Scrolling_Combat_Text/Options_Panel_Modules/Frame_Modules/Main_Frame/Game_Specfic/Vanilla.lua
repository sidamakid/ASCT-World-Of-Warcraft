local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isVanillaWow"] then
    if Client.tocversion["is11403"] then
        Widget.API["SetMinResize"](Frames.Initializers["ASCT_Config"], 950,200)
        Widget.API["SetMaxResize"](Frames.Initializers["ASCT_Config"], 950,650)
    elseif Client.tocversion["is11404"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11500"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11501"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11502"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11503"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11504"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11505"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is11506"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end