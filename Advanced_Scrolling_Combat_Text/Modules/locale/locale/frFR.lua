local ASCT, L = ASCT_Table, ASCT_locale_Table
local API, Strings = ASCT.API, ASCT.Strings
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--French
-------------------------------------
if locale == Strings.LocaleName["frFR"] then
 --Rogue
 L["Rogue"] = "Fripouille";
 L["Assassination"] = "Assassinat";
 L["Combat"] = "Combat";
 L["Outlaw"] = "Hors-la-loi";
 L["Subtlety"] = "Subtilité";
 --Priest
 L["Priest"] = "Prêtre";
 L["Shadow"] = "Ombre";
 L["Discipline"] = "Discipline";
 L["Racials_Priest"] = "Prêtre_racial";
 --Warrior
 L["Warrior"] = "Guerrier";
 L["Arms"] = "Armes";
 L["Fury"] = "Furie";
 --Druid
 L["Druid"] = "Druide";
 L["Balance"] = "Balance";
 L["Feral_Combat"] = "Combat_sauvage";
 --Shaman
 L["Shaman"] = "Chaman";
 L["Elemental"] = "Élémentaire";
 L["Enhancement"] = "Amélioration";
 --Warlock
 L["Warlock"] = "Sorcier";
 L["Affliction"] = "Affliction";
 L["Demonology"] = "Démonologie";
 L["Destruction"] = "Destruction";
 --Hunter
 L["Hunter"] = "Chasseur";
 L["Beast Mastery"] = "Maîtrise de la Bête";
 L["Marksmanship"] = "Tir";
 L["Survival"] = "Survie";
 --Paladin
 L["Paladin"] = "Paladin";
 L["Retribution"] = "Châtiment";
  --Mage
 L["Mage"] = "Mage";
 L["Arcane"] = "Arcanes";
 L["Fire"] = "Feu";
 --Demon Hunter
 L["Havoc"] = "Rovina";
 L["Vengeance"] = "Vendetta";
 --Death Knight
 L["Blood"] = "Sang";
 L["Unholy"] = "Impie";
 --Monk
 L["Brewmaster"] = "Maître brasseur";
 L["Mistweaver"] = "Tisserand de brume";
 L["Windwalker"] = "Marcheur de vent";
 --Evoker
 L["Preservation"] = "Préservation";
 L["Devastation"] = "Dévastation";
 L["Augmentation"] = "Augmentation";
  --Shared-Spec-names
 L["Frost"] = "Gel";
 L["Restoration"] = "Restauration";
 L["Holy"] = "Saint";
 L["Protection"] = "Protection";
 --Side-Buttons
 L["Reset Class"] = "Réinitialiser la classe";
 L["Title_SARTE"] = "Texte de capacité de défilement";
 L["Tooltip Button"] = "Cliquez avec le bouton gauche de la souris pour ouvrir le panneau Options";
 L["Color Picker"] = "Sélecteur de couleurs";
 L["Racials"] = "Races";
 L["Shared Spell cd's"] = "CD de sorts partagés";
 --Custom Button Names
 L["Shocks"] = "Chocs";
 L["Traps"] = "Pièges";
 L["Lust"] = "Luxure";
 L["This Tab is for Shaman's and Hunter's only."] = "Cet onglet est réservé aux chamans et aux chasseurs.";
 --Ready Text
 L["msg"] = "est maintenant prêt!";
 L["msg_Shocks"] = " Les chocs sont maintenant prêts!";
 L["msg_Traps"] = " Les pièges sont maintenant prêts!";
 L["msg_Lust"] = " La luxure est maintenant prête!";
 --Message
 L["Nothing"] = "Rien";
 L["Open To Options Panel"] = "Ouvrir le panneau Options"; 
  --New things
 L["Icon"] = "Icône";
 L["Name"] = "Nom";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Vos compétences en";
 L["has increased to"] = "a augmenté à";
 L["Congratulations"] = "Félicitations";
 L["you are now level"] = "vous êtes maintenant de niveau";
 L["Title"] = "Texte de combat défilant avancé";
 L["Experience Gains"] = "Gains d’expérience";
 L["Level up message"] = "Message de mise à niveau vers le haut";
 L["Skill Up"] = "Compétences en haut";
 L["Resource lost"] = "Ressource perdue";
 L["Mana"] = "Mana";
 L["Rage"] = "Rage";
 L["Energy"] = "Énergie";
 L["Runic Power"] = "Puissance runique";
 L["Armor"] = "Armure";
 L["Armor lost"] = "Armure perdue";
 L["Armor Gained"] = "Armure gagnée";
 L["Slash Command Message"] = "La commande Slash a été modifiée pour Advanced Scrolling Combat Text. Tapez /asct pour ouvrir le panneau d’options";
 L["Features"] = "Fonctionnalités";
 L["Message"] = "Le défilement du texte de combat est désactivé. S’il n’est pas activé, le texte Advanced Scrolling Combat n’affichera rien.";
 --New things 8/11/2022
 L["Leveling"] = "Nivellement";
 L["Lost"] = "Perdu";
 L["Gained"] = "Gagné";
 L["Attack Power"] = "Puissance d’attaque";
 L["Agility"] = "Agilité";
 L["Strength"] = "Force";
 L["Intellect"] = "Intellect";
 L["Spirit"] = "Esprit";
 L["Stamina"] = "Endurance";
 --New things 8/14/2022
 L["Auras"] = "Auras";
 L["Fading Debuffs Alert"] = "Alerte Debuffs en décoloration";
 L["Is About to Fade!"] = "Est sur le point de s’estomper!";
 L["Debuff has 5 seconds left"] = "Debuff a encore 5 secondes";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Annonce qu’un Debuff que vous avez appliqué est sur le point de disparaître sur la cible.";
 L["Fading Buffs Alert"] = "Alerte Fading Buffs";
 L["Buff has 5 seconds left"] = "Buff a encore 5 secondes";
 L["Announces when a buff you gained is about to fade"] = "Annonce quand un buff que vous avez gagné est sur le point de s’estomper";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Couleurs pour les statistiques";
 L["Color Picker Spells"] = "Couleurs pour les sorts";
 L["Color Picker Leveling"] = "Couleurs pour le nivellement";
 L["Achievement Gains"] = "Gains de réussite";
 L["Colors for Fading Auras"] = "Couleurs pour estomper les auras";
 --New things 8/17/2022
 L["Health"] = "Santé";
 L["You died at"] = "Vous êtes décédé à";
 L["Death Coordinates"] = "Coordonnées de décès";
 L["Has challenged you to a duel."] = "Vous a mis au défi d’un duel.";
 L["Duel Requests"] = "Demandes de duel";
 L["Messages"] = "Messages";
 L["Inventory full"] = "Inventaire complet";
 L["Locked Items"] = "Éléments verrouillés";
 L["Group Invites"] = "Invitations de groupe";
 L["Quest Accepted"] = "Quête acceptée";
 L["Quest Completed"] = "Quête terminée";
 L["Quest Log Full"] = "Journal de quête complet";
 L["Trade Requests"] = "Demandes commerciales";
 L["Facing the wrong way"] = "Faire face à la mauvaise façon";
 L["Friends come Online"] = "Les amis viennent en ligne";
 L["Friends go Offline"] = "Les amis se déconnectent";
 L["Zone discovery"] = "Découverte de zone";
 L["Unlearned Skills"] = "Compétences non acquises";
 L["Rested"] = "Reposé";
 L["Sent Mail"] = "Courrier envoyé";
 L["Dungeon Difficulty Changed"] = "La difficulté du donjon a changé";
 L["Not Enough Honor Points"] = "Pas assez de points d’honneur";
 L["Not Arena Honor Points"] = "Pas de points d’honneur Arena";
 L["Players Invited"] = "Joueurs invités";
 L["Player Left your group"] = "Joueur a quitté votre groupe";
 L["Player joins your group"] = "Le joueur rejoint v";
 L["War mode Off"] = "Mode Guerre Désactivé";
 L["War mode On"] = "Mode Guerre Activé";
 L["Pvp On"] = "Pvp activé";
 L["Pvp Off"] = "Pvp désactivé";
 L["You Loot"] = "Vous pillez";
 L["You lost"] = "Vous avez perdu";
 L["Money Gains"] = "Gains d’argent";
 L["Money Lost"] = "Argent perdu";
 L["Items Looted"] = "Objets pillés";
 L["Shadow Resistance"] = "Résistance de l’ombre";
 L["Arcane Resistance"] = "Résistance arcane";
 L["Frost Resistance"] = "Résistance au gel";
 L["Fire Resistance"] = "Résistance au feu";
 L["Nature Resistance"] = "Résistance à la nature";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Texte de combat à défilement avancé chargé avec succès. Pour charger le panneau d’options. Tapez /ASCT ou cliquez sur l’icône de la mini-carte.";
 --New things 9/2/2022
 L["Holy Power"] = "Puissance Sainte";
 L["Astral Power"] = "Puissance astrale";
 L["Maelstrom"] = "Tourbillon";
 L["Insanity"] = "Folie";
 L["Fury"] = "Furie";
 L["Focus"] = "Foyer";
 --New things 9/18/2022
 L["Hit Rating"] = "Note de succès";
 L["Critical Strike Rating"] = "Cote de frappe critique";
 L["Expertise Rating"] = "Évaluation de l’expertise";
 L["Resilience Rating"] = "Cote de résilience";
 L["Dodge Rating"] = "Cote Dodge";
 L["Defense Rating"] = "Cote de défense";
 L["Parry Rating"] = "Évaluation de Parry";
 L["Block Rating"] = "Évaluation des blocs";
 L["Haste Rating"] = "Évaluation à la hâte";
 L["Spell Power"] = "Puissance du sort";
 L["Unsupported_Line_1"] = "Vous exécutez Advanced Scrolling Combat Text dans une version de jeu non prise en charge.";
 L["Unsupported_Line_2"] = "L’addon ne fonctionne pas sur les serveurs privés.";
 L["Unsupported_Line_3"] = "L’addon n’est pris en charge que sur les serveurs officiels de Blizzard.";
 L["Unsupported_Line_4"] = "Souhaitez-vous désactiver l’addon? Ou le garder activé?";
 L["Unsupported_Line_5"] = "Advanced Scrolling Combat Text non chargé!";
 L["Keep Enabled"] = "Rester activé";
 L["Disable"] = "Désactiver";
 L["You have gained the"] = "Vous avez gagné le";
 L["skill"] = "habileté";
 L["Skill Gained"] = "Compétences acquises";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Pénétration de blindage";
 L["Spell Penetration"] = "Pénétration des sorts";
 --New Things 5/27/2023 
 L["Stats"] = "Stats";
 L["Trinkets"] = "Bibelots";
 L["Trinket Slot One"] = "Le premier bibelot de la fente 13.";
 L["Trinket Slot One Info"] = "Annonce quand votre premier bibelot sort du temps de recharge.";
 L["Trinket 1"] = "Bibelot 1";
 L["Trinket 2"] = "Bibelot 2";
 L["Trinket Slot Two"] = "Le deuxième bibelot dans la fente 14.";
 L["Trinket Slot Two Info"] = "Annonce quand votre deuxième bibelot sort du temps de recharge.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Temps de fondu de Debuff";
 L["The time warning for Debuffs about to fade"] = "L’avertissement de temps pour les débuffs sur le point de s’estomper";
 L["The size of the Spell Icon"] = "La taille de l’icône de sort";
 L["Spell Icon Size"] = "Taille de l’icône de sort";
 L["Settings"] = "Paramètres";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "Réinitialiser la taille de l’icône";
 L["Reset Debuff fade time"] = "Réinitialiser le temps de fondu Debuff";
 L["Reset Both Aura and Icon Values"] = "Réinitialiser les valeurs d’aura et d’icône";
 L["Trinket_1"] = "Bibelot 1";
 L["Trinket_2"] = "Bibelot 2";
 --New Things 8/29/2023
 L["Loot"] = "Piller";
 --New Things 9/2/2023
 L["Alliance"] = "Alliance";
 L["Horde"] = "Horde";
 --New Things 9/5/2023
 L["Icon Size"] = "Taille de l’icône";
 L["The size of the message icon"] = "La taille de l’icône de message";
 --New things 9/17/2023
 L["Mastery"] = "Maîtrise";
 L["Avoidance"] = "Évitement";
 --New things 9/24/2023
 L["Minimap Icon"] = "Icône Minimap";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "Le défilement du texte de combat est désactivé. S’il n’est pas activé, le texte de combat à défilement avancé n’affichera rien.";
 --New things 1/01/2024
 L["is now ready!"] = "est maintenant prêt !";
 L["Is Now Ready!"] = "C’est maintenant prêt !";
 L["is about to fade!"] = "est sur le point de s’estomper !";
 L["Is About To Fade!"] = "est sur le point de s’estomper !";
 L["Uppercase"] = "Majuscule";
 L["Lowercase"] = "Minuscule";
 --New things 3/16/2024
 L["About"] = "Environ";
 L["About_Line_1"] = "Texte de combat à défilement avancé";
 L["About_Line_2"] = "(Nommé à l’origine Scrolling Ability Text)";
 L["About_Line_3"] = "Il s’agit d’un addon qui ajoute une multifonctionnalité que le texte de combat flottant par défaut de Blizzard n’offre pas.";
 L["About_Line_4"] = "Cet addon peut suivre la fin du temps de recharge d’une capacité, les changements de statistiques, les gains d’expérience, les pertes de ressources, et plus encore !";
 L["About_Line_5"] = "Vous rencontrez un bug ou souhaitez ajouter une fonctionnalité ? Signalez-le au dépôt GitHub !";
 --New things 3/31/2024
 L["Resistances"] = "Résistances";
 --New things 5/24/2024
 L["Transmog"] = "Transmogrification";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "a été ajouté à votre collection d'apparences.";
 --New things 6/01/2024
 L["Miscellaneous"] = "Divers";
 --New things 6/23/2024
 L["Icon Enable"] = "Icône Activer";
 L["Name Enable"] = "Nom Activer";
 --New things 7/14/2024
 L["Ready!"] = "Prêt !";
 L["Is Ready!"] = "Est prêt !";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "Oui";
 L["Message Selector"] = "Sélecteur de messages";
 --New things 01/01/2025
 L["Quest Progress"] = "Progression de la quête";
 L["Complete"] = "Complet";
 --New things 02/01/2025
 L["On Login"] = "À la connexion";
 L["Chatbox"] = "Boîte de discussion";
 L["Transparency"] = "Transparence";
 L["Entry Limit"] = "Limite de participation";
 L["Confirm"] = "Confirmer";
 L["Use /asct help for a list of all the slash commands used in the asct addon."] = "Utilisez l’aide /asct pour obtenir la liste de toutes les commandes slash utilisées dans l’addon asct.";
 --New things 02/03/2025
 L["Ready Message"] = "Message de prêt";
 --New things 03/22/2025
 L["PVP Talents"] = "Talents JcJ";
 --New things 04/05/2025
 L["Reset Options Panel Size And Location"] = "Options de réinitialisation Taille et emplacement du panneau";
 --New things 06/08/2025
 L["PVP Power Damage"] = "Dégâts de puissance PVP";
 L["PVP Power Healing"] = "PVP Puissance de Guérison";
 L["PVP Power"] = "PVP Pouvoir";
 L["PVP Resilience"] = "Résilience PVP";
 L["Hit"] = "Frapper";
 L["Haste"] = "Hâte";
 L["Expertise"] = "Expertise";
 L["Critical Strike"] = "Frappe Critique";
 L["Dodge"] = "Esquiver";
 L["Parry"] = "Parry";
 --New things 06/26/2025
 L["Chi"] = "chi";
 L["Minimum Resource Cost"] = "Coût minimum des ressources";
 L["The Minimum Resource Cost"] = "Le coût minimum des ressources";
 L["Reset All Slider Values"] = "Réinitialiser toutes les valeurs des curseurs";
 L["Reset Minimum Resource Cost"] = "Réinitialiser le coût minimum des ressources";
end