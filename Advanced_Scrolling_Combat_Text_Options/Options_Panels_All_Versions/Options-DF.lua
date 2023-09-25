---------------------------
--Functions Table
---------------------------
local L_Function_Keys = Functions_For_ASDC_Table
if L_Function_Keys["isDragonFlightWow"] then
---------------------------
--Localize Table
---------------------------
local L = ASDC_LOCALE_TABLE
local function InitializeOptions()
---------------------------
--Create The MainFrame
---------------------------
local f = L_Function_Keys["InitializeOptions_Frame"]


local defaults = L_Function_Keys["TableCombine"](L_Function_Keys["Spells_DF"], L_Function_Keys["Others_DF"])

function f:InitializeOptions_Class()
local ASCT_Config = L_Function_Keys["ASCT_Config"]
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

--Points set

--Child Frames
ASCT_Config.title = ASCT_Config:CreateFontString(nil, "OVERLAY");
ASCT_Config.title:SetFontObject("GameFontHighlight");
ASCT_Config.title:SetPoint("TOP", ASCT_Config, "TOP", 1,-7);
ASCT_Config.title:SetText(L["Title"]);

-- Create the scrolling parent frame and size it to fit inside the texture
ASCT_Config.scrollFrame = CreateFrame("ScrollFrame", nil, ASCT_Config, "UIPanelScrollFrameTemplate")
ASCT_Config.scrollFrame:SetPoint("TOPLEFT", 3, -25)
ASCT_Config.scrollFrame:SetPoint("BOTTOMRIGHT", -27, 4)

local function Tab_OnClick (self)
  PanelTemplates_SetTab(self:GetParent(), self:GetID());

  local scrollChild = ASCT_Config.scrollFrame:GetScrollChild();
  if (scrollChild) then
    scrollChild:Hide();
  end

  ASCT_Config.scrollFrame:SetScrollChild(self.content);
  self.content:Show();
end


local function SetTabs(frame, numTabs, ...)
frame.numTabs = numTabs
local contents = {};
local frameName = frame:GetName();
for i = 1, numTabs do
  local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "PanelTabButtonTemplate");
  tab:SetID(i);
  tab:SetText(select(i, ...))
  tab:SetScript("OnClick", Tab_OnClick);

  tab.content = CreateFrame("Frame", nil, ASCT_Config.scrollFrame);
  tab.content:SetSize(770, 500)
  tab.content:Hide()




  table.insert(contents, tab.content)

  if (i == 1) then
    tab:SetPoint("TOPLEFT", ASCT_Config, "BOTTOMLEFT", 10, 7);
  else
    tab:SetPoint("TOPLEFT", _G[frameName.."Tab"..(i - 1)], "TOPRIGHT", 10, 0);
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
	ASCT_Config:Show()
