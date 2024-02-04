local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BLUE = "|cff6666ff"
local WHITE = "|cFFFFFFFF"
local INDENT = "    "

    local function removeScripts(button)
        button:SetScript("OnMouseDown", nil)
        button:SetScript("OnMouseUp", nil)
        button:SetScript("OnShow", nil)
        button:SetScript("OnEnter", nil)
        button:SetScript("OnLeave", nil)
    end

    --Main AtlasLoot Frame
    local mainframe = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent, "PortraitFrameTemplate")
    mainframe:SetPoint("CENTER",0,0)
    mainframe:SetSize(1105,640)
    mainframe:EnableMouse(true)
    mainframe:SetMovable(true)
    mainframe.portrait:SetPortraitTexture("Interface\\Icons\\INV_Box_01")
    mainframe:SetFrameStrata("HIGH")
    mainframe.TitleText:SetText(AtlasLoot.Version)
    mainframe:RegisterForDrag("LeftButton")
    mainframe:EnableKeyboard(true)
    mainframe:Hide()
    mainframe:SetScript("OnShow", function()
        AtlasLoot:OnShow()
    end)
    mainframe:SetScript("OnMouseDown", function()
        AtlasLoot.Dewdrop:Close()
        AtlasLootDefaultFrameSearchBox:ClearFocus()
    end)
    mainframe:SetScript("OnHide", function()
        AtlasLoot.Dewdrop:Close()
        AtlasLoot:ItemsLoading("reset")
    end)
    mainframe:SetScript("OnDragStart", function(self)
        self:StartMoving()
        self.isMoving = true
    end)
    mainframe:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        self.isMoving = false
     end)

    --Loot Background
local lootBackground = CreateFrame("Frame", "AtlaslLoot_LootBackground", mainframe)
    lootBackground:SetSize(770,515)
    lootBackground:SetPoint("TOPLEFT", mainframe, "TOPLEFT",30,-86)
    lootBackground:EnableMouse()
    lootBackground:EnableMouseWheel()
    lootBackground:SetScript("OnMouseDown",function(self, button)
        if _G["AtlasLootItemsFrame_BACK"]:IsVisible() and button == "RightButton" then
            AtlasLoot:BackButton_OnClick()
        elseif AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() and button == "RightButton" then
            AtlasLoot_AdvancedSearchClose()
        end
        AtlasLoot.Dewdrop:Close()
        AtlasLootDefaultFrameSearchBox:ClearFocus()
    end)
    lootBackground:SetScript("OnMouseWheel", function(self,delta)
            if AtlasLootItemsFrame_NEXT:IsVisible() and delta == -1 then
                AtlasLootItemsFrame_NEXT:Click()
            end
            if AtlasLootItemsFrame_PREV:IsVisible() and delta == 1 then
                AtlasLootItemsFrame_PREV:Click()
            end
    end)
    lootBackground:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    lootBackground.Back = lootBackground:CreateTexture("AtlasLootItemsFrame_Back", "BACKGROUND")
    lootBackground.Back:SetAllPoints()
    lootBackground.Back:SetSize(730,475)
    lootBackground.Back:SetPoint("CENTER",lootBackground)
----------------------------------- Item Loot Panel -------------------------------------------
local itemframe = CreateFrame("Frame", "AtlasLootItemsFrame", lootBackground)
        itemframe:SetSize(765,510)
        itemframe:Hide()
        itemframe:SetPoint("TOPLEFT", lootBackground, "TOPLEFT", 2, -2)
        itemframe.Label = itemframe:CreateFontString("AtlasLoot_BossName","OVERLAY","GameFontHighlightLarge")
        itemframe.Label:SetPoint("TOP", "AtlasLootItemsFrame", "TOP")
        itemframe.Label:SetSize(512,30)
        itemframe.Label:SetJustifyH("CENTER")

for num = 1, 30 do
    local button = CreateFrame("Button","AtlasLootItem_"..num, AtlasLootItemsFrame)
        button:SetID(num)
        button:SetSize(236,29)
        button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        button.icon = button:CreateTexture("AtlasLootItem_"..num.."_Icon","ARTWORK")
        button.icon:SetSize(25,25)
        button.icon:SetPoint("TOPLEFT", "AtlasLootItem_"..num,"TOPLEFT",1,-1)
        button.Highlight = button:CreateTexture("AtlasLootItem_"..num.."_Highlight", "OVERLAY")
        button.Highlight:SetSize(26,26)
        button.Highlight:SetPoint("CENTER", button.icon, 0, 0)
        button.Highlight:SetTexture("Interface\\AddOns\\AtlasLoot\\Images\\knownGreen")
        button.Highlight:Hide()
        button.name = button:CreateFontString("AtlasLootItem_"..num.."_Name","ARTWORK","GameFontNormal")
        button.name:SetSize(320,12)
        button.name:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Icon","TOPRIGHT",3,0)
        button.name:SetJustifyH("LEFT")
        button.extra = button:CreateFontString("AtlasLootItem_"..num.."_Extra","ARTWORK","GameFontNormal")
        button.extra:SetSize(320,10)
        button.extra:SetPoint("TOPLEFT","AtlasLootItem_"..num.."_Name","BOTTOMLEFT",0,-1)
        button.extra:SetJustifyH("LEFT")
        button:RegisterForClicks("AnyDown")
        button.number = num
        button:SetScript("OnEnter", function(self) AtlasLoot:ItemOnEnter(self) end)
        button:SetScript("OnLeave", function(self) AtlasLoot:ItemOnLeave(self) end)
        button:SetScript("OnClick", function(self, arg1) AtlasLoot:ItemOnClick(self, arg1) end)
        if num == 1 then
            button:SetPoint("TOP", "AtlasLootItemsFrame", "TOP",-210,-35)
        elseif num == 16 then
            button:SetPoint("TOP", "AtlasLootItemsFrame", "TOP",150,-35)
        else
            button:SetPoint("TOPLEFT", "AtlasLootItem_"..(num - 1), "BOTTOMLEFT")
        end
