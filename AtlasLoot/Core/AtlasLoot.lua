local AtlasLoot = LibStub("AceAddon-3.0"):NewAddon("AtlasLoot", "AceEvent-3.0", "AceTimer-3.0", "NewsFrame-1.0", "SettingsCreator-1.0")
ATLASLOOT = AtlasLoot
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

AtlasLoot.Version = GetAddOnMetadata("AtlasLoot", "Version")

AtlasLoot.DebugMessages = false

--Make the Dewdrop menu in the standalone loot browser accessible here
AtlasLoot.Dewdrop = AceLibrary("Dewdrop-2.0")

AtlasLoot.CurrentType = "Default"
AtlasLoot.type = {}

-- Colours stored for code readability
AtlasLoot.Colors = {
	GREY = "|cff999999",
	RED = "|cffff0000",
	WHITE = "|cffFFFFFF",
	GREEN = "|cff1eff00",
	LIMEGREEN = "|cFF32CD32",
	BLUE = "|cff0070dd",
	ORANGE = "|cffFF8400",
	YELLOW = "|cffFFd200",
	GOLD  = "|cffffcc00",
	CYAN =  "|cff00ffff",
	PURPLE = "|cff9F3FFF",
	SPRINGGREEN = "|cFF00FF7F",
	LIGHTBLUE = "|cFFADD8E6",
	ORANGE2 = "|cFFFFA500",
}

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

--Runs after all addons have fully loaded
function AtlasLoot:OnEnable()
    self.db = LibStub("AceDB-3.0"):New("AtlasLootDB")
    self.db:RegisterDefaults(AtlasLootDBDefaults)
	self.globalDB = AtlasLootDB
	setupSettingsDB()
	LoadItemIDsDatabase()

	self:InitializeUI()
	self:CreateAdvancedSearchFrame()
	self:InitializeSkins()
	self:MinimapIconSetup()
	self:InitializeOptionsFrame()
	self:LoadTradeskillRecipes()
	self:PopulateProfessions()
	self:CreateVanityCollection()
	self:CreateItemSourceList()
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:InitializeWishlistMerchantGlow()
	self:PatchNotes()
	self:AdvancedSearchSetup()

	if IsAddOnLoaded("TomTom") then self.TomTomLoaded = true end

	collectgarbage("collect")
end

function AtlasLoot:Reset(data)
    self.mainUI:Hide()
    if data == "frames" then
		self.mainUI:ClearAllPoints()
		self.mainUI:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        self.db.profile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
    elseif data == "quicklooks" then
        AtlasLootCharDB["QuickLooks"] = {}
    elseif data == "wishlist" then
		AtlasLootWishList = {}
		self:WishlistSetup()
        AtlasLootCharDB["SearchResult"] = {}
    elseif data == "all" then
		self.mainUI:ClearAllPoints()
		self.mainUI:SetPoint("CENTER", "UIParent", "CENTER", 0, 0)
        self.db.profile.LootBrowserScale = 1.0
        self:UpdateLootBrowserScale()
        AtlasLootCharDB["QuickLooks"] = {}
        AtlasLootCharDB["SearchResult"] = {}
		AtlasLootWishList = {}
		self:WishlistSetup()
    end
    DEFAULT_CHAT_FRAME:AddMessage(BLUE..AL["AtlasLoot"]..": "..self.Colors.RED..AL["Reset complete!"])
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
		self.mainUI:Show()
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
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.GREEN..AL["AtlasLoot"]..": "..self.Colors.WHITE..AL["All Available Modules Loaded"])
		end
		collectgarbage("collect")
	end
end

function AtlasLoot:UNIT_SPELLCAST_SUCCEEDED(event, arg1, arg2 , arg3)
	if arg1 == "player" and arg2 == "Learning" then
		self:PopulateProfessions()
	end
end

function AtlasLoot:MERCHANT_SHOW()
	self:SetMerchantFrameGlow()
end

function AtlasLoot:MERCHANT_UPDATE()
	self:SetMerchantFrameGlow()
end
