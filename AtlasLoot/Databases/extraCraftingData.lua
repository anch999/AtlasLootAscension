local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
AtlasLoot_CraftingData = {}

AtlasLoot_CraftingData["AquireType"] = {
	[1] = AL["Trainer/Book of Artisans"],
	[2] = AL["Vendor"],
	[3] = AL["Mod Drop"],
	[4] = AL["Quest"],
	[5] = AL["Seasonal"],
	[6] = AL["Reputation Vendor"],
	[7] = AL["World Drop"],
	[8] = {	[1] =    	AL["DISCOVERY_ALCH_ELIXIRFLASK"] ,
			[2] =    	AL["DISCOVERY_ALCH_POTION"] ,
			[3] =    	AL["DISCOVERY_ALCH_XMUTE"] ,
			[4] =    	AL["DISCOVERY_ALCH_PROT"] ,
			[5] =  {  	AL["DAILY_COOKING_MEAT"], BabbleZone["Shattrath"], 0, 0 },
			[6] =  {  	AL["DAILY_COOKING_FISH"], BabbleZone["Shattrath"], 0, 0 },
			[7] =  {  	AL["DAILY_FISHING_SHATT"], BabbleZone["Shattrath"], 0, 0 },
			[8] = 		AL["Trainer/Book of Artisans"],
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
			[35] =   	AL["Random Level 70 instance drop"],
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

AtlasLoot_CraftingData["ExtraCraftingData"] =  {
    --[spellID] = {  learnedLevel , aquireType }
	--Alchemy
	[2329] 	= 	{ 1,   	1  	},
    [2330] 	= 	{ 1,   	1  	},
	[7183]  =	{ 1,	1	},
	[2331] 	= 	{ 25,  	1  	},
	[2332] 	= 	{ 40,  	1  	},
    [2333] 	= 	{ 140, 	7  	},
	[11453] = 	{ 210, 	7 	},
	[7836] 	= 	{ 80, 	1	},
	[2334] = 	{ 50, 	1	},
	[2337] 	= 	{ 55, 	1	},
	[3170] 	= 	{ 15, 	1	},
	[3171] 	= 	{ 90, 	1	},
	[3173] 	= 	{ 120, 	1	},
	[3176] 	= 	{ 125, 	1	},
	[3177] 	= 	{ 130, 	1	},
	[3447] 	= 	{ 110, 	1	},
	[3448] 	= 	{ 165, 	1	},
	[3450] 	= 	{ 175, 	1	},
	[3452] 	= 	{ 160, 	1	},
	[7179] 	= 	{ 90, 	1	},
	[7181] 	= 	{ 155, 	1	},
	[7837] 	= 	{ 130, 	1	},
	[7841] 	= 	{ 100, 	1	},
	[7845] 	= 	{ 140, 	1	},
	[11448] = 	{ 205,	1	},
	[11449] = 	{ 185,	1	},
	[11450] = 	{ 195,	1	},
	[11451] = 	{ 205,	1	},
	[11457] = 	{ 215,	1	},
	[11460] = 	{ 230,	1	},
	[11461] = 	{ 235,	1	},
	[11465] = 	{ 235,	1	},
	[11467] = 	{ 240,	1	},
	[11478] = 	{ 250,	1	},
	[12609] = 	{ 200,	1	},
	[15833] = 	{ 230,	1	},
	[17551] = 	{ 250,	1	},
	[17552] = 	{ 255,	1	},
	[17553] = 	{ 260,	1	},
	[17555] = 	{ 270,	1	},
	[17556] = 	{ 275,	1	},
	[17557] = 	{ 275,	1	},
	[17572] = 	{ 285,	1	},
	[17573] = 	{ 285,	1	},
	[22808] = 	{ 215,	1	},
	[28544] = 	{ 305,	1	},
	[28545] = 	{ 310,	1	},
	[28551] = 	{ 325,	1	},
	[33732] = 	{ 300,	1	},
	[33733] = 	{ 310,	1	},
	[33738] = 	{ 300,	1	},
	[33740] = 	{ 300,	1	},
	[33741] = 	{ 315,	1	},
	[38070] = 	{ 325,	1	},
	[39636] = 	{ 310,	1	},
	[39638] = 	{ 320,	1	},
	[45061] = 	{ 325,	1	},
	[53812] = 	{ 375,	1	},
	[53836] = 	{ 405,	1	},
	[53837] = 	{ 410,	1	},
	[53838] = 	{ 350,	1	},
	[53839] = 	{ 360,	1	},
	[53840] = 	{ 395,	1	},
	[53841] = 	{ 355,	1	},
	[53842] = 	{ 365,	1	},
	[53847] = 	{ 385,	1	},
	[53848] = 	{ 375,	1	},
	[53898] = 	{ 390,	1	},
	[53899] = 	{ 375,	1	},
	[53900] = 	{ 380,	1	},
	[53901] = 	{ 435,	1	},
	[53902] = 	{ 435,	1	},
	[53903] = 	{ 435,	1	},
	[53905] = 	{ 395,	1	},
	[54213] = 	{ 435,	1	},
	[54218] = 	{ 385,	1	},
	[57425] = 	{ 430,	1	},
	[57427] = 	{ 425,	1	},
	[58868] = 	{ 410,	1	},
	[58871] = 	{ 410,	1	},
	[60350] = 	{ 395,	1	},
	[60367] = 	{ 395,	1	},
	[60396] = 	{ 400,	1	},
	[60403] = 	{ 400,	1	},
	[60405] = 	{ 400,	1	},
	[60893] = 	{ 400,	1	},
	[62213] = 	{ 385,	1	},
	[62409] = 	{ 375,	1	},
	[63732] = 	{ 135,	1	},
	[66658] = 	{ 450,	1	},
	[66660] = 	{ 450,	1	},
	[66662] = 	{ 450,	1	},
	[66663] = 	{ 450,	1	},
	[66664] = 	{ 450,	1	},
	[67025] = 	{ 425,	1	},
	[2335] 	= 	{ 60, 	7	},
	[3172] 	= 	{ 110, 	4	},
	[3174] 	= 	{ 120, 	7	},
	[3175] 	= 	{ 250, 	7	},
	[3188] 	= 	{ 150, 	7	},
	[3230] 	= 	{ 50, 	7	},
	[3451] 	= 	{ 180, 	7	},
	[3453] 	= 	{ 195, 	7	},
	[8240] 	= 	{ 90, 	7	},
	[11458] = 	{ 225, 	7	},
	[11464] = 	{ 235, 	7	},
	[11468] = 	{ 240, 	7	},
	[11472] = 	{ 245, 	7	},
	[17563] = 	{ 275, 	7	},
	[17564] = 	{ 275, 	7	},
	[17565] = 	{ 275, 	7	},
	[17566] = 	{ 275, 	7	},
	[17570] = 	{ 280, 	7	},
	[17634] = 	{ 300, 	7	},
	[28550] = 	{ 320, 	7	},
	[28552] = 	{ 325, 	7	},
	[28563] = 	{ 350, 	7	},
	[28565] = 	{ 350, 	7	},
	[28570] = 	{ 355, 	7	},
	[28578] = 	{ 365, 	7	},

	[11456] = 	{ 210, 	8, 	9	},
	[22732] =	{ 300,	8,	26	},
	[24266] =	{ 300,	8,	11	},
	[28580] = 	{ 375, 	8, 	3	},
	[28581] = 	{ 375, 	8, 	3	},
	[28582] = 	{ 375, 	8, 	3	},
	[28583] = 	{ 375, 	8, 	3	},
	[28584] = 	{ 375, 	8, 	3	},
	[28585] = 	{ 375, 	8, 	3	},
	[28586] =	{ 375,	8,	2	},
	[28587] = 	{ 375,  8,  1 	},
	[28588] = 	{ 375,  8,  1 	},
	[28589] = 	{ 375,  8,  1 	},
	[28590] = 	{ 375,  8,  1 	},
	[28591] = 	{ 375,  8,  1 	},
	[41458] = 	{ 360,  8,  4   },
	[41500] = 	{ 360,  8,  4   },
	[41501] = 	{ 360,  8,  4   },
	[41502] = 	{ 360,  8,  4   },
	[41503] = 	{ 360,  8,  4   },
	[53771] = 	{ 405, 	8,	19 	},
	[53773] = 	{ 405, 	8,	19 	},
	[53774] = 	{ 405, 	8,	19 	},
	[53775] = 	{ 405, 	8,	19 	},
	[53776] = 	{ 405, 	8,	19 	},
	[53777] = 	{ 405, 	8,	19 	},
	[53779] = 	{ 405, 	8,	19 	},
	[53780] = 	{ 405, 	8,	19 	},
	[53781] = 	{ 405, 	8,	19 	},
	[53782] = 	{ 405, 	8,	19 	},
	[53783] = 	{ 405, 	8,	19 	},
	[53784] = 	{ 405, 	8,	19 	},
	[53895] = 	{ 400, 	8,	18 	},
	[53904] = 	{ 400, 	8,	18 	},
	[54220] = 	{ 400, 	8,	18 	},
	[54221] = 	{ 400, 	8,	18 	},
	[54222] = 	{ 400, 	8,	18 	},
	[56519] = 	{ 400, 	8,	18 	},
	[60354] = 	{ 400, 	8,	18 	},
	[60355] = 	{ 400, 	8,	18 	},
	[60356] = 	{ 400, 	8,	18 	},
	[60357] = 	{ 400, 	8,	18 	},
	[60365] = 	{ 400, 	8,	18 	},
	[60366] = 	{ 400, 	8,	18 	},
	[62410] = 	{ 400,  8,	18 	},

	[21923] = 	{ 190,	5,	},

	[6617] 	= 	{ 60, 	2, vendor = {1685, 3335, 1669, 3499} },
	[6618] 	= 	{ 175, 	2, vendor = {3335, 4226} },
	[11459] = 	{ 225,	2, vendor = {5594} },
	[11479] = 	{ 225,	2, vendor = {5594} },
	[17187] = 	{ 275, 	2, vendor = {5594} },
	[17560] = 	{ 275,  2, vendor = {9499} },
	[17562] = 	{ 275,  2, vendor = {11278} },
	[17580] = 	{ 295, 	2, vendor = {11278} },
	[39639] = 	{ 330,	2, vendor = {18821, 18822} },

	[6624] 	= 	{ 150, 	2, limitedVendor = {5178, 1, 4226, 1, 3348, 1} },
	[3449] 	= 	{ 165,	2, limitedVendor = {2481, 1, 4878, 1} },
	[3454] 	= 	{ 200, 	2, limitedVendor = {2480, 1} },
	[7255] 	= 	{ 100,	2, limitedVendor = {1685, 1, 3134, 1, 3490, 1} },
	[7256] 	= 	{ 135,	2, limitedVendor = {2393, 1, 3956, 1} },
	[7257] 	= 	{ 165,	2, limitedVendor = {4083, 1, 2380, 1} },
	[7258] 	= 	{ 190,	2, limitedVendor = {2812, 1, 2848, 1} },
	[7259] 	= 	{ 190,	2, limitedVendor = {8157, 1, 8158, 1, 2848, 1, 5594, 1} },
	[11473] = 	{ 245, 	2, limitedVendor = {8157, 1, 8158, 1} },
	[11476] = 	{ 250,  2, limitedVendor = {1313, 1, 4610, 1} },
	[11477] = 	{ 250, 	2, limitedVendor = {8177, 1, 8178, 1} },
	[11480] = 	{ 225, 	2, limitedVendor = {5594, 1} },
	[17554] = 	{ 265, 	2, limitedVendor = {5178, 1, 3348, 1} },
	[28543] = 	{ 305, 	2, limitedVendor = {18802, 1, 16705, 1, 16641, 1, 16588, 1} },
	[28546] = 	{ 315, 	2, limitedVendor = {18017, 1, 19042, 1} },
	[28549] = 	{ 320, 	2, limitedVendor = {18005, 1, 18017, 1} },
	[28555] = 	{ 340, 	2, limitedVendor = {18005, 1, 19837, 1} },
	[28557] = 	{ 345, 	2, limitedVendor = {18005, 1, 19837, 1} },
	[28562] = 	{ 350, 	2, limitedVendor = {19042, 1, 19837, 1} },
	[29688] = 	{ 350, 	2, limitedVendor = {16705, 1, 16641, 1, 19074, 1} },
	[11452] = 	{ 210, 	4, quest = {2203, 2501} },
	[4508] 	= 	{ 50, 	4, quest =	{429} },
	[4942] 	= 	{ 215, 	4, quest =	{715} },
	[66659] = 	{ 450, 	4, quest =	{14151} },

	[17559] = 	{ 275, 	6, repVendor = { {BabbleFaction["Argent Dawn"], BabbleFaction["Honored"], 10856, 11536, 10857} } },
	[32766] =	{ 350,	6, repVendor = { {BabbleFaction["Honor Hold"], BabbleFaction["Honored"], 17657}, {BabbleFaction["Thrallmar"], BabbleFaction["Honored"], 17585} } },
	[28553] =	{ 330,	6, repVendor = { {BabbleFaction["Honor Hold"], BabbleFaction["Honored"], 17657}, {BabbleFaction["Thrallmar"], BabbleFaction["Honored"], 17585} } },
	[17561] = 	{ 275, 	6, repVendor = { {BabbleFaction["Timbermaw Hold"], BabbleFaction["Friendly"], 11557}}},
	[17632] = 	{ 350, 	6, repVendor = { {BabbleFaction["The Sha'tar"], BabbleFaction["Revered"], 21432}}},
	[24365] = 	{ 275, 	6, repVendor = { {BabbleFaction["Zandalar Tribe"], BabbleFaction["Revered"], 14921}}},
	[24366] = 	{ 275, 	6, repVendor = { {BabbleFaction["Zandalar Tribe"], BabbleFaction["Friendly"], 14921}}},
	[24367] = 	{ 285, 	6, repVendor = { {BabbleFaction["Zandalar Tribe"], BabbleFaction["Exalted"], 14921}}},
	[24368] = 	{ 290, 	6, repVendor = { {BabbleFaction["Zandalar Tribe"], BabbleFaction["Honored"], 14921}}},
	[25146] = 	{ 300, 	6, repVendor = { {BabbleFaction["Thorium Brotherhood"], BabbleFaction["Friendly"], 12944}}},
	[28554] = 	{ 335, 	6, repVendor = { {BabbleFaction["Sporeggar"], BabbleFaction["Exalted"], 18382}}},
	[28556] = 	{ 345, 	6, repVendor = { {BabbleFaction["The Scryers"], BabbleFaction["Revered"], 19331}}},
	[28558] = 	{ 350, 	6, repVendor = { {BabbleFaction["Lower City"], BabbleFaction["Revered"], 21655}}},
	[28566] = 	{ 350, 	6, repVendor = { {BabbleFaction["The Sha'tar"], BabbleFaction["Revered"], 21432}}},
	[28567] = 	{ 350, 	6, repVendor = { {BabbleFaction["Sporeggar"], BabbleFaction["Revered"], 18382}}},
	[28568] = 	{ 350, 	6, repVendor = { {BabbleFaction["KurenaiCity"], BabbleFaction["Revered"], 20240}}},
	[28569] = 	{ 350, 	6, repVendor = { {BabbleFaction["Cenarion Expedition"], BabbleFaction["Revered"], 17904}}},
	[28573] = 	{ 360, 	6, repVendor = { {BabbleFaction["Cenarion Expedition"], BabbleFaction["Exalted"], 17904}}},
	[32765] = 	{ 350, 	6, repVendor = { {BabbleFaction["Cenarion Expedition"], BabbleFaction["Honored"], 17904}}},
	[39637] = 	{ 320, 	6, repVendor = { {BabbleFaction["Cenarion Expedition"], BabbleFaction["Honored"], 17904}}},
	[42736] = 	{ 375, 	6, repVendor = { {BabbleFaction["The Violet Eye"], BabbleFaction["Honored"], 18255}}},
	[47046] = 	{ 375, 	6, repVendor = { {BabbleFaction["Shattered Sun Offensive"], BabbleFaction["Exalted"], 25032}}},
	[47048] = 	{ 375, 	6, repVendor = { {BabbleFaction["Shattered Sun Offensive"], BabbleFaction["Exalted"], 25032}}},
	[47049] = 	{ 375, 	6, repVendor = { {BabbleFaction["Shattered Sun Offensive"], BabbleFaction["Exalted"], 25032}}},
	[47050] = 	{ 375, 	6, repVendor = { {BabbleFaction["Shattered Sun Offensive"], BabbleFaction["Exalted"], 25032}}},
	[17638] = 	{ 300,  6, repVendor = { {BabbleFaction["Lower City"], BabbleFaction["Exalted"], 21655}},				mobdroprate = {10339}},
	[17635] = 	{ 300,  6, repVendor = { {BabbleFaction["The Sha'tar"], BabbleFaction["Exalted"], 21432}},				mobdroprate = {10363}},
	[17636] = 	{ 300,  6, repVendor = { {BabbleFaction["Cenarion Expedition"], BabbleFaction["Exalted"], 17904}},	mobdroprate = {10813}},
	[17637] = 	{ 300,  6, repVendor = { {BabbleFaction["Keepers of Time"], BabbleFaction["Exalted"], 21643}},		mobdroprate = {10508}},

 	[11466] =  {240, 	3, mobdroprate = { 1783, 1791} },
	[17571] =  {280, 	3, mobdroprate = { 6201, 7106} },
	[17574] =  {290, 	3, mobdroprate = { 9262, 9264} },
	[17575] =  {290, 	3, mobdroprate = { 7428} },
	[17576] =  {290, 	3, mobdroprate = { 1812, 1813} },
	[17577] =  {290, 	3, mobdroprate = { 7437} },
	[17578] =  {290, 	3, mobdroprate = { 8546, 8550} },
	[26277] =  {250, 	3, mobdroprate = { 5844, 5846, 8637} },
	[28564] =  {350,	3, mobdroprate = { 24664} },
	[28571] =  {360,	3, mobdroprate = { 19168, 19221} },
	[28572] =  {360,	3, mobdroprate = { 18344} },
	[28575] =  {360,	3, mobdroprate = { 17150} },
	[28576] =  {360,	3, mobdroprate = { 21302} },
	[28577] =  {360,	3, mobdroprate = { 19973} },
	[28579] =  {365,	3, mobdroprate = { 17862} },
	[38960] =  {335,	3, mobdroprate = { 19740, 21302, 19755, 21314} },
	[38961] =  {360,	3, mobdroprate = { 19795, 19792, 22076, 22017, 22016, 22018, 19796, 19806, 22093} },
	[38962] =  {345,	3, mobdroprate = { 19756, 19754, 20878, 20887} },
	[53936] =  {400, 	3, mobdroprate = { 32297, 31702} },
	[53937] =  {400, 	3, mobdroprate = { 32289} },
	[53938] =  {400, 	3, mobdroprate = { 32349} },
	[53939] =  {400, 	3, mobdroprate = { 30921} },
	[53942] =  {400, 	3, mobdroprate = { 32290} },

	--Blacksmithing
		[10011] = {
			250,
			1,
		},
		[10015] = {
			260,
			1,
		},
	[36390] = {
		375,
		8,
		37,
	},
	[67096] = {
		450,
		8,
		42,
	},
	[16973] = {
		280,
		2,
		["quest"] = {
			5305,
		},
	},
	[23632] = {
		290,
		6,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Honored"],
			10856,
			11536,
			10857,
		},
	},
		[41133] = {
			375,
			8,
			34,
		},
		[54946] = {
			395,
			1,
		},
		[34538] = {
			350,
			1,
		},
		[8768] = {
			150,
			1,
		},
		[10007] = {
			245,
			1,
		},
		[36135] = {
			330,
			1,
		},
		[55058] = {
			415,
			1,
		},
		[55202] = {
			385,
			1,
		},
		[27832] = {
			300,
			7,
		},
		[67131] = {
			450,
			8,
			42,
		},
		[52567] = {
			370,
			1,
		},
		[9995] = {
			220,
			7,
		},
		[55377] = {
			440,
			1,
		},
		[36263] = {
			375,
			1,
		},
		[55186] = {
			415,
			1,
		},
		[16646] = {
			265,
			2,
			["quest"] = {
				7659,
			},
		},
		[16654] = {
			285,
			7,
		},
		[16662] = {
			300,
			1,
			7,
		},
		[16990] = {
			300,
			2,
			["mobDrop"] = {
				10899,
			},
		},
		[55185] = {
			415,
			1,
		},
		[67094] = {
			450,
			8,
			42,
		},
		[55298] = {
			420,
			1,
		},
		[16647] = {
			265,
			2,
			["quest"] = {
				7653,
			},
		},
		[28463] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Friendly"],
				15176,
			},
		},
		[67130] = {
			450,
			8,
			42,
		},
		[16726] = {
			300,
			2,
			["mobDrop"] = {
				4364,
			},
		},
		[24399] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Exalted"],
				12944,
			},
		},
		[16742] = {
			300,
			2,
			["quest"] = {
				7651,
			},
		},
		[16655] = {
			290,
			2,
			["quest"] = {
				5124,
			},
		},
		[15293] = {
			270,
			8,
			25,
		},
		[41134] = {
			375,
			8,
			34,
		},
		[29549] = {
			315,
			1,
		},
		[29557] = {
			310,
			1,
		},
		[29565] = {
			320,
			1,
		},
		[16663] = {
			300,
			2,
			["quest"] = {
				7656,
			},
		},
		[63187] = {
			450,
			8,
			39,
		},
		[32655] = {
			300,
			1,
		},
		[12259] = {
			155,
			7,
		},
		[29605] = {
			335,
			2,
			["vendor"] = {
				19342,
				19694,
			},
		},
		[29613] = {
			365,
			6,
			["repVendor"] = {
				BabbleFaction["The Scryers"],
				BabbleFaction["Exalted"],
				19331,
			},
		},
		[29621] = {
			365,
			2,
			["mobDrop"] = {
				18830,
			},
		},
		[27585] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Friendly"],
				15176,
			},
		},
		[52568] = {
			350,
			1,
		},
		[29645] = {
			370,
			2,
			["mobDrop"] = {
				23305,
				23324,
				21454,
			},
		},
		[59436] = {
			395,
			1,
		},
		[9959] = {
			230,
			1,
		},
		[29669] = {
			365,
			7,
		},
		[55203] = {
			385,
			1,
		},
		[29566] = {
			325,
			2,
			["vendor"] = {
				16670,
				16713,
				19662,
			},
		},
		[29693] = {
			365,
			7,
		},
		[52570] = {
			375,
			1,
		},
		[55187] = {
			415,
			1,
		},
		[3515] = {
			200,
			7,
		},
		[36392] = {
			375,
			8,
			37,
		},
		[9939] = {
			215,
			7,
		},
		[9935] = {
			215,
			1,
		},
		[67132] = {
			450,
			8,
			42,
		},
		[24136] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Revered"],
				14921,
			},
		},
		[23633] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Revered"],
				10856,
				11536,
				10857,
			},
		},
		[9931] = {
			210,
			1,
		},
		[9968] = {
			235,
			1,
		},
		[16983] = {
			285,
			8,
			31,
		},
		[41135] = {
			375,
			8,
			27,
		},
		[54948] = {
			400,
			1,
		},
		[29548] = {
			315,
			1,
		},
		[34540] = {
			375,
			1,
		},
		[9820] = {
			185,
			2,
			["quest"] = {
				2755,
			},
		},
		[63188] = {
			450,
			8,
			39,
		},
		[7221] = {
			150,
			7,
		},
		[7223] = {
			185,
			1,
		},
		[3508] = {
			180,
			1,
		},
		[15972] = {
			180,
			1,
		},
		[67133] = {
			450,
			8,
			42,
		},
		[3507] = {
			170,
			7,
		},
		[52569] = {
			350,
			1,
		},
		[16985] = {
			290,
			8,
			31,
		},
		[55839] = {
			420,
			1,
		},
		[3504] = {
			160,
			7,
		},
		[16639] = {
			250,
			1,
		},
		[55204] = {
			390,
			1,
		},
		[3115] = {
			1,
			8,
			8,
		},
		[3116] = {
			65,
			1,
		},
		[3117] = {
			125,
			1,
		},
		[3503] = {
			190,
			2,
			["vendor"] = {
				5411,
			},
		},
		[54978] = {
			375,
			2,
			["mobDrop"] = {
				27333,
			},
		},
		[55300] = {
			420,
			1,
		},
		[8367] = {
			100,
			2,
			["quest"] = {
				1618,
			},
		},
		[29629] = {
			360,
			2,
			["mobDrop"] = {
				20878,
			},
		},
		[67134] = {
			450,
			8,
			42,
		},
		[40034] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Ashtongue Deathsworn"],
				BabbleFaction["Friendly"],
				23159,
			},
		},
		[9916] = {
			200,
			1,
		},
		[9920] = {
			200,
			1,
		},
		[54947] = {
			395,
			1,
		},
		[9928] = {
			205,
			1,
		},
		[3513] = {
			185,
			7,
		},
		[29550] = {
			325,
			1,
		},
		[29558] = {
			315,
			1,
		},
		[54981] = {
			375,
			2,
			["mobDrop"] = {
				28123,
			},
		},
		[16653] = {
			280,
			1,
			7,
		},
		[63189] = {
			450,
			8,
			39,
		},
		[32656] = {
			350,
			2,
			["vendor"] = {
				19662,
			},
		},
		[16645] = {
			260,
			7,
		},
		[9964] = {
			235,
			7,
		},
		[29614] = {
			350,
			6,
			["repVendor"] = {
				BabbleFaction["The Aldor"],
				BabbleFaction["Friendly"],
				19321,
			},
		},
		[67135] = {
			450,
			8,
			42,
		},
		[27586] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Revered"],
				15471,
			},
		},
		[9980] = {
			265,
			2,
			["quest"] = {
				2771,
			},
		},
		[3496] = {
			180,
			2,
			["vendor"] = {
				2482,
			},
		},
		[29654] = {
			300,
			1,
		},
		[29662] = {
			365,
			7,
		},
		[3495] = {
			170,
			7,
		},
		[7818] = {
			100,
			1,
		},
		[55732] = {
			420,
			1,
		},
		[29694] = {
			365,
			7,
		},
		[63190] = {
			450,
			8,
			39,
		},
		[2665] = {
			65,
			1,
		},
		[55206] = {
			405,
			1,
		},
		[55301] = {
			420,
			1,
		},
		[59405] = {
			350,
			1,
		},
		[55302] = {
			425,
			1,
		},
		[55017] = {
			410,
			1,
		},
		[24137] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Honored"],
				14921,
			},
		},
		[16991] = {
			300,
			2,
			["mobDrop"] = {
				9736,
			},
		},
		[16745] = {
			300,
			2,
			["quest"] = {
				7649,
			},
		},
		[23650] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Exalted"],
				12944,
			},
		},
		[54918] = {
			380,
			1,
		},
		[55013] = {
			390,
			1,
		},
		[63191] = {
			450,
			8,
			39,
		},
		[62202] = {
			450,
			2,
			6,
			["repVendor"] = {
				BabbleFaction["Horde Expedition"],
				BabbleFaction["Exalted"],
				32565,
				32774,
				{
					BabbleFaction["Alliance Vanguard"],
					BabbleFaction["Exalted"],
					32564,
					32773,
				},
			},
		},
		[34542] = {
			375,
			1,
		},
		[52571] = {
			370,
			1,
		},
		[55014] = {
			410,
			1,
		},
		[19666] = {
			100,
			1,
		},
		[55304] = {
			425,
			1,
		},
		[54551] = {
			395,
			1,
		},
		[24138] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Friendly"],
				14921,
			},
		},
		[2660] = {
			1,
			8,
			8,
		},
		[2661] = {
			35,
			1,
		},
		[2662] = {
			1,
			1,
		},
		[2663] = {
			1,
			8,
			8,
		},
		[2664] = {
			90,
			1,
		},
		[55174] = {
			390,
			1,
		},
		[16640] = {
			250,
			1,
		},
		[16648] = {
			270,
			7,
		},
		[16656] = {
			290,
			7,
		},
		[16664] = {
			300,
			2,
			["mobDrop"] = {
				4366,
			},
		},
		[2670] = {
			105,
			1,
		},
		[56400] = {
			440,
			1,
		},
		[2672] = {
			120,
			1,
		},
		[2673] = {
			130,
			7,
		},
		[59406] = {
			430,
			1,
		},
		[2675] = {
			145,
			1,
		},
		[59438] = {
			400,
			1,
		},
		[16728] = {
			300,
			7,
		},
		[24912] = {
			300,
			2,
			["quest"] = {
				8323,
			},
		},
		[16744] = {
			300,
			2,
			["quest"] = {
				7650,
			},
		},
		[2742] = {
			120,
			1,
		},
		[15294] = {
			275,
			2,
			["mobDrop"] = {
				9554,
				10043,
			},
		},
		[56549] = {
			420,
			1,
		},
		[29551] = {
			300,
			1,
		},
		[20872] = {
			295,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Honored"],
				12944,
			},
		},
		[34543] = {
			350,
			1,
		},
		[29552] = {
			310,
			1,
		},
		[55015] = {
			415,
			1,
		},
		[32657] = {
			360,
			2,
			["vendor"] = {
				16583,
				19373,
			},
		},
		[12260] = {
			1,
			8,
			8,
		},
		[54552] = {
			400,
			1,
		},
		[29615] = {
			355,
			6,
			["repVendor"] = {
				BabbleFaction["The Aldor"],
				BabbleFaction["Exalted"],
				19321,
			},
		},
		[2666] = {
			70,
			1,
		},
		[27587] = {
			300,
			2,
			["mobDrop"] = {
				15263,
			},
		},
		[52572] = {
			360,
			1,
		},
		[16988] = {
			300,
			2,
			["mobDrop"] = {
				10438,
			},
		},
		[9945] = {
			220,
			2,
			["quest"] = {
				2761,
			},
		},
		[29663] = {
			365,
			7,
		},
		[29671] = {
			365,
			7,
		},
		[6517] = {
			110,
			1,
		},
		[2741] = {
			115,
			1,
		},
		[29695] = {
			365,
			7,
		},
		[11454] = {
			200,
			8,
			9,
		},
		[55305] = {
			420,
			1,
		},
		[29606] = {
			340,
			2,
			["vendor"] = {
				19342,
				19694,
			},
		},
		[55303] = {
			425,
			1,
		},
		[24139] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Revered"],
				14921,
			},
		},
		[56357] = {
			420,
			1,
		},
		[14380] = {
			200,
			1,
		},
		[16984] = {
			290,
			2,
			["mobDrop"] = {
				10119,
			},
		},
		[16992] = {
			300,
			2,
			["mobDrop"] = {
				1844,
			},
		},
		[28242] = {
			300,
			2,
			8,
			61,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Exalted"],
				16365,
			},
		},
		[36126] = {
			260,
			1,
		},
		[2674] = {
			125,
			1,
		},
		[40036] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Ashtongue Deathsworn"],
				BabbleFaction["Friendly"],
				23159,
			},
		},
		[42688] = {
			335,
			2,
			["mobDrop"] = {
				24664,
			},
		},
		[9813] = {
			160,
			2,
			["quest"] = {
				2751,
			},
		},
		[34544] = {
			375,
			1,
		},
		[34546] = {
			375,
			1,
		},
		[63192] = {
			450,
			8,
			39,
		},
		[36125] = {
			260,
			1,
		},
		[34608] = {
			350,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Honored"],
				17904,
			},
		},
		[54553] = {
			400,
			1,
		},
		[15973] = {
			190,
			7,
		},
		[23628] = {
			290,
			6,
			["repVendor"] = {
				BabbleFaction["Timbermaw Hold"],
				BabbleFaction["Honored"],
				11557,
			},
		},
		[19667] = {
			150,
			1,
		},
		[16993] = {
			300,
			2,
			["mobDrop"] = {
				10899,
			},
		},
		[29622] = {
			365,
			7,
		},
		[22757] = {
			300,
			8,
			26,
		},
		[54555] = {
			405,
			1,
		},
		[16641] = {
			250,
			1,
		},
		[16649] = {
			270,
			2,
			["quest"] = {
				7655,
			},
		},
		[16657] = {
			295,
			2,
			["quest"] = {
				7654,
			},
		},
		[16665] = {
			300,
			2,
			["mobDrop"] = {
				1836,
			},
		},
		[54550] = {
			360,
			1,
		},
		[29630] = {
			365,
			2,
			["mobDrop"] = {
				18873,
			},
		},
		[46140] = {
			365,
			8,
			24,
		},
		[2737] = {
			15,
			1,
		},
		[2738] = {
			20,
			1,
		},
		[38473] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Exalted"],
				17904,
			},
		},
		[59440] = {
			405,
			1,
		},
		[16729] = {
			300,
			7,
		},
		[24913] = {
			300,
			2,
			["quest"] = {
				8323,
			},
		},
		[9921] = {
			200,
			1,
		},
		[29611] = {
			355,
			6,
			["repVendor"] = {
				BabbleFaction["The Scryers"],
				BabbleFaction["Honored"],
				19331,
			},
		},
		[29603] = {
			335,
			2,
			["vendor"] = {
				19342,
				19694,
			},
		},
		[9933] = {
			210,
			7,
		},
		[9937] = {
			215,
			2,
			["vendor"] = {
				8161,
				8176,
			},
		},
		[34529] = {
			350,
			1,
		},
		[29568] = {
			330,
			2,
			["vendor"] = {
				16670,
				16713,
				19662,
			},
		},
		[55370] = {
			440,
			1,
		},
		[20897] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Honored"],
				12944,
			},
		},
		[9957] = {
			250,
			2,
			["quest"] = {
				2756,
			},
		},
		[9961] = {
			230,
			1,
		},
		[54554] = {
			395,
			1,
		},
		[29616] = {
			360,
			6,
			["repVendor"] = {
				BabbleFaction["The Aldor"],
				BabbleFaction["Honored"],
				19321,
			},
		},
		[20874] = {
			295,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Friendly"],
				12944,
			},
		},
		[27588] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Honored"],
				15176,
			},
		},
		[3321] = {
			35,
			7,
		},
		[55656] = {
			415,
			1,
		},
		[29656] = {
			350,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Honored"],
				17904,
			},
		},
		[9993] = {
			210,
			1,
		},
		[9997] = {
			225,
			7,
		},
		[10001] = {
			230,
			1,
		},
		[10005] = {
			240,
			7,
		},
		[10009] = {
			245,
			7,
		},
		[10013] = {
			255,
			2,
			["vendor"] = {
				11278,
			},
		},
		[29571] = {
			335,
			2,
			["vendor"] = {
				16670,
				16713,
				19662,
			},
		},
		[20876] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[29728] = {
			340,
			2,
			["vendor"] = {
				16583,
				19373,
			},
		},
		[29569] = {
			330,
			2,
			["vendor"] = {
				16670,
				16713,
				19662,
			},
		},
		[16969] = {
			275,
			1,
			2,
			["vendor"] = {
				11278,
			},
		},
		[59441] = {
			415,
			1,
		},
		[55369] = {
			440,
			1,
		},
		[23636] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Honored"],
				12944,
			},
		},
		[28243] = {
			300,
			2,
			8,
			61,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Revered"],
				16365,
			},
		},
		[23652] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Exalted"],
				12944,
			},
		},
		[29617] = {
			365,
			6,
			["repVendor"] = {
				BabbleFaction["The Aldor"],
				BabbleFaction["Revered"],
				19321,
			},
		},
		[55179] = {
			400,
			1,
		},
		[15292] = {
			265,
			2,
			["mobDrop"] = {
				9028,
			},
		},
		[34530] = {
			375,
			1,
		},
		[3292] = {
			95,
			1,
		},
		[3293] = {
			35,
			1,
		},
		[3294] = {
			70,
			1,
		},
		[3295] = {
			125,
			7,
		},
		[3296] = {
			130,
			1,
		},
		[3297] = {
			145,
			7,
		},
		[29648] = {
			370,
			2,
			["mobDrop"] = {
				18314,
			},
		},
		[29649] = {
			370,
			2,
			["mobDrop"] = {
				17975,
			},
		},
		[19668] = {
			200,
			1,
		},
		[55641] = {
			400,
			1,
		},
		[16732] = {
			300,
			2,
			["mobDrop"] = {
				1885,
			},
		},
		[24140] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Honored"],
				14921,
			},
		},
		[38479] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["The Violet Eye"],
				BabbleFaction["Honored"],
				16388,
			},
		},
		[16642] = {
			250,
			1,
			7,
		},
		[16650] = {
			270,
			7,
		},
		[16658] = {
			295,
			2,
			["quest"] = {
				7657,
			},
		},
		[29729] = {
			375,
			2,
			["mobDrop"] = {
				18853,
			},
		},
		[56280] = {
			410,
			1,
		},
		[70563] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Honored"],
				37687,
			},
		},
		[38476] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Revered"],
				17904,
			},
		},
		[55306] = {
			420,
			1,
		},
		[16994] = {
			300,
			2,
			["mobDrop"] = {
				9596,
			},
		},
		[38475] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Revered"],
				17904,
			},
		},
		[59442] = {
			410,
			1,
		},
		[16730] = {
			300,
			2,
			["quest"] = {
				7658,
			},
		},
		[24914] = {
			300,
			2,
			["quest"] = {
				8323,
			},
		},
		[16746] = {
			300,
			7,
		},
		[3319] = {
			20,
			1,
		},
		[3320] = {
			25,
			1,
		},
		[29545] = {
			300,
			1,
		},
		[29553] = {
			315,
			1,
		},
		[3323] = {
			40,
			1,
		},
		[3324] = {
			45,
			1,
		},
		[20890] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Honored"],
				12944,
			},
		},
		[3326] = {
			75,
			1,
		},
		[36128] = {
			260,
			1,
		},
		[3328] = {
			110,
			1,
		},
		[54556] = {
			405,
			1,
		},
		[3330] = {
			125,
			7,
		},
		[3331] = {
			130,
			1,
		},
		[27589] = {
			300,
			2,
			["mobDrop"] = {
				15340,
			},
		},
		[3333] = {
			135,
			1,
		},
		[3334] = {
			145,
			7,
		},
		[29657] = {
			360,
			2,
			6,
			["repVendor"] = {
				BabbleFaction["Honor Hold"],
				BabbleFaction["Exalted"],
				17657,
				{
					BabbleFaction["Thrallmar"],
					BabbleFaction["Exalted"],
					17585,
				},
			},
		},
		[3336] = {
			150,
			7,
		},
		[3337] = {
			125,
			1,
		},
		[36256] = {
			375,
			1,
		},
		[36137] = {
			330,
			1,
		},
		[29697] = {
			365,
			7,
		},
		[29672] = {
			365,
			7,
		},
		[70565] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Revered"],
				37687,
			},
		},
		[28462] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Honored"],
				15176,
			},
		},
		[55307] = {
			420,
			1,
		},
		[55834] = {
			360,
			1,
		},
		[16970] = {
			275,
			2,
			["quest"] = {
				5306,
			},
		},
		[16978] = {
			280,
			2,
			["quest"] = {
				5307,
			},
		},
		[55371] = {
			440,
			1,
		},
		[23637] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[28244] = {
			300,
			2,
			8,
			61,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Revered"],
				16365,
			},
		},
		[23653] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Exalted"],
				12944,
			},
		},
		[70566] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Honored"],
				37687,
			},
		},
		[36136] = {
			330,
			1,
		},
		[29700] = {
			365,
			7,
		},
		[9814] = {
			175,
			2,
			["quest"] = {
				2754,
			},
		},
		[9818] = {
			180,
			2,
			["quest"] = {
				2753,
			},
		},
		[32284] = {
			325,
			1,
		},
		[56553] = {
			420,
			1,
		},
		[7222] = {
			165,
			7,
		},
		[7224] = {
			190,
			7,
		},
		[54557] = {
			390,
			1,
		},
		[27829] = {
			300,
			7,
		},
		[46142] = {
			365,
			8,
			24,
		},
		[19669] = {
			275,
			1,
		},
		[36124] = {
			260,
			1,
		},
		[55372] = {
			440,
			1,
		},
		[36257] = {
			375,
			1,
		},
		[61009] = {
			420,
			1,
		},
		[16643] = {
			250,
			1,
			7,
		},
		[16651] = {
			275,
			7,
		},
		[16659] = {
			295,
			7,
		},
		[16667] = {
			285,
			2,
			["quest"] = {
				5127,
			},
		},
		[70568] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Honored"],
				37687,
			},
		},
		[70567] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Revered"],
				37687,
			},
		},
		[36122] = {
			260,
			1,
		},
		[55308] = {
			420,
			1,
		},
		[8880] = {
			30,
			1,
		},
		[38477] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["The Violet Eye"],
				BabbleFaction["Honored"],
				16388,
			},
		},
		[2668] = {
			105,
			1,
		},
		[16731] = {
			300,
			2,
			["mobDrop"] = {
				4368,
				16072,
			},
		},
		[9918] = {
			200,
			1,
		},
		[21913] = {
			190,
			8,
			1,
		},
		[9926] = {
			205,
			1,
		},
		[56554] = {
			425,
			1,
		},
		[54941] = {
			385,
			1,
		},
		[34541] = {
			350,
			1,
		},
		[34533] = {
			350,
			1,
		},
		[36258] = {
			375,
			1,
		},
		[9950] = {
			220,
			2,
			["quest"] = {
				2762,
			},
		},
		[9954] = {
			225,
			1,
		},
		[36130] = {
			330,
			1,
		},
		[55628] = {
			400,
			1,
		},
		[9966] = {
			235,
			7,
		},
		[9970] = {
			245,
			7,
		},
		[9974] = {
			245,
			1,
		},
		[27590] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Exalted"],
				15471,
			},
		},
		[29642] = {
			365,
			2,
			["mobDrop"] = {
				17136,
			},
		},
		[9986] = {
			130,
			1,
		},
		[29658] = {
			365,
			7,
		},
		[55181] = {
			405,
			1,
		},
		[7817] = {
			95,
			1,
		},
		[34545] = {
			350,
			1,
		},
		[34979] = {
			100,
			1,
		},
		[29698] = {
			365,
			7,
		},
		[34607] = {
			300,
			1,
		},
		[55309] = {
			420,
			1,
		},
		[38478] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["The Violet Eye"],
				BabbleFaction["Revered"],
				16388,
			},
		},
		[32285] = {
			350,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Honored"],
				17904,
			},
		},
		[23638] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[16971] = {
			280,
			1,
			2,
			["vendor"] = {
				11278,
			},
		},
		[24141] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Friendly"],
				14921,
			},
		},
		[55373] = {
			440,
			1,
		},
		[16995] = {
			300,
			2,
			["mobDrop"] = {
				10997,
			},
		},
		[61010] = {
			420,
			1,
		},
		[34981] = {
			200,
			1,
		},
		[42662] = {
			365,
			2,
			["mobDrop"] = {
				21061,
				21059,
				21060,
				21050,
			},
		},
		[34548] = {
			375,
			1,
		},
		[34547] = {
			350,
			1,
		},
		[34534] = {
			375,
			1,
		},
		[29610] = {
			360,
			6,
			["repVendor"] = {
				BabbleFaction["The Scryers"],
				BabbleFaction["Revered"],
				19331,
			},
		},
		[63182] = {
			440,
			1,
		},
		[56555] = {
			425,
			1,
		},
		[36131] = {
			330,
			1,
		},
		[20201] = {
			275,
			1,
		},
		[40035] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Ashtongue Deathsworn"],
				BabbleFaction["Honored"],
				23159,
			},
		},
		[27830] = {
			300,
			7,
		},
		[55835] = {
			370,
			1,
		},
		[36129] = {
			330,
			1,
		},
		[11643] = {
			205,
			2,
			["quest"] = {
				2758,
			},
		},
		[56234] = {
			440,
			1,
		},
		[36259] = {
			375,
			1,
		},
		[55182] = {
			410,
			1,
		},
		[16644] = {
			255,
			1,
			7,
		},
		[16652] = {
			280,
			1,
			7,
		},
		[16660] = {
			290,
			7,
		},
		[29696] = {
			365,
			7,
		},
		[14379] = {
			150,
			1,
		},
		[61008] = {
			425,
			1,
		},
		[23629] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Timbermaw Hold"],
				BabbleFaction["Revered"],
				11557,
			},
		},
		[55310] = {
			425,
			1,
		},
		[28461] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Revered"],
				15176,
			},
		},
		[46144] = {
			365,
			8,
			24,
		},
		[16724] = {
			300,
			7,
		},
		[55374] = {
			440,
			1,
		},
		[21161] = {
			300,
			2,
			["quest"] = {
				7604,
			},
		},
		[2667] = {
			80,
			7,
		},
		[34982] = {
			300,
			1,
		},
		[15296] = {
			285,
			2,
			["mobDrop"] = {
				9543,
			},
		},
		[29547] = {
			305,
			1,
		},
		[56552] = {
			420,
			1,
		},
		[34535] = {
			350,
			1,
		},
		[7408] = {
			65,
			1,
		},
		[3325] = {
			60,
			7,
		},
		[56556] = {
			425,
			1,
		},
		[15295] = {
			280,
			8,
			25,
		},
		[55055] = {
			395,
			1,
		},
		[67091] = {
			450,
			8,
			42,
		},
		[29619] = {
			360,
			2,
			["mobDrop"] = {
				18497,
			},
		},
		[46141] = {
			365,
			8,
			24,
		},
		[40033] = {
			375,
			6,
			["repVendor"] = {
				BabbleFaction["Ashtongue Deathsworn"],
				BabbleFaction["Honored"],
				23159,
			},
		},
		[29643] = {
			365,
			2,
			["mobDrop"] = {
				16952,
			},
		},
		[56551] = {
			420,
			1,
		},
		[36260] = {
			375,
			1,
		},
		[55183] = {
			415,
			1,
		},
		[55177] = {
			395,
			1,
		},
		[9985] = {
			125,
			1,
		},
		[29608] = {
			355,
			6,
			["repVendor"] = {
				BabbleFaction["The Scryers"],
				BabbleFaction["Friendly"],
				19331,
			},
		},
		[29699] = {
			365,
			7,
		},
		[56550] = {
			420,
			1,
		},
		[43549] = {
			35,
			2,
			["quest"] = {
				1578,
			},
		},
		[20873] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[55311] = {
			425,
			1,
		},
		[67092] = {
			450,
			8,
			42,
		},
		[2740] = {
			110,
			1,
		},
		[2739] = {
			25,
			1,
		},
		[55375] = {
			440,
			1,
		},
		[23639] = {
			300,
			6,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[70562] = {
			450,
			6,
			["repVendor"] = {
				BabbleFaction["The Ashen Verdict"],
				BabbleFaction["Revered"],
				37687,
			},
		},
		[34983] = {
			350,
			1,
		},
		[54917] = {
			375,
			1,
		},
		[54944] = {
			385,
			1,
		},
		[9811] = {
			160,
			2,
			["quest"] = {
				2752,
			},
		},
		[54949] = {
			400,
			1,
		},
		[29664] = {
			365,
			7,
		},
		[54979] = {
			375,
			2,
			["mobDrop"] = {
				26270,
			},
		},
		[54980] = {
			375,
			2,
			["mobDrop"] = {
				29235,
			},
		},
		[36133] = {
			330,
			1,
		},
		[55056] = {
			400,
			1,
		},
		[67093] = {
			450,
			8,
			42,
		},
		[43846] = {
			365,
			7,
		},
		[3491] = {
			105,
			1,
		},
		[3492] = {
			160,
			2,
			["vendor"] = {
				2843,
				5512,
			},
		},
		[3493] = {
			175,
			7,
		},
		[3494] = {
			155,
			2,
			["limitedVendor"] = {
				9179,
				1,
				8878,
				1,
				1471,
				1,
				26081,
				1,
			},
		},
		[36261] = {
			375,
			1,
		},
		[55184] = {
			415,
			1,
		},
		[3497] = {
			200,
			7,
		},
		[3498] = {
			185,
			2,
			["vendor"] = {
				2483,
				1146,
			},
		},
		[16661] = {
			295,
			2,
			7,
			["vendor"] = {
				11278,
			},
		},
		[3500] = {
			200,
			7,
		},
		[3501] = {
			165,
			1,
		},
		[3502] = {
			170,
			1,
		},
		[36389] = {
			375,
			8,
			37,
		},
		[55312] = {
			425,
			1,
		},
		[3505] = {
			175,
			7,
		},
		[3506] = {
			155,
			1,
		},
		[16725] = {
			300,
			7,
		},
		[55376] = {
			440,
			1,
		},
		[16741] = {
			300,
			7,
		},
		[9972] = {
			260,
			2,
			["quest"] = {
				2773,
			},
		},
		[3511] = {
			195,
			7,
		},
		[41132] = {
			375,
			8,
			27,
		},
		[54945] = {
			390,
			1,
		},
		[29556] = {
			320,
			1,
		},
		[34537] = {
			375,
			1,
		},
		[55200] = {
			380,
			1,
		},
		[9952] = {
			225,
			2,
			["quest"] = {
				2763,
			},
		},
		[6518] = {
			140,
			7,
		},
		[36134] = {
			330,
			1,
		},
		[55057] = {
			405,
			1,
		},
		[67095] = {
			450,
			8,
			42,
		},
		[29620] = {
			360,
			2,
			["mobDrop"] = {
				20900,
			},
		},
		[29628] = {
			360,
			2,
			["mobDrop"] = {
				18203,
			},
		},
		[9979] = {
			265,
			2,
			["quest"] = {
				2772,
			},
		},
		[9983] = {
			30,
			1,
		},
		[9987] = {
			135,
			1,
		},
		[36262] = {
			375,
			1,
		},
		[29668] = {
			365,
			7,
		},
		[55201] = {
			380,
			1,
		},
		[10003] = {
			235,
			1,
		},
		[29692] = {
			365,
			7,
		},
		[36391] = {
			375,
			8,
			37,
		},

		--cooking

		[33276] = {
			1,
			2,
			["vendor"] = {
				16262,
			},
		},
		[33284] = {
			300,
			2,
			["vendor"] = {
				16585,
				16826,
			},
		},
		[33292] = {
			310,
			2,
			["vendor"] = {
				18911,
			},
		},
		[45556] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[15853] = {
			125,
			2,
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[15855] = {
			175,
			2,
			["vendor"] = {
				1148,
				734,
				12245,
				2821,
				4897,
				2810,
				4879,
			},
		},
		[6414] = {
			35,
			2,
			["vendor"] = {
				3081,
			},
		},
		[6415] = {
			50,
			2,
			["vendor"] = {
				4200,
			},
		},
		[15861] = {
			175,
			2,
			["vendor"] = {
				1148,
				734,
				12245,
			},
		},
		[15863] = {
			175,
			2,
			["vendor"] = {
				12245,
				4879,
				989,
				9636,
			},
		},
		[15865] = {
			175,
			2,
			2,
			["vendor"] = {
				4897,
				8150,
			},
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[42305] = {
			350,
			1,
		},
		[46688] = {
			250,
			2,
			["vendor"] = {
				2803,
				2806,
			},
		},
		[57438] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[62044] = {
			100,
			8,
			5,
		},
		[33277] = {
			1,
			2,
			["quest"] = {
				9454,
			},
		},
		[33285] = {
			310,
			2,
			["vendor"] = {
				18382,
			},
		},
		[33293] = {
			320,
			2,
			["vendor"] = {
				20096,
				20097,
			},
		},
		[18244] = {
			250,
			2,
			["vendor"] = {
				8137,
			},
		},
		[45549] = {
			350,
			1,
		},
		[15915] = {
			225,
			2,
			["vendor"] = {
				4305,
				1149,
				989,
			},
		},
		[45565] = {
			350,
			1,
		},
		[25659] = {
			300,
			2,
			["quest"] = {
				8586,
			},
		},
		[7213] = {
			175,
			2,
			["vendor"] = {
				2664,
			},
		},
		[15933] = {
			225,
			2,
			["vendor"] = {
				2803,
				2806,
				11187,
			},
		},
		[15935] = {
			1,
			2,
			["vendor"] = {
				2118,
			},
		},
		[36210] = {
			300,
			2,
			["vendor"] = {
				18382,
			},
		},
	[25954] = {
		175,
		2,
		["vendor"] = {
			2397,
			16718,
			3085,
			17246,
			3027,
			14738,
			5160,
			4265,
			8307,
			4223,
			5483,
			3400,
			2381,
			2664,
			4553,
			19195,
			26868,
			16253,
			12033,
			16677,
		},
	},
		[57423] = {
			450,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[57439] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[62045] = {
			330,
			8,
			5,
		},
		[37836] = {
			1,
			1,
		},
		[33278] = {
			50,
			2,
			["vendor"] = {
				16253,
			},
		},
		[33286] = {
			315,
			2,
			["vendor"] = {
				18957,
				19038,
			},
		},
		[33294] = {
			320,
			2,
			["vendor"] = {
				20096,
				20097,
			},
		},
		[3372] = {
			90,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				127,
			},
		},
		[45558] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[3373] = {
			120,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				471,
			},
		},
		[7752] = {
			1,
			2,
			["vendor"] = {
				5162,
				4305,
				3550,
				5942,
				10118,
			},
		},
		[7753] = {
			50,
			2,
			["vendor"] = {
				5748,
				1684,
				4574,
				66,
				4265,
				5940,
				3027,
				5162,
			},
		},
		[7754] = {
			50,
			2,
			["vendor"] = {
				1684,
			},
		},
		[7755] = {
			100,
			2,
			["vendor"] = {
				3497,
				4553,
				2383,
				3027,
				2397,
				5494,
				3029,
			},
		},
		[3376] = {
			130,
			2,
			2,
			["vendor"] = {
				1148,
				2821,
				340,
			},
			["quest"] = {
				296,
			},
		},
		[3377] = {
			110,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				93,
			},
		},
		[8604] = {
			1,
			8,
			8,
		},
		[64054] = {
			250,
			2,
			["quest"] = {
				6610,
			},
		},
		[57440] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[6499] = {
			50,
			1,
		},
		[6500] = {
			125,
			1,
		},
		[6501] = {
			90,
			2,
			["vendor"] = {
				4305,
				4307,
			},
		},
		[33279] = {
			300,
			2,
			["quest"] = {
				9356,
			},
		},
		[33287] = {
			325,
			2,
			["vendor"] = {
				20096,
				20097,
			},
		},
		[18241] = {
			225,
			2,
			["vendor"] = {
				2664,
			},
		},
		[18245] = {
			275,
			2,
			["vendor"] = {
				7947,
				8145,
			},
		},
		[45551] = {
			350,
			1,
		},
		[45559] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[45567] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[25704] = {
			80,
			2,
			["vendor"] = {
				2397,
				16718,
				3085,
				17246,
				3027,
				14738,
				5160,
				4265,
				8307,
				4223,
				5483,
				3400,
				2381,
				2664,
				4553,
				19195,
				26868,
				16253,
				12033,
				16677,
			},
		},
		[3397] = {
			110,
			2,
			2,
			2,
			["quest"] = {
				498,
			},
			["vendor"] = {
				3960,
			},
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[57433] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[3398] = {
			125,
			2,
			2,
			["vendor"] = {
				3489,
				12245,
			},
			["quest"] = {
				501,
			},
		},
		[3399] = {
			150,
			2,
			["quest"] = {
				564,
			},
		},
		[3400] = {
			175,
			2,
			["quest"] = {
				555,
				7321,
			},
		},
		[66034] = {
			270,
			8,
			5,
		},
		[58525] = {
			350,
			7,
		},
		[33288] = {
			325,
			2,
			["vendor"] = {
				18957,
				19038,
			},
		},
		[33296] = {
			350,
			2,
			["vendor"] = {
				18960,
				19296,
			},
		},
		[45552] = {
			350,
			1,
		},
		[45560] = {
			350,
			1,
		},
		[45568] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[15856] = {
			175,
			2,
			2,
			["vendor"] = {
				8145,
				7947,
			},
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[66035] = {
			210,
			8,
			5,
		},
		[7827] = {
			50,
			2,
			["vendor"] = {
				4305,
				4307,
				5748,
				5494,
				3333,
				4553,
				3178,
				10118,
				3497,
				5942,
			},
		},
		[7828] = {
			175,
			2,
			["vendor"] = {
				4307,
				2664,
				3333,
				12962,
				2383,
				12033,
				3178,
				4574,
				5162,
			},
		},
		[8238] = {
			85,
			7,
		},
		[57442] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[38867] = {
			335,
			2,
			["vendor"] = {
				20916,
				21113,
			},
			["quest"] = {
				10860,
			},
		},
		[66038] = {
			90,
			8,
			5,
		},
		[66036] = {
			100,
			8,
			5,
		},
		[15906] = {
			200,
			2,
			2,
			["vendor"] = {
				4897,
				4879,
			},
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[33289] = {
			325,
			2,
			["vendor"] = {
				20096,
				20097,
			},
		},
		[15910] = {
			200,
			2,
			["vendor"] = {
				12245,
				9636,
				8150,
			},
		},
		[18246] = {
			275,
			2,
			["vendor"] = {
				7947,
				8145,
			},
		},
		[45553] = {
			350,
			1,
		},
		[45561] = {
			350,
			1,
		},
		[45569] = {
			350,
			1,
		},
		[6419] = {
			110,
			2,
			["vendor"] = {
				3960,
				12245,
			},
		},
		[62051] = {
			270,
			8,
			5,
		},
		[33291] = {
			300,
			2,
			["vendor"] = {
				18011,
				20028,
			},
		},
		[62049] = {
			210,
			8,
			5,
		},
		[65454] = {
			45,
			8,
			6,
		},
		[42302] = {
			350,
			1,
		},
		[64358] = {
			400,
			1,
		},
		[62350] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[66037] = {
			330,
			8,
			5,
		},
		[24418] = {
			150,
			2,
			["vendor"] = {
				4879,
			},
		},
		[6412] = {
			10,
			2,
			["quest"] = {
				4161,
			},
		},
		[58523] = {
			350,
			7,
		},
		[58521] = {
			350,
			7,
		},
		[7751] = {
			1,
			2,
			["vendor"] = {
				5940,
				8508,
				5494,
				3550,
				66,
				4265,
				3029,
				4574,
				1684,
			},
		},
		[58065] = {
			350,
			1,
		},
		[28267] = {
			60,
			2,
			2,
			["vendor"] = {
				16253,
				18427,
			},
			["quest"] = {
				9171,
			},
		},
		[57435] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[57443] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[2538] = {
			1,
			8,
			8,
		},
		[21143] = {
			1,
			2,
			8,
			1,
			["vendor"] = {
				23064,
				23010,
				13435,
				13432,
				13429,
				13433,
				23012,
				13420,
			},
		},
		[2539] = {
			10,
			1,
		},
		[57441] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[2795] = {
			10,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				384,
			},
		},
		[2542] = {
			50,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				22,
			},
		},
		[2541] = {
			50,
			1,
		},
		[58527] = {
			425,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[33290] = {
			300,
			2,
			["vendor"] = {
				18015,
				20028,
			},
		},
		[21175] = {
			200,
			1,
		},
		[2543] = {
			75,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				38,
			},
		},
		[45554] = {
			375,
			1,
		},
		[2544] = {
			75,
			1,
		},
		[45570] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[2545] = {
			85,
			2,
			7,
			["vendor"] = {
				340,
			},
		},
		[57434] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[2546] = {
			80,
			1,
		},
		[33295] = {
			325,
			2,
			["vendor"] = {
				18960,
				19296,
			},
		},
		[2547] = {
			100,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				92,
			},
		},
		[53056] = {
			375,
			2,
			8,
			36,
			["quest"] = {
				13571,
			},
		},
		[2548] = {
			110,
			2,
			7,
			["vendor"] = {
				340,
			},
		},
		[46684] = {
			250,
			2,
			["vendor"] = {
				2803,
				2806,
			},
		},
		[2549] = {
			100,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				90,
			},
		},
		[22761] = {
			275,
			2,
			["mobDrop"] = {
				14354,
			},
		},
		[45695] = {
			100,
			2,
			8,
			7,
			["quest"] = {
				11666,
				11668,
				11667,
				11669,
				13100,
				13101,
				13102,
				13103,
				13107,
				13112,
				13113,
				13114,
				13115,
				13116,
			},
		},
		[45557] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[45566] = {
			350,
			1,
		},
		[45564] = {
			350,
			1,
		},
		[43772] = {
			300,
			2,
			8,
			5,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
			},
		},
		[45562] = {
			350,
			1,
		},
		[57436] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[6413] = {
			20,
			2,
			["vendor"] = {
				3881,
			},
		},
		[22480] = {
			225,
			2,
			["vendor"] = {
				4782,
				8125,
				7733,
			},
		},
		[62050] = {
			90,
			8,
			5,
		},
		[6416] = {
			50,
			2,
			2,
			["vendor"] = {
				3482,
			},
			["quest"] = {
				2178,
			},
		},
		[45550] = {
			350,
			1,
		},
		[6417] = {
			90,
			2,
			2,
			["vendor"] = {
				3392,
			},
			["quest"] = {
				862,
			},
		},
		[58512] = {
			350,
			7,
		},
		[6418] = {
			100,
			2,
			["vendor"] = {
				3482,
			},
		},
		[58528] = {
			425,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[18239] = {
			225,
			2,
			["vendor"] = {
				2664,
			},
		},
		[18243] = {
			250,
			2,
			["vendor"] = {
				8137,
			},
		},
		[18247] = {
			275,
			2,
			["vendor"] = {
				7947,
				8145,
			},
		},
		[45555] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[45563] = {
			350,
			1,
		},
		[45571] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[43761] = {
			300,
			2,
			8,
			6,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
			},
		},
		[43765] = {
			325,
			5,
			5,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
			},
		},
		[45022] = {
			325,
			2,
			8,
			1,
			["vendor"] = {
				13420,
				13433,
			},
		},
		[43779] = {
			1,
			2,
			8,
			5,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
				13100,
				13101,
				13102,
				13103,
				13107,
				13112,
				13113,
				13114,
				13115,
				13116,
			},
		},
		[42296] = {
			320,
			1,
		},
		[43758] = {
			300,
			2,
			8,
			5,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
				13100,
				13101,
				13102,
				13103,
				13107,
				13112,
				13113,
				13114,
				13115,
				13116,
			},
		},
		[4094] = {
			175,
			1,
			2,
			2,
			2,
			["quest"] = {
				703,
			},
			["vendor"] = {
				2814,
			},
			["limitedVendor"] = {
				12246,
				1,
			},
		},
		[3370] = {
			80,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				385,
			},
		},
		[8607] = {
			40,
			2,
			["vendor"] = {
				1465,
				3556,
			},
		},
		[18238] = {
			225,
			2,
			["vendor"] = {
				8137,
			},
		},
		[18240] = {
			240,
			2,
			["vendor"] = {
				8137,
			},
		},
		[18242] = {
			240,
			2,
			["vendor"] = {
				2664,
			},
		},
		[9513] = {
			60,
			2,
			2,
			["vendor"] = {
				6779,
			},
			["quest"] = {
				2359,
				2478,
			},
		},
		[38868] = {
			335,
			2,
			2,
			["vendor"] = {
				20916,
				21113,
			},
			["quest"] = {
				10860,
			},
		},
		[57421] = {
			350,
			2,
			["quest"] = {
				13088,
				13087,
				13089,
				13090,
			},
		},
		[20916] = {
			175,
			2,
			["vendor"] = {
				4307,
				2664,
				3333,
				12962,
				2383,
				12033,
				3178,
				4574,
				5162,
			},
		},
		[57437] = {
			400,
			2,
			["vendor"] = {
				31031,
				31032,
				33595,
			},
		},
		[20626] = {
			225,
			2,
			["vendor"] = {
				8139,
			},
		},
		[2540] = {
			1,
			8,
			8,
		},
		[21144] = {
			35,
			2,
			8,
			1,
			["vendor"] = {
				23064,
				23010,
				13435,
				13432,
				13429,
				13433,
				23012,
				13420,
			},
		},
		[13028] = {
			175,
			8,
			13,
		},
		[43707] = {
			325,
			2,
			8,
			6,
			["quest"] = {
				11381,
				11377,
				11379,
				11380,
			},
		},
		[3371] = {
			60,
			2,
			2,
			["vendor"] = {
				340,
			},
			["quest"] = {
				418,
			},
		},
		[24801] = {
			285,
			2,
			["quest"] = {
				8313,
			},
		},
		--enchanting

		[46578] = {
			350,
			8,
			4,
		},
		[46594] = {
			360,
			2,
			["repVendor"] = {
				BabbleFaction["Shattered Sun Offensive"],
				BabbleFaction["Honored"],
				25032,
			},
		},
		[25125] = {
			150,
			2,
			["vendor"] = {
				28714,
				15419,
				4617,
				18951,
				5757,
				16722,
				27030,
				19234,
				3012,
				5758,
				26569,
				18773,
				4228,
				5158,
				16635,
				19663,
				3346,
				1318,
				27054,
				27147,
				19537, -- [21]
				18753, -- [22]
				19540, -- [23]
			},
		},
		[44582] = {
			395,
			1,
		},
		[44598] = {
			415,
			1,
		},
		[13612] = {
			145,
			2,
			["mobDrop"] = {
				1054,
				1051,
				1052,
				1364,
				1053,
			},
		},
		[351530] = {
			375,
			2,
			["mobDrop"] = {
				19514,
			},
		},
		[351501] = {
			375,
			2,
			["mobDrop"] = {
				21216,
			},
		},
		[359012] = {
			375,
			2,
			["mobDrop"] = {
				16457,
			},
		},
		[44630] = {
			390,
			1,
		},
		[13620] = {
			145,
			2,
			["mobDrop"] = {
				2377,
				2374,
				2375,
				2376,
				14276,
			},
		},
		[13628] = {
			150,
			1,
		},
		[33995] = {
			340,
			1,
		},
		[13644] = {
			170,
			1,
		},
		[13648] = {
			170,
			1,
		},
		[59625] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[60663] = {
			420,
			1,
		},
		[13700] = {
			200,
			1,
		},
		[23800] = {
			290,
			2,
			["repVendor"] = {
				BabbleFaction["Timbermaw Hold"],
				BabbleFaction["Honored"],
				11557,
			},
		},
		[17181] = {
			250,
			1,
		},
		[27920] = {
			360,
			2,
			["repVendor"] = {
				BabbleFaction["The Consortium"],
				BabbleFaction["Revered"],
				17518,
			},
		},
		[27944] = {
			310,
			1,
		},
		[27960] = {
			345,
			2,
			2,
			["repVendor"] = {
				BabbleFaction["Honor Hold"],
				BabbleFaction["Revered"],
				17657,
				{
					BabbleFaction["Thrallmar"],
					BabbleFaction["Revered"],
					17585,
				},
			},
		},
		[44631] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[27984] = {
			375,
			2,
			["mobDrop"] = {
				15687,
			},
		},
		[28016] = {
			310,
			2,
			["vendor"] = {
				19663,
				16722,
				16635,
			},
		},
		[45765] = {
			375,
			2,
			["repVendor"] = {
				BabbleFaction["Shattered Sun Offensive"],
				BabbleFaction["Honored"],
				25032,
			},
		},
		[60616] = {
			360,
			1,
		},
		[14810] = {
			175,
			1,
		},
		[63746] = {
			225,
			1,
		},
		[25078] = {
			300,
			8,
			22,
		},
		[13836] = {
			215,
			1,
		},
		[20008] = {
			255,
			1,
		},
		[20016] = {
			280,
			1,
		},
		[20024] = {
			275,
			7,
		},
		[20032] = {
			300,
			2,
			["mobDrop"] = {
				10499,
			},
		},
		[13868] = {
			225,
			2,
			["mobDrop"] = {
				764,
				766,
				14448,
				1081,
				765,
			},
		},
		[42620] = {
			350,
			2,
			["repVendor"] = {
				BabbleFaction["The Violet Eye"],
				BabbleFaction["Exalted"],
				18255,
			},
		},
		[33997] = {
			360,
			2,
			["repVendor"] = {
				BabbleFaction["Keepers of Time"],
				BabbleFaction["Honored"],
				21643,
			},
		},
		[13421] = {
			115,
			1,
		},
		[7748] = {
			60,
			1,
		},
		[23801] = {
			290,
			2,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Honored"],
				10856,
				11536,
				10857,
			},
		},
		[44489] = {
			420,
			1,
		},
		[27905] = {
			315,
			1,
		},
		[27913] = {
			335,
			7,
		},
		[7766] = {
			60,
			7,
		},
		[27945] = {
			325,
			2,
			["vendor"] = {
				18664,
			},
		},
		[27961] = {
			310,
			1,
		},
		[44633] = {
			410,
			1,
		},
		[27977] = {
			360,
			2,
			["mobDrop"] = {
				20880,
			},
		},
		[13501] = {
			130,
			1,
		},
		[7782] = {
			80,
			7,
		},
		[7786] = {
			90,
			7,
		},
		[7788] = {
			90,
			1,
		},
		[13529] = {
			145,
			1,
		},
		[32664] = {
			300,
			1,
		},
		[60714] = {
			435,
			2,
			["vendor"] = {
				32514,
			},
		},
		[25079] = {
			300,
			8,
			22,
		},
		[44506] = {
			375,
			1,
		},
		[20009] = {
			270,
			7,
		},
		[25127] = {
			250,
			2,
			["vendor"] = {
				15419,
			},
		},
		[20025] = {
			300,
			7,
		},
		[20033] = {
			295,
			2,
			["mobDrop"] = {
				10398,
				16810,
			},
		},
		[13617] = {
			145,
			2,
			["mobDrop"] = {
				4029,
				3834,
				3919,
				4028,
				4030,
			},
		},
		[64579] = {
			450,
			8,
			39,
		},
		[13637] = {
			160,
			1,
		},
		[33999] = {
			350,
			2,
			["repVendor"] = {
				BabbleFaction["The Sha'tar"],
				BabbleFaction["Honored"],
				21432,
			},
		},
		[13653] = {
			175,
			7,
		},
		[13657] = {
			175,
			1,
		},
		[13661] = {
			180,
			1,
		},
		[13689] = {
			195,
			7,
		},
		[13693] = {
			195,
			1,
		},
		[23802] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Argent Dawn"],
				BabbleFaction["Revered"],
				10856,
				11536,
				10857,
			},
		},
		[27906] = {
			320,
			2,
			["mobDrop"] = {
				22822,
				23008,
			},
		},
		[27914] = {
			350,
			2,
			["mobDrop"] = {
				17803,
			},
		},
		[44555] = {
			375,
			1,
		},
		[27946] = {
			340,
			7,
		},
		[27954] = {
			370,
			2,
			["mobDrop"] = {
				16472,
			},
		},
		[27962] = {
			330,
			7,
		},
		[44635] = {
			395,
			1,
		},
		[14807] = {
			70,
			1,
		},
		[32665] = {
			350,
			2,
			["vendor"] = {
				18960,
				19004,
			},
		},
		[7421] = {
			1,
			8,
			8,
		},
		[13817] = {
			210,
			7,
		},
		[25072] = {
			300,
			2,
			2,
			["mobDrop"] = {
				15275,
			},
			["repVendor"] = {
				BabbleFaction["The Sha'tar"],
				BabbleFaction["Exalted"],
				21432,
			},
		},
		[25080] = {
			300,
			2,
			8,
			22,
			["repVendor"] = {
				BabbleFaction["Keepers of Time"],
				BabbleFaction["Exalted"],
				21643,
			},
		},
		[44492] = {
			395,
			1,
		},
		[44508] = {
			410,
			1,
		},
		[44524] = {
			425,
			2,
			["vendor"] = {
				32514,
			},
		},
		[7443] = {
			20,
			7,
		},
		[44556] = {
			400,
			2,
			["mobDrop"] = {
				30921,
			},
		},
		[25128] = {
			275,
			2,
			["vendor"] = {
				15419,
			},
		},
		[20026] = {
			275,
			2,
			["vendor"] = {
				11189,
			},
		},
		[20034] = {
			300,
			2,
			["mobDrop"] = {
				4494,
				9451,
			},
		},
		[44636] = {
			400,
			1,
		},
		[7457] = {
			50,
			1,
		},
		[13378] = {
			105,
			1,
		},
		[34001] = {
			305,
			1,
		},
		[13905] = {
			230,
			1,
		},
		[60621] = {
			380,
			1,
		},
		[13917] = {
			230,
			1,
		},
		[13933] = {
			235,
			7,
		},
		[13937] = {
			240,
			1,
		},
		[13941] = {
			245,
			1,
		},
		[22749] = {
			300,
			8,
			26,
		},
		[23803] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Honored"],
				12944,
			},
		},
		[27899] = {
			305,
			1,
		},
		[44509] = {
			420,
			1,
		},
		[27947] = {
			360,
			7,
		},
		[44621] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[27971] = {
			350,
			2,
			["mobDrop"] = {
				17465,
			},
		},
		[28003] = {
			360,
			7,
		},
		[28019] = {
			340,
			2,
			["vendor"] = {
				19663,
				16722,
				16635,
			},
		},
		[28027] = {
			325,
			1,
		},
		[13522] = {
			135,
			7,
		},
		[13538] = {
			140,
			1,
		},
		[25073] = {
			300,
			8,
			22,
		},
		[25081] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Friendly"],
				15419,
			},
		},
		[44494] = {
			400,
			2,
			["mobDrop"] = {
				32290,
			},
		},
		[44510] = {
			410,
			1,
		},
		[20011] = {
			300,
			7,
		},
		[25129] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Honored"],
				14921,
			},
		},
		[44590] = {
			400,
			2,
			["mobDrop"] = {
				32349,
			},
		},
		[20035] = {
			300,
			2,
			["mobDrop"] = {
				10469,
			},
		},
		[20051] = {
			290,
			2,
			["vendor"] = {
				12022,
			},
		},
		[13622] = {
			150,
			1,
		},
		[13626] = {
			150,
			1,
		},
		[34003] = {
			325,
			2,
			["repVendor"] = {
				BabbleFaction["The Consortium"],
				BabbleFaction["Friendly"],
				20242,
				23007,
			},
		},
		[13646] = {
			170,
			2,
			["limitedVendor"] = {
				2381,
				1,
				2821,
				1,
			},
		},
		[60623] = {
			385,
			1,
		},
		[44383] = {
			330,
			1,
		},
		[22750] = {
			300,
			8,
			26,
		},
		[13698] = {
			200,
			2,
			["mobDrop"] = {
				2556,
				2558,
				2557,
				2606,
			},
		},
		[13702] = {
			200,
			1,
		},
		[23804] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Revered"],
				12944,
			},
		},
		[27924] = {
			360,
			2,
			["repVendor"] = {
				BabbleFaction["Keepers of Time"],
				BabbleFaction["Honored"],
				21643,
			},
		},
		[44575] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[44591] = {
			435,
			2,
			["vendor"] = {
				32514,
			},
		},
		[44623] = {
			370,
			1,
		},
		[27972] = {
			350,
			7,
		},
		[28004] = {
			360,
			7,
		},
		[34004] = {
			310,
			1,
		},
		[28028] = {
			350,
			1,
		},
		[14293] = {
			10,
			1,
		},
		[13794] = {
			205,
			1,
		},
		[13822] = {
			210,
			1,
		},
		[25074] = {
			300,
			8,
			22,
		},
		[25082] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Cenarion Circle"],
				BabbleFaction["Honored"],
				15419,
			},
		},
		[47051] = {
			375,
			2,
			["mobDrop"] = {
				24560,
			},
		},
		[64441] = {
			450,
			8,
			39,
		},
		[13846] = {
			220,
			7,
		},
		[20012] = {
			270,
			1,
		},
		[20020] = {
			260,
			7,
		},
		[20028] = {
			290,
			1,
		},
		[20036] = {
			300,
			2,
			["mobDrop"] = {
				10422,
			},
		},
		[13882] = {
			225,
			2,
			["mobDrop"] = {
				5623,
				7805,
				2246,
			},
		},
		[13890] = {
			225,
			1,
		},
		[13898] = {
			265,
			2,
			["mobDrop"] = {
				9024,
			},
		},
		[60609] = {
			350,
			1,
		},
		[59619] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[47898] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[13419] = {
			110,
			2,
			7,
			["vendor"] = {
				3954,
				12043,
			},
		},
		[27837] = {
			290,
			2,
			["repVendor"] = {
				BabbleFaction["Timbermaw Hold"],
				BabbleFaction["Friendly"],
				11557,
			},
		},
		[7745] = {
			100,
			1,
		},
		[44513] = {
			395,
			1,
		},
		[27917] = {
			360,
			2,
			["mobDrop"] = {
				19952,
			},
		},
		[44593] = {
			420,
			1,
		},
		[27957] = {
			315,
			1,
		},
		[44625] = {
			435,
			2,
			["vendor"] = {
				32514,
			},
		},
		[27981] = {
			375,
			2,
			["mobDrop"] = {
				16524,
			},
		},
		[7779] = {
			80,
			1,
		},
		[13503] = {
			140,
			1,
		},
		[33990] = {
			320,
			1,
		},
		[34006] = {
			350,
			2,
			["mobDrop"] = {
				18870,
			},
		},
		[7793] = {
			100,
			2,
			["vendor"] = {
				3012,
				5158,
				3346,
				5758,
			},
		},
		[7795] = {
			100,
			1,
		},
		[59636] = {
			400,
			1,
		},
		[47899] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[25083] = {
			300,
			2,
			8,
			22,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Exalted"],
				17904,
			},
		},
		[20013] = {
			295,
			1,
		},
		[13607] = {
			145,
			1,
		},
		[13631] = {
			155,
			1,
		},
		[13635] = {
			155,
			1,
		},
		[33991] = {
			300,
			1,
		},
		[34007] = {
			360,
			2,
			["mobDrop"] = {
				24664,
			},
		},
		[44589] = {
			415,
			1,
		},
		[69412] = {
			445,
			1,
		},
		[13655] = {
			175,
			7,
		},
		[13659] = {
			180,
			1,
		},
		[13663] = {
			185,
			1,
		},
		[7863] = {
			125,
			1,
		},
		[60691] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[7867] = {
			125,
			2,
			["vendor"] = {
				3012,
				3537,
			},
		},
		[62256] = {
			450,
			2,
			["vendor"] = {
				32514,
			},
		},
		[60653] = {
			395,
			1,
		},
		[13687] = {
			190,
			7,
		},
		[62948] = {
			450,
			2,
			["vendor"] = {
				32514,
			},
		},
		[13695] = {
			200,
			1,
		},
		[60767] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[60763] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[44483] = {
			400,
			2,
			["mobDrop"] = {
				32289,
			},
		},
		[60707] = {
			435,
			2,
			["vendor"] = {
				32514,
			},
		},
		[60692] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[60668] = {
			425,
			1,
		},
		[27926] = {
			370,
			2,
			["repVendor"] = {
				BabbleFaction["The Sha'tar"],
				BabbleFaction["Revered"],
				21432,
			},
		},
		[62959] = {
			385,
			1,
		},
		[60619] = {
			425,
			1,
		},
		[44595] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[27958] = {
			350,
			1,
		},
		[60606] = {
			375,
			1,
		},
		[59621] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[42615] = {
			335,
			1,
		},
		[351535] = {
			375,
			8,
			29,
		},
		[820034] = {
			375,
			3,
			["mobDrop"] = {
				18831,
			},
		},
		[42974] = {
			375,
			8,
			29,
		},
		[47900] = {
			425,
			1,
		},
		[47766] = {
			400,
			1,
		},
		[33992] = {
			345,
			7,
		},
		[28022] = {
			335,
			2,
			["vendor"] = {
				19663,
				16722,
				16635,
			},
		},
		[47672] = {
			430,
			2,
			["vendor"] = {
				32514,
			},
		},
		[44645] = {
			400,
			1,
		},
		[44488] = {
			410,
			1,
		},
		[14809] = {
			155,
			1,
		},
		[7426] = {
			40,
			1,
		},
		[47901] = {
			440,
			2,
			["vendor"] = {
				32514,
			},
		},
		[7418] = {
			1,
			8,
			8,
		},
		[7420] = {
			15,
			1,
		},
		[13858] = {
			220,
			1,
		},
		[44528] = {
			385,
			1,
		},
		[13815] = {
			210,
			1,
		},
		[7428] = {
			1,
			8,
			8,
		},
		[25124] = {
			45,
			2,
			["vendor"] = {
				28714,
				15419,
				4617,
				18951,
				5757,
				16722,
				27030,
				19234,
				3012,
				5758,
				26569,
				18773,
				4228,
				5158,
				16635,
				19663,
				3346,
				1318,
				27054,
				27147,
				19537, -- [21]
				18753, -- [22]
				19540, -- [23]
			},
		},
		[44576] = {
			425,
			2,
			["vendor"] = {
				32514,
			},
		},
		[44584] = {
			405,
			1,
		},
		[25084] = {
			300,
			2,
			2,
			2,
			["mobDrop"] = {
				15276,
			},
			["repVendor"] = {
				BabbleFaction["Honor Hold"],
				BabbleFaction["Exalted"],
				17657,
				{
					BabbleFaction["Thrallmar"],
					BabbleFaction["Exalted"],
					17585,
				},
			},
		},
		[44500] = {
			395,
			1,
		},
		[44592] = {
			360,
			1,
		},
		[44629] = {
			395,
			1,
		},
		[44616] = {
			400,
			1,
		},
		[20014] = {
			265,
			1,
		},
		[20023] = {
			295,
			1,
		},
		[44596] = {
			400,
			2,
			["mobDrop"] = {
				31702,
				32297,
			},
		},
		[13841] = {
			215,
			2,
			["mobDrop"] = {
				674,
			},
		},
		[7454] = {
			45,
			1,
		},
		[17180] = {
			250,
			1,
		},
		[25086] = {
			300,
			2,
			8,
			22,
			["repVendor"] = {
				BabbleFaction["Lower City"],
				BabbleFaction["Exalted"],
				21655,
			},
		},
		[34002] = {
			300,
			1,
		},
		[13887] = {
			225,
			1,
		},
		[13380] = {
			110,
			7,
		},
		[33993] = {
			305,
			1,
		},
		[34009] = {
			325,
			2,
			["vendor"] = {
				19663,
			},
		},
		[20017] = {
			265,
			2,
			["vendor"] = {
				4229,
				4561,
			},
		},
		[20029] = {
			285,
			2,
			["mobDrop"] = {
				7524,
			},
		},
		[27950] = {
			320,
			2,
			["mobDrop"] = {
				18317,
			},
		},
		[13915] = {
			230,
			7,
		},
		[13640] = {
			160,
			1,
		},
		[13642] = {
			165,
			1,
		},
		[71692] = {
			375,
			2,
			["mobDrop"] = {
				26343,
				26336,
				26344,
			},
		},
		[13931] = {
			235,
			2,
			["vendor"] = {
				989,
				4229,
			},
		},
		[13935] = {
			235,
			1,
		},
		[13939] = {
			240,
			1,
		},
		[13943] = {
			245,
			1,
		},
		[13947] = {
			250,
			7,
		},
		[32667] = {
			375,
			1,
			2,
			["vendor"] = {
				19663,
			},
		},
		[44529] = {
			415,
			1,
		},
		[23799] = {
			290,
			2,
			["repVendor"] = {
				BabbleFaction["Thorium Brotherhood"],
				BabbleFaction["Friendly"],
				12944,
			},
		},
		[13945] = {
			245,
			7,
		},
		[33996] = {
			310,
			1,
		},
		[27911] = {
			325,
			2,
			2,
			["repVendor"] = {
				BabbleFaction["Honor Hold"],
				BabbleFaction["Friendly"],
				17657,
				{
					BabbleFaction["Thrallmar"],
					BabbleFaction["Friendly"],
					17585,
				},
			},
		},
		[13464] = {
			115,
			7,
		},
		[27927] = {
			375,
			2,
			["repVendor"] = {
				BabbleFaction["Lower City"],
				BabbleFaction["Honored"],
				21655,
			},
		},
		[7771] = {
			70,
			1,
		},
		[20010] = {
			295,
			2,
			["mobDrop"] = {
				7372,
			},
		},
		[27951] = {
			340,
			2,
			["mobDrop"] = {
				18521,
			},
		},
		[7776] = {
			80,
			2,
			["vendor"] = {
				3346,
				5757,
			},
		},
		[27967] = {
			340,
			2,
			["repVendor"] = {
				BabbleFaction["The Consortium"],
				BabbleFaction["Honored"],
				20242,
				23007,
			},
		},
		[27975] = {
			350,
			2,
			["mobDrop"] = {
				22242,
			},
		},
		[27968] = {
			340,
			2,
			["mobDrop"] = {
				20136,
			},
		},
		[13485] = {
			130,
			1,
		},
		[20030] = {
			295,
			2,
			["mobDrop"] = {
				10317,
			},
		},
		[13746] = {
			205,
			1,
		},
		[33994] = {
			360,
			2,
			["repVendor"] = {
				BabbleFaction["Cenarion Expedition"],
				BabbleFaction["Revered"],
				17904,
			},
		},
		[34010] = {
			350,
			2,
			["repVendor"] = {
				BabbleFaction["The Sha'tar"],
				BabbleFaction["Revered"],
				21432,
			},
		},
		[27982] = {
			375,
			2,
			["mobDrop"] = {
				15688,
			},
		},
		[34008] = {
			360,
			2,
			["mobDrop"] = {
				24664,
			},
		},
		[34005] = {
			350,
			2,
			["mobDrop"] = {
				19796,
			},
		},
		[44484] = {
			405,
			1,
		},
		[13536] = {
			140,
			2,
			["vendor"] = {
				3954,
				12043,
			},
		},
		[21931] = {
			190,
			5,
		},
		[20031] = {
			300,
			2,
			["mobDrop"] = {
				9216,
			},
		},
		[44588] = {
			410,
			2,
			["vendor"] = {
				32514,
			},
		},
		[15596] = {
			265,
			2,
			["mobDrop"] = {
				9025,
			},
		},
		[20015] = {
			285,
			2,
			["vendor"] = {
				12022,
			},
		},
		[27948] = {
			305,
			2,
			["mobDrop"] = {
				24664,
			},
		},
		[7857] = {
			120,
			1,
		},
		[7859] = {
			120,
			7,
		},
		[42613] = {
			300,
			1,
		},
		[7861] = {
			125,
			1,
		},
		[25130] = {
			300,
			2,
			["repVendor"] = {
				BabbleFaction["Zandalar Tribe"],
				BabbleFaction["Friendly"],
				14921,
			},
		},
		[13948] = {
			250,
			1,
		},
		[25126] = {
			200,
			2,
			["vendor"] = {
				28714,
				15419,
				4617,
				18951,
				5757,
				16722,
				27030,
				19234,
				3012,
				5758,
				26569,
				18773,
				4228,
				5158,
				16635,
				19663,
				3346,
				1318,
				27054,
				27147,
				19537, -- [21]
				18753, -- [22]
				19540, -- [23]
			},
		},
	--engineering

	[23081] = {
		290,
		2,
		["mobDrop"] = {
			10264,
		},
	},
	[46115] = {
		375,
		8,
		24,
	},
	[12586] = {
		175,
		1,
	},
	[12590] = {
		175,
		1,
	},
	[12594] = {
		205,
		1,
	},
	[23129] = {
		260,
		2,
		["mobDrop"] = {
			8920,
		},
	},
	[56463] = {
		375,
		1,
	},
	[30315] = {
		375,
		7,
	},
	[12622] = {
		245,
		1,
	},
	[30347] = {
		335,
		2,
		["vendor"] = {
			16657,
			16782,
			18484,
		},
	},
	[28327] = {
		275,
		2,
		2,
		["vendor"] = {
			3413,
			5175,
		},
		["quest"] = {
			9249,
		},
	},
	[44391] = {
		360,
		2,
		["mobDrop"] = {
			23385,
			23386,
		},
	},
	[32814] = {
		335,
		7,
	},
	[46116] = {
		375,
		8,
		24,
	},
	[26427] = {
		275,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[19792] = {
		260,
		1,
	},
	[19800] = {
		285,
		1,
	},
	[30547] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			20242,
			23007,
		},
	},
	[30563] = {
		350,
		1,
	},
	[56480] = {
		440,
		1,
	},
	[12754] = {
		235,
		1,
	},
	[12758] = {
		245,
		1,
	},
	[21940] = {
		190,
		8,
		1,
	},
	[23489] = {
		260,
		1,
	},
	[23066] = {
		150,
		2,
		["vendor"] = {
			3413,
		},
	},
	[23082] = {
		300,
		2,
		["mobDrop"] = {
			10426,
		},
	},
	[8243] = {
		185,
		2,
		2,
		["mobDrop"] = {
			7800,
		},
		["quest"] = {
			1559,
		},
	},
	[9269] = {
		125,
		2,
		2,
		["mobDrop"] = {
			7800,
		},
		["vendor"] = {
			5175,
			6730,
		},
	},
	[9273] = {
		165,
		2,
		2,
		["mobDrop"] = {
			7800,
		},
		["vendor"] = {
			4086,
			3134,
			3537,
		},
	},
	[30308] = {
		340,
		1,
	},
	[30316] = {
		340,
		2,
		["vendor"] = {
			18775,
			19836,
		},
	},
	[30332] = {
		360,
		2,
		["mobDrop"] = {
			20207,
		},
	},
	[30348] = {
		325,
		2,
		["vendor"] = {
			16657,
			16782,
			18484,
		},
	},
	[12902] = {
		210,
		1,
	},
	[12906] = {
		230,
		1,
	},
	[41311] = {
		350,
		1,
	},
	[8339] = {
		100,
		7,
	},
	[22795] = {
		300,
		8,
		26,
	},
	[55252] = {
		415,
		2,
		["quest"] = {
			12889,
		},
	},
	[26420] = {
		175,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[26428] = {
		275,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[19793] = {
		265,
		7,
	},
	[30548] = {
		305,
		2,
		["quest"] = {
			9635,
			9636,
		},
	},
	[19825] = {
		290,
		1,
	},
	[19833] = {
		300,
		2,
		["mobDrop"] = {
			8561,
		},
	},
	[56514] = {
		425,
		1,
	},
	[40274] = {
		350,
		1,
	},
	[41312] = {
		350,
		1,
	},
	[15633] = {
		205,
		8,
		16,
	},
	[23067] = {
		150,
		2,
		["vendor"] = {
			5175,
		},
	},
	[39971] = {
		335,
		1,
	},
	[12587] = {
		175,
		7,
	},
	[12591] = {
		200,
		1,
	},
	[12595] = {
		205,
		1,
	},
	[12599] = {
		215,
		1,
	},
	[12603] = {
		215,
		1,
	},
	[12607] = {
		220,
		7,
	},
	[43676] = {
		335,
		2,
		["mobDrop"] = {
			19707,
		},
	},
	[12615] = {
		225,
		1,
	},
	[12619] = {
		235,
		1,
	},
	[30325] = {
		360,
		2,
		["mobDrop"] = {
			19755,
		},
	},
	[54998] = {
		400,
		1,
	},
	[30349] = {
		405,
		2,
		["vendor"] = {
			28722,
		},
	},
	[63765] = {
		380,
		1,
	},
	[12715] = {
		205,
		1,
	},
	[36954] = {
		350,
		1,
	},
	[19794] = {
		270,
		1,
	},
	[30565] = {
		375,
		1,
	},
	[56484] = {
		440,
		1,
	},
	[12755] = {
		230,
		1,
	},
	[12759] = {
		240,
		1,
	},
	[63750] = {
		250,
		1,
	},
	[41314] = {
		350,
		1,
	},
	[23507] = {
		250,
		2,
		["vendor"] = {
			14637,
		},
	},
	[72952] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[23068] = {
		150,
		2,
		["vendor"] = {
			2838,
			3495,
		},
	},
	[39973] = {
		335,
		1,
	},
	[36955] = {
		350,
		1,
	},
	[44157] = {
		375,
		1,
	},
	[30310] = {
		300,
		1,
	},
	[30318] = {
		350,
		2,
		["vendor"] = {
			18775,
			19383,
		},
	},
	[30334] = {
		375,
		2,
		["mobDrop"] = {
			16152,
		},
	},
	[55016] = {
		405,
		1,
	},
	[12895] = {
		205,
		1,
	},
	[12899] = {
		205,
		1,
	},
	[12903] = {
		215,
		1,
	},
	[12907] = {
		235,
		1,
	},
	[41315] = {
		350,
		1,
	},
	[22797] = {
		300,
		8,
		26,
	},
	[54793] = {
		380,
		1,
	},
	[26422] = {
		175,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[19795] = {
		275,
		1,
	},
	[8895] = {
		225,
		1,
	},
	[19819] = {
		290,
		2,
		["mobDrop"] = {
			10426,
		},
	},
	[30558] = {
		325,
		1,
	},
	[30566] = {
		375,
		1,
	},
	[30574] = {
		375,
		1,
	},
	[41316] = {
		350,
		1,
	},
	[39895] = {
		275,
		2,
		["vendor"] = {
			11185,
			19661,
		},
	},
	[23069] = {
		200,
		2,
		["vendor"] = {
			8131,
		},
	},
	[23077] = {
		260,
		2,
		["vendor"] = {
			11185,
		},
	},
	[46107] = {
		375,
		8,
		24,
	},
	[12584] = {
		150,
		1,
	},
	[12596] = {
		210,
		1,
	},
	[30303] = {
		300,
		1,
	},
	[30311] = {
		325,
		1,
	},
	[12620] = {
		240,
		7,
	},
	[12624] = {
		250,
		2,
		["vendor"] = {
			2688,
		},
	},
	[55002] = {
		380,
		1,
	},
	[41317] = {
		350,
		1,
	},
	[15255] = {
		200,
		1,
	},
	[46108] = {
		375,
		8,
		24,
	},
	[26423] = {
		225,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[19788] = {
		250,
		1,
	},
	[19796] = {
		275,
		2,
		["mobDrop"] = {
			8897,
		},
	},
	[30551] = {
		330,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[56472] = {
		425,
		1,
	},
	[30575] = {
		375,
		1,
	},
	[12760] = {
		205,
		1,
	},
	[63770] = {
		400,
		1,
	},
	[41318] = {
		350,
		1,
	},
	[23070] = {
		250,
		1,
	},
	[23078] = {
		265,
		2,
		["mobDrop"] = {
			9499,
		},
	},
	[46109] = {
		375,
		8,
		24,
	},
	[61471] = {
		390,
		1,
	},
	[9271] = {
		150,
		1,
	},
	[30304] = {
		300,
		1,
	},
	[30312] = {
		320,
		1,
	},
	[30344] = {
		335,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Friendly"],
			17904,
		},
	},
	[12908] = {
		240,
		1,
	},
	[41319] = {
		350,
		1,
	},
	[56468] = {
		405,
		1,
	},
	[60867] = {
		450,
		8,
		"ALLIANCE_VANGUARD",
	},
	[72953] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[68067] = {
		450,
		7,
	},
	[67920] = {
		435,
		1,
	},
	[67839] = {
		410,
		1,
	},
	[67326] = {
		410,
		1,
	},
	[24356] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Honored"],
			14921,
		},
	},
	[46110] = {
		375,
		8,
		24,
	},
	[26416] = {
		125,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[26424] = {
		225,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[62271] = {
		440,
		1,
	},
	[61483] = {
		420,
		1,
	},
	[61482] = {
		420,
		1,
	},
	[61481] = {
		420,
		1,
	},
	[30552] = {
		345,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[30560] = {
		340,
		1,
	},
	[30568] = {
		325,
		1,
	},
	[60874] = {
		450,
		1,
	},
	[30317] = {
		340,
		7,
	},
	[56487] = {
		440,
		1,
	},
	[56486] = {
		440,
		1,
	},
	[56483] = {
		440,
		1,
	},
	[56481] = {
		440,
		1,
	},
	[56479] = {
		450,
		1,
	},
	[56478] = {
		430,
		1,
	},
	[23486] = {
		260,
		1,
	},
	[56477] = {
		415,
		1,
	},
	[41320] = {
		350,
		1,
	},
	[56476] = {
		410,
		1,
	},
	[56475] = {
		415,
		1,
	},
	[56474] = {
		410,
		1,
	},
	[56473] = {
		425,
		1,
	},
	[56471] = {
		390,
		1,
	},
	[56470] = {
		425,
		1,
	},
	[56469] = {
		425,
		1,
	},
	[60866] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["Horde Expedition"],
			BabbleFaction["Exalted"],
			32565,
			32774,
		},
	},
	[56467] = {
		420,
		1,
	},
	[23071] = {
		260,
		1,
	},
	[23079] = {
		275,
		8,
		32,
	},
	[3919] = {
		1,
		1,
	},
	[12585] = {
		175,
		1,
	},
	[12589] = {
		195,
		1,
	},
	[3922] = {
		30,
		1,
	},
	[12597] = {
		210,
		2,
		["vendor"] = {
			8679,
			9544,
		},
	},
	[3924] = {
		50,
		1,
	},
	[3925] = {
		50,
		1,
	},
	[3926] = {
		65,
		1,
	},
	[30305] = {
		300,
		1,
	},
	[3928] = {
		75,
		7,
	},
	[12621] = {
		245,
		1,
	},
	[3930] = {
		75,
		1,
	},
	[3931] = {
		75,
		1,
	},
	[3932] = {
		85,
		1,
	},
	[3933] = {
		100,
		7,
	},
	[3934] = {
		100,
		1,
	},
	[22704] = {
		300,
		8,
		17,
	},
	[3936] = {
		105,
		1,
	},
	[3937] = {
		105,
		1,
	},
	[3938] = {
		105,
		1,
	},
	[3939] = {
		120,
		2,
		["vendor"] = {
			2682,
			6730,
		},
	},
	[3940] = {
		120,
		7,
	},
	[3941] = {
		120,
		1,
	},
	[3942] = {
		125,
		1,
	},
	[56466] = {
		420,
		1,
	},
	[3944] = {
		125,
		2,
		["mobDrop"] = {
			7800,
		},
	},
	[3945] = {
		125,
		1,
	},
	[3946] = {
		125,
		1,
	},
	[3947] = {
		125,
		1,
	},
	[56465] = {
		420,
		1,
	},
	[3949] = {
		130,
		1,
	},
	[3950] = {
		140,
		1,
	},
	[46112] = {
		375,
		8,
		24,
	},
	[3952] = {
		140,
		2,
		["vendor"] = {
			3495,
			2683,
			2682,
		},
	},
	[12717] = {
		205,
		1,
	},
	[3954] = {
		145,
		7,
	},
	[3955] = {
		150,
		1,
	},
	[3956] = {
		150,
		1,
	},
	[3957] = {
		155,
		2,
		["limitedVendor"] = {
			2684,
			1,
		},
	},
	[3958] = {
		160,
		1,
	},
	[19830] = {
		300,
		2,
		["mobDrop"] = {
			7437,
		},
	},
	[3960] = {
		165,
		7,
	},
	[3961] = {
		170,
		1,
	},
	[3962] = {
		175,
		1,
	},
	[3963] = {
		175,
		1,
	},
	[56464] = {
		375,
		1,
	},
	[3965] = {
		185,
		1,
	},
	[3966] = {
		185,
		7,
	},
	[3967] = {
		190,
		1,
	},
	[3968] = {
		195,
		7,
	},
	[3969] = {
		200,
		2,
		["vendor"] = {
			2687,
		},
	},
	[56462] = {
		435,
		1,
	},
	[3971] = {
		200,
		2,
		2,
		["mobDrop"] = {
			7800,
		},
		["limitedVendor"] = {
			6777,
			1,
		},
	},
	[3972] = {
		200,
		7,
	},
	[3973] = {
		90,
		1,
	},
	[7430] = {
		50,
		1,
	},
	[56461] = {
		375,
		1,
	},
	[3979] = {
		180,
		2,
		["vendor"] = {
			2685,
		},
	},
	[3977] = {
		60,
		1,
	},
	[3978] = {
		110,
		1,
	},
	[54736] = {
		390,
		1,
	},
	[46106] = {
		375,
		8,
		24,
	},
	[19799] = {
		285,
		2,
		["mobDrop"] = {
			8920,
		},
	},
	[23080] = {
		275,
		2,
		["vendor"] = {
			11185,
		},
	},
	[46113] = {
		375,
		8,
		24,
	},
	[23096] = {
		265,
		2,
		["mobDrop"] = {
			8920,
		},
	},
	[56460] = {
		350,
		1,
	},
	[56459] = {
		375,
		1,
	},
	[54353] = {
		400,
		1,
	},
	[54999] = {
		400,
		1,
	},
	[3953] = {
		145,
		1,
	},
	[19567] = {
		250,
		1,
	},
	[30306] = {
		325,
		1,
	},
	[30314] = {
		360,
		2,
		["mobDrop"] = {
			19960,
		},
	},
	[53281] = {
		350,
		1,
	},
	[46697] = {
		355,
		2,
		["mobDrop"] = {
			19219,
		},
	},
	[19790] = {
		260,
		1,
	},
	[30346] = {
		310,
		1,
	},
	[12614] = {
		220,
		7,
	},
	[12897] = {
		210,
		1,
	},
	[6458] = {
		135,
		1,
	},
	[12905] = {
		225,
		1,
	},
	[12616] = {
		225,
		7,
	},
	[41307] = {
		375,
		1,
	},
	[12618] = {
		230,
		1,
	},
	[30556] = {
		355,
		2,
		["mobDrop"] = {
			17796,
		},
	},
	[30309] = {
		340,
		1,
	},
	[30313] = {
		350,
		2,
		["vendor"] = {
			16657,
			19661,
			16782,
		},
	},
	[8334] = {
		100,
		1,
	},
	[30329] = {
		335,
		2,
		["vendor"] = {
			19351,
			19836,
		},
	},
	[46111] = {
		375,
		8,
		24,
	},
	[22793] = {
		300,
		8,
		26,
	},
	[44155] = {
		300,
		1,
	},
	[24357] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Friendly"],
			14921,
		},
	},
	[12716] = {
		205,
		1,
	},
	[12718] = {
		205,
		1,
	},
	[46114] = {
		375,
		8,
		24,
	},
	[26418] = {
		125,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[26426] = {
		275,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[19791] = {
		260,
		1,
	},
	[26442] = {
		225,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[30569] = {
		340,
		1,
	},
	[19815] = {
		285,
		2,
		["vendor"] = {
			11185,
		},
	},
	[13240] = {
		205,
		1,
	},
	[19831] = {
		300,
		7,
	},
	[30570] = {
		350,
		1,
	},
	[56349] = {
		350,
		1,
	},
	[30341] = {
		335,
		2,
		["vendor"] = {
			16657,
			18484,
			19383,
			16782,
		},
	},
	[30337] = {
		325,
		7,
	},
	[19814] = {
		275,
		2,
		["vendor"] = {
			11185,
		},
	},
	[26011] = {
		250,
		2,
		["quest"] = {
			8798,
		},
	},
	[56574] = {
		440,
		1,
	},
	[26417] = {
		125,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[30307] = {
		340,
		1,
	},
	[3918] = {
		1,
		1,
	},
	[3920] = {
		1,
		1,
	},
	[41321] = {
		350,
		1,
	},
	[26443] = {
		275,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[3923] = {
		30,
		1,
	},
	[26425] = {
		225,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[3929] = {
		75,
		1,
	},
	[12617] = {
		230,
		2,
		["vendor"] = {
			8678,
		},
	},
	[26421] = {
		175,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[15628] = {
		205,
		8,
		16,
	},
	[3959] = {
		160,
		2,
		["mobDrop"] = {
			7800,
		},
	},
	--firstaid

	[7934] = {
		80,
		1,
	},
	[23787] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Honored"],
			10856,
			11536,
			10857,
		},
	},
	[3275] = {
		1,
		1,
	},
	[3277] = {
		80,
		1,
	},
	[10840] = {
		210,
		1,
	},
	[18629] = {
		260,
		1,
	},
	[18630] = {
		290,
		1,
	},
	[27032] = {
		300,
		1,
	},
	[7928] = {
		150,
		1,
	},
	[3276] = {
		40,
		1,
	},
	[3278] = {
		115,
		1,
	},
	[7929] = {
		180,
		1,
	},
	[45546] = {
		400,
		7,
	},
	[7935] = {
		130,
		7,
	},
	[27033] = {
		330,
		1,
	},
	[45545] = {
		350,
		1,
	},
	[10841] = {
		240,
		1,
	},
	--inscription

	[58315] = {
		95,
		8,
		14,
	},
	[58331] = {
		120,
		8,
		14,
	},
	[58347] = {
		320,
		8,
		14,
	},
	[59497] = {
		400,
		1,
	},
	[56958] = {
		385,
		8,
		15,
	},
	[56974] = {
		155,
		1,
	},
	[56990] = {
		310,
		8,
		14,
	},
	[57006] = {
		375,
		1,
	},
	[57022] = {
		80,
		1,
	},
	[64256] = {
		425,
		8,
		40,
	},
	[64288] = {
		425,
		8,
		40,
	},
	[64304] = {
		425,
		8,
		40,
	},
	[57166] = {
		385,
		8,
		15,
	},
	[57198] = {
		375,
		1,
	},
	[57214] = {
		385,
		8,
		15,
	},
	[57230] = {
		300,
		8,
		14,
	},
	[57246] = {
		95,
		1,
	},
	[50619] = {
		350,
		1,
	},
	[58300] = {
		75,
		8,
		14,
	},
	[58316] = {
		150,
		8,
		14,
	},
	[58332] = {
		95,
		8,
		14,
	},
	[56943] = {
		350,
		1,
	},
	[56959] = {
		220,
		1,
	},
	[56975] = {
		385,
		8,
		15,
	},
	[56991] = {
		315,
		1,
	},
	[57007] = {
		150,
		1,
	},
	[57023] = {
		205,
		1,
	},
	[53462] = {
		75,
		1,
	},
	[64257] = {
		425,
		8,
		40,
	},
	[57119] = {
		95,
		1,
	},
	[45382] = {
		1,
		1,
	},
	[57151] = {
		220,
		1,
	},
	[57167] = {
		140,
		1,
	},
	[57183] = {
		230,
		1,
	},
	[57199] = {
		385,
		8,
		15,
	},
	[57215] = {
		300,
		8,
		14,
	},
	[50604] = {
		410,
		1,
	},
	[50620] = {
		400,
		1,
	},
	[58301] = {
		75,
		8,
		14,
	},
	[58317] = {
		75,
		8,
		14,
	},
	[58333] = {
		150,
		8,
		14,
	},
	[59387] = {
		200,
		1,
	},
	[52840] = {
		75,
		1,
	},
	[56944] = {
		385,
		8,
		15,
	},
	[56960] = {
		385,
		8,
		15,
	},
	[56976] = {
		80,
		1,
	},
	[57008] = {
		315,
		1,
	},
	[57024] = {
		230,
		1,
	},
	[64258] = {
		250,
		1,
	},
	[57120] = {
		105,
		1,
	},
	[57152] = {
		385,
		8,
		15,
	},
	[57168] = {
		320,
		1,
	},
	[57184] = {
		105,
		1,
	},
	[57200] = {
		180,
		1,
	},
	[57216] = {
		270,
		1,
	},
	[57232] = {
		385,
		8,
		15,
	},
	[50605] = {
		75,
		1,
	},
	[57264] = {
		385,
		8,
		15,
	},
	[58302] = {
		150,
		8,
		14,
	},
	[58318] = {
		75,
		8,
		14,
	},
	[48114] = {
		1,
		1,
	},
	[64051] = {
		350,
		2,
		["mobDrop"] = {
			27676,
			26708,
			26679,
			27546,
		},
	},
	[59484] = {
		175,
		1,
	},
	[56945] = {
		115,
		1,
	},
	[56961] = {
		90,
		1,
	},
	[56977] = {
		385,
		8,
		15,
	},
	[57009] = {
		90,
		1,
	},
	[57025] = {
		265,
		1,
	},
	[61177] = {
		385,
		1,
	},
	[64259] = {
		255,
		1,
	},
	[57121] = {
		120,
		1,
	},
	[64291] = {
		425,
		8,
		40,
	},
	[57153] = {
		385,
		8,
		15,
	},
	[57169] = {
		385,
		8,
		15,
	},
	[57185] = {
		270,
		1,
	},
	[57201] = {
		210,
		1,
	},
	[57217] = {
		320,
		8,
		14,
	},
	[57233] = {
		385,
		8,
		15,
	},
	[50606] = {
		160,
		1,
	},
	[57265] = {
		110,
		1,
	},
	[58303] = {
		75,
		8,
		14,
	},
	[58319] = {
		170,
		8,
		14,
	},
	[56946] = {
		385,
		8,
		15,
	},
	[56978] = {
		90,
		1,
	},
	[56994] = {
		175,
		1,
	},
	[57010] = {
		385,
		8,
		15,
	},
	[57026] = {
		300,
		1,
	},
	[64260] = {
		255,
		1,
	},
	[57122] = {
		305,
		1,
	},
	[57154] = {
		240,
		1,
	},
	[57170] = {
		385,
		8,
		15,
	},
	[57186] = {
		120,
		1,
	},
	[57202] = {
		385,
		8,
		15,
	},
	[57218] = {
		385,
		8,
		15,
	},
	[57234] = {
		385,
		8,
		15,
	},
	[50607] = {
		210,
		1,
	},
	[57266] = {
		95,
		1,
	},
	[59326] = {
		95,
		8,
		14,
	},
	[58320] = {
		95,
		8,
		14,
	},
	[48116] = {
		1,
		1,
	},
	[64053] = {
		350,
		1,
	},
	[52843] = {
		35,
		1,
	},
	[56947] = {
		385,
		8,
		15,
	},
	[56963] = {
		85,
		1,
	},
	[56979] = {
		225,
		1,
	},
	[56995] = {
		100,
		1,
	},
	[57011] = {
		385,
		8,
		15,
	},
	[57027] = {
		90,
		1,
	},
	[64261] = {
		250,
		1,
	},
	[57123] = {
		135,
		1,
	},
	[64312] = {
		425,
		8,
		40,
	},
	[57155] = {
		385,
		8,
		15,
	},
	[64313] = {
		425,
		8,
		40,
	},
	[57187] = {
		315,
		1,
	},
	[57714] = {
		325,
		1,
	},
	[57219] = {
		280,
		1,
	},
	[57235] = {
		385,
		8,
		15,
	},
	[50608] = {
		255,
		1,
	},
	[57267] = {
		385,
		8,
		15,
	},
	[58305] = {
		95,
		8,
		14,
	},
	[58321] = {
		150,
		8,
		14,
	},
	[58337] = {
		75,
		8,
		14,
	},
	[71015] = {
		375,
		2,
		["vendor"] = {
			28723,
		},
	},
	[69385] = {
		440,
		1,
	},
	[64286] = {
		425,
		8,
		40,
	},
	[67600] = {
		100,
		1,
	},
	[57249] = {
		165,
		1,
	},
	[64318] = {
		425,
		8,
		40,
	},
	[64317] = {
		425,
		8,
		40,
	},
	[59487] = {
		175,
		1,
	},
	[56948] = {
		150,
		1,
	},
	[64316] = {
		425,
		8,
		40,
	},
	[56980] = {
		375,
		1,
	},
	[56996] = {
		385,
		8,
		15,
	},
	[57012] = {
		385,
		8,
		15,
	},
	[57028] = {
		385,
		8,
		15,
	},
	[64315] = {
		425,
		8,
		40,
	},
	[64314] = {
		425,
		8,
		40,
	},
	[71101] = {
		250,
		2,
		["vendor"] = {
			28723,
			30734,
			30735,
		},
	},
	[64246] = {
		425,
		8,
		40,
	},
	[64262] = {
		255,
		1,
	},
	[57124] = {
		385,
		8,
		15,
	},
	[64294] = {
		425,
		8,
		40,
	},
	[57156] = {
		285,
		1,
	},
	[57172] = {
		345,
		1,
	},
	[57188] = {
		135,
		1,
	},
	[57715] = {
		350,
		1,
	},
	[57220] = {
		385,
		8,
		15,
	},
	[57236] = {
		300,
		1,
	},
	[57252] = {
		330,
		1,
	},
	[57268] = {
		385,
		8,
		15,
	},
	[58306] = {
		75,
		8,
		14,
	},
	[58322] = {
		345,
		8,
		14,
	},
	[58338] = {
		150,
		8,
		14,
	},
	[71102] = {
		375,
		2,
		["vendor"] = {
			28723,
		},
	},
	[64311] = {
		425,
		8,
		40,
	},
	[64310] = {
		425,
		8,
		40,
	},
	[64309] = {
		425,
		8,
		40,
	},
	[64308] = {
		425,
		8,
		40,
	},
	[64307] = {
		425,
		8,
		40,
	},
	[64305] = {
		425,
		8,
		40,
	},
	[59488] = {
		235,
		1,
	},
	[56949] = {
		385,
		8,
		15,
	},
	[56965] = {
		310,
		8,
		14,
	},
	[56981] = {
		175,
		1,
	},
	[56997] = {
		115,
		1,
	},
	[57013] = {
		385,
		8,
		15,
	},
	[57029] = {
		105,
		1,
	},
	[57244] = {
		235,
		1,
	},
	[50609] = {
		295,
		1,
	},
	[58478] = {
		225,
		1,
	},
	[64247] = {
		425,
		8,
		40,
	},
	[59338] = {
		310,
		1,
	},
	[57125] = {
		160,
		1,
	},
	[64295] = {
		425,
		8,
		40,
	},
	[57157] = {
		125,
		1,
	},
	[59503] = {
		325,
		1,
	},
	[57189] = {
		385,
		8,
		15,
	},
	[57716] = {
		375,
		1,
	},
	[57221] = {
		300,
		1,
	},
	[57237] = {
		385,
		8,
		15,
	},
	[57253] = {
		355,
		8,
		14,
	},
	[57269] = {
		140,
		1,
	},
	[58307] = {
		120,
		8,
		14,
	},
	[58323] = {
		75,
		8,
		14,
	},
	[58339] = {
		150,
		8,
		14,
	},
	[59339] = {
		320,
		1,
	},
	[64279] = {
		425,
		8,
		40,
	},
	[64289] = {
		425,
		8,
		40,
	},
	[64287] = {
		425,
		8,
		40,
	},
	[68166] = {
		355,
		8,
		14,
	},
	[64285] = {
		425,
		8,
		40,
	},
	[64284] = {
		425,
		8,
		40,
	},
	[48247] = {
		110,
		1,
	},
	[56950] = {
		385,
		8,
		15,
	},
	[64283] = {
		425,
		8,
		40,
	},
	[56982] = {
		205,
		1,
	},
	[56998] = {
		385,
		8,
		15,
	},
	[57014] = {
		385,
		8,
		15,
	},
	[57030] = {
		120,
		1,
	},
	[64282] = {
		425,
		8,
		40,
	},
	[64281] = {
		425,
		8,
		40,
	},
	[61677] = {
		385,
		8,
		15,
	},
	[64248] = {
		425,
		8,
		40,
	},
	[64280] = {
		425,
		8,
		40,
	},
	[57126] = {
		385,
		8,
		15,
	},
	[64296] = {
		425,
		8,
		40,
	},
	[57158] = {
		95,
		1,
	},
	[64278] = {
		425,
		8,
		40,
	},
	[57190] = {
		385,
		8,
		15,
	},
	[64277] = {
		425,
		8,
		40,
	},
	[57222] = {
		350,
		1,
	},
	[57238] = {
		110,
		1,
	},
	[50611] = {
		405,
		1,
	},
	[57270] = {
		215,
		1,
	},
	[58308] = {
		75,
		8,
		14,
	},
	[58324] = {
		120,
		8,
		14,
	},
	[58340] = {
		120,
		8,
		14,
	},
	[64276] = {
		425,
		8,
		40,
	},
	[64275] = {
		425,
		8,
		40,
	},
	[64274] = {
		425,
		8,
		40,
	},
	[64273] = {
		425,
		8,
		40,
	},
	[64271] = {
		425,
		8,
		40,
	},
	[64270] = {
		425,
		8,
		40,
	},
	[64268] = {
		425,
		8,
		40,
	},
	[48248] = {
		35,
		1,
	},
	[56951] = {
		130,
		1,
	},
	[64267] = {
		280,
		1,
	},
	[56983] = {
		385,
		8,
		15,
	},
	[56999] = {
		385,
		8,
		15,
	},
	[64266] = {
		275,
		1,
	},
	[57031] = {
		135,
		1,
	},
	[57247] = {
		385,
		8,
		15,
	},
	[57704] = {
		100,
		1,
	},
	[58299] = {
		75,
		8,
		14,
	},
	[64249] = {
		425,
		8,
		40,
	},
	[58480] = {
		270,
		1,
	},
	[57127] = {
		385,
		8,
		15,
	},
	[64297] = {
		425,
		8,
		40,
	},
	[57159] = {
		385,
		8,
		15,
	},
	[59504] = {
		400,
		1,
	},
	[57191] = {
		385,
		8,
		15,
	},
	[57207] = {
		385,
		8,
		15,
	},
	[57223] = {
		385,
		8,
		15,
	},
	[57239] = {
		85,
		1,
	},
	[50612] = {
		75,
		1,
	},
	[57271] = {
		165,
		1,
	},
	[57708] = {
		175,
		1,
	},
	[58325] = {
		95,
		8,
		14,
	},
	[48121] = {
		100,
		1,
	},
	[61288] = {
		75,
		1,
	},
	[61120] = {
		400,
		1,
	},
	[61119] = {
		400,
		1,
	},
	[61118] = {
		400,
		1,
	},
	[61117] = {
		400,
		1,
	},
	[60337] = {
		350,
		1,
	},
	[59475] = {
		125,
		1,
	},
	[59491] = {
		225,
		1,
	},
	[56952] = {
		310,
		1,
	},
	[56968] = {
		100,
		1,
	},
	[56984] = {
		325,
		1,
	},
	[57000] = {
		200,
		1,
	},
	[60336] = {
		200,
		1,
	},
	[57032] = {
		155,
		1,
	},
	[59561] = {
		385,
		8,
		15,
	},
	[59560] = {
		385,
		8,
		15,
	},
	[59559] = {
		385,
		8,
		15,
	},
	[64250] = {
		425,
		8,
		40,
	},
	[57112] = {
		385,
		8,
		15,
	},
	[57128] = {
		385,
		8,
		15,
	},
	[64298] = {
		425,
		8,
		40,
	},
	[57160] = {
		385,
		8,
		15,
	},
	[59502] = {
		275,
		1,
	},
	[57192] = {
		350,
		1,
	},
	[57208] = {
		385,
		8,
		15,
	},
	[57224] = {
		330,
		1,
	},
	[57240] = {
		125,
		1,
	},
	[59501] = {
		400,
		1,
	},
	[57272] = {
		275,
		1,
	},
	[58310] = {
		75,
		8,
		14,
	},
	[58326] = {
		75,
		8,
		14,
	},
	[58342] = {
		75,
		8,
		14,
	},
	[59500] = {
		350,
		1,
	},
	[59499] = {
		200,
		1,
	},
	[59498] = {
		400,
		1,
	},
	[57257] = {
		350,
		1,
	},
	[59495] = {
		325,
		1,
	},
	[59494] = {
		275,
		1,
	},
	[58486] = {
		170,
		1,
	},
	[59490] = {
		225,
		1,
	},
	[56953] = {
		170,
		1,
	},
	[59489] = {
		225,
		1,
	},
	[56985] = {
		280,
		1,
	},
	[57001] = {
		225,
		1,
	},
	[59486] = {
		175,
		1,
	},
	[57033] = {
		335,
		1,
	},
	[57259] = {
		85,
		1,
	},
	[58336] = {
		95,
		8,
		14,
	},
	[59340] = {
		340,
		1,
	},
	[64251] = {
		425,
		8,
		40,
	},
	[57113] = {
		340,
		1,
	},
	[57129] = {
		185,
		1,
	},
	[64299] = {
		425,
		8,
		40,
	},
	[57161] = {
		170,
		1,
	},
	[59315] = {
		150,
		8,
		14,
	},
	[57193] = {
		385,
		8,
		15,
	},
	[57209] = {
		320,
		8,
		14,
	},
	[57225] = {
		375,
		1,
	},
	[50598] = {
		75,
		1,
	},
	[50614] = {
		155,
		1,
	},
	[57273] = {
		385,
		8,
		15,
	},
	[58311] = {
		95,
		8,
		14,
	},
	[58327] = {
		195,
		8,
		14,
	},
	[58343] = {
		75,
		8,
		14,
	},
	[52738] = {
		1,
		1,
	},
	[58565] = {
		110,
		1,
	},
	[58491] = {
		415,
		1,
	},
	[58490] = {
		365,
		1,
	},
	[58489] = {
		305,
		1,
	},
	[58488] = {
		265,
		1,
	},
	[58487] = {
		220,
		1,
	},
	[59493] = {
		275,
		1,
	},
	[56954] = {
		385,
		8,
		15,
	},
	[58485] = {
		80,
		1,
	},
	[56986] = {
		385,
		8,
		15,
	},
	[57002] = {
		260,
		1,
	},
	[58484] = {
		15,
		1,
	},
	[57034] = {
		385,
		8,
		15,
	},
	[58483] = {
		420,
		1,
	},
	[58482] = {
		370,
		1,
	},
	[58481] = {
		310,
		1,
	},
	[64252] = {
		425,
		8,
		40,
	},
	[57114] = {
		80,
		1,
	},
	[57130] = {
		385,
		8,
		15,
	},
	[64300] = {
		425,
		8,
		40,
	},
	[57162] = {
		85,
		1,
	},
	[58476] = {
		175,
		1,
	},
	[57194] = {
		80,
		1,
	},
	[57210] = {
		265,
		1,
	},
	[57226] = {
		305,
		1,
	},
	[50599] = {
		165,
		1,
	},
	[57258] = {
		385,
		8,
		15,
	},
	[57274] = {
		240,
		1,
	},
	[58312] = {
		75,
		8,
		14,
	},
	[58328] = {
		120,
		8,
		14,
	},
	[58344] = {
		75,
		8,
		14,
	},
	[52739] = {
		35,
		1,
	},
	[57709] = {
		200,
		1,
	},
	[57242] = {
		215,
		1,
	},
	[57250] = {
		385,
		8,
		15,
	},
	[58288] = {
		95,
		8,
		14,
	},
	[58341] = {
		345,
		8,
		14,
	},
	[59478] = {
		125,
		1,
	},
	[58472] = {
		15,
		1,
	},
	[56955] = {
		80,
		1,
	},
	[56971] = {
		115,
		1,
	},
	[56987] = {
		400,
		1,
	},
	[57003] = {
		350,
		1,
	},
	[57019] = {
		385,
		8,
		15,
	},
	[57035] = {
		385,
		8,
		15,
	},
	[58289] = {
		75,
		8,
		14,
	},
	[57703] = {
		85,
		1,
	},
	[58296] = {
		75,
		8,
		14,
	},
	[64253] = {
		425,
		8,
		40,
	},
	[57115] = {
		385,
		8,
		15,
	},
	[57131] = {
		210,
		1,
	},
	[58298] = {
		75,
		8,
		14,
	},
	[57163] = {
		110,
		1,
	},
	[58297] = {
		195,
		8,
		14,
	},
	[57195] = {
		385,
		8,
		15,
	},
	[57211] = {
		385,
		8,
		15,
	},
	[57227] = {
		345,
		1,
	},
	[50600] = {
		215,
		1,
	},
	[50616] = {
		205,
		1,
	},
	[57275] = {
		325,
		1,
	},
	[58313] = {
		75,
		8,
		14,
	},
	[58329] = {
		150,
		8,
		14,
	},
	[58345] = {
		95,
		8,
		14,
	},
	[58287] = {
		150,
		8,
		14,
	},
	[58286] = {
		75,
		8,
		14,
	},
	[57719] = {
		385,
		8,
		15,
	},
	[57713] = {
		290,
		1,
	},
	[57712] = {
		275,
		1,
	},
	[57711] = {
		250,
		1,
	},
	[57710] = {
		225,
		1,
	},
	[58473] = {
		85,
		1,
	},
	[56956] = {
		200,
		1,
	},
	[56972] = {
		335,
		1,
	},
	[56988] = {
		385,
		8,
		15,
	},
	[57004] = {
		80,
		1,
	},
	[57020] = {
		180,
		1,
	},
	[57036] = {
		375,
		1,
	},
	[62162] = {
		375,
		1,
	},
	[57707] = {
		150,
		1,
	},
	[57706] = {
		125,
		1,
	},
	[64254] = {
		425,
		8,
		40,
	},
	[57116] = {
		385,
		8,
		15,
	},
	[57132] = {
		235,
		1,
	},
	[64302] = {
		425,
		8,
		40,
	},
	[57164] = {
		385,
		8,
		15,
	},
	[50617] = {
		250,
		1,
	},
	[57196] = {
		95,
		1,
	},
	[57212] = {
		385,
		8,
		15,
	},
	[57228] = {
		300,
		8,
		14,
	},
	[50601] = {
		260,
		1,
	},
	[57260] = {
		385,
		8,
		15,
	},
	[57276] = {
		385,
		8,
		15,
	},
	[58314] = {
		75,
		8,
		14,
	},
	[58330] = {
		150,
		8,
		14,
	},
	[58346] = {
		75,
		8,
		14,
	},
	[50602] = {
		310,
		1,
	},
	[50610] = {
		355,
		1,
	},
	[50618] = {
		290,
		1,
	},
	[57263] = {
		385,
		8,
		15,
	},
	[57262] = {
		125,
		1,
	},
	[57243] = {
		385,
		8,
		15,
	},
	[59480] = {
		125,
		1,
	},
	[59496] = {
		325,
		1,
	},
	[56957] = {
		260,
		1,
	},
	[56973] = {
		130,
		1,
	},
	[56989] = {
		385,
		8,
		15,
	},
	[57005] = {
		130,
		1,
	},
	[57021] = {
		385,
		8,
		15,
	},
	[57251] = {
		275,
		1,
	},
	[50603] = {
		360,
		1,
	},
	[65245] = {
		425,
		8,
		40,
	},
	[57248] = {
		375,
		1,
	},
	[64255] = {
		425,
		8,
		40,
	},
	[57117] = {
		385,
		8,
		15,
	},
	[57133] = {
		285,
		1,
	},
	[64303] = {
		425,
		8,
		40,
	},
	[57165] = {
		190,
		1,
	},
	[57181] = {
		385,
		8,
		15,
	},
	[57197] = {
		160,
		1,
	},
	[57213] = {
		285,
		1,
	},
	[57229] = {
		300,
		8,
		14,
	},
	[57245] = {
		140,
		1,
	},
	[57261] = {
		385,
		8,
		15,
	},
	[57277] = {
		190,
		1,
	},
	[57241] = {
		185,
		1,
	},
	--jewlcrafting

	[66557] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53834] = {
		350,
		1,
	},
	[53866] = {
		350,
		1,
	},
	[53930] = {
		350,
		1,
	},
	[53962] = {
		390,
		7,
	},
	[53994] = {
		390,
		2,
		["mobDrop"] = {
			30260,
			28379,
			29402,
			28851,
			30448,
		},
	},
	[62242] = {
		425,
		1,
	},
	[37818] = {
		65,
		1,
	},
	[66430] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[25622] = {
		190,
		7,
	},
	[55401] = {
		420,
		2,
		["mobDrop"] = {
			26861,
		},
	},
	[28915] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Friendly"],
			21655,
		},
	},
	[26885] = {
		240,
		1,
	},
	[28947] = {
		315,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	[53835] = {
		350,
		1,
	},
	[53867] = {
		350,
		1,
	},
	[31057] = {
		365,
		2,
		["mobDrop"] = {
			18866,
		},
	},
	[53931] = {
		350,
		1,
	},
	[31089] = {
		350,
		3,
		["mobDrop"] = {
			24664,
		},
	},
	[31105] = {
		350,
		7,
	},
	[39705] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39737] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[56201] = {
		400,
		1,
	},
	[66432] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[39961] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Exalted"],
			20242,
			23007,
		},
	},
	[55402] = {
		420,
		1,
	},
	[25255] = {
		1,
		1,
	},
	[25287] = {
		70,
		1,
	},
	[66433] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66497] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66561] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53868] = {
		360,
		1,
	},
	[53932] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53964] = {
		390,
		7,
	},
	[53996] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["Frenzyheart Tribe"],
			BabbleFaction["Revered"],
			31911,
		},
	},
	[39706] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39738] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Revered"],
				23437,
			},
		},
	},
	[56202] = {
		400,
		1,
	},
	[66434] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66498] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32801] = {
		50,
		1,
	},
	[55403] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[28916] = {
		300,
		1,
	},
	[66499] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[28948] = {
		325,
		1,
	},
	[53869] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Kalu'ak"],
			BabbleFaction["Honored"],
			31916,
			32763,
		},
	},
	[31058] = {
		345,
		7,
	},
	[53933] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53965] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["Knights of the Ebon Blade"],
			BabbleFaction["Exalted"],
			32538,
		},
	},
	[53997] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39739] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Revered"],
				23437,
			},
		},
	},
	[56203] = {
		400,
		1,
	},
	[66436] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66500] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[39963] = {
		365,
		7,
	},
	[32866] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			17518,
		},
	},
	[55404] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[25320] = {
		150,
		2,
		["limitedVendor"] = {
			17512,
			1,
			16624,
			1,
			3367,
			1,
			1286,
			1,
		},
	},
	[66437] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66501] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[39452] = {
		350,
		7,
	},
	[53870] = {
		350,
		1,
	},
	[53934] = {
		350,
		1,
	},
	[53966] = {
		390,
		7,
	},
	[53998] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56076] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39740] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[66438] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66502] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66566] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32867] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			17518,
		},
	},
	[55405] = {
		420,
		7,
	},
	[28917] = {
		305,
		1,
	},
	[28933] = {
		315,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Friendly"],
			20242,
			23007,
		},
	},
	[26903] = {
		275,
		1,
	},
	[58954] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53871] = {
		350,
		1,
	},
	[53967] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31107] = {
		350,
		7,
	},
	[56077] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39741] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[32178] = {
		20,
		1,
	},
	[56205] = {
		350,
		1,
	},
	[37855] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Honored"],
			21432,
		},
	},
	[66504] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66568] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32868] = {
		365,
		7,
	},
	[58507] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[38175] = {
		80,
		1,
	},
	[25305] = {
		90,
		1,
	},
	[25321] = {
		120,
		1,
	},
	[66441] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66505] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66569] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53872] = {
		350,
		1,
	},
	[48789] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			25950,
			27666,
		},
	},
	[46775] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53968] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[54000] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[39710] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39742] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[56206] = {
		360,
		1,
	},
	[66442] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66506] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66570] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32869] = {
		365,
		7,
	},
	[55407] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[26872] = {
		200,
		1,
	},
	[39455] = {
		325,
		8,
		35,
	},
	[42588] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Honored"],
			21432,
		},
	},
	[53873] = {
		350,
		1,
	},
	[31060] = {
		355,
		7,
	},
	[46776] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53969] = {
		390,
		1,
	},
	[54001] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39711] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[32179] = {
		20,
		1,
	},
	[66444] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32259] = {
		1,
		1,
	},
	[66572] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32870] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Friendly"],
			21432,
		},
	},
	[66445] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66573] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[42589] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			20242,
			23007,
		},
	},
	[53874] = {
		350,
		1,
	},
	[46777] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53970] = {
		390,
		2,
		["mobDrop"] = {
			29120,
		},
	},
	[54002] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[25498] = {
		110,
		1,
	},
	[56208] = {
		370,
		1,
	},
	[66446] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[25610] = {
		120,
		2,
		["vendor"] = {
			1448,
			4877,
		},
	},
	[32807] = {
		110,
		1,
	},
	[32871] = {
		365,
		7,
	},
	[56496] = {
		430,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[28903] = {
		300,
		1,
	},
	[26873] = {
		200,
		7,
	},
	[66575] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[42558] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			20242,
			23007,
		},
	},
	[53843] = {
		360,
		1,
	},
	[53875] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[31061] = {
		365,
		7,
	},
	[46778] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53971] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[54003] = {
		390,
		7,
	},
	[56081] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[66448] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32808] = {
		175,
		1,
	},
	[32872] = {
		365,
		7,
	},
	[56497] = {
		430,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[25323] = {
		125,
		2,
		["limitedVendor"] = {
			3499,
			1,
			3954,
			1,
		},
	},
	[25339] = {
		110,
		2,
		["limitedVendor"] = {
			16624,
			1,
			4561,
			1,
			4229,
			1,
			17512,
			1,
		},
	},
	[39458] = {
		325,
		8,
		35,
	},
	[42591] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Revered"],
			21643,
		},
	},
	[53876] = {
		350,
		1,
	},
	[46779] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53972] = {
		390,
		2,
		["mobDrop"] = {
			30208,
			29370,
			30222,
			29376,
		},
	},
	[54004] = {
		390,
		7,
	},
	[39714] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[66450] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32809] = {
		225,
		1,
	},
	[32873] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	[56498] = {
		430,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56530] = {
		360,
		1,
	},
	[59759] = {
		400,
		1,
	},
	[26874] = {
		210,
		1,
	},
	[28936] = {
		325,
		1,
	},
	[26906] = {
		275,
		2,
		["limitedVendor"] = {
			15179,
			1,
		},
	},
	[40514] = {
		340,
		1,
	},
	[42592] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Revered"],
			21432,
		},
	},
	[53877] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Knights of the Ebon Blade"],
			BabbleFaction["Friendly"],
			32538,
		},
	},
	[31062] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Revered"],
			21643,
		},
	},
	[53941] = {
		350,
		1,
	},
	[53973] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31110] = {
		350,
		7,
	},
	[56083] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[66452] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66580] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[32874] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Honored"],
			21643,
		},
	},
	[56499] = {
		440,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56531] = {
		390,
		1,
	},
	[66453] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66581] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[42593] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Honored"],
			21643,
		},
	},
	[53878] = {
		350,
		1,
	},
	[53974] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Crusade"],
			BabbleFaction["Revered"],
			30431,
		},
	},
	[56052] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39716] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[25612] = {
		125,
		2,
		["limitedVendor"] = {
			2381,
			1,
			2393,
			1,
		},
	},
	[66582] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[56500] = {
		440,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[28905] = {
		305,
		1,
	},
	[26875] = {
		215,
		2,
		["vendor"] = {
			989,
			4897,
		},
	},
	[28953] = {
		305,
		1,
	},
	[53879] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[31063] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Revered"],
			21655,
		},
	},
	[31079] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Revered"],
			21655,
		},
	},
	[31095] = {
		350,
		7,
	},
	[31111] = {
		350,
		7,
	},
	[39717] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[66584] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[56501] = {
		440,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39462] = {
		350,
		7,
	},
	[38503] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["The Violet Eye"],
			BabbleFaction["Honored"],
			18255,
		},
	},
	[53880] = {
		350,
		1,
	},
	[53976] = {
		390,
		7,
	},
	[54008] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["The Oracles"],
			BabbleFaction["Revered"],
			31910,
		},
	},
	[39718] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[25613] = {
		135,
		1,
	},
	[66586] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[34955] = {
		180,
		1,
	},
	[28906] = {
		315,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Friendly"],
			19331,
		},
	},
	[26876] = {
		220,
		1,
	},
	[28938] = {
		300,
		1,
	},
	[39463] = {
		350,
		7,
	},
	[38504] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Exalted"],
			17904,
		},
	},
	[31048] = {
		310,
		1,
	},
	[31064] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Revered"],
			19331,
		},
	},
	[31080] = {
		370,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Revered"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Revered"],
				17585,
			},
		},
	},
	[31096] = {
		350,
		7,
	},
	[31112] = {
		350,
		7,
	},
	[39719] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[55384] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[25278] = {
		50,
		1,
	},
	[41414] = {
		325,
		1,
	},
	[53882] = {
		350,
		1,
	},
	[36523] = {
		75,
		1,
	},
	[53946] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["Kirin Tor"],
			BabbleFaction["Exalted"],
			32287,
		},
	},
	[53978] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[54010] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[39720] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[68253] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[41415] = {
		330,
		1,
	},
	[43493] = {
		350,
		2,
		["vendor"] = {
			18821,
			18822,
		},
	},
	[26909] = {
		285,
		7,
	},
	[26925] = {
		1,
		1,
	},
	[31049] = {
		310,
		1,
	},
	[31065] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Revered"],
			19321,
		},
	},
	[31081] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Revered"],
			21643,
		},
	},
	[31097] = {
		350,
		7,
	},
	[31113] = {
		350,
		7,
	},
	[39721] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Revered"],
				23437,
			},
		},
	},
	[55386] = {
		420,
		1,
	},
	[46403] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			25950,
			27666,
		},
	},
	[39466] = {
		325,
		8,
		35,
	},
	[53852] = {
		350,
		1,
	},
	[53884] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53916] = {
		350,
		1,
	},
	[53948] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53980] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[54012] = {
		390,
		2,
		["mobDrop"] = {
			29792,
			29793,
		},
	},
	[39722] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[66338] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[25615] = {
		150,
		1,
	},
	[55387] = {
		420,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[34959] = {
		200,
		1,
	},
	[46404] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			25950,
			27666,
		},
	},
	[26878] = {
		225,
		2,
		["limitedVendor"] = {
			2810,
			1,
			2821,
			1,
		},
	},
	[39467] = {
		325,
		8,
		35,
	},
	[26926] = {
		5,
		1,
	},
	[53853] = {
		350,
		1,
	},
	[53885] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Frenzyheart Tribe"],
			BabbleFaction["Friendly"],
			31911,
		},
	},
	[53917] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Oracles"],
			BabbleFaction["Friendly"],
			31910,
		},
	},
	[53949] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31098] = {
		350,
		3,
		["mobDrop"] = {
			24664,
		},
	},
	[54013] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[39723] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[55388] = {
		420,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[34960] = {
		280,
		1,
	},
	[46405] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			25950,
			27666,
		},
	},
	[25280] = {
		50,
		1,
	},
	[41418] = {
		365,
		1,
	},
	[46597] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53854] = {
		350,
		1,
	},
	[53886] = {
		350,
		1,
	},
	[53918] = {
		350,
		1,
	},
	[53950] = {
		390,
		2,
		["mobDrop"] = {
			29570,
		},
	},
	[53982] = {
		390,
		2,
		["mobDrop"] = {
			27978,
		},
	},
	[54014] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[39724] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[55389] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[34961] = {
		290,
		1,
	},
	[28925] = {
		300,
		1,
	},
	[26911] = {
		290,
		1,
	},
	[26927] = {
		50,
		1,
	},
	[53855] = {
		350,
		1,
	},
	[53887] = {
		350,
		1,
	},
	[53919] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53951] = {
		390,
		2,
		["mobDrop"] = {
			29311,
		},
	},
	[53983] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39725] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[55390] = {
		420,
		7,
	},
	[64725] = {
		420,
		1,
	},
	[41420] = {
		325,
		1,
	},
	[39470] = {
		350,
		7,
	},
	[53856] = {
		350,
		1,
	},
	[53888] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53920] = {
		350,
		1,
	},
	[53952] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53984] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[25617] = {
		150,
		2,
		["limitedVendor"] = {
			2381,
			1,
			9636,
			1,
		},
	},
	[58492] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[64726] = {
		420,
		1,
	},
	[28910] = {
		300,
		1,
	},
	[26880] = {
		225,
		1,
	},
	[26896] = {
		250,
		7,
	},
	[39471] = {
		350,
		7,
	},
	[26928] = {
		30,
		1,
	},
	[53857] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53889] = {
		350,
		1,
	},
	[53921] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Kalu'ak"],
			BabbleFaction["Friendly"],
			31916,
			32763,
		},
	},
	[53953] = {
		390,
		1,
	},
	[53985] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[54017] = {
		350,
		1,
	},
	[39727] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[55392] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[64727] = {
		420,
		1,
	},
	[34069] = {
		325,
		1,
	},
	[46601] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[53890] = {
		350,
		1,
	},
	[53922] = {
		350,
		1,
	},
	[53954] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53986] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[25490] = {
		50,
		1,
	},
	[58142] = {
		350,
		1,
	},
	[25618] = {
		160,
		7,
	},
	[46122] = {
		365,
		8,
		24,
	},
	[55393] = {
		420,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[64728] = {
		420,
		1,
	},
	[26881] = {
		225,
		2,
		["limitedVendor"] = {
			1148,
			1,
			4897,
			1,
		},
	},
	[26897] = {
		250,
		2,
		["limitedVendor"] = {
			17512,
			1,
			5163,
			1,
			16624,
			1,
			8363,
			1,
		},
	},
	[66587] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53859] = {
		350,
		1,
	},
	[53891] = {
		360,
		1,
	},
	[53923] = {
		350,
		1,
	},
	[53955] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[53987] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[54019] = {
		390,
		2,
		["mobDrop"] = {
			23954,
		},
	},
	[58143] = {
		370,
		1,
	},
	[31149] = {
		350,
		7,
	},
	[66585] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[56193] = {
		350,
		1,
	},
	[66583] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66579] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66578] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66577] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[46123] = {
		365,
		8,
		24,
	},
	[66576] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[55394] = {
		420,
		1,
	},
	[66574] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66571] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66567] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66565] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66564] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66563] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66562] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[25283] = {
		30,
		1,
	},
	[66560] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66559] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66558] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53975] = {
		390,
		7,
	},
	[66555] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66554] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[56079] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53860] = {
		350,
		1,
	},
	[53892] = {
		350,
		1,
	},
	[53924] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[53956] = {
		390,
		1,
	},
	[53988] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["Knights of the Ebon Blade"],
			BabbleFaction["Revered"],
			32538,
		},
	},
	[66503] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[58144] = {
		370,
		1,
	},
	[31091] = {
		350,
		7,
	},
	[53844] = {
		350,
		1,
	},
	[56194] = {
		350,
		1,
	},
	[53940] = {
		350,
		1,
	},
	[39712] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39728] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[25619] = {
		170,
		2,
		["limitedVendor"] = {
			17512,
			1,
			16624,
			1,
			4775,
			1,
			5163,
			1,
		},
	},
	[46124] = {
		365,
		8,
		24,
	},
	[66451] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[55395] = {
		420,
		7,
	},
	[66449] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[38068] = {
		325,
		1,
	},
	[53943] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[31108] = {
		350,
		7,
	},
	[28918] = {
		315,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Friendly"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Friendly"],
				17585,
			},
		},
	},
	[31050] = {
		320,
		1,
	},
	[28950] = {
		300,
		1,
	},
	[31066] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			20242,
			23007,
		},
	},
	[66443] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53845] = {
		350,
		1,
	},
	[28912] = {
		305,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Friendly"],
			20242,
			23007,
		},
	},
	[26882] = {
		235,
		7,
	},
	[28944] = {
		305,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Friendly"],
			19321,
		},
	},
	[26914] = {
		300,
		2,
		["mobDrop"] = {
			8983,
		},
	},
	[31082] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Revered"],
			21432,
		},
	},
	[53861] = {
		350,
		1,
	},
	[53893] = {
		350,
		1,
	},
	[53925] = {
		350,
		1,
	},
	[53957] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["The Sons of Hodir"],
			BabbleFaction["Exalted"],
			32540,
		},
	},
	[31102] = {
		350,
		7,
	},
	[31090] = {
		350,
		7,
	},
	[58145] = {
		390,
		1,
	},
	[46803] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
		},
	},
	[31106] = {
		350,
		7,
	},
	[56195] = {
		380,
		1,
	},
	[39734] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[54005] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[39713] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39729] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[46125] = {
		365,
		8,
		24,
	},
	[58141] = {
		350,
		1,
	},
	[55396] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[66440] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[66435] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[31077] = {
		370,
		2,
		["mobDrop"] = {
			18422,
		},
	},
	[54006] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[26912] = {
		300,
		2,
		["mobDrop"] = {
			9736,
		},
	},
	[66428] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[28927] = {
		305,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Honored"],
			19321,
		},
	},
	[25284] = {
		60,
		1,
	},
	[66431] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[26907] = {
		280,
		1,
	},
	[39732] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Revered"],
				23437,
			},
		},
	},
	[62941] = {
		300,
		1,
	},
	[39730] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[28924] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Honored"],
			19331,
		},
	},
	[53830] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53862] = {
		350,
		1,
	},
	[53894] = {
		350,
		1,
	},
	[53926] = {
		350,
		1,
	},
	[53958] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53990] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[53991] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[58146] = {
		390,
		1,
	},
	[31051] = {
		335,
		1,
	},
	[31067] = {
		355,
		7,
	},
	[56196] = {
		380,
		1,
	},
	[53959] = {
		390,
		2,
		["mobDrop"] = {
			31134,
		},
	},
	[47053] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[31083] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Revered"],
			17904,
		},
	},
	[25620] = {
		170,
		1,
	},
	[46126] = {
		365,
		8,
		24,
	},
	[31099] = {
		350,
		7,
	},
	[55397] = {
		420,
		2,
		["mobDrop"] = {
			27656,
		},
	},
	[54007] = {
		390,
		1,
	},
	[39715] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Friendly"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Friendly"],
				23437,
			},
		},
	},
	[39731] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[58147] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53979] = {
		390,
		2,
		["mobDrop"] = {
			26723,
		},
	},
	[42590] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Revered"],
			21655,
		},
	},
	[56055] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56054] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56049] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[36524] = {
		105,
		1,
	},
	[44794] = {
		365,
		2,
		["mobDrop"] = {
			19768,
		},
	},
	[26883] = {
		235,
		1,
	},
	[34590] = {
		305,
		1,
	},
	[26915] = {
		305,
		2,
		["vendor"] = {
			11189,
		},
	},
	[53831] = {
		350,
		1,
	},
	[53863] = {
		350,
		1,
	},
	[31055] = {
		355,
		2,
		["mobDrop"] = {
			18472,
		},
	},
	[53927] = {
		350,
		1,
	},
	[31087] = {
		350,
		7,
	},
	[31103] = {
		350,
		7,
	},
	[54023] = {
		390,
		7,
	},
	[39733] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Exalted"],
			27666,
			25950,
		},
	},
	[56056] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56088] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56197] = {
		420,
		1,
	},
	[56089] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[47054] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["The Scale of the Sands"],
			BabbleFaction["Honored"],
			23437,
			{
				BabbleFaction["Shattered Sun Offensive"],
				BabbleFaction["Revered"],
				25032,
				25950,
				27666,
			},
		},
	},
	[56087] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56086] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[46127] = {
		365,
		8,
		24,
	},
	[26908] = {
		280,
		1,
	},
	[55398] = {
		420,
		2,
		["mobDrop"] = {
			28923,
		},
	},
	[26910] = {
		285,
		2,
		["vendor"] = {
			12941,
		},
	},
	[56085] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[56084] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31052] = {
		335,
		1,
	},
	[31068] = {
		355,
		7,
	},
	[31076] = {
		365,
		7,
	},
	[31084] = {
		350,
		7,
	},
	[31092] = {
		350,
		3,
		["mobDrop"] = {
			24664,
		},
	},
	[31100] = {
		350,
		7,
	},
	[25317] = {
		80,
		1,
	},
	[53993] = {
		390,
		2,
		["repVendor"] = {
			BabbleFaction["The Wyrmrest Accord"],
			BabbleFaction["Exalted"],
			32533,
		},
	},
	[54009] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[66553] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[56074] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53832] = {
		350,
		1,
	},
	[53864] = {
		350,
		1,
	},
	[56053] = {
		370,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53928] = {
		350,
		1,
	},
	[53960] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[53992] = {
		390,
		7,
	},
	[25493] = {
		1,
		1,
	},
	[58148] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[53963] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31101] = {
		350,
		2,
		["vendor"] = {
			21474,
			21485,
		},
	},
	[66439] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[31053] = {
		350,
		2,
		["mobDrop"] = {
			19826,
		},
	},
	[47055] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[36525] = {
		230,
		1,
	},
	[25621] = {
		180,
		1,
	},
	[31085] = {
		350,
		7,
	},
	[53947] = {
		390,
		1,
	},
	[55399] = {
		420,
		1,
	},
	[31109] = {
		350,
		7,
	},
	[53995] = {
		390,
		2,
		["mobDrop"] = {
			26632,
		},
	},
	[54011] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[39735] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[63743] = {
		200,
		1,
	},
	[31094] = {
		350,
		7,
	},
	[36526] = {
		265,
		1,
	},
	[39736] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Honored"],
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[53989] = {
		390,
		1,
	},
	[28914] = {
		315,
		1,
	},
	[41429] = {
		350,
		1,
	},
	[26902] = {
		260,
		1,
	},
	[26900] = {
		260,
		7,
	},
	[26916] = {
		310,
		1,
	},
	[53881] = {
		350,
		1,
	},
	[53865] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[31056] = {
		360,
		2,
		["mobDrop"] = {
			19984,
		},
	},
	[31072] = {
		365,
		7,
	},
	[31088] = {
		350,
		3,
		["mobDrop"] = {
			24664,
		},
	},
	[31104] = {
		350,
		7,
	},
	[31054] = {
		355,
		2,
		["mobDrop"] = {
			17722,
		},
	},
	[58149] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[31070] = {
		360,
		7,
	},
	[31078] = {
		370,
		2,
		["mobDrop"] = {
			18096,
		},
	},
	[56199] = {
		400,
		1,
	},
	[53981] = {
		390,
		2,
		["vendor"] = {
			32296,
			32294,
			30489,
		},
	},
	[47056] = {
		375,
2,
		["repVendor"] = {
			BabbleFaction["Shattered Sun Offensive"],
			BabbleFaction["Revered"],
			25032,
			25950,
			27666,
			{
				BabbleFaction["The Scale of the Sands"],
				BabbleFaction["Honored"],
				23437,
			},
		},
	},
	[53977] = {
		390,
		7,
	},
	[66556] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[53883] = {
		350,
		1,
	},
	[53961] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[55400] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[58150] = {
		420,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[47280] = {
		350,
		1,
	},
	[28907] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	[53945] = {
		390,
		2,
		["vendor"] = {
			28721,
			33602,
		},
	},
	[26887] = {
		245,
		7,
	},
	[66447] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[39451] = {
		325,
		8,
		35,
	},
	[31071] = {
		360,
		7,
	},
	[53929] = {
		350,
		2,
		["vendor"] = {
			34079,
			34039,
		},
	},
	[25318] = {
		100,
		1,
	},
	[66429] = {
		450,
		2,
		["vendor"] = {
			33637,
			33680,
			28701,
			19065,
		},
	},
	[28955] = {
		315,
		7,
	},
	[28957] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	--leatherworking

	[63201] = {
		450,
		8,
		39,
	},
	[50957] = {
		370,
		1,
	},
	[7156] = {
		190,
		1,
	},
	[9198] = {
		180,
		1,
	},
	[9206] = {
		195,
		1,
	},
	[23704] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Revered"],
			11557,
		},
	},
	[60996] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[35549] = {
		335,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Honored"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Honored"],
				17585,
			},
		},
	},
	[22921] = {
		300,
		8,
		23,
	},
	[50958] = {
		380,
		1,
	},
	[10509] = {
		205,
		2,
		["vendor"] = {
			7852,
			7854,
		},
	},
	[10525] = {
		220,
		2,
		["mobDrop"] = {
			5618,
		},
	},
	[10533] = {
		220,
		2,
		["mobDrop"] = {
			5617,
		},
	},
	[19053] = {
		265,
		2,
		["vendor"] = {
			12957,
		},
	},
	[60613] = {
		395,
		1,
	},
	[19085] = {
		290,
		2,
		["vendor"] = {
			9499,
		},
	},
	[19101] = {
		300,
		2,
		["mobDrop"] = {
			9260,
		},
	},
	[67136] = {
		450,
		8,
		42,
	},
	[32464] = {
		320,
		1,
	},
	[10621] = {
		225,
		1,
	},
	[2149] = {
		1,
		1,
	},
	[36349] = {
		375,
		8,
		37,
	},
	[2153] = {
		15,
		1,
	},
	[60997] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[2159] = {
		85,
		1,
	},
	[2161] = {
		55,
		1,
	},
	[2163] = {
		60,
		7,
	},
	[2165] = {
		100,
		1,
	},
	[35582] = {
		375,
		1,
	},
	[50959] = {
		370,
		1,
	},
	[67137] = {
		450,
		8,
		42,
	},
	[46132] = {
		365,
		8,
		24,
	},
	[23705] = {
		290,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Honored"],
			10856,
			11536,
			10857,
		},
	},
	[67138] = {
		450,
		8,
		42,
	},
	[60998] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[22922] = {
		300,
		8,
		23,
	},
	[50960] = {
		380,
		1,
	},
	[67139] = {
		450,
		8,
		42,
	},
	[46133] = {
		365,
		8,
		24,
	},
	[24121] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Revered"],
			14921,
		},
	},
	[19054] = {
		300,
		2,
		["mobDrop"] = {
			10363,
		},
	},
	[19070] = {
		280,
		7,
	},
	[60647] = {
		415,
		2,
		["repVendor"] = {
			BabbleFaction["Knights of the Ebon Blade"],
			BabbleFaction["Honored"],
			32538,
		},
	},
	[19102] = {
		300,
		1,
	},
	[26279] = {
		300,
		2,
		["mobDrop"] = {
			14454,
			14457,
		},
	},
	[60743] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[51568] = {
		400,
		1,
	},
	[32465] = {
		335,
		1,
	},
	[32481] = {
		330,
		1,
	},
	[32497] = {
		355,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Friendly"],
			17904,
		},
	},
	[36351] = {
		375,
		8,
		37,
	},
	[60999] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[35520] = {
		340,
		2,
		["mobDrop"] = {
			18320,
		},
	},
	[35584] = {
		375,
		1,
	},
	[50961] = {
		375,
		1,
	},
	[67141] = {
		450,
		8,
		42,
	},
	[9207] = {
		200,
		7,
	},
	[6661] = {
		190,
		1,
	},
	[46134] = {
		365,
		8,
		24,
	},
	[60584] = {
		400,
		1,
	},
	[23706] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			10856,
			11536,
			10857,
		},
	},
	[44344] = {
		315,
		1,
	},
	[51569] = {
		395,
		1,
	},
	[36352] = {
		375,
		8,
		37,
	},
	[61000] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[35521] = {
		340,
		2,
		["mobDrop"] = {
			20898,
		},
	},
	[35585] = {
		375,
		1,
	},
	[50962] = {
		350,
		1,
	},
	[67143] = {
		450,
		8,
		42,
	},
	[10518] = {
		210,
		1,
	},
	[39997] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[24122] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Honored"],
			14921,
		},
	},
	[10542] = {
		225,
		2,
		["mobDrop"] = {
			5616,
		},
	},
	[19055] = {
		270,
		1,
		7,
	},
	[19071] = {
		280,
		1,
	},
	[19087] = {
		295,
		2,
		["mobDrop"] = {
			7441,
		},
	},
	[19103] = {
		300,
		1,
	},
	[51570] = {
		395,
		1,
	},
	[32466] = {
		300,
		1,
	},
	[32482] = {
		300,
		2,
		["vendor"] = {
			16689,
			16748,
		},
	},
	[10630] = {
		230,
		1,
	},
	[36353] = {
		375,
		8,
		37,
	},
	[35522] = {
		340,
		2,
		["mobDrop"] = {
			17797,
		},
	},
	[35554] = {
		365,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Exalted"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Exalted"],
				17585,
			},
		},
	},
	[50963] = {
		395,
		1,
	},
	[44953] = {
		285,
		2,
		8,
		1,
		["vendor"] = {
			13420,
			13433,
		},
	},
	[46136] = {
		365,
		8,
		24,
	},
	[23707] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Honored"],
			12944,
		},
	},
	[60746] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[51571] = {
		385,
		1,
	},
	[61002] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[35523] = {
		340,
		2,
		["mobDrop"] = {
			17941,
		},
	},
	[35555] = {
		335,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Honored"],
			17904,
		},
	},
	[35587] = {
		375,
		1,
	},
	[50964] = {
		405,
		1,
	},
	[46137] = {
		365,
		8,
		24,
	},
	[24123] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Friendly"],
			14921,
		},
	},
	[19072] = {
		280,
		1,
	},
	[19088] = {
		295,
		2,
		["vendor"] = {
			12956,
		},
	},
	[19104] = {
		300,
		2,
		["mobDrop"] = {
			7438,
		},
	},
	[60715] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[9064] = {
		35,
		7,
	},
	[9072] = {
		120,
		2,
		["vendor"] = {
			2679,
		},
	},
	[32467] = {
		310,
		1,
	},
	[32499] = {
		360,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Honored"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Honored"],
				17585,
			},
		},
	},
	[36355] = {
		375,
		8,
		37,
	},
	[7133] = {
		105,
		7,
	},
	[35524] = {
		340,
		2,
		["mobDrop"] = {
			17879,
		},
	},
	[35588] = {
		375,
		1,
	},
	[50965] = {
		425,
		1,
	},
	[7153] = {
		185,
		7,
	},
	[9208] = {
		200,
		7,
	},
	[46138] = {
		365,
		8,
		24,
	},
	[60620] = {
		400,
		1,
	},
	[60652] = {
		420,
		1,
	},
	[23708] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Revered"],
			12944,
		},
	},
	[60716] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60748] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[69388] = {
		450,
		1,
	},
	[35525] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Exalted"],
			19331,
		},
	},
	[35557] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Exalted"],
			17904,
		},
	},
	[35589] = {
		375,
		1,
	},
	[50966] = {
		400,
		1,
	},
	[10487] = {
		200,
		1,
	},
	[10511] = {
		210,
		1,
	},
	[46139] = {
		365,
		8,
		24,
	},
	[24124] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Revered"],
			14921,
		},
	},
	[19073] = {
		280,
		7,
	},
	[19089] = {
		295,
		2,
		["mobDrop"] = {
			6146,
		},
	},
	[60749] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[32468] = {
		325,
		1,
	},
	[32500] = {
		360,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Honored"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Honored"],
				17585,
			},
		},
	},
	[36357] = {
		375,
		8,
		37,
	},
	[10647] = {
		250,
		1,
	},
	[28472] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15293,
		},
	},
	[35526] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Honored"],
			19331,
		},
	},
	[35558] = {
		365,
		7,
	},
	[35590] = {
		375,
		1,
	},
	[50967] = {
		425,
		1,
	},
	[45117] = {
		360,
		2,
		["mobDrop"] = {
			22144,
			22148,
			22143,
			23022,
		},
	},
	[60622] = {
		385,
		1,
	},
	[23709] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Revered"],
			12944,
		},
	},
	[60718] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60750] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[36358] = {
		375,
		8,
		37,
	},
	[3756] = {
		55,
		1,
	},
	[3760] = {
		150,
		1,
	},
	[35527] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Revered"],
			19331,
		},
	},
	[35559] = {
		365,
		3,
		["mobDrop"] = {
			24664,
		},
	},
	[35591] = {
		375,
		1,
	},
	[3768] = {
		130,
		1,
	},
	[3770] = {
		135,
		1,
	},
	[3772] = {
		155,
		2,
		["vendor"] = {
			2679,
			2698,
		},
	},
	[3774] = {
		160,
		1,
	},
	[3776] = {
		180,
		1,
	},
	[3778] = {
		185,
		2,
		["vendor"] = {
			2699,
		},
	},
	[3780] = {
		150,
		1,
	},
	[40003] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[24125] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Honored"],
			14921,
		},
	},
	[19058] = {
		250,
		1,
	},
	[19074] = {
		285,
		2,
		["mobDrop"] = {
			7440,
		},
	},
	[19090] = {
		295,
		2,
		["mobDrop"] = {
			6144,
		},
	},
	[60751] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[32469] = {
		335,
		1,
	},
	[32485] = {
		350,
		2,
		["mobDrop"] = {
			18667,
		},
	},
	[32501] = {
		340,
		2,
		["repVendor"] = {
			BabbleFaction["Kurenai"],
			BabbleFaction["Friendly"],
			20240,
		},
	},
	[36359] = {
		375,
		8,
		37,
	},
	[3816] = {
		35,
		1,
	},
	[3818] = {
		150,
		1,
	},
	[28473] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Honored"],
			15293,
		},
	},
	[9145] = {
		125,
		1,
	},
	[35528] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Revered"],
			19321,
		},
	},
	[35560] = {
		365,
		7,
	},
	[9193] = {
		150,
		1,
	},
	[9201] = {
		185,
		1,
	},
	[40004] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[60624] = {
		385,
		1,
	},
	[6702] = {
		90,
		2,
		2,
		["mobDrop"] = {
			1732,
			3385,
		},
		["vendor"] = {
			843,
			3556,
			4186,
		},
	},
	[60720] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60752] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[8322] = {
		90,
		2,
		["quest"] = {
			1582,
		},
	},
	[22815] = {
		275,
		2,
		["quest"] = {
			5518,
		},
	},
	[35529] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Exalted"],
			19321,
		},
	},
	[35561] = {
		365,
		7,
	},
	[22927] = {
		300,
		8,
		23,
	},
	[50970] = {
		415,
		2,
		["repVendor"] = {
			BabbleFaction["The Kalu'ak"],
			BabbleFaction["Revered"],
			31916,
			32763,
		},
	},
	[2881] = {
		1,
		1,
	},
	[10520] = {
		215,
		7,
	},
	[40005] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[10544] = {
		225,
		2,
		["quest"] = {
			2849,
			2856,
		},
	},
	[10552] = {
		230,
		1,
	},
	[41156] = {
		375,
		8,
		34,
	},
	[10568] = {
		245,
		2,
		["mobDrop"] = {
			5615,
		},
	},
	[19091] = {
		300,
		1,
	},
	[19107] = {
		300,
		2,
		["mobDrop"] = {
			8903,
		},
	},
	[60721] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[32454] = {
		300,
		1,
	},
	[32470] = {
		300,
		1,
	},
	[32502] = {
		340,
		2,
		["repVendor"] = {
			BabbleFaction["Kurenai"],
			BabbleFaction["Honored"],
			20240,
		},
	},
	[28474] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Friendly"],
			15293,
		},
	},
	[35530] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["Kurenai"],
			BabbleFaction["Honored"],
			20240,
		},
	},
	[35562] = {
		365,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[50939] = {
		370,
		1,
	},
	[50971] = {
		415,
		2,
		["repVendor"] = {
			BabbleFaction["The Sons of Hodir"],
			BabbleFaction["Honored"],
			32540,
		},
	},
	[62448] = {
		425,
		1,
	},
	[7953] = {
		90,
		2,
		["limitedVendor"] = {
			5783,
			2,
		},
	},
	[24654] = {
		300,
		1,
	},
	[41157] = {
		375,
		8,
		27,
	},
	[36074] = {
		260,
		1,
	},
	[60658] = {
		420,
		1,
	},
	[14932] = {
		225,
		1,
	},
	[60754] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[24846] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Friendly"],
			15293,
		},
	},
	[35531] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Honored"],
			19321,
		},
	},
	[35563] = {
		365,
		7,
	},
	[22928] = {
		300,
		8,
		23,
	},
	[28219] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Exalted"],
			16365,
		},
	},
	[41158] = {
		375,
		8,
		27,
	},
	[36075] = {
		260,
		1,
	},
	[19092] = {
		300,
		1,
	},
	[9058] = {
		1,
		1,
	},
	[60755] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[9074] = {
		120,
		1,
	},
	[32471] = {
		315,
		1,
	},
	[32487] = {
		350,
		2,
		["mobDrop"] = {
			17820,
			28132,
		},
	},
	[32503] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Kurenai"],
			BabbleFaction["Revered"],
			20240,
		},
	},
	[7126] = {
		1,
		1,
	},
	[9146] = {
		135,
		2,
		["vendor"] = {
			6731,
		},
	},
	[35532] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Exalted"],
			19331,
		},
	},
	[35564] = {
		365,
		7,
	},
	[50941] = {
		370,
		1,
	},
	[9194] = {
		150,
		1,
	},
	[9202] = {
		190,
		2,
		["vendor"] = {
			7854,
			7852,
			4589,
			4225,
		},
	},
	[4097] = {
		165,
		2,
		["vendor"] = {
			2816,
		},
	},
	[70554] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[24655] = {
		260,
		1,
	},
	[24703] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Exalted"],
			15293,
		},
	},
	[60660] = {
		425,
		1,
	},
	[60756] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[70555] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[24847] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Honored"],
			15293,
		},
	},
	[35533] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Revered"],
			19331,
		},
	},
	[50942] = {
		375,
		1,
	},
	[5244] = {
		40,
		2,
		["quest"] = {
			769,
		},
	},
	[70556] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[10529] = {
		220,
		2,
		["quest"] = {
			2848,
			2855,
		},
	},
	[28220] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[41160] = {
		375,
		8,
		34,
	},
	[36077] = {
		330,
		1,
	},
	[19093] = {
		300,
		2,
		8,
		10,
		["quest"] = {
			7493,
			7497,
		},
	},
	[60725] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60757] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[32456] = {
		300,
		1,
	},
	[32472] = {
		320,
		1,
	},
	[32488] = {
		350,
		2,
		["mobDrop"] = {
			18322,
		},
	},
	[70557] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[52733] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[2158] = {
		90,
		7,
	},
	[2160] = {
		40,
		1,
	},
	[2162] = {
		60,
		1,
	},
	[35534] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Honored"],
			19331,
		},
	},
	[2166] = {
		120,
		1,
	},
	[50943] = {
		380,
		1,
	},
	[70558] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[41161] = {
		375,
		8,
		27,
	},
	[36078] = {
		330,
		1,
	},
	[60758] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[70559] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[24848] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15293,
		},
	},
	[35535] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Exalted"],
			19321,
		},
	},
	[35567] = {
		365,
		7,
	},
	[50944] = {
		370,
		1,
	},
	[70560] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[28221] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[41162] = {
		375,
		8,
		34,
	},
	[19078] = {
		285,
		2,
		["mobDrop"] = {
			7158,
		},
	},
	[19094] = {
		300,
		2,
		["mobDrop"] = {
			8898,
		},
	},
	[9059] = {
		1,
		1,
	},
	[57690] = {
		400,
		1,
	},
	[32457] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Revered"],
			19321,
		},
	},
	[32473] = {
		330,
		1,
	},
	[32489] = {
		350,
		2,
		["mobDrop"] = {
			17839,
			21104,
		},
	},
	[70561] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[9147] = {
		135,
		2,
		["vendor"] = {
			3537,
		},
	},
	[35536] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Revered"],
			19321,
		},
	},
	[35568] = {
		365,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[50945] = {
		375,
		1,
	},
	[9195] = {
		165,
		7,
	},
	[41163] = {
		375,
		8,
		34,
	},
	[6703] = {
		95,
		2,
		2,
		["mobDrop"] = {
			657,
			3386,
		},
		["vendor"] = {
			843,
			3556,
			4186,
		},
	},
	[60728] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[57691] = {
		400,
		1,
	},
	[24849] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Friendly"],
			15293,
		},
	},
	[20853] = {
		295,
		2,
		["vendor"] = {
			12944,
		},
	},
	[50946] = {
		380,
		1,
	},
	[10482] = {
		200,
		1,
	},
	[10490] = {
		200,
		7,
	},
	[28222] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Exalted"],
			16365,
		},
	},
	[10546] = {
		225,
		2,
		["quest"] = {
			2850,
			2857,
		},
	},
	[19047] = {
		250,
		1,
	},
	[10562] = {
		240,
		7,
	},
	[10570] = {
		250,
		2,
		["mobDrop"] = {
			5623,
			7805,
			7883,
		},
	},
	[19095] = {
		300,
		2,
		["mobDrop"] = {
			1813,
		},
	},
	[60697] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60729] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[57692] = {
		400,
		2,
		["mobDrop"] = {
			30921,
		},
	},
	[32458] = {
		325,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Revered"],
			19331,
		},
	},
	[32490] = {
		340,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Friendly"],
			20242,
			23007,
		},
	},
	[10650] = {
		255,
		1,
	},
	[35538] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["Keepers of Time"],
			BabbleFaction["Honored"],
			21643,
		},
	},
	[42731] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Violet Eye"],
			BabbleFaction["Revered"],
			18255,
		},
	},
	[50947] = {
		375,
		1,
	},
	[55199] = {
		395,
		1,
	},
	[7954] = {
		105,
		2,
		["limitedVendor"] = {
			5783,
			1,
		},
	},
	[60666] = {
		420,
		1,
	},
	[60730] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[24850] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Honored"],
			15293,
		},
	},
	[35539] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Kurenai"],
			BabbleFaction["Honored"],
			20240,
		},
	},
	[50948] = {
		370,
		1,
	},
	[44970] = {
		350,
		1,
	},
	[28223] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[19048] = {
		255,
		2,
		["vendor"] = {
			12956,
		},
	},
	[19064] = {
		275,
		2,
		["mobDrop"] = {
			7025,
		},
	},
	[19080] = {
		285,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Friendly"],
			11557,
		},
	},
	[9060] = {
		30,
		1,
	},
	[9068] = {
		95,
		1,
	},
	[7135] = {
		115,
		1,
	},
	[35540] = {
		340,
		1,
	},
	[35572] = {
		365,
		7,
	},
	[50949] = {
		380,
		1,
	},
	[7151] = {
		175,
		1,
	},
	[9196] = {
		175,
		1,
	},
	[60604] = {
		395,
		1,
	},
	[60732] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[24851] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15293,
		},
	},
	[20855] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Honored"],
			12944,
		},
	},
	[35573] = {
		365,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[50950] = {
		375,
		1,
	},
	[10499] = {
		205,
		1,
	},
	[10507] = {
		205,
		1,
	},
	[45100] = {
		300,
		1,
	},
	[10531] = {
		220,
		7,
	},
	[28224] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[19049] = {
		260,
		2,
		["vendor"] = {
			12942,
			12943,
		},
	},
	[60605] = {
		400,
		1,
	},
	[60637] = {
		440,
		1,
	},
	[60669] = {
		425,
		1,
	},
	[57696] = {
		400,
		2,
		["mobDrop"] = {
			32349,
		},
	},
	[10619] = {
		225,
		1,
	},
	[67142] = {
		450,
		8,
		42,
	},
	[35574] = {
		365,
		7,
	},
	[50951] = {
		370,
		1,
	},
	[67140] = {
		450,
		8,
		42,
	},
	[67087] = {
		450,
		8,
		42,
	},
	[67086] = {
		450,
		8,
		42,
	},
	[67085] = {
		450,
		8,
		42,
	},
	[67084] = {
		450,
		8,
		42,
	},
	[67083] = {
		450,
		8,
		42,
	},
	[67082] = {
		450,
		8,
		42,
	},
	[67081] = {
		450,
		8,
		42,
	},
	[67080] = {
		450,
		8,
		42,
	},
	[69386] = {
		450,
		1,
	},
	[64661] = {
		350,
		1,
	},
	[19086] = {
		290,
		2,
		["mobDrop"] = {
			2644,
		},
	},
	[10558] = {
		235,
		1,
	},
	[10566] = {
		245,
		2,
		["quest"] = {
			2851,
			2858,
		},
	},
	[19065] = {
		275,
		1,
	},
	[10574] = {
		250,
		2,
		["quest"] = {
			2853,
			2860,
		},
	},
	[20648] = {
		100,
		1,
	},
	[60734] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[19081] = {
		290,
		7,
	},
	[19097] = {
		300,
		2,
		["mobDrop"] = {
			6559,
			6556,
			9477,
			6557,
		},
	},
	[50938] = {
		375,
		1,
	},
	[9065] = {
		70,
		1,
	},
	[44343] = {
		315,
		1,
	},
	[44359] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Revered"],
			21655,
		},
	},
	[3753] = {
		25,
		1,
	},
	[60727] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[32455] = {
		325,
		2,
		["vendor"] = {
			16748,
			16689,
			19196,
		},
	},
	[3759] = {
		75,
		1,
	},
	[3761] = {
		85,
		1,
	},
	[35543] = {
		365,
		2,
		["repVendor"] = {
			BabbleFaction["The Sha'tar"],
			BabbleFaction["Honored"],
			21432,
		},
	},
	[35575] = {
		375,
		1,
	},
	[50952] = {
		375,
		1,
	},
	[3769] = {
		140,
		7,
	},
	[21943] = {
		190,
		8,
		1,
	},
	[3773] = {
		175,
		7,
	},
	[3775] = {
		170,
		7,
	},
	[3777] = {
		195,
		7,
	},
	[3779] = {
		200,
		7,
	},
	[60723] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[9148] = {
		140,
		7,
	},
	[24940] = {
		100,
		2,
		["vendor"] = {
			777,
		},
	},
	[63200] = {
		450,
		8,
		39,
	},
	[63199] = {
		450,
		8,
		39,
	},
	[63198] = {
		450,
		8,
		39,
	},
	[19050] = {
		260,
		2,
		["vendor"] = {
			11874,
		},
	},
	[60607] = {
		385,
		1,
	},
	[19082] = {
		290,
		1,
	},
	[19098] = {
		300,
		1,
	},
	[60703] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60735] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[22331] = {
		250,
		1,
	},
	[32461] = {
		350,
		2,
		["vendor"] = {
			18672,
		},
	},
	[63194] = {
		450,
		8,
		39,
	},
	[32493] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	[63196] = {
		450,
		8,
		39,
	},
	[63195] = {
		450,
		8,
		39,
	},
	[3817] = {
		100,
		1,
	},
	[20854] = {
		300,
		2,
		["vendor"] = {
			12944,
		},
	},
	[7147] = {
		160,
		1,
	},
	[7149] = {
		170,
		2,
		["vendor"] = {
			3958,
			2810,
			4877,
			2821,
		},
	},
	[9149] = {
		145,
		7,
	},
	[35544] = {
		345,
2,
		["repVendor"] = {
			BabbleFaction["The Mag'har"],
			BabbleFaction["Honored"],
			20241,
			{
				BabbleFaction["Kurenai"],
				BabbleFaction["Honored"],
				20240,
			},
		},
	},
	[35576] = {
		375,
		1,
	},
	[50953] = {
		380,
		1,
	},
	[57694] = {
		400,
		2,
		["mobDrop"] = {
			32289,
		},
	},
	[60712] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[9197] = {
		175,
		7,
	},
	[60643] = {
		415,
		1,
	},
	[60702] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60601] = {
		395,
		1,
	},
	[10554] = {
		235,
		2,
		["mobDrop"] = {
			5615,
		},
	},
	[60761] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60760] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60759] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[40001] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[19066] = {
		275,
		2,
		["vendor"] = {
			11189,
		},
	},
	[6704] = {
		170,
		2,
		2,
		["mobDrop"] = {
			938,
			1160,
		},
		["limitedVendor"] = {
			2381,
			1,
			2393,
			1,
			2846,
			1,
		},
	},
	[60608] = {
		385,
		1,
	},
	[60640] = {
		440,
		1,
	},
	[14930] = {
		225,
		1,
	},
	[60704] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[22711] = {
		200,
		2,
		["vendor"] = {
			2699,
		},
	},
	[22727] = {
		300,
		8,
		26,
	},
	[50940] = {
		380,
		1,
	},
	[19061] = {
		270,
		2,
		["vendor"] = {
			7852,
			7854,
		},
	},
	[32480] = {
		320,
		1,
	},
	[32496] = {
		355,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Honored"],
			17904,
		},
	},
	[60655] = {
		425,
		1,
	},
	[42546] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Violet Eye"],
			BabbleFaction["Exalted"],
			18255,
		},
	},
	[40002] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[60747] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[22923] = {
		300,
		8,
		23,
	},
	[36079] = {
		330,
		1,
	},
	[60711] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[35577] = {
		375,
		1,
	},
	[50954] = {
		380,
		1,
	},
	[60671] = {
		420,
		1,
	},
	[19051] = {
		265,
		2,
		["mobDrop"] = {
			5981,
			6005,
		},
	},
	[19059] = {
		270,
		2,
		["mobDrop"] = {
			7035,
		},
	},
	[19067] = {
		275,
		2,
		["vendor"] = {
			12942,
			12943,
		},
	},
	[19075] = {
		285,
		2,
		["mobDrop"] = {
			7027,
		},
	},
	[19083] = {
		290,
		1,
	},
	[35580] = {
		375,
		1,
	},
	[10516] = {
		210,
		2,
		["vendor"] = {
			7854,
			8160,
		},
	},
	[23710] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Revered"],
			12944,
		},
	},
	[60731] = {
		420,
		2,
		["vendor"] = {
			32515,
		},
	},
	[2152] = {
		1,
		1,
	},
	[10548] = {
		230,
		1,
	},
	[10556] = {
		235,
		1,
	},
	[10564] = {
		240,
		2,
		["mobDrop"] = {
			5623,
			7805,
			7883,
		},
	},
	[10572] = {
		250,
		2,
		["quest"] = {
			2852,
			2859,
		},
	},
	[2164] = {
		75,
		7,
	},
	[60705] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60737] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[2167] = {
		100,
		1,
	},
	[32462] = {
		300,
		1,
	},
	[32478] = {
		300,
		1,
	},
	[32494] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Revered"],
			20242,
			23007,
		},
	},
	[2168] = {
		110,
		1,
	},
	[2169] = {
		100,
		7,
	},
	[60665] = {
		420,
		1,
	},
	[36076] = {
		260,
		1,
	},
	[60651] = {
		420,
		1,
	},
	[60649] = {
		425,
		1,
	},
	[23399] = {
		155,
		2,
		["vendor"] = {
			4225,
			4589,
		},
	},
	[60645] = {
		415,
		2,
		["repVendor"] = {
			BabbleFaction["The Kalu'ak"],
			BabbleFaction["Honored"],
			31916,
			32763,
		},
	},
	[62176] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[50955] = {
		370,
		1,
	},
	[60631] = {
		380,
		1,
	},
	[60630] = {
		400,
		1,
	},
	[60629] = {
		395,
		1,
	},
	[60627] = {
		395,
		1,
	},
	[40006] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[19060] = {
		270,
		2,
		["mobDrop"] = {
			5226,
		},
	},
	[19068] = {
		275,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Friendly"],
			11557,
		},
	},
	[19076] = {
		285,
		2,
		["mobDrop"] = {
			9259,
		},
	},
	[51572] = {
		385,
		1,
	},
	[7955] = {
		115,
		2,
		["quest"] = {
			1487,
		},
	},
	[19063] = {
		275,
		7,
	},
	[20649] = {
		150,
		1,
	},
	[63197] = {
		450,
		8,
		39,
	},
	[57683] = {
		400,
		1,
	},
	[32498] = {
		350,
2,
		["repVendor"] = {
			BabbleFaction["Honor Hold"],
			BabbleFaction["Friendly"],
			17657,
			{
				BabbleFaction["Thrallmar"],
				BabbleFaction["Friendly"],
				17585,
			},
		},
	},
	[23703] = {
		290,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Honored"],
			11557,
		},
	},
	[60706] = {
		425,
		2,
		["vendor"] = {
			32515,
		},
	},
	[60600] = {
		385,
		1,
	},
	[57701] = {
		400,
		2,
		["mobDrop"] = {
			31702,
			32297,
		},
	},
	[3762] = {
		100,
		7,
	},
	[3763] = {
		80,
		1,
	},
	[3764] = {
		145,
		1,
	},
	[3765] = {
		120,
		7,
	},
	[3766] = {
		125,
		1,
	},
	[3767] = {
		120,
		7,
	},
	[3771] = {
		150,
		7,
	},
	[60599] = {
		385,
		1,
	},
	[60583] = {
		405,
		1,
	},
	[57699] = {
		400,
		2,
		["mobDrop"] = {
			32290,
		},
	},
	[10560] = {
		240,
		7,
	},
	[62177] = {
		440,
		2,
		["vendor"] = {
			32515,
		},
	},
	[50956] = {
		375,
		1,
	},
	[19077] = {
		285,
		2,
		["vendor"] = {
			12957,
		},
	},
	[20650] = {
		200,
		1,
	},
	[44770] = {
		350,
		1,
	},
	[10632] = {
		250,
		1,
	},
	[35537] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Honored"],
			19321,
		},
	},
	[22926] = {
		300,
		8,
		23,
	},
	[4096] = {
		165,
		2,
		["limitedVendor"] = {
			2819,
			1,
		},
	},
	[46135] = {
		365,
		8,
		24,
	},
	[19062] = {
		270,
		2,
		["vendor"] = {
			12958,
		},
	},
	[6705] = {
		190,
		2,
		2,
		["mobDrop"] = {
			2636,
			1561,
		},
		["vendor"] = {
			4897,
		},
	},
	[44768] = {
		350,
2,
		["repVendor"] = {
			BabbleFaction["Thrallmar"],
			BabbleFaction["Revered"],
			17585,
			{
				BabbleFaction["Honor Hold"],
				BabbleFaction["Revered"],
				17657,
			},
		},
	},
	[41164] = {
		375,
		8,
		27,
	},
	[19052] = {
		265,
		1,
	},
	[60611] = {
		395,
		1,
	},
	[19084] = {
		290,
		2,
		["vendor"] = {
			12959,
		},
	},
	[19100] = {
		300,
		2,
		["mobDrop"] = {
			7029,
		},
	},
	[19079] = {
		285,
		2,
		["mobDrop"] = {
			6138,
		},
	},
	[9062] = {
		30,
		1,
	},
	[9070] = {
		100,
		2,
		["vendor"] = {
			2697,
		},
	},
	[32463] = {
		310,
		1,
	},
	[32479] = {
		310,
		1,
	},
	[32495] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Expedition"],
			BabbleFaction["Honored"],
			17904,
		},
	},
	[50936] = {
		390,
		1,
	},
	[23190] = {
		150,
		2,
		["vendor"] = {
			5128,
			3366,
		},
	},
	--Runeforging

	[53323] = {
		1,
		1,
	},
	[53331] = {
		1,
		1,
	},
	[53341] = {
		1,
		1,
	},
	[53342] = {
		1,
		1,
	},
	[53343] = {
		1,
		1,
	},
	[54446] = {
		1,
		1,
	},
	[53344] = {
		1,
		1,
	},
	[54447] = {
		1,
		1,
	},
	[70164] = {
		1,
		1,
	},
	[62158] = {
		1,
		1,
	},
	--smelting

	[3304] = {
		65,
		1,
	},
	[2657] = {
		1,
		1,
	},
	[2659] = {
		65,
		1,
	},
	[49252] = {
		350,
		1,
	},
	[70524] = {
		250,
		1,
	},
	[10097] = {
		175,
		1,
	},
	[55208] = {
		450,
		1,
	},
	[29356] = {
		275,
		1,
	},
	[49258] = {
		400,
		1,
	},
	[10098] = {
		230,
		1,
	},
	[55211] = {
		450,
		1,
	},
	[29358] = {
		325,
		1,
	},
	[46353] = {
		375,
		8,
		24,
	},
	[29359] = {
		350,
		1,
	},
	[35751] = {
		300,
		1,
	},
	[3307] = {
		125,
		1,
	},
	[2658] = {
		75,
		1,
	},
	[29361] = {
		375,
		1,
	},
	[16153] = {
		230,
		1,
	},
	[35750] = {
		300,
		1,
	},
	[29686] = {
		375,
		1,
	},
	[3308] = {
		155,
		1,
	},
	[3569] = {
		165,
		1,
	},
	[14891] = {
		230,
		2,
		["quest"] = {
			4083,
		},
	},
	[29360] = {
		350,
		1,
	},
	[22967] = {
		300,
		2,
		["mobDrop"] = {
			14401,
		},
	},
 	--tailoring

	 [18458] = {
		300,
		2,
		["mobDrop"] = {
			1853,
		},
	},
	[12059] = {
		215,
		7,
	},
	[12067] = {
		225,
		1,
	},
	[12071] = {
		225,
		1,
	},
	[12075] = {
		230,
		2,
		["limitedVendor"] = {
			3364,
			1,
			8681,
			1,
		},
	},
	[12079] = {
		235,
		1,
	},
	[12091] = {
		250,
		2,
		["limitedVendor"] = {
			1347,
			1,
			3005,
			1,
		},
	},
	[55920] = {
		400,
		1,
	},
	[23664] = {
		290,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Honored"],
			10856,
			11536,
			10857,
		},
	},
	[26746] = {
		315,
		1,
	},
	[26754] = {
		375,
		2,
		["vendor"] = {
			22213,
			29511,
		},
	},
	[26762] = {
		375,
		2,
		["vendor"] = {
			22208,
			29512,
		},
	},
	[26770] = {
		320,
		1,
	},
	[26778] = {
		360,
		2,
		["limitedVendor"] = {
			19521,
			1,
		},
	},
	[67065] = {
		450,
		8,
		42,
	},
	[31433] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Exalted"],
			19321,
		},
	},
	[31441] = {
		350,
		7,
	},
	[31449] = {
		365,
		7,
	},
	[7624] = {
		30,
		1,
	},
	[7630] = {
		55,
		2,
		2,
		["vendor"] = {
			66,
		},
		["limitedVendor"] = {
			3364,
			1,
			4189,
			1,
			3485,
			1,
			3522,
			1,
		},
	},
	[55777] = {
		420,
		1,
	},
	[26403] = {
		250,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[67066] = {
		450,
		8,
		42,
	},
	[24902] = {
		300,
		2,
		["quest"] = {
			8323,
		},
	},
	[22866] = {
		300,
		8,
		23,
	},
	[55921] = {
		405,
		1,
	},
	[56001] = {
		415,
		1,
	},
	[56017] = {
		420,
		1,
		8,
		44,
	},
	[63203] = {
		450,
		8,
		39,
	},
	[18403] = {
		255,
		1,
	},
	[18411] = {
		265,
		1,
	},
	[18419] = {
		275,
		2,
		["limitedVendor"] = {
			12022,
			1,
		},
	},
	[18451] = {
		300,
		1,
		7,
	},
	[28208] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Honored"],
			16365,
		},
	},
	[8758] = {
		140,
		1,
	},
	[8762] = {
		160,
		1,
	},
	[8766] = {
		175,
		1,
	},
	[8770] = {
		190,
		1,
	},
	[8774] = {
		180,
		1,
	},
	[8782] = {
		150,
		7,
	},
	[8786] = {
		175,
		2,
		["limitedVendor"] = {
			6574,
			1,
			6576,
			1,
		},
	},
	[26747] = {
		325,
		2,
		["vendor"] = {
			19213,
			16767,
			16638,
		},
	},
	[26755] = {
		375,
		2,
		2,
		["mobDrop"] = {
			20134,
			20135,
		},
		["vendor"] = {
			22213,
			29511,
		},
	},
	[26763] = {
		375,
		2,
		2,
		["mobDrop"] = {
			18872,
		},
		["vendor"] = {
			22208,
			29512,
		},
	},
	[8802] = {
		205,
		2,
		["limitedVendor"] = {
			6568,
			1,
		},
	},
	[26779] = {
		355,
		2,
		["limitedVendor"] = {
			19015,
			1,
			19017,
			1,
		},
	},
	[31434] = {
		350,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[31442] = {
		365,
		2,
		["mobDrop"] = {
			24664,
		},
	},
	[31450] = {
		365,
		7,
	},
	[75597] = {
		450,
		2,
		["vendor"] = {
			40160,
		},
	},
	[70551] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[60969] = {
		300,
		1,
	},
	[24903] = {
		300,
		2,
		["quest"] = {
			8323,
		},
	},
	[22867] = {
		300,
		8,
		23,
	},
	[55907] = {
		380,
		1,
	},
	[55923] = {
		410,
		1,
	},
	[56003] = {
		415,
		1,
	},
	[56019] = {
		420,
		1,
	},
	[70552] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[63205] = {
		450,
		8,
		39,
	},
	[18404] = {
		255,
		7,
	},
	[18412] = {
		270,
		2,
		["mobDrop"] = {
			5861,
		},
	},
	[18420] = {
		275,
		1,
	},
	[18436] = {
		285,
		2,
		["mobDrop"] = {
			7437,
		},
	},
	[18444] = {
		295,
		1,
	},
	[18452] = {
		300,
		7,
	},
	[12056] = {
		215,
		7,
	},
	[8483] = {
		160,
		1,
	},
	[12064] = {
		220,
		2,
		["limitedVendor"] = {
			3005,
			1,
			4168,
			1,
		},
	},
	[12072] = {
		230,
		1,
	},
	[12076] = {
		235,
		1,
	},
	[12080] = {
		235,
		2,
		["limitedVendor"] = {
			3364,
			1,
			8681,
			1,
		},
	},
	[12084] = {
		240,
		7,
	},
	[12088] = {
		245,
		1,
	},
	[12092] = {
		250,
		1,
	},
	[55924] = {
		410,
		1,
	},
	[23666] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Honored"],
			12944,
		},
	},
	[26756] = {
		355,
		2,
		["vendor"] = {
			22212,
			29510,
		},
	},
	[26764] = {
		310,
		1,
	},
	[26772] = {
		335,
		1,
	},
	[26780] = {
		365,
		2,
		["mobDrop"] = {
			16406,
		},
	},
	[31435] = {
		350,
		7,
	},
	[31443] = {
		365,
		7,
	},
	[31451] = {
		375,
		2,
		["mobDrop"] = {
			20885,
		},
	},
	[31459] = {
		340,
		2,
		["repVendor"] = {
			BabbleFaction["The Consortium"],
			BabbleFaction["Honored"],
			20242,
			23007,
		},
	},
	[36315] = {
		375,
		8,
		37,
	},
	[7892] = {
		120,
		7,
	},
	[40020] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[28481] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Honored"],
			15179,
		},
	},
	[22868] = {
		300,
		8,
		23,
	},
	[55925] = {
		415,
		1,
	},
	[20848] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Honored"],
			12944,
		},
	},
	[56005] = {
		445,
		2,
		["repVendor"] = {
			BabbleFaction["The Sons of Hodir"],
			BabbleFaction["Exalted"],
			32540,
		},
	},
	[56021] = {
		425,
		1,
	},
	[18405] = {
		260,
		2,
		["vendor"] = {
			11189,
		},
	},
	[18413] = {
		270,
		1,
	},
	[18421] = {
		275,
		1,
	},
	[18437] = {
		285,
		1,
	},
	[18445] = {
		300,
		7,
	},
	[18453] = {
		300,
		1,
		7,
	},
	[27659] = {
		275,
		2,
		["vendor"] = {
			15419,
		},
	},
	[28210] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15179,
		},
	},
	[40021] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[55910] = {
		385,
		1,
	},
	[67147] = {
		450,
		8,
		42,
	},
	[23667] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Revered"],
			12944,
		},
	},
	[67146] = {
		450,
		8,
		42,
	},
	[26749] = {
		340,
		2,
		["vendor"] = {
			19015,
			19213,
		},
	},
	[26757] = {
		365,
		2,
		["vendor"] = {
			22212,
			29510,
		},
	},
	[26765] = {
		310,
		1,
	},
	[26773] = {
		340,
		2,
		["vendor"] = {
			19213,
			16767,
			16638,
		},
	},
	[26781] = {
		375,
		2,
		["mobDrop"] = {
			16408,
		},
	},
	[56028] = {
		440,
		1,
	},
	[67144] = {
		450,
		8,
		42,
	},
	[59589] = {
		420,
		1,
	},
	[67064] = {
		450,
		8,
		42,
	},
	[70553] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Honored"],
			37687,
		},
	},
	[70550] = {
		450,
		2,
		["repVendor"] = {
			BabbleFaction["The Ashen Verdict"],
			BabbleFaction["Revered"],
			37687,
		},
	},
	[55769] = {
		420,
		1,
	},
	[31444] = {
		365,
		7,
	},
	[31452] = {
		375,
		2,
		["mobDrop"] = {
			18708,
		},
	},
	[31460] = {
		300,
		1,
	},
	[64729] = {
		400,
		1,
	},
	[36317] = {
		375,
		8,
		37,
	},
	[3755] = {
		45,
		1,
	},
	[37882] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Friendly"],
			19321,
		},
	},
	[22813] = {
		275,
		2,
		["quest"] = {
			5518,
		},
	},
	[3758] = {
		95,
		7,
	},
	[50194] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Sporeggar"],
			BabbleFaction["Revered"],
			18382,
		},
	},
	[63924] = {
		435,
		2,
		["repVendor"] = {
			BabbleFaction["The Kalu'ak"],
			BabbleFaction["Revered"],
			31916,
			32763,
		},
	},
	[6692] = {
		150,
		2,
		["mobDrop"] = {
			10760,
			910,
			2337,
		},
	},
	[63206] = {
		450,
		8,
		39,
	},
	[28482] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Friendly"],
			15179,
		},
	},
	[22869] = {
		300,
		8,
		23,
	},
	[55911] = {
		390,
		1,
	},
	[63204] = {
		450,
		8,
		39,
	},
	[20849] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Thorium Brotherhood"],
			BabbleFaction["Friendly"],
			12944,
		},
	},
	[60994] = {
		420,
		1,
	},
	[55908] = {
		370,
		1,
	},
	[60990] = {
		420,
		1,
	},
	[56007] = {
		410,
		1,
	},
	[56023] = {
		420,
		1,
	},
	[56039] = {
		405,
		1,
	},
	[60971] = {
		425,
		1,
	},
	[6521] = {
		90,
		1,
	},
	[67079] = {
		450,
		8,
		42,
	},
	[59588] = {
		420,
		1,
	},
	[59587] = {
		420,
		1,
	},
	[59586] = {
		420,
		1,
	},
	[59585] = {
		420,
		1,
	},
	[18406] = {
		260,
		1,
		2,
		["vendor"] = {
			7940,
		},
	},
	[18414] = {
		270,
		1,
	},
	[18422] = {
		275,
		2,
		["mobDrop"] = {
			9026,
		},
	},
	[59584] = {
		420,
		1,
	},
	[12045] = {
		20,
		1,
	},
	[18446] = {
		300,
		1,
	},
	[18454] = {
		300,
		7,
	},
	[27660] = {
		300,
		2,
		["mobDrop"] = {
			11487,
		},
	},
	[12061] = {
		215,
		1,
	},
	[12065] = {
		225,
		1,
	},
	[12069] = {
		225,
		1,
	},
	[12073] = {
		230,
		1,
	},
	[12077] = {
		235,
		1,
	},
	[12081] = {
		240,
		2,
		["limitedVendor"] = {
			2672,
			1,
		},
	},
	[12085] = {
		240,
		2,
		["vendor"] = {
			4577,
			8681,
		},
	},
	[12089] = {
		245,
		2,
		["vendor"] = {
			4577,
			8681,
		},
	},
	[12093] = {
		250,
		2,
		["vendor"] = {
			4577,
			8681,
		},
	},
	[59583] = {
		415,
		1,
	},
	[59582] = {
		415,
		1,
	},
	[56034] = {
		405,
		1,
	},
	[12047] = {
		120,
		7,
	},
	[26750] = {
		345,
		2,
		["limitedVendor"] = {
			19015,
			1,
			16638,
			1,
			19017,
			1,
			16767,
			1,
		},
	},
	[26758] = {
		375,
		2,
		["vendor"] = {
			22212,
			29510,
		},
	},
	[41205] = {
		375,
		8,
		34,
	},
	[26774] = {
		345,
		2,
		["vendor"] = {
			19213,
			16767,
			16638,
		},
	},
	[26782] = {
		350,
		2,
		["mobDrop"] = {
			20869,
		},
	},
	[3870] = {
		155,
		2,
		["limitedVendor"] = {
			2394,
			1,
			2669,
			1,
		},
	},
	[3851] = {
		125,
		7,
	},
	[36686] = {
		350,
		2,
		["vendor"] = {
			22212,
			29510,
		},
	},
	[67145] = {
		450,
		8,
		42,
	},
	[56027] = {
		435,
		1,
	},
	[56026] = {
		440,
		1,
	},
	[3813] = {
		150,
		1,
	},
	[56025] = {
		435,
		1,
	},
	[7623] = {
		30,
		1,
	},
	[56024] = {
		440,
		1,
	},
	[56022] = {
		420,
		1,
	},
	[7629] = {
		55,
		7,
	},
	[56020] = {
		420,
		1,
	},
	[7633] = {
		70,
		2,
		["limitedVendor"] = {
			4168,
			1,
			3499,
			1,
			3556,
			1,
			3485,
			1,
			1250,
			1,
		},
	},
	[56018] = {
		425,
		1,
	},
	[56016] = {
		420,
		1,
		8,
		45,
	},
	[26407] = {
		250,
		2,
		8,
		2,
		["vendor"] = {
			15909,
		},
	},
	[2387] = {
		1,
		1,
	},
	[7643] = {
		115,
		2,
		["limitedVendor"] = {
			1474,
			1,
			3499,
			1,
			1454,
			1,
			2669,
			1,
			4577,
			1,
			4168,
			1,
		},
	},
	[40024] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Friendly"],
			23159,
		},
	},
	[56014] = {
		390,
		1,
	},
	[22870] = {
		300,
		8,
		23,
	},
	[55913] = {
		385,
		1,
	},
	[55898] = {
		360,
		1,
	},
	[56010] = {
		400,
		1,
	},
	[22902] = {
		300,
		2,
		["limitedVendor"] = {
			14371,
			1,
		},
	},
	[56008] = {
		400,
		1,
	},
	[55993] = {
		400,
		7,
	},
	[56009] = {
		430,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Crusade"],
			BabbleFaction["Exalted"],
			30431,
		},
	},
	[41206] = {
		375,
		8,
		27,
	},
	[56006] = {
		440,
		2,
		["repVendor"] = {
			BabbleFaction["The Wyrmrest Accord"],
			BabbleFaction["Revered"],
			32533,
		},
	},
	[56004] = {
		435,
		2,
		["repVendor"] = {
			BabbleFaction["Knights of the Ebon Blade"],
			BabbleFaction["Revered"],
			32538,
		},
	},
	[3839] = {
		125,
		1,
	},
	[3840] = {
		35,
		1,
	},
	[3841] = {
		60,
		1,
	},
	[3842] = {
		70,
		1,
	},
	[3843] = {
		85,
		1,
	},
	[3844] = {
		100,
		7,
	},
	[3845] = {
		80,
		1,
	},
	[18415] = {
		270,
		1,
	},
	[3847] = {
		95,
		7,
	},
	[3848] = {
		110,
		1,
	},
	[18439] = {
		290,
		7,
	},
	[18447] = {
		300,
		7,
	},
	[18455] = {
		300,
		7,
	},
	[3852] = {
		130,
		1,
	},
	[24092] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Honored"],
			14921,
		},
	},
	[3854] = {
		145,
		2,
		["limitedVendor"] = {
			2679,
			1,
			9636,
			1,
		},
	},
	[3855] = {
		125,
		1,
	},
	[3856] = {
		140,
		7,
	},
	[3857] = {
		165,
		2,
		["limitedVendor"] = {
			2670,
			1,
		},
	},
	[3858] = {
		170,
		7,
	},
	[3859] = {
		150,
		1,
	},
	[3860] = {
		175,
		7,
	},
	[8772] = {
		175,
		1,
	},
	[8776] = {
		15,
		1,
	},
	[8780] = {
		145,
		7,
	},
	[3864] = {
		200,
		7,
	},
	[3865] = {
		175,
		1,
	},
	[26751] = {
		350,
		2,
		["vendor"] = {
			22208,
			29512,
		},
	},
	[26759] = {
		375,
		2,
		["vendor"] = {
			22212,
			29510,
		},
	},
	[3868] = {
		125,
		7,
	},
	[8804] = {
		210,
		1,
	},
	[26783] = {
		360,
		2,
		["mobDrop"] = {
			19168,
		},
	},
	[3871] = {
		170,
		1,
	},
	[3872] = {
		185,
		7,
	},
	[3873] = {
		200,
		2,
		["vendor"] = {
			2663,
		},
	},
	[56002] = {
		415,
		1,
	},
	[56000] = {
		400,
		1,
	},
	[31430] = {
		335,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Honored"],
			19331,
		},
	},
	[31438] = {
		350,
		7,
	},
	[22759] = {
		300,
		8,
		26,
	},
	[31454] = {
		375,
		2,
		["mobDrop"] = {
			17977,
		},
	},
	[3914] = {
		30,
		1,
	},
	[55998] = {
		400,
		7,
	},
	[3850] = {
		110,
		1,
	},
	[55996] = {
		400,
		7,
	},
	[31453] = {
		375,
		2,
		["mobDrop"] = {
			17978,
		},
	},
	[55994] = {
		400,
		7,
	},
	[55943] = {
		415,
		1,
	},
	[55941] = {
		420,
		1,
	},
	[55922] = {
		405,
		1,
	},
	[27724] = {
		275,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Friendly"],
			15179,
		},
	},
	[55914] = {
		395,
		1,
	},
	[60993] = {
		425,
		1,
	},
	[55899] = {
		350,
		1,
	},
	[55906] = {
		375,
		1,
	},
	[55904] = {
		360,
		1,
	},
	[24091] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Revered"],
			14921,
		},
	},
	[6695] = {
		185,
		2,
		["mobDrop"] = {
			4834,
			2434,
			2242,
		},
	},
	[55901] = {
		395,
		1,
	},
	[55995] = {
		400,
		1,
	},
	[56011] = {
		430,
		2,
		["repVendor"] = {
			BabbleFaction["Kirin Tor"],
			BabbleFaction["Exalted"],
			32287,
		},
	},
	[41208] = {
		375,
		8,
		34,
	},
	[64730] = {
		405,
		1,
	},
	[55642] = {
		420,
		1,
	},
	[37873] = {
		350,
		2,
		["repVendor"] = {
			BabbleFaction["Lower City"],
			BabbleFaction["Honored"],
			21655,
		},
	},
	[21945] = {
		190,
		8,
		1,
	},
	[50644] = {
		250,
		2,
		["vendor"] = {
			15165,
		},
	},
	[49677] = {
		250,
		2,
		["vendor"] = {
			15165,
		},
	},
	[46131] = {
		365,
		8,
		24,
	},
	[8489] = {
		175,
		1,
	},
	[18408] = {
		260,
		2,
		["mobDrop"] = {
			5861,
		},
	},
	[18416] = {
		275,
		1,
	},
	[18424] = {
		280,
		1,
		7,
	},
	[8465] = {
		40,
		1,
	},
	[12046] = {
		75,
		1,
	},
	[12050] = {
		210,
		1,
	},
	[3915] = {
		1,
		1,
	},
	[3863] = {
		180,
		7,
	},
	[24093] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Zandalar Tribe"],
			BabbleFaction["Friendly"],
			14921,
		},
	},
	[12066] = {
		225,
		7,
	},
	[2386] = {
		65,
		1,
	},
	[12074] = {
		230,
		1,
	},
	[12078] = {
		235,
		7,
	},
	[2389] = {
		40,
		7,
	},
	[12086] = {
		245,
		2,
		["quest"] = {
			3402,
		},
	},
	[55900] = {
		400,
		1,
	},
	[2392] = {
		40,
		1,
	},
	[2393] = {
		1,
		1,
	},
	[23662] = {
		290,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Honored"],
			11557,
		},
	},
	[2395] = {
		70,
		1,
	},
	[2396] = {
		70,
		1,
	},
	[2397] = {
		60,
		1,
	},
	[26760] = {
		355,
		2,
		["vendor"] = {
			22208,
			29512,
		},
	},
	[2399] = {
		85,
		1,
	},
	[26776] = {
		350,
		2,
		["limitedVendor"] = {
			18011,
			1,
			19722,
			1,
		},
	},
	[2401] = {
		95,
		1,
	},
	[2402] = {
		75,
		1,
	},
	[2403] = {
		105,
		7,
	},
	[44958] = {
		250,
		2,
		8,
		1,
		["vendor"] = {
			13433,
		},
	},
	[44950] = {
		250,
		2,
		8,
		1,
		["vendor"] = {
			13420,
		},
	},
	[2406] = {
		100,
		1,
	},
	[31431] = {
		335,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Honored"],
			19321,
		},
	},
	[41207] = {
		375,
		8,
		27,
	},
	[26771] = {
		325,
		1,
	},
	[31455] = {
		375,
		2,
		["mobDrop"] = {
			16807,
		},
	},
	[40023] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[37884] = {
		370,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Exalted"],
			19321,
		},
	},
	[37883] = {
		360,
		2,
		["repVendor"] = {
			BabbleFaction["The Aldor"],
			BabbleFaction["Honored"],
			19321,
		},
	},
	[50647] = {
		245,
		2,
		["vendor"] = {
			15165,
		},
	},
	[36318] = {
		375,
		8,
		37,
	},
	[36316] = {
		375,
		8,
		37,
	},
	[7893] = {
		120,
		7,
	},
	[19435] = {
		290,
		2,
		["quest"] = {
			6032,
		},
	},
	[46128] = {
		365,
		8,
		24,
	},
	[18407] = {
		260,
		1,
	},
	[26775] = {
		340,
		2,
		["limitedVendor"] = {
			18011,
			1,
			19722,
			1,
		},
	},
	[31437] = {
		350,
		7,
	},
	[40060] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["Ashtongue Deathsworn"],
			BabbleFaction["Honored"],
			23159,
		},
	},
	[31373] = {
		350,
		2,
		["vendor"] = {
			22213,
			29511,
		},
	},
	[28480] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15179,
		},
	},
	[28209] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[3849] = {
		120,
		7,
	},
	[8467] = {
		110,
		1,
	},
	[55997] = {
		400,
		7,
	},
	[28207] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Exalted"],
			16365,
		},
	},
	[56029] = {
		435,
		1,
	},
	[27658] = {
		225,
		2,
		["vendor"] = {
			28714,
			15419,
			4617,
			18951,
			5757,
			16722,
			27030,
			19234,
			3012,
			5758,
			26569,
			18773,
			4228,
			5158,
			16635,
			19663,
			3346,
			1318,
			27054,
			27147,
			19537, -- [21]
			18753, -- [22]
			19540, -- [23]
		},
	},
	[12044] = {
		1,
		1,
	},
	[63742] = {
		125,
		1,
	},
	[12048] = {
		205,
		1,
	},
	[6693] = {
		175,
		7,
	},
	[12052] = {
		210,
		1,
	},
	[26085] = {
		260,
		2,
		["vendor"] = {
			6568,
		},
	},
	[18401] = {
		250,
		1,
	},
	[18409] = {
		265,
		1,
		2,
		["vendor"] = {
			7940,
		},
	},
	[18417] = {
		275,
		1,
	},
	[12060] = {
		215,
		7,
	},
	[6686] = {
		70,
		2,
		2,
		["mobDrop"] = {
			3531,
			3530,
			590,
		},
		["limitedVendor"] = {
			16224,
			1,
			843,
			1,
			3005,
			1,
			4189,
			1,
			3556,
			1,
		},
	},
	[18441] = {
		290,
		1,
	},
	[18449] = {
		300,
		1,
		7,
	},
	[18457] = {
		300,
		2,
		["mobDrop"] = {
			9264,
		},
	},
	[3861] = {
		185,
		1,
	},
	[12070] = {
		225,
		1,
	},
	[3862] = {
		200,
		2,
		["limitedVendor"] = {
			2381,
			1,
			6567,
			1,
		},
	},
	[6690] = {
		135,
		1,
	},
	[46129] = {
		365,
		8,
		24,
	},
	[2963] = {
		1,
		1,
	},
	[2964] = {
		75,
		1,
	},
	[12082] = {
		240,
		1,
	},
	[55902] = {
		350,
		1,
	},
	[3866] = {
		110,
		1,
	},
	[28205] = {
		300,
		2,
		8,
		41,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			16365,
		},
	},
	[23663] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Timbermaw Hold"],
			BabbleFaction["Revered"],
			11557,
		},
	},
	[3869] = {
		135,
		2,
		["limitedVendor"] = {
			2668,
			1,
		},
	},
	[8789] = {
		180,
		2,
		["limitedVendor"] = {
			2670,
			1,
		},
	},
	[26753] = {
		365,
		2,
		["vendor"] = {
			22213,
			29511,
		},
	},
	[26761] = {
		365,
		2,
		["vendor"] = {
			22208,
			29512,
		},
	},
	[56030] = {
		380,
		1,
	},
	[26777] = {
		360,
		2,
		["limitedVendor"] = {
			19521,
			1,
		},
	},
	[8791] = {
		185,
		1,
	},
	[8793] = {
		190,
		7,
	},
	[8795] = {
		190,
		7,
	},
	[8797] = {
		195,
		7,
	},
	[8799] = {
		195,
		1,
	},
	[2394] = {
		40,
		1,
	},
	[31432] = {
		375,
		2,
		["repVendor"] = {
			BabbleFaction["The Scryers"],
			BabbleFaction["Exalted"],
			19331,
		},
	},
	[31440] = {
		350,
		7,
	},
	[31448] = {
		365,
		7,
	},
	[31456] = {
		375,
		2,
		["mobDrop"] = {
			17798,
		},
	},
	[3757] = {
		80,
		1,
	},
	[2385] = {
		10,
		1,
	},
	[27725] = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Cenarion Circle"],
			BabbleFaction["Revered"],
			15179,
		},
	},
	[18440] = {
		290,
		7,
	},
	[18448] = {
		300,
		7,
	},
	[18456] = {
		300,
		2,
		["mobDrop"] = {
			10813,
		},
	},
	[6688] = {
		115,
		2,
		2,
		["mobDrop"] = {
			450,
			2264,
		},
		["limitedVendor"] = {
			777,
			1,
			1454,
			1,
			1474,
			1,
			3005,
			1,
			3364,
			1,
			3485,
			1,
			3537,
			1,
			3683,
			1,
			4189,
			2,
			4577,
			1,
			5944, -- [21]
			1, -- [22]
		},
	},
	[8760] = {
		145,
		1,
	},
	[46130] = {
		365,
		8,
		24,
	},
	[26087] = {
		300,
		8,
		26,
	},
	[24901] = {
		300,
		2,
		["quest"] = {
			8323,
		},
	},
	[26086] = {
		280,
		2,
		8,
		30,
		["mobDrop"] = {
			10503,
		},
	},
	[55903] = {
		360,
		1,
	},
	[55919] = {
		395,
		1,
	},
	[23665]  = {
		300,
		2,
		["repVendor"] = {
			BabbleFaction["Argent Dawn"],
			BabbleFaction["Revered"],
			10856,
			11536,
			10857,
		},
	},
	[18560] = {
		250,
		2,
		["vendor"] = {
			11189,
		},
	},
	[26752] = {
		355,
		2,
		["vendor"] = {
			22213,
			29511,
		},
	},
	[26784] = {
		370,
		2,
		["mobDrop"] = {
			19220,
		},
	},
	[55999] = {
		400,
		7,
	},
	[56015] = {
		395,
		1,
	},
	[56031] = {
		350,
		1,
	},
	[12049] = {
		205,
		1,
	},
	[12053] = {
		215,
		1,
	},
	[12055] = {
		215,
		1,
	},
	[8764] = {
		170,
		1,
	},
	[26745] = {
		300,
		1,
	},
	[8784] = {
		165,
		7,
	},
	[18438] = {
		285,
		1,
		7,
	},
	[18402] = {
		255,
		1,
	},
	[18410] = {
		265,
		1,
	},
	[18418] = {
		275,
		2,
		["mobDrop"] = {
			7037,
		},
	},
	[18423] = {
		280,
		1,
	},
	[18434] = {
		280,
		2,
		["mobDrop"] = {
			7037,
		},
	},
	[18442] = {
		290,
		1,
	},
	[18450] = {
		300,
		1,
	},
	[7639] = {
		100,
		2,
		["limitedVendor"] = {
			843,
			1,
			1347,
			1,
			2394,
			1,
			3364,
			1,
			5944,
			1,
		},
	},
	--High Risk
		--classic


		[968403] = {300, 2, vendor = {970032}},
		[968406] = {300, 2, vendor = {970026}},
		[968409] = {300, 2, vendor = {970022}},
		[968412] = {300, 2, vendor = {970023}},
		[968415] = {300, 2, vendor = {970028}},
		[968418] = {300, 2, vendor = {970024}},
		[968421] = {300, 2, vendor = {970018}},
		[968424] = {300, 2, vendor = {970019}},
		[968427] = {300, 2, vendor = {970034}},
		[968430] = {300, 2, vendor = {970031}},
		[968433] = {300, 2, vendor = {970025}},
		[968404] = {300, 2, vendor = {970032}},
		[968407] = {300, 2, vendor = {970026}},
		[968410] = {300, 2, vendor = {970022}},
		[968413] = {300, 2, vendor = {970023}},
		[968416] = {300, 2, vendor = {970028}},
		[968419] = {300, 2, vendor = {970024}},
		[968422] = {300, 2, vendor = {970018}},
		[968425] = {300, 2, vendor = {970019}},
		[968428] = {300, 2, vendor = {970034}},
		[968431] = {300, 2, vendor = {970031}},
		[968434] = {300, 2, vendor = {970025}},
		[968019] = {300, 2, vendor = {970006}},
		[968022] = {300, 2, vendor = {970006}},
		[968025] = {300, 2, vendor = {970000}},
		[968028] = {300, 2, vendor = {970011}},
		[968031] = {300, 2, vendor = {970007}},
		[968034] = {300, 2, vendor = {970002}},
		[968037] = {300, 2, vendor = {970004}},
		[968040] = {300, 2, vendor = {970001}},
		[968020] = {300, 2, vendor = {970006}},
		[968023] = {300, 2, vendor = {970006}},
		[968026] = {300, 2, vendor = {970000}},
		[968029] = {300, 2, vendor = {970011}},
		[968032] = {300, 2, vendor = {970007}},
		[968035] = {300, 2, vendor = {970002}},
		[968038] = {300, 2, vendor = {970004}},
		[968041] = {300, 2, vendor = {970001}},
		[968001] = {300, 2, vendor = {970000}},
		[968004] = {300, 2, vendor = {970001}},
		[968007] = {300, 2, vendor = {970002}},
		[968010] = {300, 2, vendor = {970003}},
		[968013] = {300, 2, vendor = {970004}},
		[968016] = {300, 2, vendor = {970005}},
		[968002] = {300, 2, vendor = {970000}},
		[968005] = {300, 2, vendor = {970001}},
		[968008] = {300, 2, vendor = {970002}},
		[968011] = {300, 2, vendor = {970003}},
		[968014] = {300, 2, vendor = {970004}},
		[968017] = {300, 2, vendor = {970005}},
		[968043] = {300, 2, vendor = {970013}},
		[968046] = {300, 2, vendor = {970005}},
		[968049] = {300, 2, vendor = {970014}},
		[968052] = {300, 2, vendor = {970010}},
		[968055] = {300, 2, vendor = {970008}},
		[968058] = {300, 2, vendor = {970012}},
		[968044] = {300, 2, vendor = {970013}},
		[968047] = {300, 2, vendor = {970005}},
		[968050] = {300, 2, vendor = {970014}},
		[968053] = {300, 2, vendor = {970010}},
		[968056] = {300, 2, vendor = {970008}},
		[968059] = {300, 2, vendor = {970012}},
		[968677] = {300, 2, vendor = {970010}},
		[968680] = {300, 2, vendor = {970016}},
		[968683] = {300, 2, vendor = {970013}},
		[968686] = {300, 2, vendor = {970003}},
		[968689] = {300, 2, vendor = {970017}},
		[968692] = {300, 2, vendor = {970012}},
		[968695] = {300, 2, vendor = {970014}},
		[968698] = {300, 2, vendor = {970007}},
		[968701] = {300, 2, vendor = {970009}},
		[968770] = {300, 2, vendor = {970015}},
		[968678] = {300, 2, vendor = {970010}},
		[968681] = {300, 2, vendor = {970016}},
		[968684] = {300, 2, vendor = {970013}},
		[968687] = {300, 2, vendor = {970003}},
		[968690] = {300, 2, vendor = {970017}},
		[968693] = {300, 2, vendor = {970012}},
		[968696] = {300, 2, vendor = {970014}},
		[968699] = {300, 2, vendor = {970007}},
		[968702] = {300, 2, vendor = {970009}},
		[968771] = {300, 2, vendor = {970015}},
		[968061] = {300, 2, vendor = {970015}},
		[968064] = {300, 2, vendor = {970017}},
		[968067] = {300, 2, vendor = {970009}},
		[968070] = {300, 2, vendor = {970016}},
		[968073] = {300, 2, vendor = {970008}},
		[968076] = {300, 2, vendor = {970011}},
		[968062] = {300, 2, vendor = {970015}},
		[968065] = {300, 2, vendor = {970017}},
		[968068] = {300, 2, vendor = {970009}},
		[968071] = {300, 2, vendor = {970016}},
		[968074] = {300, 2, vendor = {970008}},
		[968077] = {300, 2, vendor = {970011}},
		[968280] = {300, 2, vendor = {970018}},
		[968283] = {300, 2, vendor = {970004}},
		[968286] = {300, 2, vendor = {970022}},
		[968289] = {300, 2, vendor = {970029}},
		[968292] = {300, 2, vendor = {970035}},
		[968295] = {300, 2, vendor = {970040}},
		[968298] = {300, 2, vendor = {970034}},
		[968301] = {300, 2, vendor = {970036}},
		[968304] = {300, 2, vendor = {970026}},
		[968307] = {300, 2, vendor = {970042}},
		[968310] = {300, 2, vendor = {970033}},
		[968313] = {300, 2, vendor = {970035}},
		[968316] = {300, 2, vendor = {970042}},
		[968319] = {300, 2, vendor = {970028}},
		[968322] = {300, 2, vendor = {970030}},
		[968325] = {300, 2, vendor = {970029}},
		[968328] = {300, 2, vendor = {970039}},
		[968331] = {300, 2, vendor = {970041}},
		[968334] = {300, 2, vendor = {970032}},
		[968337] = {300, 2, vendor = {970038}},
		[968340] = {300, 2, vendor = {970037}},
		[968343] = {300, 2, vendor = {970025}},
		[968346] = {300, 2, vendor = {970021}},
		[968349] = {300, 2, vendor = {970020}},
		[968352] = {300, 2, vendor = {970037}},
		[968355] = {300, 2, vendor = {970038}},
		[968358] = {300, 2, vendor = {970032}},
		[968361] = {300, 2, vendor = {970027}},
		[968364] = {300, 2, vendor = {970040}},
		[968367] = {300, 2, vendor = {970021}},
		[968370] = {300, 2, vendor = {970020}},
		[968373] = {300, 2, vendor = {970031}},
		[968376] = {300, 2, vendor = {970030}},
		[968379] = {300, 2, vendor = {970041}},
		[968382] = {300, 2, vendor = {970024}},
		[968385] = {300, 2, vendor = {970036}},
		[968388] = {300, 2, vendor = {970027}},
		[968391] = {300, 2, vendor = {970023}},
		[968394] = {300, 2, vendor = {970034}},
		[968397] = {300, 2, vendor = {970019}},
		[968400] = {300, 2, vendor = {970039}},
		[968281] = {300, 2, vendor = {970018}},
		[968284] = {300, 2, vendor = {970004}},
		[968287] = {300, 2, vendor = {970022}},
		[968290] = {300, 2, vendor = {970029}},
		[968293] = {300, 2, vendor = {970035}},
		[968296] = {300, 2, vendor = {970040}},
		[968299] = {300, 2, vendor = {970034}},
		[968302] = {300, 2, vendor = {970036}},
		[968305] = {300, 2, vendor = {970026}},
		[968308] = {300, 2, vendor = {970042}},
		[968311] = {300, 2, vendor = {970033}},
		[968314] = {300, 2, vendor = {970035}},
		[968317] = {300, 2, vendor = {970042}},
		[968320] = {300, 2, vendor = {970028}},
		[968323] = {300, 2, vendor = {970030}},
		[968326] = {300, 2, vendor = {970029}},
		[968329] = {300, 2, vendor = {970039}},
		[968332] = {300, 2, vendor = {970041}},
		[968335] = {300, 2, vendor = {970032}},
		[968338] = {300, 2, vendor = {970038}},
		[968341] = {300, 2, vendor = {970037}},
		[968344] = {300, 2, vendor = {970025}},
		[968347] = {300, 2, vendor = {970021}},
		[968350] = {300, 2, vendor = {970020}},
		[968353] = {300, 2, vendor = {970037}},
		[968356] = {300, 2, vendor = {970038}},
		[968359] = {300, 2, vendor = {970032}},
		[968362] = {300, 2, vendor = {970027}},
		[968365] = {300, 2, vendor = {970040}},
		[968368] = {300, 2, vendor = {970021}},
		[968371] = {300, 2, vendor = {970020}},
		[968374] = {300, 2, vendor = {970031}},
		[968377] = {300, 2, vendor = {970030}},
		[968380] = {300, 2, vendor = {970041}},
		[968383] = {300, 2, vendor = {970024}},
		[968386] = {300, 2, vendor = {970036}},
		[968389] = {300, 2, vendor = {970027}},
		[968392] = {300, 2, vendor = {970023}},
		[968395] = {300, 2, vendor = {970034}},
		[968398] = {300, 2, vendor = {970019}},
		[968401] = {300, 2, vendor = {970039}},

		--tbc
		[979362]	= { 375, 8, 35 },
		[979364]	= { 375, 8, 35 },
		[979366]	= { 375, 8, 35 },
		[979368]	= { 375, 8, 35 },
		[979370]	= { 375, 8, 35 },
		[979372]	= { 375, 8, 35 },
		[979374]	= { 375, 8, 35 },
		[979376]	= { 375, 8, 35 },
		[979378]	= { 375, 8, 35 },
		[979380]	= { 375, 8, 35 },
		[979382]	= { 375, 8, 35 },
		[979363]	= { 375, 8, 35 },
		[979365]	= { 375, 8, 35 },
		[979367]	= { 375, 8, 35 },
		[979369]	= { 375, 8, 35 },
		[979371]	= { 375, 8, 35 },
		[979373]	= { 375, 8, 35 },
		[979375]	= { 375, 8, 35 },
		[979377]	= { 375, 8, 35 },
		[979379]	= { 375, 8, 35 },
		[979381]	= { 375, 8, 35 },
		[979383]	= { 375, 8, 35 },
		[979534]	= { 375, 8, 35 },
		[979536]	= { 375, 8, 35 },
		[979538]	= { 375, 8, 35 },
		[979540]	= { 375, 8, 35 },
		[979542]	= { 375, 8, 35 },
		[979544]	= { 375, 8, 35 },
		[979546]	= { 375, 8, 35 },
		[979548]	= { 375, 8, 35 },
		[979535]	= { 375, 8, 35 },
		[979537]	= { 375, 8, 35 },
		[979539]	= { 375, 8, 35 },
		[979541]	= { 375, 8, 35 },
		[979543]	= { 375, 8, 35 },
		[979545]	= { 375, 8, 35 },
		[979547]	= { 375, 8, 35 },
		[979549]	= { 375, 8, 35 },
		[979522]	= { 375, 8, 35 },
		[979524]	= { 375, 8, 35 },
		[979526]	= { 375, 8, 35 },
		[979528]	= { 375, 8, 35 },
		[979530]	= { 375, 8, 35 },
		[979532]	= { 375, 8, 35 },
		[979523]	= { 375, 8, 35 },
		[979525]	= { 375, 8, 35 },
		[979527]	= { 375, 8, 35 },
		[979529]	= { 375, 8, 35 },
		[979531]	= { 375, 8, 35 },
		[979533]	= { 375, 8, 35 },
		[979550]	= { 375, 8, 35 },
		[979552]	= { 375, 8, 35 },
		[979554]	= { 375, 8, 35 },
		[979556]	= { 375, 8, 35 },
		[979558]	= { 375, 8, 35 },
		[979560]	= { 375, 8, 35 },
		[979551]	= { 375, 8, 35 },
		[979553]	= { 375, 8, 35 },
		[979555]	= { 375, 8, 35 },
		[979557]	= { 375, 8, 35 },
		[979559]	= { 375, 8, 35 },
		[979561]	= { 375, 8, 35 },
		[1968677]	= { 375, 8, 35 },
		[1968680]	= { 375, 8, 35 },
		[1968683]	= { 375, 8, 35 },
		[1968686]	= { 375, 8, 35 },
		[1968689]	= { 375, 8, 35 },
		[1968692]	= { 375, 8, 35 },
		[1968695]	= { 375, 8, 35 },
		[1968698]	= { 375, 8, 35 },
		[1968701]	= { 375, 8, 35 },
		[1968770]	= { 375, 8, 35 },
		[1968678]	= { 375, 8, 35 },
		[1968681]	= { 375, 8, 35 },
		[1968684]	= { 375, 8, 35 },
		[1968687]	= { 375, 8, 35 },
		[1968690]	= { 375, 8, 35 },
		[1968693]	= { 375, 8, 35 },
		[1968696]	= { 375, 8, 35 },
		[1968699]	= { 375, 8, 35 },
		[1968702]	= { 375, 8, 35 },
		[1968771]	= { 375, 8, 35 },
		[979562]	= { 375, 8, 35 },
		[979564]	= { 375, 8, 35 },
		[979566]	= { 375, 8, 35 },
		[979568]	= { 375, 8, 35 },
		[979570]	= { 375, 8, 35 },
		[979572]	= { 375, 8, 35 },
		[979563]	= { 375, 8, 35 },
		[979565]	= { 375, 8, 35 },
		[979567]	= { 375, 8, 35 },
		[979569]	= { 375, 8, 35 },
		[979571]	= { 375, 8, 35 },
		[979573]	= { 375, 8, 35 },
		[979639]	= { 375, 8, 35 },
		[979641]	= { 375, 8, 35 },
		[979643]	= { 375, 8, 35 },
		[979645]	= { 375, 8, 35 },
		[979647]	= { 375, 8, 35 },
		[979649]	= { 375, 8, 35 },
		[979651]	= { 375, 8, 35 },
		[979653]	= { 375, 8, 35 },
		[979655]	= { 375, 8, 35 },
		[979640]	= { 375, 8, 35 },
		[979642]	= { 375, 8, 35 },
		[979644]	= { 375, 8, 35 },
		[979646]	= { 375, 8, 35 },
		[979648]	= { 375, 8, 35 },
		[979650]	= { 375, 8, 35 },
		[979652]	= { 375, 8, 35 },
		[979654]	= { 375, 8, 35 },
		[979656]	= { 375, 8, 35 },
		[979384]	= { 375, 8, 35 },
		[979386]	= { 375, 8, 35 },
		[979388]	= { 375, 8, 35 },
		[979390]	= { 375, 8, 35 },
		[979392]	= { 375, 8, 35 },
		[979394]	= { 375, 8, 35 },
		[979396]	= { 375, 8, 35 },
		[979398]	= { 375, 8, 35 },
		[979463]	= { 375, 8, 35 },
		[979465]	= { 375, 8, 35 },
		[979447]	= { 375, 8, 35 },
		[979445]	= { 375, 8, 35 },
		[979447]	= { 375, 8, 35 },
		[979449]	= { 375, 8, 35 },
		[979451]	= { 375, 8, 35 },
		[979400]	= { 375, 8, 35 },
		[979402]	= { 375, 8, 35 },
		[979404]	= { 375, 8, 35 },
		[979406]	= { 375, 8, 35 },
		[979421]	= { 375, 8, 35 },
		[979423]	= { 375, 8, 35 },
		[979425]	= { 375, 8, 35 },
		[979427]	= { 375, 8, 35 },
		[979429]	= { 375, 8, 35 },
		[979431]	= { 375, 8, 35 },
		[979441]	= { 375, 8, 35 },
		[979408]	= { 375, 8, 35 },
		[979410]	= { 375, 8, 35 },
		[979413]	= { 375, 8, 35 },
		[979415]	= { 375, 8, 35 },
		[979417]	= { 375, 8, 35 },
		[979419]	= { 375, 8, 35 },
		[979433]	= { 375, 8, 35 },
		[979435]	= { 375, 8, 35 },
		[979437]	= { 375, 8, 35 },
		[979439]	= { 375, 8, 35 },
		[979453]	= { 375, 8, 35 },
		[979455]	= { 375, 8, 35 },
		[979457]	= { 375, 8, 35 },
		[979459]	= { 375, 8, 35 },
		[979461]	= { 375, 8, 35 },
		[979385]	= { 375, 8, 35 },
		[979387]	= { 375, 8, 35 },
		[979389]	= { 375, 8, 35 },
		[979391]	= { 375, 8, 35 },
		[979393]	= { 375, 8, 35 },
		[979395]	= { 375, 8, 35 },
		[979397]	= { 375, 8, 35 },
		[979399]	= { 375, 8, 35 },
		[979464]	= { 375, 8, 35 },
		[979466]	= { 375, 8, 35 },
		[979444]	= { 375, 8, 35 },
		[979446]	= { 375, 8, 35 },
		[979448]	= { 375, 8, 35 },
		[979450]	= { 375, 8, 35 },
		[979452]	= { 375, 8, 35 },
		[979401]	= { 375, 8, 35 },
		[979403]	= { 375, 8, 35 },
		[979405]	= { 375, 8, 35 },
		[979407]	= { 375, 8, 35 },
		[979422]	= { 375, 8, 35 },
		[979424]	= { 375, 8, 35 },
		[979426]	= { 375, 8, 35 },
		[979428]	= { 375, 8, 35 },
		[979430]	= { 375, 8, 35 },
		[979432]	= { 375, 8, 35 },
		[979442]	= { 375, 8, 35 },
		[979409]	= { 375, 8, 35 },
		[979412]	= { 375, 8, 35 },
		[979414]	= { 375, 8, 35 },
		[979416]	= { 375, 8, 35 },
		[979418]	= { 375, 8, 35 },
		[979420]	= { 375, 8, 35 },
		[979434]	= { 375, 8, 35 },
		[979436]	= { 375, 8, 35 },
		[979438]	= { 375, 8, 35 },
		[979440]	= { 375, 8, 35 },
		[979454]	= { 375, 8, 35 },
		[979456]	= { 375, 8, 35 },
		[979458]	= { 375, 8, 35 },
		[979460]	= { 375, 8, 35 },
		[979462]	= { 375, 8, 35 },

};

