local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)

if isRetailWow then
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
		Death_Knight = false,
		Demon_Hunter = false,
		},
	--Rogue spells
	["Rogue_Shared"] = {
		["Blind"] = false,
		["Cloak of Shadows"] = false,
		["Vanish"] = false,
		["Stealth"] = false,
		["Shroud of Concealment"] = false,
		["Evasion"] = false,
		["Kidney Shot"] = false,
		["Shiv"] = false,
		["Feint"] = false,
		["Kick"] = false,
		["Crimson Vial"] = false,
		["Distract"] = false,
		["Sprint"] = false,
	},
	["Assassination"] = {
		["Vendetta"] = false,
		["Garrote"] = false,
		},
	["Outlaw"] = {
		["Adrenaline Rush"] = false,
		["Blade Flurry"] = false,
		["Roll the Bones"] = false,
		["Between the Eyes"] = false,
		["Gouge"] = false,
		["Grappling Hook"] = false,
		["Ghostly Strike"] = false,
		["Blade Rush"] = false,
		["Killing Spree"] = false,
		},
	["Subtlety"] = {
		["Shadow Dance"] = false,
		["Shadow Blades"] = false,
		["Symbols of Death"] = false,
		["Shuriken Tornado"] = false,
		["Secret Technique"] = false,
		},
	["Rogue_Shared_Spec_Spells"] = {
		["Shadowstep"] = false,
	},
--Priest spells
	["Priest_Shared"] = {
		["Power Infusion"] = false,
		["Mass Dispel"] = false,
		["Desperate Prayer"] = false,
		["Leap of Faith"] = false,
		["Fade"] = false,
		["Shadow Word: Death"] = false,
		["Psychic Scream"] = false,
		["Mind Blast"] = false,
	},
	["Shadow"] = {
		["Vampiric Embrace"] = false,
		["Dispersion"] = false,
		["Silence"] = false,
		["Void Eruption"] = false,
		["Void Bolt"] = false,
		["Psychic Horror"] = false,
		["Purify Disease"] = false,
		["Mind Bomb"] = false,
		["Surrender to Madness"] = false,
		["Shadow Crash"] = false,
		["Damnation"] = false,
		["Void Torrent"] = false,
      },
   ["Holy_Priest"] = {
		["Symbol of Hope"] = false,
		["Guardian Spirit"] = false,
		["Divine Hymn"] = false,
		["Holy Word: Chastise"] = false,
		["Holy Word: Serenity"] = false,
		["Prayer of Mending"] = false,
		["Holy Word: Sanctify"] = false,
		["Holy Fire"] = false,
		["Circle of Healing"] = false,
		["Holy Word: Salvation"] = false,
		["Apotheosis"] = false,
    },
   ["Discipline"] = {
		["Pain Suppression"] = false,
		["Penance"] = false,
		["Rapture"] = false,
		["Power Word: Barrier"] = false,
		["Power Word: Radiance"] = false,
		["Schism"] = false,
		["Mindbender"] = false,
		["Evangelism"] = false,
		["Spirit Shell"] = false,
	},
	  ["Priest_Shared_Spec_Spells"] = {
		["Shadowfiend"] = false,
		["Purify"] = false,
		["Angelic Feather"] = false,
		["Shining Force"] = false,
		["Divine Star"] = false,
		["Halo"] = false,
		["Shadow Covenant"] = false,
	  },
	  --Warrior spells
	["Arms"] = {

	},
	["Fury"] = {

	},
	["Protection_Warrior"] = {

	},
		--Druid Spells
	["Druid_Shared"] = {
		["Barkskin"] = false,
		["Rebirth"] = false,
		["Dash"] = false,
		["Dreamwalk"] = false,
		["Soothe"] = false,
		["Mangle"] = false,
		["Thrash"] = false,
		["Prowl"] = false,
		["Stampeding Roar"] = false,
		["Charm Woodland Creature"] = false,
		["Growl"] = false,
	},
	["Balance"] = {
		["Celestial Alignment"] = false,
		["Typhoon"] = false,
		["Solar Beam"] = false,
		["Fury of Elune"] = false,
		["Force of Nature"] = false,
		["Incarnation: Chosen of Elune"] = false,
		["New Moon"] = false,
	},
	["Feral_Combat"] = {
		["Tiger's Fury"] = false,
		["Maim"] = false,
		["Feral Frenzy"] = false,
		["Brutal Slash"] = false,
		["Incarnation: King of the Jungle"] = false,
	},
	["Druid_Restoration"] = {
		["Wild Growth"] = false,
		["Tranquility"] = false,
		["Swiftmend"] = false,
		["Nature's Cure"] = false,
		["Ironbark"] = false,
		["Ursol's Vortex"] = false,
		["Nature's Swiftness"] = false,
		["Flourish"] = false,
		["Incarnation: Tree of Life"] = false,
		["Overgrowth"] = false,
	},
	["Guardian"] = {
		["Frenzied Regeneration"] = false,
		["Incapacitating Roar"] = false,
		["Incarnation: Guardian of Ursoc"] = false,
		["Pulverize"] = false,
		["Bristling Fur"] = false,
	},
	["Druid_Shared_Spec_Spells"] = {
		["Innervate"] = false,
		["Remove Corruption"] = false,
		["Survival Instincts"] = false,
		["Berserk"] = false,
		["Skull Bash"] = false,
	},
	--Warlock spells
  ["Affliction"] = {

	},
   ["Demonology"] = {

	},
	["Destruction"] = {

	},
	--Shaman spells
	["Elemental"] = {

		},
	["Enhancement"] = {

	},
	["Shaman_Restoration"] = {

	},
	--Hunter spells
	["Beast Mastery"] = {

	  },
   ["Marksmanship"] = {

    },
   ["Survival"] = {

    },
	--Paladin
	["Holy_Paladin"] = {

	},
	["Protection_Paladin"] = {

	},
	["Retribution"] = {

	},
	--Mage
	["Arcane"] = {

	},
	--Fire
	["Fire"] = {

	},
	["Frost_Mage"] = {

	},
}

