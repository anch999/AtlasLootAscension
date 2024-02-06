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
AtlasLoot:ShowFavorites(button)
AtlasLoot:AddTooltip(frameb, tooltiptext)
]]

AtlasLoot = LibStub("AceAddon-3.0"):NewAddon("AtlasLoot", "AceEvent-3.0", "AceTimer-3.0")

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")

--Establish version number and compatible version of Atlas
local VERSION_MAJOR = "5";
local VERSION_MINOR = "11";
local VERSION_BOSSES = "04";

AtlasLoot.Version = "AtlasLoot Ascension Edition"
AtlasLoot.DebugMessages = false
AtlasLoot.WishListVersion = 1

--Make the Dewdrop menu in the standalone loot browser accessible here
AtlasLoot.Dewdrop = AceLibrary("Dewdrop-2.0")

AtlasLoot.filterEnable = false
AtlasLoot.CurrentType = "Default"
AtlasLoot.type = {}
AtlasLoot.backEnabled = false
AtlasLoot.Difficultys = {}

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

local AtlasLootDBDefaults = {
    profile = {
        EquipCompare = false,
        Opaque = false,
        ItemIDs = false,
        LastBoss = "EmptyTable",
        AtlasLootVersion = "1",
        AtlasNaggedVersion = "",
        PartialMatching = true,
        LootBrowserStyle = 1,
        LootBrowserScale = 1.0,
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
AtlasLoot:OnEnable():
Invoked by the VARIABLES_LOADED event.  Now that we are sure all the assets
the addon needs are in place, we can properly set up the mod
]]
function AtlasLoot:OnEnable()
    self.db = LibStub("AceDB-3.0"):New("AtlasLootDB")
    self.db:RegisterDefaults(AtlasLootDBDefaults)
	setupSettingsDB()
    if AtlasLoot_Data then
        AtlasLoot_Data["EmptyTable"] = {
			Name = AL["Select a Loot Table..."],
			{Name = AL["Select a Loot Table..."]},
		}
    end

	if IsAddOnLoaded("TomTom") then
		self.TomTomLoaded = true
	end
	--Setup for minimap icon
	self:MinimapIconSetup()
    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	tinsert(UISpecialFrames, "AtlasLootDefaultFrame")
	--Set up options frame
	self:OptionsInit()
    self:CreateOptionsInfoTooltips()
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

	if((AtlasLootCharDB.AtlasLootVersion == nil) or (tonumber(AtlasLootCharDB.AtlasLootVersion) < 40301)) then
		AtlasLootCharDB.AtlasLootVersion = VERSION_MAJOR..VERSION_MINOR..VERSION_BOSSES
		self:OptionsInit()
	end

	collectgarbage("collect")

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
	self:LoadItemIDsDatabase()
	self:LoadTradeskillRecipes()
	self:PopulateProfessions()
	self:CreateVanityCollection()
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


--[[
AtlasLoot:SlashCommand(msg):
msg - takes the argument for the /atlasloot command so that the appropriate action can be performed
If someone types /atlasloot, bring up the options box
]]
function AtlasLoot:SlashCommand(msg)
	if msg == AL["reset"] then
		self:Reset("frames")
	elseif msg == AL["options"] then
		self:OptionsToggle()
	else
		AtlasLootDefaultFrame:Show()
	end
end

--[[
AtlasLoot:OnInitialize()
Performs inital setup of the mod and registers it for further setup when
the required resources are in place
]]
function AtlasLoot:OnInitialize()
	--Enable the use of /al or /atlasloot to open the loot browser
	SLASH_ATLASLOOT1 = "/atlasloot"
	SLASH_ATLASLOOT2 = "/al"
	SlashCmdList["ATLASLOOT"] = function(msg)
		self:SlashCommand(msg)
	end

	--Sets the default loot tables for the current expansion enabled on the server.
	local xpaclist = {"CLASSIC", "TBC", "WRATH"}
	self.Expac = xpaclist[GetAccountExpansionLevel()+1]
end

