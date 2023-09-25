local L_ASCT_Events = ASCT_Events_Table
---------------------------
--CHAT_MSG
---------------------------
L_ASCT_Events["CHAT_MSG_LOOT"] = function (Frame) Frame:RegisterEvent("CHAT_MSG_LOOT") return Frame end
L_ASCT_Events["CHAT_MSG_SYSTEM"] = function (Frame) Frame:RegisterEvent("CHAT_MSG_SYSTEM") return Frame end
L_ASCT_Events["CHAT_MSG_MONEY"] = function (Frame) Frame:RegisterEvent("CHAT_MSG_MONEY") return Frame end
L_ASCT_Events["CHAT_MSG_COMBAT_XP_GAIN"] = function(Frame) Frame:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN") return Frame end
L_ASCT_Events["CHAT_MSG_SKILL"] = function(Frame) Frame:RegisterEvent("CHAT_MSG_SKILL") return Frame end
L_ASCT_Events["CHAT_MSG_CURRENCY"] = function(Frame) Frame:RegisterEvent("CHAT_MSG_CURRENCY") return Frame end
L_ASCT_Events["CHAT_MSG_COMBAT_HONOR_GAIN"] = function(Frame) Frame:RegisterEvent("CHAT_MSG_COMBAT_HONOR_GAIN") return Frame end
---------------------------
--ADDON_LOADED / PLAYER_ENTERING_WORLD
---------------------------
L_ASCT_Events["ADDON_LOADED"] = function(Frame) Frame:RegisterEvent("ADDON_LOADED") return Frame end
L_ASCT_Events["PLAYER_ENTERING_WORLD"] = function(Frame) Frame:RegisterEvent("PLAYER_ENTERING_WORLD") return Frame end
---------------------------
--ACHIEVEMENT
---------------------------
L_ASCT_Events["ACHIEVEMENT_EARNED"] = function(Frame) Frame:RegisterEvent("ACHIEVEMENT_EARNED") return Frame end
---------------------------
--PLAYER
---------------------------
L_ASCT_Events["PLAYER_DEAD"] = function(Frame) Frame:RegisterEvent("PLAYER_DEAD") return Frame end
---------------------------
--DUELS
---------------------------
L_ASCT_Events["DUEL_REQUESTED"] = function(Frame) Frame:RegisterEvent("DUEL_REQUESTED") return Frame end
---------------------------
--UI_INFO_ERROR_MESSAGE
---------------------------
L_ASCT_Events["UI_INFO_MESSAGE"] = function(Frame) Frame:RegisterEvent("UI_INFO_MESSAGE") return Frame end
L_ASCT_Events["UI_ERROR_MESSAGE"] = function(Frame) Frame:RegisterEvent("UI_ERROR_MESSAGE") return Frame end
---------------------------
--Combat_RAITING_UPADTE
---------------------------
L_ASCT_Events["COMBAT_RATING_UPDATE"] = function(Frame) Frame:RegisterEvent("COMBAT_RATING_UPDATE") return Frame end
L_ASCT_Events["PLAYER_LEVEL_UP"] = function(Frame) Frame:RegisterEvent("PLAYER_LEVEL_UP") return Frame end