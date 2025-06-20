local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isMOPWow"] and ASCT.Client.tocversion["is50500"] then
ASCT.Database.Spells["ASCT_Locale"] = {--Advanced Scrolling Combat Text Localizing Table
    ---------------------------
    --Rogue
    ---------------------------
        ---------------------------
        --Assassination
        ---------------------------
            ["Kidney Shot"] = 408,
            ["Vendetta"] = 79140,
            ["Marked for Death"] = 137619,
        ---------------------------
        --Combat
        ---------------------------
            ["Dismantle"] = 51722,
            ["Sprint"] = 2983,
            ["Evasion"] = 5277,
            ["Kick"] = 1766,
            ["Gouge"] = 1776,
            ["Redirect"] = 73981,
            ["Blade Flurry"] = 13877,
            ["Killing Spree"] = 51690,
            ["Adrenaline Rush"] = 13750,
            ["Combat Readiness"] = 74001,
        ---------------------------
        --Subtlety
        ---------------------------
            ["Tricks of the Trade"] = 57934,
            ["Shroud of Concealment"] = 114018,
            ["Shadow Blades"] = 121471,
            ["Smoke Bomb"] = 76577,
            ["Shadow Walk"] = 114842,
            ["Stealth"] = 1784,
            ["Vanish"] = 1856,
            ["Blind"] = 2094,
            ["Cloak of Shadows"] = 31224,
            ["Preparation"] = 14185,
            ["Distract"] = 1725,
            ["Shadow Dance"] = 51713,
            ["Premeditation"] = 14183,
            ["Shadowstep"] = 36554,
    ---------------------------
    --Priest
    ---------------------------
        ---------------------------
        --Shadow
        ---------------------------
            ["Mass Dispel"] = 32375,
            ["Shadowfiend"] = 34433,
            ["Psychic Scream"] = 8122,
            ["Shadow Word: Death"] = 32379,
            ["Fade"] = 586,
            ["Spirit Shell"] = 109964,
            ["Void Shift"] = 108968 or 142723,
            ["Mind Blast"] = 8092,
            ["Vampiric Embrace"] = 15286,
            ["Silence"] = 15487,
            ["Dispersion"] = 47585,
            ["Psychic Horror"] = 64044,
            ["Mindbender"] = 123040,
            ["Spectral Guise"] = 112833,
            ["Void Tendrils"] = 108920,
            ["Psyfiend"] = 108921,
        ---------------------------
        --Holy
        ---------------------------
            ["Hymn of Hope"] = 64901,
            ["Leap of Faith"] = 73325,
            ["Prayer of Mending"] = 33076,
            ["Purify"] = 527,
            ["Holy Fire"] = 14914,
            ["Guardian Spirit"] = 47788,
            ["Lightwell"] = 126135,
            ["Chakra: Serenity"] = 81208,
            ["Circle of Healing"] = 34861,
            ["Divine Hymn"] = 64843,
            ["Chakra: Chastise"] = 81209,
            ["Angelic Feather"] = 121536,
            ["Halo"] = 120517,
            ["Cascade"] = 121135,
            ["Desperate Prayer"] = 19236,
        ---------------------------
        --Discipline
        ---------------------------
            ["Fear Ward"] = 6346,
            ["Power Word: Shield"] = 17,
            ["Power Word: Barrier"] = 62618,
            ["Inner Focus"] = 89485,
            ["Pain Suppression"] = 33206,
            ["Archangel"] = 81700,
            ["Penance"] = 47540,
            ["Chakra: Sanctuary"] = 81206,
            ["Divine Star"] = 110744,
            ["Power Infusion"] = 10060,
            ["Power Word: Solace"] = 129250,
    ---------------------------
    --Warrior
    ---------------------------
        ---------------------------
        --Arms
        ---------------------------
            ["Skull Banner"] = 114207,
            ["Heroic Throw"] = 57755,
            ["Demoralizing Banner"] = 114203,
            ["Taunt"] = 355,
            ["Intervene"] = 3411,
            ["Shattering Throw"] = 64382,
            ["Hamstring"] = 1715,
            ["Battle Shout"] = 6673,
            ["Charge"] = 100,
            ["Commanding Shout"] = 469,
            ["Berserker Rage"] = 18499,
            ["Victory Rush"] = 118779,
            ["Mortal Strike"] = 12294,
            ["Dragon Roar"] = 118000,
            ["Bloodbath"] = 12292,
            ["Bladestorm"] = 46924,
            ["Staggering Shout"] = 107566,
            ["Disrupting Shout"] = 102060,
        ---------------------------
        --Fury
        ---------------------------
            ["Mocking Banner"] = 114192,
            ["Recklessness"] = 1719,
            ["Thunder Clap"] = 6343,
            ["Heroic Leap"] = 6544,
            ["Impending Victory"] = 103840 or 118340,
            ["Sweeping Strikes"] = 12328,
            ["Bloodthirst"] = 23881,
            ["Storm Bolt"] = 107570,
        ---------------------------
        --Protection
        ---------------------------
            ["Shield Wall"] = 871,
            ["Spell Reflection"] = 23920,
            ["Rallying Cry"] = 97462,
            ["Disarm"] = 676,
            ["Pummel"] = 6552,
            ["Die by the Sword"] = 118038,
            ["Colossus Smash"] = 86346,
            ["Demoralizing Shout"] = 1160,
            ["Shield Block"] = 2565,
            ["Revenge"] = 6572,
            ["Last Stand"] = 12975,
            ["Shield Slam"] = 23922,
            ["Shield Barrier"] = 112048,
            ["Avatar"] = 107574,
            ["Vigilance"] = 114030,
            ["Mass Spell Reflection"] = 114028,
            ["Enraged Regeneration"] = 55694,
            ["Shockwave"] = 46968,
            ["Safeguard"] = 114029,
    ---------------------------
    --Warlock
    ---------------------------
        ---------------------------
        --Affliction
        ---------------------------
        ["Twilight Ward"] = 6229,
        ["Howl of Terror"] = 5484,
        ["Soulburn"] = 74434,
        ["Dark Soul: Misery"] = 113860,
        ["Create Soulwell"] = 29893,
        ["Soulstone"] = 20707,
        ["Dark Soul: Knowledge"] = 113861,
        ["Mortal Coil"] = 6789,
        ["Blood Horror"] = 111397,
        ["Mannoroth's Fury"] = 108508,

        ---------------------------
        --Demonology
        ---------------------------
        ["Unending Resolve"] = 104773,
        ["Demonic Gateway"] = 111771,
        ["Summon Doomguard"] = 18540,
        ["Demonic Circle: Teleport"] = 48020,
        ["Dark Soul"] = 77801,
        ["Felhunter: Spell Lock"] = 103135,
        ["Succubus: Whiplash"] = 103141,
        ["Voidwalker: Disarm"] = 124539,
        ["Summon Infernal"] = 1122,
        ["Ritual of Summoning"] = 698,
        ["Felhunter: Devour Magic"] = 103136,
        ["Voidwalker: Suffering"] = 103128,
        ["Imp: Flee"] = 103133,
        ["Imp: Singe Magic"] = 103150,
        ["Imp: Cauterize Master"] = 124538,
        ["Hand of Gul'dan"] = 105174,
        ["Carrion Swarm"] = 103967,
        ["Metamorphosis"] = 103958,
        ["Demonic Leap"] = 109151,
        ["Metamorphosis: Chaos Wave"] = 124917,
        ["Grimoire of Sacrifice"] = 108503,
        ["Grimoire of Service"] = 108501,
        ["Sacrificial Pact"] = 108416,
        ["Dark Regeneration"] = 108359,
        ---------------------------
        --Destruction
        ---------------------------
        ["Seed of Corruption"] = 87385,
        ["Soulshatter"] = 29858,
        ["Havoc"] = 80240,
        ["Dark Soul: Instability"] = 113858,
        ["Fire and Brimstone"] = 108683,
        ["Conflagrate"] = 17962,
        ["Flames of Xoroth"] = 120451,
        ["Unbound Will"] = 108482,
        ["Dark Bargain"] = 110913,
        ["Demonic Breath"] = 47897,
        ["Shadowfury"] = 30283,
    ---------------------------
    --Druid
    ---------------------------
        ---------------------------
        --Balance
        ---------------------------
        ["Symbiosis"] = 110309,
        ["Incarnation: Chosen of Elune"] = 102560,
        ["Barkskin"] = 22812,
        ["Nature's Grasp"] = 16689,
        ["Starsurge"] = 78674,
        ["Wild Mushroom: Detonate"] = 88751,
        ["Solar Beam"] = 78675,
        ["Celestial Alignment"] = 112071,
        ["Starfall"] = 48505,
        ["Remove Corruption"] = 2782,
        ["Ursol's Vortex"] = 102793,
        ["Typhoon"] = 132469,
        ["Mass Entanglement"] = 102359,
        ["Heart of the Wild"] = 108288,
        ["Incarnation"] = 106731,
        ---------------------------
        --Feral_Combat
        ---------------------------
        ["Frenzied Regeneration"] = 22842,
        ["Might of Ursoc"] = 106922,
        ["Lacerate"] = 33745,
        ["Maul"] = 6807,
        ["Growl"] = 6795,
        ["Stampeding Roar"] = 106898,
        ["Prowl"] = 5215 or 102547,
        ["Thrash"] = 77758,
        ["Maim"] = 22570,
        ["Dash"] = 1850,
        ["Swipe"] = 779,
        ["Mangle"] = 33878,
        ["Skull Bash"] = 106839,
        ["Survival Instincts"] = 61336,
        ["Tiger's Fury"] = 5217,
        ["Berserk"] = 106952,
        ["Savage Defense"] = 62606,
        ["Enrage"] = 5229,
        ["Bear Hug"] = 102795,
        ["Wild Charge"] = 102401,
        ["Displacer Beast"] = 102280,
        ["Renewal"] = 108238,
        ["Mighty Bash"] = 5211,
        ["Disorienting Roar"] = 99,
        ---------------------------
        --Restoration
        ---------------------------
        ["Innervate"] = 29166,
        ["Tranquility"] = 740,
        ["Incarnation: King of the Jungle"] = 102543,
        ["Rebirth"] = 20484,
        ["Ironbark"] = 102342,
        ["Wild Mushroom: Bloom"] = 102791,
        ["Wild Mushroom"] = 145205,
        ["Swiftmend"] = 18562,
        ["Wild Growth"] = 48438,
        ["Nature's Vigil"] = 124974,
        ["Cenarion Ward"] = 102351,
        ["Force of Nature"] = 106737,
    ---------------------------
    --Mage
    ---------------------------
        ---------------------------
        --Arcane
        ---------------------------
        ["Conjure Refreshment Table"] = 43987,
        ["Alter Time"] = 108978,
        ["Blink"] = 1953,
        ["Evocation"] = 12051,
        ["Invisibility"] = 66,
        ["Time Warp"] = 80353,
        ["Counterspell"] = 2139,
        ["Mirror Image"] = 55342,
        ["Remove Curse"] = 475,
        ["Arcane Barrage"] = 44425,
        ["Arcane Power"] = 12042,
        ["Greater Invisibility"] = 110959,
        ["Presence of Mind"] = 12043,
        ["Incanter's Ward"] = 1463,
        ["Temporal Shield"] = 115610,

        ---------------------------
        --Fire
        ---------------------------
        ["Flamestrike"] = 2120,
        ["Fire Blast"] = 2136,
        ["Combustion"] = 11129,
        ["Inferno Blast"] = 108853,
        ["Dragon's Breath"] = 31661,
        ["Blazing Speed"] = 108843,
        ---------------------------
        --Frost
        ---------------------------
        ["Deep Freeze"] = 44572,
        ["Ice Block"] = 45438,
        ["Frost Nova"] = 122,
        ["Cone of Cold"] = 120,
        ["Frozen Orb"] = 84714,
        ["Icy Veins"] = 12472,
        ["Summon Water Elemental"] = 31687,
        ["Ice Floes"] = 108839,
        ["Ring of Frost"] = 113724,
        ["Frost Bomb"] = 112948,
        ["Frostjaw"] = 102051,
        ["Cold Snap"] = 11958,
        ["Ice Barrier"] = 11426,
        ["Ice Ward"] = 111264,
        
    --Portals
    ["Ancient Portal: Dalaran"] = 120146,
    ["Portal: Vale of Eternal Blossoms"] = 132620 or 132626,
    ["Portal: Tol Barad"] = 88345 or 88346,
    ["Portal: Stonard"] = 49361,
    ["Portal: Theramore"] = 49360,
    --["Portal: Dalaran"] = 53142,
    ["Portal: Darnassus"] = 11419,
    ["Portal: Exodar"] = 32266,
    ["Portal: Ironforge"] = 11416,
    ["Portal: Orgrimmar"] = 11417,
    ["Portal: Shattrath"] = 33691 or 35717,
    ["Portal: Silvermoon"] = 32267,
    ["Portal: Stormwind"] = 10059,
    ["Portal: Thunder Bluff"] = 11420,
    ["Portal: Undercity"] = 11418,
    ---------------------------
    --Shaman
    ---------------------------
        ---------------------------
        --Elemental
        ---------------------------
        ["Ascendance"] = 114049,
        ["Stormlash Totem"] = 120668,
        ["Chain Lightning"] = 421,
        ["Wind Shear"] = 57994,
        ["Capacitor Totem"] = 108269,
        ["Earth Elemental Totem"] = 2062,
        ["Grounding Totem"] = 8177,
        ["Tremor Totem"] = 8143,
        ["Hex"] = 51514,
        ["Thunderstorm"] = 51490,
        ["Lava Burst"] = 51505,
        ["Shamanistic Rage"] = 30823,
        ["Earthquake"] = 61882,
        ["Elemental Blast"] = 117014,
        ["Earthgrab Totem"] = 51485,
        ["Call of the Elements"] = 108285,
        ["Totemic Projection"] = 108287,
        ["Elemental Mastery"] = 16166,
        ---------------------------
        --Enhancement
        ---------------------------
        ["Unleash Elements"] = 73680,
        ["Stormblast"] = 115356,
        ["Astral Recall"] = 556,
        ["Primal Strike"] = 73899,
        ["Fire Elemental Totem"] = 2894,
        ["Earthbind Totem"] = 2484,
        ["Unleash Life"] = 73685,
        ["Stormstrike"] = 17364,
        ["Feral Spirit"] = 51533,
        ["Lava Lash"] = 60103,
        ["Fire Nova"] = 1535,
        ["Spirit Walk"] = 58875,
        ["Stone Bulwark Totem"] = 108270,
        ["Astral Shift"] = 108271,
        ["Windwalk Totem"] = 108273,
        ---------------------------
        --Restoration
        ---------------------------
        ["Spiritwalker's Grace"] = 79206,
        ["Healing Tide Totem"] = 108280,
        ["Healing Stream Totem"] = 5394,
        ["Cleanse Spirit"] = 51886,
        ["Healing Rain"] = 73920,
        ["Purify Spirit"] = 77130,
        ["Mana Tide Totem"] = 16190,
        ["Riptide"] = 61295,
        ["Spirit Link Totem"] = 98008,
        ["Ancestral Guidance"] = 108281,
        ["Ancestral Swiftness"] = 16188,
        ---------------------------
        --Extra Spells (Shaman)
        ---------------------------
            ---------------------------
            --Lust
            ---------------------------
            ["Heroism"] = 32182,
            ["Bloodlust"] = 2825,
            ---------------------------
            --Shocks
            ---------------------------
            ["Earth Shock"] = 8042,
            ["Flame Shock"] = 8050,
            ["Frost Shock"] = 8056,
    ---------------------------
    --Hunter
    ---------------------------
        ---------------------------
        --Beast Mastery
        ---------------------------
        ["Stampede"] = 121818,
        ["Camouflage"] = 51753,
        ["Feed Pet"] = 6991,
        ["Master's Call"] = 53271,
        ["Kill Command"] = 34026,
        ["Bestial Wrath"] = 19574,
        ["Dire Beast"] = 120679,
        ["A Murder of Crows"] = 131894,
        ["Lynx Rush"] = 120697,
        ["Intimidation"] = 19577,
        ---------------------------
        --Marksmanship
        ---------------------------
        ["Counter Shot"] = 147362,
        ["Distracting Shot"] = 20736,
        ["Scatter Shot"] = 19503,
        ["Kill Shot"] = 53351,
        ["Rapid Fire"] = 3045,
        ["Concussive Shot"] = 5116,
        ["Flare"] = 1543,
        ["Chimera Shot"] = 53209,
        ["Silencing Shot"] = 34490,
        ["Barrage"] = 120360,
        ["Binding Shot"] = 109248,
        ["Powershot"] = 109259,
        ---------------------------
        --Survival
        ---------------------------
        ["Deterrence"] = 19263,
        ["Misdirection"] = 34477,
        ["Disengage"] = 781,
        ["Feign Death"] = 5384,
        ["Explosive Shot"] = 53301,
        ["Exhilaration"] = 109304,
        ["Glaive Toss"] = 117050,
        ["Wyvern Sting"] = 19386,
        ["Fervor"] = 82726,
        ---------------------------
        --Extra Spells (Hunter)
        ---------------------------
            ---------------------------
            --Traps
            ---------------------------
            ["Explosive Trap"] = 13813,
            ["Freezing Trap"] = 1499,
            ["Frost Trap"] = 13809,
            ["Snake Trap"] = 34600,
            ["Immolation Trap"] = 13795,
            ["Trap Launcher: Explosive Trap"] = 425777,
    ---------------------------
    --Paladin
    ---------------------------
        ---------------------------
        --Holy
        ---------------------------
        ["Word of Glory"] = 85673 or 136494,
        ["Cleanse"] = 4987,
        ["Lay on Hands"] = 633,
        ["Divine Plea"] = 54428,
        ["Holy Shock"] = 20473,
        ["Divine Favor"] = 31842,
        ["Eternal Flame"] = 114163,
        ---------------------------
        --Protection
        ---------------------------
        ["Blinding Light"] = 115750,
        ["Devotion Aura"] = 31821,
        ["Divine Protection"] = 498,
        ["Hand of Sacrifice"] = 6940,
        ["Reckoning"] = 62124,
        ["Hand of Salvation"] = 1038,
        ["Divine Shield"] = 642,
        ["Hand of Protection"] = 1022,
        ["Hand of Freedom"] = 1044,
        ["Righteous Fury"] = 25780,
        ["Hammer of Justice"] = 853,
        ["Turn Evil"] = 10326,
        ["Shield of the Righteous"] = 53600,
        ["Avenger's Shield"] = 31935,
        ["Ardent Defender"] = 31850,
        ["Hammer of the Righteous"] = 53595,
        ["Guardian of Ancient Kings"] = 86669 or 86659 or 86698,
        ["Consecration"] = 26573,
        ["Holy Wrath"] = 119072,
        ["Sacred Shield"] = 20925,
        ["Fist of Justice"] = 105593,
        ["Hand of Purity"] = 114039,
        ---------------------------
        --Retribution
        ---------------------------
        ["Judgment"] = 20271,
        ["Hammer of Wrath"] = 24275,
        ["Avenging Wrath"] = 31884,
        ["Rebuke"] = 96231,
        ["Crusader Strike"] = 35395,
        ["Holy Prism"] = 114165 or 114852 or 114871,
        ["Exorcism"] = 879,
        ["Light's Hammer"] = 114158,
        ["Holy Avenger"] = 105809,
        ["Execution Sentence"] = 114157,
        ["Repentance"] = 20066,
        ["Speed of Light"] = 85499,
    ---------------------------
    --Death Knight
    ---------------------------
        ---------------------------
        --Blood
        ---------------------------
        ["Strangulate"] = 47476,
        ["Outbreak"] = 77575,
        ["Bone Shield"] = 49222,
        ["Soul Reaper"] = 114866 or 130735 or 130736,
        ["Dancing Rune Weapon"] = 49028,
        ["Vampiric Blood"] = 55233,
        ["Rune Tap"] = 48982,
        ["Dark Command"] = 56222,
        ["Gorefiend's Grasp"] = 108199,
        ["Asphyxiate"] = 108194,
        ["Death's Advance"] = 96268,
        ---------------------------
        --Frost
        ---------------------------
        ["Icebound Fortitude"] = 48792,
        ["Empower Rune Weapon"] = 47568,
        ["Mind Freeze"] = 47528,
        ["Horn of Winter"] = 57330,
        ["Pillar of Frost"] = 51271,
        ["Lichborne"] = 49039,
        ["Remorseless Winter"] = 108200,
        ---------------------------
        --Unholy
        ---------------------------
        ["Dark Simulacrum"] = 77606,
        ["Death and Decay"] = 43265,
        ["Army of the Dead"] = 42650,
        ["Anti-Magic Shell"] = 48707,
        ["Death Grip"] = 49576,
        ["Raise Dead"] = 46584,
        ["Raise Ally"] = 61999,
        ["Death Gate"] = 50977,
        ["Unholy Frenzy"] = 49016,
        ["Summon Gargoyle"] = 49206,
        ["Unholy Blight"] = 115989,
        ["Plague Leech"] = 123693,
        ["Desecrated Ground"] = 108201,
        ["Death Pact"] = 48743,
        ["Anti-Magic Zone"] = 51052,
    ---------------------------
    --Monk
    ---------------------------
        ---------------------------
        --Brewmaster
        ---------------------------
        ["Touch of Death"] = 115080,
        ["Zen Meditation"] = 115176,
        ["Fortifying Brew"] = 115203,
        ["Provoke"] = 115546,
        ["Nimble Brew"] = 137562,
        ["Grapple Weapon"] = 117368,
        ["Summon Black Ox Statue"] = 115315,
        ["Keg Smash"] = 121253,
        ["Guard"] = 115295,
        ["Avert Harm"] = 115213,
        ["Elusive Brew"] = 115308,
        ["Clash"] = 122057,
        ["Diffuse Magic"] = 122783,
        ["Tiger's Lust"] = 116841,
        ["Dampen Harm"] = 122278,

        ---------------------------
        --Mistweaver
        ---------------------------
        ["Transcendence"] = 101643,
        ["Zen Pilgrimage"] = 126892,
        ["Detox"] = 115450,
        ["Transcendence: Transfer"] = 119996,
        ["Life Cocoon"] = 116849,
        ["Renewing Mist"] = 115151,
        ["Thunder Focus Tea"] = 116680,
        ["Revival"] = 115310,
        ["Summon Jade Serpent Statue"] = 115313,
        ["Ring of Peace"] = 116844,
        ["Chi Wave"] = 115098,
        ["Chi Brew"] = 115399,
        ["Chi Torpedo"] = 115008,
        ["Zen Sphere"] = 124081,
        ---------------------------
        --Windwalker
        ---------------------------
        ["Expel Harm"] = 115072,
        ["Spear Hand Strike"] = 116705,
        ["Paralysis"] = 115078,
        ["Roll"] = 109132,
        ["Leer of the Ox"] = 115543,
        ["Fists of Fury"] = 113656,
        ["Rising Sun Kick"] = 107428,
        ["Touch of Karma"] = 122470,
        ["Flying Serpent Kick"] = 101545,
        ["Tigereye Brew"] = 116740,
        ["Energizing Brew"] = 115288,
        ["Invoke Xuen, the White Tiger"] = 123904,
        ["Rushing Jade Wind"] = 116847,
        ["Leg Sweep"] = 119381,
        ["Chi Burst"] = 123986,
        ["Charging Ox Wave"] = 119392,
    ---------------------------
    --Shared-spell-Names
    ---------------------------
        ---------------------------
        --ID's (Druid)
        ---------------------------
        ["Nature's Swiftness"] = 132158,
    ---------------------------
    --Racials
    ---------------------------
        ---------------------------
        --Draenei
        ---------------------------
        ["Gift of the Naaru"] = 59543 or 121093 or 28880 or 59542 or 59544 or 59547 or 59548 or 59545,
        ---------------------------
        --Blood Elf
        ---------------------------
        ["Arcane Torrent"] = 50613 or 129597 or 25046 or 28730 or 69179 or 80483,
        ---------------------------
        --Undead
        ---------------------------
        ["Cannibalize"] = 20577,
        ["Will of the Forsaken"] = 7744,
        ---------------------------
        --Orc
        ---------------------------
        ["Blood Fury"] = 20572 or 33702 or 33697,
        ---------------------------
        --Troll
        ---------------------------
        ["Berserking"] = 26297,
        ---------------------------
        --Tauren
        ---------------------------
        ["War Stomp"] = 20549,
        ---------------------------
        --Human
        ---------------------------
        ["Will to Survive"] = 59752,
        ---------------------------
        --Night Elf
        ---------------------------
        ["Shadowmeld"] = 58984,
        ---------------------------
        --Gnome
        ---------------------------
        ["Escape Artist"] = 20589,
        ---------------------------
        --Dwarf
        ---------------------------
        ["Stoneform"] = 20594,
        ---------------------------
        --Goblin
        ---------------------------
        ["Pack Hobgoblin"] = 69046,
        ["Rocket Barrage"] = 69041,
        ["Rocket Jump"] = 69070,
        ---------------------------
        --Worgen
        ---------------------------
        ["Darkflight"] = 68992,
        ["Two Forms"] = 68996,
        ---------------------------
        --Pandaren
        ---------------------------
        ["Quaking Palm"] = 107079,
--Extra Spells (Cooldown 1.5s or lower)
            ---------------------------
            --Monk (Brewmaster)
            ---------------------------
            --[[
            ["Purifying Brew"] = 119582,
            ]]
}
end