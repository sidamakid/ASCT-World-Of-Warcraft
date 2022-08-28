local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
if locale == "frFR" then
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
 L["Tab"] = "Cet onglet est réservé aux chamans et aux chasseurs.";
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
 L["Title"] = "Texte de combat à défilement avancé";
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
 L["Leveling]"] = "Nivellement";
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
 L["Death Quadrants"] = "Quadrants de la mort";
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
end