local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, API, Functions, Strings, Widget = ASCT.Client, ASCT.API, ASCT.Functions, ASCT.Strings, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isNotDragonFlightWow"] then
ASCT.Frames.Widgets["CreateDropdownMenu"] = function(FrameName, parent, Point_A, x, y, Point_B, db_Table, width, options, db_Nested_Table_Key, dbKey)
    local dropdown = API.Documentation["CreateFrame"](Strings.FrameType["Frame"], FrameName, parent, "UIDropDownMenuTemplate")
    Widget.API["SetPoint"](dropdown, Point_A, parent, Point_B, x, y)
    UIDropDownMenu_SetWidth(dropdown, width)
    UIDropDownMenu_SetText(dropdown, L[db_Table[db_Nested_Table_Key][dbKey]])

    UIDropDownMenu_Initialize(dropdown, function(self, level)
        local function OnClick(self)
            UIDropDownMenu_SetText(dropdown, L[self.value])
            db_Table[db_Nested_Table_Key][dbKey] = self.value
        end
        for _, option in Functions.Table["ipairsByKeys"](options) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = L[option]
            info.value = option
            info.func = OnClick
            UIDropDownMenu_AddButton(info)
        end
    end)
    return dropdown
end
end