-------------------------------------------------------------------------------
-- Mined via Data-tools
-- Table is Public Domain now
-- Look up table of Spell IDs to the recipe which trains them.
-------------------------------------------------------------------------------
AtlasLoot_CraftingData["SpellToRecipe"] = {
	-------------------------------------------------------------------------------
	-- First Aid
	-------------------------------------------------------------------------------
	[7929] = 16112, 	[7935] = 6454, 		[10840] = 16113, 	[23787] = 19442,
	[27032] = 21992, 	[27033] = 21993, 	[45546] = 39152,

	-------------------------------------------------------------------------------
	-- Alchemy
	-------------------------------------------------------------------------------
	[2333] = 3396, 		[2335] = 2555, 		[3172] = 3393, 		[3174] = 3394,
	[3175] = 3395, 		[3188] = 6211, 		[3230] = 2553, 		[3449] = 6068,
	[3450] = 3830, 		[3451] = 3831, 		[3453] = 3832, 		[3454] = 14634,
	[4508] = 4597, 		[4942] = 4624, 		[6617] = 5640, 		[6618] = 5643,
	[6624] = 5642, 		[7255] = 6053, 		[7256] = 6054, 		[7257] = 6055,
	[7258] = 6056, 		[7259] = 6057, 		[8240] = 6663, 		[11453] = 9293,
	[11456] = 10644, 	[11458] = 9294, 	[11459] = 9303, 	[11464] = 9295,
	[11466] = 9296, 	[11468] = 9297, 	[11472] = 9298, 	[11473] = 9302,
	[11476] = 9301, 	[11477] = 9300, 	[11479] = 9304, 	[11480] = 9305,
	[17187] = 12958, 	[17552] = 13476, 	[17553] = 13477, 	[17554] = 13478,
	[17555] = 13479, 	[17556] = 13480, 	[17557] = 13481, 	[17559] = 13482,
	[17560] = 13483, 	[17561] = 13484, 	[17562] = 13485, 	[17563] = 13486,
	[17564] = 13487, 	[17565] = 13488, 	[17566] = 13489, 	[17570] = 13490,
	[17571] = 13491, 	[17572] = 13492, 	[17573] = 13493, 	[17574] = 13494,
	[17575] = 13495, 	[17576] = 13496, 	[17577] = 13497, 	[17578] = 13499,
	[17580] = 13501, 	[17632] = 13517, 	[17634] = 13518, 	[17635] = 31354,
	[17636] = 31356, 	[17637] = 31355, 	[17638] = 31357, 	[21923] = 17709,
	[22732] = 18257, 	[24365] = 20011, 	[24366] = 20012, 	[24367] = 20013,
	[24368] = 20014, 	[25146] = 20761, 	[26277] = 21547, 	[28543] = 22900,
	[28546] = 22901, 	[28549] = 22902, 	[28550] = 22903, 	[28552] = 22904,
	[28553] = 24001, 	[28554] = 22906, 	[28555] = 22907, 	[28556] = 22908,
	[28557] = 22909, 	[28558] = 22910, 	[28562] = 22911, 	[28563] = 22912,
	[28564] = 35295, 	[28565] = 22914, 	[28566] = 22915, 	[28567] = 22916,
	[28568] = 30443, 	[28569] = 22918, 	[28570] = 22919, 	[28571] = 22920,
	[28572] = 22921, 	[28573] = 22922, 	[28575] = 22923, 	[28576] = 22924,
	[28577] = 22925, 	[28578] = 35294, 	[28579] = 22927, 	[29688] = 23574,
	[32765] = 25869, 	[32766] = 29232, 	[38960] = 31680, 	[38961] = 31682,
	[38962] = 31681, 	[39637] = 32070, 	[39639] = 32071, 	[42736] = 33209,
	[47046] = 35752, 	[47048] = 35753, 	[47049] = 35754, 	[47050] = 35755,
	[53936] = 44564, 	[53937] = 44566, 	[53938] = 44568, 	[53939] = 44565,
	[53942] = 44567,

	-------------------------------------------------------------------------------
	-- Blacksmithing
	-------------------------------------------------------------------------------
	[2667] = 2881, 		[2673] = 5578, 		[3295] = 2883, 		[3297] = 3608,
	[3321] = 3609, 		[3325] = 3610, 		[3330] = 2882, 		[3334] = 3611,
	[3336] = 3612, 		[3492] = 12162, 	[3493] = 3866, 		[3494] = 10858,
	[3495] = 3867, 		[3496] = 12163, 	[3497] = 3868, 		[3498] = 12164,
	[3500] = 3869, 		[3503] = 6047, 		[3504] = 3870, 		[3505] = 3871,
	[3507] = 3872, 		[3511] = 3873, 		[3513] = 3874, 		[3515] = 3875,
	[6518] = 5543, 		[7221] = 6044, 		[7222] = 6045, 		[7224] = 6046,
	[8367] = 6735, 		[9811] = 7978, 		[9813] = 7979, 		[9814] = 7980,
	[9818] = 7981, 		[9820] = 7982, 		[9933] = 7975, 		[9937] = 7995,
	[9939] = 7976, 		[9945] = 7983, 		[9950] = 7984, 		[9952] = 7985,
	[9964] = 7989, 		[9966] = 7991, 		[9970] = 7990, 		[9995] = 7992,
	[9997] = 8029, 		[10005] = 7993, 	[10009] = 8028,		[10013] = 8030,
	[11454] = 10713, 	[11643] = 9367, 	[12259] = 10424, 	[15292] = 11610,
	[15293] = 11614, 	[15294] = 11611, 	[15295] = 11615, 	[15296] = 11612,
	[15973] = 12261, 	[16642] = 12682, 	[16643] = 12683, 	[16644] = 12684,
	[16645] = 12685, 	[16646] = 12687, 	[16647] = 12688, 	[16648] = 12689,
	[16649] = 12690, 	[16650] = 12691, 	[16651] = 12692, 	[16652] = 12693,
	[16653] = 12694, 	[16654] = 12695, 	[16655] = 12699, 	[16656] = 12697,
	[16657] = 12700, 	[16658] = 12701, 	[16659] = 12702, 	[16660] = 12698,
	[16661] = 12703, 	[16662] = 12704, 	[16663] = 12705, 	[16664] = 12706,
	[16665] = 12707, 	[16667] = 12696, 	[16724] = 12711, 	[16725] = 12713,
	[16726] = 12714, 	[16728] = 12716, 	[16729] = 12717, 	[16730] = 12715,
	[16731] = 12718, 	[16732] = 12719, 	[16741] = 12720, 	[16742] = 12725,
	[16744] = 12726, 	[16745] = 12727, 	[16746] = 12728, 	[16969] = 12819,
	[16970] = 12821, 	[16971] = 12823, 	[16973] = 12824, 	[16978] = 12825,
	[16983] = 12827, 	[16984] = 12828, 	[16985] = 12830, 	[16988] = 12833,
	[16990] = 12834, 	[16991] = 12835, 	[16992] = 12836, 	[16993] = 12837,
	[16994] = 12838, 	[16995] = 12839, 	[20872] = 17049, 	[20873] = 17053,
	[20874] = 17051, 	[20876] = 17052, 	[20890] = 17059, 	[20897] = 17060,
	[21161] = 18592, 	[21913] = 17706, 	[22757] = 18264, 	[23628] = 19202,
	[23629] = 19204, 	[23632] = 19203, 	[23633] = 19205, 	[23636] = 19206,
	[23637] = 19207, 	[23638] = 19208, 	[23639] = 19209, 	[23650] = 19210,
	[23652] = 19211, 	[23653] = 19212, 	[24136] = 19776, 	[24137] = 19777,
	[24138] = 19778, 	[24139] = 19779, 	[24140] = 19780, 	[24141] = 19781,
	[24399] = 20040, 	[24912] = 20553, 	[24913] = 20555, 	[24914] = 20554,
	[27585] = 22209, 	[27586] = 22219, 	[27587] = 22222, 	[27588] = 22214,
	[27589] = 22220, 	[27590] = 22221, 	[27829] = 22388, 	[27830] = 22390,
	[27832] = 22389, 	[28461] = 22766, 	[28462] = 22767, 	[28463] = 22768,
	[29566] = 23590, 	[29568] = 23591, 	[29569] = 23592, 	[29571] = 23593,
	[29603] = 23594, 	[29605] = 23595, 	[29606] = 23596, 	[29608] = 23597,
	[29610] = 23599, 	[29611] = 23598, 	[29613] = 23600, 	[29614] = 23601,
	[29615] = 23602, 	[29616] = 23603, 	[29617] = 23604, 	[29619] = 23605,
	[29620] = 23606, 	[29621] = 23607, 	[29622] = 23621, 	[29628] = 23608,
	[29629] = 23609, 	[29630] = 23610, 	[29642] = 23611, 	[29643] = 23612,
	[29645] = 23613, 	[29648] = 23615, 	[29649] = 23617, 	[29656] = 23618,
	[29657] = 24002, 	[29658] = 23620, 	[29662] = 23622, 	[29663] = 23623,
	[29664] = 23624, 	[29668] = 23625, 	[29669] = 23626, 	[29671] = 23627,
	[29672] = 23628, 	[29692] = 23629, 	[29693] = 23630, 	[29694] = 23631,
	[29695] = 23632, 	[29696] = 23633, 	[29697] = 23634, 	[29698] = 23635,
	[29699] = 23636, 	[29700] = 23637, 	[29728] = 23638, 	[29729] = 23639,
	[32285] = 25526, 	[32656] = 25846, 	[32657] = 25847, 	[34608] = 28632,
	[36389] = 30321, 	[36390] = 30322, 	[36391] = 30323, 	[36392] = 30324,
	[38473] = 31390, 	[38475] = 31391, 	[38476] = 31392, 	[38477] = 31393,
	[38478] = 31394, 	[38479] = 31395, 	[40033] = 32441, 	[40034] = 32442,
	[40035] = 32443, 	[40036] = 32444, 	[41132] = 32736, 	[41133] = 32737,
	[41134] = 32738, 	[41135] = 32739, 	[42688] = 35296, 	[43549] = 33792,
	[43846] = 33954, 	[46140] = 35208, 	[46141] = 35209, 	[46142] = 35210,
	[46144] = 35211, 	[54978] = 41124, 	[54979] = 41123, 	[54980] = 41120,
	[54981] = 41122, 	[62202] = 44938, 	[63187] = 45088, 	[63188] = 45089,
	[63189] = 45090, 	[63190] = 45091, 	[63191] = 45092, 	[63192] = 45093,
	[67091] = 47622, 	[67130] = 47640, 	[67092] = 47623, 	[67131] = 47641,
	[67096] = 47627, 	[67135] = 47642, 	[67095] = 47626, 	[67134] = 47643,
	[67093] = 47624, 	[67132] = 47644, 	[67094] = 47625, 	[67133] = 47645,
	[70563] = 49970,	[70567] = 49973,	[70565] = 49971,	[70566] = 49972,
	[70568] = 49974,	[70562] = 49969,

	-------------------------------------------------------------------------------
	-- Cooking
	-------------------------------------------------------------------------------
	[2542] = 2697, 		[2543] = 728, 		[2545] = 2698, 		[2547] = 2699,
	[2548] = 2700, 		[2549] = 2701, 		[2795] = 2889, 		[3370] = 3678,
	[3371] = 3679, 		[3372] = 3680, 		[3373] = 3681, 		[3376] = 3682,
	[3377] = 3683, 		[3397] = 3734, 		[3398] = 3735, 		[3399] = 3736,
	[3400] = 3737, 		[4094] = 4609, 		[6412] = 5482, 		[6413] = 5483,
	[6414] = 5484, 		[6415] = 5485, 		[6416] = 5486, 		[6417] = 44977,
	[6418] = 5488, 		[6419] = 5489, 		[6501] = 5528, 		[7213] = 6039,
	[7751] = 6325, 		[7752] = 6326, 		[7753] = 6328, 		[7754] = 6329,
	[7755] = 6330, 		[7827] = 6368, 		[7828] = 6369, 		[8238] = 6661,
	[8607] = 6892, 		[9513] = 18160, 	[15853] = 12227, 	[15855] = 12228,
	[15856] = 12229, 	[15861] = 12231, 	[15863] = 12232, 	[15865] = 12233,
	[15906] = 12239, 	[15910] = 12240, 	[15915] = 16111, 	[15933] = 16110,
	[15935] = 12226, 	[18238] = 13939, 	[18239] = 13940, 	[18240] = 13942,
	[18241] = 13941, 	[18242] = 13943, 	[18243] = 13945, 	[18244] = 13946,
	[18245] = 13947, 	[18246] = 13948, 	[18247] = 13949, 	[20626] = 16767,
	[20916] = 17062, 	[21143] = 17200, 	[21144] = 17201, 	[22480] = 18046,
	[22761] = 18267, 	[24418] = 20075, 	[25659] = 21025, 	[25704] = 21099,
	[25954] = 21219, 	[28267] = 22647, 	[33276] = 27685, 	[33277] = 27686,
	[33278] = 27687, 	[33279] = 27684, 	[33284] = 27688, 	[33285] = 27689,
	[33286] = 27690, 	[33287] = 27691, 	[33288] = 27692, 	[33289] = 27693,
	[33290] = 27694, 	[33291] = 27695, 	[33292] = 27696, 	[33293] = 27697,
	[33294] = 27698, 	[33295] = 27699, 	[33296] = 27700, 	[36210] = 30156,
	[38867] = 31675, 	[38868] = 31674, 	[43707] = 33870, 	[43758] = 33871,
	[43761] = 33869, 	[43765] = 33873, 	[43772] = 33875, 	[43779] = 33925,
	[45022] = 34413, 	[45555] = 43018, 	[45556] = 43019, 	[45557] = 43020,
	[45558] = 43021, 	[45559] = 43022, 	[45567] = 43023, 	[45568] = 43024,
	[45570] = 43026, 	[45571] = 43025, 	[45695] = 34834, 	[46684] = 35564,
	[46688] = 35566, 	[53056] = 39644, 	[57423] = 43017, 	[57433] = 43027,
	[57434] = 43028, 	[57435] = 43029, 	[57436] = 43030, 	[57437] = 43031,
	[57438] = 43032, 	[57439] = 43033, 	[57440] = 43034, 	[57441] = 43035,
	[57442] = 43036, 	[57443] = 43037, 	[58512] = 43507, 	[58521] = 43508,
	[58523] = 43509, 	[58525] = 43510, 	[58527] = 43505, 	[58528] = 43506,
	[62350] = 44954,

	-------------------------------------------------------------------------------
	-- Enchanting
	-------------------------------------------------------------------------------
	[7443] = 6342, 		[7766] = 6344, 		[7776] = 6346, 		[7782] = 6347,
	[7786] = 6348, 		[7793] = 6349, 		[7859] = 6375, 		[7867] = 6377,
	[13380] = 11038, 	[13419] = 11039, 	[13464] = 11081, 	[13522] = 11098,
	[13536] = 11101, 	[13612] = 11150, 	[13617] = 11151, 	[13620] = 11152,
	[13646] = 11163, 	[13653] = 11164, 	[13655] = 11165, 	[13687] = 11167,
	[13689] = 11168, 	[13698] = 11166, 	[13817] = 11202, 	[13841] = 11203,
	[13846] = 11204, 	[13868] = 11205, 	[13882] = 11206, 	[13898] = 11207,
	[13915] = 11208, 	[13931] = 11223, 	[13933] = 11224, 	[13945] = 11225,
	[13947] = 11226, 	[15596] = 11813, 	[15596] = 45050,	[20009] = 16218,
 	[20010] = 16246, 	[20011] = 16251, 	[20012] = 16219, 	[20014] = 16216,
 	[20015] = 16224, 	[20016] = 16222,	[20017] = 16217, 	[20020] = 16215,
 	[20023] = 16245, 	[20024] = 16220,	[20025] = 16253, 	[20026] = 16221,
 	[20028] = 16242, 	[20029] = 16223,	[20030] = 16247, 	[20031] = 16250,
	[20032] = 16254, 	[20033] = 16248,	[20034] = 16252, 	[20035] = 16255,
	[20036] = 16249, 	[20051] = 16243,	[21931] = 17725, 	[22749] = 18259,
	[22750] = 18260, 	[23799] = 19444,	[23800] = 19445, 	[23801] = 19446,
	[23802] = 19447, 	[23803] = 19448,	[23804] = 19449, 	[25072] = 33153,
	[25072] = 20726, 	[25073] = 20727,	[25074] = 20728, 	[25078] = 20729,
	[25079] = 20730, 	[25080] = 33152,	[25080] = 20731, 	[25081] = 20732,
	[25082] = 20733, 	[25083] = 33149,	[25083] = 20734, 	[25084] = 20735,
	[25084] = 33150, 	[25084] = 33151,	[25086] = 20736, 	[25086] = 33148,
	[25124] = 20758, 	[25125] = 20752,	[25126] = 20753, 	[25127] = 20754,
	[25128] = 20755, 	[25129] = 20756,	[25130] = 20757, 	[27837] = 22392,
	[27906] = 22530, 	[27911] = 22531,	[27911] = 24000, 	[27913] = 22532,
	[27914] = 22533, 	[27917] = 22534,	[27920] = 22535, 	[27924] = 22536,
	[27926] = 22537, 	[27927] = 22538,	[27945] = 22539, 	[27946] = 22540,
	[27947] = 22541, 	[27948] = 35298,	[27948] = 22542, 	[27950] = 22543,
	[27951] = 22544, 	[27954] = 22545,	[27960] = 24003, 	[27960] = 22547,
	[27962] = 22548, 	[27967] = 22552,	[27968] = 22551, 	[27971] = 22554,
	[27972] = 22553, 	[27975] = 22555,	[27977] = 22556, 	[27981] = 22560,
	[27982] = 22561, 	[27984] = 22559,	[28003] = 22558, 	[28004] = 22557,
 	[28016] = 22562, 	[28019] = 22563,	[28022] = 22565, 	[32665] = 25848,
	[32667] = 25849, 	[33992] = 28270,	[33994] = 28271, 	[33997] = 28272,
	[33999] = 28273, 	[34003] = 28274,	[34005] = 28276, 	[34006] = 28277,
	[34007] = 35299, 	[34007] = 28279,	[34008] = 35297, 	[34008] = 28280,
	[34009] = 28282, 	[34010] = 28281,	[42620] = 33165, 	[42974] = 33307,
	[44483] = 37332, 	[44494] = 37333,	[44524] = 37344, 	[44556] = 37331,
	[44575] = 44484, 	[44576] = 44494,	[44588] = 37340, 	[44590] = 37334,
	[44591] = 37347, 	[44595] = 44473,	[44596] = 37330, 	[44621] = 37339,
	[44625] = 44485, 	[44631] = 37349,	[45765] = 34872, 	[46578] = 35498,
	[46594] = 35500, 	[47051] = 35756,	[47672] = 44471, 	[47898] = 44472,
	[47899] = 44488, 	[47901] = 44491,	[59619] = 44496, 	[59621] = 44492,
	[59625] = 44495, 	[60691] = 44483,	[60692] = 44489, 	[60707] = 44486,
 	[60714] = 44487, 	[60763] = 44490,	[60767] = 44498, 	[62256] = 44944,
	[62257] = 44945, 	[62948] = 45059,	[64441] = 46027, 	[64579] = 46348,
	[820034] = 816252,	[359012] = 816253,	[351501] = 816254,	[351535] = 2033307,

	-------------------------------------------------------------------------------
	--Engineering
	-------------------------------------------------------------------------------
	[3928] = 4408, 		[3933] = 4409, 		[3939] = 13309,		[3940] = 4410,
	[3944] = 4411, 		[3952] = 14639, 	[3954] = 4412, 		[3957] = 13308,
	[3959] = 4413, 		[3960] = 4414, 		[3966] = 4415, 		[3968] = 4416,
	[3969] = 13311, 	[3971] = 7742, 		[3972] = 4417, 		[3979] = 13310,
	[8243] = 6672, 		[8339] = 6716, 		[9269] = 7560, 		[9273] = 7561,
	[12587] = 10601, 	[12597] = 10602, 	[12607] = 10603, 	[12614] = 10604,
	[12615] = 10605, 	[12616] = 10606, 	[12617] = 10607, 	[12620] = 10608,
	[12624] = 10609, 	[15628] = 11828, 	[15633] = 11827, 	[19790] = 16041,
	[19791] = 16042, 	[19792] = 16043, 	[19793] = 16044, 	[19794] = 16045,
	[19795] = 16047, 	[19796] = 16048, 	[19799] = 16049, 	[19800] = 16051,
	[19814] = 16046, 	[19815] = 16050, 	[19819] = 16052, 	[19825] = 16053,
	[19830] = 16054, 	[19831] = 16055, 	[19833] = 16056, 	[21940] = 17720,
	[22793] = 18290, 	[22795] = 18292, 	[22797] = 18291, 	[23066] = 18647,
	[23067] = 18649, 	[23068] = 18648, 	[23069] = 18650, 	[23071] = 18651,
	[23077] = 18652, 	[23078] = 18653, 	[23079] = 18655, 	[23080] = 18656,
	[23081] = 18657, 	[23082] = 18658, 	[23096] = 18654, 	[23129] = 18661,
	[23507] = 19027, 	[24356] = 20000, 	[24357] = 20001, 	[26416] = 21724,
	[26417] = 21725, 	[26418] = 21726, 	[26420] = 21727, 	[26421] = 21728,
	[26422] = 21729, 	[26423] = 21730, 	[26424] = 21731, 	[26425] = 21732,
	[26426] = 21733, 	[26427] = 21734, 	[26428] = 21735, 	[26442] = 44919,
	[26443] = 44918, 	[28327] = 22729, 	[30313] = 23799, 	[30314] = 23800,
	[30315] = 23802, 	[30316] = 23803, 	[30317] = 23804, 	[30318] = 23805,
	[30325] = 23806, 	[30329] = 23807, 	[30332] = 23808, 	[30334] = 23809,
	[30337] = 23810, 	[30341] = 23811, 	[30344] = 23814, 	[30347] = 23815,
	[30348] = 23816, 	[30349] = 23817, 	[30547] = 23874, 	[30548] = 23888,
	[30551] = 35310, 	[30552] = 35311, 	[30556] = 23887, 	[32814] = 25887,
	[39895] = 32381, 	[43676] = 33804, 	[44391] = 34114, 	[46106] = 35191,
	[46107] = 35187, 	[46108] = 35189, 	[46109] = 35190, 	[46110] = 35192,
	[46111] = 35186, 	[46112] = 35193, 	[46113] = 35194, 	[46114] = 35195,
	[46115] = 35196, 	[46116] = 35197, 	[46697] = 35582,	[60866] = 44502,
 	[60867] = 44503, 	[72952] = 52022,	[72953] = 52023,

	-------------------------------------------------------------------------------
	--Inscription
	-------------------------------------------------------------------------------
	[71101] = 50166,  [71102] = 50168,  [71015] = 50167,

	-------------------------------------------------------------------------------
	--Jewelcrafting
	-------------------------------------------------------------------------------
	[25320] = 20856, 	[25323] = 20855, 	[25339] = 20854, 	[25610] = 20970,
	[25612] = 20971, 	[25617] = 20973, 	[25618] = 20974, 	[25619] = 20975,
	[25622] = 20976, 	[26873] = 21940, 	[26875] = 21941, 	[26878] = 21942,
	[26881] = 21943, 	[26882] = 21944, 	[26887] = 21945, 	[26896] = 21947,
	[26897] = 21948, 	[26900] = 21949, 	[26906] = 21952, 	[26909] = 21953,
	[26910] = 21954, 	[26912] = 21955, 	[26914] = 21956, 	[26915] = 21957,
	[28903] = 23130, 	[28905] = 23131, 	[28906] = 23133, 	[28907] = 23134,
	[28910] = 23135, 	[28912] = 23136, 	[28914] = 23137, 	[28915] = 23138,
	[28916] = 23140, 	[28917] = 23141, 	[28918] = 31359, 	[28924] = 23143,
	[28927] = 23145, 	[28933] = 23146, 	[28936] = 23147,
	[28938] = 23148, 	[28944] = 23149, 	[28947] = 23150, 	[28948] = 23151,
	[28950] = 23152, 	[28953] = 23153, 	[28955] = 23154, 	[28957] = 23155,
	[31053] = 24158, 	[31054] = 24159, 	[31055] = 24160, 	[31056] = 24161,
	[31057] = 24162, 	[31058] = 24163, 	[31060] = 24164, 	[31061] = 24165,
	[31062] = 24174, 	[31063] = 24175, 	[31064] = 24176, 	[31065] = 24177,
	[31066] = 24178, 	[31067] = 24166, 	[31068] = 24167, 	[31070] = 24168,
	[31071] = 24169, 	[31072] = 24170, 	[31076] = 24171, 	[31077] = 24172,
	[31078] = 24173, 	[31079] = 24179, 	[31080] = 31358, 	[31081] = 24181,
	[31082] = 24182, 	[31083] = 24183, 	[31084] = 24193, 	[31085] = 24194,
	[31087] = 24195, 	[31088] = 35305, 	[31089] = 35306, 	[31090] = 24197,
	[31091] = 24198, 	[31092] = 35304, 	[31094] = 24201, 	[31095] = 24202,
	[31096] = 24203, 	[31097] = 24204, 	[31098] = 35307, 	[31099] = 24206,
	[31100] = 24207, 	[31101] = 24208, 	[31102] = 24209, 	[31103] = 24210,
	[31104] = 24211, 	[31105] = 24212, 	[31106] = 24213, 	[31107] = 24214,
	[31108] = 24215, 	[31109] = 24216, 	[31110] = 24217, 	[31111] = 24218,
	[31112] = 24219, 	[31113] = 24220, 	[31149] = 24200, 	[32866] = 25902,
	[32867] = 25903, 	[32868] = 25905, 	[32869] = 25906, 	[32870] = 25904,
	[32871] = 25907, 	[32872] = 25909, 	[32873] = 25908, 	[32874] = 25910,
	[34069] = 28291, 	[34590] = 28596, 	[37855] = 30826, 	[38503] = 31401,
	[38504] = 31402, 	[39451] = 31870, 	[39452] = 31875, 	[39455] = 31871,
	[39458] = 31872, 	[39462] = 31877, 	[39463] = 31876, 	[39466] = 31873,
	[39467] = 31874, 	[39470] = 31878, 	[39471] = 31879, 	[39705] = 35244,
	[39706] = 35246, 	[39710] = 35250, 	[39711] = 35248, 	[39712] = 35245,
	[39713] = 35249, 	[39714] = 35247, 	[39715] = 35263, 	[39716] = 35264,
	[39717] = 35262, 	[39718] = 35265, 	[39719] = 35255, 	[39720] = 35260,
	[39721] = 35259, 	[39722] = 35256, 	[39723] = 35261, 	[39724] = 35258,
	[39725] = 35257, 	[39727] = 35243, 	[39728] = 35242, 	[39729] = 35238,
	[39730] = 35240, 	[39731] = 35239, 	[39732] = 35241, 	[39733] = 35267,
	[39734] = 35269, 	[39735] = 35268, 	[39736] = 35266, 	[39737] = 35270,
	[39738] = 35271, 	[39739] = 35252, 	[39740] = 35254, 	[39741] = 35251,
	[39742] = 35253, 	[39961] = 33622, 	[39963] = 32411, 	[42558] = 33305,
	[42588] = 33155, 	[42589] = 33156, 	[42590] = 33157, 	[42591] = 33158,
	[42592] = 33159, 	[42593] = 33160, 	[43493] = 33783, 	[44794] = 34689,
	[46122] = 35198, 	[46123] = 35538, 	[46124] = 35200, 	[46125] = 35201,
	[46126] = 35533, 	[46127] = 35203, 	[46403] = 35322, 	[46404] = 35323,
	[46405] = 35325, 	[46597] = 35502, 	[46601] = 35505, 	[46775] = 35695,
	[46776] = 35696, 	[46777] = 35697, 	[46778] = 35698, 	[46779] = 35699,
	[46803] = 35708, 	[47053] = 35769, 	[47054] = 35766, 	[47055] = 35767,
	[47056] = 35768, 	[48789] = 37504, 	[53830] = 41576, 	[53857] = 41559,
	[53865] = 41575, 	[53869] = 41574, 	[53875] = 41566, 	[53877] = 41562,
	[53879] = 41565, 	[53884] = 41563, 	[53885] = 41561, 	[53888] = 41564,
	[53917] = 41567, 	[53919] = 41572, 	[53921] = 41568, 	[53924] = 41571,
	[53929] = 41573, 	[53932] = 41570, 	[53933] = 41569, 	[53943] = 41560,
	[53945] = 41577, 	[53946] = 41718, 	[53948] = 41719, 	[53949] = 41578,
	[53950] = 41817, 	[53951] = 41790, 	[53952] = 42138, 	[53954] = 41581,
	[53955] = 41728, 	[53957] = 41720, 	[53958] = 41580, 	[53959] = 41791,
	[53960] = 41727, 	[53961] = 41579, 	[53962] = 41784, 	[53963] = 41747,
	[53964] = 41785, 	[53965] = 41725, 	[53966] = 41783, 	[53967] = 41701,
	[53968] = 41740, 	[53970] = 41796, 	[53971] = 41703, 	[53972] = 41820,
	[53973] = 41702, 	[53974] = 41726, 	[53975] = 41789, 	[53976] = 41777,
	[53977] = 41780, 	[53978] = 41734, 	[53979] = 41794, 	[53980] = 41582,
	[53981] = 41733, 	[53982] = 41792, 	[53983] = 41689, 	[53984] = 41686,
	[53985] = 41688, 	[53986] = 41730, 	[53987] = 41690, 	[53988] = 41721,
	[53990] = 41732, 	[53991] = 41687, 	[53992] = 41779, 	[53993] = 41722,
	[53994] = 41818, 	[53995] = 41795, 	[53996] = 41723, 	[53997] = 41698,
	[53998] = 41697, 	[54000] = 41738, 	[54001] = 41693, 	[54002] = 41699,
	[54003] = 41781, 	[54004] = 41782, 	[54005] = 41737, 	[54006] = 41694,
	[54008] = 41724, 	[54009] = 41696, 	[54010] = 41739, 	[54011] = 41692,
	[54012] = 41819, 	[54013] = 41736, 	[54014] = 41735, 	[54019] = 41793,
	[54023] = 41778, 	[55384] = 41705, 	[55387] = 41743, 	[55388] = 41744,
	[55389] = 41704, 	[55390] = 41786, 	[55392] = 41706, 	[55393] = 41742,
	[55395] = 41787, 	[55396] = 41708, 	[55397] = 41798, 	[55398] = 41799,
	[55400] = 41710, 	[55401] = 41797, 	[55403] = 41711, 	[55404] = 41709,
	[55405] = 41788, 	[55407] = 41707, 	[56049] = 42298, 	[56052] = 42301,
	[56053] = 42309, 	[56054] = 42299, 	[56055] = 42314, 	[56056] = 42302,
	[56074] = 42300, 	[56076] = 42303, 	[56077] = 42304, 	[56079] = 42305,
	[56081] = 42306, 	[56083] = 42307, 	[56084] = 42308, 	[56085] = 42310,
	[56086] = 42311, 	[56087] = 42312, 	[56088] = 42313, 	[56089] = 42315,
	[56496] = 42648, 	[56497] = 42649, 	[56498] = 42650, 	[56499] = 42651,
	[56500] = 42652, 	[56501] = 42653, 	[58147] = 43317, 	[58148] = 43318,
	[58149] = 43319, 	[58150] = 43320, 	[58492] = 43485, 	[58507] = 43497,
	[58954] = 43597,	[66556] = 46937,	[66447] = 46917,	[66429] = 46899,
	[66557] = 46938,	[66430] = 46900,	[66432] = 46902,	[66433] = 46903,
	[66497] = 46924,	[66561] = 46942,	[66434] = 46904,	[66498] = 46925,
	[66499] = 46926,	[66436] = 46906,	[66500] = 46927,	[66437] = 46907,
	[66501] = 46928,	[66565] = 46946,	[66438] = 46908,	[66502] = 46929,
	[66566] = 46947,	[66439] = 46909,	[66503] = 46930,	[66567] = 46948,
	[66440] = 46910,	[66504] = 46931,	[66441] = 46911,	[66505] = 46932,
	[66569] = 46950,	[66442] = 46912,	[66506] = 46933,	[66570] = 46951,
	[66443] = 46913,	[66444] = 46914,	[66572] = 46953,	[66445] = 46915,
	[66573] = 46956,	[66446] = 46916,	[66574] = 47007,	[66575] = 47008,
	[66448] = 46918,	[66576] = 47010,	[66449] = 46919,	[66577] = 47011,
	[66450] = 46920,	[66578] = 47012,	[66451] = 46921,	[66579] = 47015,
	[66452] = 46922,	[66580] = 47016,	[66453] = 46923,	[66581] = 47017,
	[66582] = 47018,	[66583] = 47019,	[66584] = 47020,	[66586] = 47022,
	[68253] = 49112,	[66338] = 46897,	[66571] = 46952,	[66564] = 46945,
	[66562] = 46943,	[66560] = 46941,	[66558] = 46939,	[66554] = 46935,
	[66559] = 46940,	[66585] = 47021,	[66555] = 46936,	[66587] = 47023,
	[66431] = 46901,	[66428] = 46898,	[66435] = 46905,	[66563] = 46944,
	[66553] = 46934,	[66568] = 46949,

	-------------------------------------------------------------------------------
	--Leatherworking
	-------------------------------------------------------------------------------
	[2158] = 2406, 		[2163] = 2407, 		[2164] = 2408, 		[2169] = 2409,
	[3762] = 4293, 		[3765] = 7360, 		[3767] = 4294, 		[3769] = 4296,
	[3771] = 4297, 		[3772] = 7613, 		[3773] = 4299, 		[3775] = 4298,
	[3777] = 4300, 		[3778] = 14635, 	[3779] = 4301, 		[4096] = 13287,
	[4097] = 13288, 	[5244] = 5083, 		[6702] = 5786, 		[6703] = 5787,
	[6704] = 5788, 		[6705] = 5789, 		[7133] = 5972, 		[7149] = 5973,
	[7153] = 5974, 		[7953] = 6474, 		[7954] = 6475, 		[7955] = 6476,
	[8322] = 6710, 		[9064] = 7288, 		[9070] = 7289, 		[9072] = 7290,
	[9146] = 7361, 		[9147] = 7362, 		[9148] = 7363, 		[9149] = 7364,
	[9195] = 7449, 		[9197] = 7450, 		[9202] = 7451, 		[9207] = 7452,
	[9208] = 7453, 		[10490] = 8384, 	[10509] = 8385, 	[10516] = 8409,
	[10520] = 8386, 	[10525] = 8395, 	[10529] = 8403, 	[10531] = 8387,
	[10533] = 8397, 	[10542] = 8398, 	[10544] = 8404, 	[10546] = 8405,
	[10554] = 8399, 	[10560] = 8389, 	[10562] = 8390, 	[10564] = 8400,
	[10566] = 8406, 	[10568] = 8401, 	[10570] = 8402, 	[10572] = 8407,
	[10574] = 8408, 	[19048] = 15724, 	[19049] = 15725, 	[19050] = 15726,
	[19051] = 15727, 	[19052] = 15728, 	[19053] = 15729, 	[19054] = 15730,
	[19055] = 15731, 	[19059] = 15732, 	[19060] = 15733, 	[19061] = 15734,
	[19062] = 15735, 	[19063] = 15737, 	[19064] = 15738, 	[19065] = 15739,
	[19066] = 15740, 	[19067] = 15741, 	[19068] = 20253, 	[19070] = 15743,
	[19071] = 15744, 	[19072] = 15745, 	[19073] = 15746, 	[19074] = 15747,
	[19075] = 15748, 	[19076] = 15749, 	[19077] = 15751, 	[19078] = 15752,
	[19079] = 15753, 	[19080] = 20254, 	[19081] = 15755, 	[19082] = 15756,
	[19083] = 15757, 	[19084] = 15758, 	[19085] = 15759, 	[19086] = 15760,
	[19087] = 15761, 	[19088] = 15762, 	[19089] = 15763, 	[19090] = 15764,
	[19091] = 15765, 	[19092] = 15768, 	[19093] = 15769, 	[19094] = 15770,
	[19095] = 15771, 	[19097] = 15772, 	[19098] = 15773, 	[19100] = 15774,
	[19101] = 15775, 	[19102] = 15776, 	[19103] = 15777, 	[19104] = 15779,
	[19107] = 15781, 	[20853] = 17022, 	[20854] = 17023, 	[20855] = 17025,
	[21943] = 17722, 	[22711] = 18239, 	[22727] = 18252, 	[22921] = 18514,
	[22922] = 18515, 	[22923] = 18516, 	[22926] = 18517, 	[22927] = 18518,
	[22928] = 18519, 	[23190] = 18731, 	[23399] = 18949, 	[23703] = 19326,
	[23704] = 19327, 	[23705] = 19328, 	[23706] = 19329, 	[23707] = 19330,
	[23708] = 19331, 	[23709] = 19332, 	[23710] = 19333, 	[24121] = 19769,
	[24122] = 19770, 	[24123] = 19771, 	[24124] = 19772, 	[24125] = 19773,
	[24703] = 20382, 	[24846] = 20506, 	[24847] = 20507, 	[24848] = 20508,
	[24849] = 20509, 	[24850] = 20510, 	[24851] = 20511, 	[24940] = 20576,
	[26279] = 21548, 	[28472] = 22771, 	[28473] = 22770, 	[28474] = 22769,
	[32455] = 25720, 	[32457] = 25721, 	[32458] = 25722, 	[32461] = 25725,
	[32482] = 25726, 	[32485] = 25728, 	[32487] = 25729, 	[32488] = 25731,
	[32489] = 25730, 	[32490] = 25732, 	[32493] = 25733, 	[32494] = 25734,
	[32495] = 25735, 	[32496] = 25736, 	[32497] = 25737, 	[32498] = 29213,
	[32499] = 29214, 	[32500] = 29215, 	[32501] = 29217, 	[32502] = 29219,
	[32503] = 29218, 	[35520] = 29669, 	[35521] = 29672, 	[35522] = 29673,
	[35523] = 29674, 	[35524] = 29675, 	[35525] = 29677, 	[35526] = 29682,
	[35527] = 29684, 	[35528] = 29691, 	[35529] = 29689, 	[35530] = 30444,
	[35531] = 29693, 	[35532] = 29698, 	[35533] = 29700, 	[35534] = 29701,
	[35535] = 29702, 	[35536] = 29703, 	[35537] = 29704, 	[35538] = 29713,
	[35539] = 34175, 	[35543] = 29717, 	[35544] = 34173, 	[35549] = 31361,
	[35554] = 31362, 	[35555] = 29720, 	[35557] = 29721, 	[35558] = 29723,
	[35559] = 35302, 	[35560] = 29725, 	[35561] = 29726, 	[35562] = 35303,
	[35563] = 29728, 	[35564] = 29729, 	[35567] = 29730, 	[35568] = 35300,
	[35572] = 29732, 	[35573] = 35301, 	[35574] = 29734, 	[36349] = 30301,
	[36351] = 30302, 	[36352] = 30303, 	[36353] = 30304, 	[36355] = 30305,
	[36357] = 30306, 	[36358] = 30307, 	[36359] = 30308, 	[39997] = 32429,
	[40001] = 32431, 	[40002] = 32432, 	[40003] = 32433, 	[40004] = 32434,
	[40005] = 32435, 	[40006] = 32436, 	[41156] = 32744, 	[41157] = 35523,
	[41158] = 35527, 	[41160] = 35528, 	[41161] = 35517, 	[41162] = 35524,
	[41163] = 35520, 	[41164] = 35521, 	[42546] = 33124, 	[42731] = 33205,
	[44359] = 34200, 	[44768] = 34218, 	[44953] = 34262, 	[45117] = 34491,
	[46132] = 35546, 	[46133] = 35541, 	[46134] = 35214, 	[46135] = 35215,
	[46136] = 35216, 	[46137] = 35217, 	[46138] = 35218, 	[46139] = 35549,
	[50970] = 44509, 	[50971] = 44510, 	[52733] = 32430,
	[57692] = 44559, 	[57694] = 44560, 	[57696] = 44561, 	[57699] = 44562,
	[57701] = 44563, 	[60645] = 44511, 	[60647] = 44512, 	[60697] = 44513,
	[60702] = 44514, 	[60703] = 44515, 	[60704] = 44516, 	[60705] = 44517,
	[60706] = 44518, 	[60711] = 44519, 	[60712] = 44520, 	[60715] = 44521,
	[60716] = 44522, 	[60718] = 44523, 	[60720] = 44524, 	[60721] = 44525,
	[60723] = 44526, 	[60725] = 44527, 	[60727] = 44528, 	[60728] = 44530,
	[60729] = 44531, 	[60730] = 44532, 	[60731] = 44533, 	[60732] = 44534,
	[60734] = 44535, 	[60735] = 44536, 	[60737] = 44537, 	[60743] = 44538,
	[60746] = 44539, 	[60747] = 44540, 	[60748] = 44541, 	[60749] = 44542,
	[60750] = 44543, 	[60751] = 44544, 	[60752] = 44545, 	[60754] = 44546,
	[60755] = 44547, 	[60756] = 44548, 	[60757] = 44549, 	[60758] = 44550,
	[60759] = 44551, 	[60760] = 44552, 	[60761] = 44553, 	[60996] = 44584,
	[60997] = 44585, 	[60998] = 44586, 	[60999] = 44587, 	[61000] = 44588,
	[61002] = 44589, 	[62176] = 44932, 	[62177] = 44933, 	[63194] = 45094,
	[63195] = 45095, 	[63196] = 45096, 	[63197] = 45097, 	[63198] = 45098,
	[63199] = 45099, 	[63200] = 45100, 	[63201] = 45101,	[70554] = 49957,
	[70555] = 49958,	[70556] = 49959,	[70557] = 49961,	[70558] = 49962,
	[70559] = 49963,	[70560] = 49965,	[70561] = 49966,	[67136] = 47650,
	[67137] = 47646,	[67138] = 47649,	[67139] = 47647,	[67141] = 47653,
	[67142] = 47651,	[67143] = 47648,	[67140] = 47652,

	-------------------------------------------------------------------------------
	--Smelting
	-------------------------------------------------------------------------------
	[22967] = 44956, 	[46353] = 35273,

	-------------------------------------------------------------------------------
	--Tailoring
	-------------------------------------------------------------------------------
	[2389] = 2598, 		[2403] = 2601, 		[3758] = 4292, 		[3844] = 4346,
	[3847] = 4345, 		[3849] = 4347, 		[3851] = 4349, 		[3854] = 7114,
	[3856] = 4350, 		[3857] = 14630, 	[3858] = 4351, 		[3860] = 4352,
	[3862] = 4355, 		[3863] = 4353, 		[3864] = 4356, 		[3868] = 4348,
	[3869] = 14627, 	[3870] = 6401, 		[3872] = 4354, 		[3873] = 10728,
	[6686] = 5771, 		[6688] = 5772, 		[6692] = 5773, 		[6693] = 5774,
	[6695] = 5775, 		[7629] = 6271, 		[7630] = 6270, 		[7633] = 6272,
	[7639] = 6274, 		[7643] = 6275, 		[7892] = 6390, 		[7893] = 6391,
	[8780] = 7092, 		[8782] = 7091, 		[8784] = 7090, 		[8786] = 7089,
	[8789] = 7087, 		[8793] = 7084, 		[8795] = 7085, 		[8797] = 7086,
	[8802] = 7088, 		[12047] = 10316, 	[12056] = 10300, 	[12059] = 10301,
	[12060] = 10302, 	[12064] = 10311, 	[12066] = 10312, 	[12075] = 10314,
	[12078] = 10315, 	[12080] = 10317, 	[12081] = 10318, 	[12084] = 10320,
	[12085] = 10321, 	[12086] = 10463, 	[12089] = 10323, 	[12091] = 10325,
	[12093] = 10326, 	[18403] = 14466, 	[18404] = 14467, 	[18405] = 14468,
	[18406] = 14469, 	[18407] = 14470, 	[18408] = 14471, 	[18409] = 14472,
	[18410] = 14473, 	[18411] = 14474, 	[18412] = 14476, 	[18413] = 14477,
	[18414] = 14478, 	[18415] = 14479, 	[18416] = 14480, 	[18417] = 14481,
	[18418] = 14482, 	[18419] = 14483, 	[18420] = 14484, 	[18421] = 14485,
	[18422] = 14486, 	[18423] = 14488, 	[18424] = 14489, 	[18434] = 14490,
	[18436] = 14493, 	[18437] = 14492, 	[18438] = 14491, 	[18439] = 14494,
	[18440] = 14497, 	[18441] = 14495, 	[18442] = 14496, 	[18444] = 14498,
	[18445] = 14499, 	[18446] = 14500, 	[18447] = 14501, 	[18448] = 14507,
	[18449] = 14504, 	[18450] = 14505, 	[18451] = 14506, 	[18452] = 14509,
	[18453] = 14508, 	[18454] = 14511, 	[18455] = 14510, 	[18456] = 14512,
	[18457] = 14513, 	[18458] = 14514, 	[18560] = 14526, 	[20848] = 17017,
	[20849] = 17018, 	[21945] = 17724, 	[22759] = 18265, 	[22866] = 18414,
	[22867] = 18415, 	[22868] = 18416, 	[22869] = 18417, 	[22870] = 18418,
	[22902] = 18487, 	[23662] = 19215, 	[23663] = 19218, 	[23664] = 19216,
	[23665] = 19217, 	[23666] = 19219, 	[23667] = 19220, 	[24091] = 19764,
	[24092] = 19765, 	[24093] = 19766, 	[24901] = 20546, 	[24902] = 20548,
	[24903] = 20547, 	[26085] = 21358, 	[26087] = 21371, 	[26403] = 44916,
	[26407] = 44917, 	[26747] = 21892, 	[26749] = 21893, 	[26750] = 21894,
	[26751] = 21895, 	[26752] = 21908, 	[26753] = 21909, 	[26754] = 21910,
	[26755] = 21911, 	[26756] = 21912, 	[26757] = 21914, 	[26758] = 21913,
	[26759] = 21915, 	[26760] = 21916, 	[26761] = 21918, 	[26762] = 21917,
	[26763] = 21919, 	[26773] = 21896, 	[26774] = 21897, 	[26775] = 21898,
	[26776] = 21899, 	[26777] = 21900, 	[26778] = 21901, 	[26779] = 21902,
	[26780] = 21903, 	[26781] = 21904, 	[26782] = 21905, 	[26783] = 21906,
	[26784] = 21907, 	[27658] = 22307, 	[27659] = 22308, 	[27660] = 22309,
	[27724] = 22310, 	[27725] = 22312, 	[28210] = 22683, 	[28480] = 22774,
	[28481] = 22773, 	[28482] = 22772, 	[31373] = 24316, 	[31430] = 24292,
	[31431] = 24293, 	[31432] = 24294, 	[31433] = 24295, 	[31434] = 35308,
	[31435] = 24297, 	[31437] = 24298, 	[31438] = 24299, 	[31440] = 24300,
	[31441] = 24301, 	[31442] = 35309, 	[31443] = 24303, 	[31444] = 24304,
	[31448] = 24305, 	[31449] = 24306, 	[31450] = 24307, 	[31451] = 24308,
	[31452] = 24309, 	[31453] = 24310, 	[31454] = 24311, 	[31455] = 24312,
	[31456] = 24313, 	[31459] = 24314, 	[36315] = 30280, 	[36316] = 30281,
	[36317] = 30282, 	[36318] = 30283, 	[36686] = 30483, 	[37873] = 30833,
	[37882] = 30842, 	[37883] = 30843, 	[37884] = 30844, 	[40020] = 32437,
	[40021] = 32438, 	[40023] = 32439, 	[40024] = 32440, 	[40060] = 32447,
	[41205] = 32754, 	[41206] = 32755, 	[41207] = 32752, 	[41208] = 32753,
	[44950] = 34261, 	[44958] = 34319, 	[46128] = 35204, 	[46129] = 35205,
	[46130] = 35206, 	[46131] = 35207, 	[49677] = 37915, 	[50194] = 38229,
	[50644] = 38327, 	[50647] = 38328, 	[55993] = 42172, 	[55994] = 42173,
	[55996] = 42175, 	[55997] = 42177, 	[55998] = 42176, 	[55999] = 42178,
	[56004] = 42183, 	[56005] = 42184, 	[56006] = 42185, 	[56009] = 42187,
	[56011] = 42188, 	[63924] = 45774,	[70550] = 49953,	[70551] = 49954,
	[70552] = 49955,	[70553] = 49956,	[63203] = 45102,	[63205] = 45104,
	[63206] = 45105,	[67145] = 47639,	[67146] = 47638,	[63204] = 45103,
	[67144] = 47636,	[67147] = 47637,
}