local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)

if isRetailWow then
local L = SARTE_LOCALE_TABLE
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
		Worgen = false,
		Pandaren = false,
		["Void Elf"] = false,
		["Lightforged Draenei"] = false,
		["Dark Iron Dwarf"] = false,
		Mechagnome = false,
		["Kul Tiran"] = false,
		Goblin = false,
		Nightborne = false,
		["Highmountain Tauren"] = false,
		Vulpera = false,
		["Zandalari Troll"] = false,
		["Mag'har Orc"] = false,
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
		Death_Knight = false,
		Demon_Hunter = false,
		Monk = false,
		},
	--Rogue spells
	["Assassination"] = {
		["Vendetta"] = false,
		["Garrote"] = false,
		["Kidney Shot"] = false,
		["Crimson Vial"] = false,
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
		["Shiv"] = false,
		["Evasion"] = false,
		["Feint"] = false,
		["Kick"] = false,
		["Sprint"] = false,
	},
	["Subtlety"] = {
		["Shadow Dance"] = false,
		["Shadow Blades"] = false,
		["Symbols of Death"] = false,
		["Shuriken Tornado"] = false,
		["Secret Technique"] = false,
		["Shadowstep"] = false,
		["Cloak of Shadows"] = false,
		["Vanish"] = false,
		["Stealth"] = false,
		["Blind"] = false,
		["Shroud of Concealment"] = false,
		["Distract"] = false,
	},