end

        -- Next Button
local nextbtn = CreateFrame("Button", "AtlasLootItemsFrame_NEXT", AtlasLootItemsFrame)
        nextbtn:SetPoint("BOTTOMRIGHT", "AtlasLootItemsFrame", -5, 5)
        nextbtn:SetSize(32,32)
        nextbtn.texture = nextbtn:CreateTexture(nil, "BACKGROUND")
        nextbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
        nextbtn.texture:SetSize(32,32)
        nextbtn.texture:SetPoint("CENTER",0,0)
        nextbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
        nextbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
        nextbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
        nextbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
        nextbtn:SetScript("OnClick", function(self) AtlasLoot:NavButton_OnClick(self) end)
        nextbtn:Hide()

        -- Previous button
local prevbtn = CreateFrame("Button", "AtlasLootItemsFrame_PREV", AtlasLootItemsFrame)
        prevbtn:SetPoint("BOTTOMLEFT", "AtlasLootItemsFrame", 5, 5)
        prevbtn:SetSize(32,32)
        prevbtn.texture = prevbtn:CreateTexture(nil, "BACKGROUND")
        prevbtn.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
        prevbtn.texture:SetSize(32,32)
        prevbtn.texture:SetPoint("CENTER",0,0)
        prevbtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
        prevbtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
        prevbtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
        prevbtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
        prevbtn:SetScript("OnClick", function(self) AtlasLoot:NavButton_OnClick(self) end)
        prevbtn:Hide()

        -- Back button
local backbtn = CreateFrame("Button", "AtlasLootItemsFrame_BACK", AtlasLootItemsFrame, "OptionsButtonTemplate")
        backbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",0,5)
        backbtn:SetText(AL["Back"])
        backbtn:SetScript("OnClick", function(self) AtlasLoot:BackButton_OnClick() end)
        backbtn:Hide()

    -- Learn Unknown vanity spells button
local learnSpellbtn = CreateFrame("Button", "AtlasLootItemsFrame_Spell_Vanity_Learn", AtlasLootItemsFrame, "OptionsButtonTemplate")
    learnSpellbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",0,5)
    learnSpellbtn:SetText("Learn Unknown")
    learnSpellbtn:SetWidth(150)
    learnSpellbtn:SetScript("OnClick", function() AtlasLoot:BatchRequestVanity(AtlasLoot.vanityItems) end)
    learnSpellbtn:SetScript("OnEnter", function(self)
        GameTooltip:ClearLines()
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
        GameTooltip:AddLine("Learn all the vanity items on this page")
        GameTooltip:Show()
    end)
    learnSpellbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
    learnSpellbtn:Hide()

        -- Wishlist Own/Swap button
local swapbtn = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Swap", AtlasLootItemsFrame, "OptionsButtonTemplate")
        swapbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame", "BOTTOM",0,5)
        swapbtn:SetScript("OnClick", function(self) AtlasLoot:WishListSwapButton(true) end)
        swapbtn:Hide()

        -- Wishlist Options button
local wishOptionsbtn = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Options", AtlasLootItemsFrame, "OptionsButtonTemplate")
    wishOptionsbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Swap", "BOTTOM",-100,0)
    wishOptionsbtn:SetText(AL["Options"])
    wishOptionsbtn:SetScript("OnClick", function(self) AtlasLoot:WishListOptionsOpen() end)
    wishOptionsbtn:Hide()

        -- Wishlist Item Lock button
local lockbtn = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_UnLock", AtlasLootItemsFrame, "OptionsButtonTemplate")
        lockbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Options", "BOTTOM",-100,0)
        lockbtn:SetScript("OnClick", function(self)
            if AtlasLoot.itemUnlock then
                AtlasLoot.itemUnlock = false
                lockbtn:SetText("Locked")
            else
                AtlasLoot.itemUnlock = true
                lockbtn:SetText("UnLocked")
            end
        end)
        lockbtn:SetScript("OnEnter", function(self)
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
            GameTooltip:AddLine("Toggle Item Moving")
            GameTooltip:AddLine("Left Click to move item up")
            GameTooltip:AddLine("Right Click to move item down")
            GameTooltip:AddLine("Alt + Left Click to add a Custom Header")
            GameTooltip:Show()
        end)
        lockbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
        lockbtn:SetText("Locked")
        lockbtn:Hide()

    -- Wishlist Share button
local sharebtn = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Share", AtlasLootItemsFrame, "OptionsButtonTemplate")
        sharebtn:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Swap", "BOTTOM",100,0)
        sharebtn:SetText(AL["Share"])
        sharebtn:SetScript("OnClick", function() AtlasLoot:ShareWishList() end)
        sharebtn:Hide()

    -- Wishlist Share button
