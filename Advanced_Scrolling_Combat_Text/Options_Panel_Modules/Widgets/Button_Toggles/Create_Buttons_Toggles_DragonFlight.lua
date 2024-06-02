local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isDragonFlightWow"] then
---------------------------
--Gains and Losses Toogles
---------------------------
ASCT.Frames.Widgets["CreateGainsLossToggles"] = function(button, settings, configparent)
    local GainToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](GainToggle.Text, L["Gained"])
    ASCT.Widget.API["SetChecked"](GainToggle, settings.Gains)
    ASCT.Widget.API["SetEnabled"](GainToggle, settings.StatEnable == true)
    ASCT.Scripts.Frame["OnClick"](GainToggle, function(self)
      settings.Gains = ASCT.Widget.API["GetChecked"](self)
    end)
    ASCT.Widget.API["SetPoint"](GainToggle, ASCT.Strings.Point["TOPRIGHT"], button, ASCT.Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
    local lossToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](lossToggle.Text, L["Lost"])
    ASCT.Widget.API["SetChecked"](lossToggle, settings.Lost)
    ASCT.Widget.API["SetEnabled"](lossToggle, settings.StatEnable == true)
    ASCT.Scripts.Frame["OnClick"](lossToggle, function(self)
      settings.Lost = ASCT.Widget.API["GetChecked"](self)
    end)
    ASCT.Widget.API["SetPoint"](lossToggle, ASCT.Strings.Point["TOPRIGHT"], GainToggle, ASCT.Strings.Point["BOTTOMRIGHT"])
    ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
      ASCT.Widget.API["SetEnabled"](GainToggle, ASCT.Widget.API["GetChecked"](self))
      ASCT.Widget.API["SetEnabled"](lossToggle, ASCT.Widget.API["GetChecked"](self))
	end) -- NEW STUFF
  return GainToggle, lossToggle
end
---------------------------
--Stat Toggles
---------------------------
ASCT.Frames.Widgets["CreateStatToggle"] = function(Stat, settings, parent)
    local b = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](b.Text, L[Stat])
    ASCT.Widget.API["SetChecked"](b, settings.StatEnable)
    ASCT.Scripts.Frame["OnClick"](b, function(s) settings.StatEnable = ASCT.Widget.API["GetChecked"](s) end)
	return b
end
---------------------------
--Name Icon Toggles
---------------------------
ASCT.Frames.Widgets["CreateNameIconToggles"] = function(button, settings, configparent)
    local nameToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](nameToggle.Text, L["Name"])
    ASCT.Widget.API["SetChecked"](nameToggle, settings.nameEnable)
    ASCT.Widget.API["SetEnabled"](nameToggle, settings.SpellEnable == true)
    ASCT.Scripts.Frame["OnClick"](nameToggle, function(self)
      settings.nameEnable = ASCT.Widget.API["GetChecked"](self)
    end)
    ASCT.Widget.API["SetPoint"](nameToggle, ASCT.Strings.Point["TOPRIGHT"], button, ASCT.Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
    local iconToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](iconToggle.Text, L["Icon"])
    ASCT.Widget.API["SetChecked"](iconToggle, settings.iconEnable)
    ASCT.Widget.API["SetEnabled"](iconToggle, settings.SpellEnable == true)
    ASCT.Scripts.Frame["OnClick"](iconToggle, function(self)
      settings.iconEnable = ASCT.Widget.API["GetChecked"](self)
    end)
    ASCT.Widget.API["SetPoint"](iconToggle, ASCT.Strings.Point["TOPRIGHT"], nameToggle, ASCT.Strings.Point["BOTTOMRIGHT"])
    ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
      ASCT.Widget.API["SetEnabled"](nameToggle, ASCT.Widget.API["GetChecked"](self))
      ASCT.Widget.API["SetEnabled"](iconToggle, ASCT.Widget.API["GetChecked"](self))
	end) -- NEW STUFF
  return nameToggle, iconToggle
