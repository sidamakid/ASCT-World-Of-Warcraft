local ASCT = ASCT_Table
if
ASCT.Client["isWrathWow"] and ASCT.Client.tocversion["is30402"]
then
    ASCT.Database.Spells["ASCT_Locale"] = {--Advanced Scrolling Combat Text Localizing Table
    --Rogue
    ["Adrenaline Rush"] = 13750,
    ["Blade Flurry"] = 13877,
    ["Blind"] = 2094,
    ["Cloak of Shadows"] = 31224,
    ["Cold Blood"] = 14177,
    ["Dismantle"] = 51722,
    ["Distract"] = 1725,
    ["Evasion"] = 5277,
    ["Feint"] = 1966,
    ["Ghostly Strike"] = 14278,
    ["Gouge"] = 1776,
    ["Kick"] = 1766,
    ["Kidney Shot"] = 408,
    ["Killing Spree"] = 51690,
    ["Premeditation"] = 14183,
    ["Preparation"] = 14185,
    ["Riposte"] = 14251,
    ["Shadow Dance"] = 51713,
    ["Shadowstep"] = 36554,
    ["Sprint"] = 2983,
    ["Stealth"] = 1784,
    ["Tricks of the Trade"] = 57934,
    ["Vanish"] = 1856,
    --Priest
    ["Shadow Word: Death"] = 32379,
    ["Fade"] = 586,
    ["Circle of Healing"] = 34861,
    ["Desperate Prayer"] = 19236,
    ["Devouring Plague"] = 2944,
    ["Dispersion"] = 47585,
    ["Divine Hymn"] = 64843,
    ["Fear Ward"] = 6346,
    ["Guardian Spirit"] = 47788,
    ["Holy Fire"] = 14914,
    ["Hymn of Hope"] = 64901,
    ["Inner Focus"] = 14751,
    ["Lightwell"] = 724,
    ["Mind Blast"] = 8092,
    ["Pain Suppression"] = 33206,
    ["Penance"] = 47540,
    ["Power Infusion"] = 10060,
    ["Power Word: Shield"] = 17,
    ["Prayer of Mending"] = 33076,
    ["Psychic Horror"] = 64044,
    ["Psychic Scream"] = 8122,
    ["Shadowfiend"] = 34433,
    ["Silence"] = 15487,
    --Warrior
    ["Berserker Rage"] = 18499,
    ["Bladestorm"] = 46924,
    ["Bloodrage"] = 2687,
    ["Bloodthirst"] = 23881,
    ["Challenging Shout"] = 1161,
    ["Charge"] = 100,
    ["Concussion Blow"] = 12809,
    ["Death Wish"] = 12292,
    ["Disarm"] = 676,
    ["Enraged Regeneration"] = 55694,
    ["Heroic Fury"] = 60970,
    ["Heroic Throw"] = 57755,
    ["Intercept"] = 20252,
    ["Intervene"] = 3411,
    ["Intimidating Shout"] = 5246,
    ["Last Stand"] = 12975,
    ["Mocking Blow"] = 694,
    ["Mortal Strike"] = 12294,
    ["Overpower"] = 7384,
    ["Pummel"] = 6552,
    ["Recklessness"] = 1719,
    ["Retaliation"] = 20230,
    ["Revenge"] = 6572,
    ["Shattering Throw"] = 64382,
    ["Shield Bash"] = 72,
    ["Shield Block"] = 2565,
    ["Shield Slam"] = 23922,
    ["Shield Wall"] = 871,
    ["Shockwave"] = 46968,
    ["Spell Reflection"] = 23920,
    ["Sweeping Strikes"] = 12328,
    ["Taunt"] = 355,
    ["Thunder Clap"] = 6343,
    ["Whirlwind"] = 1680,
    --Warlock
    ["Challenging Howl"] = 59671,
    ["Chaos Bolt"] = 50796,
    ["Conflagrate"] = 17962,
    ["Curse of Doom"] = 603,
    ["Death Coil"] = 6789,
    ["Demon Charge"] = 54785,
    ["Demonic Circle: Teleport"] = 48020,
    ["Demonic Empowerment"] = 47193,
    ["Fel Domination"] = 18708,
    ["Haunt"] = 48181,
    ["Howl of Terror"] = 5484,
    ["Immolation Aura"] = 50589,
    ["Inferno"] = 1122,
    ["Metamorphosis"] = 47241,
    ["Ritual of Doom"] = 18540,
    ["Ritual of Souls"] = 29893,
    ["Ritual of Summoning"] = 698,
    ["Shadow Cleave"] = 50581,
    ["Shadowburn"] = 17877,
    ["Shadowflame"] = 47897,
    ["Shadow Ward"] = 6229,
    ["Shadowfury"] = 30283,
    ["Soulshatter"] = 29858,
    --Druid
    ["Barkskin"] = 22812,
    ["Bash"] = 5211,
    ["Berserk"] = 50334,
    ["Challenging Roar"] = 5209,
    ["Cower"] = 8998,
    ["Dash"] = 1850,
    ["Enrage"] = 5229,
    ["Faerie Fire (Feral)"] = 16857,
    ["Feral Charge - Bear"] = 16979,
    ["Feral Charge - Cat"] = 49376,
    ["Force of Nature"] = 33831,
    ["Frenzied Regeneration"] = 22842,
    ["Growl"] = 6795,
    ["Innervate"] = 29166,
    ["Maim"] = 22570,
    ["Mangle (Bear)"] = 33878,
    ["Mangle (Cat)"] = 33876,
    ["Nature's Grasp"] = 16689,
    ["Prowl"] = 5215,
    ["Rebirth"] = 20484,
    ["Starfall"] = 48505,
    ["Tiger's Fury"] = 5217,
    ["Swiftmend"] = 18562,
    ["Survival Instincts"] = 61336,
    ["Tranquility"] = 740,
    ["Typhoon"] = 50516,
    ["Wild Growth"] = 48438,
    --Mage
    ["Arcane Barrage"] = 44425,
    ["Arcane Power"] = 12042,
    ["Blast Wave"] = 11113,
    ["Blink"] = 1953,
    ["Cold Snap"] = 11958,
    ["Combustion"] = 11129,
    ["Cone of Cold"] = 120,
    ["Counterspell"] = 2139,
    --Portals
    ["Portal: Darnassus"] = 11419,
    ["Portal: Exodar"] = 32266,
    ["Portal: Ironforge"] = 11416,
    ["Portal: Orgrimmar"] = 11417,
    ["Portal: Shattrath"] = 33691 or 35717,
    ["Portal: Silvermoon"] = 32267,
    ["Portal: Stormwind"] = 10059,
    ["Portal: Thunder Bluff"] = 11420,
    ["Portal: Undercity"] = 11418,
    --Mage-Countined
    ["Deep Freeze"] = 44572,
    ["Dragon's Breath"] = 31661,
    ["Evocation"] = 12051,
    ["Fire Blast"] = 2136,
    ["Fire Ward"] = 543,
    ["Frost Nova"] = 122,
    ["Frost Ward"] = 6143,
    ["Ice Barrier"] = 11426,
    ["Ice Block"] = 45438,
    ["Icy Veins"] = 12472,
    ["Invisibility"] = 66,
    ["Presence of Mind"] = 12043,
    ["Ritual of Refreshment"] = 43987,
    ["Summon Water Elemental"] = 31687,
    --Shaman
    ["Astral Recall"] = 556,
    ["Chain Lightning"] = 421,
    ["Earth Elemental Totem"] = 2062,
    ["Earthbind Totem"] = 2484,
    ["Elemental Mastery"] = 16166,
    ["Feral Spirit"] = 51533,
    ["Fire Elemental Totem"] = 2894,
    ["Fire Nova"] = 1535,
    ["Grounding Totem"] = 8177,
    ["Hex"] = 51514,
    ["Lava Burst"] = 51505,
    ["Lava Lash"] = 60103,
    ["Mana Tide Totem"] = 16190,
    ["Riptide"] = 61295,
    --Shaman-Shocks
    ["Earth Shock"] = 8042,
    ["Flame Shock"] = 8050,
    ["Frost Shock"] = 8056,
    --Shaman-Lust
    ["Bloodlust"] = 2825,
    ["Heroism"] = 32182,
    --Shaman-Countined
    ["Shamanistic Rage"] = 30823,
    ["Stoneclaw Totem"] = 10428,
    ["Stormstrike"] = 17364,
    ["Thunderstorm"] = 51490,
    ["Tidal Force"] = 55198,
    ["Wind Shear"] = 57994,
    --Hunter
    ["Aimed Shot"] = 19434,
    ["Arcane Shot"] = 3044,
    ["Bestial Wrath"] = 19574,
    ["Black Arrow"] = 3674,
    ["Call Stabled Pet"] = 62757,
    ["Chimera Shot"] = 53209,
    ["Concussive Shot"] = 5116,
    ["Counterattack"] = 19306,
    ["Deterrence"] = 19263,
    ["Disengage"] = 781,
    ["Distracting Shot"] = 20736,
    ["Explosive Shot"] = 53301,
    ["Feed Pet"] = 6991,
    ["Feign Death"] = 5384,
    ["Silencing Shot"] = 34490,
    ["Tranquilizing Shot"] = 19801,
    --Traps
    ["Explosive Trap"] = 13813,
    ["Freezing Trap"] = 1499,
    ["Frost Trap"] = 13809,
    ["Snake Trap"] = 34600,
    ["Immolation Trap"] = 13795,
    --Hunter-Countined
    ["Flare"] = 1543,
    ["Freezing Arrow"] = 60192,
    ["Intimidation"] = 19577,
    ["Kill Command"] = 34026,
    ["Kill Shot"] = 53351,
    ["Master's Call"] = 53271,
    ["Misdirection"] = 34477,
    ["Mongoose Bite"] = 1495,
    ["Multi-Shot"] = 2643,
    ["Rapid Fire"] = 3045,
    ["Raptor Strike"] = 2973,
    ["Scare Beast"] = 1513,
    ["Scatter Shot"] = 19503,
    ["Wyvern Sting"] = 19386,
    --Paladin
    ["Aura Mastery"] = 31821,
    ["Avenger's Shield"] = 31935,
    ["Consecration"] = 26573,
    ["Crusader Strike"] = 35395,
    ["Divine Favor"] = 20216,
    ["Divine Illumination"] = 31842,
    ["Divine Intervention"] = 19752,
    ["Divine Plea"] = 54428,
    ["Divine Protection"] = 498,
    ["Divine Sacrifice"] = 64205,
    ["Divine Shield"] = 642,
    ["Divine Storm"] = 53385,
    ["Exorcism"] = 879,
    ["Hammer of Justice"] = 853,
    ["Hammer of the Righteous"] = 53595,
    ["Hammer of Wrath"] = 24275,
    ["Hand of Freedom"] = 1044,
    ["Hand of Protection"] = 1022,
    ["Hand of Reckoning"] = 62124,
    ["Hand of Sacrifice"] = 6940,
    ["Hand of Salvation"] = 1038,
    ["Holy Shock"] = 20473,
    ["Holy Wrath"] = 2812,
    ["Holy Shield"] = 20925,
    ["Avenging Wrath"] = 31884,
    --Judgement
    ["Judgement of Justice"] = 53407,
    ["Judgement of Light"] = 20271,
    ["Judgement of Wisdom"] = 53408,
    --Paladin-Countined
    ["Lay on Hands"] = 633,
    ["Repentance"] = 20066,
    ["Righteous Defense"] = 31789,
    ["Shield of Righteousness"] = 53600,
    --Death_Knight Spells
    ["Anti-Magic Shell"] = 48707,
    ["Anti-Magic Zone"] = 51052,
    ["Bone Shield"] = 49222,
    ["Corpse Explosion"] = 49158,
    ["Dancing Rune Weapon"] = 49028,
    ["Death Gate"] = 50977,
    ["Deathchill"] = 49796,
    ["Ghoul Frenzy"] = 63560,
    ["Howling Blast"] = 49184,
    ["Hungering Cold"] = 49203,
    ["Strangulate"] = 47476,
    ["Death Pact"] = 48743,
    ["Blood Tap"] = 45529,
    ["Icebound Fortitude"] = 48792,
    ["Empower Rune Weapon"] = 47568,
    ["Horn of Winter"] = 57330,
    ["Mind Freeze"] = 47528,
    ["Dark Command"] = 56222,
    ["Unholy Frenzy"] = 49016,
    ["Rune Tap"] = 48982,
    ["Death Grip"] = 49576,
    ["Raise Ally"] = 61999,
    ["Raise Dead"] = 46584,
    ["Army of the Dead"] = 42650,
    ["Death and Decay"] = 43265,
    ["Lichborne"] = 49039,
    ["Mark of Blood"] = 49005,
    ["Unbreakable Armor"] = 51271,
    ["Summon Gargoyle"] = 49206,
    ["Vampiric Blood"] = 55233,
    --Shared-spell-Names
    ["Nature's Swiftness"] = 17116 or 16188,
    --Racials
    ["Arcane Torrent"] = 25046 or 28730 or 50613,
    ["Berserking"] = 26297,
    ["Blood Fury"] = 20572 or 33697 or 33702,
    ["Cannibalize"] = 20577,
    ["Escape Artist"] = 20589,
    ["Will to Survive"] = 59752,
    ["Gift of the Naaru"] = 28880 or 59542 or 59543 or 59544 or 59545 or 59547 or 59548,
    ["Shadowmeld"] = 58984,
    ["Stoneform"] = 20594,
    ["War Stomp"] = 20549,
    ["Will of the Forsaken"] = 7744,
}
end