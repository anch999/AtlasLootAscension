local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

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

function AtlasLoot:InitializeOptionsFrame()
    self.db.profile.showUnknownRecipeTooltip = self.db.profile.showUnknownRecipeTooltip or true
        local Options = {
            AddonName = "AtlasLoot",
            TitleText = "Atlasloot",
            {
                Name = "AtlasLoot Ascension: "..self.Version,
                Left = {
                    {
                        Type = "CheckButton",
                        Name = "Opaque",
                        Lable = AL["Make Loot Table Opaque"],
                        OnClick = function(button) self.db.profile.Opaque = button:GetChecked() self:FrameOpaqueToogle() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "AutoCurrentInstance",
                        Lable = AL["Auto Load Instance Loot Pages"],
                        OnClick = function(button) self.db.profile.AutoCurrentInstance = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "recipeExtraInfoSwitch",
                        Lable = AL["Show drop location on search results"],
                        OnClick = function(button) self.db.profile.recipeExtraInfoSwitch = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showdropLocationOnSearch",
                        Lable = AL["Show if recipe is unknown in tooltips"],
                        OnClick = function(button) self.db.profile.showdropLocationOnSearch = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showUnknownRecipeTooltip",
                        Lable = AL["Hide crafting source unless holding CTRL"],
                        OnClick = function(button) self.db.profile.showUnknownRecipeTooltip = button:GetChecked() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "showdropLocationTooltips",
                        Lable = AL["Show drop locations in tooltips"],
                        OnClick = function(button) self.db.profile.showdropLocationTooltips = button:GetChecked() self:CreateItemSourceList(true) end
                    },
                    {
                        Type = "CheckButton",
                        Name = "MerchantGlow",
                        Lable = AL["Wishlist Vendor Glow"],
                        Tooltip = AL["Make items in a vendor window glow if they are on a wishlist"],
                        OnClick = function(button) self.db.profile.MerchantGlow = button:GetChecked() self:InitializeWishlistMerchantGlow() end
                    },
                    {
                        Type = "CheckButton",
                        Name = "EquipCompare",
                        Lable = AL["Show Comparison Tooltips"],
                        OnClick = function(button) self.db.profile.EquipCompare = button:GetChecked() end
                    },
                    {
                        Type = "Menu",
                        Name = "LootBrowserStyle",
                        Lable = AL["Skin"],
                        Tooltip = AL["Change Atlasloot skin"],
                        Func = 	function(name, selection)
                            self.db.profile.LootBrowserStyle = selection
                            self:SetSkin(self.skinKeys[self.db.profile.LootBrowserStyle][1])
                        end,
                        Menu = function()
                            local selections = {}
                            for _, skin in pairs(self.skinKeys) do
                                tinsert(selections, skin[2])
                            end
                            return selections, self.skinKeys[self.db.profile.LootBrowserStyle][2]
                        end
                    },
                    {
                        Type = "Button",
                        Name = "ResetWishList",
                        Lable = AL["Reset Wishlist"],
                        Size = {130,25},
                        OnClick = function() self:Reset("wishlist") end
                    },
                    {
                        Type = "Button",
                        Name = "ResetFrames",
                        Lable = AL["Reset Frames"],
                        Size = {130,25},
                        OnClick = function() self:Reset("frames") end
                    },
                    {
                        Type = "Button",
                        Name = "ResetFavorites",
                        Lable = AL["Reset Favorites"],
                        Size = {130,25},
                        OnClick = function() self:Reset("quicklooks") end
                    },
                },
                Right = {
                    {
                        Type = "CheckButton",
                        Name = "minimap",
                        Lable = AL["Hide minimap icon"],
                        OnClick = function() self:ToggleMinimap() end
                    },
                    {
                        Type = "Menu",
                        Name = "txtSize",
                        Lable = "Menu text size",
                        Menu = {10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}
                    },
                    {
                        Type = "Slider",
                        Name = "LootBrowserScale",
                        Lable = "UI Scale",
                        MinMax = {0.25, 1.5},
                        Step = 0.01,
                        Size = {240,16},
                        OnShow = function() self.options.LootBrowserScale:SetValue(self.db.profile.LootBrowserScale or 1) end,
                        OnValueChanged = function()
                            self.db.profile.LootBrowserScale = self.options.LootBrowserScale:GetValue()
                            self:UpdateLootBrowserScale()
                        end
                    }
                }
            },
            {
                Name = "Help",
                TitleText = AL["AtlasLoot Help"],
            }
        }

    self.options = self:CreateOptionsPages(Options, self.db.profile)
    self:DisplayHelp()

    if LibStub:GetLibrary("LibAboutPanel", true) then
        LibStub("LibAboutPanel").new(AL["AtlasLoot"], "AtlasLoot")
    end
