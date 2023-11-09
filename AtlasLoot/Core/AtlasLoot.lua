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
AtlasLoot:FindId(name, difficulty)
]]

AtlasLoot = LibStub("AceAddon-3.0"):NewAddon("AtlasLoot", "AceEvent-3.0", "AceTimer-3.0")

local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

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

-- Colours stored for code readability
local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local LIMEGREEN = "|cFF32CD32"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local YELLOW = "|cffFFd200"
local itemHighlightBlue = "Interface\\AddOns\\AtlasLoot\\Images\\knownBlue"
local itemHighlightGreen = "Interface\\AddOns\\AtlasLoot\\Images\\knownGreen"
--local itemHighlightBlue = "Interface\\AddOns\\AwAddons\\Textures\\LootTex\\Loot_Icon_Blue"
--local itemHighlightGreen = "Interface\\AddOns\\AwAddons\\Textures\\LootTex\\Loot_Icon_green"

--Search panel open and close save variables
--dataID, dataSource, pFrame, tablenumber
SearchPrevData = {"", "", ""}

AtlasLootCharDB = {}
AtlasLoot_TokenData = {}

local realmName = GetRealmName()

local AtlasLootDBDefaults = {
    profile = {
        SavedTooltips = {},
        SafeLinks = true,
        DefaultTT = true,
        LootlinkTT = false,
        ItemSyncTT = false,
        EquipCompare = false,
        Opaque = false,
        ItemIDs = false,
        ItemSpam = false,
        MinimapButton = false,
        FuBarAttached = true,
        FuBarText = true,
        FuBarIcon = true,
        LastBoss = "EmptyTable",
        AtlasLootVersion = "1",
        AtlasNaggedVersion = "",
        FuBarPosition = 1,
        LoadAllLoDStartup = false,
        PartialMatching = true,
        LootBrowserStyle = 1,
        MinimapButtonAngle = 240,
        MinimapButtonRadius = 75,
        LootBrowserScale = 1.0,
        SearchOn = {
            All = true,
        },
        AtlasType = "Release",
    }
}

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
    AtlasLoot.db = LibStub("AceDB-3.0"):New("AtlasLootDB")
    AtlasLoot.db:RegisterDefaults(AtlasLootDBDefaults)
	if not AtlasLootCharDB then AtlasLootCharDB = {} end
    if not AtlasLootCharDB["QuickLooks"] then AtlasLootCharDB["QuickLooks"] = {} end
	if not AtlasLootCharDB.SelectedFilter then AtlasLootCharDB.SelectedFilter = 1 end
	if not AtlasLootCharDB["SearchResult"] then AtlasLootCharDB["SearchResult"] = {Name = "Search Result" , Type = "Search", Back = true} end
	if not AtlasLootFilterDB then AtlasLootFilterDB = {["FilterLists"] = {{Name = "Default" }}} end
	if AtlasLootFilterDB and not AtlasLootFilterDB["FilterLists"] then AtlasLootFilterDB = {["FilterLists"] = {{Name = "Default" }}} end
    if AtlasLoot_Data then
        AtlasLoot_Data["EmptyTable"] = {
			Name = AL["Select a Loot Table..."],
			{Name = AL["Select a Loot Table..."]},
		}
    end

	if IsAddOnLoaded("TomTom") then
		AtlasLoot.TomTomLoaded = true
	end
	--Setup for minimap icon
	AtlasLoot:MinimapIconSetup()
    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	tinsert(UISpecialFrames, "AtlasLootDefaultFrame")
	--Set up options frame
	AtlasLoot:OptionsOnLoad()
    AtlasLoot:CreateOptionsInfoTooltips()
    --Set visual style for the loot browser
	if AtlasLoot.db.profile.LootBrowserStyle then
		AtlasLoot:SetSkin(AtlasLoot.skinKeys[AtlasLoot.db.profile.LootBrowserStyle][1])
	end

	--Disable options that don't have the supporting mods
	if( not LootLink_SetTooltip and (AtlasLoot.db.profile.LootlinkTT == true)) then
		AtlasLoot.db.profile.LootlinkTT = false
		AtlasLoot.db.profile.DefaultTT = true
	end
	if( not ItemSync and (AtlasLoot.db.profile.ItemSyncTT == true)) then
		AtlasLoot.db.profile.ItemSyncTT = false
		AtlasLoot.db.profile.DefaultTT = true
	end
	--If using an opaque items frame, change the alpha value of the backing texture
	if (AtlasLoot.db.profile.Opaque) then
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
		AtlasLoot:OptionsInit()
	end

	--If EquipCompare is available, use it
	if((EquipCompare_RegisterTooltip) and (AtlasLoot.db.profile.EquipCompare == true)) then
		EquipCompare_RegisterTooltip(AtlasLootTooltip)
	end

	if (AtlasLoot.db.profile.LoadAllLoDStartup == true) then
		AtlasLoot:LoadAllModules()
	else
		collectgarbage("collect")
	end
    local panel = _G["AtlasLootOptionsFrame"]
    panel.name=AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
    --Filter and wishlist options menus creates as part of the next 2 commands
	AtlasLoot:CreateWishlistOptions()
    panel = _G["AtlasLootHelpFrame"]
    panel.name=AL["Help"]
    panel.parent=AL["AtlasLoot"]
    InterfaceOptions_AddCategory(panel)
    if LibStub:GetLibrary("LibAboutPanel", true) then
        LibStub("LibAboutPanel").new(AL["AtlasLoot"], "AtlasLoot")
    end
    AtlasLoot:UpdateLootBrowserScale()
	local playerName = UnitName("player")
	-- Is wishlist item disabled on load or not
	if AtlasLootWishList["Options"][playerName]["AutoSortWishlist"] then
		AtlasLootItemsFrame_Wishlist_UnLock:Disable()
	else
		AtlasLootItemsFrame_Wishlist_UnLock:Enable()
	end
	AtlasLoot:LoadItemIDsDatabase()
	AtlasLoot:LoadTradeskillRecipes()
	AtlasLoot:PopulateProfessions()
	AtlasLoot:CreateVanityCollection()
