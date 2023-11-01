local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local GOLD  = "|cffffcc00"
local LIGHTBLUE = "|cFFADD8E6"
local ORANGE2 = "|cFFFFA500"

local AtlasLootScanTooltip = CreateFrame("GAMETOOLTIP","AtlasLootScanTooltip",nil,"GameTooltipTemplate")
AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")

local playerName = UnitName("player")
local realmName = GetRealmName()
local playerFaction = UnitFactionGroup("player")

--Set Tooltip for extra crafting data
function AtlasLoot:SetCraftingTooltip(self)
    local craftingData = self.craftingData
    if not craftingData then return end
    --extra information on where to find the recipe
    if (AtlasLoot.db.profile.recipeExtraInfoSwitch and IsControlKeyDown()) or (not AtlasLoot.db.profile.recipeExtraInfoSwitch) then
        AtlasLootTooltip:AddLine(" ")
        for _,v in pairs(craftingData) do
            local line1 = v[1]
            local line2 = v[2]
            if v.fac  then line1 = v.fac[1]..line1 end
            if v.cords and v.cords[1] ~= 0 and v.cords[2] ~= 0 then
                if line2 then
                    line2 = WHITE..line2..WHITE.." ("..GOLD..v.cords[1]..WHITE..", "..GOLD..v.cords[2]..WHITE..")"
                else
                    line2 = WHITE.." ("..GOLD..v.cords[1]..WHITE..", "..GOLD..v.cords[2]..WHITE..")"
                end
            end
            AtlasLootTooltip:AddDoubleLine(line1, line2)
        end
    else
        AtlasLootTooltip:AddLine(" ")
        AtlasLootTooltip:AddLine(WHITE..AL["Hold CTRL for source"])
    end
end

--Set quest tooltip info
function AtlasLoot:SetQuestTooltip(self)
    if not self.quest then return end
    for _,v in ipairs(self.quest) do
        local quest = AtlasLoot_CraftingData["QuestList"][v]
        local text = ""
        if quest.text then
            text = self.quest.text
        end
        AtlasLootTooltip:AddDoubleLine(AL["Quest"], WHITE..text)
        AtlasLootTooltip:AddDoubleLine(quest[4]..quest[1], WHITE.." ("..GOLD..quest[2]..WHITE..", "..GOLD..quest[3]..WHITE..")")
    end
end

--Set droprate tooltip
function AtlasLoot:SetDroprateTooltip(self)
    if not self.droprate then return end
    if type(self.droprate) == "table" then
        if not self.droprate[ItemindexID-1] then return end
        if ItemindexID == 5 then
            ItemindexID = 4
        elseif ItemindexID == 4 then
            ItemindexID = 5
        end
        AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate[ItemindexID-1], 1, 1, 0)
    else
        AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate, 1, 1, 0)
    end
end

--Set extra info tooltip
function AtlasLoot:SetExtraTooltip(self)
    if not self.extraInfo then return end
    AtlasLootTooltip:AddLine(AL["Extra Info: "]..self.extraInfo, 1, 1, 0)
