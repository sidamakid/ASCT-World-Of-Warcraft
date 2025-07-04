local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, API, Strings, Widget = ASCT.Client, ASCT.API, ASCT.Strings, ASCT.Widget
if Client.LE_EXPANSION_LEVEL["isNotDragonFlightWow"] then
---------------------------
--Gains and Losses Toogles
---------------------------
ASCT.Frames.Widgets["CreateGainsLossToggles"] = function(button, settings, configparent)
    local GainToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](GainToggle.Text, L["Gained"])
    Widget.API["SetChecked"](GainToggle, settings.Gains)
    Widget.API["SetEnabled"](GainToggle, settings.StatEnable == true)
    ASCT.Scripts.Frame["OnClick"](GainToggle, function(self)
      settings.Gains = Widget.API["GetChecked"](self)
    end)
    Widget.API["SetPoint"](GainToggle, Strings.Point["TOPRIGHT"], button, Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
    local lossToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](lossToggle.Text, L["Lost"])
    Widget.API["SetChecked"](lossToggle, settings.Lost)
    Widget.API["SetEnabled"](lossToggle, settings.StatEnable == true)
    ASCT.Scripts.Frame["OnClick"](lossToggle, function(self)
      settings.Lost = Widget.API["GetChecked"](self)
    end)
    Widget.API["SetPoint"](lossToggle, Strings.Point["TOPRIGHT"], GainToggle, Strings.Point["BOTTOMRIGHT"])
    ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
      Widget.API["SetEnabled"](GainToggle, Widget.API["GetChecked"](self))
      Widget.API["SetEnabled"](lossToggle, Widget.API["GetChecked"](self))
	end) -- NEW STUFF
  return GainToggle, lossToggle
end
---------------------------
--Stat Toggles
---------------------------
ASCT.Frames.Widgets["CreateStatToggle"] = function(Stat, settings, parent)
    local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](b.Text, L[Stat])
    Widget.API["SetChecked"](b, settings.StatEnable)
    ASCT.Scripts.Frame["OnClick"](b, function(s) settings.StatEnable = Widget.API["GetChecked"](s) end)
	return b
end
---------------------------
--Name Icon Toggles
---------------------------
ASCT.Frames.Widgets["CreateNameIconToggles"] = function(button, settings, configparent)
    local nameToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](nameToggle.Text, L["Name"])
    Widget.API["SetChecked"](nameToggle, settings.nameEnable)
    Widget.API["SetEnabled"](nameToggle, settings.SpellEnable == true)
    ASCT.Scripts.Frame["OnClick"](nameToggle, function(self)
      settings.nameEnable = Widget.API["GetChecked"](self)
    end)
    Widget.API["SetPoint"](nameToggle, Strings.Point["TOPRIGHT"], button, Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
    local iconToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](iconToggle.Text, L["Icon"])
    Widget.API["SetChecked"](iconToggle, settings.iconEnable)
    Widget.API["SetEnabled"](iconToggle, settings.SpellEnable == true)
    ASCT.Scripts.Frame["OnClick"](iconToggle, function(self)
      settings.iconEnable = Widget.API["GetChecked"](self)
    end)
    Widget.API["SetPoint"](iconToggle, Strings.Point["TOPRIGHT"], nameToggle, Strings.Point["BOTTOMRIGHT"])
    ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
      Widget.API["SetEnabled"](nameToggle, Widget.API["GetChecked"](self))
      Widget.API["SetEnabled"](iconToggle, Widget.API["GetChecked"](self))
	end) -- NEW STUFF
  return nameToggle, iconToggle
end
---------------------------
--Spell Toggles
---------------------------
--[[
ASCT.Frames.Widgets["CreateSpellToggle"] = function(Function_Name, Function_Icon, spellName, settings, parent, Function_SpellDescription)
    local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetText"](b.Text, Function_Name(spellName))
    Widget.API["SetChecked"](b, settings.SpellEnable)
    ASCT.Scripts.Frame["OnClick"](b, function(s) settings.SpellEnable = Widget.API["GetChecked"](s) end)
    local tex = ASCT.API.Documentation["CreateTexture"](b)
    Widget.API["SetPoint"](tex, Strings.Point["LEFT"], b.Text, Strings.Point["RIGHT"], 3, 1)
    Widget.API["SetSize"](tex, 44, 44)
    Widget.API["SetTexture"](tex, Function_Icon(spellName))
    local Button_Tooltip = GameTooltip
    ASCT.Scripts.Frame["OnEnter"](tex, function (self)
    Widget.API["SetOwner"](Button_Tooltip, self, "ANCHOR_TOPLEFT")
    Widget.API["SetText"](Button_Tooltip, Function_Name(spellName))
    Widget.API["AddLine"](Button_Tooltip, Function_SpellDescription(spellName))
      Widget.API["Show"](Button_Tooltip)
    end)
    ASCT.Scripts.Frame["OnLeave"](tex, function ()
      Widget.API["Hide"](Button_Tooltip)
    end)
    return b
end
]]
ASCT.Frames.Widgets["CreateSpellToggle"] = function(Function_Name, Function_Icon, spellName, settings, parent)
  local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
  Widget.API["SetText"](b.Text, Function_Name(spellName))
  Widget.API["SetChecked"](b, settings.SpellEnable)
  ASCT.Scripts.Frame["OnClick"](b, function(s) settings.SpellEnable = Widget.API["GetChecked"](s) end)
  local tex = ASCT.API.Documentation["CreateTexture"](b)
  Widget.API["SetPoint"](tex, Strings.Point["LEFT"], b.Text, Strings.Point["RIGHT"], 3, 1)
  Widget.API["SetSize"](tex, 44, 44)
  Widget.API["SetTexture"](tex, Function_Icon(spellName))
  return b
