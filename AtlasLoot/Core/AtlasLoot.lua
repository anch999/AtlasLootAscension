--[[
Atlasloot Enhanced
Author Daviesh / Reworked by Deim of PrimalWoW / Reworked again for Ascension
Loot browser associating loot with instance bosses
Can be integrated with Atlas (http://www.atlasmod.com)

Functions:
AtlasLoot_OnEvent(event)
AtlasLoot_ShowMenu()
AtlasLoot_OnVariablesLoaded()
AtlasLoot_SlashCommand(msg)
AtlasLootOptions_Toggle()
AtlasLoot_OnLoad()
AtlasLootBoss_OnClick()
AtlasLoot_ShowItemsFrame()
AtlasLoot_GenerateAtlasMenu(dataID, pFrame)
AtlasLoot_SetItemInfoFrame()
AtlasLootMenuItem_OnClick()
AtlasLoot_NavButton_OnClick()
AtlasLoot_IsLootTableAvailable(dataID)
AtlasLoot_GetLODModule(dataSource)
AtlasLoot_LoadAllModules()
AtlasLoot_ShowQuickLooks(button)
AtlasLoot_RefreshQuickLookButtons()
AtlasLoot_AddTooltip(frameb, tooltiptext)
AL_FindId(name, difficulty)
]]

AtlasLoot = LibStub("AceAddon-3.0"):NewAddon("AtlasLoot", "AceTimer-3.0");

--Instance required libraries
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

--Establish version number and compatible version of Atlas
local VERSION_MAJOR = "5";
local VERSION_MINOR = "11";
local VERSION_BOSSES = "04";
ATLASLOOT_VERSION = "|cffFF8400AtlasLoot Ascension Edition|r";
--Now allows for multiple compatible Atlas versions.  Always put the newest first
ATLASLOOT_CURRENT_ATLAS = {"1.17.1", "1.17.0"};
ATLASLOOT_PREVIEW_ATLAS = {"1.17.3", "1.17.2"};

ATLASLOOT_POSITION = AL["Position:"];
ATLASLOOT_DEBUGMESSAGES = false;

--Standard indent to line text up with Atlas text
ATLASLOOT_INDENT = "   ";

--Make the Dewdrop menu in the standalone loot browser accessible here
AtlasLoot_Dewdrop = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropSubMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropExpansionMenu = AceLibrary("Dewdrop-2.0");
--Variable to cap debug spam
ATLASLOOT_DEBUGSHOWN = false;
ATLASLOOT_FILTER_ENABLE = false;

-- Colours stored for code readability
local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

--Search panel open and close save variables
--dataID, dataSource, boss, pFrame, tablenumber
SearchPrevData = {"", "", "", "", ""};

AtlasLootCharDB = {};
AtlasLoot_TokenData = {};

local AtlasLootDBDefaults = {
    profile = {
        SavedTooltips = {},
        SafeLinks = true,
        DefaultTT = true,
        LootlinkTT = false,
        ItemSyncTT = false,
        EquipCompare = false,
		ItemAutoQuery = false,
        Opaque = false,
        ItemIDs = false,
        ItemSpam = false,
        MinimapButton = false,
        FuBarAttached = true,
        FuBarText = true,
        FuBarIcon = true,
        HidePanel = false,
        LastBoss = "EmptyTable",
        AtlasLootVersion = "1",
        AtlasNaggedVersion = "",
        FuBarPosition = 1,
		SubtablePosition = false,
		AutoQuery = false,
        LoadAllLoDStartup = false,
        PartialMatching = true,
        LootBrowserStyle = 1,
        CraftingLink = 1,
        MinimapButtonAngle = 240,
        MinimapButtonRadius = 75,
        LootBrowserScale = 1.0,
        SearchOn = {
            All = true,
        },
        AtlasType = "Release";
    }
}

AtlasLoot_MenuList = {
	"PVPSET",
	"PVP70RepSET",
	"ARENASET",
	"ARENA2SET",
	"ARENA3SET",
	"ARENA4SET",
};

-- Popup Box for first time users
StaticPopupDialogs["ATLASLOOT_SETUP"] = {
  text = AL["Welcome to Atlasloot Enhanced.  Please take a moment to set your preferences."],
  button1 = AL["Setup"],
  OnAccept = function()
	  AtlasLootOptions_Toggle();
  end,
  timeout = 0,
  whileDead = 1,
  hideOnEscape = 1
};

--[[
AtlasLoot_OnEvent(event):
event - Name of the event, passed from the API
Invoked whenever a relevant event is detected by the engine.  The function then
decides what action to take depending on the event.
]]
function AtlasLoot_OnEvent(event)
	--Addons all loaded
	if(event == "VARIABLES_LOADED") then
		AtlasLoot_OnVariablesLoaded();
	--Taint errors
    elseif(event == "PLAYER_ENTERING_WORLD") then
        AtlasLootOptions_MinimapToggle();
        AtlasLootOptions_MinimapToggle();
	elseif(arg1 == "AtlasLoot") then
		--Junk command to suppress taint message
		local i=3;
	end
end

--[[
AtlasLoot_ShowMenu:
Legacy function used in Cosmos integration to open the loot browser
]]
function AtlasLoot_ShowMenu()
	AtlasLootDefaultFrame:Show();
end

--[[
AtlasLoot_OnVariablesLoaded:
Invoked by the VARIABLES_LOADED event.  Now that we are sure all the assets
the addon needs are in place, we can properly set up the mod
]]
function AtlasLoot_OnVariablesLoaded()
	local AtlasCheck = false;
    AtlasLoot.db = LibStub("AceDB-3.0"):New("AtlasLootDB");
    AtlasLoot.db:RegisterDefaults(AtlasLootDBDefaults);
	if not AtlasLootCharDB then AtlasLootCharDB = {} end
	if not AtlasLootCharDB["WishList"] then AtlasLootCharDB["WishList"] = {} end
    if not AtlasLootCharDB["QuickLooks"] then AtlasLootCharDB["QuickLooks"] = {} end
	if not AtlasLootCharDB["SearchResult"] then AtlasLootCharDB["SearchResult"] = {} end
    if AtlasLoot_Data then
        AtlasLoot_Data["EmptyTable"] = {
			Name = AL["Select a Loot Table..."];
			{Name = AL["Select a Loot Table..."]};
		};
    end

    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	tinsert(UISpecialFrames, "AtlasLootDefaultFrame");
	--Set up options frame
	AtlasLootOptions_OnLoad();
    AtlasLoot_CreateOptionsInfoTooltips();
    --Set visual style for the loot browser
    if( not AtlasLoot.db.profile.CraftingLink ) then
        AtlasLoot.db.profile.CraftingLink = 1;
    end
    if( AtlasLoot.db.profile.LootBrowserStyle == 1 ) then
        AtlasLoot_SetNewStyle("new");
    else
        AtlasLoot_SetNewStyle("old");
    end
	--Disable options that don't have the supporting mods
	if( not LootLink_SetTooltip and (AtlasLoot.db.profile.LootlinkTT == true)) then
		AtlasLoot.db.profile.LootlinkTT = false;
		AtlasLoot.db.profile.DefaultTT = true;
	end
	if( not ItemSync and (AtlasLoot.db.profile.ItemSyncTT == true)) then
		AtlasLoot.db.profile.ItemSyncTT = false;
		AtlasLoot.db.profile.DefaultTT = true;
	end
	--If using an opaque items frame, change the alpha value of the backing texture
	if (AtlasLoot.db.profile.Opaque) then
		AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 1);
	else
		AtlasLootItemsFrame_Back:SetTexture(0, 0, 0, 0.65);
	end

	AtlasLootItemsFrame:Hide();

	--Check and migrate old WishList entry format to the newer one
	if(((AtlasLootCharDB.AtlasLootVersion == nil) or (tonumber(AtlasLootCharDB.AtlasLootVersion) < 40301)) and AtlasLootCharDB and AtlasLootCharDB["WishList"] and #AtlasLootCharDB["WishList"]~=0) then
		--Check if we really need to do a migration since it will load all modules
		--We also create a helper table here which store IDs that need to search for
		local idsToSearch = {};
		for i = 1, #AtlasLootCharDB["WishList"] do
			if (AtlasLootCharDB["WishList"][i][1] > 0 and not AtlasLootCharDB["WishList"][i][5]) then
				tinsert(idsToSearch, i, AtlasLootCharDB["WishList"][i][1]);
			end
		end
		if #idsToSearch > 0 then
			--Let's do this
			AtlasLoot_LoadAllModules();
			for _, dataSource in ipairs(AtlasLoot_SearchTables) do
				if AtlasLoot_Data[dataSource] then
					for dataID, lootTable in pairs(AtlasLoot_Data[dataSource]) do
						for _, entry in ipairs(lootTable) do
							for k, v in pairs(idsToSearch) do
								if(entry[1] == v)then
									AtlasLootCharDB["WishList"][k][5] = dataID.."|"..dataSource;
									break;
								end
							end
						end
					end
				end
			end
		end
		AtlasLootCharDB.AtlasLootVersion = VERSION_MAJOR..VERSION_MINOR..VERSION_BOSSES;
	end
	if((AtlasLootCharDB.AtlasLootVersion == nil) or (tonumber(AtlasLootCharDB.AtlasLootVersion) < 40301)) then
		AtlasLootCharDB.AtlasLootVersion = VERSION_MAJOR..VERSION_MINOR..VERSION_BOSSES;
		AtlasLootCharDB.AutoQuery = false;
		AtlasLootOptions_Init();
	end
	--Adds an AtlasLoot button to the Feature Frame in Cosmos
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
			{
				id = string.sub(ATLASLOOT_VERSION, 11, 28);
				name = string.sub(ATLASLOOT_VERSION, 11, 28);
				subtext = string.sub(ATLASLOOT_VERSION, 30, 39);
				tooltip = "";
				icon = "Interface\\Icons\\INV_Box_01";
				callback = AtlasLoot_ShowMenu;
				test = nil;
			}
	);
	--Adds AtlasLoot to old style Cosmos installations
	elseif(Cosmos_RegisterButton) then
		Cosmos_RegisterButton(
			string.sub(ATLASLOOT_VERSION, 11, 28),
			string.sub(ATLASLOOT_VERSION, 11, 28),
			"",
			"Interface\\Icons\\INV_Box_01",
			AtlasLoot_ShowMenu
		);
	end
	--Set up the menu in the loot browser
	AtlasLoot_DewdropRegister();
	AtlasLoot_DewdropExpansionMenuRegister();
	--If EquipCompare is available, use it
	if((EquipCompare_RegisterTooltip) and (AtlasLoot.db.profile.EquipCompare == true)) then
		EquipCompare_RegisterTooltip(AtlasLootTooltip);
	end

	if (AtlasLoot.db.profile.LoadAllLoDStartup == true) then
		AtlasLoot_LoadAllModules();
	else
		collectgarbage("collect");
	end
    panel = getglobal("AtlasLootOptionsFrame");
    panel.name=AL["AtlasLoot"];
    InterfaceOptions_AddCategory(panel);
    --Filter and wishlist options menus creates as part of the next 2 commands
    AtlasLoot_CreateFilterOptions();
	AtlasLoot_CreateWishlistOptions();
    panel = getglobal("AtlasLootHelpFrame");
    panel.name=AL["Help"];
    panel.parent=AL["AtlasLoot"];
    InterfaceOptions_AddCategory(panel);
    if LibStub:GetLibrary("LibAboutPanel", true) then
        LibStub("LibAboutPanel").new(AL["AtlasLoot"], "AtlasLoot");
    end
    AtlasLoot_UpdateLootBrowserScale();
