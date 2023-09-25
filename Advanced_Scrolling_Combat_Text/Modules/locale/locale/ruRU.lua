local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Spanish Russian
-------------------------------------
if locale == "ruRU" then
 --Rogue
 L["Rogue"] = "Жулик";
 L["Assassination"] = "Убийство";
 L["Combat"] = "Бой";
 L["Outlaw"] = "Изгой";
 L["Subtlety"] = "Тонкость";
 --Priest
 L["Priest"] = "Священник";
 L["Shadow"] = "Тень";
 L["Discipline"] = "Дисциплина";
 L["Racials_Priest"] = "Расовый_священник";
 --Warrior
 L["Warrior"] = "Воин";
 L["Arms"] = "Оружие";
 L["Fury"] = "Ярость";
 --Druid
 L["Druid"] = "Друид";
 L["Balance"] = "Равновесие";
 L["Feral_Combat"] = "Дикий_бой";
 --Shaman
 L["Shaman"] = "Шаман";
 L["Elemental"] = "Стихийный";
 L["Enhancement"] = "Повышение";
 --Warlock
 L["Warlock"] = "Колдун";
 L["Affliction"] = "Огорчение";
 L["Demonology"] = "Демонология";
 L["Destruction"] = "Разрушение";
 --Hunter
 L["Hunter"] = "Охотник";
 L["Beast Mastery"] = "Мастерство зверя";
 L["Marksmanship"] = "Стрельбе";
 L["Survival"] = "Выживание";
 --Paladin
 L["Paladin"] = "Паладин";
 L["Retribution"] = "Возмездие";
  --Mage
 L["Mage"] = "Маг";
 L["Arcane"] = "Тайный";
 L["Fire"] = "Пожар";
 --Demon Hunter
 L["Havoc"] = "Опустошение";
 L["Vengeance"] = "Месть";
 --Death Knight
 L["Blood"] = "Кровь";
 L["Unholy"] = "Нечестивый";
 --Monk
 L["Brewmaster"] = "Пивовар";
 L["Mistweaver"] = "Туманоткачиха";
 L["Windwalker"] = "Ветрогенератор";
 --Evoker
 L["Preservation"] = "Сохранение";
 L["Devastation"] = "Опустошение";
  --Shared-Spec-names
 L["Frost"] = "Мороз";
 L["Restoration"] = "Восстановление";
 L["Holy"] = "Святой";
 L["Protection"] = "Защита";
 --Side-Buttons
 L["Reset Class"] = "Сброс класса";
 L["Title_SARTE"] = "Текст с возможностью прокрутки";
 L["Tooltip Button"] = "Щелкните левой кнопкой мыши, чтобы открыть панель «Параметры»";
 L["Color Picker"] = "Палитра цветов";
 L["Racials"] = "Расы";
 L["Shared Spell cd's"] = "Общие компакт-диски Spell";
 --Custom Button Names
 L["Shocks"] = "Потрясений";
 L["Traps"] = "Ловушки";
 L["Lust"] = "Вожделение";
 L["Tab"] = "Эта вкладка предназначена только для шаманов и охотников.";
 --Ready Text
 L["msg"] = "теперь готов!";
 L["msg_Shocks"] = " Шоки уже готовы!";
 L["msg_Traps"] = " Ловушки готовы!";
 L["msg_Lust"] = " Похоть теперь готова!";
 --Message
 L["Nothing"] = "Ничто";
 L["Open To Options Panel"] = "Открыть панель «Параметры»"; 
 --New things
 L["Icon"] = "Икона";
 L["Name"] = "Имя";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Ваше мастерство в";
 L["has increased to"] = "увеличился до";
 L["Congratulations"] = "Поздравляю";
 L["you are now level"] = "Теперь вы на уровне";
 L["Title"] = "Продвинутая прокрутка боевого текста";
 L["Experience Gains"] = "Накопление опыта";
 L["Level up message"] = "Сообщение о повышении уровня";
 L["Skill Up"] = "Повышение квалификации";
 L["Resource lost"] = "Потерянный ресурс";
 L["Mana"] = "Мана";
 L["Rage"] = "Ярость";
 L["Energy"] = "Энергия";
 L["Runic Power"] = "Руническая сила";
 L["Armor"] = "Броня";
 L["Armor lost"] = "Потерянные доспехи";
 L["Armor Gained"] = "Доспехи";
 L["Slash Command Message"] = "Команда Косая черта изменена для расширенной прокрутки боевого текста. Введите /asct, чтобы открыть панель параметров";
 L["Features"] = "Функции";
 L["Message"] = "Прокрутка боевого текста отключена. Если этот параметр не включен, текст Advanced Scrolling Combat ничего не покажет.";
 --New things 8/11/2022
 L["Leveling"] = "Нивелирование";
 L["Lost"] = "Потерянный";
 L["Gained"] = "Получил";
 L["Attack Power"] = "Мощность атаки";
 L["Agility"] = "Подвижность";
 L["Strength"] = "Сила";
 L["Intellect"] = "Ум";
 L["Spirit"] = "Дух";
 L["Stamina"] = "Выносливость";
 --New things 8/14/2022
 L["Auras"] = "Ауры";
 L["Fading Debuffs Alert"] = "Предупреждение о затухающих дебаффах";
 L["Is About to Fade!"] = "Вот-вот угаснет!";
 L["Debuff has 5 seconds left"] = "У Дебафф осталось 5 секунд";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Объявляет, что Debuff, который вы применили, вот-вот исчезнет на Target.";
 L["Fading Buffs Alert"] = "Предупреждение о затухающих баффах";
 L["Buff has 5 seconds left"] = "У Баффа осталось 5 секунд";
 L["Announces when a buff you gained is about to fade"] = "Объявляет, когда бафф, который вы получили, вот-вот исчезнет";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Цвета для статистики";
 L["Color Picker Spells"] = "Цвета для заклинаний";
 L["Color Picker Leveling"] = "Цвета для выравнивания";
 L["Achievement Gains"] = "Достижения";
 L["Colors for Fading Auras"] = "Цвета для увядающих аур";
 --New things 8/17/2022
 L["Health"] = "Здоровье";
 L["You died at"] = "Вы умерли в";
 L["Death Quadrants"] = "Квадранты смерти";
 L["Has challenged you to a duel."] = "Вызвал вас на дуэль.";
 L["Duel Requests"] = "Дуэльные запросы";
 L["Messages"] = "Сообщения";
 L["Inventory full"] = "Инвентарь полный";
 L["Locked Items"] = "Заблокированные элементы";
 L["Group Invites"] = "Групповые приглашения";
 L["Quest Accepted"] = "Квест принят";
 L["Quest Completed"] = "Квест завершен";
 L["Quest Log Full"] = "Журнал заданий Полный";
 L["Trade Requests"] = "Торговые запросы";
 L["Facing the wrong way"] = "Лицом к лицу с неправильным путем";
 L["Friends come Online"] = "Друзья приходят онлайн";
 L["Friends go Offline"] = "Друзья переходят в автономный режим";
 L["Zone discovery"] = "Обнаружение зон";
 L["Unlearned Skills"] = "Необученные навыки";
 L["Rested"] = "Отдохнувший";
 L["Sent Mail"] = "Отправленная почта";
 L["Dungeon Difficulty Changed"] = "Сложность подземелья изменена";
 L["Not Enough Honor Points"] = "Недостаточно очков чести";
 L["Not Arena Honor Points"] = "Не Очки Чести Арены";
 L["Players Invited"] = "Приглашенные игроки";
 L["Player Left your group"] = "Игрок покинул вашу группу";
 L["Player joins your group"] = "Игрок присоединяется к вашей группе";
 L["War mode Off"] = "Режим войны выключен";
 L["War mode On"] = "Режим войны включен";
 L["Pvp On"] = "Pvp Вкл";
 L["Pvp Off"] = "Pvp Выкл";
 L["You Loot"] = "Вы грабите";
 L["You lost"] = "Вы проиграли";
 L["Money Gains"] = "Денежный прирост";
 L["Money Lost"] = "Потерянные деньги";
 L["Items Looted"] = "Награбленные предметы";
 L["Shadow Resistance"] = "Сопротивление теням";
 L["Arcane Resistance"] = "Аркановое сопротивление";
 L["Frost Resistance"] = "Морозостойкость";
 L["Fire Resistance"] = "Огнестойкость";
 L["Nature Resistance"] = "Устойчивость к природе";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Расширенная прокрутка боевого текста успешно загружена. Для загрузки панели параметров. Введите /ASCT или щелкните значок мини-карты.";
 --New things 9/2/2022
 L["Holy Power"] = "Святая Сила";
 L["Astral Power"] = "Астральная сила";
 L["Maelstrom"] = "Водоворот";
 L["Insanity"] = "Безумие";
 L["Fury"] = "Ярость";
 L["Focus"] = "Фокус";
 --New things 9/18/2022
 L["Hit Rating"] = "Рейтинг хитов";
 L["Critical Strike Rating"] = "Критический рейтинг ударов";
 L["Expertise Rating"] = "Рейтинг экспертизы";
 L["Resilience Rating"] = "Рейтинг устойчивости";
 L["Dodge Rating"] = "Додж Рейтинг";
 L["Defense Rating"] = "Рейтинг обороны";
 L["Parry Rating"] = "Парри Рейтинг";
 L["Block Rating"] = "Рейтинг блока";
 L["Haste Rating"] = "Рейтинг спешки";
 L["Spell Power"] = "Сила заклинаний";
 L["Unsupported_Line_1"] = "Вы используете расширенный прокручиваемый боевой текст в неподдерживаемой версии игры.";
 L["Unsupported_Line_2"] = "Аддон не работает на частных серверах.";
 L["Unsupported_Line_3"] = "Аддон поддерживается только на официальных серверах Blizzard.";
 L["Unsupported_Line_4"] = "Хотите отключить аддон? Или сохранить его включенным?";
 L["Unsupported_Line_5"] = "Расширенная прокрутка боевого текста не загружена!";
 L["Keep Enabled"] = "Сохранить включенным";
 L["Disable"] = "Отключить";
 L["You have gained the"] = "Вы получили";
 L["skill"] = "мастерство";
 L["Skill Gained"] = "Приобретенные навыки";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Бронепробиваемость";
 L["Spell Penetration"] = "Проникновение заклинаний";
 --New Things 5/27/2023 
 L["Stats"] = "Статистика";
 L["Trinkets"] = "Безделушки";
 L["Trinket Slot One"] = "Первая безделушка в слоте 13.";
 L["Trinket Slot One Info"] = "Объявляет, когда ваша первая безделушка сойдет с перезарядки.";
 L["Trinket 1"] = "Безделушка 1";
 L["Trinket 2"] = "Безделушка 2";
 L["Trinket Slot Two"] = "Вторая безделушка в слоте 14.";
 L["Trinket Slot Two Info"] = "Объявляет, когда ваша вторая безделушка заканчивается.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Время затухания дебаффа";
 L["The time warning for Debuffs about to fade"] = "Предупреждение о времени для дебаффов вот-вот исчезнет";
 L["The size of the Spell Icon"] = "Размер значка заклинания";
 L["Spell Icon Size"] = "Размер значка заклинания";
 L["Settings"] = "Параметры";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "Сбросить размер значка";
 L["Reset Debuff fade time"] = "Сброс времени затухания дебаффа";
 L["Reset Both Aura and Icon Values"] = "Сброс значений ауры и значка";
 L["Trinket_1"] = "Безделушка 1";
 L["Trinket_2"] = "Безделушка 2";
 --New Things 8/29/2023
 L["Loot"] = "Грабить";
 --New Things 9/2/2023
 L["Alliance"] = "Союз";
 L["Horde"] = "Орда";
 --New Things 9/5/2023
 L["Icon Size"] = "Размер значка";
 L["The size of the message icon"] = "Размер значка сообщения";
end