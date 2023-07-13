local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local DEFAULT = "|cffFFd200";
local LIGHTBLUE = "|cFFADD8E6";
local ORANGE2 = "|cFFFFA500";

local AtlasLootScanTooltip = CreateFrame("GAMETOOLTIP","AtlasLootScanTooltip",nil,"GameTooltipTemplate");
AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE");

local playerName = UnitName("player");
local realmName = GetRealmName();

function AtlasLoot_GetEnchantLink(enchantID)
   if not enchantID then return end
   local EnchantLink = nil
   AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")
   AtlasLootScanTooltip:ClearLines();
   AtlasLootScanTooltip:SetHyperlink("enchant:"..enchantID);
   AtlasLootScanTooltip:Show()
   local tooltipline = _G["AtlasLootScanTooltipTextLeft1"]
   local text = tooltipline:GetText()
   if text and string.find(text, ":") then
      EnchantLink = "|cffffd000|Henchant:"..enchantID.."|h["..text.."]|h|r"
   else
      EnchantLink = GetSpellLink(enchantID)
   end
   AtlasLootScanTooltip:Hide()
   return EnchantLink
end

--------------------------------------------------------------------------------
-- Item OnEnter
-- Called when a loot item is moused over
--------------------------------------------------------------------------------
function AtlasLootItem_OnEnter(self)
    local isItem, priority;
    AtlasLootTooltip:ClearLines();
    for i=1, 30, 1 do
        if (_G["AtlasLootTooltipTextRight"..i] ~= nil) then
            _G["AtlasLootTooltipTextRight"..i]:SetText("");
        end
    end
    if self.itemID and (self.itemID ~= 0) then
        if string.sub(self.itemID, 1, 1) == "s" then
            isItem = false;
        else
            isItem = true;
        end
        if isItem then
            local color = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 3, 10);
            local name = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 11);
            if(self.itemID ~= 0 and self.itemID ~= "" and self.itemID ~= nil and AtlasLootDKPValues and AtlasLootClassPriority) then
                Identifier = "Item"..self.itemID;
                DKP = AtlasLootDKPValues[Identifier];
                priority = AtlasLootClassPriority[Identifier];
            else
                DKP = nil;
                priority = nil;
            end
            --Lootlink tooltips
            if( AtlasLoot.db.profile.LootlinkTT ) then
                --If we have seen the item, use the game tooltip to minimise same name item problems
                if(GetItemInfo(self.itemID) ~= nil) then
                    _G[self:GetName().."_Unsafe"]:Hide();
                    AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24);
                    AtlasLootTooltip:SetHyperlink("item:"..self.itemID..":0:0:0");
                    if ( AtlasLoot.db.profile.ItemIDs ) then
                        AtlasLootTooltip:AddLine(BLUE..AL["ItemID:"].." "..self.itemID, nil, nil, nil, 1);
                    end
                    if( self.droprate ~= nil) and ( self.droprate:match("=EI=") ) then
                        AtlasLootTooltip:AddLine(AL["Extra Info: "]..string.sub(self.droprate, 5), 1, 1, 0);
                    elseif( self.droprate ~= nil) then
                        AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate, 1, 1, 0);
                    end
                    if( DKP ~= nil and DKP ~= "" ) then
                        AtlasLootTooltip:AddLine(RED..DKP.." "..AL["DKP"], 1, 1, 0, 1);
                    end
                    if( priority ~= nil and priority ~= "" ) then
                        AtlasLootTooltip:AddLine(GREEN..AL["Priority:"].." "..priority, 1, 1, 0, 1);
                    end
                    AtlasLootTooltip:Show();
                    if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                        AtlasLootItem_ShowCompareItem(self); --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                    end
                    if (LootLink_AddItem) then
                        LootLink_AddItem(name, self.itemID..":0:0:0", color);
                    end
                else
                    _G[self:GetName().."_Unsafe"]:Show();
                    AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24);
                    if (LootLink_Database and LootLink_Database[self.itemID]) then
                       LootLink_SetTooltip(AtlasLootTooltip, LootLink_Database[self.itemID][1], 1);
                    else
                       LootLink_SetTooltip(AtlasLootTooltip,strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 11), 1);
                    end
                    if ( AtlasLoot.db.profile.ItemIDs ) then
                        AtlasLootTooltip:AddLine(BLUE..AL["ItemID:"].." "..self.itemID, nil, nil, nil, 1);
                    end
                    if( self.droprate ~= nil) and (self.droprate:match("=EI=")) then
                        AtlasLootTooltip:AddLine(AL["Extra Info: "]..string.sub(self.droprate, 5), 1, 1, 0);
                    elseif( self.droprate ~= nil) then
                        AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate, 1, 1, 0);
                    end
                    if( DKP ~= nil and DKP ~= "" ) then
                        AtlasLootTooltip:AddLine(RED..DKP.." "..AL["DKP"], 1, 1, 0);
                    end
                    if( priority ~= nil and priority ~= "" ) then
                        AtlasLootTooltip:AddLine(GREEN..AL["Priority:"].." "..priority, 1, 1, 0);
                    end
                    AtlasLootTooltip:Show();
                end
            --Item Sync tooltips
            elseif( AtlasLoot.db.profile.ItemSyncTT ) then
                if(GetItemInfo(self.itemID) ~= nil) then
                    _G[self:GetName().."_Unsafe"]:Hide();
                end
                ItemSync:ButtonEnter();
                if ( AtlasLoot.db.profile.ItemIDs ) then
                    GameTooltip:AddLine(BLUE..AL["ItemID:"].." "..self.itemID, nil, nil, nil, 1);
                end
                if( self.droprate ~= nil) and ( self.droprate:match("=EI=") ) then
                    AtlasLootTooltip:AddLine(AL["Extra Info: "]..string.sub(self.droprate, 5), 1, 1, 0);
                elseif( self.droprate ~= nil) then
                    AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate, 1, 1, 0);
                end
                if( DKP ~= nil and DKP ~= "" ) then
                    GameTooltip:AddLine(RED..DKP.." "..AL["DKP"], 1, 1, 0);
                end 
                if( priority ~= nil and priority ~= "" ) then
                    GameTooltip:AddLine(GREEN..AL["Priority:"].." "..priority, 1, 1, 0);
                end
                GameTooltip:Show();
                if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                    GameTooltip_ShowCompareItem(); --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                end
            --Default game tooltips
            else
                if(self.itemID ~= nil) then
                    if(GetItemInfo(self.itemID) ~= nil) then
                        _G[self:GetName().."_Unsafe"]:Hide();
                        AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24);
                        AtlasLootTooltip:SetHyperlink("item:"..self.itemID..":0:0:0");
                        if ( AtlasLoot.db.profile.ItemIDs ) then
                            AtlasLootTooltip:AddLine(BLUE..AL["ItemID:"].." "..self.itemID, nil, nil, nil, 1);
                        end
                        if( self.droprate ~= nil) and ( self.droprate:match("=EI=") ) then
                            AtlasLootTooltip:AddLine(AL["Extra Info: "]..string.sub(self.droprate, 5), 1, 1, 0);
                        elseif( self.droprate ~= nil) then
                            AtlasLootTooltip:AddLine(AL["Drop Rate: "]..self.droprate, 1, 1, 0);
                        end
                        if( DKP ~= nil and DKP ~= "" ) then
                            AtlasLootTooltip:AddLine(RED..DKP.." "..AL["DKP"], 1, 1, 0);
                        end
                        if( priority ~= nil and priority ~= "" ) then
                            AtlasLootTooltip:AddLine(GREEN..AL["Priority:"].." "..priority, 1, 1, 0);
                        end
                        AtlasLootTooltip:Show();
                        if((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled)))) or IsShiftKeyDown() then
                            AtlasLootItem_ShowCompareItem(self); --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                        end
                    end
                end
            end
        else
            local spellID = tonumber(string.sub(self.itemID, 2));
            AtlasLootTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 24);
            AtlasLootTooltip:ClearLines();
            AtlasLootTooltip:SetHyperlink(AtlasLoot_GetEnchantLink(spellID));
            local hasSpace = false
            local showOwn = nil
            --adds tooltip showing if you know a recipe and it is one of your chars trade skills
            if self.hasTrade then
                hasSpace = true
                if CA_IsSpellKnown(spellID) then
                    showOwn = "|cff1EFF00You know this Recipe"
                else
                    showOwn = " |cffFF3F40You don't know this Recipe";
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

            AtlasLootTooltip:Show();
            if(self.spellitemID and ((AtlasLoot.db.profile.EquipCompare and ((not EquipCompare_RegisterTooltip) or (not EquipCompare_Enabled))) or IsShiftKeyDown())) then
                AtlasLootItem_ShowCompareItem(self); --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
            end
        end
    end
