local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)


if isTbcWow then
SpellTablePriest = {--Priest Spells
--Shadow
["Shadow Word: Death"] = "Shadow Word: Death",
["Fade"] = "Fade",
["Psychic Scream"] = "Psychic Scream",
["Mind Blast"] = "Mind Blast",
["Vampiric Embrace"] = "Vampiric Embrace",
["Silence"] = "Silence",
["Shadowfiend"] = "Shadowfiend",
--Holy
["Prayer of Mending"] = "Prayer of Mending",
["Lightwell"] = "Lightwell",
--Discipline
["Fear Ward"] = "Fear Ward",
["Power Word: Shield"] = "Power Word: Shield",
["Power Infusion"] = "Power Infusion",
["Inner Focus"] = "Inner Focus",
["Pain Suppression"] = "Pain Suppression",
--Racial Abilites
["Devouring Plague"] = "Devouring Plague",
["Symbol of Hope"] = "Symbol of Hope",
["Starshards"] = "Starshards",
["Elune's Grace"] = "Elune's Grace",
["Consume Magic"] = "Consume Magic",
["Feedback"] = "Feedback",
["Desperate Prayer"] = "Desperate Prayer",
["Chastise"] = "Chastise",
}
elseif isClassicWow then
SpellTablePriest = {--Priest Spells
--Shadow
["Fade"] = "Fade",
["Psychic Scream"] = "Psychic Scream",
["Mind Blast"] = "Mind Blast",
["Vampiric Embrace"] = "Vampiric Embrace",
["Silence"] = "Silence",
--Holy
["Lightwell"] = "Lightwell",
--Discipline
["Power Word: Shield"] = "Power Word: Shield",
["Power Infusion"] = "Power Infusion",
["Inner Focus"] = "Inner Focus",
["Pain Suppression"] = "Pain Suppression",
--Racial Abilites
["Devouring Plague"] = "Devouring Plague",
["Elune's Grace"] = "Elune's Grace",
["Feedback"] = "Feedback",
["Desperate Prayer"] = "Desperate Prayer",
["Fear Ward"] = "Fear Ward",
}
elseif isWrathWow then
SpellTablePriest = {--Priest Spells
--Shadow
["Shadow Word: Death"] = "Shadow Word: Death",
["Fade"] = "Fade",
["Psychic Scream"] = "Psychic Scream",
["Mind Blast"] = "Mind Blast",
["Silence"] = "Silence",
["Devouring Plague"] = "Devouring Plague",
["Dispersion"] = "Dispersion",
["Shadowfiend"] = "Shadowfiend",
--Holy
["Prayer of Mending"] = "Prayer of Mending",
["Circle of Healing"] = "Circle of Healing",
["Desperate Prayer"] = "Desperate Prayer",
["Divine Hymn"] = "Divine Hymn",
["Holy Fire"] = "Holy Fire",
["Hymn of Hope"] = "Hymn of Hope",
["Guardian Spirit"] = "Guardian Spirit",
["Lightwell"] = "Lightwell",
--Discipline
["Fear Ward"] = "Fear Ward",
["Power Word: Shield"] = "Power Word: Shield",
["Power Infusion"] = "Power Infusion",
["Inner Focus"] = "Inner Focus",
["Pain Suppression"] = "Pain Suppression",
["Penance"] = "Penance",
}
elseif isRetailWow then
SpellTablePriest = {--Priest
--All-Specs
["Power Infusion"] = "Power Infusion",
["Mass Dispel"] = "Mass Dispel",
["Desperate Prayer"] = "Desperate Prayer",
["Leap of Faith"] = "Leap of Faith",
["Fade"] = "Fade",
["Shadow Word: Death"] = "Shadow Word: Death",
["Psychic Scream"] = "Psychic Scream",
["Mind Blast"] = "Mind Blast",
--Shadow
["Vampiric Embrace"] = "Vampiric Embrace",
["Dispersion"] = "Dispersion",
["Silence"] = "Silence",
["Void Eruption"] = "Void Eruption",
["Void Bolt"] = "Void Bolt",
["Psychic Horror"] = "Psychic Horror",
["Purify Disease"] = "Purify Disease",
["Mind Bomb"] = "Mind Bomb",
["Surrender to Madness"] = "Surrender to Madness",
["Shadow Crash"] = "Shadow Crash",
["Damnation"] = "Damnation",
["Void Torrent"] = "Void Torrent",
--Holy
["Symbol of Hope"] = "Symbol of Hope",
["Guardian Spirit"] = "Guardian Spirit",
["Divine Hymn"] = "Divine Hymn",
["Holy Word: Chastise"] = "Holy Word: Chastise",
["Holy Word: Serenity"] = "Holy Word: Serenity",
["Prayer of Mending"] = "Prayer of Mending",
["Holy Word: Sanctify"] = "Holy Word: Sanctify",
["Holy Fire"] = "Holy Fire",
["Circle of Healing"] = "Circle of Healing",
["Holy Word: Salvation"] = "Holy Word: Salvation",
["Apotheosis"] = "Apotheosis",
--Discipline
["Pain Suppression"] = "Pain Suppression",
["Penance"] = "Penance",
["Rapture"] = "Rapture",
["Power Word: Barrier"] = "Power Word: Barrier",
["Power Word: Radiance"] = "Power Word: Radiance",
["Schism"] = "Schism",
["Mindbender"] = "Mindbender",
["Evangelism"] = "Evangelism",
["Spirit Shell"] = "Spirit Shell",
--Shared-Spec-spells
["Shadowfiend"] = "Shadowfiend",
["Purify"] = "Purify",
["Angelic Feather"] = "Angelic Feather",
["Shining Force"] = "Shining Force",
["Divine Star"] = "Divine Star",
["Halo"] = "Halo",
["Shadow Covenant"] = "Shadow Covenant",
}
end