local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local WHITE = "|cffFFFFFF"

-- Index
--- Permanent Events
---- Argent Tournament
--- Seasonal Events
---- Brewfest
---- Children's Week
---- Day of the Dead
---- Feast of Winter Veil
---- Hallow's End
---- Harvest Festival
---- Love is in the Air
---- Lunar Festival
---- Midsummer Fire Festival
---- Noblegarden
---- Pilgrim's Bounty
--- Reaccouring Events
---- Bash'ir Landing Skyguard Raid
---- Darkmoon Faire
---- Elemental Invasion
---- Gurubashi Arena Booty Run
---- Stranglethorn Fishing Extravaganza
--- Triggered Events
---- Abyssal Council
---- Ethereum Prison
---- Shartuul
---- Skettis
--- One Time Events
---- Scourge Invasion

------------------------
--- Permanent Events ---
------------------------

-------------------------
--- Argent Tournament ---
-------------------------

AtlasLoot_Data["ArgentTournament"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Argent Tournament"];
	{
		Name = BabbleInventory["Miscellaneous"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 45714, price = "1 #champwrit#" }; --Darnassus Commendation Badge
		[3] = { itemID = 45715, price = "1 #champwrit#" }; --Exodar Commendation Badge
		[4] = { itemID = 45716, price = "1 #champwrit#" }; --Gnomeregan Commendation Badge
		[5] = { itemID = 45717, price = "1 #champwrit#" }; --Ironforge Commendation Badge
		[6] = { itemID = 45718, price = "1 #champwrit#" }; --Stormwind Commendation Badge
		[15] = { itemID = 46114, desc = "=ds="..AL["Currency"] }; --Champion's Writ
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45719, price = "1 #champwrit#" }; --Orgrimmar Commendation Badge
		[18] = { itemID = 45723, price = "1 #champwrit#" }; --Undercity Commendation Badge
		[19] = { itemID = 45722, price = "1 #champwrit#" }; --Thunder Bluff Commendation Badge
		[20] = { itemID = 45720, price = "1 #champwrit#" }; --Sen'jin Commendation Badge
		[21] = { itemID = 45721, price = "1 #champwrit#" }; --Silvermoon Commendation Badge
	};
	{
		Name = AL["Tabards"] .. " / " .. AL["Banner"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 45021, price = "15 #champseal#" }; --Darnassus Banner
		[3] = { itemID = 45020, price = "15 #champseal#" }; --Exodar Banner
		[4] = { itemID = 45019, price = "15 #champseal#" }; --Gnomeregan Banner
		[5] = { itemID = 45018, price = "15 #champseal#" }; --Ironforge Banner
		[6] = { itemID = 45011, price = "15 #champseal#" }; --Stormwind Banner
		[7] = { itemID = 45579, price = "50 #champseal#" }; --Darnassus Tabard
		[8] = { itemID = 45580, price = "50 #champseal#" }; --Exodar Tabard
		[9] = { itemID = 45578, price = "50 #champseal#" }; --Gnomeregan Tabard
		[10] = { itemID = 45577, price = "50 #champseal#" }; --Ironforge Tabard
		[11] = { itemID = 45574, price = "50 #champseal#" }; --Stormwind Tabard
		[12] = { itemID = 46817, price = "50 #champseal#" }; --Silver Covenant Tabard
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45014, price = "15 #champseal#" }; --Orgrimmar Banner
		[18] = { itemID = 45016, price = "15 #champseal#" }; --Undercity Banner
		[19] = { itemID = 45013, price = "15 #champseal#" }; --Thunder Bluff Banner
		[20] = { itemID = 45015, price = "15 #champseal#" }; --Sen'jin Banner
		[21] = { itemID = 45017, price = "15 #champseal#" }; --Silvermoon City Banner
		[22] = { itemID = 45581, price = "50 #champseal#" }; --Orgrimmar Tabard
		[23] = { itemID = 45583, price = "50 #champseal#" }; --Undercity Tabard
		[24] = { itemID = 45584, price = "50 #champseal#" }; --Thunder Bluff Tabard
		[25] = { itemID = 45582, price = "50 #champseal#" }; --Sen'jin Tabard
		[26] = { itemID = 45585, price = "50 #champseal#" }; --Silvermoon City Tabard
		[27] = { itemID = 46818, price = "50 #champseal#" }; --Sunreaver Tabard
		[28] = { icon = "INV_Jewelry_Talisman_08", name = WHITE.. BabbleFaction["Argent Crusade"] };
		[29] = { itemID = 46843, price = "15 #champseal#" }; --Argent Crusade Banner
		[30] = { itemID = 46874, price = "50 #champseal#" }; --Argent Crusader's Tabard
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 45156, price = "10 #champseal#" }; --Sash of Shattering Hearts
		[3] = { itemID = 45181, price = "10 #champseal#" }; --Wrap of the Everliving Tree
		[4] = { itemID = 45159, price = "10 #champseal#" }; --Treads of Nimble Evasion
		[5] = { itemID = 45184, price = "10 #champseal#" }; --Cinch of Bonded Servitude
		[6] = { itemID = 45183, price = "10 #champseal#" }; --Treads of the Glorious Spirit
		[7] = { itemID = 45182, price = "10 #champseal#" }; --Gauntlets of Shattered Pride
		[8] = { itemID = 45160, price = "10 #champseal#" }; --Girdle of Valorous Defeat
		[9] = { itemID = 45163, price = "10 #champseal#" }; --Stanchions of Unseatable Furor
		[10] = { itemID = 45153, price = "10 #champseal#" }; --Susurrating Shell Necklace
		[11] = { itemID = 45155, price = "10 #champseal#" }; --Choker of Spiral Focus
		[12] = { itemID = 45154, price = "10 #champseal#" }; --Necklace of Valiant Blood
		[13] = { itemID = 45152, price = "10 #champseal#" }; --Pendant of Azure Dreams
		[14] = { itemID = 45131, price = "10 #champseal#" }; --Jouster's Fury
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45209, price = "10 #champseal#" }; --Sash of Trumpted Pride
		[18] = { itemID = 45211, price = "10 #champseal#" }; --Waistguard of Equine Fury
		[19] = { itemID = 45220, price = "10 #champseal#" }; --Treads of the Earnest Squire
		[20] = { itemID = 45215, price = "10 #champseal#" }; --Links of Unquenched Savagery
		[21] = { itemID = 45221, price = "10 #champseal#" }; --Treads of Whispering Dreams
		[22] = { itemID = 45216, price = "10 #champseal#" }; --Gauntlets of Mending Touch
		[23] = { itemID = 45217, price = "10 #champseal#" }; --Clinch of Savage Fury
		[24] = { itemID = 45218, price = "10 #champseal#" }; --Blood-Caked Stompers
		[25] = { itemID = 45206, price = "10 #champseal#" }; --Choker of Feral Fury
		[26] = { itemID = 45207, price = "10 #champseal#" }; --Necklace of Stolen Skulls
		[27] = { itemID = 45213, price = "10 #champseal#" }; --Pendant of Emerald Crusader
		[28] = { itemID = 45223, price = "10 #champseal#" }; --Razor's Edge Pendant
		[29] = { itemID = 45219, price = "10 #champseal#" }; --Jouster's Fury
	};
	{
		Name = AL["Weapons"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 45078, price = "25 #champseal#" }; --Dagger of Lunar Purity
		[3] = { itemID = 45077, price = "25 #champseal#" }; --Dagger of the Rising Moon
		[4] = { itemID = 45129, price = "25 #champseal#" }; --Gnomeregan Bonechopper
		[5] = { itemID = 45074, price = "25 #champseal#" }; --Claymore of the Prophet
		[6] = { itemID = 45076, price = "25 #champseal#" }; --Teldrassil Protector
		[7] = { itemID = 45075, price = "25 #champseal#" }; --Ironforge Smasher
		[8] = { itemID = 45128, price = "25 #champseal#" }; --Silvery Sylvan Stave
		[9] = { itemID = 45130, price = "25 #champseal#" }; --Blunderbuss of Khaz Modan
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45214, price = "25 #champseal#" }; --Scalpel of the Royal Apothecary
		[18] = { itemID = 45222, price = "25 #champseal#" }; --Spinal Destroyer
		[19] = { itemID = 45208, price = "25 #champseal#" }; --Blade of the Keening Banshee
		[20] = { itemID = 45205, price = "25 #champseal#" }; --Greatsword of the Sin'dorei
		[21] = { itemID = 45204, price = "25 #champseal#" }; --Axe of the Sen'jin Protector
		[22] = { itemID = 45203, price = "25 #champseal#" }; --Grimhorn Crusher
		[23] = { itemID = 45212, price = "25 #champseal#" }; --Staff of Feral Furies
		[24] = { itemID = 45210, price = "25 #champseal#" }; --Sen'jin Beakblade Longrifle
	};
	{
		Name = AL["Vanity Pets"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 44998, desc = AL["Quest Reward"] }; --Argent Squire
		[4] = { itemID = 44984, price = "40 #champseal#" }; --Ammen Vale Lashling
		[5] = { itemID = 44965, price = "40 #champseal#" }; --Teldrassil Sproutling
		[6] = { itemID = 44970, price = "40 #champseal#" }; --Dun Morogh Cub
		[7] = { itemID = 44974, price = "40 #champseal#" }; --Elwynn Lamb
		[8] = { itemID = 45002, price = "40 #champseal#" }; --Mechanopeep
		[9] = { itemID = 46820, price = "40 #champseal#" }; --Shimmering Wyrmling
		[11] = { icon = "INV_Jewelry_Talisman_08", name = WHITE.. BabbleFaction["Argent Crusade"] };
		[12] = { itemID = 47541, price = "150 #champseal#" }; --Argent Pony Bridle
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45022, desc = AL["Quest Reward"] }; --Argent Gruntling
		[19] = { itemID = 44980, price = "40 #champseal#" }; --Mulgore Hatchling
		[20] = { itemID = 45606, price = "40 #champseal#" }; --Sen'jin Fetish
		[21] = { itemID = 44971, price = "40 #champseal#" }; --Tirisfal Batling
		[22] = { itemID = 44973, price = "40 #champseal#" }; --Durotar Scorpion
		[23] = { itemID = 44982, price = "40 #champseal#" }; --Enchanted Broom
		[24] = { itemID = 46821, price = "40 #champseal#" }; --Shimmering Wyrmling
	};
	{
		Name = AL["Mounts"];
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"] };
		[2] = { itemID = 45591, price = "100 #champseal#" }; --Darnassian Nightsaber
		[3] = { itemID = 45590, price = "100 #champseal#" }; --Exodar Elekk
		[4] = { itemID = 45589, price = "100 #champseal#" }; --Gnomeregan Mechanostrider
		[5] = { itemID = 45586, price = "100 #champseal#" }; --Ironforge Ram
		[6] = { itemID = 45125, price = "100 #champseal#" }; --Stormwind Steed
		[8] = { itemID = 46745, price = "500 #gold# 5 #champseal#" }; --Great Red Elekk
		[9] = { itemID = 46752, price = "500 #gold# 5 #champseal#" }; --Swift Gray Steed
		[10] = { itemID = 46744, price = "500 #gold# 5 #champseal#" }; --Swift Moonsaber
		[11] = { itemID = 46748, price = "500 #gold# 5 #champseal#" }; --Swift Violet Ram
		[12] = { itemID = 46747, price = "500 #gold# 5 #champseal#" }; --Turbostrider
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45593, price = "100 #champseal#" }; --Darkspear Raptor
		[18] = { itemID = 45597, price = "100 #champseal#" }; --Forsaken Warhorse
		[19] = { itemID = 45595, price = "100 #champseal#" }; --Orgrimmar Wolf
		[20] = { itemID = 45596, price = "100 #champseal#" }; --Silvermoon Hawkstrider
		[21] = { itemID = 45592, price = "100 #champseal#" }; --Thunder Bluff Kodo
		[23] = { itemID = 46750, price = "500 #gold# 5 #champseal#" }; --Great Golden Kodo
		[24] = { itemID = 46749, price = "500 #gold# 5 #champseal#" }; --Swift Burgundy Wolf
		[25] = { itemID = 46743, price = "500 #gold# 5 #champseal#" }; --Swift Purple Raptor
		[26] = { itemID = 46751, price = "500 #gold# 5 #champseal#" }; --Swift Red Hawkstrider
		[27] = { itemID = 46746, price = "500 #gold# 5 #champseal#" }; --White Skeletal Warhorse
	};
	{
		Name = AL["Mounts"];
		[1] = { icon = "inv_misc_tabardpvp_01", name = WHITE.. BabbleFaction["The Silver Covenant"], "=ec1="..BabbleFaction["Alliance"] };
		[2] = { itemID = 46815, price = "100 #champseal#" }; --Quel'dorei Steed
		[3] = { itemID = 46813, price = "150 #champseal#" }; --Silver Covenant Hippogryph
		[5] = { icon = "INV_Jewelry_Talisman_08", name = WHITE.. BabbleFaction["Argent Crusade"] };
		[6] = { itemID = 47179, price = "100 #champseal#" }; --Argent Charger
		[7] = { itemID = 47180, price = "100 #champseal#" }; --Argent Warhorse
		[8] = { itemID = 45725, price = "150 #champseal#" }; --Argent Hippogryph
		[15] = { itemID = 44990 }; --Champion's Seal
		[16] = { icon = "inv_misc_tabardpvp_02", name = WHITE.. BabbleFaction["The Sunreavers"], "=ec1="..BabbleFaction["Horde"] };
		[17] = { itemID = 46816, price = "100 #champseal#" }; --Sunreaver Hawkstrider
		[18] = { itemID = 46814, price = "150 #champseal#" }; --Sunreaver Dragonhawk
	};
};

