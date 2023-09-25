local L_ASCT_Frames = ASCT_Frames_Table
local f = CreateFrame("Frame")
-------------------------
--Titile Creating
-------------------------
L_ASCT_Frames["TitleCreate"] = function (content, x, y, Text)
	content.title = content:CreateFontString(nil, "OVERLAY");
	content.title:SetFontObject("GameFontHighlight");
	content.title:SetPoint("TOP", content, "TOP", x, y);
	content.title:SetText(Text);
	return Text
end
-------------------------
--Tab Text Creating
-------------------------
L_ASCT_Frames["TextCreate"] = function (Text)
local text = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
text:SetText(Text)
return Text
end