end

function AtlasLoot_Reset(data)
    AtlasLootDefaultFrame:Hide();
    if AtlasFrame then
        AtlasFrame:Hide();
    end
    if data == "frames" then
		AtlasLootDefaultFrame:ClearAllPoints();
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0);
        if AtlasLootFu then
            AtlasLootFu.db.profile.minimapPosition = 200;
            AtlasLootFu:Hide();
            AtlasLootFu:Show();
        end
        AtlasLoot.db.profile.LootBrowserScale = 1.0;
        AtlasLoot_UpdateLootBrowserScale();
    elseif data == "quicklooks" then
        AtlasLootCharDB["QuickLooks"] = {};
        AtlasLoot_RefreshQuickLookButtons();
    elseif data == "wishlist" then
        AtlasLootCharDB["WishList"] = {};
        AtlasLootCharDB["SearchResult"] = {};
        AtlasLootCharDB.LastSearchedText = "";
    elseif data == "all" then
		AtlasLootDefaultFrame:ClearAllPoints();
		AtlasLootDefaultFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0);
        if AtlasLootFu then
            AtlasLootFu.db.profile.minimapPosition = 200;
            AtlasLootFu:Hide();
            AtlasLootFu:Show();
        end
        AtlasLoot.db.profile.LootBrowserScale = 1.0;
        AtlasLoot_UpdateLootBrowserScale();
        AtlasLootCharDB["QuickLooks"] = {};
        AtlasLoot_RefreshQuickLookButtons();
        AtlasLootCharDB["WishList"] = {};
        AtlasLootCharDB["SearchResult"] = {};
        AtlasLootCharDB.LastSearchedText = "";
    end
    DEFAULT_CHAT_FRAME:AddMessage(BLUE..AL["AtlasLoot"]..": "..RED..AL["Reset complete!"]);