end

function AtlasLoot:Reset(data)
    AtlasLootDefaultFrame:Hide()
    if data == "frames" then
		AtlasLootDefaultFrame:ClearAllPoints()
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        if AtlasLootFu then
            AtlasLootFu.db.profile.minimapPosition = 200
            AtlasLootFu:Hide()
            AtlasLootFu:Show()
        end
        AtlasLoot.db.profile.LootBrowserScale = 1.0
        AtlasLoot:UpdateLootBrowserScale()
    elseif data == "quicklooks" then
        AtlasLootCharDB["QuickLooks"] = {}
    elseif data == "wishlist" then
		AtlasLootWishList = {}
		AtlasLoot:WishlistSetup()
        AtlasLootCharDB["SearchResult"] = {}
        AtlasLootCharDB.LastSearchedText = ""
    elseif data == "all" then
		AtlasLootDefaultFrame:ClearAllPoints()
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        if AtlasLootFu then
            AtlasLootFu.db.profile.minimapPosition = 200
            AtlasLootFu:Hide()
            AtlasLootFu:Show()
        end
        AtlasLoot.db.profile.LootBrowserScale = 1.0
        AtlasLoot:UpdateLootBrowserScale()
        AtlasLootCharDB["QuickLooks"] = {}
        AtlasLootCharDB["SearchResult"] = {}
        AtlasLootCharDB.LastSearchedText = ""
		AtlasLootWishList = {}
		AtlasLoot:WishlistSetup()
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
		AtlasLoot:Reset("frames")
	elseif msg == AL["options"] then
		AtlasLoot:OptionsToggle()
	else
		AtlasLootDefaultFrame:Show()
	end
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
    if(AtlasLoot.db.profile.DefaultTT == true) then
		AtlasLoot:OptionsDefaultTTToggle()
	elseif(AtlasLoot.db.profile.LootlinkTT == true) then
		AtlasLoot:OptionsLootlinkTTToggle()
	elseif(AtlasLoot.db.profile.ItemSyncTT == true) then
		AtlasLoot:OptionsItemSyncTTToggle()
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
		AtlasLoot:SlashCommand(msg)
	end

	--Sets the default loot tables for the current expansion enabled on the server.
	local xpaclist = {"CLASSIC", "TBC", "WRATH"}
	AtlasLoot_Expac = xpaclist[GetAccountExpansionLevel()+1]
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
			AtlasLoot:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
		end
		count = count - 1
	end
	--Fills table with items
	for _, t in ipairs(AtlasLoot_Data[dataID]) do
		for _, v in ipairs(t) do
			if type(v) == "table" then
				local item = Item:CreateFromID(v.itemID)
				if v.itemID and not item:GetInfo() then
					AtlasLoot:ItemsLoading(1)
					item:ContinueOnLoad(function()
						AtlasLoot:ItemsLoading(-1)
						addItem(v.itemID, t.Name)
					end)
				else
					addItem(v.itemID, t.Name)
				end
			end
		end
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

	local isValid, toShow, itemID, recipeID
	SearchPrevData = {dataID, dataSource_backup, tablenum}

    --If the loot table name has not been passed, throw up a debugging statement
	if dataID == nil then
		DEFAULT_CHAT_FRAME:AddMessage("No dataID!")
        return
	end

	--Hide Advanced search if it is up and reshow Querybutton
	AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()

	AtlasLoot:HideFilterCreateButtons()

	--Hide Map and reshow lootbackground
	AtlasLootDefaultFrame_Map:Hide()
    AtlaslLoot_LootBackground:Show()
	AtlasLootItemsFrame:Show()

	-- Hide the Filter Check-Box
	AtlasLootFilterCheck:Hide()

	-- Hide the map header lable
	Atlasloot_HeaderLabel:Hide()
	local dataSource = _G[dataSource_backup] or AtlasLoot_Data
	-- Check to see if Atlas is loaded and the table has a map
	if dataSource_backup ~= "AtlasLoot_TokenData" and dataSource[dataID].Map then
		AtlasLootDefaultFrame_MapButton:Enable()
		-- Stops map reseting to default while still in the same raid/instance table
		if AtlasLootItemsFrame.refresh == nil or dataID ~= AtlasLootItemsFrame.refresh[1] then
			AtlasLoot.CurrentMap = dataSource[dataID].Map
			AtlasLoot:SetMapButtonText(AtlasLoot.CurrentMap)
		end
	else
		AtlasLootDefaultFrame_MapButton:Disable()
		AtlasLootDefaultFrame_MapButton:SetText("No Map")
	end

	if dataSource_backup == "AtlasLoot_CurrentWishList" then
		ATLASLOOT_CURRENT_WISHLIST_NUM = AtlasLoot_CurrentWishList["Show"].ListNum
	else
		AtlasLoot.itemUnlock = false
	end

	local difType = false
	-- Checks to see if type is the same
	if AtlasLoot.CurrentType ~= dataSource[dataID].Type then
		ItemindexID = AtlasLoot.type[dataSource[dataID].Type] or 2
		difType = true
	end

	-- Saves current types ItemindexID
	if dataSource[dataID].Type then
		AtlasLoot.type[dataSource[dataID].Type] = ItemindexID
	end
	-- Set current type
	AtlasLoot.CurrentType = dataSource[dataID].Type or "Default"

	-- Loads the difficultys into the scrollFrame
	if dataSource[dataID].ListType then
		AtlasLoot:ScrollFrameUpdate(nil,dataSource[dataID].ListType)
	else
		AtlasLoot:ScrollFrameUpdate()
	end

	-- Finds the tablenumber to set where the difficulty slider should be.
	local typeNumber = 1
	local function findTypeNumber()
		for i,v in ipairs(AtlasLoot_Difficulty[dataSource[dataID].Type]) do
			if v[2] == ItemindexID then
				typeNumber = i
				return i
			end
		end
	end

	-- Moves the difficulty scrollslider if the difficulty has changed
	if dataSource[dataID].Type and difType and #AtlasLoot_Difficulty[dataSource[dataID].Type] > 5 and findTypeNumber() > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(typeNumber * (max / #AtlasLoot_Difficulty[dataSource[dataID].Type]))
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
		AtlasLoot:SubTableScrollFrameUpdate(dataID, dataSource_backup, tablenum)
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
		local itemDif = ItemindexID
		local itemID = item and item.itemID
		if item and item.itemID then
			itemID = item.itemID
			isValid = true

			if(item[AtlasLoot_Difficulty.MIN_DIF]) then
				if item[AtlasLoot_Difficulty.MIN_DIF] > itemDif then
					toShow = false
				end
				itemID = AtlasLoot:FindId(item.itemID, min(AtlasLoot:getMaxDifficulty(dataSource[dataID].Type), itemDif),dataSource[dataID].Type) or item.itemID
			end

			if toShow then
				--Sets ItemindexID to normal(2) if it is nil for min/max difficulties.
				if not tonumber(itemDif) then itemDif = AtlasLoot_Difficulty.Normal end

				--Checks if an item has a Maximum difficulty, this is to correct some items that have an entry for higher difficulties then they really do
				if item[AtlasLoot_Difficulty.MAX_DIF] then
					if tonumber(item[AtlasLoot_Difficulty.MAX_DIF]) < itemDif then itemDif = item[AtlasLoot_Difficulty.MAX_DIF] end
				end
				--If something was found in itemID database show that if not show default table item
				itemID = itemDif ~= 2 and AtlasLoot:FindId(item.itemID, itemDif, dataSource[dataID].Type) or item.itemID

				if ItemindexID ~= "" and dataID == "SearchResult" then
					itemID = AtlasLoot:FindId(item[9], itemDif, dataSource[dataID].Type) or item.itemID
				end
			end
		elseif item and (item.spellID or item.icon) or item and itemID then
			isValid = true
			toShow = true
		end
		local recipeID
		if item and item.spellID then
			recipeID = AtlasLoot:GetRecipeID(item.spellID)
		end
		return isValid, toShow, itemID, recipeID
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
				text = AtlasLoot:FixText(text)
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
				for key,v in pairs(AtlasLoot.db.profiles) do
					if gsub(key,"-",""):match(gsub(realmName,"-","")) and v.knownRecipes and v.knownRecipes[spellID] then
						hightlightFrame:SetTexture(itemHighlightBlue)
						hightlightFrame:Show()
					end
				end
			end
		elseif itemID then
			itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, _ = GetItemInfo(itemID)
			--If the client has the name of the item in cache, use that instead.					
			if dataSource[dataID][tablenum][i].name then
				--If it has a manuel entry use that
				text = dataSource[dataID][tablenum][i].name
				text = AtlasLoot:FixText(text)
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
			end
		else
			if dataSource[dataID][tablenum][i].name then
				--If it has a manuel entry use that
				text = dataSource[dataID][tablenum][i].name
				text = AtlasLoot:FixText(text)
			else
				text = ""
			end
		end



		itemButton.name = text

		--Insert the item description
		if AtlasLoot.FixedItemText[dataSource[dataID][tablenum][i].itemID] then
			extra = AtlasLoot.FixedItemText[dataSource[dataID][tablenum][i].itemID]
		elseif dataSource[dataID][tablenum][i].desc then
			extra = dataSource[dataID][tablenum][i].desc
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

		local recipe = AtlasLoot:GetRecipeData(itemID, "item")
		if recipe and AtlasLoot_CraftingData["CraftingLevels"] and AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID] then
			local lvls = AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID]
			extra = extra ..WHITE.." ( "..lvls[1].." )"
		end

		extra = AtlasLoot:FixText(extra)

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
		if itemID and dataSource_backup ~= "AtlasLoot_CurrentWishList" and AtlasLootWishList["Options"][UnitName("player")]["Mark"] == true then
			local xitemexistwish, itemwishicons = AtlasLoot:WishListCheck(itemID, true)
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

		itemButton.craftingData = AtlasLoot:RecipeSource(spellID)
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

		if dataSource[dataID][tablenum][i][AtlasLoot_Difficulty.DIF_SEARCH] then
			itemButton.difficulty = dataSource[dataID][tablenum][i][AtlasLoot_Difficulty.DIF_SEARCH]
		else
			itemButton.difficulty = ItemindexID
		end

		itemButton.i = 1
		itemButton:Show()
	end

	local function getItemData(itemID, i)
		local item = Item:CreateFromID(itemID)
		AtlasLoot:ItemsLoading(1)
		item:ContinueOnLoad(function(itemID)
			AtlasLoot:ItemsLoading(-1)
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
			isValid, toShow, itemID, recipeID = getProperItemConditionals(dataSource[dataID][tablenum][i])
			if isValid and toShow then
				hightlightFrame:Hide()
				if itemID then
					getItemData(itemID, i)
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
						AtlasLoot:ItemsLoading(1)
						item:ContinueOnLoad(function(itemID)
							AtlasLoot:ItemsLoading(-1)
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

		if dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" and dataID ~= "FilterList"  and dataSource[dataID].Back ~= true and dataID ~= "EmptyTable" then
			if not AtlasLoot.db.profile.LastBoss or type(AtlasLoot.db.profile.LastBoss) ~= "table" then AtlasLoot.db.profile.LastBoss = {} end
			AtlasLoot.db.profile.LastBoss[AtlasLoot_Expac] = {dataID, dataSource_backup, tablenum, AtlasLoot.lastModule, AtlasLoot.currentTable, AtlasLoot.moduleName}
			AtlasLoot.db.profile[AtlasLoot.currentTable] = {dataID, dataSource_backup, tablenum, AtlasLoot.lastModule, AtlasLoot.currentTable, AtlasLoot.moduleName}
		end

		-- Checks dataID with submenus to stop filter button loading on certain tables
		local function filterCheck(find)
			local mtype = {"Crafting", "Reputations", "WorldEvents", "PVP", "Collections", "CollectionsAscension", "Vanity"}
			for _, t in pairs (mtype) do
				if AtlasLoot_SubMenus[t..AtlasLoot_Expac] then
					for _, v in ipairs (AtlasLoot_SubMenus[t..AtlasLoot_Expac]) do
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
		if filterCheck(dataID) ~= true then
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

		-- Show Wishlist buttons when a wishlist in showing
		if dataSource_backup == "AtlasLoot_CurrentWishList" then
			_G["AtlasLootItemsFrame_Wishlist_Options"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_Share"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_Swap"]:Show()
			_G["AtlasLootItemsFrame_Wishlist_UnLock"]:Show()
			if dataSource[dataID].ListType == "Shared" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Own")
			elseif dataSource[dataID].ListType == "Own" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Shared")
			end
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

		if dataSource[dataID].Back or AtlasLoot.backEnabled then
			_G["AtlasLootItemsFrame_BACK"]:Show()
		elseif dataID ~= "FilterList" then
			AtlasLootItemsFrame.refreshBack = {dataID, dataSource_backup, tablenum}
		end
	end

	--Anchor the item frame where it is supposed to be
	if AtlasLoot.filterEnable and dataID ~= "FilterList" then
		AtlasLoot:HideFilteredItems()
	end
	if dataID ~= "SearchResult" then
		--preload items from the rest of the instance table
		AtlasLoot:PreLoadLootTable(dataSource, dataID, ItemindexID)
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

--[[
AtlasLoot:LoadAllModules()
Used to load all available LoD modules
]]
function AtlasLoot:LoadAllModules()
	local modules = {"AtlasLoot_OriginalWoW", "AtlasLoot_BurningCrusade", "AtlasLoot_Crafting_OriginalWoW", "AtlasLoot_Crafting_TBC", "AtlasLoot_Crafting_Wrath", "AtlasLoot_WorldEvents", "AtlasLoot_WrathoftheLichKing", "AtlasLoot_Vanity"}
	local loadedModules = {}
	local flag = 0
	for _, module in pairs(modules) do
		loadedModules[module] = LoadAddOn(module)
	end

	for module, state in pairs(loadedModules) do
		if not state then
			LoadAddOn(module)
			flag = 1
		end
	end

	if flag == 1 then
		if AtlasLoot.DebugMessages then
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
	if AtlasLoot.Dewdrop:IsOpen(button) then
		AtlasLoot.Dewdrop:Close(1)
	else
		local setOptions = function()
			AtlasLoot.Dewdrop:AddLine(
				"text", AL["Favorite"].." 1",
				"tooltipTitle", AL["Favorite"].." 1",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 1",
				"func", function()
                    if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][1]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, AtlasLoot.lastModule, AtlasLoot.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][1]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLoot.lastModule, AtlasLoot.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
					end

                    AtlasLoot.Dewdrop:Close(1)
				end
			)
			AtlasLoot.Dewdrop:AddLine(
				"text", AL["Favorite"].." 2",
				"tooltipTitle", AL["Favorite"].." 2",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 2",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][2]={AtlasLoot_CurrentWishList["Show"].ListType, 
						"AtlasLootWishList",
						AtlasLoot_CurrentWishList["Show"].ListNum, AtlasLoot.lastModule,
						AtlasLoot.currentTable,
						_G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][2]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLoot.lastModule, AtlasLoot.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    AtlasLoot.Dewdrop:Close(1)
				end
			)
            AtlasLoot.Dewdrop:AddLine(
				"text", AL["Favorite"].." 3",
				"tooltipTitle", AL["Favorite"].." 3",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 3",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][3]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, AtlasLoot.lastModule, AtlasLoot.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][3]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLoot.lastModule, AtlasLoot.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    AtlasLoot.Dewdrop:Close(1)
				end
			)
            AtlasLoot.Dewdrop:AddLine(
				"text", AL["Favorite"].." 4",
				"tooltipTitle", AL["Favorite"].." 4",
				"tooltipText", AL["Assign this loot table\n to Favorite"].." 4",
				"func", function()
					if AtlasLootItemsFrame.refresh[2] == "AtlasLoot_CurrentWishList" then
						AtlasLootCharDB["QuickLooks"][4]={AtlasLoot_CurrentWishList["Show"].ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList["Show"].ListNum, AtlasLoot.lastModule, AtlasLoot.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList["Show"].ListType][AtlasLoot_CurrentWishList["Show"].ListNum].Name}
					else
						AtlasLootCharDB["QuickLooks"][4]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLoot.lastModule, AtlasLoot.currentTable, _G[AtlasLootItemsFrame.refreshOri[2]][AtlasLootItemsFrame.refreshOri[1]][AtlasLootItemsFrame.refreshOri[3]].Name}
                    end

                    AtlasLoot.Dewdrop:Close(1)
				end
			)
		end
		AtlasLoot.Dewdrop:Open(button,
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
			local itemID = ItemIDsDatabase[boss.itemID] and ItemIDsDatabase[boss.itemID][ItemindexID] or boss.itemID
			if itemID then
				local item = Item:CreateFromID(itemID)
				if item and not item:GetInfo() then
					AtlasLoot:ItemsLoading(1)
					item:ContinueOnLoad(function(itemID)
						AtlasLoot:ItemsLoading(-1)
					end)
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
	if not AtlasLoot.db.profile.knownRecipes then AtlasLoot.db.profile.knownRecipes = {} end
	for _,prof in pairs(TRADESKILL_RECIPES) do
	   for _,cat in pairs(prof) do
		  for _,recipe in pairs(cat) do
			 if CA_IsSpellKnown(recipe.SpellEntry) then
				AtlasLoot.db.profile.knownRecipes[recipe.SpellEntry] = true
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

local CollectionNames = {
	 ["Convenience"] = "Convenience",
	 ["Mounts"] = "Mounts",
	 ["Pets"] = "Pets",
	 ["Toys"] = "Toys",
	 ["Seasonal"] = "Seasonal",
	 ["Consumable"] = "Consumable",
	 ["Axe1H"] = "One-Handed Axes",
	 ["Axe2H"] = "Two-Handed Axes",
	 ["Sword1H"] = AL["One-Handed Sword"],
	 ["Sword2H"] = AL["Two-Handed Sword"],
	 ["Mace1H"] = AL["One-Handed Mace"],
	 ["Mace2H"] = AL["Two-Handed Mace"],
	 ["Dagger"] = "Dagger",
	 ["Fist"] = "Fist",
	 ["Shield"] = "Shield",
	 ["Polearm"] = "Polearm",
	 ["Bow"] = "Bow",
	 ["Gun"] = "Gun",
	 ["Crossbow"] = "Crossbow",
	 ["Thrown"] = "Thrown",
	 ["Wand"] = "Wand",
	 ["Staff"] = "Staff",
	 ["FishingPole"] = "FishingPole",
	 ["OffHand"] = "OffHand",
	 ["Head"] = "Head",
	 ["Shoulder"] = "Shoulder",
	 ["Chest"] = "Chest",
	 ["Waist"] = "Waist",
	 ["Legs"] = "Legs",
	 ["Feet"] = "Feet",
	 ["Wrist"] = "Wrist",
	 ["Hands"] = "Hands",
	 ["Back"] = "Back",
	 ["Cloth"] = "Cloth",
	 ["Leather"] = "Leather",
	 ["Mail"] = "Mail",
	 ["Plate"] = "Plate",
	 ["Sets"] = "Sets",
	 ["Visual"] = "Visual",
	 ["Effect"] = "Effect",
	 ["Incarnation"] = "Incarnation",
	 ["Shirt"] = "Shirt",
	 ["Tabard"] = "Tabard",
	 ["Backpack"] = "Backpack",
	 ["Illusion"] = "Illusion",
	 ["Whistle"] = "Whistle",
	 ["SummonStone"] = "SummonStone",
	 ["Vellum"] = "Vellum",
	 ["Warhorn"] = "Warhorn",
	 ["Lodestone"] = "Lodestone",
}

function AtlasLoot:CreateVanityCollection()

	local function findGroup(group)
		for cat,v in pairs(Enum.VanityCategory) do
			if type(v) == "table" then
				for catT, t in pairs(v) do
					if not AtlasLoot_Data[catT] then AtlasLoot_Data[catT] = { Name = CollectionNames[catT] } end
					if bit.contains(group, t) then
						return catT
					end
				end
			else
				if not AtlasLoot_Data[cat] then AtlasLoot_Data[cat] = { Name = CollectionNames[cat] } end
				if bit.contains(group, v) then
					return cat
				end
			end
		end
	end

	for _,item in pairs(VANITY_ITEMS) do
		local group = findGroup(item.group)
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