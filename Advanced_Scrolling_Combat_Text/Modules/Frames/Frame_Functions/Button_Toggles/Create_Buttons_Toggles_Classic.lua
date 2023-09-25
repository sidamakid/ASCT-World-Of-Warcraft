local L_ASCT_Locale_Spells, L, L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Widget_Methods, L_ASCT_Handlers = ASCT_Spell_Locale_Table, ASDC_LOCALE_TABLE, ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Widget_Methods_Table, ASCT_Script_Handlers_Table
if L_Version_Check_Keys["isNotDragonFlightWow"] then
---------------------------
--Gains and Losses Toogles
---------------------------
L_ASCT_Frames["CreateGainsLossToggles"] = function(button, settings, configparent)
    local GainToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](GainToggle.Text, L["Gained"])
    L_ASCT_Widget_Methods["SetChecked"](GainToggle, settings.Gains)
    L_ASCT_Widget_Methods["SetEnabled"](GainToggle, settings.StatEnable == true)
    L_ASCT_Handlers["OnClick"](GainToggle, function(self)
      settings.Gains = self:GetChecked()
    end)
    L_ASCT_Widget_Methods["SetPoint_4"](GainToggle, "TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
    local lossToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](lossToggle.Text, L["Lost"])
    L_ASCT_Widget_Methods["SetChecked"](lossToggle, settings.Lost)
    L_ASCT_Widget_Methods["SetEnabled"](lossToggle, settings.StatEnable == true)
    L_ASCT_Handlers["OnClick"](lossToggle, function(self)
      settings.Lost = self:GetChecked()
    end)
    L_ASCT_Widget_Methods["SetPoint_4"](lossToggle, "TOPRIGHT", GainToggle, "BOTTOMRIGHT")
    L_ASCT_Handlers["HookScript_Onclick"](button, function(self) -- NEW STUFF START
      L_ASCT_Widget_Methods["SetEnabled"](GainToggle, self:GetChecked())
      L_ASCT_Widget_Methods["SetEnabled"](lossToggle, self:GetChecked())
	end) -- NEW STUFF
  return GainToggle, lossToggle
end
---------------------------
--Stat Toggles
---------------------------
L_ASCT_Frames["CreateStatToggle"] = function(Stat, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](b.Text, L[Stat])
    L_ASCT_Widget_Methods["SetChecked"](b, settings.StatEnable)
    L_ASCT_Handlers["OnClick"](b, function(s) settings.StatEnable = s:GetChecked() end)
	return b
end
---------------------------
--Name Icon Toggles
---------------------------
L_ASCT_Frames["CreateNameIconToggles"] = function (button, settings, configparent)
    local nameToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](nameToggle.Text, L["Name"])
    L_ASCT_Widget_Methods["SetChecked"](nameToggle, settings.nameEnable)
    L_ASCT_Widget_Methods["SetEnabled"](nameToggle, settings.SpellEnable == true)
    L_ASCT_Handlers["OnClick"](nameToggle, function(self)
      settings.nameEnable = self:GetChecked()
    end)
    L_ASCT_Widget_Methods["SetPoint_4"](nameToggle, "TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
    local iconToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](iconToggle.Text, L["Icon"])
    L_ASCT_Widget_Methods["SetChecked"](iconToggle, settings.iconEnable)
    L_ASCT_Widget_Methods["SetEnabled"](iconToggle, settings.SpellEnable == true)
    L_ASCT_Handlers["OnClick"](iconToggle, function(self)
      settings.iconEnable = self:GetChecked()
    end)
    L_ASCT_Widget_Methods["SetPoint_4"](iconToggle, "TOPRIGHT", nameToggle, "BOTTOMRIGHT")
    L_ASCT_Handlers["HookScript_Onclick"](button, function(self) -- NEW STUFF START
      L_ASCT_Widget_Methods["SetEnabled"](nameToggle, self:GetChecked())
      L_ASCT_Widget_Methods["SetEnabled"](iconToggle, self:GetChecked())
	end) -- NEW STUFF
  return nameToggle, iconToggle
