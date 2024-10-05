local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] and ASCT.Client.tocversion["is11504"] then
ASCT.Database.Spells["ASCT_Locale"] = {--Advanced Scrolling Combat Text Localizing Table
      --Rogue
      ["Kidney Shot"] = 408,
      ["Cold Blood"] = 14177,
      ["Sprint"] = 2983,
      ["Kick"] = 1766,
      ["Evasion"] = 5277,
      ["Gouge"] = 1776,
      ["Feint"] = 1966,
      ["Blade Flurry"] = 13877,
      ["Adrenaline Rush"] = 13750,
      ["Riposte"] = 14251,
      ["Blind"] = 2094,
      ["Stealth"] = 1784,
      ["Vanish"] = 1856,
      ["Distract"] = 1725,
      ["Ghostly Strike"] = 14278,
      ["Preparation"] = 14185,
      ["Premeditation"] = 14183,
      ["Quick Draw"] = 398196,
      ["Between the Eyes"] = 400009,
      ["Main Gauche"] = 424919,
      ["Poisoned Knife"] = 425012,
      ["Redirect"] = 438040,
      ["Shadowstep"] = 400029,
      --Priest
      ["Power Word: Shield"] = 17,
      ["Elune's Grace"] = 2651,
      ["Feedback"] = 13896,
      ["Power Infusion"] = 10060,
      ["Inner Focus"] = 14751,
      ["Fear Ward"] = 6346,
      ["Desperate Prayer"] = 13908,
      ["Starshards"] = 10797,
      ["Vampiric Embrace"] = 15286,
      ["Lightwell"] = 724,
      ["Devouring Plague"] = 2944,
      ["Mind Blast"] = 8092,
      ["Fade"] = 586,
      ["Psychic Scream"] = 8122,
      ["Silence"] = 15487,
      ["Penance"] = 402174,
      ["Void Plague"] = 425204,
      ["Prayer of Mending"] = 401859,
      ["Homunculi"] = 402799,
      ["Shadow Word: Death"] = 401955,
      ["Power Word: Barrier"] = 425207,
      ["Circle of Healing"] = 401946,
      ["Dispersion"] = 425294,
      ["Shadowfiend"] = 401977,
      ["Pain Suppression"] = 402004,
      ["Void Zone"] = 431681,
      ["Eye of the Void"] = 402789,
      --Warrior
      ["Retaliation"] = 20230,
      ["Overpower"] = 7384,
      ["Charge"] = 100,
      ["Thunder Clap"] = 6343,
      ["Mocking Blow"] = 694,
      ["Mortal Strike"] = 12294,
      ["Sweeping Strikes"] = 12292 or 260708 or 316432 or 316433,
      ["Pummel"] = 6552,
      ["Whirlwind"] = 1680,
      ["Recklessness"] = 1719,
      ["Berserker Rage"] = 18499,
      ["Intimidating Shout"] = 5246,
      ["Intercept"] = 20252,
      ["Bloodthirst"] = 23881,
      ["Death Wish"] = 12328,
      ["Bloodrage"] = 2687,
      ["Taunt"] = 355,
      ["Shield Block"] = 2565,
      ["Shield Wall"] = 871,
      ["Disarm"] = 676,
      ["Shield Bash"] = 72,
      ["Revenge"] = 6572,
      ["Shield Slam"] = 23922,
      ["Last Stand"] = 12975,
      ["Concussion Blow"] = 12809,
      ["Victory Rush"] = 402927,
      ["Raging Blow"] = 402911,
      ["Enraged Regeneration"] = 402913,
      ["Intervene"] = 403338,
      ["Rallying Cry"] = 426490,
      --Warlock
      ["Curse of Doom"] = 603,
      ["Death Coil"] = 6789,
      ["Howl of Terror"] = 5484,
      ["Amplify Curse"] = 18288,
      ["Shadow Ward"] = 6229,
      ["Ritual of Doom"] = 18540,
      ["Inferno"] = 1122,
      ["Fel Domination"] = 18708,
      ["Soul Fire"] = 6353,
      ["Conflagrate"] = 17962,
      ["Shadowburn"] = 17877,
      ["Chaos Bolt"] = 403629,
      ["Haunt"] = 403501,
      ["Demonic Grace"] = 425463,
      ["Portal of Summoning"] = 437169,
      ["Shadowflame"] = 426320,
      --Druid
      ["Barkskin"] = 22812,
      ["Hurricane"] = 16914,
      ["Nature's Grasp"] = 16689,
      ["Growl"] = 6795,
      ["Frenzied Regeneration"] = 22842,
      ["Bash"] = 8983,
      ["Dash"] = 1850,
      ["Enrage"] = 5229,
      ["Challenging Roar"] = 5209,
      ["Prowl"] = 5215,
      ["Tiger's Fury"] = 5217,
      ["Cower"] = 8998,
      ["Faerie Fire (Feral)"] = 16857,
      ["Feral Charge"] = 16979,
      ["Innervate"] = 29166,
      ["Tranquility"] = 740,
      ["Rebirth"] = 20484,
      ["Swiftmend"] = 18562,
      ["Starsurge"] = 417157,
      ["Skull Bash"] = 410176,
      ["Wild Growth"] = 408120,
      ["Berserk"] = 417141,
      ["Survival Instincts"] = 408024,
      --Mage
      ["Blink"] = 1953,
      ["Counterspell"] = 2139, --Counter Spell
      ["Evocation"] = 12051,
      ["Arcane Power"] = 12042, --Arcane Power
      ["Presence of Mind"] = 12043, --Presence of Mind
      ["Fire Blast"] = 2136,
      ["Fire Ward"] = 543,
      ["Combustion"] = 11129,
      ["Frost Nova"] = 122,
      ["Cone of Cold"] = 120,
      ["Frost Ward"] = 6143,
      ["Ice Barrier"] = 11426,
      ["Ice Block"] = 11958,
      ["Cold Snap"] = 12472,
      ["Living Flame"] = 401556,
      ["Arcane Surge"] = 425124,
      ["Icy Veins"] = 425121,
      ["Rewind Time"] = 401462,
      ["Mass Regeneration"] = 412510,
      ["Deep Freeze"] = 428739,
      ["Displacement"] = 428861,
      ["Temporal Anomaly"] = 428885,
      --Shaman
      ["Elemental Mastery"] = 16166,
      ["Chain Lightning"] = 421,
      ["Earthbind Totem"] = 2484,
      ["Stoneclaw Totem"] = 5730,
      ["Fire Nova Totem"] = 1535,
      --Shaman-Shocks
      ["Frost Shock"] = 8056,
      ["Flame Shock"] = 8050,
      ["Earth shock"] = 8042,
      --Shaman-Countined
      ["Astral Recall"] = 556,
      ["Grounding Totem"] = 8177,
      ["Stormstrike"] = 17364,
      ["Mana Tide Totem"] = 16190,
      ["Lava Lash"] = 408507,
      ["Ancestral Guidance"] = 409324,
      ["Molten Blast"] = 425339,
      ["Healing Rain"] = 415236,
      ["Shamanistic Rage"] = 425336,
      ["Totemic Projection"] = 437009,
      ["Decoy Totem"] = 425874,
      --Hunter
      ["Scare Beast"] = 1513,
      ["Intimidation"] = 19577,
      ["Bestial Wrath"] = 19574,
      ["Multi-Shot"] = 2643,
      ["Rapid Fire"] = 3045,
      ["Concussive Shot"] = 5116,
      ["Flare"] = 1543,
      ["Volley"] = 1510,
      ["Scatter Shot"] = 19503,
      ["Arcane Shot"] = 3044,
      ["Aimed Shot"] = 19434,
      --Traps
      ["Freezing Trap"] = 1499,
      ["Explosive Trap"] = 13813,
      ["Immolation Trap"] = 13795,
      --Hunter-Countined
      ["Feign Death"] = 5384,
      ["Disengage"] = 781,
      ["Mongoose Bite"] = 1495,
      ["Raptor Strike"] = 2973,
      ["Counterattack"] = 19306,
      ["Wyvern Sting"] = 19386,
      ["Deterrence"] = 19263,
      ["Kill Command"] = 409379,
      ["Carve"] = 425711,
      ["Flanking Strike"] = 415320,
      ["Chimera Shot"] = 409433,
      ["Explosive Shot"] = 409552,
      --Paladin
      ["Exorcism"] = 879,
      ["Hammer of Wrath"] = 24275,
      ["Holy Wrath"] = 2812,
      ["Lay on Hands"] = 633,
      ["Consecration"] = 26573,
      ["Holy Shock"] = 20473,
      ["Holy Shield"] = 20925,
      ["Turn Undead"] = 2878,
      ["Divine Intervention"] = 19752,
      ["Divine Shield"] = 642,
      ["Hammer of Justice"] = 853,
      ["Blessing of Freedom"] = 1044,
      ["Blessing of Protection"] = 1022,
      ["Blessing of Sacrifice"] = 6940,
      ["Divine Protection"] = 498,
      ["Repentance"] = 20066,
      ["Judgement"] = 20271,
      ["Rebuke"] = 425609,
      ["Crusader Strike"] = 407676,
      ["Horn of Lordaeron"] = 425600,
      ["Hand of Reckoning"] = 407631,
      ["Divine Sacrifice"] = 407804,
      ["Avenger's Shield"] = 407669,
      ["Divine Storm"] = 407778,
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
      --Shared-spell-Names
      ["Nature's Swiftness"] = 17116 or 16188,
      --Racials
      ["Escape Artist"] = 20589,
      ["Blood Fury"] = 20572 or 33697 or 33702,
      ["Cannibalize"] = 20577,
      ["Will of the Forsaken"] = 7744,
      ["Berserking"] = 26297 or 26296 or 20554,
      ["War Stomp"] = 20549,
      ["Perception"] = 20600,
      ["Shadowmeld"] =  20580,
      ["Stoneform"] = 20594,
}
end