local learnbtn = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Vanity_Learn", AtlasLootItemsFrame, "OptionsButtonTemplate")
    learnbtn:SetPoint("BOTTOM", "AtlasLootItemsFrame_Wishlist_Share", "BOTTOM",100,0)
    learnbtn:SetText("Get Items")
    learnbtn:SetScript("OnClick", function() AtlasLoot:BatchRequestVanity(AtlasLoot.vanityItems) end)
    learnbtn:SetScript("OnEnter", function(self)
        GameTooltip:ClearLines()
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
        GameTooltip:AddLine("Learn/Recive all the vanity items on this page")
        GameTooltip:Show()
    end)
    learnbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
    learnbtn:Hide()
        
        -- Filter Button
local filterbtn = CreateFrame("CheckButton","AtlasLootFilterCheck",AtlasLootItemsFrame,"OptionsCheckButtonTemplate")
        filterbtn:SetPoint("TOPLEFT", "AtlasLootItemsFrame",5 ,-5)
        filterbtn.Label = filterbtn:CreateFontString("AtlasLootFilterCheckText","OVERLAY","GameFontNormal")
        filterbtn.Label:SetText(AL["Filter"])
        filterbtn.Label:SetPoint("RIGHT", AtlasLootFilterCheck, 30, 2)
        filterbtn:RegisterForClicks("LeftButtonDown","RightButtonDown")
        filterbtn:SetScript("OnClick", function(self, btnclick) AtlasLoot:FilterEnableButton(self, btnclick) end)
        
------------------------------------ Buttons at the top of the frame ---------------------------------------

    --SubMenu Button
local submenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate")
    removeScripts(submenubtn)
    submenubtn:SetSize(275,25)
    submenubtn:SetPoint("TOP", AtlaslLoot_LootBackground,"TOP",56,30)
    submenubtn.template = "FilterDropDownMenuTemplate"
    submenubtn.Lable = submenubtn:CreateFontString(nil, "OVERLAY","GameFontNormal")
    submenubtn.Lable:SetPoint("TOP",submenubtn,"BOTTOM",0,42)
    submenubtn.Lable:SetText("Select Subcategory")
    submenubtn.Lable:Show()
    submenubtn:SetScript("OnClick", function(self)
        AtlasLoot:DewdropSubMenuOpen(AtlasLoot_SubMenus[AtlasLoot.currentTable])
    end)

    --Moduel Menu Button
local menubtn = CreateFrame("Button", "AtlasLootDefaultFrame_Menu", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate")
    removeScripts(menubtn)
    menubtn:SetSize(275,25)
    menubtn:SetPoint("RIGHT", "AtlasLootDefaultFrame_SubMenu", "LEFT",-5,0)
    menubtn.template = "FilterDropDownMenuTemplate"
    menubtn.Lable = menubtn:CreateFontString(nil, "OVERLAY","GameFontNormal")
    menubtn.Lable:SetPoint("TOP",menubtn,"BOTTOM",0,42)
    menubtn.Lable:SetText("Select Module")
    menubtn.Lable:Show()
    menubtn:SetText(AL["Select Loot Table"])
    menubtn:SetScript("OnClick", function(self)
        AtlasLoot:DewdropModuleMenuOpen()
    end)

    --Options Button
local optionsbtn = CreateFrame("Button", nil, AtlasLootDefaultFrame, "SettingsGearButtonTemplate")
    removeScripts(optionsbtn)
    optionsbtn:SetPoint("LEFT", "AtlasLootDefaultFrame_Menu",-27,0)
    optionsbtn:SetScript("OnClick", function(self,button) AtlasLoot:OptionsToggle() end)
    optionsbtn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine("Options")
        GameTooltip:Show()
    end)
    optionsbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
    mainframe.optionsbtn = optionsbtn

    --Expansion Menu Button
local expansionmenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate");
    removeScripts(expansionmenubtn)
    expansionmenubtn:SetSize(185,25);
    expansionmenubtn:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",5,0);
    expansionmenubtn:SetText(AtlasLoot_ExpansionMenu[GetAccountExpansionLevel()+1][1]);
    expansionmenubtn.template = "FilterDropDownMenuTemplate"
    expansionmenubtn.Lable = expansionmenubtn:CreateFontString(nil, "OVERLAY","GameFontNormal")
    expansionmenubtn.Lable:SetPoint("TOP",expansionmenubtn,"BOTTOM",0,42)
    expansionmenubtn.Lable:SetText("Select Expansion")
    expansionmenubtn.Lable:Show()
    expansionmenubtn:SetScript("OnClick", function(self) AtlasLoot:DewdropExpansionMenuOpen(self) end)

---------------------------------------- Buttons Under the loot and subtable frames -------------------------------------------
    --Search Edit Box
local searchbox = CreateFrame("EditBox", "AtlasLootDefaultFrameSearchBox", AtlasLootDefaultFrame, "SearchBoxTemplate")
    searchbox:SetSize(190,25)
    searchbox:SetPoint("BOTTOMLEFT", "AtlasLootDefaultFrame", "BOTTOMLEFT", 35, 10.5)
    searchbox:SetScript("OnEnterPressed", function(self)
        AtlasLoot:Search(self:GetText())
        self:ClearFocus()
    end)
    searchbox:SetScript("OnTextChanged", function(self)
		if self:HasFocus() then
			SearchBoxTemplate_OnTextChanged(self)
		end
    end)

   --Search Button
