local ASCT = ASCT_Table

ASCT.API.Documentation["CreateFrame"] = function(frameType , name, parent, template, id)
    local frame = CreateFrame(frameType , name, parent, template, id)
    return frame
end
ASCT.API.Documentation["CreateTexture"] = function(Frame)
    local texture = Frame:CreateTexture()
    return texture
end
ASCT.API.Documentation["CreateFontString"] = function(Frame, name, drawLayer, templateName)
    local line = Frame:CreateFontString(name, drawLayer, templateName)
    return line
end