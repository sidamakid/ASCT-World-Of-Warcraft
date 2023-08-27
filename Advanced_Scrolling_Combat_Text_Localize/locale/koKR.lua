local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Korean
-------------------------------------
if locale == "koKR" then
 --Rogue
 L["Rogue"] = "악성";
 L["Assassination"] = "암살";
 L["Combat"] = "전투";
 L["Outlaw"] = "무법자";
 L["Subtlety"] = "미묘";
 --Priest
 L["Priest"] = "신부";
 L["Shadow"] = "그림자";
 L["Discipline"] = "징계";
 L["Racials_Priest"] = "인종_사제";
 --Warrior
 L["Warrior"] = "전사";
 L["Arms"] = "무기";
 L["Fury"] = "성";
 --Druid
 L["Druid"] = "사제";
 L["Balance"] = "저울";
 L["Feral_Combat"] = "야생_전투";
 --Shaman
 L["Shaman"] = "샤먼";
 L["Elemental"] = "원소";
 L["Enhancement"] = "향상";
 --Warlock
 L["Warlock"] = "사냥꾼";
 L["Affliction"] = "고통";
 L["Demonology"] = "악마학";
 L["Destruction"] = "파괴";
 --Hunter
 L["Hunter"] = "사냥꾼";
 L["Beast Mastery"] = "야수 숙달";
 L["Marksmanship"] = "사격 솜씨";
 L["Survival"] = "생존";
 --Paladin
 L["Paladin"] = "친위";
 L["Retribution"] = "보복";
  --Mage
 L["Mage"] = "마법사";
 L["Arcane"] = "비전";
 L["Fire"] = "불";
 --Demon Hunter
 L["Havoc"] = "혼란";
 L["Vengeance"] = "복수";
 --Death Knight
 L["Blood"] = "피";
 L["Unholy"] = "신성";
 --Monk
 L["Brewmaster"] = "브루마스터";
 L["Mistweaver"] = "안개 직조";
 L["Windwalker"] = "윈드워커";
 --Evoker
 L["Preservation"] = "보존";
 L["Devastation"] = "폐허";
 --Shared-Spec-names
 L["Frost"] = "서리";
 L["Restoration"] = "복구";
 L["Holy"] = "거룩한";
 L["Protection"] = "보호";
 --Side-Buttons
 L["Reset Class"] = "클래스 재설정";
 L["Title_SARTE"] = "스크롤 능력 텍스트";
 L["Tooltip Button"] = "왼쪽 버튼을 클릭하여 옵션 패널 열기";
 L["Color Picker"] = "색상 선택기";
 L["Racials"] = "인종 차별";
 L["Shared Spell cd's"] = "공유 맞춤법 CD";
 --Custom Button Names
 L["Shocks"] = "충격";
 L["Traps"] = "트랩";
 L["Lust"] = "정욕";
 L["Tab"] = "이 탭은 주술사와 헌터의 유일한 탭입니다.";
 --Ready Text
 L["msg"] = "이제 준비가되었습니다!";
 L["msg_Shocks"] = " 이제 충격이 준비되었습니다!";
 L["msg_Traps"] = " 이제 함정이 준비되었습니다!";
 L["msg_Lust"] = " 정욕이 이제 준비되었습니다!";
 --Message
 L["Nothing"] = "무";
 L["Open To Options Panel"] = "옵션 패널로 열기"; 
 --New things
 L["Icon"] = "아이콘";
 L["Name"] = "이름";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "당신의 기술";
 L["has increased to"] = "로 증가했다.";
 L["Congratulations"] = "축하합니다";
 L["you are now level"] = "당신은 지금 수준입니다";
 L["Title"] = "고급 스크롤 전투 텍스트";
 L["Experience Gains"] = "경험 향상";
 L["Level up message"] = "레벨 업 메시지";
 L["Skill Up"] = "스킬 업";
 L["Resource lost"] = "리소스 손실";
 L["Mana"] = "마나";
 L["Rage"] = "분노";
 L["Energy"] = "에너지";
 L["Runic Power"] = "룬 파워";
 L["Armor"] = "갑옷";
 L["Armor lost"] = "갑옷 분실";
 L["Armor Gained"] = "갑옷 획득";
 L["Slash Command Message"] = "고급 스크롤 전투 텍스트에 대해 슬래시 명령이 변경되었습니다. /asct를 입력하여 옵션 패널을 엽니다.";
 L["Features"] = "기능";
 L["Message"] = "전투 텍스트 스크롤이 비활성화되었습니다. 활성화하지 않으면 고급 스크롤 전투 텍스트에 아무 것도 표시되지 않습니다.";
 --New things 8/11/2022
 L["Leveling"] = "평준화";
 L["Lost"] = "잃어버린";
 L["Gained"] = "얻은";
 L["Attack Power"] = "공격력";
 L["Agility"] = "민첩성";
 L["Strength"] = "힘";
 L["Intellect"] = "지성";
 L["Spirit"] = "정신";
 L["Stamina"] = "체력";
 --New things 8/14/2022
 L["Auras"] = "오라스";
 L["Fading Debuffs Alert"] = "페이딩 디버프 경고";
 L["Is About to Fade!"] = "퇴색하려고합니다!";
 L["Debuff has 5 seconds left"] = "디버프가 5초 남았습니다.";
 L["Announces a Debuff you applied is about to fade on the Target."] = "적용한 디버프가 타겟에서 페이드 될 것이라고 발표합니다.";
 L["Fading Buffs Alert"] = "페이딩 버프 경고";
 L["Buff has 5 seconds left"] = "버프가 5초 남았습니다.";
 L["Announces when a buff you gained is about to fade"] = "당신이 얻은 버프가 곧 사라질 때 발표합니다.";
 --New things 8/15/2022
 L["Color Picker Stats"] = "통계의 색상";
 L["Color Picker Spells"] = "주문의 색상";
 L["Color Picker Leveling"] = "레벨링을 위한 색상";
 L["Achievement Gains"] = "성취도 향상";
 L["Colors for Fading Auras"] = "페이딩 오라스의 색상";
 --New things 8/17/2022
 L["Health"] = "건강";
 L["You died at"] = "당신은 죽었습니다.";
 L["Death Quadrants"] = "죽음의 사분면";
 L["Has challenged you to a duel."] = "결투에 도전했습니다.";
 L["Duel Requests"] = "결투 요청";
 L["Messages"] = "메시지";
 L["Inventory full"] = "재고 전체";
 L["Locked Items"] = "잠긴 항목";
 L["Group Invites"] = "그룹 초대";
 L["Quest Accepted"] = "퀘스트 수락";
 L["Quest Completed"] = "퀘스트 완료";
 L["Quest Log Full"] = "퀘스트 로그 전체";
 L["Trade Requests"] = "거래 요청";
 L["Facing the wrong way"] = "잘못된 길에 직면";
 L["Friends come Online"] = "친구들이 온라인에 온다";
 L["Friends go Offline"] = "친구는 오프라인으로 전환";
 L["Zone discovery"] = "영역 검색";
 L["Unlearned Skills"] = "배우지 못한 기술";
 L["Rested"] = "쉬었다";
 L["Sent Mail"] = "보낸 메일";
 L["Dungeon Difficulty Changed"] = "던전 난이도 변경";
 L["Not Enough Honor Points"] = "명예 포인트가 충분하지 않음";
 L["Not Arena Honor Points"] = "아레나 명예 포인트가 아님";
 L["Players Invited"] = "초대된 플레이어";
 L["Player Left your group"] = "플레이어가 그룹을 떠났습니다.";
 L["Player joins your group"] = "플레이어가 그룹에 가입합니다.";
 L["War mode Off"] = "전쟁 모드 끄기";
 L["War mode On"] = "전쟁 모드 켜기";
 L["Pvp On"] = "PVP에";
 L["Pvp Off"] = "Pvp 끄기";
 L["You Loot"] = "당신은 약탈";
 L["You lost"] = "당신은 잃어버린";
 L["Money Gains"] = "돈 이득";
 L["Money Lost"] = "돈 분실";
 L["Items Looted"] = "약탈당한 아이템";
 L["Shadow Resistance"] = "그림자 저항";
 L["Arcane Resistance"] = "신비한 저항";
 L["Frost Resistance"] = "서리 저항";
 L["Fire Resistance"] = "내화성";
 L["Nature Resistance"] = "자연 저항";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "고급 스크롤 전투 텍스트가 성공적으로 로드되었습니다. 옵션 패널을 로드합니다. /ASCT를 입력하거나 미니 맵 아이콘을 클릭합니다.";
 --New things 9/2/2022
 L["Holy Power"] = "거룩한 권능";
 L["Astral Power"] = "아스트랄 파워";
 L["Maelstrom"] = "큰 소용돌이";
 L["Insanity"] = "광기";
 L["Fury"] = "성";
 L["Focus"] = "초점";
 --New things 9/18/2022
 L["Hit Rating"] = "히트 등급";
 L["Critical Strike Rating"] = "치명타 등급";
 L["Expertise Rating"] = "전문성 등급";
 L["Resilience Rating"] = "복원력 등급";
 L["Dodge Rating"] = "닷지 등급";
 L["Defense Rating"] = "방위 등급";
 L["Parry Rating"] = "패리 등급";
 L["Block Rating"] = "블록 등급";
 L["Haste Rating"] = "급한 평가";
 L["Spell Power"] = "주문력";
 L["Unsupported_Line_1"] = "지원되지 않는 게임 버전에서 고급 스크롤 전투 텍스트를 실행하고 있습니다.";
 L["Unsupported_Line_2"] = "애드온은 개인 서버에서 작동하지 않습니다.";
 L["Unsupported_Line_3"] = "애드온은 블리자드 공식 서버에서만 지원됩니다.";
 L["Unsupported_Line_4"] = "애드온을 비활성화하시겠습니까? 아니면 활성화 상태를 유지합니까?";
 L["Unsupported_Line_5"] = "고급 스크롤 전투 텍스트가로드되지 않았습니다!";
 L["Keep Enabled"] = "사용 유지";
 L["Disable"] = "비활성화";
 L["You have gained the"] = "당신은 얻었습니다";
 L["skill"] = "기술";
 L["Skill Gained"] = "획득한 스킬";
 --New Things 4/1/2023
 L["Armor Penetration"] = "방어구 관통력";
 L["Spell Penetration"] = "주문 관통";
 --New Things 5/27/2023 
 L["Stats"] = "통계";
 L["Trinkets"] = "장신구";
 L["Trinket 1"] = "장신구 1";
 L["Trinket Slot One"] = "슬롯 13의 첫 번째 장신구.";
 L["Trinket Slot One Info"] = "첫 번째 장신구의 재사용 대기시간이 해제되면 알려줍니다.";
 L["Trinket 2"] = "장신구 2";
 L["Trinket Slot Two"] = "슬롯 14의 두 번째 장신구.";
 L["Trinket Slot Two Info"] = "두 번째 장신구의 재사용 대기시간이 해제되면 알려줍니다.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "디버프 페이드 시간";
 L["The time warning for Debuffs about to fade"] = "디버프에 대한 시간 경고가 곧 사라집니다.";
end