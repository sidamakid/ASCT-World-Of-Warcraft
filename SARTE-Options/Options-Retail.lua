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
		Monk = false,
		},
	--Rogue spells
	["Rogue_Shared"] = {

	},
	["Assassination"] = {

		},
	["Outlaw"] = {

		},
	["Subtlety"] = {

		},
--Priest spells
	["Priest_Shared"] = {

	},
	["Shadow"] = {

      },
   ["Holy_Priest"] = {

    },
   ["Discipline"] = {

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

	},
	["Balance"] = {

	},
	["Feral_Combat"] = {

	},
	["Druid_Restoration"] = {

	},
	["Guardian"] = {

	},
	["Druid_Shared_Spec_Spells"] = {

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



	local function SubPanelMaker(Name)
	local Frames = CreateFrame("Frame")
	Frames.name = Name
	Frames.parent = self.panel_main.name
	InterfaceOptions_AddCategory(Frames)
	return Frames
	end
local ClassInfo = select(3, UnitClass("player"))
local SpecInfo = select(1, GetSpecializationInfo("player"))



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