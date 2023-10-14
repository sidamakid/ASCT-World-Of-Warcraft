---------------------------
--All Tables
---------------------------
local L_Version_Check_Keys, L_ASCT_Locale_Spells, L_Database_Keys, L_Table_Functions, L_ASCT_Frames, L_ASCT_Widget_Methods, L_ASCT_Handlers, L_Function_Keys, L =
ASCT_Version_Check_Table, --Checks the Version of the game to find which files to load for ASCT
ASCT_Spell_Locale_Table, --Localize Spells
Spell_Database_For_ASDC_Table, --ASCT Spells
Table_Functions_For_ASCT, --ASCT Table functions Merge/Combine, Organization, Save and delete values.
ASCT_Frames_Table, --Make ASCT Frames
ASCT_Widget_Methods_Table, --Widget Scripts for ASCT
ASCT_Script_Handlers_Table, --Script handlers.  
Functions_For_ASDC_Table, --Run functions for ASCT
ASDC_LOCALE_TABLE --Localize Words Table
if L_Version_Check_Keys["isTbcWow"] then
---------------------------
--For Call Back handler
---------------------------
local function InitializeOptions()
---------------------------
--Create Our Frame
---------------------------
local f = L_ASCT_Frames["InitializeOptions_Frame"]
---------------------------
--Normal table
---------------------------
local defaults = L_Table_Functions["TableCombine"](L_Database_Keys["Spells_TBC"], L_Database_Keys["Others_TBC"])
---------------------------
--Create Options panel
---------------------------
function f:InitializeOptions_Class()
local ASCT_Config = L_ASCT_Frames["ASCT_Config"]
table.insert(UISpecialFrames, "ASCT_Config")
ASCT_Config:SetScript("OnDragStart", function(self)
  if IsLeftAltKeyDown() then
    self:StartSizing()
  else
    self:StartMoving()
  end
end)
ASCT_Config:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)

--Child Frames
ASCT_Config.title = ASCT_Config:CreateFontString(nil, "OVERLAY");
L_ASCT_Widget_Methods["SetFontObject"](ASCT_Config.title, "GameFontHighlight")
L_ASCT_Widget_Methods["SetPoint_4"](ASCT_Config.title, "TOP", ASCT_Config, "TOP", 1, -7);
L_ASCT_Widget_Methods["SetText"](ASCT_Config.title, L["Title"]);

-- Create the scrolling parent frame and size it to fit inside the texture
ASCT_Config.scrollFrame = CreateFrame("ScrollFrame", nil, ASCT_Config, "UIPanelScrollFrameTemplate")
L_ASCT_Widget_Methods["SetPoint_3"](ASCT_Config.scrollFrame, "TOPLEFT", 3, -25)
L_ASCT_Widget_Methods["SetPoint_3"](ASCT_Config.scrollFrame, "BOTTOMRIGHT", -27, 4)

local function Tab_OnClick (self)
  PanelTemplates_SetTab(self:GetParent(), self:GetID());

  local scrollChild = ASCT_Config.scrollFrame:GetScrollChild();
  if (scrollChild) then
    scrollChild:Hide();
  end

  ASCT_Config.scrollFrame:SetScrollChild(self.content);
  L_ASCT_Widget_Methods["Show"](self.content)
end


local function SetTabs(frame, numTabs, ...)
frame.numTabs = numTabs
local contents = {};
local frameName = frame:GetName();
for i = 1, numTabs do
  local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "CharacterFrameTabButtonTemplate");
  L_ASCT_Widget_Methods["SetID"](tab, i);
  L_ASCT_Widget_Methods["SetText"](tab, select(i, ...))
  L_ASCT_Handlers["OnClick"](tab, Tab_OnClick);

  tab.content = CreateFrame("Frame", nil, ASCT_Config.scrollFrame);
  L_ASCT_Widget_Methods["SetSize"](tab.content, 770, 500)
  L_ASCT_Widget_Methods["Hide"](tab.content)




  table.insert(contents, tab.content)

  if (i == 1) then
    tab:SetPoint("TOPLEFT", ASCT_Config, "BOTTOMLEFT", 5, 7);
  else
    tab:SetPoint("TOPLEFT", _G[frameName.."Tab"..(i - 1)], "TOPRIGHT", -14, 0);
  end
