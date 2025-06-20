local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isShadowlandsWowOrAbove"] then
ASCT.Widget.API["SetMovable"](ASCT.Frames.Initializers["ASCT_Config"], true)
ASCT.Widget.API["EnableMouse"](ASCT.Frames.Initializers["ASCT_Config"], true)
ASCT.Widget.API["SetResizable"](ASCT.Frames.Initializers["ASCT_Config"], true)
ASCT.Widget.API["SetClampedToScreen"](ASCT.Frames.Initializers["ASCT_Config"], true)
ASCT.Widget.API["SetPoint"](ASCT.Frames.Initializers["ASCT_Config"], ASCT.Strings.Point["CENTER"], UIParent, ASCT.Strings.Point["CENTER"], 1000, 650)
ASCT.Widget.API["SetPoint"](ASCT.Frames.Initializers["ASCT_Config"], ASCT.Strings.Point["CENTER"], UIParent, ASCT.Strings.Point["CENTER"])
ASCT.Widget.API["SetSize"](ASCT.Frames.Initializers["ASCT_Config"], 1000, 650)
ASCT.Widget.API["RegisterForDrag"](ASCT.Frames.Initializers["ASCT_Config"], "LeftButton")
ASCT.Widget.API["Hide"](ASCT.Frames.Initializers["ASCT_Config"])
end