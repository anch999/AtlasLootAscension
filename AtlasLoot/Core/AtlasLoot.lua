--[[
Atlasloot Enhanced
Author Daviesh / Reworked by Deim of PrimalWoW / Reworked again for Ascension
Loot browser associating loot with instance bosses

Functions:
AtlasLoot:OnEnable()
AtlasLoot:SlashCommand(msg)
AtlasLoot:OptionsToggle()
AtlasLoot:OnInitialize()
AtlasLoot:ShowItemsFrame()
AtlasLoot:NavButton_OnClick()
AtlasLoot:IsLootTableAvailable(dataID)
AtlasLoot:LoadAllModules()
AtlasLoot:SetFavorites(number)
AtlasLoot:AddTooltip(frameb, tooltiptext)
]]

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

AtlasLoot.AddonName = "AtlasLoot Ascension Edition"
AtlasLoot.Version = GetAddOnMetadata("AtlasLoot", "Version")

AtlasLoot.DebugMessages = false
AtlasLoot.WishListVersion = 1

--Make the Dewdrop menu in the standalone loot browser accessible here
AtlasLoot.Dewdrop = AceLibrary("Dewdrop-2.0")

AtlasLoot.filterEnable = false
AtlasLoot.CurrentType = "Default"
AtlasLoot.type = {}
AtlasLoot.backEnabled = false
AtlasLoot.Difficulties = {}

-- Colours stored for code readability
local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local LIMEGREEN = "|cFF32CD32"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local YELLOW = "|cffFFd200"
local itemHighlightBlue = "Interface\\AddOns\\AtlasLoot\\Images\\knownBlue"
local itemHighlightGreen = "Interface\\AddOns\\AtlasLoot\\Images\\knownGreen"

--Search panel open and close save variables
--dataID, dataSource, pFrame, tablenumber

AtlasLootCharDB = {}
AtlasLoot_TokenData = {}

local realmName = GetRealmName()
local _, class = UnitClass("player")

local AtlasLootDBDefaults = {
    profile = {
        EquipCompare = false,
        Opaque = false,
        LastBoss = "EmptyTable",
        PartialMatching = true,
        LootBrowserStyle = 1,
        LootBrowserScale = 1.0,
		MerchantGlow = false,
        SearchOn = {
            All = false,
        },
        AtlasType = "Release",
		savedState = {},
    }
}

--Set Savedvariables defaults
local DefaultSettings  = {
	{
		Database = "AtlasLootCharDB",
		{ TableName = "QuickLooks", {} },
		{ TableName = "SearchResult", {Name = "Search Result" , Type = "Search", Back = true} },
	},
	{	Database = "AtlasLootFilterDB",
		{ TableName = "VanityFilters", {} },
		{ TableName = "CraftingFilters", {} },
	}
}

--[[ TableName = Name of the saved setting
CheckBox = Global name of the checkbox if it has one and first numbered table entry is the boolean
Text = Global name of where the text and first numbered table entry is the default text 
Frame = Frame or button etc you want hidden/shown at start based on condition ]]
local function setupSettingsDB()
    for _, d in ipairs(DefaultSettings) do
		for _, def in ipairs(d) do
			if not _G[d.Database] then _G[d.Database] = {} end
			local db = _G[d.Database]
			if db[def.TableName] == nil then
				if #def > 1 then
					db[def.TableName] = {}
					for _, n in ipairs(def) do
						tinsert(db[def.TableName], n)
					end
				else
					db[def.TableName] = def[1]
				end
			end

			if def.CheckBox then
				_G[def.CheckBox]:SetChecked(db[def.TableName])
			end
			if def.Text then
				_G[def.Text]:SetText(db[def.TableName])
			end
			if def.Frame then
				if db[def.TableName] then _G[def.Frame]:Hide() else _G[def.Frame]:Show() end
			end
		end
    end
end

-- Popup Box for first time users
StaticPopupDialogs["ATLASLOOT_SETUP"] = {
  text = AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."],
  button1 = AL["Setup"],
  OnAccept = function()
	  AtlasLoot:OptionsToggle();
  end,
  timeout = 0,
  whileDead = 1,
  hideOnEscape = 1
}

--[[
AtlasLoot:OnInitialize()
Performs inital setup of the mod and registers it for further setup when
the required resources are in place
]]
function AtlasLoot:OnInitialize()

	self:InitializeSlashCommands()
	--Sets the default loot tables for the current expansion enabled on the server.
	local xpaclist = {"CLASSIC", "TBC", "WRATH"}
	self.Expac = xpaclist[GetAccountExpansionLevel()+1]
