local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Spanish (Mexico)
-------------------------------------
if locale == "esMX" then
 --Rogue
 L["Rogue"] = "Pillo";
 L["Assassination"] = "Asesinato";
 L["Combat"] = "Combate";
 L["Outlaw"] = "Fuorilegge";
 L["Subtlety"] = "Sutileza";
 --Priest
 L["Priest"] = "Sacerdote";
 L["Shadow"] = "Sombra";
 L["Discipline"] = "Disciplina";
 L["Racials_Priest"] = "Sacerdote_Racial";
 --Warrior
 L["Warrior"] = "Guerrero";
 L["Arms"] = "Armas";
 L["Fury"] = "Furia";
 --Druid
 L["Druid"] = "Druida";
 L["Balance"] = "Equilibrar";
 L["Feral_Combat"] = "Combate_asilvestrado";
 --Shaman
 L["Shaman"] = "Chamán";
 L["Elemental"] = "Elemental";
 L["Enhancement"] = "Mejora";
 --Warlock
 L["Warlock"] = "Brujo";
 L["Affliction"] = "Aflicción";
 L["Demonology"] = "Demonología";
 L["Destruction"] = "Destrucción";
 --Hunter
 L["Hunter"] = "Cazador";
 L["Beast Mastery"] = "Dominio de la bestia";
 L["Marksmanship"] = "Puntería";
 L["Survival"] = "Supervivencia";
 --Paladin
 L["Paladin"] = "Paladín";
 L["Retribution"] = "Retribución";
  --Mage
 L["Mage"] = "Mago";
 L["Arcane"] = "Arcano";
 L["Fire"] = "Fuego";
 --Demon Hunter
 L["Havoc"] = "Estrago";
 L["Vengeance"] = "Venganza";
 --Death Knight
 L["Blood"] = "Sangre";
 L["Unholy"] = "Profano";
 --Monk
 L["Brewmaster"] = "Maestro cervecero";
 L["Mistweaver"] = "Tejedor de niebla";
 L["Windwalker"] = "Caminante de viento";
 --Evoker
 L["Preservation"] = "Preservación";
 L["Devastation"] = "Devastación";
 --Shared-Spec-names
 L["Frost"] = "Helada";
 L["Protection"] = "Protección";
 L["Holy"] = "Santo";
 L["Restoration"] = "Restauración";
--Side-Buttons
 L["Reset Class"] = "Restablecer clase";
 L["Title_SARTE"] = "Texto de capacidad de desplazamiento";
 L["Tooltip Button"] = "Haga clic con el botón izquierdo para abrir el panel Opciones";
 L["Color Picker"] = "Selector de color";
 L["Racials"] = "Razas";
 L["Shared Spell cd's"] = "CD de hechizos compartidos";
