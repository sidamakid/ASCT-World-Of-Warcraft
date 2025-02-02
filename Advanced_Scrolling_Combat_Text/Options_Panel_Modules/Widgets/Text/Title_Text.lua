local ASCT = ASCT_Table
-------------------------
--Titile Creating
-------------------------
ASCT.Frames.Widgets["TitleCreate"] = function (content, point_1, x, y, point_2, Text)
	content.title = ASCT.API.Documentation["CreateFontString"](content, nil, "OVERLAY");
	ASCT.Widget.API["SetFontObject"](content.title, "GameFontHighlight");
	ASCT.Widget.API["SetPoint"](content.title, point_1, content, point_2, x, y);
	ASCT.Widget.API["SetText"](content.title, Text);
	return Text
end
-------------------------
--Tab Text Creating
-------------------------
ASCT.Frames.Widgets["TextCreate"] = function(Frame, Text)
   local text = ASCT.API.Documentation["CreateFontString"](Frame, nil, "ARTWORK", "GameFontNormal")
   ASCT.Widget.API["SetText"](text, Text)
   return Text
end