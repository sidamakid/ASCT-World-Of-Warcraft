--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--All Tables
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Lua_API, ASCT, L =
Lua_API_Table,
ASCT_Table, --Checks the Version of the game to find which files to load for ASCT
ASCT_locale_Table --Localize Words Table
local Keys = ASCT.Keys
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Nested_ASCT_Tables
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Client, Frames, Database, Functions, Scripts, Widget, API, Integers, Strings, Str_Int, Locale = Keys.Metatables["Client"], Keys.Metatables["Frames"], Keys.Metatables["Database"], Keys.Metatables["Functions"], Keys.Metatables["Scripts"], Keys.Metatables["Widget"], Keys.Metatables["API"], Keys.Metatables["Integers"], Keys.Metatables["Strings"], Keys.Metatables["Str_Int"], Keys.Metatables["Locale"]
if Client.LE_EXPANSION_LEVEL["isCataclysmWow"] then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--For Call Back handler
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function InitializeOptions()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Load the Initializer Frame as well as Text Frame
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local f = Frames.Initializers["InitializeOptions_Frame"]
local Text_Frame = Frames.Miscellaneous["Text_Frame"]
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Create SavedVars
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local defaults = Functions.Table["TableCombine"](Database.Spells["Spells_Cataclysm"], Database.Spells["Others_Cataclysm"])
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Initialize Options panel
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function f:InitializeOptions_Class()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Create The MainFrame
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local ASCT_Config = Frames.Initializers["ASCT_Config"]
Lua_API.Table["table.insert"](UISpecialFrames, "ASCT_Config")
Scripts.Frame["OnDragStart"](ASCT_Config, function(self)
  if Widget.API["IsLeftAltKeyDown"]() then
    Widget.API["StartSizing"](self)
  else
    Widget.API["StartMoving"](self)
  end
end)
Scripts.Frame["OnDragStop"](ASCT_Config, function(self)
    Widget.API["StopMovingOrSizing"](self)
end)

--Child Frames
ASCT_Config.title = API.Documentation["CreateFontString"](ASCT_Config, Lua_API.Var_Type["nil"], Strings.Layer["OVERLAY"]);
Widget.API["SetFontObject"](ASCT_Config.title, "GameFontHighlight")
Widget.API["SetPoint"](ASCT_Config.title, Strings.Point["TOP"], ASCT_Config, Strings.Point["TOP"], 1, -7);
Widget.API["SetText"](ASCT_Config.title, L["Title"]);

-- Create the scrolling parent frame and size it to fit inside the texture
ASCT_Config.scrollFrame = API.Documentation["CreateFrame"](Strings.FrameType["ScrollFrame"], Lua_API.Var_Type["nil"], ASCT_Config, "UIPanelScrollFrameTemplate")
Widget.API["SetPoint"](ASCT_Config.scrollFrame, Strings.Point["TOPLEFT"], 3, -25)
Widget.API["SetPoint"](ASCT_Config.scrollFrame, Strings.Point["BOTTOMRIGHT"], -27, 4)

local function Tab_OnClick (self)
  PanelTemplates_SetTab(Widget.API["GetParent"](self), Widget.API["GetID"](self));

  local scrollChild = Widget.API["GetScrollChild"](ASCT_Config.scrollFrame);
  if (scrollChild) then
    Widget.API["Hide"](scrollChild);
  end

  Widget.API["SetScrollChild"](ASCT_Config.scrollFrame, self.content);
  Widget.API["Show"](self.content);
end


local function SetTabs(frame, numTabs, ...)
frame.numTabs = numTabs
local contents = {};
local frameName = Widget.API["GetName"](frame);
for i = 1, numTabs do
  local tab = API.Documentation["CreateFrame"](Strings.FrameType["Button"], frameName.."Tab"..i, frame, "CharacterFrameTabButtonTemplate");
  Widget.API["SetID"](tab, i);
  Widget.API["SetText"](tab, Lua_API.Functions["Select"](i, ...))
  Scripts.Frame["OnClick"](tab, Tab_OnClick);

  tab.content = API.Documentation["CreateFrame"](Strings.FrameType["Frame"], Lua_API.Var_Type["nil"], ASCT_Config.scrollFrame);
  Widget.API["SetSize"](tab.content, 770, 500)
  Widget.API["Hide"](tab.content)




  Lua_API.Table["table.insert"](contents, tab.content)

  if (i == 1) then
    Widget.API["SetPoint"](tab, Strings.Point["TOPLEFT"], ASCT_Config, Strings.Point["BOTTOMLEFT"], 5, 7);
  else
    Widget.API["SetPoint"](tab, Strings.Point["TOPLEFT"], Lua_API.Var_Environment["_G"][frameName.."Tab"..(i - 1)], Strings.Point["TOPRIGHT"], -14, 0);
  end