end


--[[
AtlasLoot_SlashCommand(msg):
msg - takes the argument for the /atlasloot command so that the appropriate action can be performed
If someone types /atlasloot, bring up the options box
]]
function AtlasLoot_SlashCommand(msg)
	if msg == AL["reset"] then
		AtlasLoot_Reset("frames");
	elseif msg == AL["options"] then
		AtlasLootOptions_Toggle();
	else
		AtlasLootDefaultFrame:Show();
	end
end

--[[
AtlasLootOptions_Toggle:
Toggle on/off the options window
]]
function AtlasLootOptions_Toggle()
    if InterfaceOptionsFrame_OpenToCategory then
	    InterfaceOptionsFrame_OpenToCategory(AL["AtlasLoot"]);
    else
        InterfaceOptionsFrame_OpenToFrame(AL["AtlasLoot"]);
    end
    InterfaceOptionsFrame:SetFrameStrata("DIALOG");
    if(AtlasLoot.db.profile.DefaultTT == true) then
		AtlasLootOptions_DefaultTTToggle();
	elseif(AtlasLoot.db.profile.LootlinkTT == true) then
		AtlasLootOptions_LootlinkTTToggle();
	elseif(AtlasLoot.db.profile.ItemSyncTT == true) then
		AtlasLootOptions_ItemSyncTTToggle();
    end
end

--[[
AtlasLoot_OnLoad:
Performs inital setup of the mod and registers it for further setup when
the required resources are in place
]]
function AtlasLoot_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("ADDON_ACTION_FORBIDDEN");
	this:RegisterEvent("ADDON_ACTION_BLOCKED");
	--Enable the use of /al or /atlasloot to open the loot browser
	SLASH_ATLASLOOT1 = "/atlasloot";
	SLASH_ATLASLOOT2 = "/al";
	SlashCmdList["ATLASLOOT"] = function(msg)
		AtlasLoot_SlashCommand(msg);
	end

	--Sets the default loot tables for the current expansion enabled on the server.
	local function getExpac()
		local xpaclist = {"CLASSIC", "TBC", "WRATH"};
		AtlasLoot_Expac = xpaclist[GetAccountExpansionLevel()+1];
	end
	getExpac();
	AtlasLoot:GenerateTokenTables() 

end

function AtlasLoot:CleandataID(newID, listnum)
	local cleanlist = {	[1] = {"CLASSIC", "TBC", "WRATH"} };
	for i = 1, #cleanlist[listnum] do
		newID = gsub(newID, cleanlist[listnum][i], "");
	end
	return newID;
end

function AtlasLoot:GenerateTokenTables() 
	local Tiers = {"T1", "T2", "T2.5", "T3", "T4", "T5", "T6"};
	local Slots = {"HEAD", "SHOULDERS", "CHEST", "WRIST", "HAND", "WAIST", "LEGS", "FEET", "FINGER"};

	for v = 1, #Tiers do
		for k = 1, #Slots do
			AtlasLoot:CreateToken(Tiers[v]..Slots[k]);
		end
	end
end

