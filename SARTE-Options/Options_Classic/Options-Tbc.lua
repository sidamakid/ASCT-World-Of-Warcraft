local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)

if isTbcWow then
local L = SARTE_Localization_My_Localization_Table;
local function InitializeOptions()
local f = CreateFrame("Frame")

f.defaults = {
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
			["Shadowstep"] = false,
			["Cloak of Shadows"] = false,
			["Blind"] = false,
			["Distract"] = false,
		},
--Priest spells
	["Shadow"] = {
		["Shadow Word: Death"] = false,
		["Fade"] = false,
		["Psychic Scream"] = false,
		["Mind Blast"] = false,
		["Vampiric Embrace"] = false,
		["Silence"] = false,
		["Shadowfiend"] = false,
      },
   ["Holy_Priest"] = {
	["Prayer of Mending"] = false,
	["Lightwell"] = false,
    },
   ["Discipline"] = {
		["Fear Ward"] = false,
		["Power Word: Shield"] = false,
		["Power Infusion"] = false,
		["Inner Focus"] = false,
		["Pain Suppression"] = false,
	  },
	  ["Racials_Priest"] = {
		["Devouring Plague"] = false,
		["Symbol of Hope"] = false,
		["Starshards"] = false,
		["Elune's Grace"] = false,
		["Consume Magic"] = false,
		["Feedback"] = false,
		["Desperate Prayer"] = false,
		["Chastise"] = false,
	  },
	  --Warrior spells
	["Arms"] = {
		["Thunder Clap"] = false,
		["Charge"] = false,
		["Overpower"] = false,
		["Retaliation"] = false,
		["Mocking Blow"] = false,
		["Death Wish"] = false,
		["Mortal Strike"] = false,
	},
	["Fury"] = {
		["Recklessness"] = false,
		["Intercept"] = false,
		["Whirlwind"] = false,
		["Berserker Rage"] = false,
		["Intimidating Shout"] = false,
		["Challenging Shout"] = false,
		["Pummel"] = false,
		["Sweeping Strikes"] = false,
	},
	["Protection_Warrior"] = {
		["Spell Reflection"] = false,
		["Intervene"] = false,
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
		["Force of Nature"] = false,
		},
	["Feral_Combat"] = {
		["Maim"] = false,
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
	["Curse of Doom"] = false,
	["Death Coil"] = false,
	["Howl of Terror"] = false,
	 },
   ["Demonology"] = {
		["Inferno"] = false,
		["Soulshatter"] = false,
		["Ritual of Doom"] = false,
		["Ritual of Souls"] = false,
		["Shadow Ward"] = false,
		["Fel Domination"] = false,
	},
	["Destruction"] = {
		["Soul Fire"] = false,
		["Shadowfury"] = false,
		["Conflagrate"] = false,
		["Shadowburn"] = false,
	},
	--Shaman spells
	["Elemental"] = {
		["Fire Elemental Totem"] = false,
		["Chain Lightning"] = false,
		["Earthbind Totem"] = false,
		["Fire Nova Totem"] = false,
		["Stoneclaw Totem"] = false,
		["Elemental Mastery"] = false,
		--["Shocks"] = false,
		},
	["Enhancement"] = {
		["Grounding Totem"] = false,
		["Earth Elemental Totem"] = false,
		["Stormstrike"] = false,
		["Astral Recall"] = false,
		["Shamanistic Rage"] = false,
		--["Lust"] = false,
	},
	["Shaman_Restoration"] = {
		["Mana Tide Totem"] = false,
		["Nature's Swiftness"] = false,
	},
	--Hunter spells
	["Beast Mastery"] = {
         --["Traps"] = false,
		 ["Kill Command"] = false,
		 ["Bestial Wrath"] = false,
		 ["Scare Beast"] = false,
		 ["Intimidation"] = false,
	  },
   ["Marksmanship"] = {
		["Rapid Fire"] = false,
		["Multi-Shot"] = false,
		["Flare"] = false,
		["Concussive Shot"] = false,
		["Arcane Shot"] = false,
		["Aimed Shot"] = false,
		["Scatter Shot"] = false,
    },
   ["Survival"] = {
		["Misdirection"] = false,
		["Feign Death"] = false,
		["Disengage"] = false,
		["Raptor Strike"] = false,
		["Mongoose Bite"] = false,
		["Readiness"] = false,
		["Deterrence"] = false,
		["Wyvern Sting"] = false,
		["Counterattack"] = false,
    },
	--Paladin
	["Holy_Paladin"] = {
		["Consecration"] = false,
		["Exorcism"] = false,
		["Holy Wrath"] = false,
		["Lay on Hands"] = false,
		["Turn Evil"] = false,
		["Hammer of Wrath"] = false,
		["Divine Illumination"] = false,
		["Holy Shock"] = false,
		["Divine Favor"] = false,
	},
	["Protection_Paladin"] = {
		["Righteous Defense"] = false,
		["Divine Intervention"] = false,
		["Divine Shield"] = false,
		["Blessing of Protection"] = false,
		["Blessing of Freedom"] = false,
		["Hammer of Justice"] = false,
		["Divine Protection"] = false,
		["Blessing of Sacrifice"] = false,
		["Avenger's Shield"] = false,
		["Holy Shield"] = false,
	},
	["Retribution"] = {
		["Avenging Wrath"] = false,
		["Judgement"] = false,
		["Crusader Strike"] = false,
		["Repentance"] = false,
	},
	--Mage
	["Arcane"] = {
		["Ritual of Refreshment"] = false,
		["Invisibility"] = false,
		["Counterspell"] = false,
		["Blink"] = false,
		["Arcane Power"] = false,
		["Presence of Mind"] = false,
		["Evocation"] = false,
	},
	--Fire
	["Fire"] = {
		["Fire Blast"] = false,
		["Fire Ward"] = false,
		["Dragon's Breath"] = false,
		["Combustion"] = false,
		["Blast Wave"] = false,
	},
	["Frost_Mage"] = {
		["Ice Block"] = false,
		["Frost Nova"] = false,
		["Cone of Cold"] = false,
		["Frost Ward"] = false,
		["Icy Veins"] = false,
		["Summon Water Elemental"] = false,
		["Cold Snap"] = false,
		["Ice Barrier"] = false,
	},
}





