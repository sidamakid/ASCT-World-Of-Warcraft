local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, API, Strings, Widget = ASCT.Client, ASCT.API, ASCT.Strings, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
---------------------------
--Gains and Losses Toogles
---------------------------
-- Create a button to reset the frame size and location
ASCT.Frames.Widgets["CreateResetButtonToggles"] = function(config)
    local resetButton = CreateFrame("Button", config.FrameName, config.ButtonAnchor, "UIPanelButtonTemplate")
    resetButton:SetSize(config.ButtonWidth, config.ButtonHeight)
    resetButton:SetText(config.Text)
    resetButton:SetPoint(config.Point, config.ButtonAnchor, config.RelativePoint, config.ButtonX, config.ButtonY)

    -- Define the options panel frame and its reset properties
    local function ResetFrameSizeAndLocation()
        config.ResetFrame:SetSize(config.OriginalWidth, config.OriginalHeight)
        config.ResetFrame:ClearAllPoints()
        config.ResetFrame:SetPoint(config.OriginalPoint, config.OriginalRelativeToAnchor, config.OriginalRelativePoint)
    end

    -- Hook the reset function to the button's click event
    ASCT.Scripts.Frame["OnClick"](resetButton, ResetFrameSizeAndLocation)
end

end