end

  Tab_OnClick(Lua_API.Var_Environment["_G"][frameName.."Tab1"])
return unpack(contents)
end
---------------------------
--Slash Commands
---------------------------
SLASH_ASCT1 = "/ASCT"
SlashCmdList.ASCT = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	Widget.API["Show"](ASCT_Config)
end
---------------------------
--Loading message.
---------------------------
print(L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."])
---------------------------
--Text Creating
---------------------------
local TextCreate = Frames.Widgets["TextCreate"]
---------------------------
--Title Creating
---------------------------
local TitleCreate = Frames.Widgets["TitleCreate"]
---------------------------
--Automatic Class picker
---------------------------
local Class = Lua_API.Functions["Select"](3, API.Documentation["UnitClass"](Strings.UnitId["player"]))
local classMapping = ASCT.Tables.OptionsPanel["ClassMapping"]
-- Check if the player's class matches and dynamically set values
for className, data in pairs(Str_Int.Class) do
    if Class == data then
        ASCT_DB["Class"][classMapping[className].dbKey] = true
        Text1 = TextCreate(Text_Frame, L[classMapping[className].specs[1]])
        Text2 = TextCreate(Text_Frame, L[classMapping[className].specs[2]])
        Text3 = TextCreate(Text_Frame, L[classMapping[className].specs[3]])
        break
    end
end
-------------------------
---Tabs
-------------------------
--local content1, content2, content3, content4, content5, content6, content7, content8, content9, content10, content11 = SetTabs(ASCT_Config, 11, Text1, Text2, Text3, L["Racials"], L["Settings"], L["Shared Spell cd's"], L["Leveling"], L["Stats"], L["Auras"], L["Trinkets"], L["About"])
--local content1, content2, content3, content4, content5, content6, content7, content8, content9, content10, content11, content12 = SetTabs(ASCT_Config, 12, Text1, Text2, Text3, L["Racials"], L["Settings"], L["Shared Spell cd's"], L["Miscellaneous"], L["Stats"], L["Resistances"], L["Auras"], L["Trinkets"], L["Message Selector"])
local content1, content2, content3, content4, content5, content6, content7, content8, content9, content10, content11 = SetTabs(ASCT_Config, 11, Text1, Text2, Text3, L["Racials"], L["Auras"], L["Shared Spell cd's"], L["Miscellaneous"], L["Stats"], L["Resistances"], L["Trinkets"], L["Settings"])
local content_6_TextTop = TitleCreate(content6, Strings.Point["TOP"], 0, -10, Strings.Point["TOP"], L["This Tab is for Shaman's and Hunter's only."])
--local content_11_Text = TitleCreate(content11, Strings.Point["CENTER"], 95, 0, Strings.Point["CENTER"], L["About_Line_1"].."\n"..L["About_Line_2"].."\n"..L["About_Line_3"].."\n"..L["About_Line_4"].."\n"..L["About_Line_5"])
---------------------------
--MiniMap Icon
---------------------------
local MinimapDataObject = LibStub("LibDataBroker-1.1"):NewDataObject("ASCT", {
    type = "ASCT",
    text = L["Title"],
    icon = "Interface\\Addons\\Advanced_Scrolling_Combat_Text\\Options_Panel\\Mini_Icon.tga",
    OnClick = function() ASCT_Config:Show()  end,
	--GameToolTip
    OnTooltipShow = function(tooltip)
      tooltip:AddLine(L["Title"])
	  tooltip:AddLine(L["Tooltip Button"])
    end,
});

LibStub("LibDBIcon-1.0"):Register("ASCT", MinimapDataObject, ASCT_DB)
---------------------------
--Color Picker Spells
---------------------------
local Color_picker_SARTE = API.Documentation["CreateFrame"](Strings.FrameType["Button"], Lua_API.Var_Type["nil"], content11, "UIPanelButtonTemplate")
    Widget.API["SetPoint"](Color_picker_SARTE, Strings.Point["TOPRIGHT"], -70, -20)
    Widget.API["SetText"](Color_picker_SARTE, L["Color Picker"])
    Widget.API["SetWidth"](Color_picker_SARTE, 150)
	Scripts.Frame["OnClick"](Color_picker_SARTE, function()
		Frames.Widgets["ADSC_SHOW_COLOR_PICKER_FRAME_ShowColorPicker"](ASCT_Color_Picker_Variables);
end)
--[[
---------------------------
--Main options panel
---------------------------
local panel_main = API.Documentation["CreateFrame"]("Frame")
panel_main.name = L["Title"]
InterfaceOptions_AddCategory(panel_main)
---------------------------
--Open to options panel through default options panel
---------------------------
local OpenToOptionsPanel = API.Documentation["CreateFrame"](Strings.FrameType["Button"], Lua_API.Var_Type["nil"], panel_main, "UIPanelButtonTemplate")
	Widget.API["SetPoint"](OpenToOptionsPanel, Strings.Point["CENTER"], 0, 0)
	Widget.API["SetText"](OpenToOptionsPanel, L["Open To Options Panel"])
	Widget.API["SetWidth"](OpenToOptionsPanel, 150)
	Scripts.Frame["OnClick"](OpenToOptionsPanel, function()
	HideUIPanel(InterfaceOptionsFrame)
	HideUIPanel(GameMenuFrame)
	Widget.API["Show"](ASCT_Config)
end)
]]
---------------------------
--Gains and Losses Toogles
---------------------------
local CreateGainsLossToggles = Frames.Widgets["CreateGainsLossToggles"]
---------------------------
--Stat Toggles
---------------------------
local CreateStatToggle = Frames.Widgets["CreateStatToggle"]
---------------------------
--Buttons
---------------------------
local Buttons = Frames.Widgets["Buttons"]
local CreateResetButtonToggles = Frames.Widgets["CreateResetButtonToggles"]
---------------------------
--Name Icon Toggles
---------------------------
local CreateNameIconToggles = Frames.Widgets["CreateNameIconToggles"]
---------------------------
--Spell Toggles
---------------------------
local CreateSpellToggle = Frames.Widgets["CreateSpellToggle"]
local Locale_SpellName = Locale.Spells["ASCT_GetLocalizedName"]
local Locale_SpellIcon = Locale.Spells["ASCT_GetLocalizedIcon"]
---------------------------
--Trinket Toggle
---------------------------
local CreateTrinketToggle = Frames.Widgets["CreateTrinketToggle"]
local CreateTrinketNameIconsToggles = Frames.Widgets["CreateTrinketNameIconsToggles"]
---------------------------
--Table Sorting
---------------------------
local PairsByKeys = Functions.Table["PairsByKeys"]
---------------------------
--Dropdown Menu Function
---------------------------
local CreateDropdownMenu = ASCT.Frames.Widgets["CreateDropdownMenu"]
---------------------------
-- Advanced Scrolling Combat Text Leveling
---------------------------
for v in PairsByKeys(ASCT_DB, ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]) do
	local b = API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], Lua_API.Var_Type["nil"], content7, "InterfaceOptionsCheckButtonTemplate")
	Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_AD_1"] % Integers.SpellToggle.Column["col_AD_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-5) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_AD_1"]/Integers.SpellToggle.Column["col_AD_1"]))
	Widget.API["SetText"](b.Text, L[v])
	Widget.API["SetChecked"](b, ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"][v])
	Scripts.Frame["OnClick"](b, function(s) ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"][v] = Widget.API["GetChecked"](s) end)
	Integers.SpellToggle.Row["x_AD_1"]=Integers.SpellToggle.Row["x_AD_1"]+1
end
---------------------------
-- Onlogin_Values
---------------------------
--[[
for v in PairsByKeys(ASCT_DB, ASCT_DB["Display_On_Login"]) do
	local b = API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], Lua_API.Var_Type["nil"], content11, "InterfaceOptionsCheckButtonTemplate")
	Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_AD_2"] % Integers.SpellToggle.Column["col_AD_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-5) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_AD_2"]/Integers.SpellToggle.Column["col_AD_2"]))
	Widget.API["SetText"](b.Text, L[v])
	Widget.API["SetChecked"](b, ASCT_DB["Display_On_Login"][v])
	Scripts.Frame["OnClick"](b, function(s) ASCT_DB["Display_On_Login"][v] = Widget.API["GetChecked"](s) end)
	Integers.SpellToggle.Row["x_AD_2"]=Integers.SpellToggle.Row["x_AD_2"]+1
end
]]
---------------------------
-- Advanced Scrolling Combat Stats
---------------------------
for Stat, settings in PairsByKeys(ASCT_DB, ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]) do
    local b = CreateStatToggle(Stat, settings, content8)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_AD_3"] % Integers.SpellToggle.Column["col_AD_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_AD_3"]/Integers.SpellToggle.Column["col_AD_3"]))
    Integers.SpellToggle.Row["x_AD_3"]=Integers.SpellToggle.Row["x_AD_3"]+1
    CreateGainsLossToggles(b, settings, content8)