end

  Tab_OnClick(_G[frameName.."Tab1"])
return unpack(contents)
end
---------------------------
--Slash Commands
---------------------------
SLASH_ASCT1 = "/ASCT"
SlashCmdList.ASCT = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	L_ASCT_Widget_Methods["Show"](ASCT_Config)
end
---------------------------
--Loading message.
---------------------------
print(L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."])
-------------------------
--Text Creating
-------------------------
local TextCreate = L_ASCT_Frames["TextCreate"]
-------------------------
--Title Creating
-------------------------
local TitleCreate = L_ASCT_Frames["TitleCreate"]
---------------------------
--Automatic Class picker
---------------------------
local Class = select(3, UnitClass("player"))
if Class == 4 then
	ASCT_DB["Class"]["Rogue"] = true
	Text1 = TextCreate(L["Assassination"])
	Text2 = TextCreate(L["Combat"])
	Text3 = TextCreate(L["Subtlety"])
elseif Class == 5 then
	ASCT_DB["Class"]["Priest"] = true
	Text1 = TextCreate(L["Shadow"])
	Text2 = TextCreate(L["Holy"])
	Text3 = TextCreate(L["Discipline"])
elseif Class == 1 then
	ASCT_DB["Class"]["Warrior"] = true
	Text1 = TextCreate(L["Arms"])
	Text2 = TextCreate(L["Fury"])
	Text3 = TextCreate(L["Protection"])
elseif Class == 11 then
	ASCT_DB["Class"]["Druid"] = true
	Text1 = TextCreate(L["Balance"])
	Text2 = TextCreate(L["Feral_Combat"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 9 then
	ASCT_DB["Class"]["Warlock"] = true
	Text1 = TextCreate(L["Affliction"])
	Text2 = TextCreate(L["Demonology"])
	Text3 = TextCreate(L["Destruction"])
elseif Class == 7 then
	ASCT_DB["Class"]["Shaman"] = true
	Text1 = TextCreate(L["Elemental"])
	Text2 = TextCreate(L["Enhancement"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 3 then
	ASCT_DB["Class"]["Hunter"] = true
	Text1 = TextCreate(L["Beast Mastery"])
	Text2 = TextCreate(L["Marksmanship"])
	Text3 = TextCreate(L["Survival"])
elseif Class == 2 then
	ASCT_DB["Class"]["Paladin"] = true
	Text1 = TextCreate(L["Holy"])
	Text2 = TextCreate(L["Protection"])
	Text3 = TextCreate(L["Retribution"])
elseif Class == 8 then
	ASCT_DB["Class"]["Mage"] = true
	Text1 = TextCreate(L["Arcane"])
	Text2 = TextCreate(L["Fire"])
	Text3 = TextCreate(L["Frost"])
end

-------------------------
---Tabs
-------------------------
--local content1, content2, content3, content4, content5, content6, content7, content8, content9 = SetTabs(ASCT_Config, 9, Text1, Text2, Text3, L["Racials"], L["Color Picker"], L["Shared Spell cd's"], L["Leveling"], L["Stats"], L["Auras"]);
local content1, content2, content3, content4, content5, content6, content7, content8, content9, content10 = SetTabs(ASCT_Config, 10, Text1, Text2, Text3, L["Racials"], L["Settings"], L["Shared Spell cd's"], L["Leveling"], L["Stats"], L["Auras"], L["Trinkets"]);
local TextTop = TitleCreate(content6, 0, -10, L["Tab"])
---------------------------
--MiniMap Icon
---------------------------
local MinimapDataObject = LibStub("LibDataBroker-1.1"):NewDataObject("ASCT", {
    type = "ASCT",
    text = L["Title"],
    icon = "Interface\\Addons\\Advanced_Scrolling_Combat_Text_Options\\Mini_Icon.tga",
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
local Color_picker_SARTE = CreateFrame("Button", nil, content5, "UIPanelButtonTemplate")
    L_ASCT_Widget_Methods["SetPoint_3"](Color_picker_SARTE, "TOPRIGHT", -70, -20)
    L_ASCT_Widget_Methods["SetText"](Color_picker_SARTE, L["Color Picker"])
    L_ASCT_Widget_Methods["SetWidth"](Color_picker_SARTE, 150)
	L_ASCT_Handlers["OnClick"](Color_picker_SARTE, function()
		L_ASCT_Frames["ADSC_SHOW_COLOR_PICKER_FRAME_ShowColorPicker"](ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b, ASCT_Color_Picker_Variables.a, L_ASCT_Frames["ASDC_COlOR_PICKER_myColorCallback"]);
end)
---------------------------
--Main options panel
---------------------------
local panel_main = CreateFrame("Frame")
panel_main.name = L["Title"]
InterfaceOptions_AddCategory(panel_main)
---------------------------
--Open to options panel through default options panel
---------------------------
local OpenToOptionsPanel = CreateFrame("Button", nil, panel_main, "UIPanelButtonTemplate")
	L_ASCT_Widget_Methods["SetPoint_3"](OpenToOptionsPanel, "CENTER", 0, 0)
	L_ASCT_Widget_Methods["SetText"](OpenToOptionsPanel, L["Open To Options Panel"])
	L_ASCT_Widget_Methods["SetWidth"](OpenToOptionsPanel, 150)
	L_ASCT_Handlers["OnClick"](OpenToOptionsPanel, function()
	HideUIPanel(InterfaceOptionsFrame)
	HideUIPanel(GameMenuFrame)
	L_ASCT_Widget_Methods["Show"](ASCT_Config)
end)
---------------------------
--Gains and Losses Toogles
---------------------------
local CreateGainsLossToggles = L_ASCT_Frames["CreateGainsLossToggles"]
---------------------------
--Stat Toggles
---------------------------
local CreateStatToggle = L_ASCT_Frames["CreateStatToggle"]
---------------------------
--Buttons
---------------------------
local Buttons = L_ASCT_Frames["Buttons"]
---------------------------
--Name Icon Toggles
---------------------------
local CreateNameIconToggles = L_ASCT_Frames["CreateNameIconToggles"]
---------------------------
--Spell Toggles
---------------------------
local CreateSpellToggle = L_ASCT_Frames["CreateSpellToggle"]
---------------------------
--Table Sorting
---------------------------
local PairsByKeys = L_Table_Functions["PairsByKeys"]
---------------------------
-- Advanced Scrolling Combat Text Leveling
---------------------------
local col_AD = 4
local x_AD = 0
for v in PairsByKeys(ASCT_DB, ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]) do
	local b = CreateFrame("CheckButton", nil, content7, "InterfaceOptionsCheckButtonTemplate")
	L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD % col_AD), -20 + (- b:GetHeight()-5) * math.floor(x_AD/col_AD))
	b.Text:SetText(L[v])
	b:SetChecked(ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"][v])
	b:SetScript("OnClick", function(s) ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"][v] = s:GetChecked() end)
	x_AD=x_AD+1
end
---------------------------
-- Advanced Scrolling Combat Stats
---------------------------
local col_AD_3 = 4
local x_AD_3 = 0
for Stat, settings in PairsByKeys(ASCT_DB, ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]) do
    local b = CreateStatToggle(Stat, settings, content8)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_3 % col_AD_3), -20 + (- b:GetHeight()-70) * math.floor(x_AD_3/col_AD_3))
    x_AD_3=x_AD_3+1
    CreateGainsLossToggles(b, settings, content8)
end
---------------------------
--Debuffs fading
---------------------------
local Debuffsfading = Buttons("Fading DeBuffs", content9, L["Fading Debuffs Alert"], 20, -20, L["Debuff has 5 seconds left"], L["Announces a Debuff you applied is about to fade on the Target."])
---------------------------
--Icon Slider
---------------------------
local SliderText = TitleCreate(content5, -265, -10, L["Icon Size"])
local Icon_Slider_Text = L_ASCT_Frames["Interger_Value_Text"](content5, "TOPLEFT", 110, -40, "Integer_Values", "Icon")
local Icon_Slider = L_ASCT_Frames["CreateSlider"]("Icon_slider", content5, 200, 20, "TOPLEFT", 20, -20, "HORIZONTAL", 1, 50, "Integer_Values", "Icon", 1, L["The size of the message icon"], '1', '50', Icon_Slider_Text)
---------------------------
--Debuff Slider
---------------------------
local SliderText_Debuff = TitleCreate(content5, -265, -130, L["Debuff fade time"])
local Debuff_Slider_Text = L_ASCT_Frames["Interger_Value_Text"](content5, "TOPLEFT", 110, -160, "Integer_Values", "Debuff_time")
local Debuff_Slider = L_ASCT_Frames["CreateSlider"]("Debuff_Slider_S", content5, 200, 20, "TOPLEFT", 20, -140, "HORIZONTAL", 1, 20, "Integer_Values", "Debuff_time", 1, L["The time warning for Debuffs about to fade"], "1", "20", Debuff_Slider_Text)
---------------------------
--Reset All Slider Values
---------------------------
local Slider_Reset_Icon = L_ASCT_Frames["MakeSliderReset"]({
    text = L["Reset Icon Size"],
    width = 150,
    anchor = {"TOPLEFT", 40, -60},
    parent = content5,
    options = {
      {frame = Icon_Slider, text = Icon_Slider_Text, default = 18, location = {"Integer_Values", "Icon"}},
    },
    })
local Slider_Reset_Auras = L_ASCT_Frames["MakeSliderReset"]({
    text = L["Reset Debuff fade time"],
    width = 150,
    anchor = {"TOPLEFT", 40, -180},
    parent = content5,
    options = {
      {frame = Debuff_Slider, text = Debuff_Slider_Text, default = 5, location = {"Integer_Values", "Debuff_time"}},
    },
    })
local All_Slider_Reset = L_ASCT_Frames["MakeSliderReset"](
    {
    text = L["Reset Both Aura and Icon Values"],
    width = 200,
    anchor = {"BOTTOMLEFT", 20, 20},
    parent = content5,
    options = {
      {frame = Icon_Slider, text = Icon_Slider_Text, default = 18, location = {"Integer_Values", "Icon"}},
      {frame = Debuff_Slider, text = Debuff_Slider_Text, default = 5, location = {"Integer_Values", "Debuff_time"}},
    },
  }
)
---------------------------
--Trinket Toggle
---------------------------
local CreateTrinketToggle = L_ASCT_Frames["CreateTrinketToggle"]
---------------------------
--Trinket Name and Icon Toggles
---------------------------
local CreateTrinketNameIconsToggles = L_ASCT_Frames["CreateTrinketNameIconsToggles"]
---------------------------
--Trinkets
---------------------------
local col_AD_4 = 4
local x_AD_4 = 0
for Stat, settings in PairsByKeys(ASCT_DB, ASCT_DB["Trinkets"]) do
    local b = CreateTrinketToggle(Stat, settings, content10)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_4 % col_AD_4), -20 + (- b:GetHeight()-70) * math.floor(x_AD_4/col_AD_4))
    x_AD_4=x_AD_4+1
    CreateTrinketNameIconsToggles(b, settings, content10)
end
---------------------------
--Rogue
---------------------------
if ASCT_DB["Class"]["Rogue"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Assassination"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Subtlety"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

---------------------------
--Priest
---------------------------
elseif ASCT_DB["Class"]["Priest"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Shadow"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Holy_Priest"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Discipline"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end


---------------------------
--Warrior
---------------------------
elseif ASCT_DB["Class"]["Warrior"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Arms"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Fury"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Protection_Warrior"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Druid
---------------------------
elseif ASCT_DB["Class"]["Druid"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Balance"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Feral_Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Druid_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shaman
---------------------------
elseif ASCT_DB["Class"]["Shaman"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Elemental"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Enhancement"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Shaman_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in PairsByKeys(ASCT_DB, ASCT_DB["Shared_Shaman_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(ASCT_DB["Shared_Shaman_spells"][v])
	b:SetScript("OnClick", function(s) ASCT_DB["Shared_Shaman_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Warlock
---------------------------
elseif ASCT_DB["Class"]["Warlock"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Affliction"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Demonology"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Destruction"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Hunter
---------------------------
elseif ASCT_DB["Class"]["Hunter"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Beast Mastery"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Marksmanship"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Survival"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in PairsByKeys(ASCT_DB, ASCT_DB["Shared_Hunter_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(ASCT_DB["Shared_Hunter_spells"][v])
	b:SetScript("OnClick", function(s) ASCT_DB["Shared_Hunter_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Paladin
---------------------------
elseif ASCT_DB["Class"]["Paladin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Holy_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Protection_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Retribution"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Mage
---------------------------
elseif ASCT_DB["Class"]["Mage"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Arcane"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Fire"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Frost_Mage"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

end
------------------------
--AutoMatic Race Picker
------------------------
local Race = select(3, UnitRace("player"))
if Race == 5 then
	ASCT_DB["Race"]["Undead"] = true
elseif Race == 2 then
	ASCT_DB["Race"]["Orc"] = true
elseif Race == 3 then
	ASCT_DB["Race"]["Dwarf"] = true
elseif Race == 7 then
	ASCT_DB["Race"]["Gnome"] = true
elseif Race == 4 then
	ASCT_DB["Race"]["Night Elf"] = true
elseif Race == 8 then
	ASCT_DB["Race"]["Troll"] = true
elseif Race == 6 then
	ASCT_DB["Race"]["Tauren"] = true
elseif Race == 1 then
	ASCT_DB["Race"]["Human"] = true
elseif Race == 10 then
	ASCT_DB["Race"]["Blood Elf"] = true
elseif Race == 11 then
	ASCT_DB["Race"]["Draenei"] = true
end


------------------------
--Undead
------------------------
if ASCT_DB["Race"]["Undead"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Undead"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
------------------------
--Orc
------------------------
elseif ASCT_DB["Race"]["Orc"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Orc"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Troll
-----------------------
elseif ASCT_DB["Race"]["Troll"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Troll"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Tauren
-----------------------
elseif ASCT_DB["Race"]["Tauren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Tauren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
 --Human
--------------------- 
elseif ASCT_DB["Race"]["Human"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Human"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-------------------
--Night Elf
-------------------

elseif ASCT_DB["Race"]["Night Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Night Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
 ---------------------
--Gnome
---------------------
elseif ASCT_DB["Race"]["Gnome"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Gnome"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end  ---------------------
--Dwarf
---------------------
elseif ASCT_DB["Race"]["Dwarf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Dwarf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Blood Elf
---------------------
elseif ASCT_DB["Race"]["Blood Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Blood Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Draenei 
---------------------
elseif ASCT_DB["Race"]["Draenei"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(ASCT_DB, ASCT_DB["Draenei"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
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
L_Table_Functions["MergeInNewValues"](ASCT_DB, defaults)
L_Table_Functions["DeleteOldValues"](defaults, ASCT_DB)
f:InitializeOptions_Class()
---------------------------
--Not used
---------------------------
f.db = ASCT_DB

end
L_ASCT_Locale_Spells["ASCT_AddLocalizedCallback"](function()
	InitializeOptions()
	L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"]()
  end)
end