end

--------------------------------------------------------------------------------
-- Item OnLeave
-- Called when the mouse cursor leaves a loot item
--------------------------------------------------------------------------------
function AtlasLootItem_OnLeave(self)
    --Hide the necessary tooltips
    if( AtlasLoot.db.profile.LootlinkTT ) then
        AtlasLootTooltip:Hide();
    elseif( AtlasLoot.db.profile.ItemSyncTT ) then
        if(GameTooltip:IsVisible()) then
            GameTooltip:Hide();
        end
    else
        if(self.itemID ~= nil) then
		    AtlasLootTooltip:Hide();
            GameTooltip:Hide();
	    end
    end
    if ( ShoppingTooltip2:IsVisible() or ShoppingTooltip1.IsVisible) then
       ShoppingTooltip2:Hide();
       ShoppingTooltip1:Hide();
    end
end

--------------------------------------------------------------------------------
-- Item OnClick
-- Called when a loot item is clicked on
--------------------------------------------------------------------------------
function AtlasLootItem_OnClick(self ,arg1)
    AtlasLoot_Dewdrop:Close()
    local isItem, spellID;
	local color = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 1, 10);
	local id = self:GetID();
	local name = strsub(_G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), 11);
    if string.sub(self.itemID, 1, 1) == "s" then
            isItem = false;
        else
            isItem = true;
        end
    if isItem then
        local iteminfo = GetItemInfo(self.itemID);
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture = GetItemInfo(self.itemID);
        --If shift-clicked, link in the chat window
        if arg1=="RightButton" and ATLASLOOT_ITEM_UNLOCK then
            AtlasLoot:MoveWishlistItem("Down",self.number);
        elseif IsAltKeyDown() and arg1=="LeftButton" and ATLASLOOT_ITEM_UNLOCK then
            StaticPopup_Show("ATLASLOOT_ADD_CUSTOMHEADER");
            StaticPopupDialogs.ATLASLOOT_ADD_CUSTOMHEADER.num = self.number;
        elseif (arg1=="LeftButton") and ATLASLOOT_ITEM_UNLOCK then
            AtlasLoot:MoveWishlistItem("Up",self.number);
        elseif(arg1=="RightButton" and self.itemID ~= 0 and IsAltKeyDown() and AtlasLootItemsFrame.refresh[2] ~= "AtlasLoot_CurrentWishList") then
            local listID = AtlasLootWishList["Options"][playerName]["DefaultWishList"]
            AtlasLoot_WishListAddDropClick(listID[1], listID[3], "", nil, self.itemID, itemTexture, itemName, self.lootPage, self.sourcePage)
        elseif(arg1=="RightButton" and self.itemID ~= 0) then
            if(AtlasLootItemsFrame.refresh[1] == "SearchResult") then
                local datID, _, datPage = strsplit("|", self.sourcePage);
                AtlasLoot:ItemContextMenu(self.itemID, self.itemTexture, _G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(), AtlasLoot_Data[datID][tonumber(datPage)].Name, 
                                                datID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(datPage), self, "item", self.number);
            else
                AtlasLoot:ItemContextMenu(self.itemID, self.itemTexture, _G["AtlasLootItem_"..self:GetID().."_Name"]:GetText(),
                                                    AtlasLoot_BossName:GetText(), self.dataID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(self.tablenum), self, "item", self.number);
            end
        elseif(IsShiftKeyDown() and iteminfo and (AtlasLoot.db.profile.SafeLinks or AtlasLoot.db.profile.AllLinks)) then
            ChatEdit_InsertLink(itemLink);
        elseif(IsShiftKeyDown() and AtlasLoot.db.profile.AllLinks) then
            ChatEdit_InsertLink(color.."|Hitem:"..self.itemID..":0:0:0:0:0:0:0|h["..name.."]|h|r");
        elseif(ChatFrameEditBox and ChatFrameEditBox:IsVisible() and IsShiftKeyDown()) then
            ChatFrameEditBox:Insert(name);  -- <-- this line just inserts plain text, does not need any adjustment
        --If control-clicked, use the dressing room
        elseif(IsControlKeyDown() and iteminfo) then
            DressUpItemLink(itemLink);
        elseif IsAltKeyDown() then
            if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                AtlasLoot_DeleteFromWishList(self.itemID,self.number);
            end
        elseif((AtlasLootItemsFrame.refresh[1] == "SearchResult" or AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList") and self.sourcePage) then
            local dataID, dataSource, dataPage = strsplit("|", self.sourcePage);
            if(dataID and dataSource) then
                AtlasLoot:ShowItemsFrame(dataID, "AtlasLoot_Data", tonumber(dataPage));
            end
        elseif( self.sourcePage and self.sourcePage:match("=LT=") ) then
            local dataID, dataSource, dataPage = strsplit("|", string.sub(self.sourcePage, 5));
                if(dataID and dataSource) then
                    ATLASLOOT_BACKENABLED = true;
                    AtlasLoot:ShowItemsFrame(dataID, "AtlasLoot_Data", tonumber(dataPage));
                end
        elseif (arg1=="LeftButton") and self.sourcePage then
           --Create token table if there isnt one
            if AtlasLoot_TokenData[self.sourcePage] == nil then
                AtlasLoot:CreateToken(self.sourcePage)
            end
            --Show token table
            AtlasLoot:ShowItemsFrame(self.sourcePage, "AtlasLoot_TokenData", 1);
        end
    else
        if IsShiftKeyDown() then
            spellID = string.sub(self.itemID, 2);
            ChatEdit_InsertLink(AtlasLoot_GetEnchantLink(spellID));
        elseif(arg1=="RightButton" and self.itemID ~= 0) then
            spellID = string.sub(self.itemID, 2);
            AtlasLoot:ItemContextMenu(spellID, "", "", "", "", self, "spell")
        elseif IsAltKeyDown() then
            if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                AtlasLoot_DeleteFromWishList(self.itemID, self.number);
            else
                spellName, _, _, _, _, _, _, _, _ = GetSpellInfo(string.sub(self.itemID, 2));
                --spellIcon = GetItemIcon(self.dressingroomID);
                if(AtlasLootItemsFrame.refresh[1] == "SearchResult") then
                    local datID, _, datPage = strsplit("|", self.sourcePage);
                    AtlasLoot_ShowWishListDropDown(self.itemID, self.dressingroomID, "=ds="..spellName, 
                                                        AtlasLoot_Data[datID][tonumber(datPage)].Name, self.sourcePage, self);
                else
                    AtlasLoot_ShowWishListDropDown(self.itemID, self.dressingroomID, "=ds="..spellName, AtlasLoot_BossName:GetText(), self.dataID .. "|" .. "AtlasLoot_Data" .. "|" .. tostring(self.tablenum), self);
                end
            end
        elseif(IsControlKeyDown()) then
            DressUpItemLink("item:"..self.dressingroomID..":0:0:0:0:0:0:0");
        elseif((AtlasLootItemsFrame.refresh[1] == "SearchResult" or AtlasLootItemsFrame.refresh[1] == "WishList") and self.sourcePage) then
            local dataID, dataSource, dataPage = strsplit("|", self.sourcePage);
            if(dataID and dataSource) then
                AtlasLoot:ShowItemsFrame(dataID, "AtlasLoot_Data", tonumber(dataPage));
            end
        elseif( self.sourcePage and self.sourcePage:match("=LT=") ) then
        local dataID, dataSource, dataPage = strsplit("|", string.sub(self.sourcePage, 5));
            if(dataID and dataSource) then
                ATLASLOOT_BACKENABLED = true;
                AtlasLoot:ShowItemsFrame(dataID, "AtlasLoot_Data", tonumber(dataPage));
            end
        end
    end
end

-------
-- Missing GameToolTip method
-- Enables item comparing. I've ripped self method directly from GameTooltip.lua and modified to work with AtlasLootTooltip /siena
-------
function AtlasLootItem_ShowCompareItem(self)
   local shift = 1;
   local item,link = nil,nil
   if self.spellitemID and self.spellitemID ~= "" and self.spellitemID ~= 0 then
      item = AtlasLootTooltip:GetSpell()
      _,link = GetItemInfo(self.spellitemID)
   else
      item,link = AtlasLootTooltip:GetItem();
   end

   if ( not link ) then
      return
   end

   ShoppingTooltip1:SetOwner(AtlasLootTooltip, "ANCHOR_NONE");
   ShoppingTooltip2:SetOwner(AtlasLootTooltip, "ANCHOR_NONE");
   ShoppingTooltip3:SetOwner(AtlasLootTooltip, "ANCHOR_NONE");

   local item1 = nil;
   local item2 = nil;
   local item3 = nil;
   local side = "left";
   if ( ShoppingTooltip1:SetHyperlinkCompareItem(link, 1, 1, AtlasLootTooltip) ) then
      item1 = true;
   end
   if ( ShoppingTooltip2:SetHyperlinkCompareItem(link, 2, 1, AtlasLootTooltip) ) then
      item2 = true;
   end
   if ( ShoppingTooltip3:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip) ) then
      item3 = true;
   end
   if not item1 and not item2 and not item3 then 
        return 
    end

   if item3 then
        if not item1 then
            item1, item3 = true, nil;
            ShoppingTooltip1:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip);
        elseif not item2 then
            item2, item3 = true, nil;
            ShoppingTooltip2:SetHyperlinkCompareItem(link, 3, 1, AtlasLootTooltip);
        end
    end
    if item2 and not item1 then
        item1, item2 = true, nil;
        ShoppingTooltip1:SetHyperlinkCompareItem(link, 2, 1, AtlasLootTooltip);
    end

   local left, right, anchor1, anchor2 = AtlasLootTooltip:GetLeft(), AtlasLootTooltip:GetRight(), "TOPLEFT", "TOPRIGHT";
   if not left or not right then return end
	if (GetScreenWidth() - right) < left then anchor1, anchor2 = anchor2, anchor1 end

    if item1 then
		ShoppingTooltip1:ClearAllPoints();
		ShoppingTooltip1:SetPoint(anchor1, AtlasLootTooltip, anchor2, 0, -10);
		ShoppingTooltip1:Show();

		if item2 then
			ShoppingTooltip2:ClearAllPoints();
			ShoppingTooltip2:SetPoint(anchor1, ShoppingTooltip1, anchor2);
			ShoppingTooltip2:Show();
		end

        if item3 then
			ShoppingTooltip3:ClearAllPoints();
			ShoppingTooltip3:SetPoint(anchor1, ShoppingTooltip2, anchor2);
			ShoppingTooltip3:Show();
		end
	end

