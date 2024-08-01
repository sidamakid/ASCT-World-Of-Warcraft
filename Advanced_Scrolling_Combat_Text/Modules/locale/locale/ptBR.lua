local ASCT, L = ASCT_Table, ASCT_locale_Table
local API = ASCT.API
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--Portuguese (Brazil)
-------------------------------------
if locale == "ptBR" then
 --Rogue
 L["Rogue"] = "Velhaco";
 L["Assassination"] = "Assassinato";
 L["Combat"] = "Combate";
 L["Outlaw"] = "Bandido";
 L["Subtlety"] = "Sutileza";
 --Priest
 L["Priest"] = "Sacerdote";
 L["Shadow"] = "Sombra";
 L["Discipline"] = "Disciplina";
 L["Racials_Priest"] = "Padre Racial";
 --Warrior
 L["Warrior"] = "Guerreiro";
 L["Arms"] = "Armas";
 L["Fury"] = "Fúria";
 --Druid
 L["Druid"] = "Druida";
 L["Balance"] = "Equilíbrio";
 L["Feral_Combat"] = "Combate_Feroz";
 --Shaman
 L["Shaman"] = "Xamã";
 L["Elemental"] = "Elementar";
 L["Enhancement"] = "Melhoria";
 --Warlock
 L["Warlock"] = "Feiticeiro";
 L["Affliction"] = "Aflição";
 L["Demonology"] = "Demonologia";
 L["Destruction"] = "Destruição";
 --Hunter
 L["Hunter"] = "Caçador";
 L["Beast Mastery"] = "Maestria da Besta";
 L["Marksmanship"] = "Pontaria";
 L["Survival"] = "Sobrevivência";
 --Paladin
 L["Paladin"] = "Paladino";
 L["Retribution"] = "Retribuição";
  --Mage
 L["Mage"] = "Mago";
 L["Arcane"] = "Arcano";
 L["Fire"] = "Fogo";
 --Demon Hunter
 L["Havoc"] = "Destruição";
 L["Vengeance"] = "Vingança";
 --Death Knight
 L["Blood"] = "Sangue";
 L["Unholy"] = "Profano";
 --Monk
 L["Brewmaster"] = "Mestre cervejeiro";
 L["Mistweaver"] = "Tecelão de névoa";
 L["Windwalker"] = "Andador de vento";
 --Evoker
 L["Preservation"] = "Preservação";
 L["Devastation"] = "Devastação";
 L["Augmentation"] = "Aumento";
  --Shared-Spec-names
 L["Frost"] = "Geada";
 L["Restoration"] = "Restauração";
 L["Holy"] = "Santo";
 L["Protection"] = "Proteção";
 --Side-Buttons
 L["Reset Class"] = "Classe reset";
 L["Title_SARTE"] = "Texto de habilidade de rolagem";
 L["Tooltip Button"] = "Clique à esquerda para abrir o painel Opções";
 L["Color Picker"] = "Catador de cores";
 L["Racials"] = "Raciais";
 L["Shared Spell cd's"] = "Cd's de Feitiço Compartilhado";
 --Custom Button Names
 L["Shocks"] = "Choques";
 L["Traps"] = "Armadilhas";
 L["Lust"] = "Luxúria";
 L["This Tab is for Shaman's and Hunter's only."] = "Esta guia é só para xamã e hunter.";
 --Ready Text
 L["msg"] = "está pronto!";
 L["msg_Shocks"] = " Os choques estão prontos!";
 L["msg_Traps"] = " As armadilhas estão prontas!";
 L["msg_Lust"] = " A luxúria está pronta!";
 --Message
 L["Nothing"] = "Nada";
 L["Open To Options Panel"] = "Painel aberto para opções";
 --New things
 L["Icon"] = "Ícone";
 L["Name"] = "Nome";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Sua habilidade em";
 L["has increased to"] = "aumentou para";
 L["Congratulations"] = "Parabéns";
 L["you are now level"] = "você está agora nível";
 L["Title"] = "Texto de combate de rolagem avançada";
 L["Experience Gains"] = "Experience Gains";
 L["Level up message"] = "Mensagem de nível para cima";
 L["Skill Up"] = "Skill Up";
 L["Resource lost"] = "Recurso perdido";
 L["Mana"] = "Mana";
 L["Rage"] = "Fúria";
 L["Energy"] = "Energia";
 L["Runic Power"] = "Poder Runico";
 L["Armor"] = "Armadura";
 L["Armor lost"] = "Armadura perdida";
 L["Armor Gained"] = "Armadura adquirida";
 L["Slash Command Message"] = "O comando Slash foi alterado para Advanced Scrolling Combat Text. Digite /asct para abrir o painel de opções";
 L["Features"] = "Características";
 L["Message"] = "O texto de combate de rolagem está desativado. Se não estiver ativado, o texto Advanced Scrolling Combat não mostrará nada.";
 --New things 8/11/2022
 L["Leveling"] = "Nivelamento";
 L["Lost"] = "Perdido";
 L["Gained"] = "Ganhou";
 L["Attack Power"] = "Poder de Ataque";
 L["Agility"] = "Agilidade";
 L["Strength"] = "Força";
 L["Intellect"] = "Intelecto";
 L["Spirit"] = "Espírito";
 L["Stamina"] = "Vigor";
 --New things 8/14/2022
 L["Auras"] = "Auras";
 L["Fading Debuffs Alert"] = "Alerta de debuffs desbotamento";
 L["Is About to Fade!"] = "Está prestes a desaparecer!";
 L["Debuff has 5 seconds left"] = "Debuff tem 5 segundos restantes.";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Anuncia que um Debuff que você aplicou está prestes a desaparecer no Alvo.";
 L["Fading Buffs Alert"] = "Alerta de buffs de desbotamento";
 L["Buff has 5 seconds left"] = "Buff tem 5 segundos restantes";
 L["Announces when a buff you gained is about to fade"] = "Anuncia quando um buff que você ganhou está prestes a desaparecer";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Cores para estatísticas";
 L["Color Picker Spells"] = "Cores para Feitiços";
 L["Color Picker Leveling"] = "Cores para nivelamento";
 L["Achievement Gains"] = "Ganhos de realização";
 L["Colors for Fading Auras"] = "Cores para Auras desbotadas";
 --New things 8/17/2022
 L["Health"] = "Saúde";
 L["You died at"] = "Você morreu em";
 L["Death Quadrants"] = "Quadrantes da Morte";
 L["Has challenged you to a duel."] = "Desafiou você para um duelo.";
 L["Duel Requests"] = "Pedidos de duelo";
 L["Messages"] = "Mensagens";
 L["Inventory full"] = "Inventário completo";
 L["Locked Items"] = "Itens bloqueados";
 L["Group Invites"] = "Convites em grupo";
 L["Quest Accepted"] = "Missão Aceita";
 L["Quest Completed"] = "Missão concluída";
 L["Quest Log Full"] = "Registro de quest completo";
 L["Trade Requests"] = "Pedidos de Comércio";
 L["Facing the wrong way"] = "Enfrentando o caminho errado";
 L["Friends come Online"] = "Amigos vêm online";
 L["Friends go Offline"] = "Amigos ficam offline";
 L["Zone discovery"] = "Descoberta de zona";
 L["Unlearned Skills"] = "Habilidades Não Conquistadas";
 L["Rested"] = "Descansada";
 L["Sent Mail"] = "Correio enviado";
 L["Dungeon Difficulty Changed"] = "Dificuldade de masmorra alterada";
 L["Not Enough Honor Points"] = "Pontos de honra não suficientes";
 L["Not Arena Honor Points"] = "Não pontos de honra da Arena";
 L["Players Invited"] = "Jogadores Convidados";
 L["Player Left your group"] = "Jogador deixou seu grupo";
 L["Player joins your group"] = "Jogador se junta ao seu grupo";
 L["War mode Off"] = "Modo de guerra Desligado";
 L["War mode On"] = "Modo de guerra Ligado";
 L["Pvp On"] = "Pvp On";
 L["Pvp Off"] = "Pvp Off";
 L["You Loot"] = "Você saqueia";
 L["You lost"] = "Você perdeu";
 L["Money Gains"] = "Ganhos de Dinheiro";
 L["Money Lost"] = "Dinheiro Perdido";
 L["Items Looted"] = "Itens Saqueados";
 L["Shadow Resistance"] = "Resistência às sombras";
 L["Arcane Resistance"] = "Resistência Arcaica";
 L["Frost Resistance"] = "Resistência à geada";
 L["Fire Resistance"] = "Resistência ao fogo";
 L["Nature Resistance"] = "Resistência à Natureza";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Texto de combate de rolagem avançado carregado com sucesso. Para carregar o painel de opções. Digite /ASCT ou clique no ícone do mini mapa.";