end
---------------------------
--Spell Toggles
---------------------------
L_ASCT_Frames["CreateSpellToggle"] = function(spellName, settings, parent)
    local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
    L_ASCT_Widget_Methods["SetText"](b.Text, L_ASCT_Locale_Spells["ASCT_GetLocalizedName"](spellName))
    L_ASCT_Widget_Methods["SetChecked"](b, settings.SpellEnable)
    L_ASCT_Handlers["OnClick"](b, function(s) settings.SpellEnable = s:GetChecked() end)
    local tex = b:CreateTexture()
    L_ASCT_Widget_Methods["SetPoint_4"](tex, "LEFT", b.Text, "RIGHT", 3, 1)
    L_ASCT_Widget_Methods["SetSize"](tex, 44, 44)
    L_ASCT_Widget_Methods["SetTexture"](tex, L_ASCT_Locale_Spells["ASCT_GetLocalizedIcon"](spellName))
    return b
end
---------------------------
--Buttons
---------------------------
L_ASCT_Frames["Buttons"] = function(value, Location, btntext,  x, y, text1, text2)
	local b = CreateFrame("CheckButton", "NewButton", Location, "InterfaceOptionsCheckButtonTemplate")
	L_ASCT_Widget_Methods["SetPoint_3"](b, "TOPLEFT", x, y)
	L_ASCT_Widget_Methods["SetText"](b.Text, btntext)
  local Button_Tooltip = GameTooltip
	L_ASCT_Handlers["OnEnter"](b, function (self)
  L_ASCT_Widget_Methods["SetOwner"](Button_Tooltip, self, "ANCHOR_TOPLEFT")
  L_ASCT_Widget_Methods["SetText"](Button_Tooltip, text1)
  L_ASCT_Widget_Methods["AddLine"](Button_Tooltip, text2)
  	L_ASCT_Widget_Methods["Show"](Button_Tooltip)
end)
L_ASCT_Handlers["OnLeave"](b, function ()
	L_ASCT_Widget_Methods["Hide"](Button_Tooltip)
end)
L_ASCT_Handlers["OnClick"](b, function(self)
	ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"][value] = b:GetChecked()
	end)
L_ASCT_Widget_Methods["SetChecked"](b, ASCT_DB["Advanced_Scrolling_Combat_Text_Auras"][value])
return b
end
---------------------------
--Functions For Trinkets
---------------------------
L_ASCT_Frames["CreateTrinketNameIconsToggles"] = function (button, settings, configparent)
  local NameToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  L_ASCT_Widget_Methods["SetText"](NameToggle.Text, L["Name"])
  L_ASCT_Widget_Methods["SetChecked"](NameToggle, settings.Name)
  L_ASCT_Widget_Methods["SetEnabled"](NameToggle, settings.TrinketEnable == true)
  L_ASCT_Handlers["OnClick"](NameToggle, function(self)
    settings.Name = self:GetChecked()
  end)
  L_ASCT_Widget_Methods["SetPoint_4"](NameToggle, "TOPRIGHT", button, "BOTTOMRIGHT", 20, 0) -- anchor to set it relative to the button
  local IconToggle = CreateFrame("CheckButton", nil, configparent, "InterfaceOptionsCheckButtonTemplate")
  L_ASCT_Widget_Methods["SetText"](IconToggle.Text, L["Icon"])
  L_ASCT_Widget_Methods["SetChecked"](IconToggle, settings.Icon)
  L_ASCT_Widget_Methods["SetEnabled"](IconToggle, settings.TrinketEnable == true)
  L_ASCT_Handlers["OnClick"](IconToggle, function(self)
    settings.Icon = self:GetChecked()
  end)
  L_ASCT_Widget_Methods["SetPoint_4"](IconToggle, "TOPRIGHT", NameToggle, "BOTTOMRIGHT")
  L_ASCT_Handlers["HookScript_Onclick"](button, function(self) -- NEW STUFF START
    L_ASCT_Widget_Methods["SetEnabled"](NameToggle, self:GetChecked())
    L_ASCT_Widget_Methods["SetEnabled"](IconToggle, self:GetChecked())
end) -- NEW STUFF
return NameToggle, IconToggle
end
L_ASCT_Frames["CreateTrinketToggle"] = function (Trinket, settings, parent)
  local b = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")
  L_ASCT_Widget_Methods["SetText"](b.Text, L[Trinket])
  L_ASCT_Widget_Methods["SetChecked"](b, settings.TrinketEnable)
  L_ASCT_Handlers["OnClick"](b, function(s) settings.TrinketEnable = s:GetChecked() end)
return b
end
end