end
---------------------------
-- Advanced Scrolling Combat Resistances
---------------------------
for Stat, settings in PairsByKeys(ASCT_DB, ASCT_DB["Advanced_Scrolling_Combat_Text_Resistance"]) do
    local b = CreateStatToggle(Stat, settings, content9)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_AD_4"] % Integers.SpellToggle.Column["col_AD_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_AD_4"]/Integers.SpellToggle.Column["col_AD_4"]))
    Integers.SpellToggle.Row["x_AD_4"]=Integers.SpellToggle.Row["x_AD_4"]+1
    CreateGainsLossToggles(b, settings, content9)
end
---------------------------
--Trinkets
---------------------------
for Stat, settings in PairsByKeys(ASCT_DB, ASCT_DB["Trinkets"]) do
    local b = CreateTrinketToggle(Stat, settings, content10)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_AD_5"] % Integers.SpellToggle.Column["col_AD_5"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_AD_5"]/Integers.SpellToggle.Column["col_AD_5"]))
    Integers.SpellToggle.Row["x_AD_5"]=Integers.SpellToggle.Row["x_AD_5"]+1
    CreateTrinketNameIconsToggles(b, settings, content10)
end
---------------------------
--Custom Buttons
---------------------------
local Debuffsfading = Buttons(ASCT_DB, "Advanced_Scrolling_Combat_Text_Auras", "Fading DeBuffs", content5, L["Fading Debuffs Alert"], Strings.Point["TOPLEFT"], 20, -20, L["Announces a Debuff you applied is about to fade on the Target."])
---------------------------
--Icon Slider
---------------------------
local SliderText_Icon = TitleCreate(content11, Strings.Point["TOP"], -265, -10, Strings.Point["TOP"], L["Icon Size"])
local Icon_Slider_Text = Frames.Widgets["Interger_Value_Text"](content11, Strings.Point["TOPLEFT"], 110, -40, "Integer_Values", "Icon")
local Icon_Slider = Frames.Widgets["CreateSlider"]("Icon_slider", content11, 200, 20, Strings.Point["TOPLEFT"], 20, -20, "HORIZONTAL", 1, 50, "Integer_Values", "Icon", 1, L["The size of the message icon"], '1', '50', Icon_Slider_Text)
---------------------------
--Debuff Slider
---------------------------
local SliderText_Debuff = TitleCreate(content11, Strings.Point["TOP"], -265, -130, Strings.Point["TOP"], L["Debuff fade time"])
local Debuff_Slider_Text = Frames.Widgets["Interger_Value_Text"](content11, Strings.Point["TOPLEFT"], 110, -160, "Integer_Values", "Debuff_time")
local Debuff_Slider = Frames.Widgets["CreateSlider"]("Debuff_Slider_S", content11, 200, 20, Strings.Point["TOPLEFT"], 20, -140, "HORIZONTAL", 1, 20, "Integer_Values", "Debuff_time", 1, L["The time warning for Debuffs about to fade"], "1", "20", Debuff_Slider_Text)
---------------------------
--Minimum_Resource_Cost Slider
---------------------------
--[[
local SliderText_Minimum_Resource_Cost = TitleCreate(content11, Strings.Point["TOP"], -265, -250, Strings.Point["TOP"], L["Minimum Resource Cost"])
local Minimum_Resource_Cost_Slider_Text = Frames.Widgets["Interger_Value_Text"](content11, Strings.Point["TOPLEFT"], 110, -280, "Integer_Values", "Minimum_Resource_Cost")
local Minimum_Resource_Cost_Slider = Frames.Widgets["CreateSlider"]("Minimum_Resource_Cost_Slider", content11, 200, 20, Strings.Point["TOPLEFT"], 20, -260, "HORIZONTAL", 1, API.Documentation["UnitPower"](Strings.UnitId["player"]), "Integer_Values", "Minimum_Resource_Cost", 1, L["The Minimum Resource Cost"], "1", API.Documentation["UnitPower"](Strings.UnitId["player"]), Minimum_Resource_Cost_Slider_Text)
]]
---------------------------
--Dropdown Menu
---------------------------
local fonts = {"Ready!", "Is Ready!", "is now ready!"}
local dropdown1 = CreateDropdownMenu("ASCTMessageFontDropdown", content11, Strings.Point["TOP"], 0, -20, Strings.Point["TOP"], ASCT_DB, 150, fonts, "Message_Selector", "Msg")
local text = API.Documentation["CreateFontString"](dropdown1, Lua_API.Var_Type["nil"], Strings.Layer["OVERLAY"], "GameFontHighlight")
Widget.API["SetText"](text, L["Ready Message"])
Widget.API["SetPoint"](text, Strings.Point["TOP"], dropdown1, Strings.Point["TOP"], 0, 12)
---------------------------
--Reset All Slider Values
---------------------------
local Slider_Reset_Icon = Frames.Widgets["MakeSliderReset"]({
    text = L["Reset Icon Size"],
    width = 150,
    anchor = {Strings.Point["TOPLEFT"], 40, -60},
    parent = content11,
    options = {
      {frame = Icon_Slider, text = Icon_Slider_Text, default = 18, location = {"Integer_Values", "Icon"}},
    },
    })
