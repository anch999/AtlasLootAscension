local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--Table holding all loot tables is initialised here as it loads early
AtlasLoot_Data = {}
AtlasLoot_MapData = {}
AtlasLoot_ExtraData = {}
AtlasLoot_CraftingData = {
	AquireType = {},
	Trainer = {},
	WorldDrop = {},
	LimitedVendor = {},
	QuestDrop = {},
	MobDrop = {},
	RecipeQuest = {},
	Vendor = {},
	RepVendor = {},
	RecipeVendor = {},
	RecipeWorldDrop = {},
	RecipeRepVendor = {},
}

AtlasLoot_CraftingData["Custom"] = {
[1] = { AL["DISCOVERY_ALCH_ELIXIRFLASK"] };
[2] = { AL["DISCOVERY_ALCH_POTION"] };
[3] = { AL["DISCOVERY_ALCH_XMUTE"] };
[4] = { AL["DISCOVERY_ALCH_PROT"] };
[5] = { AL["DAILY_COOKING_MEAT"], BabbleZone["Shattrath"], 0, 0 };
[6] = { AL["DAILY_COOKING_FISH"], BabbleZone["Shattrath"], 0, 0 };
[7] = { AL["DAILY_FISHING_SHATT"], BabbleZone["Shattrath"], 0, 0 };
[8] = { AL["DEFAULT_RECIPE"] };
[9] = { AL["CRAFTED_ENGINEERS"] };
[10] = { AL["ONYXIA_HEAD_QUEST"], BabbleZone["Onyxia's Lair"], 0, 0 };
[11] = { AL["EDGE_OF_MADNESS"], BabbleZone["Zul'Gurub"], 0, 0 };
[12] = { AL["DISCOVERY_ALCH_WRATH"] };
[13] = { AL["HENRY_STERN_RFD"], BabbleZone["Razorfen Downs"], 0, 0 };
[14] = { AL["DISCOVERY_INSC_MINOR"] };
[15] = { AL["DISCOVERY_INSC_NORTHREND"] };
[16] = { AL["ENG_GNOMER"], BabbleZone["Gnomeregan"], 0, 0 };
[17] = { AL["ENG_FLOOR_ITEM_BRD"], BabbleZone["Blackrock Depths"], 0, 0 };
[18] = { AL["DISCOVERY_ALCH_NORTHREND_RESEARCH"] };
[19] = { AL["DISCOVERY_ALCH_NORTHREND_XMUTE"] };
[20] = { AL["Custom36"] };
[21] = { AL["Custom36"] };
[22] = { AL["AQ40_RANDOM_BOP"], BabbleZone["Temple of Ahn'Qiraj"], 0, 0 };
[23] = { AL["DM_CACHE"], BabbleZone["Dire Maul"], 59.04, 48.82 };
[24] = { AL["SUNWELL_RANDOM"], BabbleZone["Sunwell Plateau"], 0, 0 };
[25] = { AL["BRD_RANDOM_ROOM"], BabbleZone["Blackrock Depths"], 0, 0 };
[26] = { AL["MC_RANDOM"], BabbleZone["Molten Core"], 0, 0 };
[27] = { AL["HYJAL_RANDOM"], BabbleZone["Hyjal Summit"], 0, 0 };
[28] = { AL["Custom36"] };
[29] = { AL["ZA_RANDOM"], BabbleZone["Zul'Aman"], 0, 0 };
[30] = { AL["SCHOLO_BOOK_SPAWN"], BabbleZone["Scholomance"], 0, 0 };
[31] = { AL["STRATH_BS_PLANS"], BabbleZone["Stratholme"], 0, 0 };
[32] = { AL["DM_TRIBUTE"], BabbleZone["Dire Maul"], 59.04, 48.82 };
[33] = { AL["Custom36"] };
[34] = { AL["BT_RANDOM"], BabbleZone["Black Temple"], 0, 0 };
[35] = { AL["Random Level 70 instance drop"] };
[36] = { AL["Custom36"] };
[37] = { AL["SSC_RANDOM"], BabbleZone["Serpentshrine Cavern"], 0, 0 };
[38] = { AL["DAILY_COOKING_DAL"], BabbleZone["Dalaran"], 0, 0 };
[39] = { AL["ULDUAR_RANDOM"], BabbleZone["Ulduar"], 0, 0 };
[40] = { AL["DISCOVERY_INSC_BOOK"] };
[41] = { AL["Custom41"] };
[42] = { AL["TOC25_RANDOM"] };
[43] = { AL["TK_RANDOM"], BabbleZone["The Eye"], 0, 0 };
[44] = { AL["Custom44"] };
[45] = { AL["Custom45"] };
[46] = { AL["Random Level 70 instance drop/Raid Trash Drop"].."/"..AL["TBC Callboard Cache"] };
}

