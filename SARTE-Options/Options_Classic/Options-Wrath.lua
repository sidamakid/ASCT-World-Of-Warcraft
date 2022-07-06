local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205

if isWrathWow then
local L = SARTE_LOCALE_TABLE
local function InitializeOptions()
local f = CreateFrame("Frame")

f.defaults = {
------------------------
--Classes
------------------------
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
		Death_Knight = false,
		},
------------------------
--Rogue spells
------------------------
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
		["Dismantle"] = false,
		["Killing Spree"] = false,
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
		["Shadow Dance"] = false,
		["Tricks of the Trade"] = false,
	},
------------------------
--Priest spells
------------------------
	["Shadow"] = {
		["Shadow Word: Death"] = false,
		["Fade"] = false,
		["Psychic Scream"] = false,
		["Mind Blast"] = false,
		["Silence"] = false,
		["Devouring Plague"] = false,
		["Dispersion"] = false,
		["Shadowfiend"] = false,
      },
   ["Holy_Priest"] = {
		["Prayer of Mending"] = false,
		["Circle of Healing"] = false,
		["Desperate Prayer"] = false,
		["Divine Hymn"] = false,
		["Holy Fire"] = false,
		["Hymn of Hope"] = false,
		["Guardian Spirit"] = false,
		["Lightwell"] = false,
    },
   ["Discipline"] = {
		["Fear Ward"] = false,
		["Power Word: Shield"] = false,
		["Power Infusion"] = false,
		["Inner Focus"] = false,
		["Pain Suppression"] = false,
		["Penance"] = false,
	  },
------------------------
--Warrior spells
------------------------
	["Arms"] = {
		["Thunder Clap"] = false,
		["Charge"] = false,
		["Overpower"] = false,
		["Retaliation"] = false,
		["Mocking Blow"] = false,
		["Mortal Strike"] = false,
		["Heroic Throw"] = false,
		["Bladestorm"] = false,
		["Shattering Throw"] = false,
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
		["Death Wish"] = false,
		["Enraged Regeneration"] = false,
		["Heroic Fury"] = false,
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
		["Shockwave"] = false,
	},
------------------------
--Druid Spells
------------------------
	["Balance"] = {
		["Innervate"] = false,
		["Barkskin"] = false,
		["Hurricane"] = false,
		["Nature's Grasp"] = false,
		["Force of Nature"] = false,
		["Starfall"] = false,
		["Typhoon"] = false,
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
		["Faerie Fire (Feral)"] = false,
		["Feral Charge - Bear"] = false,
		["Berserk"] = false,
		["Feral Charge - Cat"] = false,
		["Survival Instincts"] = false,
		},
	["Druid_Restoration"] = {
		["Rebirth"] = false,
		["Tranquility"] = false,
		["Swiftmend"] = false,
		["Nature's Swiftness"] = false,
		["Wild Growth"] = false,
		},
------------------------
--Warlock spells
------------------------
  ["Affliction"] = {
	["Curse of Doom"] = false,
	["Death Coil"] = false,
	["Howl of Terror"] = false,
	["Haunt"] = false,
	},
   ["Demonology"] = {
		["Inferno"] = false,
		["Soulshatter"] = false,
		["Ritual of Doom"] = false,
		["Ritual of Souls"] = false,
		["Shadow Ward"] = false,
		["Fel Domination"] = false,
		["Challenging Howl"] = false,
		["Demonic Circle: Teleport"] = false,
		["Demonic Empowerment"] = false,
		["Demon Charge"] = false,
		["Immolation Aura"] = false,
		["Metamorphosis"] = false,
		["Ritual of Summoning"] = false,
		["Shadow Cleave"] = false,
	},
	["Destruction"] = {
		["Soul Fire"] = false,
		["Shadowfury"] = false,
		["Conflagrate"] = false,
		["Shadowburn"] = false,
		["Chaos Bolt"] = false,
	},