-----------------------
--- Seasonal Events ---
-----------------------

----------------
--- Brewfest ---
----------------

local brewfest = {};
brewfest.a = {
	Name = AL["Brewfest"] .. " 1";
	[1] = { itemID = 33047, price = "100 #brewfest#" }; --Belbi's Eyesight Enhancing Romance Goggles
	[2] = { itemID = 34008, price = "100 #brewfest#" }; --Blix's Eyesight Enhancing Romance Goggles
	[3] = { itemID = 33968, price = "50 #brewfest#" }; --Blue Brewfest Hat
	[4] = { itemID = 33864, price = "50 #brewfest#" }; --Brown Brewfest Hat
	[5] = { itemID = 33967, price = "50 #brewfest#" }; --Green Brewfest Hat
	[6] = { itemID = 33969, price = "50 #brewfest#" }; --Purple Brewfest Hat
	[7] = { itemID = 33863, price = "200 #brewfest#" }; --Brewfest Dress
	[8] = { itemID = 33862, price = "200 #brewfest#" }; --Brewfest Regalia
	[9] = { itemID = 33868, price = "100 #brewfest#" }; --Brewfest Boots
	[10] = { itemID = 33966, price = "100 #brewfest#" }; --Brewfest Slippers
	[16] = { itemID = 33927, price = "100 #brewfest#" }; --Brewfest Pony Keg
	[17] = { itemID = 46707, price = "100 #brewfest#" }; --Pint-Sized Pink Pachyderm
	[18] = { itemID = 32233, price = "40 #silver#" }; --Wolpertinger's Tankard
	[19] = { itemID = 37599, price = "200 #brewfest#" }; --"Brew of the Month\" Club Membership Form
	[21] = { itemID = 37816, price = "20 #brewfest#" }; --Preserved Brewfest Hops
	[22] = { itemID = 37750, price = "2 #brewfest#" }; --Fresh Brewfest Hops
	[23] = { itemID = 39477, price = "5 #brewfest#" }; --Fresh Dwarven Brewfest Hops
	[24] = { itemID = 39476, price = "5 #brewfest#" }; --Fresh Goblin Brewfest Hops
	[27] = { itemID = 37829 }; --Brewfest Prize Token
};

brewfest.b = {
	Name = AL["Brewfest"] .. " 2";
	[1] = { itemID = 37892 }; --Green Brewfest Stein
	[2] = { itemID = 33016 }; --Blue Brewfest Stein
	[3] = { itemID = 32912 }; --Yellow Brewfest Stein
	[4] = { itemID = 34140 }; --Dark Iron Tankard
	[6] = { itemID = 33976 }; --Brewfest Ram
	[16] = { itemID = 33929 }; --Brewfest Brew
	[17] = { itemID = 34063 }; --Dried Sausage
	[18] = { itemID = 33024 }; --Pickled Sausage
	[19] = { itemID = 38428 }; --Rock-Salted Pretzel
	[20] = { itemID = 33023 }; --Savory Sausage
	[21] = { itemID = 34065 }; --Spiced Onion Cheese
	[22] = { itemID = 33025 }; --Spicy Smoked Sausage
	[23] = { itemID = 34064 }; --Succulent Sausage
	[24] = { itemID = 33043 }; --The Essential Brewfest Pretzel
	[25] = { itemID = 33026 }; --The Golden Link
};

brewfest.c = {
	Name = AL["Brewfest"] .. " 3";
	[1] = { icon = "INV_Cask_04", name = WHITE..AL["Barleybrew Brewery"] };
	[2] = { itemID = 33030 }; --Barleybrew Clear
	[3] = { itemID = 33028 }; --Barleybrew Light
	[4] = { itemID = 33029 }; --Barleybrew Dark
	[6] = { icon = "INV_Cask_04", name = WHITE..AL["Thunderbrew Brewery"] };
	[7] = { itemID = 33031 }; --Thunder 45
	[8] = { itemID = 33032 }; --Thunderbrew Ale
	[9] = { itemID = 33033 }; --Thunderbrew Stout
	[11] = { icon = "INV_Cask_04", name = WHITE..AL["Gordok Brewery"] };
	[12] = { itemID = 33034 }; --Gordok Grog
	[13] = { itemID = 33036 }; --Mudder's Milk
	[14] = { itemID = 33035 }; --Ogre Mead
	[16] = { icon = "INV_Cask_04", name = WHITE..AL["Drohn's Distillery"] };
	[17] = { itemID = 34017 }; --Small Step Brew
	[18] = { itemID = 34018 }; --Long Stride Brew
	[19] = { itemID = 34019 }; --Path of Brew
	[21] = { icon = "INV_Cask_04", name = WHITE..AL["T'chali's Voodoo Brewery"] };
	[22] = { itemID = 34020 }; --Jungle River Water
	[23] = { itemID = 34021 }; --Brewdoo Magic
	[24] = { itemID = 34022 }; --Stout Shrunken Head
};

brewfest.d = {
	Name = AL["Brew of the Month Club"];
	[1] = { itemID = 37488, desc = "=ds="..AL["January"] }; --Wild Winter Pilsner
	[2] = { itemID = 37489, desc = "=ds="..AL["February"] }; --Izzard's Ever Flavor
	[3] = { itemID = 37490, desc = "=ds="..AL["March"] }; --Aromatic Honey Brew
	[4] = { itemID = 37491, desc = "=ds="..AL["April"] }; --Metok's Bubble Bock
	[5] = { itemID = 37492, desc = "=ds="..AL["May"] }; --Springtime Stout
	[6] = { itemID = 37493, desc = "=ds="..AL["June"] }; --Blackrock Lager
	[16] = { itemID = 37494, desc = "=ds="..AL["July"] }; --Stranglethorn Brew
	[17] = { itemID = 37495, desc = "=ds="..AL["August"] }; --Draenic Pale Ale
	[18] = { itemID = 37496, desc = "=ds="..AL["September"] }; --Binary Brew
	[19] = { itemID = 37497, desc = "=ds="..AL["October"] }; --Autumnal Acorn Ale
	[20] = { itemID = 37498, desc = "=ds="..AL["November"] }; --Bartlett's Bitter Brew
	[21] = { itemID = 37499, desc = "=ds="..AL["December"] }; --Lord of Frost's Private Label
};