end
---------------------------
--Loading message.
---------------------------
print(L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."])
-------------------------
--Text Creating
-------------------------
local TextCreate = L_Function_Keys["TextCreate"]
-------------------------
--Title Creating
-------------------------
local TitleCreate = L_Function_Keys["TitleCreate"]
---------------------------
--Automatic Class picker
---------------------------
local Class = select(3, UnitClass("player"))
if Class == 4 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Rogue"] = true
	Text1 = TextCreate(L["Assassination"])
	Text2 = TextCreate(L["Combat"])
	Text3 = TextCreate(L["Subtlety"])
elseif Class == 5 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Priest"] = true
	Text1 = TextCreate(L["Shadow"])
	Text2 = TextCreate(L["Holy"])
	Text3 = TextCreate(L["Discipline"])
elseif Class == 1 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Warrior"] = true
	Text1 = TextCreate(L["Arms"])
	Text2 = TextCreate(L["Fury"])
	Text3 = TextCreate(L["Protection"])
elseif Class == 11 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Druid"] = true
	Text1 = TextCreate(L["Balance"])
	Text2 = TextCreate(L["Feral_Combat"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 9 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Warlock"] = true
	Text1 = TextCreate(L["Affliction"])
	Text2 = TextCreate(L["Demonology"])
	Text3 = TextCreate(L["Destruction"])
elseif Class == 7 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Shaman"] = true
	Text1 = TextCreate(L["Elemental"])
	Text2 = TextCreate(L["Enhancement"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 3 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Hunter"] = true
	Text1 = TextCreate(L["Beast Mastery"])
	Text2 = TextCreate(L["Marksmanship"])
	Text3 = TextCreate(L["Survival"])
elseif Class == 2 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Paladin"] = true
	Text1 = TextCreate(L["Holy"])
	Text2 = TextCreate(L["Protection"])
	Text3 = TextCreate(L["Retribution"])
elseif Class == 8 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Mage"] = true
	Text1 = TextCreate(L["Arcane"])
	Text2 = TextCreate(L["Fire"])
	Text3 = TextCreate(L["Frost"])
elseif Class == 6 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Death_Knight"] = true
	Text1 = TextCreate(L["Blood"])
	Text2 = TextCreate(L["Frost"])
	Text3 = TextCreate(L["Unholy"])
elseif Class == 10 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Monk"] = true
	Text1 = TextCreate(L["Brewmaster"])
	Text2 = TextCreate(L["Frost"])
	Text3 = TextCreate(L["Windwalker"])
elseif Class == 12 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Demon_Hunter"] = true
	Text1 = TextCreate(L["Havoc"])
	Text2 = TextCreate(L["Vengeance"])
	Text3 = TextCreate(L["Nothing"])
elseif Class == 13 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Evoker"] = true
	Text1 = TextCreate(L["Preservation"])
	Text2 = TextCreate(L["Devastation"])
	Text3 = TextCreate(L["Nothing"])
end
local Text4 = TextCreate(L["Racials"])
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

LibStub("LibDBIcon-1.0"):Register("ASCT", MinimapDataObject, Advanced_Scrolling_Combat_Text_DB)
---------------------------
--Color Picker Spells
---------------------------
local Color_picker_SARTE = CreateFrame("Button", nil, content5, "UIPanelButtonTemplate")
	Color_picker_SARTE:SetPoint("TOPRIGHT", -70, -20)
	Color_picker_SARTE:SetText(L["Color Picker"])
	Color_picker_SARTE:SetWidth(150)
	Color_picker_SARTE:SetScript("OnClick", function()
		ADSC_SHOW_COLOR_PICKER_FRAME_ShowColorPicker(Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a, ASDC_COlOR_PICKER_myColorCallback);
end)
---------------------------
--Gains and Losses Toogles
---------------------------
local CreateGainsLossToggles = L_Function_Keys["CreateGainsLossToggles"]
---------------------------
--Stat Toggles
---------------------------
local CreateStatToggle = L_Function_Keys["CreateStatToggle"]
---------------------------
--Buttons
---------------------------
local Buttons = L_Function_Keys["Buttons"]
---------------------------
--Name Icon Toggles
---------------------------
local CreateNameIconToggles = L_Function_Keys["CreateNameIconToggles"]
---------------------------
--Spell Toggles
---------------------------
local CreateSpellToggle = L_Function_Keys["CreateSpellToggle"]
---------------------------
--Table Sorting
---------------------------
local PairsByKeys = L_Function_Keys["PairsByKeys"]
---------------------------
-- Advanced Scrolling Combat Text Leveling
---------------------------
local col_AD = 4
local x_AD = 0
for v in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]) do
	local b = CreateFrame("CheckButton", nil, content7, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD % col_AD), -20 + (- b:GetHeight()-5) * math.floor(x_AD/col_AD))
	b.Text:SetText(L[v])
	b:SetChecked(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"][v])
	b:SetScript("OnClick", function(s) Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"][v] = s:GetChecked() end)
	x_AD=x_AD+1
end
---------------------------
-- Advanced Scrolling Combat Stats
---------------------------
local col_AD_3 = 4
local x_AD_3 = 0
for Stat, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]) do
    local b = CreateStatToggle(Stat, settings, content8)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_3 % col_AD_3), -20 + (- b:GetHeight()-70) * math.floor(x_AD_3/col_AD_3))
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
local Slider_Text_Icon = TitleCreate(content5, -265, -10, L["Spell Icon Size"])
local Icon_Slider_Text = L_Function_Keys["Interger_Value_Text"](content5, "TOPLEFT", 110, -40, "Integer_Values", "Icon")
local Icon_Slider = L_Function_Keys["CreateSlider"]("Icon_slider", content5, 200, 20, "TOPLEFT", 20, -20, "HORIZONTAL", 1, 50, "Integer_Values", "Icon", 1, L["The size of the Spell Icon"], '1', '50', Icon_Slider_Text)
---------------------------
--Debuff Slider
---------------------------
local SliderText_Debuff = TitleCreate(content5, -265, -130, L["Debuff fade time"])
local Debuff_Slider_Text = L_Function_Keys["Interger_Value_Text"](content5, "TOPLEFT", 110, -160, "Integer_Values", "Debuff_time")
local Debuff_Slider = L_Function_Keys["CreateSlider"]("Debuff_Slider_S", content5, 200, 20, "TOPLEFT", 20, -140, "HORIZONTAL", 1, 20, "Integer_Values", "Debuff_time", 1, L["The time warning for Debuffs about to fade"], "1", "20", Debuff_Slider_Text)
---------------------------
--Reset All Slider Values
---------------------------
local Slider_Reset_Icon = L_Function_Keys["MakeSliderReset"]({
    text = L["Reset Icon Size"],
    width = 150,
    anchor = {"TOPLEFT", 40, -60},
    parent = content5,
    options = {
      {frame = Icon_Slider, text = Icon_Slider_Text, default = 18, location = {"Integer_Values", "Icon"}},
    },
    })
