---------------------------
--Checks if is TBC wow
---------------------------
local isTbcWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE)
if isTbcWow then
---------------------------
--Localize Table
---------------------------
local L = ASDC_LOCALE_TABLE
---------------------------
--Namespace
---------------------------
local addonName, ASCT_Options = ...;
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
local defaults = {
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
			["Cold Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Kidney Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Combat"] = {
			["Feint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Adrenaline Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Gouge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Evasion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Sprint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Riposte"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Blade Flurry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Subtlety"] = {
			["Stealth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Ghostly Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Preparation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Vanish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Premeditation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Shadowstep"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Cloak of Shadows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Blind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
			["Distract"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
--Priest spells
	["Shadow"] = {
		["Shadow Word: Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Devouring Plague"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Psychic Scream"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mind Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Vampiric Embrace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
      },
   ["Holy_Priest"] = {
	["Prayer of Mending"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	["Lightwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	["Desperate Prayer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	["Chastise"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
   ["Discipline"] = {
		["Fear Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Word: Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Infusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Inner Focus"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pain Suppression"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Symbol of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feedback"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Elune's Grace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Starshards"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Consume Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	  --Warrior spells
	["Arms"] = {
		["Thunder Clap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Overpower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Retaliation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mocking Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Death Wish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mortal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Fury"] = {
		["Recklessness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intercept"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Whirlwind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Berserker Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intimidating Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Challenging Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pummel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sweeping Strikes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bloodthirst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Protection_Warrior"] = {
		["Spell Reflection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intervene"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Wall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Disarm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Taunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bloodrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Revenge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Last Stand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Concussion Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Slam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
		--Druid Spells
	["Balance"] = {
		["Innervate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Barkskin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hurricane"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Nature's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Force of Nature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Feral_Combat"] = {
		["Maim"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Enrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Prowl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Challenging Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Growl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frenzied Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tiger's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feral Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Faerie Fire (Feral)"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Druid_Restoration"] = {
		["Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tranquility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Swiftmend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},


	--Warlock spells
  ["Affliction"] = {
	["Curse of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	["Death Coil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	["Howl of Terror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
   ["Demonology"] = {
		["Inferno"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soulshatter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ritual of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ritual of Souls"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadow Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Domination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Destruction"] = {
		["Soul Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowfury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Conflagrate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Shaman spells
	["Elemental"] = {
		["Fire Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Chain Lightning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earthbind Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fire Nova Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stoneclaw Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Elemental Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		},
	["Enhancement"] = {
		["Grounding Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earth Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stormstrike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Astral Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shamanistic Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Shaman_Restoration"] = {
		["Mana Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Shared_Shaman_spells"] = {
		["Shocks"] = false,
		["Lust"] = false,
	},
	--Hunter spells
	["Beast Mastery"] = {
		 ["Kill Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		 ["Bestial Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		 ["Scare Beast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		 ["Intimidation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	  },
   ["Marksmanship"] = {
		["Rapid Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Multi-Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Concussive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aimed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Scatter Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
   ["Survival"] = {
		["Misdirection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feign Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Disengage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Raptor Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mongoose Bite"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Readiness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Deterrence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wyvern Sting"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Counterattack"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
	["Hunter_Traps"] = {
		["Traps"] = false,
	},
	--Paladin
	["Holy_Paladin"] = {
		["Consecration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Exorcism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Lay on Hands"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Turn Evil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hammer of Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Illumination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Favor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Protection_Paladin"] = {
		["Righteous Defense"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Intervention"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Freedom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hammer of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Avenger's Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Retribution"] = {
		["Avenging Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Judgement"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Crusader Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Repentance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Mage
	["Arcane"] = {
		["Ritual of Refreshment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Counterspell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blink"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Power"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Presence of Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Evocation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Shattrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Stonard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Theramore"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Silvermoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Exodar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Stormwind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Ironforge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Darnassus"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Orgrimmar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Undercity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Thunder Bluff"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Fire"] = {
		["Fire Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fire Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dragon's Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Combustion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blast Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Frost_Mage"] = {
		["Ice Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frost Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cone of Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frost Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Icy Veins"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Water Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cold Snap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ice Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Racials
	["Blood Elf"] = {
		["Arcane Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mana Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Undead"] = {
		["Cannibalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Will of the Forsaken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Orc"] = {
		["Blood Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Troll"] = {
		Berserking = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Tauren"] = {
		["War Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Human"] = {
		Perception = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Night Elf"] = {
		Shadowmeld = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Draenei"] = {
		["Gift of the Naaru"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Gnome"] = {
		["Escape Artist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Dwarf"] = {
		["Stoneform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Advanced_Scrolling_Combat_Text_Stats"] = {
		["Armor"] = {StatEnable = false, Gains = false, Lost = false},
		["Agility"] = {StatEnable = false, Gains = false, Lost = false},
		["Attack Power"] = {StatEnable = false, Gains = false, Lost = false},
		["Strength"] = {StatEnable = false, Gains = false, Lost = false},
		["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
		["Spirit"] = {StatEnable = false, Gains = false, Lost = false},
		["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
		["Health"] = {StatEnable = false, Gains = false, Lost = false},
		["Shadow Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Arcane Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Frost Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Fire Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Nature Resistance"] = {StatEnable = false, Gains = false, Lost = false},
	},
	["Advanced_Scrolling_Combat_Text_Leveling"] = {
		["Experience Gains"] = false,
		["Level up message"] = false,
		["Skill Gained"] = false,
		["Skill Up"] = false,
		["Resource lost"] = false,
		["Death Quadrants"] = false,
		["Duel Requests"] = false,
		["Sent Mail"] = false,
	},
	["Advanced_Scrolling_Combat_Text_Auras"] = {
		["Fading DeBuffs"] = false,
	},
}
---------------------------
--Create Options panel
---------------------------
function f:InitializeOptions_Class()
local ASCT_Config = CreateFrame("Frame", "ASCT_Config", UIParent, "UIPanelDialogTemplate");
table.insert(UISpecialFrames, "ASCT_Config")
ASCT_Config:SetMovable(true)
ASCT_Config:EnableMouse(true)
ASCT_Config:SetResizable(true)
ASCT_Config:SetClampedToScreen(true)
ASCT_Config:SetPoint("CENTER", UIParent, "CENTER", -950, 200)
ASCT_Config:SetSize(950, 650);
ASCT_Config:SetResizeBounds(950,200, 950,650)
ASCT_Config:RegisterForDrag("LeftButton")
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

ASCT_Config:SetPoint("CENTER", UIParent, "CENTER");
ASCT_Config:Hide()

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
  local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "CharacterFrameTabButtonTemplate");
  tab:SetID(i);
  tab:SetText(select(i, ...))
  tab:SetScript("OnClick", Tab_OnClick);

  tab.content = CreateFrame("Frame", nil, ASCT_Config.scrollFrame);
  tab.content:SetSize(770, 500)
  tab.content:Hide()




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
	ASCT_Config:Show()
end
---------------------------
--Loading message.
---------------------------
print(L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."])
-------------------------
--Text Creating
-------------------------
local function TextCreate(Text)
local text = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
text:SetText(Text)
return Text
end
local function TitleCreate(content, x, y, Text)
	content.title = content:CreateFontString(nil, "OVERLAY");
	content.title:SetFontObject("GameFontHighlight");
	content.title:SetPoint("TOP", content, "TOP", x, y);
	content.title:SetText(Text);
	return Text
end
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
end


-------------------------
---Tabs
-------------------------
local content1, content2, content3, content4, content5, content6, content7, content8, content9 = SetTabs(ASCT_Config, 9, Text1, Text2, Text3, L["Racials"], L["Color Picker"], L["Shared Spell cd's"], L["Leveling"], L["Stats"], L["Auras"]);
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
--Main options panel
---------------------------
local panel_main = CreateFrame("Frame")
panel_main.name = L["Title"]
InterfaceOptions_AddCategory(panel_main)
---------------------------
--Open to options panel through default options panel
---------------------------
local OpenToOptionsPanel = CreateFrame("Button", nil, panel_main, "UIPanelButtonTemplate")
	OpenToOptionsPanel:SetPoint("CENTER", 0, 0)
	OpenToOptionsPanel:SetText(L["Open To Options Panel"])
	OpenToOptionsPanel:SetWidth(150)
	OpenToOptionsPanel:SetScript("OnClick", function()
	HideUIPanel(InterfaceOptionsFrame)
	HideUIPanel(GameMenuFrame)
	ASCT_Config:Show()
end)
---------------------------
--Functions
---------------------------
local function CreateGainsLossToggles(button, settings, configparent)
    local GainToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    GainToggle.Text:SetText(L["Gained"])
    GainToggle:SetChecked(settings.Gains)
    GainToggle:SetEnabled(settings.StatEnable == true)
    GainToggle:SetScript("OnClick", function(self)
      settings.Gains = self:GetChecked()
    end)
    GainToggle:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
    local lossToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    lossToggle.Text:SetText(L["Lost"])
    lossToggle:SetChecked(settings.Lost)
    lossToggle:SetEnabled(settings.StatEnable == true)
    lossToggle:SetScript("OnClick", function(self)
      settings.Lost = self:GetChecked()
    end)
    lossToggle:SetPoint("TOPRIGHT", GainToggle, "BOTTOMRIGHT")
    button:HookScript("OnClick", function(self) -- NEW STUFF START
      GainToggle:SetEnabled(self:GetChecked())
      lossToggle:SetEnabled(self:GetChecked())
	end) -- NEW STUFF
end
---------------------------
--Stat Toggles
---------------------------
local function CreateStatToggle(Stat, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    b.Text:SetText(L[Stat])
    b:SetChecked(settings.StatEnable)
    b:SetScript("OnClick", function(s) settings.StatEnable = s:GetChecked() end)
	return b
end
---------------------------
--Buttons
---------------------------
local function Buttons(value, btntext, x, y, text1, text2)
	local b = CreateFrame("CheckButton", nil, content9, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", x, y)
	b.Text:SetText(btntext)
	b:SetScript("OnEnter",function (self)
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
	GameTooltip:SetText(text1)
  	GameTooltip:AddLine(text2)
  	GameTooltip:Show()
end)
b:SetScript("OnLeave", function ()
	GameTooltip:Hide()
end)
b:SetScript("OnClick", function(self) 
	Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Auras"][value] = b:GetChecked()
	end)
b:SetChecked(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Auras"][value])
return b
end
---------------------------
--Name Icon Toggles
---------------------------
local function CreateNameIconToggles(button, settings, configparent)
    local nameToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    nameToggle.Text:SetText(L["Name"])
    nameToggle:SetChecked(settings.nameEnable)
    nameToggle:SetEnabled(settings.SpellEnable == true)
    nameToggle:SetScript("OnClick", function(self)
      settings.nameEnable = self:GetChecked()
    end)
    nameToggle:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
    local iconToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    iconToggle.Text:SetText(L["Icon"])
    iconToggle:SetChecked(settings.iconEnable)
    iconToggle:SetEnabled(settings.SpellEnable == true)
    iconToggle:SetScript("OnClick", function(self)
      settings.iconEnable = self:GetChecked()
    end)
    iconToggle:SetPoint("TOPRIGHT", nameToggle, "BOTTOMRIGHT")
    button:HookScript("OnClick", function(self) -- NEW STUFF START
      nameToggle:SetEnabled(self:GetChecked())
      iconToggle:SetEnabled(self:GetChecked())
	end) -- NEW STUFF
end
---------------------------
--Spell Toggles
---------------------------
local function CreateSpellToggle(spellName, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    b.Text:SetText(ASCT_GetLocalizedName(spellName))
    b:SetChecked(settings.SpellEnable)
    b:SetScript("OnClick", function(s) settings.SpellEnable = s:GetChecked() end)
    local tex = b:CreateTexture()
    tex:SetPoint("LEFT", b.Text, "RIGHT", 3, 1)
    tex:SetSize(44, 44)
    tex:SetTexture(ASCT_GetLocalizedIcon(spellName))
    return b
end
---------------------------
-- Advanced Scrolling Combat Text Leveling
---------------------------
local col_AD = 4
local x_AD = 0
for v in pairs(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]) do
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
for Stat, settings in ASCT_Options:PairsByKeys(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]) do
    local b = CreateStatToggle(Stat, settings, content8)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_3 % col_AD_3), -20 + (- b:GetHeight()-70) * math.floor(x_AD_3/col_AD_3))
    x_AD_3=x_AD_3+1
    CreateGainsLossToggles(b, settings, content8)
end
---------------------------
--Debuffs fading
---------------------------
local Debuffsfading = Buttons("Fading DeBuffs", L["Fading Debuffs Alert"], 20, -20, L["Debuff has 5 seconds left"], L["Announces a Debuff you applied is about to fade on the Target."])

---------------------------
--Rogue
---------------------------
if Advanced_Scrolling_Combat_Text_DB["Class"]["Rogue"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Assassination"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Subtlety"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

---------------------------
--Priest
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Priest"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Shadow"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Holy_Priest"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Discipline"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end


---------------------------
--Warrior
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Warrior"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Arms"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Fury"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Protection_Warrior"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Druid
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Druid"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Balance"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Feral_Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Druid_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Shaman
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Shaman"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Elemental"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Enhancement"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Shaman_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in pairs(Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
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
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Affliction"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Demonology"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Destruction"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Hunter
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Hunter"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Beast Mastery"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Marksmanship"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Survival"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in pairs(Advanced_Scrolling_Combat_Text_DB["Shared_Hunter_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
	b.Text:SetText(L[v])
	b:SetChecked(Advanced_Scrolling_Combat_Text_DB["Shared_Hunter_spells"][v])
	b:SetScript("OnClick", function(s) Advanced_Scrolling_Combat_Text_DB["Shared_Hunter_spells"][v] = s:GetChecked() end)
	x_4=x_4+1
end
---------------------------
--Paladin
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Paladin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Holy_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Protection_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Retribution"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Mage
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Mage"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Arcane"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Fire"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Frost_Mage"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

end
------------------------
--AutoMatic Race Picker
------------------------
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
end


------------------------
--Undead
------------------------
if Advanced_Scrolling_Combat_Text_DB["Race"]["Undead"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Undead"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
------------------------
--Orc
------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Orc"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Orc"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Troll
-----------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Troll"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Troll"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-----------------------
--Tauren
-----------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Tauren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Tauren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
 --Human
--------------------- 
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Human"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Human"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
-------------------
--Night Elf
-------------------

elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Night Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Night Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
 ---------------------
--Gnome
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Gnome"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Gnome"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end  ---------------------
--Dwarf
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dwarf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Dwarf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Blood Elf
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Blood Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Blood Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
---------------------
--Draenei 
---------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Draenei"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Draenei"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
-- savedVars: table to put new defaults into
-- cleanDefaults: default values table
local function MergeInNewValues(savedVars, cleanDefaults)
  for k, v in pairs(cleanDefaults) do
    if savedVars[k] == nil or type(savedVars[k]) ~= type(v) then -- changed this line so that it replaces the on/off bool with the new table
      if type(v) == "table" then
        savedVars[k] = CopyTable(v)
      else
        savedVars[k] = v
      end
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
Advanced_Scrolling_Combat_Text_DB = Advanced_Scrolling_Combat_Text_DB or {}
MergeInNewValues(Advanced_Scrolling_Combat_Text_DB, defaults)
DeleteOldValues(defaults, Advanced_Scrolling_Combat_Text_DB)
f:InitializeOptions_Class()
---------------------------
--Not used
---------------------------
f.db = Advanced_Scrolling_Combat_Text_DB

end
ASCT_AddLocalizedCallback(function()
	InitializeOptions()
  end)
end