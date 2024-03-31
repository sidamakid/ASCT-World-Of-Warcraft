local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if
ASCT.Client["isWrathWow"] and ASCT.Client["is30403"]
then
ASCT.Database.Spells["Spells_Wrath"] = {
    ------------------------
    --Races
    ------------------------
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
            ["Dismantle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Killing Spree"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Shadow Dance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tricks of the Trade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Priest spells
    ------------------------
        ["Shadow"] = {
            ["Shadow Word: Death"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fade"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Psychic Scream"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mind Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Silence"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dispersion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadowfiend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Psychic Horror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
       ["Holy_Priest"] = {
            ["Prayer of Mending"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Circle of Healing"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Desperate Prayer"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Hymn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hymn of Hope"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Guardian Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lightwell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
       ["Discipline"] = {
            ["Fear Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Power Word: Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Power Infusion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Inner Focus"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Pain Suppression"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Penance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
    ------------------------
    --Warrior spells
    ------------------------
        ["Arms"] = {
            ["Thunder Clap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Overpower"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Retaliation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mocking Blow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mortal Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Heroic Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bladestorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shattering Throw"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Death Wish"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Enraged Regeneration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Heroic Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Shockwave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Druid Spells
    ------------------------
        ["Balance"] = {
            ["Innervate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Barkskin"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Grasp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Force of Nature"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Starfall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Typhoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Faerie Fire (Feral)"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feral Charge - Bear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Berserk"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feral Charge - Cat"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Survival Instincts"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
        ["Druid_Restoration"] = {
            ["Rebirth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tranquility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Swiftmend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wild Growth"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
    ------------------------
    --Warlock spells
    ------------------------
      ["Affliction"] = {
        ["Curse of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Death Coil"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Howl of Terror"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        ["Haunt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
       ["Demonology"] = {
            ["Inferno"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Soulshatter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Doom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Souls"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadow Ward"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fel Domination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Challenging Howl"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demonic Circle: Teleport"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demonic Empowerment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Demon Charge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Immolation Aura"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Metamorphosis"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ritual of Summoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadow Cleave"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Destruction"] = {
            ["Shadowfury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Conflagrate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shadowburn"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chaos Bolt"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Shaman spells
    ------------------------
        ["Elemental"] = {
            ["Fire Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chain Lightning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Earthbind Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Fire Nova"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Stoneclaw Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Elemental Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lava Burst"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Wind Shear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hex"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Thunderstorm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            },
        ["Enhancement"] = {
            ["Grounding Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Earth Elemental Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Stormstrike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shamanistic Rage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Astral Recall"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Feral Spirit"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lava Lash"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shaman_Restoration"] = {
            ["Mana Tide Totem"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Riptide"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tidal Force"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shared_Shaman_spells"] = {
            Shocks = false,
        },
    ------------------------
    --Hunter spells
    ------------------------
        ["Beast Mastery"] = {
             ["Kill Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Bestial Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Scare Beast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Intimidation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Feed Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Master's Call"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
             ["Call Stabled Pet"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
          },
       ["Marksmanship"] = {
            ["Rapid Fire"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Multi-Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Flare"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Concussive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Silencing Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Aimed Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Scatter Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Distracting Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Kill Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Tranquilizing Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Viper Sting"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Arcane Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Chimera Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Black Arrow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Freezing Arrow"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Explosive Shot"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Shared_Hunter_spells"] = {
            Traps = false,
        },
    ------------------------
    --Paladin
    ------------------------
        ["Holy_Paladin"] = {
            ["Consecration"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Exorcism"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lay on Hands"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Illumination"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Aura Mastery"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Plea"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Favor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Shock"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Protection_Paladin"] = {
            ["Righteous Defense"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Intervention"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Freedom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Protection"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Avenger's Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Holy Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Sacrifice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Reckoning"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hand of Salvation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hammer of the Righteous"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Shield of Righteousness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Retribution"] = {
            ["Avenging Wrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement of Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement of Wisdom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Crusader Strike"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Repentance"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Divine Storm"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Mage
    ------------------------
        ["Arcane"] = {
            ["Ritual of Refreshment"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Invisibility"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Counterspell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blink"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Arcane Power"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Presence of Mind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Arcane Barrage"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Evocation"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
            ["Deep Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ice Barrier"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Death_Knight
    ------------------------
        ["Blood"] = {
            ["Mark of Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dancing Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Strangulate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Pact"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Blood Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Dark Command"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Unholy Frenzy"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Rune Tap"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Vampiric Blood"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Frost_DK"] = {
            ["Unbreakable Armor"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Deathchill"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Icebound Fortitude"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Empower Rune Weapon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Horn of Winter"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Mind Freeze"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Hungering Cold"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Howling Blast"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Lichborne"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Unholy"] = {
            ["Anti-Magic Shell"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Anti-Magic Zone"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Bone Shield"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Grip"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Raise Ally"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Raise Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Army of the Dead"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death and Decay"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Corpse Explosion"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Death Gate"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ghoul Frenzy"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Summon Gargoyle"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
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
    }

local Lust_Table
if select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Alliance"] then
Lust_Table = {["Heroism"] = {SpellEnable = false, iconEnable = false, nameEnable = false}}
ASCT.Functions["TableCombine"](ASCT.Database.Spells["Spells_Wrath"]["Enhancement"], Lust_Table)
elseif select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Horde"] then
Lust_Table = { ["Bloodlust"] = {SpellEnable = false, iconEnable = false, nameEnable = false} }
ASCT.Functions["TableCombine"](ASCT.Database.Spells["Spells_Wrath"]["Enhancement"], Lust_Table)
end
end