end
--------------------------------------------------------------------------------
-- Item OnEnter
-- Called when a loot item is moused over
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnEnter(self)
    AtlasLootTooltip:ClearLines()
    for i=1, 30, 1 do
        if _G["AtlasLootTooltipTextRight"..i] then
            _G["AtlasLootTooltipTextRight"..i]:SetText("")
        end
    end
    local spellID = self.spellID
    local itemID = self.itemID
    if itemID or spellID then
        if not spellID then
            local color = WHITE
            local name = GetItemInfo(itemID)
            --Lootlink tooltips
            if( AtlasLoot.db.profile.LootlinkTT ) then
                --If we have seen the item, use the game tooltip to minimise same name item problems
                    AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24)
                    AtlasLootTooltip:SetHyperlink("item:"..itemID..":0:0:0")
                    if ( AtlasLoot.db.profile.ItemIDs ) then
                        AtlasLootTooltip:AddLine(BLUE..AL["ItemID:"].." "..itemID, nil, nil, nil, 1)
                    end
                    AtlasLoot:SetQuestTooltip(self)
                    AtlasLoot:SetExtraTooltip(self)
                    AtlasLoot:SetDroprateTooltip(self)
                    AtlasLoot:SetCraftingTooltip(self)

                    AtlasLootTooltip:Show()
                    if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                        AtlasLoot:ShowCompareItem(self) --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                    end
                    if (LootLink_AddItem) then
                        LootLink_AddItem(name, itemID..":0:0:0", color)
                    end
            --Item Sync tooltips
            elseif( AtlasLoot.db.profile.ItemSyncTT ) then
                ItemSync:ButtonEnter()
                if ( AtlasLoot.db.profile.ItemIDs ) then
                    GameTooltip:AddLine(BLUE..AL["ItemID:"].." "..itemID, nil, nil, nil, 1)
                end

                AtlasLoot:SetQuestTooltip(self)
                AtlasLoot:SetExtraTooltip(self)
                AtlasLoot:SetDroprateTooltip(self)
                AtlasLoot:SetCraftingTooltip(self)

                GameTooltip:Show()
                if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                    GameTooltip_ShowCompareItem() --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                end
            --Default game tooltips
            else
                if itemID then
                    if GetItemInfo(itemID) then
                        AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24)
                        AtlasLootTooltip:SetHyperlink("item:"..itemID..":0:0:0")
                        if ( AtlasLoot.db.profile.ItemIDs ) then
                            AtlasLootTooltip:AddLine(BLUE..AL["ItemID:"].." "..itemID, nil, nil, nil, 1)
                        end

                        AtlasLoot:SetQuestTooltip(self)
                        AtlasLoot:SetExtraTooltip(self)
                        AtlasLoot:SetDroprateTooltip(self)
                        AtlasLoot:SetCraftingTooltip(self)

                        AtlasLootTooltip:Show()
                        if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                            AtlasLoot:ShowCompareItem(self) --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                        end
                    end
                end
            end
        else
            AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24)
            AtlasLootTooltip:ClearLines()
            AtlasLootTooltip:SetHyperlink(AtlasLoot:GetEnchantLink(spellID))

            AtlasLoot:SetCraftingTooltip(self)

            local hasSpace = false
            local showOwn = nil
            --adds tooltip showing if you know a recipe and it is one of your chars trade skills
            if self.hasTrade then
                hasSpace = true
                if CA_IsSpellKnown(spellID) then
                    showOwn = "|cff1EFF00You know this Recipe"
                else
                    showOwn = " |cffFF3F40You don't know this Recipe"
                end
            end
            local text = ""
            local showOther = false
            local firstChar = false
            --adds a tooltip if any of your other charaters knows a recipe 
            for key,v in pairs(AtlasLoot.db.profiles) do
                if gsub(key,"-",""):match(gsub(realmName,"-","")) and not gsub(key,"-",""):match(gsub(playerName,"-","")) and v.knownRecipes and v.knownRecipes[spellID] then
                    local charName = strsplit("-", key, 5)
                    if firstChar then text = text..", " end
                    text = text..gsub(charName, " ", "")
                    showOther = true
                    hasSpace = true
                    firstChar = true
                end
            end
            text = BLUE.."Recipe known by: "..WHITE..text
            if hasSpace then AtlasLootTooltip:AddLine(" ") end
            if showOwn then AtlasLootTooltip:AddLine(showOwn) end
            if showOther then AtlasLootTooltip:AddLine(text) end
            AtlasLootTooltip:Show()
            if(itemID and ((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled))) or IsShiftKeyDown())) then
                AtlasLoot:ShowCompareItem(self) --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
            end
        end
    end
end

--------------------------------------------------------------------------------
-- Item OnLeave
-- Called when the mouse cursor leaves a loot item
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnLeave(self)
    --Hide the necessary tooltips
    if( AtlasLoot.db.profile.LootlinkTT ) then
        AtlasLootTooltip:Hide()
    elseif( AtlasLoot.db.profile.ItemSyncTT ) then
        if(GameTooltip:IsVisible()) then
            GameTooltip:Hide()
        end
    else
		AtlasLootTooltip:Hide()
        GameTooltip:Hide()
    end
    if ( ShoppingTooltip2:IsVisible() or ShoppingTooltip1.IsVisible) then
       ShoppingTooltip2:Hide()
       ShoppingTooltip1:Hide()
    end
    if AtlasLoot_PopupFrame and AtlasLoot_PopupFrame:IsVisible() then AtlasLoot_PopupFrame:Hide() end
