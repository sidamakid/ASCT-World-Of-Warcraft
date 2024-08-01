local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isDragonFlightWow"] and ASCT.Client.tocversion["is100205"] then
ASCT.Database.Spells["ASCT_Locale"] = {--Advanced Scrolling Combat Text Localizing Table
      --Rogue
            --Assassination
            ["Garrote"] = 703,
            ["Deathmark"] = 360194,
            ["Exsanguinate"] = 200806,
            ["Sepsis"] = 385408,
            ["Serrated Bone Spike"] = 385424,
            ["Indiscriminate Carnage"] = 381802,
            ["Kingsbane"] = 385627,
            ["Thistle Tea"] = 381623,
            ["Cold Blood"] = 382245,
            ["Crimson Vial"] = 185311,
            ["Kidney Shot"] = 408,
            --PVP Talents
            ["Smoke Bomb"] = 212182 or 359053,
            ["Death from Above"] = 269513,
            --Outlaw
            ["Marked for Death"] = 137619,
            ["Gouge"] = 1776,
            ["Feint"] = 1966,
            ["Evasion"] = 5277,
            ["Shiv"] = 5938,
            ["Sprint"] = 2983,
            ["Kick"] = 1766,
            ["Between the Eyes"] = 315341,
            ["Dreadblades"] = 343142,
            ["Killing Spree"] = 51690,
            ["Blade Flurry"] = 13877,
            ["Adrenaline Rush"] = 13750,
            ["Grappling Hook"] = 195457,
            ["Blade Rush"] = 271877,
            ["Ghostly Strike"] = 196937,
            ["Keep It Rolling"] = 381989,
            ["Roll the Bones"] = 315508,
            --PVP Talents
            ["Dismantle"] = 207777,
            --Subtlety
            ["Echoing Reprimand"] = 385616,
            ["Shadowstep"] = 36554,
            ["Tricks of the Trade"] = 57934,
            ["Cloak of Shadows"] = 31224,
            ["Blind"] = 2094,
            ["Vanish"] = 1856,
            ["Shroud of Concealment"] = 114018,
            ["Stealth"] = 1784,
            ["Distract"] = 1725,
            ["Shadow Dance"] = 185313,
            ["Shadow Blades"] = 121471,
            ["Symbols of Death"] = 212283,
            ["Secret Technique"] = 280719,
            ["Flagellation"] = 384631,
            ["Shuriken Tornado"] = 277925,
            --PVP Talents
            ["Shadowy Duel"] = 269513,
      --Priest
            --Discipline
            ["Power Word: Life"] = 373481,
            ["Mass Dispel"] = 32375,
            ["Power Infusion"] = 10060,
            ["Penance"] = 47540,
            ["Purify"] = 527,
            ["Power Word: Shield"] = 17,
            ["Angelic Feather"] = 121536,
            ["Power Word: Radiance"] = 194509,
            ["Luminous Barrier"] = 271466,
            ["Evangelism"] = 246287,
            ["Shadow Covenant"] = 314867,
            ["Rapture"] = 47536,
            ["Power Word: Barrier"] = 62618,
            ["Schism"] = 214621,
            ["Pain Suppression"] = 33206,
            --PVP Talents
            ["Dark Archangel"] = 197871,
            ["Archangel"] = 197862,
            --Holy
            ["Divine Star"] = 110744,
            ["Holy Fire"] = 14914,
            ["Halo"] = 120517,
            ["Leap of Faith"] = 73325,
            ["Desperate Prayer"] = 19236,
            ["Apotheosis"] = 200183,
            ["Lightwell"] = 372835,
            ["Holy Word: Salvation"] = 265202,
            ["Divine Word"] = 372760,
            ["Holy Word: Serenity"] = 2050,
            ["Symbol of Hope"] = 64901,
            ["Divine Hymn"] = 64843,
            ["Empyreal Blaze"] = 372616,
            ["Prayer of Mending"] = 33076,
            ["Circle of Healing"] = 204883,
            ["Holy Word: Sanctify"] = 34861,
            ["Holy Word: Chastise"] = 88625,
            ["Guardian Spirit"] = 47788,
            --PVP Talents
            ["Ray of Hope"] = 197268,
            ["Greater Heal"] = 289666,
            ["Divine Ascension"] = 328530,
            ["Holy Ward"] = 213610,
            --Shadow
            ["Dominate Mind"] = 205364,
            ["Void Shift"] = 108968,
            ["Mindgames"] = 375901,
            ["Shadowfiend"] = 34433,
            ["Vampiric Embrace"] = 15286,
            ["Void Tendrils"] = 108920,
            ["Fade"] = 586,
            ["Psychic Scream"] = 8122,
            ["Void Bolt"] = 228266,
            ["Shadow Word: Death"] = 32379,
            ["Mind Blast"] = 8092,
            ["Mind Soothe"] = 453,
            ["Dispersion"] = 47585,
            ["Void Torrent"] = 263165,
            ["Dark Ascension"] = 391109,
            ["Mindbender"] = 123040 or 200174,
            ["Shadow Crash"] = 205385,
            ["Void Eruption"] = 228260,
            ["Psychic Horror"] = 64044,
            ["Silence"] = 15487,
            --PVP Talents
            ["Thoughtsteal"] = 316262,
            ["Inner Light and Shadow"] = 356085,
            ["Psyfiend"] = 211522,
      --Warrior
            --Arms
            ["Battle Shout"] = 6673,
            ["Charge"] = 100,
            ["Colossus Smash"] = 167105,
            ["Die by the Sword"] = 118038,
            ["Overpower"] = 7384,
            ["Heroic Throw"] = 57755,
            ["Titanic Throw"] = 384090,
            ["Shattering Throw"] = 64382,
            ["Berserker Shout"] = 384100,
            ["Rallying Cry"] = 97462,
            ["Wrecking Throw"] = 384110,
            ["Impending Victory"] = 202168,
            ["Mortal Strike"] = 12294,            
            ["Warbreaker"] = 262161,
            ["Bladestorm"] = 227847,
            ["Skullsplitter"] = 260643,
            ["Cleave"] = 845,
            ["Sweeping Strikes"] = 260708,
            ["Champion's Spear"] = 376079,
            --PVP Talents
            ["War Banner"] = 236320,
            ["Sharpen Blade"] = 198817,
            ["Duel"] = 236273,
            --Fury
            ["Execute"] = 163201,
            ["Piercing Howl"] = 12323,
            ["Pummel"] = 6552,
            ["Thunder Clap"] = 396719,
            ["Berserker Rage"] = 18499,
            ["Intervene"] = 3411,
            ["Bloodthirst"] = 23881,
            ["Onslaught"] = 315720,
            ["Odyn's Fury"] = 385059,
            ["Recklessness"] = 1719,
            ["Enraged Regeneration"] = 184364,
            ["Raging Blow"] = 85288,
            ["Thunderous Roar"] = 384318,
            ["Avatar"] = 107574,
            ["Intimidating Shout"] = 5246,
            ["Bitter Immunity"] = 383762,
            --PVP Talents
            ["Death Wish"] = 199261,
            ["Bloodrage"] = 329038,
            --Protection
            ["Shield Block"] = 2565,
            ["Heroic Leap"] = 6544,
            ["Shield Slam"] = 23922,
            ["Taunt"] = 355,
            ["Spell Reflection"] = 23920,
            ["Last Stand"] = 12975,
            ["Ravager"] = 228920,
            ["Shield Charge"] = 385952,
            ["Spell Block"] = 392966,
            ["Shield Wall"] = 871,
            ["Disrupting Shout"] = 386071,
            ["Challenging Shout"] = 1161,
            ["Demoralizing Shout"] = 1160,
            ["Shockwave"] = 46968,
            ["Storm Bolt"] = 107570,
            --PVP Talents
            ["Disarm"] = 236077,
            ["Oppressor"] = 205800,
            ["Shield Bash"] = 198912,
            ["Bodyguard"] = 213871,
            ["Dragon Charge"] = 206572,
      --Warlock
            --Affliction
            ["Ritual of Summoning"] = 698,
            ["Create Soulwell"] = 29893,
            ["Soulstone"] = 20707,
            ["Dark Pact"] = 108416,
            ["Amplify Curse"] = 328774,
            ["Mortal Coil"] = 6789,
            ["Soul Swap"] = 386951,
            ["Howl of Terror"] = 5484,
            ["Soul Rot"] = 386997,
            ["Summon Darkglare"] = 205180,
            ["Vile Taint"] = 278350,
            ["Haunt"] = 48181,
            ["Grimoire of Sacrifice"] = 108503,
            ["Phantom Singularity"] = 205179,
            --PVP Talents
            ["Nether Ward"] = 212295,
            ["Casting Circle"] = 221703,
            ["Oblivion"] = 417537,
            ["Shadow Rift"] = 353294,
            ["Call Observer"] = 201996,
            --Demonology
            ["Soulburn"] = 385899,
            ["Fel Domination"] = 333889,
            ["Inquisitor's Gaze"] = 386344,
            ["Demonic Gateway"] = 111771,
            ["Summon Vilefiend"] = 264119,
            ["Guillotine"] = 386833,
            ["Nether Portal"] = 267217,
            ["Summon Demonic Tyrant"] = 265187,
            ["Grimoire: Felguard"] = 111898,
            ["Power Siphon"] = 264130,
            ["Demonic Strength"] = 267171,
            ["Bilescourge Bombers"] = 267211,
            ["Soul Strike"] = 264057,
            ["Call Dreadstalkers"] = 104316,
            --PVP Talents
            ["Fel Obelisk"] = 353601,
            ["Call Fel Lord"] = 212459,
            ["Call Felhunter"] = 212619,
            --Destruction
            ["Ritual of Doom"] = 342601,
            ["Unending Resolve"] = 104773,
            ["Shadowflame"] = 384069,
            ["Conflagrate"] = 17962,
            ["Dimensional Rift"] = 387976,
            ["Cataclysm"] = 152108,
            ["Summon Infernal"] = 1122,
            ["Shadowburn"] = 17877,
            ["Soul Fire"] = 6353,
            ["Channel Demonfire"] = 196447,
            ["Havoc"] = 80240,
            ["Shadowfury"] = 30283,
            --PVP Talents
            ["Bane of Havoc"] = 200546,
            ["Bonds of Fel"] = 353753,
      --Druid
            --Balance
            ["Barkskin"] = 22812,
            ["Dreamwalk"] = 193753,
            ["Charm Woodland Creature"] = 127757,
            ["Mass Entanglement"] = 102359,
            ["Heart of the Wild"] = 319454,
            ["Ursol's Vortex"] = 102793,
            ["Typhoon"] = 132469,
            ["Fury of Elune"] = 202770,
            ["New Moon"] = 274281,
            ["Convoke the Spirits"] = 391528,
            ["Solar Beam"] = 78675,
            ["Force of Nature"] = 205636,
            ["Celestial Alignment"] = 194223,
            ["Wild Mushroom"] = 88747,
            ["Astral Communion"] = 202359,
            ["Warrior of Elune"] = 202425,
            --PVP Talents
            ["Faerie Swarm"] = 209749,
            --Fearl Combat
            ["Dash"] = 1850,
            ["Thrash"] = 77758,
            ["Mangle"] = 33917,
            ["Prowl"] = 5215,
            ["Incapacitating Roar"] = 99,
            ["Soothe"] = 2908,
            ["Mighty Bash"] = 5211,
            ["Skull Bash"] = 106839,
            ["Tiger Dash"] = 252216,
            ["Maim"] = 22570,
            ["Frenzied Regeneration"] = 22842,
            ["Berserk"] = 106951,
            ["Feral Frenzy"] = 274837,
            ["Incarnation: Avatar of Ashamane"] = 102543 or 102558,
            ["Survival Instincts"] = 61336,
            ["Brutal Slash"] = 202028,
            ["Tiger's Fury"] = 5217,
            ["Bristling Fur"] = 155835,
            ["Rage of the Sleeper"] = 200851,
            ["Pulverize"] = 80313,
            ["Lunar Beam"] = 204066,
            --PVP Talents
            ["Alpha Challenge"] = 207017,
            ["Demoralizing Roar"] = 201664,
            ["Overrun"] = 202246,
            ["Emerald Slumber"] = 329042,
            ["Grove Protection"] = 354654,
            --Restoration
            ["Rebirth"] = 20484,
            ["Nature's Vigil"] = 124974,
            ["Renewal"] = 108238,
            ["Innervate"] = 29166,
            ["Swiftmend"] = 18562,
            ["Remove Corruption"] = 2782,
            ["Nature's Cure"] = 88423,
            ["Flourish"] = 197721,
            ["Adaptive Swarm"] = 391888,
            ["Ironbark"] = 102342,
            ["Tranquility"] = 740,
            ["Cenarion Ward"] = 102351,
            ["Invigorate"] = 392160,
            ["Overgrowth"] = 203651,
            ["Incarnation: Tree of Life"] = 33891,
            --PVP Talents
            ["Thorns"] = 305497,
      --Shaman
            --Elemental
            ["Hex"] = 51514,
            ["Flame Shock"] = 188389,
            ["Lava Burst"] = 51505,
            ["Ancestral Guidance"] = 108281,
            ["Lightning Lasso"] = 305483,
            ["Thunderstorm"] = 51490,
            ["Stormkeeper"] = 191634 or 383009,
            ["Liquid Magma Totem"] = 192222,
            ["Fire Elemental"] = 198067,
            ["Storm Elemental"] = 192249,
            ["Primordial Wave"] = 375982,
            ["Elemental Blast"] = 117014,
            ["Icefury"] = 210714,
            ["Gust of Wind"] = 192063,
            ["Wind Shear"] = 57994,
            --PVP Talents
            ["Unleash Shield"] = 356736,
            --Enhancement
            ["Astral Shift"] = 108271,
            ["Earthbind Totem"] = 2484,
            ["Earth Elemental"] = 198103,
            ["Stoneskin Totem"] = 383017,
            ["Tranquil Air Totem"] = 383019,
            ["Spirit Walk"] = 58875,
            ["Earthgrab Totem"] = 51485,
            ["Fire Nova"] = 333974,
            ["Feral Spirit"] = 51533,
            ["Crash Lightning"] = 187874,
            ["Sundering"] = 197214,
            ["Doom Winds"] = 384352,
            ["Ice Strike"] = 342240,
            ["Feral Lunge"] = 196884,
            ["Stormstrike"] = 17364,
            ["Lava Lash"] = 60103,
            ["Astral Recall"] = 556,
            ["Wind Rush Totem"] = 192077,
            ["Greater Purge"] = 378773,
            ["Tremor Totem"] = 8143,
            ["Capacitor Totem"] = 192058,
            --PVP Talents
            ["Skyfury Totem"] = 204330,
            ["Grounding Totem"] = 204336,
            ["Counterstrike Totem"] = 204331,
            ["Static Field Totem"] = 355580,
            --Restoration
            ["Ascendance"] = 114050 or 114051 or 114052,
            ["Ancestral Protection Totem"] = 207399,
            ["Cloudburst Totem"] = 157153,
            ["Downpour"] = 207778,
            ["Ever-Rising Tide"] = 382029,
            ["Healing Tide Totem"] = 108280,
            ["Healing Rain"] = 73920,
            ["Healing Stream Totem"] = 5394,
            ["Poison Cleansing Totem"] = 383013,
            ["Totemic Recall"] = 108285,
            ["Spiritwalker's Grace"] = 79206,
            ["Mana Tide Totem"] = 16191,
            ["Cleanse Spirit"] = 51886,
            ["Purify Spirit"] = 77130,
            ["Riptide"] = 61295,
            ["Unleash Life"] = 73685,
            ["Spirit Link Totem"] = 98008,
            ["Wellspring"] = 197995,
            ["Earthen Wall Totem"] = 198838,
            --PVP Talents
      --Hunter
            --Beast Mastery
            ["Mend Pet"] = 136,
            ["Exhilaration"] = 109304,
            ["Feed Pet"] = 6991,
            ["Wake Up"] = 210000,
            ["Barrage"] = 120360,
            ["Stampede"] = 201430,
            ["Intimidation"] = 19577,
            ["Misdirection"] = 34477,
            ["A Murder of Crows"] = 131894,
            ["Bestial Wrath"] = 19574,
            ["Dire Beast"] = 120679,
            ["Bloodshed"] = 321530,
            ["Barbed Shot"] = 217200,
            --PVP Talents
            ["Dire Beast: Basilisk"] = 205691,
            ["Roar of Sacrifice"] = 53480,
            ["Dire Beast: Hawk"] = 208652,
            ["Wild Kingdom"] = 356707,
            --Marksmanship
            ["Flare"] = 1543,
            ["Death Chakram"] = 325028 or 375891,
            ["Disengage"] = 781,
            ["Wailing Arrow"] = 355589 or 392060 or 392060,
            ["Scatter Shot"] = 213691,
            ["Explosive Shot"] = 212431,
            ["Tranquilizing Shot"] = 19801,
            ["Survival of the Fittest"] = 264735,
            ["Concussive Shot"] = 5116,
            ["Kill Shot"] = 53351,
            ["Rapid Fire"] = 257044,
            ["Trueshot"] = 288613,
            ["Volley"] = 260243,
            ["Bursting Shot"] = 186387,
            ["Double Tap"] = 260402,
            ["Aimed Shot"] = 19434,
            --PVP Talents
            ["Sniper Shot"] = 203155,
            ["Chimaeral Sting"] = 356719,
            --Survival
            ["Freezing Trap"] = 187650,
            ["Feign Death"] = 5384,
            ["High Explosive Trap"] = 236776,
            ["Steel Trap"] = 162488,
            ["Camouflage"] = 199483,
            ["Binding Shot"] = 109248,
            ["Kill Command"] = 34026,
            ["Counter Shot"] = 147362,
            ["Tar Trap"] = 187698,
            ["Carve"] = 187708,
            ["Butchery"] = 212436,
            ["Spearhead"] = 360966,
            ["Fury of the Eagle"] = 203415,
            ["Coordinated Assault"] = 360952,
            ["Flanking Strike"] = 269751,
            ["Wildfire Bomb"] = 259495,
            ["Aspect of the Eagle"] = 186289,
            ["Harpoon"] = 190925,
            --PVP Talents
            ["Mending Bandage"] = 212640,
            ["Tracker's Net"] = 212638,
            ["Interlope"] = 248518,
            --Aspect's
            ["Aspect of the Turtle"] = 186265,
            ["Aspect of the Cheetah"] = 186257,
            ["Aspect of the Chameleon"] = 61648,
      --Paladin
            --Holy
            ["Hand of Reckoning"] = 62124,
            ["Consecration"] = 26573,
            ["Intercession"] = 391054,
            ["Cleanse"] = 4987,
            ["Rebuke"] = 96231,
            ["Turn Evil"] = 10326,
            ["Lay on Hands"] = 633,
            ["Blessing of Freedom"] = 1044,
            ["Avenging Crusader"] = 216331,
            ["Light's Hammer"] = 114158,
            ["Beacon of Virtue"] = 200025,
            ["Holy Prism"] = 114165,
            ["Blessing of Summer"] = 388007,
            ["Barrier of Faith"] = 148039,
            ["Tyr's Deliverance"] = 200652,
            ["Hand of Divinity"] = 414273,
            ["Daybreak"] = 414170,
            ["Divine Favor"] = 210294,
            ["Rule of Law"] = 214202,
            ["Aura Mastery"] = 31821,
            ["Holy Shock"] = 20473,
            ["Divine Protection"] = 498,
            --PVP Talents
            ["Shield of Virtue"] = 215652,
            --Protection
            ["Hammer of Justice"] = 853,
            ["Divine Shield"] = 642,
            ["Blinding Light"] = 115750,
            ["Blessing of Protection"] = 1022,
            ["Blessing of Sacrifice"] = 6940,
            ["Divine Steed"] = 190784,
            ["Hammer of Wrath"] = 24275,
            ["Sentinel"] = 389539,
            ["Blessing of Spellwarding"] = 204018,
            ["Moment of Glory"] = 327193,
            ["Divine Toll"] = 375576,
            ["Eye of Tyr"] = 387174,
            ["Guardian of Ancient Kings"] = 86659,
            ["Bastion of Light"] = 378974,
            ["Hammer of the Righteous"] = 53595,
            ["Ardent Defender"] = 31850,
            ["Blessed Hammer"] = 204019,
            ["Avenger's Shield"] = 31935,
            --PVP Talents
            ["Inquisition"] = 207028,
            ["Guardian of the Forgotten Queen"] = 228049,
            --Returitbion
            ["Contemplation"] = 121183,
            ["Avenging Wrath"] = 31884,
            ["Judgment"] = 20271 or 275773 or 275779,
            ["Repentance"] = 20066,
            ["Crusade"] = 231895,
            ["Justicar's Vengeance"] = 215661,
            ["Eye for an Eye"] = 205191,
            ["Radiant Decree"] = 384052,
            ["Final Reckoning"] = 343721,
            ["Execution Sentence"] = 343527,
            ["Hand of Hindrance"] = 183218,
            ["Exorcism"] = 383185,
            ["Shield of Vengeance"] = 184662,
            ["Wake of Ashes"] = 255937,
            ["Divine Hammer"] = 198034,
            ["Blade of Justice"] = 184575,
            --PVP Talents
            ["Blessing of Sanctuary"] = 210256,
      --Mage
            --Arcane
            ["Time Warp"] = 80353,
            ["Blink"] = 1953,
            ["Illusion"] = 131784,
            ["Counterspell"] = 2139,
            ["Conjure Refreshment"] = 190336,
            ["Shimmer"] = 212653,
            ["Displacement"] = 389713,
            ["Mass Polymorph"] = 383121,
            ["Invisibility"] = 66,
            ["Greater Invisibility"] = 110959,
            ["Alter Time"] = 342245,
            ["Mirror Image"] = 55342,
            ["Remove Curse"] = 475,
            ["Prismatic Barrier"] = 235450,
            ["Arcane Barrage"] = 44425,
            ["Radiant Spark"] = 376103,
            ["Evocation"] = 12051,
            ["Supernova"] = 157980,
            ["Touch of the Magi"] = 321507,
            ["Presence of Mind"] = 205025,
            ["Arcane Surge"] = 365350,
            ["Arcane Orb"] = 153626,
            ["Arcane Familiar"] = 205022,
            --PVP Talents
            ["Temporal Shield"] = 198111,
            ["Mass Invisibility"] = 198158,
            ["Arcanosphere"] = 353128,
            ["Mass Barrier"] = 414660,
            --Fire
            ["Fire Blast"] = 319836 or 108853,
            ["Dragon's Breath"] = 31661,
            ["Blast Wave"] = 157981,
            ["Alexstrasza's Fury"] = 235870,
            ["Living Bomb"] = 44457,
            ["Combustion"] = 190319,
            ["Phoenix Flames"] = 257541,
            --PVP Talents
            ["Greater Pyroblast"] = 203286,
            ["Ring of Fire"] = 353082,
            --Frost
            ["Cone of Cold"] = 120,
            ["Shifting Power"] = 382440,
            ["Frost Nova"] = 122,
            ["Ice Nova"] = 157997,
            ["Ice Block"] = 45438,
            ["Ring of Frost"] = 113724,
            ["Ice Floes"] = 108839,
            ["Summon Water Elemental"] = 31687,
            ["Ebonbolt"] = 257537,
            ["Ray of Frost"] = 205021,
            ["Comet Storm"] = 153595,
            ["Icy Veins"] = 12472,
            ["Cold Snap"] = 235219,
            ["Flurry"] = 44614,
            ["Blizzard"] = 190356,
            ["Frozen Orb"] = 84714,
            --PVP Talents
            ["Snowdrift"] = 389794,
            ["Ice Form"] = 198144,
            ["Frost Bomb"] = 390612,
            ["Ice Wall"] = 352278,
      --Demon Hunter
            --Havoc
            ["Fel Rush"] = 344865,
            ["Immolation Aura"] = 258920,
            ["Metamorphosis"] = 191427,
            ["Spectral Sight"] = 188501,
            ["The Hunt"] = 370965,
            ["Consume Magic"] = 278326,
            ["Imprison"] = 217832,
            ["Sigil of Flame"] = 204596,
            ["Glaive Tempest"] = 342817,
            ["Essence Break"] = 258860,
            ["Fel Barrage"] = 258925,
            ["Elysian Decree"] = 390163,
            ["Netherwalk"] = 196555,
            ["Fel Eruption"] = 211881,
            ["Eye Beam"] = 198013,
            --PVP Talents
            ["Rain from Above"] = 206803,
            ["Reverse Magic"] = 205604,
            --Vengeance
            ["Darkness"] = 196718,
            ["Torment"] = 185245,
            ["Throw Glaive"] = 185123,
            ["Felblade"] = 232893,
            ["Sigil of Misery"] = 207684,
            ["Chaos Nova"] = 179057,
            ["Disrupt"] = 183752,
            ["Vengeful Retreat"] = 198793,
            ["Bulk Extraction"] = 320341,
            ["Sigil of Silence"] = 202137,
            ["Fracture"] = 263642,
            ["Soul Carver"] = 214743 or 207407,
            ["Sigil of Chains"] = 202138,
            ["Fel Devastation"] = 212084,
            ["Fiery Brand"] = 204021,
            --PVP Talents
            ["Tormentor"] = 207029,
            ["Demonic Trample"] = 205629,
            ["Illidan's Grasp"] = 205630,
      --Death_Knight Spells
            --Blood
            ["Dark Command"] = 56222,
            ["Corpse Exploder"] = 127344,
            ["Death Grip"] = 49576,
            ["Sacrificial Pact"] = 327574,
            ["Mark of Blood"] = 206940,
            ["Tombstone"] = 219809,
            ["Blooddrinker"] = 206931,
            ["Consumption"] = 274156,
            ["Gorefiend's Grasp"] = 108199,
            ["Bonestorm"] = 194844,
            ["Blood Tap"] = 221699,
            ["Vampiric Blood"] = 55233,
            ["Dancing Rune Weapon"] = 49028,
            ["Blood Boil"] = 50842,
            ["Rune Tap"] = 194679,
            ["Death's Caress"] = 195292,
            --PVP Talents
            ["Murderous Intent"] = 207018,
            ["Dark Simulacrum"] = 77606,
            --Frost
            ["Lichborne"] = 49039,
            ["Soul Reaper"] = 343294,
            ["Empower Rune Weapon"] = 47568,
            ["Wraith Walk"] = 212552,
            ["Icebound Fortitude"] = 48792,
            ["Blinding Sleet"] = 207167,
            ["Anti-Magic Zone"] = 51052,
            ["Mind Freeze"] = 47528,
            ["Remorseless Winter"] = 196770,
            ["Breath of Sindragosa"] = 152279,
            ["Frostwyrm's Fury"] = 279302,
            ["Chill Streak"] = 305392,
            ["Horn of Winter"] = 57330,
            ["Pillar of Frost"] = 51271,
            --PVP Talents
            ["Strangulate"] = 47476,
            --Unholy
            ["Death's Advance"] = 48265,
            ["Death Gate"] = 50977,
            ["Raise Ally"] = 61999,
            ["Death and Decay"] = 43265,
            ["Raise Dead"] = 46584 or 46585,
            ["Abomination Limb"] = 383269,
            ["Anti-Magic Shell"] = 48707,
            ["Defile"] = 152280,
            ["Unholy Assault"] = 207289,
            ["Summon Gargoyle"] = 49206,
            ["Army of the Dead"] = 42650,
            ["Vile Contagion"] = 390279,
            ["Dark Transformation"] = 63560,
            ["Apocalypse"] = 275699,
            ["Unholy Blight"] = 115989,
            --PVP Talents
            ["Death Chain"] = 203173,
      --Monk Spells
            --Brewmaster
            ["Touch of Death"] = 322109,
            ["Touch of Fatality"] = 169340,
            ["Blackout Kick"] = 100784,
            ["Chi Torpedo"] = 115008,
            ["Summon Black Ox Statue"] = 115315,
            ["Summon White Tiger Statue"] = 388686,
            ["Chi Burst"] = 123986,
            ["Rising Sun Kick"] = 107428,
            ["Black Ox Brew"] = 115399,
            ["Rushing Jade Wind"] = 116847,
            ["Weapons of Order"] = 387184,
            ["Exploding Keg"] = 325153,
            ["Invoke Niuzao, the Black Ox"] = 132578,
            ["Breath of Fire"] = 115181,
            ["Clash"] = 324312,
            ["Zen Meditation"] = 115176,
            ["Celestial Brew"] = 322507,
            ["Keg Smash"] = 121253,
            ["Purifying Brew"] = 119582,
            --PVP Talents
            ["Admonishment"] = 207025,
            ["Mighty Ox Kick"] = 202370,
            ["Grapple Weapon"] = 233759,
            ["Nimble Brew"] = 354540,
            --Mistweaver
            ["Zen Pilgrimage"] = 126892,
            ["Summon Jade Serpent Statue"] = 115313,
            ["Expel Harm"] = 322101,
            ["Chi Wave"] = 115098,
            ["Transcendence"] = 101643,
            ["Detox"] = 218164,
            ["Tiger's Lust"] = 116841,
            ["Healing Elixir"] = 122281,
            ["Mana Tea"] = 197908,
            ["Faeline Stomp"] = 388193,
            ["Refreshing Jade Wind"] = 196725,
            ["Invoke Yu'lon, the Jade Serpent"] = 322118,
            ["Invoke Chi-Ji, the Red Crane"] = 325197,
            ["Restoral"] = 388615,
            ["Zen Pulse"] = 124081,
            ["Revival"] = 115310,
            ["Essence Font"] = 191837,
            ["Thunder Focus Tea"] = 116680,
            ["Life Cocoon"] = 116849,
            ["Renewing Mist"] = 115151,
            --PVP Talents
            ["Healing Sphere"] = 205234,
            ["Zen Focus Tea"] = 209584,
            --Windwalker
            ["Provoke"] = 115546,
            ["Leg Sweep"] = 119381,
            ["Dampen Harm"] = 122278,
            ["Spear Hand Strike"] = 116705,
            ["Paralysis"] = 115078,
            ["Ring of Peace"] = 116844,
            ["Fortifying Brew"] = 115203,
            ["Diffuse Magic"] = 122783,
            ["Storm, Earth, and Fire"] = 137639,
            ["Serenity"] = 152173,
            ["Whirling Dragon Punch"] = 152175,
            ["Invoke Xuen, the White Tiger"] = 123904,
            ["Strike of the Windlord"] = 392983,
            ["Fists of Fury"] = 113656,
            ["Flying Serpent Kick"] = 101545,
            ["Touch of Karma"] = 122470,
            --PVP Talents
            ["Avert Harm"] = 202162,
            ["Double Barrel"] = 202335,
            ["Tigereye Brew"] = 247483,
      --Evoker Spells
            --Devastation
            ["Fire Breath"] = 357208,
            ["Hover"] = 358267,
            ["Deep Breath"] = 357210,
            ["Landslide"] = 358385,
            ["Zephyr"] = 374227,
            ["Oppressing Roar"] = 372048,
            ["Rescue"] = 370665,
            ["Unravel"] = 368432,
            ["Sleep Walk"] = 360806,
            ["Cauterizing Flame"] = 374251,
            ["Quell"] = 351338,
            ["Obsidian Scales"] = 363916,
            ["Eternity Surge"] = 359073,
            ["Firestorm"] = 368847,
            ["Shattering Star"] = 370452,
            ["Dragonrage"] = 375087,
            --PVP Talents
            ["Nullifying Shroud"] = 378464,
            ["Time Stop"] = 378441,
            --Preservation
            ["Emerald Blossom"] = 355913,
            ["Blessing of the Bronze"] = 364342,
            ["Fury of the Aspects"] = 390386,
            ["Naturalize"] = 360823,
            ["Time Spiral"] = 374968,
            ["Renewing Blaze"] = 374348,
            ["Tip the Scales"] = 370553,
            ["Verdant Embrace"] = 360995,
            ["Expunge"] = 365585,
            ["Dream Breath"] = 355936,
            ["Dream Flight"] = 359816,
            ["Stasis"] = 370537,
            ["Temporal Anomaly"] = 373861,
            ["Emerald Communion"] = 370960,
            ["Time Dilation"] = 357170,
            ["Spiritbloom"] = 367226,
            ["Rewind"] = 363534,
            ["Reversion"] = 366155,
            --PVP Talents
            ["Chrono Loop"] = 383005,
            ["Swoop Up"] = 370388,
            ["Dream Projection"] = 377509,
      --Portals
      ["Portal: Shattrath"] = 33691 or 35717,
      ["Portal: Stonard"] = 49361,
      ["Portal: Theramore"] = 49360,
      ["Portal: Silvermoon"] = 32267,
      ["Portal: Exodar"] = 32266,
      ["Portal: Stormwind"] = 10059,
      ["Portal: Ironforge"] = 11416,
      ["Portal: Darnassus"] = 11419,
      ["Portal: Orgrimmar"] = 11417,
      ["Portal: Undercity"] = 11418,
      ["Portal: Thunder Bluff"] = 11420,
      ["Portal: Oribos"] = 344597,
      ["Portal: Dalaran - Northrend"] = 53142,
      ["Ancient Portal: Dalaran"] = 120146,
      ["Portal: Warspear"] = 176244,
      ["Portal: Vale of Eternal Blossoms"] = 132620 or 132626,
      ["Portal: Tol Barad"] = 88345,
      ["Portal: Valdrakken"] = 395289,
      --Shared-spell-Names
      ["Nature's Swiftness"] = 132158 or 378081,
      --Shaman-Lust
      ["Bloodlust"] = 2825,
      ["Heroism"] = 32182,
      --Racials
            --Blood Elf
            ["Arcane Torrent"] = 50613 or 202719 or 80483 or 28730 or 129597 or 155145 or 232633 or 25046 or 69179,
            --Dark Iron Dwarf
            ["Fireblood"] = 265221,
            ["Mole Machine"] = 265225,
            --Dracthyr
            ["Soar"] = 369536,
            ["Tail Swipe"] = 368970,
            ["Wing Buffet"] = 357214,
            --Draenei
            ["Gift of the Naaru"] = 59545 or 59543 or 59548 or 121093 or 59542 or 59544 or 370626 or 59547 or 28880,
            --Goblin
            ["Pack Hobgoblin"] = 69046,
            ["Rocket Barrage"] = 69041,
            ["Rocket Jump"] = 69070,
            --Dwarf
            ["Stoneform"] = 20594,
            --Highmountain Tauren
            ["Bull Rush"] = 255654,
            --Gnome
            ["Escape Artist"] = 20589,
            --Mag'har Orc
            ["Ancestral Call"] = 274738,
            --Human
            ["Will to Survive"] = 59752,
            --Nightborne
            ["Arcane Pulse"] = 260364,
            ["Cantrips"] = 255661,
            --Kul Tiran
            ["Haymaker"] = 287712,
            --Orc
            ["Blood Fury"] = 20572 or 33697 or 33702,
            --Lightforged Draenei
            ["Forge of Light"] = 259930,
            ["Light's Judgment"] = 255647,
            --Pandaren
            ["Quaking Palm"] = 107079,
            --Mechagnome
            ["Hyper Organic Light Originator"] = 312924,
            --Tauren
            ["War Stomp"] = 20549,
            --Night Elf
            ["Shadowmeld"] = 58984,
            --Troll
            ["Berserking"] = 26297,
            --Void Elf
            ["Spatial Rift"] = 256948,
            --Undead
            ["Will of the Forsaken"] = 7744,
            ["Cannibalize"] = 20577,
            --Vulpera
            ["Bag of Tricks"] = 312411,
            ["Make Camp"] = 312370,
            ["Return to Camp"] = 312372,
            ["Rummage Your Bag"] = 312425,
            --Worgen
            ["Darkflight"] = 68992,
            --Zandalari Troll
            ["Embrace of the Loa"] = 292752,
            ["Pterrordax Swoop"] = 281954,
            ["Regeneratin'"] = 291944,
}
end