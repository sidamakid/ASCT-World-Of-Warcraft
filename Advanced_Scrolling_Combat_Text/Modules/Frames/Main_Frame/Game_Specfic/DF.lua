local ASCT = ASCT_Table
local L_ASCT_Frames, L_ASCT_Widget_Methods = ASCT_Frames_Table, ASCT_Widget_Methods_Table
if ASCT.Client["isDragonFlightWow"] then
    if ASCT.Client["is100002"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100005"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100007"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100100"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100105"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100107"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    elseif ASCT.Client["is100200"] then
        L_ASCT_Widget_Methods["SetResizeBounds"](L_ASCT_Frames["ASCT_Config"], 1000,200, 1000,650)
    end
end