function f:InitializeOptions_Class()
	self.panel_main = CreateFrame("Frame")
	self.panel_main.name = L["Title_Class"]
	InterfaceOptions_AddCategory(self.panel_main)



	local footer = self.panel_main:CreateFontString("ARTWORK", nil, "GameFontNormal")
	footer:SetPoint("BOTTOM", 0, 20)
	footer:SetText("Reset button to the left")
	
	local resetbtn = CreateFrame("Button", nil, self.panel_main, "UIPanelButtonTemplate")
	resetbtn:SetPoint("BOTTOMLEFT", 20, 20)
	resetbtn:SetText(L["Reset Class"])
	resetbtn:SetWidth(100)
	resetbtn:SetScript("OnClick", function()
    --Class
	for k in pairs(SARTESPELLDB["Class"]) do SARTESPELLDB["Class"][k]=false end
	--Rogue
	for k in pairs(SARTESPELLDB["Assassination"]) do SARTESPELLDB["Assassination"][k]=false end
	for k in pairs(SARTESPELLDB["Combat"]) do SARTESPELLDB["Combat"][k]=false end
	for k in pairs(SARTESPELLDB["Subtlety"]) do SARTESPELLDB["Subtlety"][k]=false end
	--Priest
	for k in pairs(SARTESPELLDB["Shadow"]) do SARTESPELLDB["Shadow"][k]=false end
	for k in pairs(SARTESPELLDB["Holy_Priest"]) do SARTESPELLDB["Holy_Priest"][k]=false end
	for k in pairs(SARTESPELLDB["Discipline"]) do SARTESPELLDB["Discipline"][k]=false end
	for k in pairs(SARTESPELLDB["Racials_Priest"]) do SARTESPELLDB["Racials_Priest"][k]=false end
	--Warrior
	for k in pairs(SARTESPELLDB["Arms"]) do SARTESPELLDB["Arms"][k]=false end
	for k in pairs(SARTESPELLDB["Fury"]) do SARTESPELLDB["Fury"][k]=false end
	for k in pairs(SARTESPELLDB["Protection_Warrior"]) do SARTESPELLDB["Protection_Warrior"][k]=false end
	--Druid
	for k in pairs(SARTESPELLDB["Balance"]) do SARTESPELLDB["Balance"][k]=false end
	for k in pairs(SARTESPELLDB["Feral_Combat"]) do SARTESPELLDB["Feral_Combat"][k]=false end
	for k in pairs(SARTESPELLDB["Druid_Restoration"]) do SARTESPELLDB["Druid_Restoration"][k]=false end
	--Warlock
	for k in pairs(SARTESPELLDB["Affliction"]) do SARTESPELLDB["Affliction"][k]=false end
	for k in pairs(SARTESPELLDB["Demonology"]) do SARTESPELLDB["Demonology"][k]=false end
	for k in pairs(SARTESPELLDB["Destruction"]) do SARTESPELLDB["Destruction"][k]=false end
	--Shaman
	for k in pairs(SARTESPELLDB["Elemental"]) do SARTESPELLDB["Elemental"][k]=false end
	for k in pairs(SARTESPELLDB["Enhancement"]) do SARTESPELLDB["Enhancement"][k]=false end
	for k in pairs(SARTESPELLDB["Shaman_Restoration"]) do SARTESPELLDB["Shaman_Restoration"][k]=false end
	--Hunter
	for k in pairs(SARTESPELLDB["Beast Mastery"]) do SARTESPELLDB["Beast Mastery"][k]=false end
	for k in pairs(SARTESPELLDB["Marksmanship"]) do SARTESPELLDB["Marksmanship"][k]=false end
	for k in pairs(SARTESPELLDB["Survival"]) do SARTESPELLDB["Survival"][k]=false end
	--Paladin
	for k in pairs(SARTESPELLDB["Holy_Paladin"]) do SARTESPELLDB["Holy_Paladin"][k]=false end
	for k in pairs(SARTESPELLDB["Protection_Paladin"]) do SARTESPELLDB["Protection_Paladin"][k]=false end
	for k in pairs(SARTESPELLDB["Retribution"]) do SARTESPELLDB["Retribution"][k]=false end
	--Mage
	for k in pairs(SARTESPELLDB["Arcane"]) do SARTESPELLDB["Arcane"][k]=false end
	for k in pairs(SARTESPELLDB["Fire"]) do SARTESPELLDB["Fire"][k]=false end
	for k in pairs(SARTESPELLDB["Frost_Mage"]) do SARTESPELLDB["Frost_Mage"][k]=false end
	--Prints
	print("/rl")
	end)
	local Class = UnitClass("player")
	if Class == "Rogue" then
		SARTESPELLDB["Class"]["Rogue"] = true
	elseif Class == "Priest" then
		SARTESPELLDB["Class"]["Priest"] = true
	elseif Class == "Warrior" then
		SARTESPELLDB["Class"]["Warrior"] = true
	elseif Class == "Druid" then
		SARTESPELLDB["Class"]["Druid"] = true
	elseif Class == "Warlock" then
		SARTESPELLDB["Class"]["Warlock"] = true
	elseif Class == "Shaman" then
		SARTESPELLDB["Class"]["Shaman"] = true
	elseif Class == "Hunter" then
		SARTESPELLDB["Class"]["Hunter"] = true
	elseif Class == "Paladin" then
		SARTESPELLDB["Class"]["Paladin"] = true
	elseif Class == "Mage" then
		SARTESPELLDB["Class"]["Mage"] = true
	end
  -----------------------
  --Row 1
  -----------------------
	local class = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class:SetPoint("TOPLEFT", 20, -20)
	class:SetText(L["Rogue"])
    class:SetWidth(100)
	class:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Rogue"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)

	local class1 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class1:SetPoint("TOPLEFT", 20, -60)
	class1:SetText(L["Priest"])
    class1:SetWidth(100)
	class1:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Priest"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class1:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
	SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)

	local class2 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class2:SetPoint("TOPLEFT", 20, -100)
	class2:SetText(L["Warrior"])
    class2:SetWidth(100)
	class2:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Warrior"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class2:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
	
	local class3 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class3:SetPoint("TOPLEFT", 20, -140)
	class3:SetText(L["Druid"])
    class3:SetWidth(100)
	class3:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Druid"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class3:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)

	local class4 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class4:SetPoint("TOPLEFT", 20, -180)
	class4:SetText(L["Warlock"])
    class4:SetWidth(100)
	class4:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Warlock"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class4:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
	--------------------
    --Row 2
	---------------------
	local class5 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class5:SetPoint("TOPLEFT", 120, -20)
	class5:SetText(L["Shaman"])
    class5:SetWidth(100)
	class5:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Shaman"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class5:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
	SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
	
	local class6 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class6:SetPoint("TOPLEFT", 120, -60)
	class6:SetText(L["Hunter"])
    class6:SetWidth(100)
	class6:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Hunter"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class6:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
	local class7 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class7:SetPoint("TOPLEFT", 120, -100)
	class7:SetText(L["Paladin"])
    class7:SetWidth(100)
	class7:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Paladin"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class7:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
	local class8 = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
	class8:SetPoint("TOPLEFT", 120, -140)
	class8:SetText(L["Mage"])
    class8:SetWidth(100)
	class8:SetScript("OnClick",
	function(self) 
		SARTESPELLDB["Class"]["Mage"] = true
		print("Reload Ui type /reload and then hit enter")
			end
	)
	class8:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)


	local function SubPanelMaker(Name)
	local Frames = CreateFrame("Frame")
	Frames.name = Name
	Frames.parent = self.panel_main.name
	InterfaceOptions_AddCategory(Frames)
	return Frames
	end