brewfest.corenCLASSIC = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 2037128 }; --Balebrew Charm
	[2] = { itemID = 2037127 }; --Brightbrew Charm
	[3] = { itemID = 2038289 }; --Coren's Lucky Coin
	[4] = { itemID = 2038290 }; --Dark Iron Smoking Pipe
	[5] = { itemID = 2038288 }; --Direbrew Hops
	[6] = { itemID = 2038287 }; --Empty Mug Of Direbrew
	[7] = { itemID = 2037597 }; --Direbrew's Shanker
	[16] = { itemID = 38281 }; --Direbrew's Dire Brew
	[17] = { itemID = 34140 }; --Dark Iron Tankard
	[19] = { itemID = 37828 }; --Great Brewfest Kodo
	[20] = { itemID = 33977 }; --Swift Brewfest Ram
	[21] = { itemID = 37863 }; --Direbrew's Remote
	[22] = { itemID = 38281 }; --Direbrew's Dire Brew
};

brewfest.corenTBC = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 37128 }; --Balebrew Charm
	[2] = { itemID = 37127 }; --Brightbrew Charm
	[3] = { itemID = 38289 }; --Coren's Lucky Coin
	[4] = { itemID = 38290 }; --Dark Iron Smoking Pipe
	[5] = { itemID = 38288 }; --Direbrew Hops
	[6] = { itemID = 38287 }; --Empty Mug Of Direbrew
	[7] = { itemID = 37597 }; --Direbrew's Shanker
	[16] = { itemID = 38281 }; --Direbrew's Dire Brew
	[17] = { itemID = 34140 }; --Dark Iron Tankard
	[19] = { itemID = 37828 }; --Great Brewfest Kodo
	[20] = { itemID = 33977 }; --Swift Brewfest Ram
	[21] = { itemID = 37863 }; --Direbrew's Remote
	[22] = { itemID = 38281 }; --Direbrew's Dire Brew
};

brewfest.corenWRATH = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 49078 }; --Ancient Pickled Egg
	[2] = { itemID = 49118 }; --Bubbling Balebrew Charm
	[3] = { itemID = 49116 }; --Bitter Brightbrew Charm
	[4] = { itemID = 49080 }; --Brawler's Souvenir
	[5] = { itemID = 49074 }; --Coren's Chromium Coaster
	[6] = { itemID = 49076 }; --Mithril Pocketwatch
	[7] = { itemID = 49120 }; --Direbrew's Shanker 2.0
	[8] = { itemID = 48663 }; --Tankard O' Terror
	[16] = { itemID = 38281 }; --Direbrew's Dire Brew
	[17] = { itemID = 34140 }; --Dark Iron Tankard
	[19] = { itemID = 37828 }; --Great Brewfest Kodo
	[20] = { itemID = 33977 }; --Swift Brewfest Ram
	[21] = { itemID = 37863 }; --Direbrew's Remote
	[22] = { itemID = 38281 }; --Direbrew's Dire Brew
};

AtlasLoot_Data["BrewfestCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenCLASSIC;
};

AtlasLoot_Data["BrewfestTBC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenTBC;
};

AtlasLoot_Data["BrewfestWRATH"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenWRATH;
};

-----------------------
--- Children's Week ---
-----------------------

AtlasLoot_Data["ChildrensWeek"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Children's Week"];
	{
		Name = AL["Children's Week"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleZone["Azeroth"] };
		[2] = { itemID = 23007 }; --Piglet's Collar
		[3] = { itemID = 23015 }; --Rat Cage
		[4] = { itemID = 23002 }; --Turtle Box
		[5] = { itemID = 23022 }; --Curmudgeon's Payoff
		[7] = { icon = "INV_Box_01", name = WHITE..BabbleZone["Outland"] };
		[8] = { itemID = 32616 }; --Egbert's Egg
		[9] = { itemID = 32622 }; --Elekk Training Collar
		[10] = { itemID = 32617 }; --Sleepy Willy
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleZone["Northrend"] };
		[17] = { itemID = 46545 }; --Curious Oracle Hatchling
		[18] = { itemID = 46544 }; --Curious Wolvar Pup
	};
};

-----------------------
--- Day of the Dead ---
-----------------------

AtlasLoot_Data["DayoftheDead"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Day of the Dead"];
	{
		Name = AL["Day of the Dead"];
		[1] = { itemID = 46831 }; --Macabre Marionette
		[3] = { itemID = 46860, price = "5 #copper#" }; --Whimsical Skull Mask
		[4] = { itemID = 46861, price = "1 #gold#" }; --Bouquet of Orange Marigolds
		[5] = { itemID = 46690, price = "5 #copper#" }; --Candy Skull
		[6] = { itemID = 46711, price = "30 #copper#" }; --Spirit Candle
		[7] = { itemID = 46718, price = "10 #copper#" }; --Orange Marigold
		[9] = { itemID = 46710, price = "20 #silver#" }; --Recipe: Bread of the Dead
		[10] = { itemID = 46691 }; --Bread of the Dead
	};
};

----------------------------
--- Feast of Winter Veil ---
----------------------------

AtlasLoot_Data["Winterviel"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Feast of Winter Veil"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 21525 }; --Green Winter Hat
		[2] = { itemID = 21524 }; --Red Winter Hat
		[3] = { itemID = 17712 }; --Winter Veil Disguise Kit
		[4] = { itemID = 17202 }; --Snowball
		[5] = { itemID = 34191 }; --Handful of Snowflakes
		[6] = { itemID = 21212 }; --Fresh Holly
		[7] = { itemID = 21519 }; --Mistletoe
		[9] = { icon = "INV_Holiday_Christmas_Present_01", name = WHITE..AL["Smokywood Pastures Vendor"] };
		[10] = { itemID = 34262 }; --Pattern: Winter Boots
		[11] = { itemID = 34319 }; --Pattern: Red Winter Clothes
		[12] = { itemID = 34261 }; --Pattern: Green Winter Clothes
		[13] = { itemID = 34413 }; --Recipe: Hot Apple Cider
		[14] = { itemID = 17201 }; --Recipe: Egg Nog
		[15] = { itemID = 17200 }; --Recipe: Gingerbread Cookie
		[16] = { itemID = 17344 }; --Candy Cane
		[17] = { itemID = 17406 }; --Holiday Cheesewheel
		[18] = { itemID = 17407 }; --Graccu's Homemade Meat Pie
		[19] = { itemID = 17408 }; --Spicy Beefstick
		[20] = { itemID = 34410 }; --Honeyed Holiday Ham
		[21] = { itemID = 17404 }; --Blended Bean Brew
		[22] = { itemID = 17405 }; --Green Garden Tea
		[23] = { itemID = 34412 }; --Sparkling Apple Cider
		[24] = { itemID = 17196 }; --Holiday Spirits
		[25] = { itemID = 17403 }; --Steamwheedle Fizzy Spirits
		[26] = { itemID = 17402 }; --Greatfather's Winter Ale
		[27] = { itemID = 17194 }; --Holiday Spices
		[28] = { itemID = 17303 }; --Blue Ribboned Wrapping Paper
		[29] = { itemID = 17304 }; --Green Ribboned Wrapping Paper
		[30] = { itemID = 17307 }; --Purple Ribboned Wrapping Paper
	};
	{
		Name = "Presents";
		[1] = { icon = "INV_Holiday_Christmas_Present_01", name = WHITE..AL["Gaily Wrapped Present"] };
		[2] = { itemID = 21301 }; --Green Helper Box
		[3] = { itemID = 21308 }; --Jingling Bell
		[4] = { itemID = 21305 }; --Red Helper Box
		[5] = { itemID = 21309 }; --Snowman Kit
		[7] = { icon = "INV_Holiday_Christmas_Present_01", name = WHITE..AL["Festive Gift"] };
		[8] = { itemID = 21328 }; --Wand of Holiday Cheer
		[10] = { icon = "INV_Holiday_Christmas_Present_01", name = AL["Winter Veil Gift"] };
		[11] = { itemID = 34425 }; --Clockwork Rocket Bot
		[13] = { icon = "INV_Holiday_Christmas_Present_01", name = WHITE..AL["Gently Shaken Gift"] };
		[14] = { itemID = 21235 }; --Winter Veil Roast
		[15] = { itemID = 21241 }; --Winter Veil Eggnog
		[16] = { icon = "INV_Holiday_Christmas_Present_01", name = WHITE..AL["Festive Gift"] };
		[17] = { itemID = 21325 }; --Mechanical Greench
		[18] = { itemID = 21213 }; --Preserved Holly
		[19] = { itemID = 17706 }; --Plans: Edge of Winter
		[20] = { itemID = 17725 }; --Formula: Enchant Weapon - Winter's Might
		[21] = { itemID = 17720 }; --Schematic: Snowmaster 9000
		[22] = { itemID = 17722 }; --Pattern: Gloves of the Greatfather
		[23] = { itemID = 17709 }; --Recipe: Elixir of Frost Power
		[24] = { itemID = 17724 }; --Pattern: Green Holiday Shirt
		[26] = { icon = "INV_Holiday_Christmas_Present_01", name = AL["Carefully Wrapped Present"] };
		[27] = { itemID = 21254 }; --Winter Veil Cookie
		[29] = { icon = "INV_Holiday_Christmas_Present_01", name = AL["Smokywood Pastures Extra-Special Gift"] };
		[30] = { itemID = 21215 }; --Graccu's Mince Meat Fruitcake
	};
};

--------------------
--- Hallow's End ---
--------------------
local HorsemanCLASSIC = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 2033808 }; --The Horseman's Helm
	[2] = { itemID = 2034075 }; --Ring of Ghoulish Delight
	[3] = { itemID = 2034073 }; --The Horseman's Signet Ring
	[4] = { itemID = 2034074 }; --Witching Band
	[5] = { itemID = 2038175 }; --The Horseman's Blade
	[16] = { itemID = 34068 }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226 }; --Tricky Treat
	[18] = { itemID = 37012 }; --The Horseman's Reins
	[19] = { itemID = 37011 }; --Magic Broom
	[20] = { itemID = 33292 }; --Hallowed Helm
	[21] = { itemID = 33154 }; --Sinister Squashling
};

