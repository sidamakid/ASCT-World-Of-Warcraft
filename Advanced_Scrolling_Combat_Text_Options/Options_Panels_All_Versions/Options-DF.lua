local isDragonFlightWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_DRAGONFLIGHT)
if isDragonFlightWow then
---------------------------
--Localize Table
---------------------------
local L = ASDC_LOCALE_TABLE
---------------------------
--Functions Table
---------------------------
local L_Function_Keys = Functions_For_ASDC_Table
local addonName, ASCT_Options = ...;
local function InitializeOptions()
---------------------------
--Create The MainFrame
---------------------------
local f = CreateFrame("Frame")


local defaults = {
    --Races
    ["Race"] = {
        ["Blood Elf"] = false,
        ["Orc"] = false,
        ["Undead"] = false,
        ["Troll"] = false,
        ["Tauren"] = false,
        ["Draenei"] = false,
        ["Gnome"] = false,
        ["Human"] = false,
        ["Night Elf"] = false,
        ["Dwarf"] = false,
        ["Worgen"] = false,
        ["Pandaren"] = false,
        ["Void Elf"] = false,
        ["Lightforged Draenei"] = false,
        ["Dark Iron Dwarf"] = false,
        ["Mechagnome"] = false,
        ["Kul Tiran"] = false,
        ["Goblin"] = false,
        ["Nightborne"] = false,
        ["Highmountain Tauren"] = false,
        ["Vulpera"] = false,
        ["Zandalari Troll"] = false,
        ["Mag'har Orc"] = false,
        ["Dracthyr"] = false,
        },
    --Classes
    ["Class"] = {
        ["Rogue"] = false,
        ["Priest"] = false,
        ["Warrior"] = false,
        ["Druid"] = false,
        ["Warlock"] = false,
        ["Shaman"] = false,
        ["Hunter"] = false,
        ["Paladin"] = false,
        ["Mage"] = false,
        ["Death_Knight"] = false,
        ["Demon_Hunter"] = false,
        ["Monk"] = false,
        ["Evoker"] = false,
    },
    --Rogue spells
    ["Assassination"] = {
        ["Garrote"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Deathmark"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Exsanguinate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Sepsis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Serrated Bone Spike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Indiscriminate Carnage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Kingsbane"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thistle Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Cold Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Crimson Vial"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Kidney Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Smoke Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Death from Above"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Outlaw"] = {
                ["Dismantle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Marked for Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Gouge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Feint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Evasion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shiv"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Sprint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Between the Eyes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dreadblades"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Killing Spree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Blade Flurry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Adrenaline Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Grappling Hook"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Blade Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ghostly Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Keep It Rolling"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Roll the Bones"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Subtlety"] = {
                ["Shadowy Duel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Echoing Reprimand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadowstep"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tricks of the Trade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Cloak of Shadows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Blind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Vanish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shroud of Concealment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Stealth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Distract"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Dance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Blades"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Symbols of Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Secret Technique"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Flagellation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shuriken Tornado"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Priest spells
    ["Shadow"] = {
                ["Dominate Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Void Shift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mindgames"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadowfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Vampiric Embrace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Void Tendrils"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Psychic Scream"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Void Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Word: Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mind Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mind Soothe"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dispersion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Void Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dark Ascension"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mindbender"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Crash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Void Eruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Psychic Horror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thoughtsteal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Inner Light and Shadow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Psyfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ["Holy_Priest"] = {
        ["Divine Star"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Halo"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Leap of Faith"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Desperate Prayer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Apotheosis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Lightwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Word: Salvation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Divine Word"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Word: Serenity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Symbol of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Divine Hymn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Empyreal Blaze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Prayer of Mending"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Circle of Healing"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Word: Sanctify"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Word: Chastise"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Guardian Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ray of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Greater Heal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Divine Ascension"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Holy Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Discipline"] = {
        ["Power Word: Life"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mass Dispel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Infusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Penance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Purify"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Word: Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Angelic Feather"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Word: Radiance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Evangelism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Light's Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Word: Solace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Covenant"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Rapture"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Word: Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Schism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Pain Suppression"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dark Archangel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Archangel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Luminous Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Warrior spells
    ["Arms"] = {
                ["Battle Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Colossus Smash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Die by the Sword"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Overpower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Heroic Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Titanic Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shattering Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Berserker Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Rallying Cry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Wrecking Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Impending Victory"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mortal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Warbreaker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bladestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Skullsplitter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Cleave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Sweeping Strikes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Spear of Bastion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["War Banner"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Sharpen Blade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Duel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Fury"] = {
                ["Execute"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Piercing Howl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Pummel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thunder Clap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Berserker Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Intervene"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bloodthirst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Onslaught"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Odyn's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Recklessness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Enraged Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Raging Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thunderous Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Avatar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Intimidating Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bitter Immunity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Death Wish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bloodrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Protection_Warrior"] = {
                ["Shield Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Heroic Leap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shield Slam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Taunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Spell Reflection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Last Stand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ravager"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shield Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Spell Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shield Wall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Disrupting Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Challenging Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Demoralizing Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shockwave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Storm Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Disarm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Oppressor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shield Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bodyguard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dragon Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
        --Warlock spells
    ["Affliction"] = {
                ["Ritual of Summoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Create Soulwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soulstone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dark Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Amplify Curse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mortal Coil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soul Swap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Howl of Terror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soul Rot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Summon Darkglare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Vile Taint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Haunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Grimoire of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Phantom Singularity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Nether Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadow Rift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Call Observer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Oblivion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Demonology"] = {
                ["Soulburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fel Domination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Inquisitor's Gaze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Demonic Gateway"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Summon Vilefiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Guillotine"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Nether Portal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Summon Demonic Tyrant"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Grimoire: Felguard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Power Siphon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Demonic Strength"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bilescourge Bombers"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soul Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Call Dreadstalkers"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fel Obelisk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Call Fel Lord"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Call Felhunter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Destruction"] = {
                ["Ritual of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Unending Resolve"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadowflame"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Conflagrate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dimensional Rift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Cataclysm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Summon Infernal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadowburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soul Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Channel Demonfire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Havoc"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shadowfury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bane of Havoc"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Rapid Contagion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bonds of Fel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
        --Druid Spells
    ["Balance"] = {
                ["Barkskin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Dreamwalk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Charm Woodland Creature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mass Entanglement"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Heart of the Wild"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ursol's Vortex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Typhoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fury of Elune"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["New Moon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Convoke the Spirits"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Solar Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Force of Nature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Celestial Alignment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Wild Mushroom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Astral Communion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Warrior of Elune"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Faerie Swarm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Feral_Combat"] = {
                ["Dash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thrash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mangle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Prowl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Incapacitating Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Soothe"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mighty Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Skull Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tiger Dash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Maim"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Frenzied Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Berserk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Feral Frenzy"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Incarnation: Avatar of Ashamane"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Survival Instincts"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Brutal Slash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tiger's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Bristling Fur"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Rage of the Sleeper"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Pulverize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Alpha Challenge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Demoralizing Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Overrun"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Emerald Slumber"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Grove Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Lunar Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Druid_Restoration"] = {
        ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Nature's Vigil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Renewal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Innervate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Swiftmend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Remove Corruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Nature's Cure"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Flourish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Adaptive Swarm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ironbark"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tranquility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Cenarion Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Invigorate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Overgrowth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Incarnation: Tree of Life"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thorns"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Shaman spells
    ["Elemental"] = {
                ["Hex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Flame Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Lava Burst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ancestral Guidance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Lightning Lasso"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Thunderstorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Stormkeeper"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Liquid Magma Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fire Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Storm Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Primordial Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Elemental Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Icefury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Gust of Wind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Wind Shear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Unleash Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Enhancement"] = {
                ["Astral Shift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Earthbind Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Earth Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Stoneskin Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tranquil Air Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Spirit Walk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Earthgrab Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Fire Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Feral Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Crash Lightning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Sundering"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Doom Winds"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Ice Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Feral Lunge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Stormstrike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Lava Lash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Astral Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Wind Rush Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Greater Purge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Tremor Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Capacitor Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Skyfury Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Grounding Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Counterstrike Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Static Field Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Shaman_Restoration"] = {
        ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ascendance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ancestral Protection Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cloudburst Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Downpour"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Healing Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Healing Rain"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Healing Stream Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Poison Cleansing Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Totemic Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spiritwalker's Grace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mana Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cleanse Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Purify Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Riptide"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Unleash Life"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spirit Link Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wellspring"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Earthen Wall Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Shared_Shaman_spells"] = {
        ["Lust"] = false,
    },
    --Hunter spells
    ["Beast Mastery"] = {
        ["Mend Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Exhilaration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Feed Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wake Up"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Stampede"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Intimidation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Misdirection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["A Murder of Crows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aspect of the Wild"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bestial Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dire Beast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bloodshed"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Barbed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dire Beast: Basilisk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Roar of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dire Beast: Hawk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wild Kingdom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Marksmanship"] = {
        ["Flare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death Chakram"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Disengage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wailing Arrow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Scatter Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Explosive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tranquilizing Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Survival of the Fittest"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Concussive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Kill Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rapid Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Trueshot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Volley"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bursting Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aimed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sniper Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chimaeral Sting"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Survival"] = {
        ["Freezing Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Feign Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["High Explosive Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Steel Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Camouflage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Binding Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Kill Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Counter Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tar Trap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Carve"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Butchery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spearhead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fury of the Eagle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Coordinated Assault"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Flanking Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wildfire Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aspect of the Eagle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Harpoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aspect of the Turtle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aspect of the Cheetah"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aspect of the Chameleon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mending Bandage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tracker's Net"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Interlope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Paladin
    ["Holy_Paladin"] = {
        ["Hand of Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Consecration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Intercession"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cleanse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rebuke"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Turn Evil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Lay on Hands"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Freedom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Avenging Crusader"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Light's Hammer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Beacon of Virtue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Holy Prism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Summer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Barrier of Faith"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tyr's Deliverance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Favor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rule of Law"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Aura Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Holy Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Shield of Virtue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Hand of Divinity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Daybreak"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Protection_Paladin"] = {
        ["Hammer of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blinding Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Steed"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Hammer of Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sentinel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Spellwarding"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Moment of Glory"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Toll"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Eye of Tyr"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Guardian of Ancient Kings"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bastion of Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Hammer of the Righteous"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ardent Defender"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessed Hammer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Avenger's Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Inquisition"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Guardian of the Forgotten Queen"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Retribution"] = {
        ["Contemplation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Avenging Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Judgment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Repentance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Crusade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Justicar's Vengeance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Eye for an Eye"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Radiant Decree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Final Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Execution Sentence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Hand of Hindrance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Exorcism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Shield of Vengeance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Divine Hammer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wake of Ashes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blade of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of Sanctuary"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Mage Spells
    ["Arcane"] = {
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
        ["Portal: Valdrakken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Time Warp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Blink"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Illusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Counterspell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Conjure Refreshment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Shimmer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Displacement"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mass Polymorph"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Greater Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Alter Time"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mirror Image"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Remove Curse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Prismatic Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Arcane Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Radiant Spark"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Evocation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Supernova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Touch of the Magi"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Presence of Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Arcane Surge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Arcane Orb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Arcane Familiar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Temporal Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mass Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Arcanosphere"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
                ["Mass Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Fire"] = {
        ["Fire Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dragon's Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blast Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Alexstrasza's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Living Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Combustion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Phoenix Flames"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Greater Pyroblast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ring of Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Frost_Mage"] = {
        ["Cone of Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Shifting Power"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Frost Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ice Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ice Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ring of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ice Floes"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Summon Water Elemental"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ebonbolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ray of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Comet Storm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Icy Veins"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cold Snap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Flurry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blizzard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Frozen Orb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Snowdrift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ice Form"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Frost Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ice Wall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Demon Hunter Spells
    ["Havoc"] = {
        ["Fel Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Immolation Aura"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Metamorphosis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spectral Sight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["The Hunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Consume Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Imprison"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sigil of Flame"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Glaive Tempest"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Essence Break"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fel Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Elysian Decree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Netherwalk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fel Eruption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Eye Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rain from Above"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Reverse Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Vengeance"] = {
        ["Darkness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Torment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Throw Glaive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Felblade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sigil of Misery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chaos Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Disrupt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Vengeful Retreat"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bulk Extraction"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sigil of Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fracture"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Soul Carver"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sigil of Chains"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fel Devastation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fiery Brand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tormentor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Demonic Trample"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Illidan's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Death_Knight Spells
    ["Blood"] = {
        ["Dark Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Corpse Exploder"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death Grip"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sacrificial Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mark of Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tombstone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blooddrinker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Consumption"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Gorefiend's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Bonestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blood Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Vampiric Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dancing Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blood Boil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rune Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death's Caress"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Murderous Intent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dark Simulacrum"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Frost_DK"] = {
        ["Lichborne"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Soul Reaper"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Empower Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wraith Walk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Icebound Fortitude"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blinding Sleet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Anti-Magic Zone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mind Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Remorseless Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Breath of Sindragosa"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Frostwyrm's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chill Streak"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Horn of Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Pillar of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Strangulate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Unholy"] = {
        ["Death's Advance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death Gate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Raise Ally"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death and Decay"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Raise Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Abomination Limb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Anti-Magic Shell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Defile"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Unholy Assault"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Summon Gargoyle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Army of the Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Vile Contagion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dark Transformation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Apocalypse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Unholy Blight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death Chain"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Monk Spells
    ["Brewmaster"] = {
        ["Touch of Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Touch of Fatality"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blackout Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chi Torpedo"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Summon Black Ox Statue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Summon White Tiger Statue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chi Burst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rising Sun Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Black Ox Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rushing Jade Wind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Weapons of Order"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Exploding Keg"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Invoke Niuzao, the Black Ox"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Breath of Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Clash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Zen Meditation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Celestial Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Keg Smash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Purifying Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Admonishment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mighty Ox Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Grapple Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Nimble Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Mistweaver"] = {
        ["Zen Pilgrimage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Summon Jade Serpent Statue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Expel Harm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chi Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Transcendence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Detox"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tiger's Lust"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Healing Elixir"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mana Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Faeline Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Refreshing Jade Wind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Invoke Yu'lon, the Jade Serpent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Invoke Chi-Ji, the Red Crane"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Restoral"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Zen Pulse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Revival"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Essence Font"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Thunder Focus Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Life Cocoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Renewing Mist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Healing Sphere"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Zen Focus Tea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Windwalker"] = {
        ["Provoke"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Leg Sweep"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dampen Harm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spear Hand Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Paralysis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Ring of Peace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fortifying Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Diffuse Magic"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Storm, Earth, and Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Serenity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Whirling Dragon Punch"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Invoke Xuen, the White Tiger"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Strike of the Windlord"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fists of Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Flying Serpent Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Touch of Karma"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Avert Harm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Double Barrel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tigereye Brew"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Evoker Spells
    ["Devastation"] = {
        ["Fire Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Hover"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Deep Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Landslide"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Zephyr"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Oppressing Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rescue"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Unravel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Sleep Walk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cauterizing Flame"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Quell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Obsidian Scales"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Eternity Surge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Firestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Shattering Star"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dragonrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Nullifying Shroud"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Time Stop"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Preservation"] = {
        ["Emerald Blossom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Blessing of the Bronze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Fury of the Aspects"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Naturalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Time Spiral"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Renewing Blaze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tip the Scales"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Verdant Embrace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Expunge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dream Breath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dream Flight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Stasis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Temporal Anomaly"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Emerald Communion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Time Dilation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Spiritbloom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rewind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Reversion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Chrono Loop"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Swoop Up"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Dream Projection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    --Racials
    ["Blood Elf"] = {
        ["Arcane Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Dracthyr"] = {
        ["Soar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Tail Swipe"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Wing Buffet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Dark Iron Dwarf"] = {
        ["Fireblood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Mole Machine"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Draenei"] = {
        ["Gift of the Naaru"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Goblin"] = {
        ["Pack Hobgoblin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rocket Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rocket Jump"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Dwarf"] = {
        ["Stoneform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Highmountain Tauren"] = {
        ["Bull Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Gnome"] = {
        ["Escape Artist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Mag'har Orc"] = {
        ["Ancestral Call"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Human"] = {
        ["Will to Survive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Nightborne"] = {
        ["Arcane Pulse"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cantrips"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Kul Tiran"] = {
        ["Haymaker"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Orc"] = {
        ["Blood Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Lightforged Draenei"] = {
        ["Forge of Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Light's Judgment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Pandaren"] = {
        ["Quaking Palm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Mechagnome"] = {
        ["Hyper Organic Light Originator"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Tauren"] = {
        ["War Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Night Elf"] = {
        ["Shadowmeld"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Troll"] = {
        ["Berserking"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Void Elf"] = {
        ["Spatial Rift"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Undead"] = {
        ["Will of the Forsaken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Cannibalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Vulpera"] = {
        ["Bag of Tricks"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Make Camp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Return to Camp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Rummage Your Bag"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Worgen"] = {
        ["Darkflight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Zandalari Troll"] = {
        ["Embrace of the Loa"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Pterrordax Swoop"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Regeneratin'"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
    },
    ["Advanced_Scrolling_Combat_Text_Stats"] = {
        ["Armor"] = {StatEnable = false, Gains = false, Lost = false},
        ["Agility"] = {StatEnable = false, Gains = false, Lost = false},
        ["Strength"] = {StatEnable = false, Gains = false, Lost = false},
        ["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
        ["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
        ["Health"] = {StatEnable = false, Gains = false, Lost = false},
    },
    ["Advanced_Scrolling_Combat_Text_Leveling"] = {
        ["Experience Gains"] = false,
        ["Level up message"] = false,
        ["Skill Gained"] = false,
        ["Skill Up"] = false,
        ["Resource lost"] = false,
        ["Achievement Gains"] = false,
        ["Death Quadrants"] = false,
        ["Duel Requests"] = false,
        ["Sent Mail"] = false,
        --["Loot"] = false,
    },
    ["Advanced_Scrolling_Combat_Text_Auras"] = {
        ["Fading DeBuffs"] = false,
    },
--[[
	["Trinkets"] = {
		["Trinket_1"] = {TrinketEnable = false, Name = false, Icon = false,},
		["Trinket_2"] = {TrinketEnable = false, Name = false, Icon = false,},
	},
	]]
    --[[
	["Integer_Values"] = {
		Icon = 18,
		Debuff_time = 5,
	},
	]]
}

function f:InitializeOptions_Class()
local ASCT_Config = CreateFrame("Frame", "ASCT_Config", UIParent, "UIPanelDialogTemplate");
table.insert(UISpecialFrames, "ASCT_Config")
ASCT_Config:SetMovable(true)
ASCT_Config:EnableMouse(true)
ASCT_Config:SetResizable(true)
ASCT_Config:SetSize(1000, 650);
ASCT_Config:SetClampedToScreen(true)
ASCT_Config:SetPoint("CENTER", UIParent, "CENTER", 1000, 650)
ASCT_Config:SetResizeBounds(1000,200, 1000,650)
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
  local tab = CreateFrame("Button", frameName.."Tab"..i, frame, "PanelTabButtonTemplate");
  tab:SetID(i);
  tab:SetText(select(i, ...))
  tab:SetScript("OnClick", Tab_OnClick);

  tab.content = CreateFrame("Frame", nil, ASCT_Config.scrollFrame);
  tab.content:SetSize(770, 500)
  tab.content:Hide()




  table.insert(contents, tab.content)

  if (i == 1) then
    tab:SetPoint("TOPLEFT", ASCT_Config, "BOTTOMLEFT", 10, 7);
  else
    tab:SetPoint("TOPLEFT", _G[frameName.."Tab"..(i - 1)], "TOPRIGHT", 10, 0);
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
elseif Class == 13 then
	Advanced_Scrolling_Combat_Text_DB["Class"]["Evoker"] = true
	Text1 = TextCreate(L["Preservation"])
	Text2 = TextCreate(L["Devastation"])
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
    tex:SetPoint("RIGHT", b, "LEFT", 3, 1)
    tex:SetSize(44, 44)
    tex:SetTexture(ASCT_GetLocalizedIcon(spellName))
    return b
end
---------------------------
-- Advanced Scrolling Combat Text Leveling
---------------------------
local col_AD = 4
local x_AD = 0
for v in ASCT_Options:PairsByKeys(Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]) do
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
---------------------------
--Debuffs fading
---------------------------
local Debuffsfading = Buttons("Fading DeBuffs", L["Fading Debuffs Alert"], 20, -20, L["Debuff has 5 seconds left"], L["Announces a Debuff you applied is about to fade on the Target."])
---------------------------
--Slider
---------------------------
--[[
local SliderText = TitleCreate(content5, -265, -10, "Spell Icon Size")
local MySlider = CreateFrame("Slider", "Icon_slider", content5, "OptionsSliderTemplate")
MySlider:SetWidth(200)
MySlider:SetHeight(20)
MySlider:SetPoint("TOPLEFT", 20, -20)
MySlider:SetOrientation('HORIZONTAL')
MySlider:SetMinMaxValues(1, 50)
MySlider:SetValue(Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Icon)
MySlider:SetValueStep(1)
MySlider:SetObeyStepOnDrag(true)
MySlider.tooltipText = 'The size of the Spell Icon'   -- Creates a tooltip on mouseover.
_G[MySlider:GetName() .. 'Low']:SetText('1')        -- Sets the left-side slider text (default is "Low").
_G[MySlider:GetName() .. 'High']:SetText('50')     -- Sets the right-side slider text (default is "High").
local fs = content5:CreateFontString(nil, "OVERLAY", "GameTooltipText")
fs:SetPoint("TOPLEFT", 110, -40)
fs:SetText(Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Icon)
MySlider:SetScript("OnValueChanged", function(self,value,userInput)
	if userInput then 
		Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Icon = value
		fs:SetText(value)
	end
end)
]]
---------------------------
--Debuff Slider
---------------------------
--[[
local SliderText_Debuff = TitleCreate(content5, -265, -90, L["Debuff fade time"])
local Debuff_Slider = CreateFrame("Slider", "Debuff_slider", content5, "OptionsSliderTemplate")
Debuff_Slider:SetWidth(200)
Debuff_Slider:SetHeight(20)
Debuff_Slider:SetPoint("TOPLEFT", 20, -100)
Debuff_Slider:SetOrientation('HORIZONTAL')
Debuff_Slider:SetMinMaxValues(1, 20)
Debuff_Slider:SetValue(Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Debuff_time)
Debuff_Slider:SetValueStep(1)
Debuff_Slider:SetObeyStepOnDrag(true)
Debuff_Slider.tooltipText = L["The time warning for Debuffs about to fade"]   -- Creates a tooltip on mouseover.
_G[Debuff_Slider:GetName() .. 'Low']:SetText('1')        -- Sets the left-side slider text (default is "Low").
_G[Debuff_Slider:GetName() .. 'High']:SetText('20')     -- Sets the right-side slider text (default is "High").
local fss = content5:CreateFontString(nil, "OVERLAY", "GameTooltipText")
fss:SetPoint("TOPLEFT", 110, -140)
fss:SetText(Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Debuff_time)
Debuff_Slider:SetScript("OnValueChanged", function(self,value,userInput)
	if userInput then
		Advanced_Scrolling_Combat_Text_DB["Integer_Values"].Debuff_time = value
		fss:SetText(value)
	end
end)
]]
---------------------------
--Trinkets
---------------------------
--[[
local col_AD_4 = 4
local x_AD_4 = 0
for Stat, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Trinkets"]) do
    local b = CreateTrinketToggle(Stat, settings, content10)
    b:SetPoint("TOPLEFT", 20 + (b:GetWidth()+200) * (x_AD_4 % col_AD_4), -20 + (- b:GetHeight()-70) * math.floor(x_AD_4/col_AD_4))
    x_AD_4=x_AD_4+1
    CreateTrinketNameIconsToggles(b, settings, content10)
end
]]
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
--------------------------
--Evoker
--------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Class"]["Evoker"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Preservation"]) do
    local b = CreateSpellToggle(spellName, settings, content1)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content1)
end

local col_2 = 4
local x_2 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Devastation"]) do
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
elseif Race == 52 or 70 then
	Advanced_Scrolling_Combat_Text_DB["Race"]["Dracthyr"] = true
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
------------------------
--Dracthyr
------------------------
elseif Advanced_Scrolling_Combat_Text_DB["Race"]["Dracthyr"] == true then
local col_1 = 4
local x_1 = 0
for spellName, settings in pairs(Advanced_Scrolling_Combat_Text_DB["Dracthyr"]) do
    local b = CreateSpellToggle(spellName, settings, content4)
    b:SetPoint("TOPLEFT", 60 + (b:GetWidth()+200) * (x_1 % col_1), -20 + (- b:GetHeight()-70) * math.floor(x_1/col_1))
    x_1=x_1+1
    CreateNameIconToggles(b, settings, content4)
end

end

end

SLASH_NEWRELOAD1 = "/rl"
SlashCmdList.NEWRELOAD =  ReloadUI
---------------------------
--Saved Variables
---------------------------
Advanced_Scrolling_Combat_Text_DB = Advanced_Scrolling_Combat_Text_DB or {}
L_Function_Keys["MergeInNewValues"](Advanced_Scrolling_Combat_Text_DB, defaults)
L_Function_Keys["DeleteOldValues"](defaults, Advanced_Scrolling_Combat_Text_DB)
---------------------------
--Run Function
---------------------------
f:InitializeOptions_Class()
---------------------------
--Unused variable
---------------------------
f.db = Advanced_Scrolling_Combat_Text_DB

end

ASCT_AddLocalizedCallback(function()
  InitializeOptions()
  L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"]()
end)
end