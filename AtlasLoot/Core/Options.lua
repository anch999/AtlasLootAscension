--[[
Options.lua
Functions:
AtlasLoot_OptionsPanelOnLoad(panel)
AtlasLoot:OptionsInit()
AtlasLoot:OptionsAllLinksToggle()
AtlasLoot:OptionsEquipCompareToggle()
AtlasLoot:OptionsOpaqueToggle()
AtlasLoot:OptionsLoDStartup()
AtlasLoot:SetupLootBrowserSlider(frame, mymin, mymax, step)
AtlasLoot:UpdateLootBrowserSlider(frame)
AtlasLoot:DisplayHelp()
AtlasLoot:CreateOptionsInfoTooltips()
]]

local GREY = "|cff999999"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local ORANGE = "|cffFF8400"

--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

function AtlasLoot_OptionsPanelOnLoad(panel)
    panel.name=AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
end

function AtlasLoot:OptionsInit()
    --Initialise all the check boxes on the options frame
    AtlasLootOptionsFrameEquipCompare:SetChecked(self.db.profile.EquipCompare)
    AtlasLootOptionsFrameOpaque:SetChecked(self.db.profile.Opaque)
    AtlasLootOptionsFrameAutoInstance:SetChecked(self.db.profile.AutoCurrentInstance)
    AtlasLootOptionsFrameLootBrowserScale:SetValue(self.db.profile.LootBrowserScale)
    AtlasLootOptionsMinimapIcon:SetChecked(self.db.profile.minimap.hide)
    AtlasLootOptionsFrameCraftingInfo:SetChecked(self.db.profile.recipeExtraInfoSwitch)
    AtlasLootOptionsFrameDropLocation:SetChecked(self.db.profile.showdropLocationOnSearch)
    AtlasLootOptionsFrameUnknownRecipe:SetChecked(self.db.profile.showUnknownRecipeTooltip)
    AtlasLootOptionsFrameItemDropLocation:SetChecked(self.db.profile.showdropLocationTooltips)
    AtlasLootOptionsFrameMerchantGlow:SetChecked(self.db.profile.MerchantGlow)
end

--[[
AtlasLoot:OptionsToggle:
Toggle on/off the options window
]]
function AtlasLoot:OptionsToggle()
    if InterfaceOptionsFrame_OpenToCategory and not InterfaceOptionsFrame:IsVisible() then
	    InterfaceOptionsFrame_OpenToCategory(AL["AtlasLoot"])
	else
		InterfaceOptionsFrame:Hide()
    end
    InterfaceOptionsFrame:SetFrameStrata("DIALOG")
end

function AtlasLoot:OptionsOpaqueToggle()
    self.db.profile.Opaque = AtlasLootOptionsFrameOpaque:GetChecked()
    if (self.db.profile.Opaque) then
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 1)
    else
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 0.05)
    end
    self:OptionsInit()
end

function AtlasLoot:Options_AutoInstanceToggle()
    self.db.profile.AutoCurrentInstance = AtlasLootOptionsFrameAutoInstance:GetChecked()
end

function AtlasLoot:SetupLootBrowserSlider(frame, mymin, mymax, step)
    _G[frame:GetName().."Text"]:SetText(AL["Loot Browser Scale: "].." ("..frame:GetValue()..")")
	frame:SetMinMaxValues(mymin, mymax)
	_G[frame:GetName().."Low"]:SetText(mymin)
	_G[frame:GetName().."High"]:SetText(mymax)
	frame:SetValueStep(step)
    self:OptionsInit()
end

--Borrowed from Atlas, thanks Dan!
local function round(num, idp)
   local mult = 10 ^ (idp or 0)
   return math.floor(num * mult + 0.5) / mult
end

function AtlasLoot:UpdateLootBrowserSlider(frame)
    _G[frame:GetName().."Text"]:SetText(AL["Loot Browser Scale: "].." ("..round(frame:GetValue(),2)..")")
end

function AtlasLoot:UpdateLootBrowserScale()
	AtlasLootDefaultFrame:SetScale(self.db.profile.LootBrowserScale)
end