end
---------------------------
--Spell Toggles
---------------------------
ASCT.Frames.Widgets["CreateSpellToggle"] = function(Function_Name, Function_Icon, spellName, settings, parent)
    local b = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
    ASCT.Widget.API["SetText"](b.Text, Function_Name(spellName))
    ASCT.Widget.API["SetChecked"](b, settings.SpellEnable)
    ASCT.Scripts.Frame["OnClick"](b, function(s) settings.SpellEnable = ASCT.Widget.API["GetChecked"](s) end)
    local tex = ASCT.API.Documentation["CreateTexture"](b)
    ASCT.Widget.API["SetPoint"](tex, ASCT.Strings.Point["RIGHT"], b, ASCT.Strings.Point["LEFT"], 3, 1)
    ASCT.Widget.API["SetSize"](tex, 44, 44)
    ASCT.Widget.API["SetTexture"](tex, Function_Icon(spellName))
    return b
end
---------------------------
--Buttons
---------------------------
ASCT.Frames.Widgets["Buttons"] = function(settings, var_1, var_2, Location, btntext,  x, y, tooltip_text1, tooltip_text2)
	local b = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], "NewButton", Location, "InterfaceOptionsCheckButtonTemplate")
	ASCT.Widget.API["SetPoint"](b, ASCT.Strings.Point["TOPLEFT"], x, y)
	ASCT.Widget.API["SetText"](b.Text, btntext)
  local Button_Tooltip = GameTooltip
	ASCT.Scripts.Frame["OnEnter"](b, function (self)
    ASCT.Widget.API["SetOwner"](Button_Tooltip, self, "ANCHOR_TOPLEFT")
	  ASCT.Widget.API["SetText"](Button_Tooltip, tooltip_text1)
  	ASCT.Widget.API["AddLine"](Button_Tooltip, tooltip_text2)
  	ASCT.Widget.API["Show"](Button_Tooltip)
end)
ASCT.Scripts.Frame["OnLeave"](b, function ()
  ASCT.Widget.API["Hide"](Button_Tooltip)
end)
ASCT.Scripts.Frame["OnClick"](b, function(self)
	settings[var_1][var_2] = ASCT.Widget.API["GetChecked"](b)
	end)
ASCT.Widget.API["SetChecked"](b, settings[var_1][var_2])
return b
end
---------------------------
--Functions For Trinkets
---------------------------
ASCT.Frames.Widgets["CreateTrinketNameIconsToggles"] = function (button, settings, configparent)
  local NameToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  ASCT.Widget.API["SetText"](NameToggle.Text, L["Name"])
  ASCT.Widget.API["SetChecked"](NameToggle, settings.Name)
  ASCT.Widget.API["SetEnabled"](NameToggle, settings.TrinketEnable == true)
  ASCT.Scripts.Frame["OnClick"](NameToggle, function(self)
    settings.Name = ASCT.Widget.API["GetChecked"](self)
  end)
  ASCT.Widget.API["SetPoint"](NameToggle, ASCT.Strings.Point["TOPRIGHT"], button, ASCT.Strings.Point["BOTTOMRIGHT"], 20, 0) -- anchor to set it relative to the button
  local IconToggle = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  ASCT.Widget.API["SetText"](IconToggle.Text, L["Icon"])
  ASCT.Widget.API["SetChecked"](IconToggle, settings.Icon)
  ASCT.Widget.API["SetEnabled"](IconToggle, settings.TrinketEnable == true)
  ASCT.Scripts.Frame["OnClick"](IconToggle, function(self)
    settings.Icon = ASCT.Widget.API["GetChecked"](self)
  end)
  ASCT.Widget.API["SetPoint"](IconToggle, ASCT.Strings.Point["TOPRIGHT"], NameToggle, ASCT.Strings.Point["BOTTOMRIGHT"])
  ASCT.Scripts.HookScript["OnClick"](button, function(self) -- NEW STUFF START
    ASCT.Widget.API["SetEnabled"](NameToggle, ASCT.Widget.API["GetChecked"](self))
    ASCT.Widget.API["SetEnabled"](IconToggle, ASCT.Widget.API["GetChecked"](self))
end) -- NEW STUFF
return NameToggle, IconToggle
end
ASCT.Frames.Widgets["CreateTrinketToggle"] = function (Trinket, settings, parent)
  local b = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["CheckButton"], nil, parent, "InterfaceOptionsCheckButtonTemplate")
  ASCT.Widget.API["SetText"](b.Text, L[Trinket])
  ASCT.Widget.API["SetChecked"](b, settings.TrinketEnable)
  ASCT.Scripts.Frame["OnClick"](b, function(s) settings.TrinketEnable = ASCT.Widget.API["GetChecked"](s) end)
return b
end
end