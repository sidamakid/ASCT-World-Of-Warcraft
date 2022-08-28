local f = CreateFrame("Frame")
f:RegisterEvent("UI_INFO_MESSAGE")
f:RegisterEvent("UI_ERROR_MESSAGE")
f:SetScript("OnEvent", function (self, event, errorType, message)
    local msg
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if message == ERR_INV_FULL and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Inventory full"] == true then
		msg = ERR_INV_FULL
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_ITEM_LOCKED and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Locked Items"] == true then
        msg = ERR_ITEM_LOCKED
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_USE_LOCKED and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Locked Items"] == true then
        msg = ERR_USE_LOCKED
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_INVITED_TO_GROUP_SS and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Group Invites"] == true then
        msg = ERR_INVITED_TO_GROUP_SS
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_QUEST_ACCEPTED_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Quest Accepted"] == true then
        msg = ERR_QUEST_ACCEPTED_S 
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_QUEST_COMPLETE_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Quest Completed"] == true then
        msg = ERR_QUEST_COMPLETE_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_QUEST_LOG_FULL and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Quest Log Full"] == true then
        msg = ERR_QUEST_LOG_FULL
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_TRADE_REQUEST_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Trade Requests"] == true then
        msg = ERR_TRADE_REQUEST_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_TRADE_COMPLETE and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Trade Complete"] == true then
        msg = ERR_TRADE_COMPLETE
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_TRADE_CANCELLED and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Trade Canceled"] == true then
        msg = ERR_TRADE_CANCELLED
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_BADATTACKFACING and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Facing the wrong way"] == true then
        msg = ERR_BADATTACKFACING
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_FRIEND_ONLINE_SS and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Friends come Online"] == true then
        msg = ERR_FRIEND_ONLINE_SS
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_FRIEND_OFFLINE_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Friends go Offline"] == true then
        msg = ERR_FRIEND_OFFLINE_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_ZONE_EXPLORED and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Zone discovery"] == true then
        msg = ERR_ZONE_EXPLORED
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_SPELL_UNLEARNED_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Unlearned Skills"] == true then
        msg = ERR_SPELL_UNLEARNED_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_EXHAUSTION_RESTED and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Rested"] == true then
        msg = ERR_EXHAUSTION_RESTED
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_MAIL_SENT and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Sent Mail"] == true then
        msg = ERR_MAIL_SENT
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_DUNGEON_DIFFICULTY_CHANGED_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Dungeon Difficulty Changed"] == true then
        msg = ERR_DUNGEON_DIFFICULTY_CHANGED_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_NOT_ENOUGH_HONOR_POINTS and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Not Enough Honor Points"] == true then
        msg = ERR_NOT_ENOUGH_HONOR_POINTS
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_NOT_ENOUGH_ARENA_POINTS and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Not Arena Honor Points"] == true then
        msg = ERR_NOT_ENOUGH_ARENA_POINTS
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_PVP_TOGGLE_ON and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Pvp On"] == true then
        msg = ERR_PVP_TOGGLE_ON
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_PVP_TOGGLE_OFF and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Pvp Off"] == true then
        msg = ERR_PVP_TOGGLE_OFF
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == 	ERR_PVP_WARMODE_TOGGLE_ON and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["War mode On"] == true then
        msg = ERR_PVP_WARMODE_TOGGLE_ON
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_PVP_WARMODE_TOGGLE_OFF and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["War mode Off"] == true then
        msg = ERR_PVP_WARMODE_TOGGLE_OFF
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_INVITE_PLAYER_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Players Invited"] == true then
        msg = ERR_INVITE_PLAYER_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_LEFT_GROUP_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Player Left your group"] == true then
        msg = ERR_LEFT_GROUP_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
    elseif message == ERR_JOINED_GROUP_S and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Messages"]["Player joins your group"] == true then
        msg = ERR_JOINED_GROUP_S
        CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
	end
    end
end)