------------------------
--Shaman spells
------------------------
	["Elemental"] = {
		["Fire Elemental Totem"] = false,
		["Chain Lightning"] = false,
		["Earthbind Totem"] = false,
		["Fire Nova Totem"] = false,
		["Stoneclaw Totem"] = false,
		["Elemental Mastery"] = false,
		},
	["Enhancement"] = {
		["Grounding Totem"] = false,
		["Earth Elemental Totem"] = false,
		["Stormstrike"] = false,
		["Shamanistic Rage"] = false,
		["Astral Recall"] = false,
		["Lust"] = false,
	},
	["Shaman_Restoration"] = {
		["Mana Tide Totem"] = false,
		["Nature's Swiftness"] = false,
	},
------------------------
--Hunter spells
------------------------
	["Beast Mastery"] = {
		 ["Kill Command"] = false,
		 ["Bestial Wrath"] = false,
		 ["Scare Beast"] = false,
		 ["Intimidation"] = false,
		 ["Feed Pet"] = false,
		 ["Master's Call"] = false,
		 ["Call Stabled Pet"] = false,
	  },
   ["Marksmanship"] = {
		["Rapid Fire"] = false,
		["Multi-Shot"] = false,
		["Flare"] = false,
		["Concussive Shot"] = false,
		["Silencing Shot"] = false,
		["Aimed Shot"] = false,
		["Scatter Shot"] = false,
		["Distracting Shot"] = false,
		["Kill Shot"] = false,
		["Tranquilizing Shot"] = false,
		["Viper Sting"] = false,
		["Arcane Shot"] = false,
		["Chimera Shot"] = false,
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
		["Black Arrow"] = false,
		["Freezing Arrow"] = false,
		["Explosive Shot"] = false,
    },
------------------------
--Paladin
------------------------
	["Holy_Paladin"] = {
		["Consecration"] = false,
		["Exorcism"] = false,
		["Holy Wrath"] = false,
		["Lay on Hands"] = false,
		["Turn Evil"] = false,
		["Hammer of Wrath"] = false,
		["Divine Illumination"] = false,
		["Aura Mastery"] = false,
		["Divine Plea"] = false,
		["Divine Favor"] = false,
		["Holy Shock"] = false,
	},
	["Protection_Paladin"] = {
		["Righteous Defense"] = false,
		["Divine Intervention"] = false,
		["Divine Shield"] = false,
		["Hand of Protection"] = false,
		["Hand of Freedom"] = false,
		["Hammer of Justice"] = false,
		["Divine Protection"] = false,
		["Hand of Sacrifice"] = false,
		["Avenger's Shield"] = false,
		["Holy Shield"] = false,
		["Divine Sacrifice"] = false,
		["Hand of Reckoning"] = false,
		["Hand of Salvation"] = false,
		["Hammer of the Righteous"] = false,
		["Shield of Righteousness"] = false,
	},
	["Retribution"] = {
		["Avenging Wrath"] = false,
		["Judgement of Light"] = false,
		["Judgement of Justice"] = false,
		["Judgement of Wisdom"] = false,
		["Crusader Strike"] = false,
		["Repentance"] = false,
		["Divine Storm"] = false,
	},
------------------------
--Mage
------------------------
	["Arcane"] = {
		["Ritual of Refreshment"] = false,
		["Invisibility"] = false,
		["Counterspell"] = false,
		["Blink"] = false,
		["Arcane Power"] = false,
		["Presence of Mind"] = false,
		["Arcane Barrage"] = false,
		["Evocation"] = false,
	},
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
		["Deep Freeze"] = false,
		["Ice Barrier"] = false,
	},
------------------------
--Death_Knight
------------------------
	["Blood"] = {
		["Mark of Blood"] = false,
		["Dancing Rune Weapon"] = false,
		Hysteria = false,
		["Rune Tap"] = false,
		["Vampiric Blood"] = false,
	},
	["Frost_DK"] = {
		["Unbreakable Armor"] = false,
		Deathchill = false,
		["Hungering Cold"] = false,
		["Howling Blast"] = false,
		Lichborne = false,
	},
	["Unholy"] = {
		["Anti-Magic Zone"] = false,
		["Bone Shield"] = false,
		["Corpse Explosion"] = false,
		["Death Gate"] = false,
		["Ghoul Frenzy"] = false,
		["Summon Gargoyle"] = false,
	},
}