function AtlasLoot:RecipeSource(spellID)
	if not spellID then return end
	local cData = AtlasLoot_CraftingData
	local data = {}
	-- extra information on where to find the recipe
	-- trainer learnt
	local trainer = cData["Trainer"][spellID]
	if trainer then tinsert(data, {AL["Source"]..": "..WHITE..trainer}) end
	-- aquire type
	local aquireType = cData["AquireType"][spellID]
	if aquireType then
		tinsert(data, {AL["Source"]..": "..WHITE..cData[aquireType[1]][aquireType[2]][1]})
	end
	-- vendor recipe
	local vendor = cData["Vendor"][spellID]
	if vendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Vendor"]})
		for _,v in pairs(vendor) do
			local vendor = AtlasLoot_CraftingData["VendorList"][v]
			tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5]})
		end
	end
	-- vendor recipe
	local recipeRepVendor = cData["RecipeRepVendor"][spellID]
	if recipeRepVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Vendor"]})
		local vendor = AtlasLoot_CraftingData["VendorList"][spellID]
		for	i = 3, 6 do
			if vendor and vendor[i] then
			tinsert(data, {vendor[1], vendor[2], fac = vendor[i]})
			end
		end
	end
	--limited vendor recipes
	local limitedVendor = cData["LimitedVendor"][spellID]
	if limitedVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Limited Stock"]})
		local sort = {}
		local limited = false
		for i,v in pairs(limitedVendor) do
			 if limited then
				 tinsert(sort[i-1],v)
				 limited = false
			 else
				 sort[i] = {v}
				 limited = true
			 end
		end
		for _,v in pairs(sort) do
			 local vendor = AtlasLoot_CraftingData["VendorList"][v[1]]
			 tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5], limited = v[2]})
		end
	end
	--mob drop
	local mobDrop = cData["MobDrop"][spellID]
	if mobDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Mob Drop"]})
		for _,v in pairs(mobDrop) do
			local mob = AtlasLoot_CraftingData["MobList"][v]
			local cords = nil
			if mob[3] ~= 0 and mob[4] ~= 0 then
				cords = {mob[3], mob[4]}
			end
			tinsert(data, {mob[1], WHITE..mob[2], cords})
		end
	end
	-- World Drop
	local worldDrop = cData["WorldDrop"][spellID]
	if worldDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["World Drop"]})
		local text = worldDrop[1]
		if worldDrop[2] then
			text = text.." / "..worldDrop[2]
		end
		tinsert(data, {text})
	end
	--quest
	local questDrop = cData["QuestDrop"][spellID]
	if questDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Quest"]})
		for _,v in pairs(questDrop) do
			local quest = AtlasLoot_CraftingData["QuestList"][v]
			tinsert(data, {quest[1],  quest[2], cords = {quest[3], quest[4]}, fac = quest[5]})
		end
	end
	--rep vendor
	local repVendor = cData["RepVendor"][spellID]
	if repVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Reputation Vendor"]})
		local line1, line2
		local list = {}
		for i,v in pairs(repVendor) do
			 if type(v) == "table" then
				 for i,v in pairs(v) do
					 if i == 1 then
						 line1 = AL["Faction"]..": "..WHITE..v
					 elseif i == 2 then
						 line2 = AL["Required Reputation"]..": "..WHITE..v
					 else
						 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
					 end
				 end
			 else
				 if i == 1 then
					 line1 = AL["Faction"]..": "..WHITE..v
				 elseif i == 2 then
					 line2 = AL["Required Reputation"]..": "..WHITE..v
				 else
					 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
				 end
			 end
		end
		tinsert(data, {line1, line2})
		for _,v in pairs(list) do
			local cords
			if v[3] ~= 0 and v[4] ~= 0 then
				cords = {v[3], v[4]}
			end
			tinsert(data, {v[1], WHITE..v[2], cords, fac = v[5]})
		end
	end
	return data
end

