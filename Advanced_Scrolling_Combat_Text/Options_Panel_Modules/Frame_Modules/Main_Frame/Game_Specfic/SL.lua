local ASCT = ASCT_Table
local Client, Frames, Widget = ASCT.Client, ASCT.Frames, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isShadowlandsWow"] then
    if Client.tocversion["90207"] then
    Widget.API["SetMinResize"](Frames.Initializers["ASCT_Config"], 1000,200)
    Widget.API["SetMaxResize"](Frames.Initializers["ASCT_Config"], 1000,650)
    end
end