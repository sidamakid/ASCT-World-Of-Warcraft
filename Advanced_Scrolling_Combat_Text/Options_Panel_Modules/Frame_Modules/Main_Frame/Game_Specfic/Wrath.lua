local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isWrathWow"] then
    if Client.tocversion["is30400"] then
        Widget.API["SetMinResize"](Frames.Initializers["ASCT_Config"], 950,200)
        Widget.API["SetMaxResize"](Frames.Initializers["ASCT_Config"], 950,650)
    elseif Client.tocversion["is30401"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is30402"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is30403"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end