--Creates tables for raid tokens from the collections tables
function AtlasLoot:CreateToken(dataID)
	local itemType, slotType, itemName, itemType2
	--orginal dataID
	local orgID = dataID
	--list of item types to find
	local names = { {"HEAD", "INVTYPE_HEAD", "Head"}, {"SHOULDER", "INVTYPE_SHOULDER", "Shoulders"}, {"CHEST", "INVTYPE_CHEST", "Chest", "INVTYPE_ROBE"}, {"WRIST", "INVTYPE_WRIST", "Wrists"}, {"HAND", "INVTYPE_HAND", "Hands"}, {"WAIST", "INVTYPE_WAIST", "Waist"}, {"LEGS", "INVTYPE_LEGS", "Legs"}, {"FEET", "INVTYPE_FEET", "Feet"}, {"FINGER", "INVTYPE_FINGER", "Rings"}, {"BACK", "INVTYPE_CLOAK", "Back"}, {"NECK", "INVTYPE_NECK", "Necklace"}}
	--finds the item type to create a list of
	for _, b in pairs(names) do
		dataID = gsub(dataID, b[1], "")
		slotType = gsub(orgID, dataID, "")
		if slotType == b[1] then
			itemType = b[2]
			itemType2 = b[4]
			itemName = b[3]
			break
		end
	end
	--Creates data set of the item type
	if (AtlasLoot_TokenData[orgID] == nil) then
		AtlasLoot_TokenData[orgID] = {
			Name = itemName,
			Type = AtlasLoot_Data[dataID].Type,
			Back = true,
			NoSubt = true,
			[1] = { Name = itemName },
		}
	end
	local count = #AtlasLoot_Data[dataID][1] * #AtlasLoot_Data[dataID]
	local function addItem(itemID, desc)
		if itemType == select(9, GetItemInfo(itemID)) or itemType2 == select(9, GetItemInfo(itemID)) then
			table.insert(AtlasLoot_TokenData[orgID][1], {itemID = itemID, desc = desc})
		end
		if count == 1 then
			self:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
		end
		count = count - 1
	end
	--Fills table with items
	for _, t in ipairs(AtlasLoot_Data[dataID]) do
		for _, v in ipairs(t) do
			if type(v) == "table" then
				local item = Item:CreateFromID(v.itemID)
				if v.itemID and not item:GetInfo() then
					self:ItemsLoading(1)
					item:ContinueOnLoad(function()
						self:ItemsLoading(-1)
						addItem(v.itemID, t.Name)
					end)
				else
					addItem(v.itemID, t.Name)
				end
			end
		end
	end
end