function AtlasLoot:DisplayHelp()
	if not _G["AtlasLootHelpFrame_HelpText"] then
		local framewidht = InterfaceOptionsFramePanelContainer:GetWidth()
		local panel3 = CreateFrame("ScrollFrame", "AtlasLootHelpFrame_HelpTextFrameScroll", AtlasLootHelpFrame, "UIPanelScrollFrameTemplate")
		local scc = CreateFrame("Frame", "AtlasLootHelpFrame_HelpTextFrame", panel3)
			panel3:SetScrollChild(scc)
			panel3:SetPoint("TOPLEFT", AtlasLootHelpFrame, "TOPLEFT", 10, -25)
			scc:SetPoint("TOPLEFT", panel3, "TOPLEFT", 0, 0)
			panel3:SetWidth(framewidht-45)  
			panel3:SetHeight(400) 
			scc:SetWidth(framewidht-45)  
			scc:SetHeight(400)  
			panel3:SetHorizontalScroll(-50)
			panel3:SetVerticalScroll(50)
			panel3:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="", tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
			panel3:SetScript("OnVerticalScroll", function()  end)
			panel3:EnableMouse(true)
			panel3:SetVerticalScroll(0)
			panel3:SetHorizontalScroll(0)
		local Text = scc:CreateFontString("AtlasLootHelpFrame_HelpText","OVERLAY","GameFontNormal")
			Text:SetPoint("TOPLEFT", scc, "TOPLEFT", 0, 0)
			Text:SetText(
            ORANGE..AL["How to link an item to someone else:"].."\n"..
            WHITE..AL["Shift+Left Click the item like you would for any other in-game item"].."\n\n"..
            ORANGE..AL["How to view an item in the Dressing Room:"].."\n"..
            WHITE..AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."].."\n\n"..
            ORANGE..AL["How to add an item to the wishlist:"].."\n"..
            WHITE..AL["Right Click any item and open the context menu and click add to wishlist."].."\n\n"..
            WHITE..AL["Or Alt+Left Click any item to add it to the default wishlist."].."\n\n"..
            ORANGE..AL["How to delete an item from the wishlist:"].."\n"..
            WHITE..AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."].."\n\n"..
            ORANGE..AL["What else does the wishlist do?"].."\n"..
            WHITE..AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."].."\n\n"..
            ORANGE..AL["How to set of change a page filter:"].."\n"..
            WHITE..AL["If you Right Click on the filter check box you will get a drop downmenu with a list of filters. Click the filter you want to use or click add filter set to add new custom filters."].."\n\n"..
            ORANGE..AL["HELP!! I have broken the mod somehow!"].."\n"..
            WHITE..AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."].."\n\n"..
            GREY..AL["For further help, see our website and forums: "]..GREEN.."https://discord.gg/uYCE2X2FgA"
            )
			Text:SetWidth(framewidht-80)
			Text:SetJustifyH("LEFT")
			Text:SetJustifyV("TOP")
	end
end

--[[
AtlasLoot:CreateOptionsInfoTooltips()
Adds explanatory tooltips to Atlasloot options
]]
function AtlasLoot:CreateOptionsInfoTooltips()
      self:AddTooltip("AtlasLootOptionsFrameOpaque", nil) -- AL["Make Loot Table Opaque"]
      self:AddTooltip("AtlasLootOptionsFrameEquipCompare", nil) -- AL["Show Comparison Tooltips"]
      self:AddTooltip("AtlasLootOptionsFrameLoDSpam", nil) -- AL["Notify on LoD Module Load"]
      self:AddTooltip("AtlasLootOptionsFrameLootBrowserScale", nil) -- Scale SLIDER
      self:AddTooltip("AtlasLootOptionsFrame_ResetAtlasLoot", nil) -- AL["Reset Frames"]
      self:AddTooltip("AtlasLootOptionsFrame_ResetWishlist", nil) -- AL["Reset Wishlist"]
      self:AddTooltip("AtlasLootOptionsFrame_ResetQuicklooks", nil) -- AL["Reset Favorites"]
      self:AddTooltip("AtlasLoot_SelectLootBrowserStyle", nil) 
end

local function selectLootBrowserStyle_Initialize()
    for _, skin in pairs(AtlasLoot.skinKeys) do
        local info = {
            text = skin[2],
            func = AtlasLoot.SelectLootBrowserStyle_OnClick,
        }
        UIDropDownMenu_AddButton(info)
    end
end