local HorsemanTBC = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 33808 }; --The Horseman's Helm
	[2] = { itemID = 34075 }; --Ring of Ghoulish Delight
	[3] = { itemID = 34073 }; --The Horseman's Signet Ring
	[4] = { itemID = 34074 }; --Witching Band
	[5] = { itemID = 38175 }; --The Horseman's Blade
	[16] = { itemID = 34068 }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226 }; --Tricky Treat
	[18] = { itemID = 37012 }; --The Horseman's Reins
	[19] = { itemID = 37011 }; --Magic Broom
	[20] = { itemID = 33292 }; --Hallowed Helm
	[21] = { itemID = 33154 }; --Sinister Squashling
};

local HorsemanWRATH = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 49126 }; --The Horseman's Horrific Helm
	[2] = { itemID = 49121 }; --Ring of Ghoulish Glee
	[3] = { itemID = 49123 }; --The Horseman's Seal
	[4] = { itemID = 49124 }; --Wicked Witch's Band
	[5] = { itemID = 49128 }; --The Horseman's Baleful Blade
	[16] = { itemID = 34068 }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226 }; --Tricky Treat
	[18] = { itemID = 37012 }; --The Horseman's Reins
	[19] = { itemID = 37011 }; --Magic Broom
	[20] = { itemID = 33292 }; --Hallowed Helm
	[21] = { itemID = 33154 }; --Sinister Squashling
}

local HallowsEnd = {
	Name = AL["Miscellaneous"];
	[1] = { itemID = 33117 }; --Jack-o'-Lantern
	[2] = { itemID = 20400 }; --Pumpkin Bag
	[4] = { itemID = 33189 }; --Rickety Magic Broom
	[6] = { itemID = 18633 }; --Styleen's Sour Suckerpop
	[7] = { itemID = 18632 }; --Moonbrook Riot Taffy
	[8] = { itemID = 18635 }; --Bellara's Nutterbar
	[9] = { itemID = 20557 }; --Hallow's End Pumpkin Treat
	[11] = { icon = "inv_gauntlets_06", name = AL["Handful of Candy"] };
	[12] = { itemID = 37585 }; --Chewy Fel Taffy
	[13] = { itemID = 37583 }; --G.N.E.R.D.S.
	[14] = { itemID = 37582 }; --Pyroblast Cinnamon Ball
	[15] = { itemID = 37584 }; --Soothing Spearmint Candy
	[16] = { icon = "INV_Misc_Bag_11", name = "=q6=#"..AL["Treat Bag"] };
	[17] = { itemID = 33292 }; --Hallowed Helm
	[18] = { itemID = 33154 }; --Sinister Squashling
	[19] = { itemID = 20410 }; --Hallowed Wand - Bat
	[20] = { itemID = 20409 }; --Hallowed Wand - Ghost
	[21] = { itemID = 20399 }; --Hallowed Wand - Leper Gnome
	[22] = { itemID = 20398 }; --Hallowed Wand - Ninja
	[23] = { itemID = 20397 }; --Hallowed Wand - Pirate
	[24] = { itemID = 20413 }; --Hallowed Wand - Random
	[25] = { itemID = 20411 }; --Hallowed Wand - Skeleton
	[26] = { itemID = 20414 }; --Hallowed Wand - Wisp
	[27] = { itemID = 20389 }; --Candy Corn
	[28] = { itemID = 20388 }; --Lollipop
	[29] = { itemID = 20390 }; --Candy Bar
};

local HallowsEndMasks = {
	Name = "Masks";
	[1] = { icon = "INV_Misc_Bag_11", name = WHITE..AL["Treat Bag"] };
	[2] = { itemID = 34003 }; --Flimsy Male Draenei Mask
	[3] = { itemID = 20561 }; --Flimsy Male Dwarf Mask
	[4] = { itemID = 20391 }; --Flimsy Male Gnome Mask
	[5] = { itemID = 20566 }; --Flimsy Male Human Mask
	[6] = { itemID = 20564 }; --Flimsy Male Nightelf Mask
	[7] = { itemID = 34002 }; --Flimsy Male Blood Elf Mask
	[8] = { itemID = 20570 }; --Flimsy Male Orc Mask
	[9] = { itemID = 20572 }; --Flimsy Male Tauren Mask
	[10] = { itemID = 20568 }; --Flimsy Male Troll Mask
	[11] = { itemID = 20573 }; --Flimsy Male Undead Mask
	[17] = { itemID = 34001 }; --Flimsy Female Draenei Mask
	[18] = { itemID = 20562 }; --Flimsy Female Dwarf Mask
	[19] = { itemID = 20392 }; --Flimsy Female Gnome Mask
	[20] = { itemID = 20565 }; --Flimsy Female Human Mask
	[21] = { itemID = 20563 }; --Flimsy Female Nightelf Mask
	[22] = { itemID = 34000 }; --Flimsy Female Blood Elf Mask
	[23] = { itemID = 20569 }; --Flimsy Female Orc Mask
	[24] = { itemID = 20571 }; --Flimsy Female Tauren Mask
	[25] = { itemID = 20567 }; --Flimsy Female Troll Mask
	[26] = { itemID = 20574 }; --Flimsy Female Undead Mask
};

AtlasLoot_Data["HalloweenCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanCLASSIC;
};

AtlasLoot_Data["HalloweenTBC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanTBC;
};

AtlasLoot_Data["HalloweenWRATH"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanWRATH;
};

------------------------
--- Harvest Festival ---
------------------------

AtlasLoot_Data["HarvestFestival"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Harvest Festival"];
	{
		Name = AL["Harvest Festival"];
		[1] = { itemID = 19697 }; --Bounty of the Harvest
		[2] = { itemID = 20009 }; --For the Light!
		[3] = { itemID = 20010 }; --The Horde's Hellscream
		[5] = { itemID = 19995 }; --Harvest Boar
		[6] = { itemID = 19996 }; --Harvest Fish
		[7] = { itemID = 19994 }; --Harvest Fruit
		[8] = { itemID = 19997 }; --Harvest Nectar
	};
};

--------------------------
--- Love is in the Air ---
--------------------------

AtlasLoot_Data["Valentineday"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Love is in the Air"];
	{
		Name = "Page 1";
		[1] = { itemID = 34480, price = "10 #valentineday#" }; --Romantic Picnic Basket
		[2] = { itemID = 21815, price = "1 #valentineday2#" }; --Love Token
		[3] = { itemID = 50163, price = "5 #valentineday#" }; --Lovely Rose
		[4] = { itemID = 22218, price = "2 #valentineday#" }; --Handful of Rose Petals
		[5] = { itemID = 22200, price = "5 #valentineday#" }; --Silver Shafted Arrow
		[6] = { itemID = 22235, price = "40 #valentineday#" }; --Truesilver Shafted Arrow
		[7] = { itemID = 21813, price = "2 #valentineday#" }; --Bag of Heart Candies
		[8] = { itemID = 21812, price = "10 #valentineday#" }; --Box of Chocolates
		[9] = { itemID = 50160, price = "20 #valentineday#" }; --Lovely Dress Box
		[10] = { itemID = 50161, price = "20 #valentineday#" }; --Dinner Suit Box
		[11] = { itemID = 34258, price = "5 #valentineday#" }; --Love Rocket
		[12] = { itemID = 22261, price = "10 #valentineday#" }; --Love Fool
		[16] = { itemID = 49859, price = "1 #valentineday#" }; --"Bravado\" Cologne
		[17] = { itemID = 49861, price = "1 #valentineday#" }; --"STALWART\" Cologne
		[18] = { itemID = 49860, price = "1 #valentineday#" }; --"Wizardry\" Cologne
		[19] = { itemID = 49856, price = "1 #valentineday#" }; --"VICTORY\" Perfume
		[20] = { itemID = 49858, price = "1 #valentineday#" }; --"Forever\" Perfume
		[21] = { itemID = 49857, price = "1 #valentineday#" }; --"Enchantress\" Perfume
		[23] = { itemID = 21815 }; --Love Token
		[24] = { itemID = 49916 }; --Lovely Charm Bracelet
	};
	{
		Name = "Page 2";
		[1] = { icon = "INV_Box_02", name = WHITE.. AL["Lovely Dress Box"] };
		[2] = { itemID = 22279 }; --Lovely Black Dress
		[3] = { itemID = 22276 }; --Lovely Red Dress
		[4] = { itemID = 22278 }; --Lovely Blue Dress
		[5] = { itemID = 22280 }; --Lovely Purple Dress
		[7] = { icon = "INV_Box_01", name = WHITE.. AL["Dinner Suit Box"] };
		[8] = { itemID = 22277 }; --Red Dinner Suit
		[9] = { itemID = 22281 }; --Blue Dinner Suit
		[10] = { itemID = 22282 }; --Purple Dinner Suit
		[16] = { icon = "INV_ValentinesBoxOfChocolates02", name = WHITE..AL["Box of Chocolates"] };
		[17] = { itemID = 22237 }; --Dark Desire
		[18] = { itemID = 22238 }; --Very Berry Cream
		[19] = { itemID = 22236 }; --Buttermilk Deligh
		[20] = { itemID = 22239 }; --Sweet Surprise 
		[22] = { icon = "inv_valentinescandysack", name = WHITE.. AL["Bag of Heart Candies"] };
		[23] = { itemID = 21816 }; --Heart Candy
		[24] = { itemID = 21817 }; --Heart Candy
		[25] = { itemID = 21818 }; --Heart Candy
		[26] = { itemID = 21819 }; --Heart Candy
		[27] = { itemID = 21820 }; --Heart Candy
		[28] = { itemID = 21821 }; --Heart Candy
		[29] = { itemID = 21822 }; --Heart Candy
		[30] = { itemID = 21823 }; --Heart Candy
	};
	{
		Name = "Page 3";
		[1] = { itemID = 51804 }; --Winking Eye of Love
		[2] = { itemID = 51805 }; --Heartbreak Charm
		[3] = { itemID = 51806 }; --Shard of Pirouetting Happiness
		[4] = { itemID = 51807 }; --Sweet Perfume Broach
		[5] = { itemID = 51808 }; --Choker of the Pure Heart
		[7] = { itemID = 49715 }; --Forever-Lovely Rose
		[8] = { itemID = 50741 }; --Vile Fumigator's Mask
		[16] = { itemID = 50446 }; --Toxic Wasteling
		[17] = { itemID = 50471 }; --The Heartbreaker
		[19] = { itemID = 50250 }; --Big Love Rocket
	};
};