--Creates tables for raid tokens from the collections tables
function AtlasLoot:CreateToken(dataID)
	local itemType, slotType, itemName, itemType2
	--orginal dataID
	local orgID = dataID;
	--list of item types to find
	local names = { {"HEAD", "INVTYPE_HEAD", "Head"}, {"SHOULDER", "INVTYPE_SHOULDER", "Shoulders"}, {"CHEST", "INVTYPE_CHEST", "Chest", "INVTYPE_ROBE"}, {"WRIST", "INVTYPE_WRIST", "Wrists"}, {"HAND", "INVTYPE_HAND", "Hands"}, {"WAIST", "INVTYPE_WAIST", "Waist"}, {"LEGS", "INVTYPE_LEGS", "Legs"}, {"FEET", "INVTYPE_FEET", "Feet"}, {"FINGER", "INVTYPE_FINGER", "Rings"}};
	--finds the item type to create a list of
	for a, b in pairs(names) do
		dataID = gsub(dataID, b[1], "");
		slotType = gsub(orgID, dataID, "");
		if slotType == b[1] then
			itemType = b[2];
			itemType2 = b[4];
			itemName = b[3];
			break;
		end
	end
	--Creates data set of the item type
	if (AtlasLoot_TokenData[orgID] == nil) then
		AtlasLoot_TokenData[orgID] = {
			Name = itemName;
			Type = AtlasLoot_Difficulty.Ascended;
			Back = true;
			NoSubt = true;
		};
	end

	AtlasLoot_TokenData[orgID][1] = {
		Name = itemName;
	};

	for _, t in ipairs(AtlasLoot_Data[dataID]) do
		for _, v in ipairs(t) do
			if type(v) == "table" then
				local itemID = v[2]; --AL_FindId(id[2], ItemindexID);
				local item = Item:CreateFromID(itemID);
				item:ContinueOnLoad(function(itemID)
					if itemType == select(9, GetItemInfo(itemID)) or itemType2 == select(9, GetItemInfo(itemID)) then
						table.insert(AtlasLoot_TokenData[orgID][1], {#AtlasLoot_TokenData[orgID][1] + 1, v[2], v[3], v[4], v[5]});
					end
				end)
			end
		end
	end
end

--[[
AtlasLoot_ShowItemsFrame(dataID, dataSource, boss, pFrame):
dataID - Name of the loot table
dataSource - Table in the database where the loot table is stored
boss - Text string to use as a title for the loot page
pFrame - Data structure describing how and where to anchor the item frame (more details, see the function AtlasLoot_SetItemInfoFrame)
tablenum - Table number of the loot table being displayed
It is the workhorse of the mod and allows the loot tables to be displayed any way anywhere in any mod.
]]
function AtlasLoot_ShowItemsFrame(dataID, dataSource, boss, pFrame, tablenum)
	--Set up local variables needed for GetItemInfo, etc
	local itemName, itemLink, itemQuality, itemLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture, itemColor;
	local iconFrame, nameFrame, extraFrame, itemButton;
	local text, extra;
	local isValid, isItem, toShow, IDfound;
	local spellName, spellIcon;

	SearchPrevData = {dataID, dataSource, boss, pFrame, tablenum};

    --If the loot table name has not been passed, throw up a debugging statement
	if dataID == nil then
		DEFAULT_CHAT_FRAME:AddMessage("No dataID!");
        return;
	end

	--Check to see if Atlas is loaded and the table has a map
	if dataSource[dataID].Map and IsAddOnLoaded("Atlas") then
		AtlasLootDefaultFrame_MapButton:Show();
	else
		AtlasLootDefaultFrame_MapButton:Hide();
	end

	--Hide Advanced search if it is up and reshow Querybutton
	AtlasLootDefaultFrame_AdvancedSearchPanel:Hide();

    --Ditch the Quicklook selector
    AtlasLoot_QuickLooks:Hide();
    AtlasLootQuickLooksButton:Hide();
	
	--Hide Map and reshow lootbackground
	AtlasLootDefaultFrame_Map:Hide();
    AtlasLootDefaultFrame_LootBackground:Show();

	-- Hide the Filter Check-Box
	AtlasLootFilterCheck:Hide();

	if dataID ~= "SearchResult" and dataID ~= "WishList" and dataSource ~= AtlasLoot_TokenData then
		dataSource = AtlasLoot_Data;
	end
	if dataID == "SearchResult" then
		dataSource = AtlasLootCharDB;
    end

	AtlasLoot_CurrentType = dataSource[dataID].Type or "";
	AtlasLoot:ScrollFrameUpdate();
	AtlasLoot_BossName:SetText(dataSource[dataID][tablenum].Name);

	--For stopping the subtable from changing if its a token table
	if dataSource[dataID].NoSubt == nil then
		AtlasLootDefaultFrame_SubMenu:SetText(dataSource[dataID].Name);
		AtlasLoot:SubTableScrollFrameUpdate(dataID, dataSource, pFrame, tablenum);
	end

	--Hide UI objects so that only needed ones are shown
	for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i.."_Unsafe"):Hide();
        getglobal("AtlasLootItem_"..i):Hide();
        getglobal("AtlasLootItem_"..i).itemID = 0;
        getglobal("AtlasLootItem_"..i).spellitemID = 0;
	end

	local function getProperItemConditionals(item)
		isValid = false; 
		toShow = true; 
		isItem = false;
		local itemDif = ItemindexID;

		if(item ~= nil and item ~= "") then
			IDfound = item[2];
			isValid = true;
			if type(ItemindexID) == "string" then
				IDfound = item[2];
				toShow = true;
			else
				if(item[AtlasLoot_Difficulty.MIN_DIF]) then
					if item[AtlasLoot_Difficulty.MIN_DIF] > itemDif then 
						toShow = false; 
					end
				end
				IDfound = AL_FindId(item[2], min(AtlasLoot_Difficulty:getMaxDifficulty(dataSource[dataID].Type), itemDif)) or item[2];
			end

			if string.sub(IDfound, 1, 1) == "s" then
				IDfound = AL_FindId(item[2], itemDif) or item[2];
			else
				isItem = true;
			end

			if isItem and toShow then
				--Sets ItemindexID to normal(2) if it is nil for min/max difficulties.
				if not tonumber(itemDif) then itemDif = AtlasLoot_Difficulty.Normal end;

				--Checks if an item has a Maximum difficulty, this is to correct some items that have an entry for higher difficulties then they really do
				if item[AtlasLoot_Difficulty.MAX_DIF] then
					if tonumber(item[AtlasLoot_Difficulty.MAX_DIF]) < itemDif then itemDif = item[AtlasLoot_Difficulty.MAX_DIF] end;
				end
				--If something was found in itemID database show that if not show default table item
				IDfound = AL_FindId(item[2], itemDif) or item[2];

				if ItemindexID ~= "" and dataID == "SearchResult" then
					IDfound = AL_FindId(item[9], itemDif) or item[2];
				end
			end
		end

		return isValid, isItem, toShow, IDfound
	end

	-- Create the loottable
	if (dataID == "SearchResult") or (dataID == "WishList") or dataSource[dataID][tablenum] then
		--Iterate through each item object and set its properties
		for i = 1, 30, 1 do
			--Check for a valid object (that it exists, and that it has a name
			getProperItemConditionals(dataSource[dataID][tablenum][i]);
			
			if isValid and toShow then
				if isItem then
					itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture = GetItemInfo(IDfound);
					--If the client has the name of the item in cache, use that instead.
					--This is poor man's localisation, English is replaced be whatever is needed
					if(GetItemInfo(IDfound)) then
						_, _, _, itemColor = GetItemQualityColor(itemQuality);
						text = itemColor..itemName;
					elseif dataSource[dataID][tablenum][i][2] ~= IDfound and itemDefaultColour ~= nil and not dataSource[dataID][tablenum][i][4]:match("=q5=") then
						--If the item is not in cache, use the saved value and process it
						text = (string.sub(dataSource[dataID][tablenum][i][4], 5));
						text = itemDefaultColour .. text;
						text = AtlasLoot_FixText(text);
					else
						--If the item is not in cache, use the saved value and process it
						text = dataSource[dataID][tablenum][i][4];
						text = AtlasLoot_FixText(text);
					end
				else
					spellName, _, spellIcon, _, _, _, _, _, _ = GetSpellInfo(string.sub(IDfound, 2));
					if spellName then
						text = AtlasLoot_FixText(string.sub(dataSource[dataID][tablenum][i][4], 1, 4)..spellName);
					else
						text = dataSource[dataID][tablenum][i][4];
						text = AtlasLoot_FixText(text);
					end
				end

				--Store data about the state of the items frame to allow minor tweaks or a recall of the current loot page
				AtlasLootItemsFrame.refresh = {dataID, dataSource_backup, boss, pFrame, tablenum};
				--and dataSource[dataID].Back ~= true
				if dataID ~= "WishList" and dataID ~= "FilterList"  and dataSource[dataID].Back ~= true then
					AtlasLootItemsFrame.refreshOri = {dataID, dataSource_backup, boss, pFrame, tablenum};
				end

				--Insert the item description
				if dataSource[dataID][tablenum][i][6] and dataSource[dataID][tablenum][i][6] ~= "" then
					extra = dataSource[dataID][tablenum][i][6];
				elseif dataSource[dataID][tablenum][i][5] then
					extra = dataSource[dataID][tablenum][i][5];
				else
					extra = "";
				end
				extra = AtlasLoot_FixText(extra);

				--Use shortcuts for easier reference to parts of the item button
				itemButton = getglobal("AtlasLootItem_"..dataSource[dataID][tablenum][i][1]);
				iconFrame  = getglobal("AtlasLootItem_"..dataSource[dataID][tablenum][i][1].."_Icon");
				nameFrame  = getglobal("AtlasLootItem_"..dataSource[dataID][tablenum][i][1].."_Name");
				extraFrame = getglobal("AtlasLootItem_"..dataSource[dataID][tablenum][i][1].."_Extra");

				--If there is no data on the texture an item should have, show a big red question mark
				if dataSource[dataID][tablenum][i][3] == "?" then
					iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
				elseif dataSource[dataID][tablenum][i][3] == "" then
					iconFrame:SetTexture(GetItemIcon(IDfound));
				elseif (not isItem) and (spellIcon) then
					if tonumber(dataSource[dataID][tablenum][i][3]) then
						iconFrame:SetTexture(GetItemIcon(tonumber(dataSource[dataID][tablenum][i][3])));
					elseif dataSource[dataID][tablenum][i][3] == "" then
						iconFrame:SetTexture(spellIcon);
					elseif type(dataSource[dataID][tablenum][i][3]) == "string" then
						iconFrame:SetTexture("Interface\\Icons\\"..dataSource[dataID][tablenum][i][3]);
					else
						iconFrame:SetTexture(spellIcon);
					end
				else
					--else show the texture
					iconFrame:SetTexture("Interface\\Icons\\"..dataSource[dataID][tablenum][i][3]);
				end
				itemButton.itemTexture = dataSource[dataID][tablenum][i][3];
				if iconFrame:GetTexture() == nil then
					iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
				end
				itemButton.name = text;
				itemButton.extra = extra;

				--Highlight items in the wishlist
				if IDfound ~= "" and IDfound ~= 0 and dataID ~= "WishList" and AtlasLootWishList["Options"][UnitName("player")]["Mark"] == true then
					local xitemexistwish, itemwishicons = AtlasLoot_WishListCheck(IDfound, true)
					if xitemexistwish then
						text = itemwishicons.." "..text;
					end
				end
				--Set the name and description of the item
				nameFrame:SetText(text);
				extraFrame:SetText(extra);
				extraFrame:Show();
				--For convenience, we store information about the objects in the objects so that it can be easily accessed later
				if((string.sub(IDfound, 1, 1) == "s") and (ItemindexID ~= "Pattern") and (tonumber(dataSource[dataID][tablenum][i][3]))) then
                    IDfound = AL_FindId(tonumber(dataSource[dataID][tablenum][i][3]), ItemindexID) or tonumber(dataSource[dataID][tablenum][i][3]);
					itemButton.itemID = IDfound;
                    itemButton.spellitemID = dataSource[dataID][tablenum][i][3];
				else
					itemButton.itemID = IDfound;

						if tonumber(dataSource[dataID][tablenum][i][3]) then
							itemButton.spellitemID = dataSource[dataID][tablenum][i][3];
						else
							itemButton.spellitemID = 0;
						end

				end
				itemButton.iteminfo = {};
				if isItem then
					itemButton.iteminfo.idcore = IDfound;
					itemButton.iteminfo.icontexture = IDfound;
				    itemButton.storeID = IDfound;
                    itemButton.dressingroomID = IDfound;
                else
				    itemButton.iteminfo.idcore = IDfound;
					itemButton.iteminfo.icontexture = GetItemIcon(IDfound);
                    itemButton.storeID = IDfound;
                    itemButton.dressingroomID = IDfound;
				end

				itemButton.desc = dataSource[dataID][tablenum][i][5] or nil;
				itemButton.price = dataSource[dataID][tablenum][i][6] or nil;
				itemButton.droprate = dataSource[dataID][tablenum][i][7] or nil;

				if (dataID == "SearchResult" or dataID == "WishList") and dataSource[dataID][tablenum][i][8] then
					itemButton.sourcePage = dataSource[dataID][tablenum][i][8];
				elseif dataSource[dataID][tablenum][i][8] ~= nil and dataSource[dataID][tablenum][i][8]:match("=LT=") then
					itemButton.sourcePage = string.sub(dataSource[dataID][tablenum][i][8], 5);
				else
					itemButton.sourcePage = nil;
				end

				if dataSource[dataID][tablenum][i][AtlasLoot_Difficulty.DIF_SEARCH] then
					itemButton.difficulty = dataSource[dataID][tablenum][i][AtlasLoot_Difficulty.DIF_SEARCH];
				else
					itemButton.difficulty = ItemindexID;
				end

				itemButton.i = 1;
				itemButton:Show();

				if IDfound == 0 then getglobal("AtlasLootItem_"..i.."_Unsafe"):Hide(); end
			end
		end

        AtlasLootItemsFrame.refresh = {dataID, dataSource, boss, pFrame, tablenum};

		if dataID ~= "WishList" and dataID ~= "FilterList"  and dataSource[dataID].Back ~= true then
			AtlasLootItemsFrame.refreshOri = {dataID, dataSource, boss, pFrame, tablenum};
			AtlasLoot.db.profile.LastBoss = {dataID, dataSource, boss, pFrame, tablenum, ATLASLOOT_LASTMODULE, ATLASLOOT_CURRENTTABLE};
		end

        --This is a valid QuickLook, so show the UI objects
        AtlasLoot_QuickLooks:Show();
        AtlasLootQuickLooksButton:Show();

		-- Checks dataID with submenus to stop filter button loading on certain tables
		local function filterCheck(find)
			local mtype = {"Crafting", "Reputations", "WorldEvents", "PVP", "Collections"}
			for m, t in pairs (mtype) do
				for i, v in ipairs (AtlasLoot_SubMenus[t..AtlasLoot_Expac]) do
					if find == v[2] then
						return true;
					end
				end
			end
		end

		-- Show the Filter Check-Box
		if dataID ~= "WishList" and dataID ~= "SearchResult" and filterCheck(dataID) ~= true then
			AtlasLootFilterCheck:Show();
		end

		--Hide navigation buttons by default, only show what we need
		getglobal("AtlasLootItemsFrame_BACK"):Hide();
		getglobal("AtlasLootItemsFrame_NEXT"):Hide();
		getglobal("AtlasLootItemsFrame_PREV"):Hide();

		if tablenum + 1 ~= AtlasLoot_GetNumOfRows(dataSource[dataID]) then
			getglobal("AtlasLootItemsFrame_NEXT"):Show();
			if dataID ~= "FilterList" then
			getglobal("AtlasLootItemsFrame_NEXT").tablenum = tablenum + 1;
			end
		end
		if tablenum - 1 ~= 0 then
			getglobal("AtlasLootItemsFrame_PREV"):Show();
			if dataID ~= "FilterList" then
			getglobal("AtlasLootItemsFrame_PREV").tablenum = tablenum - 1;
			end
		end
		if dataSource[dataID].Back then
			getglobal("AtlasLootItemsFrame_BACK"):Show();
		end

	end

	--Anchor the item frame where it is supposed to be
	AtlasLoot_SetItemInfoFrame(pFrame);
	if ATLASLOOT_FILTER_ENABLE and dataID ~= "FilterList" then
		AtlasLoot_HideNoUsableItems();
	end

	AtlasLoot_QueryLootPage();
end

--[[
AtlasLoot_SetItemInfoFrame(pFrame):
pFrame - Data structure with anchor info.  Format: {Anchor Point, Relative Frame, Relative Point, X Offset, Y Offset }
This function anchors the item frame where appropriate.  The main Atlas frame can be passed instead of a custom pFrame.
If no pFrame is specified, the Atlas Frame is used if Atlas is installed.
]]
function AtlasLoot_SetItemInfoFrame(pFrame)
	if ( pFrame ) then
		--Load pFrame
		AtlasLootItemsFrame:ClearAllPoints();
		AtlasLootItemsFrame:SetParent(pFrame[2]);
		AtlasLootItemsFrame:ClearAllPoints();
		AtlasLootItemsFrame:SetPoint(pFrame[1], pFrame[2], pFrame[3], pFrame[4], pFrame[5]);
	else
		--Last resort, dump the items frame in the middle of the screen
		AtlasLootItemsFrame:ClearAllPoints();
		AtlasLootItemsFrame:SetParent(UIParent);
		AtlasLootItemsFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0);
	end
	AtlasLootItemsFrame:Show();
end

--[[
AtlasLoot_NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot_NavButton_OnClick(self)
	local tablenum = self.tablenum;
	AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3], AtlasLootItemsFrame.refresh[4], tablenum);
end

--[[
AtlasLoot_NavButton_OnClick:
Called when 'Back'Button is pressed and calls up the appropriate loot page
]]
function AtlasLoot_BackButton_OnClick()
	AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5]);
