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
	Name = AL["Heirloom"],
	{
		Name = "Chests";
		[1] = { itemID = 48691, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Tattered Dreadmist Robe
		[2] = { itemID = 48687, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Preened Ironfeather Breastplate
		[3] = { itemID = 48689, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Stained Shadowcraft Tunic
		[4] = { itemID = 48677, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Champion's Deathdealer Breastplate
		[5] = { itemID = 48683, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Mystical Vest of Elements
		[6] = { itemID = 48685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Polished Breastplate of Valor
		[7] = { itemID = 1548685, price = "1200 #tokenofprestige# | 192000 #marks# | 800 #bazaar#"  }; --Polished Breastplate of Might

	},
	{
		Name = "Shoulders";
		[1] = { itemID = 42985, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Tattered Dreadmist Mantle
		[2] = { itemID = 42984, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Preened Ironfeather Shoulders
		[3] = { itemID = 42952, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Stained Shadowcraft Spaulders
		[4] = { itemID = 42950, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Champion Herod's Shoulder
		[5] = { itemID = 42951, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Mystical Pauldrons of Elements
		[6] = { itemID = 42949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Polished Spaulders of Valor
		[7] = { itemID = 1542949, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Polished Spaulders of Might
		[16] = { itemID = 44107, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Exquisite Sunderseer Mantle
		[17] = { itemID = 44103, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Exceptional Stormshroud Shoulders
		[18] = { itemID = 44105, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Lasting Feralheart Spaulders
		[19] = { itemID = 44102, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Aged Pauldrons of The Five Thunders
		[20] = { itemID = 44101, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Prized Beastmaster's Mantle
		[21] = { itemID = 44100, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Pristine Lightforge Spaulders
		[22] = { itemID = 44099, price = "800 #tokenofprestige# | 128000 #marks# | 600 #bazaar#"  }; --Strengthened Stockade Pauldrons
	},
	{
		Name = "Trinkets/Rings";
		[1] = { itemID = 42992, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Discerning Eye of the Beast
		[2] = { itemID = 42991, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Swift Hand of Justice
		[3] = { itemID = 44098, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Inherited Insignia of the Alliance
		[4] = { itemID = 44097, price = "500 #tokenofprestige# | 80000 #marks# | 500 #bazaar#"  }; --Inherited Insignia of the Horde
		[5] = { itemID = 50255 }; --Dread Pirate Ring
	},
	{
		Name = "Weapons";
		[1] = { itemID = 42944, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Balanced Heartseeker
		[2] = { itemID = 42945, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Venerable Dal'Rend's Sacred Charge
		[3] = { itemID = 42948, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Devout Aurastone Hammer
		[4] = { itemID = 48716, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Venerable Mass of McGowan
		[5] = { itemID = 44091, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Sharpened Scarlet Kris
		[6] = { itemID = 44096, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Battleworn Thrash Blade
		[7] = { itemID = 44094, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --The Blessed Hammer of Grace
		[9] = { itemID = 1540350, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Urn of Aspiring Light
		[10] = { itemID = 1548335, price = "600 #tokenofprestige# | 96000 #marks# | 600 #bazaar#"  }; --Polished Observer's Shield
		[16] = { itemID = 42943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Bloodied Arcanite Reaper
		[17] = { itemID = 1542943, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Sturdied Arcanite Spear
		[18] = { itemID = 48718, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Repurposed Lava Dredger
		[19] = { itemID = 42947, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Dignified Headmaster's Charge
		[20] = { itemID = 44092, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Reforged Truesilver Champion
		[21] = { itemID = 44095, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Grand Staff of Jordan
		[23] = { itemID = 42946, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Charmed Ancient Bone Bow
		[24] = { itemID = 44093, price = "1000 #tokenofprestige# | 160000 #marks# | 800 #bazaar#"  }; --Upgraded Dwarven Hand Cannon
	},
}