function AtlasLoot:OptionsOnShow()
    AtlasLoot_SelectLootBrowserStyle_Label:SetText(AL["Change AtlasLoot Skin:"])
    if InterfaceOptionsFrame:GetWidth() < 850 then InterfaceOptionsFrame:SetWidth(850) end
    UIDropDownMenu_Initialize(AtlasLoot_SelectLootBrowserStyle, selectLootBrowserStyle_Initialize)
	UIDropDownMenu_SetSelectedID(AtlasLoot_SelectLootBrowserStyle, self.db.profile.LootBrowserStyle)
	UIDropDownMenu_SetWidth(AtlasLoot_SelectLootBrowserStyle, 150)
end

function AtlasLoot:SelectLootBrowserStyle_OnClick()
    local thisID = this:GetID()
	UIDropDownMenu_SetSelectedID(AtlasLoot_SelectLootBrowserStyle, thisID)
    AtlasLoot.db.profile.LootBrowserStyle = thisID
    if AtlasLoot.db.profile.LootBrowserStyle then
        AtlasLoot:SetSkin(AtlasLoot.skinKeys[AtlasLoot.db.profile.LootBrowserStyle][1])
    end
    AtlasLoot:OptionsOnShow()
end



function AtlasLoot:InitializeOptionsFrame()

    local helpframe = CreateFrame("Frame", "AtlasLootHelpFrame")
            helpframe:SetSize(425,450)
            helpframe:Hide()
            helpframe:SetPoint("CENTER")
            helpframe.title = helpframe:CreateFontString("AtlasLootHelpFrame_Title", "OVERLAY", "GameFontHighlightLarge")
            helpframe.title:SetJustifyH("CENTER")
            helpframe.title:SetSize(400,30)
            helpframe.title:SetPoint("TOP", "AtlasLootHelpFrame","TOP")
            helpframe.title:SetText(AL["AtlasLoot Help"])
            helpframe:SetScript("OnShow", function() self:DisplayHelp() end)

    local optframe = CreateFrame("Frame", "AtlasLootOptionsFrame")
            optframe:Hide()
            optframe:SetSize(425,405)
            optframe:SetPoint("CENTER")
            optframe.title = optframe:CreateFontString("AtlasLoot_OptionsTitle", "OVERLAY", "GameFontHighlightLarge")
            optframe.title:SetJustifyH("CENTER")
            optframe.title:SetSize(400,30)
            optframe.title:SetPoint("TOP", "AtlasLootOptionsFrame","TOP")
            optframe.title:SetText("AtlasLoot: "..self.Version)
            optframe:SetScript("OnShow", function() self:OptionsOnShow() end)

    local opaque = CreateFrame("CheckButton", "AtlasLootOptionsFrameOpaque", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            opaque:SetPoint("TOPLEFT",5,-40)
            AtlasLootOptionsFrameOpaqueText:SetText(AL["Make Loot Table Opaque"])
            opaque:SetScript("OnClick", function() self:OptionsOpaqueToggle() end)

    local autoInstance = CreateFrame("CheckButton", "AtlasLootOptionsFrameAutoInstance", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            autoInstance:SetPoint("TOPLEFT",5,-70)
            AtlasLootOptionsFrameAutoInstanceText:SetText(AL["Auto Load Instance Loot Pages"])
            autoInstance:SetScript("OnClick", function() self:Options_AutoInstanceToggle() end)

    local craftingInfo = CreateFrame("CheckButton", "AtlasLootOptionsFrameCraftingInfo", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            craftingInfo:SetPoint("TOPLEFT",5,-100)
            AtlasLootOptionsFrameCraftingInfoText:SetText(AL["Hide crafting source unless holding CTRL"])
            craftingInfo:SetScript("OnClick", function() self.db.profile.recipeExtraInfoSwitch = not self.db.profile.recipeExtraInfoSwitch end)

    local craftingDropInfo = CreateFrame("CheckButton", "AtlasLootOptionsFrameDropLocation", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            craftingDropInfo:SetPoint("TOPLEFT",5,-130)
            AtlasLootOptionsFrameDropLocationText:SetText(AL["Show drop location on search results"])
            craftingDropInfo:SetScript("OnClick", function() self.db.profile.showdropLocationOnSearch = not self.db.profile.showdropLocationOnSearch end)

    local unknownRecipeTooltip = CreateFrame("CheckButton", "AtlasLootOptionsFrameUnknownRecipe", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            unknownRecipeTooltip:SetPoint("TOPLEFT",5,-160)
            AtlasLootOptionsFrameUnknownRecipeText:SetText(AL["Show if recipe is unknown in tooltips"])
            unknownRecipeTooltip:SetScript("OnClick", function() self.db.profile.showUnknownRecipeTooltip = not self.db.profile.showUnknownRecipeTooltip end)

    local miniMap = CreateFrame("CheckButton", "AtlasLootOptionsMinimapIcon", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            miniMap:SetPoint("TOP",5,-70)
            AtlasLootOptionsMinimapIconText:SetText(AL["Hide minimap icon"])
            miniMap:SetScript("OnClick", function() self:ToggleMinimap() end)

    local itemDropLocation = CreateFrame("CheckButton", "AtlasLootOptionsFrameItemDropLocation", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            itemDropLocation:SetPoint("TOP",5,-100)
            AtlasLootOptionsFrameItemDropLocationText:SetText(AL["Show drop locations in tooltips"])
            itemDropLocation:SetScript("OnClick", function()
                self.db.profile.showdropLocationTooltips = not self.db.profile.showdropLocationTooltips
                self:CreateItemSourceList(true)
                end)

    local merchantGlow = CreateFrame("CheckButton", "AtlasLootOptionsFrameMerchantGlow", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            merchantGlow:SetPoint("TOP",5,-130)
            AtlasLootOptionsFrameMerchantGlowText:SetText(AL["Make items in a vendor window glow \nif they are on a wishlist"])
            merchantGlow:SetScript("OnClick", function()
                self.db.profile.MerchantGlow = not self.db.profile.MerchantGlow
                self:InitializeWishlistMerchantGlow()
                end)

    local equip = CreateFrame("CheckButton", "AtlasLootOptionsFrameEquipCompare", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
            equip:SetPoint("TOP",5,-40)
            AtlasLootOptionsFrameEquipCompareText:SetText(AL["Show Comparison Tooltips"])
            equip:SetScript("OnClick", function() self.db.profile.EquipCompare = not self.db.profile.EquipCompare end)

    local sStyle = CreateFrame("Button", "AtlasLoot_SelectLootBrowserStyle", AtlasLootOptionsFrame, "UIDropDownMenuTemplate")
            sStyle.lable = sStyle:CreateFontString("AtlasLoot_SelectLootBrowserStyle_Label", "BACKGROUND", "GameFontNormalSmall")
            sStyle.lable:SetPoint("LEFT", "AtlasLoot_SelectLootBrowserStyle", "RIGHT",5,2)
            sStyle:SetPoint("TOPLEFT",-10,-220)

    local bscale = CreateFrame("Slider", "AtlasLootOptionsFrameLootBrowserScale", AtlasLootOptionsFrame,"OptionsSliderTemplate")
            bscale:SetSize(240,16)
            bscale:SetPoint("TOP", 0,-300)
            bscale:SetScript("OnShow", function() self:SetupLootBrowserSlider(bscale, 0.25, 1.5, 0.01) end)
            bscale:SetScript("OnValueChanged", function()
                self:UpdateLootBrowserSlider(bscale)
                self.db.profile.LootBrowserScale = bscale:GetValue()
                self:UpdateLootBrowserScale()
            end)

    local resetwish = CreateFrame("Button", "AtlasLootOptionsFrame_ResetWishlist", AtlasLootOptionsFrame, "OptionsButtonTemplate")
            resetwish:SetSize(130,25)
            resetwish:SetPoint("TOP", 0, -325)
            resetwish:SetText(AL["Reset Wishlist"])
            resetwish:SetScript("OnClick", function() self:Reset("wishlist") end)
            resetwish:SetScript("OnShow", function() resetwish:SetWidth(AtlasLootOptionsFrame_ResetWishlist:GetTextWidth()+20) end)

    local resetAtlas = CreateFrame("Button", "AtlasLootOptionsFrame_ResetAtlasLoot", AtlasLootOptionsFrame, "OptionsButtonTemplate")
            resetAtlas:SetSize(130,25)
            resetAtlas:SetText(AL["Reset Frames"])
            resetAtlas:SetPoint("RIGHT", "AtlasLootOptionsFrame_ResetWishlist", "LEFT", -10, 0)
            resetAtlas:SetScript("OnClick", function() self:Reset("frames") end)
            resetAtlas:SetScript("OnShow", function() resetAtlas:SetWidth(AtlasLootOptionsFrame_ResetAtlasLoot:GetTextWidth()+20) end)

    local resetquick = CreateFrame("Button", "AtlasLootOptionsFrame_ResetQuicklooks", AtlasLootOptionsFrame, "OptionsButtonTemplate")
            resetquick:SetSize(130,25)
            resetquick:SetText(AL["Reset Favorites"])
            resetquick:SetPoint("LEFT", "AtlasLootOptionsFrame_ResetWishlist", "RIGHT", 10, 0)
            resetquick:SetScript("OnClick", function() self:Reset("quicklooks") end)
            resetquick:SetScript("OnShow", function() resetquick:SetWidth(AtlasLootOptionsFrame_ResetQuicklooks:GetTextWidth()+20) end)
	--Set up options frame
	self:OptionsInit()
    self:CreateOptionsInfoTooltips()
    self.db.TxtSize = self.db.TxtSize or 14
    local panel = _G["AtlasLootOptionsFrame"]
    panel.name = AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
    --Filter and wishlist options menus creates as part of the next 2 commands
	self:CreateWishlistOptions()
    panel = _G["AtlasLootHelpFrame"]
    panel.name = AL["Help"]
    panel.parent = AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
    if LibStub:GetLibrary("LibAboutPanel", true) then
        LibStub("LibAboutPanel").new(AL["AtlasLoot"], "AtlasLoot")
    end
end

AtlasLoot.worldFrameHook = {}
function AtlasLoot:OpenSettingQuickMenu(button)
    GameTooltip:Hide()
    if self.Dewdrop:Open(button) then self.Dewdrop:Close() return end
    self.Dewdrop:Open(button,
    'point', function(parent)
      local point1, _, point2 = self:GetTipAnchor(button)
      return point1, point2
    end,
    'children', function(level, value)
        self:QuickSettingsMenu(level, value)
    end)
    if not self.worldFrameHook[button:GetName()] then
        WorldFrame:HookScript("OnEnter", function()
        if self.Dewdrop:IsOpen(button) then
            self.Dewdrop:Close()
        end
    end)
    self.worldFrameHook[button:GetName()] = true
    end
end

function AtlasLoot:QuickSettingsMenu(level, value)
    if level == 1 then
        self.Dewdrop:AddLine(
            'textHeight', self.globalDB.TxtSize,
            'textWidth', self.globalDB.TxtSize,
            'text', "Quick Settings",
            'isTitle', true,
            'notCheckable', true
        )
        self.Dewdrop:AddLine(
            'textHeight', self.globalDB.TxtSize,
            'textWidth', self.globalDB.TxtSize,
            'text', "News/Patch Notes",
            'tooltipTitle', "Open the news/patch notes ui",
            'notCheckable', true,
            'closeWhenClicked', true,
            'func', function() self:OpenNewsFrame() end
        )
        self.Dewdrop:AddLine(
            'textHeight', self.globalDB.TxtSize,
            'textWidth', self.globalDB.TxtSize,
            'text', "Learn vanity",
            'tooltipTitle', "Learn all unknown vanity spells",
            'notCheckable', true,
            'closeWhenClicked', true,
            'func', function() self:LearnAllUnknownVanitySpells() end
        )
        if self.globalDB.isAdmin then
            self:AddDividerLine(35)
            self.Dewdrop:AddLine(
                'textHeight', self.globalDB.TxtSize,
                'textWidth', self.globalDB.TxtSize,
                'text', "Admin Menu",
                'isTitle', true,
                'notCheckable', true
            )
            self.Dewdrop:AddLine(
                'textHeight', self.globalDB.TxtSize,
                'textWidth', self.globalDB.TxtSize,
                'text', "Update ItemId Database",
                'tooltipTitle', "Updates the item id variations cache",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() self:UpdateItemIDsDatabase() end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.globalDB.TxtSize,
                'textWidth', self.globalDB.TxtSize,
                'text', "Wipe ItemIds Database",
                'tooltipTitle', "Wipe the item id variations cache",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() wipe(AtlasLootItemCache) end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.globalDB.TxtSize,
                'textWidth', self.globalDB.TxtSize,
                'text', "Pull Merchant items",
                'tooltipTitle', "Cache all off the items in the currently open merchant window",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() self:GetMerchantItems() end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.globalDB.TxtSize,
                'textWidth', self.globalDB.TxtSize,
                'text', "Wipe Merchant Cache",
                'tooltipTitle', "Wipe the item merchant cache",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() wipe(AtlasLootOtherIds) end
            )
        end 
        self:CloseDewDrop(true, 35)
    elseif level == 2 then
        self:CloseDewDrop(true, 40)
    end
end