--[[
Options.lua
Functions:
AtlasLoot_OptionsPanelOnLoad(panel)
AtlasLoot:OptionsInit()
AtlasLoot:OptionsOnLoad()
AtlasLoot:OptionsAllLinksToggle()
AtlasLoot:OptionsEquipCompareToggle()
AtlasLoot:OptionsOpaqueToggle()
AtlasLoot:OptionsItemIDToggle()
AtlasLoot:OptionsLoDStartup()
AtlasLoot:SetupLootBrowserSlider(frame, mymin, mymax, step)
AtlasLoot:UpdateLootBrowserSlider(frame)
AtlasLoot:DisplayHelp()
AtlasLoot:CreateOptionsInfoTooltips()
]]

local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"

--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

function AtlasLoot_OptionsPanelOnLoad(panel)
    panel.name=AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
end

function AtlasLoot:OptionsInit()
    --Initialise all the check boxes on the options frame
    AtlasLootOptionsFrameEquipCompare:SetChecked(AtlasLoot.db.profile.EquipCompare)
    AtlasLootOptionsFrameOpaque:SetChecked(AtlasLoot.db.profile.Opaque)
    AtlasLootOptionsFrameAutoInstance:SetChecked(AtlasLoot.db.profile.AutoCurrentInstance)
    AtlasLootOptionsFrameItemID:SetChecked(AtlasLoot.db.profile.ItemIDs)
    AtlasLootOptionsFrameLootBrowserScale:SetValue(AtlasLoot.db.profile.LootBrowserScale)
    AtlasLootOptionsMinimapIcon:SetChecked(AtlasLoot.db.profile.minimap.hide)
    AtlasLootOptionsFrameCraftingInfo:SetChecked(AtlasLoot.db.profile.recipeExtraInfoSwitch)
end

function AtlasLoot:OptionsOnLoad()
    --Disable checkboxes of missing addons
    AtlasLoot:OptionsInit()
end

function AtlasLoot:OptionsOpaqueToggle()
    AtlasLoot.db.profile.Opaque = AtlasLootOptionsFrameOpaque:GetChecked()
    if (AtlasLoot.db.profile.Opaque) then
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 1)
    else
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 0.05)
    end
    AtlasLoot:OptionsInit()
end

function AtlasLoot:Options_AutoInstanceToggle()
    AtlasLoot.db.profile.AutoCurrentInstance = AtlasLootOptionsFrameAutoInstance:GetChecked()
end

function AtlasLoot:OptionsItemIDToggle()
    AtlasLoot.db.profile.ItemIDs=AtlasLootOptionsFrameItemID:GetChecked()
    AtlasLoot:OptionsInit()
end