local searchbtn = CreateFrame("Button","AtlasLootDefaultFrameSearchButton",AtlasLootDefaultFrame,"FilterDropDownMenuTemplate")
    removeScripts(searchbtn)
    searchbtn:SetSize(69,25)
    searchbtn:SetPoint("LEFT","AtlasLootDefaultFrameSearchBox","RIGHT",2,-1)
    searchbtn:SetText(AL["Search"])
    searchbtn:RegisterForClicks("AnyDown")
    searchbtn.template = "FilterDropDownMenuTemplate"
    searchbtn:SetScript("OnClick", function(self, button)
        if button == "LeftButton" then
           AtlasLoot:Search(AtlasLootDefaultFrameSearchBox:GetText())
           AtlasLootDefaultFrameSearchBox:ClearFocus()
        else
           AtlasLoot:ShowSearchOptions(self)
        end
    end)

   --Last Result Button
local lastresult = CreateFrame("Button","AtlasLootDefaultFrameLastResultButton",AtlasLootDefaultFrameSearchBox,"FilterDropDownMenuTemplate")
    removeScripts(lastresult)
   lastresult:SetSize(80,25)
   lastresult.template = "FilterDropDownMenuTemplate"
   lastresult.Icon:Hide()
   lastresult.Text:SetJustifyH("CENTER")
   lastresult.Text:ClearAllPoints()
   lastresult.Text:SetPoint("CENTER")
   lastresult:SetPoint("LEFT", "AtlasLootDefaultFrameSearchButton", "RIGHT", 2, 0)
   lastresult:SetText(AL["Last Result"])
   lastresult:SetScript("OnClick", function() AtlasLoot:ShowSearchResult() end)

    -- Advanced Search Button
local advSearch = CreateFrame("Button","AtlasLootDefaultFrameAdvancedSearchButton", AtlasLootDefaultFrame,"FilterDropDownMenuTemplate")
    removeScripts(advSearch)
    advSearch:SetSize(80,25)
    advSearch.Icon:Hide()
    advSearch.Text:SetJustifyH("CENTER")
    advSearch.Text:ClearAllPoints()
    advSearch.Text:SetPoint("CENTER")
    advSearch.template = "FilterDropDownMenuTemplate"
    advSearch:SetPoint("LEFT","AtlasLootDefaultFrameLastResultButton","RIGHT",2)
    advSearch:SetText("Advanced")
    advSearch:SetScript("OnClick", function()
        AtlasLoot:AdvancedSearchShow()
        AtlasLootDefaultFrameSearchBox:ClearFocus()
    end)

    --Wish List Button
