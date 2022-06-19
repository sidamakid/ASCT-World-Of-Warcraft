local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305
local isClassicWow = select(4, GetBuildInfo()) == 11403


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
end