function AtlasLoot:SetupLootBrowserSlider(frame, mymin, mymax, step)
    _G[frame:GetName().."Text"]:SetText(AL["Loot Browser Scale: "].." ("..frame:GetValue()..")")
	frame:SetMinMaxValues(mymin, mymax)
	_G[frame:GetName().."Low"]:SetText(mymin)
	_G[frame:GetName().."High"]:SetText(mymax)
	frame:SetValueStep(step)
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
	AtlasLootDefaultFrame:SetScale(AtlasLoot.db.profile.LootBrowserScale)
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
   
      AtlasLoot:AddTooltip("AtlasLootOptionsFrameOpaque", nil) -- AL["Make Loot Table Opaque"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrameItemID", nil) -- AL["Show itemIDs at all times"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrameEquipCompare", nil) -- AL["Show Comparison Tooltips"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrameLoDSpam", nil) -- AL["Notify on LoD Module Load"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrameLootBrowserScale", nil) -- Scale SLIDER
      AtlasLoot:AddTooltip("AtlasLootOptionsFrame_ResetAtlasLoot", nil) -- AL["Reset Frames"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrame_ResetWishlist", nil) -- AL["Reset Wishlist"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrame_ResetQuicklooks", nil) -- AL["Reset Favorites"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrame_FuBarShow", nil) -- AL["Show FuBar Plugin"]
      AtlasLoot:AddTooltip("AtlasLootOptionsFrame_FuBarHide", nil) -- AL["Hide FuBar Plugin"]
      AtlasLoot:AddTooltip("AtlasLoot_SelectLootBrowserStyle", nil) 
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
    UIDropDownMenu_Initialize(AtlasLoot_SelectLootBrowserStyle, selectLootBrowserStyle_Initialize)
	UIDropDownMenu_SetSelectedID(AtlasLoot_SelectLootBrowserStyle, AtlasLoot.db.profile.LootBrowserStyle)
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

local helpframe = CreateFrame("Frame", "AtlasLootHelpFrame")
        helpframe:SetSize(425,450)
        helpframe:Hide()
        helpframe:SetPoint("CENTER")
        helpframe.title = helpframe:CreateFontString("AtlasLootHelpFrame_Title", "OVERLAY", "GameFontHighlightLarge")
        helpframe.title:SetJustifyH("CENTER")
        helpframe.title:SetSize(400,30)
        helpframe.title:SetPoint("TOP", "AtlasLootHelpFrame","TOP")
        helpframe.title:SetText(AL["AtlasLoot Help"])
        helpframe:SetScript("OnShow", function() AtlasLoot:DisplayHelp() end)

local optframe = CreateFrame("Frame", "AtlasLootOptionsFrame")
        optframe:Hide()
        optframe:SetSize(425,405)
        optframe:SetPoint("CENTER")
        optframe.title = optframe:CreateFontString("AtlasLoot_OptionsTitle", "OVERLAY", "GameFontHighlightLarge")
        optframe.title:SetJustifyH("CENTER")
        optframe.title:SetSize(400,30)
        optframe.title:SetPoint("TOP", "AtlasLootOptionsFrame","TOP")
        optframe.title:SetText(AtlasLoot.Version)
        optframe:SetScript("OnShow", function() AtlasLoot:OptionsOnShow() end)

local opaque = CreateFrame("CheckButton", "AtlasLootOptionsFrameOpaque", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        opaque:SetPoint("TOPLEFT",5,-40)
        AtlasLootOptionsFrameOpaqueText:SetText(AL["Make Loot Table Opaque"])
        opaque:SetScript("OnClick", function() AtlasLoot:OptionsOpaqueToggle() end)

local autoInstance = CreateFrame("CheckButton", "AtlasLootOptionsFrameAutoInstance", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        autoInstance:SetPoint("TOPLEFT",5,-70)
        AtlasLootOptionsFrameAutoInstanceText:SetText(AL["Auto Load Instance Loot Pages"])
        autoInstance:SetScript("OnClick", function() AtlasLoot:Options_AutoInstanceToggle() end)

local craftingInfo = CreateFrame("CheckButton", "AtlasLootOptionsFrameCraftingInfo", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        craftingInfo:SetPoint("TOPLEFT",5,-100)
        AtlasLootOptionsFrameCraftingInfoText:SetText(AL["Only show crafting source while colding CTRL"])
        craftingInfo:SetScript("OnClick", function() AtlasLoot.db.profile.recipeExtraInfoSwitch = not AtlasLoot.db.profile.recipeExtraInfoSwitch end)

local itemid = CreateFrame("CheckButton", "AtlasLootOptionsFrameItemID", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        itemid:SetPoint("TOP",5,-70)
        AtlasLootOptionsFrameItemIDText:SetText(AL["Show itemIDs at all times"])
        itemid:SetScript("OnClick", function() AtlasLoot:OptionsItemIDToggle() end)

local miniMap = CreateFrame("CheckButton", "AtlasLootOptionsMinimapIcon", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        miniMap:SetPoint("TOP",5,-100)
        AtlasLootOptionsMinimapIconText:SetText(AL["Hide minimap icon"])
        miniMap:SetScript("OnClick", function() AtlasLoot:ToggleMinimap() end)

local equip = CreateFrame("CheckButton", "AtlasLootOptionsFrameEquipCompare", AtlasLootOptionsFrame, "OptionsCheckButtonTemplate")
        equip:SetPoint("TOP",5,-40)
        AtlasLootOptionsFrameEquipCompareText:SetText(AL["Show Comparison Tooltips"])
        equip:SetScript("OnClick", function() AtlasLoot.db.profile.EquipCompare = not AtlasLoot.db.profile.EquipCompare end)

local sStyle = CreateFrame("Button", "AtlasLoot_SelectLootBrowserStyle", AtlasLootOptionsFrame, "UIDropDownMenuTemplate")
        sStyle.lable = sStyle:CreateFontString("AtlasLoot_SelectLootBrowserStyle_Label", "BACKGROUND", "GameFontNormalSmall")
        sStyle.lable:SetPoint("LEFT", "AtlasLoot_SelectLootBrowserStyle", "RIGHT",5,2)
        sStyle:SetPoint("TOPLEFT",-10,-220)

local bscale = CreateFrame("Slider", "AtlasLootOptionsFrameLootBrowserScale", AtlasLootOptionsFrame,"OptionsSliderTemplate")
        bscale:SetSize(240,16)
        bscale:SetPoint("TOP", 0,-300)
        bscale:SetScript("OnShow", function(self) AtlasLoot:SetupLootBrowserSlider(self, 0.25, 1.5, 0.01) end)
        bscale:SetScript("OnValueChanged", function(self)
            AtlasLoot:UpdateLootBrowserSlider(self)
            AtlasLoot.db.profile.LootBrowserScale = self:GetValue()
            AtlasLoot:UpdateLootBrowserScale()
        end)

local resetwish = CreateFrame("Button", "AtlasLootOptionsFrame_ResetWishlist", AtlasLootOptionsFrame, "OptionsButtonTemplate")
        resetwish:SetSize(130,25)
        resetwish:SetPoint("TOP", 0, -325)
        resetwish:SetText(AL["Reset Wishlist"])
        resetwish:SetScript("OnClick", function() AtlasLoot:Reset("wishlist") end)
        resetwish:SetScript("OnShow", function() resetwish:SetWidth(AtlasLootOptionsFrame_ResetWishlist:GetTextWidth()+20) end)

local resetAtlas = CreateFrame("Button", "AtlasLootOptionsFrame_ResetAtlasLoot", AtlasLootOptionsFrame, "OptionsButtonTemplate")
        resetAtlas:SetSize(130,25)
        resetAtlas:SetText(AL["Reset Frames"])
        resetAtlas:SetPoint("RIGHT", "AtlasLootOptionsFrame_ResetWishlist", "LEFT", -10, 0)
        resetAtlas:SetScript("OnClick", function() AtlasLoot:Reset("frames") end)
        resetAtlas:SetScript("OnShow", function() resetAtlas:SetWidth(AtlasLootOptionsFrame_ResetAtlasLoot:GetTextWidth()+20) end)

local resetquick = CreateFrame("Button", "AtlasLootOptionsFrame_ResetQuicklooks", AtlasLootOptionsFrame, "OptionsButtonTemplate")
        resetquick:SetSize(130,25)
        resetquick:SetText(AL["Reset Favorites"])
        resetquick:SetPoint("LEFT", "AtlasLootOptionsFrame_ResetWishlist", "RIGHT", 10, 0)
        resetquick:SetScript("OnClick", function() AtlasLoot:Reset("quicklooks") end)
        resetquick:SetScript("OnShow", function() resetquick:SetWidth(AtlasLootOptionsFrame_ResetQuicklooks:GetTextWidth()+20) end)