local Slider_Reset_Auras = Frames.Widgets["MakeSliderReset"]({
    text = L["Reset Debuff fade time"],
    width = 150,
    anchor = {Strings.Point["TOPLEFT"], 40, -180},
    parent = content11,
    options = {
      {frame = Debuff_Slider, text = Debuff_Slider_Text, default = 5, location = {"Integer_Values", "Debuff_time"}},
    },
    })
--[[
local Slider_Reset_Minimum_Resource_Cost = Frames.Widgets["MakeSliderReset"]({
    text = L["Reset Minimum Resource Cost"],
    width = 200,
    anchor = {Strings.Point["TOPLEFT"], 20, -300},
    parent = content11,
    options = {
      {frame = Minimum_Resource_Cost_Slider, text = Minimum_Resource_Cost_Slider_Text, default = 4, location = {"Integer_Values", "Minimum_Resource_Cost"}},
    },
    })
]]
local All_Slider_Reset = Frames.Widgets["MakeSliderReset"](
    {
    text = L["Reset All Slider Values"],
    width = 210,
    anchor = {Strings.Point["BOTTOMLEFT"], 20, 85},
    parent = content11,
    options = {
      {frame = Icon_Slider, text = Icon_Slider_Text, default = 18, location = {"Integer_Values", "Icon"}},
      {frame = Debuff_Slider, text = Debuff_Slider_Text, default = 5, location = {"Integer_Values", "Debuff_time"}},
      --{frame = Minimum_Resource_Cost_Slider, text = Minimum_Resource_Cost_Slider_Text, default = 4, location = {"Integer_Values", "Minimum_Resource_Cost"}},
    },
  }
)
--[[
CreateResetButtonToggles({
    FrameName = "ResetFrameSizeAndLocationButton",
    ButtonAnchor = content11,
    ButtonWidth = 240,
    ButtonHeight = 30,
    Text = L["Reset Options Panel Size And Location"],
    Point = "CENTER",
    RelativePoint = "CENTER",
    ButtonX = 0,
    ButtonY = 0,
    ResetFrame = ASCT_Config,
    OriginalWidth = 1000,
    OriginalHeight = 650,
    OriginalPoint = "CENTER",
    OriginalRelativeToAnchor = UIParent,
    OriginalRelativePoint = "CENTER"
})
]]
---------------------------
--Rogue
---------------------------
if ASCT_DB["Class"]["Rogue"] == true then
---------------------------
--Assassination
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Assassination"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Combat
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Combat"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Subtlety
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Subtlety"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Priest
---------------------------
elseif ASCT_DB["Class"]["Priest"] == true then
---------------------------
--Shadow
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Shadow"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Holy
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Holy_Priest"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Discipline
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Discipline"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Warrior
---------------------------
elseif ASCT_DB["Class"]["Warrior"] == true then
---------------------------
--Arms
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Arms"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Fury
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Fury"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Protection
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Protection_Warrior"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Druid
---------------------------
elseif ASCT_DB["Class"]["Druid"] == true then
---------------------------
--Balance
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Balance"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Feral_Combat
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Feral_Combat"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Restoration
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Druid_Restoration"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shaman
---------------------------
elseif ASCT_DB["Class"]["Shaman"] == true then
---------------------------
--Elemental
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Elemental"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Enhancement
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Enhancement"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Restoration
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Shaman_Restoration"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shared_Spells
---------------------------
for v in PairsByKeys(ASCT_DB, ASCT_DB["Shared_Shaman_spells"]) do
	local b = API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], Lua_API.Var_Type["nil"], content6, "InterfaceOptionsCheckButtonTemplate")
	Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_Shared"] % Integers.SpellToggle.Column["col_Shared"]), -20 + (- Widget.API["GetHeight"](b)-25) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_Shared"]/Integers.SpellToggle.Column["col_Shared"]))
	Widget.API["SetText"](b.Text, L[v])
	Widget.API["SetChecked"](b, ASCT_DB["Shared_Shaman_spells"][v])
	Scripts.Frame["OnClick"](b, function(s) ASCT_DB["Shared_Shaman_spells"][v] = Widget.API["GetChecked"](s) end)
	Integers.SpellToggle.Row["x_Shared"]=Integers.SpellToggle.Row["x_Shared"]+1