--------------------------
--Rogue
--------------------------
if SARTESPELLDB["Class"]["Rogue"] == true then
	local Panel_1 = SubPanelMaker("Assassination")
	local Panel_2 = SubPanelMaker("Combat")
	local Panel_3 = SubPanelMaker("Subtlety")

	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Assassination"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Assassination"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Assassination"][v] = s:GetChecked() end)
        x_1=x_1+1
	end

	local col_2 = 4
    local x_2 = 0
    for v in pairs(SARTESPELLDB["Combat"]) do
        local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Combat"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Combat"][v] = s:GetChecked() end)
        x_2=x_2+1
	end

	local col_3 = 4
    local x_3 = 0
    for v in pairs(SARTESPELLDB["Subtlety"]) do
        local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Subtlety"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Subtlety"][v] = s:GetChecked() end)
        x_3=x_3+1
	end
---------------------------
--Priest
---------------------------
elseif SARTESPELLDB["Class"]["Priest"] == true then
local Panel_1 = SubPanelMaker(L["Shadow"])
local Panel_2 = SubPanelMaker(L["Holy"])
local Panel_3 = SubPanelMaker(L["Discipline"])
local Panel_4 = SubPanelMaker(L["Racials_Priest"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Shadow"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Shadow"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shadow"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Holy_Priest"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Holy_Priest"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Holy_Priest"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Discipline"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Discipline"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Discipline"][v] = s:GetChecked() end)
	x_3=x_3+1
end

local col_4 = 4
local x_4 = 0
for v in pairs(SARTESPELLDB["Racials_Priest"]) do
	local b = CreateFrame("CheckButton", nil, Panel_4, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_4 % col_4), -20 + (- b:GetHeight()-5) * math.floor(x_4/col_4))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Racials_Priest"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Racials_Priest"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Warrior
---------------------------
elseif SARTESPELLDB["Class"]["Warrior"] == true then

local Panel_1 = SubPanelMaker(L["Arms"])
local Panel_2 = SubPanelMaker(L["Fury"])
local Panel_3 = SubPanelMaker(L["Protection"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Arms"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Arms"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Arms"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Fury"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Fury"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Fury"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Protection_Warrior"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Protection_Warrior"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Protection_Warrior"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Druid
---------------------------
elseif SARTESPELLDB["Class"]["Druid"] == true then
local Panel_1 = SubPanelMaker(L["Balance"])
local Panel_2 = SubPanelMaker(L["Feral_Combat"])
local Panel_3 = SubPanelMaker(L["Restoration"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Balance"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Balance"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Balance"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Feral_Combat"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Feral_Combat"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Feral_Combat"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Druid_Restoration"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Druid_Restoration"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Druid_Restoration"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Shaman
---------------------------
elseif SARTESPELLDB["Class"]["Shaman"] == true then
local Panel_1 = SubPanelMaker(L["Elemental"])
local Panel_2 = SubPanelMaker(L["Enhancement"])
local Panel_3 = SubPanelMaker(L["Restoration"])


local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Elemental"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Elemental"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Elemental"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Enhancement"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Enhancement"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Enhancement"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Shaman_Restoration"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Shaman_Restoration"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Shaman_Restoration"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Warlock
---------------------------
elseif SARTESPELLDB["Class"]["Warlock"] == true then
local Panel_1 = SubPanelMaker(L["Affliction"])
local Panel_2 = SubPanelMaker(L["Demonology"])
local Panel_3 = SubPanelMaker(L["Destruction"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Affliction"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Affliction"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Affliction"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Demonology"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Demonology"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Demonology"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Destruction"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Destruction"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Destruction"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Hunter
---------------------------
elseif SARTESPELLDB["Class"]["Hunter"] == true then
local Panel_1 = SubPanelMaker(L["Beast Mastery"])
local Panel_2 = SubPanelMaker(L["Marksmanship"])
local Panel_3 = SubPanelMaker(L["Survival"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Beast Mastery"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Beast Mastery"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Beast Mastery"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Marksmanship"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Marksmanship"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Marksmanship"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Survival"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Survival"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Survival"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Paladin
---------------------------
elseif SARTESPELLDB["Class"]["Paladin"] == true then
local Panel_1 = SubPanelMaker(L["Holy"])
local Panel_2 = SubPanelMaker(L["Protection"])
local Panel_3 = SubPanelMaker(L["Retribution"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Holy_Paladin"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Holy_Paladin"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Holy_Paladin"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Protection_Paladin"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Protection_Paladin"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Protection_Paladin"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Retribution"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Retribution"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Retribution"][v] = s:GetChecked() end)
	x_3=x_3+1
end
---------------------------
--Mage
---------------------------
elseif SARTESPELLDB["Class"]["Mage"] == true then
local Panel_1 = SubPanelMaker(L["Arcane"])
local Panel_2 = SubPanelMaker(L["Fire"])
local Panel_3 = SubPanelMaker(L["Frost"])

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Arcane"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Arcane"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Arcane"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Fire"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Fire"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Fire"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Frost_Mage"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Frost_Mage"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Frost_Mage"][v] = s:GetChecked() end)
	x_3=x_3+1
end

end

end








SLASH_SARTE1 = "/SAT"
SLASH_SARTE2 = "/SCROLLINGABILITYTEXT"

SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	InterfaceOptionsFrame_OpenToCategory(f.panel_main)
	InterfaceOptionsFrame_OpenToCategory(f.panel_main)
end

SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI

SARTESPELLDB = SARTESPELLDB or CopyTable(f.defaults)
f:InitializeOptions_Class()
f.db = SARTESPELLDB

end
SDT_AddLocalizedCallback(function()
	InitializeOptions()
  end)
end