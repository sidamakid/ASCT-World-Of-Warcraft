local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
    if Client.tocversion["is110000"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is110002"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is110005"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is110007"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is110100"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    elseif Client.tocversion["is110105"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 1000,200, 1000,650)
    end
end