end
---------------------------
--Warlock
---------------------------
elseif ASCT_DB["Class"]["Warlock"] == true then
---------------------------
--Affliction
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Affliction"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Demonology
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Demonology"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Destruction
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Destruction"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Hunter
---------------------------
elseif ASCT_DB["Class"]["Hunter"] == true then
---------------------------
--Beast Mastery
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Beast Mastery"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Marksmanship
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Marksmanship"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Survival
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Survival"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shared_Spells
---------------------------
for v in PairsByKeys(ASCT_DB, ASCT_DB["Shared_Hunter_spells"]) do
	local b = API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], Lua_API.Var_Type["nil"], content6, "InterfaceOptionsCheckButtonTemplate")
	Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_Shared"] % Integers.SpellToggle.Column["col_Shared"]), -20 + (- Widget.API["GetHeight"](b)-25) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_Shared"]/Integers.SpellToggle.Column["col_Shared"]))
	Widget.API["SetText"](b.Text, L[v])
	Widget.API["SetChecked"](b, ASCT_DB["Shared_Hunter_spells"][v])
	Scripts.Frame["OnClick"](b, function(s) ASCT_DB["Shared_Hunter_spells"][v] = Widget.API["GetChecked"](s) end)
	Integers.SpellToggle.Row["x_Shared"]=Integers.SpellToggle.Row["x_Shared"]+1