--Creates a sorted and consolidated loottable of all of an xpacs dungeon loot
function AtlasLoot:CreateOnDemandLootTable(type)
	-- Return and show loot table if its already been created
	if AtlasLoot_OnDemand and AtlasLoot_OnDemand[type] then return self:ShowItemsFrame(type, "AtlasLoot_OnDemand", 1) end
	-- Create ondemand loot table if it dosnt exist
	if not AtlasLoot_OnDemand then AtlasLoot_OnDemand = {} end

	-- Text Conversion
	local equipSlot = {
		INVTYPE_HEAD = BabbleInventory["Head"], INVTYPE_SHOULDER = BabbleInventory["Shoulder"], INVTYPE_CHEST = BabbleInventory["Chest"],
		INVTYPE_WRIST = BabbleInventory["Wrist"], INVTYPE_HAND = BabbleInventory["Hands"], INVTYPE_WAIST = BabbleInventory["Waist"],
		INVTYPE_LEGS = BabbleInventory["Legs"], INVTYPE_FEET = BabbleInventory["Feet"], INVTYPE_FINGER = BabbleInventory["Ring"],
		INVTYPE_CLOAK = BabbleInventory["Back"], INVTYPE_NECK = BabbleInventory["Neck"], INVTYPE_WEAPONOFFHAND = BabbleInventory["Off Hand"],
		INVTYPE_WEAPONMAINHAND = "Mainhand", INVTYPE_TRINKET = "Trinket", INVTYPE_HOLDABLE = "Caster Offhand"}
	
	local function correctText(text)
		text = gsub(text, "Cloth Armor %- Back", "Back")
		text = gsub(text, "Miscellaneous Armor %- " , "")
		text = gsub(text, "Armor %- " , "Armor "..WHITE.."%- ")
		text = gsub(text, "Weapon %- " , WHITE.."%- ")
		return text
	end
	
	-- Combind robes with chest
	local function getEquip(equipLoc)
		if equipLoc == "INVTYPE_ROBE" then
			return "INVTYPE_CHEST"
		end
		return equipLoc
	end

	-- Show the loot table or refresh it
	local firstLoad
	local function showTable()
		if firstLoad then
			self:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
		else
			self:ShowItemsFrame(type, "AtlasLoot_OnDemand", 1)
			firstLoad = true
		end
	end

	local unsorted = {}
	-- Creates type catagorys and then adds items to them
	local function sortItem(item, armorSubType, equipLoc, armorType)
		if not unsorted[armorSubType] then unsorted[armorSubType] = {} end
		if equipLoc and not unsorted[armorSubType][getEquip(equipLoc)] then unsorted[armorSubType][getEquip(equipLoc)] = {} end
		if equipLoc then
			tinsert(unsorted[armorSubType][getEquip(equipLoc)], {item, armorType})
		else
			tinsert(unsorted[armorSubType]["Misc"], {item, armorType})
		end
		AtlasLoot_OnDemand[type] = {Name = "All Dungeon Items", Type = type, filter = true }

		for aType, v in pairs(unsorted) do
			for eLoc, t in pairs(v) do
				for i, items in ipairs(t) do
					local name = equipSlot[getEquip(eLoc)] and aType.." "..items[2].." - "..equipSlot[getEquip(eLoc)] or aType
					if #t > 30 and (i == 1 or i == 31 or i == 61 or i == 91)  then
						tinsert(AtlasLoot_OnDemand[type],{Name = correctText(name)..WHITE.." - Page".. math.ceil(i/30) })
					elseif i == 1 then
						tinsert(AtlasLoot_OnDemand[type],{Name = correctText(name)})
					end
					tinsert(AtlasLoot_OnDemand[type][#AtlasLoot_OnDemand[type]], items[1])
				end
			end
		end
		showTable()
	end

	-- Load items to cache and check they are either an armor or weapon
	local function processItem(itemData)
		if not itemData then return end
		local item = Item:CreateFromID(itemData.itemID)
		if itemData.itemID then
			if not item:GetInfo() then
				item:ContinueOnLoad(function()
					self:ItemsLoading(-1)
					local armorType, armorSubType, _, equipLoc = select(6,GetItemInfo(itemData.itemID))
					if (armorType == "Armor" or armorType == "Weapon") then
						sortItem(itemData, armorSubType, equipLoc, armorType)
					end
				end)
			else
				self:ItemsLoading(-1)
				local armorType, armorSubType, _, equipLoc = select(6,GetItemInfo(itemData.itemID))
				if (armorType == "Armor" or armorType == "Weapon") then
					sortItem(itemData, armorSubType, equipLoc, armorType)
				end
			end
		end
	end

	--Fills table with items
	local itemList = {}
	local checkList = {}
	for _, data in pairs(AtlasLoot_Data) do
		if data.Type == type then
			for _, t in ipairs(data) do
				for _, itemData in pairs(t) do
					if itemData.itemID and not checkList[itemData.itemID] then
						itemData.dropLoc = {data.DisplayName or data.Name, t.Name}
						checkList[itemData.itemID] = true
						tinsert(itemList, {itemData})
					end
				end
			end
		end
	end
	wipe(checkList)
	-- rate limit tied to half the current frame rate
	self:ItemsLoading(#itemList)
	local maxDuration = 500/GetFramerate()
	local startTime = debugprofilestop()
	local function continue()
		startTime = debugprofilestop()
		local task = tremove(itemList)
		while (task) do
			processItem(task[1])
			if (debugprofilestop() - startTime > maxDuration) then
				Timer.After(0, continue)
				return
			end
			task = tremove(itemList)
		end
	end

	return continue()
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
	if self.CurrentType ~= dataSource[dataID].Type then
		ItemindexID = self.type[dataSource[dataID].Type] or 2
		difType = true
	end

	-- Saves current types ItemindexID
	if dataSource[dataID].Type then
		self.type[dataSource[dataID].Type] = ItemindexID
	end
	-- Set current type
	self.CurrentType = dataSource[dataID].Type or "Default"

	-- Loads the difficultys into the scrollFrame
	if dataSource[dataID].ListType then
		self:ScrollFrameUpdate(nil,dataSource[dataID].ListType)
	else
		self:ScrollFrameUpdate()
	end

	-- Finds the tablenumber to set where the difficulty slider should be.
	local typeNumber = 1
	local function findTypeNumber()
		for i,v in ipairs(self.Difficultys[dataSource[dataID].Type]) do
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
	if dataSource[dataID].Type and difType and #self.Difficultys[dataSource[dataID].Type] > 5 and findTypeNumber() > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(typeNumber * (max / #self.Difficultys[dataSource[dataID].Type]))
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

	-- Sets the main page lable
	if dataSource[dataID][tablenum] and dataSource[dataID][tablenum].Name then
		AtlasLoot_BossName:SetText(dataSource[dataID][tablenum].Name)
	else
		AtlasLoot_BossName:SetText("This Is Empty")
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
		return
	end

	-- find the right itemID for the difficulty selected
	local function getProperItemConditionals(item)
		isValid = false
		toShow = true
		local itemDif = ItemindexID
		local itemID = item and item.itemID
		local orgItemID = itemID
		if item and item.itemID then
			itemID = item.itemID
			isValid = true

			if(item[self.Difficultys.MIN_DIF]) then
				if item[self.Difficultys.MIN_DIF] > itemDif then
					toShow = false
				end
				itemID = self:FindId(item.itemID, min(self:getMaxDifficulty(item.Type or dataSource[dataID].Type), itemDif), item.Type or dataSource[dataID].Type, dataSource[dataID].Type ) or item.itemID
			end

			if toShow then
				--Sets ItemindexID to normal(2) if it is nil for min/max difficulties.
				if not tonumber(itemDif) then itemDif = self.Difficultys.Normal end

				--Checks if an item has a Maximum difficulty, this is to correct some items that have an entry for higher difficulties then they really do
				if item[self.Difficultys.MAX_DIF] then
					if tonumber(item[self.Difficultys.MAX_DIF]) < itemDif then itemDif = item[self.Difficultys.MAX_DIF] end
				end
				--If something was found in itemID database show that if not show default table item
				itemID = self:FindId(item.itemID, itemDif, item.Type or dataSource[dataID].Type, dataSource[dataID].Type) or item.itemID
			end
		elseif item and (item.spellID or item.icon) or item and itemID then
			isValid = true
			toShow = true
		end
		local recipeID
		if item and item.spellID then
			recipeID = self:GetRecipeID(item.spellID)
		end
		return isValid, toShow, itemID, recipeID, orgItemID
	end

	-- Setup the button for the to be displayed item/spell
	local function setupButton(itemID, i, dataSource, dataID, tablenum, dataSource_backup)
		local text, extra
		local itemName, itemQuality, itemSubType, itemEquipLoc, itemColor
		local spellName, spellIcon
		--Use shortcuts for easier reference to parts of the item button
		local itemButton = _G["AtlasLootItem_"..i]
		local iconFrame  = _G["AtlasLootItem_"..i.."_Icon"]
		local nameFrame  = _G["AtlasLootItem_"..i.."_Name"]
		local extraFrame = _G["AtlasLootItem_"..i.."_Extra"]
		local hightlightFrame = _G["AtlasLootItem_"..i.."_Highlight"]
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
				text = select(4,GetItemQualityColor(select(3,GetItemInfo(itemID))))..text
			end
			--Adds button highlights if you know a recipe or have a char that knows one
			if CA_IsSpellKnown(spellID) then
				itemButton.hasTrade = true
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			else
				itemButton.hasTrade = false
				hightlightFrame:Hide()
				for key,v in pairs(self.db.profiles) do
					if gsub(key,"-",""):match(gsub(realmName,"-","")) and v.knownRecipes and v.knownRecipes[spellID] then
						hightlightFrame:SetTexture(itemHighlightBlue)
						hightlightFrame:Show()
					end
				end
			end
		elseif itemID then
			itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, _ = GetItemInfo(itemID)
				if not itemName then
					itemID = orgItemID
					itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, _ = GetItemInfo(itemID)
				end
			--If the client has the name of the item in cache, use that instead.					
			if dataSource[dataID][tablenum][i].name then
				--If it has a manuel entry use that
				text = dataSource[dataID][tablenum][i].name
				text = self:FixText(text)
			elseif itemName then
				_, _, _, itemColor = GetItemQualityColor(itemQuality)
				text = itemColor..itemName
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
			extra = "#setToken#"
		elseif itemEquipLoc and itemSubType then
			extra = "=ds="..itemEquipLoc..", "..itemSubType
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

		if dataSource[dataID][tablenum][i].price then
			extra = extra ..WHITE.." ("..dataSource[dataID][tablenum][i].price..")"
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
			iconFrame:SetTexture(GetItemIcon(dataSource[dataID][tablenum][i].itemID))
		elseif spellIcon then
			iconFrame:SetTexture(spellIcon)
		elseif dataSource[dataID][tablenum][i].itemID then
			iconFrame:SetTexture(GetItemIcon(itemID))
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

		itemButton.craftingData = self:RecipeSource(spellID)
		itemButton.tablenum = tablenum
		itemButton.dataID = dataID
		itemButton.dataSource = dataSource_backup
		itemButton.contentsPreview = dataSource[dataID][tablenum][i].contentsPreview
		itemButton.price = dataSource[dataID][tablenum][i].price or nil
		itemButton.droprate = dataSource[dataID][tablenum][i].droprate or nil
		itemButton.extraInfo = dataSource[dataID][tablenum][i].extraInfo or nil
		itemButton.quest = dataSource[dataID][tablenum][i].quest or nil
		itemButton.item = dataSource[dataID][tablenum][i]

		if dataSource[dataID][tablenum][i].lootTable then
			itemButton.sourcePage = dataSource[dataID][tablenum][i].lootTable
		else
			itemButton.sourcePage = nil
		end

		if dataSource[dataID][tablenum][i][self.Difficultys.DIF_SEARCH] then
			itemButton.difficulty = dataSource[dataID][tablenum][i][self.Difficultys.DIF_SEARCH]
		else
			itemButton.difficulty = ItemindexID
		end

		itemButton.i = 1
		itemButton:Show()
	end

	local function getItemData(itemID, i, orgItemID)
		local item = Item:CreateFromID(itemID)
		self:ItemsLoading(1)
		item:ContinueOnLoad(function(itemID)
			self:ItemsLoading(-1)
			setupButton(itemID, i, dataSource, dataID, tablenum, dataSource_backup)
		end)
	end

	-- Create the loottable
	if (dataID == "SearchResult") or (dataSource_backup == "AtlasLoot_CurrentWishList") or dataSource[dataID][tablenum] then

		--Iterate through each item object and set its properties
		for i = 1, 30, 1 do
			--Use shortcuts for easier reference to parts of the item button
			local itemButton = _G["AtlasLootItem_"..i]
			local hightlightFrame = _G["AtlasLootItem_"..i.."_Highlight"]
			--Check for a valid object (that it exists, and that it has a name
			isValid, toShow, itemID, recipeID, orgItemID = getProperItemConditionals(dataSource[dataID][tablenum][i])
			if isValid and toShow then
				hightlightFrame:Hide()
				if itemID then
					getItemData(itemID, i, orgItemID)
				elseif recipeID then
					getItemData(recipeID, i)
				else
					setupButton(itemID, i, dataSource, dataID, tablenum, dataSource_backup)
				end
			else
				itemButton:Hide()
				itemButton.itemID = nil
				itemButton.spellID = nil
				hightlightFrame:Hide()
				itemButton.hasTrade = false
			end
			if dataSource[itemID] then
				for _,ID in pairs(dataSource[itemID]) do
					local item = Item:CreateFromID(ID.itemID)
					if ID.itemID and not item:GetInfo() then
						self:ItemsLoading(1)
						item:ContinueOnLoad(function(itemID)
							self:ItemsLoading(-1)
						end)
					end
				end
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
	if dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_OnDemand" then
		--preload items from the rest of the instance table
		self:PreLoadLootTable(dataSource, dataID, ItemindexID)
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
AtlasLoot:ShowFavorites(button)
button: Identity of the button pressed to trigger the function
Shows the GUI for setting Quicklooks
]]
function AtlasLoot:ShowFavorites(button)
	if self.Dewdrop:IsOpen(button) then
		self.Dewdrop:Close(1)
	else
		local setOptions = function()
			self.Dewdrop:AddLine(
				"text", AL["Favorite"].." 1",
				"tooltipTitle", AL["Favorite"].." 1",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 1",
				"func", function()
                    if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][1]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][1]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], self.lastModule, self.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
					end

                    self.Dewdrop:Close(1)
				end
			)
			self.Dewdrop:AddLine(
				"text", AL["Favorite"].." 2",
				"tooltipTitle", AL["Favorite"].." 2",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 2",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][2]={AtlasLoot_CurrentWishList["Show"].ListType, 
						"AtlasLootWishList",
						AtlasLoot_CurrentWishList["Show"].ListNum, self.lastModule,
						self.currentTable,
						_G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][2]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], self.lastModule, self.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    self.Dewdrop:Close(1)
				end
			)
            self.Dewdrop:AddLine(
				"text", AL["Favorite"].." 3",
				"tooltipTitle", AL["Favorite"].." 3",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 3",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][3]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][3]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], self.lastModule, self.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    self.Dewdrop:Close(1)
				end
			)
            self.Dewdrop:AddLine(
				"text", AL["Favorite"].." 4",
				"tooltipTitle", AL["Favorite"].." 4",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 4",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][4]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][4]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], self.lastModule, self.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    self.Dewdrop:Close(1)
				end
			)
		end
		self.Dewdrop:Open(button,
			'point', function(parent)
				return "BOTTOMLEFT", "BOTTOMRIGHT"
			end,
			"children", setOptions
		)
	end