end

--[[
AtlasLoot_IsLootTableAvailable(dataID):
Checks if a loot table is in memory and attempts to load the correct LoD module if it isn't
dataID: Loot table dataID
]]
function AtlasLoot_IsLootTableAvailable(dataSource)

	local moduleName = nil;
	moduleName = AtlasLoot_GetLODModule(dataSource);

	if IsAddOnLoaded(moduleName) then
		return true;
	else
		LoadAddOn(moduleName);
	--[[ 	if moduleName then
			if not IsAddOnLoaded(moduleName) then
				loaded, reason=LoadAddOn(moduleName);
				if not loaded then
					if (reason == "MISSING") or (reason == "DISABLED") then
						DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..ORANGE..AtlasLoot_TableNames[dataID][1]..WHITE..AL[" is unavailable, the following load on demand module is required: "]..ORANGE..moduleName);
						return false;
					else
						DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot Error!"].." "..WHITE..AL["Status of the following module could not be determined: "]..ORANGE..moduleName);
						return false;
					end
				end
			end
			if AtlasLoot_Data[dataID] then
				if ATLASLOOT_DEBUGMESSAGES then
					DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..ORANGE..moduleName..WHITE.." "..AL["sucessfully loaded."]);
				end
				collectgarbage("collect");
				return true;
			else
				DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot Error!"].." "..ORANGE..AtlasLoot_TableNames[dataID][1]..WHITE..AL[" could not be accessed, the following module may be out of date: "]..ORANGE..moduleName);
				return false;
			end
		else
			DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot Error!"].." "..ORANGE..AL["Loot module returned as nil!"]);
			return false;
		end ]]
	end
