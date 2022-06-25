local L_SCT = SCT_Check_if_is_loaded_Localization_My_Localization_Table
local Locale = GetLocale()
if Locale == "enUS" then
L_SCT["Message"] = "Scrolling Combat Text is disabled. If not enabled, it will give you errors forever."
elseif Locale == "KoKR" then
L_SCT["Message"] = "전투 텍스트 스크롤이 비활성화되었습니다. 활성화하지 않으면 영원히 오류가 발생합니다."
elseif Locale == "frFR" then
L_SCT["Message"] = "Le défilement du texte de combat est désactivé. S’il n’est pas activé, il vous donnera des erreurs pour toujours."
elseif Locale == "deDE" then
L_SCT["Message"] = "Der Bildlauf zum Kampftext ist deaktiviert. Wenn es nicht aktiviert ist, wird es Ihnen für immer Fehler geben."
elseif Locale == "zhCN" then
L_SCT["Message"] = "滚动战斗文本已禁用。如果未启用，它将永远为您提供错误."
elseif Locale == "esES" then
L_SCT["Message"] = "El desplazamiento de texto de combate está deshabilitado. Si no está habilitado, le dará errores para siempre."
elseif Locale == "zhTW" then
L_SCT["Message"] = "滾動戰鬥文本已禁用。如果未啟用，它將永遠為您提供錯誤."
elseif Locale == "esMX" then
L_SCT["Message"] = "El desplazamiento de texto de combate está deshabilitado. Si no está habilitado, le dará errores para siempre."
elseif Locale == "ruRU" then
L_SCT["Message"] = "Прокрутка боевого текста отключена. Если он не включен, он будет давать вам ошибки навсегда."
elseif Locale == "ptBR" then
L_SCT["Message"] = "O texto de combate de rolagem está desativado. Se não for ativado, ele lhe dará erros para sempre."
elseif Locale == "itIT" then
L_SCT["Message"] = "Lo scorrimento del testo di combattimento è disabilitato. Se non abilitato, ti darà errori per sempre."
end