local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

AtlasLoot_Data["AquireType"] = {
	[1] = AL["Trainer/Book of Artisans"],
	[2] = AL["Vendor"],
	[3] = AL["Mod Drop"],
	[4] = AL["Quest"],
	[5] = AL["Seasonal"],
	[6] = AL["Reputation"],
	[7] = AL["World Drop"],
	[8] = {	[1] =    	AL["DISCOVERY_ALCH_ELIXIRFLASK"] ,
			[2] =    	AL["DISCOVERY_ALCH_POTION"] ,
			[3] =    	AL["DISCOVERY_ALCH_XMUTE"] ,
			[4] =    	AL["DISCOVERY_ALCH_PROT"] ,
			[5] =  {  	AL["DAILY_COOKING_MEAT"], BabbleZone["Shattrath"], 0, 0 },
			[6] =  {  	AL["DAILY_COOKING_FISH"], BabbleZone["Shattrath"], 0, 0 },
			[7] =  {  	AL["DAILY_FISHING_SHATT"], BabbleZone["Shattrath"], 0, 0 },
			[9] =    	AL["CRAFTED_ENGINEERS"] ,
			[10] = {  	AL["ONYXIA_HEAD_QUEST"], BabbleZone["Onyxia's Lair"], 0, 0 },
			[11] = {  	AL["EDGE_OF_MADNESS"], BabbleZone["Zul'Gurub"], 0, 0 },
			[12] =   	AL["DISCOVERY_ALCH_WRATH"] ,
			[13] = {  	AL["HENRY_STERN_RFD"], BabbleZone["Razorfen Downs"], 0, 0 },
			[14] =   	AL["DISCOVERY_INSC_MINOR"] ,
			[15] =   	AL["DISCOVERY_INSC_NORTHREND"] ,
			[16] = {  	AL["ENG_GNOMER"], BabbleZone["Gnomeregan"], 0, 0 },
			[17] = {  	AL["ENG_FLOOR_ITEM_BRD"], BabbleZone["Blackrock Depths"], 0, 0 },
			[18] =   	AL["DISCOVERY_ALCH_NORTHREND_RESEARCH"] ,
			[19] =   	AL["DISCOVERY_ALCH_NORTHREND_XMUTE"] ,
			[22] = {  	AL["AQ40_RANDOM_BOP"], BabbleZone["Temple of Ahn'Qiraj"], 0, 0 },
			[23] = {  	AL["DM_CACHE"], BabbleZone["Dire Maul"], 59.04, 48.82 },
			[24] = {  	AL["SUNWELL_RANDOM"], BabbleZone["Sunwell Plateau"], 0, 0 },
			[25] = {  	AL["BRD_RANDOM_ROOM"], BabbleZone["Blackrock Depths"], 0, 0 },
			[26] = {  	AL["MC_RANDOM"], BabbleZone["Molten Core"], 0, 0 },
			[27] = {  	AL["HYJAL_RANDOM"], BabbleZone["Hyjal Summit"], 0, 0 },
			[29] = {  	AL["ZA_RANDOM"], BabbleZone["Zul'Aman"], 0, 0 },
			[30] = {  	AL["SCHOLO_BOOK_SPAWN"], BabbleZone["Scholomance"], 0, 0 },
			[31] = {  	AL["STRATH_BS_PLANS"], BabbleZone["Stratholme"], 0, 0 },
			[32] = {  	AL["DM_TRIBUTE"], BabbleZone["Dire Maul"], 59.04, 48.82 },
			[34] = {  	AL["BT_RANDOM"], BabbleZone["Black Temple"], 0, 0 },
			[35] =   	AL["Custom35"] ,
			[36] =   	AL["Custom36"] ,
			[37] = {  	AL["SSC_RANDOM"], BabbleZone["Serpentshrine Cavern"], 0, 0 },
			[38] = {  	AL["DAILY_COOKING_DAL"], BabbleZone["Dalaran"], 0, 0 },
			[39] = {  	AL["ULDUAR_RANDOM"], BabbleZone["Ulduar"], 0, 0 },
			[40] =   	AL["DISCOVERY_INSC_BOOK"] ,
			[41] =   	AL["Custom41"] ,
			[42] =   	AL["TOC25_RANDOM"] ,
			[43] = {  	AL["TK_RANDOM"], BabbleZone["The Eye"], 0, 0 },
			[44] =   	AL["Custom44"] ,
			[45] =   	AL["Custom45"] ,
		},
}

AtlasLoot_Data["ExtraCraftingData"] =  {
    --[spellID] = {  learnedLevel , aquireType }
	--Alchemy
	[2329] 	= 	{ 1,   	1  },
    [2330] 	= 	{ 1,   	1  },
	[2331] 	= 	{ 25,  	1  },
	[2332] 	= 	{ 40,  	1  },
    [2333] 	= 	{ 140, 	7  },
	[6617] 	= 	{ 60, 	2, vendor = {1685, 3335, 1669, 3499} },
	[6618] 	= 	{ 175, 	2, vendor = {3335, 4226} },
	[6624] 	= 	{ 150, 	2, limitedVendor = {5178, 1, 4226, 1, 3348, 1} },
	[11452] = 	{ 210, 	4, quest = {2203, 2501} },
	[11453] = 	{ 210, 	7 	},
	[17559] = 	{ 275, 	6, reputation = { "ARGENTDAWN", "HONORED", 10856, 11536, 10857} },
	[7836] 	= 	{ 80, 	1	},
	

};