end

-- Used to precache all the items in a raid/instance
local isLoaded = {}
function AtlasLoot:PreLoadLootTable(dataSource, dataID, ItemindexID)
	if isLoaded[dataID] and isLoaded[dataID][ItemindexID] then return end
	for _, instance in ipairs(dataSource[dataID]) do
		for _, boss in pairs(instance) do
			if type(boss) == "table" then
				local itemID = ItemIDsDatabase[boss.itemID] and ItemIDsDatabase[boss.itemID][ItemindexID] or boss.itemID
				if itemID then
					local item = Item:CreateFromID(itemID)
					if item and not item:GetInfo() then
						self:ItemsLoading(1)
						item:ContinueOnLoad(function(itemID)
							self:ItemsLoading(-1)
						end)
					end
				end
			end
		end
	end
	if not isLoaded[dataID] then isLoaded[dataID] = {} end
	isLoaded[dataID][ItemindexID] = true
end




-- Loads the Item Variations into a table from the data content folder
function AtlasLoot:LoadItemIDsDatabase()
	local content = C_ContentLoader:Load("ItemVariationData")
	content:SetParser(function(index, data)
		-- run for each item in the data
	if index ~= 0 and data.Normal ~= 0 and not ItemIDsDatabase[data.Normal] then
			ItemIDsDatabase[data.Normal] = {}
			ItemIDsDatabase[data.Normal]["MythicRaid"] = tonumber("13"..data.Normal)
			table.insert(ItemIDsDatabase[data.Normal],data.Bloodforged)
			table.insert(ItemIDsDatabase[data.Normal],data.Normal)
			if data.Heroic ~= 0 then table.insert(ItemIDsDatabase[data.Normal],data.Heroic) end
				for _,v in ipairs(data["Mythic"]) do
					if v ~= 0 then
						table.insert(ItemIDsDatabase[data.Normal],v)
					end
				end
		end
	end)

	-- This will run over time (usually about 30s for a file this size), but will maintain playable fps while running.
	content:ParseAsync()
