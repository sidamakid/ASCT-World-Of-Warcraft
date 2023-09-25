local L_ASCT_Frames = ASCT_Frames_Table
L_ASCT_Frames["Tab_OnClick"] = function (frame, self)
    PanelTemplates_SetTab(self:GetParent(), self:GetID());

    local scrollChild = frame.scrollFrame:GetScrollChild();
    if (scrollChild) then
      scrollChild:Hide();
    end
  
    frame.scrollFrame:SetScrollChild(self.content);
    self.content:Show();
  end
L_ASCT_Frames["SetTabs"] = function (frame2, frame, numTabs, ...)
    frame.numTabs = numTabs
    local contents = {};
    local frameName = frame:GetName();
    for i = 1, numTabs do
      local tab = CreateFrame("Button", frameName.."Tab"..i, frame2, "CharacterFrameTabButtonTemplate");
      tab:SetID(i);
      tab:SetText(select(i, ...))
      tab:SetScript("OnClick", L_ASCT_Frames["Tab_OnClick"]);
    
      tab.content = CreateFrame("Frame", nil, frame2.scrollFrame);
      tab.content:SetSize(770, 500)
      tab.content:Hide()
    
    
    
    
      table.insert(contents, tab.content)
    
      if (i == 1) then
        tab:SetPoint("TOPLEFT", frame2, "BOTTOMLEFT", 5, 7);
      else
        tab:SetPoint("TOPLEFT", _G[frameName.."Tab"..(i - 1)], "TOPRIGHT", -14, 0);
      end
    end
    
    L_ASCT_Frames["Tab_OnClick"](frame2, _G[frameName.."Tab1"])
    return unpack(contents)
end