----------------------
--- Lunar Festival ---
----------------------

AtlasLoot_Data["LunarFestival"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Lunar Festival"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 21540 }; --Elune's Lantern
		[3] = { itemID = 21157 }; --Festive Green Dress
		[4] = { itemID = 21538 }; --Festive Pink Dress
		[5] = { itemID = 21539 }; --Festive Purple Dress
		[7] = { itemID = 21541 }; --Festive Black Pant Suit
		[8] = { itemID = 21544 }; --Festive Blue Pant Suit
		[9] = { itemID = 21543 }; --Festive Teal Pant Suit
		[11] = { itemID = 21537 }; --Festival Dumplings
		[13] = { itemID = 21713 }; --Elune's Candle
		[15] = { itemID = 21100 }; --Coin of Ancestry
		[16] = { icon = "INV_Box_02", name = AL["Lunar Festival Fireworks Pack"] };
		[17] = { itemID = 21558 }; --Small Blue Rocket
		[18] = { itemID = 21559 }; --Small Green Rocket
		[19] = { itemID = 21557 }; --Small Red Rocket
		[20] = { itemID = 21561 }; --Small White Rocket
		[21] = { itemID = 21562 }; --Small Yellow Rocket
		[22] = { itemID = 21589 }; --Large Blue Rocket
		[23] = { itemID = 21590 }; --Large Green Rocket
		[24] = { itemID = 21592 }; --Large Red Rocket
		[25] = { itemID = 21593 }; --Large White Rocket
		[26] = { itemID = 21595 }; --Large Yellow Rocket
		[28] = { icon = "INV_Misc_LuckyMoneyEnvelope", name = AL["Lucky Red Envelope"] };
		[29] = { itemID = 21744 }; --Lucky Rocket Cluster
		[30] = { itemID = 21745 }; --Elder's Moonstone
	};
	{
		Name = AL["Crafting Patterns"];
		[1] = { itemID = 21738 }; --Schematic: Firework Launcher 
		[3] = { icon = "INV_Scroll_03", name = AL["Small Rocket Recipes"] };
		[4] = { itemID = 21724 }; --Schematic: Small Blue Rocket
		[5] = { itemID = 21725 }; --Schematic: Small Green Rocket
		[6] = { itemID = 21726 }; --Schematic: Small Red Rocket
		[8] = { icon = "INV_Scroll_04", name = AL["Large Rocket Recipes"] };
		[9] = { itemID = 21727 }; --Schematic: Large Blue Rocket
		[10] = { itemID = 21728 }; --Schematic: Large Green Rocket
		[11] = { itemID = 21729 }; --Schematic: Large Red Rocket
		[13] = { itemID = 21722 }; --Pattern: Festival Dress
		[16] = { itemID = 21737 }; --Schematic: Cluster Launcher
		[18] = { icon = "INV_Scroll_05", name = AL["Cluster Rocket Recipes"] };
		[19] = { itemID = 21730 }; --Schematic: Blue Rocket Cluster
		[20] = { itemID = 21731 }; --Schematic: Green Rocket Cluster
		[21] = { itemID = 21732 }; --Schematic: Red Rocket Cluster
		[23] = { icon = "INV_Scroll_06", name = AL["Large Cluster Rocket Recipes"] };
		[24] = { itemID = 21733 }; --Schematic: Large Blue Rocket Cluster
		[25] = { itemID = 21734 }; --Schematic: Large Green Rocket Cluster
		[26] = { itemID = 21735 }; --Schematic: Large Red Rocket Cluster
		[28] = { itemID = 21723 }; --Pattern: Festival Suit
	};
};

-------------------------------
--- Midsummer Fire Festival ---
-------------------------------

local lordAhuneTBC = {
	Name = AL["Lord Ahune"];
	[1] = { itemID = 35507 }; --Amulet of Bitter Hatred
	[2] = { itemID = 35509 }; --Amulet of Glacial Tranquility
	[3] = { itemID = 35508 }; --Choker of the Arctic Flow
	[4] = { itemID = 35511 }; --Hailstone Pendant
	[6] = { itemID = 35498 }; --Formula: Enchant Weapon - Deathfrost
	[7] = { itemID = 34955 }; --Scorched Stone
	[9] = { itemID = 35723 }; --Shards of Ahune
	[10] = { itemID = 35279 }; --Tabard of Summer Skies
	[11] = { itemID = 35280 }; --Tabard of Summer Flames
	[16] = { itemID = 35497 }; --Cloak of the Frigid Winds
	[17] = { itemID = 35496 }; --Icebound Cloak
	[18] = { itemID = 35494 }; --Shroud of Winter's Chill
	[19] = { itemID = 35495 }; --The Frost Lord's War Cloak
	[20] = { itemID = 35514 }; --Frostscythe of Lord Ahune
};

local lordAhuneWRATH = {
	Name = AL["Lord Ahune"];
	[1] = { itemID = 54805 }; --Cloak of the Frigid Winds
	[2] = { itemID = 54801 }; --Icebound Cloak
	[3] = { itemID = 54804 }; --Shroud of Winter's Chill
	[4] = { itemID = 54803 }; --The Frost Lord's Battle Shroud
	[5] = { itemID = 54802 }; --The Frost Lord's War Cloak
	[7] = { itemID = 35498 }; --Formula: Enchant Weapon - Deathfrost
	[9] = { itemID = 35723 }; --Shards of Ahune
	[10] = { itemID = 35279 }; --Tabard of Summer Skies
	[11] = { itemID = 35280 }; --Tabard of Summer Flames
	[16] = { itemID = 54536 }; --Satchel of Chilled Goods
	[17] = { itemID = 54806 }; --Frostscythe of Lord Ahune
	[18] = { itemID = 53641 }; --Ice Chip
};

local midSummerMain = {
	Name = AL["Midsummer Fire Festival"];
	[1] = { itemID = 34686, price = "350 #fireflower#" }; --Brazier of Dancing Flames
	[2] = { itemID = 23083, price = "350 #fireflower#" }; --Captured Flame
	[4] = { itemID = 23379 }; --Cinder Bracers
	[6] = { itemID = 23246, price = "2 #fireflower#" }; --Fiery Festival Brew
	[7] = { itemID = 23435, price = "5 #fireflower#" }; --Elderberry Pie
	[8] = { itemID = 23327, price = "5 #fireflower#" }; --Fire-toasted Bun
	[9] = { itemID = 23326, price = "5 #fireflower#" }; --Midsummer Sausage
	[10] = { itemID = 23211, price = "5 #fireflower#" }; --Toasted Smorc
	[11] = { itemID = 34684, price = "2 #fireflower#" }; --Handful of Summer Petals
	[12] = { itemID = 23215, price = "5 #fireflower#" }; --Bag of Smorc Ingredients
	[13] = { itemID = 34599, price = "5 #fireflower#" }; --Juggling Torch
	[15] = { itemID = 23247 }; --Burning Blossom
	[16] = { itemID = 23323 }; --Crown of the Fire Festival
	[17] = { itemID = 23324, price = "100 #fireflower#" }; --Mantle of the Fire Festival
	[18] = { itemID = 34685, price = "100 #fireflower#" }; --Vestment of Summer
	[19] = { itemID = 34683, price = "200 #fireflower#" }; --Sandals of Summer
}

AtlasLoot_Data["MidsummerFestivalCLASSIC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
};

AtlasLoot_Data["MidsummerFestivalTBC"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
	lordAhuneTBC;
};

AtlasLoot_Data["MidsummerFestivalWRATH"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
	lordAhuneWRATH;
};

-------------------
--- Noblegarden ---
-------------------

AtlasLoot_Data["Noblegarden"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Noblegarden"];
	{
		Name = AL["Noblegarden"];
		[2] = { itemID = 44793, price = "100 #noblegarden#" }; --Tome of Polymorph: Rabbit
		[3] = { itemID = 44794, price = "100 #noblegarden#" }; --Spring Rabbit's Foot
		[4] = { itemID = 44803, price = "50 #noblegarden#" }; --Spring Circlet
		[5] = { itemID = 19028, price = "50 #noblegarden#" }; --Elegant Dress
		[6] = { itemID = 44800, price = "50 #noblegarden#" }; --Spring Robes
		[7] = { itemID = 45073, price = "50 #noblegarden#" }; --Spring Flowers
		[8] = { itemID = 6833, price = "25 #noblegarden#" }; --White Tuxedo Shirt
		[9] = { itemID = 6835, price = "25 #noblegarden#" }; --Black Tuxedo Pants
		[10] = { itemID = 44792, price = "10 #noblegarden#" }; --Blossoming Branch
		[11] = { itemID = 44818, price = "5 #noblegarden#" }; --Noblegarden Egg
		[13] = { itemID = 45067 }; --Egg Basket
		[14] = { itemID = 44791 }; --Noblegarden Chocolate
	};
};
------------------------
--- Pilgrim's Bounty ---
------------------------

AtlasLoot_Data["PilgrimsBounty"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Pilgrim's Bounty"];
	{
		Name = AL["Pilgrim's Bounty"];
		[1] = { itemID = 46809 }; --Bountiful Cookbook
		[2] = { itemID = 44860 }; --Recipe: Spice Bread Stuffing
		[3] = { itemID = 44862 }; --Recipe: Pumpkin Pie
		[4] = { itemID = 44858 }; --Recipe: Cranberry Chutney
		[5] = { itemID = 44859 }; --Recipe: Candied Sweet Potato
		[6] = { itemID = 44861 }; --Recipe: Slow-Roasted Turkey
		[7] = { itemID = 46888 }; --Bountiful Basket
		[8] = { itemID = 44855 }; --Teldrassil Sweet Potato
		[9] = { itemID = 44854 }; --Tangy Wetland Cranberries
		[10] = { itemID = 46784 }; --Ripe Elwynn Pumpkin
		[11] = { itemID = 44835 }; --Autumnal Herbs
		[12] = { itemID = 44853 }; --Honey
		[16] = { itemID = 44810 }; --Turkey Cage
		[17] = { itemID = 46723 }; --Pilgrim's Hat
		[18] = { itemID = 46800 }; --Pilgrim's Attire
		[19] = { itemID = 44785 }; --Pilgrim's Dress
		[20] = { itemID = 46824 }; --Pilgrim's Robe
		[21] = { itemID = 44788 }; --Pilgrim's Boots
		[22] = { itemID = 44844 }; --Turkey Caller
	};
};