end

function AtlasLoot:PopulateProfessions()
	if not self.db.profile.knownRecipes then self.db.profile.knownRecipes = {} end
	for _,prof in pairs(TRADESKILL_RECIPES) do
	   for _,cat in pairs(prof) do
		  for _,recipe in pairs(cat) do
			 if CA_IsSpellKnown(recipe.SpellEntry) then
				self.db.profile.knownRecipes[recipe.SpellEntry] = true
			 end
		  end
	   end
	end
end


function AtlasLoot:LoadTradeskillRecipes()
	if TRADESKILL_RECIPES then return end
		TRADESKILL_RECIPES = {}
		TRADESKILL_CRAFTS = {}

		local fmtSubClass = "ITEM_SUBCLASS_%d_%d"
		local fmtTotem = "SPELL_TOTEM_%d"
		local fmtObject = "SPELL_FOCUS_OBJECT_%d"

		local content = C_ContentLoader:Load("TradeSkillRecipeData")

		local function GetToolName(toolID)
			return _G[format(fmtTotem, toolID)]
		end

		content:SetParser(function(_, data)
			if not TRADESKILL_RECIPES[data.SkillIndex] then
				TRADESKILL_RECIPES[data.SkillIndex] = {}
			end

			data.Category = _G[format(fmtSubClass, data.CreatedItemClass, data.CreatedItemSubClass)]

			if not TRADESKILL_RECIPES[data.SkillIndex][data.Category] then
				TRADESKILL_RECIPES[data.SkillIndex][data.Category] = {}
			end

			data.IsHighRisk = toboolean(data.IsHighRisk)

			-- reformat reagents
			data.Reagents = {}
			local reagents = data.ReagentData:SplitToTable(",")
			for _, reagentString in ipairs(reagents) do
				local item, count = reagentString:match("(%d*):(%d*)")
				item = tonumber(item)
				count = tonumber(count)
				if item and item ~= 0 and count and count ~= 0 then
					tinsert(data.Reagents, {item, count})
				end
			end

			if #data.Reagents > 0 then
				data.ReagentData = nil

				-- reformat tools (totems)
				data.Tools = data.TotemCategories:SplitToTable(",", GetToolName)
				data.TotemCategories = nil

				data.SpellFocusObject = _G[format(fmtObject, data.SpellFocusObject)]

				tinsert(TRADESKILL_RECIPES[data.SkillIndex][data.Category], data)
				if data.CreatedItemEntry > 0 then
					TRADESKILL_CRAFTS[data.CreatedItemEntry] = data
				end
			end
		end)

		content:Parse()