end


--[[
AtlasLoot:OnEnable():
Invoked by the VARIABLES_LOADED event.  Now that we are sure all the assets
the addon needs are in place, we can properly set up the mod
]]
function AtlasLoot:OnEnable()
    self.db = LibStub("AceDB-3.0"):New("AtlasLootDB")
    self.db:RegisterDefaults(AtlasLootDBDefaults)
	self.globalDB = AtlasLootDB
	setupSettingsDB()
	AtlasLootItemCache = AtlasLootItemCache or {}
    if AtlasLoot_Data then
        AtlasLoot_Data["EmptyTable"] = {
			Name = AL["Select a Loot Table..."],
			{Name = AL["Select a Loot Table..."]},
		}
    end
	self.db.profile.showUnknownRecipeTooltip = self.db.profile.showUnknownRecipeTooltip or true
	if self.db.profile.knownRecipes then self.db.profile.knownRecipes  = nil end
	if IsAddOnLoaded("TomTom") then
		self.TomTomLoaded = true
	end
	--Setup for minimap icon
	self:MinimapIconSetup()
	self:InitializeOptionsFrame()
    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	tinsert(UISpecialFrames, "AtlasLootDefaultFrame")
    --Set visual style for the loot browser
	if self.db.profile.LootBrowserStyle then
		self:SetSkin(self.skinKeys[self.db.profile.LootBrowserStyle][1])
	end

	--If using an opaque items frame, change the alpha value of the backing texture
	if (self.db.profile.Opaque) then
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 1)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 1)
    else
        AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_Difficulty_ScrollFrame_Back:SetTexture(0, 0, 0, 0.05)
        Atlasloot_SubTableFrame_Back:SetTexture(0, 0, 0, 0.05)
	end

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
    self:UpdateLootBrowserScale()
	-- Is wishlist item disabled on load or not
	if AtlasLootWishList["Options"][UnitName("player")]["AutoSortWishlist"] then
		AtlasLootItemsFrame_Wishlist_UnLock:Disable()
	else
		AtlasLootItemsFrame_Wishlist_UnLock:Enable()
	end

	LoadItemIDsDatabase()
	self:PatchNotes()
	self:LoadTradeskillRecipes()
	self:PopulateProfessions()
	self:CreateVanityCollection()
	self:CreateItemSourceList()
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:InitializeWishlistMerchantGlow()

	collectgarbage("collect")
end

function AtlasLoot:Reset(data)
    AtlasLootDefaultFrame:Hide()
    if data == "frames" then
		AtlasLootDefaultFrame:ClearAllPoints()
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        self.db.profile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
    elseif data == "quicklooks" then
        AtlasLootCharDB["QuickLooks"] = {}
    elseif data == "wishlist" then
		AtlasLootWishList = {}
		self:WishlistSetup()
        AtlasLootCharDB["SearchResult"] = {}
    elseif data == "all" then
		AtlasLootDefaultFrame:ClearAllPoints()
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)

        self.db.profile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
        AtlasLootCharDB["QuickLooks"] = {}
        AtlasLootCharDB["SearchResult"] = {}
		AtlasLootWishList = {}
		self:WishlistSetup()
    end
    DEFAULT_CHAT_FRAME:AddMessage(BLUE..AL["AtlasLoot"]..": "..RED..AL["Reset complete!"])
end

function AtlasLoot:InitializeSlashCommands()
	--Enable the use of /al or /atlasloot to open the loot browser
	SLASH_ATLASLOOT1 = "/atlasloot"
	SLASH_ATLASLOOT2 = "/al"
	SlashCmdList["ATLASLOOT"] = function(msg) self:SlashCommand(msg) end
end

