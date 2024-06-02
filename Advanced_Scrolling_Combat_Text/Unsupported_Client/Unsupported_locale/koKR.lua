local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Korean
-------------------------------------
if locale == "koKR" then
--Unsupported_Game_Client_Detected
    L["Unsupported_Line_1"] = "고급 스크롤 전투 텍스트가로드되지 않았습니다!";
    L["Unsupported_Line_2"] = "지원되지 않는 게임 버전에서 Advanced Scrolling Combat Text를 실행하고 있습니다.";
    L["Unsupported_Line_3"] = "애드온은 사설 서버에서는 작동하지 않으며 공식 블리자드 서버에서만 지원됩니다.";
    L["Unsupported_Line_4"] = "애드온을 비활성화하시겠습니까? 아니면 계속 활성화 하시겠습니까?";
    L["Keep Enabled"] = "사용 유지";
    L["Disable"] = "비활성화";
end