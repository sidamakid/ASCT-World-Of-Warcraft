local L_ASCT_Frames = ASCT_Frames_Table
---------------------------
--CreateFrame
---------------------------
local CreateFrame = CreateFrame
L_ASCT_Frames["CreateFrame"] = CreateFrame
L_ASCT_Frames["Create_Frame"] = "Frame"
--[[
L_ASCT_Frames["Multiple_CreateFrame"] = function (numFrames)
    local Frame_Contents = {};
    for i = 1, numFrames do
    local FrameContent = L_ASCT_Frames["CreateFrame"](L_ASCT_Frames["Create_Frame"])
    table.insert(Frame_Contents, FrameContent)
    end
    return unpack(Frame_Contents)
end
]]