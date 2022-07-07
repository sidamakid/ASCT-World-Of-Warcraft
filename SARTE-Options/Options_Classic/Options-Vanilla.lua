---------------------------
--Checks if is Classic wow
---------------------------
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)
if isClassicWow then
---------------------------
--Localize Table
---------------------------
local L = SARTE_LOCALE_TABLE
---------------------------
--For Call Back handler
---------------------------
local function InitializeOptions()
---------------------------
--Create Our Frame
---------------------------
local f = CreateFrame("Frame")
---------------------------
--Normal table
---------------------------
f.defaults = {
	["Race"] = {
	Orc = false,
	Undead = false,
	Troll = false,
	Tauren = false,
	Gnome = false,
	Human = false,
	["Night Elf"] = false,
	Dwarf = false,
	},
	--Classes
	["Class"] = {
		Rogue = false,
		Priest = false,
		Warrior = false,
		Druid = false,
		Warlock = false,
		Shaman = false,
      	Hunter = false,
		Paladin = false,
		Mage = false,
		},
	--Rogue spells
	["Assassination"] = {
			["Cold Blood"] = false,
			["Kidney Shot"] = false,
		},
	["Combat"] = {
			["Feint"] = false,
			["Adrenaline Rush"] = false,
			["Gouge"] = false,
			["Evasion"] = false,
			["Sprint"] = false,
			["Kick"] = false,
			["Riposte"] = false,
			["Blade Flurry"] = false,
		},
	["Subtlety"] = {
			["Stealth"] = false,
			["Ghostly Strike"] = false,
			["Preparation"] = false,
			["Vanish"] = false,
			["Premeditation"] = false,
			["Blind"] = false,
			["Distract"] = false,
		},
--Priest spells
	["Shadow"] = {
		["Fade"] = false,
		["Psychic Scream"] = false,
		["Mind Blast"] = false,
		["Vampiric Embrace"] = false,
		["Silence"] = false,
		["Devouring Plague"] = false,
      },
   ["Holy_Priest"] = {
	["Lightwell"] = false,
	["Desperate Prayer"] = false,
    },
   ["Discipline"] = {
		["Power Word: Shield"] = false,
		["Power Infusion"] = false,
		["Inner Focus"] = false,
		["Feedback"] = false,
		["Elune's Grace"] = false,
		["Fear Ward"] = false,
	  },
	  --Warrior spells
	["Arms"] = {
		["Thunder Clap"] = false,
		["Charge"] = false,
		["Overpower"] = false,
		["Retaliation"] = false,
		["Mocking Blow"] = false,
		["Mortal Strike"] = false,
	},
	["Fury"] = {
		["Recklessness"] = false,
		["Intercept"] = false,
		["Whirlwind"] = false,
		["Death Wish"] = false,
		["Berserker Rage"] = false,
		["Intimidating Shout"] = false,
		["Challenging Shout"] = false,
		["Pummel"] = false,
		["Sweeping Strikes"] = false,
	},
	["Protection_Warrior"] = {
		["Shield Block"] = false,
		["Shield Wall"] = false,
		["Disarm"] = false,
		["Taunt"] = false,
		["Bloodrage"] = false,
		["Revenge"] = false,
		["Shield Bash"] = false,
		["Last Stand"] = false,
		["Concussion Blow"] = false,
	},
		--Druid Spells
	["Balance"] = {
		["Innervate"] = false,
		["Barkskin"] = false,
		["Hurricane"] = false,
		["Nature's Grasp"] = false,
		},
	["Feral_Combat"] = {
		["Bash"] = false,
		["Enrage"] = false,
		["Prowl"] = false,
		["Dash"] = false,
		["Challenging Roar"] = false,
		["Growl"] = false,
		["Cower"] = false,
		["Frenzied Regeneration"] = false,
		["Tiger's Fury"] = false,
		["Feral Charge"] = false,
		["Faerie Fire (Feral)"] = false,
		},
	["Druid_Restoration"] = {
		["Rebirth"] = false,
		["Tranquility"] = false,
		["Swiftmend"] = false,
		["Nature's Swiftness"] = false,
		},


	--Warlock spells
  ["Affliction"] = {
	["Amplify Curse"] = false,
	["Curse of Doom"] = false,
	["Death Coil"] = false,
	["Howl of Terror"] = false,
	 },
   ["Demonology"] = {
		["Inferno"] = false,
		["Ritual of Doom"] = false,
		["Shadow Ward"] = false,
		["Fel Domination"] = false,
	},
	["Destruction"] = {
		["Soul Fire"] = false,
		["Conflagrate"] = false,
		["Shadowburn"] = false,
	},
	--Shaman spells
	["Elemental"] = {
		["Chain Lightning"] = false,
		["Earthbind Totem"] = false,
		["Fire Nova Totem"] = false,
		["Stoneclaw Totem"] = false,
		["Elemental Mastery"] = false,
		},
	["Enhancement"] = {
		["Grounding Totem"] = false,
		["Astral Recall"] = false,
		["Stormstrike"] = false,
	},
	["Shaman_Restoration"] = {
		["Mana Tide Totem"] = false,
		["Nature's Swiftness"] = false,
	},
	["Shared_Shaman_spells"] = {
		["Shocks"] = false,
	},
	--Hunter spells
	["Beast Mastery"] = {
        ["Bestial Wrath"] = false,
		["Scare Beast"] = false,
		["Intimidation"] = false,
	  },
   ["Marksmanship"] = {
		["Rapid Fire"] = false,
		["Multi-Shot"] = false,
		["Flare"] = false,
		["Concussive Shot"] = false,
		["Aimed Shot"] = false,
		["Arcane Shot"] = false,
		["Scatter Shot"] = false,
    },
   ["Survival"] = {
		["Feign Death"] = false,
		["Disengage"] = false,
		["Raptor Strike"] = false,
		["Mongoose Bite"] = false,
		["Deterrence"] = false,
		["Wyvern Sting"] = false,
		["Counterattack"] = false,
    },
	["Shared_Hunter_spells"] = {
		["Traps"] = false,
	},
	--Paladin
	["Holy_Paladin"] = {
		["Consecration"] = false,
		["Exorcism"] = false,
		["Holy Wrath"] = false,
		["Lay on Hands"] = false,
		["Turn Undead"] = false,
		["Hammer of Wrath"] = false,
		["Holy Shock"] = false,
	},
	["Protection_Paladin"] = {
		["Divine Intervention"] = false,
		["Divine Shield"] = false,
		["Blessing of Protection"] = false,
		["Blessing of Freedom"] = false,
		["Hammer of Justice"] = false,
		["Divine Protection"] = false,
		["Blessing of Sacrifice"] = false,
		["Holy Shield"] = false,
	},
	["Retribution"] = {
		["Judgement"] = false,
		["Repentance"] = false,
	},
	--Mage
	["Arcane"] = {
		["Counterspell"] = false,
		["Blink"] = false,
		["Arcane Power"] = false,
		["Presence of Mind"] = false,
		["Evocation"] = false,
		["Portal: Stormwind"] = false,
		["Portal: Ironforge"] = false,
		["Portal: Darnassus"] = false,
		["Portal: Orgrimmar"] = false,
		["Portal: Undercity"] = false,
		["Portal: Thunder Bluff"] = false,
	},
	--Fire
	["Fire"] = {
		["Fire Blast"] = false,
		["Fire Ward"] = false,
		["Combustion"] = false,
	},
	["Frost_Mage"] = {
		["Ice Block"] = false,
		["Frost Nova"] = false,
		["Cone of Cold"] = false,
		["Frost Ward"] = false,
		["Cold Snap"] = false,
		["Ice Barrier"] = false,
	},
	["Undead"] = {
	Cannibalize = false,
	["Will of the Forsaken"] = false,
	},
	["Orc"] = {
	["Blood Fury"] = false,
	},
	["Troll"] = {
	Berserking = false,
	},
	["Tauren"] = {
	["War Stomp"] = false,
	},
	["Human"] = {
	Perception = false,
	},
	["Night Elf"] = {
	Shadowmeld = false,
	},
	["Gnome"] = {
	["Escape Artist"] = false,
	},
	["Dwarf"] = {
	Stoneform = false,
	},
}
---------------------------
--Create Options panel
---------------------------
function f:InitializeOptions_Class()
local SARTE_Config = CreateFrame("Frame", "SARTE_Config", UIParent, "UIPanelDialogTemplate");
table.insert(UISpecialFrames, "SARTE_Config")
SARTE_Config:SetMovable(true)
SARTE_Config:EnableMouse(true)
SARTE_Config:SetResizable(true)
SARTE_Config:SetSize(950, 650);
SARTE_Config:SetMinResize(950,200)
SARTE_Config:SetMaxResize(950,650)
SARTE_Config:RegisterForDrag("LeftButton")
SARTE_Config:SetScript("OnDragStart", function(self)
  if IsLeftAltKeyDown() then
    self:StartSizing()
  else
    self:StartMoving()
  end
end)
SARTE_Config:SetScript("OnDragStop", function(self)
  self:StopMovingOrSizing()
end)