local wishbtn = CreateFrame("Button", "AtlasLootDefaultFrameWishListButton", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate")
    removeScripts(wishbtn)
    wishbtn:SetPoint("LEFT", "AtlasLootDefaultFrameAdvancedSearchButton", "RIGHT", 2, 0)
    wishbtn:SetSize(80,25)
    wishbtn.template = "FilterDropDownMenuTemplate"
    wishbtn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    wishbtn:SetScript("OnClick", function(self, btnclick)AtlasLoot:WishListButton(self,true,btnclick) end)
    wishbtn:SetText(AL["Wishlist"])
    wishbtn:SetScript("OnEnter", function(self)
        GameTooltip:ClearLines()
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
        GameTooltip:AddLine("Right Click For Menu")
        GameTooltip:Show()
    end)
    wishbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

local favorites = CreateFrame("Button", "AtlasLoot_Favorites", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate")
    removeScripts(favorites)
    favorites:SetPoint("LEFT", "AtlasLootDefaultFrameWishListButton", "RIGHT", 2, 0)
    favorites:SetText("Favorites")
    favorites:SetSize(150,25)
    favorites:SetScript("OnClick", function(self) AtlasLoot:ShowFavorites(self) end)
    favorites.template = "FilterDropDownMenuTemplate"
    favorites:SetScript("OnEnter", function(self) 
        GameTooltip:ClearLines()
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
        GameTooltip:AddLine("Left click to add to favorites")
        GameTooltip:Show()
        AtlasLoot_FavoritesPopupFrame:Show() 
    end)
    favorites:SetScript("OnLeave", function()
        GameTooltip:Hide()
        if GetMouseFocus():GetName() ~= "AtlasLoot_FavoritesPopupFrame" then
            AtlasLoot_FavoritesPopupFrame:Hide()
        end
    end)

        -- Load Current Instance Button
local currentInstance = CreateFrame("Button","AtlasLootDefaultFrame_LoadInstanceButton", AtlasLootDefaultFrame,"FilterDropDownMenuTemplate")
    removeScripts(currentInstance)
    currentInstance:SetSize(107,25)
    currentInstance.Icon:Hide()
    currentInstance.Text:SetJustifyH("CENTER")
    currentInstance.Text:ClearAllPoints()
    currentInstance.Text:SetPoint("CENTER")
    currentInstance.template = "FilterDropDownMenuTemplate"
    currentInstance:SetPoint("LEFT", "AtlasLoot_Favorites", "RIGHT", 2, 0)
    currentInstance:SetScript("OnClick", function() AtlasLoot:ShowInstance() end)
    currentInstance:SetScript("OnLeave", function() GameTooltip:Hide() end)
    currentInstance:SetScript("OnEnter", function(self)
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
            GameTooltip:AddLine("Load the instance you are in")
            GameTooltip:Show()
    end)
    currentInstance:SetText("Current Instance")

local popupframe = CreateFrame("Frame", "AtlasLoot_FavoritesPopupFrame", AtlasLoot_Favorites)
    popupframe:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    popupframe:EnableMouse()
    popupframe:SetScript("OnLeave", function()
        local focus = GetMouseFocus():GetName()
        if focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4" then
            popupframe:Hide()
        end
    end)
    popupframe:SetPoint("BOTTOMLEFT",0,-37)
    popupframe:SetSize(150, 40)
    popupframe:Hide()

    --Quick Look Buttons
local function presetcreate(preset,num)
    preset:SetSize(30,30)
    preset.tex = preset:CreateTexture(nil, "ARTWORK")
    preset.tex:SetPoint("CENTER")
    preset.Icon:Hide()
    preset.Text:Hide()
    preset.template = "FilterDropDownMenuTemplate"
    local tex = AtlasUtil:GetAtlasInfo("services-number-"..num)
    preset.tex:SetTexture(tex.filename)
    preset.tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
    preset.tex:SetSize(25,25)
    preset:SetScript("OnEnter", function(self)
        if AtlasLootCharDB["QuickLooks"][num] then
            GameTooltip:ClearLines()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
            GameTooltip:AddLine(AtlasLootCharDB["QuickLooks"][num][6])
            GameTooltip:Show()
        end
    end)
    preset:SetScript("OnLeave", function() 
        GameTooltip:Hide()
        if not GetMouseFocus() then return end
        local focus = GetMouseFocus():GetName()
        if focus ~= "AtlasLoot_FavoritesPopupFrame" and focus ~= "AtlasLoot_Favorites" and focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4"  then
            popupframe:Hide()
        end
    end)
    preset:SetScript("OnClick", function()
        if AtlasLootCharDB["QuickLooks"][num] and AtlasLoot:IsLootTableAvailable(AtlasLootCharDB["QuickLooks"][num][4]) then
            AtlasLoot.lastModule = AtlasLootCharDB["QuickLooks"][num][4]
            AtlasLoot.currentTable = AtlasLootCharDB["QuickLooks"][num][5]
            if AtlasLootCharDB["QuickLooks"][num][2] == "AtlasLootWishList" then
                AtlasLoot:ShowWishList(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][3])
            else
                AtlasLoot:ShowItemsFrame(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][2], AtlasLootCharDB["QuickLooks"][num][3])
            end
        end
    end)
end
    --QuickLook Button 1
local presetsize = 3
local preset1 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset1", AtlasLoot_FavoritesPopupFrame, "FilterDropDownMenuTemplate")
    removeScripts(preset1)
    presetcreate(preset1,1)
    preset1:SetPoint("LEFT", popupframe, 8, 0)
    --QuickLook Button 2
local preset2 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset2", AtlasLoot_FavoritesPopupFrame, "FilterDropDownMenuTemplate")
    removeScripts(preset2)
    presetcreate(preset2,2)
    preset2:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset1", "RIGHT", presetsize, 0)
    --QuickLook Button 3
local preset3 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset3", AtlasLoot_FavoritesPopupFrame, "FilterDropDownMenuTemplate")
    removeScripts(preset3)
    presetcreate(preset3,3)
    preset3:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset2", "RIGHT", presetsize, 0)
    --QuickLook Button 4
local preset4 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset4", AtlasLoot_FavoritesPopupFrame, "FilterDropDownMenuTemplate")
    removeScripts(preset4)
    presetcreate(preset4,4)
    preset4:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset3", "RIGHT", presetsize, 0)

---------------------  Diffcuility ScrollFrame ----------------------------------
local ROW_HEIGHT = 16   -- How tall is each row?
local MAX_ROWS = 5      -- How many rows can be shown at once?

local scrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", AtlasLootDefaultFrame)
    scrollFrame:EnableMouse(true)
    scrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16)
    scrollFrame:SetPoint("TOPRIGHT","AtlasLootDefaultFrame",-30,-55.5)
    scrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    scrollFrame.Lable = scrollFrame:CreateFontString("Atlasloot_HeaderLabel", "OVERLAY","GameFontNormal")
    scrollFrame.Lable:SetPoint("TOPLEFT",Atlasloot_Difficulty_ScrollFrame,10,-10)
    scrollFrame.Lable:SetJustifyH("LEFT")
    scrollFrame.Lable:SetFont("GameFontNormal", 24)
    scrollFrame.Back = scrollFrame:CreateTexture("Atlasloot_Difficulty_ScrollFrame_Back", "BACKGROUND")
    scrollFrame.Back:SetAllPoints()
    scrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS + 6)
    scrollFrame.Back:SetPoint("CENTER",scrollFrame)