end

local function CollectionNames(cat)
	local C_names = {
		["Axe1H"] = "One-Handed Axes",
		["Axe2H"] = "Two-Handed Axes",
		["Sword1H"] = AL["One-Handed Sword"],
		["Sword2H"] = AL["Two-Handed Sword"],
		["Mace1H"] = AL["One-Handed Mace"],
		["Mace2H"] = AL["Two-Handed Mace"],
	}
	return C_names[cat] or cat
end

function AtlasLoot:CreateVanityCollection()
	local function findGroup(group)
		for cat,v in pairs(Enum.VanityCategory) do
			if type(v) == "table" then
				for catT, t in pairs(v) do
					if not AtlasLoot_Data[catT] then AtlasLoot_Data[catT] = { Name = CollectionNames(catT), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
					if bit.contains(group, t) then
						return catT
					end
				end
			else
				if not AtlasLoot_Data[cat] then AtlasLoot_Data[cat] = { Name = CollectionNames(cat), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
				if bit.contains(group, v) then
					return cat
				end
			end
		end
		if not AtlasLoot_Data["Uncategorized"] then AtlasLoot_Data["Uncategorized"] = { Name = CollectionNames("Uncategorized"), vanity = true, Module = "AtlasLoot_Ascension_Vanity" } end
		return "Uncategorized"
	end

	for _,item in pairs(VANITY_ITEMS) do
		local group = findGroup(item.group)
		if not group then break end
		if #AtlasLoot_Data[group] == 0 or #AtlasLoot_Data[group][#AtlasLoot_Data[group]] == 30 then
			tinsert(AtlasLoot_Data[group], {Name = "Page "..(#AtlasLoot_Data[group] +1)})
		end
		local contentsPreview
		if item.contentsPreview and #item.contentsPreview > 1 then
			contentsPreview = {}
			for _,itemID in pairs(item.contentsPreview) do
				tinsert(contentsPreview, { itemID = itemID })
			end
		end
		local description
		if item.description ~= "" then
			description = item.description
		end

		tinsert(AtlasLoot_Data[group][#AtlasLoot_Data[group]], { itemID = item.itemid, extraInfo = description, contentsPreview = contentsPreview, vanityItem = true })
	end
end