--Points set

SARTE_Config:SetPoint("CENTER", UIParent, "CENTER");
SARTE_Config:Hide()

--Child Frames
SARTE_Config.title = SARTE_Config:CreateFontString(nil, "OVERLAY");
SARTE_Config.title:SetFontObject("GameFontHighlight");
SARTE_Config.title:SetPoint("TOP", SARTE_Config, "TOP", 1,-7);
SARTE_Config.title:SetText(L["Title"]);

-- Create the scrolling parent frame and size it to fit inside the texture
SARTE_Config.scrollFrame = CreateFrame("ScrollFrame", nil, SARTE_Config, "UIPanelScrollFrameTemplate")
SARTE_Config.scrollFrame:SetPoint("TOPLEFT", 3, -25)
SARTE_Config.scrollFrame:SetPoint("BOTTOMRIGHT", -27, 4)

local function Tab_OnClick (self)
  PanelTemplates_SetTab(self:GetParent(), self:GetID());

  local scrollChild = SARTE_Config.scrollFrame:GetScrollChild();
  if (scrollChild) then
    scrollChild:Hide();
  end

  SARTE_Config.scrollFrame:SetScrollChild(self.content);
  self.content:Show();
end


local function SetTabs(frame, numTabs, ...)
frame.numTabs = numTabs
local contents = {};
local frameName = frame:GetName();
for i = 1, numTabs do
  local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "CharacterFrameTabButtonTemplate");
  tab:SetID(i);
  tab:SetText(select(i, ...))
  tab:SetScript("OnClick", Tab_OnClick);

  tab.content = CreateFrame("Frame", nil, SARTE_Config.scrollFrame);
  tab.content:SetSize(770, 500)
  tab.content:Hide()




  table.insert(contents, tab.content)

  if (i == 1) then
    tab:SetPoint("TOPLEFT", SARTE_Config, "BOTTOMLEFT", 5, 7);
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
SLASH_SARTE1 = "/SART"
SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	SARTE_Config:Show()
end
-------------------------
--Text Creating
-------------------------
local function TextCreate(Text)
local text = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
text:SetText(Text)
return Text
end
local function TitleCreate(content, Text)
	content.title = content:CreateFontString(nil, "OVERLAY");
	content.title:SetFontObject("GameFontHighlight");
	content.title:SetPoint("TOP", content, "TOP", 0, -10);
	content.title:SetText(Text);
	return Text