function AtlasLoot:ScrollFrameUpdate(hide,wishlist)
    local maxValue,offset,row,value
    scrollFrame.wishList = nil
    if wishlist then
        scrollFrame.wishList = wishlist
        maxValue = #AtlasLootWishList[wishlist]
        FauxScrollFrame_Update(scrollFrame.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(scrollFrame.scrollBar)
        for i = 1, MAX_ROWS do
            value = i + offset
            scrollFrame.rows[i]:SetChecked(false)
            scrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and AtlasLootWishList[wishlist][value] then
                row = scrollFrame.rows[i]
                row:SetText("|cffFFd200"..AtlasLootWishList[wishlist][value].Name)
                row.itemIndex = value
                if row.itemIndex == ATLASLOOT_CURRENT_WISHLIST_NUM then
                    row:SetChecked(true)
                end
                row:Show()
            else
                scrollFrame.rows[i]:Hide()
            end
        end
    elseif self.Difficultys then
        maxValue = #self.Difficultys[self.CurrentType]
        FauxScrollFrame_Update(scrollFrame.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(scrollFrame.scrollBar)
        for i = 1, MAX_ROWS do
            value = i + offset
            scrollFrame.rows[i]:SetChecked(false)
            scrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and self.Difficultys[self.CurrentType][value] and hide == nil then
                row = scrollFrame.rows[i]
                row:SetText("|cffFFd200"..self.Difficultys[self.CurrentType][value][1])
                row.itemIndex = self.Difficultys[self.CurrentType][value][2]
                if row.itemIndex == ItemindexID then
                    row:SetChecked(true)
                end
                row:Show()
            else
                scrollFrame.rows[i]:Hide()
            end
        end
    end
end

local scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll", Atlasloot_Difficulty_ScrollFrame, "FauxScrollFrameTemplate")
    scrollSlider:SetPoint("TOPLEFT", 0, -8)
    scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider:SetScript("OnVerticalScroll", function(self, offset)
    self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
    if scrollFrame.wishList then
        AtlasLoot:ScrollFrameUpdate(nil,scrollFrame.wishList)
    else
        AtlasLoot:ScrollFrameUpdate()
    end
end)

scrollSlider:SetScript("OnShow", function()
    if scrollFrame.wishList then
        AtlasLoot:ScrollFrameUpdate(nil,scrollFrame.wishList)
    else
        AtlasLoot:ScrollFrameUpdate()
    end
end)

scrollFrame.scrollBar = scrollSlider

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, Atlasloot_Difficulty_ScrollFrame)
	row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
	row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:SetScript("OnClick", function()
        if scrollFrame.wishList then
            AtlasLoot:ShowWishList(scrollFrame.wishList,row.itemIndex)
            AtlasLoot_CurrentWishList["Show"].ListNum = row.itemIndex
            AtlasLoot:ScrollFrameUpdate(nil,scrollFrame.wishList)
        else
            ItemindexID = row.itemIndex
            if not AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible() then
            AtlasLoot:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
            end
            AtlasLoot:ScrollFrameUpdate()
        end

    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", scrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", scrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

scrollFrame.rows = rows
local MAX_ROWS2 = 26      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
local subtableFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", AtlasLootDefaultFrame)
    subtableFrame:EnableMouse(true)
    subtableFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23)
    subtableFrame:SetPoint("BOTTOMLEFT","Atlasloot_Difficulty_ScrollFrame",0,-449.5)
    subtableFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    subtableFrame.Back = subtableFrame:CreateTexture("Atlasloot_SubTableFrame_Back", "BACKGROUND")
    subtableFrame.Back:SetAllPoints()
    subtableFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS2 + 13)
    subtableFrame.Back:SetPoint("CENTER",subtableFrame)

function AtlasLoot:SubTableScrollFrameUpdate(tablename, dataSource, tablenum)
    if tablename == "FilterList" then return end
    local maxValue = #_G[dataSource][tablename]
    if dataSource == "AtlasLoot_MapData" then maxValue = #_G[dataSource][tablename][tablenum] end
    subtableFrame.tablename = tablename
    subtableFrame.dataSource = dataSource
    subtableFrame.tablenum = tablenum
    FauxScrollFrame_Update(subtableFrame.scrollBar, maxValue, MAX_ROWS2, ROW_HEIGHT)
    local offset = FauxScrollFrame_GetOffset(subtableFrame.scrollBar)
    for i = 1, MAX_ROWS2 do
        local value = i + offset
        subtableFrame.rows[i]:SetChecked(false)
        subtableFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
        if value <= maxValue and (_G[dataSource][tablename][value] or _G[dataSource][tablename][tablenum][value]) and tablename ~= "SearchMENU" then
            local row = subtableFrame.rows[i]
                row.dataSource = dataSource
                row.tablename = tablename
                row.tablenum = value
            if dataSource == "AtlasLoot_MapData" then
                local text = _G[dataSource][tablename][tablenum][value][1]
                if _G[dataSource][tablename][tablenum][value][2] then text = text.._G[dataSource][tablename][tablenum][value][2] end
                if _G[dataSource][tablename][tablenum][value].SubZone then
                    text = BLUE..text
                elseif not _G[dataSource][tablename][tablenum][value].Zone then
                    text = WHITE..text
                end
                if not _G[dataSource][tablename][tablenum][value].cords and not _G[dataSource][tablename][tablenum][value].Zone and not _G[dataSource][tablename][tablenum][value].SubZone then text = INDENT..text end
                row.Text:SetText(text)
                row:SetScript("OnEnter", function(self)
                    GameTooltip:SetOwner(self, "ANCHOR_TOP")
                    GameTooltip:SetText(_G[dataSource][tablename][tablenum][value][1])
                    GameTooltip:Show()
                end)
                row:SetScript("OnLeave", function() GameTooltip:Hide() end)
            else
                row.Text:SetText("|cffFFd200".._G[dataSource][tablename][value].Name)
                row:SetScript("OnEnter", function(self)
                    GameTooltip:Hide()
                end)
                if tablenum == value and dataSource ~= "AtlasLoot_MapData" then
                    row:SetChecked(true)
                end
            end
            row:Show()
        else
            subtableFrame.rows[i]:Hide()
        end
    end
