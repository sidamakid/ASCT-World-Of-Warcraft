local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)

if isTbcWow then
local LR = SARTE_Localization_Racial_My_Localization_Table;
local function InitializeOptions()

local f = CreateFrame("Frame")


f.defaults = {
--Races
["Race"] = {
	["Blood Elf"] = false,
	Orc = false,
	Undead = false,
	Troll = false,
	Tauren = false,
	Draenei = false,
	Gnome = false,
	Human = false,
	["Night Elf"] = false,
	Dwarf = false,
	},
	["Blood Elf"] = {
	["Arcane Torrent"] = false,
	["Mana Tap"] = false,
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
	["Draenei"] = {
	["Gift of the Naaru"] = false,
	},
	["Gnome"] = {
	["Escape Artist"] = false,
	},
	["Dwarf"] = {
		Stoneform = false,
	},
}

function f:InitializeOptions_Race()
	self.panel_main_Race = CreateFrame("Frame")
	self.panel_main_Race.name =  LR["Title_Race"]
	InterfaceOptions_AddCategory(self.panel_main_Race)

	local resetbtn = CreateFrame("Button", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	resetbtn:SetPoint("BOTTOMLEFT", 20, 20)
	resetbtn:SetText(LR["Reset Race"])
	resetbtn:SetWidth(100)
	resetbtn:SetScript("OnClick", function()
	--Race
	for k in pairs(SARTERACIALSDB["Race"]) do SARTERACIALSDB["Race"][k]=false end
	--Undead
	for k in pairs(SARTERACIALSDB["Undead"]) do SARTERACIALSDB["Undead"][k]=false end
	--Orc
	for k in pairs(SARTERACIALSDB["Orc"]) do SARTERACIALSDB["Orc"][k]=false end
	--Troll
	for k in pairs(SARTERACIALSDB["Troll"]) do SARTERACIALSDB["Troll"][k]=false end
	--Tauren
	for k in pairs(SARTERACIALSDB["Tauren"]) do SARTERACIALSDB["Tauren"][k]=false end
	--Human
	for k in pairs(SARTERACIALSDB["Human"]) do SARTERACIALSDB["Human"][k]=false end
	--Night Elf
	for k in pairs(SARTERACIALSDB["Night Elf"]) do SARTERACIALSDB["Night Elf"][k]=false end
	--Gnome
	for k in pairs(SARTERACIALSDB["Gnome"]) do SARTERACIALSDB["Gnome"][k]=false end
	--Dwarf
	for k in pairs(SARTERACIALSDB["Dwarf"]) do SARTERACIALSDB["Dwarf"][k]=false end
	--Blood Elf
	for k in pairs(SARTERACIALSDB["Blood Elf"]) do SARTERACIALSDB["Blood Elf"][k]=false end
	--Draenei
	for k in pairs(SARTERACIALSDB["Draenei"]) do SARTERACIALSDB["Draenei"][k]=false end
	--Prints
	print("/rl")
	end)
	local Race = select(3, UnitRace("player"))
	if Race == 5 then
		SARTERACIALSDB["Race"]["Undead"] = true
	elseif Race == 2 then
		SARTERACIALSDB["Race"]["Orc"] = true
	elseif Race == 3 then
		SARTERACIALSDB["Race"]["Dwarf"] = true
	elseif Race == 7 then
		SARTERACIALSDB["Race"]["Gnome"] = true
	elseif Race == 4 then
		SARTERACIALSDB["Race"]["Night Elf"] = true
	elseif Race == 8 then
		SARTERACIALSDB["Race"]["Troll"] = true
	elseif Race == 6 then
		SARTERACIALSDB["Race"]["Tauren"] = true
	elseif Race == 1 then
		SARTERACIALSDB["Race"]["Human"] = true
	elseif Race == 10 then
		SARTERACIALSDB["Race"]["Blood Elf"] = true
	elseif Race == 11 then
		SARTERACIALSDB["Race"]["Draenei"] = true
	end


------------------------
--Undead
------------------------
if SARTERACIALSDB["Race"]["Undead"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Undead"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["Undead"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Undead"][v] = s:GetChecked() end)
	end
------------------------
--Orc
------------------------
elseif SARTERACIALSDB["Race"]["Orc"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Orc"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["Orc"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Orc"][v] = s:GetChecked() end)
	end
-----------------------
--Troll
-----------------------
elseif SARTERACIALSDB["Race"]["Troll"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Troll"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Troll"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Troll"][v] = s:GetChecked() end)
	end
-----------------------
--Tauren
-----------------------
elseif SARTERACIALSDB["Race"]["Tauren"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Tauren"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Tauren"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Tauren"][v] = s:GetChecked() end)
	end
---------------------
 --Human
--------------------- 
elseif SARTERACIALSDB["Race"]["Human"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Human"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Human"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Human"][v] = s:GetChecked() end)
	end
 -------------------
 --Night Elf
 -------------------
 
elseif SARTERACIALSDB["Race"]["Night Elf"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Night Elf"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Night Elf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Night Elf"][v] = s:GetChecked() end)
   end
 ---------------------
--Gnome
---------------------
elseif SARTERACIALSDB["Race"]["Gnome"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Gnome"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Gnome"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Gnome"][v] = s:GetChecked() end)
   end
---------------------
--Dwarf
---------------------
elseif SARTERACIALSDB["Race"]["Dwarf"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Dwarf"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Dwarf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Dwarf"][v] = s:GetChecked() end)
   end
---------------------
--Draenei
---------------------
elseif SARTERACIALSDB["Race"]["Draenei"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Draenei"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Draenei"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Draenei"][v] = s:GetChecked() end)
   end
---------------------
--Blood Elf
---------------------
elseif SARTERACIALSDB["Race"]["Blood Elf"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Blood Elf"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(SDT_GetLocalizedName(v))
  b:SetChecked(SARTERACIALSDB["Blood Elf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Blood Elf"][v] = s:GetChecked() end)
   end

end




end








SLASH_SARTER1 = "/SATR"

SlashCmdList.SARTER = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	InterfaceOptionsFrame_OpenToCategory(f.panel_main_Race)
end

SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI

SARTERACIALSDB = SARTERACIALSDB or CopyTable(f.defaults)
f:InitializeOptions_Race()
f.db = SARTERACIALSDB

end

SDT_AddLocalizedCallback(function()
  InitializeOptions()
end)
end