AtlasLoot_CraftingData["Seasonal"] = {
[1] = { GetCategoryInfo(156) }; -- Winter's Veil
[2] = { GetCategoryInfo(160) }; -- Lunar Festival
[3] = { AL["Darkmoon Faire"] }; -- Darkmoon Faire
[4] = { GetCategoryInfo(161) }; -- Midsummer
[5] = { GetCategoryInfo(14981) }; -- Pilgrim's Bounty
[6] = { AL["Day of the Dead"] }; -- Day of the Dead
}



----------------------
--- Heirloom Items ---
----------------------
AtlasLoot_Data["Heirloom"] = {
	Name = AL["Heirloom"];
	{
		Name = "Chests";
		[1] = { itemID = 1648691, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Tattered Dreadmist Robe
		[2] = { itemID = 1648687, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Preened Ironfeather Breastplate
		[3] = { itemID = 1648689, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Stained Shadowcraft Tunic
		[4] = { itemID = 1648677, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Champion's Deathdealer Breastplate
		[5] = { itemID = 1648683, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Mystical Vest of Elements
		[6] = { itemID = 1648685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Polished Breastplate of Valor
		[7] = { itemID = 3148685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Polished Breastplate of Might
	},
	{
		Name = "Shoulders";
		[1] = { itemID = 1642985, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Tattered Dreadmist Mantle
		[2] = { itemID = 1642984, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Preened Ironfeather Shoulders
		[3] = { itemID = 1642952, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Stained Shadowcraft Spaulders
		[4] = { itemID = 1642950, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Champion Herod's Shoulder
		[5] = { itemID = 1642951, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Mystical Pauldrons of Elements
		[6] = { itemID = 1642949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Polished Spaulders of Valor
		[7] = { itemID = 3142949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Polished Spaulders of Might
		[16] = { itemID = 1644107, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Exquisite Sunderseer Mantle
		[17] = { itemID = 1644103, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Exceptional Stormshroud Shoulders
		[18] = { itemID = 1644105, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Lasting Feralheart Spaulders
		[19] = { itemID = 1644102, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Aged Pauldrons of The Five Thunders
		[20] = { itemID = 1644101, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Prized Beastmaster's Mantle
		[21] = { itemID = 1644100, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Pristine Lightforge Spaulders
		[22] = { itemID = 1644099, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Strengthened Stockade Pauldrons
	},
	{
		Name = AL["Accessories"];
		[1] = { itemID = 1642992, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Discerning Eye of the Beast
		[2] = { itemID = 1642991, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Swift Hand of Justice
		[3] = { itemID = 1644098, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Inherited Insignia of the Alliance
		[4] = { itemID = 1644097, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Inherited Insignia of the Horde
		[5] = { itemID = 339076, price = ""  }; --Pendant of Adventure
		[6] = { itemID = 339100, price = ""  }; --Pendant of Discovery
		[7] = { itemID = 50255 }; --Dread Pirate Ring
	},
	{
		Name = "Weapons";
		[1] = { itemID = 1642944, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Balanced Heartseeker
		[2] = { itemID = 1642945, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Venerable Dal'Rend's Sacred Charge
		[3] = { itemID = 1642948, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Devout Aurastone Hammer
		[4] = { itemID = 1648716, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Venerable Mass of McGowan
		[5] = { itemID = 1644091, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Sharpened Scarlet Kris
		[6] = { itemID = 1644096, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Battleworn Thrash Blade
		[7] = { itemID = 1644094, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --The Blessed Hammer of Grace
		[9] = { itemID = 3140350, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Urn of Aspiring Light
		[10] = { itemID = 3148335, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Polished Observer's Shield
		[16] = { itemID = 1642943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Bloodied Arcanite Reaper
		[17] = { itemID = 3142943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Sturdied Arcanite Spear
		[18] = { itemID = 1648718, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Repurposed Lava Dredger
		[19] = { itemID = 1642947, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Dignified Headmaster's Charge
		[20] = { itemID = 1644092, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Reforged Truesilver Champion
		[21] = { itemID = 1644095, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Grand Staff of Jordan
		[23] = { itemID = 1642946, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Charmed Ancient Bone Bow
		[24] = { itemID = 1644093, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Upgraded Dwarven Hand Cannon
		[25] = { itemID = 1642846, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Wand of the Forgotten Lich
	},
}