end
---------------------------
--Buttons
---------------------------
ASCT.Frames.Widgets["Buttons"] = function(settings, var_1, var_2, configparent, btntext, poi, x, y, tooltip_text1)
	local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], "NewButton", configparent, "InterfaceOptionsCheckButtonTemplate")
	Widget.API["SetPoint"](b, poi, x, y)
	Widget.API["SetText"](b.Text, btntext)
  local Button_Tooltip = GameTooltip
	ASCT.Scripts.Frame["OnEnter"](b, function (self)
  Widget.API["SetOwner"](Button_Tooltip, self, "ANCHOR_TOPLEFT")
  Widget.API["SetText"](Button_Tooltip, tooltip_text1)
  	Widget.API["Show"](Button_Tooltip)
end)
ASCT.Scripts.Frame["OnLeave"](b, function ()
	Widget.API["Hide"](Button_Tooltip)
end)
ASCT.Scripts.Frame["OnClick"](b, function(self)
	settings[var_1][var_2] = Widget.API["GetChecked"](b)
	end)
Widget.API["SetChecked"](b, settings[var_1][var_2])
return b
end
---------------------------
--Functions For Trinkets
---------------------------
ASCT.Frames.Widgets["CreateTrinketNameIconsToggles"] = function (button, settings, configparent)
  local NameToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  Widget.API["SetText"](NameToggle.Text, L["Name"])
  Widget.API["SetChecked"](NameToggle, settings.Name)
  Widget.API["SetEnabled"](NameToggle, settings.TrinketEnable == true)
  ASCT.Scripts.Frame["OnClick"](NameToggle, function(self)
    settings.Name = Widget.API["GetChecked"](self)
  end)
  Widget.API["SetPoint"](NameToggle, Strings.Point["TOPRIGHT"], button, Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
  local IconToggle = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  Widget.API["SetText"](IconToggle.Text, L["Icon"])
  Widget.API["SetChecked"](IconToggle, settings.Icon)
  Widget.API["SetEnabled"](IconToggle, settings.TrinketEnable == true)
  ASCT.Scripts.Frame["OnClick"](IconToggle, function(self)
    settings.Icon = Widget.API["GetChecked"](self)
  end)
  Widget.API["SetPoint"](IconToggle, Strings.Point["TOPRIGHT"], NameToggle, Strings.Point["BOTTOMRIGHT"])
  ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
    Widget.API["SetEnabled"](NameToggle, Widget.API["GetChecked"](self))
    Widget.API["SetEnabled"](IconToggle, Widget.API["GetChecked"](self))
end) -- NEW STUFF
return NameToggle, IconToggle
end
ASCT.Frames.Widgets["CreateTrinketToggle"] = function (Trinket, settings, parent)
  local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
  Widget.API["SetText"](b.Text, L[Trinket])
  Widget.API["SetChecked"](b, settings.TrinketEnable)
  ASCT.Scripts.Frame["OnClick"](b, function(s) settings.TrinketEnable = Widget.API["GetChecked"](s) end)
return b
end
---------------------------
--Multiple_Buttons_But_WithOnlyOneSelection
---------------------------
--[[
local checkButtons = {} -- Table to keep track of all checkbuttons

ASCT.Frames.Widgets["Multiple_Buttons"] = function(settings, var_1, Location, btntext, parent, x, y)
    local b = ASCT.API.Documentation["CreateFrame"](Strings.FrameType["CheckButton"], "NewButton", Location, "InterfaceOptionsCheckButtonTemplate")
    Widget.API["SetPoint"](b, parent, x, y)

    -- Create a FontString for the button's text
    local textElement = API.Documentation["CreateFontString"](b, nil, Strings.Layer["ARTWORK"], "GameFontNormal")
    Widget.API["SetPoint"](textElement, Strings.Point["LEFT"], b, Strings.Point["RIGHT"], 5, 0)
    Widget.API["SetText"](textElement, btntext)
    b.text = textElement
    b.var_1 = var_1  -- Store the setting key with the button

    ASCT.Scripts.Frame["OnClick"](b, function(self)

        -- Uncheck other checkbuttons
        for _, button in pairs(checkButtons) do
            if button ~= self then
              Widget.API["SetChecked"](button, false)
                if settings[button.var_1] ~= nil then
                    settings[button.var_1] = false
                end
            end
        end
        -- Update the selected checkbutton
        if settings[var_1] ~= nil then
            settings[var_1] = Widget.API["GetChecked"](b)
        end
    end)

    -- Initialize checkbutton state based on the current setting
    Widget.API["SetChecked"](b, settings[var_1])

    -- Add the checkbutton to the table
    table.insert(checkButtons, b)

    return b
end
]]

end