function f:InitializeOptions_Class()
	self.panel_main = CreateFrame("Frame")
	self.panel_main.name =  L["Title_Class"]
	InterfaceOptions_AddCategory(self.panel_main)

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
  local function cbMakerLeft(spellName, x, y)
		local checkb = CreateFrame("CheckButton", nil, self.panel_main, "UIPanelButtonTemplate")
		checkb:SetPoint("TOPLEFT", x, y)
		checkb:SetText(spellName)
        checkb:SetWidth(100)
		checkb:SetScript("OnClick",
			function(self) 
				SARTESPELLDB["Class"][spellName] = true
				print("Reload Ui type /reload and then hit enter")
			end
		)
		checkb:SetShown(SARTESPELLDB["Class"]["Rogue"] == false and SARTESPELLDB["Class"]["Priest"] == false and SARTESPELLDB["Class"]["Warrior"] == false and SARTESPELLDB["Class"]["Druid"] == false and SARTESPELLDB["Class"]["Warlock"] == false and
		SARTESPELLDB["Class"]["Shaman"] == false and SARTESPELLDB["Class"]["Hunter"] == false and SARTESPELLDB["Class"]["Paladin"] == false and SARTESPELLDB["Class"]["Mage"] == false)
		return checkb
	end
	local class = cbMakerLeft(L["Rogue"], 20, -20)
	local class1 = cbMakerLeft(L["Priest"], 20, -60)
	local class2 = cbMakerLeft(L["Warrior"], 20, -100)
	local class3 = cbMakerLeft(L["Druid"], 20, -140)
	local class4 = cbMakerLeft(L["Warlock"], 20, -180)
	local class5 = cbMakerLeft(L["Shaman"], 120, -20)
	local class6 = cbMakerLeft(L["Hunter"], 120, -60)
	local class7 = cbMakerLeft(L["Paladin"], 120, -100)
	local class8 = cbMakerLeft(L["Mage"], 120, -140)


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
	local Panel_1 = SubPanelMaker(L["Rogue"])
	local Panel_2 = SubPanelMaker(L["Assassination"])
	local Panel_3 = SubPanelMaker(L["Outlaw"])
	local Panel_4 = SubPanelMaker(L["Subtlety"])

	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Rogue"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_1/col_1))
		b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Rogue"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Rogue"][v] = s:GetChecked() end)
        x_1=x_1+1
	end

	local col_2 = 4
    local x_2 = 0
    for v in pairs(SARTESPELLDB["Assassination"]) do
        local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
		b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Assassination"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Assassination"][v] = s:GetChecked() end)
        x_2=x_2+1
	end

	local col_3 = 4
    local x_3 = 0
    for v in pairs(SARTESPELLDB["Combat"]) do
        local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Combat"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Combat"][v] = s:GetChecked() end)
        x_3=x_3+1
	end

	local col_4 = 4
    local x_4 = 0
    for v in pairs(SARTESPELLDB["Subtlety"]) do
        local b = CreateFrame("CheckButton", nil, Panel_4, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_4 % col_4), -20 + (- b:GetHeight()-5) * math.floor(x_4/col_4))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Subtlety"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Subtlety"][v] = s:GetChecked() end)
        x_4=x_4+1
	end

end

end








SLASH_SARTE1 = "/SAT"

SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
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