local Slider_Reset_Auras = L_Function_Keys["MakeSliderReset"]({
    text = L["Reset Debuff fade time"],
    width = 150,
    anchor = {"TOPLEFT", 40, -180},
    parent = content5,
    options = {
      {frame = Debuff_Slider, text = Debuff_Slider_Text, default = 5, location = {"Integer_Values", "Debuff_time"}},
    },
    })
local All_Slider_Reset = L_Function_Keys["MakeSliderReset"](
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
local CreateTrinketToggle = L_Function_Keys["CreateTrinketToggle"]
---------------------------
--Trinket Name and Icon Toggles
---------------------------
local CreateTrinketNameIconsToggles = L_Function_Keys["CreateTrinketNameIconsToggles"]
---------------------------
--Trinkets
---------------------------
local col_AD_4 = 4
local x_AD_4 = 0
for Stat, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Trinkets"]) do
    local b = CreateTrinketToggle(Stat, settings, content10)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_4 % col_AD_4), -20 + (- b:GetHeight()-70) * math.floor(x_AD_4/col_AD_4))
    x_AD_4=x_AD_4+1
    CreateTrinketNameIconsToggles(b, settings, content10)
end
---------------------------
--Rogue
---------------------------
if Advanced_Scrolling_Combat_Text_DB["Class"]["Rogue"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Assassination"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Outlaw"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Subtlety"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

---------------------------
--Priest
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Priest"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Shadow"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Holy_Priest"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Discipline"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end


---------------------------
--Warrior
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Warrior"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Arms"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Fury"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Protection_Warrior"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Druid
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Druid"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Balance"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Feral_Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Druid_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shaman
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Shaman"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Elemental"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Enhancement"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Shaman_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"][v])
	b:SetScript("OnClick", function(s) Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Warlock
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Warlock"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Affliction"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Demonology"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Destruction"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Hunter
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Hunter"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Beast Mastery"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Marksmanship"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Survival"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Paladin
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Paladin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Holy_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Protection_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Retribution"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Mage
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Mage"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Arcane"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Fire"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Frost_Mage"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Death Knight
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Death_Knight"] == true then

local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Blood"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Frost_DK"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Unholy"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Monk
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Monk"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Brewmaster"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Mistweaver"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Windwalker"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Demon Hunter
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Demon_Hunter"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Havoc"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Vengeance"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end
--------------------------
--Evoker
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Evoker"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Preservation"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Devastation"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

end

local Race = select(3, UnitRace("player"))
if Race == 5 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Undead"] = true
elseif Race == 2 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Orc"] = true
elseif Race == 3 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Dwarf"] = true
elseif Race == 7 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Gnome"] = true
elseif Race == 4 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Night Elf"] = true
elseif Race == 8 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Troll"] = true
elseif Race == 6 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Tauren"] = true
elseif Race == 1 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Human"] = true
elseif Race == 10 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Blood Elf"] = true
elseif Race == 11 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Draenei"] = true
elseif Race == 22 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Worgen"] = true
elseif Race == 25 or 26 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Pandaren"] = true
elseif Race == 29 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Void Elf"] = true
elseif Race == 30 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Lightforged Draenei"] = true
elseif Race == 34 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Dark Iron Dwarf"] = true
elseif Race == 37 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Mechagnome"] = true
elseif Race == 37 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Kul Tiran"] = true
elseif Race == 9 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Goblin"] = true
	Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] = false