--Custom Button Names
 L["Shocks"] = "Choques";
 L["Traps"] = "Trampas";
 L["Lust"] = "Lujuria";
 L["Tab"] = "Esta pestaña es solo para chamanes y cazadores.";
 --Ready Text
 L["msg"] = "ya está listo!"
 L["msg_Shocks"] = " ¡Los choques ya están listos!"
 L["msg_Traps"] = " ¡Las trampas ya están listas!"
 L["msg_Lust"] = " ¡La lujuria ya está lista!"
 L["Nothing"] = "Nada";
 L["Open To Options Panel"] = "Abrir el panel Opciones";
 --New things
 L["Icon"] = "Icono";
 L["Name"] = "Nombre";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Tu habilidad en";
 L["has increased to"] = "ha aumentado a";
 L["Congratulations"] = "Felicidades";
 L["you are now level"] = "ahora estás nivelado";
 L["Title"] = "Texto de combate de desplazamiento avanzado";
 L["Experience Gains"] = "Ganancias de experiencia";
 L["Level up message"] = "Mensaje para subir de nivel";
 L["Skill Up"] = "Habilidad arriba";
 L["Resource lost"] = "Recursos perdidos";
 L["Mana"] = "Maná";
 L["Rage"] = "Rabia";
 L["Energy"] = "Energía";
 L["Runic Power"] = "Potencia rúnica";
 L["Armor"] = "Armadura";
 L["Armor lost"] = "Armadura perdida";
 L["Armor Gained"] = "Armadura ganada";
 L["Slash Command Message"] = "Se ha cambiado el comando Slash para Advanced Scrolling Combat Text. Escriba /asct para abrir el panel de opciones";
 L["Features"] = "Funciones";
 L["Message"] = "El desplazamiento de texto de combate está deshabilitado. Si no está habilitado, el texto de Combate de desplazamiento avanzado no mostrará nada.";
 --New things 8/11/2022
 L["Leveling"] = "Nivelación";
 L["Lost"] = "Extraviado";
 L["Gained"] = "Ganado";
 L["Attack Power"] = "Poder de ataque";
 L["Agility"] = "Agilidad";
 L["Strength"] = "Fuerza";
 L["Intellect"] = "Intelecto";
 L["Spirit"] = "Espíritu";
 L["Stamina"] = "Resistencia";
 --New things 8/14/2022
 L["Auras"] = "Auras";
 L["Fading Debuffs Alert"] = "Alerta de desvanecimiento de debuffs";
 L["Is About to Fade!"] = "¡Está a punto de desvanecerse!";
 L["Debuff has 5 seconds left"] = "A Debuff le quedan 5 segundos";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Anuncia que un Debuff que aplicaste está a punto de desvanecerse en el Target.";
 L["Fading Buffs Alert"] = "Alerta de desvanecimiento de Buffs";
 L["Buff has 5 seconds left"] = "A Buff le quedan 5 segundos";
 L["Announces when a buff you gained is about to fade"] = "Anuncia cuando un buff que ganaste está a punto de desvanecerse";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Colores para estadísticas";
 L["Color Picker Spells"] = "Colores para hechizos";
 L["Color Picker Leveling"] = "Colores para nivelar";
 L["Achievement Gains"] = "Ganancias de logros";
 L["Colors for Fading Auras"] = "Colores para auras que se desvanecen";
 --New things 8/17/2022
 L["Health"] = "Salud";
 L["You died at"] = "Moriste en";
 L["Death Quadrants"] = "Cuadrantes de la muerte";
 L["Has challenged you to a duel."] = "Te ha retado a un duelo.";
 L["Duel Requests"] = "Solicitudes de duelo";
 L["Messages"] = "Mensajes";
 L["Inventory full"] = "Inventario completo";
 L["Locked Items"] = "Elementos bloqueados";
 L["Group Invites"] = "Invitaciones de grupo";
 L["Quest Accepted"] = "Quest aceptado";
 L["Quest Completed"] = "Misión completada";
 L["Quest Log Full"] = "Registro de misiones completo";
 L["Trade Requests"] = "Solicitudes comerciales";
 L["Facing the wrong way"] = "Enfrentar el camino equivocado";
 L["Friends come Online"] = "Los amigos se conectan";
 L["Friends go Offline"] = "Los amigos se desconectan";
 L["Zone discovery"] = "Detección de zonas";
 L["Unlearned Skills"] = "Habilidades no aprendidas";
 L["Rested"] = "Descansado";
 L["Sent Mail"] = "Correo enviado";
 L["Dungeon Difficulty Changed"] = "Dificultad de mazmorra cambiada";
 L["Not Enough Honor Points"] = "No hay suficientes puntos de honor";
 L["Not Arena Honor Points"] = "No arena honor points";
 L["Players Invited"] = "Jugadores invitados";
 L["Player Left your group"] = "El jugador abandonó tu grupo";
 L["Player joins your group"] = "El jugador se une a tu grupo";
 L["War mode Off"] = "Modo de guerra desactivado";
 L["War mode On"] = "Modo de guerra Activado";
 L["Pvp On"] = "Pvp Activado";
 L["Pvp Off"] = "Pvp Desactivado";
 L["You Loot"] = "Saqueas";
 L["You lost"] = "Perdiste";
 L["Money Gains"] = "Ganancias de dinero";
 L["Money Lost"] = "Dinero perdido";
 L["Items Looted"] = "Artículos saqueados";
 L["Shadow Resistance"] = "Resistencia a las sombras";
 L["Arcane Resistance"] = "Resistencia arcana";
 L["Frost Resistance"] = "Resistencia a las heladas";
 L["Fire Resistance"] = "Resistencia al fuego";
 L["Nature Resistance"] = "Resistencia a la naturaleza";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Texto de combate de desplazamiento avanzado cargado correctamente. Para cargar el panel de opciones. Escriba /ASCT o haga clic en el icono de mini mapa.";
 --New things 9/2/2022
 L["Holy Power"] = "Poder Santo";
 L["Astral Power"] = "Poder Astral";
 L["Maelstrom"] = "Vorágine";
 L["Insanity"] = "Locura";
 L["Fury"] = "Furia";
 L["Focus"] = "Centro de atención";
 --New things 9/18/2022
 L["Hit Rating"] = "Clasificación de aciertos";
 L["Critical Strike Rating"] = "Calificación de ataque crítico";
 L["Expertise Rating"] = "Calificación de experiencia";
 L["Resilience Rating"] = "Calificación de resiliencia";
 L["Dodge Rating"] = "Clasificación dodge";
 L["Defense Rating"] = "Calificación de defensa";
 L["Parry Rating"] = "Calificación de Parry";
 L["Block Rating"] = "Clasificación de bloques";
 L["Haste Rating"] = "Calificación de prisa";
 L["Spell Power"] = "Poder de hechizo";
 L["Unsupported_Line_1"] = "Estás ejecutando Texto de combate de desplazamiento avanzado en una versión de juego no compatible.";
 L["Unsupported_Line_2"] = "El complemento no funciona en servidores privados.";
 L["Unsupported_Line_3"] = "El complemento solo es compatible con los servidores oficiales de Blizzard.";
 L["Unsupported_Line_4"] = "¿Desea deshabilitar el complemento? ¿O mantenerlo habilitado?";
 L["Unsupported_Line_5"] = "¡El texto de combate de desplazamiento avanzado no está cargado!";
 L["Keep Enabled"] = "Mantener habilitado";
 L["Disable"] = "Inutilizar";
 L["You have gained the"] = "Has ganado el";
 L["skill"] = "habilidad";
 L["Skill Gained"] = "Habilidad adquirida";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Penetración de armadura";
 L["Spell Penetration"] = "Penetración de hechizos";
 --New Things 5/27/2023 
 L["Stats"] = "Estadísticas";
 L["Trinkets"] = "Baratijas";
 L["Trinket 1"] = "Baratija 1";
 L["Trinket Slot One"] = "La primera baratija en la ranura 13.";
 L["Trinket Slot One Info"] = "Anuncia cuándo sale la primera baratija del enfriamiento.";
 L["Trinket 2"] = "Baratija 2";
 L["Trinket Slot Two"] = "La segunda baratija en la ranura 14.";
 L["Trinket Slot Two Info"] = "Anuncia cuando tu segunda baratija sale del enfriamiento.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Tiempo de desvanecimiento de Debuff";
 L["The time warning for Debuffs about to fade"] = "La advertencia de tiempo para Debuffs a punto de desvanecerse";
end