end

--[[
AtlasLoot_GetLODModule(dataSource)
Returns the name of the module that needs to be loaded
dataSource: Location of the loot table
]]
function AtlasLoot_GetLODModule(dataSource)
	if (dataSource=="AtlasLootOriginalWoW") then
		return "AtlasLoot_OriginalWoW";
	elseif (dataSource=="AtlasLootBurningCrusade") then
		return "AtlasLoot_BurningCrusade";
	elseif (dataSource=="AtlasLootCrafting") then
		return "AtlasLoot_Crafting";
	elseif (dataSource=="AtlasLootWorldEvents") then
		return "AtlasLoot_WorldEvents";
	elseif (dataSource=="AtlasLootWotLK") then
		return "AtlasLoot_WrathoftheLichKing";
	end
end

--[[
AtlasLoot_LoadAllModules()
Used to load all available LoD modules
]]
function AtlasLoot_LoadAllModules()
	local orig, bc, wotlk, craft, world;
    orig, _ = LoadAddOn("AtlasLoot_OriginalWoW");
    bc, _ = LoadAddOn("AtlasLoot_BurningCrusade");
    craft, _ = LoadAddOn("AtlasLoot_Crafting");
    world, _ = LoadAddOn("AtlasLoot_WorldEvents");
    wotlk, _ = LoadAddOn("AtlasLoot_WrathoftheLichKing");
    local flag=0;
	if not orig then
		LoadAddOn("AtlasLoot_OriginalWoW");
		flag=1;
	end
	if not bc then
		LoadAddOn("AtlasLoot_BurningCrusade");
		flag=1;
	end
    if not craft then
		LoadAddOn("AtlasLoot_Crafting");
		flag=1;
	end
    if not world then
		LoadAddOn("AtlasLoot_WorldEvents");
		flag=1;
	end
    if not wotlk then
		LoadAddOn("AtlasLoot_WrathoftheLichKing");
		flag=1;
	end
	if flag == 1 then
		if ATLASLOOT_DEBUGMESSAGES then
			DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..WHITE..AL["All Available Modules Loaded"]);
		end
		collectgarbage("collect");
	end