end

local scrollSlider2 = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate")
    scrollSlider2:SetPoint("TOPLEFT", 0, -8)
    scrollSlider2:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider2:SetScript("OnVerticalScroll", function(self, offset)
        self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            AtlasLoot:SubTableScrollFrameUpdate(subtableFrame.tablename, subtableFrame.dataSource, subtableFrame.tablenum)
    end)

    subtableFrame.scrollBar = scrollSlider2

local rows2 = setmetatable({}, { __index = function(t, i)
    local row = CreateFrame("CheckButton", "$parentRow"..i, Atlasloot_SubTableFrame)
    row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
    row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:RegisterForClicks("AnyDown")
    row.Text = row:CreateFontString("$parentRow"..i.."Text","OVERLAY","GameFontNormal")
    row.Text:SetSize(230, ROW_HEIGHT)
    row.Text:SetPoint("LEFT",row)
    row.Text:SetJustifyH("LEFT")
    row:SetScript("OnClick", function(self, button)
        local npcID = _G[row.dataSource][row.tablename][row.tablenum].NpcID
        if button == "RightButton" and npcID then
            row:SetChecked(not row:GetChecked())
            AtlasLoot:OpenDB(self, "npc", npcID)
        elseif row.dataSource ~= "AtlasLoot_MapData" then
            AtlasLoot:ShowItemsFrame(row.tablename, row.dataSource, row.tablenum)
        else
            row:SetChecked(false)
        end
    end)
    if i == 1 then
        row:SetPoint("TOPLEFT", subtableFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", subtableFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })

subtableFrame.rows = rows2

--------------------------------- Map Frame and buttons -----------------------------------------------

    --AtlasLoot Maps
    local mapFrame = CreateFrame("Frame", "AtlasLootDefaultFrame_Map", AtlasLootDefaultFrame)
        mapFrame:SetSize(770,513)
        mapFrame:SetPoint("TOPLEFT", AtlasLootDefaultFrame, "TOPLEFT",30,-86)
        mapFrame:SetFrameStrata("HIGH")
        mapFrame:Hide()
        mapFrame:EnableMouse()
        mapFrame:SetScript("OnMouseDown", function(self, button)
            if button == "RightButton" then
                AtlasLoot:MapOnShow()
            elseif button == "LeftButton" then
                --print(AtlasLoot:GetCursorCords())
            end
        end)
        
        mapFrame:EnableMouseWheel(true)
        mapFrame.cursorCords = mapFrame:CreateFontString(nil,"ARTWORK","GameFontNormal")
        mapFrame.cursorCords:SetPoint("TOPRIGHT", mapFrame, -10, 0)
        mapFrame.cursorCords:Show()
        mapFrame.cursorCords:SetSize(150, 25)
        mapFrame.cursorCords:SetJustifyH("RIGHT")
        mapFrame:SetScript("OnMouseWheel", function(self,delta)
            if AtlasLootItemsFrame_NEXT:IsVisible() and delta == -1 then
                AtlasLootItemsFrame_NEXT:Click()
            end
            if AtlasLootItemsFrame_PREV:IsVisible() and delta == 1 then
                AtlasLootItemsFrame_PREV:Click()
            end
        end)

        mapFrame:SetScript("OnShow", function() mapFrame.cursorCords:SetText(WHITE.."Cursor: ---") end)
        mapFrame:SetScript("OnEnter", function() AtlasLoot.showCords = true AtlasLoot:MapOnEnter() end)
        mapFrame:SetScript("OnUpdate", function() AtlasLoot:MapOnEnter() end)
        mapFrame:SetScript("OnLeave", function()
            AtlasLoot.showCords = false
            mapFrame.cursorCords:SetText(WHITE.."Cursor: ---")
        end)

    for i=1, 12 do
        mapFrame.tile = mapFrame:CreateTexture("AtlasLoot_MapDetailTile"..i, "BACKGROUND")
        mapFrame.tile:SetSize(196,196)
        mapFrame.tile:Show()
    end

    AtlasLoot_MapDetailTile1:SetPoint("TOPLEFT", mapFrame)
    AtlasLoot_MapDetailTile2:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile1,"TOPRIGHT")
    AtlasLoot_MapDetailTile3:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile2,"TOPRIGHT")
    AtlasLoot_MapDetailTile4:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile3,"TOPRIGHT")
    AtlasLoot_MapDetailTile5:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile1,"BOTTOMLEFT")
    AtlasLoot_MapDetailTile6:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile5,"TOPRIGHT")
    AtlasLoot_MapDetailTile7:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile6,"TOPRIGHT")
    AtlasLoot_MapDetailTile8:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile7,"TOPRIGHT")
    AtlasLoot_MapDetailTile9:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile5,"BOTTOMLEFT")
    AtlasLoot_MapDetailTile10:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile9,"TOPRIGHT")
    AtlasLoot_MapDetailTile11:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile10,"TOPRIGHT")
    AtlasLoot_MapDetailTile12:SetPoint("TOPLEFT", AtlasLoot_MapDetailTile11,"TOPRIGHT")

    mapFrame.playerPin = CreateFrame("Button", "AtlasLoot_PlayerMapPin", AtlasLootDefaultFrame_Map)
    mapFrame.playerPin:SetSize(35,35)
    mapFrame.playerPin:SetFrameStrata("HIGH")
    mapFrame.playerPin.texture = mapFrame.playerPin:CreateTexture(nil, "ARTWORK")
    mapFrame.playerPin.texture:SetTexture("Interface\\Minimap\\MinimapArrow")
    mapFrame.playerPin.texture:SetSize(35,35)
    mapFrame.playerPin.texture:SetPoint("CENTER",0,0)
    mapFrame.playerPin:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
        GameTooltip:AddLine("You are here")
        GameTooltip:Show()
    end)
    mapFrame.playerPin:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    mapFrame.playerPin:Hide()

    -- Map Button
    mainframe.mapButton = CreateFrame("Button","AtlasLootDefaultFrame_MapButton", AtlasLootDefaultFrame, "FilterDropDownMenuTemplate")
    removeScripts(mainframe.mapButton)
    mainframe.mapButton:SetSize(265,25)
    mainframe.mapButton:SetPoint("LEFT",AtlasLootDefaultFrame_LoadInstanceButton,"RIGHT",10.5,0)
    mainframe.mapButton.template = "FilterDropDownMenuTemplate"
    mainframe.mapButton:SetText("No Map")
    mainframe.mapButton:RegisterForClicks("AnyDown")
    mainframe.mapButton:SetScript("OnClick", function(self, button)
        if button == "LeftButton" then
            AtlasLoot:MapOnShow(AtlasLoot.CurrentMap, AtlasLoot.MapNum or 1)
        else
            AtlasLoot:MapMenuOpen(self)
        end
    end)