end

--------------------------------------------------------------------------------
-- Item OnClick
-- Called when a loot item is clicked on
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnClick(self ,arg1)
    AtlasLoot.Dewdrop:Close()
	local color = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 1, 10)
	local name = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 11)
    local spellID = self.spellID
    local itemID = self.itemID
    local dataID, dataSource, dataPage

--[[     if AtlasLoot_PopupFrame and AtlasLoot_PopupFrame:IsVisible() and not AtlasLoot.Dewdrop:IsOpen(self:GetParent()) then
        AtlasLoot_PopupFrame:Hide()
    end ]]
    if not spellID and itemID then
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture = GetItemInfo(itemID)
        --If shift-clicked, link in the chat window
        if arg1=="RightButton" and AtlasLoot.itemUnlock then
            --move wishlist item down
            AtlasLoot:MoveWishlistItem("Down",self.number)
        elseif IsAltKeyDown() and arg1=="LeftButton" and AtlasLoot.itemUnlock then
            --add custom wishlist header
            StaticPopup_Show("ATLASLOOT_ADD_CUSTOMHEADER")
            StaticPopupDialogs.ATLASLOOT_ADD_CUSTOMHEADER.num = self.number
        elseif (arg1=="LeftButton") and AtlasLoot.itemUnlock then
            --move wishlist item up
            AtlasLoot:MoveWishlistItem("Up",self.number)
        elseif(arg1=="RightButton" and itemID and IsAltKeyDown() and AtlasLootItemsFrame.refresh[2] ~= "AtlasLoot_CurrentWishList") then
            local wList = AtlasLootWishList["Options"][playerName]["DefaultWishList"]
            --add to defauly wishlist
            AtlasLoot:WishListAddDropClick(wList[1], wList[3], self)
        elseif(arg1=="RightButton" and itemID) then
            --item context menu
            if(AtlasLootItemsFrame.refresh[1] == "SearchResult") then
                local datID, _, datPage = strsplit("|", self.sourcePage)
                AtlasLoot:ItemContextMenu(itemID, self.itemTexture, _G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), AtlasLoot_Data[datID][tonumber(datPage)].Name, 
                                                datID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(datPage), self, "item", self.number, self.craftingData)
            elseif AtlasLoot_PopupFrame and AtlasLoot_PopupFrame:IsVisible() then
                AtlasLoot:ItemContextMenu(self, "item", self.number, self.craftingData)

            else
                AtlasLoot:ItemContextMenu(self, "item", self.number, self.craftingData)
            end
        elseif(IsShiftKeyDown() and itemName and (AtlasLoot.db.profile.SafeLinks or AtlasLoot.db.profile.AllLinks)) then
            --insert to chat link
            ChatEdit_InsertLink(itemLink)
        elseif(IsShiftKeyDown() and AtlasLoot.db.profile.AllLinks) then
            ChatEdit_InsertLink(color.."|Hitem:"..itemID..":0:0:0:0:0:0:0|h["..name.."]|h|r")
        elseif(ChatFrame1EditBox and ChatFrame1EditBox:IsVisible() and IsShiftKeyDown()) then
            ChatFrame1EditBox:Insert(name)  -- <-- this line just inserts plain text, does not need any adjustment
            --If control-clicked, use the dressing room
        elseif(IsControlKeyDown() and itemName) then
            --view item in dressing room
            DressUpItemLink(itemLink)
        elseif IsAltKeyDown() then
            if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                AtlasLoot_DeleteFromWishList(self.number)
            end
        elseif self.sourcePage and self.sourcePage[2] == "Source" then
            dataID, dataSource, dataPage = unpack(self.sourcePage[1])
            if dataID and dataID ~= "" and dataSource then
                AtlasLoot.backEnabled = true
                AtlasLoot:ShowItemsFrame(dataID, dataSource, dataPage or 1)
            end
        elseif self.sourcePage and self.sourcePage[2] == "Token" then
            --Create token table if there isnt one
            if AtlasLoot_TokenData[self.sourcePage[1]] == nil then
                AtlasLoot:CreateToken(self.sourcePage[1])
            end
            dataID, dataSource, dataPage = self.sourcePage[1], "AtlasLoot_TokenData", 1
            --Show token table
            AtlasLoot:ShowItemsFrame(dataID, dataSource, dataPage or 1)
        elseif arg1 == "LeftButton" and itemID and AtlasLoot_ExtraData[itemID] then
            AtlasLoot:PopoupItemFrame(self, _G["AtlasLoot_ExtraData"][itemID] )
            AtlasLoot_PopupFrame:Show()
        elseif arg1 == "LeftButton" and self.contentsPreview then
            AtlasLoot:PopoupItemFrame(self, self.contentsPreview )
            AtlasLoot_PopupFrame:Show()
        end
    else
        local recipeData = AtlasLoot:GetRecipeData(spellID, "spell")
        if IsShiftKeyDown() then
            ChatEdit_InsertLink(AtlasLoot:GetEnchantLink(spellID))
        elseif arg1=="RightButton" then
            AtlasLoot:ItemContextMenu(self, "spell", self.number, self.craftingData)
        elseif IsAltKeyDown() then
            if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                AtlasLoot_DeleteFromWishList(self.number)
            else
                local spellName, _, _, _, _, _, _, _, _ = GetSpellInfo(spellID)

                if(AtlasLootItemsFrame.refresh[1] == "SearchResult") then
                    local datID, _, datPage = unpack(self.sourcePage[1])
                    AtlasLoot_ShowWishListDropDown(itemID, self.dressingroomID, "=ds="..spellName, 
                                                        AtlasLoot_Data[datID][tonumber(datPage)].Name, self.sourcePage, self)
                else
                    AtlasLoot_ShowWishListDropDown(itemID, self.dressingroomID, "=ds="..spellName, AtlasLoot_BossName:GetText(), self.dataID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(self.tablenum), self)
                end
            end
        elseif(IsControlKeyDown()) then
            DressUpItemLink("item:"..self.dressingroomID..":0:0:0:0:0:0:0")
        elseif self.sourcePage and self.sourcePage[2] == "Source" then
            dataID, dataSource, dataPage = unpack(self.sourcePage[1])
            if dataID and dataID ~= "" and dataSource then
                AtlasLoot.backEnabled = true
                AtlasLoot:ShowItemsFrame(dataID, dataSource, dataPage or 1)
            end       
        elseif self.sourcePage and self.sourcePage[2] == "Token" then
            --Create token table if there isnt one
            if AtlasLoot_TokenData[self.sourcePage[1]] == nil then
                AtlasLoot:CreateToken(self.sourcePage[1])
            end
            dataID, dataSource, dataPage = self.sourcePage[1], "AtlasLoot_TokenData", 1
            --Show token table
            AtlasLoot:ShowItemsFrame(dataID, dataSource, dataPage or 1)
        elseif arg1 == "LeftButton" and recipeData then
            AtlasLoot:PopoupItemFrame(self, recipeData)
            AtlasLoot_PopupFrame:Show()
        end
    end