--[[
AtlasLoot:SlashCommand(msg):
msg - takes the argument for the /atlasloot command so that the appropriate action can be performed
If someone types /atlasloot, bring up the options box
]]
function AtlasLoot:SlashCommand(msg)
	msg = msg or ""

	local cmd, arg1, arg2 = string.split(" ", msg, 3)
	cmd = string.lower(cmd or "")

	if cmd == AL["reset"] then
		self:Reset("frames")
	elseif cmd == AL["options"] then
		self:OptionsToggle()
	elseif cmd == "updatecache" then
		self:UpdateItemIDsDatabase(tonumber(arg1), tonumber(arg2))
	elseif cmd == "clearcache" then
		wipe(AtlasLootItemCache)
	elseif cmd == "clearmerchantcache" then
		wipe(AtlasLootOtherIds)
	elseif cmd == "news" then
		self:OpenNewsFrame()
	elseif cmd == "getmerchant" then
		self:GetMerchantItems(arg1)
	else
		AtlasLootDefaultFrame:Show()
	end
end

--[[
AtlasLoot:ShowItemsFrame(dataID, dataSource, tablenum):
dataID - Name of the loot table
dataSource - Table in the database where the loot table is stored
tablenum - Number of the table with the loot in it
It is the workhorse of the mod and allows the loot tables to be displayed any way anywhere in any mod.
]]
function AtlasLoot:ShowItemsFrame(dataID, dataSource_backup, tablenum)

	local isValid, toShow, itemID, recipeID, orgItemID
	self.vanityItems = {}

    --If the loot table name has not been passed, throw up a debugging statement
	if dataID == nil then
		DEFAULT_CHAT_FRAME:AddMessage("No dataID!")
        return
	end

	--Hide Advanced search if it is up and reshow Querybutton
	AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()

	--Hide Map and reshow lootbackground
	AtlasLootDefaultFrame_Map:Hide()
    AtlaslLoot_LootBackground:Show()
	AtlasLootItemsFrame:Show()

	-- Hide the Filter Check-Box
	AtlasLootFilterCheck:Hide()

	-- Hide the map header lable
	Atlasloot_HeaderLabel:Hide()
	local dataSource = _G[dataSource_backup] or AtlasLoot_Data
	if not dataSource[dataID] then return end
	-- Enable map button if there is a map for this table.
	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataSource_backup ~= "AtlasLoot_TokenData" and dataSource[dataID] and dataSource[dataID].Map then
		AtlasLootDefaultFrame_MapButton:Enable()
		-- Stops map reseting to default while still in the same raid/instance table
		if AtlasLootItemsFrame.refresh == nil or dataID ~= AtlasLootItemsFrame.refresh[1] then
			self.MapNum = 1
			self.CurrentMap = dataSource[dataID].Map
			self:SetMapButtonText(self.CurrentMap)
		end
	else
		AtlasLootDefaultFrame_MapButton:Disable()
		AtlasLootDefaultFrame_MapButton:SetText("No Map")
	end

	if dataSource_backup == "AtlasLoot_CurrentWishList" then
		ATLASLOOT_CURRENT_WISHLIST_NUM = AtlasLoot_CurrentWishList["Show"].ListNum
	else
		self.itemUnlock = false
	end

	local difType = false
	-- Checks to see if type is the same
	if self.CurrentType and dataSource[dataID].Type and self.CurrentType ~= dataSource[dataID].Type then
		ItemindexID = self.type[dataSource[dataID].Type] or 3
		difType = true
	end

	-- Saves current types ItemindexID
	if dataSource[dataID].Type then
		self.type[dataSource[dataID].Type] = ItemindexID
	end
	-- Set current type
	self.CurrentType = dataSource[dataID].Type or "Default"

	-- Loads the Difficulties into the scrollFrame
	if dataSource[dataID].ListType then
		self:ScrollFrameUpdate(nil,dataSource[dataID].ListType)
	else
		self:ScrollFrameUpdate()
	end

	-- Finds the tablenumber to set where the difficulty slider should be.
	local typeNumber = 1
	local function findTypeNumber()
		for i,v in ipairs(self.Difficulties[dataSource[dataID].Type]) do
			if v[2] == ItemindexID then
				typeNumber = i
				return i
			end
		end
	end

	if dataSource_backup ~= "AtlasLootFilter" then
		self.dataSourceBackup = dataSource_backup
	end

	-- Moves the difficulty scrollslider if the difficulty has changed
	if dataSource[dataID].Type and difType and #self.Difficulties[dataSource[dataID].Type] > 5 and findTypeNumber() > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(typeNumber * (max / #self.Difficulties[dataSource[dataID].Type]))
	end

	-- Moves the difficulty scrollslider if wishlist
	if dataSource_backup == "AtlasLoot_CurrentWishList" and dataSource[dataID].ListNum > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(dataSource[dataID].ListNum * (max / #AtlasLootWishList[dataSource[dataID].ListType][dataSource[dataID].ListNum]))
	end

	--For stopping the subtable from changing if its a token table
	if dataSource[dataID].NoSubt == nil and dataID ~= "FilterList" then
		if dataSource[dataID].DisplayName then
			AtlasLootDefaultFrame_SubMenu:SetText(dataSource[dataID].DisplayName)
		else
			AtlasLootDefaultFrame_SubMenu:SetText(dataSource[dataID].Name)
		end
		self:SubTableScrollFrameUpdate(dataID, dataSource_backup, tablenum)
	end

	for i = 1, 30, 1 do
		--Use shortcuts for easier reference to parts of the item button
		local itemButton = _G["AtlasLootItem_"..i]
		local hightlightFrame = _G["AtlasLootItem_"..i.."_Highlight"]
			itemButton:Hide()
			itemButton.itemID = nil
			itemButton.spellID = nil
			hightlightFrame:Hide()
			itemButton.hasTrade = false
	end

	-- Sets the main page lable
	if dataSource[dataID][tablenum] and dataSource[dataID][tablenum].Name then
		AtlasLoot_BossName:SetText(dataSource[dataID][tablenum].Name)
	else
		AtlasLoot_BossName:SetText("This Is Empty")
		return
	end

	-- find the right itemID for the difficulty selected
	local function getProperItemConditionals(item)
		isValid = false
		toShow = true
		local itemDif = ItemindexID or self.Difficulties.Normal
		local itemID = item and item.itemID
		if item and item.itemID then
			itemID = item.itemID
			isValid = true
			local itemType = item.Type or dataSource[dataID].Type
			local maxDif = self:GetMaxDifficulty(itemType)
			--stops items from showing that are taged for coa
			if class == "HERO" and item.COA then
				toShow = false
			elseif item[self.Difficulties.MIN_DIF] then
				if item[self.Difficulties.MIN_DIF] > itemDif then
					toShow = false
				end
				itemID = self:GetItemDifficultyID(item.itemID, min(maxDif, itemDif))
			end
			if toShow then
				if maxDif < itemDif then itemDif = maxDif end 
				--If something was found in itemID database show that if not show default table item
				itemID = self:GetItemDifficultyID(item.itemID, itemDif)
			end
		elseif item and (item.spellID or item.icon) or item and itemID then
			toShow = true
			if(item[self.Difficulties.MIN_DIF]) then
				if item[self.Difficulties.MIN_DIF] > itemDif then
					toShow = false
				end
			end
			isValid = true
		end
		local recipeID
		if item and item.spellID then
			recipeID = self:GetRecipeID(item.spellID)
		end
		return isValid, toShow, itemID, recipeID
	end

	-- Setup the button for the to be displayed item/spell
	local function setupButton(itemID, i, newPosition, dataSource, dataID, tablenum, dataSource_backup)
		local text, extra
		local itemName, itemQuality, itemSubType, itemEquipLoc, itemIcon
		if itemID then
			itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = AtlasLoot:GetItemInfo(itemID)
		end

		local spellName, spellIcon
		--Use shortcuts for easier reference to parts of the item button
		local itemButton = _G["AtlasLootItem_"..newPosition]
		local iconFrame  = _G["AtlasLootItem_"..newPosition.."_Icon"]
		local nameFrame  = _G["AtlasLootItem_"..newPosition.."_Name"]
		local extraFrame = _G["AtlasLootItem_"..newPosition.."_Extra"]
		local hightlightFrame = _G["AtlasLootItem_"..newPosition.."_Highlight"]
		local spellID = dataSource[dataID][tablenum][i].spellID

		if spellID then
			spellName, _, spellIcon, _, _, _, _, _, _ = GetSpellInfo(spellID)
			if spellName then
				text = spellName
			elseif dataSource[dataID][tablenum][i].name then
				text = dataSource[dataID][tablenum][i].name
				text = self:FixText(text)
			end
			if itemID then
				text = select(4,GetItemQualityColor(itemQuality))..text
			end
			--Adds button highlights if you know a recipe or have a char that knows one
			if CA_IsSpellKnown(spellID) then
				itemButton.hasTrade = true
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			else
				itemButton.hasTrade = false
				hightlightFrame:Hide()
				if self:GetKnownRecipes(spellID) then
					hightlightFrame:SetTexture(itemHighlightBlue)
					hightlightFrame:Show()
				end

			end
		elseif itemID then
			--If the client has the name of the item in cache, use that instead.					
			if dataSource[dataID][tablenum][i].name then
				--If it has a manuel entry use that
				text = dataSource[dataID][tablenum][i].name
				text = self:FixText(text)
			elseif itemName then
				text = select(4,GetItemQualityColor(itemQuality))..itemName
			else
				text = ""
			end
			if C_VanityCollection.IsCollectionItemOwned(itemID) and VANITY_ITEMS[itemID] and CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell) and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			elseif C_VanityCollection.IsCollectionItemOwned(itemID) then
				hightlightFrame:SetTexture(itemHighlightBlue)
				hightlightFrame:Show()
				if dataSource_backup == "AtlasLoot_CurrentWishList" or (VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell ~= 0 and not CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell)) then
					tinsert(self.vanityItems, itemID)
				end
			end
			local recipeData = self:GetRecipeData(itemID, "item")
			if recipeData then
				if CA_IsSpellKnown(recipeData.spellID) then
					--Adds button highlights if you know a recipe or have a char that knows one
					itemButton.hasTrade = true
					hightlightFrame:SetTexture(itemHighlightGreen)
					hightlightFrame:Show()
				else
					itemButton.hasTrade = false
					hightlightFrame:Hide()
					if self:GetKnownRecipes(recipeData.spellID) then
						hightlightFrame:SetTexture(itemHighlightBlue)
						hightlightFrame:Show()
					end
				end
			end
		else
			if dataSource[dataID][tablenum][i].name then
				--If it has a manuel entry use that
				text = dataSource[dataID][tablenum][i].name
				text = self:FixText(text)
			else
				text = ""
			end
		end

		itemButton.name = text
		--Insert the item description
		if self.FixedItemText[dataSource[dataID][tablenum][i].itemID] then
			extra = self.FixedItemText[dataSource[dataID][tablenum][i].itemID]
		elseif dataSource[dataID][tablenum][i].desc then
			if type(dataSource[dataID][tablenum][i].desc) == "table" then
				local location, boss = dataSource[dataID][tablenum][i].desc[1], dataSource[dataID][tablenum][i].desc[2]
				extra = YELLOW..location..WHITE.." - "..boss	
			else
				extra = dataSource[dataID][tablenum][i].desc
			end
		elseif dataSource[dataID][tablenum][i].dropLoc and (self.dataSourceBackup == "AtlasLoot_OnDemand" or (self.db.profile.showdropLocationOnSearch and dataID == "SearchResult")) then
			local location, boss = dataSource[dataID][tablenum][i].dropLoc[1], dataSource[dataID][tablenum][i].dropLoc[2]
			extra = YELLOW..location..WHITE.." - "..boss
		elseif AtlasLoot_CraftingData["CraftingLevels"] and spellID and AtlasLoot_CraftingData["CraftingLevels"][spellID] and dataID ~= "SearchResult" then
			local lvls = AtlasLoot_CraftingData["CraftingLevels"][spellID]
			extra = LIMEGREEN .. "L-Click:|r "..WHITE..dataSource[dataID].Name.." ( "..ORANGE..lvls[1].."|r "..YELLOW..lvls[2].."|r "..GREEN..lvls[3].."|r "..GREY..lvls[4]..WHITE.." )"
		elseif dataSource[dataID][tablenum][i].lootTable and dataSource[dataID][tablenum][i].lootTable[2] == "Token" then
			extra = AL["Set Token (Click)"]
		elseif itemEquipLoc and itemEquipLoc ~= "" and itemSubType then
			extra = "=ds="..itemEquipLoc..", "..itemSubType
		elseif itemSubType then
			extra = "=ds="..itemSubType
		else
			extra = ""
		end

		if AtlasLoot_ExtraData[dataSource[dataID][tablenum][i].itemID]and dataID ~= "SearchResult" then
			extra = LIMEGREEN .. "L-Click:|r " .. extra
		end
		if dataSource[dataID][tablenum][i].contentsPreview and dataID ~= "SearchResult" then
			extra = LIMEGREEN .. "L-Click:|r " .. extra
		end

		if dataSource[dataID][tablenum][i].rep then
			extra = extra ..WHITE.." ("..dataSource[dataID][tablenum][i].rep..")"
		end

		local price = dataSource[dataID][tablenum][i].price
		if price then
			price = self:ArenaCost(price, itemEquipLoc, itemQuality)
			extra = extra ..WHITE.." ("..price..")"
		end

		local recipe = self:GetRecipeData(itemID, "item")
		if recipe and AtlasLoot_CraftingData["CraftingLevels"] and AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID] then
			local lvls = AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID]
			extra = extra ..WHITE.." ( "..lvls[1].." )"
		end

		extra = self:FixText(extra)

		--If there is no data on the texture an item should have, show a big red question mark
		if dataSource[dataID][tablenum][i].icon == "Blank" then
			iconFrame:SetTexture(nil)
		elseif dataSource[dataID][tablenum][i].icon == "?" then
			iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		elseif dataSource[dataID][tablenum][i].icon then
			iconFrame:SetTexture("Interface\\Icons\\"..dataSource[dataID][tablenum][i].icon)
		elseif dataSource[dataID][tablenum][i].itemID then
			iconFrame:SetTexture(itemIcon)
		elseif spellIcon then
			iconFrame:SetTexture(spellIcon)
		end

		if iconFrame:GetTexture() == nil and dataSource[dataID][tablenum][i].icon ~= "Blank" then
			iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		end

		itemButton.itemTexture = iconFrame:GetTexture()

		--Highlight items in the wishlist
		if itemID and dataSource_backup ~= "AtlasLoot_CurrentWishList" and (AtlasLootWishList["Options"][UnitName("player")] and AtlasLootWishList["Options"][UnitName("player")]["Mark"]) then
			local xitemexistwish, itemwishicons = self:WishListCheck(itemID, true)
			if xitemexistwish then
				text = itemwishicons.." "..text
			end
		end
		--Set the name and description of the item
		nameFrame:SetText(text)
		extraFrame:SetText(extra)
		extraFrame:Show()
		--For convenience, we store information about the objects in the objects so that it can be easily accessed later
		itemButton.itemID = itemID
		itemButton.spellID = spellID

		--learned spell id is used for items that are part of the ascension vanity collection
		itemButton.learnedSpellID = nil
		if VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
			itemButton.learnedSpellID = VANITY_ITEMS[itemID].learnedSpell
		end

		itemButton.iteminfo = {}
		if spellID then
			itemButton.iteminfo.idcore = spellID
			itemButton.iteminfo.icontexture = GetItemIcon(spellID)
			itemButton.storeID = itemID
			itemButton.dressingroomID = itemID
		else
			itemButton.iteminfo.idcore = itemID
			itemButton.iteminfo.icontexture = itemID
			itemButton.storeID = itemID
			itemButton.dressingroomID = itemID
		end

		itemButton.craftingData = self:GetRecipeSource(spellID)
		itemButton.tablenum = tablenum
		itemButton.dataID = dataID
		itemButton.dataSource = dataSource_backup
		itemButton.contentsPreview = dataSource[dataID][tablenum][i].contentsPreview
		itemButton.price = dataSource[dataID][tablenum][i].price or nil
		itemButton.droprate = dataSource[dataID][tablenum][i].droprate or self:GetDropRate(dataSource[dataID][tablenum], dataSource[dataID][tablenum][i].lootGroup)
		itemButton.extraInfo = dataSource[dataID][tablenum][i].extraInfo or nil
		itemButton.quest = dataSource[dataID][tablenum][i].quest or nil
		itemButton.item = dataSource[dataID][tablenum][i]

		if dataSource[dataID][tablenum][i].lootTable then
			itemButton.sourcePage = dataSource[dataID][tablenum][i].lootTable
		else
			itemButton.sourcePage = nil
		end

		if dataSource[dataID][tablenum][i][self.Difficulties.DIF_SEARCH] then
			itemButton.difficulty = dataSource[dataID][tablenum][i][self.Difficulties.DIF_SEARCH]
		else
			itemButton.difficulty = ItemindexID
		end

		itemButton.i = 1
		itemButton:Show()
	end

	-- Create the loottable
	if (dataID == "SearchResult") or (dataSource_backup == "AtlasLoot_CurrentWishList") or dataSource[dataID][tablenum] then
	local displayNumber = 0
		--Iterate through each item object and set its properties
		for i = 1, 30, 1 do
			--Set new button number if a item has been hidden
			local newPosition = i - displayNumber
			if i == 16 then
				displayNumber = 0
				newPosition = i
			end
			--Check for a valid object (that it exists, and that it has a name
			isValid, toShow, itemID, recipeID = getProperItemConditionals(dataSource[dataID][tablenum][i])
			if isValid and toShow then
				setupButton(itemID or recipeID, i, newPosition, dataSource, dataID, tablenum, dataSource_backup)
			elseif isValid then
				displayNumber = displayNumber + 1
			end
		end

-----------------------------------------------------------------------------------------------------------------------------

		--Store data about the state of the items frame to allow minor tweaks or a recall of the current loot page
		AtlasLootItemsFrame.refresh = {dataID, dataSource_backup, tablenum}

		if dataID ~= "FilterList" then
			AtlasLootItemsFrame.refreshFilter = {dataID, dataSource_backup, tablenum}
		end

		if dataID ~= "FilterList"  and dataSource[dataID].Back ~= true then
			AtlasLootItemsFrame.refreshOri = {dataID, dataSource_backup, tablenum}
		end

		if dataID == "SearchResult" then
			AtlasLootItemsFrame.refreshSearch = {dataID, dataSource_backup, tablenum}
		elseif not _G["AtlasLootItemsFrame_BACK"]:IsVisible() then
			AtlasLootItemsFrame.refreshSearch = nil
		end

		if dataSource_backup ~= "AtlasLoot_OnDemand" and dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" and dataID ~= "FilterList"  and
		dataSource[dataID].Back ~= true and dataID ~= "EmptyTable" and not dataSource[dataID].vanity then
			if not self.db.profile.LastBoss or type(self.db.profile.LastBoss) ~= "table" then self.db.profile.LastBoss = {} end
			self.db.profile.LastBoss[self.Expac] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
			self.db.profile.savedState[self.currentTable] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
		end

		-- Checks dataID with submenus to stop filter button loading on certain tables
		local function filterCheck(find)
			local mtype = { "Reputations", "WorldEvents", "PVP", "Collections", "Vanity"}
			for _, t in pairs (mtype) do
				if AtlasLoot_SubMenus[t..self.Expac] then
					for _, v in ipairs (AtlasLoot_SubMenus[t..self.Expac]) do
						if v[3] and type(v[3]) == "table" then
							for _, sub in ipairs(v[3]) do
								if find == sub[2] then
									return true
								end
							end
						elseif find == v[2] then
							return true
						end	
					end
				end
			end
		end

		-- Show the Filter Check-Box
		if filterCheck(dataID) ~= true or dataSource[dataID].vanity or dataSource[dataID].filter then
			AtlasLootFilterCheck:Show()
		end

		--Hide navigation buttons by default, only show what we need
		_G["AtlasLootItemsFrame_BACK"]:Hide()
		_G["AtlasLootItemsFrame_NEXT"]:Hide()
		_G["AtlasLootItemsFrame_PREV"]:Hide()
		_G["AtlasLootItemsFrame_NEXT"]:SetParent("AtlasLootItemsFrame")
		_G["AtlasLootItemsFrame_PREV"]:SetParent("AtlasLootItemsFrame")
		_G["AtlasLootItemsFrame_NEXT"]:ClearAllPoints()
		_G["AtlasLootItemsFrame_NEXT"]:SetPoint("BOTTOMRIGHT", "AtlasLootItemsFrame", "BOTTOMRIGHT",-5,5)
		_G["AtlasLootItemsFrame_PREV"]:ClearAllPoints()
		_G["AtlasLootItemsFrame_PREV"]:SetPoint("BOTTOMLEFT", "AtlasLootItemsFrame", "BOTTOMLEFT",5,5)
		_G["AtlasLootItemsFrame_Wishlist_Options"]:Hide()
		_G["AtlasLootItemsFrame_Wishlist_Share"]:Hide()
		_G["AtlasLootItemsFrame_Wishlist_Swap"]:Hide()
		_G["AtlasLootItemsFrame_Wishlist_UnLock"]:Hide()
		_G["AtlasLootItemsFrame_Wishlist_Vanity_Learn"]:Hide()
		_G["AtlasLootItemsFrame_Spell_Vanity_Learn"]:Hide()

		-- Show Wishlist buttons when a wishlist in showing
		if dataSource_backup == "AtlasLoot_CurrentWishList" then
			_G["AtlasLootItemsFrame_Wishlist_Options"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_Share"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_Swap"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_UnLock"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_Vanity_Learn"]:Show()
			if dataSource[dataID].ListType == "Shared" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Own")
			elseif dataSource[dataID].ListType == "Own" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Shared")
			end
		end

		if dataSource[dataID].vanity then
			_G["AtlasLootItemsFrame_Spell_Vanity_Learn"]:Show()
		end

		local tablebase = {dataID, dataSource_backup}
		if dataID == "FilterList" then
			tablebase = {AtlasLootItemsFrame.refreshOri[1],AtlasLootItemsFrame.refreshOri[2]}
			tablenum = AtlasLootItemsFrame.refreshOri[3]
		end

		if AtlasLootItemsFrame.refresh and AtlasLootItemsFrame.refreshOri and tablenum ~= #_G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]] and dataSource_backup ~= "AtlasLoot_TokenData" and dataID ~= "SearchResult" or tablenum ~= #_G[AtlasLootItemsFrame.refresh[2]][AtlasLootItemsFrame.refresh[1]] and dataID == "SearchResult" then
			_G["AtlasLootItemsFrame_NEXT"]:Show()
			_G["AtlasLootItemsFrame_NEXT"].tablenum = tablenum + 1
			_G["AtlasLootItemsFrame_NEXT"].tablebase = tablebase
		end

		if tablenum ~= 1 and dataSource_backup ~= "AtlasLoot_TokenData" then
			_G["AtlasLootItemsFrame_PREV"]:Show()
			_G["AtlasLootItemsFrame_PREV"].tablenum = tablenum - 1
			_G["AtlasLootItemsFrame_PREV"].tablebase = tablebase
		end

		if dataSource[dataID].Back or self.backEnabled then
			_G["AtlasLootItemsFrame_BACK"]:Show()
		elseif dataID ~= "FilterList" then
			AtlasLootItemsFrame.refreshBack = {dataID, dataSource_backup, tablenum}
		end
	end

	--Anchor the item frame where it is supposed to be
	if self.filterEnable and dataID ~= "FilterList" then
		self:HideFilteredItems()
	end
end

-- List of Moduel Names
AtlasLoot.ModuleName = {
	["AtlasLootOriginalWoW"] = "AtlasLoot_OriginalWoW";
	["AtlasLootBurningCrusade"] = "AtlasLoot_BurningCrusade";
	["AtlasLootCraftingOriginalWoW"] = "AtlasLoot_Crafting_OriginalWoW";
	["AtlasLootCraftingBurningCrusade"] = "AtlasLoot_Crafting_TBC";
	["AtlasLootCraftingWotLK"] = "AtlasLoot_Crafting_Wrath";
	["AtlasLootWorldEvents"] = "AtlasLoot_WorldEvents";
	["AtlasLootWotLK"] = "AtlasLoot_WrathoftheLichKing";
	["AtlasLootVanity"] = "AtlasLoot_Vanity";
}

AtlasLoot.dataModules = {
	"AtlasLoot_OriginalWoW",
	"AtlasLoot_BurningCrusade",
	"AtlasLoot_WrathoftheLichKing",
	"AtlasLoot_Crafting_OriginalWoW",
	"AtlasLoot_Crafting_TBC",
	"AtlasLoot_Crafting_Wrath",
	"AtlasLoot_WorldEvents",
	"AtlasLoot_Vanity"
}

--[[
AtlasLoot:LoadAllModules()
Used to load all available LoD modules
]]
function AtlasLoot:LoadAllModules()
	local loadedModules = {}
	local flag = 0
	for _, module in pairs(self.dataModules) do
		loadedModules[module] = LoadAddOn(module)
	end

	for module, state in pairs(loadedModules) do
		if not state then
			LoadAddOn(module)
			flag = 1
		end
	end

	if flag == 1 then
		if self.DebugMessages then
			DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..WHITE..AL["All Available Modules Loaded"])
		end
		collectgarbage("collect")
	end
end

--[[
AtlasLoot:SetFavorites(number)
sets the favorite when alt right clicked
]]
function AtlasLoot:SetFavorites(num)
    if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
        AtlasLootCharDB["QuickLooks"][num]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
    else
        AtlasLootCharDB["QuickLooks"][num]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], self.lastModule, self.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
    end
end

function AtlasLoot:UNIT_SPELLCAST_SUCCEEDED(event, arg1, arg2 , arg3)
	if arg1 == "player" and arg2 == "Learning" then
		self:PopulateProfessions()
	end
end