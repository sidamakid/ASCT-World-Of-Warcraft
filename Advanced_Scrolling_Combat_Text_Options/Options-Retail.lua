local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)

if isRetailWow then
local L = ASDC_LOCALE_TABLE
local function InitializeOptions()

local f = CreateFrame("Frame")


local defaults = {
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
		["Vendetta"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Garrote"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Kidney Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Crimson Vial"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Outlaw"] = {
		["Adrenaline Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blade Flurry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Roll the Bones"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Between the Eyes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Gouge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Grappling Hook"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ghostly Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blade Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Killing Spree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shiv"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Evasion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sprint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Subtlety"] = {
		["Shadow Dance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadow Blades"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Symbols of Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shuriken Tornado"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Secret Technique"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowstep"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cloak of Shadows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Vanish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stealth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shroud of Concealment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Distract"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tricks of the Trade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
--Priest spells
	["Shadow"] = {
		["Vampiric Embrace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dispersion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Void Eruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Void Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Psychic Horror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Purify Disease"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mind Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Surrender to Madness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadow Crash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Damnation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Void Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadow Covenant"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadow Word: Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Psychic Scream"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mind Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Holy_Priest"] = {
		["Symbol of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Guardian Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shining Force"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Star"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Hymn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Word: Chastise"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Word: Serenity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Prayer of Mending"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Word: Sanctify"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Circle of Healing"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Word: Salvation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Apotheosis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Desperate Prayer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Leap of Faith"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Discipline"] = {
		["Pain Suppression"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Penance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rapture"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Word: Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Word: Radiance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Schism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mindbender"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Angelic Feather"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Evangelism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Halo"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Purify"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spirit Shell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Infusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mass Dispel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	  --Warrior spells
	["Arms"] = {
		["Colossus Smash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Die by the Sword"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bladestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mortal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Overpower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sweeping Strikes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Defensive Stance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Warbreaker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cleave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Deadly Calm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Skullsplitter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Execute"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Slam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shattering Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ignore Pain"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Fury"] = {
		["Piercing Howl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Impending Victory"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Recklessness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bloodthirst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Enraged Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Raging Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Siegebreaker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Onslaught"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Heroic Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Berserker Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Battle Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intervene"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Protection_Warrior"] = {
		["Avatar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dragon Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Demoralizing Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shockwave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Wall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Last Stand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ravager"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Challenging Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Storm Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rallying Cry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Heroic Leap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spell Reflection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intimidating Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Taunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pummel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
		--Druid Spells
	["Balance"] = {
		["Celestial Alignment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Typhoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Solar Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fury of Elune"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Force of Nature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Incarnation: Chosen of Elune"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["New Moon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Barkskin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dreamwalk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Feral_Combat"] = {
		["Tiger's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Maim"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feral Frenzy"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Brutal Slash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Incarnation: King of the Jungle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Remove Corruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Survival Instincts"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soothe"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mangle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Thrash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Prowl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frenzied Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Incapacitating Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Incarnation: Guardian of Ursoc"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pulverize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bristling Fur"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Berserk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Skull Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Growl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stampeding Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Druid_Restoration"] = {
		["Wild Growth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tranquility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Swiftmend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Nature's Cure"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ironbark"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ursol's Vortex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flourish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Incarnation: Tree of Life"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Overgrowth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Innervate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Charm Woodland Creature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Warlock spells
	["Affliction"] = {
		["Create Soulwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Unending Resolve"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soulstone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ritual of Summoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ritual of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Haunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Grimoire of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dark Soul: Misery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Phantom Singularity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Darkglare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Vile Taint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
    ["Demonology"] = {
		["Demonic Gateway"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Demonic Circle: Teleport"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Domination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Demonic Circle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Demonic Tyrant"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Call Dreadstalkers"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Power Siphon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Grimoire: Felguard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Vilefiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Demonic Strength"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bilescourge Bombers"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soul Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Destruction"] = {
		["Shadowfury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Conflagrate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Havoc"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Infernal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shadowburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cataclysm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dark Soul: Instability"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soul Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Channel Demonfire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Shaman spells
	["Elemental"] = {
		["Fire Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Lava Burst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Thunderstorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Storm Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Liquid Magma Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stormkeeper"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Elemental Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Echoing Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ancestral Guidance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Icefury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Static Discharge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earth Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tremor Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wind Shear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flame Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Capacitor Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Astral Shift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earthbind Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Astral Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		},
	["Enhancement"] = {
		["Feral Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Lava Lash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stormstrike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Crash Lightning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spirit Walk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feral Lunge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earthen Spike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sundering"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fire Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ice Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Primal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Shaman_Restoration"] = {
		["Cleanse Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spiritwalker's Grace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ascendance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Healing Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Riptide"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spirit Link Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Healing Rain"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Purify Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mana Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cloudburst Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earthen Wall Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Earthgrab Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wellspring"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Downpour"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Surge of Earth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Healing Stream Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Shared_Shaman_spells"] = {
		["Lust"] = false,
	},
	--Hunter spells
	["Beast Mastery"] = {
		["Feed Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tar Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Misdirection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tranquilizing Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Kill Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mend Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Kill Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bestial Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Intimidation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Counter Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Barbed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aspect of the Wild"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Concussive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dire Beast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Chimaera Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["A Murder of Crows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Stampede"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bloodshed"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Binding Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	  },
   ["Marksmanship"] = {
		["Disengage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Play Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Exhilaration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wailing Arrow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aimed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Trueshot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rapid Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bursting Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Explosive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Double Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Volley"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
   ["Survival"] = {
		["Freezing Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aspect of the Turtle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aspect of the Cheetah"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aspect of the Chameleon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aspect of the Eagle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Feign Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wildfire Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Coordinated Assault"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Carve"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Muzzle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Harpoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Steel Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Chakrams"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Butchery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flanking Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
	--Paladin
	["Holy_Paladin"] = {
		["Consecration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Lay on Hands"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Contemplation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Turn Evil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Holy Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Aura Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cleanse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Avenging Crusader"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Beacon of Virtue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bestow Faith"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Light's Hammer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rule of Law"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Protection_Paladin"] = {
		["Blessing of Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Freedom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hammer of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hammer of Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hand of Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Divine Steed"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Guardian of Ancient Kings"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ardent Defender"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Avenger's Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hammer of the Righteous"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessing of Spellwarding"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blessed Hammer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Moment of Glory"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Righteous Defense"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Retribution"] = {
		["Avenging Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Judgment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Crusader Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rebuke"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cleanse Toxins"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Shield of Vengeance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wake of Ashes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blade of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hand of Hindrance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Crusade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Final Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Eye for an Eye"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Execution Sentence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Mage Spells
	["Arcane"] = {
		["Time Warp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mirror Image"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Illusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Remove Curse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Counterspell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blink"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Greater Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Power"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Touch of the Magi"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Evocation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Prismatic Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Presence of Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Familiar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Orb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Supernova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
		["Portal: Oribos"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Dalaran - Northrend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ancient Portal: Dalaran"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Warspear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Vale of Eternal Blossoms"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Portal: Tol Barad"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Fire"] = {
		["Fire Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Combustion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dragon's Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Alter Time"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blazing Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Phoenix Flames"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Meteor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Living Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blast Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Frost_Mage"] = {
		["Ice Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frost Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ice Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Cone of Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Water Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Icy Veins"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blizzard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frozen Orb"] =  {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Comet Storm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ice Floes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ice Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ray of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Ebonbolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Demon Hunter Spells
	["Havoc"] = {
		["Metamorphosis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blur"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Imprison"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spectral Sight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Immolation Aura"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Disrupt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Torment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Eye Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Vengeful Retreat"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Darkness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blade Dance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Netherwalk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Felblade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Eruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Glaive Tempest"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Essence Break"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Vengeance"] = {
		["Consume Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Throw Glaive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soul Carver"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Chaos Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fiery Brand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sigil of Misery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Demon Spikes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fel Devastation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sigil of Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Infernal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sigil of Flame"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fracture"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Sigil of Chains"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soul Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bulk Extraction"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Death_Knight Spells
	["Blood"] = {
		["Sacrificial Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Corpse Exploder"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dark Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dancing Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Asphyxiate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blood Boil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Gorefiend's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rune Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Vampiric Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blooddrinker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blood Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Tombstone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Death Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Bonestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Consumption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mark of Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Frost_DK"] = {
		["Icebound Fortitude"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mind Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Lichborne"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Wraith Walk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Remorseless Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Frostwyrm's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pillar of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Empower Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Glacial Advance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Breath of Sindragosa"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blinding Sleet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Horn of Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Hypothermic Presence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Unholy"] = {
		["Death and Decay"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Anti-Magic Zone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Death Grip"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Anti-Magic Shell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Raise Ally"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Death's Advance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Death Gate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Raise Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Dark Transformation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Army of the Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Apocalypse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Gargoyle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Soul Reaper"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Unholy Blight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Defile"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Unholy Assault"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Monk Spells
	["Brewmaster"] = {
		["Paralysis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Roll"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Leg Sweep"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Blackout Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Touch of Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Zen Meditation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Purifying Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Invoke Niuzao, the Black Ox"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Keg Smash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Celestial Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Breath of Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Clash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Black Ox Statue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Black Ox Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Exploding Keg"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Mistweaver"] = {
		["Transcendence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Transcendence: Transfer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Expel Harm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Detox"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Healing Elixir"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Life Cocoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rising Sun Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Essence Font"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Thunder Focus Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Revival"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Summon Jade Serpent Statue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Invoke Chi-Ji, the Red Crane"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mana Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Refreshing Jade Wind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Song of Chi-Ji"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Windwalker"] = {
		["Fortifying Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Zen Pilgrimage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Provoke"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Touch of Fatality"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rushing Jade Wind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Diffuse Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Spear Hand Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Storm, Earth, and Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Invoke Xuen, the White Tiger"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fists of Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Touch of Karma"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Flying Serpent Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Whirling Dragon Punch"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Fist of the White Tiger"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Serenity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Energizing Elixir"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	--Racials
	["Blood Elf"] = {
		["Arcane Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Orc"] = {
		["Blood Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Undead"] = {
		["Cannibalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Will of the Forsaken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Troll"] = {
		["Berserking"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Tauren"] = {
		["War Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Draenei"] = {
		["Gift of the Naaru"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Gnome"] = {
		["Escape Artist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Human"] = {
		["Will to Survive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Night Elf"] = {
		["Shadowmeld"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Dwarf"] = {
		["Stoneform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Worgen"] = {
		["Darkflight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Pandaren"] = {
		["Quaking Palm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Void Elf"] = {
		["Spatial Rift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Lightforged Draenei"] = {
		["Forge of Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Light's Judgment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Dark Iron Dwarf"] = {
		["Fireblood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Mole Machine"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Mechagnome"] = {
		["Hyper Organic Light Originator"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Kul Tiran"] = {
		["Haymaker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Goblin"] = {
		["Rocket Jump"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rocket Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pack Hobgoblin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Nightborne"] = {
		["Cantrips"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Arcane Pulse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Highmountain Tauren"] = {
		["Bull Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Vulpera"] = {
		["Bag of Tricks"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Make Camp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Rummage Your Bag"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Return to Camp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Zandalari Troll"] = {
		["Embrace of the Loa"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Pterrordax Swoop"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
		["Regeneratin'"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Mag'har Orc"] = {
		["Ancestral Call"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
	},
	["Advanced_Scrolling_Combat_Text_Stats"] = {
		["Armor"] = {StatEnable = false, Gains = false, Lost = false,},
		["Agility"] = {StatEnable = false, Gains = false, Lost = false,},
		["Attack Power"] = {StatEnable = false, Gains = false, Lost = false,},
		["Strength"] = {StatEnable = false, Gains = false, Lost = false,},
		["Intellect"] = {StatEnable = false, Gains = false, Lost = false,},
		["Stamina"] = {StatEnable = false, Gains = false, Lost = false,},
	},
	["Advanced_Scrolling_Combat_Text_Leveling"] = {
		["Experience Gains"] = false,
		["Level up message"] = false,
		["Skill Up"] = false,
		["Resource lost"] = false,
		["Achievement Gains"] = false,
	},
	["Advanced_Scrolling_Combat_Text_Auras"] = {
		["Fading DeBuffs"] = false,
		["Fading Buffs"] = false,
	}
}

function f:InitializeOptions_Class()
local ASCT_Config = CreateFrame("Frame", "ASCT_Config", UIParent, "UIPanelDialogTemplate");
table.insert(UISpecialFrames, "ASCT_Config")
ASCT_Config:SetMovable(true)
ASCT_Config:EnableMouse(true)
ASCT_Config:SetResizable(true)
ASCT_Config:SetSize(1000, 650);
ASCT_Config:SetMinResize(1000,200)
ASCT_Config:SetMaxResize(1000,650)
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
--Slash Commands
---------------------------
SLASH_SARTE1 = "/SARTE"
SlashCmdList.SARTE = function(msg, editBox)
	-- https://github.com/Stanzilla/WoWUIBugs/issues/89
	print(L["Slash Command Message"])
end
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
elseif Class == 6 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Death_Knight"] = true
	Text1 = TextCreate(L["Blood"])
	Text2 = TextCreate(L["Frost"])
	Text3 = TextCreate(L["Unholy"])
elseif Class == 10 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Monk"] = true
	Text1 = TextCreate(L["Brewmaster"])
	Text2 = TextCreate(L["Frost"])
	Text3 = TextCreate(L["Windwalker"])
elseif Class == 12 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Demon_Hunter"] = true
	Text1 = TextCreate(L["Havoc"])
	Text2 = TextCreate(L["Vengeance"])
	Text3 = TextCreate(L["Nothing"])
end
local Text4 = TextCreate(L["Racials"])
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
--Create Stat Gains and Losses
---------------------------
local function CreateGainsLossToggles(button, settings, configparent)
    local GainToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    GainToggle.Text:SetText("Gained")
    GainToggle:SetChecked(settings.Gains)
    GainToggle:SetEnabled(settings.StatEnable == true)
    GainToggle:SetScript("OnClick", function(self)
      settings.Gains = self:GetChecked()
    end)
    GainToggle:SetPoint("TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
    local lossToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    lossToggle.Text:SetText("Lost")
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
--Create Stat Toggles
---------------------------
local function CreateStatToggle(Stat, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    b.Text:SetText(L[Stat])
    b:SetChecked(settings.StatEnable)
    b:SetScript("OnClick", function(s) settings.StatEnable = s:GetChecked() end)
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
for Stat, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]) do
    local b = CreateStatToggle(Stat, settings, content8)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_3 % col_AD_3), -20 + (- b:GetHeight()-70) * math.floor(x_AD_3/col_AD_3))
    x_AD_3=x_AD_3+1
    CreateGainsLossToggles(b, settings, content8)
end
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
    button:HookScript("OnClick", function(self)
      nameToggle:SetEnabled(self:GetChecked())
      iconToggle:SetEnabled(self:GetChecked())
	end)
end
---------------------------
--Fading auras
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
local Debuffsfading = Buttons("Fading DeBuffs", L["Fading Debuffs Alert"], 20, -20, L["Debuff has 5 seconds left"], L["Announces a Debuff you applied is about to fade on the Target."])
local Buffsfading = Buttons("Fading Buffs", L["Fading Buffs Alert"], 20, -60, L["Buff has 5 seconds left"], L["Announces when a buff you gained is about to fade"])

local function CreateSpellToggle(spellName, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    b.Text:SetText(ASCT_GetLocalizedName(spellName))
    b:SetChecked(settings.SpellEnable)
    b:SetScript("OnClick", function(s) settings.SpellEnable = s:GetChecked() end)
    local tex = b:CreateTexture()
    tex:SetPoint("LEFT", b, "RIGHT", 3, 1)
    tex:SetSize(44, 44)
    tex:SetTexture(ASCT_GetLocalizedIcon(spellName))
    return b
end

---------------------------
--Rogue
---------------------------
if Advanced_Scrolling_Combat_Text_DB["Class"]["Rogue"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Assassination"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Outlaw"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Subtlety"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Holy_Priest"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Discipline"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Fury"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Protection_Warrior"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Feral_Combat"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Druid_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Enhancement"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Shaman_Restoration"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end

local col_4 = 4
local x_4 = 0
for v in pairs(Advanced_Scrolling_Combat_Text_DB["Shared_Shaman_spells"]) do
	local b = CreateFrame("CheckButton", nil, content6, "InterfaceOptionsCheckButtonTemplate")
	b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_4 % col_4), -20 + (- b:GetHeight()-25) * math.floor(x_4/col_4))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Demonology"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Destruction"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Marksmanship"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Survival"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
---------------------------
--Paladin
---------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Paladin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Holy_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Protection_Paladin"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Retribution"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Fire"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Frost_Mage"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Death Knight
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Death_Knight"] == true then

local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Blood"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Frost_DK"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Unholy"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Monk
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Monk"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Brewmaster"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Mistweaver"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

local col_3 = 4
local x_3 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Windwalker"]) do
    local b = CreateSpellToggle(spellName, settings, content3)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_3 % col_3), -20 + (- b:GetHeight()-70) * math.floor(x_3/col_3))
    x_3=x_3+1
    CreateNameIconToggles(b, settings, content3)
end
--------------------------
--Demon Hunter
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Demon_Hunter"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Havoc"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Vengeance"]) do
    local b = CreateSpellToggle(spellName, settings, content2)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_2 % col_2), -20 + (- b:GetHeight()-70) * math.floor(x_2/col_2))
    x_2=x_2+1
    CreateNameIconToggles(b, settings, content2)
end

end





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
elseif Race == 22 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Worgen"] = true
elseif Race == 25 or 26 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Pandaren"] = true
elseif Race == 29 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Void Elf"] = true
elseif Race == 30 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Lightforged Draenei"] = true
elseif Race == 34 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Dark Iron Dwarf"] = true
elseif Race == 37 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Mechagnome"] = true
elseif Race == 37 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Kul Tiran"] = true
elseif Race == 9 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Goblin"] = true
	Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] = false
elseif Race == 27 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] = true
elseif Race == 28 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Highmountain Tauren"] = true
elseif Race == 35 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Vulpera"] = true
elseif Race == 31 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Zandalari Troll"] = true
elseif Race == 36 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Mag'har Orc"] = true
end

------------------------
--Undead
------------------------
if Advanced_Scrolling_Combat_Text_DB["Race"]["Undead"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Undead"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
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
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Pandaren
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Pandaren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Pandaren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Void Elf
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Void Elf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Void Elf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Worgen
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Worgen"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Worgen"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Mag'har Orc
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Mag'har Orc"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Mag'har Orc"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Zandalari Troll
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Zandalari Troll"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Zandalari Troll"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Vulpera
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Vulpera"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Vulpera"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Highmountain Tauren
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Highmountain Tauren"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Highmountain Tauren"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Nightborne
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Nightborne"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Nightborne"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Goblin
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Goblin"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Goblin"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Kul Tiran
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Kul Tiran"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Kul Tiran"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Mechagnome
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Mechagnome"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Mechagnome"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Dark Iron Dwarf
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dark Iron Dwarf"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Dark Iron Dwarf"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end
--------------------------
--Lightforged Draenei
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Lightforged Draenei"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Lightforged Draenei"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end

end


end





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
f.db = Advanced_Scrolling_Combat_Text_DB

end

ASCT_AddLocalizedCallback(function()
  InitializeOptions()
end)
end