end

local helpText = {
    {AL["How to link an item to someone else:"],
    AL["Shift+Left Click the item like you would for any other in-game item"],},
    {AL["How to view an item in the Dressing Room:"],
    AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."],},
    {AL["How to add an item to the wishlist:"],
    AL["Right Click any item and open the context menu and click add to wishlist."],
    AL["Or Alt+Left Click any item to add it to the default wishlist."],},
    {AL["How to delete an item from the wishlist:"],
    AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."],},
    {AL["What else does the wishlist do?"],
    AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."],},
    {AL["How to set of change a page filter:"],
    AL["If you Right Click on the filter check box you will get a drop downmenu with a list of filters. Click the filter you want to use or click add filter set to add new custom filters."],},
    {AL["HELP!! I have broken the mod somehow!"],
    AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."],},
    AL["For further help, join us of discord: "]..AtlasLoot.Colors.GREEN.."https://discord.gg/uYCE2X2FgA"
}

function AtlasLoot:DisplayHelp()
        local help = self.options.frame.Help.frame
		help.text = help:CreateFontString("AtlasLootHelpFrame_HelpText","OVERLAY","GameFontNormal")
		help.text:SetPoint("TOPLEFT", help, "TOPLEFT", 15, 0)
        help.text:SetWidth(help:GetWidth()-80)
		help.text:SetJustifyH("LEFT")
		help.text:SetJustifyV("TOP")
        local text = ""
        for num, value in pairs(helpText) do
            if type(value) == "table" then
                for i , newText in pairs(value) do
                    if num == 1 and i == 1 then
                        text = self.Colors.ORANGE..newText
                    elseif i == 1 then
                        text = text.."\n\n"..self.Colors.ORANGE..newText
                    else
                        text = text.."\n"..self.Colors.WHITE..newText
                    end
                end
            else
                text = text.."\n\n"..self.Colors.WHITE..value
            end
        end
		help.text:SetText(text)
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
            'textHeight', self.db.profile.txtSize,
            'textWidth', self.db.profile.txtSize,
            'text', "Quick Settings",
            'isTitle', true,
            'notCheckable', true
        )
        self.Dewdrop:AddLine(
            'textHeight', self.db.profile.txtSize,
            'textWidth', self.db.profile.txtSize,
            'text', "News/Patch Notes",
            'tooltipTitle', "Open the news/patch notes ui",
            'notCheckable', true,
            'closeWhenClicked', true,
            'func', function() self:OpenNewsFrame() end
        )
        self.Dewdrop:AddLine(
            'textHeight', self.db.profile.txtSize,
            'textWidth', self.db.profile.txtSize,
            'text', "Learn vanity",
            'tooltipTitle', "Learn all unknown vanity spells",
            'notCheckable', true,
            'closeWhenClicked', true,
            'func', function() self:LearnAllUnknownVanitySpells() end
        )
        if self.globalDB.isAdmin then
            self:AddDividerLine(35)
            self.Dewdrop:AddLine(
                'textHeight', self.db.profile.txtSize,
                'textWidth', self.db.profile.txtSize,
                'text', "Admin Menu",
                'isTitle', true,
                'notCheckable', true
            )
            self.Dewdrop:AddLine(
                'textHeight', self.db.profile.txtSize,
                'textWidth', self.db.profile.txtSize,
                'text', "Update ItemId Database",
                'tooltipTitle', "Updates the item id variations cache",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() self:UpdateItemIDsDatabase() end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.db.profile.txtSize,
                'textWidth', self.db.profile.txtSize,
                'text', "Wipe ItemIds Database",
                'tooltipTitle', "Wipe the item id variations cache",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() wipe(AtlasLootItemCache) end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.db.profile.txtSize,
                'textWidth', self.db.profile.txtSize,
                'text', "Pull Merchant items",
                'tooltipTitle', "Cache all off the items in the currently open merchant window",
                'notCheckable', true,
                'closeWhenClicked', true,
                'func', function() self:GetMerchantItems() end
            )
            self.Dewdrop:AddLine(
                'textHeight', self.db.profile.txtSize,
                'textWidth', self.db.profile.txtSize,
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