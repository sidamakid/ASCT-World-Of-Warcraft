local ASCT, L = ASCT_Table, ASCT_locale_Table
local API, Strings = ASCT.API, ASCT.Strings
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--German
-------------------------------------
if locale == Strings.LocaleName["deDE"] then
 --Rogue
 L["Rogue"] = "Schurke";
 L["Assassination"] = "Ermordung";
 L["Combat"] = "Kämpfen";
 L["Outlaw"] = "Ächten";
 L["Subtlety"] = "Feinheit";
 --Priest
 L["Priest"] = "Priester";
 L["Shadow"] = "Schatten";
 L["Discipline"] = "Disziplin";
 L["Racials_Priest"] = "Rassischer_Priester";
 --Warrior
 L["Warrior"] = "Krieger";
 L["Arms"] = "Waffen";
 L["Fury"] = "Wut";
 --Druid
 L["Druid"] = "Druide";
 L["Balance"] = "Gleichgewicht";
 L["Feral_Combat"] = "Verwilderungskampf";
 --Shaman
 L["Shaman"] = "Schamane";
 L["Elemental"] = "Elementar";
 L["Enhancement"] = "Verbesserung";
 --Warlock
 L["Warlock"] = "Zauberer";
 L["Affliction"] = "Affliction";
 L["Demonology"] = "Dämonologie";
 L["Destruction"] = "Zerstörung";
 --Hunter
 L["Hunter"] = "Jäger";
 L["Beast Mastery"] = "Bestienbeherrschung";
 L["Marksmanship"] = "Treffsicherheit";
 L["Survival"] = "Überleben";
 --Paladin
 L["Paladin"] = "Beschützer";
 L["Retribution"] = "Vergeltung";
  --Mage
 L["Mage"] = "Magier";
 L["Arcane"] = "Geheimnisvoll";
 L["Fire"] = "Feuer";
 --Demon Hunter
 L["Havoc"] = "Verwüstung";
 L["Vengeance"] = "Rache";
 --Death Knight
 L["Blood"] = "Blut";
 L["Unholy"] = "Unheilig";
 --Monk
 L["Brewmaster"] = "Braumeister";
 L["Mistweaver"] = "Nebelweber";
 L["Windwalker"] = "Windrollator";
 --Evoker
 L["Preservation"] = "Konservierung";
 L["Devastation"] = "Verwüstung";
 L["Augmentation"] = "Vergrößerung";
  --Shared-Spec-names
 L["Frost"] = "Frost";
 L["Restoration"] = "Restaurierung";
 L["Holy"] = "Heilig";
 L["Protection"] = "Schutz";
 --Side-Buttons
 L["Reset Class"] = "Reset-Klasse";
 L["Title_SARTE"] = "Text mit Bildlauffähigkeit";
 L["Tooltip Button"] = "Klicken Sie mit der linken Maustaste, um das Bedienfeld Optionen zu öffnen";
 L["Color Picker"] = "Farbwähler";
 L["Racials"] = "Rassische";
 L["Shared Spell cd's"] = "Geteilte Zauber-CDs";
 --Custom Button Names
 L["Shocks"] = "Schocks";
 L["Traps"] = "Fallen";
 L["Lust"] = "Wollust";
 L["This Tab is for Shaman's and Hunter's only."] = "Diese Registerkarte ist nur für Schamanen und Jäger gedacht.";
 --Ready Text
 L["msg"] = "ist jetzt fertig!!";
 L["msg_Shocks"] = " Schocks sind jetzt bereit!";
 L["msg_Traps"] = " Fallen sind jetzt fertig!";
 L["msg_Lust"] = " Die Lust ist jetzt bereit!";
 --Message
 L["Nothing"] = "Nichts";
 L["Open To Options Panel"] = "Bedienfeld Öffnen für Optionen";
 --New things
 L["Icon"] = "Ikone";
 L["Name"] = "Name";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Ihre Fähigkeiten in";
 L["has increased to"] = "hat sich erhöht auf";
 L["Congratulations"] = "Glückwunsch";
 L["you are now level"] = "Du bist jetzt Level";
 L["Title"] = "Erweiterter scrollender Kampftext";
 L["Experience Gains"] = "Erfahrungsgewinne";
 L["Level up message"] = "Level-Up-Nachricht";
 L["Skill Up"] = "Skill Up";
 L["Resource lost"] = "Verlorene Ressource";
 L["Mana"] = "Mana";
 L["Rage"] = "Wut";
 L["Energy"] = "Energie";
 L["Runic Power"] = "Runenleistung";
 L["Armor"] = "Rüstung";
 L["Armor lost"] = "Rüstung verloren";
 L["Armor Gained"] = "Gewonnene Rüstung";
 L["Slash Command Message"] = "Der Befehl Schrägstrich wurde für Advanced Scrolling Combat Text geändert. Geben Sie /asct ein, um das Bedienfeld Optionen zu öffnen.";
 L["Features"] = "Funktionen";
 L["Message"] = "Der Bildlauf zum Kampftext ist deaktiviert. Wenn diese Option nicht aktiviert ist, wird im Text von Advanced Scrolling Combat nichts angezeigt.";
 --New things 8/11/2022
 L["Leveling"] = "Nivellierung";
 L["Lost"] = "Verloren";
 L["Gained"] = "Gewonnen";
 L["Attack Power"] = "Angriffskraft";
 L["Agility"] = "Gewandtheit";
 L["Strength"] = "Kraft";
 L["Intellect"] = "Intellekt";
 L["Spirit"] = "Geist";
 L["Stamina"] = "Ausdauer";
 --New things 8/14/2022
 L["Auras"] = "Düfte";
 L["Fading Debuffs Alert"] = "Warnung Verblassende Debuffs";
 L["Is About to Fade!"] = "Ist im Begriff zu verblassen!";
 L["Debuff has 5 seconds left"] = "Debuff hat noch 5 Sekunden Zeit";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Kündigt an, dass ein Debuff, den du angewendet hast, auf dem Ziel verblassen wird.";
 L["Fading Buffs Alert"] = "Warnung vor verblassenden Buffs";
 L["Buff has 5 seconds left"] = "Buff hat noch 5 Sekunden Zeit";
 L["Announces when a buff you gained is about to fade"] = "Kündigt an, wenn ein Buff, den du gewonnen hast, verblasst";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Farben für Statistiken";
 L["Color Picker Spells"] = "Farben für Zaubersprüche";
 L["Color Picker Leveling"] = "Farben für die Nivellierung";
 L["Achievement Gains"] = "Erfolge";
 L["Colors for Fading Auras"] = "Farben für verblassende Auren";
 --New things 8/17/2022
 L["Health"] = "Gesundheit";
 L["You died at"] = "Sie sind gestorben am";
 L["Death Quadrants"] = "Todes-Quadranten";
 L["Has challenged you to a duel."] = "Hat dich zu einem Duell herausgefordert.";
 L["Duel Requests"] = "Duell-Anfragen";
 L["Messages"] = "Meldungen";
 L["Inventory full"] = "Inventar voll";
 L["Locked Items"] = "Gesperrte Elemente";
 L["Group Invites"] = "Gruppeneinladungen";
 L["Quest Accepted"] = "Quest angenommen";
 L["Quest Completed"] = "Quest abgeschlossen";
 L["Quest Log Full"] = "Quest-Log voll";
 L["Trade Requests"] = "Handelsanfragen";
 L["Facing the wrong way"] = "Dem falschen Weg entgegensehen";
 L["Friends come Online"] = "Freunde kommen online";
 L["Friends go Offline"] = "Freunde gehen offline";
 L["Zone discovery"] = "Zonenerkennung";
 L["Unlearned Skills"] = "Ungelernte Fähigkeiten";
 L["Rested"] = "Ausgeruht";
 L["Sent Mail"] = "Gesendete E-Mails";
 L["Dungeon Difficulty Changed"] = "Dungeon-Schwierigkeitsgrad geändert";
 L["Not Enough Honor Points"] = "Nicht genug Ehrenpunkte";
 L["Not Arena Honor Points"] = "Keine Arena-Ehrenpunkte";
 L["Players Invited"] = "Eingeladene Spieler";
 L["Player Left your group"] = "Spieler Hat deine Gruppe verlassen";
 L["Player joins your group"] = "Der Spieler tritt Ihrer Gruppe bei";
 L["War mode Off"] = "Kriegsmodus Aus";
 L["War mode On"] = "Kriegsmodus Ein";
 L["Pvp On"] = "Pvp Ein";
 L["Pvp Off"] = "Pvp Aus";
 L["You Loot"] = "Du plünderst";
 L["You lost"] = "Du hast verloren";
 L["Money Gains"] = "Geldgewinne";
 L["Money Lost"] = "Verlorenes Geld";
 L["Items Looted"] = "Geplünderte Gegenstände";
 L["Shadow Resistance"] = "Schattenresistenz";
 L["Arcane Resistance"] = "Arkane Beständigkeit";
 L["Frost Resistance"] = "Frostresistenz";
 L["Fire Resistance"] = "Feuerwiderstandsfähigkeit";
 L["Nature Resistance"] = "Widerstand in der Natur";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Advanced Scrolling Combat Text erfolgreich geladen. , um das Optionsfeld zu laden. Geben Sie /ASCT ein oder klicken Sie auf das Minikartensymbol.";
 --New things 9/2/2022
 L["Holy Power"] = "Heilige Kraft";
 L["Astral Power"] = "Astralkraft";
 L["Maelstrom"] = "Strudel";
 L["Insanity"] = "Wahnsinn";
 L["Fury"] = "Wut";
 L["Focus"] = "Brennpunkt";
 --New things 9/18/2022
 L["Hit Rating"] = "Treffer-Rating";
 L["Critical Strike Rating"] = "Bewertung kritischer Treffer";
 L["Expertise Rating"] = "Kompetenz-Rating";
 L["Resilience Rating"] = "Bewertung der Resilienz";
 L["Dodge Rating"] = "Dodge-Bewertung";
 L["Defense Rating"] = "Verteidigungs-Rating";
 L["Parry Rating"] = "Parry-Bewertung";
 L["Block Rating"] = "Block-Bewertung";
 L["Haste Rating"] = "Haste Bewertung";
 L["Spell Power"] = "Zauberkraft";
 L["Unsupported_Line_1"] = "Du führst Advanced Scrolling Combat Text in einer nicht unterstützten Spielversion aus.";
 L["Unsupported_Line_2"] = "Das Addon funktioniert nicht auf privaten Servern.";
 L["Unsupported_Line_3"] = "Das Addon wird nur auf offiziellen Blizzard-Servern unterstützt.";
 L["Unsupported_Line_4"] = "Möchten Sie das Addon deaktivieren? Oder es aktiviert lassen?";
 L["Unsupported_Line_5"] = "Advanced Scrolling Combat Text nicht geladen!";
 L["Keep Enabled"] = "Aktiviert lassen";
 L["Disable"] = "Abschalten";
 L["You have gained the"] = "Sie haben die";
 L["skill"] = "Fertigkeit";
 L["Skill Gained"] = "Erworbene Fähigkeiten";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Durchschlagskraft der Panzerung";
 L["Spell Penetration"] = "Durchdringung von Zaubersprüchen";
 --New Things 5/27/2023 
 L["Stats"] = "Statistiken";
 L["Trinkets"] = "Wertlosigkeiten";
 L["Trinket 1"] = "Schmuckstück 1";
 L["Trinket Slot One"] = "Das erste Schmuckstück in Slot 13.";
 L["Trinket Slot One Info"] = "Kündigt an, wenn die Abklingzeit deines ersten Schmuckstücks abgelaufen ist.";
 L["Trinket 2"] = "Schmuckstück 2";
 L["Trinket Slot Two"] = "Das zweite Schmuckstück in Slot 14.";
 L["Trinket Slot Two Info"] = "Kündigt an, wenn die Abklingzeit deines zweiten Schmuckstücks abgelaufen ist.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Debuff-Fade-Zeit";
 L["The time warning for Debuffs about to fade"] = "Die Zeitwarnung für Debuffs, die kurz vor dem Verblassen stehen";
 L["The size of the Spell Icon"] = "Die Größe des Zaubersymbols";
 L["Spell Icon Size"] = "Größe des Zaubersymbols";
 L["Settings"] = "Einstellungen";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "Symbolgröße zurücksetzen";
 L["Reset Debuff fade time"] = "Debuff-Fade-Zeit zurücksetzen";
 L["Reset Both Aura and Icon Values"] = "Zurücksetzen der Aura- und Symbolwerte";
 L["Trinket_1"] = "Schmuckstück 1";
 L["Trinket_2"] = "Schmuckstück 2";
 --New Things 8/29/2023
 L["Loot"] = "Plündern";
 --New Things 9/2/2023
 L["Alliance"] = "Allianz";
 L["Horde"] = "Horde";
 --New Things 9/5/2023
 L["Icon Size"] = "Größe des Symbols";
 L["The size of the message icon"] = "Die Größe des Nachrichtensymbols";
 --New things 9/17/2023
 L["Mastery"] = "Beherrschung";
 L["Avoidance"] = "Vermeidung";
 --New things 9/24/2023
 L["Minimap Icon"] = "Minikarten-Symbol";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "Scrollender Kampftext ist deaktiviert. Wenn diese Option nicht aktiviert ist, wird der erweiterte Lauftext für den Kampf nichts angezeigt.";
 --New things 1/01/2024
 L["is now ready!"] = "ist jetzt fertig!";
 L["Is Now Ready!"] = "Ist jetzt fertig!";
 L["is about to fade!"] = "ist im Begriff zu verblassen!";
 L["Is About To Fade!"] = "ist kurz davor, zu verblassen!";
 L["Uppercase"] = "Großschrift";
 L["Lowercase"] = "Kleingeschrieben";
 --New things 3/16/2024
 L["About"] = "Über";
 L["About_Line_1"] = "Erweiterter Lauf-Kampftext";
 L["About_Line_2"] = "(Ursprünglicher Name Scrolling Ability Text)";
 L["About_Line_3"] = "Ist ein Addon, das Multifunktionalität hinzufügt, die der Standard-Blizzard-Kampftext nicht bietet.";
 L["About_Line_4"] = "Dieses Addon kann verfolgen, wann die Abklingzeit einer Fähigkeit abgelaufen ist, Statusänderungen, Erfahrungsgewinne, Ressourcenverluste und mehr!";
 L["About_Line_5"] = "Stoßen Sie auf einen Fehler oder möchten Sie eine Funktion hinzufügen? Melden Sie es im GitHub Repository!";
 --New things 3/31/2024
 L["Resistances"] = "Widerstände";
 --New things 5/24/2024
 L["Transmog"] = "Transmog";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "wurde zu Ihrer Erscheinungsbildsammlung hinzugefügt.";
 --New things 6/01/2024
 L["Miscellaneous"] = "Verschiedenes";
 --New things 6/23/2024
 L["Icon Enable"] = "Symbol aktivieren";
 L["Name Enable"] = "Name aktivieren";
 --New things 7/14/2024
 L["Ready!"] = "Fertig!";
 L["Is Ready!"] = "Ist bereit!";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "Y";
 L["Message Selector"] = "Nachrichtenauswahl";
end