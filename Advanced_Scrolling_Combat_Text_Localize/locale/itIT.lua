local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Italian 
-------------------------------------
if locale == "itIT" then
 --Rogue
 L["Rogue"] = "Birbante";
 L["Assassination"] = "Assassinio";
 L["Combat"] = "Combattimento";
 L["Outlaw"] = "Fuorilegge";
 L["Subtlety"] = "Sottigliezza";
 --Priest
 L["Priest"] = "Prete";
 L["Shadow"] = "Ombra";
 L["Discipline"] = "Disciplina";
 L["Racials_Priest"] = "Sacerdote_razziale";
 --Warrior
 L["Warrior"] = "Guerriero";
 L["Arms"] = "Arme";
 L["Fury"] = "Furia";
 --Druid
 L["Druid"] = "Druido";
 L["Balance"] = "Bilancia";
 L["Feral_Combat"] = "Combattimento_ferale";
 --Shaman
 L["Shaman"] = "Sciamano";
 L["Elemental"] = "Elementare";
 L["Enhancement"] = "Miglioramento";
 --Warlock
 L["Warlock"] = "Stregone";
 L["Affliction"] = "Aflição";
 L["Demonology"] = "Demonologia";
 L["Destruction"] = "Distruzione";
 --Hunter
 L["Hunter"] = "Cacciatore";
 L["Beast Mastery"] = "Padronanza della Bestia";
 L["Marksmanship"] = "Tiro";
 L["Survival"] = "Sopravvivenza";
 --Paladin
 L["Paladin"] = "Paladino";
 L["Retribution"] = "Punizione";
  --Mage
 L["Mage"] = "Mago";
 L["Arcane"] = "Arcano";
 L["Fire"] = "Fuoco";
 --Demon Hunter
 L["Havoc"] = "Rovina";
 L["Vengeance"] = "Vendetta";
 --Death Knight
 L["Blood"] = "Sangue";
 L["Unholy"] = "Diabolica";
 --Monk
 L["Brewmaster"] = "Mastro birraio";
 L["Mistweaver"] = "Tessitoredinebbia";
 L["Windwalker"] = "Camminatoreavento";
 --Evoker
 L["Preservation"] = "Conservazione";
 L["Devastation"] = "Devastazione";
  --Shared-Spec-names
 L["Frost"] = "Gelo";
 L["Restoration"] = "Restauro";
 L["Holy"] = "Santo";
 L["Protection"] = "Protezione";
 --Side-Buttons
 L["Reset Class"] = "Classe reset";
 L["Title_SARTE"] = "Scorrimento del testo";
 L["Tooltip Button"] = "Fare clic con il pulsante sinistro del mouse per aprire il pannello Opzioni";
 L["Color Picker"] = "Selettore colore";
 L["Racials"] = "Razziali";
 L["Shared Spell cd's"] = "Cd spell condivisi";
 --Custom Button Names
 L["Shocks"] = "Shock";
 L["Traps"] = "Trappole";
 L["Lust"] = "Lussuria";
 L["Tab"] = "Questa scheda è solo per Sciamani e Cacciatori.";
 --Ready Text
 L["msg"] = "è ora pronto!";
 L["msg_Shocks"] = " Gli shock sono ora pronti!";
 L["msg_Traps"] = " Le trappole sono ora pronte!";
 L["msg_Lust"] = " La lussuria è ora pronta!";
 --Message
 L["Nothing"] = "Niente";
 L["Open To Options Panel"] = "Apri il pannello Opzioni";
 --New things
 L["Icon"] = "Icona";
 L["Name"] = "Nome";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "La tua abilità in";
 L["has increased to"] = "è aumentato a";
 L["Congratulations"] = "Felicitazioni";
 L["you are now level"] = "ora sei a livello";
 L["Title"] = "Testo di combattimento a scorrimento avanzato";
 L["Experience Gains"] = "Guadagni di esperienza";
 L["Level up message"] = "Messaggio di aumento di livello";
 L["Skill Up"] = "Abilità up";
 L["Resource lost"] = "Risorsa persa";
 L["Mana"] = "Mana";
 L["Rage"] = "Rabbia";
 L["Energy"] = "Energia";
 L["Runic Power"] = "Potenza runica";
 L["Armor"] = "Armatura";
 L["Armor lost"] = "Armatura persa";
 L["Armor Gained"] = "Armatura guadagnata";
 L["Slash Command Message"] = "Il comando Slash è stato modificato per Advanced Scrolling Combat Text. Digitare /asct per aprire il pannello delle opzioni";
 L["Features"] = "Tratti somatici";
 L["Message"] = "Lo scorrimento del testo di combattimento è disabilitato. Se non abilitato, il testo Advanced Scrolling Combat non mostrerà nulla.";
 --New things 8/11/2022
 L["Leveling]"] = "Livellamento";
 L["Lost"] = "Perduto";
 L["Gained"] = "Guadagnato";
 L["Attack Power"] = "Potenza d'attacco";
 L["Agility"] = "Agilità";
 L["Strength"] = "Forza";
 L["Intellect"] = "Intelletto";
 L["Spirit"] = "Spirito";
 L["Stamina"] = "Resistenza";
 --New things 8/14/2022
 L["Auras"] = "Aure";
 L["Fading Debuffs Alert"] = "Avviso di debuff sbiadimento";
 L["Is About to Fade!"] = "Sta per svanire!";
 L["Debuff has 5 seconds left"] = "Debuff ha 5 secondi rimasti";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Annuncia che un Debuff che hai applicato sta per svanire sulla Destinazione.";
 L["Fading Buffs Alert"] = "Avviso di dissolvenza dei buff";
 L["Buff has 5 seconds left"] = "Buff ha 5 secondi rimasti";
 L["Announces when a buff you gained is about to fade"] = "Annuncia quando un buff che hai guadagnato sta per svanire";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Colori per le statistiche";
 L["Color Picker Spells"] = "Colori per incantesimi";
 L["Color Picker Leveling"] = "Colori per il livellamento";
 L["Achievement Gains"] = "Guadagni di successo";
 L["Colors for Fading Auras"] = "Colori per aure sbiadite";
 --New things 8/17/2022
 L["Health"] = "Salute";
 L["You died at"] = "Sei morto a";
 L["Death Quadrants"] = "Quadranti della morte";
 L["Has challenged you to a duel."] = "Ti ha sfidato a duello.";
 L["Duel Requests"] = "Richieste di duello";
 L["Messages"] = "Messaggi";
 L["Inventory full"] = "Inventario completo";
 L["Locked Items"] = "Elementi bloccati";
 L["Group Invites"] = "Inviti di gruppo";
 L["Quest Accepted"] = "Quest accettato";
 L["Quest Completed"] = "Missione completata";
 L["Quest Log Full"] = "Registro delle missioni completo";
 L["Trade Requests"] = "Richieste commerciali";
 L["Facing the wrong way"] = "Affrontare la strada sbagliata";
 L["Friends come Online"] = "Gli amici vengono online";
 L["Friends go Offline"] = "Gli amici vanno offline";
 L["Zone discovery"] = "Scoperta della zona";
 L["Unlearned Skills"] = "Competenze non apprese";
 L["Rested"] = "Riposato";
 L["Sent Mail"] = "Posta inviata";
 L["Dungeon Difficulty Changed"] = "Difficoltà del dungeon modificata";
 L["Not Enough Honor Points"] = "Non abbastanza punti d'onore";
 L["Not Arena Honor Points"] = "Punti d'onore Non Arena";
 L["Players Invited"] = "Giocatori invitati";
 L["Player Left your group"] = "Giocatore Ha lasciato il tuo gruppo";
 L["Player joins your group"] = "Il giocatore si unisce al tuo gruppo";
 L["War mode Off"] = "Modalità guerra Disattivata";
 L["War mode On"] = "Modalità guerra attiva";
 L["Pvp On"] = "Pvp Il";
 L["Pvp Off"] = "Pvp Disattivato";
 L["You Loot"] = "Bottini";
 L["You lost"] = "Hai perso";
 L["Money Gains"] = "Guadagni di denaro";
 L["Money Lost"] = "Soldi persi";
 L["Items Looted"] = "Oggetti saccheggiati";
 L["Shadow Resistance"] = "Resistenza alle ombre";
 L["Arcane Resistance"] = "Resistenza Arcana";
 L["Frost Resistance"] = "Resistenza al gelo";
 L["Fire Resistance"] = "Resistenza al fuoco";
 L["Nature Resistance"] = "Resistenza alla natura";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Testo di combattimento a scorrimento avanzato caricato correttamente. Per caricare il pannello delle opzioni. Digitare /ASCT o fare clic sull'icona della mini mappa.";
