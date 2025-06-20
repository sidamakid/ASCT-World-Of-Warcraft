local ASCT = ASCT_Table
--[[
ASCT.Frames.Widgets["ADSC_SHOW_COLOR_PICKER_FRAME_ShowColorPicker"] = function (r, g, b, a, changedCallback)
    ColorPickerFrame:SetColorRGB(r,g,b);
    ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (a ~= nil), a;
    ColorPickerFrame.previousValues = {r,g,b,a};
    ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc =
     changedCallback, changedCallback, changedCallback;
    ColorPickerFrame:Hide(); -- Need to run the OnShow handler.
    ColorPickerFrame:Show();
   end
ASCT.Frames.Widgets["ASDC_COlOR_PICKER_myColorCallback"] = function (restore)
 local newR, newG, newB, newA;
 if restore then
  -- The user bailed, we extract the old color from the table created by ShowColorPicker.
  newR, newG, newB, newA = unpack(restore);
 else
  -- Something changed
  newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
 end

 -- Update our internal storage.
 ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b, ASCT_Color_Picker_Variables.a = newR, newG, newB, newA;
 -- And update any UI elements that use this color...
end
]]
ASCT.Frames.Widgets["ADSC_SHOW_COLOR_PICKER_FRAME_ShowColorPicker"] = function(Color)
  local OldColor = {r = Color.r,g = Color.g, b = Color.b}
  local info = {
    swatchFunc = function()
      local r, g, b = ASCT.API.Documentation["GetColorRGB"](ColorPickerFrame)
      Color.r, Color.g, Color.b = r, g, b
      -- PREVIEW
    end,
    cancelFunc = function()
        Color.r, Color.g, Color.b = OldColor.r, OldColor.g, OldColor.b
    end,
    r = Color.r, g = Color.g, b = Color.b, opacity = 1,
  }
  if ColorPickerFrame.SetupColorPickerAndShow then
    ColorPickerFrame:SetupColorPickerAndShow(info)
  else
    OpenColorPicker(info)
  end
end