end

-------
-- Missing GameToolTip method
-- Enables item comparing. I've ripped self method directly from GameTooltip.lua and modified to work with AtlasLootTooltip /siena
-------
function AtlasLoot:ShowCompareItem(self)
   local shift = 1
   local item,link = nil,nil
   if self.spellID then
      item = AtlasLootTooltip:GetSpell()
      _,link = GetItemInfo(self.itemID)
   else
      item,link = AtlasLootTooltip:GetItem()
   end

   if ( not link ) then
      return
   end

   ShoppingTooltip1:SetOwner(AtlasLootTooltip, "ANCHOR_NONE")
   ShoppingTooltip2:SetOwner(AtlasLootTooltip, "ANCHOR_NONE")
   ShoppingTooltip3:SetOwner(AtlasLootTooltip, "ANCHOR_NONE")

   local item1 = nil
   local item2 = nil
   local item3 = nil
   local side = "left"
   if ( ShoppingTooltip1:SetHyperlinkCompareItem(link, 1, 1, AtlasLootTooltip) ) then
      item1 = true
   end
   if ( ShoppingTooltip2:SetHyperlinkCompareItem(link, 2, 1, AtlasLootTooltip) ) then
      item2 = true
   end
   if ( ShoppingTooltip3:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip) ) then
      item3 = true
   end
   if not item1 and not item2 and not item3 then 
        return 
    end

   if item3 then
        if not item1 then
            item1, item3 = true, nil
            ShoppingTooltip1:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip)
        elseif not item2 then
            item2, item3 = true, nil
            ShoppingTooltip2:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip)
        end
    end
    if item2 and not item1 then
        item1, item2 = true, nil
        ShoppingTooltip1:SetHyperlinkCompareItem(link, 2, 1, AtlasLootTooltip)
    end

   local left, right, anchor1, anchor2 = AtlasLootTooltip:GetLeft(), AtlasLootTooltip:GetRight(), "TOPLEFT", "TOPRIGHT"
   if not left or not right then return end
	if (GetScreenWidth() - right) < left then anchor1, anchor2 = anchor2, anchor1 end

    if item1 then
		ShoppingTooltip1:ClearAllPoints()
		ShoppingTooltip1:SetPoint(anchor1, AtlasLootTooltip, anchor2, 0, -10)
		ShoppingTooltip1:Show()

		if item2 then
			ShoppingTooltip2:ClearAllPoints()
			ShoppingTooltip2:SetPoint(anchor1, ShoppingTooltip1, anchor2)
			ShoppingTooltip2:Show()
		end

        if item3 then
			ShoppingTooltip3:ClearAllPoints()
			ShoppingTooltip3:SetPoint(anchor1, ShoppingTooltip2, anchor2)
			ShoppingTooltip3:Show()
		end
	end