--------------------------
--- Reaccouring Events ---
--------------------------

-------------------------------------
--- Bash'ir Landing Skyguard Raid ---
-------------------------------------

AtlasLoot_Data["BashirLanding"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = "Bash'ir Landing Skyguard";
	{
		Name = AL["Bash'ir Landing Skyguard Raid"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Phase 1"], desc = "=q1="..AL["Aether-tech Assistant"] };
		[2] = { itemID = 32596 }; --Unstable Flask of the Elder
		[3] = { itemID = 32600 }; --Unstable Flask of the Physician
		[4] = { itemID = 32599 }; --Unstable Flask of the Bandit
		[5] = { itemID = 32597 }; --Unstable Flask of the Soldier
		[7] = { icon = "INV_Box_01", name = WHITE..AL["Phase 2"], desc = "=q1="..AL["Aether-tech Adept"] };
		[8] = { itemID = 32634 }; --Unstable Amethyst
		[9] = { itemID = 32637 }; --Unstable Citrine
		[10] = { itemID = 32635 }; --Unstable Peridot
		[11] = { itemID = 32636 }; --Unstable Sapphire
		[12] = { itemID = 32639 }; --Unstable Talasite
		[13] = { itemID = 32638 }; --Unstable Topaz
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Phase 3"], desc = "=q1="..AL["Aether-tech Master"] };
		[17] = { itemID = 32641 }; --Imbued Unstable Diamond
		[18] = { itemID = 32640 }; --Potent Unstable Diamond
		[19] = { itemID = 32759 }; --Accelerator Module
		[20] = { itemID = 32630 }; --Small Gold Metamorphosis Geode
		[21] = { itemID = 32631 }; --Small Silver Metamorphosis Geode
		[22] = { itemID = 32627 }; --Small Copper Metamorphosis Geode
		[23] = { itemID = 32625 }; --Small Iron Metamorphosis Geode
		[24] = { itemID = 32629 }; --Large Gold Metamorphosis Geode
		[25] = { itemID = 32628 }; --Large Silver Metamorphosis Geode
		[26] = { itemID = 32626 }; --Large Copper Metamorphosis Geode
		[27] = { itemID = 32624 }; --Large Iron Metamorphosis Geode
	};
};
----------------------
--- Darkmoon Faire ---
----------------------

AtlasLoot_Data["Darkmoon"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = BabbleFaction["Darkmoon Faire"];
	{
		Name = AL["Darkmoon Faire Rewards"];
		[1] = { itemID = 19491, price = "1200 #darkmoon#" }; --Amulet of the Darkmoon
		[2] = { itemID = 19426, price = "1200 #darkmoon#" }; --Orb of the Darkmoon
		[3] = { itemID = 19296, price = "40 #darkmoon#" }; --Greater Darkmoon Prize
		[4] = { itemID = 19297, price = "12 #darkmoon#" }; --Lesser Darkmoon Prize
		[5] = { itemID = 19298, price = "5 #darkmoon#" }; --Minor Darkmoon Prize
		[6] = { itemID = 19291, price = "50 #darkmoon#" }; --Darkmoon Storage Box
		[7] = { itemID = 19293, price = "50 #darkmoon#" }; --Last Year's Mutton
		[8] = { itemID = 22729, price = "40 #darkmoon#" }; --Schematic: Steam Tonk Controller
		[9] = { itemID = 19292, price = "10 #darkmoon#" }; --Last Month's Mutton
		[10] = { itemID = 19295, price = "5 #darkmoon#" }; --Darkmoon Flower
		[12] = { itemID = 19182 }; --Darkmoon Faire Prize Ticket
		[16] = { itemID = 19302 }; --Darkmoon Ring
		[17] = { itemID = 19303 }; --Darkmoon Necklace
		[19] = { itemID = 11026 }; --Tree Frog Box
		[20] = { itemID = 11027 }; --Wood Frog Box
		[21] = { itemID = 19450 }; --A Jubling's Tiny Home
	};
	{
		Name = AL["Low Level Decks"];
		[1] = { itemID = 37163 }; --Rogues Deck
		[2] = { itemID = 38318 }; --Darkmoon Robe
		[3] = { itemID = 39509 }; --Darkmoon Vest
		[4] = { itemID = 39507 }; --Darkmoon Chain Shirt
		[6] = { itemID = 37164 }; --Swords Deck
		[7] = { itemID = 39894 }; --Darkcloth Shoulders
		[8] = { itemID = 39895 }; --Cloaked Shoulderpads
		[9] = { itemID = 39897 }; --Azure Shoulderguards
		[16] = { itemID = 44148 }; --Mages Deck
		[17] = { itemID = 44215 }; --Darkmoon Necklace
		[18] = { itemID = 44213 }; --Darkmoon Pendant
		[21] = { itemID = 44158 }; --Demons Deck
		[22] = { itemID = 44217 }; --Darkmoon Dirk
		[23] = { itemID = 44218 }; --Darkmoon Executioner
		[24] = { itemID = 44219 }; --Darkmoon Magestaff
	};
	{
		Name = AL["Original and BC Trinkets"];
		[1] = { itemID = 19228 }; --Beasts Deck
		[2] = { itemID = 19288 }; --Darkmoon Card: Blue Dragon
		[4] = { itemID = 19267 }; --Elementals Deck
		[5] = { itemID = 19289 }; --Darkmoon Card: Maelstrom
		[7] = { itemID = 19277 }; --Portals Deck
		[8] = { itemID = 19290 }; --Darkmoon Card: Twisting Nether
		[10] = { itemID = 19257 }; --Warlords Deck
		[11] = { itemID = 19287 }; --Darkmoon Card: Heroism
		[16] = { itemID = 31890 }; --Blessings Deck
		[17] = { itemID = 31856 }; --Darkmoon Card: Crusade
		[19] = { itemID = 31907 }; --Furies Deck
		[20] = { itemID = 31858 }; --Darkmoon Card: Vengeance
		[22] = { itemID = 31914 }; --Lunacy Deck
		[23] = { itemID = 31859 }; --Darkmoon Card: Madness
		[25] = { itemID = 31891 }; --Storms Deck
		[26] = { itemID = 31857 }; --Darkmoon Card: Wrath
	};
	{
		Name = AL["WotLK Trinkets"];
		[1] = { itemID = 44276 }; --Chaos Deck
		[2] = { itemID = 42989 }; --Darkmoon Card: Berserker!
		[4] = { itemID = 44259 }; --Prisms Deck
		[5] = { itemID = 42988 }; --Darkmoon Card: Illusion
		[7] = { itemID = 44294 }; --Undeath Deck
		[8] = { itemID = 42990 }; --Darkmoon Card: Death
		[16] = { itemID = 44326 }; --Nobles Deck
		[17] = { itemID = 44253 }; --Darkmoon Card: Greatness
		[18] = { itemID = 42987 }; --Darkmoon Card: Greatness
		[19] = { itemID = 44254 }; --Darkmoon Card: Greatness
		[20] = { itemID = 44255 }; --Darkmoon Card: Greatness
	};
};

--------------------------
--- Elemental Invasion ---
--------------------------

AtlasLoot_Data["ElementalInvasion"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Elemental Invasion"];
	{
		Name = AL["Elemental Invasion"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Baron Charr"].."", "=q1="..AL["Fire"]..", "..BabbleZone["Un'Goro Crater"] };
		[2] = { itemID = 18671 }; --Baron Charr's Sceptre
		[3] = { itemID = 19268 }; --Ace of Elementals
		[4] = { itemID = 18672 }; --Elemental Ember
		[6] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Princess Tempestria"].."", "=q1="..AL["Water"]..", "..BabbleZone["Winterspring"] };
		[7] = { itemID = 18678 }; --Tempestria's Frozen Necklace
		[8] = { itemID = 19268 }; --Ace of Elementals
		[9] = { itemID = 21548 }; --Pattern: Stormshroud Gloves
		[10] = { itemID = 18679 }; --Frigid Ring
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Avalanchion"].."", "=q1="..AL["Earth"]..", "..BabbleZone["Azshara"] };
		[17] = { itemID = 18673 }; --Avalanchion's Stony Hide
		[18] = { itemID = 19268 }; --Ace of Elementals
		[19] = { itemID = 18674 }; --Hardened Stone Band
		[21] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["The Windreaver"].."", "=q1="..AL["Wind"]..", "..BabbleZone["Silithus"] };
		[22] = { itemID = 18676 }; --Sash of the Windreaver
		[23] = { itemID = 19268 }; --Ace of Elementals
		[24] = { itemID = 21548 }; --Pattern: Stormshroud Gloves
		[25] = { itemID = 18677 }; --Zephyr Cloak
	};
};

---------------------------------
--- Gurubashi Arena Booty Run ---
---------------------------------

AtlasLoot_Data["GurubashiArena"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Gurubashi Arena Booty Run"];
	{
		Name = AL["Gurubashi Arena Booty Run"];
		[1] = { itemID = 18709 }; --Arena Wristguards
		[2] = { itemID = 18710 }; --Arena Bracers
		[3] = { itemID = 18711 }; --Arena Bands
		[4] = { itemID = 18712 }; --Arena Vambraces
		[16] = { itemID = 18706, desc = ", =q1="..AL["This Item Begins a Quest"] }; --Arena Master
		[17] = { itemID = 19024 }; --Arena Grand Master
	};
};

------------------------------------------
--- Stranglethorn Fishing Extravaganza ---
------------------------------------------

AtlasLoot_Data["FishingExtravaganza"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = "Stranglethorn Fishing";
	{
		Name = AL["Stranglethorn Fishing Extravaganza"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["First Prize"], "=q1="..AL["Master Angler"] };
		[2] = { itemID = 19970 }; --Arcanite Fishing Pole
		[3] = { itemID = 19979 }; --Hook of the Master Angler
		[5] = { icon = "INV_Box_01", name = WHITE..AL["Rare Fish"] };
		[6] = { itemID = 19805 }; --Keefer's Angelfish
		[7] = { itemID = 19803 }; --Brownell's Blue Striped Racer
		[8] = { itemID = 19806 }; --Dezian Queenfish
		[9] = { itemID = 19808 }; --Rockhide Strongfish
		[20] = { icon = "INV_Box_01", name = WHITE..AL["Rare Fish Rewards"] };
		[21] = { itemID = 19972 }; --Lucky Fishing Hat
		[22] = { itemID = 19969 }; --Nat Pagle's Extreme Anglin' Boots
		[23] = { itemID = 19971 }; --High Test Eternium Fishing Line
	};
};

------------------------
--- Triggered Events ---
------------------------

-----------------------
--- Abyssal Council ---
-----------------------

AtlasLoot_Data["AbyssalCouncil"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Abyssal Council"];
	{
		Name = AL["Templars"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Crimson Templar"].."", "=q1="..AL["Fire"] };
		[2] = { itemID = 20657 }; --Crystal Tipped Stiletto
		[3] = { itemID = 20655 }; --Abyssal Cloth Handwraps
		[4] = { itemID = 20656 }; --Abyssal Mail Sabatons
		[5] = { itemID = 20513 }; --Abyssal Crest
		[7] = { icon = "INV_Box_01", name = WHITE..AL["Azure Templar"].."", "=q1="..AL["Water"] };
		[8] = { itemID = 20654 }; --Amethyst War Staff
		[9] = { itemID = 20652 }; --Abyssal Cloth Slippers
		[10] = { itemID = 20653 }; --Abyssal Plate Gauntlets
		[11] = { itemID = 20513 }; --Abyssal Crest
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Hoary Templar"].."", "=q1="..AL["Wind"] };
		[17] = { itemID = 20660 }; --Stonecutting Glaive
		[18] = { itemID = 20658 }; --Abyssal Leather Boots
		[19] = { itemID = 20659 }; --Abyssal Mail Handguards
		[20] = { itemID = 20513 }; --Abyssal Crest
		[22] = { icon = "INV_Box_01", name = WHITE..AL["Earthen Templar"].."", "=q1="..AL["Earth"] };
		[23] = { itemID = 20663 }; --Deep Strike Bow
		[24] = { itemID = 20661 }; --Abyssal Leather Gloves
		[25] = { itemID = 20662 }; --Abyssal Plate Greaves
		[26] = { itemID = 20513 }; --Abyssal Crest
	};
	{
		Name = AL["Dukes"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["The Duke of Cynders"].."", "=q1="..AL["Fire"] };
		[2] = { itemID = 20665 }; --Abyssal Leather Leggings
		[3] = { itemID = 20666 }; --Hardened Steel Warhammer
		[4] = { itemID = 20514 }; --Abyssal Signet
		[5] = { itemID = 20664 }; --Abyssal Cloth Sash
		[6] = { itemID = 21989 }; --Cinder of Cynders
		[8] = { icon = "INV_Box_01", name = WHITE..AL["The Duke of Fathoms"].."", "=q1="..AL["Water"] };
		[9] = { itemID = 20668 }; --Abyssal Mail Legguards
		[10] = { itemID = 20669, price = "29.62%" }; --Darkstone Claymore
		[11] = { itemID = 20514 }; --Abyssal Signet
		[12] = { itemID = 20667 }; --Abyssal Leather Belt
		[16] = { icon = "INV_Box_01", name = WHITE..AL["The Duke of Zephyrs"].."", "=q1="..AL["Wind"] };
		[17] = { itemID = 20674 }; --Abyssal Cloth Pants
		[18] = { itemID = 20675, price = "29.73%" }; --Soulrender
		[19] = { itemID = 20514 }; --Abyssal Signet
		[20] = { itemID = 20673 }; --Abyssal Plate Girdle
		[23] = { icon = "INV_Box_01", name = WHITE..AL["The Duke of Shards"].."", "=q1="..AL["Earth"] };
		[24] = { itemID = 20671 }; --Abyssal Plate Legplates
		[25] = { itemID = 20672 }; --Sparkling Crystal Wand
		[26] = { itemID = 20514 }; --Abyssal Signet
		[27] = { itemID = 20670 }; --Abyssal Mail Clutch
	};
	{
		Name = AL["High Council"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Prince Skaldrenox"].."", "=q1="..AL["Fire"] };
		[2] = { itemID = 20682 }; --Elemental Focus Band
		[3] = { itemID = 20515 }; --Abyssal Scepter
		[4] = { itemID = 20681 }; --Abyssal Leather Bracers
		[5] = { itemID = 20680 }; --Abyssal Mail Pauldrons
		[7] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Lord Skwol"].."", "=q1="..AL["Water"] };
		[8] = { itemID = 20685, price = "24.48%" }; --Wavefront Necklace
		[9] = { itemID = 20515 }; --Abyssal Scepter
		[10] = { itemID = 20684 }; --Abyssal Mail Armguards
		[11] = { itemID = 20683 }; --Abyssal Plate Epaulets
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["High Marshal Whirlaxis"].."", "=q1="..AL["Wind"] };
		[17] = { itemID = 20691 }; --Windshear Cape
		[18] = { itemID = 20515 }; --Abyssal Scepter
		[19] = { itemID = 20690 }; --Abyssal Cloth Wristbands
		[20] = { itemID = 20689 }; --Abyssal Leather Shoulders
		[22] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Baron Kazum"].."", "=q1="..AL["Earth"] };
		[23] = { itemID = 20688 }; --Earthen Guard
		[24] = { itemID = 20515 }; --Abyssal Scepter
		[25] = { itemID = 20686 }; --Abyssal Cloth Amice
		[26] = { itemID = 20687 }; --Abyssal Plate Vambraces
	};
};

-----------------------
--- Ethereum Prison ---
-----------------------

AtlasLoot_Data["EthereumPrison"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Ethereum Prison"];
	{
		Name = AL["Armbreaker Huffaz"];
		[1] = { itemID = 31943 }; --Ethereum Band
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Fel Tinkerer Zortan"];
		[1] = { itemID = 31573 }; --Mistshroud Boots
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Forgosh"];
		[1] = { itemID = 31565 }; --Skystalker's Boots
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Gul'bor"];
		[1] = { itemID = 31940 }; --Ethereum Torque
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Malevus the Mad"];
		[1] = { itemID = 31581 }; --Slatesteel Boots
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Porfus the Gem Gorger"];
		[1] = { itemID = 31557 }; --Windchanneller's Boots
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Wrathbringer Laz-tarash"];
		[1] = { itemID = 32520 }; --Manaforged Sphere
		[3] = { itemID = 31939 }; --Dark Cloak
		[4] = { itemID = 31938 }; --Enigmatic Cloak
		[5] = { itemID = 31936 }; --Fiery Cloak
		[6] = { itemID = 31935 }; --Frigid Cloak
		[7] = { itemID = 31937 }; --Living Cloak
		[9] = { itemID = 31957 }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928 }; --Dark Band
		[19] = { itemID = 31929 }; --Enigmatic Band
		[20] = { itemID = 31925 }; --Fiery Band
		[21] = { itemID = 31926 }; --Frigid Band
		[22] = { itemID = 31927 }; --Living Band
	};
	{
		Name = AL["Bash'ir Landing Stasis Chambers"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Trelopades"] };
		[2] = { itemID = 32522 }; --Demonic Bulwark
		[3] = { itemID = 31941 }; --Mark of the Nexus-King
		[5] = { icon = "INV_Box_01", name = WHITE..AL["King Dorfbruiser"] };
		[6] = { itemID = 31577 }; --Slatesteel Shoulders
		[7] = { itemID = 31941 }; --Mark of the Nexus-King
		[9] = { icon = "INV_Box_01", name = WHITE..AL["Gorgolon the All-seeing"] };
		[10] = { itemID = 31569 }; --Mistshroud Shoulders
		[11] = { itemID = 31941 }; --Mark of the Nexus-King
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Matron Li-sahar"] };
		[17] = { itemID = 31553 }; --Windchanneller's Mantle
		[18] = { itemID = 31941 }; --Mark of the Nexus-King
		[20] = { icon = "INV_Box_01", name = WHITE..AL["Solus the Eternal"] };
		[21] = { itemID = 31561 }; --Skystalker's Shoulders
		[22] = { itemID = 31941 }; --Mark of the Nexus-King
	};
};

----------------
--- Shartuul ---
----------------

AtlasLoot_Data["Shartuul"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Shartuul"];
	{
		Name = AL["Shartuul"];
		[1] = { itemID = 32941 }; --Corruptor's Signet
		[3] = { itemID = 32676 }; --Depleted Cloth Bracers
		[4] = { itemID = 32675 }; --Depleted Mail Gauntlets
		[5] = { itemID = 32677 }; --Depleted Cloak
		[6] = { itemID = 32678 }; --Depleted Ring
		[7] = { itemID = 32672 }; --Depleted Badge
		[8] = { itemID = 32673 }; --Depleted Dagger
		[9] = { itemID = 32674 }; --Depleted Sword
		[10] = { itemID = 32670 }; --Depleted Two-Handed Axe
		[11] = { itemID = 32671 }; --Depleted Mace
		[12] = { itemID = 32679 }; --Depleted Staff
		[16] = { itemID = 32942 }; --Ring of the Overseer
		[18] = { itemID = 32655 }; --Crystalweave Bracers
		[19] = { itemID = 32656 }; --Crystalhide Handwraps
		[20] = { itemID = 32665 }; --Crystalweave Cape
		[21] = { itemID = 32664 }; --Dreamcrystal Band
		[22] = { itemID = 32658 }; --Badge of Tenacity
		[23] = { itemID = 32659 }; --Crystal-Infused Shiv
		[24] = { itemID = 32660 }; --Crystalforged Sword
		[25] = { itemID = 32663 }; --Apexis Cleaver
		[26] = { itemID = 32661 }; --Apexis Crystal Mace
		[27] = { itemID = 32662 }; --Flaming Quartz Staff
	};
};

---------------
--- Skettis ---
---------------

AtlasLoot_Data["Skettis"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Skettis"];
	{
		Name = AL["Darkscreecher Akkarai"];
		[1] = { itemID = 32529, price = "17.3%" }; --Heretic's Gauntlets
		[2] = { itemID = 32715 }; --Akkarai's Talons
		[4] = { itemID = 31558 }; --Windchanneller's Bindings
		[5] = { itemID = 31555 }; --Windchanneller's Ceinture
		[6] = { itemID = 31566 }; --Skystalker's Bracers
		[7] = { itemID = 31563 }; --Skystalker's Cord
		[8] = { itemID = 31574 }; --Mistshroud Bracers
		[9] = { itemID = 31571 }; --Mistshroud Belt
		[10] = { itemID = 31582 }; --Slatesteel Bracers
		[11] = { itemID = 31579 }; --Slatesteel Girdle
		[12] = { itemID = 32514 }; --Skettis Band
	};
	{
		Name = AL["Karrog"];
		[1] = { itemID = 32533 }; --Karrog's Shard
		[2] = { itemID = 32717 }; --Karrog's Spine
		[4] = { itemID = 31558 }; --Windchanneller's Bindings
		[5] = { itemID = 31555 }; --Windchanneller's Ceinture
		[6] = { itemID = 31566 }; --Skystalker's Bracers
		[7] = { itemID = 31563 }; --Skystalker's Cord
		[8] = { itemID = 31574 }; --Mistshroud Bracers
		[9] = { itemID = 31571 }; --Mistshroud Belt
		[10] = { itemID = 31582 }; --Slatesteel Bracers
		[11] = { itemID = 31579 }; --Slatesteel Girdle
		[12] = { itemID = 32514 }; --Skettis Band
	};
	{
		Name = AL["Gezzarak the Huntress"];
		[1] = { itemID = 32531, price = "16.9%" }; --Gezzarak's Fang
		[2] = { itemID = 32716 }; --Gezzarak's Claws
		[4] = { itemID = 31558 }; --Windchanneller's Bindings
		[5] = { itemID = 31555 }; --Windchanneller's Ceinture
		[6] = { itemID = 31566 }; --Skystalker's Bracers
		[7] = { itemID = 31563 }; --Skystalker's Cord
		[8] = { itemID = 31574 }; --Mistshroud Bracers
		[9] = { itemID = 31571 }; --Mistshroud Belt
		[10] = { itemID = 31582 }; --Slatesteel Bracers
		[11] = { itemID = 31579 }; --Slatesteel Girdle
		[12] = { itemID = 32514 }; --Skettis Band
	};
	{
		Name = AL["Vakkiz the Windrager"];
		[1] = { itemID = 32532 }; --Windrager's Coils
		[2] = { itemID = 32718 }; --Vakkiz's Scale
		[4] = { itemID = 31558 }; --Windchanneller's Bindings
		[5] = { itemID = 31555 }; --Windchanneller's Ceinture
		[6] = { itemID = 31566 }; --Skystalker's Bracers
		[7] = { itemID = 31563 }; --Skystalker's Cord
		[8] = { itemID = 31574 }; --Mistshroud Bracers
		[9] = { itemID = 31571 }; --Mistshroud Belt
		[10] = { itemID = 31582 }; --Slatesteel Bracers
		[11] = { itemID = 31579 }; --Slatesteel Girdle
		[12] = { itemID = 32514 }; --Skettis Band
	};
	{
		Name = AL["Terokk"];
		[1] = { itemID = 32540 }; --Terokk's Might
		[2] = { itemID = 32541 }; --Terokk's Wisdom
		[3] = { itemID = 31556 }; --Windchanneller's Leggings
		[4] = { itemID = 31564 }; --Skystalker's Leggings
		[5] = { itemID = 31572 }; --Mistshroud Pants
		[6] = { itemID = 31580 }; --Slatesteel Leggings
		[7] = { itemID = 32535 }; --Gift of the Talonpriests
		[8] = { itemID = 32534, price = "11.2%" }; --Brooch of the Immortal King
		[9] = { itemID = 32782 }; --Time-Lost Figurine
		[10] = { itemID = 32536, desc = "=ds= =q2="..AL["(has random enchantment)"] }; --Terokk's Gavel
		[11] = { itemID = 32537, desc = "=ds= =q2="..AL["(has random enchantment)"] }; --Terokk's Gavel
	};
	{
		Name = "Talonpriest Ishaal";
		[1] = { itemID = 32523 }; --Ishaal's Almanac
	};
	{
		Name = "Hazzik's Package";
		[1] = { itemID = 32687 }; --Hazzik's Package
	};
};

-----------------------
--- One Time Events ---
-----------------------

------------------------
--- Scourge Invasion ---
------------------------

AtlasLoot_Data["ScourgeInvasionEvent"] = {
	Module = "AtlasLoot_WorldEvents";
	Name = AL["Scourge Invasion"];
	{
		Name = "Page 1";
		[1] = { itemID = 40601 }; --Argent Dawn Banner
		[2] = { itemID = 40593 }; --Argent Tome
		[3] = { itemID = 40492 }; --Argent War Horn
		[5] = { itemID = 23123 }; --Blessed Wizard Oil
		[6] = { itemID = 23122 }; --Consecrated Sharpening Stone
		[8] = { itemID = 22999 }; --Tabard of the Argent Dawn
		[9] = { itemID = 43531 }; --Argent Healing Potion
		[10] = { itemID = 43530 }; --Argent Mana Potion
		[12] = { itemID = 22484, desc = "=ds="..AL["Currency"] }; --Necrotic Rune
		[16] = { itemID = 40110 }; --Haunted Memento
		[18] = { icon = "INV_Box_01", name = WHITE.. AL["Prince Tenris Mirkblood"], "=q5=" .. BabbleZone["Karazhan"] };
		[19] = { itemID = 29434 }; --Badge of Justice
		[20] = { itemID = 39769 }; --Arcanite Ripper
		[21] = { itemID = 38658 }; --Vampiric Batling
	};
	{
		Name = "Page 2";
		[1] = { icon = "INV_Box_01", name = WHITE.. AL["Blessed Regalia of Undead Cleansing"] };
		[2] = { itemID = 43074 }; --Blessed Mantle of Undead Cleansing
		[3] = { itemID = 43072 }; --Blessed Robe of Undead Cleansing
		[4] = { itemID = 43073 }; --Blessed Gloves of Undead Cleansing
		[5] = { itemID = 43075 }; --Blessed Trousers of Undead Cleansing
		[7] = { icon = "INV_Box_01", name = WHITE.. AL["Undead Slayer's Blessed Armor"] };
		[8] = { itemID = 43077 }; --Blessed Shoulderpads of Undead Slaying
		[9] = { itemID = 43076 }; --Blessed Tunic of Undead Slaying
		[10] = { itemID = 43078 }; --Blessed Grips of Undead Slaying
		[11] = { itemID = 43079 }; --Blessed Leggings of Undead Slaying
		[16] = { icon = "INV_Box_01", name = WHITE.. AL["Blessed Garb of the Undead Slayer"] };
		[17] = { itemID = 43081 }; --Blessed Pauldrons of Undead Slaying
		[18] = { itemID = 43080 }; --Blessed Hauberk of Undead Slaying
		[19] = { itemID = 43082 }; --Blessed Handguards of Undead Slaying
		[20] = { itemID = 43083 }; --Blessed Greaves of Undead Slaying
		[22] = { icon = "INV_Box_01", name = WHITE.. AL["Blessed Battlegear of Undead Slaying"] };
		[23] = { itemID = 43068 }; --Blessed Spaulders of Undead Slaying
		[24] = { itemID = 43069 }; --Blessed Breastplate of Undead Slaying
		[25] = { itemID = 43070 }; --Blessed Gauntlets of Undead Slaying
		[26] = { itemID = 43071 }; --Blessed Legplates of Undead Slaying
	};
	{
		Name = "Page 3";
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Balzaphon"], "=q1="..BabbleZone["Stratholme"] };
		[2] = { itemID = 23126 }; --Waistband of Balzaphon
		[3] = { itemID = 23125 }; --Chains of the Lich
		[4] = { itemID = 23124 }; --Staff of Balzaphon
		[6] = { icon = "INV_Box_01", name = WHITE..AL["Lord Blackwood"], "=q1="..BabbleZone["Scholomance"].."" };
		[7] = { itemID = 23156 }; --Blackwood's Thigh
		[8] = { itemID = 23132 }; --Lord Blackwood's Blade
		[9] = { itemID = 23139 }; --Lord Blackwood's Buckler
		[11] = { icon = "INV_Box_01", name = WHITE..AL["Revanchion"], "=q1="..BabbleZone["Dire Maul (East)"] };
		[12] = { itemID = 23127 }; --Cloak of Revanchion
		[13] = { itemID = 23129 }; --Bracers of Mending
		[14] = { itemID = 23128 }; --The Shadow's Grasp
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Scorn"], "=q1="..BabbleZone["Scarlet Monastery"].." - "..BabbleZone["Graveyard"] };
		[17] = { itemID = 23170 }; --The Frozen Clutch
		[18] = { itemID = 23169 }; --Scorn's Icy Choker
		[19] = { itemID = 23168 }; --Scorn's Focal Dagger
		[21] = { icon = "INV_Box_01", name = WHITE..AL["Sever"], "=q1="..BabbleZone["Shadowfang Keep"] };
		[22] = { itemID = 23173 }; --Abomination Skin Leggings
		[23] = { itemID = 23171 }; --The Axe of Severing
		[26] = { icon = "INV_Box_01", name = WHITE..AL["Lady Falther'ess"], "=q1="..BabbleZone["Razorfen Downs"] };
		[27] = { itemID = 23178 }; --Mantle of Lady Falther'ess
		[28] = { itemID = 23177 }; --Lady Falther'ess' Finger
	};
};
