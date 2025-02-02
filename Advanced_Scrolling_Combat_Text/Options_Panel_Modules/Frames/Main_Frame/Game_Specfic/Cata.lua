local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isCataclysmWow"] then
    if Client.tocversion["is40300"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is40400"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    elseif Client.tocversion["is40401"] then
        Widget.API["SetResizeBounds"](Frames.Initializers["ASCT_Config"], 950,200, 950,650)
    end
end