end

--[[
AtlasLoot_ShowQuickLooks(button)
button: Identity of the button pressed to trigger the function
Shows the GUI for setting Quicklooks
]]
function AtlasLoot_ShowQuickLooks(button)
	local dewdrop = AceLibrary("Dewdrop-2.0");
	if dewdrop:IsOpen(button) then
		dewdrop:Close(1);
	else
		local setOptions = function()
			dewdrop:AddLine(
				"text", AL["QuickLook"].." 1",
				"tooltipTitle", AL["QuickLook"].." 1",
				"tooltipText", AL["Assign this loot table\n to QuickLook"].." 1",
				"func", function()
                    AtlasLootCharDB["QuickLooks"][1]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5], ATLASLOOT_LASTMODULE, ATLASLOOT_CURRENTTABLE};
                    AtlasLoot_RefreshQuickLookButtons();
                    dewdrop:Close(1);
				end
			);
			dewdrop:AddLine(
				"text", AL["QuickLook"].." 2",
				"tooltipTitle", AL["QuickLook"].." 2",
				"tooltipText", AL["Assign this loot table\n to QuickLook"].." 2",
				"func", function()
					AtlasLootCharDB["QuickLooks"][2]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5], ATLASLOOT_LASTMODULE, ATLASLOOT_CURRENTTABLE};
                    AtlasLoot_RefreshQuickLookButtons();
                    dewdrop:Close(1);
				end
			);
            dewdrop:AddLine(
				"text", AL["QuickLook"].." 3",
				"tooltipTitle", AL["QuickLook"].." 3",
				"tooltipText", AL["Assign this loot table\n to QuickLook"].." 3",
				"func", function()
					AtlasLootCharDB["QuickLooks"][3]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5], ATLASLOOT_LASTMODULE, ATLASLOOT_CURRENTTABLE};
                    AtlasLoot_RefreshQuickLookButtons();
                    dewdrop:Close(1);
				end
			);
            dewdrop:AddLine(
				"text", AL["QuickLook"].." 4",
				"tooltipTitle", AL["QuickLook"].." 4",
				"tooltipText", AL["Assign this loot table\n to QuickLook"].." 4",
				"func", function()
					AtlasLootCharDB["QuickLooks"][4]={AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5], ATLASLOOT_LASTMODULE, ATLASLOOT_CURRENTTABLE};
                    AtlasLoot_RefreshQuickLookButtons();
                    dewdrop:Close(1);
				end
			);
		end;
		dewdrop:Open(button,
			'point', function(parent)
				return "BOTTOMLEFT", "BOTTOMRIGHT";
			end,
			"children", setOptions
		);
	end
