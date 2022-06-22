local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305

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
-----------------------
--Row 1
-----------------------
	local race = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race:SetPoint("TOPLEFT", 20, -20)
	race:SetText(LR["Orc"])
    race:SetWidth(100)
	race:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Orc"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

	local race1 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race1:SetPoint("TOPLEFT", 20, -60)
	race1:SetText(LR["Undead"])
    race1:SetWidth(100)
	race1:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Undead"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race1:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race2 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race2:SetPoint("TOPLEFT", 20, -100)
	race2:SetText(LR["Troll"])
    race2:SetWidth(100)
	race2:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Troll"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race2:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race3 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race3:SetPoint("TOPLEFT", 20, -140)
	race3:SetText(LR["Tauren"])
    race3:SetWidth(100)
	race3:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Tauren"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race3:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race4 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race4:SetPoint("TOPLEFT", 20, -180)
	race4:SetText(LR["Gnome"])
    race4:SetWidth(100)
	race4:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Gnome"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race4:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)
----------------------
--Row 2
---------------------
local race5 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race5:SetPoint("TOPLEFT", 120, -20)
	race5:SetText(LR["Human"])
    race5:SetWidth(100)
	race5:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Human"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race5:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race6 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race6:SetPoint("TOPLEFT", 120, -60)
	race6:SetText(LR["Night Elf"])
    race6:SetWidth(100)
	race6:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Night Elf"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race6:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race7 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race7:SetPoint("TOPLEFT", 120, -100)
	race7:SetText(LR["Dwarf"])
    race7:SetWidth(100)
	race7:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Dwarf"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race7:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race8 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race8:SetPoint("TOPLEFT", 120, -140)
	race8:SetText(LR["Blood Elf"])
   race8:SetWidth(100)
	race8:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Blood Elf"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race8:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

local race9 = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	race9:SetPoint("TOPLEFT", 120, -180)
	race9:SetText(LR["Draenei"])
   race9:SetWidth(100)
	race9:SetScript("OnClick",
	function(self) 
		SARTERACIALSDB["Race"]["Draenei"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	race9:SetShown(SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and
SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false and SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Draenei"] == false)

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
	for v in pairs(SARTERACIALSDB["Dranei"]) do
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