--New things 9/2/2022
 L["Holy Power"] = "Potere Santo";
 L["Astral Power"] = "Potere astrale";
 L["Maelstrom"] = "Vortice";
 L["Insanity"] = "Demenza";
 L["Fury"] = "Furia";
 L["Focus"] = "Fuoco";
 --New things 9/18/2022
 L["Hit Rating"] = "Hit Rating";
 L["Critical Strike Rating"] = "Valutazione critica degli scioperi";
 L["Expertise Rating"] = "Valutazione delle competenze";
 L["Resilience Rating"] = "Valutazione della resilienza";
 L["Dodge Rating"] = "Valutazione Dodge";
 L["Defense Rating"] = "Valutazione della difesa";
 L["Parry Rating"] = "Valutazione Parry";
 L["Block Rating"] = "Valutazione del blocco";
 L["Haste Rating"] = "Valutazione della fretta";
 L["Spell Power"] = "Potere dell'incantesimo";
 L["Unsupported_Line_1"] = "Stai eseguendo Advanced Scrolling Combat Text in una versione di gioco non supportata.";
 L["Unsupported_Line_2"] = "L'Addon non funziona sui server privati.";
 L["Unsupported_Line_3"] = "L'addon è supportato solo sui server ufficiali Blizzard.";
 L["Unsupported_Line_4"] = "Vuoi disabilitare l'addon? O tenerlo abilitato?";
 L["Unsupported_Line_5"] = "Advanced Scrolling Combat Text non caricato!";
 L["Keep Enabled"] = "Mantieni abilitato";
 L["Disable"] = "Disabilitare";
 L["You have gained the"] = "Hai ottenuto il";
 L["skill"] = "abilità";
 L["Skill Gained"] = "Abilità acquisite";
end