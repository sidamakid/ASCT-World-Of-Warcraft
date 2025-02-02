local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isDragonFlightWow"] then
    if Client.tocversion["is100002"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100005"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100007"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100100"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100105"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100107"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100200"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100205"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100206"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is100207"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    end
end