end

function AtlasLoot:OpenDBURL(ID, Type)
    OpenAscensionDBURL("?"..Type.."="..ID);
end

function AtlasLoot:Chatlink(ID,chatType,Type)
    if Type == "spell" then
        SendChatMessage(AtlasLoot_GetEnchantLink(ID) ,chatType);
    else
        SendChatMessage(select(2,GetItemInfo(ID)) ,chatType);
    end
end

function AtlasLoot:ItemContextMenu(itemID, itemTexture, itemName, lootPage, sourcePage, self, Type, number)
    if AtlasLoot_Dewdrop:IsOpen(self) then AtlasLoot_Dewdrop:Close() return end
    AtlasLoot_Dewdrop:Register(self,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            if level == 1 then
                AtlasLoot_Dewdrop:AddLine(
                    'text', AL["Links"],
                    'notCheckable', true,
                    'isTitle', true,
                    'textHeight', 13,
                    'textWidth', 13
                )
                AtlasLoot_Dewdrop:AddLine(
                    'text', ORANGE..AL["Open In AscensionDB"],
                    'func', function(arg1,arg2) AtlasLoot:OpenDBURL(arg1,arg2) end,
                    'arg1',itemID,
                    'arg2',Type,
                    'textHeight', 12,
                    'textWidth', 12,
                    'notCheckable', true,
                    'closeWhenClicked', true
                )
                AtlasLoot_Dewdrop:AddLine(
                        "text", GREEN..AL["Guild"],
                        "func", function() AtlasLoot:Chatlink(itemID,"GUILD",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    );
                    AtlasLoot_Dewdrop:AddLine(
                        "text", LIGHTBLUE..AL["Party"],
                        "func", function() AtlasLoot:Chatlink(itemID,"PARTY",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    );
                    AtlasLoot_Dewdrop:AddLine(
                        "text", ORANGE2..AL["Raid"],
                        "func", function() AtlasLoot:Chatlink(itemID,"RAID",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', 12,
                        'textWidth', 12,
                        "notCheckable", true
                    );
                    AtlasLoot_Dewdrop:AddLine()
                    AtlasLoot_Dewdrop:AddLine(
                    'text', AL["Wishlists"],
                    'notCheckable', true,
                    'isTitle', true,
                    'textHeight', 13,
                    'textWidth', 13
                    )
                    if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
                        AtlasLoot_Dewdrop:AddLine(
                            "text", AL["Delete"],
                            "func", function() AtlasLoot_DeleteFromWishList(itemID,number); end,
                            'closeWhenClicked', true,
                            'textHeight', 12,
                            'textWidth', 12,
                            "notCheckable", true
                        );
                    else
                        local listID = AtlasLootWishList["Options"][playerName]["DefaultWishList"]
                        AtlasLoot_Dewdrop:AddLine(
                            "text", AL["Add To Default"],
                            "func", function() AtlasLoot_WishListAddDropClick(listID[1], listID[3], "", nil, itemID, itemTexture, itemName, lootPage, sourcePage) end,
                            'closeWhenClicked', true,
                            'textHeight', 12,
                            'textWidth', 12,
                            "notCheckable", true
                        );
                        AtlasLoot_Dewdrop:AddLine(
                            "text", AL["Own Wishlists"],
                            "tooltipTitle", AL["Own Wishlists"],
                            "value", "OwnWishlists",
                            "hasArrow", true,
                            'textHeight', 12,
                            'textWidth', 12,
                            "notCheckable", true
                        );
                        AtlasLoot_Dewdrop:AddLine(
                            "text", AL["Shared Wishlists"],
                            "tooltipTitle", AL["Shared Wishlists"],
                            "value", "SharedWishlists",
                            "hasArrow", true,
                            'textHeight', 12,
                            'textWidth', 12,
                            "notCheckable", true
                        );
                        AtlasLoot_Dewdrop:AddLine(
                            "text", AL["Add Wishlist"],
                            "func", function() AtlasLoot:AddWishList() end,
                            'closeWhenClicked', true,
                            'textHeight', 12,
                            'textWidth', 12,
                            "notCheckable", true
                        );
                    end
            elseif level == 2 then
                if value == "OwnWishlists" then
                    for k,v in pairs(AtlasLootWishList["Own"]) do
                        if type(v) == "table" then
                            AtlasLoot_Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "func", function() AtlasLoot_WishListAddDropClick("Own", k, "", nil,itemID, itemTexture, itemName, lootPage, sourcePage) end,
                                "notCheckable", true
                            );
                        end
                    end
                elseif value == "SharedWishlists" then
                    for k,v in pairs(AtlasLootWishList["Shared"]) do
                        if type(v) == "table" then
                            AtlasLoot_Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', 12,
                                'textWidth', 12,
                                "func", function() AtlasLoot_WishListAddDropClick("Shared", k, "", nil, itemID, itemTexture, itemName, lootPage, sourcePage) end,
                                "notCheckable", true
                            );
                        end
                    end
                end
            end
            --Close button
            AtlasLoot_Dewdrop:AddLine()
            AtlasLoot_Dewdrop:AddLine(
                'text', AL["Close Menu"],
                'textR', 0,
                'textG', 1,
                'textB', 1,
                'textHeight', 12,
                'textWidth', 12,
                'closeWhenClicked', true,
                'notCheckable', true
            )
        end,
        'dontHook', true
    )
    AtlasLoot_Dewdrop:Open(self)
end