end
---------------------------
--Automatic Class picker
---------------------------
local Class = select(3, UnitClass("player"))
if Class == 4 then
	SARTESPELLDB["Class"]["Rogue"] = true
	Text1 = TextCreate(L["Assassination"])
	Text2 = TextCreate(L["Combat"])
	Text3 = TextCreate(L["Subtlety"])
elseif Class == 5 then
	SARTESPELLDB["Class"]["Priest"] = true
	Text1 = TextCreate(L["Shadow"])
	Text2 = TextCreate(L["Holy"])
	Text3 = TextCreate(L["Discipline"])
elseif Class == 1 then
	SARTESPELLDB["Class"]["Warrior"] = true
	Text1 = TextCreate(L["Arms"])
	Text2 = TextCreate(L["Fury"])
	Text3 = TextCreate(L["Protection"])
elseif Class == 11 then
	SARTESPELLDB["Class"]["Druid"] = true
	Text1 = TextCreate(L["Balance"])
	Text2 = TextCreate(L["Feral_Combat"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 9 then
	SARTESPELLDB["Class"]["Warlock"] = true
	Text1 = TextCreate(L["Affliction"])
	Text2 = TextCreate(L["Demonology"])
	Text3 = TextCreate(L["Destruction"])
elseif Class == 7 then
	SARTESPELLDB["Class"]["Shaman"] = true
	Text1 = TextCreate(L["Elemental"])
	Text2 = TextCreate(L["Enhancement"])
	Text3 = TextCreate(L["Restoration"])
elseif Class == 3 then
	SARTESPELLDB["Class"]["Hunter"] = true
	Text1 = TextCreate(L["Beast Mastery"])
	Text2 = TextCreate(L["Marksmanship"])
	Text3 = TextCreate(L["Survival"])
elseif Class == 2 then
	SARTESPELLDB["Class"]["Paladin"] = true
	Text1 = TextCreate(L["Holy"])
	Text2 = TextCreate(L["Protection"])
	Text3 = TextCreate(L["Retribution"])
elseif Class == 8 then
	SARTESPELLDB["Class"]["Mage"] = true
	Text1 = TextCreate(L["Arcane"])
	Text2 = TextCreate(L["Fire"])
	Text3 = TextCreate(L["Frost"])
end
local Text4 = TextCreate(L["Racials"])

-------------------------
---Tabs
-------------------------
local content1, content2, content3, content4, content5, content6 = SetTabs(SARTE_Config, 6, Text1, Text2, Text3, Text4, L["Color Picker"], L["Shared Spell cd's"]);
local TextTop = TitleCreate(content6, L["Tab"])
---------------------------
--MiniMap Icon
---------------------------
local MinimapDataObject = LibStub("LibDataBroker-1.1"):NewDataObject("SARTE", {
    type = "SARTE",
    text = L["Title"],
    icon = "Interface\\Addons\\SARTE-Options\\SARTE-Image_4.tga",
    OnClick = function() SARTE_Config:Show()  end,
	--GameToolTip
    OnTooltipShow = function(tooltip)
      tooltip:AddLine(L["Title"])
	  tooltip:AddLine(L["Tooltip Button"])
    end,
});

LibStub("LibDBIcon-1.0"):Register("SARTE", MinimapDataObject, SARTESPELLDB)
---------------------------
--Color Picker
---------------------------
local Color_picker_SARTE = CreateFrame("Button", nil, content5, "UIPanelButtonTemplate")
	Color_picker_SARTE:SetPoint("TOPRIGHT", -70, -20)
	Color_picker_SARTE:SetText(L["Color Picker"])
	Color_picker_SARTE:SetWidth(100)
	Color_picker_SARTE:SetScript("OnClick", function()
	SARTE_SHOW_COLOR_PICKER_FRAME_ShowColorPicker(SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a, SARTE_COlOR_PICKER_myColorCallback);
end)
self.panel_main = CreateFrame("Frame")
self.panel_main.name = L["Title"]
InterfaceOptions_AddCategory(self.panel_main)
---------------------------
--Open to options panel through default options panel
---------------------------
local OpenToOptionsPanel = CreateFrame("Button", nil, self.panel_main, "UIPanelButtonTemplate")
	OpenToOptionsPanel:SetPoint("CENTER", 0, 0)
	OpenToOptionsPanel:SetText(L["Open To Options Panel"])
	OpenToOptionsPanel:SetWidth(150)
	OpenToOptionsPanel:SetScript("OnClick", function()
	SARTE_Config:Show()
end)

---------------------------
--Rogue
---------------------------
if SARTESPELLDB["Class"]["Rogue"] == true then

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Assassination"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Assassination"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Assassination"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Assassination"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end


local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Combat"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Combat"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Combat"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Combat"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Subtlety"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Subtlety"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Subtlety"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Subtlety"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end
---------------------------
--Priest
---------------------------
elseif SARTESPELLDB["Class"]["Priest"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Shadow"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Shadow"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shadow"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Shadow"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Holy_Priest"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Holy_Priest"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Holy_Priest"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Holy_Priest"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Discipline"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Discipline"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Discipline"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Discipline"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end


---------------------------
--Warrior
---------------------------
elseif SARTESPELLDB["Class"]["Warrior"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Arms"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Arms"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Arms"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Arms"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Fury"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Fury"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Fury"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Fury"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Protection_Warrior"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Protection_Warrior"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Protection_Warrior"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Protection_Warrior"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end
---------------------------
--Druid
---------------------------
elseif SARTESPELLDB["Class"]["Druid"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Balance"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Balance"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Balance"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Balance"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Feral_Combat"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Feral_Combat"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Feral_Combat"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Feral_Combat"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Druid_Restoration"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Druid_Restoration"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Druid_Restoration"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Druid_Restoration"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end
---------------------------
--Shaman
---------------------------
elseif SARTESPELLDB["Class"]["Shaman"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Elemental"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Elemental"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Elemental"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Elemental"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Enhancement"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Enhancement"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Enhancement"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Enhancement"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Shaman_Restoration"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Shaman_Restoration"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shaman_Restoration"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Shaman_Restoration"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end

local col_4 = 4
local x_4 = 0
for v in pairs(SARTESPELLDB["Shared_Shaman_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(SARTESPELLDB["Shared_Shaman_spells"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shared_Shaman_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Warlock
---------------------------
elseif SARTESPELLDB["Class"]["Warlock"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Affliction"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Affliction"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Affliction"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Affliction"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Demonology"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Demonology"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Demonology"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Demonology"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Destruction"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Destruction"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Destruction"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Destruction"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end
---------------------------
--Hunter
---------------------------
elseif SARTESPELLDB["Class"]["Hunter"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Beast Mastery"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Beast Mastery"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Beast Mastery"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Beast Mastery"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Marksmanship"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Marksmanship"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Marksmanship"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Marksmanship"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Survival"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Survival"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Survival"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Survival"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end

local col_4 = 4
local x_4 = 0
for v in pairs(SARTESPELLDB["Shared_Hunter_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(SARTESPELLDB["Shared_Hunter_spells"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shared_Hunter_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Paladin
---------------------------
elseif SARTESPELLDB["Class"]["Paladin"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Holy_Paladin"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Holy_Paladin"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Holy_Paladin"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Holy_Paladin"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Protection_Paladin"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Protection_Paladin"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Protection_Paladin"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Protection_Paladin"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Retribution"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Retribution"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Retribution"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Retribution"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end
---------------------------
--Mage
---------------------------
elseif SARTESPELLDB["Class"]["Mage"] == true then
local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Arcane"]) do
	local b = CreateFrame("CheckButton", nil, content1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-25) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Arcane"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Arcane"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Arcane"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Fire"]) do
	local b = CreateFrame("CheckButton", nil, content2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-25) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Fire"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Fire"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Fire"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Frost_Mage"]) do
	local b = CreateFrame("CheckButton", nil, content3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-25) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Frost_Mage"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Frost_Mage"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Frost_Mage"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	x_3=x_3+1
end

end
------------------------
--AutoMatic Race Picker
------------------------
local Race = select(3, UnitRace("player"))
if Race == 5 then
	SARTESPELLDB["Race"]["Undead"] = true
elseif Race == 2 then
	SARTESPELLDB["Race"]["Orc"] = true
elseif Race == 3 then
	SARTESPELLDB["Race"]["Dwarf"] = true
elseif Race == 7 then
	SARTESPELLDB["Race"]["Gnome"] = true
elseif Race == 4 then
	SARTESPELLDB["Race"]["Night Elf"] = true
elseif Race == 8 then
	SARTESPELLDB["Race"]["Troll"] = true
elseif Race == 6 then
	SARTESPELLDB["Race"]["Tauren"] = true
elseif Race == 1 then
	SARTESPELLDB["Race"]["Human"] = true
end

------------------------
--Undead
------------------------
if SARTESPELLDB["Race"]["Undead"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Undead"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTESPELLDB["Undead"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Undead"][v] = s:GetChecked() end)
	local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Undead"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	end
------------------------
--Orc
------------------------
elseif SARTESPELLDB["Race"]["Orc"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Orc"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTESPELLDB["Orc"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Orc"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Orc"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	end
-----------------------
--Troll
-----------------------
elseif SARTESPELLDB["Race"]["Troll"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Troll"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Troll"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Troll"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Troll"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	end
-----------------------
--Tauren
-----------------------
elseif SARTESPELLDB["Race"]["Tauren"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Tauren"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Tauren"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Tauren"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Tauren"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	end
---------------------
 --Human
--------------------- 
elseif SARTESPELLDB["Race"]["Human"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Human"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Human"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Human"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Human"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
	end
 -------------------
 --Night Elf
 -------------------
 
elseif SARTESPELLDB["Race"]["Night Elf"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Night Elf"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Night Elf"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Night Elf"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(22, 22)
	for d in pairs(SARTESPELLDB["Night Elf"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
   end
 ---------------------
--Gnome
---------------------
elseif SARTESPELLDB["Race"]["Gnome"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Gnome"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Gnome"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Gnome"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Gnome"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
   end
  ---------------------
--Dwarf
---------------------
elseif SARTESPELLDB["Race"]["Dwarf"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Dwarf"]) do
  local b = CreateFrame("CheckButton", nil, content4, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 80 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTESPELLDB["Dwarf"][v])
  b:SetScript("OnClick", function(s) SARTESPELLDB["Dwarf"][v] = s:GetChecked() end)
  local tex = b:CreateTexture()
	tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
	tex:SetSize(44, 44)
	for d in pairs(SARTESPELLDB["Dwarf"]) do
	if v == d then
		tex:SetTexture(SDT_GetLocalizedIcon(d))
	end
	end
   end

end

end


---------------------------
--Slash Commands
---------------------------
SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI
-- savedVars: table to put new defaults into
-- cleanDefaults: default values table
local function MergeInNewValues(savedVars, cleanDefaults)
  -- Work through each key in the default values table
  for k, v in pairs(cleanDefaults) do
    -- If the key doesn't exist in savedVars (ie. its new)
    -- we add it
    if savedVars[k] == nil then
      -- If the value of this key is another table, copy it in
      if type(v) == "table" then
        savedVars[k] = CopyTable(v)
      -- Not another table, just a string/true/false/32 etc. copy it in with a
      -- normal assigment
      else
        savedVars[k] = v
      end
    -- Found a nested table for this key, go through that nested table to check
    -- all the keys exist compared to cleanDefaults, and that all the nested
    -- tables, etc. do too.
    elseif type(v) == "table" then
      MergeInNewValues(savedVars[k], v)
    end
  end
end
-- savedVars: table to put new defaults into
-- cleanDefaults: default values table
local function DeleteOldValues(cleanDefaults, savedVars)
-- Work through each key in the default values table
for k, v in pairs(savedVars) do
	-- If the key doesn't exist in cleanDefaults (ie. it's been removed)
	-- we remove it
	if cleanDefaults[k] == nil then
	savedVars[k] = nil
	-- Found a nested table for this key, go through that nested table to check
	-- all the keys exist compared to cleanDefaults, and that all the nested
	-- tables, etc. do too.
	elseif type(v) == "table" then
	DeleteOldValues(cleanDefaults[k], v)
	end
end
end
---------------------------
--Saved Variables
---------------------------
SARTESPELLDB = SARTESPELLDB or {}
MergeInNewValues(SARTESPELLDB, f.defaults)
DeleteOldValues(f.defaults, SARTESPELLDB)
f:InitializeOptions_Class()
---------------------------
--Not used
---------------------------
f.db = SARTESPELLDB
end

SDT_AddLocalizedCallback(function()
  InitializeOptions()
end)
end