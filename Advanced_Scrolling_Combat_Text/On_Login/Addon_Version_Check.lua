-- SimpleAddonVersionCheck (Self-Testable Version)
local addonName = "Advanced_Scrolling_Combat_Text"
local addonVersion = GetAddOnMetadata(addonName, "Version")
local prefix = "SAVC"
local replied = {}

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_ADDON")
f:RegisterEvent("PLAYER_LOGIN")

local function sendVersion(target)
    SendAddonMessage(prefix, addonVersion, "WHISPER", target)
end

function f:OnEvent(event, ...)
    if event == "PLAYER_LOGIN" then
        C_ChatInfo.RegisterAddonMessagePrefix(prefix)

        -- Self-test: simulate whispering to yourself
        C_Timer.After(2, function()
            sendVersion(UnitName("player"))
        end)

    elseif event == "CHAT_MSG_ADDON" then
        local msgPrefix, msg, channel, sender = ...
        if msgPrefix == prefix then
            if replied[sender] then return end
            replied[sender] = true

            if sender == UnitName("player") then
                print("[Self-Test] Received version from self:", msg)
            end

            if msg > addonVersion then
                print("Your addon is out of date! Latest version: " .. msg)
            elseif msg < addonVersion then
                sendVersion(sender)
            end
        end
    end
end

f:SetScript("OnEvent", f.OnEvent)