--Priest spells
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
		["Shadowfiend"] = false,
		["Void Torrent"] = false,
		["Shadow Covenant"] = false,
		["Fade"] = false,
		["Shadow Word: Death"] = false,
		["Psychic Scream"] = false,
		["Mind Blast"] = false,
    },
    ["Holy_Priest"] = {
		["Symbol of Hope"] = false,
		["Guardian Spirit"] = false,
		["Shining Force"] = false,
		["Divine Star"] = false,
		["Divine Hymn"] = false,
		["Holy Word: Chastise"] = false,
		["Holy Word: Serenity"] = false,
		["Prayer of Mending"] = false,
		["Holy Word: Sanctify"] = false,
		["Holy Fire"] = false,
		["Circle of Healing"] = false,
		["Holy Word: Salvation"] = false,
		["Apotheosis"] = false,
		["Desperate Prayer"] = false,
		["Leap of Faith"] = false,
    },
    ["Discipline"] = {
		["Pain Suppression"] = false,
		["Penance"] = false,
		["Rapture"] = false,
		["Power Word: Barrier"] = false,
		["Power Word: Radiance"] = false,
		["Schism"] = false,
		["Mindbender"] = false,
		["Angelic Feather"] = false,
		["Evangelism"] = false,
		["Halo"] = false,
		["Purify"] = false,
		["Spirit Shell"] = false,
		["Power Infusion"] = false,
		["Mass Dispel"] = false,
	},
	  --Warrior spells
	["Arms"] = {
		["Colossus Smash"] = false,
		["Die by the Sword"] = false,
		["Bladestorm"] = false,
		["Mortal Strike"] = false,
		["Overpower"] = false,
		["Sweeping Strikes"] = false,
		["Defensive Stance"] = false,
		["Warbreaker"] = false,
		["Cleave"] = false,
		["Deadly Calm"] = false,
		["Skullsplitter"] = false,
		["Charge"] = false,
		["Execute"] = false,
		["Shield Slam"] = false,
		["Shattering Throw"] = false,
		["Ignore Pain"] = false,
	},
	["Fury"] = {
		["Piercing Howl"] = false,
		["Impending Victory"] = false,
		["Recklessness"] = false,
		["Bloodthirst"] = false,
		["Enraged Regeneration"] = false,
		["Raging Blow"] = false,
		["Siegebreaker"] = false,
		["Onslaught"] = false,
		["Heroic Throw"] = false,
		["Berserker Rage"] = false,
		["Battle Shout"] = false,
		["Intervene"] = false,
	},
	["Protection_Warrior"] = {
		["Avatar"] = false,
		["Dragon Roar"] = false,
		["Demoralizing Shout"] = false,
		["Shockwave"] = false,
		["Shield Wall"] = false,
		["Last Stand"] = false,
		["Ravager"] = false,
		["Challenging Shout"] = false,
		["Storm Bolt"] = false,
		["Rallying Cry"] = false,
		["Heroic Leap"] = false,
		["Spell Reflection"] = false,
		["Intimidating Shout"] = false,
		["Shield Block"] = false,
		["Taunt"] = false,
		["Pummel"] = false,
	},
		--Druid Spells
	["Balance"] = {
		["Celestial Alignment"] = false,
		["Typhoon"] = false,
		["Solar Beam"] = false,
		["Fury of Elune"] = false,
		["Force of Nature"] = false,
		["Incarnation: Chosen of Elune"] = false,
		["New Moon"] = false,
		["Barkskin"] = false,
		["Dreamwalk"] = false,
	},
	["Feral_Combat"] = {
		["Tiger's Fury"] = false,
		["Maim"] = false,
		["Feral Frenzy"] = false,
		["Brutal Slash"] = false,
		["Incarnation: King of the Jungle"] = false,
		["Remove Corruption"] = false,
		["Survival Instincts"] = false,
		["Dash"] = false,
		["Soothe"] = false,
		["Mangle"] = false,
		["Thrash"] = false,
		["Prowl"] = false,
		["Frenzied Regeneration"] = false,
		["Incapacitating Roar"] = false,
		["Incarnation: Guardian of Ursoc"] = false,
		["Pulverize"] = false,
		["Bristling Fur"] = false,
		["Berserk"] = false,
		["Skull Bash"] = false,
		["Growl"] = false,
		["Stampeding Roar"] = false,
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
		["Innervate"] = false,
		["Rebirth"] = false,
		["Charm Woodland Creature"] = false,
	},
	--Warlock spells
	["Affliction"] = {
		["Create Soulwell"] = false,
		["Unending Resolve"] = false,
		["Soulstone"] = false,
		["Ritual of Summoning"] = false,
		["Ritual of Doom"] = false,
		["Haunt"] = false,
		["Grimoire of Sacrifice"] = false,
		["Dark Soul: Misery"] = false,
		["Phantom Singularity"] = false,
		["Summon Darkglare"] = false,
		["Vile Taint"] = false,
	},
    ["Demonology"] = {
		["Demonic Gateway"] = false,
		["Demonic Circle: Teleport"] = false,
		["Fel Domination"] = false,
		["Demonic Circle"] = false,
		["Summon Demonic Tyrant"] = false,
		["Call Dreadstalkers"] = false,
		["Power Siphon"] = false,
		["Grimoire: Felguard"] = false,
		["Summon Vilefiend"] = false,
		["Demonic Strength"] = false,
		["Bilescourge Bombers"] = false,
		["Soul Strike"] = false,
	},
	["Destruction"] = {
		["Shadowfury"] = false,
		["Conflagrate"] = false,
		["Havoc"] = false,
		["Summon Infernal"] = false,
		["Shadowburn"] = false,
		["Cataclysm"] = false,
		["Dark Soul: Instability"] = false,
		["Soul Fire"] = false,
		["Channel Demonfire"] = false,
	},
	--Shaman spells
	["Elemental"] = {
		["Fire Elemental"] = false,
		["Lava Burst"] = false,
		["Thunderstorm"] = false,
		["Storm Elemental"] = false,
		["Liquid Magma Totem"] = false,
		["Stormkeeper"] = false,
		["Elemental Blast"] = false,
		["Echoing Shock"] = false,
		["Ancestral Guidance"] = false,
		["Icefury"] = false,
		["Static Discharge"] = false,
		["Hex"] = false,
		["Earth Elemental"] = false,
		["Tremor Totem"] = false,
		["Wind Shear"] = false,
		["Flame Shock"] = false,
		["Capacitor Totem"] = false,
		["Astral Shift"] = false,
		["Earthbind Totem"] = false,
		["Astral Recall"] = false,
		},
	["Enhancement"] = {
		["Feral Spirit"] = false,
		["Lava Lash"] = false,
		["Stormstrike"] = false,
		["Crash Lightning"] = false,
		["Spirit Walk"] = false,
		["Feral Lunge"] = false,
		["Earthen Spike"] = false,
		["Sundering"] = false,
		["Fire Nova"] = false,
		["Ice Strike"] = false,
		["Primal Strike"] = false,
	},
	["Shaman_Restoration"] = {
		["Cleanse Spirit"] = false,
		["Spiritwalker's Grace"] = false,
		["Ascendance"] = false,
		["Healing Tide Totem"] = false,
		["Riptide"] = false,
		["Spirit Link Totem"] = false,
		["Healing Rain"] = false,
		["Purify Spirit"] = false,
		["Mana Tide Totem"] = false,
		["Cloudburst Totem"] = false,
		["Earthen Wall Totem"] = false,
		["Earthgrab Totem"] = false,
		["Wellspring"] = false,
		["Downpour"] = false,
		["Surge of Earth"] = false,
		["Healing Stream Totem"] = false,
	},
	--Hunter spells
	["Beast Mastery"] = {
		["Feed Pet"] = false,
		["Tar Trap"] = false,
		["Misdirection"] = false,
		["Tranquilizing Shot"] = false,
		["Kill Shot"] = false,
		["Mend Pet"] = false,
		["Kill Command"] = false,
		["Bestial Wrath"] = false,
		["Intimidation"] = false,
		["Counter Shot"] = false,
		["Barbed Shot"] = false,
		["Aspect of the Wild"] = false,
		["Concussive Shot"] = false,
		["Barrage"] = false,
		["Dire Beast"] = false,
		["Chimaera Shot"] = false,
		["A Murder of Crows"] = false,
		["Stampede"] = false,
		["Bloodshed"] = false,
		["Binding Shot"] = false,
	  },
   ["Marksmanship"] = {
		["Disengage"] = false,
		["Play Dead"] = false,
		["Exhilaration"] = false,
		["Wailing Arrow"] = false,
		["Aimed Shot"] = false,
		["Trueshot"] = false,
		["Rapid Fire"] = false,
		["Bursting Shot"] = false,
		["Explosive Shot"] = false,
		["Double Tap"] = false,
		["Volley"] = false,
    },
   ["Survival"] = {
		["Freezing Trap"] = false,
		["Aspect of the Turtle"] = false,
		["Aspect of the Cheetah"] = false,
		["Aspect of the Chameleon"] = false,
		["Aspect of the Eagle"] = false,
		["Feign Death"] = false,
		["Flare"] = false,
		["Wildfire Bomb"] = false,
		["Coordinated Assault"] = false,
		["Carve"] = false,
		["Muzzle"] = false,
		["Harpoon"] = false,
		["Steel Trap"] = false,
		["Chakrams"] = false,
		["Butchery"] = false,
		["Flanking Strike"] = false,
    },
	--Paladin
	["Holy_Paladin"] = {
		["Consecration"] = false,
		["Lay on Hands"] = false,
		["Contemplation"] = false,
		["Turn Evil"] = false,
		["Holy Shock"] = false,
		["Divine Protection"] = false,
		["Aura Mastery"] = false,
		["Cleanse"] = false,
		["Avenging Crusader"] = false,
		["Beacon of Virtue"] = false,
		["Bestow Faith"] = false,
		["Light's Hammer"] = false,
		["Rule of Law"] = false,
	},
	["Protection_Paladin"] = {
		["Blessing of Protection"] = false,
		["Divine Shield"] = false,
		["Blessing of Sacrifice"] = false,
		["Blessing of Freedom"] = false,
		["Hammer of Justice"] = false,
		["Hammer of Wrath"] = false,
		["Hand of Reckoning"] = false,
		["Divine Steed"] = false,
		["Guardian of Ancient Kings"] = false,
		["Ardent Defender"] = false,
		["Avenger's Shield"] = false,
		["Hammer of the Righteous"] = false,
		["Blessing of Spellwarding"] = false,
		["Blessed Hammer"] = false,
		["Moment of Glory"] = false,
	},
	["Retribution"] = {
		["Avenging Wrath"] = false,
		["Judgment"] = false,
		["Crusader Strike"] = false,
		["Rebuke"] = false,
		["Cleanse Toxins"] = false,
		["Shield of Vengeance"] = false,
		["Wake of Ashes"] = false,
		["Blade of Justice"] = false,
		["Hand of Hindrance"] = false,
		["Crusade"] = false,
		["Final Reckoning"] = false,
		["Eye for an Eye"] = false,
		["Execution Sentence"] = false,
	},
	--Mage Spells
	["Arcane"] = {
		["Time Warp"] = false,
		["Mirror Image"] = false,
		["Illusion"] = false,
		["Remove Curse"] = false,
		["Counterspell"] = false,
		["Blink"] = false,
		["Invisibility"] = false,
		["Arcane Barrage"] = false,
		["Greater Invisibility"] = false,
		["Arcane Power"] = false,
		["Touch of the Magi"] = false,
		["Evocation"] = false,
		["Prismatic Barrier"] = false,
		["Presence of Mind"] = false,
		["Arcane Familiar"] = false,
		["Arcane Orb"] = false,
		["Supernova"] = false,
	},
	["Fire"] = {
		["Fire Blast"] = false,
		["Combustion"] = false,
		["Dragon's Breath"] = false,
		["Alter Time"] = false,
		["Blazing Barrier"] = false,
		["Phoenix Flames"] = false,
		["Meteor"] = false,
		["Living Bomb"] = false,
		["Blast Wave"] = false,
	},
	["Frost_Mage"] = {
		["Ice Block"] = false,
		["Frost Nova"] = false,
		["Ice Barrier"] = false,
		["Cone of Cold"] = false,
		["Summon Water Elemental"] = false,
		["Icy Veins"] = false,
		["Blizzard"] = false,
		["Frozen Orb"] =  false,
		["Comet Storm"] = false,
		["Ice Floes"] = false,
		["Ice Nova"] = false,
		["Ray of Frost"] = false,
		["Ebonbolt"] = false,
	},
	--Demon Hunter Spells
	["Havoc"] = {
		["Metamorphosis"] = false,
		["Blur"] = false,
		["Imprison"] = false,
		["Spectral Sight"] = false,
		["Immolation Aura"] = false,
		["Disrupt"] = false,
		["Torment"] = false,
		["Eye Beam"] = false,
		["Vengeful Retreat"] = false,
		["Darkness"] = false,
		["Blade Dance"] = false,
		["Netherwalk"] = false,
		["Felblade"] = false,
		["Fel Eruption"] = false,
		["Glaive Tempest"] = false,
		["Fel Barrage"] = false,
		["Essence Break"] = false,
	},
	["Vengeance"] = {
		["Consume Magic"] = false,
		["Throw Glaive"] = false,
		["Fel Rush"] = false,
		["Soul Carver"] = false,
		["Chaos Nova"] = false,
		["Fiery Brand"] = false,
		["Sigil of Misery"] = false,
		["Demon Spikes"] = false,
		["Fel Devastation"] = false,
		["Sigil of Silence"] = false,
		["Infernal Strike"] = false,
		["Sigil of Flame"] = false,
		["Fracture"] = false,
		["Sigil of Chains"] = false,
		["Soul Barrier"] = false,
		["Bulk Extraction"] = false,
	},
	--Death_Knight Spells
	["Blood"] = {
		["Sacrificial Pact"] = false,
		["Corpse Exploder"] = false,
		["Dark Command"] = false,
		["Dancing Rune Weapon"] = false,
		["Asphyxiate"] = false,
		["Blood Boil"] = false,
		["Gorefiend's Grasp"] = false,
		["Rune Tap"] = false,
		["Vampiric Blood"] = false,
		["Blooddrinker"] = false,
		["Blood Tap"] = false,
		["Tombstone"] = false,
		["Death Pact"] = false,
		["Bonestorm"] = false,
		["Consumption"] = false,
		["Mark of Blood"] = false,
	},
	["Frost_DK"] = {
		["Icebound Fortitude"] = false,
		["Mind Freeze"] = false,
		["Lichborne"] = false,
		["Wraith Walk"] = false,
		["Remorseless Winter"] = false,
		["Frostwyrm's Fury"] = false,
		["Pillar of Frost"] = false,
		["Empower Rune Weapon"] = false,
		["Glacial Advance"] = false,
		["Breath of Sindragosa"] = false,
		["Blinding Sleet"] = false,
		["Horn of Winter"] = false,
		["Hypothermic Presence"] = false,
	},
	["Unholy"] = {
		["Death and Decay"] = false,
		["Anti-Magic Zone"] = false,
		["Death Grip"] = false,
		["Anti-Magic Shell"] = false,
		["Raise Ally"] = false,
		["Death's Advance"] = false,
		["Death Gate"] = false,
		["Raise Dead"] = false,
		["Dark Transformation"] = false,
		["Army of the Dead"] = false,
		["Apocalypse"] = false,
		["Summon Gargoyle"] = false,
		["Soul Reaper"] = false,
		["Unholy Blight"] = false,
		["Defile"] = false,
		["Unholy Assault"] = false,
	},
	--Monk Spells
	["Brewmaster"] = {
		["Paralysis"] = false,
		["Roll"] = false,
		["Leg Sweep"] = false,
		["Blackout Kick"] = false,
		["Touch of Death"] = false,
		["Zen Meditation"] = false,
		["Purifying Brew"] = false,
		["Invoke Niuzao, the Black Ox"] = false,
		["Keg Smash"] = false,
		["Celestial Brew"] = false,
		["Breath of Fire"] = false,
		["Clash"] = false,
		["Summon Black Ox Statue"] = false,
		["Black Ox Brew"] = false,
		["Exploding Keg"] = false,
	},
	["Mistweaver"] = {
		["Transcendence"] = false,
		["Transcendence: Transfer"] = false,
		["Expel Harm"] = false,
		["Detox"] = false,
		["Healing Elixir"] = false,
		["Life Cocoon"] = false,
		["Rising Sun Kick"] = false,
		["Essence Font"] = false,
		["Thunder Focus Tea"] = false,
		["Revival"] = false,
		["Summon Jade Serpent Statue"] = false,
		["Invoke Chi-Ji, the Red Crane"] = false,
		["Mana Tea"] = false,
		["Refreshing Jade Wind"] = false,
		["Song of Chi-Ji"] = false,
	},
	["Windwalker"] = {
		["Fortifying Brew"] = false,
		["Zen Pilgrimage"] = false,
		["Provoke"] = false,
		["Touch of Fatality"] = false,
		["Rushing Jade Wind"] = false,
		["Diffuse Magic"] = false,
		["Spear Hand Strike"] = false,
		["Storm, Earth, and Fire"] = false,
		["Invoke Xuen, the White Tiger"] = false,
		["Fists of Fury"] = false,
		["Touch of Karma"] = false,
		["Flying Serpent Kick"] = false,
		["Whirling Dragon Punch"] = false,
		["Fist of the White Tiger"] = false,
		["Serenity"] = false,
		["Energizing Elixir"] = false,
	},
	--Racials
	["Blood Elf"] = {
		["Arcane Torrent"] = false,
	},
	["Orc"] = {
		["Blood Fury"] = false,
	},
	["Undead"] = {
		["Cannibalize"] = false,
		["Will of the Forsaken"] = false,
	},
	["Troll"] = {
		["Berserking"] = false,
	},
	["Tauren"] = {
		["War Stomp"] = false,
	},
	["Draenei"] = {
		["Gift of the Naaru"] = false,
	},
	["Gnome"] = {
		["Escape Artist"] = false,
	},
	["Human"] = {
		["Will to Survive"] = false,
	},
	["Night Elf"] = {
		["Shadowmeld"] = false,
	},
	["Dwarf"] = {
		["Stoneform"] = false,
	},
	["Worgen"] = {
		["Darkflight"] = false,
	},
	["Pandaren"] = {
		["Quaking Palm"] = false,
	},
	["Void Elf"] = {
		["Spatial Rift"] = false,
	},
	["Lightforged Draenei"] = {
		["Forge of Light"] = false,
		["Light's Judgment"] = false,
	},
	["Dark Iron Dwarf"] = {
		["Fireblood"] = false,
		["Mole Machine"] = false,
	},
	["Mechagnome"] = {
		["Hyper Organic Light Originator"] = false,
	},
	["Kul Tiran"] = {
		["Haymaker"] = false,
	},
	["Goblin"] = {
		["Rocket Jump"] = false,
		["Rocket Barrage"] = false,
		["Pack Hobgoblin"] = false,
	},
	["Nightborne"] = {
		["Cantrips"] = false,
		["Arcane Pulse"] = false,
	},
	["Highmountain Tauren"] = {
		["Bull Rush"] = false,
	},
	["Vulpera"] = {
		["Bag of Tricks"] = false,
		["Make Camp"] = false,
		["Rummage Your Bag"] = false,
		["Return to Camp"] = false,
	},
	["Zandalari Troll"] = {
		["Embrace of the Loa"] = false,
		["Pterrordax Swoop"] = false,
		["Regeneratin'"] = false,
	},
	["Mag'har Orc"] = {
		["Ancestral Call"] = false,
	},
}

