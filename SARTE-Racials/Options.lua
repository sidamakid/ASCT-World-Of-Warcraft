local f = CreateFrame("Frame")

f.defaults = {
--Races
["Race"] = {
	["Blood Elf"] = false,
	Orc = false,
	Undead = false,
	Troll = false,
	Tauren = false,
	Dranei = false,
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
	["Every Man for Himself"] = false,
	Perception = false,
	},
	["Night Elf"] = {
	Shadowmeld = false,
	},
	["Dranei"] = {
	["Gift of the Naaru"] = false,
	},
	["Gnome"] = {
	["Escape Artist"] = false,
	},
	["Dwarf"] = {
		Stoneform = false,
	},
}

function f:OnEvent(event, addOnName)
	if addOnName == "SARTE-Racials" then
		SARTERACIALSDB = SARTERACIALSDB or CopyTable(self.defaults)
		self.db = SARTERACIALSDB
		self:InitializeOptions()
	end
end

f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)

function f:InitializeOptions()
	self.panel_main_Race = CreateFrame("Frame")
	self.panel_main_Race.name = "Scrolling_ability_Race"

	InterfaceOptions_AddCategory(self.panel_main_Race)
   
   local resetbtn = CreateFrame("Button", nil, self.panel_main_Race, "UIPanelButtonTemplate")
	resetbtn:SetPoint("BOTTOMLEFT", 20, 20)
	resetbtn:SetText("Reset Race")
	resetbtn:SetWidth(100)
	resetbtn:SetScript("OnClick", function()
         for k in pairs(SARTERACIALSDB["Race"]) do SARTERACIALSDB["Race"][k]=false end
		 for bf in pairs(SARTERACIALSDB["BloodElf"]) do SARTERACIALSDB["BloodElf"][bf]=false end
		 for UN in pairs(SARTERACIALSDB["Undead"]) do SARTERACIALSDB["Undead"][UN]=false end
		 for OR in pairs(SARTERACIALSDB["Orc"]) do SARTERACIALSDB["Orc"][OR]=false end
		 for TR in pairs(SARTERACIALSDB["Troll"]) do SARTERACIALSDB["Troll"][TR]=false end
		 for TA in pairs(SARTERACIALSDB["Tauren"]) do SARTERACIALSDB["Tauren"][TA]=false end
		 for HU in pairs(SARTERACIALSDB["Human"]) do SARTERACIALSDB["Human"][HU]=false end
		 for NF in pairs(SARTERACIALSDB["Night Elf"]) do SARTERACIALSDB["Night Elf"][NF]=false end
		 for DR in pairs(SARTERACIALSDB["Dranei"]) do SARTERACIALSDB["Dranei"][DR]=false end
		 for GE in pairs(SARTERACIALSDB["Gnome"]) do SARTERACIALSDB["Gnome"][GE]=false end
		 for DW in pairs(SARTERACIALSDB["Dwarf"]) do SARTERACIALSDB["Dwarf"][DW]=false end
		 print("Reload Ui type /reload and then hit enter")
	end)
  local function cbMakerLeft(spellName, x, y)
		local checkb = CreateFrame("CheckButton", nil, self.panel_main_Race, "UIPanelButtonTemplate")
		checkb:SetPoint("TOPLEFT", x, y)
		checkb:SetText(spellName)
        checkb:SetWidth(100)
		checkb:SetScript("OnClick",
			function(self) 
				SARTERACIALSDB["Race"][spellName] = true
				print("Reload Ui type /reload and then hit enter")
			end
		)
		checkb:SetShown(SARTERACIALSDB["Race"]["Blood Elf"] == false and SARTERACIALSDB["Race"]["Orc"] == false and SARTERACIALSDB["Race"]["Undead"] == false and SARTERACIALSDB["Race"]["Troll"] == false and SARTERACIALSDB["Race"]["Tauren"] == false and SARTERACIALSDB["Race"]["Dranei"] == false and
		SARTERACIALSDB["Race"]["Gnome"] == false and SARTERACIALSDB["Race"]["Human"] == false and SARTERACIALSDB["Race"]["Night Elf"] == false and SARTERACIALSDB["Race"]["Dwarf"] == false)
		
		return checkb
	end
   local Race = cbMakerLeft("Blood Elf", 20, -20)
   local Race1 = cbMakerLeft("Orc", 20, -60)
   local Race2 = cbMakerLeft("Undead", 20, -100)
   local Race3 = cbMakerLeft("Troll", 20, -140)
   local Race4 = cbMakerLeft("Night Elf", 20, -180)
   local Race5 = cbMakerLeft("Tauren", 120, -20)
   local Race6 = cbMakerLeft("Dranei", 120, -60)
   local Race7 = cbMakerLeft("Gnome", 120, -100)
   local Race8 = cbMakerLeft("Dwarf", 120, -140)
   local Race9 = cbMakerLeft("Human", 120, -180)

--------------------------
--Blood Elf
--------------------------
if SARTERACIALSDB["Race"]["Blood Elf"] == true then
local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["BloodElf"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["BloodElf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["BloodElf"][v] = s:GetChecked() end)
	end
-------------------------
-- Undead
-------------------------
elseif SARTERACIALSDB["Race"]["Undead"] == true then
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
  b.Text:SetText(v)
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
  b.Text:SetText(v)
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
  b.Text:SetText(v)
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
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["Night Elf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Night Elf"][v] = s:GetChecked() end)
   end
---------------------
--Dranei
---------------------
elseif SARTERACIALSDB["Race"]["Dranei"] == true then
 local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTERACIALSDB["Dranei"]) do
  local b = CreateFrame("CheckButton", nil, self.panel_main_Race, "InterfaceOptionsCheckButtonTemplate")
  b:SetPoint("TOPLEFT", 20, modifierfirst)
  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["Dranei"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Dranei"][v] = s:GetChecked() end)
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
  b.Text:SetText(v)
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
  b.Text:SetText(v)
  b:SetChecked(SARTERACIALSDB["Dwarf"][v])
  b:SetScript("OnClick", function(s) SARTERACIALSDB["Dwarf"][v] = s:GetChecked() end)
   end

end
end

SLASH_SARTER1 = "/SATR"
SLASH_SLASH_SARTER2 = "/Scrollingabilitytextracials"

SlashCmdList.SARTER = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	InterfaceOptionsFrame_OpenToCategory(f.panel_main_Race)
	InterfaceOptionsFrame_OpenToCategory(f.panel_main_Race)
end