elseif Race == 27 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] = true
elseif Race == 28 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Highmountain Tauren"] = true
elseif Race == 35 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Vulpera"] = true
elseif Race == 31 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Zandalari Troll"] = true
elseif Race == 36 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Mag'har Orc"] = true
elseif Race == 52 or 70 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Dracthyr"] = true
end

------------------------
--Undead
------------------------
if Advanced_Scrolling_Combat_Text_DB["Race"]["Undead"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Undead"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
------------------------
--Orc
------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Orc"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Orc"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Troll
-----------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Troll"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Troll"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Tauren
-----------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Tauren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Tauren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
 --Human
--------------------- 
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Human"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Human"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-------------------
--Night Elf
-------------------

elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Night Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Night Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
 ---------------------
--Gnome
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Gnome"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Gnome"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end  ---------------------
--Dwarf
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dwarf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Dwarf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Blood Elf
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Blood Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Blood Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Draenei 
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Draenei"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Draenei"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Pandaren
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Pandaren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Pandaren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Void Elf
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Void Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Void Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Worgen
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Worgen"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Worgen"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Mag'har Orc
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Mag'har Orc"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Mag'har Orc"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Zandalari Troll
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Zandalari Troll"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Zandalari Troll"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Vulpera
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Vulpera"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Vulpera"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Highmountain Tauren
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Highmountain Tauren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Highmountain Tauren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Nightborne
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Nightborne"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Goblin
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Goblin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Goblin"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Kul Tiran
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Kul Tiran"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Kul Tiran"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Mechagnome
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Mechagnome"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Mechagnome"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Dark Iron Dwarf
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dark Iron Dwarf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Dark Iron Dwarf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Lightforged Draenei
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Lightforged Draenei"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Lightforged Draenei"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
------------------------
--Dracthyr
------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dracthyr"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in PairsByKeys(Advanced_Scrolling_Combat_Text_DB, Advanced_Scrolling_Combat_Text_DB["Dracthyr"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end

end

end

SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI
---------------------------
--Saved Variables
---------------------------
Advanced_Scrolling_Combat_Text_DB = Advanced_Scrolling_Combat_Text_DB or {}
L_Function_Keys["MergeInNewValues"](Advanced_Scrolling_Combat_Text_DB, defaults)
L_Function_Keys["DeleteOldValues"](defaults, Advanced_Scrolling_Combat_Text_DB)
---------------------------
--Run Function
---------------------------
f:InitializeOptions_Class()
---------------------------
--Unused variable
---------------------------
f.db = Advanced_Scrolling_Combat_Text_DB

end

ASCT_AddLocalizedCallback(function()
  InitializeOptions()
  L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"]()
end)
end