end
---------------------------
--Paladin
---------------------------
elseif ASCT_DB["Class"]["Paladin"] == true then
---------------------------
--Holy
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Holy_Paladin"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Protection
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Protection_Paladin"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Retribution
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Retribution"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Mage
---------------------------
elseif ASCT_DB["Class"]["Mage"] == true then
---------------------------
--Arcane
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Arcane"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Fire
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Fire"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Frost
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Frost_Mage"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Death_Knight
---------------------------
elseif ASCT_DB["Class"]["Death Knight"] == true then
---------------------------
--Blood
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Blood"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content1)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_1"] % Integers.SpellToggle.Column["col_1"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_1"]/Integers.SpellToggle.Column["col_1"]))
    Integers.SpellToggle.Row["x_1"]=Integers.SpellToggle.Row["x_1"]+1
    CreateNameIconToggles(b, settings, content1)
end
---------------------------
--Frost
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Frost_DK"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content2)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_2"] % Integers.SpellToggle.Column["col_2"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_2"]/Integers.SpellToggle.Column["col_2"]))
    Integers.SpellToggle.Row["x_2"]=Integers.SpellToggle.Row["x_2"]+1
    CreateNameIconToggles(b, settings, content2)
end
---------------------------
--Unholy
---------------------------
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Unholy"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content3)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_3"] % Integers.SpellToggle.Column["col_3"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_3"]/Integers.SpellToggle.Column["col_3"]))
    Integers.SpellToggle.Row["x_3"]=Integers.SpellToggle.Row["x_3"]+1
    CreateNameIconToggles(b, settings, content3)
end

end

------------------------
--Automatic Race Picker
------------------------
local Race = Lua_API.Functions["Select"](3, API.Documentation["UnitRace"](Strings.UnitId["player"]))
-- Iterate over the ASCT.Str_Int.Race table
for raceName, raceID in pairs(Str_Int.Race) do
    -- Handle cases with multiple IDs (e.g., Pandaren, Dracthyr, Earthen)
    if type(raceID) == "table" then
        for _, id in ipairs(raceID) do
            if Race == id then
                ASCT_DB["Race"][raceName] = true
                break
            end
        end
    elseif Race == raceID then
        ASCT_DB["Race"][raceName] = true
        break
    end
end

------------------------
--Undead
------------------------
if ASCT_DB["Race"]["Undead"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Undead"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
------------------------
--Orc
------------------------
elseif ASCT_DB["Race"]["Orc"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Orc"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Troll
-----------------------
elseif ASCT_DB["Race"]["Troll"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Troll"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Tauren
-----------------------
elseif ASCT_DB["Race"]["Tauren"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Tauren"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
 --Human
--------------------- 
elseif ASCT_DB["Race"]["Human"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Human"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
-------------------
--Night Elf
-------------------
elseif ASCT_DB["Race"]["Night Elf"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Night Elf"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Gnome
---------------------
elseif ASCT_DB["Race"]["Gnome"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Gnome"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Dwarf
---------------------
elseif ASCT_DB["Race"]["Dwarf"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Dwarf"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Blood Elf
---------------------
elseif ASCT_DB["Race"]["Blood Elf"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Blood Elf"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Draenei 
---------------------
elseif ASCT_DB["Race"]["Draenei"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Draenei"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Worgen
---------------------
elseif ASCT_DB["Race"]["Worgen"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Worgen"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Goblin
---------------------
elseif ASCT_DB["Race"]["Goblin"] == true then
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Goblin"]) do
    local b = CreateSpellToggle(Locale_SpellName, Locale_SpellIcon, spellName, settings, content4)
    Widget.API["SetPoint"](b, Strings.Point["TOPLEFT"], Integers.SpellToggle.X["Point_Cata"] + (Widget.API["GetWidth"](b)+Integers.SpellToggle.Width["Width_Cata"]) * (Integers.SpellToggle.Row["x_4"] % Integers.SpellToggle.Column["col_4"]), Integers.SpellToggle.Y["Point_Cata"] + (- Widget.API["GetHeight"](b)-70) * Lua_API.Math["math.floor"](Integers.SpellToggle.Row["x_4"]/Integers.SpellToggle.Column["col_4"]))
    Integers.SpellToggle.Row["x_4"]=Integers.SpellToggle.Row["x_4"]+1
    CreateNameIconToggles(b, settings, content4)
end


end



end


---------------------------
--Slash Commands
---------------------------
SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI
---------------------------
--Saved Variables
---------------------------
ASCT_DB = ASCT_DB or {}
Functions.Table["MergeInNewValues"](ASCT_DB, defaults)
Functions.Table["DeleteOldValues"](defaults, ASCT_DB)
f:InitializeOptions_Class()
---------------------------
--Not used
---------------------------
f.db = ASCT_DB

end
Locale.Spells["ASCT_AddLocalizedCallback"](function()
	InitializeOptions()
    Functions.Initializers["Advanced_Scrolling_Combat_Text_RunInitializers"]()
  end)
end