end

--[[
AtlasLoot_RefreshQuickLookButtons()
Enables/disables the quicklook buttons depending on what is assigned
]]
function AtlasLoot_RefreshQuickLookButtons()
    i=1;
    while i<5 do
        if ((not AtlasLootCharDB["QuickLooks"][i]) or (not AtlasLootCharDB["QuickLooks"][i][1])) or (AtlasLootCharDB["QuickLooks"][i][1]==nil) then
            getglobal("AtlasLootPanel_Preset"..i):Disable();
            getglobal("AtlasLootDefaultFrame_Preset"..i):Disable();
        else
            getglobal("AtlasLootPanel_Preset"..i):Enable();
            getglobal("AtlasLootDefaultFrame_Preset"..i):Enable();
        end
        i=i+1;
    end
end


function AtlasLoot_QueryLootPage()
	local START = 1;
	local MAX_BUTTONS = 30;
	local COUNTED = 0;
	local REFRESHED = false;
	
	local function queryNextItem(pos)
		if pos > MAX_BUTTONS then return end;

		local button = getglobal("AtlasLootItem_"..pos);
        local queryitem = button.itemID;

        if (queryitem) and (queryitem ~= nil) and (queryitem ~= "") and (queryitem ~= 0) and (string.sub(queryitem, 1, 1) ~= "s") then
			local item = Item:CreateFromID(queryitem);
			if not (item:GetInfo()) then
				item:ContinueOnLoad(function(itemId)
					COUNTED = COUNTED + 1;
					if not REFRESHED and (COUNTED == MAX_BUTTONS) then
						REFRESHED = true;
						AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3], AtlasLootItemsFrame.refresh[4], AtlasLootItemsFrame.refresh[5]);
					end
				end)
			else
				COUNTED = COUNTED + 1;
			end
		else
			COUNTED = COUNTED + 1;
        end
		
		queryNextItem(pos + 1); 
	end
	queryNextItem(START);
end

--[[ 
AtlasLoot_QueryLootPage()
Querys all valid items on the current loot page.
]]
function AtlasLoot_QueryLootPageOLD()
local lastitem
	for t = 1, 30, 1 do
		local xbutton = getglobal("AtlasLootItem_"..t);
    	local xqueryitem = xbutton.itemID;
		if (xqueryitem) and (xqueryitem ~= nil) and (xqueryitem ~= "") and (xqueryitem ~= 0) and (string.sub(xqueryitem, 1, 1) ~= "s") then
			lastitem = t;
		end
	end
	for i = 1, 30, 1 do
        local button = getglobal("AtlasLootItem_"..i);
        local queryitem = button.itemID;
        if (queryitem) and (queryitem ~= nil) and (queryitem ~= "") and (queryitem ~= 0) and (string.sub(queryitem, 1, 1) ~= "s") then
			local item = Item:CreateFromID(queryitem);
			if not (item:GetInfo()) then
				item:ContinueOnLoad(function(itemId)
					if i == lastitem then
						AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3], AtlasLootItemsFrame.refresh[4], AtlasLootItemsFrame.refresh[5]);
					end
				end)
			end
        end
    end
end

--[[
AtlasLoot_AddTooltip(frameb, tooltiptext)
Adds explanatory tooltips to UI objects.
]]
function AtlasLoot_AddTooltip(frameb, tooltiptext)
   if not tooltiptext or not frameb then return end
   local frame = getglobal(frameb)
   frame:SetScript("OnEnter", function()
      GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
      GameTooltip:SetText(tooltiptext)
      GameTooltip:Show()
   end)
   frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

--[[
AL_FindId(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {normal, heroic, mythic, mythic1, mythic2, ... ,mythicN}}
]]
function AL_FindId(id, difficulty)
	if ItemIDsDatabase[id] ~= nil then
		return ItemIDsDatabase[id][difficulty], true
	end
	return nil, false;
end