function f:InitializeOptions_Class()
	self.panel_main = CreateFrame("Frame")
	self.panel_main.name =  L["Title_Class"]
	InterfaceOptions_AddCategory(self.panel_main)
---------------------------
--MiniMap Icon
---------------------------
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



local function SubPanelMaker(Name)
local Frames = CreateFrame("Frame")
Frames.name = Name
Frames.parent = self.panel_main.name
InterfaceOptions_AddCategory(Frames)
-- Create the scrolling parent frame and size it to fit inside the texture
local scrollFrame = CreateFrame("ScrollFrame", nil, Frames, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", 3, -4)
scrollFrame:SetPoint("BOTTOMRIGHT", -27, 4)

-- Create the scrolling child frame, set its width to fit, and give it an arbitrary minimum height (such as 1)
local scrollChild = CreateFrame("Frame")
scrollFrame:SetScrollChild(scrollChild)
scrollChild:SetWidth(InterfaceOptionsFramePanelContainer:GetWidth()-18)
scrollChild:SetHeight(1) 

-- Add widgets to the scrolling child frame as desired
local footer = scrollChild:CreateFontString("ARTWORK", nil, "GameFontNormal")
footer:SetPoint("TOP", 0, -5000)
footer:SetText("")
return scrollChild
end
local Class = select(3, UnitClass("player"))
if Class == 4 then
	SARTESPELLDB["Class"]["Rogue"] = true
elseif Class == 5 then
	SARTESPELLDB["Class"]["Priest"] = true
elseif Class == 1 then
	SARTESPELLDB["Class"]["Warrior"] = true
elseif Class == 11 then
	SARTESPELLDB["Class"]["Druid"] = true
elseif Class == 9 then
	SARTESPELLDB["Class"]["Warlock"] = true
elseif Class == 7 then
	SARTESPELLDB["Class"]["Shaman"] = true
elseif Class == 3 then
	SARTESPELLDB["Class"]["Hunter"] = true
elseif Class == 2 then
	SARTESPELLDB["Class"]["Paladin"] = true
elseif Class == 8 then
	SARTESPELLDB["Class"]["Mage"] = true
elseif Class == 6 then
	SARTESPELLDB["Class"]["Death_Knight"] = true
elseif Class == 10 then
	SARTESPELLDB["Class"]["Monk"] = true
elseif Class == 12 then
	SARTESPELLDB["Class"]["Demon_Hunter"] = true
end



--------------------------
--Rogue
--------------------------
if SARTESPELLDB["Class"]["Rogue"] == true then
	local Panel_1 = SubPanelMaker(L["Assassination"])
	local Panel_2 = SubPanelMaker(L["Outlaw"])
	local Panel_3 = SubPanelMaker(L["Subtlety"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Assassination"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
		b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Assassination"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Assassination"][v] = s:GetChecked() end)
        x_1=x_1+1
	end

	local col_2 = 4
    local x_2 = 0
    for v in pairs(SARTESPELLDB["Outlaw"]) do
        local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Outlaw"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Outlaw"][v] = s:GetChecked() end)
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
--------------------------
--Priest
--------------------------
elseif SARTESPELLDB["Class"]["Priest"] == true then
	local Panel_1 = SubPanelMaker(L["Shadow"])
	local Panel_2 = SubPanelMaker(L["Holy"])
	local Panel_3 = SubPanelMaker(L["Discipline"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Shadow"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Warrior
--------------------------
elseif SARTESPELLDB["Class"]["Warrior"] == true then
	local Panel_1 = SubPanelMaker(L["Arms"])
	local Panel_2 = SubPanelMaker(L["Fury"])
	local Panel_3 = SubPanelMaker(L["Protection"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Arms"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Druid
--------------------------
elseif SARTESPELLDB["Class"]["Druid"] == true then
	local Panel_1 = SubPanelMaker(L["Balance"])
	local Panel_2 = SubPanelMaker(L["Feral_Combat"])
	local Panel_3 = SubPanelMaker(L["Restoration"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Balance"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Warlock
--------------------------
elseif SARTESPELLDB["Class"]["Warlock"] == true then
	local Panel_1 = SubPanelMaker(L["Affliction"])
	local Panel_2 = SubPanelMaker(L["Demonology"])
	local Panel_3 = SubPanelMaker(L["Destruction"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Affliction"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Shaman
--------------------------
elseif SARTESPELLDB["Class"]["Shaman"] == true then
	local Panel_1 = SubPanelMaker(L["Elemental"])
	local Panel_2 = SubPanelMaker(L["Enhancement"])
	local Panel_3 = SubPanelMaker(L["Restoration"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Elemental"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Hunter
--------------------------
elseif SARTESPELLDB["Class"]["Hunter"] == true then
	local Panel_1 = SubPanelMaker(L["Beast Mastery"])
	local Panel_2 = SubPanelMaker(L["Marksmanship"])
	local Panel_3 = SubPanelMaker(L["Survival"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Beast Mastery"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Paladin
--------------------------
elseif SARTESPELLDB["Class"]["Paladin"] == true then
	local Panel_1 = SubPanelMaker(L["Holy"])
	local Panel_2 = SubPanelMaker(L["Protection"])
	local Panel_3 = SubPanelMaker(L["Retribution"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Holy_Paladin"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Mage
--------------------------
elseif SARTESPELLDB["Class"]["Mage"] == true then
	local Panel_1 = SubPanelMaker(L["Arcane"])
	local Panel_2 = SubPanelMaker(L["Fire"])
	local Panel_3 = SubPanelMaker(L["Frost"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Arcane"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Death Knight
--------------------------
elseif SARTESPELLDB["Class"]["Death_Knight"] == true then
	local Panel_1 = SubPanelMaker(L["Blood"])
	local Panel_2 = SubPanelMaker(L["Frost"])
	local Panel_3 = SubPanelMaker(L["Unholy"])


	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Blood"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
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
--------------------------
--Monk
--------------------------
elseif SARTESPELLDB["Class"]["Monk"] == true then
	local Panel_1 = SubPanelMaker(L["Brewmaster"])
	local Panel_2 = SubPanelMaker(L["Frost"])
	local Panel_3 = SubPanelMaker(L["Unholy"])

	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Brewmaster"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
		b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Brewmaster"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Brewmaster"][v] = s:GetChecked() end)
        x_1=x_1+1
	end

	local col_2 = 4
    local x_2 = 0
    for v in pairs(SARTESPELLDB["Mistweaver"]) do
        local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Mistweaver"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Mistweaver"][v] = s:GetChecked() end)
        x_2=x_2+1
	end

	local col_3 = 4
    local x_3 = 0
    for v in pairs(SARTESPELLDB["Windwalker"]) do
        local b = CreateFrame("CheckButton", nil, Panel_3, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_3 % col_3), -20 + (- b:GetHeight()-5) * math.floor(x_3/col_3))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Windwalker"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Windwalker"][v] = s:GetChecked() end)
        x_3=x_3+1
	end
--------------------------
--Demon Hunter
--------------------------
elseif SARTESPELLDB["Class"]["Demon_Hunter"] == true then
	local Panel_1 = SubPanelMaker(L["Havoc"])
	local Panel_2 = SubPanelMaker(L["Vengeance"])

	local col_1 = 4
    local x_1 = 0
    for v in pairs(SARTESPELLDB["Havoc"]) do
        local b = CreateFrame("CheckButton", nil, Panel_1, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_1 % col_1), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_1))
		b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Havoc"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Havoc"][v] = s:GetChecked() end)
        x_1=x_1+1
	end

	local col_2 = 4
    local x_2 = 0
    for v in pairs(SARTESPELLDB["Vengeance"]) do
        local b = CreateFrame("CheckButton", nil, Panel_2, "InterfaceOptionsCheckButtonTemplate")
        b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+120) * (x_2 % col_2), -20 + (- b:GetHeight()-5) * math.floor(x_2/col_2))
        b.Text:SetText(SDT_GetLocalizedName(v))
        b:SetChecked(SARTESPELLDB["Vengeance"][v])
        b:SetScript("OnClick", function(s) SARTESPELLDB["Vengeance"][v] = s:GetChecked() end)
        x_2=x_2+1
	end

end

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
elseif Race == 10 then
	SARTESPELLDB["Race"]["Blood Elf"] = true
elseif Race == 11 then
	SARTESPELLDB["Race"]["Draenei"] = true
elseif Race == 22 then
	SARTESPELLDB["Race"]["Worgen"] = true
elseif Race == 25 or 26 then
	SARTESPELLDB["Race"]["Pandaren"] = true
elseif Race == 29 then
	SARTESPELLDB["Race"]["Void Elf"] = true
elseif Race == 30 then
	SARTESPELLDB["Race"]["Lightforged Draenei"] = true
elseif Race == 34 then
	SARTESPELLDB["Race"]["Dark Iron Dwarf"] = true
elseif Race == 37 then
	SARTESPELLDB["Race"]["Mechagnome"] = true
elseif Race == 37 then
	SARTESPELLDB["Race"]["Kul Tiran"] = true
elseif Race == 9 then
	SARTESPELLDB["Race"]["Goblin"] = true
elseif Race == 27 then
	SARTESPELLDB["Race"]["Nightborne"] = true
elseif Race == 28 then
	SARTESPELLDB["Race"]["Highmountain Tauren"] = true
elseif Race == 35 then
	SARTESPELLDB["Race"]["Vulpera"] = true
elseif Race == 31 then
	SARTESPELLDB["Race"]["Zandalari Troll"] = true
elseif Race == 36 then
	SARTESPELLDB["Race"]["Mag'har Orc"] = true
end
local Racial_Panel = SubPanelMaker(L["Racials"])
--------------------------
--Undead
--------------------------
if SARTESPELLDB["Race"]["Undead"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
		for v in pairs(SARTESPELLDB["Undead"]) do
	  local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	  b:SetPoint("TOPLEFT", 20, modifierfirst)
	  modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	  b.Text:SetText(SDT_GetLocalizedName(v))
	  b:SetChecked(SARTESPELLDB["Undead"][v])
	  b:SetScript("OnClick", function(s) SARTESPELLDB["Undead"][v] = s:GetChecked() end)
	end
--------------------------
--Orc
--------------------------
elseif SARTESPELLDB["Class"]["Orc"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Orc"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Orc"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Orc"][v] = s:GetChecked() end)
	end
--------------------------
--Dwarf
--------------------------
elseif SARTESPELLDB["Class"]["Dwarf"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Dwarf"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Dwarf"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Dwarf"][v] = s:GetChecked() end)
	end
--------------------------
--Gnome
--------------------------
elseif SARTESPELLDB["Class"]["Gnome"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Gnome"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Gnome"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Gnome"][v] = s:GetChecked() end)
	end
--------------------------
--Night Elf
--------------------------
elseif SARTESPELLDB["Class"]["Night Elf"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Night Elf"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Night Elf"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Night Elf"][v] = s:GetChecked() end)
	end
--------------------------
--Troll
--------------------------
elseif SARTESPELLDB["Class"]["Troll"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Troll"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Troll"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Troll"][v] = s:GetChecked() end)
	end
--------------------------
--Tauren
--------------------------
elseif SARTESPELLDB["Class"]["Tauren"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Tauren"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Tauren"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Tauren"][v] = s:GetChecked() end)
	end
--------------------------
--Human
--------------------------
elseif SARTESPELLDB["Class"]["Human"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Human"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Human"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Human"][v] = s:GetChecked() end)
	end
--------------------------
--Blood Elf
--------------------------
elseif SARTESPELLDB["Class"]["Blood Elf"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Blood Elf"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Blood Elf"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Blood Elf"][v] = s:GetChecked() end)
	end
--------------------------
--Draenei
--------------------------
elseif SARTESPELLDB["Class"]["Draenei"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Draenei"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Draenei"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Draenei"][v] = s:GetChecked() end)
	end
--------------------------
--Worgen
--------------------------
elseif SARTESPELLDB["Class"]["Worgen"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Worgen"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Worgen"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Worgen"][v] = s:GetChecked() end)
	end
--------------------------
--Pandaren
--------------------------
elseif SARTESPELLDB["Class"]["Pandaren"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Pandaren"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Pandaren"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Pandaren"][v] = s:GetChecked() end)
	end
--------------------------
--Void Elf
--------------------------
elseif SARTESPELLDB["Class"]["Void Elf"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Void Elf"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Void Elf"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Void Elf"][v] = s:GetChecked() end)
	end
--------------------------
--Lightforged Draenei
--------------------------
elseif SARTESPELLDB["Class"]["Lightforged Draenei"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Lightforged Draenei"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Lightforged Draenei"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Lightforged Draenei"][v] = s:GetChecked() end)
	end
--------------------------
--Dark Iron Dwarf
--------------------------
elseif SARTESPELLDB["Class"]["Dark Iron Dwarf"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Dark Iron Dwarf"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Dark Iron Dwarf"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Dark Iron Dwarf"][v] = s:GetChecked() end)
	end
--------------------------
--Mechagnome
--------------------------
elseif SARTESPELLDB["Class"]["Mechagnome"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Mechagnome"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Mechagnome"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Mechagnome"][v] = s:GetChecked() end)
	end
--------------------------
--Kul Tiran
--------------------------
elseif SARTESPELLDB["Class"]["Kul Tiran"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Kul Tiran"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Kul Tiran"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Kul Tiran"][v] = s:GetChecked() end)
	end
--------------------------
--Goblin
--------------------------
elseif SARTESPELLDB["Class"]["Goblin"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Goblin"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Goblin"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Goblin"][v] = s:GetChecked() end)
	end
--------------------------
--Nightborne
--------------------------
elseif SARTESPELLDB["Class"]["Nightborne"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Nightborne"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Nightborne"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Nightborne"][v] = s:GetChecked() end)
	end
--------------------------
--Highmountain Tauren
--------------------------
elseif SARTESPELLDB["Class"]["Highmountain Tauren"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Highmountain Tauren"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Highmountain Tauren"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Highmountain Tauren"][v] = s:GetChecked() end)
	end
--------------------------
--Vulpera
--------------------------
elseif SARTESPELLDB["Class"]["Vulpera"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Vulpera"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Vulpera"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Vulpera"][v] = s:GetChecked() end)
	end
--------------------------
--Zandalari Troll
--------------------------
elseif SARTESPELLDB["Class"]["Zandalari Troll"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Zandalari Troll"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Zandalari Troll"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Zandalari Troll"][v] = s:GetChecked() end)
	end
--------------------------
--Mag'har Orc
--------------------------
elseif SARTESPELLDB["Class"]["Mag'har Orc"] == true then
	local modifierfirst = -20 -- variable to keep track of what to subtract
	for v in pairs(SARTESPELLDB["Mag'har Orc"]) do
	local b = CreateFrame("CheckButton", nil, Racial_Panel, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 20, modifierfirst)
	modifierfirst = modifierfirst - 40 -- update the variable to remove 40 each time around
	b.Text:SetText(SDT_GetLocalizedName(v))
	b:SetChecked(SARTESPELLDB["Mag'har Orc"][v])
	b:SetScript("OnClick", function(s) SARTESPELLDB["Mag'har Orc"][v] = s:GetChecked() end)
	end
end





end




SLASH_SARTE1 = "/SARTE"

SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
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
f.db = SARTESPELLDB

end

SDT_AddLocalizedCallback(function()
  InitializeOptions()
end)
end