-- item data loading icon animation
local streamIcon = CreateFrame("Frame", "AtlasLoot_ItemsLoading", AtlaslLoot_LootBackground)
    streamIcon:SetPoint("TOPRIGHT", AtlaslLoot_LootBackground, "TOPRIGHT")
    streamIcon:SetSize(48, 48)
    streamIcon.tooltip = "Searching..."
    streamIcon:EnableMouse(true)

    streamIcon.icon = streamIcon:CreateTexture("$parentSpinner", "BACKGROUND")
    streamIcon.icon:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamcircle")
    streamIcon.icon:SetVertexColor(0,1,0)
    streamIcon.icon:SetAllPoints()
    streamIcon.spark = streamIcon:CreateTexture("OVERLAY")
    streamIcon.spark:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamspark")
    streamIcon.spark:SetAllPoints()

    streamIcon.frame = CreateFrame("Frame", "$parentFrame", AtlasLoot_ItemsLoading)
    streamIcon.frame:SetAllPoints()
    streamIcon.frame.bg = streamIcon.frame:CreateTexture("$parentBackground", "BACKGROUND")
    streamIcon.frame.bg:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streambackground")
    streamIcon.frame.bg:SetVertexColor(0,1,0)
    streamIcon.frame.bg:SetAllPoints()
    streamIcon.frame.alpha = streamIcon.frame:CreateTexture("$parentAlpha", "ARTWORK")
    streamIcon.frame.alpha:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamframe")
    streamIcon.frame.alpha:SetAllPoints()

    streamIcon.Loop = streamIcon:CreateAnimationGroup("$parentLoopAnim")
    streamIcon.Loop:SetLooping("REPEAT")
local rotAnim = streamIcon.Loop:CreateAnimation("ROTATION")
    rotAnim:SetOrder(1)
    rotAnim:SetDuration(8)
    rotAnim:SetDegrees(-360)

    streamIcon:SetScript("OnEnter",
        function(self) 
            if(self.tooltip ~= nil) then
                GameTooltip:SetOwner(self, "ANCHOR_LEFT")
                GameTooltip:SetText(self.tooltip, nil, nil, nil, nil, true)
            end
        end)
    streamIcon:SetScript("OnLeave", GameTooltip_Hide)
    streamIcon:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end)

    streamIcon:SetPoint("TOPRIGHT", AtlaslLoot_LootBackground, "TOPRIGHT")
    streamIcon:Hide()

local itemPopupframe = CreateFrame("Frame", "AtlasLoot_PopupFrame")
    itemPopupframe:EnableMouse()
    itemPopupframe:SetScript("OnLeave", function(self)
        AtlasLoot:ItemOnLeave(self)
    end)
    itemPopupframe:SetScript("OnEnter", function()
        AtlasLoot_PopupFrame:Show()
    end)
    itemPopupframe:SetWidth(211)
    itemPopupframe:Hide()