end



local zoneList
--Creates a zone list for use in adding vendor and mob drop waypoints to tomtom
function AtlasLoot:AddWayPoint(waypoint)
    if not zoneList then
    zoneList = {}
        for continentN , _ in ipairs{GetMapContinents()} do
            for zoneNum, zoneName in ipairs{GetMapZones(continentN)} do
                zoneList[zoneName:lower()] = {continentN, zoneNum, zoneName:lower()}
            end
        end
    end
    local zoneName = waypoint[1]:lower()
    --Adds a waypoint to tomtom
    if zoneList[zoneName] then
        TomTom:AddZWaypoint(zoneList[zoneName][1], zoneList[zoneName][2], tonumber(waypoint[2]), tonumber(waypoint[3]), waypoint[4])
    end
end

function AtlasLoot:ItemContextMenu(self, Type, number, craftingData)
    local itemID = self.itemID
    if AtlasLoot.Dewdrop:IsOpen(self) then AtlasLoot.Dewdrop:Close() return end
    AtlasLoot.Dewdrop:Register(self,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            if level == 1 then
                AtlasLoot.Dewdrop:AddLine(
                    'text', AL["Links"],
                    'notCheckable', true,
                    'isTitle', true,
                    'textHeight', 13,
                    'textWidth', 13
                )
                AtlasLoot.Dewdrop:AddLine(
                    'text', ORANGE..AL["Open AscensionDB To Entry"],
                    'func', function(arg1,arg2) AtlasLoot:OpenDBURL(arg1,arg2) end,
                    'arg1',itemID,
                    'arg2',Type,
                    'textHeight', 12,
                    'textWidth', 12,
                    'notCheckable', true,
                    'closeWhenClicked', true
                )
                AtlasLoot.Dewdrop:AddLine(
                        "text", GREEN..AL["Guild"],
                        "func", function() AtlasLoot:Chatlink(itemID,"GUILD",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    )
                    AtlasLoot.Dewdrop:AddLine(
                        "text", LIGHTBLUE..AL["Party"],
                        "func", function() AtlasLoot:Chatlink(itemID,"PARTY",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    )
                    AtlasLoot.Dewdrop:AddLine(
                        "text", ORANGE2..AL["Raid"],
                        "func", function() AtlasLoot:Chatlink(itemID,"RAID",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    )

                    if not AtlasLoot_PopupFrame or AtlasLoot_PopupFrame and not AtlasLoot_PopupFrame:IsVisible()  then
                        AtlasLoot:AddDividerLine(35)
                        AtlasLoot.Dewdrop:AddLine(
                        'text', AL["Wishlists"],
                        'notCheckable', true,
                        'isTitle', true,
                        'textHeight', 13,
                        'textWidth', 13
                        )
                        if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Delete"],
                                "func", function() AtlasLoot_DeleteFromWishList(self.number) end,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                        else
                            local wList = AtlasLootWishList["Options"][playerName]["DefaultWishList"]
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Add To Default"],
                                "func", function() AtlasLoot:WishListAddDropClick(wList[1], wList[3], self) end,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Own Wishlists"],
                                "tooltipTitle", AL["Own Wishlists"],
                                "value", "OwnWishlists",
                                "hasArrow", true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Shared Wishlists"],
                                "tooltipTitle", AL["Shared Wishlists"],
                                "value", "SharedWishlists",
                                "hasArrow", true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Add Wishlist"],
                                "func", function() AtlasLoot:AddWishList() end,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                        end
                        if C_VanityCollection.IsCollectionItemOwned(itemID) then
                            AtlasLoot:AddDividerLine(35)
                            AtlasLoot.Dewdrop:AddLine(
                            'text', AL["Vanity Collection"],
                            'notCheckable', true,
                            'isTitle', true,
                            'textHeight', 13,
                            'textWidth', 13
                            )
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AL["Learn/Recive Vanity Item"],
                                "func", function() RequestDeliverVanityCollectionItem(itemID) end,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                            )
                        end
                        if AtlasLoot.TomTomLoaded then
                            if not AtlasLoot.db.profile.waypointList then AtlasLoot.db.profile.waypointList = {} end
                            local wayPoint
                            if (craftingData and AtlasLoot.db.profile.recipeExtraInfoSwitch and IsControlKeyDown()) or (craftingData and not AtlasLoot.db.profile.recipeExtraInfoSwitch) then
                                AtlasLootTooltip:AddLine(" ")
                                for _,v in pairs(craftingData) do
                                    if v.cords and tonumber(v.cords[1]) ~= 0 and tonumber(v.cords[2]) ~= 0 then
                                        local line1 = v[1]
                                        local line2 = v[2]
                                        if v.fac and (v.fac[2] == playerFaction or v.fac[2] == "Netural") then line1 = v.fac[1]..line1 end
                                        if not wayPoint then wayPoint = {} end
                                        tinsert(wayPoint, { line2, tonumber(v.cords[1]), tonumber(v.cords[2]), line1})
                                    end
                                end
                            end
                            if craftingData and wayPoint then

                                AtlasLoot:AddDividerLine(35)
                                AtlasLoot.Dewdrop:AddLine(
                                'text', AL["Recipe Waypoints"],
                                'notCheckable', true,
                                'isTitle', true,
                                'textHeight', 13,
                                'textWidth', 13
                                )
                                AtlasLoot.Dewdrop:AddLine(
                                "text", "Add pin to map",
                                "func", function()
                                    for _,v in pairs(wayPoint) do
                                        AtlasLoot:AddWayPoint(v)
                                    end
                                end,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "notCheckable", true
                                )
                            end
                        end
                    end
            elseif level == 2 then
                if value == "OwnWishlists" then
                    for i,v in pairs(AtlasLootWishList["Own"]) do
                        if type(v) == "table" then
                            AtlasLoot.Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "func", function() AtlasLoot:WishListAddDropClick("Own", i, self) end,
                                "notCheckable", true
                            )
                        end
                    end
                elseif value == "SharedWishlists" then
                    for i,v in pairs(AtlasLootWishList["Shared"]) do
                        if type(v) == "table" then
                            AtlasLoot.Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "func", function() AtlasLoot:WishListAddDropClick("Shared", i, self) end,
                                "notCheckable", true
                            )
                        end
                    end
                end
            end
            --Close button
            AtlasLoot:CloseDewDrop(true,35)
        end,
        'dontHook', true
    )
    AtlasLoot.Dewdrop:Open(self)
end