--New things 9/2/2022
 L["Holy Power"] = "Santo Poder";
 L["Astral Power"] = "Poder Astral";
 L["Maelstrom"] = "Redemoinho";
 L["Insanity"] = "Insanidade";
 L["Fury"] = "Fúria";
 L["Focus"] = "Foco";
 --New things 9/18/2022
 L["Hit Rating"] = "Classificação de acerto";
 L["Critical Strike Rating"] = "Classificação crítica de greve";
 L["Expertise Rating"] = "Classificação de Experiência";
 L["Resilience Rating"] = "Classificação de Resiliência";
 L["Dodge Rating"] = "Classificação de Dodge";
 L["Defense Rating"] = "Classificação de Defesa";
 L["Parry Rating"] = "Classificação parry";
 L["Block Rating"] = "Classificação do bloco";
 L["Haste Rating"] = "Classificação a pressa";
 L["Spell Power"] = "Poder Ortodr ou feitiço";
 L["Unsupported_Line_1"] = "Você está executando Advanced Scrolling Combat Text em uma versão de jogo sem suporte.";
 L["Unsupported_Line_2"] = "O Addon não funciona em servidores privados.";
 L["Unsupported_Line_3"] = "O addon só é suportado nos Servidores Oficiais da Blizzard.";
 L["Unsupported_Line_4"] = "Gostaria de desativar o addon? Ou mantê-lo ativado?";
 L["Unsupported_Line_5"] = "Texto de Combate de Rolagem Avançada não carregado!";
 L["Keep Enabled"] = "Mantenha ativado";
 L["Disable"] = "Desabilitar";
 L["You have gained the"] = "Você ganhou o";
 L["skill"] = "habilidade";
 L["Skill Gained"] = "Habilidade adquirida";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Penetração da armadura";
 L["Spell Penetration"] = "Penetração de Feitiços";
 --New Things 5/27/2023 
 L["Stats"] = "Estatísticas";
 L["Trinkets"] = "Bugigangas";
 L["Trinket Slot One"] = "A primeira bugiganga no slot 13.";
 L["Trinket Slot One Info"] = "Anuncia quando sua primeira bugiganga sai do frio.";
 L["Trinket 1"] = "Bugiganga 1";
 L["Trinket 2"] = "Bugiganga 2";
 L["Trinket Slot Two"] = "A segunda bugiganga no slot 14.";
 L["Trinket Slot Two Info"] = "Anuncia quando sua segunda bugiganga sai do frio.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Debuff fade time";
 L["The time warning for Debuffs about to fade"] = "O aviso de tempo para Debuffs prestes a desaparecer";
 L["The size of the Spell Icon"] = "O tamanho do ícone de feitiço";
 L["Spell Icon Size"] = "Tamanho do ícone de feitiço";
 L["Settings"] = "Configurações";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "Redefinir o tamanho do ícone";
 L["Reset Debuff fade time"] = "Redefinir o tempo de desvanecimento do Debuff";
 L["Reset Both Aura and Icon Values"] = "Redefinir os valores de Aura e ícone";
 L["Trinket_1"] = "Bugiganga 1";
 L["Trinket_2"] = "Bugiganga 2";
 --New Things 8/29/2023
 L["Loot"] = "Saque";
 --New Things 9/2/2023
 L["Alliance"] = "Aliança";
 L["Horde"] = "Horda";
 --New Things 9/5/2023
 L["Icon Size"] = "Tamanho do ícone";
 L["The size of the message icon"] = "O tamanho do ícone de mensagem";
 --New things 9/17/2023
 L["Mastery"] = "Domínio";
 L["Avoidance"] = "Evitar";
 --New things 9/24/2023
 L["Minimap Icon"] = "Ícone do Minimapa";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "A rolagem do texto de combate está desativada. Se não estiver habilitado, o Texto de Combate de Rolagem Avançada não mostrará nada.";
 --New things 1/01/2024
 L["is now ready!"] = "está pronto!";
 L["Is Now Ready!"] = "Já está pronto!";
 L["is about to fade!"] = "está prestes a desaparecer!";
 L["Is About To Fade!"] = "Está prestes a desaparecer!";
 L["Uppercase"] = "Maiúscula";
 L["Lowercase"] = "Minúsculo";
 --New things 3/16/2024
 L["About"] = "Sobre";
 L["About_Line_1"] = "Texto de combate de rolagem avançada";
 L["About_Line_2"] = "(Originalmente chamado de texto de capacidade de rolagem)";
 L["About_Line_3"] = "É um addon que adiciona multifuncionalidade que o Texto de Combate Flutuante Padrão da Blizzard não oferece.";
 L["About_Line_4"] = "Este addon pode rastrear quando uma habilidade sai do cooldown, mudanças de stat, ganhos de experiência, perdas de recursos e muito mais!";
 L["About_Line_5"] = "Encontrar um bug ou quer adicionar um recurso? Denuncie ao repositório do GitHub!";
 --New things 3/31/2024
 L["Resistances"] = "Resistências";
 --New things 5/24/2024
 L["Transmog"] = "Transmogrificação";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "foi adicionado à sua coleção de aparências.";
 --New things 6/01/2024
 L["Miscellaneous"] = "Variado";
 --New things 6/23/2024
 L["Icon Enable"] = "Ativar ícone";
 L["Name Enable"] = "Nome Ativar";
 --New things 7/14/2024
 L["Ready!"] = "Pronto!";
 L["Is Ready!"] = "Está pronto!";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "S";
 L["Message Selector"] = "Seletor de mensagens";
end