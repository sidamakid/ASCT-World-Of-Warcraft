local L_Function_Keys = Functions_For_ASDC_Table
-------------------------
--Titile Creating
-------------------------
L_Function_Keys["TitleCreate"] = function (content, x, y, Text)
	content.title = content:CreateFontString(nil, "OVERLAY");
	content.title:SetFontObject("GameFontHighlight");
	content.title:SetPoint("TOP", content, "TOP", x, y);
	content.title:SetText(Text);
	return Text
end
-------------------------
--Tab Text Creating
-------------------------
L_Function_Keys["TextCreate"] = function (Frame, Text)
local text = Frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
text:SetText(Text)
return Text
end