function f:InitializeOptions_Class()
	self.panel_main = CreateFrame("Frame")
	self.panel_main.name = L["Title_Class"]
	InterfaceOptions_AddCategory(self.panel_main)
local MinimapDataObject = LibStub("LibDataBroker-1.1"):NewDataObject("SARTE", {
    type = "SARTE",
    text = L["Title"],
    icon = "Interface\\Addons\\SARTE-Options\\SARTE-Image_4.tga",
    OnClick = function() InterfaceOptionsFrame_OpenToCategory(f.panel_main)  end,
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
local Color_picker_SARTE = CreateFrame("Button", nil, self.panel_main, "UIPanelButtonTemplate")
	Color_picker_SARTE:SetPoint("TOPRIGHT", -30, -20)
	Color_picker_SARTE:SetText(L["Color Picker"])
	Color_picker_SARTE:SetWidth(100)
	Color_picker_SARTE:SetScript("OnClick", function()
	SARTE_SHOW_COLOR_PICKER_FRAME_ShowColorPicker(SARTE_Color_Picker_Variables.r, SARTE_Color_Picker_Variables.g, SARTE_Color_Picker_Variables.b, SARTE_Color_Picker_Variables.a, SARTE_COlOR_PICKER_myColorCallback);
end)

local Class = UnitClassBase("player")
if Class == "ROGUE" then
	SARTESPELLDB["Class"]["Rogue"] = true
elseif Class == "PRIEST" then
	SARTESPELLDB["Class"]["Priest"] = true
elseif Class == "WARRIOR" then
	SARTESPELLDB["Class"]["Warrior"] = true
elseif Class == "DRUID" then
	SARTESPELLDB["Class"]["Druid"] = true
elseif Class == "WARLOCK" then
	SARTESPELLDB["Class"]["Warlock"] = true
elseif Class == "SHAMAN" then
	SARTESPELLDB["Class"]["Shaman"] = true
elseif Class == "HUNTER" then
	SARTESPELLDB["Class"]["Hunter"] = true
elseif Class == "PALADIN" then
	SARTESPELLDB["Class"]["Paladin"] = true
elseif Class == "MAGE" then
	SARTESPELLDB["Class"]["Mage"] = true
elseif Class == "DEATHKNIGHT" then
	SARTESPELLDB["Class"]["Death_Knight"] = true
end



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
local Panel_1 = SubPanelMaker(L["Druid"])
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
---------------------------
--Death_Knight
---------------------------
elseif SARTESPELLDB["Class"]["Death_Knight"] == true then
local Panel_1 = SubPanelMaker("Blood")
local Panel_2 = SubPanelMaker("Frost")
local Panel_3 = SubPanelMaker("Unholy")

local col_1 = 4
local x_1 = 0
for v in pairs(SARTESPELLDB["Blood"]) do
	local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Blood"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Blood"][v] = s:GetChecked() end)
	x_1=x_1+1
end

local col_2 = 4
local x_2 = 0
for v in pairs(SARTESPELLDB["Frost_DK"]) do
	local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Frost_DK"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Frost_DK"][v] = s:GetChecked() end)
	x_2=x_2+1
end

local col_3 = 4
local x_3 = 0
for v in pairs(SARTESPELLDB["Unholy"]) do
	local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Unholy"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Unholy"][v] = s:GetChecked() end)
	x_3=x_3+1
end

end

end

SLASH_SARTE1 = "/SARTE"
SLASH_SARTE2 = "/SCROLLINGABILITYTEXT"

SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	InterfaceOptionsFrame_OpenToCategory(f.panel_main)
	InterfaceOptionsFrame_OpenToCategory(f.panel_main)
end

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

