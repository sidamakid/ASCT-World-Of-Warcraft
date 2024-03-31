local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isCataclysmWow"] and ASCT.Client["is40400"] then
    ASCT.Database.Spells["Spells_Cataclysm"] = {
    ------------------------
    --Races
    ------------------------
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
            ["Goblin"] = false,
            },
    ------------------------
    --Classes
    ------------------------
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
            ["Death Knight"] = false,
            },
    ------------------------
    --Rogue spells
    ------------------------
        ["Assassination"] = {
           ["Kidney Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
           ["Cold Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
           ["Vendetta"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Combat"] = {
            ["Sprint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Gouge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Evasion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Combat Readiness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Kick"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feint"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dismantle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Adrenaline Rush"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Killing Spree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Subtlety"] = {
            ["Stealth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cloak of Shadows"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Smoke Bomb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Vanish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tricks of the Trade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Redirect"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Distract"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Preparation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadow Dance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Premeditation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Priest spells
    ------------------------
        ["Shadow"] = {
            ["Shadowfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mind Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Psychic Scream"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadow Word: Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            --["Shadowform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dispersion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Psychic Horror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
       ["Holy_Priest"] = {
            ["Prayer of Mending"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Leap of Faith"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hymn of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Hymn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Word: Chastise"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Word: Serenity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Word: Sanctuary"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chakra"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Desperate Prayer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Circle of Healing"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lightwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Guardian Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
       ["Discipline"] = {
            ["Power Word: Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fear Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Power Word: Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Pain Suppression"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Power Infusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Inner Focus"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
    ------------------------
    --Warrior spells
    ------------------------
        ["Arms"] = {
            ["Colossus Smash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Heroic Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Thunder Clap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Retaliation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shattering Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Throwdown"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Deadly Calm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bladestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Fury"] = {
            ["Berserker Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Recklessness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Battle Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Pummel"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cleave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Inner Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Rallying Cry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Enraged Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Whirlwind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Commanding Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Heroic Leap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Challenging Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Intercept"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Intimidating Shout"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Wish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Raging Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Heroic Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Protection_Warrior"] = {
            ["Spell Reflection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Revenge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Disarm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shield Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shield Wall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Intervene"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Taunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Last Stand"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shockwave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Concussion Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Druid Spells
    ------------------------
        ["Balance"] = {
            ["Innervate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Thorns"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Barkskin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wild Mushroom: Detonate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fungal Growth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Solar Beam"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Starfall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Typhoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Force of Nature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
        ["Feral_Combat"] = {
            ["Stampeding Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Faerie Fire (Feral)"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Skull Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Frenzied Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Challenging Roar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Swipe"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mangle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Maul"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Thrash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Enrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Prowl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tiger's Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feral Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Growl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Maim"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Berserk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
        ["Druid_Restoration"] = {
            ["Tranquility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tree of Life"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wild Growth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
    ------------------------
    --Warlock spells
    ------------------------
      ["Affliction"] = {
            ["Howl of Terror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Coil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Haunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
       ["Demonology"] = {
            ["Demon Soul"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Summon Doomguard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Soulburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Summoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demonic Circle: Teleport"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Soul Harvest"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Souls"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demonic Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Summon Infernal"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Soulshatter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadow Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demon Leap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Gul'dan"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demonic Empowerment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Destruction"] = {
            ["Shadowflame"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nether Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadowburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chaos Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadowfury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Shaman spells
    ------------------------
        ["Elemental"] = {
            ["Lava Burst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fire Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wind Shear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Spiritwalker's Grace"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fire Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chain Lightning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Earthbind Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Stoneclaw Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Elemental Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Earthquake"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
        ["Enhancement"] = {
            ["Unleash Elements"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Grounding Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Earth Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Primal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Astral Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Stormstrike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feral Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shaman_Restoration"] = {
            ["Tremor Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Healing Rain"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Spirit Link Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Riptide"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mana Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shared_Shaman_spells"] = {
            Shocks = false,
        },
    ------------------------
    --Hunter spells
    ------------------------
        ["Beast Mastery"] = {
            ["Kill Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Master's Call"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feed Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bestial Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Focus Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fervor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
       ["Marksmanship"] = {
            ["Rapid Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Kill Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Distracting Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Concussive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Flare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chimera Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Silencing Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Readiness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
       ["Survival"] = {
            ["Feign Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Camouflage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Misdirection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Deterrence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Raptor Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Disengage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Counterattack"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wyvern Sting"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shared_Hunter_spells"] = {
            Traps = false,
        },
    ------------------------
    --Paladin
    ------------------------
        ["Holy_Paladin"] = {
            ["Word of Glory"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Plea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Consecration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lay on Hands"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Aura Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Favor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Protection_Paladin"] = {
            ["Divine Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Guardian of Ancient Kings"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Freedom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Righteous Defense"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Salvation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of the Righteous"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Guardian"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Retribution"] = {
            ["Rebuke"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Avenging Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Crusader Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Zealotry"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Storm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Mage
    ------------------------
        ["Arcane"] = {
            ["Mage Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mirror Image"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mana Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Refreshment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Counterspell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Evocation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blink"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Time Warp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Arcane Power"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Presence of Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Fire"] = {
            ["Flame Orb"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fire Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Combustion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blast Wave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Frost_Mage"] = {
            ["Ice Block"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Frost Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ring of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cone of Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Icy Veins"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Deep Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cold Snap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ice Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Death_Knight
    ------------------------
        ["Blood"] = {
            ["Strangulate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blood Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dark Simulacrum"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dark Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dancing Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Rune Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Vampiric Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bone Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Frost_DK"] = {
            ["Empower Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Horn of Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mind Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Icebound Fortitude"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Pillar of Frost"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lichborne"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hungering Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Unholy"] = {
            ["Raise Ally"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Army of the Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Anti-Magic Shell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death and Decay"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Gate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Grip"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Outbreak"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Raise Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Summon Gargoyle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Anti-Magic Zone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Unholy Frenzy"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Racials
    ------------------------
        ["Draenei"] = {
            ["Gift of the Naaru"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Blood Elf"] = {
            ["Arcane Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Undead"] = {
            ["Will of the Forsaken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cannibalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Orc"] = {
            ["Blood Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Troll"] = {
            ["Berserking"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Tauren"] = {
            ["War Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Human"] = {
            ["Will to Survive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Night Elf"] = {
            ["Shadowmeld"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Gnome"] = {
            ["Escape Artist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Dwarf"] = {
            ["Stoneform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Goblin"] = {
            ["Rocket Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Pack Hobgoblin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Rocket Jump"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Worgen"] = {
            ["Darkflight"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Two Forms"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    }

local Lust_Table
if select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Alliance"] then
Lust_Table = {["Heroism"] = {SpellEnable = false, iconEnable = false, nameEnable = false}}
ASCT.Functions["TableCombine"](ASCT.Database.Spells["Spells_Cataclysm"]["Enhancement"], Lust_Table)
elseif select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Horde"] then
Lust_Table = { ["Bloodlust"] = {SpellEnable = false, iconEnable = false, nameEnable = false} }
ASCT.Functions["TableCombine"](ASCT.Database.Spells["Spells_Cataclysm"]["Enhancement"], Lust_Table)
end
end
