local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

-- Index
--- Dungeons & Raids
---- Keys
---- Ahn'Qiraj: The Ruins of Ahn'Qiraj
---- Ahn'Qiraj: The Temple of Ahn'Qiraj
---- AQ Enchants
---- Blackfathom Deeps
---- Blackrock Mountain: Blackrock Dephts
---- Blackrock Mountain: Lower Blackrock Spire
---- Blackrock Mountain: Upper Blackrock Spire
---- Blackrock Mountain: Molten Core
---- Blackrock Mountain: Blackwing Lair
---- Dire Maul Books
---- Dire Maul East
---- Dire Maul North
---- Dire Maul West
---- Gnomeregan
---- Maraudon
---- Ragefire Chasm
---- Razorfen Downs
---- Razorfen Kraul
---- Scarlet Monastery
---- Scholomance
---- Shadowfang Keep
---- Stratholme
---- The Deadmines
---- The Stockade
---- The Sunken Temple
---- Uldaman
---- Wailing Caverns
---- Zul'Farrak
---- Zul'Gurub
---- Naxxramas
---- Onyxia
--- Sets & Collections
---- Dungeon 1 and 2 Sets (D1/D2)
---- Tier 1/2 Sets (T1/T2)
---- Tier 3 Sets (T3)
---- Vanilla WoW Sets
---- ZG Sets
---- AQ20 Sets
---- AQ40 Sets
---- BoE World Epics
--- PvP
---- Alterac Valley
---- Arathi Basin
---- Warsong Gulch
---- PvP Level 60 Rare and Epic Sets
---- PvP Level 60 Weapons
---- PvP Level 60 Accessories
---- PvP Level 60 Enchants
--- Factions
---- Misc
---- Argent Dawn
---- Bloodsail Buccaneers & Hydraxian Waterlords
---- Brood of Nozdormu
---- Cenarion Circle
---- Stormpike Guard & Frostwolf Clan
---- Thorium Brotherhood
---- Timbermaw Hold
---- Zandalar Tribe
--- World Bosses
---- Dragons of Nightmare
---- Azuregos
---- Classic Kazzak
---- Setis

------------------------
--- Dungeons & Raids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["OldKeys"] = {
	Name = "Old Keys";
	{
		Name = "Old Keys";
		[1] = { icon = "INV_Box_01", "=q6=#e9#" };
		[2] = { itemID = 7146, "=q2=The Scarlet Key", "=ds=#e9#" };
		[3] = { itemID = 12382, "=q2=Key to the City", "=ds=#e9#" };
		[4] = { itemID = 6893, "=q1=Workshop Key", "=ds=#e9#" };
		[5] = { itemID = 11000, "=q1=Shadowforge Key", "=ds=#e9#" };
		[6] = { itemID = 11140, "=q1=Prison Cell Key", "=ds=#e9#" };
		[7] = { itemID = 18249, "=q1=Crescent Key", "=ds=#e9#" };
		[8] = { itemID = 13704, "=q1=Skeleton Key", "=ds=#e9#" };
		[10] = { icon = "INV_Box_01", "=q6=#j7#" };
		[11] = { itemID = 22057, "=q1=Brazier of Invocation", "=ds=#m27#" };
		[12] = { itemID = 21986, "=q1=Banner of Provocation", "=ds=#m27#" };
		[16] = { icon = "INV_Box_01", "=q6=#m20#" };
		[17] = { itemID = 19931, "=q3=Gurubashi Mojo Madness", "=ds=#m27#" };
		[18] = { itemID = 13523, "=q1=Blood of Innocents", "=ds=#m27#" };
		[19] = { itemID = 18746, "=q1=Divination Scryer", "=ds=#m27#" };
		[20] = { itemID = 18663, "=q1=J'eevee's Jar", "=ds=#m27#" };
		[21] = { itemID = 19974, "=q1=Mudskunk Lure", "=ds=#m27#" };
		[22] = { itemID = 7733, "=q1=Staff of Prehistoria", "=ds=#m27#" };
		[23] = { itemID = 10818, "=q1=Yeh'kinya's Scroll", "=ds=#m27#" };
	};
};

-----------------------------------------
--- Ahn'Qiraj: The Ruins of Ahn'Qiraj ---
-----------------------------------------

AtlasLoot_Data["RuinsofAQ"] = {
	Name = BabbleZone["Ruins of Ahn'Qiraj"];
	Type = "ClassicRaid";
	Map = "TheRuinsofAhnQiraj";
	{
		Name = BabbleBoss["Kurinnaxx"];
		[1] = { itemID = 21499, "=q4=Vestments of the Shifting Sands", "=ds=#s5#, #a1#", "7.34%" };
		[2] = { itemID = 21498, "=q4=Qiraji Sacrificial Dagger", "=ds=#h1#, #w4#", "7.53%" };
		[4] = { itemID = 21500, "=q3=Belt of the Inquisition", "=ds=#s10#, #a1#", "14.84%" };
		[5] = { itemID = 21501, "=q3=Toughened Silithid Hide Gloves", "=ds=#s9#, #a2#", "12.91%" };
		[6] = { itemID = 21502, "=q3=Sand Reaver Wristguards", "=ds=#s8#, #a3#", "13.79%" };
		[7] = { itemID = 21503, "=q3=Belt of the Sand Reaver", "=ds=#s10#, #a4#", "14.38%" };
		[9] = { itemID = 22217, "=q1=Kurinnaxx's Venom Sac", "=ds=#m3#", "100%" };
		[16] = { itemID = 1506051, "=q4=Ceremonial Qiraji Drape", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsBACK","Token"} };
	};
	{
		Name = BabbleBoss["General Rajaxx"];
		[1] = { itemID = 21493, "=q4=Boots of the Vanguard", "=ds=#s12#, #a2#", "8.13%" };
		[2] = { itemID = 21492, "=q4=Manslayer of the Qiraji", "=ds=#h2#, #w10#", "10.04%" };
		[4] = { itemID = 21496, "=q3=Bracers of Qiraji Command", "=ds=#s8#, #a1#", "15.79%" };
		[5] = { itemID = 21494, "=q3=Southwind's Grasp", "=ds=#s10#, #a2#", "15.13%" };
		[6] = { itemID = 21497, "=q3=Boots of the Qiraji General", "=ds=#s12#, #a3#", "15.45%" };
		[7] = { itemID = 21495, "=q3=Legplates of the Qiraji Command", "=ds=#s11#, #a4#", "15.47%" };
		[9] = { icon = "INV_Box_01", "=q6=" .. AL["Rajaxx's Captains"] };
		[10] = { itemID = 21810, "=q3=Treads of the Wandering Nomad", "=ds=#s12#, #a1#", "3.11%" };
		[11] = { itemID = 21809, "=q3=Fury of the Forgotten Swarm", "3.20%" };
		[12] = { itemID = 21806, "=q3=Gavel of Qiraji Authority", "3.04%" };
		[16] = { itemID = 1506051, "=q4=Ceremonial Qiraji Drape", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsBACK","Token"} };
		[18] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Lieutenant General Andorov"] };
		[19] = { itemID = 22221, "=q1=Plans: Obsidian Mail Tunic", "=ds=#p2# (300)" };
		[20] = { itemID = 22219, "=q1=Plans: Jagged Obsidian Shield", "=ds=#p2# (300)" };
	};
	{
		Name = BabbleBoss["Moam"];
		[1] = { itemID = 21472, "=q4=Dustwind Turban", "=ds=#s1#, #a1#", "7.76%" };
		[2] = { itemID = 21467, "=q4=Thick Silithid Chestguard", "=ds=#s5#, #a2#", "6.76%" };
		[3] = { itemID = 21479, "=q4=Gauntlets of the Immovable", "=ds=#s9#, #a4#", "7.12%" };
		[4] = { itemID = 21471, "=q4=Talon of Furious Concentration", "7.39%" };
		[6] = { itemID = 21470, "=q3=Cloak of the Savior", "14.23%" };
		[7] = { itemID = 21468, "=q3=Mantle of Maz'Nadir", "=ds=#s3#, #a1#", "15.86%" };
		[8] = { itemID = 21455, "=q3=Southwind Helm", "=ds=#s1#, #a2#", "14.08%" };
		[9] = { itemID = 21474, "=q3=Chitinous Shoulderguards", "=ds=#s3#, #a2#", "15.25%" };
		[10] = { itemID = 21469, "=q3=Gauntlets of Southwind", "=ds=#s9#, #a2#", "1" };
		[11] = { itemID = 21476, "=q3=Obsidian Scaled Leggings", "=ds=#s11#, #a3#", "6.81%" };
		[12] = { itemID = 21475, "=q3=Legplates of the Destroyer", "=ds=#s11#, #a4#", "10.39%" };
		[13] = { itemID = 21477, "=q3=Ring of Fury", "14.42%" };
		[14] = { itemID = 21473, "=q3=Eye of Moam", "14.74%" };
		[16] = { itemID = 1506053, "=q4=Ceremonial Qiraji Pendant", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsNECK","Token"} };
		[18] = { itemID = 22220, "=q3=Plans: Black Grasp of the Destroyer", "=ds=#p2# (300)", "4.11%" };
		[19] = { itemID = 22194, "=q4=Black Grasp of the Destroyer", "=ds=#s9#, #a3#" };
	};
	{
		Name = BabbleBoss["Buru the Gorger"];
		[1] = { itemID = 21487, "=q4=Slimy Scaled Gauntlets", "=ds=#s9#, #a3#", "2.64%" };
		[2] = { itemID = 21486, "=q4=Gloves of the Swarm", "=ds=#s9#, #a4#", "5.22%" };
		[3] = { itemID = 21485, "=q4=Buru's Skull Fragment", "=ds=#w8#", "7.88%" };
		[5] = { itemID = 21489, "=q3=Quicksand Waders", "=ds=#s12#, #a1#", "15.95%" };
		[6] = { itemID = 21491, "=q3=Scaled Bracers of the Gorger", "=ds=#s8#, #a2#", "16.51%" };
		[7] = { itemID = 21490, "=q3=Slime Kickers", "=ds=#s12#, #a4#", "15.99%" };
		[8] = { itemID = 21488, "=q3=Fetish of Chitinous Spikes", "17.22%" };
		[16] = { itemID = 1506052, "=q4=Ceremonial Qiraji Ring", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsFINGER","Token"} };
	};
	{
		Name = BabbleBoss["Ayamiss the Hunter"];
		[1] = { itemID = 21479, "=q4=Gauntlets of the Immovable", "=ds=#s9#, #a4#", "6.18%" };
		[2] = { itemID = 21466, "=q4=Stinger of Ayamiss", "=ds=#h3#, #w6#", "2.06%" };
		[3] = { itemID = 21478, "=q4=Bow of Taut Sinew", "=ds=#w2#", "10.14%" };
		[5] = { itemID = 21484, "=q3=Helm of Regrowth", "=ds=#s1#, #a2#", "15.85%" };
		[6] = { itemID = 21480, "=q3=Scaled Silithid Gauntlets", "=ds=#s9#, #a3#", "17.10%" };
		[7] = { itemID = 21482, "=q3=Boots of the Fiery Sands", "=ds=#s12#, #a3#", "4.92%" };
		[8] = { itemID = 21481, "=q3=Boots of the Desert Protector", "=ds=#s12#, #a4#", "11.08%" };
		[9] = { itemID = 21483, "=q3=Ring of the Desert Winds", "16.32%" };
		[16] = { itemID = 1506052, "=q4=Ceremonial Qiraji Ring", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsFINGER","Token"} };
	};
	{
		Name = BabbleBoss["Ossirian the Unscarred"];
		[1] = { itemID = 21456, "=q4=Sandstorm Cloak", "10.89%" };
		[2] = { itemID = 21464, "=q4=Shackles of the Unscarred", "=ds=#s8#, #a1#", "12.62%" };
		[3] = { itemID = 21462, "=q4=Gloves of Dark Wisdom", "=ds=#s9#, #a1#", "11.89%" };
		[4] = { itemID = 21461, "=q4=Leggings of the Black Blizzard", "=ds=#s11#, #a1#", "12.83%" };
		[5] = { itemID = 21458, "=q4=Gauntlets of New Life", "=ds=#s9#, #a2#", "13.25%" };
		[6] = { itemID = 21454, "=q4=Runic Stone Shoulders", "=ds=#s3#, #a3#", "4.10%" };
		[7] = { itemID = 21463, "=q4=Ossirian's Binding", "=ds=#s10#, #a3#", "12.27%" };
		[8] = { itemID = 21460, "=q4=Helm of Domination", "=ds=#s1#, #a4#", "12.18%" };
		[9] = { itemID = 21453, "=q4=Mantle of the Horusath", "=ds=#s3#, #a4#", "6.96%" };
		[10] = { itemID = 21457, "=q4=Bracers of Brutality", "=ds=#s8#, #a4#", "10.74%" };
		[11] = { itemID = 21715, "=q4=Sand Polished Hammer", "=ds=#h1#, #w6#", "5.95%" };
		[12] = { itemID = 21459, "=q4=Crossbow of Imminent Doom", "=ds=#w3#", "6.12%" };
		[13] = { itemID = 21452, "=q4=Staff of the Ruins", "=ds=#w9#", "10.32%" };
		[16] = { itemID = 21220, "=q4=Head of Ossirian the Unscarred", "100%" };
		[17] = { itemID = 21504, "=q4=Charm of the Shifting Sands" };
		[18] = { itemID = 21507, "=q4=Amulet of the Shifting Sands" };
		[19] = { itemID = 21505, "=q4=Choker of the Shifting Sands" };
		[20] = { itemID = 21506, "=q4=Pendant of the Shifting Sands" };
		[22] = { itemID = 1506053, "=q4=Ceremonial Qiraji Pendant", "=ds=#tt2.5A#", "100%", lootTable = {"AQ20SetsNECK","Token"} };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20873, "=q3=Alabaster Idol", "=ds=#e15#", "0.39%" };
		[2] = { itemID = 20869, "=q3=Amber Idol", "=ds=#e15#", "0.36%" };
		[3] = { itemID = 20866, "=q3=Azure Idol", "=ds=#e15#", "0.48%" };
		[4] = { itemID = 20870, "=q3=Jasper Idol", "=ds=#e15#", "0.52%" };
		[5] = { itemID = 20868, "=q3=Lambent Idol", "=ds=#e15#", "0.48%" };
		[6] = { itemID = 20871, "=q3=Obsidian Idol", "=ds=#e15#", "0.41%" };
		[7] = { itemID = 20867, "=q3=Onyx Idol", "=ds=#e15#", "0.36%" };
		[8] = { itemID = 20872, "=q3=Vermillion Idol", "=ds=#e15#", "0.31%" };

		[9] = { itemID = 22202, "=q1=Small Obsidian Shard" };
		[10] = { itemID = 22203, "=q1=Large Obsidian Shard" };

		[16] = { itemID = 20864, "=q2=Bone Scarab", "=ds=#e15#", "0.84%" };
		[17] = { itemID = 20861, "=q2=Bronze Scarab", "=ds=#e15#", "0.88%" };
		[18] = { itemID = 20863, "=q2=Clay Scarab", "=ds=#e15#", "0.95%" };
		[19] = { itemID = 20862, "=q2=Crystal Scarab", "=ds=#e15#", "0.99%" };
		[20] = { itemID = 20859, "=q2=Gold Scarab", "=ds=#e15#", "0.96%" };
		[21] = { itemID = 20865, "=q2=Ivory Scarab", "=ds=#e15#", "0.93%" };
		[22] = { itemID = 20860, "=q2=Silver Scarab", "=ds=#e15#", "1.82%" };
		[23] = { itemID = 20858, "=q2=Stone Scarab", "=ds=#e15#", "0.86%" };
		[24] = { itemID = 21761, "=q1=Scarab Coffer Key", "=ds=#e9#", "7.27%" };

		[12] = { itemID = 21404, "=q4=Dagger of Veiled Shadows", "=ds=#h1#, #w4#", "" };
		[13] = { itemID = 21416, "=q4=Kris of Unspoken Names", "=ds=#h3#, #w4#", "" };
		[14] = { itemID = 21413, "=q4=Blade of Vaulted Secrets", "=ds=#h3#, #w10#", "" };
		[15] = { itemID = 21395, "=q4=Blade of Eternal Justice", "" };
		
		[26] = { itemID = 21407, "=q4=Mace of Unending Life", "=ds=#h3#, #w6#", "" };
		[27] = { itemID = 21410, "=q4=Gavel of Infinite Wisdom", "=ds=#h3#, #w6#", "" };
		[28] = { itemID = 21398, "=q4=Hammer of the Gathering Storm", "=ds=#h3#, #w6#", "" };
		[29] = { itemID = 21401, "=q4=Scythe of the Unseen Path", "" };
		[30] = { itemID = 21392, "=q4=Sickle of Unyielding Strength", "" };
	};
	{
		Name = "AQ Enchants";
		[1] = { itemID = 20728, "=q3=Formula: Enchant Gloves - Frost Power", "=ds=#p4# (300)" };
		[2] = { itemID = 20731, "=q3=Formula: Enchant Gloves - Superior Agility", "=ds=#p4# (300)" };
		[3] = { itemID = 20734, "=q3=Formula: Enchant Cloak - Stealth", "=ds=#p4# (300)" };
		[4] = { itemID = 20729, "=q3=Formula: Enchant Gloves - Fire Power", "=ds=#p4# (300)" };
		[5] = { itemID = 20736, "=q3=Formula: Enchant Cloak - Dodge", "=ds=#p4# (300)" };
		[6] = { itemID = 20730, "=q3=Formula: Enchant Gloves - Healing Power", "=ds=#p4# (300)" };
		[7] = { itemID = 20727, "=q3=Formula: Enchant Gloves - Shadow Power", "=ds=#p4# (300)" };
	};
};

------------------------------------------
--- Ahn'Qiraj: The Temple of Ahn'Qiraj ---
------------------------------------------

AtlasLoot_Data["TempleofAQ"] = {
	Name = BabbleZone["Temple of Ahn'Qiraj"];
	Type = "ClassicRaid";
	Map = "TheTempleofAhnQiraj";
	{
		Name = BabbleBoss["The Prophet Skeram"];
		[1] = { itemID = 21701, "=q4=Cloak of Concentrated Hatred", "11.81%" };
		[2] = { itemID = 21708, "=q4=Beetle Scaled Wristguards", "=ds=#s8#, #a2#", "12.85%" };
		[3] = { itemID = 21698, "=q4=Leggings of Immersion", "=ds=#s11#, #a2#", " 10.99%" };
		[4] = { itemID = 21699, "=q4=Barrage Shoulders", "=ds=#s3#, #a3#", "11.50%" };
		[5] = { itemID = 21705, "=q4=Boots of the Fallen Prophet", "=ds=#s12#, #a3#", "3.33%" };
		[6] = { itemID = 21814, "=q4=Breastplate of Annihilation", "=ds=#s5#, #a4#", "11.01%" };
		[7] = { itemID = 21704, "=q4=Boots of the Redeemed Prophecy", "=ds=#s12#, #a4#", "7.75%" };
		[8] = { itemID = 21706, "=q4=Boots of the Unwavering Will", "=ds=#s12#, #a4#", "12.23%" };

		[10] = { itemID = 21702, "=q4=Amulet of Foul Warding", "12.20%" };
		[11] = { itemID = 21700, "=q4=Pendant of the Qiraji Guardian", "11.57%" };
		[12] = { itemID = 21707, "=q4=Ring of Swarming Thought", "12.57%" };
		[13] = { itemID = 21703, "=q4=Hammer of Ji'zhi", "7.14%" };
		[14] = { itemID = 21128, "=q4=Staff of the Qiraji Prophets", "=ds=#w9#", " 6.32%" };
		
		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "1.74%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "1.32%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };
		[27] = { itemID = 22222, "=q3=Plans: Thick Obsidian Breastplate", "=ds=#p2# (300)", "5.00%" };
		[28] = { itemID = 22196, "=q4=Thick Obsidian Breastplate", "=ds=#s5#, #a4#" };

		[30] = { itemID = 20928, "=q4=Bindings of the Lost Nomad", "=ds=#tt2.5#", "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{
		Name = BabbleBoss["The Bug Family"];
		[1] = { itemID = 21697, "=q4=Cape of the Trinity", "14%" };
		[2] = { itemID = 21694, "=q4=Ternary Mantle", "=ds=#s3#, #a1#", "16%" };
		[3] = { itemID = 21696, "=q4=Robes of the Triumvirate", "=ds=#s5#, #a1#", "13%" };
		[4] = { itemID = 21693, "=q4=Guise of the Devourer", "=ds=#s1#, #a2#", "16%" };
		[5] = { itemID = 21692, "=q4=Triad Girdle", "=ds=#s10#, #a4#", "16%" };
		[6] = { itemID = 21695, "=q4=Angelista's Touch", "14%" };
		[8] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "7%" };
		[9] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "7%" };

		[11] = { itemID = 21680, "=q4=Vest of Swift Execution", "=ds=#s5#, #a2#", "21%" };
		[12] = { itemID = 21603, "=q4=Wand of Qiraji Nobility", "25%" };
		[13] = { itemID = 21681, "=q4=Ring of the Devoured", "17%" };
		[14] = { itemID = 21685, "=q4=Petrified Scarab", "21%" };

		[16] = { itemID = 21689, "=q4=Gloves of Ebru", "=ds=#s9#, #a2#", "18%" };
		[17] = { itemID = 21691, "=q4=Ooze-ridden Gauntlets", "=ds=#s9#, #a4#", "20%" };
		[18] = { itemID = 21688, "=q4=Boots of the Fallen Hero", "=ds=#s12#, #a4#", "18%" };
		[19] = { itemID = 21690, "=q4=Angelista's Charm", "20%" };

		[21] = { itemID = 21686, "=q4=Mantle of Phrenic Power", "=ds=#s3#, #a1#", "13%" };
		[22] = { itemID = 21682, "=q4=Bile-Covered Gauntlets", "=ds=#s9#, #a2#", "19%" };
		[23] = { itemID = 21684, "=q4=Mantle of the Desert's Fury", "=ds=#s3#, #a3#", "16%" };
		[24] = { itemID = 21683, "=q4=Mantle of the Desert Crusade", "=ds=#s3#, #a4#", "14%" };
		[25] = { itemID = 21687, "=q4=Ukko's Ring of Darkness", "20%" };

		[27] = { itemID = 20928, "=q4=Bindings of the Lost Nomad", "=ds=#tt2.5#", "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{
		Name = BabbleBoss["Battleguard Sartura"];
		[1] = { itemID = 21671, "=q4=Robes of the Battleguard", "=ds=#s5#, #a1#", "13.30%" };
		[2] = { itemID = 21676, "=q4=Leggings of the Festering Swarm", "=ds=#s11#, #a1#", "13.02%" };
		[3] = { itemID = 21648, "=q4=Recomposed Boots", "=ds=#s12#, #a1#", "7.64%" };
		[4] = { itemID = 21669, "=q4=Creeping Vine Helm", "=ds=#s1#, #a2#", "12.33%" };
		[5] = { itemID = 21672, "=q4=Gloves of Enforcement", "=ds=#s9#, #a2#", "11.87%" };
		[6] = { itemID = 21675, "=q4=Thick Qirajihide Belt", "=ds=#s10#, #a2#", "13.26%" };
		[7] = { itemID = 21668, "=q4=Scaled Leggings of Qiraji Fury", "=ds=#s11#, #a3#", "4.03%" };
		[8] = { itemID = 21674, "=q4=Gauntlets of Steadfast Determination", "=ds=#s9#, #a4#", "11.07%" };
		[9] = { itemID = 21667, "=q4=Legplates of Blazing Light", "=ds=#s11#, #a4#", "7.44%" };

		[11] = { itemID = 21678, "=q4=Necklace of Purity", "" };
		[12] = { itemID = 21670, "=q4=Badge of the Swarmguard", "13.22%" };
		[13] = { itemID = 21666, "=q4=Sartura's Might", "6.47%" };
		[14] = { itemID = 21673, "=q4=Silithid Claw", "=ds=#h3#, #w13#", "7.16%" };

		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "4.01%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };

		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "4.02%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		[27] = { itemID = 20932, "=q4=Spaulders of the Imperial Guard", "=ds=#tt2.5#", "100%", lootTable = {"T2.5SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Fankriss the Unyielding"];
		[1] = { itemID = 21627, "=q4=Cloak of Untold Secrets", "12.51%" };
		[2] = { itemID = 21663, "=q4=Robes of the Guardian Saint", "=ds=#s5#, #a1#", "12.95%" };
		[3] = { itemID = 21665, "=q4=Mantle of Wicked Revenge", "=ds=#s3#, #a2#", "13.25%" };
		[4] = { itemID = 21645, "=q4=Hive Tunneler's Boots", "=ds=#s12#, #a2#", "14.04%" };
		[5] = { itemID = 21651, "=q4=Scaled Sand Reaver Leggings", "=ds=#s11#, #a3#", "12.91%" };
		[6] = { itemID = 21639, "=q4=Pauldrons of the Unrelenting", "=ds=#s3#, #a4#", "14.78%" };
		[7] = { itemID = 21652, "=q4=Silithid Carapace Chestguard", "=ds=#s5#, #a4#", "10.29%" };

		[9] = { itemID = 21647, "=q4=Fetish of the Sand Reaver", "13.82%" };
		[10] = { itemID = 21664, "=q4=Barbed Choker", "12.63%" };
		[11] = { itemID = 22402, "=q4=Libram of Grace", "=ds=#s16#, #w16#", "4.21%" };
		[12] = { itemID = 22396, "=q4=Totem of Life", "=ds=#s16#, #w15#", "1.69%" };
		[13] = { itemID = 21650, "=q4=Ancient Qiraji Ripper", " 7.19%" };
		[14] = { itemID = 21635, "=q4=Barb of the Sand Reaver", "=ds=#w7#", "6.61%" };

		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "4.84%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "4.09%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		[27] = { itemID = 20932, "=q4=Spaulders of the Imperial Guard", "=ds=#tt2.5#", "100%", lootTable = {"T2.5SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Viscidus"];
		[1] = { itemID = 21624, "=q4=Gauntlets of Kalimdor", "=ds=#s9#, #a3#", "3.90%" };
		[2] = { itemID = 21626, "=q4=Slime-coated Leggings", "=ds=#s11#, #a3#", "13.66%" };
		[3] = { itemID = 21623, "=q4=Gauntlets of the Righteous Champion", "=ds=#s9#, #a4#", "5.37%" };
		[4] = { itemID = 21691, "=q4=Ooze-ridden Gauntlets", "=ds=#s9#, #a4#", "5.37%" };
		[5] = { itemID = 21688, "=q4=Boots of the Fallen Hero", "=ds=#s12#, #a4#", "18%" };
		[6] = { itemID = 21682, "=q4=Bile-Covered Gauntlets", "=ds=#s9#, #a2#", "19%" };

		[8] = { itemID = 21677, "=q4=Ring of the Qiraji Fury", "2.93%" };
		[9] = { itemID = 21625, "=q4=Scarab Brooch", "21.46%" };
		[10] = { itemID = 22399, "=q4=Idol of Health", "=ds=#s16#, #w14#", "7.32%" };
		[11] = { itemID = 21622, "=q4=Sharpened Silithid Femur", "=ds=#h3#, #w10#", "15.12%" };

		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "3.19%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "6.86%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		[27] = { itemID = 20932, "=q4=Spaulders of the Imperial Guard", "=ds=#tt2.5#", "100%", lootTable = {"T2.5SHOULDER","Token"} };
		[28] = { itemID = 20931, "=q4=Hardened Qiraj Chitin", "=ds=#tt2.5#", "100%", lootTable = {"T2.5LEGS","Token"} };
		[29] = { itemID = 20930, "=q4=Diadem of the Desert Prince", "=ds=#tt2.5#", "100%", lootTable = {"T2.5HEAD","Token"} };
		[30] = { itemID = 20928, "=q4=Bindings of the Lost Nomad", "=ds=#tt2.5#", "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{ 
		Name = BabbleBoss["Princess Huhuran"];
		[1] = { itemID = 21619, "=q4=Gloves of the Messiah", "=ds=#s9#, #a1#", "12.01%" };
		[2] = { itemID = 21621, "=q4=Cloak of the Golden Hive", "12.56%" };
		[3] = { itemID = 21617, "=q4=Wasphide Gauntlets", "=ds=#s9#, #a2#", "11.97%" };
		[4] = { itemID = 21618, "=q4=Hive Defiler Wristguards", "=ds=#s8#, #a4#", "10.34%" };
		[5] = { itemID = 21694, "=q4=Ternary Mantle", "=ds=#s3#, #a1#", "16%" };
		[6] = { itemID = 21683, "=q4=Mantle of the Desert Crusade", "=ds=#s3#, #a4#", "14%" };
		[7] = { itemID = 21680, "=q4=Vest of Swift Execution", "=ds=#s5#, #a2#", "21%" };
		[8] = { itemID = 21668, "=q4=Scaled Leggings of Qiraji Fury", "=ds=#s11#, #a3#", "4.03%" };

		[10] = { itemID = 21603, "=q4=Wand of Qiraji Nobility", "25%" };
		[11] = { itemID = 21620, "=q4=Ring of the Martyr", "12.97%" };
		[12] = { itemID = 21616, "=q4=Huhuran's Stinger", "=ds=#w2#", "5.71%" };

		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "4.31%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		
		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "4.11%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		[27] = { itemID = 20932, "=q4=Spaulders of the Imperial Guard", "=ds=#tt2.5#", "100%", lootTable = {"T2.5SHOULDER","Token"} };
		[28] = { itemID = 20931, "=q4=Hardened Qiraj Chitin", "=ds=#tt2.5#", "100%", lootTable = {"T2.5LEGS","Token"} };
	};
	{
		Name = BabbleBoss["The Twin Emperors"];
		[1] = { itemID = 21600, "=q4=Boots of Epiphany", "=ds=#s12#, #a1#", "15.77%" };
		[2] = { itemID = 21602, "=q4=Qiraji Execution Bracers", "=ds=#s8#, #a2#", "15.95%" };
		[3] = { itemID = 21599, "=q4=Vek'lor's Gloves of Devastation", "=ds=#s9#, #a3#", "15.77%" };
		[4] = { itemID = 21598, "=q4=Royal Qiraji Belt", "=ds=#s10#, #a4#", "9.84%" };
		[5] = { itemID = 21597, "=q4=Royal Scepter of Vek'lor", "6.99%" };
		[6] = { itemID = 21601, "=q4=Ring of Emperor Vek'lor", "17.27%" };
		[7] = { itemID = 20735, "=q3=Formula: Enchant Cloak - Subtlety", "=ds=#p4# (300)", "6.62%" };

		[9] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "6.25%" };
		[10] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		[11] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		[12] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		[13] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };
		[15] = { itemID = 20930, "=q4=Diadem of the Desert Prince", "=ds=#tt2.5#", "100%", lootTable = {"T2.5HEAD","Token"} };

		[16] = { itemID = 21604, "=q4=Bracelets of Royal Redemption", "=ds=#s8#, #a1#", "12.51%" };
		[17] = { itemID = 21605, "=q4=Gloves of the Hidden Temple", "=ds=#s9#, #a2#", "15.45%" };
		[18] = { itemID = 21609, "=q4=Regenerating Belt of Vek'nilash", "=ds=#s10#, #a2#", "13.35%" };
		[19] = { itemID = 21607, "=q4=Grasp of the Fallen Emperor", "=ds=#s10#, #a3#", "2.72%" };
		[20] = { itemID = 21606, "=q4=Belt of the Fallen Emperor", "=ds=#s10#, #a4#", "12.22%" };
		[21] = { itemID = 21679, "=q4=Kalimdor's Revenge", "=ds=#h2#, #w10#", "9.25%" };
		[22] = { itemID = 21608, "=q4=Amulet of Vek'nilash", "14.25%" };
		[23] = { itemID = 20726, "=q3=Formula: Enchant Gloves - Threat", "=ds=#p4# (300)", "6.24%" };

		[25] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "5.00%" };
		[26] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		[27] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		[28] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
	};
	{
		Name = BabbleBoss["Ouro"];
		[1] = { itemID = 21615, "=q4=Don Rigoberto's Lost Hat", "=ds=#s1#, #a1#", "28.63%" };
		[2] = { itemID = 21611, "=q4=Burrower Bracers", "=ds=#s8#, #a1#", "24.44%" };
		[3] = { itemID = 23558, "=q4=The Burrower's Shell", "2.90%" };
		[4] = { itemID = 23570, "=q4=Jom Gabbar", "2.80%" };
		[5] = { itemID = 23557, "=q4=Larvae of the Great Worm", "=ds=#w5#", "3.95%" };
		[6] = { itemID = 21610, "=q4=Wormscale Blocker", "=ds=#w8#", "16.54%" };
		[7] = { itemID = 21708, "=q4=Beetle Scaled Wristguards", "=ds=#s8#, #a2#", "12.85%" };
		[8] = { itemID = 21645, "=q4=Hive Tunneler's Boots", "=ds=#s12#, #a2#", "14.04%" };
		[9] = { itemID = 21605, "=q4=Gloves of the Hidden Temple", "=ds=#s9#, #a2#", "15.45%" };
		[10] = { itemID = 15029, "=q3=Aera's Poison Gland", "3.65%" };

		[16] = { itemID = 21237, "=q4=Imperial Qiraji Regalia", "=ds=#m3#", "5.20%" };
		[17] = { itemID = 21273, "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4# =ds=#w9#" };
		[18] = { itemID = 21275, "=q4=Blessed Qiraji Augur Staff", "=q1=#m4# =ds=#w9#" };
		[19] = { itemID = 21268, "=q4=Blessed Qiraji War Hammer", "=q1=#m4# =ds=#h1#, #w6#" };

		[21] = { itemID = 21232, "=q4=Imperial Qiraji Armaments", "=ds=#m3#", "4.10%" };
		[22] = { itemID = 21242, "=q4=Blessed Qiraji War Axe", "=q1=#m4# =ds=#h1#, #w1#" };
		[23] = { itemID = 21272, "=q4=Blessed Qiraji Musket", "=q1=#m4# =ds=#w5#" };
		[24] = { itemID = 21244, "=q4=Blessed Qiraji Pugio", "=q1=#m4# =ds=#h1#, #w4#" };
		[25] = { itemID = 21269, "=q4=Blessed Qiraji Bulwark", "=q1=#m4# =ds=#w8#" };

		[27] = { itemID = 20931, "=q4=Hardened Qiraj Chitin", "=ds=#tt2.5#", "100%", lootTable = {"T2.5LEGS","Token"} };
	};
	{
		Name = BabbleBoss["C'Thun"];
		[1] = { itemID = 21583, "=q4=Cloak of Clarity", "14.45%" };
		[2] = { itemID = 22731, "=q4=Cloak of the Devoured", "16.34%" };
		[3] = { itemID = 21585, "=q4=Dark Storm Gauntlets", "=ds=#s9#, #a1#", "13.63%" };
		[4] = { itemID = 22730, "=q4=Eyestalk Waist Cord", "=ds=#s10#, #a1#", "10.41%" };
		[5] = { itemID = 21582, "=q4=Grasp of the Old God", "=ds=#s10#, #a1#", "15.04%" };
		[6] = { itemID = 21586, "=q4=Belt of Never-ending Agony", "=ds=#s10#, #a2#", "11.24%" };
		[7] = { itemID = 21581, "=q4=Gauntlets of Annihilation", "=ds=#s9#, #a4#", "12.04%" };

		[9] = { itemID = 22732, "=q4=Mark of C'Thun", "10.62%" };
		[10] = { itemID = 21596, "=q4=Ring of the Godslayer", "11.83%" };
		[11] = { itemID = 21579, "=q4=Vanquished Tentacle of C'Thun", "12.18%" };
		[12] = { itemID = 21126, "=q4=Death's Sting", "=ds=#h1#, #w4#", "" };
		[13] = { itemID = 21134, "=q4=Dark Edge of Insanity", "=ds=#h2#, #w1#", "" };
		[14] = { itemID = 21839, "=q4=Scepter of the False Prophet", "=ds=#h3#, #w6#", "4.75%" };

		[15] = { itemID = 21221, "=q4=Eye of C'Thun", "100%" };
		[16] = { itemID = 21710, "=q4=Cloak of the Fallen God", "=q1=#m4#: =ds=#s4#" };
		[17] = { itemID = 21712, "=q4=Amulet of the Fallen God" };
		[18] = { itemID = 21709, "=q4=Ring of the Fallen God" };

		[20] = { itemID = 22734, "=q1=Base of Atiesh", "=ds=#m3#" };
		[21] = { itemID = 22632, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c1#" };
		[22] = { itemID = 22589, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c3#" };
		[23] = { itemID = 22631, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c5#" };
		[24] = { itemID = 22630, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c8#" };
		
		[26] = { itemID = 20933, "=q4=Husk of the Old God", "=ds=#tt2.5#", "100%", lootTable = {"T2.5CHEST","Token"} };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 21838, "=q4=Garb of Royal Ascension", "=ds=#s5#, #a1#", "0.20%" };
		[2] = { itemID = 21888, "=q4=Gloves of the Immortal", "=ds=#s9#, #a1#", "0.16%" };
		[3] = { itemID = 21889, "=q4=Gloves of the Redeemed Prophecy", "=ds=#s9#, #a4# =q1=#m1# =ds=#c4#", "0.39%" };
		[4] = { itemID = 21836, "=q4=Ritssyn's Ring of Chaos", "0.18%" };
		[5] = { itemID = 21891, "=q4=Shard of the Fallen Star", "0.59%" };
		[6] = { itemID = 21856, "=q4=Neretzek, The Blood Drinker", "=ds=#h2#, #w1#", "0.20%" };
		[7] = { itemID = 21837, "=q4=Anubisath Warhammer", "=ds=#h1#, #w6#", "0.21%" };
		[9] = { itemID = 22202, "=q1=Small Obsidian Shard" };
		[10] = { itemID = 22203, "=q1=Large Obsidian Shard" };
		[16] = { itemID = 21218, "=q3=Blue Qiraji Resonating Crystal", "10.64%" };
		[17] = { itemID = 21324, "=q3=Yellow Qiraji Resonating Crystal", "12.15%" };
		[18] = { itemID = 21323, "=q3=Green Qiraji Resonating Crystal", "11.62%" };
		[19] = { itemID = 21321, "=q3=Red Qiraji Resonating Crystal", "1.39%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20876, "=q3=Idol of Death", "=ds=#e15#", "0.26%" };
		[2] = { itemID = 20879, "=q3=Idol of Life", "=ds=#e15#", "0.29%" };
		[3] = { itemID = 20875, "=q3=Idol of Night", "=ds=#e15#", "0.29%" };
		[4] = { itemID = 20878, "=q3=Idol of Rebirth", "=ds=#e15#", "0.28%" };
		[5] = { itemID = 20881, "=q3=Idol of Strife", "=ds=#e15#", "0.21%" };
		[6] = { itemID = 20877, "=q3=Idol of the Sage", "=ds=#e15#", "0.33%" };
		[7] = { itemID = 20874, "=q3=Idol of the Sun", "=ds=#e15#", "0.21%" };
		[8] = { itemID = 20882, "=q3=Idol of War", "=ds=#e15#", "0.30%" };
		[10] = { itemID = 21230, "=q1=Ancient Qiraji Artifact", "=ds=#m2#" };
		[12] = { itemID = 21762, "=q1=Greater Scarab Coffer Key", "=ds=#e9#", "7.03%" };
		[16] = { itemID = 20864, "=q2=Bone Scarab", "=ds=#e15#", "0.84%" };
		[17] = { itemID = 20861, "=q2=Bronze Scarab", "=ds=#e15#", "0.88%" };
		[18] = { itemID = 20863, "=q2=Clay Scarab", "=ds=#e15#", "0.95%" };
		[19] = { itemID = 20862, "=q2=Crystal Scarab", "=ds=#e15#", "0.99%" };
		[20] = { itemID = 20859, "=q2=Gold Scarab", "=ds=#e15#", "0.96%" };
		[21] = { itemID = 20865, "=q2=Ivory Scarab", "=ds=#e15#", "0.93%" };
		[22] = { itemID = 20860, "=q2=Silver Scarab", "=ds=#e15#", "1.82%" };
		[23] = { itemID = 20858, "=q2=Stone Scarab", "=ds=#e15#", "0.86%" };
	};
};

AtlasLoot_Data["AQOpening"] = {
	Name = "AQOpening";
	{
		Name = "AQOpening";
		[1] = { itemID = 21138, "=q1=Red Scepter Shard", "=ds=#m3#" };
		[2] = { itemID = 21530, "=q4=Onyx Embedded Leggings", "=ds=#s11#, #a3#" };
		[3] = { itemID = 21529, "=q4=Amulet of Shadow Shielding", "=ds=#s2#" };
		[5] = { itemID = 21139, "=q1=Green Scepter Shard", "=ds=#m3#" };
		[6] = { itemID = 21532, "=q4=Drudge Boots", "=ds=#s12#, #a2#" };
		[7] = { itemID = 21531, "=q4=Drake Tooth Necklace", "=ds=#s2#" };
		[9] = { itemID = 21137, "=q1=Blue Scepter Shard", "=ds=#m3#" };
		[10] = { itemID = 21517, "=q4=Gnomish Turban of Psychic Might", "=ds=#s1#, #a1#" };
		[11] = { itemID = 21527, "=q4=Darkwater Robes", "=ds=#s5#, #a1#" };
		[12] = { itemID = 21526, "=q4=Band of Icy Depths", "=ds=#s13#" };
		[13] = { itemID = 21025, "=q4=Recipe: Dirge's Kickin' Chimaerok Chops", "=ds=#p3# (300)" };
		[16] = { itemID = 21175, "=q1=The Scepter of the Shifting Sands", "=ds=#m3#" };
		[17] = { itemID = 21176, "=q5=Black Qiraji Resonating Crystal" };
		[18] = { itemID = 21522, "=q4=Shadowsong's Sorrow", "=ds=#h1#, #w4#" };
		[19] = { itemID = 21523, "=q4=Fang of Korialstrasz", "=ds=#h3#, #w4#" };
		[20] = { itemID = 21520, "=q4=Ravencrest's Legacy", "=ds=#h1#, #w10#" };
		[21] = { itemID = 21521, "=q4=Runesword of the Red", "=ds=#h3#, #w10#" };
	};
};

-------------------------
--- Blackfathom Deeps ---
-------------------------

AtlasLoot_Data["BlackfathomDeeps"] = {
	Name = BabbleZone["Blackfathom Deeps"];
	Map = "BlackfathomDeeps";
	{
		Name = BabbleBoss["Ghamoo-ra"];
		[1] = { itemID = 6908, "=q3=Ghamoo-ra's Bind", "=ds=#s10#, #a1#", "45.81%" };
		[2] = { itemID = 6907, "=q3=Tortoise Armor", "=ds=#s5#, #a3#", "30.59%" };
	};
	{
		Name = BabbleBoss["Lady Sarevess"];
		[1] = { itemID = 888, "=q3=Naga Battle Gloves", "=ds=#s9#, #a2#", "33.72%" };
		[2] = { itemID = 11121, "=q3=Darkwater Talwar", "33.10%" };
		[3] = { itemID = 3078, "=q3=Naga Heartpiercer", "=ds=#w2#", "16.87%" };
	};
	{
		Name = BabbleBoss["Gelihast"];
		[1] = { itemID = 6906, "=q3=Algae Fists", "=ds=#s9#, #a3#", "38.24%" };
		[2] = { itemID = 6905, "=q3=Reef Axe", "=ds=#h2#, #w1#", "42.29%" };
		[3] = { itemID = 1470, "=q1=Murloc Skin Bag", "=ds=#m12# #e1#", "14.13%" };
	};
	{
		Name = BabbleBoss["Baron Aquanis"];
		[1] = { itemID = 16782, "=q2=Strange Water Globe", "=ds=#m2# (#m6#)", "90.35%" };
		[2] = { itemID = 16886, "=q3=Outlaw Sabre", "=q1=#m4#: =ds=#h1#, #w10#" };
		[3] = { itemID = 16887, "=q3=Witch's Finger", "=q1=#m4#: =ds=#s15#" };
	};
	{
		Name = BabbleBoss["Twilight Lord Kelris"];
		[1] = { itemID = 6903, "=q3=Gaze Dreamer Pants", "=ds=#s11#, #a1#", "31.90%" };
		[2] = { itemID = 1155, "=q3=Rod of the Sleepwalker", "=ds=#w9#", "45.59%" };
		[3] = { itemID = 5881, "=q1=Head of Kelris", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Old Serra'kis"];
		[1] = { itemID = 6901, "=q3=Glowing Thresher Cape", "36.14%" };
		[2] = { itemID = 6902, "=q3=Bands of Serra'kis", "=ds=#s8#, #a2#", "29.24%" };
		[3] = { itemID = 6904, "=q3=Bite of Serra'kis", "=ds=#h1#, #w4#", "15.34%" };
	};
	{
		Name = BabbleBoss["Aku'mai"];
		[1] = { itemID = 6910, "=q3=Leech Pants", "=ds=#s11#, #a1#", "29.72%" };
		[2] = { itemID = 6911, "=q3=Moss Cinch", "=ds=#s10#, #a2#", "29.01%" };
		[3] = { itemID = 6909, "=q3=Strike of the Hydra", "=ds=#h2#, #w10#", "14.46%" };
		[4] = { icon = "INV_Box_01", "=q6=" .. AL["Quest Item"] };
		[5] = { itemID = 5359, "=q1=Lorgalis Manuscript", "=ds=#m3#", "100%" };
		[6] = { itemID = 16762, "=q1=Fathom Core", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 1486, "=q3=Tree Bark Jacket", "=ds=#s5#, #a1#", "0.02%" };
		[2] = { itemID = 3416, "=q3=Martyr's Chain", "=ds=#s5#, #a3#", "0.01%" };
		[3] = { itemID = 1491, "=q3=Ring of Precision", "0.01%" };
		[4] = { itemID = 3413, "=q3=Doomspike", "=ds=#h1#, #w4#", "0.01%" };
		[5] = { itemID = 2567, "=q3=Evocator's Blade", "=ds=#h1#, #w4#", "0.02%" };
		[6] = { itemID = 3417, "=q3=Onyx Claymore", "=ds=#h2#, #w10#", "0.01%" };
		[7] = { itemID = 1454, "=q3=Axe of the Enforcer", "0.01%" };
		[8] = { itemID = 1481, "=q3=Grimclaw", "0.01%" };
		[9] = { itemID = 3414, "=q3=Crested Scepter", "=ds=#h1#, #w6#", "0.01%" };
		[10] = { itemID = 3415, "=q3=Staff of the Friar", "=ds=#w9#", "0.02%" };
		[11] = { itemID = 2271, "=q3=Staff of the Blessed Seer", "=ds=#w9#", "0.02%" };
	};
};

--------------------------------------------
--- Blackrock Mountain: Blackrock Dephts ---
--------------------------------------------

AtlasLoot_Data["BlackrockDepths"] = {
	Name = BabbleZone["Blackrock Depths"];
	Type = "ClassicDungeonExt";
	Map = "BlackrockDepths";
	{
		Name = AL["Overmaster Pyron"];
		[1] = { itemID = 14486, "=q3=Pattern: Cloak of Fire", "=ds=#p8# (275)", "17.95%" };
	};
	{
		Name = BabbleBoss["Lord Roccor"];
		[1] = { itemID = 22234, "=q3=Mantle of Lost Hope", "=ds=#s3#, #a1#", "20.48%" };
		[2] = { itemID = 11632, "=q3=Earthslag Shoulders", "=ds=#s3#, #a4#", "19.99%" };
		[3] = { itemID = 22397, "=q3=Idol of Ferocity", "=ds=#s16#, #w14#", "19.58%" };
		[4] = { itemID = 11631, "=q3=Stoneshell Guard", "=ds=#w8#", "22.06%" };
		[5] = { itemID = 11630, "=q3=Rockshard Pellets", "=ds=#w18#", "16.82%" };
		[16] = { itemID = 11813, "=q2=Formula: Smoking Heart of the Mountain", "=ds=#p4# (265)", "14.79%" };
		[17] = { itemID = 11811, "=q3=Smoking Heart of the Mountain", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = BabbleBoss["High Interrogator Gerstahn"];
		[1] = { itemID = 11626, "=q3=Blackveil Cape", "15.98%" };
		[2] = { itemID = 11624, "=q3=Kentic Amice", "=ds=#s3#, #a1#", "22.45%" };
		[3] = { itemID = 22240, "=q3=Greaves of Withering Despair", "=ds=#s12#, #a3#", "16.81%" };
		[4] = { itemID = 11625, "=q3=Enthralled Sphere", "23.14%" };
		[6] = { itemID = 11140, "=q1=Prison Cell Key", "=ds=#e9#" };
	};
	{
		Name = "Ring of Law";
		[1] = { itemID = 11677, "=q3=Graverot Cape", "=ds=#s4# =q2=#brd1#", "23.07%" };
		[2] = { itemID = 11675, "=q3=Shadefiend Boots", "=ds=#s12#, #a2# =q2=#brd1#", "25.84%" };
		[3] = { itemID = 11731, "=q3=Savage Gladiator Greaves", "=ds=#s12#, #a3# =q2=#brd1#", "15.14%" };
		[4] = { itemID = 11678, "=q3=Carapace of Anub'shiah", "=ds=#s5#, #a4# =q2=#brd1#", "15.78%" };
		[6] = { itemID = 11685, "=q3=Splinthide Shoulders", "=ds=#s3#, #a2# =q2=#brd2#", "24.49%" };
		[7] = { itemID = 11686, "=q3=Girdle of Beastial Fury", "=ds=#s10#, #a2# =q2=#brd2#", "15.85%" };
		[8] = { itemID = 11679, "=q3=Rubicund Armguards", "=ds=#s8#, #a3# =q2=#brd2#", "25.13%" };
		[9] = { itemID = 11730, "=q3=Savage Gladiator Grips", "=ds=#s9#, #a3# =q2=#brd2#", "14.12%" };
		[11] = { itemID = 11726, "=q4=Savage Gladiator Chain", "=ds=#s5#, #a3# =q2=#brd3#", "14.52%" };
		[12] = { itemID = 22271, "=q3=Leggings of Frenzied Magic", "=ds=#s11#, #a2# =q2=#brd3#", "23.24%" };
		[13] = { itemID = 11729, "=q3=Savage Gladiator Helm", "=ds=#s1#, #a3# =q2=#brd3#, #brd5#", "10.08%" };
		[14] = { itemID = 11722, "=q3=Dregmetal Spaulders", "=ds=#s3#, #a3# =q2=#brd4#", "15.07%" };
		[15] = { itemID = 11703, "=q3=Stonewall Girdle", "=ds=#s10#, #a4# =q2=#brd4#", "31.45%" };
		[16] = { itemID = 22270, "=q3=Entrenching Boots", "=ds=#s12#, #a4# =q2=#brd4#", "11.97%" };
		[17] = { itemID = 22257, "=q3=Bloodclot Band", "=ds=#s13# =q2=#brd3#", "26.28%" };
		[18] = { itemID = 22266, "=q3=Flarethorn", "=ds=#h1#, #w4# =q2=#brd3#", "17.98%" };
		[19] = { itemID = 11702, "=q3=Grizzle's Skinner", "=ds=#h1#, #w1# =q2=#brd4#", "20.62%" };
		[20] = { itemID = 11610, "=q3=Plans: Dark Iron Pulverizer", "=ds=#p2# (265) =q2=#brd4#", "69.76%" };
		[22] = { itemID = 11634, "=q3=Silkweb Gloves", "=ds=#s9#, #a1# =q2=#brd5#", "24.02%" };
		[23] = { itemID = 11633, "=q3=Spiderfang Carapace", "=ds=#s5#, #a4# =q2=#brd5#", "20.61%" };
		[24] = { itemID = 11635, "=q3=Hookfang Shanker", "=ds=#h1#, #w4# =q2=#brd5#", "17.26%" };
		[26] = { itemID = 11662, "=q3=Ban'thok Sash", "=ds=#s10#, #a1# =q2=#brd6#", "23.77%" };
		[27] = { itemID = 11665, "=q3=Ogreseer Fists", "=ds=#s9#, #a2# =q2=#brd6#", "28.16%" };
		[28] = { itemID = 11728, "=q3=Savage Gladiator Leggings", "=ds=#s11#, #a3# =q2=#brd6#", "14.95%" };
		[29] = { itemID = 11824, "=q3=Cyclopean Band", "=ds=#s13# =q2=#brd6#", "18.37%" };
	};
	{
		Name = AL["Theldren"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n17#" };
		[2] = { itemID = 22330, "=q3=Shroud of Arcane Mastery", "19.73%" };
		[3] = { itemID = 22305, "=q3=Ironweave Mantle", "=ds=#s3#, #a1#", "30.39%" };
		[4] = { itemID = 22317, "=q3=Lefty's Brass Knuckle", "=ds=#h1#, #w13#", "26.15%" };
		[5] = { itemID = 22318, "=q3=Malgen's Long Bow", "=ds=#w2#", "22.88%" };
		[7] = { itemID = 22047, "=q1=Top Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Houndmaster Grebmar"];
		[1] = { itemID = 11623, "=q3=Spritecaster Cape", "32.09%" };
		[2] = { itemID = 11626, "=q3=Blackveil Cape", "0.60%" };
		[3] = { itemID = 11627, "=q3=Fleetfoot Greaves", "=ds=#s12#, #a3#", "32.09%" };
		[4] = { itemID = 11628, "=q3=Houndmaster's Bow", "=ds=#w2#", "12.14%" };
		[5] = { itemID = 11629, "=q3=Houndmaster's Rifle", "=ds=#w5#", "11.18%" };
	};
	{
		Name = "Monument of Franclorn Forgewright";
		[1] = { itemID = 11000, "=q1=Shadowforge Key", "=q1=#m4#: =ds=#e9#" };
	};
	{
		Name = BabbleBoss["Pyromancer Loregrain"];
		[1] = { itemID = 11747, "=q3=Flamestrider Robes", "=ds=#s5#, #a2#", "18.10%" };
		[2] = { itemID = 11749, "=q3=Searingscale Leggings", "=ds=#s11#, #a3#", "21.29%" };
		[3] = { itemID = 11750, "=q3=Kindling Stave", "=ds=#w9#", " 16.19%" };
		[4] = { itemID = 11748, "=q3=Pyric Caduceus", "30.20%" };
		[6] = { itemID = 11207, "=q2=Formula: Enchant Weapon - Fiery Weapon", "=ds=#p4# (265)", "13.32%" };
	};
	{
		Name = AL["The Vault"];
		[1] = { icon = "INV_Box_01", "=q6=#x3#" };
		[2] = { itemID = 11309, "=q1=The Heart of the Mountain", "=ds=#m3#", "100%" };
		[4] = { icon = "INV_Box_01", "=q6=#x5#" };
		[5] = { itemID = 22256, "=q3=Mana Shaping Handwraps", "=ds=#s9#, #a1#", "4.49%" };
		[6] = { itemID = 11929, "=q3=Haunting Specter Leggings", "=ds=#s11#, #a1#", "21.12%" };
		[7] = { itemID = 11926, "=q3=Deathdealer Breastplate", "=ds=#s5#, #a3#", "21.57%" };
		[8] = { itemID = 22205, "=q3=Black Steel Bindings", "=ds=#s8#, #a4#", "4.24%" };
		[9] = { itemID = 22255, "=q3=Magma Forged Band", "4.02%" };
		[10] = { itemID = 11920, "=q3=Wraith Scythe", "21.12%" };
		[11] = { itemID = 11923, "=q3=The Hammer of Grace", "=ds=#h3#, #w6#", "19.84%" };
		[12] = { itemID = 22254, "=q3=Wand of Eternal Light", "3.65%" };
		[16] = { icon = "INV_Box_01", "=q6=#x4#" };
		[17] = { itemID = 11752, "=q1=Black Blood of the Tormented", "=ds=#m3#", "44.48%" };
		[18] = { itemID = 11751, "=q1=Burning Essence", "=ds=#m3#", "39.35%" };
		[19] = { itemID = 11753, "=q1=Eye of Kajal", "=ds=#m3#", "39.95%" };
	};
	{
		Name = BabbleBoss["Warder Stilgiss"];
		[1] = { itemID = 11782, "=q3=Boreal Mantle", "=ds=#s3#, #a1#", "18.38%" };
		[2] = { itemID = 22241, "=q3=Dark Warder's Pauldrons", "=ds=#s3#, #a2#", "18.38%" };
		[3] = { itemID = 11783, "=q3=Chillsteel Girdle", "=ds=#s10#, #a3#", "20.50%" };
		[4] = { itemID = 11784, "=q3=Arbiter's Blade", "=ds=#h3#, #w10#", "21.54%" };
	};
	{
		Name = BabbleBoss["Verek"];
		[1] = { itemID = 22242, "=q3=Verek's Leash", "=ds=#s10#, #a3#", "9.78%" };
		[2] = { itemID = 11755, "=q3=Verek's Collar", "9.54%" };
	};
	{
		Name = BabbleBoss["Fineous Darkvire"];
		[1] = { itemID = 11839, "=q3=Chief Architect's Monocle", "=ds=#s1#, #a1#", "1" };
		[2] = { itemID = 11841, "=q3=Senior Designer's Pantaloons", "=ds=#s11#, #a1#", "21.25%" };
		[3] = { itemID = 11842, "=q3=Lead Surveyor's Mantle", "=ds=#s3#, #a3#", "20.83%" };
		[4] = { itemID = 22223, "=q3=Foreman's Head Protector", "=ds=#s1#, #a4#", "19.73%" };
		[6] = { itemID = 11840, "=q1=Master Builder's Shirt", "#s6#", "3.9%" };
		[8] = { itemID = 10999, "=q1=Ironfel", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Lord Incendius"];
		[1] = { itemID = 11768, "=q3=Incendic Bracers", "=ds=#s8#, #a1#", "1.30%" };
		[2] = { itemID = 11766, "=q3=Flameweave Cuffs", "=ds=#s8#, #a1# =q2=#m16#", "18.88%" };
		[3] = { itemID = 11764, "=q3=Cinderhide Armsplints", "=ds=#s8#, #a2# =q2=#m16#", "18.33%" };
		[4] = { itemID = 11765, "=q3=Pyremail Wristguards", "=ds=#s8#, #a3# =q2=#m16#", "18.85%" };
		[5] = { itemID = 11767, "=q3=Emberplate Armguards", "=ds=#s8#, #a4# =q2=#m16#", "19.24%" };
		[6] = { itemID = 19268, "=q3=Ace of Elementals", "=ds=#e16#", "2.10%" };
		[8] = { itemID = 21987, "=q1=Incendicite of Incendius", "=ds=#m3#" };
		[9] = { itemID = 11126, "=q1=Tablet of Kurniya", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Bael'Gar"];
		[1] = { itemID = 11807, "=q3=Sash of the Burning Heart", "=ds=#s10#, #a1#", "13.59%" };
		[2] = { itemID = 11802, "=q3=Lavacrest Leggings", "=ds=#s11#, #a4#", "26.75%" };
		[3] = { itemID = 11805, "=q3=Rubidium Hammer", "=ds=#h1#, #w6#", "17.02%" };
		[4] = { itemID = 11803, "=q3=Force of Magma", "27.47%" };
	};
	{
		Name = BabbleBoss["General Angerforge"];
		[1] = { itemID = 11821, "=q3=Warstrife Leggings", "=ds=#s11#, #a2#", "16.41%" };
		[2] = { itemID = 11820, "=q3=Royal Decorated Armor", "=ds=#s5#, #a3#", "18.55%" };
		[3] = { itemID = 11810, "=q3=Force of Will", "12.97%" };
		[4] = { itemID = 11817, "=q3=Lord General's Sword", "=ds=#h1#, #w10# ", "14.72%" };
		[5] = { itemID = 11816, "=q3=Angerforge's Battle Axe", "=ds=#h2#, #w1#", "16.41%" };
		[7] = { itemID = 11464, "=q1=Marshal Windsor's Lost Information", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Golem Lord Argelmach"];
		[1] = { itemID = 11822, "=q3=Omnicast Boots", "=ds=#s12#, #a1#", "2" };
		[2] = { itemID = 11823, "=q3=Luminary Kilt", "=ds=#s11#, #a2#", "25.73%" };
		[3] = { itemID = 11669, "=q3=Naglering", "22.92%" };
		[4] = { itemID = 11819, "=q3=Second Wind", "5.75%" };
		[6] = { itemID = 21956, "=q2=Design: Dark Iron Scorpid", "=ds=#p12# (300)" };
		[8] = { itemID = 11268, "=q1=Head of Argelmach", "=ds=#m3#" };
		[9] = { itemID = 11465, "=q1=Marshal Windsor's Lost Information", "=ds=#m3#" };
	};
	{
		Name = "The Grim Guzzler";
		[1] = { icon = "INV_Box_01", "=q6=#n48#" };
		[2] = { itemID = 11735, "=q3=Ragefury Eyepatch", "=ds=#s1#, #a2#", "8.11%" };
		[3] = { itemID = 18043, "=q3=Coal Miner Boots", "=ds=#s12#, #a2#", "23.87%" };
		[4] = { itemID = 22275, "=q3=Firemoss Boots", "=ds=#s12#, #a2#", "23.87%" };
		[5] = { itemID = 18044, "=q3=Hurley's Tankard", "=ds=#h1#, #w6#", "31.02%" };
		[6] = { itemID = 11312, "=q1=Lost Thunderbrew Recipe", "=ds=#m3#" };
		[8] = { icon = "INV_Box_01", "=q6=#n49#" };
		[9] = { itemID = 22212, "=q3=Golem Fitted Pauldrons", "=ds=#s3#, #a3#", "26.04%" };
		[10] = { itemID = 11745, "=q3=Fists of Phalanx", "=ds=#s9#, #a4#", "29.79%" };
		[11] = { itemID = 11744, "=q3=Bloodfist", "=ds=#h1#, #w13#", "28.48%" };
		[16] = { icon = "INV_Box_01", "=q6=#n50#" };
		[17] = { itemID = 11612, "=q3=Plans: Dark Iron Plate", "=ds=#p2# (285)", "22.20%" };
		[18] = { itemID = 2662, "=q2=Ribbly's Quiver", "=ds=#m13# #w19#", "" };
		[19] = { itemID = 2663, "=q2=Ribbly's Bandolier", "=ds=#m13# #w20#", "15.73%" };
		[20] = { itemID = 11742, "=q2=Wayfarer's Knapsack", "=ds=#m13# #e1#", "25.07%" };
		[21] = { itemID = 11313, "=q1=Ribbly's Head", "=ds=#m3#" };
		[23] = { icon = "INV_Box_01", "=q6=#n51#" };
		[24] = { itemID = 12793, "=q3=Mixologist's Tunic", "=ds=#s5#, #a2#", "24.87%" };
		[25] = { itemID = 12791, "=q3=Barman Shanker", "=ds=#h1#, #w4#", "6.97%" };
		[26] = { itemID = 13483, "=q2=Recipe: Transmute Fire to Earth", "=ds=#p1# (275)" };
		[27] = { itemID = 18653, "=q2=Schematic: Goblin Jumper Cables XL", "=ds=#p5# (265)", "14.13%" };
		[28] = { itemID = 15759, "=q1=Pattern: Black Dragonscale Breastplate", "=ds=#p7# (290)" };
		[29] = { itemID = 11602, "=q1=Grim Guzzler Key", "=ds=#e9#" };
		[30] = { itemID = 11325, "=q1=Dark Iron Ale Mug", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Ambassador Flamelash"];
		[1] = { itemID = 11808, "=q4=Circle of Flame", "=ds=#s1#, #a1#", "0.84%" };
		[3] = { itemID = 11812, "=q3=Cape of the Fire Salamander", "25.25%" };
		[4] = { itemID = 11814, "=q3=Molten Fists", "=ds=#s9#, #a3#", "27.88%" };
		[5] = { itemID = 11832, "=q3=Burst of Knowledge", "14.61%" };
		[6] = { itemID = 11809, "=q3=Flame Wrath", "=ds=#w7#", "18.69%" };
		[8] = { itemID = 23320, "=q3=Tablet of Flame Shock VI", "=ds=#e10# =q1=#m1# =ds=#c7#" };
	};
	{
		Name = BabbleBoss["Panzor the Invincible"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 22245, "=q3=Soot Encrusted Footwear", "=ds=#s12#,#a1#", "22.06%" };
		[2] = { itemID = 11787, "=q3=Shalehusk Boots", "=ds=#s12#, #a4#", "19.96%" };
		[3] = { itemID = 11786, "=q3=Stone of the Earth", "=ds=#h2#, #w10#", "20.38%" };
		[4] = { itemID = 11785, "=q3=Rock Golem Bulwark", "=ds=#w8#", "21.22%" };
	};
	{
		Name = "Summoner's Tomb";
		[1] = { icon = "INV_Box_01", "=q6=#x2#" };
		[2] = { itemID = 11929, "=q3=Haunting Specter Leggings", "=ds=#s11#, #a1#", "22.60%" };
		[3] = { itemID = 11925, "=q3=Ghostshroud", "=ds=#s1#, #a2#", "21.63%" };
		[4] = { itemID = 11926, "=q3=Deathdealer Breastplate", "=ds=#s5#, #a3#", "22.08%" };
		[5] = { itemID = 11927, "=q3=Legplates of the Eternal Guardian", "=ds=#s11#, #a4#", "65.45%" };
		[6] = { itemID = 11922, "=q3=Blood-etched Blade", "=ds=#h3#, #w4#", "22.05%" };
		[7] = { itemID = 11920, "=q3=Wraith Scythe", "=ds=#h1# #w1#", "22.61%" };
		[8] = { itemID = 11923, "=q3=The Hammer of Grace", "=ds=#h3#, #w6#", "21.29%" };
		[9] = { itemID = 11921, "=q3=Impervious Giant", "22.23%" };
	};
	{
		Name = AL["Shadowforge Flame Keeper"];
		[1] = { icon = "INV_Box_01", "=q6=#n44#" };
		[2] = { itemID = 11885, "=q1=Shadowforge Torch", "=ds=#m20#" };
	};
	{
		Name = BabbleBoss["Magmus"];
		[1] = { itemID = 11746, "=q3=Golem Skull Helm", "=ds=#s1#, #a4#", "20.46%" };
		[2] = { itemID = 11935, "=q3=Magmus Stone", "21.26%" };
		[3] = { itemID = 22395, "=q3=Totem of Rage", "=ds=#s16#, #w15#", "10.09%" };
		[4] = { itemID = 22400, "=q3=Libram of Truth", "=ds=#s16#, #w16#", "9.75%" };
		[5] = { itemID = 22208, "=q3=Lavastone Hammer", "22.79%" };
	};
	{
		Name = BabbleBoss["Emperor Dagran Thaurissan"];
		[1] = { itemID = 11684, "=q4=Ironfoe", "=ds=#h1#, #w6#", "0.46%" };
		[3] = { itemID = 11930, "=q3=The Emperor's New Cape", "16.16%" };
		[4] = { itemID = 11924, "=q3=Robes of the Royal Crown", "=ds=#s5#, #a1#", "15.18%" };
		[5] = { itemID = 22204, "=q3=Wristguards of Renown", "=ds=#s8#, #a2#", "12.92%" };
		[6] = { itemID = 22207, "=q3=Sash of the Grand Hunt", "=ds=#s10#, #a3#", "15.12%" };
		[7] = { itemID = 11933, "=q3=Imperial Jewel", "15.99%" };
		[8] = { itemID = 11934, "=q3=Emperor's Seal", "15.41%" };
		[9] = { itemID = 11815, "=q3=Hand of Justice", "10.43%" };
		[16] = { itemID = 11931, "=q3=Dreadforge Retaliator", "=ds=#h2#, #w1#", "15.76%" };
		[17] = { itemID = 11932, "=q3=Guiding Stave of Wisdom", "=ds=#w9#", "15.01%" };
		[18] = { itemID = 11928, "=q3=Thaurissan's Royal Scepter", " 12.86%" };
		[20] = { itemID = 12033, "=q1=Thaurissan Family Jewels", "=ds=#e7# #e1#", "2.2%" };
	};
	{
		Name = BabbleBoss["Princess Moira Bronzebeard"];
		[1] = { itemID = 12554, "=q3=Hands of the Exalted Herald", "=ds=#s9#, #a1#", "11.91%" };
		[2] = { itemID = 12556, "=q3=High Priestess Boots", "=ds=#s12#, #a1#", "10.26%" };
		[3] = { itemID = 12557, "=q3=Ebonsteel Spaulders", "=ds=#s3#, #a4#", "12.11%" };
		[4] = { itemID = 12553, "=q3=Swiftwalker Boots", "=ds=#s12#, #a2#", "11.05%" };
	};
	{
		Name = "Blacksmith Plans";
		[1] = { itemID = 11614, "=q2=Plans: Dark Iron Mail", "=ds=#p2# (270)", "13.38%" };
		[2] = { itemID = 11615, "=q2=Plans: Dark Iron Shoulders", "=ds=#p2# (280)", "7.65%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 12552, "=q3=Blisterbane Wrap", "0.01%" };
		[2] = { itemID = 12551, "=q3=Stoneshield Cloak", "0.01%" };
		[3] = { itemID = 12542, "=q3=Funeral Pyre Vestment", "=ds=#s5#, #a1#", "0.02%" };
		[4] = { itemID = 12546, "=q3=Aristocratic Cuffs", "=ds=#s8#, #a1#", "0.01%" };
		[5] = { itemID = 12550, "=q3=Runed Golem Shackles", "=ds=#s8#, #a2#", "0.02%" };
		[6] = { itemID = 12547, "=q3=Mar Alom's Grip", "=ds=#s9#, #a2#", "0.01%" };
		[7] = { itemID = 12549, "=q3=Braincage", "=ds=#s1#, #a3#", "0.02%" };
		[8] = { itemID = 12555, "=q3=Battlechaser's Greaves", "=ds=#s12#, #a4#", "0.01%" };
		[9] = { itemID = 12531, "=q3=Searing Needle", "=ds=#h1#, #w4#", "0.02%" };
		[10] = { itemID = 12535, "=q3=Doomforged Straightedge", "0.01%" };
		[11] = { itemID = 12527, "=q3=Ribsplitter", "=ds=#h1#, #w1# =q2=#m16#", "0.02%" };
		[12] = { itemID = 12528, "=q3=The Judge's Gavel", "0.02%" };
		[13] = { itemID = 12532, "=q3=Spire of the Stoneshaper", "=ds=#w9#", "0.01%" };
		[16] = { itemID = 15781, "=q3=Pattern: Black Dragonscale Leggings", "=ds=#p7# (300) =q1=#n75#", "1.93%" };
		[17] = { itemID = 15770, "=q3=Pattern: Black Dragonscale Shoulders", "=ds=#p7# (300) =q1=#n76#", "1.88%" };
		[18] = { itemID = 16053, "=q2=Schematic: Master Engineer's Goggles", "=ds=#p5# (290) =q1=#n77#", "0.45%" };
		[19] = { itemID = 16049, "=q2=Schematic: Dark Iron Bomb", "=ds=#p5# (285) =q1=#n78#", "1.02%" };
		[20] = { itemID = 16048, "=q2=Schematic: Dark Iron Rifle", "=ds=#p5# (275) =q1=#n79#", "0.98%" };
		[21] = { itemID = 18654, "=q2=Schematic: Gnomish Alarm-O-Bot", "=ds=#p5# (265) =q1=#n78#", "1.88%" };
		[22] = { itemID = 18661, "=q2=Schematic: World Enlarger", "=ds=#p5# (260) =q1=#n78#", "2.00%" };
		[24] = { itemID = 11754, "=q2=Black Diamond", "#e8#", "5.0%" };
		[25] = { itemID = 11078, "=q1=Relic Coffer Key", "=ds=#e9#" };
		[26] = { itemID = 18945, "=q1=Dark Iron Residue", "=ds=#m3#" };
		[27] = { itemID = 11468, "=q1=Dark Iron Fanny Pack", "=ds=#m3#" };
		[28] = { itemID = 11446, "=q1=A Crumpled Up Note", "=ds=#m2#" };
	};
};

-------------------------------------------------
--- Blackrock Mountain: Lower Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["LowerBlackrock"] = {
	Name = BabbleZone["Lower Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Loadfirst = 3;
	Map = "BlackrockSpireLower";
	{
		Name = AL["Scarshield Quartermaster"];
		[1] = { itemID = 18987, "=q1=Blackhand's Command", "100%" };
		Next = "LBRSQuestItems";

	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12812, "=q3=Unfired Plate Gauntlets", "=ds=#m3#", "100%" };
		[2] = { itemID = 12631, "=q3=Fiery Plate Gauntlets", "=q1=#m4#: =ds=#s9#, #a4#" };
		[3] = { itemID = 12699, "=q3=Plans: Fiery Plate Gauntlets", "=q1=#m4#: =ds=#p2# (290)" };
		[5] = { itemID = 12533, "=q1=Roughshod Pike", "=ds=#m3#" };
		[6] = { itemID = 12740, "=q1=Fifth Mosh'aru Tablet", "=ds=#m3#" };
		[7] = { itemID = 12741, "=q1=Sixth Mosh'aru Tablet", "=ds=#m3#" };
		[8] = { itemID = 12345, "=q1=Bijou's Belongings", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Spirestone Butcher"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 12608, "=q3=Butcher's Apron", "54.31%" };
		[2] = { itemID = 13286, "=q3=Rivenspike", "35.78%" };
	};
	{
		Name = BabbleBoss["Highlord Omokk"];
		[1] = { itemID = 13170, "=q3=Skyshroud Leggings", "=ds=#s11#, #a1#", "8.52%" };
		[2] = { itemID = 13169, "=q3=Tressermane Leggings", "=ds=#s11#, #a2#", "9.52%" };
		[3] = { itemID = 13168, "=q3=Plate of the Shaman King", "=ds=#s5#, #a4#", "8.62%" };
		[4] = { itemID = 13166, "=q3=Slamshot Shoulders", "=ds=#s3#, #a4#", "7.25%" };
		[5] = { itemID = 13167, "=q3=Fist of Omokk", "10.64%" };
		[7] = { itemID = 12336, "=q2=Gemstone of Spirestone", "=ds=#m3#", "100%" };
		[9] = { itemID = 12534, "=q1=Omokk's Head", "=ds=#m3#", "100%" };
		[16] = { itemID = 16670, "=q3=Boots of Elements", "=ds=#s12#, #a3# (D1, #c7#)", "9.35%" };
	};
	{
		Name = BabbleBoss["Spirestone Battle Lord"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13284, "=q3=Swiftdart Battleboots", "=ds=#s12#, #a3#", "48.68%" };
		[2] = { itemID = 13285, "=q3=The Blackrock Slicer", "=ds=#h2#, #w1#", "34.87%" };
	};
	{
		Name = BabbleBoss["Spirestone Lord Magus"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13282, "=q3=Ogreseer Tower Boots", "=ds=#s12#, #a3#", "22.95%" };
		[2] = { itemID = 13283, "=q3=Magus Ring", "38.01%" };
		[3] = { itemID = 13261, "=q3=Globe of D'sak", "18.07%" };
	};
	{
		Name = BabbleBoss["Shadow Hunter Vosh'gajin"];
		[1] = { itemID = 12626, "=q3=Funeral Cuffs", "=ds=#s8#, #a1#", "18.74%" };
		[2] = { itemID = 13257, "=q3=Demonic Runed Spaulders", "=ds=#s3#, #a2#", "" };
		[3] = { itemID = 13255, "=q3=Trueaim Gauntlets", "=ds=#s9#, #a3#", "18.08%" };
		[4] = { itemID = 12651, "=q3=Blackcrow", "=ds=#w3#", "8.56%" };
		[5] = { itemID = 12653, "=q3=Riphook", "=ds=#w2#", "7.99%" };
		[6] = { itemID = 12654, "=q3=Doomshot", "=ds=#w17#", "23.06%" };
		[8] = { itemID = 13352, "=q1=Vosh'gajin's Snakestone", "=ds=#m3#", "100%" };
		[9] = { itemID = 12821, "=q3=Plans: Dawn's Edge", "=q1=#m4#: =ds=#p2# (275)" };
		[16] = { itemID = 16712, "=q3=Shadowcraft Gloves", "=ds=#s9#, #a2# (D1, #c6#)", "11.89%" };
	};
	{
		Name = BabbleBoss["War Master Voone"];
		[1] = { itemID = 22231, "=q3=Kayser's Boots of Precision", "=ds=#s12#, #a1#", "15.40%" };
		[2] = { itemID = 13179, "=q3=Brazecore Armguards", "=ds=#s8#, #a3#", "16.12%" };
		[3] = { itemID = 13177, "=q3=Talisman of Evasion", "15.40%" };
		[4] = { itemID = 12582, "=q3=Keris of Zul'Serak", "=ds=#h1#, #w4#", "8.08%" };
		[5] = { itemID = 28972, "=q3=Flightblade Throwing Axe", "=ds=#w11#", "79.85%" };
		[7] = { itemID = 12335, "=q2=Gemstone of Smolderthorn", "=ds=#m3#", "100%" };
		[16] = { itemID = 16676, "=q3=Beaststalker's Gloves", "=ds=#s9#, #a3# (D1, #c2#)", "9.15%" };
	};
	{
		Name = BabbleBoss["Mor Grayhoof"] .. " (" .. AL["Summon"] .. ")";
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n21#" };
		[2] = { itemID = 22306, "=q3=Ironweave Belt", "=ds=#s10#, #a1#", "20.28%" };
		[3] = { itemID = 22325, "=q3=Belt of the Trickster", "=ds=#s10#, #a2#", "20.28%" };
		[4] = { itemID = 22319, "=q3=Tome of Divine Right", "20.81%" };
		[5] = { itemID = 22398, "=q3=Idol of Rejuvenation", "=ds=#s16#, #w14#", "12.87%" };
		[6] = { itemID = 22322, "=q3=The Jaw Breaker", "=ds=#h1#, #w6#", "20.28%" };
		[8] = { itemID = 21984, "=q1=Left Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
		[9] = { itemID = 22046, "=q1=Right Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Bannok Grimaxe"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 12634, "=q3=Chiselbrand Girdle", "=ds=#s10#, #a3#", "31.73%" };
		[2] = { itemID = 12637, "=q3=Backusarian Gauntlets", "=ds=#s9#, #a4#", "26.44%" };
		[3] = { itemID = 12621, "=q3=Demonfork", "27.64%" };
		[5] = { itemID = 12838, "=q3=Plans: Arcanite Reaper", "=ds=#p2# (300)", "" };
		[6] = { itemID = 12784, "=q3=Arcanite Reaper", "=ds=#h2#, #w1#" };
	};
	{
		Name = BabbleBoss["Mother Smolderweb"];
		[1] = { itemID = 13244, "=q3=Gilded Gauntlets", "=ds=#s9#, #a3#", "25.06%" };
		[2] = { itemID = 13213, "=q3=Smolderweb's Eye", "24.97%" };
		[3] = { itemID = 13183, "=q3=Venomspitter", "=ds=#h1#, #w6#", "12.49%" };
		[16] = { itemID = 16715, "=q3=Wildheart Boots", "=ds=#s12#, #a2# (D1, #c1#)", "13.03%" };
	};
	{
		Name = BabbleBoss["Crystal Fang"];
		[1] = { itemID = 13185, "=q3=Sunderseer Mantle", "=ds=#s3#, #a1#", "28.10%" };
		[2] = { itemID = 13184, "=q3=Fallbrush Handgrips", "=ds=#s9#, #a2#", "35.48%" };
		[3] = { itemID = 13218, "=q3=Fang of the Crystal Spider", "=ds=#h1#, #w4#", "17.62%" };
	};
	{
		Name = BabbleBoss["Urok Doomhowl"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 13258, "=q3=Slaghide Gauntlets", "=ds=#s9#, #a2#", "17.09%" };
		[2] = { itemID = 22232, "=q3=Marksman's Girdle", "=ds=#s10#, #a3#", "20.60%" };
		[3] = { itemID = 13259, "=q3=Ribsteel Footguards", "=ds=#s12#, #a4#", "25.38%" };
		[4] = { itemID = 13178, "=q3=Rosewine Circle", "21.48%" };
		[6] = { itemID = 18784, "=q3=Top Half of Advanced Armorsmithing: Volume III", "=ds=#m3#", "10.30%" };
		[7] = { itemID = 12725, "=q3=Plans: Enchanted Thorium Helm", "=q1=#m4#: =ds=#p2# (300)" };
		[9] = { itemID = 12712, "=q1=Warosh's Mojo", "=ds=#m3#", "100%" };
		[10] = { itemID = 15867, "=q2=Prismcharm" };
	};
	{
		Name = BabbleBoss["Quartermaster Zigris"];
		[1] = { itemID = 13253, "=q3=Hands of Power", "=ds=#s9#, #a1#", "14.22%" };
		[2] = { itemID = 13252, "=q3=Cloudrunner Girdle", "=ds=#s10#, #a2#", "15.48%" };
		[4] = { itemID = 12835, "=q3=Plans: Annihilator", "=ds=#p2# (300)", "8.37%" };
		[5] = { itemID = 12798, "=q3=Annihilator", "=ds=#h1#, #w1#" };
		[7] = { itemID = 21955, "=q2=Design: Black Diamond Crab", "=ds=#p12# (300)" };
	};
	{
		Name = BabbleBoss["Gizrul the Slavener"];
		[1] = { itemID = 13206, "=q3=Wolfshear Leggings", "=ds=#s11#, #a1#", "17.46%" };
		[2] = { itemID = 13208, "=q3=Bleak Howler Armguards", "=ds=#s8#, #a2#", "18.02%" };
		[3] = { itemID = 13205, "=q3=Rhombeard Protector", "=ds=#w8#", "1" };
		[16] = { itemID = 16718, "=q3=Wildheart Spaulders", "=ds=#s3#, #a2# (D1, #c1#)", "11.04%" };
	};
	{
		Name = BabbleBoss["Halycon"];
		[1] = { itemID = 22313, "=q3=Ironweave Bracers", "=ds=#s8#, #a1#", "18.16%" };
		[2] = { itemID = 13210, "=q3=Pads of the Dread Wolf", "=ds=#s12#, #a2#", "9.88%" };
		[3] = { itemID = 13211, "=q3=Slashclaw Bracers", "=ds=#s8#, #a3#", "20.32%" };
		[4] = { itemID = 13212, "=q3=Halycon's Spiked Collar", "18.23%" };
	};
	{
		Name = BabbleBoss["Ghok Bashguud"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13203, "=q3=Armswake Cloak", "35.31%" };
		[2] = { itemID = 13198, "=q3=Hurd Smasher", "=ds=#h1#, #w13#", "21.15%" };
		[3] = { itemID = 13204, "=q3=Bashguuder", "=ds=#h1#, #w6#", "27.09%" };
	};
	{
		Name = BabbleBoss["Overlord Wyrmthalak"];
		[1] = { itemID = 13143, "=q4=Mark of the Dragon Lord", "1.11%" };
		[3] = { itemID = 13162, "=q3=Reiver Claws", "=ds=#s9#, #a4#", "12.14%" };
		[4] = { itemID = 13164, "=q3=Heart of the Scale", "0.73%" };
		[5] = { itemID = 22321, "=q3=Heart of Wyrmthalak", "13.87%" };
		[6] = { itemID = 13163, "=q3=Relentless Scythe", "=ds=#h2#, #w10#", "14.12%" };
		[7] = { itemID = 13148, "=q3=Chillpike", "=ds=#w7#", "0.76%" };
		[8] = { itemID = 13161, "=q3=Trindlehaven Staff", "=ds=#w9#", "10.40%" };
		[10] = { itemID = 12337, "=q2=Gemstone of Bloodaxe", "=ds=#m3#", "100%" };
		[16] = { itemID = 16679, "=q3=Beaststalker's Mantle", "=ds=#s3#, #a3# (D1, #c2#)", "9.89%" };
	};
	{
		Name = BabbleBoss["Burning Felguard"] .. " (" .. AL["Rare"] .. ", " .. AL["Random"] .. ")";
		[1] = { itemID = 13181, "=q3=Demonskin Gloves", "=ds=#s9#, #a1#", "14.47%" };
		[2] = { itemID = 13182, "=q3=Phase Blade", "11.63%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 14513, "=q4=Pattern: Robe of the Archmage", "=ds=#p8# (300) =q1=#m1# =ds=#c3# =q1=#n71#", "10.12%" };
		[2] = { itemID = 14152, "=q4=Robe of the Archmage", "=ds=#s5#, #a1# =q1=#m1# =ds=#c3#" };
		[4] = { itemID = 13494, "=q2=Recipe: Greater Fire Protection Potion", "=ds=#p1# (290) =q1=#n71#/#n72#", "1.94%" };
		[5] = { itemID = 16250, "=q2=Formula: Enchant Weapon - Superior Striking", "=ds=#p4# (300) =q1=#n75#", "1.04%" };
		[6] = { itemID = 16244, "=q2=Formula: Enchant Gloves - Greater Strength", "=ds=#p4# (295) =q1=#n76#", "4.16%" };
		[7] = { itemID = 15749, "=q2=Pattern: Volcanic Breastplate", "=ds=#p7# (285) =q1=#n73#", "2.04%" };
		[8] = { itemID = 15775, "=q2=Pattern: Volcanic Shoulders", "=ds=#p7# (300) =q1=#n74#", "10.56%" };
		[10] = { itemID = 12219, "=q1=Unadorned Seal of Ascension", "=ds=#m3#" };
		[11] = { itemID = 21982, "=q1=Ogre Warbeads", "=ds=#m3#" };
	};
};

-------------------------------------------------
--- Blackrock Mountain: Upper Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["UpperBlackrock"] = {
	Name = BabbleZone["Upper Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Map = "BlackrockSpireUpper";
	{
		Name = BabbleBoss["Pyroguard Emberseer"];
		[1] = { itemID = 12905, "=q3=Wildfire Cape", "15.20%" };
		[2] = { itemID = 12927, "=q3=TruestrikeShoulders", "=ds=#s3#, #a2#", "17.47%" };
		[3] = { itemID = 12929, "=q3=Emberfury Talisman", "15.89%" };
		[4] = { itemID = 12926, "=q3=Flaming Band", "18.52%" };
		[6] = { itemID = 17322, "=q1=Eye of the Emberseer", "=ds=#m3#", "100%" };
		[7] = { itemID = 21988, "=q1=Ember of Emberseer", "=ds=#m3#" };
		[16] = { itemID = 16672, "=q3=Gauntlets of Elements", "=ds=#s9#, #a3# (D1, #c7#)", "14.23%" };
	};
	{
		Name = BabbleBoss["Solakar Flamewreath"];
		[1] = { itemID = 12609, "=q3=Polychromatic Visionwrap", "=ds=#s5#, #a1#", "15.82%" };
		[2] = { itemID = 12589, "=q3=Dustfeather Sash", "=ds=#s10#, #a1#", "12.84%" };
		[3] = { itemID = 12603, "=q3=Nightbrace Tunic", "=ds=#s5#, #a2#", "" };
		[4] = { itemID = 12606, "=q3=Crystallized Girdle", "=ds=#s10#, #a2#", "14.04%" };
		[6] = { itemID = 18657, "=q2=Schematic: Hyper-Radiant Flame Reflector", "=ds=#p5# (290)", "7.38%" };
		[7] = { itemID = 18638, "=q3=Hyper-Radiant Flame Reflector", "=ds=#s14#" };
		[16] = { itemID = 16695, "=q3=Devout Mantle", "=ds=#s3#, #a1# (D1, #c5#)", "12.84%" };
	};
	{
		Name = AL["Father Flame"];
		[1] = { itemID = 13371, "=q2=Father Flame", "100%" };
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12358, "=q1=Darkstone Tablet", "=ds=#m3#" };
		[2] = { itemID = 12352, "=q1=Doomrigger's Clasp", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Jed Runewatcher"];
		[1] = { itemID = 12604, "=q3=Starfire Tiara", "=ds=#s1#, #a1#", "28.64%" };
		[2] = { itemID = 12930, "=q3=Briarwood Reed", "26.36%" };
		[3] = { itemID = 12605, "=q3=Serpentine Skuller", "32.95%" };
	};
	{
		Name = BabbleBoss["Goraluk Anvilcrack"];
		[1] = { itemID = 18047, "=q3=Flame Walkers", "=ds=#s12#, #a3#", "18.05%" };
		[2] = { itemID = 13502, "=q3=Handcrafted Mastersmith Girdle", "=ds=#s10#, #a4#", "15.78%" };
		[3] = { itemID = 13498, "=q3=Handcrafted Mastersmith Leggings", "=ds=#s11#, #a4#", "20.63%" };
		[4] = { itemID = 18048, "=q3=Mastersmith's Hammer", "=ds=#h3#, #w6#", "17.26%" };
		[6] = { itemID = 12837, "=q3=Plans: Masterwork Stormhammer", "=ds=#p2# (300)", "4.80%" };
		[7] = { itemID = 12794, "=q3=Masterwork Stormhammer", "=ds=#h1#, #w6#" };
		[8] = { itemID = 12834, "=q3=Plans: Arcanite Champion", "=ds=#p2# (300)", "4.75%" };
		[9] = { itemID = 12790, "=q3=Arcanite Champion", "=ds=#h2#, #w10#" };
		[11] = { itemID = 18779, "=q3=Bottom Half of Advanced Armorsmithing: Volume I", "=ds=#m3#", "17.08%" };
		[12] = { itemID = 12727, "=q3=Plans: Enchanted Thorium Breastplate", "=q1=#m4#: =ds=#p2# (300)" };
		[16] = { icon = "INV_Box_01", "=q6=#x10#" };
		[17] = { itemID = 12806, "=q3=Unforged Rune Covered Breastplate", "=ds=#m3#" };
		[18] = { itemID = 12696, "=q3=Plans: Demon Forged Breastplate", "=q1=#m4#: =ds=#p2# (285)" };
	};
	{
		Name = BabbleBoss["Warchief Rend Blackhand"];
		[1] = { itemID = 12590, "=q4=Felstriker", "=ds=#h1#, #w4#", "1.06%" };
		[3] = { itemID = 22247, "=q3=Faith Healer's Boots", "=ds=#s12#, #a1#", "12.71%" };
		[4] = { itemID = 18102, "=q3=Dragonrider Boots", "=ds=#s12#, #a1#", "14.35%" };
		[5] = { itemID = 12587, "=q3=Eye of Rend", "=ds=#s1#, #a2#", "14.50%" };
		[6] = { itemID = 12588, "=q3=Bonespike Shoulder", "=ds=#s3#, #a3#", "0.85%" };
		[7] = { itemID = 18104, "=q3=Feralsurge Girdle", "=ds=#s10#, #a3#", "15.30%" };
		[8] = { itemID = 12936, "=q3=Battleborn Armbraces", "=ds=#s8#, #a4#", "16.96%" };
		[9] = { itemID = 12935, "=q3=Warmaster Legguards", "=ds=#s11#, #a4#", "15.05%" };
		[10] = { itemID = 18103, "=q3=Band of Rumination", "15.38%" };
		[16] = { itemID = 16733, "=q3=Spaulders of Valor", "=ds=#s3#, #a4# (D1, #c9#)", "13.39%" };
		[18] = { itemID = 12940, "=q3=Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#", "6.79%" };
		[19] = { itemID = 12939, "=q3=Dal'Rend's Tribal Guardian", "=ds=#h4#, #w10#", "7.61%" };
		[20] = { itemID = 12583, "=q3=Blackhand Doomsaw", "=ds=#w7#", "7.44%" };
		[22] = { itemID = 12630, "=q1=Head of Rend Blackhand", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Gyth"];
		[1] = { itemID = 12871, "=q4=Chromatic Carapace", "=ds=#m3#", "2.64%" };
		[2] = { itemID = 12945, "=q4=Legplates of the Chromatic Defier", "=q1=#m4#: =ds=#s11#, #a3#" };
		[3] = { itemID = 12903, "=q4=Legguards of the Chromatic Defier", "=q1=#m4#: =ds=#s11#, #a3#" };
		[4] = { itemID = 12895, "=q4=Breastplate of the Chromatic Flight", "=q1=#m4#: =ds=#s5#, #a4#" };
		[6] = { itemID = 22225, "=q3=Dragonskin Cowl", "=ds=#s1#, #a1# =q2=#m16#", "11.85%" };
		[7] = { itemID = 12960, "=q3=Tribal War Feathers", "=ds=#s1#, #a2# =q2=#m16#", "15.24%" };
		[8] = { itemID = 12953, "=q3=Dragoneye Coif", "=ds=#s1#, #a3# =q2=#m16#", "15.99%" };
		[9] = { itemID = 12952, "=q3=Gyth's Skull", "=ds=#s1#, #a4# =q2=#m16#", "12.43%" };
		[11] = { itemID = 13522, "=q2=Recipe: Flask of Chromatic Resistance", "=ds=#p1# (300)", "2.95%" };
		[16] = { itemID = 16669, "=q3=Pauldrons of Elements", "=ds=#s3#, #a3# (D1, #c7#)", "14.77%" };
	};
	{
		Name = BabbleBoss["The Beast"];
		[1] = { itemID = 12731, "=q4=Pristine Hide of the Beast", "=ds=#m3#", "0.77%" };
		[2] = { itemID = 12752, "=q4=Cap of the Scarlet Savant", "=q1=#m4#: =ds=#s1#, #a1#" };
		[3] = { itemID = 12757, "=q4=Breastplate of Bloodthirst", "=q1=#m4#: =ds=#s5#, #a2#" };
		[4] = { itemID = 12756, "=q4=Leggings of Arcana", "=q1=#m4#: =ds=#s11#, #a2#" };
		[6] = { itemID = 12967, "=q3=Bloodmoon Cloak", "18.30%" };
		[7] = { itemID = 12968, "=q3=Frostweaver Cape", "14.47%" };
		[8] = { itemID = 12965, "=q3=Spiritshroud Leggings", "=ds=#s11#, #a1#", "13.16%" };
		[9] = { itemID = 22311, "=q3=Ironweave Boots", "=ds=#s12#, #a1#", "12.31%" };
		[10] = { itemID = 12966, "=q3=Blackmist Armguards", "=ds=#s8#, #a2#", "16.06%" };
		[11] = { itemID = 12963, "=q3=Blademaster Leggings", "=ds=#s11#, #a2#", "12.74%" };
		[12] = { itemID = 12964, "=q3=Tristam Legguards", "=ds=#s11#, #a3#", "18.16%" };
		[13] = { itemID = 12709, "=q3=Finkle's Skinner", "=ds=#h1#, #w4#, =q1=#e18#", "6.95%" };
		[14] = { itemID = 12969, "=q3=Seeping Willow", "11.49%" };
		[16] = { itemID = 16729, "=q3=Lightforge Spaulders", "=ds=#s3#, #a4# (D1, #c4#)", "13.62%" };
		[18] = { itemID = 24101, "=q3=Book of Ferocious Bite V", "=ds=#e10# =q1=#m1# =ds=#c1#", "1.44%" };
		[19] = { itemID = 19227, "=q3=Ace of Beasts", "=ds=#e16#", "4.53%" };
	};
	{
		Name = BabbleBoss["Lord Valthalak"] .. " (" .. AL["Summon"] .. ")";
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n16#" };
		[2] = { itemID = 22337, "=q3=Shroud of Domination", "23.37%" };
		[3] = { itemID = 22302, "=q3=Ironweave Cowl", "=ds=#s1#, #a1#", "27.72%" };
		[4] = { itemID = 22342, "=q3=Leggings of Torment", "=ds=#s11#, #a1#", "23.10%" };
		[5] = { itemID = 22343, "=q3=Handguards of Savagery", "=ds=#s9#, #a3#", "20.11%" };
		[6] = { itemID = 22340, "=q3=Pendant of Celerity", "17.66%" };
		[7] = { itemID = 22339, "=q3=Rune Band of Wizardry", "15.49%" };
		[8] = { itemID = 22335, "=q3=Lord Valthalak's Staff of Command", "=ds=#w9#", "14.67%" };
		[9] = { itemID = 22336, "=q3=Draconian Aegis of the Legion", "=ds=#w8#", "17.66%" };
	};
	{
		Name = BabbleBoss["General Drakkisath"];
		[1] = { itemID = 12592, "=q4=Blackblade of Shahram", "=ds=#h2#, #w10#", "1.08%" };
		[3] = { itemID = 22269, "=q3=Shadow Prowler's Cloak", "10.61%" };
		[4] = { itemID = 22267, "=q3=Spellweaver's Turban", "=ds=#s1#, #a1#", "15.50%" };
		[5] = { itemID = 13142, "=q3=Brigam Girdle", "=ds=#s10#, #a4#", "16.40%" };
		[6] = { itemID = 13141, "=q3=Tooth of Gnarr", "" };
		[7] = { itemID = 13098, "=q3=Painweaver Band", "13.51%" };
		[8] = { itemID = 22268, "=q3=Draconic Infused Emblem", "4.13%" };
		[9] = { itemID = 22253, "=q3=Tome of the Lost", "16.05%" };
		[10] = { itemID = 12602, "=q3=Draconian Deflector", "=ds=#w8#", "14.52%" };
		[12] = { itemID = 15730, "=q3=Pattern: Red Dragonscale Breastplate", "=ds=#p7# (300)", "3.58%" };
		[13] = { itemID = 15047, "=q3=Red Dragonscale Breastplate", "=ds=#s5#, #a3#" };
		[15] = { itemID = 13519, "=q2=Recipe: Flask of the Titans", "=ds=#p1# (300)", "1.72%" };
		[16] = { itemID = 16688, "=q3=Magister's Robes", "=ds=#s5#, #a1# (D1, #c3#)", "7.24%" };
		[17] = { itemID = 16700, "=q3=Dreadmist Robe", "=ds=#s5#, #a1# (D1, #c8#)", "8.04%" };
		[18] = { itemID = 16690, "=q3=Devout Robe", "=ds=#s5#, #a1# (D1, #c5#)", "6.20%" };
		[19] = { itemID = 16706, "=q3=Wildheart Vest", "=ds=#s5#, #a2# (D1, #c1#)", "7.36%" };
		[20] = { itemID = 16721, "=q3=Shadowcraft Tunic", "=ds=#s5#, #a2# (D1, #c6#)", "6.09%" };
		[21] = { itemID = 16674, "=q3=Beaststalker's Tunic", "=ds=#s5#, #a3# (D1, #c2#)", "6.81%" };
		[22] = { itemID = 16666, "=q3=Vest of Elements", "=ds=#s5#, #a3# (D1, #c7#)", "3.03%" };
		[23] = { itemID = 16730, "=q3=Breastplate of Valor", "=ds=#s5#, #a4# (D1, #c9#)", "5.83%" };
		[24] = { itemID = 16726, "=q3=Lightforge Breastplate", "=ds=#s5#, #a4# (D1, #c4#)", "3.76%" };
		[30] = { itemID = 16663, "=q1=Blood of the Black Dragon Champion", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 13260, "=q3=Wind Dancer Boots", "=ds=#s12#, #a3#", "0.01%" };
		[2] = { itemID = 24102, "=q3=Manual of Eviscerate IX", "=ds=#e10# =q1=#m1# =ds=#c6# =q1=#n70#", "0.94%" };
		[4] = { itemID = 16247, "=q2=Formula: Enchant 2H Weapon - Superior Impact", "=ds=#p4# (295) =q1=#n69#", "1.54%" };
		[6] = { itemID = 12607, "=q3=Brilliant Chromatic Scale", "=ds=#m3#" };
		[7] = { itemID = 12219, "=q1=Unadorned Seal of Ascension", "=ds=#m3#" };
	};
};
---------------------------------------
--- Blackrock Mountain: Molten Core ---
---------------------------------------

AtlasLoot_Data["MoltenCore"] = {
	Name = BabbleZone["Molten Core"];
	Type = "ClassicRaid";
	Map = "MoltenCore";
	{
		Name = BabbleBoss["Lucifron"];
		[1] = { itemID = 18872, "=q4=Manastorm Leggings", "=ds=#s11#, #a1#", "1.93%" };
		[2] = { itemID = 19145, "=q4=Robe of Volatile Power", "=ds=#s5#, #a1#", "1.84%" };
		[3] = { itemID = 19146, "=q4=Wristguards of Stability", "=ds=#s8#, #a2#", "1.95%" };
		[4] = { itemID = 18875, "=q4=Salamander Scale Pants", "=ds=#s11#, #a2#", "2.00%" };
		[5] = { itemID = 18870, "=q4=Helm of the Lifegiver", "=ds=#s1#, #a3#", "1.09%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "2.15%" };
		[7] = { itemID = 17109, "=q4=Choker of Enlightenment", "12.61%" };
		[8] = { itemID = 18879, "=q4=Heavy Dark Iron Ring", "2.04%" };
		[9] = { itemID = 19147, "=q4=Ring of Spell Power", "2.23%" };
		[10] = { itemID = 18878, "=q4=Sorcerous Dagger", "=ds=#h3#, #w4#", "2.23%" };
		[11] = { itemID = 17077, "=q4=Crimson Shocker", "1.60%" };
		[16] = { itemID = 2522362, "=q4=Molten Wristguards", "=ds=#tt1#", "100%", lootTable = {"T1WRIST","Token"} };
		[18] = { itemID = 17329, "=q1=Hand of Lucifron", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Magmadar"];
		[1] = { itemID = 19136, "=q4=Mana Igniting Cord", "=ds=#s10#, #a1#", "4.79%" };
		[2] = { itemID = 18823, "=q4=Aged Core Leather Gloves", "=ds=#s9#, #a2#", "6.18%" };
		[3] = { itemID = 18829, "=q4=Deep Earth Spaulders", "=ds=#s3#, #a3#", "2.10%" };
		[4] = { itemID = 19144, "=q4=Sabatons of the Flamewalker", "=ds=#s12#, #a3#", "1.86%" };
		[5] = { itemID = 19143, "=q4=Flameguard Gauntlets", "=ds=#s9#, #a4#", "5.48%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "3.98%" };
		[7] = { itemID = 18824, "=q4=Magma Tempered Boots", "=ds=#s12#, #a4#", "3.22%" };
		[8] = { itemID = 17065, "=q4=Medallion of Steadfast Might", "14.05%" };
		[9] = { itemID = 18821, "=q4=Quick Strike Ring", "5.79%" };
		[10] = { itemID = 18820, "=q4=Talisman of Ephemeral Power", "5.55%" };
		[11] = { itemID = 19142, "=q4=Fire Runed Grimoire", "5.42%" };
		[12] = { itemID = 18203, "=q4=Eskhandar's Right Claw", "=ds=#h3#, #w13#", "17.82%" };
		[13] = { itemID = 18822, "=q4=Obsidian Edged Blade", "=ds=#h2#, #w10#", "5.68%" };
		[14] = { itemID = 17073, "=q4=Earthshaker", "16.75%" };
		[15] = { itemID = 17069, "=q4=Striker's Mark", "=ds=#w2#", "16.37%" };
		[16] = { itemID = 2522359, "=q4=Molten Leggaurds", "=ds=#tt1#", "100%", lootTable = {"T1LEGS","Token"} };
	};
	{
		Name = BabbleBoss["Gehennas"];
		[1] = { itemID = 19145, "=q4=Robe of Volatile Power", "=ds=#s5#, #a1#", "3.83%" };
		[2] = { itemID = 18872, "=q4=Manastorm Leggings", "=ds=#s11#, #a1#", "3.37%" };
		[3] = { itemID = 19146, "=q4=Wristguards of Stability", "=ds=#s8#, #a2#", "3.53%" };
		[4] = { itemID = 18875, "=q4=Salamander Scale Pants", "=ds=#s11#, #a2#", "3.57%" };
		[5] = { itemID = 18870, "=q4=Helm of the Lifegiver", "=ds=#s1#, #a3#", "1.77%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "3.48%" };
		[7] = { itemID = 18879, "=q4=Heavy Dark Iron Ring", "3.78%" };
		[8] = { itemID = 19147, "=q4=Ring of Spell Power", "3.78%" };
		[9] = { itemID = 18878, "=q4=Sorcerous Dagger", "=ds=#h3#, #w4#", "3.79%" };
		[10] = { itemID = 17077, "=q4=Crimson Shocker", "3.34%" };
		[16] = { itemID = 2522364, "=q4=Molten Girdle", "=ds=#tt1#", "100%", lootTable = {"T1HAND","Token"} };
		[18] = { itemID = 17331, "=q1=Hand of Gehennas", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Garr"];
		[1] = { itemID = 19136, "=q4=Mana Igniting Cord", "=ds=#s10#, #a1#", "4.80%" };
		[2] = { itemID = 18823, "=q4=Aged Core Leather Gloves", "=ds=#s9#, #a2#", "5.23%" };
		[3] = { itemID = 18829, "=q4=Deep Earth Spaulders", "=ds=#s3#, #a3#", "1.68%" };
		[4] = { itemID = 19144, "=q4=Sabatons of the Flamewalker", "=ds=#s12#, #a3#", "1.48%" };
		[5] = { itemID = 19143, "=q4=Flameguard Gauntlets", "=ds=#s9#, #a4#", "3.84%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "2.82%" };
		[7] = { itemID = 18824, "=q4=Magma Tempered Boots", "=ds=#s12#, #a4#", "3.05%" };
		[8] = { itemID = 18821, "=q4=Quick Strike Ring", "4.48%" };
		[9] = { itemID = 18820, "=q4=Talisman of Ephemeral Power", "4.13%" };
		[10] = { itemID = 19142, "=q4=Fire Runed Grimoire", "3.69%" };
		[11] = { itemID = 17071, "=q4=Gutgore Ripper", "=ds=#h1#, #w4#", "11.21%" };
		[12] = { itemID = 18832, "=q4=Brutality Blade", "13.27%" };
		[13] = { itemID = 18822, "=q4=Obsidian Edged Blade", "=ds=#h2#, #w10#", "4.09%" };
		[14] = { itemID = 17105, "=q4=Aurastone Hammer", "=ds=#h3#, #w6#", "12.67%" };
		[15] = { itemID = 17066, "=q4=Drillborer Disk", "=ds=#w8#", "11.85%" };
		[16] = { itemID = 2522360, "=q4=Molten Headpiece", "=ds=#tt1#", "100%", lootTable = {"T1HEAD","Token"} };
		[18] = { itemID = 18564, "=q5=Bindings of the Windseeker", "=ds=#m3#, =q1=#m9#", "3.74%" };
		[19] = { itemID = 19019, "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
		[21] = { itemID = 17782, "=q5=Talisman of Binding Shard", "" };
		[22] = { itemID = 11879, "=q5=Medallion of Binding Shard", "" };
	};
	{
		Name = BabbleBoss["Shazzrah"];
		[1] = { itemID = 19145, "=q4=Robe of Volatile Power", "=ds=#s5#, #a1#", "1.97%" };
		[2] = { itemID = 18872, "=q4=Manastorm Leggings", "=ds=#s11#, #a1#", "1.84%" };
		[3] = { itemID = 19146, "=q4=Wristguards of Stability", "=ds=#s8#, #a2#", "1.85%" };
		[4] = { itemID = 18875, "=q4=Salamander Scale Pants", "=ds=#s11#, #a2#", "1.81%" };
		[5] = { itemID = 18870, "=q4=Helm of the Lifegiver", "=ds=#s1#, #a3#", "0.78%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "2.22%" };
		[7] = { itemID = 18879, "=q4=Heavy Dark Iron Ring", "1.72%" };
		[8] = { itemID = 19147, "=q4=Ring of Spell Power", "1.99%" };
		[9] = { itemID = 18878, "=q4=Sorcerous Dagger", "=ds=#h3#, #w4#", "2.27%" };
		[10] = { itemID = 17077, "=q4=Crimson Shocker", "3.32%" };
		[16] = { itemID = 2522363, "=q4=Molten Handgaurds", "=ds=#tt1#", "100%", lootTable = {"T1WAIST","Token"} };
		[18] = { itemID = 17332, "=q1=Hand of Shazzrah", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Baron Geddon"];
		[1] = { itemID = 19136, "=q4=Mana Igniting Cord", "=ds=#s10#, #a1#", "2.44%" };
		[2] = { itemID = 18823, "=q4=Aged Core Leather Gloves", "=ds=#s9#, #a2#", "3.04%" };
		[3] = { itemID = 18829, "=q4=Deep Earth Spaulders", "=ds=#s3#, #a3#", "1.04%" };
		[4] = { itemID = 19144, "=q4=Sabatons of the Flamewalker", "=ds=#s12#, #a3#", "1.00%" };
		[5] = { itemID = 19143, "=q4=Flameguard Gauntlets", "=ds=#s9#, #a4#", "2.61%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "1.77%" };
		[7] = { itemID = 18824, "=q4=Magma Tempered Boots", "=ds=#s12#, #a4#", "1.48%" };
		[8] = { itemID = 17110, "=q4=Seal of the Archmagus", "21.93%" };
		[9] = { itemID = 18821, "=q4=Quick Strike Ring", "2.61%" };
		[10] = { itemID = 18820, "=q4=Talisman of Ephemeral Power", "2.68%" };
		[11] = { itemID = 19142, "=q4=Fire Runed Grimoire", "2.59%" };
		[12] = { itemID = 18822, "=q4=Obsidian Edged Blade", "=ds=#h2#, #w10#", "2.70%" };
		[16] = { itemID = 2522361, "=q4=Molten Spaulders", "=ds=#tt1#", "100%", lootTable = {"T1SHOULDER","Token"} };
		[18] = { itemID = 18563, "=q5=Bindings of the Windseeker", " =ds=#m3#, =q1=#m10#", "3.78%" };
		[19] = { itemID = 19019, "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
	};
	{
		Name = BabbleBoss["Golemagg the Incinerator"];
		[1] = { itemID = 19136, "=q4=Mana Igniting Cord", "=ds=#s10#, #a1#", "2.18%" };
		[2] = { itemID = 18823, "=q4=Aged Core Leather Gloves", "=ds=#s9#, #a2#", "2.65%" };
		[3] = { itemID = 18829, "=q4=Deep Earth Spaulders", "=ds=#s3#, #a3#", "1.20%" };
		[4] = { itemID = 19144, "=q4=Sabatons of the Flamewalker", "=ds=#s12#, #a3#", "1.00%" };
		[5] = { itemID = 19143, "=q4=Flameguard Gauntlets", "=ds=#s9#, #a4#", "2.17%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "1.44%" };
		[7] = { itemID = 18824, "=q4=Magma Tempered Boots", "=ds=#s12#, #a4#", "1.69%" };
		[8] = { itemID = 18821, "=q4=Quick Strike Ring", "2.26%" };
		[9] = { itemID = 18820, "=q4=Talisman of Ephemeral Power", "2.91%" };
		[10] = { itemID = 19142, "=q4=Fire Runed Grimoire", "2.46%" };
		[11] = { itemID = 17103, "=q4=Azuresong Mageblade", "=ds=#h3#, #w10#", "17.59%" };
		[12] = { itemID = 18822, "=q4=Obsidian Edged Blade", "=ds=#h2#, #w10#", "2.89%" };
		[13] = { itemID = 18842, "=q4=Staff of Dominance", "=ds=#w9#", "18.95%" };
		[14] = { itemID = 17072, "=q4=Blastershot Launcher", "=ds=#w5#", "17.83%" };
		[16] = { itemID = 2522350, "=q4=Molten Tunic", "=ds=#tt1#", "100%", lootTable = {"T1CHEST","Token"} };
		[18] = { itemID = 17203, "=q4=Sulfuron Ingot", "=ds=#m3#", "11.98%" };
		[19] = { itemID = 17182, "=q5=Sulfuras, Hand of Ragnaros", "=q1=#m4#: =ds=#h2#, #w6#" };
	};
	{
		Name = BabbleBoss["Sulfuron Harbinger"];
		[1] = { itemID = 19145, "=q4=Robe of Volatile Power", "=ds=#s5#, #a1#", "2.80%" };
		[2] = { itemID = 18872, "=q4=Manastorm Leggings", "=ds=#s11#, #a1#", "2.54%" };
		[3] = { itemID = 19146, "=q4=Wristguards of Stability", "=ds=#s8#, #a2#", "2.70%" };
		[4] = { itemID = 18875, "=q4=Salamander Scale Pants", "=ds=#s11#, #a2#", "2.58%" };
		[5] = { itemID = 18870, "=q4=Helm of the Lifegiver", "=ds=#s1#, #a3#", "1.26%" };
		[6] = { itemID = 18861, "=q4=Flamewaker Legplates", "=ds=#s11#, #a4#", "2.54%" };
		[7] = { itemID = 18879, "=q4=Heavy Dark Iron Ring", "2.32%" };
		[8] = { itemID = 19147, "=q4=Ring of Spell Power", "2.39%" };
		[9] = { itemID = 18878, "=q4=Sorcerous Dagger", "=ds=#h3#, #w4#", "2.53%" };
		[10] = { itemID = 17074, "=q4=Shadowstrike", "=ds=#w7#", "23.50%" };
		[11] = { itemID = 17077, "=q4=Crimson Shocker", "2.26%" };
		[16] = { itemID = 2522365, "=q4=Molten Boots", "=ds=#tt1#", "100%", lootTable = {"T1FEET","Token"} };
		[18] = { itemID = 17330, "=q1=Hand of Sulfuron", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Majordomo Executus"];
		[1] = { itemID = 18811, "=q4=Fireproof Cloak", "15.12%" };
		[2] = { itemID = 18808, "=q4=Gloves of the Hypnotic Flame", "=ds=#s9#, #a1#", "15.36%" };
		[3] = { itemID = 18809, "=q4=Sash of Whispered Secrets", "=ds=#s10#, #a1#", "1" };
		[4] = { itemID = 19139, "=q4=Fireguard Shoulders", "=ds=#s3#, #a2#", "15.87%" };
		[5] = { itemID = 18810, "=q4=Wild Growth Spaulders", "=ds=#s3#, #a2#", "16.91%" };
		[6] = { itemID = 18812, "=q4=Wristguards of True Flight", "=ds=#s8#, #a3#", "18.04%" };
		[7] = { itemID = 18806, "=q4=Core Forged Greaves", "=ds=#s12#, #a4#", "16.53%" };
		[8] = { itemID = 19140, "=q4=Cauterizing Band", "15.10%" };
		[9] = { itemID = 18805, "=q4=Core Hound Tooth", "=ds=#h1#, #w4#", "16.06%" };
		[10] = { itemID = 18803, "=q4=Finkle's Lava Dredger", "12.43%" };
		[16] = { itemID = 18715, "=q4=Lok'delar, Stave of the Ancient Keepers", "=ds=#w9#" };
		[17] = { itemID = 18713, "=q4=Rhok'delar, Longbow of the Ancient Keepers", "=ds=#w2#" };
		[19] = { itemID = 18608, "=q4=Benediction", "=ds=#w9#" };
		[20] = { itemID = 18609, "=q4=Anathema", "=ds=#w9#" };
	};
	{
		Name = BabbleBoss["Ragnaros"];
		[1] = { itemID = 17102, "=q4=Cloak of the Shrouded Mists", "14.31%" };
		[2] = { itemID = 17107, "=q4=Dragon's Blood Cape", "" };
		[3] = { itemID = 18817, "=q4=Crown of Destruction", "=ds=#s1#, #a3#", "16.75%" };
		[4] = { itemID = 19137, "=q4=Onslaught Girdle", "=ds=#s10#, #a4#", "13.18%" };
		[5] = { itemID = 18814, "=q4=Choker of the Fire Lord", "16.08%" };
		[6] = { itemID = 19138, "=q4=Band of Sulfuras", "15.64%" };
		[7] = { itemID = 17063, "=q4=Band of Accuria", "14.81%" };
		[8] = { itemID = 17082, "=q4=Shard of the Flame", " 4.65%" };
		[9] = { itemID = 18815, "=q4=Essence of the Pure Flame", "17.80%" };
		[10] = { itemID = 18816, "=q4=Perdition's Blade", "=ds=#h1#, #w4#", "15.90%" };
		[11] = { itemID = 17076, "=q4=Bonereaver's Edge", "=ds=#h2#, #w10#", "5.12%" };
		[12] = { itemID = 17104, "=q4=Spinal Reaper", "=ds=#h2#, #w1#", " 4.63%" };
		[13] = { itemID = 17106, "=q4=Malistar's Defender", "=ds=#w8#", "13.88%" };
		[14] = { itemID = 17083, "=q4=Blade of Dragon Bone", "=ds=#h3#, #w10#", "13.88%" };
		[16] = { itemID = 2522459, "=q4=Chromatic Leggaurds", "100%", lootTable = {"T2LEGS","Token"} };
		[18] = { itemID = 21110, "=q1=Draconic for Dummies", "=ds=#m3#", "100%" };
		[20] = { itemID = 17204, "=q5=Eye of Sulfuras", "=ds=#m3#", "3.42%" };
		[21] = { itemID = 17182, "=q5=Sulfuras, Hand of Ragnaros", "=q1=#m4#: =ds=#h2#, #w6#" };
		[23] = { itemID = 19017, "=q1=Essence of the Firelord", "=ds=#m3#", "0.46%" };
		[24] = { itemID = 19019, "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
		[25] = { itemID = 102107, "=q4=Reins of the Magmatic Steed", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic };
	};
	{
		Name = "Random Boss Drops";
		[1] = { itemID = 17010, "=q3=Fiery Core" };
		[2] = { itemID = 17011, "=q3=Lava Core" };
		[3] = { itemID = 11382, "=q2=Blood of the Mountain" };
		[4] = { itemID = 17012, "=q1=Core Leather" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18264, "=q3=Plans: Elemental Sharpening Stone", "=ds=#p2# (300)", "1.02%" };
		[2] = { itemID = 18262, "=q2=Elemental Sharpening Stone", "=ds=#e6#" };
		[4] = { itemID = 18292, "=q3=Schematic: Core Marksman Rifle", "=ds=#p5# (300)", "0.96%" };
		[5] = { itemID = 18282, "=q4=Core Marksman Rifle", "=ds=#w5#" };
		[7] = { itemID = 18291, "=q3=Schematic: Force Reactive Disk", "=ds=#p5# (300)", "0.92%" };
		[8] = { itemID = 18168, "=q4=Force Reactive Disk", "=ds=#w8#" };
		[10] = { itemID = 18290, "=q3=Schematic: Biznicks 247x128 Accurascope", "=ds=#p5# (300)", "0.11%" };
		[11] = { itemID = 18283, "=q3=Biznicks 247x128 Accurascope", "=ds=#e11#" };
		[13] = { itemID = 18259, "=q3=Formula: Enchant Weapon - Spell Power", "=ds=#p4# (300)", "0.85%" };
		[16] = { itemID = 18252, "=q3=Pattern: Core Armor Kit", "=ds=#p7# (300)", "0.85%" };
		[17] = { itemID = 18251, "=q3=Core Armor Kit", "=ds=#e6#" };
		[19] = { itemID = 18265, "=q3=Pattern: Flarecore Wraps", "=ds=#p8# (300)", "0.72%" };
		[20] = { itemID = 18263, "=q4=Flarecore Wraps", "=ds=#s8#, #a1#" };
		[22] = { itemID = 21371, "=q3=Pattern: Core Felcloth Bag", "=ds=#p8# (300)", "0.33%" };
		[23] = { itemID = 21342, "=q4=Core Felcloth Bag", "=ds=#m11# #e1# =q1=#m1# #c8#" };
		[25] = { itemID = 18257, "=q3=Recipe: Major Rejuvenation Potion", "=ds=#p1# (300)", "0.76%" };
		[26] = { itemID = 18253, "=q1=Major Rejuvenation Potion", "=ds=#e2#" };
		[28] = { itemID = 18260, "=q3=Formula: Enchant Weapon - Healing Power", "=ds=#p4# (300)", "0.75%" };
	};
};

------------------------------------------
--- Blackrock Mountain: Blackwing Lair ---
------------------------------------------

AtlasLoot_Data["BlackwingLair"] = {
	Name = BabbleZone["Blackwing Lair"];
	Type = "ClassicRaid";
	Map = "BlackwingLair";
	{
		Name = BabbleBoss["Razorgore the Untamed"];
		[1] = { itemID = 19337, "=q4=The Black Book", "" };
		[2] = { itemID = 19336, "=q4=Arcane Infused Gem", "" };
		[3] = { itemID = 1506015, "=q4=Soulsong Crystal", "" };
		[4] = { itemID = 1506014, "=q4=Living Blood Gem", "" };
		[5] = { itemID = 19370, "=q4=Mantle of the Blackwing Cabal", "=ds=#s3#, #a1#", "20%" };
		[6] = { itemID = 19369, "=q4=Gloves of Rapid Evolution", "=ds=#s9#, #a1#", "20%" };
		[7] = { itemID = 19334, "=q4=The Untamed Blade", "=ds=#h2#, #w10#", "10%" };
		[8] = { itemID = 19335, "=q4=Spineshatter", "=ds=#h1#, #w6#", "10%" };
		[9] = { itemID = 19397, "=q4=Ring of Blackrock", "6.67%" };
		[10] = { itemID = 19357, "=q4=Herald of Woe", "16.67%" };
		[11] = { itemID = 19405, "=q4=Malfurion's Blessed Bulwark", "=ds=#s5#, #a2#", "16.67%" };
		[16] = { itemID = 2522462, "=q4=Chromatic Wristguards", "100%", lootTable = {"T2WRIST","Token"} };
	};
	{
		Name = BabbleBoss["Vaelastrasz the Corrupt"];
		[1] = { itemID = 19339, "=q4=Mind Quickening Gem", "=ds=#s14#, =q1=#m1# =ds=#c3#", "20%" };
		[2] = { itemID = 19340, "=q4=Rune of Metamorphosis", "=ds=#s14#, =q1=#m1# =ds=#c1#", "20%" };
		[3] = { itemID = 19372, "=q4=Helm of Endless Rage", "=ds=#s1#, #a4#", "20%" };
		[4] = { itemID = 19371, "=q4=Pendant of the Fallen Dragon", "20%" };
		[5] = { itemID = 19346, "=q4=Dragonfang Blade", "=ds=#h1#, #w4#", "10%" };
		[6] = { itemID = 19348, "=q4=Red Dragonscale Protector", "=ds=#w8#", "10%" };
		[7] = { itemID = 19430, "=q4=Shroud of Pure Thought", "16.67%" };
		[8] = { itemID = 19403, "=q4=Band of Forced Concentration", "16.67%" };
		[9] = { itemID = 19367, "=q4=Dragon's Touch", "16.67%" };
		[10] = { itemID = 14000, "=q4=Ring of Trinity Force", "12.5%" };
		[16] = { itemID = 2522463, "=q4=Chromatic Girdle", "100%", lootTable = {"T2WAIST","Token"} };
	};
	{
		Name = BabbleBoss["Broodlord Lashlayer"];
		[1] = { itemID = 19342, "=q4=Venomous Totem", "=ds=#s14#, =q1=#m1# =ds=#c6#", "20%" };
		[2] = { itemID = 19341, "=q4=Lifegiving Gem", "=ds=#s14#, =q1=#m1# =ds=#c9#", "20%" };
		[3] = { itemID = 19345, "=q4=Aegis of Preservation", "=ds=#s14#, =q1=#m1# =ds=#c5#", "16.67%" };
		[4] = { itemID = 19374, "=q4=Bracers of Arcane Accuracy", "=ds=#s8#, #a1#", "20%" };
		[5] = { itemID = 19373, "=q4=Black Brood Pauldrons", "=ds=#s3#, #a3#", "20%" };
		[6] = { itemID = 19351, "=q4=Maladath, Runed Blade of the Black Flight", "10%" };
		[7] = { itemID = 19350, "=q4=Heartstriker", "=ds=#w2#", "10%" };
		[8] = { itemID = 19402, "=q4=Legguards of the Fallen Crusader", "=ds=#s11#, #a4#", "12.5%" };
		[9] = { itemID = 19365, "=q4=Claw of the Black Drake", "=ds=#h3#, #w13#", "12.5%" };
		[10] = { itemID = 19432, "=q4=Circle of Applied Force", "16.67%" };
		[16] = { itemID = 2522465, "=q4=Chromatic Boots", "100%", lootTable = {"T2FEET","Token"} };
		[18] = { itemID = 20383, "=q1=Head of the Broodlord Lashlayer", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Firemaw"];
		[1] = { itemID = 19365, "=q4=Claw of the Black Drake", "=ds=#h3#, #w13#", "12.5%" };
		[2] = { itemID = 19355, "=q4=Shadow Wing Focus Staff", "=ds=#w9#", "6.67%" };
		[3] = { itemID = 19353, "=q4=Drake Talon Cleaver", "=ds=#h2#, #w1#", "6.67%" };
		[4] = { itemID = 19343, "=q4=Scrolls of Blinding Light", "=ds=#s14#, =q1=#m1# =ds=#c4#", "12.5%" };
		[5] = { itemID = 19344, "=q4=Natural Alignment Crystal", "=ds=#s14#, =q1=#m1# =ds=#c7#", "6.67%" };
		[6] = { itemID = 19398, "=q4=Cloak of Firemaw", "12.5%" };
		[7] = { itemID = 19400, "=q4=Firemaw's Clutch", "=ds=#s10#, #a1#", "12.5%" };
		[8] = { itemID = 19399, "=q4=Black Ash Robe", "=ds=#s5#, #a1#", "12.5%" };
		[9] = { itemID = 19396, "=q4=Taut Dragonhide Belt", "=ds=#s10#, #a2#", "6.67%" };
		[10] = { itemID = 19401, "=q4=Primalist's Linked Legguards", "=ds=#s11#, #a3#", "12.5%" };
		[11] = { itemID = 19394, "=q4=Drake Talon Pauldrons", "=ds=#s3#, #a4#", "6.76%" };
		[12] = { itemID = 19402, "=q4=Legguards of the Fallen Crusader", "=ds=#s11#, #a4#", "12.5%" };
		[13] = { itemID = 19397, "=q4=Ring of Blackrock", "6.67%" };
		[14] = { itemID = 19395, "=q4=Rejuvenating Gem", "6.67%" };
		[16] = { itemID = 2522464, "=q4=Chromatic Handgaurds", "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Ebonroc"];
		[1] = { itemID = 19345, "=q4=Aegis of Preservation", "=ds=#s14#, =q1=#m1# =ds=#c5#", "16.67%" };
		[2] = { itemID = 19407, "=q4=Ebony Flame Gloves", "=ds=#s9#, #a1#", "16.67%" };
		[3] = { itemID = 19405, "=q4=Malfurion's Blessed Bulwark", "=ds=#s5#, #a2#", "16.67%" };
		[4] = { itemID = 19396, "=q4=Taut Dragonhide Belt", "=ds=#s10#, #a2#", "6.67%" };
		[5] = { itemID = 19394, "=q4=Drake Talon Pauldrons", "=ds=#s3#, #a4#", "6.67%" };
		[6] = { itemID = 19403, "=q4=Band of Forced Concentration", "16.67%" };
		[7] = { itemID = 19397, "=q4=Ring of Blackrock", "6.67%" };
		[8] = { itemID = 19406, "=q4=Drake Fang Talisman", "16.67%" };
		[9] = { itemID = 19395, "=q4=Rejuvenating Gem", "6.67%" };
		[10] = { itemID = 19353, "=q4=Drake Talon Cleaver", "=ds=#h2#, #w1#", "6.67%" };
		[11] = { itemID = 19355, "=q4=Shadow Wing Focus Staff", "=ds=#w9#", "6.67%" };
		[12] = { itemID = 19368, "=q4=Dragonbreath Hand Cannon", "=ds=#w5#", "16.67%" };
		[16] = { itemID = 2522464, "=q4=Chromatic Handgaurds", "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Flamegor"];
		[1] = { itemID = 19430, "=q4=Shroud of Pure Thought", "16.67%" };
		[2] = { itemID = 19396, "=q4=Taut Dragonhide Belt", "=ds=#s10#, #a2#", "6.67%" };
		[3] = { itemID = 19433, "=q4=Emberweave Leggings", "=ds=#s11#, #a3#", "16.67%" };
		[4] = { itemID = 19394, "=q4=Drake Talon Pauldrons", "=ds=#s3#, #a4#", "6.67%" };
		[5] = { itemID = 19397, "=q4=Ring of Blackrock", "6.67%" };
		[6] = { itemID = 19432, "=q4=Circle of Applied Force", "16.67%" };
		[7] = { itemID = 19395, "=q4=Rejuvenating Gem", "6.67%" };
		[8] = { itemID = 19431, "=q4=Styleen's Impeding Scarab", "16.67%" };
		[9] = { itemID = 19353, "=q4=Drake Talon Cleaver", "=ds=#h2#, #w1#", "6.67%" };
		[10] = { itemID = 19357, "=q4=Herald of Woe", "16.67%" };
		[11] = { itemID = 19355, "=q4=Shadow Wing Focus Staff", "=ds=#w9#", "6.67%" };
		[12] = { itemID = 19367, "=q4=Dragon's Touch", "16.67%" };
		[16] = { itemID = 2522464, "=q4=Chromatic Handgaurds", "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Chromaggus"];
		[1] = { itemID = 19386, "=q4=Elementium Threaded Cloak", "20%" };
		[2] = { itemID = 19388, "=q4=Angelista's Grasp", "=ds=#s10#, #a1#", "20%" };
		[3] = { itemID = 19385, "=q4=Empowered Leggings", "=ds=#s11#, #a1#", "20%" };
		[4] = { itemID = 19391, "=q4=Shimmering Geta", "=ds=#s12#, #a1#", "20%" };
		[5] = { itemID = 19389, "=q4=Taut Dragonhide Shoulderpads", "=ds=#s3#, #a2#", "20%" };
		[6] = { itemID = 19390, "=q4=Taut Dragonhide Gloves", "=ds=#s9#, #a2#", "20%" };
		[7] = { itemID = 19393, "=q4=Primalist's Linked Waistguard", "=ds=#s10#, #a3#", "10%" };
		[8] = { itemID = 19392, "=q4=Girdle of the Fallen Crusader", "=ds=#s10#, #a4#", "10%" };
		[9] = { itemID = 19387, "=q4=Chromatic Boots", "=ds=#s12#, #a4#", "20%" };
		[11] = { itemID = 19347, "=q4=Claw of Chromaggus", "=ds=#h3#, #w4#", "10%" };
		[12] = { itemID = 19352, "=q4=Chromatically Tempered Sword", "10%" };
		[13] = { itemID = 19349, "=q4=Elementium Reinforced Bulwark", "=ds=#w8#", "10%" };
		[14] = { itemID = 19361, "=q4=Ashjre'thul, Crossbow of Smiting", "=ds=#w3#", "10%" };
		[16] = { itemID = 2522461, "=q4=Chromatic Spaulders", "100%", lootTable = {"T2SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Nefarian"];
		[1] = { itemID = 19378, "=q4=Cloak of the Brood Lord", "16.67%" };
		[2] = { itemID = 19375, "=q4=Mish'undare, Circlet of the Mind Flayer", "=ds=#s1#, #a1#", "16.67%" };
		[3] = { itemID = 19381, "=q4=Boots of the Shadow Flame", "=ds=#s12#, #a2#", "16.67%" };
		[4] = { itemID = 19380, "=q4=Therazane's Link", "=ds=#s10#, #a3#", "16.67%" };
		[5] = { itemID = 19377, "=q4=Prestor's Talisman of Connivery", "16.67%" };
		[6] = { itemID = 19376, "=q4=Archimtiros' Ring of Reckoning", "16.67%" };
		[7] = { itemID = 19382, "=q4=Pure Elementium Band", "16.67%" };
		[8] = { itemID = 19379, "=q4=Neltharion's Tear", "16.67%" };
		[9] = { itemID = 19364, "=q4=Ashkandi, Greatsword of the Brotherhood", "=ds=#h2#, #w10#", "10%" };
		[10] = { itemID = 19363, "=q4=Crul'shorukh, Edge of Chaos", "16.67%" };
		[11] = { itemID = 19360, "=q4=Lok'amir il Romathis", "=ds=#h3#, #w6#", "16.67%" };
		[12] = { itemID = 19356, "=q4=Staff of the Shadow Flame", "=ds=#w9#", "16.67%%" };
		[13] = { itemID = 14001, "=q4=Archimtiros' Ring of Armageddon", "16.67%%" };
		[16] = { itemID = 2522450, "=q4=Chromatic Tunic", "100%", lootTable = {"T2CHEST","Token"} };
		[18] = { itemID = 19003, "=q4=Head of Nefarian", "100%" };
		[19] = { itemID = 19383, "=q4=Master Dragonslayer's Medallion" };
		[20] = { itemID = 19384, "=q4=Master Dragonslayer's Ring" };
		[21] = { itemID = 19366, "=q4=Master Dragonslayer's Orb", "=q1=#m4#: =ds=#s15#" };
		[23] = { itemID = 21138, "=q1=Red Scepter Shard", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 19436, "=q4=Cloak of Draconic Might", "2.53%" };
		[2] = { itemID = 19437, "=q4=Boots of Pure Thought", "=ds=#s12#, #a1#", "2.33%" };
		[3] = { itemID = 19438, "=q4=Ringo's Blizzard Boots", "=ds=#s12#, #a1#", "4.42%" };
		[4] = { itemID = 19439, "=q4=Interlaced Shadow Jerkin", "=ds=#s5#, #a2#", "4.62%" };
		[5] = { itemID = 19434, "=q4=Band of Dark Dominion", "1.57%" };
		[6] = { itemID = 19362, "=q4=Doom's Edge", "1.67%" };
		[7] = { itemID = 19354, "=q4=Draconic Avenger", "=ds=#h2#, #w1#", "5.96%" };
		[8] = { itemID = 19358, "=q4=Draconic Maul", "2.30%" };
		[9] = { itemID = 19435, "=q4=Essence Gatherer", "1.61%" };
		[16] = { itemID = 18562, "=q4=Elementium Ore", "4.75%" };
		[18] = { itemID = 21109, "=q1=Draconic for Dummies", "=ds=#m3#" };
	};
};

----------------------
--- Dire Maul East ---
----------------------

AtlasLoot_Data["DireMaulEast"] = {
	Name = BabbleZone["Dire Maul"] .. " East";
	Type = "ClassicDungeonExt";
	Map = "DireMaulEast";
	{
		Name = BabbleBoss["Pusillin"];
		[1] = { itemID = 18267, "=q2=Recipe: Runn Tum Tuber Surprise", "=ds=#p3# (275)", "71.55%" };
		[3] = { itemID = 18261, "=q1=Book of Incantations", "=ds=#m3#", "100%" };
		[4] = { itemID = 18249, "=q1=Crescent Key", "=ds=#e9#", "100%" };
	};
	{
		Name = BabbleBoss["Zevrim Thornhoof"];
		[1] = { itemID = 18319, "=q3=Fervent Helm", "=ds=#s1#, #a3#", "7.88%" };
		[2] = { itemID = 18313, "=q3=Helm of Awareness", "=ds=#s1#, #a4#", "17.87%" };
		[3] = { itemID = 18323, "=q3=Satyr's Bow", "=ds=#w2#", "17.24%" };
		[5] = { itemID = 18306, "=q2=Gloves of Shadowy Mist", "=ds=#s9#, #a1#", "21.40%" };
		[6] = { itemID = 18308, "=q2=Clever Hat", "=ds=#s1#, #a2#", "23.73%" };
	};
	{
		Name = BabbleBoss["Lethtendris"];
		[1] = { itemID = 18325, "=q3=Felhide Cap", "=ds=#s1#, #a2#", "24.67%" };
		[2] = { itemID = 18311, "=q3=Quel'dorei Channeling Rod", "=ds=#w9#", "7.30%" };
		[4] = { itemID = 18302, "=q3=Band of Vigor", "29.30%" };
		[5] = { itemID = 18301, "=q3=Lethtendris's Wand", "2" };
		[7] = { itemID = 18426, "=q1=Lethtendris's Web", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Pimgib"];
		[1] = { itemID = 18354, "=q3=Pimgib's Collar", "=ds=#s14#, =q1=#m1# =ds=#c8#", "18.68%" };
	};
	{
		Name = BabbleBoss["Hydrospawn"];
		[1] = { itemID = 18322, "=q3=Waterspout Boots", "=ds=#s12#, #a2#", "16.42%" };
		[2] = { itemID = 18317, "=q3=Tempest Talisman", "16.44%" };
		[3] = { itemID = 18324, "=q3=Waveslicer", "=ds=#h2#, #w1#", "8.46%" };
		[5] = { itemID = 18307, "=q3=Riptide Shoes", "=ds=#s12#, #a1#", "21.33%" };
		[6] = { itemID = 18305, "=q3=Breakwater Legguards", "=ds=#s11#, #a4#", "22.75%" };
	};
	{
		Name = BabbleBoss["Alzzin the Wildshaper"];
		[1] = { itemID = 18328, "=q3=Shadewood Cloak", "15.36%" };
		[2] = { itemID = 18327, "=q3=Whipvine Cord", "=ds=#s10#, #a1#", "16.53%" };
		[3] = { itemID = 18309, "=q3=Gloves of Restoration", "=ds=#s9#, #a2#", "14.05%" };
		[4] = { itemID = 18318, "=q3=Merciful Greaves", "=ds=#s12#, #a3#", "14.88%" };
		[5] = { itemID = 18312, "=q3=Energized Chestplate", "=ds=#s5#, #a4#", "16.08%" };
		[6] = { itemID = 18326, "=q3=Razor Gauntlets", "=ds=#s9#, #a4#", "18.62%" };
		[8] = { icon = "INV_Box_01", "=q6=#x9#" };
		[9] = { itemID = 18501, "=q1=Felvine Shard", "=ds=#m3#" };
		[16] = { itemID = 18315, "=q3=Ring of Demonic Potency", "15.40%" };
		[17] = { itemID = 18314, "=q3=Ring of Demonic Guile", "13.71%" };
		[18] = { itemID = 18310, "=q3=Fiendish Machete", "15.39%" };
		[19] = { itemID = 18321, "=q3=Energetic Rod", "=ds=#h3#, #w6#", "15.94%" };
	};
	{
		Name = BabbleBoss["Isalien"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n20#" };
		[2] = { itemID = 22304, "=q3=Ironweave Gloves", "=ds=#s9#, #a1#", "16.24%" };
		[3] = { itemID = 22472, "=q3=Boots of Ferocity", "=ds=#s12#, #a2#", "12.55%" };
		[4] = { itemID = 22401, "=q3=Libram of Hope", "=ds=#s16#, #w16#", "14.76%" };
		[5] = { itemID = 22345, "=q3=Totem of Rebirth", "=ds=#s16#, #w15#", "2.95%" };
		[6] = { itemID = 22315, "=q3=Hammer of Revitalization", "=ds=#h3#, #w6#", "" };
		[7] = { itemID = 22314, "=q3=Huntsman's Harpoon", "=ds=#w7#", "15.50%" };
		[17] = { itemID = 21984, "=q1=Left Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
		[18] = { itemID = 22046, "=q1=Right Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18295, "=q3=Phasing Boots", "=ds=#s12#, #a1# =q2=#m16#", "1.26%" };
		[2] = { itemID = 18298, "=q3=Unbridled Leggings", "=ds=#s11#, #a2#", "0.62%" };
		[3] = { itemID = 18296, "=q3=Marksman Bands", "=ds=#s8#, #a3#", "0.59%" };
		[4] = { itemID = 18289, "=q3=Barbed Thorn Necklace", "0.87%" };
	};
	{
		Name = "Dire Maul Books";
		[1] = { itemID = 18364, "=q3=The Emerald Dream", "=ds=#e10#, =q1=#m1# =ds=#c1#" };
		[2] = { itemID = 18361, "=q3=The Greatest Race of Hunters", "=ds=#e10#, =q1=#m1# =ds=#c2#" };
		[3] = { itemID = 18358, "=q3=The Arcanist's Cookbook", "=ds=#e10#, =q1=#m1# =ds=#c3#" };
		[4] = { itemID = 18359, "=q3=The Light and How to Swing It", "=ds=#e10#, =q1=#m1# =ds=#c4#" };
		[5] = { itemID = 18362, "=q3=Holy Bologna: What the Light Won't Tell You", "=ds=#e10#, =q1=#m1# =ds=#c5#" };
		[6] = { itemID = 18356, "=q3=Garona: A Study on Stealth and Treachery", "=ds=#e10#, =q1=#m1# =ds=#c6#" };
		[7] = { itemID = 18363, "=q3=Frost Shock and You", "=ds=#e10#, =q1=#m1# =ds=#c7#" };
		[8] = { itemID = 18360, "=q3=Harnessing Shadows", "=ds=#e10#, =q1=#m1# =ds=#c8#" };
		[9] = { itemID = 18357, "=q3=Codex of Defense", "=ds=#e10#, =q1=#m1# =ds=#c9#" };
		[11] = { itemID = 18333, "=q2=Libram of Focus", "=ds=#e10#" };
		[12] = { itemID = 18334, "=q2=Libram of Protection", "=ds=#e10#" };
		[13] = { itemID = 18332, "=q2=Libram of Rapidity", "=ds=#e10#" };
		[16] = { itemID = 18470, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c1#" };
		[17] = { itemID = 18473, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c2#" };
		[18] = { itemID = 18468, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c3#" };
		[19] = { itemID = 18472, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c4#" };
		[20] = { itemID = 18469, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c5#" };
		[21] = { itemID = 18465, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c6#" };
		[22] = { itemID = 18471, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c7#" };
		[23] = { itemID = 18467, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c8#" };
		[24] = { itemID = 18466, "=q3=Royal Seal of Eldre'Thalas", "=ds=#s14#, =q1=#m1# =ds=#c9#" };
		[26] = { itemID = 18401, "=q4=Foror's Compendium of Dragon Slaying", "=ds=#e10#, =q1=#m1# =ds=#c9#, #c4#" };
		[27] = { itemID = 18348, "=q4=Quel'Serrar", "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c4#" };
	};
};
-----------------------
--- Dire Maul North ---
-----------------------

AtlasLoot_Data["DireMaulNorth"] = {
	Name = BabbleZone["Dire Maul"] .. " North";
	Type = "ClassicDungeonExt";
	Map = "DireMaulNorth";
	{
		Name = BabbleBoss["Guard Mol'dar"];
		[1] = { itemID = 18496, "=q3=Heliotrope Cloak", "4.68%" };
		[2] = { itemID = 18497, "=q3=Sublime Wristguards", "=ds=#s8#, #a1#", "4.14%" };
		[3] = { itemID = 18494, "=q3=Denwatcher's Shoulders", "=ds=#s3#, #a3#", "4.62%" };
		[4] = { itemID = 18493, "=q3=Bulky Iron Spaulders", "=ds=#s3#, #a4#", "3.96%" };
		[5] = { itemID = 18498, "=q3=Hedgecutter", "4.94%" };
		[7] = { itemID = 18268, "=q1=Gordok Inner Door Key", "=ds=#e9#", "100%" };
		[16] = { itemID = 18450, "=q3=Robe of Combustion", "=ds=#s5#, #a1#", "6.57%" };
		[17] = { itemID = 18451, "=q3=Hyena Hide Belt", "=ds=#s10#, #a2#", "6.61%" };
		[18] = { itemID = 18458, "=q3=Modest Armguards", "=ds=#s8#, #a3#", "7.12%" };
		[19] = { itemID = 18459, "=q3=Gallant's Wristguards", "=ds=#s8#, #a4#", "6.09%" };
		[20] = { itemID = 18464, "=q3=Gordok Nose Ring", "6.52%" };
		[21] = { itemID = 18462, "=q3=Jagged Bone Fist", "=ds=#h1#, #w13#", "" };
		[22] = { itemID = 18463, "=q3=Ogre Pocket Knife", "7.38%" };
		[23] = { itemID = 18460, "=q3=Unsophisticated Hand Cannon", "=ds=#w5#", "5.86%" };
	};
	{
		Name = BabbleBoss["Stomper Kreeg"];
		[1] = { itemID = 18425, "=q3=Kreeg's Mug", "40.24%" };
		[2] = { itemID = 18269, "=q3=Gordok Green Grog", "=ds=#e4#", "100%" };
		[3] = { itemID = 18284, "=q3=Kreeg's Stout Beatdown", "=ds=#e4#", "100%" };
	};
	{
		Name = BabbleBoss["Guard Fengus"];
		[1] = { itemID = 18450, "=q3=Robe of Combustion", "=ds=#s5#, #a1#", "9.76%" };
		[2] = { itemID = 18451, "=q3=Hyena Hide Belt", "=ds=#s10#, #a2#", "10.64%" };
		[3] = { itemID = 18458, "=q3=Modest Armguards", "=ds=#s8#, #a3#", "11.41%" };
		[4] = { itemID = 18459, "=q3=Gallant's Wristguards", "=ds=#s8#, #a4#", "9.60%" };
		[5] = { itemID = 18464, "=q3=Gordok Nose Ring", "11.41%" };
		[6] = { itemID = 18462, "=q3=Jagged Bone Fist", "=ds=#h1#, #w13#", "11.79%" };
		[7] = { itemID = 18463, "=q3=Ogre Pocket Knife", "11.02%" };
		[8] = { itemID = 18460, "=q3=Unsophisticated Hand Cannon", "=ds=#w5#", "9.07%" };
		[16] = { icon = "INV_Box_01", "=q6=#x7#" };
		[17] = { itemID = 18266, "=q1=Gordok Courtyard Key", "=ds=#e9#", "100%" };
	};
	{
		Name = AL["Knot Thimblejack"];
		[1] = { itemID = 18517, "=q4=Pattern: Chromatic Cloak", "=ds=#p7# (300)", "0.92%" };
		[2] = { itemID = 18518, "=q4=Pattern: Hide of the Wild", "=ds=#p7# (300)", "1.29%" };
		[3] = { itemID = 18519, "=q4=Pattern: Shifting Cloak", "=ds=#p7# (300)", "1.14%" };
		[4] = { itemID = 18414, "=q4=Pattern: Belt of the Archmage", "=ds=#p8# (300)", "1.00%" };
		[6] = { itemID = 18418, "=q3=Pattern: Cloak of Warding", "=ds=#p8# (300)", "9.75%" };
		[7] = { itemID = 18415, "=q3=Pattern: Felcloth Gloves", "=ds=#p8# (300)", "9.62%" };
		[8] = { itemID = 18416, "=q3=Pattern: Inferno Gloves", "=ds=#p8# (300)", "10.66%" };
		[9] = { itemID = 18417, "=q3=Pattern: Mooncloth Gloves", "=ds=#p8# (300)", "10.28%" };
		[10] = { itemID = 18514, "=q3=Pattern: Girdle of Insight", "=ds=#p7# (300)", "10.90%" };
		[11] = { itemID = 18515, "=q3=Pattern: Mongoose Boots", "=ds=#p7# (300)", "11.18%" };
		[12] = { itemID = 18516, "=q3=Pattern: Swift Flight Bracers", "=ds=#p7# (300)", "10.26%" };
		[14] = { icon = "INV_Box_01", "=q6=#x6#" };
		[15] = { itemID = 18240, "=q2=Ogre Tannin", "=ds=#m3#", "100%" };
		[16] = { itemID = 18509, "=q4=Chromatic Cloak", "=ds=#s4#" };
		[17] = { itemID = 18510, "=q4=Hide of the Wild", "=ds=#s4#" };
		[18] = { itemID = 18511, "=q4=Shifting Cloak", "=ds=#s4#" };
		[19] = { itemID = 18405, "=q4=Belt of the Archmage", "=ds=#s10#, #a1#" };
		[21] = { itemID = 18413, "=q3=Cloak of Warding", "=ds=#s4#" };
		[22] = { itemID = 18407, "=q3=Felcloth Gloves", "=ds=#s9#, #a1#" };
		[23] = { itemID = 18408, "=q3=Inferno Gloves", "=ds=#s9#, #a1#" };
		[24] = { itemID = 18409, "=q3=Mooncloth Gloves", "=ds=#s9#, #a1#" };
		[25] = { itemID = 18504, "=q3=Girdle of Insight", "=ds=#s10#, #a2#" };
		[26] = { itemID = 18506, "=q3=Mongoose Boots", "=ds=#s12#, #a2#" };
		[27] = { itemID = 18508, "=q3=Swift Flight Bracers", "=ds=#s8#, #a3#" };
	};
	{
		Name = BabbleBoss["Guard Slip'kik"];
		[1] = { itemID = 18496, "=q3=Heliotrope Cloak", "5.82%" };
		[2] = { itemID = 18497, "=q3=Sublime Wristguards", "=ds=#s8#, #a1#", "4.75%" };
		[3] = { itemID = 18494, "=q3=Denwatcher's Shoulders", "=ds=#s3#, #a3#", "5.70%" };
		[4] = { itemID = 18493, "=q3=Bulky Iron Spaulders", "=ds=#s3#, #a4#", "4.89%" };
		[5] = { itemID = 18498, "=q3=Hedgecutter", "6.01%" };
		[16] = { itemID = 18450, "=q3=Robe of Combustion", "=ds=#s5#, #a1#", "6.78%" };
		[17] = { itemID = 18451, "=q3=Hyena Hide Belt", "=ds=#s10#, #a2#", "7.83%" };
		[18] = { itemID = 18458, "=q3=Modest Armguards", "=ds=#s8#, #a3#", "7.63%" };
		[19] = { itemID = 18459, "=q3=Gallant's Wristguards", "=ds=#s8#, #a4#", "6.98%" };
		[20] = { itemID = 18464, "=q3=Gordok Nose Ring", "7.36%" };
		[21] = { itemID = 18462, "=q3=Jagged Bone Fist", "=ds=#h1#, #w13#", "8.52%" };
		[22] = { itemID = 18463, "=q3=Ogre Pocket Knife", "7.74%" };
		[23] = { itemID = 18460, "=q3=Unsophisticated Hand Cannon", "=ds=#w5#", "6.66%" };
	};
	{
		Name = BabbleBoss["Captain Kromcrush"];
		[1] = { itemID = 18507, "=q3=Boots of the Full Moon", "=ds=#s12#, #a1#", "18.75%" };
		[2] = { itemID = 18505, "=q3=Mugger's Belt", "=ds=#s10#, #a2#", "18.06%" };
		[3] = { itemID = 18503, "=q3=Kromcrush's Chestplate", "=ds=#s5#, #a4#", "17.48%" };
		[4] = { itemID = 18502, "=q3=Monstrous Glaive", "=ds=#w7#", "21.47%" };
	};
	{
		Name = BabbleBoss["Cho'Rush the Observer"];
		[1] = { itemID = 18490, "=q3=Insightful Hood", "=ds=#s1#, #a2#", "21.46%" };
		[2] = { itemID = 18484, "=q3=Cho'Rush's Blade", "22.46%" };
		[3] = { itemID = 18485, "=q3=Observer's Shield", "=ds=#w8#", "22.96%" };
		[4] = { itemID = 18483, "=q3=Mana Channeling Wand", "19.01%" };
	};
	{
		Name = BabbleBoss["King Gordok"];
		[1] = { itemID = 18526, "=q3=Crown of the Ogre King", "=ds=#s1#, #a1#", "17.17%" };
		[2] = { itemID = 18525, "=q3=Bracers of Prosperity", "=ds=#s8#, #a2#", "19.15%" };
		[3] = { itemID = 18527, "=q3=Harmonious Gauntlets", "=ds=#s9#, #a3#", "19.73%" };
		[4] = { itemID = 18524, "=q3=Leggings of Destruction", "=ds=#s11#, #a3#", "18.55%" };
		[5] = { itemID = 18521, "=q3=Grimy Metal Boots", "=ds=#s12#, #a4#", "17.80%" };
		[6] = { itemID = 18522, "=q3=Band of the Ogre King", "14.96%" };
		[7] = { itemID = 18523, "=q3=Brightly Glowing Stone", "20.21%" };
		[8] = { itemID = 18520, "=q3=Barbarous Blade", "=ds=#h2#, #w10#", "16.44%" };
		[16] = { itemID = 19258, "=q3=Ace of Warlords", "=ds=#e16#", "1.84%" };
		[18] = { itemID = 18780, "=q3=Top Half of Advanced Armorsmithing: Volume I", "=ds=#m3#", "6.00%" };
		[19] = { itemID = 12727, "=q3=Plans: Enchanted Thorium Breastplate", "=q1=#m4#: =ds=#p2# (300)" };
	};
	{
		Name = AL["DM North Tribute Chest"];
		[1] = { itemID = 18538, "=q4=Treant's Bane", "=ds=#h2#, #w1#" };
		[3] = { itemID = 18495, "=q3=Redoubt Cloak", "=ds=#s4#" };
		[4] = { itemID = 18532, "=q3=Mindsurge Robe", "=ds=#s5#, #a1#" };
		[5] = { itemID = 18528, "=q3=Cyclone Spaulders", "=ds=#s3#, #a2#" };
		[6] = { itemID = 18530, "=q3=Ogre Forged Hauberk", "=ds=#s5#, #a3#" };
		[7] = { itemID = 18533, "=q3=Gordok Bracers of Power", "=ds=#s8#, #a4#" };
		[8] = { itemID = 18529, "=q3=Elemental Plate Girdle", "=ds=#s10#, #a4# =q2=#m16#" };
		[9] = { itemID = 18500, "=q3=Tarnished Elven Ring", "=ds=#s13#" };
		[10] = { itemID = 18537, "=q3=Counterattack Lodestone", "=ds=#s14#" };
		[11] = { itemID = 18531, "=q3=Unyielding Maul", "=ds=#h2#, #w6#" };
		[12] = { itemID = 18534, "=q3=Rod of the Ogre Magi", "=ds=#w9#" };
		[13] = { itemID = 18499, "=q3=Barrier Shield", "=ds=#w8#" };
		[16] = { itemID = 18475, "=q2=Oddly Magical Belt", "=ds=#s10#, #a1#" };
		[17] = { itemID = 18478, "=q2=Hyena Hide Jerkin", "=ds=#s5#, #a2#" };
		[18] = { itemID = 18477, "=q2=Shaggy Leggings", "=ds=#s11#, #a2#" };
		[19] = { itemID = 18476, "=q2=Mud Stained Boots", "=ds=#s12#, #a2#" };
		[20] = { itemID = 18479, "=q2=Carrion Scorpid Helm", "=ds=#s1#, #a3#" };
		[21] = { itemID = 18480, "=q2=Scarab Plate Helm", "=ds=#s1#, #a4#" };
		[22] = { itemID = 18481, "=q2=Skullcracking Mace", "=ds=#h2#, #w6#" };
		[23] = { itemID = 18482, "=q2=Ogre Toothpick Shooter", "=ds=#w2#" };
		[24] = { itemID = 18655, "=q2=Schematic: Major Recombobulator", "=ds=#p5# (275)" };
	};
};

----------------------
--- Dire Maul West ---
----------------------

AtlasLoot_Data["DireMaulWest"] = {
	Name = BabbleZone["Dire Maul"] .. " West";
	Type = "ClassicDungeonExt";
	Map = "DireMaulWest";
	{
		Name = BabbleBoss["Tendris Warpwood"];
		[1] = { itemID = 18390, "=q3=Tanglemoss Leggings", "=ds=#s11#, #a2#", "22.55%" };
		[2] = { itemID = 18393, "=q3=Warpwood Binding", "=ds=#s10#, #a3#", "19.81%" };
		[4] = { itemID = 18353, "=q3=Stoneflower Staff", "=ds=#w9#", "23.46%" };
		[5] = { itemID = 18352, "=q3=Petrified Bark Shield", "=ds=#w8#", "21.67%" };
	};
	{
		Name = BabbleBoss["Illyanna Ravenoak"];
		[1] = { itemID = 18386, "=q3=Padre's Trousers", "=ds=#s11#, #a1#", "18.79%" };
		[2] = { itemID = 18383, "=q3=Force Imbued Gauntlets", "=ds=#s9#, #a4#", "20.11%" };
		[4] = { itemID = 18349, "=q3=Gauntlets of Accuracy", "=ds=#s9#, #a3#", "23.94%" };
		[5] = { itemID = 18347, "=q3=Well Balanced Axe", "22.44%" };
	};
	{
		Name = BabbleBoss["Magister Kalendris"];
		[1] = { itemID = 18374, "=q3=Flamescarred Shoulders", "=ds=#s3#, #a2#", "" };
		[2] = { itemID = 18397, "=q3=Elder Magus Pendant", "17.46%" };
		[3] = { itemID = 18371, "=q3=Mindtap Talisman", "7.45%" };
		[5] = { itemID = 18350, "=q3=Amplifying Cloak", "21.44%" };
		[6] = { itemID = 18351, "=q3=Magically Sealed Bracers", "=ds=#s8#, #a4#", "24.36%" };
		[7] = { itemID = 22309, "=q2=Pattern: Big Bag of Enchantment", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleBoss["Tsu'zee"];
		[1] = { itemID = 18387, "=q3=Brightspark Gloves", "=ds=#s9#, #a1#", "24.79%" };
		[3] = { itemID = 18346, "=q3=Threadbare Trousers", "=ds=#s11#, #a1#", "33.94%" };
		[4] = { itemID = 18345, "=q3=Murmuring Ring", "30.28%" };
	};
	{
		Name = BabbleBoss["Immol'thar"];
		[1] = { itemID = 18389, "=q3=Cloak of the Cosmos", "14.35%" };
		[2] = { itemID = 18385, "=q3=Robe of Everlasting Night", "=ds=#s5#, #a1#", "15.33%" };
		[3] = { itemID = 18377, "=q3=Quickdraw Gloves", "=ds=#s9#, #a2#", "21.01%" };
		[4] = { itemID = 18391, "=q3=Eyestalk Cord", "=ds=#s10#, #a2#", "20.08%" };
		[5] = { itemID = 18394, "=q3=Demon Howl Wristguards", "=ds=#s8#, #a3#", "17.51%" };
		[6] = { itemID = 18379, "=q3=Odious Greaves", "=ds=#s12#, #a3#", " 19.81%" };
		[7] = { itemID = 18384, "=q3=Bile-etched Spaulders", "=ds=#s3#, #a4#", "14.71%" };
		[16] = { itemID = 18381, "=q3=Evil Eye Pendant", "17.78%" };
		[17] = { itemID = 18370, "=q3=Vigilance Charm", "6.30%" };
		[18] = { itemID = 18372, "=q3=Blade of the New Moon", "=ds=#h1#, #w4#", "6.99%" };
	};
	{
		Name = BabbleBoss["Lord Hel'nurath"];
		[1] = { itemID = 18757, "=q3=Diabolic Mantle", "=ds=#s3#, #a1#", "23.12%" };
		[2] = { itemID = 18754, "=q3=Fel Hardened Bracers", "=ds=#s8#, #a4#", "19.24%" };
		[3] = { itemID = 18756, "=q3=Dreadguard's Protector", "=ds=#w8#", "19.77%" };
		[4] = { itemID = 18755, "=q3=Xorothian Firestick", "=ds=#w5#", "21.92%" };
	};
	{
		Name = BabbleBoss["Prince Tortheldrin"];
		[1] = { itemID = 18382, "=q3=Fluctuating Cloak", "=ds=#s4# =q2=#m16#", "21.84%" };
		[2] = { itemID = 18373, "=q3=Chestplate of Tranquility", "=ds=#s5#, #a2#", "6.32%" };
		[3] = { itemID = 18375, "=q3=Bracers of the Eclipse", "=ds=#s8#, #a2#", "15.62%" };
		[4] = { itemID = 18378, "=q3=Silvermoon Leggings", "=ds=#s11#, #a3#", "21.20%" };
		[5] = { itemID = 18380, "=q3=Eldritch Reinforced Legplates", "=ds=#s11#, #a4#", "15.87%" };
		[6] = { itemID = 18395, "=q3=Emerald Flame Ring", "14.55%" };
		[8] = { icon = "INV_Box_01", "=q6=#x8#" };
		[9] = { itemID = 18336, "=q1=Gauntlet of Gordok Might", "=ds=#m3#" };
		[16] = { itemID = 18392, "=q3=Distracting Dagger", "=ds=#h4#, #w4#", "14.70%" };
		[17] = { itemID = 18396, "=q3=Mind Carver", "=ds=#h3#, #w10#", "14.62%" };
		[18] = { itemID = 18376, "=q3=Timeworn Mace", "=ds=#h1#, #w6#", "14.40%" };
		[19] = { itemID = 18388, "=q3=Stoneshatter", "=ds=#w3#", "7.72%" };
	};
	{
		Name = AL["Shen'dralar Provisioner"];
		[1] = { itemID = 18487, "=q1=Pattern: Mooncloth Robe", "=ds=#p8# (300)" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18344, "=q3=Stonebark Gauntlets", "=ds=#s9#, #a2#", "0.47%" };
		[2] = { itemID = 18340, "=q3=Eidolon Talisman", "0.58%" };
		[3] = { itemID = 18338, "=q3=Wand of Arcane Potency", "0.78%" };
	};
};
------------------
--- Gnomeregan ---
------------------

AtlasLoot_Data["Gnomeregan"] = {
	Name = BabbleZone["Gnomeregan"];
	Map = "Gnomeregan";
	{
		Name = AL["Namdo Bizzfizzle"];
		[1] = { itemID = 14639, "=q1=Schematic: Minor Recombobulator", "=ds=#p5# (140)" };
	};
	{
		Name = BabbleBoss["Techbot"];
		[1] = { itemID = 9444, "=q1=Techbot CPU Shell", "=ds=#w8#", "69.3%" };
		[2] = { itemID = 9277, "=q1=Techbot's Memory Core", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Grubbis"];
		[1] = { itemID = 9445, "=q3=Grubbis Paws", "=ds=#s9#, #a3#", "9.22%" };
	};
	{
		Name = BabbleBoss["Viscous Fallout"];
		[1] = { itemID = 9454, "=q3=Acidic Walkers", "=ds=#s12#, #a1#", "54.02%" };
		[2] = { itemID = 9453, "=q3=Toxic Revenger", "=ds=#h1#, #w4#", "19.05%" };
		[3] = { itemID = 9452, "=q3=Hydrocane", "=ds=#w9#", "18.25%" };
	};
	{
		Name = BabbleBoss["Electrocutioner 6000"];
		[1] = { itemID = 9448, "=q3=Spidertank Oilrag", "=ds=#s8#, #a1#", "28.37%" };
		[2] = { itemID = 9447, "=q3=Electrocutioner Lagnut", "28.44%" };
		[3] = { itemID = 9446, "=q3=Electrocutioner Leg", "13.19%" };
		[4] = { itemID = 6893, "=q1=Workshop Key", "=ds=#e9#" };
	};
	{
		Name = BabbleBoss["Crowd Pummeler 9-60"];
		[1] = { itemID = 9450, "=q3=Gnomebot Operating Boots", "=ds=#s12#, #a2#", "60.45%" };
		[2] = { itemID = 9449, "=q3=Manual Crowd Pummeler", "33.14%" };
	};
	{
		Name = BabbleBoss["Dark Iron Ambassador"];
		[1] = { itemID = 9455, "=q3=Emissary Cuffs", "=ds=#s8#, #a2# =q2=#m16#", "33.96%" };
		[2] = { itemID = 9457, "=q3=Royal Diplomatic Scepter", "=ds=#h1#, #w6#", "17.79%" };
		[3] = { itemID = 9456, "=q3=Glass Shooter", "=ds=#w5#", "38.01%" };
	};
	{
		Name = BabbleBoss["Mekgineer Thermaplugg"];
		[1] = { itemID = 9492, "=q3=Electromagnetic Gigaflux Reactivator", "=ds=#s1#, #a1#", "7.65%" };
		[2] = { itemID = 9461, "=q3=Charged Gear", "=ds=#s13# =q2=#m16#", "28.49%" };
		[3] = { itemID = 9459, "=q3=Thermaplugg's Left Arm", "=ds=#h2#, #w1#", "18.05%" };
		[4] = { itemID = 9458, "=q3=Thermaplugg's Central Core", "=ds=#w8#", "28.61%" };
		[5] = { itemID = 4415, "=q3=Schematic: Craftsman's Monocle", "=ds=#p5# (185)", "" };
		[6] = { itemID = 4413, "=q2=Schematic: Discombobulator Ray", "=ds=#p5# (160)", "" };
		[7] = { itemID = 4411, "=q2=Schematic: Flame Deflector", "=ds=#p5# (125)", "0.7%" };
		[8] = { itemID = 7742, "=q1=Schematic: Gnomish Cloaking Device", "=ds=#p5# (200)", "" };
		[9] = { itemID = 9299, "=q1=Thermaplugg's Safe Combination", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9508, "=q3=Mechbuilder's Overalls", "=ds=#s5#, #a1#", "0.02%" };
		[2] = { itemID = 9491, "=q3=Hotshot Pilot's Gloves", "=ds=#s9#, #a1#", "0.01%" };
		[3] = { itemID = 9509, "=q3=Petrolspill Leggings", "=ds=#s11#, #a2#", "0.01%" };
		[4] = { itemID = 9510, "=q3=Caverndeep Trudgers", "=ds=#s12#, #a3#", "0.01%" };
		[5] = { itemID = 9490, "=q3=Gizmotron Megachopper", "=ds=#h2#, #w10#", "0.01%" };
		[6] = { itemID = 9485, "=q3=Vibroblade", "0.01%" };
		[7] = { itemID = 9486, "=q3=Supercharger Battle Axe", "=ds=#h2#, #w1#", "0.02%" };
		[8] = { itemID = 9488, "=q3=Oscillating Power Hammer", "=ds=#h1#, #w6#", "0.02%" };
		[9] = { itemID = 9487, "=q3=Hi-tech Supergun", "=ds=#w5#", "0.01%" };
		[10] = { itemID = 9327, "=q2=Security DELTA Data Access Card", "=ds=#m20#", "1.41%" };
		[11] = { itemID = 9326, "=q1=Grime-Encrusted Ring", "9.38%" };
		[12] = { itemID = 9362, "=q2=Brilliant Gold Ring" };
		[13] = { itemID = 9538, "=q3=Talvash's Gold Ring" };
	};
};
----------------
--- Maraudon ---
----------------

AtlasLoot_Data["Maraudon"] = {
	Name = BabbleZone["Maraudon"];
	Map = "Maraudon";
	{
		Name = BabbleBoss["Noxxion"];
		[1] = { itemID = 17746, "=q3=Noxxion's Shackles", "=ds=#s8#, #a4#", "32.50%" };
		[2] = { itemID = 17744, "=q3=Heart of Noxxion", "30.35%" };
		[3] = { itemID = 17745, "=q3=Noxious Shooter", "17.53%" };
		[4] = { itemID = 17702, "=q1=Celebrian Rod", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Razorlash"];
		[1] = { itemID = 17750, "=q3=Chloromesh Girdle", "=ds=#s10#, #a1#", "22.93%" };
		[2] = { itemID = 17748, "=q3=Vinerot Sandals", "=ds=#s12#, #a1#", "20.60%" };
		[3] = { itemID = 17749, "=q3=Phytoskin Spaulders", "=ds=#s3#, #a2#", "22.09%" };
		[4] = { itemID = 17751, "=q3=Brusslehide Leggings", "=ds=#s11#, #a2#", "21.65%" };
	};
	{
		Name = BabbleBoss["Lord Vyletongue"];
		[1] = { itemID = 17755, "=q3=Satyrmane Sash", "=ds=#s10#, #a1#", "25.71%" };
		[2] = { itemID = 17754, "=q3=Infernal Trickster Leggings", "=ds=#s11#, #a3#", "28.09%" };
		[3] = { itemID = 17752, "=q3=Satyr's Lash", "=ds=#h1#, #w4#", "23.14%" };
		[4] = { itemID = 17703, "=q1=Celebrian Diamond", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Meshlok the Harvester"];
		[1] = { itemID = 17741, "=q3=Nature's Embrace", "=ds=#s5#, #a1#", "30.34%" };
		[2] = { itemID = 17742, "=q3=Fungus Shroud Armor", "=ds=#s5#, #a2#", "31.37%" };
		[3] = { itemID = 17767, "=q3=Bloomsprout Headpiece", "=ds=#s1#, #a3#", "28.32%" };
	};
	{
		Name = BabbleBoss["Celebras the Cursed"];
		[1] = { itemID = 17739, "=q3=Grovekeeper's Drape", "30.32%" };
		[2] = { itemID = 17740, "=q3=Soothsayer's Headdress", "=ds=#s1#, #a2#", "28.59%" };
		[3] = { itemID = 17738, "=q3=Claw of Celebras", "=ds=#h4#, #w13#", "28.22%" };
	};
	{
		Name = BabbleBoss["Landslide"];
		[1] = { itemID = 17736, "=q3=Rockgrip Gauntlets", "=ds=#s9#, #a3#", "23.09%" };
		[2] = { itemID = 17734, "=q3=Helm of the Mountain", "=ds=#s1#, #a4#", "20.87%" };
		[3] = { itemID = 17737, "=q3=Cloud Stone", "19.99%" };
		[4] = { itemID = 17943, "=q3=Fist of Stone", "=ds=#h1#, #w6#", "16.58%" };
	};
	{
		Name = BabbleBoss["Tinkerer Gizlock"];
		[1] = { itemID = 17719, "=q3=Inventor's Focal Sword", "27.44%" };
		[2] = { itemID = 17718, "=q3=Gizlock's Hypertech Buckler", "=ds=#w8#", "30.61%" };
		[3] = { itemID = 17717, "=q3=Megashot Rifle", "=ds=#w5#", "27.23%" };
	};
	{
		Name = BabbleBoss["Rotgrip"];
		[1] = { itemID = 17732, "=q3=Rotgrip Mantle", "=ds=#s3#, #a1#", "25.73%" };
		[2] = { itemID = 17728, "=q3=Albino Crocscale Boots", "=ds=#s12#, #a2#", "26.20%" };
		[3] = { itemID = 17730, "=q3=Gatorbite Axe", "=ds=#h2#, #w1#", "19.21%" };
	};
	{
		Name = BabbleBoss["Princess Theradras"];
		[1] = { itemID = 17780, "=q4=Blade of Eternal Darkness", "=ds=#h1#, #w4#", "0.20%" };
		[2] = { itemID = 17715, "=q3=Eye of Theradras", "=ds=#s1#, #a1#", "13.47%" };
		[3] = { itemID = 17714, "=q3=Bracers of the Stone Princess", "=ds=#s8#, #a3#", "20.06%" };
		[4] = { itemID = 17711, "=q3=Elemental Rockridge Leggings", "=ds=#s11#, #a4#", "14.96%" };
		[5] = { itemID = 17707, "=q3=Gemshard Heart", "15.30%" };
		[6] = { itemID = 17713, "=q3=Blackstone Ring", "18.92%" };
		[7] = { itemID = 17710, "=q3=Charstone Dirk", "=ds=#h1#, #w4#", "14.24%" };
		[8] = { itemID = 17766, "=q3=Princess Theradras' Scepter", "16.44%" };
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 17764, "=q1=Gem of the Fourth Khan", "=ds=#m3#", "100%" };
		[2] = { itemID = 17765, "=q1=Gem of the Fifth Khan", "=ds=#m3#", "100%" };
	};
};
----------------------
--- Ragefire Chasm ---
----------------------
AtlasLoot_Data["RagefireChasm"] = {
	Name = BabbleZone["Ragefire Chasm"];
	Map = "RagefireChasm";
	{
		Name = BabbleBoss["Taragaman the Hungerer"];
		[1] = { itemID = 14149, "=q3=Subterranean Cape", "31.59%" };
		[2] = { itemID = 14148, "=q3=Crystalline Cuffs", "=ds=#s8#, #a1#", "33.91%" };
		[3] = { itemID = 14145, "=q3=Cursed Felblade", "15.98%" };
		[4] = { itemID = 14540, "=q1=Taragaman the Hungerer's Heart", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Zelemar the Wrathful"];
		[1] = { itemID = 24225, "=q1=Blood of the Wrathful", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Jergosh the Invoker"];
		[1] = { itemID = 14150, "=q3=Robe of Evocation", "=ds=#s5#, #a1#", "36.40%" };
		[2] = { itemID = 14147, "=q3=Cavedweller Bracers", "=ds=#s8#, #a3#", "34.35%" };
		[3] = { itemID = 14151, "=q3=Chanting Blade", "=ds=#h1#, #w4#", "17.10%" };
	};
};

----------------------
--- Razorfen Downs ---
----------------------

AtlasLoot_Data["RazorfenDowns"] = {
	Name = BabbleZone["Razorfen Downs"];
	Map = "RazorfenDowns";
	{
		Name = BabbleBoss["Tuten'kash"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Tuten'kash"] };
		[2] = { itemID = 10776, "=q3=Silky Spider Cape", "28.64%" };
		[3] = { itemID = 10777, "=q3=Arachnid Gloves", "=ds=#s9#, #a2# =q2=#m16#", "28.95%" };
		[4] = { itemID = 10775, "=q3=Carapace of Tuten'kash", "=ds=#s5#, #a4#", "24.87%" };
	};
	{
		Name = AL["Henry Stern"];
		[1] = { itemID = 3831, "=q2=Recipe: Mighty Troll's Blood Potion", "=ds=#p1# (180)" };
		[2] = { itemID = "s13028", "10841", "=q1=Goldthorn Tea", "=ds=#p3# (175)" };
	};
	{
		Name = BabbleBoss["Mordresh Fire Eye"];
		[1] = { itemID = 10771, "=q3=Deathmage Sash", "=ds=#s10#, #a1#", "27.92%" };
		[2] = { itemID = 10769, "=q3=Glowing Eye of Mordresh", "29.11%" };
		[3] = { itemID = 10770, "=q3=Mordresh's Lifeless Skull", "29.59%" };
	};
	{
		Name = BabbleBoss["Glutton"];
		[1] = { itemID = 10774, "=q3=Fleshhide Shoulders", "=ds=#s3#, #a2#", "42.15%" };
		[2] = { itemID = 10772, "=q3=Glutton's Cleaver", "44.22%" };
	};
	{
		Name = BabbleBoss["Ragglesnout"];
		[1] = { itemID = 10768, "=q3=Boar Champion's Belt", "=ds=#s10#, #a3#", "31.40%" };
		[2] = { itemID = 10758, "=q3=X'caliboar", "=ds=#h2#, #w10#", "18.51%" };
		[3] = { itemID = 10767, "=q3=Savage Boar's Guard", "=ds=#w8#", "35.14%" };
	};
	{
		Name = BabbleBoss["Amnennar the Coldbringer"];
		[1] = { itemID = 10762, "=q3=Robes of the Lich", "=ds=#s5#, #a1#", "29.52%" };
		[2] = { itemID = 10765, "=q3=Bonefingers", "=ds=#s9#, #a2#" };
		[3] = { itemID = 10764, "=q3=Deathchill Armor", "=ds=#s5#, #a3#", "24.24%" };
		[4] = { itemID = 10763, "=q3=Icemetal Barbute", "=ds=#s1#, #a4#", "28.66%" };
		[5] = { itemID = 10761, "=q3=Coldrage Dagger", "=ds=#h1#, #w4#", "13.89%" };
		[6] = { itemID = 10420, "=q1=Skull of the Coldbringer", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Plaguemaw the Rotting"];
		[1] = { itemID = 10760, "=q3=Swine Fists", "=ds=#s9#, #a2#", "58.15%" };
		[2] = { itemID = 10766, "=q3=Plaguerot Sprig", "=ds=#w12#, =q1=#m1# =ds=#c3#", "29.98%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10574, "=q3=Corpseshroud", "=ds=#s1#, #a1#", "0.01%" };
		[2] = { itemID = 10581, "=q3=Death's Head Vestment", "=ds=#s5#, #a1#", "0.02%" };
		[3] = { itemID = 10578, "=q3=Thoughtcast Boots", "=ds=#s12#, #a1#", "0.01%" };
		[4] = { itemID = 10583, "=q3=Quillward Harness", "=ds=#s5#, #a2#", "0.01%" };
		[5] = { itemID = 10582, "=q3=Briar Tredders", "=ds=#s12#, #a2#", "0.02%" };
		[6] = { itemID = 10584, "=q3=Stormgale Fists", "=ds=#s9#, #a3#", "0.02%" };
		[7] = { itemID = 10573, "=q3=Boneslasher", "=ds=#h2#, #w10#", "0.01%" };
		[8] = { itemID = 10570, "=q3=Manslayer", "=ds=#h2#, #w1#", "0.01%" };
		[9] = { itemID = 10571, "=q3=Ebony Boneclub", "=ds=#h1#, #w6#", "0.01%" };
		[10] = { itemID = 10567, "=q3=Quillshooter", "=ds=#w2#", "0.02%" };
		[11] = { itemID = 10572, "=q3=Freezing Shard", "=ds=#w12#, =q1=#m1# =q2=#c3#", "0.01%" };
	};
};

----------------------
--- Razorfen Kraul ---
----------------------

AtlasLoot_Data["RazorfenKraul"] = {
	Name = BabbleZone["Razorfen Kraul"];
	Map = "RazorfenKraul";
	{
		Name = AL["Roogug"];
		[1] = { itemID = 6841, "=q1=Vial of Phlogiston", "=ds=#m3#" };
	};
	{
		Name = AL["Aggem Thorncurse"];
		[1] = { itemID = 6681, "=q3=Thornspike", "=ds=#h1#, #w4#", "57,12%" };
	};
	{
		Name = BabbleBoss["Death Speaker Jargba"];
		[1] = { itemID = 6685, "=q3=Death Speaker Mantle", "=ds=#s3#, #a1#", "40.42%" };
		[2] = { itemID = 6682, "=q3=Death Speaker Robes", "=ds=#s5#, #a1#", "40.52%" };
		[3] = { itemID = 2816, "=q3=Death Speaker Scepter", "=ds=#h3#, #w6#", "7.72%" };
	};
	{
		Name = AL["Razorfen Spearhide"];
		[1] = { itemID = 6679, "=q3=Armor Piercer", "=ds=#w7#", "43%" };
	};
	{
		Name = BabbleBoss["Overlord Ramtusk"];
		[1] = { itemID = 6686, "=q3=Tusken Helm", "=ds=#s1#, #a3#", "57.14%" };
		[2] = { itemID = 6687, "=q3=Corpsemaker", "=ds=#h2#, #w1#", "27.79%" };
	};
	{
		Name = BabbleBoss["Agathelos the Raging"];
		[1] = { itemID = 6690, "=q3=Ferine Leggings", "=ds=#s11#, #a2#", "49.21%" };
		[2] = { itemID = 6691, "=q3=Swinetusk Shank", "=ds=#h1#, #w4#", "24.85%" };
	};
	{
		Name = BabbleBoss["Blind Hunter"];
		[1] = { itemID = 6697, "=q3=Batwing Mantle", "=ds=#s3#, #a1#", "27.65%" };
		[2] = { itemID = 6695, "=q3=Stygian Bone Amulet", "22.24%" };
		[3] = { itemID = 6696, "=q3=Nightstalker Bow", "=ds=#w2#", "25.12%" };
	};
	{
		Name = BabbleBoss["Charlga Razorflank"];
		[1] = { itemID = 6693, "=q3=Agamaggan's Clutch", "32.15%" };
		[2] = { itemID = 6692, "=q3=Pronged Reaver", "15.43%" };
		[3] = { itemID = 6694, "=q3=Heart of Agamaggan", "=ds=#w8#", "30.24%" };
		[4] = { itemID = 17008, "=q1=Small Scroll", "=ds=#m2# (#m6#)" };
		[5] = { itemID = 5793, "=q1=Razorflank's Heart", "=ds=#m3#", "100%" };
		[6] = { itemID = 5792, "=q1=Razorflank's Medallion", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Earthcaller Halmgar"];
		[1] = { itemID = 6688, "=q3=Whisperwind Headdress", "=ds=#s1#, #a2#", "43.75%" };
		[2] = { itemID = 6689, "=q3=Wind Spirit Staff", "=ds=#w9#", "42.66%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2264, "=q3=Mantle of Thieves", "=ds=#s3#, #a2#", "0.02%" };
		[2] = { itemID = 1978, "=q3=Wolfclaw Gloves", "=ds=#s9#, #a2#", "0.02%" };
		[3] = { itemID = 1488, "=q3=Avenger's Armor", "=ds=#s5#, #a3#", "0.01%" };
		[4] = { itemID = 4438, "=q3=Pugilist Bracers", "=ds=#s8#, #a3#", "0.01%" };
		[5] = { itemID = 2039, "=q3=Plains Ring", "0.02%" };
		[6] = { itemID = 776, "=q3=Vendetta", "=ds=#h1#, #w4#", "0.01%" };
		[7] = { itemID = 1727, "=q3=Sword of Decay", "0.02%" };
		[8] = { itemID = 1975, "=q3=Pysan's Old Greatsword", "=ds=#h2#, #w10#", "0.02%" };
		[9] = { itemID = 1976, "=q3=Slaghammer", "0.02%" };
		[10] = { itemID = 2549, "=q3=Staff of the Shade", "=ds=#w9#", "0.02%" };
	};
};
-------------------------
--- Scarlet Monastery ---
-------------------------

AtlasLoot_Data["Scarlet Monastery"] = {
	Name = BabbleZone["Scarlet Monastery"];
	Map = "SMArmory";
	{
		Name = "Armory";
		[1] = { itemID = 7719, "=q3=Raging Berserker's Helm", "=ds=#s1#, #a3#", "30.62%" };
		[2] = { itemID = 7718, "=q3=Herod's Shoulder", "=ds=#s3#, #a3#", "30.82%" };
		[3] = { itemID = 10330, "=q3=Scarlet Leggings", "=ds=#s11#, #a3#", "12.75%" };
		[4] = { itemID = 7717, "=q3=Ravager", "=ds=#h2#, #w1#", "12.86%" };
		[6] = { icon = "INV_Box_01", "=q6=#n43#" };
		[7] = { itemID = 23192, "=q2=Tabard of the Scarlet Crusade", "=ds=#s7#", "0.4%" };
	};
	{
		Name = BabbleZone["Cathedral"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Fairbanks"] };
		[2] = { itemID = 19507, "=q3=Inquisitor's Shawl", "=ds=#s3#, #a1#", "15.94%" };
		[3] = { itemID = 19508, "=q3=Branded Leather Bracers", "=ds=#s8#, #a2#", "16.17%" };
		[4] = { itemID = 19509, "=q3=Dusty Mail Boots", "=ds=#s12#, #a3#", "17.24%" };
		[6] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Scarlet Commander Mograine"] };
		[7] = { itemID = 7724, "=q3=Gauntlets of Divinity", "=ds=#s9#, #a3#", "17.49%" };
		[8] = { itemID = 10330, "=q3=Scarlet Leggings", "=ds=#s11#, #a3#", "12.95%" };
		[9] = { itemID = 7723, "=q3=Mograine's Might", "17.13%" };
		[10] = { itemID = 7726, "=q3=Aegis of the Scarlet Commander", "=ds=#w8#", "38.37%" };
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Whitemane"] };
		[17] = { itemID = 7720, "=q3=Whitemane's Chapeau", "=ds=#s1#, #a1#", "34.01%" };
		[18] = { itemID = 7722, "=q3=Triune Amulet", "33.23%" };
		[19] = { itemID = 7721, "=q3=Hand of Righteousness", "=ds=#h3#, #w6#", "18.32%" };
		[20] = { itemID = 20976, "=q2=Design: Citrine Pendant of Golden Healing", "=ds=#p12# (190)", "100%" };
	};
	{
		Name = BabbleZone["Graveyard"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Interrogator Vishas"] };
		[2] = { itemID = 7683, "=q3=Bloody Brass Knuckles", "=ds=#h1#, #w13#", "66.1%" };
		[3] = { itemID = 7682, "=q3=Torturing Poker", "=ds=#h1#, #w4#", "5.56%" };
		[5] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Bloodmage Thalnos"] };
		[6] = { itemID = 7684, "=q3=Bloodmage Mantle", "=ds=#s3#, #a1#", "48.46%" };
		[7] = { itemID = 7685, "=q3=Orb of the Forgotten Seer", "47.07%" };
		[9] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Ironspine"] };
		[10] = { itemID = 7688, "=q3=Ironspine's Ribcage", "=ds=#s5#, #a3#", "32.91%" };
		[11] = { itemID = 7686, "=q3=Ironspine's Eye", "40.08%" };
		[12] = { itemID = 7687, "=q3=Ironspine's Fist", "=ds=#h1#, #w6#", "20.34%" };
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Azshir the Sleepless"] };
		[17] = { itemID = 7709, "=q3=Blighted Leggings", "=ds=#s11#, #a1#", "31.19%" };
		[18] = { itemID = 7731, "=q3=Ghostshard Talisman", "32.71%" };
		[19] = { itemID = 7708, "=q3=Necrotic Wand", "30.72%" };
		[21] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Fallen Champion"] };
		[22] = { itemID = 7691, "=q3=Embalmed Shroud", "=ds=#s1#, #a1#", "38.58%" };
		[23] = { itemID = 7690, "=q3=Ebon Vise", "=ds=#s9#, #a2#", "37.83%" };
		[24] = { itemID = 7689, "=q3=Morbid Dawn", "=ds=#h2#, #w10#", "19.15%" };
	};
	{
		Name = BabbleZone["Library"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Houndmaster Loksey"] };
		[2] = { itemID = 7756, "=q3=Dog Training Gloves", "=ds=#s9#, #a2#", "53.66%" };
		[3] = { itemID = 7710, "=q3=Loksey's Training Stick", "=ds=#w9#", "13.96%" };
		[4] = { itemID = 3456, "=q3=Dog Whistle", "=ds=#e13#", "21.33%" };
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Arcanist Doan"] };
		[17] = { itemID = 34227, "=q4=Deadman's Hand", "" };
		[18] = { itemID = 7712, "=q3=Mantle of Doan", "=ds=#s3#, #a1#", "41.96%" };
		[19] = { itemID = 7711, "=q3=Robe of Doan", "=ds=#s5#, #a1#", "42.86%" };
		[20] = { itemID = 7714, "=q3=Hypnotic Blade", "=ds=#h3#, #w4#", "39.91%" };
		[21] = { itemID = 7713, "=q3=Illusionary Rod", "=ds=#w9#", "38.44%" };
		[23] = { icon = "INV_Box_01", "=q6=#x1#" };
		[24] = { itemID = 7146, "=q2=The Scarlet Key", "=ds=#e9#" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 7728, "=q3=Beguiler Robes", "=ds=#s5#, #a1#", "0.01%" };
		[2] = { itemID = 7755, "=q3=Flintrock Shoulders", "=ds=#s3#, #a2#", "0.00%" };
		[3] = { itemID = 7727, "=q3=Watchman Pauldrons", "=ds=#s3#, #a2#", "0.01%" };
		[4] = { itemID = 7760, "=q3=Warchief Kilt", "=ds=#s11#, #a2#", "0.00%" };
		[5] = { itemID = 7754, "=q3=Harbinger Boots", "=ds=#s12#, #a2#", "0.01%" };
		[6] = { itemID = 5819, "=q3=Sunblaze Coif", "=ds=#s1#, #a3#", "0.01%" };
		[7] = { itemID = 7759, "=q3=Archon Chestpiece", "=ds=#s5#, #a3#", "0.00%" };
		[8] = { itemID = 10328, "=q3=Scarlet Chestpiece", "=ds=#s5#, #a3#", "0.3%" };
		[9] = { itemID = 10332, "=q3=Scarlet Boots", "=ds=#s12#, #a3#", "0.1%" };
		[10] = { itemID = 2262, "=q3=Mark of Kern", "0.01%" };
		[11] = { itemID = 1992, "=q3=Swampchill Fetish", "0.00%" };
		[13] = { itemID = 10333, "=q2=Scarlet Wristguards", "=ds=#s8#, #a3#", "1.6%" };
		[14] = { itemID = 10331, "=q2=Scarlet Gauntlets", "=ds=#s9#, #a3#", "1.7%" };
		[15] = { itemID = 10329, "=q2=Scarlet Belt", "=ds=#s10#, #a3#", "1.6%" };
		[16] = { itemID = 5756, "=q3=Sliverblade", "=ds=#h1#, #w4#", "0.01%" };
		[17] = { itemID = 8225, "=q3=Tainted Pierce", "0.01%" };
		[18] = { itemID = 8226, "=q3=The Butcher", "0.01%" };
		[19] = { itemID = 7786, "=q3=Headsplitter", "0.01%" };
		[20] = { itemID = 7761, "=q3=Steelclaw Reaver", "0.01%" };
		[21] = { itemID = 7753, "=q3=Bloodspiller", "=ds=#h2#, #w1#", "0.01%" };
		[22] = { itemID = 7752, "=q3=Dreamslayer", "=ds=#h1#, #w6#", "0.01%" };
		[23] = { itemID = 7736, "=q3=Fight Club", "=ds=#h1#, #w6#", "0.00%" };
		[24] = { itemID = 7730, "=q3=Cobalt Crusher", "0.01%" };
		[25] = { itemID = 7758, "=q3=Ruthless Shiv", "=ds=#w7#", "0.00%" };
		[26] = { itemID = 7757, "=q3=Windweaver Staff", "=ds=#w9#", "0.01%" };
		[27] = { itemID = 7787, "=q3=Resplendent Guardian", "=ds=#w8#", "0.01%" };
		[28] = { itemID = 7729, "=q3=Chesterfall Musket", "=ds=#w5#", "0.01%" };
	};
};
-------------------
--- Scholomance ---
-------------------

AtlasLoot_Data["Scholomance"] = {
	Name = BabbleZone["Scholomance"];
	Type = "ClassicDungeonExt";
	Loadfirst = 3;
	Map = "Scholomance";
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 13873, "=q1=Viewing Room Key", "=ds=#e9#" };
		[3] = { itemID = 13471, "=q1=The Deed to Brill", "=ds=#m3#" };
		[4] = { itemID = 13448, "=q1=The Deed to Caer Darrow", "=ds=#m3#" };
		[5] = { itemID = 13450, "=q1=The Deed to Southshore", "=ds=#m3#" };
		[6] = { itemID = 13451, "=q1=The Deed to Tarren Mill", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Blood Steward of Kirtonos"];
		[1] = { itemID = 13523, "=q1=Blood of Innocents", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Kirtonos the Herald"];
		[1] = { itemID = 13956, "=q3=Clutch of Andros", "=ds=#s10#, #a1#", "15.31%" };
		[2] = { itemID = 13957, "=q3=Gargoyle Slashers", "=ds=#s9#, #a2#", "14.40%" };
		[3] = { itemID = 13969, "=q3=Loomguard Armbraces", "=ds=#s8#, #a3#", "16.25%" };
		[4] = { itemID = 13967, "=q3=Windreaver Greaves", "=ds=#s12#, #a3#", "14.87%" };
		[5] = { itemID = 13955, "=q3=Stoneform Shoulders", "=ds=#s3#, #a4#", "14.73%" };
		[6] = { itemID = 13960, "=q3=Heart of the Fiend", "16.36%" };
		[7] = { itemID = 14024, "=q3=Frightalon", "=ds=#h1#, #w4#", "15.55%" };
		[8] = { itemID = 13983, "=q3=Gravestone War Axe", "=ds=#h2#, #w1#", "12.78%" };
		[16] = { itemID = 16734, "=q3=Boots of Valor", "=ds=#s12#, #a4# (D1, #c9#)", "11.12%" };
	};
	{
		Name = BabbleBoss["Jandice Barov"];
		[1] = { itemID = 18689, "=q3=Phantasmal Cloak", "7.52%" };
		[2] = { itemID = 14543, "=q3=Darkshade Gloves", "=ds=#s9#, #a1#", "0.26%" };
		[3] = { itemID = 14545, "=q3=Ghostloom Leggings", "=ds=#s11#, #a2#", "8.81%" };
		[4] = { itemID = 14548, "=q3=Royal Cap Spaulders", "=ds=#s3#, #a3#", "10.06%" };
		[5] = { itemID = 18690, "=q3=Wraithplate Leggings", "=ds=#s11#, #a4#", "8.59%" };
		[6] = { itemID = 14541, "=q3=Barovian Family Sword", "=ds=#h2#, #w10#", "8.27%" };
		[7] = { itemID = 22394, "=q3=Staff of Metanoia", "=ds=#w9#", "8.67%" };
		[9] = { itemID = 13725, "=q1=Krastinov's Bag of Horrors", "=ds=#m3#", "100%" };
		[10] = { itemID = 13523, "=q1=Blood of Innocents", "=ds=#m3#", "17.8%" };
		[16] = { itemID = 16701, "=q3=Dreadmist Mantle", "=ds=#s3#, #a1# (D1, #c8#)", "12.20%" };
	};
	{
		Name = BabbleBoss["Rattlegore"];
		[1] = { itemID = 14538, "=q3=Deadwalker Mantle", "=ds=#s3#, #a1#", "11.32%" };
		[2] = { itemID = 14539, "=q3=Bone Ring Helm", "=ds=#s1#, #a2#", "10.89%" };
		[3] = { itemID = 18686, "=q3=Bone Golem Shoulders", "=ds=#s3#, #a3#", "9.04%" };
		[4] = { itemID = 14537, "=q3=Corpselight Greaves", "=ds=#s12#, #a4#", "10.22%" };
		[5] = { itemID = 14531, "=q3=Frightskull Shaft", "9.55%" };
		[6] = { itemID = 14528, "=q3=Rattlecage Buckler", "=ds=#w8#", "9.16%" };
		[8] = { itemID = 13873, "=q1=Viewing Room Key", "=ds=#e9#", "100%" };
		[16] = { itemID = 16711, "=q3=Shadowcraft Boots", "=ds=#s12#, #a2# (D1, #c6#)", "14.32%" };
		[18] = { itemID = 18782, "=q3=Top Half of Advanced Armorsmithing: Volume II", "=ds=#m3#", "5.71%" };
		[19] = { itemID = 12726, "=q3=Plans: Enchanted Thorium Leggings", "=q1=#m4#: =ds=#p2# (300)" };
	};
	{
		Name = BabbleBoss["Death Knight Darkreaver"];
		[1] = { itemID = 18760, "=q3=Necromantic Band", "24.75%" };
		[2] = { itemID = 18758, "=q3=Specter's Blade", "=ds=#h1#, #w4#", "15.72%" };
		[3] = { itemID = 18759, "=q3=Malicious Axe", "=ds=#h2#, #w1#", "24.75%" };
		[4] = { itemID = 18761, "=q3=Oblivion's Touch", "17.17%" };
		[6] = { itemID = 18749, "=q1=Charger's Lost Soul", "=ds=#m3#", "10.93%" };
	};
	{
		Name = BabbleBoss["Vectus"];
		[1] = { itemID = 14577, "=q3=Skullsmoke Pants", "=ds=#s11#, #a1#", "5.24%" };
		[2] = { itemID = 18691, "=q3=Dark Advisor's Pendant", "6.16%" };
	};
	{
		Name = BabbleBoss["Marduk Blackpool"];
		[1] = { itemID = 18692, "=q3=Death Knight Sabatons", "=ds=#s12#, #a4#", "6.29%" };
		[2] = { itemID = 14576, "=q3=Ebon Hilt of Marduk", "6.55%" };
	};
	{
		Name = BabbleBoss["Ras Frostwhisper"];
		[1] = { itemID = 13314, "=q4=Alanna's Embrace", "=ds=#s5#, #a1#", "1.07%" };
		[3] = { itemID = 14340, "=q3=Freezing Lich Robes", "=ds=#s5#, #a1#", "12.55%" };
		[4] = { itemID = 18693, "=q3=Shivery Handwraps", "=ds=#s9#, #a1#", "12.38%" };
		[5] = { itemID = 14503, "=q3=Death's Clutch", "=ds=#s3#, #a2#", "11.73%" };
		[6] = { itemID = 14502, "=q3=Frostbite Girdle", "=ds=#s10#, #a2#", "11.20%" };
		[7] = { itemID = 18694, "=q3=Shadowy Mail Greaves", "=ds=#s12#, #a3#", "14.63%" };
		[8] = { itemID = 14522, "=q3=Maelstrom Leggings", "=ds=#s11#, #a3#", "13.01%" };
		[9] = { itemID = 14525, "=q3=Boneclenched Gauntlets", "=ds=#s9#, #a4#", "11.45%" };
		[10] = { itemID = 18695, "=q3=Spellbound Tome", "10.86%" };
		[11] = { itemID = 13952, "=q3=Iceblade Hacker", "9.74%" };
		[12] = { itemID = 14487, "=q3=Bonechill Hammer", "=ds=#h1#, #w6#", "11.92%" };
		[13] = { itemID = 18696, "=q3=Intricately Runed Shield", "=ds=#w8#", "13.04%" };
		[16] = { itemID = 16689, "=q3=Magister's Mantle", "=ds=#s3#, #a1# (D1, #c3#)", "11.93%" };
		[18] = { itemID = 13521, "=q2=Recipe: Flask of Supreme Power", "=ds=#p1# (300)", "2.92%" };
		[20] = { itemID = 13626, "=q1=Human Head of Ras Frostwhisper", "=ds=#m3#", "100%" };
		[21] = { itemID = 13986, "=q3=Crown of Caer Darrow", "=q1=#m4#: =ds=#s1#, #a1#" };
		[22] = { itemID = 13984, "=q3=Darrowspike", "=q1=#m4#: =ds=#h1#, #w4#" };
		[23] = { itemID = 13982, "=q3=Warblade of Caer Darrow", "=q1=#m4#: =ds=#h2#, #w10#" };
		[24] = { itemID = 14002, "=q3=Darrowshire Strongguard", "=q1=#m4#: =ds=#w8#" };
		[26] = { icon = "INV_Box_01", "=q6=#x12#" };
		[27] = { itemID = 12736, "=q1=Frostwhisper's Embalming Fluid", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Kormok"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n22#" };
		[2] = { itemID = 22303, "=q3=Ironweave Pants", "=ds=#s11#, #a1#", "23.33%" };
		[3] = { itemID = 22326, "=q3=Amalgam's Band", "16.67%" };
		[4] = { itemID = 22331, "=q3=Band of the Steadfast Hero", "15.42%" };
		[5] = { itemID = 22332, "=q3=Blade of Necromancy", "25.42%" };
		[6] = { itemID = 22333, "=q3=Hammer of Divine Might", "12.50%" };
		[8] = { itemID = 21984, "=q1=Left Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
		[9] = { itemID = 22046, "=q1=Right Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Instructor Malicia"];
		[1] = { itemID = 16710, "=q3=Shadowcraft Bracers", "=ds=#s8#, #a2# (D1, #c6#)", "3.51%" };
		[3] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "1.81%" };
		[4] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "1.12%" };
		[5] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "1.27%" };
		[6] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "1.03%" };
		[7] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "0.88%" };
		[8] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "0.85%" };
		[9] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "1.51%" };
		[10] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "0.82%" };
		[11] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "0.60%" };
		[12] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "1.09%" };
		[13] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "1.00%" };
		[14] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "0.67%" };
		[15] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "0.54%" };
		[16] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.09%" };
		[17] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "0.60%" };
		[18] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "0.42%" };
		[19] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.36%" };
		[20] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "0.45%" };
		[21] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "0.45%" };
		[22] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "0.67%" };
		[23] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "1.12%" };
		[24] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "0.57%" };
		[25] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[26] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[27] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[28] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "1.39%" };
		[29] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "0.91%" };
	};
	{
		Name = BabbleBoss["Doctor Theolen Krastinov"];
		[1] = { itemID = 16684, "=q3=Magister's Gloves", "=ds=#s9#, #a1# (D1, #c3#)", "9.75%" };
		[3] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "2.81%" };
		[4] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "1.91%" };
		[5] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "2.37%" };
		[6] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "1.82%" };
		[7] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "2.42%" };
		[8] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "2.16%" };
		[9] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "3.14%" };
		[10] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "2.08%" };
		[11] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "1.93%" };
		[12] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "1.43%" };
		[13] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "1.82%" };
		[14] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "1.91%" };
		[15] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "0.87%" };
		[16] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.53%" };
		[17] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.78%" };
		[18] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "0.42%" };
		[19] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "0.79%" };
		[20] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "1.61%" };
		[21] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "1.32%" };
		[22] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "1.52%" };
		[23] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "1.64%" };
		[24] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "1.75%" };
		[25] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[26] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[27] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[28] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "2.54%" };
		[29] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "3.21%" };
		[30] = { itemID = 13523, "=q1=Blood of Innocents", "=ds=#m3#", "25.7%" };
	};
	{
		Name = BabbleBoss["Lorekeeper Polkelt"];
		[1] = { itemID = 16705, "=q3=Dreadmist Wraps", "=ds=#s9#, #a1# (D1, #c8#)", "14.54%" };
		[3] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "0.53%" };
		[4] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "0.67%" };
		[5] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "0.55%" };
		[6] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "0.47%" };
		[7] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "0.57%" };
		[8] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "0.89%" };
		[9] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "0.57%" };
		[10] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "0.65%" };
		[11] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "0.79%" };
		[12] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "0.83%" };
		[13] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "0.63%" };
		[14] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "0.47%" };
		[15] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "0.26%" };
		[16] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.14%" };
		[17] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.45%" };
		[18] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "0.18%" };
		[19] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "0.30%" };
		[20] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "0.49%" };
		[21] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "0.32%" };
		[22] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "0.30%" };
		[23] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "0.30%" };
		[24] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "0.41%" };
		[25] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[26] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[27] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[28] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "0.67%" };
		[29] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "0.49%" };
	};
	{
		Name = BabbleBoss["The Ravenian"];
		[1] = { itemID = 16716, "=q3=Wildheart Belt", "=ds=#s10#, #a2# (D1, #c1#)", "2.60%" };
		[3] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "1.32%" };
		[4] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "0.76%" };
		[5] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "1.04%" };
		[6] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "0.89%" };
		[7] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "1.32%" };
		[8] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "1.41%" };
		[9] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "0.95%" };
		[10] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "1.52%" };
		[11] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "0.82%" };
		[12] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "1.02%" };
		[13] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "0.95%" };
		[14] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "0.93%" };
		[15] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "0.20%" };
		[16] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.33%" };
		[17] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.11%" };
		[18] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "0.09%" };
		[19] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "0.04%" };
		[20] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "1.06%" };
		[21] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "0.91%" };
		[22] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "0.69%" };
		[23] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "1.15%" };
		[24] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "0.89%" };
		[25] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[26] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[27] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[28] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "1.52%" };
		[29] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "1.74%" };
	};
	{
		Name = BabbleBoss["Lord Alexei Barov"];
		[1] = { itemID = 16722, "=q3=Lightforge Bracers", "=ds=#s8#, #a4# (D1, #c4#)", "3.37%" };
		[3] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "4.94%" };
		[4] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "3.39%" };
		[5] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "5.30%" };
		[6] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "4.05%" };
		[7] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "2.86%" };
		[8] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "2.38%" };
		[9] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "4.79%" };
		[10] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "4.55%" };
		[11] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "2.08%" };
		[12] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "2.35%" };
		[13] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "2.83%" };
		[14] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "2.38%" };
		[15] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "1.01%" };
		[16] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.83%" };
		[17] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.62%" };
		[18] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "1.13%" };
		[19] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "1.43%" };
		[20] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "1.49%" };
		[21] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "1.73%" };
		[22] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "1.61%" };
		[23] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "2.65%" };
		[24] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "2.20%" };
		[25] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[26] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[27] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[28] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "4.67%" };
		[29] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "4.70%" };
	};
	{
		Name = BabbleBoss["Lady Illucia Barov"];
		[1] = { itemID = 18681, "=q3=Burial Shawl", "=ds=#s3#, #a1#", "1.20%" };
		[2] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#, #a1#", "1.07%" };
		[3] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#, #a1#", "1.30%" };
		[4] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#, #a1#", "1.17%" };
		[5] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#, #a1#", "0.94%" };
		[6] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#, #a1#", "0.78%" };
		[7] = { itemID = 18682, "=q3=Ghoul Skin Leggings", "=ds=#s11#, #a2#", "1.61%" };
		[8] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#, #a2#", "0.94%" };
		[9] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#, #a2#", "1.15%" };
		[10] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#, #a2#", "1.12%" };
		[11] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#, #a2#", "0.94%" };
		[12] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#, #a2#", "0.70%" };
		[13] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#, #a3#", "0.44%" };
		[14] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#, #a3#", "0.34%" };
		[15] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#, #a3#", "0.49%" };
		[16] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#, #a3#", "0.42%" };
		[17] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#, #a3#", "0.44%" };
		[18] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#, #a4#", "0.75%" };
		[19] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#, #a4#", "0.70%" };
		[20] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#, #a4#", "0.60%" };
		[21] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#, #a4#", "0.81%" };
		[22] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#, #a4#", "0.83%" };
		[23] = { itemID = 18684, "=q3=Dimly Opalescent Ring", "0.85%" };
		[24] = { itemID = 23201, "=q3=Libram of Divinity", "=ds=#s16#, #w16#" };
		[25] = { itemID = 23200, "=q3=Totem of Sustaining", "=ds=#s16#, #w15#", "3.5%" };
		[26] = { itemID = 18683, "=q3=Hammer of the Vesper", "=ds=#h1#, #w6#", "1.35%" };
		[27] = { itemID = 18680, "=q3=Ancient Bone Bow", "=ds=#w2#", "1.17%" };
	};
	{
		Name = BabbleBoss["Darkmaster Gandling"];
		[1] = { itemID = 13937, "=q4=Headmaster's Charge", "=ds=#w9#", "1.11%" };
		[2] = { itemID = 14514, "=q4=Pattern: Robe of the Void", "=ds=#p8# (300) =q1=#m1# =ds=#c8#", "6.71%" };
		[3] = { itemID = 14153, "=q4=Robe of the Void", "=ds=#s5#, #a1# =q1=#m1# =ds=#c8#" };
		[4] = { itemID = 13944, "=q3=Tombstone Breastplate", "=ds=#s5#, #a2#", "8.96%" };
		[5] = { itemID = 13398, "=q3=Boots of the Shrieker", "=ds=#s12#, #a2#", "10.75%" };
		[7] = { itemID = 13950, "=q3=Detention Strap", "=ds=#s10#, #a3#", "0.24%" };
		[8] = { itemID = 13951, "=q3=Vigorsteel Vambraces", "=ds=#s8#, #a4#", "10.38%" };
		[9] = { itemID = 22433, "=q3=Don Mauricio's Band of Domination", "7.72%" };
		[10] = { itemID = 13964, "=q3=Witchblade", "=ds=#h3#, #w4#", "9.82%" };
		[11] = { itemID = 13953, "=q3=Silent Fang", "9.68%" };
		[12] = { itemID = 13938, "=q3=Bonecreeper Stylus", "8.80% " };
		[16] = { itemID = 16698, "=q3=Dreadmist Mask", "=ds=#s1#, #a1# (D1, #c8#)", "8.78%" };
		[17] = { itemID = 16686, "=q3=Magister's Crown", "=ds=#s1#, #a1# (D1, #c3#)", "8.60%" };
		[18] = { itemID = 16693, "=q3=Devout Crown", "=ds=#s1#, #a1# (D1, #c5#)", "7.89%" };
		[19] = { itemID = 16707, "=q3=Shadowcraft Cap", "=ds=#s1#, #a2# (D1, #c6#)", "6.65%" };
		[20] = { itemID = 16720, "=q3=Wildheart Cowl", "=ds=#s1#, #a2# (D1, #c1#)", "7.09%" };
		[21] = { itemID = 16677, "=q3=Beaststalker's Cap", "=ds=#s1#, #a3# (D1, #c2#)", "7.00%" };
		[22] = { itemID = 16667, "=q3=Coif of Elements", "=ds=#s1#, #a3# (D1, #c7#)", "2.86%" };
		[23] = { itemID = 16731, "=q3=Helm of Valor", "=ds=#s1#, #a4# (D1, #c9#)", "6.54%" };
		[24] = { itemID = 16727, "=q3=Lightforge Helm", "=ds=#s1#, #a4# (D1, #c4#)", "5.32%" };
		[26] = { itemID = 19276, "=q3=Ace of Portals", "=ds=#e16#", "2.20%" };
		[28] = { itemID = 13501, "=q2=Recipe: Major Mana Potion", "=ds=#p1# (295)", "8.64%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18697, "=q3=Coldstone Slippers", "=ds=#s12#, #a1#", "0.01%" };
		[2] = { itemID = 18698, "=q3=Tattered Leather Hood", "=ds=#s1#, #a2#", "0.01%" };
		[3] = { itemID = 18699, "=q3=Icy Tomb Spaulders", "=ds=#s3#, #a2#", "0.01%" };
		[4] = { itemID = 18700, "=q3=Malefic Bracers", "=ds=#s8#, #a2#", "0.01%" };
		[5] = { itemID = 14536, "=q3=Bonebrace Hauberk", "=ds=#s5#, #a3#", "0.01%" };
		[6] = { itemID = 18702, "=q3=Belt of the Ordained", "=ds=#s10#, #a4#", "0.01%" };
		[7] = { itemID = 18701, "=q3=Innervating Band", "0.01%" };
		[9] = { itemID = 16254, "=q3=Formula: Enchant Weapon - Lifestealing", "=ds=#p4# (300) =q1=#n66#", "0.93%" };
		[10] = { itemID = 16255, "=q2=Formula: Enchant 2H Weapon - Major Spirit", "=ds=#p4# (300) =q1=#n67#", "0.88%" };
		[11] = { itemID = 15773, "=q2=Pattern: Wicked Leather Armor", "=ds=#p7# (300) =q1=#n66#", "3.03%" };
		[12] = { itemID = 15776, "=q2=Pattern: Runic Leather Armor", "=ds=#p7# (300) =q1=#n68#", "1.62%" };
		[14] = { itemID = 12753, "=q2=Skin of Shadow", "=ds=#m3#" };
		[15] = { itemID = 13920, "=q1=Healthy Dragon Scale", "=ds=#m2#" };
		[16] = { itemID = 16705, "=q3=Dreadmist Wraps", "=ds=#s9#, #a1# (D1)", "0.03%" };
		[17] = { itemID = 16684, "=q3=Magister's Gloves", "=ds=#s9#, #a1# (D1)", "1.27%" };
		[18] = { itemID = 16685, "=q3=Magister's Belt", "=ds=#s8#, #a1# (D1)", "0.22%" };
		[19] = { itemID = 16710, "=q3=Shadowcraft Bracers", "=ds=#s8#, #a2# (D1)", "1.53%" };
		[20] = { itemID = 16716, "=q3=Wildheart Belt", "=ds=#s8#, #a2# (D1)", "1.84%" };
		[21] = { itemID = 16722, "=q3=Lightforge Bracers", "=ds=#s8#, #a4# (D1)", "2.72%" };
	};
};
-----------------------
--- Shadowfang Keep ---
-----------------------

AtlasLoot_Data["ShadowfangKeep"] = {
	Name = BabbleZone["Shadowfang Keep"];
	Map = "ShadowfangKeep";
	{
		Name = BabbleBoss["Deathsworn Captain"];
		[1] = { itemID = 6642, "=q3=Phantom Armor", "=ds=#s5#, #a3#", "30.49%" };
		[2] = { itemID = 6641, "=q3=Haunting Blade", "=ds=#h2#, #w10#", "58.60%" };
	};
	{
		Name = AL["Rethilgore"];
		[1] = { itemID = 5254, "=q3=Rugged Spaulders", "=ds=#s3#, #a2#", "84.73%" };
	};
	{
		Name = AL["Felsteed"];
		[1] = { itemID = 6341, "=q3=Eerie Stable Lantern", "5.48%" };
		[2] = { itemID = 932, "=q1=Fel Steed Saddlebags", "=ds=#m12# #e1#", "16.46%" };
	};
	{
		Name = BabbleBoss["Razorclaw the Butcher"];
		[1] = { itemID = 6226, "=q3=Bloody Apron", "=ds=#s5#, #a1#", "39.47%" };
		[2] = { itemID = 6633, "=q3=Butcher's Slicer", "39.53%" };
		[3] = { itemID = 1292, "=q3=Butcher's Cleaver", "8.70%" };
	};
	{
		Name = BabbleBoss["Baron Silverlaine"];
		[1] = { itemID = 6321, "=q3=Silverlaine's Family Seal", "18.91%" };
		[2] = { itemID = 6323, "=q3=Baron's Scepter", "=ds=#h1#, #w6#", "37.93%" };
	};
	{
		Name = BabbleBoss["Commander Springvale"];
		[1] = { itemID = 3191, "=q3=Arced War Axe", "=ds=#h2#, #w1#", "31.73%" };
		[2] = { itemID = 6320, "=q3=Commander's Crest", "=ds=#w8#", "27.71%" };
	};
	{
		Name = BabbleBoss["Odo the Blindwatcher"];
		[1] = { itemID = 6319, "=q3=Girdle of the Blindwatcher", "=ds=#s10#, #a2#", "57.15%" };
		[2] = { itemID = 6318, "=q3=Odo's Ley Staff", "=ds=#w9#", "29.97%" };
	};
	{
		Name = BabbleBoss["Fenrus the Devourer"];
		[1] = { itemID = 6340, "=q3=Fenrus' Hide", "58.02%" };
		[2] = { itemID = 3230, "=q3=Black Wolf Bracers", "=ds=#s8#, #a2#", "14.76%" };
	};
	{
		Name = BabbleBoss["Arugal's Voidwalker"];
		[1] = { itemID = 5943, "=q3=Rift Bracers", "=ds=#s8#, #a3#", "3%" };
	};
	{
		Name = BabbleBoss["Wolf Master Nandos"];
		[1] = { itemID = 6314, "=q3=Wolfmaster Cape", "33.25%" };
		[2] = { itemID = 3748, "=q3=Feline Mantle", "=ds=#s3#, #a1#", "48.55%" };
	};
	{
		Name = BabbleBoss["Archmage Arugal"];
		[1] = { itemID = 6324, "=q3=Robes of Arugal", "=ds=#s5#, #a1#", "30.50%" };
		[2] = { itemID = 6392, "=q3=Belt of Arugal", "=ds=#s10#, #a1#", "30.51%" };
		[3] = { itemID = 6220, "=q3=Meteor Shard", "=ds=#h1#, #w4#", "15.78%" };
		[4] = { itemID = 24224, "=q1=Crate of Bloodforged Ingots", "=ds=#m3#" };
		[5] = { itemID = 6895, "=q1=Jordan's Smithing Hammer", "=ds=#m3#" };
		[6] = { itemID = 6283, "=q1=The Book of Ur", "=ds=#m3#" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2292, "=q3=Necrology Robes", "=ds=#s5#, #a1#", "0.01%" };
		[2] = { itemID = 1974, "=q3=Mindthrust Bracers", "=ds=#s8#, #a1#", "0.02%" };
		[3] = { itemID = 1489, "=q3=Gloomshroud Armor", "=ds=#s5#, #a2#", "0.01%" };
		[4] = { itemID = 1935, "=q3=Assassin's Blade", "=ds=#h1#, #w4#", "0.01%" };
		[5] = { itemID = 1482, "=q3=Shadowfang", "0.01%" };
		[6] = { itemID = 2205, "=q3=Duskbringer", "=ds=#h2#, #w10#", "0.01%" };
		[7] = { itemID = 2807, "=q3=Guillotine Axe", "0.01%" };
		[8] = { itemID = 1318, "=q3=Night Reaver", "=ds=#h2#, #w1#", "0.01%" };
		[9] = { itemID = 1483, "=q3=Face Smasher", "=ds=#h1#, #w6#", "0.02%" };
		[10] = { itemID = 3194, "=q3=Black Malice", "0.02%" };
		[11] = { itemID = 1484, "=q3=Witching Stave", "=ds=#w9#", "0.01%" };
	};
};

------------------
--- Stratholme ---
------------------

AtlasLoot_Data["Stratholme"] = {
	Name = BabbleZone["Stratholme"];
	Type = "ClassicDungeonExt";
	Map = "Stratholme";
	{
		Name = BabbleBoss["Skul"];
		[1] = { itemID = 13395, "=q3=Skul's Fingerbone Claws", "=ds=#s9#, #a2#", "36.52%" };
		[2] = { itemID = 13394, "=q3=Skul's Cold Embrace", "=ds=#s5#, #a4#", "24.16%" };
		[3] = { itemID = 13396, "=q3=Skul's Ghastly Touch", "16.85%" };
	};
	{
		Name = "Mailbox Keys";
		[1] = { itemID = 13304, "=q1=Festival Lane Postbox Key", "=ds=#e9#", "45.19%" };
		[2] = { itemID = 13303, "=q1=Crusaders' Square Postbox Key", "=ds=#e9#", "43.46%" };
		[3] = { itemID = 13307, "=q1=Fras Siabi's Postbox Key", "=ds=#e9#", "42.88%" };
		[4] = { itemID = 13305, "=q1=Elders' Square Postbox Key", "=ds=#e9#", "36.87%" };
		[5] = { itemID = 13302, "=q1=Market Row Postbox Key", "=ds=#e9#", "35.58%" };
		[6] = { itemID = 13306, "=q1=King's Square Postbox Key", "=ds=#e9#", "37.69%" };
	};
	{
		Name = BabbleBoss["Fras Siabi"];
		[1] = { itemID = 13172, "=q1=Siabi's Premium Tobacco", "=ds=#m3#", "100%" };
		[2] = { itemID = 13171, "=q2=Smokey's Lighter" };
	};
	{
		Name = "Atiesh <Hand of Sargeras>";
		[1] = { itemID = 22736, "=q5=Andonisus, Reaper of Souls", "=q1=#m26#: =ds=#h3#, #w10#", "100%" };
	};
	{
		Name = BabbleBoss["Hearthsinger Forresten"];
		[1] = { itemID = 13378, "=q3=Songbird Blouse", "=ds=#s5#, #a2#", "15.31%" };
		[2] = { itemID = 13383, "=q3=Woollies of the Prancing Minstrel", "=ds=#s11#, #a3#", "" };
		[3] = { itemID = 13384, "=q3=Rainbow Girdle", "=ds=#s10#, #a4#", "19.21%" };
		[4] = { itemID = 13379, "=q3=Piccolo of the Flaming Fire", "15.13%" };
		[16] = { itemID = 16682, "=q3=Magister's Boots", "=ds=#s12#, #a1# (D1, #c3#)", "10.86%" };
	};
	{
		Name = BabbleBoss["The Unforgiven"];
		[1] = { itemID = 13409, "=q3=Tearfall Bracers", "=ds=#s8#, #a1#", "14.62%" };
		[2] = { itemID = 13404, "=q3=Mask of the Unforgiven", "=ds=#s1#, #a2#", "14.96%" };
		[3] = { itemID = 13405, "=q3=Wailing Nightbane Pauldrons", "=ds=#s3#, #a4#", "12.10%" };
		[4] = { itemID = 13408, "=q3=Soul Breaker", "19.33%" };
		[16] = { itemID = 16717, "=q3=Wildheart Gloves", "=ds=#s9#, #a2# (D1, #c1#)", "12.61%" };
	};
	{
		Name = BabbleBoss["Timmy the Cruel"];
		[1] = { itemID = 13403, "=q3=Grimgore Noose", "=ds=#s10#, #a1#", "16.48%" };
		[2] = { itemID = 13402, "=q3=Timmy's Galoshes", "=ds=#s12#, #a3#", "16.74%" };
		[3] = { itemID = 13400, "=q3=Vambraces of the Sadist", "=ds=#s8#, #a4#", "14.02%" };
		[4] = { itemID = 13401, "=q3=The Cruel Hand of Timmy", "=ds=#h1#, #w6#", "16.87%" };
		[16] = { itemID = 16724, "=q3=Lightforge Gauntlets", "=ds=#s9#, #a4# (D1, #c4#)", "10.42%" };
	};
	{
		Name = AL["Malor's Strongbox"];
		[1] = { icon = "INV_Box_01", "=q6=#x13#" };
		[2] = { itemID = 12845, "=q1=Medallion of Faith", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Crimson Hammersmith"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 18781, "=q3=Bottom Half of Advanced Armorsmithing: Volume II", "=ds=#m3#", "41.6%" };
		[2] = { itemID = 12726, "=q3=Plans: Enchanted Thorium Leggings", "=q1=#m4#: =ds=#p2# (300)" };
		[4] = { itemID = 13351, "=q1=Crimson Hammersmith's Apron", "=ds=#m3#", "100%" };
		[5] = { itemID = 12824, "=q2=Plans: Enchanted Battlehammer", "=q1=#m4#: =ds=#p2# (280)" };
	};
	{
		Name = "Plans: Serenity";
		[1] = { itemID = 12827, "=q2=Plans: Serenity", "=ds=#p2# (285)", "100%" };
	};
	{
		Name = BabbleBoss["Cannon Master Willey"];
		[1] = { itemID = 22405, "=q3=Mantle of the Scarlet Crusade", "=ds=#s3#, #a1#", "16.03%" };
		[2] = { itemID = 22407, "=q3=Helm of the New Moon", "=ds=#s1#, #a2#", "13.61%" };
		[3] = { itemID = 18721, "=q3=Barrage Girdle", "=ds=#s10#, #a3#", "12.39%" };
		[4] = { itemID = 13381, "=q3=Master Cannoneer Boots", "=ds=#s12#, #a4#", "12.86%" };
		[5] = { itemID = 22403, "=q3=Diana's Pearl Necklace", "14.27%" };
		[6] = { itemID = 13382, "=q3=Cannonball Runner", "12.28%" };
		[7] = { itemID = 22404, "=q3=Willey's Back Scratcher", "=ds=#h3#, #w13#", "6.26%" };
		[8] = { itemID = 22406, "=q3=Redemption", "=ds=#w9#", "7.04%" };
		[9] = { itemID = 13380, "=q3=Willey's Portable Howitzer", "=ds=#w5#", "10.71%" };
		[10] = { itemID = 13377, "=q3=Miniature Cannon Balls", "=ds=#w18#", "66.61%" };
		[16] = { itemID = 16708, "=q3=Shadowcraft Spaulders", "=ds=#s3#, #a2# (D1, #c6#)", "10.68%" };
		[18] = { itemID = 12839, "=q3=Plans: Heartseeker", "=ds=#p2# (300)", "4.98%" };
		[19] = { itemID = 12783, "=q3=Heartseeker", "=ds=#h1#, #w4#" };
	};
	{
		Name = BabbleBoss["Archivist Galford"];
		[1] = { itemID = 13386, "=q3=Archivist Cape", "18.45%" };
		[2] = { itemID = 18716, "=q3=Ash Covered Boots", "=ds=#s12#, #a2#", "16.30%" };
		[3] = { itemID = 13387, "=q3=Foresight Girdle", "=ds=#s10#, #a3#", "18.24%" };
		[4] = { itemID = 13385, "=q3=Tome of Knowledge", "9.87%" };
		[5] = { itemID = 22897, "=q3=Tome of Conjure Food VII", "=ds=#e10# =q1=#m1# =ds=#c3#", "" };
		[7] = { itemID = 12811, "=q2=Righteous Orb", "61.3%" };
		[9] = { icon = "INV_Box_01", "=q6=#x11#" };
		[10] = { itemID = 14679, "=q1=Of Love and Family", "=ds=#m3#" };
		[16] = { itemID = 16692, "=q3=Devout Gloves", "=ds=#s9#, #a1# (D1, #c5#)", "" };
	};
	{
		Name = BabbleBoss["Balnazzar"];
		[1] = { itemID = 13353, "=q4=Book of the Dead", "1.37%" };
		[2] = { itemID = 14512, "=q4=Pattern: Truefaith Vestments", "=ds=#p8# (300)", "3.02%" };
		[3] = { itemID = 14154, "=q4=Truefaith Vestments", "=ds=#s5#, #a1# =q1=#m1# =ds=#c5#" };
		[5] = { itemID = 18720, "=q3=Shroud of the Nathrezim", "=ds=#s3#, #a1#", "10.54%" };
		[6] = { itemID = 13369, "=q3=Fire Striders", "=ds=#s12#, #a1#", "14.84%" };
		[7] = { itemID = 13358, "=q3=Wyrmtongue Shoulders", "=ds=#s3#, #a2#", "11.58%" };
		[8] = { itemID = 13359, "=q3=Crown of Tyranny", "=ds=#s1#, #a3#", "13.94%" };
		[9] = { itemID = 18718, "=q3=Grand Crusader's Helm", "=ds=#s1#, #a4#", "10.16%" };
		[10] = { itemID = 12103, "=q3=Star of Mystaria", "12.48%" };
		[11] = { itemID = 13360, "=q3=Gift of the Elven Magi", "=ds=#h1#, #w4#", "13.66%" };
		[12] = { itemID = 13348, "=q3=Demonshear", "=ds=#h2#, #w10#", "13.94%" };
		[13] = { itemID = 18717, "=q3=Hammer of the Grand Crusader", "11.91%" };
		[16] = { itemID = 16725, "=q3=Lightforge Boots", "=ds=#s12#, #a4# (D1, #c4#)", "11.11%" };
		[18] = { itemID = 13520, "=q2=Recipe: Flask of Distilled Wisdom", "=ds=#p1# (300)", "1.94%" };
		[20] = { itemID = 13250, "=q1=Head of Balnazzar", "=ds=#m2#" };
	};
	{
		Name = AL["Sothos and Jarien"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n18#" };
		[2] = { itemID = 22301, "=q3=Ironweave Robe", "=ds=#s5#, #a1#", "19.00%" };
		[3] = { itemID = 22328, "=q3=Legplates of Vigilance", "=ds=#s11#, #a4#", "21.27%" };
		[4] = { itemID = 22327, "=q3=Amulet of the Redeemed", "14.03%" };
		[5] = { itemID = 22334, "=q3=Band of Mending", "17.19%" };
		[6] = { itemID = 22329, "=q3=Scepter of Interminable Focus", "28.51%" };
		[8] = { itemID = 21984, "=q1=Left Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
		[9] = { itemID = 22046, "=q1=Right Piece of Lord Valthalak's Amulet", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Stonespine"];
		[1] = { itemID = 13397, "=q3=Stoneskin Gargoyle Cape", "23.44%" };
		[2] = { itemID = 13954, "=q3=Verdant Footpads", "=ds=#s12#, #a2#", "25.36%" };
		[3] = { itemID = 13399, "=q3=Gargoyle Shredder Talons", "=ds=#h4#, #w13#", "26.16%" };
	};
	{
		Name = BabbleBoss["Baroness Anastari"];
		[1] = { itemID = 18730, "=q3=Shadowy Laced Handwraps", "=ds=#s9#, #a1#", "" };
		[2] = { itemID = 18728, "=q3=Anastari Heirloom", "11.92%" };
		[3] = { itemID = 13534, "=q3=Banshee Finger", "13.42%" };
		[4] = { itemID = 18729, "=q3=Screeching Bow", "=ds=#w2#", "15.59%" };
		[6] = { itemID = 13535, "=q2=Coldtouch Phantom Wraps", "=ds=#s5#, #a1#", "9.84%" };
		[7] = { itemID = 13537, "=q2=Chillhide Bracers", "=ds=#s8#, #a2#", "9.71%" };
		[8] = { itemID = 13538, "=q2=Windshrieker Pauldrons", "=ds=#s3#, #a3#", "9.75%" };
		[9] = { itemID = 13539, "=q2=Banshee's Touch", "=ds=#s9#, #a4#", "8.27%" };
		[10] = { itemID = 13514, "=q2=Wail of the Banshee", "=ds=#m8#", "7.73%" };
		[16] = { itemID = 16704, "=q3=Dreadmist Sandals", "=ds=#s12#, #a1# (D1, #c8#)", "13.16%" };
	};
	{
		Name = BabbleBoss["Black Guard Swordsmith"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 18783, "=q3=Bottom Half of Advanced Armorsmithing: Volume III", "=ds=#m3#", "23.5%" };
		[2] = { itemID = 12725, "=q3=Plans: Enchanted Thorium Helm", "=q1=#m4#: =ds=#p2# (300)" };
		[4] = { itemID = 13350, "=q1=Insignia of the Black Guard", "=ds=#m3#", "100%" };
		[5] = { itemID = 12825, "=q2=Plans: Blazing Rapier", "=q1=#m4#: =ds=#p2# (280)" };
	};
	{
		Name = "Plans: Corruption";
		[1] = { itemID = 12830, "=q1=Plans: Corruption", "=ds=#p2# (290)", "100%" };
	};
	{
		Name = BabbleBoss["Nerub'enkan"];
		[1] = { itemID = 18740, "=q3=Thuzadin Sash", "=ds=#s10#, #a1#", "14.72%" };
		[2] = { itemID = 18739, "=q3=Chitinous Plate Legguards", "=ds=#s11#, #a4#", "12.19%" };
		[3] = { itemID = 13529, "=q3=Husk of Nerub'enkan", "=ds=#w8#", "12.62%" };
		[4] = { itemID = 18738, "=q3=Carapace Spine Crossbow", "=ds=#w3#", "14.17%" };
		[6] = { itemID = 13530, "=q2=Fangdrip Runners", "=ds=#s12#, #a1#", "8.49%" };
		[7] = { itemID = 13531, "=q2=Crypt Stalker Leggings", "=ds=#s11#, #a2#", "10.17%" };
		[8] = { itemID = 13532, "=q2=Darkspinner Claws", "=ds=#s9#, #a3#", "9.69%" };
		[9] = { itemID = 13533, "=q2=Acid-etched Pauldrons", "=ds=#s3#, #a4#", "8.11%" };
		[10] = { itemID = 13508, "=q2=Eye of Arachnida", "=ds=#m8#", "7.39%" };
		[16] = { itemID = 16675, "=q3=Beaststalker's Boots", "=ds=#s12#, #a3# (D1, #c2#)", "13.62%" };
	};
	{
		Name = BabbleBoss["Maleki the Pallid"];
		[1] = { itemID = 18734, "=q3=Pale Moon Cloak", "13.42%" };
		[2] = { itemID = 18735, "=q3=Maleki's Footwraps", "=ds=#s12#, #a1#", "15.03%" };
		[3] = { itemID = 13524, "=q3=Skull of Burning Shadows", "13.42%" };
		[4] = { itemID = 18737, "=q3=Bone Slicing Hatchet", "14.23%" };
		[6] = { itemID = 13525, "=q2=Darkbind Fingers", "=ds=#s9#, #a1#", "9.15%" };
		[7] = { itemID = 13526, "=q2=Flamescarred Girdle", "=ds=#s10#, #a2#", "9.57%" };
		[8] = { itemID = 13528, "=q2=Twilight Void Bracers", "=ds=#s8#, #a3#", "9.49%" };
		[9] = { itemID = 13527, "=q2=Lavawalker Greaves", "=ds=#s12#, #a4#", "9.39%" };
		[10] = { itemID = 13509, "=q2=Clutch of Foresight", "=ds=#m8#", "6.95%" };
		[16] = { itemID = 16691, "=q3=Devout Sandals", "=ds=#s12#, #a1# (D1, #c5#)", "13.64%" };
		[18] = { itemID = 12833, "=q3=Plans: Hammer of the Titans", "=ds=#p2# (300)", "5.86%" };
		[19] = { itemID = 12796, "=q3=Hammer of the Titans", "=ds=#h2#, #w6#" };
	};
	{
		Name = BabbleBoss["Magistrate Barthilas"];
		[1] = { itemID = 13376, "=q3=Royal Tribunal Cloak", "12.44%" };
		[2] = { itemID = 18727, "=q3=Crimson Felt Hat", "=ds=#s1#, #a1#", "13.82%" };
		[3] = { itemID = 18726, "=q3=Magistrate's Cuffs", "=ds=#s8#, #a2#", "12.87%" };
		[4] = { itemID = 18722, "=q3=Death Grips", "=ds=#s9#, #a4#", "15.34%" };
		[5] = { itemID = 23198, "=q3=Idol of Brutality", "=ds=#s16#, #w14#", "2.37%" };
		[6] = { itemID = 18725, "=q3=Peacemaker", "=ds=#w7#", "14.22%" };
		[8] = { itemID = 12382, "=q2=Key to the City", "=ds=#e9#", "100%" };
	};
	{
		Name = BabbleBoss["Ramstein the Gorger"];
		[1] = { itemID = 13374, "=q3=Soulstealer Mantle", "=ds=#s3#, #a1#", "9.87%" };
		[2] = { itemID = 18723, "=q3=Animated Chain Necklace", "" };
		[3] = { itemID = 13373, "=q3=Band of Flesh", "8.15%" };
		[4] = { itemID = 13515, "=q3=Ramstein's Lightning Bolts", "8.09%" };
		[5] = { itemID = 13372, "=q3=Slavedriver's Cane", "=ds=#w9#", "8.63%" };
		[6] = { itemID = 13375, "=q3=Crest of Retribution", "=ds=#w8#", "9.17%" };
		[16] = { itemID = 16737, "=q3=Gauntlets of Valor", "=ds=#s9#, #a4# (D1, #c9#)", "9.58%" };
	};
	{
		Name = BabbleBoss["Baron Rivendare"];
		[1] = { itemID = 13505, "=q4=Runeblade of Baron Rivendare", "=ds=#h2#, #w10#", "1%" }; ---drop rate according to blue
		[2] = { itemID = 13335, "=q4=Deathcharger's Reins", "0.10%" };
		[4] = { itemID = 13340, "=q3=Cape of the Black Baron", "8.75%" };
		[5] = { itemID = 22412, "=q3=Thuzadin Mantle", "=ds=#s3#, #a1#", "4.16%" };
		[6] = { itemID = 13346, "=q3=Robes of the Exalted", "=ds=#s5#, #a1#", "11.51%" };
		[7] = { itemID = 22409, "=q3=Tunic of the Crescent Moon", "=ds=#s5#, #a2#", "4.59%" };
		[8] = { itemID = 13344, "=q3=Dracorian Gauntlets", "=ds=#s9#, #a3#", "10.85%" };
		[9] = { itemID = 22410, "=q3=Gauntlets of Deftness", "=ds=#s9#, #a3#", "4.98%" };
		[10] = { itemID = 22411, "=q3=Helm of the Executioner", "=ds=#s1#, #a4#", "3.80%" };
		[11] = { itemID = 13345, "=q3=Seal of Rivendare", "9.50%" };
		[12] = { itemID = 13368, "=q3=Bonescraper", "=ds=#h1#, #w4#", "4.32%" };
		[13] = { itemID = 13361, "=q3=Skullforge Reaver", "4.25%" };
		[14] = { itemID = 13349, "=q3=Scepter of the Unholy", "=ds=#h1#, #w6#", "9.30%" };
		[15] = { itemID = 22408, "=q3=Ritssyn's Wand of Bad Mojo", "3.39%" };
		[16] = { itemID = 16687, "=q3=Magister's Leggings", "=ds=#s11#, #a1# (D1, #c3#)", "6.79%" };
		[17] = { itemID = 16699, "=q3=Dreadmist Leggings", "=ds=#s11#, #a1# (D1, #c8#)", "7.31%" };
		[18] = { itemID = 16694, "=q3=Devout Skirt", "=ds=#s11#, #a1# (D1, #c5#)", "7.42%" };
		[19] = { itemID = 16709, "=q3=Shadowcraft Pants", "=ds=#s11#, #a2# (D1, #c6#)", "7.76%" };
		[20] = { itemID = 16719, "=q3=Wildheart Kilt", "=ds=#s11#, #a2# (D1, #c1#)", "6.58%" };
		[21] = { itemID = 16668, "=q3=Kilt of Elements", "=ds=#s11#, #a3# (D1, #c7#)", "3.02%" };
		[22] = { itemID = 16678, "=q3=Beaststalker's Pants", "=ds=#s11#, #a3# (D1, #c2#)", "6.16%" };
		[23] = { itemID = 16732, "=q3=Legplates of Valor", "=ds=#s11#, #a4# (D1, #c9#)", "5.74%" };
		[24] = { itemID = 16728, "=q3=Lightforge Legplates", "=ds=#s11#, #a4# (D1, #c4#)", "4.20%" };
		[26] = { itemID = 13251, "=q1=Head of Baron Rivendare", "=ds=#m3#", "100%" };
		[27] = { itemID = 13246, "=q3=Argent Avenger", "=q1=#m4#: =ds=#h1#, #w10#" };
		[28] = { itemID = 13249, "=q3=Argent Crusader", "=q1=#m4#: =ds=#w9#" };
		[29] = { itemID = 13243, "=q3=Argent Defender", "=q1=#m4#: =ds=#w8#" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18743, "=q3=Gracious Cape", "0.01%" };
		[2] = { itemID = 17061, "=q3=Juno's Shadow", "0.01%" };
		[3] = { itemID = 18745, "=q3=Sacred Cloth Leggings", "=ds=#s11#, #a1#", "0.01%" };
		[4] = { itemID = 18744, "=q3=Plaguebat Fur Gloves", "=ds=#s9#, #a2#", "0.00%" };
		[5] = { itemID = 18736, "=q3=Plaguehound Leggings", "=ds=#s11#, #a2#", "0.00%" };
		[6] = { itemID = 18742, "=q3=Stratholme Militia Shoulderguard", "=ds=#s3#, #a3#", "0.00%" };
		[7] = { itemID = 18741, "=q3=Morlune's Bracer", "=ds=#s8#, #a4#", "0.01%" };
		[9] = { itemID = 16249, "=q2=Formula: Enchant 2H Weapon - Major Intellect", "=ds=#p4# (300) =q1=#n60#", "1.19%" };
		[10] = { itemID = 16248, "=q2=Formula: Enchant Weapon - Unholy", "=ds=#p4# (295) =q1=#n61#", "0.36%" };
		[11] = { itemID = 18658, "=q2=Schematic: Ultra-Flash Shadow Reflector", "=ds=#p5# (300) =q1=#n62#", "1.82%" };
		[12] = { itemID = 16052, "=q2=Schematic: Voice Amplification Modulator", "=ds=#p5# (290) =q1=#n62#", "1.99%" };
		[13] = { itemID = 15777, "=q2=Pattern: Runic Leather Shoulders", "=ds=#p7# (300) =q1=#n63#", "1.00%" };
		[14] = { itemID = 15768, "=q2=Pattern: Wicked Leather Belt", "=ds=#p7# (300) =q1=#n64#", "0.85%" };
		[15] = { itemID = 14495, "=q2=Pattern: Ghostweave Pants", "=ds=#p8# (290) =q1=#n65#", "" };
		[16] = { itemID = 16697, "=q3=Devout Bracers", "=ds=#s8#, #a1# (D1)", "1.15%" };
		[17] = { itemID = 16702, "=q3=Dreadmist Belt", "=ds=#s10#, #a1# (D1)", "0.90%" };
		[18] = { itemID = 16685, "=q3=Magister's Belt", "=ds=#s10#, #a1# (D1)", "0.80%" };
		[19] = { itemID = 16714, "=q3=Wildheart Bracers", "=ds=#s8#, #a2# (D1)", "1.49%" };
		[20] = { itemID = 16681, "=q3=Beaststalker's Bindings", "=ds=#s8#, #a3# (D1)", "1.64%" };
		[21] = { itemID = 16671, "=q3=Bindings of Elements", "=ds=#s8#, #a3# (D1)", "1.90%" };
		[22] = { itemID = 16736, "=q3=Belt of Valor", "=ds=#s10#, #a4# (D1)", "2.02%" };
		[23] = { itemID = 16723, "=q3=Lightforge Belt", "=ds=#s10#, #a4# (D1)", "1.83%" };
		[25] = { itemID = 12811, "=q2=Righteous Orb", "5.09%" };
		[26] = { itemID = 12735, "=q2=Frayed Abomination Stitching", "=ds=#m3#", "17.5%" };
	};
};
---------------------
--- The Deadmines ---
---------------------

AtlasLoot_Data["TheDeadmines"] = {
	Name = BabbleZone["The Deadmines"];
	Map = "TheDeadmines";
	{
		Name = BabbleBoss["Marisa du'Paige"];
		[1] = { itemID = 3019, "=q2=Noble's Robe", "=ds=#s5#, #a1#", "22.4%" };
		[2] = { itemID = 4660, "=q2=Walking Boots", "=ds=#s12#, #a1#", "71.4%" };
	};
	{
		Name = BabbleBoss["Brainwashed Noble"];
		[1] = { itemID = 5967, "=q2=Girdle of Nobility", "=ds=#s10#, #a1#", "70.4%" };
		[2] = { itemID = 3902, "=q2=Staff of Nobles", "=ds=#w9#", "23.0%" };
	};
	{
		Name = BabbleBoss["Foreman Thistlenettle"];
		[1] = { itemID = 1875, "=q1=Thistlenettle's Badge", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Rhahk'Zor"];
		[1] = { itemID = 872, "=q3=Rockslicer", "=ds=#h2#, #w1#", "3.13%" };
		[2] = { itemID = 5187, "=q3=Rhahk'Zor's Hammer", "77.98%" };
	};
	{
		Name = BabbleBoss["Miner Johnson"];
		[1] = { itemID = 5444, "=q3=Miner's Cape", "54.88%" };
		[2] = { itemID = 5443, "=q3=Gold-plated Buckler", "=ds=#w8#", "37.21%" };
	};
	{
		Name = BabbleBoss["Sneed's Shredder"];
		[1] = { itemID = 2169, "=q3=Buzzer Blade", "=ds=#h1#, #w4#", "70.78%" };
		[2] = { itemID = 1937, "=q3=Buzz Saw", "8.75%" };
		[3] = { itemID = 7365, "=q1=Gnoam Sprecklesprocket", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Sneed"];
		[1] = { itemID = 5195, "=q3=Gold-flecked Gloves", "=ds=#s9#, #a1#", "62.38%" };
		[2] = { itemID = 5194, "=q3=Taskmaster Axe", "=ds=#h2#, #w1#", "26.23%" };
		[3] = { itemID = 5397, "=q1=Defias Gunpowder", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Gilnid"];
		[1] = { itemID = 5199, "=q3=Smelting Pants", "=ds=#s11#, #a2#", "51.37%" };
		[2] = { itemID = 1156, "=q3=Lavishly Jeweled Ring", "35.02%" };
		[3] = { icon = "INV_Box_01", "=q6=#n7#" };
		[4] = { itemID = 10403, "=q3=Blackened Defias Belt", "=ds=#s10#, #a2#", "23.26%" };
		[5] = { itemID = 5200, "=q3=Impaling Harpoon", "=ds=#w7#", "25.39%" };
		[6] = { itemID = 5201, "=q3=Emberstone Staff", "=ds=#w9#", "34.10%" };
	};
	{
		Name = BabbleBoss["Mr. Smite"];
		[1] = { itemID = 5192, "=q3=Thief's Blade", "34.96%" };
		[2] = { itemID = 5196, "=q3=Smite's Reaver", "33.95%" };
		[3] = { itemID = 7230, "=q3=Smite's Mighty Hammer", "17.27%" };
	};
	{
		Name = BabbleBoss["Cookie"];
		[1] = { itemID = 5197, "=q3=Cookie's Tenderizer", "=ds=#h1#, #w6#", "49.62%" };
		[2] = { itemID = 5198, "=q3=Cookie's Stirring Rod", "30.90%" };
		[3] = { itemID = 8490, "=q1=Cat Carrier (Siamese)", "=ds=#e13#", "12.38%" };
	};
	{
		Name = BabbleBoss["Edwin VanCleef"];
		[1] = { itemID = 5193, "=q3=Cape of the Brotherhood", "21.25%" };
		[2] = { itemID = 5202, "=q3=Corsair's Overshirt", "=ds=#s5#, #a1#", "22.86%" };
		[3] = { itemID = 10399, "=q3=Blackened Defias Armor", "=ds=#s5#, #a2#", "14.77%" };
		[4] = { itemID = 5191, "=q3=Cruel Barb", "14.17%" };
		[5] = { itemID = 2874, "=q1=An Unsent Letter", "=ds=#m2#" };
		[6] = { itemID = 3637, "=q1=Head of VanCleef", "=ds=#m3#" };
	};
};

--------------------
--- The Stockade ---
--------------------

AtlasLoot_Data["TheStockade"] = {
	Name = BabbleZone["The Stockade"];
	Map = "TheStockade";
	{
		Name = BabbleBoss["Targorr the Dread"];
		[1] = { itemID = 3630, "=q1=Head of Targorr", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Kam Deepfury"];
		[1] = { itemID = 2280, "=q3=Kam's Walking Stick", "=ds=#w9#", "0.62%" };
		[2] = { itemID = 3640, "=q1=Head of Deepfury", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Bazil Thredd"];
		[1] = { itemID = 2926, "=q1=Head of Bazil Thredd", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Dextren Ward"];
		[1] = { itemID = 3628, "=q1=Hand of Dextren Ward", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Bruegal Ironknuckle"];
		[1] = { itemID = 3228, "=q3=Jimmied Handcuffs", "=ds=#s8#, #a3#", "54.73%" };
		[2] = { itemID = 2942, "=q3=Iron Knuckles", "=ds=#h1#, #w13#", "18.18%" };
		[3] = { itemID = 2941, "=q3=Prison Shank", "=ds=#h1#, #w4#", "16.05%" };
	};
	{
		Name = "Quest Item's";
		[1] = { itemID = 2909, "=q1=Red Wool Bandana", "=ds=#m3#" };
	};
};

-------------------------
--- The Sunken Temple ---
-------------------------

AtlasLoot_Data["SunkenTemple"] = {
	Name = "Sunken Temple";
	Map = "TheSunkenTemple";
	{
		Name = "Spawn of Hakkar";
		[1] = { itemID = 10802, "=q3=Wingveil Cloak", "25.6%" };
		[2] = { itemID = 10801, "=q3=Slitherscale Boots", "=ds=#s12#, #a2#", "42.33%" };
	};
	{
		Name = "Troll Minibosses";
		[1] = { itemID = 10787, "=q3=Atal'ai Gloves", "=ds=#s9#, #a1# =q2=#m16#", "5.25%" };
		[2] = { itemID = 10783, "=q3=Atal'ai Spaulders", "=ds=#s3#, #a2# =q2=#m16#", "3.12%" };
		[3] = { itemID = 10785, "=q3=Atal'ai Leggings", "=ds=#s11#, #a2# =q2=#m16#", "4.42%" };
		[4] = { itemID = 10784, "=q3=Atal'ai Breastplate", "=ds=#s5#, #a3# =q2=#m16#", "2.12%" };
		[5] = { itemID = 10786, "=q3=Atal'ai Boots", "=ds=#s12#, #a3# =q2=#m16#", "6.15%" };
		[6] = { itemID = 10788, "=q3=Atal'ai Girdle", "=ds=#s10#, #a4# =q2=#m16#", "7.17%" };
		[8] = { itemID = 20606, "=q1=Amber Voodoo Feather", "=ds=#m3# =q2=#st1#, #st6#" };
		[9] = { itemID = 20607, "=q1=Blue Voodoo Feather", "=ds=#m3# =q2=#st2#, #st4#" };
		[10] = { itemID = 20608, "=q1=Green Voodoo Feather", "=ds=#m3# =q2=#st3#, #st5#" };
	};
	{
		Name = BabbleBoss["Atal'alarion"];
		[1] = { itemID = 10800, "=q3=Darkwater Bracers", "=ds=#s8#, #a2# =q2=#m16#", "31.73%" };
		[2] = { itemID = 10798, "=q3=Atal'alarion's Tusk Ring", "=ds=#s10#, #a4#", "30.53%" };
		[3] = { itemID = 10799, "=q3=Headspike", "=ds=#w7#", "17.98%" };
	};
	{
		Name = BabbleBoss["Dreamscythe"];
		[1] = { itemID = 12465, "=q3=Nightfall Drape", "4.42%" };
		[2] = { itemID = 12466, "=q3=Dawnspire Cord", "=ds=#s10#, #a1#", "4.16%" };
		[3] = { itemID = 12464, "=q3=Bloodfire Talons", "=ds=#s9#, #a2#", "4.99%" };
		[4] = { itemID = 10795, "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "3.68%" };
		[5] = { itemID = 10796, "=q3=Drakestone", "4.26%" };
		[6] = { itemID = 10797, "=q3=Firebreather", "4.57%" };
		[7] = { itemID = 12463, "=q3=Drakefang Butcher", "=ds=#h2#, #w10#", "4.40%" };
		[8] = { itemID = 12243, "=q3=Smoldering Claw", "=ds=#w7#", "4.50%" };
	};
	{
		Name = BabbleBoss["Weaver"];
		[1] = { itemID = 12465, "=q3=Nightfall Drape", "4.20%" };
		[2] = { itemID = 12466, "=q3=Dawnspire Cord", "=ds=#s10#, #a1#", "3.89%" };
		[3] = { itemID = 12464, "=q3=Bloodfire Talons", "=ds=#s9#, #a2#", "4.10%" };
		[4] = { itemID = 10795, "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "4.46%" };
		[5] = { itemID = 10796, "=q3=Drakestone", "4.47%" };
		[6] = { itemID = 10797, "=q3=Firebreather", "4.08%" };
		[7] = { itemID = 12463, "=q3=Drakefang Butcher", "=ds=#h2#, #w10#", "5.00%" };
		[8] = { itemID = 12243, "=q3=Smoldering Claw", "=ds=#w7#", "4.42%" };
	};
	{
		Name = BabbleBoss["Avatar of Hakkar"];
		[1] = { itemID = 12462, "=q4=Embrace of the Wind Serpent", "=ds=#s5#, #a1#", "0.15%" };
		[3] = { itemID = 10843, "=q3=Featherskin Cape", "31.12%" };
		[4] = { itemID = 10842, "=q3=Windscale Sarong", "=ds=#s11#, #a2#", "33.22%" };
		[5] = { itemID = 10846, "=q3=Bloodshot Greaves", "=ds=#s12#, #a3#", "32.44%" };
		[6] = { itemID = 10845, "=q3=Warrior's Embrace", "=ds=#s5#, #a4#", "30.44%" };
		[7] = { itemID = 10838, "=q3=Might of Hakkar", "=ds=#h1#, #w6#", "16.37%" };
		[8] = { itemID = 10844, "=q3=Spire of Hakkar", "=ds=#w9#", "16.02%" };
		[10] = { itemID = 10663, "=q1=Essence of Hakkar", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Jammal'an the Prophet"];
		[1] = { itemID = 10806, "=q3=Vestments of the Atal'ai Prophet", "=ds=#s5#, #a1#", "24.13%" };
		[2] = { itemID = 10808, "=q3=Gloves of the Atal'ai Prophet", "=ds=#s9#, #a1#", "26.74%" };
		[3] = { itemID = 10807, "=q3=Kilt of the Atal'ai Prophet", "=ds=#s11#, #a1#", "23.00%" };
		[5] = { itemID = 6212, "=q1=Head of Jammal'an", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Ogom the Wretched"];
		[1] = { itemID = 10805, "=q3=Eater of the Dead", "28.27%" };
		[2] = { itemID = 10804, "=q3=Fist of the Damned", "=ds=#h1#, #w6#", "30.03%" };
		[3] = { itemID = 10803, "=q3=Blade of the Wretched", "28.21%" };
	};
	{
		Name = BabbleBoss["Morphaz"];
		[1] = { itemID = 12465, "=q3=Nightfall Drape", "4.29%" };
		[2] = { itemID = 12466, "=q3=Dawnspire Cord", "=ds=#s10#, #a1#", "4.12%" };
		[3] = { itemID = 12464, "=q3=Bloodfire Talons", "=ds=#s9#, #a2#", "4.21%" };
		[4] = { itemID = 10795, "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "4.07%" };
		[5] = { itemID = 10796, "=q3=Drakestone", "4.18%" };
		[6] = { itemID = 10797, "=q3=Firebreather", "4.24%" };
		[7] = { itemID = 12463, "=q3=Drakefang Butcher", "=ds=#h2#, #w10#", "4.35%" };
		[8] = { itemID = 12243, "=q3=Smoldering Claw", "=ds=#w7#", "4.09%" };
		[10] = { itemID = 20022, "=q1=Azure Key", "=ds=#m3#", "100%" };
		[11] = { itemID = 20085, "=q1=Arcane Shard", "=ds=#m3#", "100%" };
		[12] = { itemID = 20025, "=q1=Blood of Morphaz", "=ds=#m3#", "100%" };
		[13] = { itemID = 20019, "=q1=Tooth of Morphaz", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Hazzas"];
		[1] = { itemID = 12465, "=q3=Nightfall Drape", "4.48%" };
		[2] = { itemID = 12466, "=q3=Dawnspire Cord", "=ds=#s10#, #a1#", "4.46%" };
		[3] = { itemID = 12464, "=q3=Bloodfire Talons", "=ds=#s9#, #a2#", "5.00%" };
		[4] = { itemID = 10795, "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "4.18%" };
		[5] = { itemID = 10796, "=q3=Drakestone", "4.92%" };
		[6] = { itemID = 10797, "=q3=Firebreather", "4.50%" };
		[7] = { itemID = 12463, "=q3=Drakefang Butcher", "=ds=#h2#, #w10#", "4.58%" };
		[8] = { itemID = 12243, "=q3=Smoldering Claw", "=ds=#w7#", "4.56%" };
	};
	{
		Name = BabbleBoss["Shade of Eranikus"];
		[1] = { itemID = 10847, "=q4=Dragon's Call", "0.18%" };
		[3] = { itemID = 10833, "=q3=Horns of Eranikus", "=ds=#s1#, #a3#", "25.66%" };
		[4] = { itemID = 10829, "=q3=Dragon's Eye", "27.02%" };
		[5] = { itemID = 10828, "=q3=Dire Nail", "=ds=#h1#, #w4#", "10.91%" };
		[6] = { itemID = 10837, "=q3=Tooth of Eranikus", "10.05%" };
		[7] = { itemID = 10835, "=q3=Crest of Supremacy", "=ds=#w8#", "19.17%" };
		[8] = { itemID = 10836, "=q3=Rod of Corrosion", "21.54%" };
		[10] = { itemID = 10454, "=q2=Essence of Eranikus", "=ds=#m2#" };
		[11] = { itemID = 10455, "=q2=Chained Essence of Eranikus" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10630, "=q3=Soulcatcher Halo", "=ds=#s1#, #a1#", "0.01%" };
		[2] = { itemID = 10629, "=q3=Mistwalker Boots", "=ds=#s12#, #a1#", "0.01%" };
		[3] = { itemID = 10632, "=q3=Slimescale Bracers", "=ds=#s8#, #a3#", "0.01%" };
		[4] = { itemID = 10631, "=q3=Murkwater Gauntlets", "=ds=#s9#, #a3#", "0.01%" };
		[5] = { itemID = 10633, "=q3=Silvershell Leggings", "=ds=#s11#, #a3#", "0.01%" };
		[6] = { itemID = 10634, "=q3=Mindseye Circle", "0.02%" };
		[8] = { itemID = 15733, "=q3=Pattern: Green Dragonscale Leggings", "=ds=#p7# (270) =q1=#n80#", "1.80%" };
		[9] = { itemID = 16216, "=q2=Formula: Enchant Cloak - Greater Resistance", "=ds=#p4# (265) =q1=#n81#", "0.75%" };
		[11] = { itemID = 11318, "=q1=Atal'ai Haze", "=ds=#m3#" };
		[12] = { itemID = 6181, "=q1=Fetish of Hakkar", "=ds=#m3#" };
		[16] = { itemID = 10623, "=q3=Winter's Bite", "0.01%" };
		[17] = { itemID = 10625, "=q3=Stealthblade", "=ds=#h1#, #w4#", "0.01%" };
		[18] = { itemID = 10628, "=q3=Deathblow", "=ds=#h2#, #w10#", "0.01%" };
		[19] = { itemID = 10626, "=q3=Ragehammer", "0.01%" };
		[20] = { itemID = 10627, "=q3=Bludgeon of the Grinning Dog", "=ds=#w9#", "0.02%" };
		[21] = { itemID = 10624, "=q3=Stinging Bow", "=ds=#w2#", "0.02%" };
	};
};

---------------
--- Uldaman ---
---------------

AtlasLoot_Data["Uldaman"] = {
	Name = BabbleZone["Uldaman"];
	Map = "Uldaman";
	{
		Name = AL["Magregan Deepshadow"];
		[1] = { itemID = 4635, "=q1=Hammertoe's Amulet", "=ds=#m3#", "100%" };
	};
	{
		Name = "Tablet of Ryun'eh";
		[1] = { itemID = 4631, "=q1=Tablet of Ryun'eh", "=ds=#m3#" };
	};
	{
		Name = AL["Krom Stoutarm's Chest"];
		[1] = { itemID = 8027, "=q1=Krom Stoutarm's Treasure", "=ds=#m3#" };
	};
	{
		Name = AL["Garrett Family Chest"];
		[1] = { itemID = 8026, "=q1=Garrett Family Treasure", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Digmaster Shovelphlange"];
		[1] = { itemID = 9375, "=q3=Expert Goldminer's Helmet", "=ds=#s1#, #a2#", "9.30%" };
		[2] = { itemID = 9378, "=q3=Shovelphlange's Mining Axe", "13.50%" };
		[3] = { itemID = 9382, "=q2=Tromping Miner's Boots", "=ds=#s12#, #a2#", "70.70%" };
	};
	{
		Name = BabbleBoss["Baelog"];
		[1] = { icon = "INV_Box_01", "=q6=#n45#" };
		[2] = { itemID = 9401, "=q3=Nordic Longshank", "8.89%" };
		[3] = { itemID = 9400, "=q3=Baelog's Shortbow", "=ds=#w2#", "46.52%" };
		[4] = { itemID = 9399, "=q2=Precision Arrow", "=ds=#w17#", "78.62%" };
		[6] = { icon = "INV_Box_01", "=q6=#n46#" };
		[7] = { itemID = 9394, "=q3=Horned Viking Helmet", "=ds=#s1#, #a4#", "4.05%" };
		[8] = { itemID = 9398, "=q3=Worn Running Boots", "=ds=#s12#, #a2#", "45.09%" };
		[9] = { itemID = 2459, "=q1=Swiftness Potion", "=ds=#e2#" };
		[11] = { icon = "INV_Box_01", "=q6=#n47#" };
		[12] = { itemID = 9404, "=q3=Olaf's All Purpose Shield", "=ds=#w8#", "11.33%" };
		[13] = { itemID = 9403, "=q3=Battered Viking Shield", "=ds=#w8#", "69.85%" };
		[14] = { itemID = 1177, "=q1=Oil of Olaf", "=ds=#e2#", "76.54%" };
		[16] = { icon = "INV_Box_01", "=q6=#x14#" };
		[17] = { itemID = 7740, "=q1=Gni'kiv Medallion", "=ds=#m3#" };
		[19] = { icon = "INV_Box_01", "=q6=#x15#" };
		[20] = { itemID = 7671, "=q1=Shattered Necklace Topaz", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Revelosh"];
		[1] = { itemID = 9390, "=q3=Revelosh's Gloves", "=ds=#s9#, #a1# =q2=#m16#", "20.08%" };
		[2] = { itemID = 9389, "=q3=Revelosh's Spaulders", "=ds=#s3#, #a2# =q2=#m16#", "18.77%" };
		[3] = { itemID = 9388, "=q3=Revelosh's Armguards", "=ds=#s8#, #a3# =q2=#m16#", "19.84%" };
		[4] = { itemID = 9387, "=q3=Revelosh's Boots", "=ds=#s12#, #a4# =q2=#m16#", "20.53%" };
		[6] = { itemID = 7741, "=q1=The Shaft of Tsol", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Ironaya"];
		[1] = { itemID = 9407, "=q3=Stoneweaver Leggings", "=ds=#s11#, #a1#", "31.02%" };
		[2] = { itemID = 9409, "=q3=Ironaya's Bracers", "=ds=#s8#, #a3# =q2=#m16#", "32.71%" };
		[3] = { itemID = 9408, "=q3=Ironshod Bludgeon", "=ds=#w9#", "1" };
	};
	{
		Name = BabbleBoss["Obsidian Sentinel"];
		[1] = { itemID = 8053, "=q1=Obsidian Power Source", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Ancient Stone Keeper"];
		[1] = { itemID = 9411, "=q3=Rockshard Pauldrons", "=ds=#s3#, #a3#", "43.41%" };
		[2] = { itemID = 9410, "=q3=Cragfists", "=ds=#s9#, #a4# =q2=#m16#", "41.61%" };
	};
	{
		Name = BabbleBoss["Galgann Firehammer"];
		[1] = { itemID = 11311, "=q3=Emberscale Cape", "36.52%" };
		[2] = { itemID = 11310, "=q3=Flameseer Mantle", "=ds=#s3#, #a1#", "17.35%" };
		[3] = { itemID = 9419, "=q3=Galgann's Firehammer", "=ds=#h1#, #w6#", "18.10%" };
		[4] = { itemID = 9412, "=q3=Galgann's Fireblaster", "=ds=#w5#", "17.10%" };
	};
	{
		Name = "Tablet of Will";
		[1] = { itemID = 5824, "=q1=Tablet of Will", "=ds=#m3#" };
	};
	{
		Name = "Shadowforge Cache";
		[1] = { itemID = 7669, "=q1=Shattered Necklace Ruby", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Grimlok"];
		[1] = { itemID = 9415, "=q3=Grimlok's Tribal Vestments", "=ds=#s5#, #a1#", "36.51%" };
		[2] = { itemID = 9414, "=q3=Oilskin Leggings", "=ds=#s11#, #a2#", "29.78%" };
		[3] = { itemID = 9416, "=q3=Grimlok's Charge", "=ds=#w7#", "15.05%" };
		[5] = { itemID = 7670, "=q1=Shattered Necklace Sapphire", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Archaedas"];
		[1] = { itemID = 11118, "=q3=Archaedic Stone", "=ds=#s13# =q2=#m16#", "51.99%" };
		[2] = { itemID = 9418, "=q3=Stoneslayer", "=ds=#h2#, #w10#", "10.48%" };
		[3] = { itemID = 9413, "=q3=The Rockpounder", "10.94%" };
		[5] = { itemID = 7672, "=q1=Shattered Necklace Power Source", "=ds=#m3#", "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9397, "=q3=Energy Cloak", "0.01%" };
		[2] = { itemID = 9431, "=q3=Papal Fez", "=ds=#s1#, #a1#", "0.01%" };
		[3] = { itemID = 9429, "=q3=Miner's Hat of the Deep", "=ds=#s1#, #a1#", "0.01%" };
		[4] = { itemID = 9420, "=q3=Adventurer's Pith Helmet", "=ds=#s1#, #a2#", "0.01%" };
		[5] = { itemID = 9406, "=q3=Spirewind Fetter", "=ds=#s5#, #a2#", "0.01%" };
		[6] = { itemID = 9428, "=q3=Unearthed Bands", "=ds=#s8#, #a2# =q2=#m16#", "0.01%" };
		[7] = { itemID = 9430, "=q3=Spaulders of a Lost Age", "=ds=#s3#, #a3#", "0.00%" };
		[8] = { itemID = 9396, "=q3=Legguards of the Vault", "=ds=#s11#, #a3#" };
		[9] = { itemID = 9432, "=q3=Skullplate Bracers", "=ds=#s8#, #a4#", "0.01%" };
		[10] = { itemID = 9393, "=q3=Beacon of Hope", "0.01%" };
		[12] = { itemID = 7666, "=q2=Shattered Necklace", "=q1=#m2#" };
		[13] = { itemID = 7673, "=q3=Talvash's Enhancing Necklace" };
		[16] = { itemID = 9384, "=q3=Stonevault Shiv", "=ds=#h1#, #w4#", "0.01%" };
		[17] = { itemID = 9392, "=q3=Annealed Blade", "0.01%" };
		[18] = { itemID = 9424, "=q3=Ginn-su Sword", "0.01%" };
		[19] = { itemID = 9465, "=q3=Digmaster 5000", "0.01%" };
		[20] = { itemID = 9383, "=q3=Obsidian Cleaver", "=ds=#h2#, #w1#", "0.01%" };
		[21] = { itemID = 9425, "=q3=Pendulum of Doom", "=ds=#h2#, #w1#", "0.01%" };
		[22] = { itemID = 9386, "=q3=Excavator's Brand", "=ds=#h1#, #w6#", "0.01%" };
		[23] = { itemID = 9427, "=q3=Stonevault Bonebreaker", "=ds=#h1#, #w6#", "0.01%" };
		[24] = { itemID = 9423, "=q3=The Jackhammer", "0.01%" };
		[25] = { itemID = 9391, "=q3=The Shoveler", "=ds=#h2#, #w6#, =q2=#c9#", "0.01%" };
		[26] = { itemID = 9381, "=q3=Earthen Rod", "0.01%" };
		[27] = { itemID = 9426, "=q3=Monolithic Bow", "=ds=#w2#", "0.01%" };
		[28] = { itemID = 9422, "=q3=Shadowforge Bushmaster", "=ds=#w5#", "0.01%" };
	};
};

-----------------------
--- Wailing Caverns ---
-----------------------

AtlasLoot_Data["WailingCaverns"] = {
	Name = BabbleZone["Wailing Caverns"];
	Map = "WailingCaverns";
	{
		Name = AL["Kalldan Felmoon"];
		[1] = { itemID = 6475, "=q1=Pattern: Deviate Scale Gloves", "=ds=#p7# (105)" };
		[2] = { itemID = 6474, "=q1=Pattern: Deviate Scale Cloak", "=ds=#p7# (90)" };
	};
	{
		Name = BabbleBoss["Mad Magglish"];
		[1] = { itemID = 5334, "=q1=99-Year-Old Port", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Trigore the Lasher"];
		[1] = { itemID = 5425, "=q3=Runescale Girdle", "=ds=#s8#, #a3#", "50%" };
		[2] = { itemID = 5426, "=q3=Serpent's Kiss", "35%" };
	};
	{
		Name = BabbleBoss["Boahn"];
		[1] = { itemID = 5423, "=q3=Boahn's Fang", "=ds=#h2#, #w1#", "28%" };
		[2] = { itemID = 5422, "=q2=Brambleweed Leggings", "=ds=#s11#, #a2#", "64%" };
	};
	{
		Name = BabbleBoss["Lord Cobrahn"];
		[1] = { itemID = 6465, "=q3=Robe of the Moccasin", "=ds=#s5#, #a1#", "51.73%" };
		[2] = { itemID = 10410, "=q3=Leggings of the Fang", "=ds=#s11#, #a2#", "16.03%" };
		[3] = { itemID = 6460, "=q3=Cobrahn's Grasp", "=ds=#s10#, #a3#", "16.20%" };
	};
	{
		Name = BabbleBoss["Lady Anacondra"];
		[1] = { itemID = 5404, "=q3=Serpent's Shoulders", "=ds=#s3#, #a2#", "58.61%" };
		[2] = { itemID = 10412, "=q3=Belt of the Fang", "=ds=#s10#, #a2#", "8.63%" };
		[3] = { itemID = 6446, "=q3=Snakeskin Bag", "=ds=#m12# #e1#", "6.61%" };
	};
	{
		Name = BabbleBoss["Kresh"];
		[1] = { itemID = 13245, "=q3=Kresh's Back", "=ds=#w8#", "9.17%" };
		[2] = { itemID = 6447, "=q3=Worn Turtle Shell Shield", "=ds=#w8#", "63.66%" };
	};
	{
		Name = BabbleBoss["Lord Pythas"];
		[1] = { itemID = 6473, "=q3=Armor of the Fang", "=ds=#s5#, #a2#", "52.06%" };
		[2] = { itemID = 6472, "=q3=Stinging Viper", "=ds=#h1#, #w6#", "28.24%" };
	};
	{
		Name = BabbleBoss["Skum"];
		[1] = { itemID = 6449, "=q3=Glowing Lizardscale Cloak", "38.24%" };
		[2] = { itemID = 6448, "=q3=Tail Spike", "=ds=#h1#, #w4#", "39.24%" };
	};
	{
		Name = BabbleBoss["Lord Serpentis"];
		[1] = { itemID = 5970, "=q3=Serpent Gloves", "=ds=#s9#, #a1#", "20.96%" };
		[2] = { itemID = 10411, "=q3=Footpads of the Fang", "=ds=#s12#, #a2#", "19.07%" };
		[3] = { itemID = 6459, "=q3=Savage Trodders", "=ds=#s12#, #a3#", "24.39%" };
		[4] = { itemID = 6469, "=q3=Venomstrike", "=ds=#w2#", "16.63%" };
	};
	{
		Name = BabbleBoss["Verdan the Everliving"];
		[1] = { itemID = 6629, "=q3=Sporid Cape", "16.65%" };
		[2] = { itemID = 6631, "=q3=Living Root", "=ds=#w9#", "34.47%" };
		[3] = { itemID = 6630, "=q3=Seedcloud Buckler", "=ds=#w8#", "35.38%" };
	};
	{
		Name = BabbleBoss["Mutanus the Devourer"];
		[1] = { itemID = 6461, "=q3=Slime-encrusted Pads", "=ds=#s3#, #a1#", "22.96%" };
		[2] = { itemID = 6627, "=q3=Mutant Scale Breastplate", "=ds=#s5#, #a3#", "18.33%" };
		[3] = { itemID = 6463, "=q3=Deep Fathom Ring", "21.99%" };
		[4] = { itemID = 10441, "=q1=Glowing Shard", "=ds=#m2#" };
	};
	{
		Name = BabbleBoss["Deviate Faerie Dragon"];
		[1] = { itemID = 6632, "=q3=Feyscale Cloak", "37.84%" };
		[2] = { itemID = 5243, "=q3=Firebelcher", "39.65%" };
	};
};

------------------
--- Zul'Farrak ---
------------------

AtlasLoot_Data["ZulFarrak"] = {
	Name = BabbleZone["Zul'Farrak"];
	Map = "ZulFarrak";
	{
		Name = BabbleBoss["Antu'sul"];
		[1] = { itemID = 9640, "=q3=Vice Grips", "=ds=#s9#, #a4#", "31.30%" };
		[2] = { itemID = 9641, "=q3=Lifeblood Amulet", "30.80%" };
		[3] = { itemID = 9639, "=q3=The Hand of Antu'sul", "=ds=#h1#, #w6#", "15.47%" };
		[5] = { itemID = 9379, "=q3=Sang'thraze the Deflector", "2.10%" };
		[6] = { itemID = 9372, "=q4=Sul'thraze the Lasher", "=ds=#h2#, #w10#" };
	};
	{
		Name = BabbleBoss["Theka the Martyr"];
		[1] = { itemID = 10660, "=q1=First Mosh'aru Tablet", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Witch Doctor Zum'rah"];
		[1] = { itemID = 18083, "=q3=Jumanza Grips", "=ds=#s9#, #a1#", "24.97%" };
		[2] = { itemID = 18082, "=q3=Zum'rah's Vexing Cane", "=ds=#w9#", "11.98%" };
	};
	{
		Name = BabbleBoss["Nekrum Gutchewer"];
		[1] = { itemID = 9471, "=q1=Nekrum's Medallion", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Shadowpriest Sezz'ziz"];
		[1] = { itemID = 9470, "=q3=Bad Mojo Mask", "=ds=#s1#, #a1#", "18.69%" };
		[2] = { itemID = 9473, "=q3=Jinxed Hoodoo Skin", "=ds=#s5#, #a2#", "21.12%" };
		[3] = { itemID = 9474, "=q3=Jinxed Hoodoo Kilt", "=ds=#s11#, #a2#", "20.95%" };
		[4] = { itemID = 9475, "=q3=Diabolic Skiver", "=ds=#w7#", "20.06%" };
	};
	{
		Name = BabbleBoss["Dustwraith"];
		[1] = { itemID = 12471, "=q3=Desertwalker Cane", "17.71%" };
	};
	{
		Name = BabbleBoss["Sergeant Bly"];
		[1] = { itemID = 8444, "=q1=Executioner's Key", "=ds=#e9#" };
	};
	{
		Name = BabbleBoss["Sandfury Executioner"];
		[1] = { itemID = 8548, "=q1=Divino-matic Rod", "=ds=#m3#", "100%" };
	};

	{
		Name = BabbleBoss["Hydromancer Velratha"];
		[1] = { itemID = 9234, "=q1=Tiara of the Deep", "=ds=#m3#", "100%" };
		[2] = { itemID = 10661, "=q1=Second Mosh'aru Tablet", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Gahz'rilla"];
		[1] = { itemID = 9469, "=q3=Gahz'rilla Scale Armor", "=ds=#s5#, #a3#", "36.76%" };
		[2] = { itemID = 9467, "=q3=Gahz'rilla Fang", "=ds=#h1#, #w4#", "36.83%" };
		[4] = { itemID = 8707, "=q1=Gahz'rilla's Electrified Scale", "=ds=#m3#" };
	};
	{
		Name = BabbleBoss["Chief Ukorz Sandscalp"];
		[1] = { itemID = 9479, "=q3=Embrace of the Lycan", "=ds=#s1#, #a2#", "8.97%" };
		[2] = { itemID = 9476, "=q3=Big Bad Pauldrons", "=ds=#s3#, #a4#", "28.17%" };
		[3] = { itemID = 9478, "=q3=Ripsaw", "19.78%" };
		[4] = { itemID = 9477, "=q3=The Chief's Enforcer", "=ds=#w9#", "22.33%" };
		[6] = { itemID = 11086, "=q3=Jang'thraze the Protector", "=ds=#h3#, #w10#", "1.72%" };
		[7] = { itemID = 9372, "=q4=Sul'thraze the Lasher", "=ds=#h2# #w10#" };
	};
	{
		Name = BabbleBoss["Zerillis"];
		[1] = { itemID = 12470, "=q3=Sandstalker Ankleguards", "=ds=#s12#, #a2#", "15.55%" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9512, "=q3=Blackmetal Cape", "0.02%" };
		[2] = { itemID = 9484, "=q3=Spellshock Leggings", "=ds=#s11#, #a1#", "0.01%" };
		[3] = { itemID = 862, "=q3=Runed Ring", "=ds=#s13# =q2=#m16#", "0.02%" };
		[4] = { itemID = 6440, "=q3=Brainlash", "0.01%" };
		[6] = { itemID = 9243, "=q2=Shriveled Heart", "=ds=#s2#" };
		[8] = { itemID = 9523, "=q1=Troll Temper", "=ds=#m3#" };
		[9] = { itemID = 9238, "=q1=Uncracked Scarab Shell", "=ds=#m3#" };
		[16] = { itemID = 5616, "=q3=Gutwrencher", "=ds=#h1#, #w4#", "0.01%" };
		[17] = { itemID = 9511, "=q3=Bloodletter Scalpel", "0.01%" };
		[18] = { itemID = 9481, "=q3=The Minotaur", "=ds=#h2#, #w1#", "0.01%" };
		[19] = { itemID = 9480, "=q3=Eyegouger", "=ds=#w7#", "0.01%" };
		[20] = { itemID = 9482, "=q3=Witch Doctor's Cane", "=ds=#w9#", "0.01%" };
		[21] = { itemID = 9483, "=q3=Flaming Incinerator", "0.01%" };
		[22] = { itemID = 2040, "=q3=Troll Protector", "=ds=#w8#", "0.02%" };
	};
};

-----------------
--- Zul'Gurub ---
-----------------

AtlasLoot_Data["ZulGurub"] = {
	Name = BabbleZone["Zul'Gurub"];
	Type = "ClassicRaid";
	Map = "ZulGurub";
	{
		Name = BabbleBoss["High Priestess Jeklik"];
		[1] = { itemID = 19918, "=q4=Jeklik's Crusher", "3.96%" };
		[2] = { itemID = 19928, "=q3=Animist's Spaulders", "=ds=#s3#, #a2#", "3.39%" };
		[3] = { itemID = 20262, "=q3=Seafury Boots", "=ds=#s12#, #a3#", "4.31%" };
		[4] = { itemID = 20265, "=q3=Peacekeeper Boots", "=ds=#s12#, #a4#", "6.99%" };
		[5] = { itemID = 19923, "=q3=Jeklik's Opaline Talisman", "12.22%" };
		[6] = { itemID = 19920, "=q3=Primalist's Band", "11.89%" };
		[7] = { itemID = 19915, "=q3=Zulian Defender", "=ds=#w8#", " 11.36%" };
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 19943, "=q1=Massive Mojo", "8.8%" };
		[19] = { itemID = 19881, "=q1=Channeler's Head", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["High Priest Venoxis"];
		[1] = { itemID = 19904, "=q4=Runed Bloodstained Hauberk", "=ds=#s5#, #a3#", "3.70%" };
		[2] = { itemID = 19903, "=q4=Fang of Venoxis", "=ds=#h3#, #w4#", "3.68%" };
		[4] = { itemID = 19907, "=q3=Zulian Tigerhide Cloak", "12.09%" };
		[5] = { itemID = 19906, "=q3=Blooddrenched Footpads", "=ds=#s12#, #a2#", "11.36%" };
		[6] = { itemID = 19905, "=q3=Zanzil's Band", "6.99%" };
		[7] = { itemID = 19900, "=q3=Zulian Stone Axe", "=ds=#h2#, #w1#", "11.89%" };
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 19943, "=q1=Massive Mojo", "6.0%" };
		[19] = { itemID = 19881, "=q1=Channeler's Head", "=ds=#m3#", "100%" };
		[21] = { itemID = 22216, "=q1=Venoxis's Venom Sac", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["High Priestess Mar'li"];
		[1] = { itemID = 20032, "=q4=Flowing Ritual Robes", "=ds=#s5#, #a1#", "4.46%" };
		[2] = { itemID = 19927, "=q4=Mar'li's Touch", "4.35%" };
		[3] = { itemID = 19919, "=q3=Bloodstained Greaves", "=ds=#s12#, #a3#", "11.89%" };
		[4] = { itemID = 19871, "=q3=Talisman of Protection", "11.36%" };
		[5] = { itemID = 19925, "=q3=Band of Jin", " 6.99%" };
		[6] = { itemID = 19930, "=q3=Mar'li's Eye", "12.09%" };
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 19943, "=q1=Massive Mojo", "7.4%" };
		[19] = { itemID = 19881, "=q1=Channeler's Head", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Bloodlord Mandokir"];
		[1] = { itemID = 19867, "=q4=Bloodlord's Defender", "5.83%" };
		[2] = { itemID = 19866, "=q4=Warblade of the Hakkari", "=ds=#h4#, #w10#", "3.96%" };
		[3] = { itemID = 19874, "=q4=Halberd of Smiting", "=ds=#w7#", "6.35%" };
		[4] = { itemID = 20038, "=q4=Mandokir's Sting", "=ds=#w2#", "5.96%" };
		[5] = { itemID = 19872, "=q4=Swift Razzashi Raptor", "0.43%" };
		[7] = { itemID = 19870, "=q3=Hakkari Loa Cloak", "12.54%" };
		[8] = { itemID = 19895, "=q3=Bloodtinged Kilt", "=ds=#s11#, #a1#", "13.50%" };
		[9] = { itemID = 19869, "=q3=Blooddrenched Grips", "=ds=#s9#, #a2#", "12.87%" };
		[10] = { itemID = 19877, "=q3=Animist's Leggings", "=ds=#s11#, #a2#", "12.14%" };
		[11] = { itemID = 19878, "=q3=Bloodsoaked Pauldrons", "=ds=#s9#, #a4#", "12.31%" };
		[12] = { itemID = 19873, "=q3=Overlord's Crimson Band", "12.28%" };
		[13] = { itemID = 19893, "=q3=Zanzil's Seal", "13.11%" };
		[14] = { itemID = 19863, "=q3=Primalist's Seal", "12.32%" };
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 22637, "=q3=Primal Hakkari Idol", "=ds=#m3#" };
		[19] = { itemID = 19943, "=q1=Massive Mojo", "9.4%" };
	};
	{
		Name = BabbleZone["Zul'Gurub"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Gri'lek"] };
		[2] = { itemID = 19961, "=q3=Gri'lek's Grinder", "=ds=#h1#, #w6#", "43.90%" };
		[3] = { itemID = 19962, "=q3=Gri'lek's Carver", "=ds=#h2#, #w1#", "41.99%" };
		[4] = { itemID = 19939, "=q2=Gri'lek's Blood", "=ds=#m3#", "100%" };
		[6] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Hazza'rah"] };
		[7] = { itemID = 19968, "=q3=Fiery Retributer", "38.37%" };
		[8] = { itemID = 19967, "=q3=Thoughtblighter", "45.49%" };
		[9] = { itemID = 19942, "=q2=Hazza'rah's Dream Thread", "=ds=#m3#", "100%" };
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Renataki"] };
		[17] = { itemID = 19964, "=q3=Renataki's Soul Conduit", "=ds=#h3#, #w10#", "40.06%" };
		[18] = { itemID = 19963, "=q3=Pitchfork of Madness", "=ds=#w7#", "45.51%" };
		[19] = { itemID = 19940, "=q2=Renataki's Tooth", "=ds=#m3#", "100%" };
		[21] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Wushoolay"] };
		[22] = { itemID = 19965, "=q3=Wushoolay's Poker", "=ds=#h3#, #w4#", "45.21%" };
		[23] = { itemID = 19993, "=q3=Hoodoo Hunting Bow", "=ds=#w2#", "40.96%" };
		[24] = { itemID = 19941, "=q2=Wushoolay's Mane", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["Gahz'ranka"];
		[1] = { itemID = 19945, "=q4=Foror's Eyepatch", "=ds=#s1#, #a2#", "8,82%" };
		[2] = { itemID = 19944, "=q4=Nat Pagle's Fish Terminator", "=ds=#w9#", "2.39%" };
		[4] = { itemID = 19947, "=q3=Nat Pagle's Broken Reel", "28.20%" };
		[5] = { itemID = 19946, "=q3=Tigule's Harpoon", "=ds=#w7#", "29.22%" };
		[7] = { itemID = 22739, "=q3=Tome of Polymorph: Turtle", "=ds=#e10#, =q1=#m1# =ds=#c3#" };
	};
	{
		Name = BabbleBoss["High Priest Thekal"];
		[1] = { itemID = 19897, "=q4=Betrayer's Boots", "=ds=#s12#, #a1#", "5.83%" };
		[2] = { itemID = 19896, "=q4=Thekal's Grasp", "=ds=#h3#, #w13#", "4.23%" };
		[3] = { itemID = 19902, "=q4=Swift Zulian Tiger", "0.70%" };
		[5] = { itemID = 19898, "=q3=Seal of Jin", "" };
		[6] = { itemID = 19899, "=q3=Ritualistic Legguards", "=ds=#s11#, #a1#", "13.41%" };
		[7] = { itemID = 20260, "=q3=Seafury Leggings", "=ds=#s11#, #a3#", "4.30%" };
		[8] = { itemID = 20266, "=q3=Peacekeeper Leggings", "=ds=#s11#, #a4#", "8.69%" };
		[9] = { itemID = 19901, "=q3=Zulian Slicer", "=ds=#h1#, #w10#, =q1=#e18#", "13.36%" };
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 19943, "=q1=Massive Mojo", "8.3%" };
		[19] = { itemID = 19881, "=q1=Channeler's Head", "=ds=#m3#", "100%" };
	};
	{
		Name = BabbleBoss["High Priestess Arlokk"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 19943, "=q1=Massive Mojo", "5.6%" };
		[19] = { itemID = 19881, "=q1=Channeler's Head", "=ds=#m3#", "100%" };
		[1] = { itemID = 19910, "=q4=Arlokk's Grasp", "=ds=#h4#, #w13#", "3.62%" };
		[2] = { itemID = 19909, "=q4=Will of Arlokk", "=ds=#w9#", "5.14%" };
		[4] = { itemID = 19913, "=q3=Bloodsoaked Greaves", "=ds=#s12#, #a4#", "13.29%" };
		[5] = { itemID = 19912, "=q3=Overlord's Onyx Band", "13.95%" };
		[6] = { itemID = 19922, "=q3=Arlokk's Hoodoo Stick", "13.66%" };
		[7] = { itemID = 19914, "=q3=Panther Hide Sack", "14.03%" };
	};
	{
		Name = BabbleBoss["Jin'do the Hexxer"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", desc = "=ds=#m3#",  lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		[18] = { itemID = 22637, "=q3=Primal Hakkari Idol", "=ds=#m3#" };
		[19] = { itemID = 19943, "=q1=Massive Mojo", "8.4%" };
		[1] = { itemID = 19885, "=q4=Jin'do's Evil Eye", "6.82%" };
		[2] = { itemID = 19891, "=q4=Jin'do's Bag of Whammies", "7.70%" };
		[3] = { itemID = 19890, "=q4=Jin'do's Hexxer", "=ds=#h3#, #w6#", "8.08%" };
		[4] = { itemID = 19884, "=q4=Jin'do's Judgement", "=ds=#w9#", "8.36%" };
		[6] = { itemID = 19888, "=q3=Overlord's Embrace", "12.72%" };
		[7] = { itemID = 19886, "=q3=The Hexxer's Cover", "=ds=#s1#, #a1#", "12.11%" };
		[8] = { itemID = 19929, "=q3=Bloodtinged Gloves", "=ds=#s9#, #a1#", "11.75%" };
		[9] = { itemID = 19889, "=q3=Blooddrenched Leggings", "=ds=#s11#, #a2#", "11.97%" };
		[10] = { itemID = 19892, "=q3=Animist's Boots", "=ds=#s12#, #a2#", "12.28%" };
		[11] = { itemID = 19875, "=q3=Bloodstained Coif", "=ds=#s1#, #a3#", "13.73%" };
		[12] = { itemID = 19887, "=q3=Bloodstained Legplates", "=ds=#s11#, #a3#", "11.11%" };
		[13] = { itemID = 19894, "=q3=Bloodsoaked Gauntlets", "=ds=#s9#, #a4#", "12.93%" };
	};
	{
		Name = BabbleBoss["Hakkar"];
		[1] = { itemID = 19857, "=q4=Cloak of Consumption", "11.65%" };
		[2] = { itemID = 20257, "=q4=Seafury Gauntlets", "=ds=#s9#, #a3#", "4.11%" };
		[3] = { itemID = 20264, "=q4=Peacekeeper Gauntlets", "=ds=#s9#, #a4#", "" };
		[4] = { itemID = 19855, "=q4=Bloodsoaked Legplates", "=ds=#s11#, #a4#", "10.52%" };
		[5] = { itemID = 19876, "=q4=Soul Corrupter's Necklace", "10.11%" };
		[6] = { itemID = 19856, "=q4=The Eye of Hakkar", "12.02%" };
		[8] = { itemID = 19859, "=q4=Fang of the Faceless", "=ds=#h1#, #w4#", "7.33%" };
		[9] = { itemID = 19864, "=q4=Bloodcaller", "=ds=#h3#, #w10#", "7.69%" };
		[10] = { itemID = 19865, "=q4=Warblade of the Hakkari", "=ds=#h3#, #w10#", "3.67%" };
		[11] = { itemID = 19854, "=q4=Zin'rokh, Destroyer of Worlds", "=ds=#h2#, #w10#", "6.78%" };
		[12] = { itemID = 19852, "=q4=Ancient Hakkari Manslayer", "6.62%" };
		[13] = { itemID = 19862, "=q4=Aegis of the Blood God", "=ds=#w8#", "9.99%" };
		[14] = { itemID = 19853, "=q4=Gurubashi Dwarf Destroyer", "=ds=#w5#", "6.12%" };
		[15] = { itemID = 19861, "=q4=Touch of Chaos", "7.24%" };
		[16] = { itemID = 19802, "=q4=Heart of Hakkar", "100%" };
		[17] = { itemID = 19950, "=q4=Zandalarian Hero Charm" };
		[18] = { itemID = 19949, "=q4=Zandalarian Hero Medallion" };
		[19] = { itemID = 19948, "=q4=Zandalarian Hero Badge" };
		[21] = { itemID = 19943, "=q1=Massive Mojo", "34.3%" };
	};
	{
		Name = "Muddy Churning Waters";
		[1] = { itemID = 19975, "=q1=Zulian Mudskunk", "=ds=#e21#" };
	};
	{
		Name = "Shared ZG Priest Drops";
		[1] = { itemID = 22721, "=q4=Band of Servitude", "=ds=#s13#" };
		[2] = { itemID = 22722, "=q4=Seal of the Gurubashi Berserker", "=ds=#s13#" };
		[4] = { itemID = 22711, "=q3=Cloak of the Hakkari Worshipers", "=ds=#s4#" };
		[5] = { itemID = 22712, "=q3=Might of the Tribe", "=ds=#s4#" };
		[6] = { itemID = 22720, "=q3=Zulian Headdress", "=ds=#s1#, #a1#" };
		[7] = { itemID = 22716, "=q3=Belt of Untapped Power", "=ds=#s10#, #a1#" };
		[8] = { itemID = 22718, "=q3=Blooddrenched Mask", "=ds=#s1#, #a2#" };
		[9] = { itemID = 22715, "=q3=Gloves of the Tormented", "=ds=#s9#, #a3#" };
		[10] = { itemID = 22714, "=q3=Sacrificial Gauntlets", "=ds=#s9#, #a4#" };
		[11] = { itemID = 22713, "=q3=Zulian Scepter of Rites", "=ds=#h3#, #w6#" };
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20259, "=q3=Shadow Panther Hide Gloves", "=ds=#s9#, #a2#" };
		[2] = { itemID = 20261, "=q3=Shadow Panther Hide Belt", "=ds=#s10#, #a2#" };
		[3] = { itemID = 20263, "=q3=Gurubashi Helm", "=ds=#s1#, #a4#" };
		[4] = { itemID = 19908, "=q3=Sceptre of Smiting", "=ds=#h1#, #w6#" };
		[5] = { itemID = 19921, "=q3=Zulian Hacker", "=ds=#h1#, #w1#" };
		[6] = { itemID = 20258, "=q3=Zulian Ceremonial Staff", "=ds=#w9#" };
		[7] = { itemID = 19727, "=q3=Blood Scythe", "=ds=#e19#", "0.02%" };
		[8] = { itemID = 48126, "=q1=Razzashi Hatchling", "=ds=#e13#" };
		[10] = { itemID = 19726, "=q2=Bloodvine", "" };
		[11] = { itemID = 19774, "=q2=Souldarite", "" };
		[12] = { itemID = 19767, "=q1=Primal Bat Leather", "" };
		[13] = { itemID = 19768, "=q1=Primal Tiger Leather", "" };
		[16] = { itemID = 19821, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c1#", "0.01%" };
		[17] = { itemID = 19816, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c2#", "0.01%" };
		[18] = { itemID = 19818, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c3#", "0.01%" };
		[19] = { itemID = 19815, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c4#", "0.01%" };
		[20] = { itemID = 19820, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c5#", "0.01%" };
		[21] = { itemID = 19814, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c6#", "0.01%" };
		[22] = { itemID = 19817, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c7#", "0.01%" };
		[23] = { itemID = 19819, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c8#", "0.01%" };
		[24] = { itemID = 19813, "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c9#", "0.01%" };
	};
	{
		Name = "Coin's and Bijou's";
		[1] = { itemID = 19708, "=q3=Blue Hakkari Bijou", "=ds=#e15#", "1.48%" };
		[2] = { itemID = 19713, "=q3=Bronze Hakkari Bijou", "=ds=#e15#", "1.57%" };
		[3] = { itemID = 19715, "=q3=Gold Hakkari Bijou", "=ds=#e15#", "1.63%" };
		[4] = { itemID = 19711, "=q3=Green Hakkari Bijou", "=ds=#e15#", "1.67%" };
		[5] = { itemID = 19710, "=q3=Orange Hakkari Bijou", "=ds=#e15#", "1.76%" };
		[6] = { itemID = 19712, "=q3=Purple Hakkari Bijou", "=ds=#e15#", "1.67%" };
		[7] = { itemID = 19707, "=q3=Red Hakkari Bijou", "=ds=#e15#", "1.63%" };
		[8] = { itemID = 19714, "=q3=Silver Hakkari Bijou", "=ds=#e15#", "1.59%" };
		[9] = { itemID = 19709, "=q3=Yellow Hakkari Bijou", "=ds=#e15#", "1.50%" };
		[16] = { itemID = 19706, "=q2=Bloodscalp Coin", "=ds=#e15#", "3.01%" };
		[17] = { itemID = 19701, "=q2=Gurubashi Coin", "=ds=#e15#", "3.12%" };
		[18] = { itemID = 19700, "=q2=Hakkari Coin", "=ds=#e15#", "3.19%" };
		[19] = { itemID = 19699, "=q2=Razzashi Coin", "=ds=#e15#", "3.36%" };
		[20] = { itemID = 19704, "=q2=Sandfury Coin", "=ds=#e15#", "3.47%" };
		[21] = { itemID = 19705, "=q2=Skullsplitter Coin", "=ds=#e15#", "3.32%" };
		[22] = { itemID = 19702, "=q2=Vilebranch Coin", "=ds=#e15#", "3.27%" };
		[23] = { itemID = 19703, "=q2=Witherbark Coin", "=ds=#e15#", "3.27%" };
		[24] = { itemID = 19698, "=q2=Zulian Coin", "=ds=#e15#", "3.01%" };
	};
	{
		Name = "ZG Enchants";
		[1] = { itemID = 19790, "=q3=Animist's Caress", "=q1=#m1# =ds=#c1#" };
		[2] = { itemID = 19785, "=q3=Falcon's Call", "=q1=#m1# =ds=#c2#" };
		[3] = { itemID = 19787, "=q3=Presence of Sight", "=q1=#m1# =ds=#c3#" };
		[4] = { itemID = 19783, "=q3=Syncretist's Sigil", "=q1=#m1# =ds=#c4#" };
		[5] = { itemID = 19789, "=q3=Prophetic Aura", "=q1=#m1# =ds=#c5#" };
		[6] = { itemID = 19784, "=q3=Death's Embrace", "=q1=#m1# =ds=#c6#" };
		[7] = { itemID = 19786, "=q3=Vodouisant's Vigilant Embrace", "=q1=#m1# =ds=#c7#" };
		[8] = { itemID = 19788, "=q3=Hoodoo Hex", "=q1=#m1# =ds=#c8#" };
		[9] = { itemID = 19782, "=q3=Presence of Might", "=q1=#m1# =ds=#c9#" };
		[16] = { itemID = 20077, "=q3=Zandalar Signet of Might", "=ds=#s3# #e17#" };
		[17] = { itemID = 20076, "=q3=Zandalar Signet of Mojo", "=ds=#s3# #e17#" };
		[18] = { itemID = 20078, "=q3=Zandalar Signet of Serenity", "=ds=#s3# #e17#" };
		[20] = { itemID = 22635, "=q3=Savage Guard", "=ds=#s1#/#s11# #e17#" };
	};
};

-----------------
--- Naxxramas ---
-----------------

AtlasLoot_Data["Naxxramas60"] = {
	Name = BabbleZone["Naxxramas"];
	Type = "ClassicRaid";
	Map = "Naxxramas60";
	{
		Name = BabbleBoss["Patchwerk"];
		[1] = { itemID = 22960, "=q4=Cloak of Suturing", "20%" },
		[2] = { itemID = 22815, "=q4=Severance", "=ds=#h2#, #w1#", "20%" },
		[3] = { itemID = 22820, "=q4=Wand of Fates", "20%" },
		[4] = { itemID = 22818, "=q4=The Plague Bearer", "=ds=#w8#", "20%" },
		[5] = { itemID = 22961, "=q4=Band of Reanimation", "20%" },
		[16] = { itemID = 22354, "=q4=Desecrated Pauldrons", "=ds=#tt3#", "100%", lootTable = {"T3SHOULDER","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[1] = { itemID = 22968, "=q4=Glacial Mantle", "=ds=#s3#, #a1#", "20%" },
		[2] = { itemID = 22967, "=q4=Icy Scale Spaulders", "=ds=#s3#, #a3#", "20%" },
		[3] = { itemID = 22803, "=q4=Midnight Haze", "=ds=#h3#, #w4#", "20%" },
		[4] = { itemID = 22988, "=q4=The End of Dreams", "=ds=#h3#, #w6#", "20%" },
		[5] = { itemID = 22810, "=q4=Toxin Injector", "=ds=#w5#", "20%" },
		[16] = { itemID = 22354, "=q4=Desecrated Pauldrons", "=ds=#tt3#", "100%", lootTable = {"T3SHOULDER","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 22983, "=q4=Rime Covered Mantle", "=ds=#s3#, #a1#", "20%" },
		[2] = { itemID = 22813, "=q4=Claymore of Unholy Might", "=ds=#h2#, #w10#", "20%" },
		[3] = { itemID = 23075, "=q4=Death's Bargain", "=ds=#w8#", "20%" },
		[4] = { itemID = 22994, "=q4=Digested Hand of Power", "20%" },
		[5] = { itemID = 22981, "=q4=Gluth's Missing Collar", "20%" },
		[16] = { itemID = 22354, "=q4=Desecrated Pauldrons", "=ds=#tt3#", "100%", lootTable = {"T3SHOULDER","Token"} };
		[17] = { itemID = 22355, "=q4=Desecrated Bracers", "=ds=#tt3#", "8.33%", lootTable = {"T3WRIST","Token"} };
		[18] = { itemID = 22356, "=q4=Desecrated Waistguard", "=ds=#tt3#", "8.33%", lootTable = {"T3WAIST","Token"} };
		[19] = { itemID = 22358, "=q4=Desecrated Sabatons", "=ds=#tt3#", "8.33%", lootTable = {"T3FEET","Token"} };
		[21] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[22] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Thaddius"];
		[1] = { itemID = 23070, "=q4=Leggings of Polarity", "=ds=#s11#, #a1#", "20%" },
		[2] = { itemID = 23000, "=q4=Plated Abomination Ribcage", "=ds=#s5#, #a4#", "20%" },
		[3] = { itemID = 22808, "=q4=The Castigator", "=ds=#h1#, #w6#", "20%" },
		[4] = { itemID = 22801, "=q4=Spire of Twilight", "=ds=#w9#", "20%" },
		[5] = { itemID = 23001, "=q4=Eye of Diminution", "20%" },
		[16] = { itemID = 22353, "=q4=Desecrated Helmet", "=ds=#tt3#", "100%", lootTable = {"T3HEAD","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[1] = { itemID = 22938, "=q4=Cryptfiend Silk Cloak", "20%" },
		[2] = { itemID = 22936, "=q4=Wristguards of Vengeance", "=ds=#s8#, #a4#", "20%" },
		[3] = { itemID = 22937, "=q4=Gem of Nerubis", "20%" },
		[4] = { itemID = 22939, "=q4=Band of Unanswered Prayers", "20%" },
		[5] = { itemID = 22935, "=q4=Touch of Frost", "20%" },
		[16] = { itemID = 22355, "=q4=Desecrated Bracers", "=ds=#tt3#", "100%", lootTable = {"T3WRIST","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[1] = { itemID = 22941, "=q4=Polar Shoulder Pads", "=ds=#s3#, #a2#", "20%" },
		[2] = { itemID = 22940, "=q4=Icebane Pauldrons", "=ds=#s3#, #a4#", "20%" },
		[3] = { itemID = 22806, "=q4=Widow's Remorse", "20%" },
		[4] = { itemID = 22942, "=q4=The Widow's Embrace", "=ds=#h3#, #w6#", "20%" },
		[5] = { itemID = 22943, "=q4=Malice Stone Pendant", "20%" },
		[16] = { itemID = 22355, "=q4=Desecrated Bracers", "=ds=#tt3#", "100%", lootTable = {"T3WRIST","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Maexxna"];
		[1] = { itemID = 23220, "=q4=Crystal Webbed Robe", "=ds=#s5#, #a1#", "20%" },
		[2] = { itemID = 22804, "=q4=Maexxna's Fang", "=ds=#h1#, #w4#", "20%" },
		[3] = { itemID = 22807, "=q4=Wraith Blade", "=ds=#h3#, #w10#", "20%" },
		[4] = { itemID = 22947, "=q4=Pendant of Forgotten Names", "20%" },
		[5] = { itemID = 22954, "=q4=Kiss of the Spider", "20%" },
		[16] = { itemID = 22357, "=q4=Desecrated Gauntlets", "=ds=#tt3#", "100%", lootTable = {"T3HAND","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[1] = { itemID = 23017, "=q4=Veil of Eclipse", "16.67%" },
		[2] = { itemID = 23219, "=q4=Girdle of the Mentor", "=ds=#s10#, #a4#", "16.67%" },
		[3] = { itemID = 23014, "=q4=Iblis, Blade of the Fallen Seraph", "16.67%" },
		[4] = { itemID = 23009, "=q4=Wand of the Whispering Dead", "16.67%" },
		[5] = { itemID = 23004, "=q4=Idol of Longevity", "=ds=#s16#, #w14#", "16.67%" },
		[6] = { itemID = 23018, "=q4=Signet of the Fallen Defender", "16.67%" },
		[16] = { itemID = 22358, "=q4=Desecrated Sabatons", "=ds=#tt3#", "100%", lootTable = {"T3FEET","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[1] = { itemID = 23032, "=q4=Glacial Headdress", "=ds=#s1#, #a1#", "20%" },
		[2] = { itemID = 23021, "=q4=The Soul Harvester's Bindings", "=ds=#s8#, #a1#", "20%" },
		[3] = { itemID = 23020, "=q4=Polar Helmet", "=ds=#s1#, #a2#", "20%" },
		[4] = { itemID = 23073, "=q4=Boots of Displacement", "=ds=#s12#, #a2#", "20%" },
		[5] = { itemID = 23023, "=q4=Sadist's Collar", "20%" },
		[16] = { itemID = 22358, "=q4=Desecrated Sabatons", "=ds=#tt3#", "100%", lootTable = {"T3SHOULDER","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[1] = { itemID = 23071, "=q4=Leggings of Apocalypse", "=ds=#s11#, #a2#", "16.67%" },
		[2] = { itemID = 22809, "=q4=Maul of the Redeemed Crusader", "16.67%" },
		[3] = { itemID = 22691, "=q4=Corrupted Ashbringer", "=ds=#h2#, #w10#", "16.67%" },
		[4] = { itemID = 22811, "=q4=Soulstring", "=ds=#w2#", "20%" },
		[5] = { itemID = 23025, "=q4=Seal of the Damned", "16.67%" },
		[6] = { itemID = 23027, "=q4=Warmth of Forgiveness", "16.67%" },
		[16] = { itemID = 22349, "=q4=Desecrated Breastplate", "=ds=#tt3#", "100%", lootTable = {"T3CHEST","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[1] = { itemID = 23030, "=q4=Cloak of the Scourge", "14.29%" },
		[2] = { itemID = 22816, "=q4=Hatchet of Sundered Bone", "14.29%" },
		[3] = { itemID = 23005, "=q4=Totem of Flowing Water", "=ds=#s16#, #w15#", "14.29%" },
		[4] = { itemID = 23006, "=q4=Libram of Light", "=ds=#s16#, #w16#", "14.29%" },
		[5] = { itemID = 23029, "=q4=Noth's Frigid Heart", "14.29%" },
		[6] = { itemID = 23031, "=q4=Band of the Inevitable", "14.29%" },
		[7] = { itemID = 23028, "=q4=Hailstone Band", "14.29%" },
		[16] = { itemID = 22356, "=q4=Desecrated Waistguard", "=ds=#tt3#", "100%", lootTable = {"T3WAIST","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[1] = { itemID = 23035, "=q4=Preceptor's Hat", "=ds=#s1#, #a1#", "20%" },
		[2] = { itemID = 23033, "=q4=Icy Scale Coif", "=ds=#s1#, #a3#", "20%" },
		[3] = { itemID = 23019, "=q4=Icebane Helmet", "=ds=#s1#, #a4#", "20%" },
		[4] = { itemID = 23068, "=q4=Legplates of Carnage", "=ds=#s11#, #a4#", "20%" },
		[5] = { itemID = 23036, "=q4=Necklace of Necropsy", "20%" },
		[16] = { itemID = 22356, "=q4=Desecrated Waistguard", "=ds=#tt3#", "100%", lootTable = {"T3WAIST","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Loatheb"];
		[1] = { itemID = 23039, "=q4=The Eye of Nerub", "=ds=#w7#", "20%" },
		[2] = { itemID = 22800, "=q4=Brimstone Staff", "=ds=#w9#", "20%" },
		[3] = { itemID = 23037, "=q4=Ring of Spiritual Fervor", "20%" },
		[4] = { itemID = 23038, "=q4=Band of Unnatural Forces", "20%" },
		[5] = { itemID = 23042, "=q4=Loatheb's Reflection", "20%" },
		[16] = { itemID = 22352, "=q4=Desecrated Legplates", "=ds=#tt3#", "100%", lootTable = {"T3LEGS","Token"} };
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[1] = { itemID = 23050, "=q4=Cloak of the Necropolis", "18.18%" },
		[2] = { itemID = 23045, "=q4=Shroud of Dominion", "18.18%" },
		[3] = { itemID = 23072, "=q4=Fists of the Unrelenting", "=ds=#s9#, #a4#", "18.18%" },
		[4] = { itemID = 23043, "=q4=The Face of Death", "=ds=#w8#", "18.18%" },
		[5] = { itemID = 23242, "=q4=Claw of the Frost Wyrm", "=ds=#h4#, #w13#", "18.18%" },
		[6] = { itemID = 23049, "=q4=Sapphiron's Left Eye", "18.18%" },
		[7] = { itemID = 23048, "=q4=Sapphiron's Right Eye", "18.18%" },
		[8] = { itemID = 23040, "=q4=Glyph of Deflection", "18.18%" },
		[9] = { itemID = 23047, "=q4=Eye of the Dead", "18.18%" },
		[10] = { itemID = 23046, "=q4=The Restrained Essence of Sapphiron", "18.18%" },
		[11] = { itemID = 23041, "=q4=Slayer's Crest", "18.18%" },
		[12] = { itemID = 19761, "Fang of the Frost Wyrm", "=ds=#h3#, #w13#" },
		[16] = { itemID = 23545, "=q4=Power of the Scourge", "=ds=#s3# #e17#", "50%" },
		[17] = { itemID = 23547, "=q4=Resilience of the Scourge", "=ds=#s3# #e17#", "50%" },
		[18] = { itemID = 23549, "=q4=Fortitude of the Scourge", "=ds=#s3# #e17#", "50%" },
		[19] = { itemID = 23548, "=q4=Might of the Scourge", "=ds=#s3# #e17#", "50%" },
		[18] = { itemID = 22726, "=q5=Splinter of Atiesh", "=ds=#m3#", "30%" },
		[19] = { itemID = 22727, "=q5=Frame of Atiesh", "=ds=#m2#" },
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[1] = { itemID = 22802, "=q4=Kingsfall", "=ds=#h1#, #w4#", "18.18%" },
		[2] = { itemID = 23054, "=q4=Gressil, Dawn of Ruin", "18.18%" },
		[3] = { itemID = 23577, "=q4=The Hungering Cold", "18.18%" },
		[4] = { itemID = 23056, "=q4=Hammer of the Twisting Nether", "=ds=#h1#, #w6#", "18.18%" },
		[5] = { itemID = 22798, "=q4=Might of Menethil", "18.18%" },
		[6] = { itemID = 22799, "=q4=Soulseeker", "=ds=#w9#", "18.18%" },
		[7] = { itemID = 22821, "=q4=Doomfinger", "18.18%" },
		[8] = { itemID = 22812, "=q4=Nerubian Slavemaker", "=ds=#w3#", "18.18%" },
		[9] = { itemID = 22819, "=q4=Shield of Condemnation", "=ds=#w8#", "18.18%" },
		[10] = { itemID = 23057, "=q4=Gem of Trapped Innocents", "18.18%" },
		[11] = { itemID = 23053, "=q4=Stormrage's Talisman of Seething", "18.18%" },
		[13] = { itemID = 22520, "=q4=The Phylactery of Kel'Thuzad", "100%" },
		[14] = { itemID = 23207, "=q4=Mark of the Champion", "=q1=#m4# =ds=#s14#" },
		[15] = { itemID = 23206, "=q4=Mark of the Champion", "=q1=#m4# =ds=#s14#" },
		[16] = { itemID = 1510496, "=q4=Desecrated Ring", "=ds=#tt3#", "100%", lootTable = {"T3FINGER","Token"} };
		[18] = { itemID = 22733, "=q1=Staff Head of Atiesh", "=ds=#m3#" },
		[19] = { itemID = 22632, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c1#" },
		[20] = { itemID = 22589, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c3#" },
		[21] = { itemID = 22631, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c5#" },
		[22] = { itemID = 22630, "=q5=Atiesh, Greatstaff of the Guardian", "=ds=#m4#, =q1=#m1# =ds=#c8#" },
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 23069, "=q4=Necro-Knight's Garb", "=ds=#s5#, #a1# =q1=#m1# =ds=#c5#, #c3#, #c8#" },
		[2] = { itemID = 23226, "=q4=Ghoul Skin Tunic", "=ds=#s5#, #a2#" },
		[3] = { itemID = 23663, "=q4=Girdle of Elemental Fury", "=ds=#s10#, #a3#" },
		[4] = { itemID = 23664, "=q4=Pauldrons of Elemental Fury", "=ds=#s3#, #a3# =q1=#m1# =ds=#c7#" },
		[5] = { itemID = 23665, "=q4=Leggings of Elemental Fury", "=ds=#s11#, #a3# =q1=#m1# =ds=#c7#" },
		[6] = { itemID = 23666, "=q4=Belt of the Grand Crusader", "=ds=#s10#, #a4# =q1=#m1# =ds=#c4#" },
		[7] = { itemID = 23667, "=q4=Spaulders of the Grand Crusader", "=ds=#s3#, #a4# =q1=#m1# =ds=#c4#" },
		[8] = { itemID = 23668, "=q4=Leggings of the Grand Crusader", "=ds=#s11#, #a4# =q1=#m1# =ds=#c4#" },
		[9] = { itemID = 23044, "=q4=Harbinger of Doom", "=ds=#h1#, #w4#" },
		[10] = { itemID = 23221, "=q4=Misplaced Servo Arm", "=ds=#h1# #w6#" },
		[11] = { itemID = 23238, "=q4=Stygian Buckler", "=ds=#w8#" },
		[12] = { itemID = 23237, "=q4=Ring of the Eternal Flame", "=ds=#s13#" },
		[16] = { itemID = 22376, "=q3=Wartorn Cloth Scrap", "=ds=#m3#" },
		[17] = { itemID = 22373, "=q3=Wartorn Leather Scrap", "=ds=#m3#" },
		[18] = { itemID = 22374, "=q3=Wartorn Chain Scrap", "=ds=#m3#" },
		[19] = { itemID = 22375, "=q3=Wartorn Plate Scrap", "=ds=#m3#" },
		[21] = { itemID = 22708, "=q1=Fate of Ramaladni", "=ds=#m3#" },
		[22] = { itemID = 23055, "=q1=Word of Thawing", "=ds=#m20#" },
	};
};

---------------------
--- Onyxia's Lair 60 ---
---------------------

AtlasLoot_Data["Onyxia60"] = {
	Name = BabbleZone["Onyxia's Lair"];
	Type = "ClassicRaid";
	Map = "Onyxia60";
	{
		Name = BabbleZone["Onyxia's Lair"];
		[1] = { itemID = 17078, "=q4=Sapphiron Drape", "28.57%" },
		[2] = { itemID = 18205, "=q4=Eskhandar's Collar", "28.57%" },
		[3] = { itemID = 18813, "=q4=Ring of Binding", "28.57%" },
		[4] = { itemID = 17064, "=q4=Shard of the Scale", "28.57%" },
		[5] = { itemID = 17067, "=q4=Ancient Cornerstone Grimoire", "28.57%" },
		[6] = { itemID = 17075, "=q4=Vis'kag the Bloodletter", "28.57%" },
		[7] = { itemID = 17068, "=q4=Deathbringer", "28.57%" },
		[8] = { itemID = 18215, "=q4=Insignia of the Dragon", "28.57%" },
		[9] = { itemID = 18216, "=q4=Neltharion's Badge", "28.57%" },
		[10] = { itemID = 18211, "=q4=Wand of the Noble", "28.57%" },
		[11] = { itemID = 17084, "=q4=Mace of the Dragon Knight", "28.57%" },
		[12] = { itemID = 18212, "=q4=Band of Nyxondra", "28.57%" },
		[16] = { itemID = 2522460, "=q4=Chromatic Headpiece", "100%", lootTable = {"T2HEAD","Token"} };
		[18] = { itemID = 18423, "=q4=Head of Onyxia", "100%" },
		[19] = { itemID = 18404, "=q4=Onyxia Tooth Pendant" },
		[20] = { itemID = 18403, "=q4=Dragonslayer's Signet" },
		[21] = { itemID = 18406, "=q4=Onyxia Blood Talisman" },
		[23] = { itemID = 15410, "=q3=Scale of Onyxia" },
		[24] = { itemID = 17966, "=q2=Onyxia Hide Backpack", "100%" },
		[26] = { itemID = 49636, "=q4=Reins of the Onyxian Drake", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic };
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

------------------------------------
--- Dungeon 1 and 2 Sets (D1/D2) ---
------------------------------------

AtlasLoot_Data["T0"] = {
	Name = "Dungeon Sets";
	Type = "ClassicDungeonExt";
	{
		Name = AL["Druid"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t0s1#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16720, "=q3=Wildheart Cowl", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "7.09%" };
		[3] = { itemID = 16718, "=q3=Wildheart Spaulders", "=ds=" .. BabbleBoss["Gizrul the Slavener"] .. " (" .. AL["LBRS"] .. ")", "11.04%" };
		[4] = { itemID = 16706, "=q3=Wildheart Vest", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "7.36%" };
		[5] = { itemID = 16714, "=q3=Wildheart Bracers", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.85%" };
		[6] = { itemID = 16717, "=q3=Wildheart Gloves", "=ds=" .. BabbleBoss["The Unforgiven"] .. " (" .. AL["Strat"] .. ")", "12.61%" };
		[7] = { itemID = 16716, "=q3=Wildheart Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "2.60%" };
		[8] = { itemID = 16719, "=q3=Wildheart Kilt", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "6.58%" };
		[9] = { itemID = 16715, "=q3=Wildheart Boots", "=ds=" .. BabbleBoss["Mother Smolderweb"] .. " (" .. AL["LBRS"] .. ")", "13.03%" };
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t05s1#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22109, "=q4=Feralheart Cowl", "=ds=#a2#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22112, "=q3=Feralheart Spaulders", "=ds=#a2#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22113, "=q4=Feralheart Vest", "=ds=#a2#, #s5#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22108, "=q3=Feralheart Bracers", "=ds=#a2#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22110, "=q4=Feralheart Gloves", "=ds=#a2#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22106, "=q3=Feralheart Belt", "=ds=#a2#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22111, "=q3=Feralheart Kilt", "=ds=#a2#, #s11#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22107, "=q4=Feralheart Boots", "=ds=#a2#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t0s2#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16677, "=q3=Beaststalker's Cap", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "7.00%" };
		[3] = { itemID = 16679, "=q3=Beaststalker's Mantle", "=ds=" .. BabbleBoss["Overlord Wyrmthalak"] .. " (" .. AL["LBRS"] .. ")", "9.89%" };
		[4] = { itemID = 16674, "=q3=Beaststalker's Tunic", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "6.81%" };
		[5] = { itemID = 16681, "=q3=Beaststalker's Bindings", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.64%" };
		[6] = { itemID = 16676, "=q3=Beaststalker's Gloves", "=ds=" .. BabbleBoss["War Master Voone"] .. " (" .. AL["LBRS"] .. ")", "9.15%" };
		[7] = { itemID = 16680, "=q3=Beaststalker's Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.36%" };
		[8] = { itemID = 16678, "=q3=Beaststalker's Pants", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "6.16%" };
		[9] = { itemID = 16675, "=q3=Beaststalker's Boots", "=ds=" .. BabbleBoss["Nerub'enkan"] .. " (" .. AL["Strat"] .. ")", "13.62%" };
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t05s2#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22013, "=q4=Beastmaster's Cap", "=ds=#a3#, #s1#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22016, "=q3=Beastmaster's Mantle", "=ds=#a3#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22060, "=q4=Beastmaster's Tunic", "=ds=#a3#, #s5#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22011, "=q3=Beastmaster's Bindings", "=ds=#a3#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22015, "=q4=Beastmaster's Gloves", "=ds=#a3#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22010, "=q3=Beastmaster's Belt", "=ds=#a3#, #s10#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22017, "=q3=Beastmaster's Pants", "=ds=#a3#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22061, "=q4=Beastmaster's Boots", "=ds=#a3#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t0s3#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16686, "=q3=Magister's Crown", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "8.60%" };
		[3] = { itemID = 16689, "=q3=Magister's Mantle", "=ds=" .. BabbleBoss["Ras Frostwhisper"] .. " (" .. AL["Scholo"] .. ")", "11.93%" };
		[4] = { itemID = 16688, "=q3=Magister's Robes", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "7.24%" };
		[5] = { itemID = 16683, "=q3=Magister's Bindings", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.19%" };
		[6] = { itemID = 16684, "=q3=Magister's Gloves", "=ds=" .. BabbleBoss["Doctor Theolen Krastinov"] .. " (" .. AL["Scholo"] ..")", "9.75%" };
		[7] = { itemID = 16685, "=q3=Magister's Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.32%" };
		[8] = { itemID = 16687, "=q3=Magister's Leggings", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "6.79%" };
		[9] = { itemID = 16682, "=q3=Magister's Boots", "=ds=" .. BabbleBoss["Hearthsinger Forresten"] .. " (" .. AL["Strat"] .. ")", "10.86%" };
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t05s3#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22065, "=q4=Sorcerer's Crown", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22068, "=q3=Sorcerer's Mantle", "=ds=#a1#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22069, "=q4=Sorcerer's Robes", "=ds=#a1#, #s5#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22063, "=q3=Sorcerer's Bindings", "=ds=#a1#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22066, "=q4=Sorcerer's Gloves", "=ds=#a1#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22062, "=q3=Sorcerer's Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22067, "=q3=Sorcerer's Leggings", "=ds=#a1#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22064, "=q4=Sorcerer's Boots", "=ds=#a1#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t0s4#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16727, "=q3=Lightforge Helm", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "5.32%" };
		[3] = { itemID = 16729, "=q3=Lightforge Spaulders", "=ds=" .. BabbleBoss["The Beast"] .. " (" .. AL["UBRS"] .. ")", "13.62%" };
		[4] = { itemID = 16726, "=q3=Lightforge Breastplate", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "3.76%" };
		[5] = { itemID = 16722, "=q3=Lightforge Bracers", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "3.37%" };
		[6] = { itemID = 16724, "=q3=Lightforge Gauntlets", "=ds=" .. BabbleBoss["Timmy the Cruel"] .. " (" .. AL["Strat"] .. ")", "10.42%" };
		[7] = { itemID = 16723, "=q3=Lightforge Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.93%" };
		[8] = { itemID = 16728, "=q3=Lightforge Legplates", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "4.20%" };
		[9] = { itemID = 16725, "=q3=Lightforge Boots", "=ds=" .. BabbleBoss["Balnazzar"] .. " (" .. AL["Strat"] .. ")", "11.11%" };
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t05s4#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22091, "=q4=Soulforge Helm", "=ds=#a4#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22093, "=q3=Soulforge Spaulders", "=ds=#a4#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22089, "=q4=Soulforge Breastplate", "=ds=#a4#, #s5#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22088, "=q3=Soulforge Bracers", "=ds=#a4#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22090, "=q4=Soulforge Gauntlets", "=ds=#a4#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22086, "=q3=Soulforge Belt", "=ds=#a4#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22092, "=q3=Soulforge Legplates", "=ds=#a4#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22087, "=q4=Soulforge Boots", "=ds=#a4#, #s12#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t0s5#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16693, "=q3=Devout Crown", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "7.89%" };
		[3] = { itemID = 16695, "=q3=Devout Mantle", "=ds=" .. BabbleBoss["Solakar Flamewreath"] .. " (" .. AL["UBRS"] .. ")", "12.84%" };
		[4] = { itemID = 16690, "=q3=Devout Robe", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "6.20%" };
		[5] = { itemID = 16697, "=q3=Devout Bracers", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.13%" };
		[6] = { itemID = 16692, "=q3=Devout Gloves", "=ds=" .. BabbleBoss["Archivist Galford"] .. " (" .. AL["Strat"] .. ")" };
		[7] = { itemID = 16696, "=q3=Devout Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "2.07%" };
		[8] = { itemID = 16694, "=q3=Devout Skirt", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "7.42%" };
		[9] = { itemID = 16691, "=q3=Devout Sandals", "=ds=" .. BabbleBoss["Maleki the Pallid"] .. " (" .. AL["Strat"] .. ")", "13.64%" };
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t05s5#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22080, "=q4=Virtuous Crown", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22082, "=q3=Virtuous Mantle", "=ds=#a1#, #s3#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22083, "=q4=Virtuous Robe", "=ds=#a1#, #s5#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22079, "=q3=Virtuous Bracers", "=ds=#a1#, #s8#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22081, "=q4=Virtuous Gloves", "=ds=#a1#, #s9#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22078, "=q3=Virtuous Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22085, "=q3=Virtuous Skirt", "=ds=#a1#, #s11#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22084, "=q4=Virtuous Sandals", "=ds=#a1#, #s12#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t0s6#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16707, "=q3=Shadowcraft Cap", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "6.65%" };
		[3] = { itemID = 16708, "=q3=Shadowcraft Spaulders", "=ds=" .. BabbleBoss["Cannon Master Willey"] .. " (" .. AL["Strat"] .. ")", "10.68%" };
		[4] = { itemID = 16721, "=q3=Shadowcraft Tunic", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "6.09%" };
		[5] = { itemID = 16710, "=q3=Shadowcraft Bracers", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "3.51%" };
		[6] = { itemID = 16712, "=q3=Shadowcraft Gloves", "=ds=" .. BabbleBoss["Shadow Hunter Vosh'gajin"] .. " (" .. AL["LBRS"] .. ")", "11.89%" };
		[7] = { itemID = 16713, "=q3=Shadowcraft Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.05%" };
		[8] = { itemID = 16709, "=q3=Shadowcraft Pants", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "7.76%" };
		[9] = { itemID = 16711, "=q3=Shadowcraft Boots", "=ds=" .. BabbleBoss["Rattlegore"] .. " (" .. AL["Scholo"] .. ")", "14.32%" };
		[16] = { icon = "Ability_BackStab", name = "=q6=#t05s6#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22005, "=q4=Darkmantle Cap", "=ds=#a2#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22008, "=q3=Darkmantle Spaulders", "=ds=#a2#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22009, "=q4=Darkmantle Tunic", "=ds=#a2#, #s5#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22004, "=q3=Darkmantle Bracers", "=ds=#a2#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22006, "=q4=Darkmantle Gloves", "=ds=#a2#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22002, "=q3=Darkmantle Belt", "=ds=#a2#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22007, "=q3=Darkmantle Pants", "=ds=#a2#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22003, "=q4=Darkmantle Boots", "=ds=#a2#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t0s7#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16667, "=q3=Coif of Elements", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "2.86%" };
		[3] = { itemID = 16669, "=q3=Pauldrons of Elements", "=ds=" .. BabbleBoss["Gyth"] .. " (" .. AL["UBRS"] .. ")", "14.77%" };
		[4] = { itemID = 16666, "=q3=Vest of Elements", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "3.03%" };
		[5] = { itemID = 16671, "=q3=Bindings of Elements", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.59%" };
		[6] = { itemID = 16672, "=q3=Gauntlets of Elements", "=ds=" .. BabbleBoss["Pyroguard Emberseer"] .. " (" .. AL["UBRS"] .. ")", "14.23%" };
		[7] = { itemID = 16673, "=q3=Cord of Elements", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.06%" };
		[8] = { itemID = 16668, "=q3=Kilt of Elements", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "3.02%" };
		[9] = { itemID = 16670, "=q3=Boots of Elements", "=ds=" .. BabbleBoss["Highlord Omokk"] .. " (" .. AL["LBRS"] .. ")", "9.35%" };
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t05s7#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22097, "=q4=Coif of The Five Thunders", "=ds=#a3#, #s1#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22101, "=q3=Pauldrons of The Five Thunders", "=ds=#a3#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22102, "=q4=Vest of The Five Thunders", "=ds=#a3#, #s5#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22095, "=q3=Bindings of The Five Thunders", "=ds=#a3#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22099, "=q4=Gauntlets of The Five Thunders", "=ds=#a3#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22098, "=q3=Cord of The Five Thunders", "=ds=#a3#, #s10#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22100, "=q3=Kilt of The Five Thunders", "=ds=#a3#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22096, "=q4=Boots of The Five Thunders", "=ds=#a3#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t0s8#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16698, "=q3=Dreadmist Mask", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "8.78%" };
		[3] = { itemID = 16701, "=q3=Dreadmist Mantle", "=ds=" .. BabbleBoss["Jandice Barov"] .. " (" .. AL["Scholo"] .. ")", "12.20%" };
		[4] = { itemID = 16700, "=q3=Dreadmist Robe", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "8.04%" };
		[5] = { itemID = 16703, "=q3=Dreadmist Bracers", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.68%" };
		[6] = { itemID = 16705, "=q3=Dreadmist Wraps", "=ds=" .. BabbleBoss["Lorekeeper Polkelt"] .. " (" .. AL["Scholo"] .. ")", "14.54%" };
		[7] = { itemID = 16702, "=q3=Dreadmist Belt", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "1.03%" };
		[8] = { itemID = 16699, "=q3=Dreadmist Leggings", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "7.31%" };
		[9] = { itemID = 16704, "=q3=Dreadmist Sandals", "=ds=" .. BabbleBoss["Baroness Anastari"] .. " (" .. AL["Strat"] .. ")", "13.16%" };
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t05s8#", desc = "=ec1=#j7#" };
		[17] = { itemID = 22074, "=q4=Deathmist Mask", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22073, "=q3=Deathmist Mantle", "=ds=#a1#, #s5#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 22075, "=q4=Deathmist Robe", "=ds=#a1#, #s3#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 22071, "=q3=Deathmist Bracers", "=ds=#a1#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 22077, "=q4=Deathmist Wraps", "=ds=#a1#, #s9#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 22070, "=q3=Deathmist Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22072, "=q3=Deathmist Leggings", "=ds=#a1#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 22076, "=q4=Deathmist Sandals", "=ds=#a1#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t0s9#", desc = "=ec1=#j6#" };
		[2] = { itemID = 16731, "=q3=Helm of Valor", "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "6.54%" };
		[3] = { itemID = 16733, "=q3=Spaulders of Valor", "=ds=" .. BabbleBoss["Warchief Rend Blackhand"] .. " (" .. AL["UBRS"] .. ")", "13.39%" };
		[4] = { itemID = 16730, "=q3=Breastplate of Valor", "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "5.83%" };
		[5] = { itemID = 16735, "=q3=Bracers of Valor", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.49%" };
		[6] = { itemID = 16737, "=q3=Gauntlets of Valor", "=ds=" .. BabbleBoss["Ramstein the Gorger"] .. " (" .. AL["Strat"] .. ")", "9.58%" };
		[7] = { itemID = 16736, "=q3=Belt of Valor", "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "1.96%" };
		[8] = { itemID = 16732, "=q3=Legplates of Valor", "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "5.74%" };
		[9] = { itemID = 16734, "=q3=Boots of Valor", "=ds=" .. BabbleBoss["Kirtonos the Herald"] .. " (" .. AL["Scholo"] .. ")", "11.12%" };
		[16] = { icon = "INV_Shield_05", name = "=q6=#t05s9#", desc = "=ec1=#j7#" };
		[17] = { itemID = 21999, "=q4=Helm of Heroism", "=ds=#a4#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[18] = { itemID = 22001, "=q3=Spaulders of Heroism", "=ds=#a4#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[19] = { itemID = 21997, "=q4=Breastplate of Heroism", "=ds=#a4#, #s5#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[20] = { itemID = 21996, "=q3=Bracers of Heroism", "=ds=#a4#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[21] = { itemID = 21998, "=q4=Gauntlets of Heroism", "=ds=#a4#, #s9#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[22] = { itemID = 21994, "=q3=Belt of Heroism", "=ds=#a4#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[23] = { itemID = 22000, "=q3=Legplates of Heroism", "=ds=#a4#, #s11#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		[24] = { itemID = 21995, "=q4=Boots of Heroism", "=ds=#a4#, #s12#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
};

-----------------------------
--- Tier 1/2 Sets (T1/T2) ---
-----------------------------

AtlasLoot_Data["T1"] = {
	Name = "Tier 1";
	Type = "ClassicRaid";
	{
		Name = "Druid".." - "..AL["Restoration"];
		[1] = { itemID = 16834, "=q4=Cenarion Helm", "=ds=" .. BabbleBoss["Garr"], "11.51%" };
		[2] = { itemID = 16836, "=q4=Cenarion Spaulders", "=ds=" .. BabbleBoss["Baron Geddon"], "19.52%" };
		[3] = { itemID = 16833, "=q4=Cenarion Vestments", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "15.21%" };
		[4] = { itemID = 16830, "=q4=Cenarion Bracers", "=ds=" .. AL["Trash Mobs"], "0.17%" };
		[5] = { itemID = 16831, "=q4=Cenarion Gloves", "=ds=" .. BabbleBoss["Shazzrah"], "19.53%" };
		[6] = { itemID = 16828, "=q4=Cenarion Belt", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[7] = { itemID = 16835, "=q4=Cenarion Leggings", "=ds=" .. BabbleBoss["Magmadar"], "12.90%" };
		[8] = { itemID = 16829, "=q4=Cenarion Boots", "=ds=" .. BabbleBoss["Lucifron"], "10.72%" };
	};
	{
		Name = "Druid" .. " - Tank";
		[1] = { itemID = 13437, "=q4=Cenarion Cover", "=ds=" .. BabbleBoss["Garr"], "11.51%" };
		[2] = { itemID = 13439, "=q4=Cenarion Pauldrons", "=ds=" .. BabbleBoss["Baron Geddon"], "19.52%" };
		[3] = { itemID = 13436, "=q4=Cenarion Tunic", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "15.21%" };
		[4] = { itemID = 13434, "=q4=Cenarion Bands", "=ds=" .. AL["Trash Mobs"], "0.17%" };
		[5] = { itemID = 13435, "=q4=Cenarion Handguards", "=ds=" .. BabbleBoss["Shazzrah"], "19.53%" };
		[6] = { itemID = 13432, "=q4=Cenarion Girdle", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[7] = { itemID = 13438, "=q4=Cenarion Pants", "=ds=" .. BabbleBoss["Magmadar"], "12.90%" };
		[8] = { itemID = 13433, "=q4=Cenarion Treads", "=ds=" .. BabbleBoss["Lucifron"], "10.72%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16846, "=q4=Giantstalker's Helmet", "=ds=" .. BabbleBoss["Garr"], "11.57%" };
		[2] = { itemID = 16848, "=q4=Giantstalker's Epaulets", "=ds=" .. BabbleBoss["Sulfuron Harbinger"], "19.64%" };
		[3] = { itemID = 16845, "=q4=Giantstalker's Breastplate", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "15.83%" };
		[4] = { itemID = 16850, "=q4=Giantstalker's Bracers", "=ds=" .. AL["Trash Mobs"], "0.18%" };
		[5] = { itemID = 16852, "=q4=Giantstalker's Gloves", "=ds=" .. BabbleBoss["Shazzrah"], "18.58%" };
		[6] = { itemID = 16851, "=q4=Giantstalker's Belt", "=ds=" .. AL["Trash Mobs"], "0.17%" };
		[7] = { itemID = 16847, "=q4=Giantstalker's Leggings", "=ds=" .. BabbleBoss["Magmadar"], "13.28%" };
		[8] = { itemID = 16849, "=q4=Giantstalker's Boots", "=ds=" .. BabbleBoss["Gehennas"], "14.54%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16795, "=q4=Arcanist Crown", "=ds=" .. BabbleBoss["Garr"], "11.31%" };
		[2] = { itemID = 16797, "=q4=Arcanist Mantle", "=ds=" .. BabbleBoss["Baron Geddon"], "19.92%" };
		[3] = { itemID = 16798, "=q4=Arcanist Robes", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "16.51%" };
		[4] = { itemID = 16799, "=q4=Arcanist Bindings", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[5] = { itemID = 16801, "=q4=Arcanist Gloves", "=ds=" .. BabbleBoss["Shazzrah"], "19.59%" };
		[6] = { itemID = 16802, "=q4=Arcanist Belt", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[7] = { itemID = 16796, "=q4=Arcanist Leggings", "=ds=" .. BabbleBoss["Magmadar"], "14.57%" };
		[8] = { itemID = 16800, "=q4=Arcanist Boots", "=ds=" .. BabbleBoss["Lucifron"], "12.06%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
		[1] = { itemID = 16854, "=q4=Lawbringer Helm", "=ds=" .. BabbleBoss["Garr"], "7.23%" };
		[2] = { itemID = 16856, "=q4=Lawbringer Spaulders", "=ds=" .. BabbleBoss["Baron Geddon"], "12.62%" };
		[3] = { itemID = 16853, "=q4=Lawbringer Chestguard", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "9.53%" };
		[4] = { itemID = 16857, "=q4=Lawbringer Bracers", "=ds=" .. AL["Trash Mobs"], "0.11%" };
		[5] = { itemID = 16860, "=q4=Lawbringer Gauntlets", "=ds=" .. BabbleBoss["Gehennas"], "11.77%" };
		[6] = { itemID = 16858, "=q4=Lawbringer Belt", "=ds=" .. AL["Trash Mobs"], "0.10%" };
		[7] = { itemID = 16855, "=q4=Lawbringer Legplates", "=ds=" .. BabbleBoss["Magmadar"], "8.54%" };
		[8] = { itemID = 16859, "=q4=Lawbringer Boots", "=ds=" .. BabbleBoss["Lucifron"], "7.20%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
		[1] = { itemID = 11536, "=q4=Lawbringer Greathelm", "=ds=" .. BabbleBoss["Garr"], "7.23%" };
		[2] = { itemID = 11538, "=q4=Lawbringer Pauldrons", "=ds=" .. BabbleBoss["Baron Geddon"], "12.62%" };
		[3] = { itemID = 11535, "=q4=Lawbringer Breastplate", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "9.53%" };
		[4] = { itemID = 11531, "=q4=Lawbringer Wristguards", "=ds=" .. AL["Trash Mobs"], "0.11%" };
		[5] = { itemID = 11533, "=q4=Lawbringer Handguards", "=ds=" .. BabbleBoss["Gehennas"], "11.77%" };
		[6] = { itemID = 11534, "=q4=Lawbringer Waistguard", "=ds=" .. AL["Trash Mobs"], "0.10%" };
		[7] = { itemID = 11537, "=q4=Lawbringer Legguards", "=ds=" .. BabbleBoss["Magmadar"], "8.54%" };
		[8] = { itemID = 11532, "=q4=Lawbringer Stompers", "=ds=" .. BabbleBoss["Lucifron"], "7.20%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 16813, "=q4=Circlet of Prophecy", "=ds=" .. BabbleBoss["Garr"], "11.36%" };
		[2] = { itemID = 16816, "=q4=Mantle of Prophecy", "=ds=" .. BabbleBoss["Sulfuron Harbinger"], "21.06%" };
		[3] = { itemID = 16815, "=q4=Robes of Prophecy", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16819, "=q4=Vambraces of Prophecy", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[5] = { itemID = 16812, "=q4=Gloves of Prophecy", "=ds=" .. BabbleBoss["Gehennas"], "18.65%" };
		[6] = { itemID = 16817, "=q4=Girdle of Prophecy", "=ds=" .. AL["Trash Mobs"], "0.18%" };
		[7] = { itemID = 16814, "=q4=Pants of Prophecy", "=ds=" .. BabbleBoss["Magmadar"], "14.33%" };
		[8] = { itemID = 16811, "=q4=Boots of Prophecy", "=ds=" .. BabbleBoss["Shazzrah"], "14.90%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16821, "=q4=Nightslayer Cover", "=ds=" .. BabbleBoss["Garr"], "10.38%" };
		[2] = { itemID = 16823, "=q4=Nightslayer Shoulder Pads", "=ds=" .. BabbleBoss["Sulfuron Harbinger"], "20.66%" };
		[3] = { itemID = 16820, "=q4=Nightslayer Chestpiece", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "16.76%" };
		[4] = { itemID = 16825, "=q4=Nightslayer Bracelets", "=ds=" .. AL["Trash Mobs"], "0.17%" };
		[5] = { itemID = 16826, "=q4=Nightslayer Gloves", "=ds=" .. BabbleBoss["Gehennas"], "19.47%" };
		[6] = { itemID = 16827, "=q4=Nightslayer Belt", "=ds=" .. AL["Trash Mobs"], "0.15%" };
		[7] = { itemID = 16822, "=q4=Nightslayer Pants", "=ds=" .. BabbleBoss["Magmadar"], "13.83%" };
		[8] = { itemID = 16824, "=q4=Nightslayer Boots", "=ds=" .. BabbleBoss["Shazzrah"], "15.58%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
		[1] = { itemID = 16842, "=q4=Earthfury Helmet", "=ds=" .. BabbleBoss["Garr"], "3.91%" };
		[2] = { itemID = 16844, "=q4=Earthfury Epaulets", "=ds=" .. BabbleBoss["Baron Geddon"], "7.29%" };
		[3] = { itemID = 16841, "=q4=Earthfury Vestments", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "6.08%" };
		[4] = { itemID = 16840, "=q4=Earthfury Bracers", "=ds=" .. AL["Trash Mobs"], "0.06%" };
		[5] = { itemID = 16839, "=q4=Earthfury Gauntlets", "=ds=" .. BabbleBoss["Gehennas"], "7.38%" };
		[6] = { itemID = 16838, "=q4=Earthfury Belt", "=ds=" .. AL["Trash Mobs"], "0.07%" };
		[7] = { itemID = 16843, "=q4=Earthfury Legguards", "=ds=" .. BabbleBoss["Magmadar"], "4.73%" };
		[8] = { itemID = 16837, "=q4=Earthfury Boots", "=ds=" .. BabbleBoss["Lucifron"], "4.16%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
		[1] = { itemID = 11794, "=q4=Earthfury Cover", "=ds=" .. BabbleBoss["Garr"], "3.91%" };
		[2] = { itemID = 11796, "=q4=Earthfury Pauldrons", "=ds=" .. BabbleBoss["Baron Geddon"], "7.29%" };
		[3] = { itemID = 11792, "=q4=Earthfury Tunic", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "6.08%" };
		[4] = { itemID = 11793, "=q4=Earthfury Bands", "=ds=" .. AL["Trash Mobs"], "0.06%" };
		[5] = { itemID = 11791, "=q4=Earthfury Gloves", "=ds=" .. BabbleBoss["Gehennas"], "7.38%" };
		[6] = { itemID = 11790, "=q4=Earthfury Girdle", "=ds=" .. AL["Trash Mobs"], "0.07%" };
		[7] = { itemID = 11789, "=q4=Earthfury Leggings", "=ds=" .. BabbleBoss["Magmadar"], "4.73%" };
		[8] = { itemID = 11795, "=q4=Earthfury Treads", "=ds=" .. BabbleBoss["Lucifron"], "4.16%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16808, "=q4=Felheart Horns", "=ds=" .. BabbleBoss["Garr"], "10.62%" };
		[2] = { itemID = 16807, "=q4=Felheart Shoulder Pads", "=ds=" .. BabbleBoss["Baron Geddon"], "19.78%" };
		[3] = { itemID = 16809, "=q4=Felheart Robes", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "" };
		[4] = { itemID = 16804, "=q4=Felheart Bracers", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[5] = { itemID = 16805, "=q4=Felheart Gloves", "=ds=" .. BabbleBoss["Lucifron"], "14.89%" };
		[6] = { itemID = 16806, "=q4=Felheart Belt", "=ds=" .. AL["Trash Mobs"], "0.19%" };
		[7] = { itemID = 16810, "=q4=Felheart Pants", "=ds=" .. BabbleBoss["Magmadar"], "13.75%" };
		[8] = { itemID = 16803, "=q4=Felheart Slippers", "=ds=" .. BabbleBoss["Shazzrah"], "1" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 16866, "=q4=Helm of Might", "=ds=" .. BabbleBoss["Garr"], "11.39%" };
		[2] = { itemID = 16868, "=q4=Pauldrons of Might", "=ds=" .. BabbleBoss["Sulfuron Harbinger"], "21.14%" };
		[3] = { itemID = 16865, "=q4=Breastplate of Might", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16861, "=q4=Bracers of Might", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[5] = { itemID = 16863, "=q4=Gauntlets of Might", "=ds=" .. BabbleBoss["Lucifron"], "16.40%" };
		[6] = { itemID = 16864, "=q4=Belt of Might", "=ds=" .. AL["Trash Mobs"], "0.16%" };
		[7] = { itemID = 16867, "=q4=Legplates of Might", "=ds=" .. BabbleBoss["Magmadar"], "13.97%" };
		[8] = { itemID = 16862, "=q4=Sabatons of Might", "=ds=" .. BabbleBoss["Gehennas"], "14.48%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10480, "=q4=Faceguard of Might", "=ds=" .. BabbleBoss["Garr"] };
		[2] = { itemID = 10481, "=q4=Shoulderpads of Might", "=ds=" .. BabbleBoss["Sulfuron Harbinger"] };
		[3] = { itemID = 10482, "=q4=Chesttplate of Might", "=ds=" .. BabbleBoss["Golemagg the Incinerator"] };
		[4] = { itemID = 10483, "=q4=Wristguards of Might", "=ds=" .. AL["Trash Mobs"] };
		[5] = { itemID = 10484, "=q4=Handguards of Might", "=ds=" .. BabbleBoss["Lucifron"] };
		[6] = { itemID = 10485, "=q4=Girdle of Might", "=ds=" .. AL["Trash Mobs"] };
		[7] = { itemID = 10486, "=q4=Legguards of Might", "=ds=" .. BabbleBoss["Magmadar"] };
		[8] = { itemID = 10487, "=q4=Stompers of Might", "=ds=" .. BabbleBoss["Gehennas"] };
	};
};

-- T2 Sets
AtlasLoot_Data["T2"] = {
	Name = "Tier 2";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		[1] = { itemID = 16900, "=q4=Stormrage Cover", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16902, "=q4=Stormrage Pauldrons", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16897, "=q4=Stormrage Chestguard", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16904, "=q4=Stormrage Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16899, "=q4=Stormrage Handguards","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16903, "=q4=Stormrage Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16901, "=q4=Stormrage Legguards", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16898, "=q4=Stormrage Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = AL["Druid"] .. " - Tank";
		[1] = { itemID = 1516900, "=q4=Stormrage Cover", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516902, "=q4=Stormrage Pauldrons", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516897, "=q4=Stormrage Chestguard", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516904, "=q4=Stormrage Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516904, "=q4=Stormrage Handguards","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516899, "=q4=Stormrage Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516903, "=q4=Stormrage Legguards", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516898, "=q4=Stormrage Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = AL["Druid"] .. " - DPS";
		[1] = { itemID = 1516892, "=q4=Stormrage Cover", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516894, "=q4=Stormrage Pauldrons", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516889, "=q4=Stormrage Chestguard", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516896, "=q4=Stormrage Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516891, "=q4=Stormrage Handguards","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516895, "=q4=Stormrage Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516893, "=q4=Stormrage Legguards", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516890, "=q4=Stormrage Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16939, "=q4=Dragonstalker's Helm", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16937, "=q4=Dragonstalker's Spaulders", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16942, "=q4=Dragonstalker's Breastplate", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16935, "=q4=Dragonstalker's Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16940, "=q4=Dragonstalker's Gauntlets","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16936, "=q4=Dragonstalker's Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16938, "=q4=Dragonstalker's Legguards", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16941, "=q4=Dragonstalker's Greaves", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16914, "=q4=Netherwind Crown", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16917, "=q4=Netherwind Mantle", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16916, "=q4=Netherwind Robes", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16918, "=q4=Netherwind Bindings", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16913, "=q4=Netherwind Gloves","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16818, "=q4=Netherwind Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16915, "=q4=Netherwind Pants", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16912, "=q4=Netherwind Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 16955, "=q4=Judgement Crown", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16953, "=q4=Judgement Spaulders", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16958, "=q4=Judgement Breastplate", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16951, "=q4=Judgement Bindings", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16956, "=q4=Judgement Gauntlets","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16952, "=q4=Judgement Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16954, "=q4=Judgement Legplates", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16957, "=q4=Judgement Sabatons", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - Tank";
		[1] = { itemID = 1516955, "=q4=Judgement Crown", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516953, "=q4=Judgement Spaulders", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516958, "=q4=Judgement Breastplate", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516951, "=q4=Judgement Bindings", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516956, "=q4=Judgement Gauntlets","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516952, "=q4=Judgement Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516954, "=q4=Judgement Legplates", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516957, "=q4=Judgement Sabatons", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 16921, "=q4=Halo of Transcendence", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16924, "=q4=Pauldrons of Transcendence", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16923, "=q4=Robes of Transcendence", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16926, "=q4=Bindings of Transcendence", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16920, "=q4=Handguards of Transcendence","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16925, "=q4=Belt of Transcendence", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16922, "=q4=Leggings of Transcendence", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16919, "=q4=Boots of Transcendence", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - DPS";
		[1] = { itemID = 1516921, "=q4=Halo of Transcendence", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516924, "=q4=Pauldrons of Transcendence", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516923, "=q4=Robes of Transcendence", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516926, "=q4=Bindings of Transcendence", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516920, "=q4=Handguards of Transcendence","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516925, "=q4=Belt of Transcendence", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516922, "=q4=Leggings of Transcendence", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516919, "=q4=Boots of Transcendence", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16908, "=q4=Bloodfang Hood", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16832, "=q4=Bloodfang Spaulders", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16905, "=q4=Bloodfang Chestpiece", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16911, "=q4=Bloodfang Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16907, "=q4=Bloodfang Gloves","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16910, "=q4=Bloodfang Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16909, "=q4=Bloodfang Pants", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16906, "=q4=Bloodfang Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { itemID = 16947, "=q4=Helmet of Ten Storms", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16945, "=q4=Epaulets of Ten Storms", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16950, "=q4=Breastplate of Ten Storms", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16943, "=q4=Bracers of Ten Storms", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16948, "=q4=Gauntlets of Ten Storms","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16944, "=q4=Belt of Ten Storms", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16946, "=q4=Legplates of Ten Storms", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16949, "=q4=Greaves of Ten Storms", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		[1] = { itemID = 1516947, "=q4=Helmet of Ten Storms", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516945, "=q4=Epaulets of Ten Storms", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516950, "=q4=Breastplate of Ten Storms", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516943, "=q4=Bracers of Ten Storms", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516948, "=q4=Gauntlets of Ten Storms","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516944, "=q4=Belt of Ten Storms", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516946, "=q4=Legplates of Ten Storms", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516949, "=q4=Greaves of Ten Storms", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16929, "=q4=Nemesis Skullcap", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16932, "=q4=Nemesis Spaulders", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16931, "=q4=Nemesis Robes", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16934, "=q4=Nemesis Bracers", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16928, "=q4=Nemesis Gloves","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16933, "=q4=Nemesis Belt", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16930, "=q4=Nemesis Leggings", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16927, "=q4=Nemesis Boots", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10904, "=q4=Faceguard of Wrath", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 10902, "=q4=Shoulderpads of Wrath", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 10907, "=q4=Chestplate of Wrath", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 10900, "=q4=Wristguards of Wrath", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 10905, "=q4=Grippers of Wrath","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 10901, "=q4=Belt of Wrath", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 10903, "=q4=Legguards of Wrath", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 10906, "=q4=Stompers of Wrath", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 16963, "=q4=Helm of Wrath", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 16961, "=q4=Pauldrons of Wrath", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 16966, "=q4=Breastplate of Wrath", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 16959, "=q4=Bracelets of Wrath", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 16964, "=q4=Gauntlets of Wrath","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 16960, "=q4=Waistband of Wrath", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 16962, "=q4=Legplates of Wrath", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 16965, "=q4=Sabatons of Wrath", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 1516963, "=q4=Faceguard of Wrath", "=ds=" .. BabbleBoss["Onyxia"], "" };
		[2] = { itemID = 1516961, "=q4=Shoulderpads of Wrath", "=ds=" .. BabbleBoss["Chromaggus"], "" };
		[3] = { itemID = 1516966, "=q4=Chestplate of Wrath", "=ds=" .. BabbleBoss["Nefarian"], "" };
		[4] = { itemID = 1516959, "=q4=Wristguards of Wrath", "=ds=" .. BabbleBoss["Razorgore the Untamed"], "" };
		[5] = { itemID = 1516964, "=q4=Grippers of Wrath","=ds=" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"], "" };
		[6] = { itemID = 1516960, "=q4=Belt of Wrath", "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"], "" };
		[7] = { itemID = 1516962, "=q4=Legguards of Wrath", "=ds=" .. BabbleBoss["Ragnaros"], "" };
		[8] = { itemID = 1516965, "=q4=Stompers of Wrath", "=ds=" .. BabbleBoss["Broodlord Lashlayer"], "" };
	};
};

------------------------
--- Tier 3 Sets (T3) ---
------------------------

AtlasLoot_Data["T3"] = {
	Name = "Tier 3";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		[1] = { itemID = 22490, "=q4=Dreamwalker Headpiece", "=ds=" };
		[2] = { itemID = 22491, "=q4=Dreamwalker Spaulders", "=ds=" };
		[3] = { itemID = 22488, "=q4=Dreamwalker Tunic", "=ds=" };
		[4] = { itemID = 22495, "=q4=Dreamwalker Wristguards", "=ds=" };
		[5] = { itemID = 22493, "=q4=Dreamwalker Handguards", "=ds=" };
		[6] = { itemID = 22494, "=q4=Dreamwalker Girdle", "=ds=" };
		[7] = { itemID = 22489, "=q4=Dreamwalker Legguards", "=ds=" };
		[8] = { itemID = 22492, "=q4=Dreamwalker Boots", "=ds=" };
		[9] = { itemID = 23064, "=q4=Ring of the Dreamwalker", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 22438, "=q4=Cryptstalker Headpiece", "=ds=" };
		[2] = { itemID = 22439, "=q4=Cryptstalker Spaulders", "=ds=" };
		[3] = { itemID = 22436, "=q4=Cryptstalker Tunic", "=ds=" };
		[4] = { itemID = 22443, "=q4=Cryptstalker Wristguards", "=ds=" };
		[5] = { itemID = 22441, "=q4=Cryptstalker Handguards", "=ds=" };
		[6] = { itemID = 22442, "=q4=Cryptstalker Girdle", "=ds=" };
		[7] = { itemID = 22437, "=q4=Cryptstalker Legguards", "=ds=" };
		[8] = { itemID = 22440, "=q4=Cryptstalker Boots", "=ds=" };
		[9] = { itemID = 23067, "=q4=Ring of the Cryptstalker", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 22498, "=q4=Frostfire Circlet", "=ds=" };
		[2] = { itemID = 22499, "=q4=Frostfire Shoulderpads", "=ds=" };
		[3] = { itemID = 22496, "=q4=Frostfire Robe", "=ds=" };
		[4] = { itemID = 22503, "=q4=Frostfire Bindings", "=ds=" };
		[5] = { itemID = 22501, "=q4=Frostfire Gloves", "=ds=" };
		[6] = { itemID = 22502, "=q4=Frostfire Belt", "=ds=" };
		[7] = { itemID = 22497, "=q4=Frostfire Leggings", "=ds=" };
		[8] = { itemID = 22500, "=q4=Frostfire Sandals", "=ds=" };
		[9] = { itemID = 23062, "=q4=Frostfire Ring", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 22428, "=q4=Redemption Headpiece", "=ds=" };
		[2] = { itemID = 22429, "=q4=Redemption Spaulders", "=ds=" };
		[3] = { itemID = 22425, "=q4=Redemption Tunic", "=ds=" };
		[4] = { itemID = 22424, "=q4=Redemption Wristguards", "=ds=" };
		[5] = { itemID = 22426, "=q4=Redemption Handguards", "=ds=" };
		[6] = { itemID = 22431, "=q4=Redemption Girdle", "=ds=" };
		[7] = { itemID = 22427, "=q4=Redemption Legguards", "=ds=" };
		[8] = { itemID = 22430, "=q4=Redemption Boots", "=ds=" };
		[9] = { itemID = 23066, "=q4=Ring of Redemption", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 22514, "=q4=Circlet of Faith", "=ds=" };
		[2] = { itemID = 22515, "=q4=Shoulderpads of Faith", "=ds=" };
		[3] = { itemID = 22512, "=q4=Robe of Faith", "=ds=" };
		[4] = { itemID = 22519, "=q4=Bindings of Faith", "=ds=" };
		[5] = { itemID = 22517, "=q4=Gloves of Faith", "=ds=" };
		[6] = { itemID = 22518, "=q4=Belt of Faith", "=ds=" };
		[7] = { itemID = 22513, "=q4=Leggings of Faith", "=ds=" };
		[8] = { itemID = 22516, "=q4=Sandals of Faith", "=ds=" };
		[9] = { itemID = 23061, "=q4=Ring of Faith", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 22478, "=q4=Bonescythe Helmet", "=ds=" };
		[2] = { itemID = 22479, "=q4=Bonescythe Pauldrons", "=ds=" };
		[3] = { itemID = 22476, "=q4=Bonescythe Breastplate", "=ds=" };
		[4] = { itemID = 22483, "=q4=Bonescythe Bracers", "=ds=" };
		[5] = { itemID = 22481, "=q4=Bonescythe Gauntlets", "=ds=" };
		[6] = { itemID = 22482, "=q4=Bonescythe Waistguard", "=ds=" };
		[7] = { itemID = 22477, "=q4=Bonescythe Legplates", "=ds=" };
		[8] = { itemID = 22480, "=q4=Bonescythe Sabatons", "=ds=" };
		[9] = { itemID = 23060, "=q4=Bonescythe Ring", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { itemID = 22466, "=q4=Earthshatter Headpiece", "=ds=" };
		[2] = { itemID = 22467, "=q4=Earthshatter Spaulders", "=ds=" };
		[3] = { itemID = 22464, "=q4=Earthshatter Tunic", "=ds=" };
		[4] = { itemID = 22471, "=q4=Earthshatter Wristguards", "=ds=" };
		[5] = { itemID = 22469, "=q4=Earthshatter Handguards", "=ds=" };
		[6] = { itemID = 22470, "=q4=Earthshatter Girdle", "=ds=" };
		[7] = { itemID = 22465, "=q4=Earthshatter Legguards", "=ds=" };
		[8] = { itemID = 22468, "=q4=Earthshatter Boots", "=ds=" };
		[9] = { itemID = 23065, "=q4=Ring of the Earthshatterer", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 22506, "=q4=Plagueheart Circlet", "=ds=" };
		[2] = { itemID = 22507, "=q4=Plagueheart Shoulderpads", "=ds=" };
		[3] = { itemID = 22504, "=q4=Plagueheart Robe", "=ds=" };
		[4] = { itemID = 22511, "=q4=Plagueheart Bindings", "=ds=" };
		[5] = { itemID = 22509, "=q4=Plagueheart Gloves", "=ds=" };
		[6] = { itemID = 22510, "=q4=Plagueheart Belt", "=ds=" };
		[7] = { itemID = 22505, "=q4=Plagueheart Leggings", "=ds=" };
		[8] = { itemID = 22508, "=q4=Plagueheart Sandals", "=ds=" };
		[9] = { itemID = 23063, "=q4=Plagueheart Ring", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 22418, "=q4=Dreadnaught Helmet", "=ds=" };
		[2] = { itemID = 22419, "=q4=Dreadnaught Pauldrons", "=ds=" };
		[3] = { itemID = 22416, "=q4=Dreadnaught Breastplate", "=ds=" };
		[4] = { itemID = 22423, "=q4=Dreadnaught Bracers", "=ds=" };
		[5] = { itemID = 22421, "=q4=Dreadnaught Gauntlets", "=ds=" };
		[6] = { itemID = 22422, "=q4=Dreadnaught Waistguard", "=ds=" };
		[7] = { itemID = 22417, "=q4=Dreadnaught Legplates", "=ds=" };
		[8] = { itemID = 22420, "=q4=Dreadnaught Sabatons", "=ds=" };
		[9] = { itemID = 23059, "=q4=Ring of the Dreadnaught", "=ds=" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10490, "=q4=Dreadborne Helmet", "=ds=" };
		[2] = { itemID = 10491, "=q4=Dreadborne Pauldrons", "=ds=" };
		[3] = { itemID = 10488, "=q4=Dreadborne Breastplate", "=ds=" };
		[4] = { itemID = 10495, "=q4=Dreadborne Bracers", "=ds=" };
		[5] = { itemID = 10493, "=q4=Dreadborne Gauntlets", "=ds=" };
		[6] = { itemID = 10494, "=q4=Dreadborne Waistguard", "=ds=" };
		[7] = { itemID = 10489, "=q4=Dreadborne Legplates", "=ds=" };
		[8] = { itemID = 10492, "=q4=Dreadborne Sabatons", "=ds=" };
		[9] = { itemID = 10496, "=q4=Dreadborne Ring", "=ds=" };
	};
};

------------------------
--- Vanilla WoW Sets ---
------------------------

AtlasLoot_Data["ClassicSets"] = {
	Name = AL["Classic Sets"];
	{
		Name = AL["Defias Leather"];
		[1] = { itemID = 10399, "=q3=Blackened Defias Armor", "=ds=#s5#, =q2=#n6#", "14.77%" };
		[2] = { itemID = 10401, "=q2=Blackened Defias Gloves", "=ds=#s9#, =q2=#n9#", "1.76%" };
		[3] = { itemID = 10403, "=q3=Blackened Defias Belt", "=ds=#s10#, =q2=#n7#", "23.26%" };
		[4] = { itemID = 10400, "=q2=Blackened Defias Leggings", "=ds=#s11#, =q2=#n9#", "1.64%" };
		[5] = { itemID = 10402, "=q2=Blackened Defias Boots", "=ds=#s12#, =q2=#n8#", "1.23%" };
	};
	{
		Name = AL["Embrace of the Viper"];
		[1] = { itemID = 6473, "=q3=Armor of the Fang", "=ds=#s5#, =q2=#n5#", "52.05%" };
		[2] = { itemID = 10413, "=q3=Gloves of the Fang", "=ds=#s9#, =q2=#n4#", "1.20%" };
		[3] = { itemID = 10412, "=q3=Belt of the Fang", "=ds=#s10#, =q2=#n2#", "8.64%" };
		[4] = { itemID = 10410, "=q3=Leggings of the Fang", "=ds=#s11#, =q2=#n1#", "16.03%" };
		[5] = { itemID = 10411, "=q3=Footpads of the Fang", "=ds=#s12#, =q2=#n3#", "19.08%" };
	};
	{
		Name = AL["Chain of the Scarlet Crusade"];
		[1] = { itemID = 10328, "=q3=Scarlet Chestpiece", "=ds=#s5#, =q2=#n12#", "0.3%" };
		[2] = { itemID = 10333, "=q2=Scarlet Wristguards", "=ds=#s8#, =q2=#n15#", "1.6%" };
		[3] = { itemID = 10331, "=q2=Scarlet Gauntlets", "=ds=#s9#, =q2=#n13#", "1.7%" };
		[4] = { itemID = 10329, "=q2=Scarlet Belt", "=ds=#s10#, =q2=#n10#", "1.6%" };
		[5] = { itemID = 10330, "=q3=Scarlet Leggings", "=ds=#s11#, =q2=#n14#", "13.2%" };
		[6] = { itemID = 10332, "=q3=Scarlet Boots", "=ds=#s12#, =q2=#n11#", "0.1%" };
	};
	{
		Name = AL["The Gladiator"];
		[1] = { itemID = 11729, "=q3=Savage Gladiator Helm", "=ds=#s1#, =q2=#brd3#, #brd5#", "10.08%" };
		[2] = { itemID = 11726, "=q4=Savage Gladiator Chain", "=ds=#s5#, =q2=#brd3#", "14.52%" };
		[3] = { itemID = 11730, "=q3=Savage Gladiator Grips", "=ds=#s9#, =q2=#brd2#", "14.12%" };
		[4] = { itemID = 11728, "=q3=Savage Gladiator Leggings", "=ds=#s11#, =q2=#brd6#", "14.95%" };
		[5] = { itemID = 11731, "=q3=Savage Gladiator Greaves", "=ds=#s12#, =q2=#brd1#", "15.14%" };
	};
	{
		Name = AL["Ironweave Battlesuit"];
		[1] = { itemID = 22302, "=q3=Ironweave Cowl", "=ds=#s1#, =q2=#n16# (#z9#)", "27.72%" };
		[2] = { itemID = 22305, "=q3=Ironweave Mantle", "=ds=#s3#, =q2=#n17# (#z4#)", "30.39%" };
		[3] = { itemID = 22301, "=q3=Ironweave Robe", "=ds=#s5#, =q2=#n18# (#z6#)", "19.00%" };
		[4] = { itemID = 22313, "=q3=Ironweave Bracers", "=ds=#s8#, =q2=#n19# (#z10#)", "18.16%" };
		[5] = { itemID = 22304, "=q3=Ironweave Gloves", "=ds=#s9#, =q2=#n20# (#z13#)", "16.24%" };
		[6] = { itemID = 22306, "=q3=Ironweave Belt", "=ds=#s10#, =q2=#n21# (#z10#)", "20.28%" };
		[7] = { itemID = 22303, "=q3=Ironweave Pants", "=ds=#s11#, =q2=#n22# (#z5#)", "23.33%" };
		[8] = { itemID = 22311, "=q3=Ironweave Boots", "=ds=#s12#, =q2=#n23# (#z9#)", "12.31%" };
	};
	{
		Name = AL["The Postmaster"];
		[1] = { itemID = 13390, "=q3=The Postmaster's Band", "=ds=#s1#", "" };
		[2] = { itemID = 13388, "=q3=The Postmaster's Tunic", "=ds=#s5#", "" };
		[3] = { itemID = 13389, "=q3=The Postmaster's Trousers", "=ds=#s11#", "" };
		[4] = { itemID = 13391, "=q3=The Postmaster's Treads", "=ds=#s12#", "" };
		[5] = { itemID = 13392, "=q3=The Postmaster's Seal", "" };
	};
	{
		Name = AL["Shard of the Gods"];
		[1] = { itemID = 17082, "=q4=Shard of the Flame", "=ds=#s14#, =q2=#n35# (#z14#)", "4.46%" };
		[2] = { itemID = 17064, "=q4=Shard of the Scale", "=ds=#s14#, =q2=#n36# (#z15#)", "3.71%" };
	};
	{
		Name = AL["Spirit of Eskhandar"];
		[1] = { itemID = 18204, "=q4=Eskhandar's Pelt", "=ds=#s4#, =q2=#n37#", "9.16%" };
		[2] = { itemID = 18203, "=q4=Eskhandar's Right Claw", "=ds=#h3#, #w13#, =q2=#n38# (#z14#)", "16.97%" };
		[3] = { itemID = 18202, "=q4=Eskhandar's Left Claw", "=ds=#h4#, #w13#, =q2=#n39#", "12.36%" };
	};
	{
		Name = AL["Spider's Kiss"];
		[1] = { itemID = 13218, "=q3=Fang of the Crystal Spider", "=ds=#h1#, #w4#, =q2=#n41#", "15.46%" };
		[2] = { itemID = 13183, "=q3=Venomspitter", "=ds=#h1#, #w6#, =q2=#n42#", "13.07%" };
	};
	{
		Name = AL["Dal'Rend's Arms"];
		[1] = { itemID = 12940, "=q3=Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#, =q2=#n40#", "6.62%" };
		[2] = { itemID = 12939, "=q3=Dal'Rend's Tribal Guardian", "=ds=#h4#, #w10#, =q2=#n40#", "7.44%" };
	};
	{
		Name = AL["Necropile Raiment"];
		[1] = { itemID = 14633, "=q3=Necropile Mantle", "=ds=#s3#", "1.12%" };
		[2] = { itemID = 14626, "=q3=Necropile Robe", "=ds=#s5#", "1.27%" };
		[3] = { itemID = 14629, "=q3=Necropile Cuffs", "=ds=#s8#", "1.03%" };
		[4] = { itemID = 14632, "=q3=Necropile Leggings", "=ds=#s11#", "0.85%" };
		[5] = { itemID = 14631, "=q3=Necropile Boots", "=ds=#s12#", "0.88%" };
	};
	{
		Name = AL["Cadaverous Garb"];
		[1] = { itemID = 14637, "=q3=Cadaverous Armor", "=ds=#s5#", "1.51%" };
		[2] = { itemID = 14640, "=q3=Cadaverous Gloves", "=ds=#s9#", "0.82%" };
		[3] = { itemID = 14636, "=q3=Cadaverous Belt", "=ds=#s10#", "0.60%" };
		[4] = { itemID = 14638, "=q3=Cadaverous Leggings", "=ds=#s11#", "1.09%" };
		[5] = { itemID = 14641, "=q3=Cadaverous Walkers", "=ds=#s12#", "0.67%" };
	};
	{
		Name = AL["Bloodmail Regalia"];
		[1] = { itemID = 14611, "=q3=Bloodmail Hauberk", "=ds=#s5#", "0.54%" };
		[2] = { itemID = 14615, "=q3=Bloodmail Gauntlets", "=ds=#s9#", "0.09%" };
		[3] = { itemID = 14614, "=q3=Bloodmail Belt", "=ds=#s10#", "0.60%" };
		[4] = { itemID = 14612, "=q3=Bloodmail Legguards", "=ds=#s11#", "0.42%" };
		[5] = { itemID = 14616, "=q3=Bloodmail Boots", "=ds=#s12#", "0.36%" };
	};
	{
		Name = AL["Deathbone Guardian"];
		[1] = { itemID = 14624, "=q3=Deathbone Chestplate", "=ds=#s5#", "0.45%" };
		[2] = { itemID = 14622, "=q3=Deathbone Gauntlets", "=ds=#s9#", "0.45%" };
		[3] = { itemID = 14620, "=q3=Deathbone Girdle", "=ds=#s10#", "0.67%" };
		[4] = { itemID = 14623, "=q3=Deathbone Legguards", "=ds=#s11#", "1.12%" };
		[5] = { itemID = 14621, "=q3=Deathbone Sabatons", "=ds=#s12#", "0.57%" };
	};
	{
		Name = AL["Major Mojo Infusion"];
		[1] = { itemID = 19898, "=q3=Seal of Jin", "=ds=#s13#, =q2=#n28#", "8.81%" };
		[2] = { itemID = 19925, "=q3=Band of Jin", "=ds=#s13#, =q2=#n29#", "10.36%" };
	};
	{
		Name = AL["Overlord's Resolution"];
		[1] = { itemID = 19873, "=q3=Overlord's Crimson Band", "=ds=#s13#, =q2=#n33#", "10.12%" };
		[2] = { itemID = 19912, "=q3=Overlord's Onyx Band", "=ds=#s13#, =q2=#n30#", "14.51%" };
	};
	{
		Name = AL["Primal Blessing"];
		[1] = { itemID = 19896, "=q4=Thekal's Grasp", "=ds=#h3#, #w13#, =q2=#n28#", "5.20%" };
		[2] = { itemID = 19910, "=q4=Arlokk's Grasp", "=ds=#h4#, #w13#, =q2=#n30#", "4.54%" };
	};
	{
		Name = AL["Prayer of the Primal"];
		[1] = { itemID = 19863, "=q3=Primalist's Seal", "=ds=#s13#, =q2=#n33#", "9.72%" };
		[2] = { itemID = 19920, "=q3=Primalist's Band", "=ds=#s13#, =q2=#n31#", "8.95%" };
	};
	{
		Name = AL["Zanzil's Concentration"];
		[1] = { itemID = 19905, "=q3=Zanzil's Band", "=ds=#s13#, =q2=#n32#", "9.24%" };
		[2] = { itemID = 19893, "=q3=Zanzil's Seal", "=ds=#s13#, =q2=#n33#", "10.12%" };
	};
	{
		Name = AL["The Twin Blades of Hakkari"];
		[1] = { itemID = 19865, "=q4=Warblade of the Hakkari", "=ds=#h3#, #w10#, =q2=#n34#", "5.18%" };
		[2] = { itemID = 19866, "=q4=Warblade of the Hakkari", "=ds=#h4#, #w10#, =q2=#n33#", "4.55%" };
	};
};

---------------
--- ZG Sets ---
---------------

AtlasLoot_Data["ZGSets"] = {
	Name = AL["Zul'Gurub Sets"];
	Type = "ClassicRaid";
	{
		Name = AL["Haruspex's Garb"];
		[1] = { itemID = 19955, "=q4=Wushoolay's Charm of Nature" };
		[2] = { itemID = 19613, "=q4=Pristine Enchanted South Seas Kelp", "=ds=#r5#" };
		[3] = { itemID = 19838, "=q4=Zandalar Haruspex's Tunic", "=q4=#zgt9#, =ds=#r4#" };
		[4] = { itemID = 19839, "=q4=Zandalar Haruspex's Belt", "=q4=#zgt4#, =ds=#r3#" };
		[5] = { itemID = 19840, "=q4=Zandalar Haruspex's Bracers", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Predator's Armor"];
		[1] = { itemID = 19953, "=q4=Renataki's Charm of Beasts" };
		[2] = { itemID = 19621, "=q4=Maelstrom's Wrath", "=ds=#r5#" };
		[3] = { itemID = 19831, "=q4=Zandalar Predator's Mantle", "=q4=#zgt6#, =ds=#r4#" };
		[4] = { itemID = 19832, "=q4=Zandalar Predator's Belt", "=q4=#zgt2#, =ds=#r3#" };
		[5] = { itemID = 19833, "=q4=Zandalar Predator's Bracers", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Illusionist's Attire"];
		[1] = { itemID = 19959, "=q4=Hazza'rah's Charm of Magic" };
		[2] = { itemID = 19601, "=q4=Jewel of Kajaro", "=ds=#r5#" };
		[3] = { itemID = 20034, "=q4=Zandalar Illusionist's Robe", "=q4=#zgt1#, =ds=#r4#" };
		[4] = { itemID = 19845, "=q4=Zandalar Illusionist's Mantle", "=q4=#zgt2#, =ds=#r3#" };
		[5] = { itemID = 19846, "=q4=Zandalar Illusionist's Wraps", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Freethinker's Armor"];
		[1] = { itemID = 19952, "=q4=Gri'lek's Charm of Valor" };
		[2] = { itemID = 19588, "=q4=Hero's Brand", "=ds=#r5#" };
		[3] = { itemID = 19825, "=q4=Zandalar Freethinker's Breastplate", "=q4=#zgt9#, =ds=#r4#" };
		[4] = { itemID = 19826, "=q4=Zandalar Freethinker's Belt", "=q4=#zgt2#, =ds=#r3#" };
		[5] = { itemID = 19827, "=q4=Zandalar Freethinker's Armguards", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Confessor's Raiment"];
		[1] = { itemID = 19958, "=q4=Hazza'rah's Charm of Healing" };
		[2] = { itemID = 19594, "=q4=The All-Seeing Eye of Zuldazar", "=ds=#r5#" };
		[3] = { itemID = 19841, "=q4=Zandalar Confessor's Mantle", "=q4=#zgt6#, =ds=#r4#" };
		[4] = { itemID = 19842, "=q4=Zandalar Confessor's Bindings", "=q4=#zgt4#, =ds=#r3#" };
		[5] = { itemID = 19843, "=q4=Zandalar Confessor's Wraps", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Madcap's Outfit"];
		[1] = { itemID = 19954, "=q4=Renataki's Charm of Trickery" };
		[2] = { itemID = 19617, "=q4=Zandalarian Shadow Mastery Talisman", "=ds=#r5#" };
		[3] = { itemID = 19834, "=q4=Zandalar Madcap's Tunic", "=q4=#zgt6#, =ds=#r4#" };
		[4] = { itemID = 19835, "=q4=Zandalar Madcap's Mantle", "=q4=#zgt7#, =ds=#r3#" };
		[5] = { itemID = 19836, "=q4=Zandalar Madcap's Bracers", "=q4=#zgt8#, =ds=#r2#" };
	};
	{
		Name = AL["Augur's Regalia"];
		[1] = { itemID = 19956, "=q4=Wushoolay's Charm of Spirits" };
		[2] = { itemID = 19609, "=q4=Unmarred Vision of Voodress", "=ds=#r5#" };
		[3] = { itemID = 19828, "=q4=Zandalar Augur's Hauberk", "=q4=#zgt9#, =ds=#r4#" };
		[4] = { itemID = 19829, "=q4=Zandalar Augur's Belt", "=q4=#zgt7#, =ds=#r3#" };
		[5] = { itemID = 19830, "=q4=Zandalar Augur's Bracers", "=q4=#zgt8#, =ds=#r2#" };
	};
	{
		Name = AL["Demoniac's Threads"];
		[1] = { itemID = 19957, "=q4=Hazza'rah's Charm of Destruction" };
		[2] = { itemID = 19605, "=q4=Kezan's Unstoppable Taint", "=ds=#r5#" };
		[3] = { itemID = 20033, "=q4=Zandalar Demoniac's Robe", "=q4=#zgt1#, =ds=#r4#" };
		[4] = { itemID = 19849, "=q4=Zandalar Demoniac's Mantle", "=q4=#zgt4#, =ds=#r3#" };
		[5] = { itemID = 19848, "=q4=Zandalar Demoniac's Wraps", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Vindicator's Battlegear"];
		[1] = { itemID = 19951, "=q4=Gri'lek's Charm of Might" };
		[2] = { itemID = 19577, "=q4=Rage of Mugamba", "=ds=#r5#" };
		[3] = { itemID = 19822, "=q4=Zandalar Vindicator's Breastplate", "=q4=#zgt1#, =ds=#r4#" };
		[4] = { itemID = 19823, "=q4=Zandalar Vindicator's Belt", "=q4=#zgt7#, =ds=#r3#" };
		[5] = { itemID = 19824, "=q4=Zandalar Vindicator's Armguards", "=q4=#zgt8#, =ds=#r2#" };
	};
};

-----------------
--- AQ20 Sets ---
-----------------

AtlasLoot_Data["AQ20Sets"] = {
	Name = AL["AQ20 Class Sets"];
	Type = "ClassicRaid";
	{
		Name = AL["Symbols of Unending Life"];
		[1] = { itemID = 1506017, "=q4=Locket of Unending Life", "=q4=#aq20t1#, =ds=#r5#" };
		[2] = { itemID = 21409, "=q4=Cloak of Unending Life", "=q3=#aq20t5#, =ds=#r4#" };
		[3] = { itemID = 21408, "=q4=Band of Unending Life", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Trappings of the Unseen Path"];
		[1] = { itemID = 1506018, "=q4=Choker of the Unseen Path", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 21403, "=q4=Cloak of the Unseen Path", "=q3=#aq20t5#, =ds=#r4#" };
		[3] = { itemID = 21402, "=q4=Signet of the Unseen Path", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Trappings of Vaulted Secrets"];
		[1] = { itemID = 1506021, "=q4=Charm of Vaulted Secrets", "=q4=#aq20t1#, =ds=#r5#" };
		[2] = { itemID = 21415, "=q4=Drape of Vaulted Secrets", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 21414, "=q4=Band of Vaulted Secrets", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Battlegear of Eternal Justice"];
		[1] = { itemID = 1506020, "=q4=Medallion of Eternal Justice", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 21397, "=q4=Cape of Eternal Justice", "=q3=#aq20t5#, =ds=#r4#" };
		[3] = { itemID = 21396, "=q4=Ring of Eternal Justice", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Finery of Infinite Wisdom"];
		[1] = { itemID = 1506023, "=q4=Bayadere of Infinite Wisdom", "=q4=#aq20t1#, =ds=#r5#" };
		[2] = { itemID = 21412, "=q4=Shroud of Infinite Wisdom", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 21411, "=q4=Ring of Infinite Wisdom", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Emblems of Veiled Shadows"];
		[1] = { itemID = 1506021, "=q4=Charm of Vaulted Secrets", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 21406, "=q4=Cloak of Veiled Shadows", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 21405, "=q4=Band of Veiled Shadows", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Gift of the Gathering Storm"];
		[1] = { itemID = 1506024, "=q4=Necklace of the Gathering Storm", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 21400, "=q4=Cloak of the Gathering Storm", "=q3=#aq20t5#, =ds=#r4#" };
		[3] = { itemID = 21399, "=q4=Ring of the Gathering Storm", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Implements of Unspoken Names"];
		[1] = { itemID = 1506026, "=q4=Bayadere of Unspoken Names", "=q4=#aq20t1#, =ds=#r5#" };
		[2] = { itemID = 21418, "=q4=Shroud of Unspoken Names", "=q3=#aq20t5#, =ds=#r4#" };
		[3] = { itemID = 21417, "=q4=Ring of Unspoken Names", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Battlegear of Unyielding Strength"];
		[1] = { itemID = 1506025, "=q4=Collar of Unyielding Strength", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 21394, "=q4=Drape of Unyielding Strength", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 21393, "=q4=Signet of Unyielding Strength", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Keepsakes of Endless Machinations"];
		[1] = { itemID = 1506027, "=q4=Choker of Endless Machinations", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506028, "=q4=Shroud of Endless Machinations", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506029, "=q4=Loop of Endless Machinations", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Regalia of Roaring Earth"];
		[1] = { itemID = 1506019, "=q4=Pendant of Roaring Earth", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506031, "=q4=Drape of Roaring Earth", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506030, "=q4=Signet of Roaring Earth", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Relics of Ferocious Vigor"];
		[1] = { itemID = 1506034, "=q4=Choker of Ferocious Vigor", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506033, "=q4=Cape of Ferocious Vigor", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506032, "=q4=Signet of Ferocious Vigor", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Laurels of the Faithful Zealot"];
		[1] = { itemID = 1506037, "=q4=Locket of the Faithful Zealot", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506036, "=q4=Shroud of the Faithful Zealot", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506035, "=q4=Band of the Faithful Zealot", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Instruments of Masterful Technique"];
		[1] = { itemID = 1506040, "=q4=Locket of Masterful Technique", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506039, "=q4=Drape of Masterful Technique", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506038, "=q4=Band of Masterful Technique", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Decorations of Martial Prowess"];
		[1] = { itemID = 1506043, "=q4=Lariat of Martial Prowess", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506042, "=q4=Cloak of Martial Prowess", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506041, "=q4=Ring of Martial Prowess", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Trophies of Unrivaled Rage"];
		[1] = { itemID = 1506046, "=q4=Collar of Unrivaled Rage", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506045, "=q4=Cloak of Unrivaled Rage", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506044, "=q4=Signet of Unrivaled Rage", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Remnants of Expansive Research"];
		[1] = { itemID = 1506049, "=q4=Bayadere of Expansive Research", "=q4=#aq20t6#, =ds=#r5#" };
		[2] = { itemID = 1506048, "=q4=Drape of Expansive Research", "=q3=#aq20t2#, =ds=#r4#" };
		[3] = { itemID = 1506047, "=q4=Loop of Expansive Research", "=q3=#aq20t3#=ds=, #r3#" };
	};
};

-----------------
--- AQ40 Sets ---
-----------------

AtlasLoot_Data["T2.5"] = {
	Name = AL["AQ40 Class Sets"] .. " (Tier 2.5)";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		[1] = { itemID = 21357, "=q4=Genesis Vest" };
		[2] = { itemID = 21353, "=q4=Genesis Helm" };
		[3] = { itemID = 21356, "=q4=Genesis Trousers" };
		[4] = { itemID = 21354, "=q4=Genesis Shoulderpads" };
		[5] = { itemID = 21355, "=q4=Genesis Boots" };
	};
	{
		Name = AL["Druid"] .. " - Tank";
		[1] = { itemID = 1507029, "=q4=Genesis Carapace" };
		[2] = { itemID = 1507025, "=q4=Genesis Mask" };
		[3] = { itemID = 1507028, "=q4=Genesis Pants" };
		[4] = { itemID = 1507026, "=q4=Genesis Shoulderpads" };
		[5] = { itemID = 1507027, "=q4=Genesis Treads" };
	};
	{
		Name = AL["Druid"] .. " - Feral";
		[1] = { itemID = 1507024, "=q4=Genesis Garb" };
		[2] = { itemID = 1507020, "=q4=Genesis Visor" };
		[3] = { itemID = 1507023, "=q4=Genesis Legguards" };
		[4] = { itemID = 1507021, "=q4=Genesis Pauldrons" };
		[5] = { itemID = 1507022, "=q4=Genesis Footwraps" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 21370, "=q4=Striker's Hauberk" };
		[2] = { itemID = 21366, "=q4=Striker's Diadem" };
		[3] = { itemID = 21368, "=q4=Striker's Leggings" };
		[4] = { itemID = 21367, "=q4=Striker's Pauldrons" };
		[5] = { itemID = 21365, "=q4=Striker's Footguards" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 21343, "=q4=Enigma Robes" };
		[2] = { itemID = 21347, "=q4=Enigma Circlet" };
		[3] = { itemID = 21346, "=q4=Enigma Leggings" };
		[4] = { itemID = 21345, "=q4=Enigma Shoulderpads" };
		[5] = { itemID = 21344, "=q4=Enigma Boots" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 21389, "=q4=Avenger's Breastplate" };
		[2] = { itemID = 21387, "=q4=Avenger's Crown" };
		[3] = { itemID = 21390, "=q4=Avenger's Legguards" };
		[4] = { itemID = 21391, "=q4=Avenger's Pauldrons" };
		[5] = { itemID = 21388, "=q4=Avenger's Greaves" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - Tank";
		[1] = { itemID = 1507030, "=q4=Avenger's Carapace" };
		[2] = { itemID = 1507031, "=q4=Avenger's Laurels" };
		[3] = { itemID = 1507033, "=q4=Avenger's Legplates" };
		[4] = { itemID = 1507034, "=q4=Avenger's Shoulderguards" };
		[5] = { itemID = 1507032, "=q4=Avenger's Sabatons" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 21351, "=q4=Vestments of the Oracle" };
		[2] = { itemID = 21348, "=q4=Tiara of the Oracle" };
		[3] = { itemID = 21352, "=q4=Trousers of the Oracle" };
		[4] = { itemID = 21350, "=q4=Mantle of the Oracle" };
		[5] = { itemID = 21349, "=q4=Footwraps of the Oracle" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 21364, "=q4=Deathdealer's Vest" };
		[2] = { itemID = 21360, "=q4=Deathdealer's Helm" };
		[3] = { itemID = 21362, "=q4=Deathdealer's Leggings" };
		[4] = { itemID = 21361, "=q4=Deathdealer's Spaulders" };
		[5] = { itemID = 21359, "=q4=Deathdealer's Boots" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { itemID = 21374, "=q4=Stormcaller's Hauberk" };
		[2] = { itemID = 21372, "=q4=Stormcaller's Diadem" };
		[3] = { itemID = 21375, "=q4=Stormcaller's Leggings" };
		[4] = { itemID = 21376, "=q4=Stormcaller's Pauldrons" };
		[5] = { itemID = 21373, "=q4=Stormcaller's Footguards" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		[1] = { itemID = 1507017, "=q4=Stormcaller's Chestguard" };
		[2] = { itemID = 1507015, "=q4=Stormcaller's Crown" };
		[3] = { itemID = 1507018, "=q4=Stormcaller's Greaves" };
		[4] = { itemID = 1507019, "=q4=Stormcaller's Epaulets" };
		[5] = { itemID = 1507016, "=q4=Stormcaller's Stompers" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 21334, "=q4=Doomcaller's Robes" };
		[2] = { itemID = 21337, "=q4=Doomcaller's Circlet" };
		[3] = { itemID = 21336, "=q4=Doomcaller's Trousers" };
		[4] = { itemID = 21335, "=q4=Doomcaller's Mantle" };
		[5] = { itemID = 21338, "=q4=Doomcaller's Footwraps" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 21331, "=q4=Conqueror's Breastplate" };
		[2] = { itemID = 21329, "=q4=Conqueror's Crown" };
		[3] = { itemID = 21332, "=q4=Conqueror's Legguards" };
		[4] = { itemID = 21330, "=q4=Conqueror's Spaulders" };
		[5] = { itemID = 21333, "=q4=Conqueror's Greaves" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Parry Tank";
		[1] = { itemID = 1507002, "=q4=Conqueror's Carapace" };
		[2] = { itemID = 1507000, "=q4=Conqueror's Tusks" };
		[3] = { itemID = 1507003, "=q4=Conqueror's Tassets" };
		[4] = { itemID = 1507001, "=q4=Conqueror's Shoulderplates" };
		[5] = { itemID = 1507004, "=q4=Conqueror's Advance" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10912, "=q4=Conqueror's Chestplate" };
		[2] = { itemID = 10910, "=q4=Conqueror's Headguard" };
		[3] = { itemID = 10913, "=q4=Conqueror's Platelegs" };
		[4] = { itemID = 10911, "=q4=Conqueror's Shoulderpads" };
		[5] = { itemID = 10914, "=q4=Conqueror's War Stompers" };
	};
};

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsCLASSIC"] = {
	Name = AL["BoE World Epics"];
	Type = "ClassicDungeonExt";
	{
		Name = AL["Level 30-39"];
		[1] = { itemID = 867, "=q4=Gloves of Holy Might", "=ds=#s9#, #a2#", "" };
		[2] = { itemID = 1981, "=q4=Icemail Jerkin", "=ds=#s5#, #a3#", "" };
		[3] = { itemID = 1980, "=q4=Underworld Band", "" };
		[16] = { itemID = 869, "=q4=Dazzling Longsword", "" };
		[17] = { itemID = 1982, "=q4=Nightblade", "=ds=#h2#, #w10#", "" };
		[18] = { itemID = 870, "=q4=Fiery War Axe", "=ds=#h2#, #w1#", "" };
		[19] = { itemID = 868, "=q4=Ardent Custodian", "=ds=#h1#, #w6#", "" };
		[20] = { itemID = 873, "=q4=Staff of Jordan", "=ds=#w9#", "" };
		[21] = { itemID = 1204, "=q4=The Green Tower", "=ds=#w8#", "" };
		[22] = { itemID = 2825, "=q4=Bow of Searing Arrows", "=ds=#w2#", "" };
	};
	{
		Name = AL["Level 40-49"];
		[1] = { itemID = 3075, "=q4=Eye of Flame", "=ds=#s1#, #a1#", "" };
		[2] = { itemID = 940, "=q4=Robes of Insight", "=ds=#s5#, #a1#", "" };
		[3] = { itemID = 14551, "=q4=Edgemaster's Handguards", "=ds=#s9#, #a3#", "" };
		[4] = { itemID = 17007, "=q4=Stonerender Gauntlets", "=ds=#s9#, #a3#", "" };
		[5] = { itemID = 14549, "=q4=Boots of Avoidance", "=ds=#s12#, #a4#", "" };
		[6] = { itemID = 1315, "=q4=Lei of Lilies", "" };
		[7] = { itemID = 942, "=q4=Freezing Band", "" };
		[8] = { itemID = 1447, "=q4=Ring of Saviors", "" };
		[16] = { itemID = 2164, "=q4=Gut Ripper", "=ds=#h1#, #w4#", "" };
		[17] = { itemID = 2163, "=q4=Shadowblade", "=ds=#h1#, #w4#", "" };
		[18] = { itemID = 809, "=q4=Bloodrazor", "" };
		[19] = { itemID = 871, "=q4=Flurry Axe", "" };
		[20] = { itemID = 2291, "=q4=Kang the Decapitator", "=ds=#h2#, #w1#", "" };
		[21] = { itemID = 810, "=q4=Hammer of the Northern Wind", "=ds=#h1#, #w6#", "" };
		[22] = { itemID = 2915, "=q4=Taran Icebreaker", "" };
		[23] = { itemID = 812, "=q4=Glowing Brightwood Staff", "=ds=#w9#", "" };
		[24] = { itemID = 943, "=q4=Warden Staff", "=ds=#w9#", "" };
		[25] = { itemID = 1169, "=q4=Blackskull Shield", "=ds=#w8#", "" };
		[26] = { itemID = 1979, "=q4=Wall of the Dead", "=ds=#w8#", "" };
		[27] = { itemID = 2824, "=q4=Hurricane", "=ds=#w2#", "" };
		[28] = { itemID = 2100, "=q4=Precisely Calibrated Boomstick", "=ds=#w5#", "" };
	};
	{
		Name = AL["Level 50-60"];
		[1] = { itemID = 3475, "=q4=Cloak of Flames", "" };
		[2] = { itemID = 14553, "=q4=Sash of Mercy", "=ds=#s10#, #a2#", "" };
		[3] = { itemID = 2245, "=q4=Helm of Narv", "=ds=#s1#, #a3#", "" };
		[4] = { itemID = 14552, "=q4=Stockade Pauldrons", "=ds=#s3#, #a4#", "" };
		[5] = { itemID = 14554, "=q4=Cloudkeeper Legplates", "=ds=#s11#, #a4#", "" };
		[6] = { itemID = 1443, "=q4=Jeweled Amulet of Cainwyn", "" };
		[7] = { itemID = 14558, "=q4=Lady Maye's Pendant", "" };
		[8] = { itemID = 2246, "=q4=Myrmidon's Signet", "" };
		[9] = { itemID = 833, "=q4=Lifestone", "" };
		[10] = { itemID = 14557, "=q4=The Lion Horn of Stormwind", "" };
		[16] = { itemID = 14555, "=q4=Alcor's Sunrazor", "=ds=#h1#, #w4#", "" };
		[17] = { itemID = 2244, "=q4=Krol Blade", "" };
		[18] = { itemID = 1728, "=q4=Teebu's Blazing Longsword", "" };
		[19] = { itemID = 2801, "=q4=Blade of Hanna", "=ds=#h2#, #w10#", "" };
		[20] = { itemID = 647, "=q4=Destiny", "=ds=#h2#, #w10#", "" };
		[21] = { itemID = 811, "=q4=Axe of the Deep Woods", "" };
		[22] = { itemID = 1263, "=q4=Brain Hacker", "=ds=#h2#, #w1#", "" };
		[23] = { itemID = 2243, "=q4=Hand of Edward the Odd", "=ds=#h1#, #w6#", "" };
		[24] = { itemID = 944, "=q4=Elemental Mage Staff", "=ds=#w9#", "" };
		[25] = { itemID = 1168, "=q4=Skullflame Shield", "=ds=#w8#", "" };
		[26] = { itemID = 2099, "=q4=Dwarven Hand Cannon", "=ds=#w5#", "" };
	};
};

-----------
--- PvP ---
-----------

----------------------
--- Alterac Valley ---
----------------------

AtlasLoot_Data["AVMisc"] = {
	Name = BabbleZone["Alterac Valley"];
	{
		Name = AL["Misc. Rewards"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#m7#", desc = "=q5=#b1#" };
		[2] = { itemID = 19030, "=q4=Stormpike Battle Charger", "50000 #alliance#" };
		[3] = { itemID = 19045, "=q3=Stormpike Battle Standard", "=ds=#e14#", "15000 #alliance#" };
		[4] = { itemID = 19032, "=q1=Stormpike Battle Tabard", "=ds=#s7#", "15000 #alliance#" };
		[6] = { itemID = 19316, "=q2=Ice Threaded Arrow", "=ds=#w17#", "60 #silver# 1 #faction#" };
		[7] = { itemID = 17348, "=q1=Major Healing Draught", "=ds=#e2#", "10 #silver# 8 #faction#" };
		[8] = { itemID = 17349, "=q1=Superior Healing Draught", "=ds=#e2#", "5 #silver# 1 #faction#" };
		[9] = { itemID = 19301, "=q1=Alterac Manna Biscuit", "=ds=#e3#", "70 #silver#" };
		[10] = { itemID = 19307, "=q1=Alterac Heavy Runecloth Bandage", "=ds=#e5#", "80 #silver#" };
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#m6#", desc = "=q5=#b2#" };
		[17] = { itemID = 19029, "=q4=Horn of the Frostwolf Howler", "50000 #horde#" };
		[18] = { itemID = 19046, "=q3=Frostwolf Battle Standard", "=ds=#e14#", "15000 #horde#" };
		[19] = { itemID = 19031, "=q1=Frostwolf Battle Tabard", "=ds=#s7#", "15000 #horde#" };
		[21] = { itemID = 19317, "=q2=Ice Threaded Bullet", "=ds=#w18#", "60 #silver# 1 #faction#" };
		[22] = { itemID = 17351, "=q1=Major Mana Draught", "=ds=#e2#", "10 #silver# 8 #faction#" };
		[23] = { itemID = 17352, "=q1=Superior Mana Draught", "=ds=#e2#", "5 #silver# 1 #faction#" };
		[24] = { itemID = 19318, "=q1=Bottled Alterac Spring Water", "=ds=#e4#", "50 #silver#" };
	};
	{
		Name = "Alliance";
		[2] = { itemID = 19086, "=q3=Stormpike Sage's Cloak", "1600 #alliance#" };
		[3] = { itemID = 19084, "=q3=Stormpike Soldier's Cloak", "1600 #alliance#" };
		[4] = { itemID = 19094, "=q3=Stormpike Cloth Girdle", "=ds=#s10#, #a1#", "3000 #alliance#" };
		[5] = { itemID = 19093, "=q3=Stormpike Leather Girdle", "=ds=#s10#, #a2#", "3000 #alliance#" };
		[6] = { itemID = 19092, "=q3=Stormpike Mail Girdle", "=ds=#s10#, #a3#", "3000 #alliance#" };
		[7] = { itemID = 19091, "=q3=Stormpike Plate Girdle", "=ds=#s10#, #a4#", "3000 #alliance#" };
		[8] = { itemID = 19098, "=q3=Stormpike Sage's Pendant", "1600 #alliance#" };
		[9] = { itemID = 19097, "=q3=Stormpike Soldier's Pendant", "1600 #alliance#" };
		[10] = { itemID = 19100, "=q3=Electrified Dagger", "=ds=#h1#, #w4#", "2400 #alliance#" };
		[11] = { itemID = 19104, "=q3=Stormstrike Hammer", "=ds=#h1#, #w6#", "2400 #alliance#" };
		[12] = { itemID = 19102, "=q3=Crackling Staff", "=ds=#w9#", "3000 #alliance#" };
		[13] = { itemID = 19320, "=q3=Gnoll Skin Bandolier", "=ds=#w20#", "1600 #alliance#" };
		[14] = { itemID = 19319, "=q3=Harpy Hide Quiver", "=ds=#w19#", "1600 #alliance#" };
		[17] = { itemID = 19325, "=q4=Don Julio's Band", "5000 #faction#" };
		[18] = { itemID = 21563, "=q4=Don Rodrigo's Band", "5000 #faction#" };
		[19] = { itemID = 19312, "=q4=Lei of the Lifegiver", "5000 #faction#" };
		[20] = { itemID = 19315, "=q4=Therazane's Touch", "5000 #faction#" };
		[21] = { itemID = 19308, "=q4=Tome of Arcane Domination", "5000 #faction#" };
		[22] = { itemID = 19309, "=q4=Tome of Shadow Force", "5000 #faction#" };
		[23] = { itemID = 19311, "=q4=Tome of Fiery Arcana", "5000 #faction#" };
		[24] = { itemID = 19310, "=q4=Tome of the Ice Lord", "5000 #faction#" };
		[25] = { itemID = 19324, "=q4=The Lobotomizer", "=ds=#h1#, #w4#", "5000 #faction#" };
		[26] = { itemID = 19321, "=q4=The Immovable Object", "=ds=#w8#", "5000 #faction#" };
		[27] = { itemID = 19323, "=q4=The Unstoppable Force", "5000 #faction#" };
	};
	{
		Name = "Horde";
		[2] = { itemID = 19085, "=q3=Frostwolf Advisor's Cloak", "1600 #horde#" };
		[3] = { itemID = 19083, "=q3=Frostwolf Legionnaire's Cloak", "1600 #horde#" };
		[4] = { itemID = 19090, "=q3=Frostwolf Cloth Belt", "=ds=#s10#, #a1#", "3000 #horde#" };
		[5] = { itemID = 19089, "=q3=Frostwolf Leather Belt", "=ds=#s10#, #a2#", "3000 #horde#" };
		[6] = { itemID = 19088, "=q3=Frostwolf Mail Belt", "=ds=#s10#, #a3#", "3000 #horde#" };
		[7] = { itemID = 19087, "=q3=Frostwolf Plate Belt", "=ds=#s10#, #a4#", "3000 #horde#" };
		[8] = { itemID = 19096, "=q3=Frostwolf Advisor's Pendant", "1600 #horde#" };
		[9] = { itemID = 19095, "=q3=Frostwolf Legionnaire's Pendant", "1600 #horde#" };
		[10] = { itemID = 19099, "=q3=Glacial Blade", "=ds=#h1#, #w4#", "2400 #horde#" };
		[11] = { itemID = 19103, "=q3=Frostbite", "=ds=#h1#, #w6#", "2400 #horde#" };
		[12] = { itemID = 19101, "=q3=Whiteout Staff", "=ds=#w9#", "3000 #horde#" };
		[13] = { itemID = 19320, "=q3=Gnoll Skin Bandolier", "=ds=#w20#", "1600 #horde#" };
		[14] = { itemID = 19319, "=q3=Harpy Hide Quiver", "=ds=#w19#", "1600 #horde#" };
		[17] = { itemID = 19325, "=q4=Don Julio's Band", "5000 #faction#" };
		[18] = { itemID = 21563, "=q4=Don Rodrigo's Band", "5000 #faction#" };
		[19] = { itemID = 19312, "=q4=Lei of the Lifegiver", "5000 #faction#" };
		[20] = { itemID = 19315, "=q4=Therazane's Touch", "5000 #faction#" };
		[21] = { itemID = 19308, "=q4=Tome of Arcane Domination", "5000 #faction#" };
		[22] = { itemID = 19309, "=q4=Tome of Shadow Force", "5000 #faction#" };
		[23] = { itemID = 19311, "=q4=Tome of Fiery Arcana", "5000 #faction#" };
		[24] = { itemID = 19310, "=q4=Tome of the Ice Lord", "5000 #faction#" };
		[25] = { itemID = 19324, "=q4=The Lobotomizer", "=ds=#h1#, #w4#", "5000 #faction#" };
		[26] = { itemID = 19321, "=q4=The Immovable Object", "=ds=#w8#", "5000 #faction#" };
		[27] = { itemID = 19323, "=q4=The Unstoppable Force", "5000 #faction#" };
	};
};

--------------------
--- Arathi Basin ---
--------------------

AtlasLoot_Data["AB_A"] = {
	Name = BabbleZone["Arathi Basin"] .. " (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 17349, "=q1=Superior Healing Draught", "=ds=", "5 #silver# 1 #alliance#" };
		[2] = { itemID = 17352, "=q1=Superior Mana Draught", "=ds=", "5 #silver# 1 #alliance#" };
		[3] = { itemID = 20225, "=q1=Highlander's Enriched Ration", "=ds=", "18 #silver#" };
		[4] = { itemID = 20227, "=q1=Highlander's Iron Ration", "=ds=", "13,5 #silver#" };
		[5] = { itemID = 20226, "=q1=Highlander's Field Ration", "=ds=", "9 #silver#" };
		[6] = { itemID = 20243, "=q1=Highlander's Runecloth Bandage", "=ds=", "18 #silver#" };
		[7] = { itemID = 20237, "=q1=Highlander's Mageweave Bandage", "=ds=", "13,5 #silver#" };
		[8] = { itemID = 20244, "=q1=Highlander's Silk Bandage", "=ds=", "9 #silver#" };
		[9] = { itemID = 21119, "=q3=Talisman of Arathor", "=ds=", "300 #alliance#" };
		[10] = { itemID = 21118, "=q3=Talisman of Arathor", "=ds=", "300 #alliance#" };
		[11] = { itemID = 21117, "=q3=Talisman of Arathor", "=ds=", "400 #alliance#" };
		[12] = { itemID = 20071, "=q3=Talisman of Arathor", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["Level 60 Rewards"];
		[1] = { itemID = 20073, "=q4=Cloak of the Honor Guard", "=ds=", "5000 #alliance#" };
		[2] = { itemID = 20070, "=q4=Sageclaw", "=ds=", "9000 #alliance#" };
		[3] = { itemID = 20069, "=q4=Ironbark Staff", "=ds=", "16000 #alliance#" };
	};
	{
		Name = AL["Level 40-49 Rewards"];
		[1] = { itemID = 20097, "=q3=Highlander's Cloth Girdle", "=ds=", "400 #alliance#" };
		[2] = { itemID = 20094, "=q3=Highlander's Cloth Boots", "=ds=", "400 #alliance#" };
		[3] = { itemID = 20115, "=q3=Highlander's Leather Girdle", "=ds=", "400 #alliance#" };
		[4] = { itemID = 20103, "=q3=Highlander's Lizardhide Girdle", "=ds=", "400 #alliance#" };
		[5] = { itemID = 20112, "=q3=Highlander's Leather Boots", "=ds=", "400 #alliance#" };
		[6] = { itemID = 20100, "=q3=Highlander's Lizardhide Boots", "=ds=", "400 #alliance#" };
		[7] = { itemID = 20089, "=q3=Highlander's Chain Girdle", "=ds=", "300 #alliance#" };
		[8] = { itemID = 20088, "=q3=Highlander's Chain Girdle", "=ds=", "400 #alliance#" };
		[9] = { itemID = 20119, "=q3=Highlander's Mail Girdle", "=ds=", "300 #alliance#" };
		[10] = { itemID = 20118, "=q3=Highlander's Mail Girdle", "=ds=", "400 #alliance#" };
		[11] = { itemID = 20092, "=q3=Highlander's Chain Greaves", "=ds=", "300 #alliance#" };
		[12] = { itemID = 20091, "=q3=Highlander's Chain Greaves", "=ds=", "400 #alliance#" };
		[13] = { itemID = 20122, "=q3=Highlander's Mail Greaves", "=ds=", "300 #alliance#" };
		[14] = { itemID = 20121, "=q3=Highlander's Mail Greaves", "=ds=", "400 #alliance#" };
		[15] = { itemID = 20107, "=q3=Highlander's Lamellar Girdle", "=ds=", "300 #alliance#" };
		[16] = { itemID = 20106, "=q3=Highlander's Lamellar Girdle", "=ds=", "400 #alliance#" };
		[17] = { itemID = 20125, "=q3=Highlander's Plate Girdle", "=ds=", "300 #alliance#" };
		[18] = { itemID = 20124, "=q3=Highlander's Plate Girdle", "=ds=", "400 #alliance#" };
		[19] = { itemID = 20110, "=q3=Highlander's Lamellar Greaves", "=ds=", "300 #alliance#" };
		[20] = { itemID = 20109, "=q3=Highlander's Lamellar Greaves", "=ds=", "400 #alliance#" };
		[21] = { itemID = 20128, "=q3=Highlander's Plate Greaves", "=ds=", "300 #alliance#" };
		[22] = { itemID = 20127, "=q3=Highlander's Plate Greaves", "=ds=", "400 #alliance#" };
	};
	{
		Name = AL["Level 30-39 Rewards"];
		[1] = { itemID = 20098, "=q3=Highlander's Cloth Girdle", "=ds=", "300 #alliance#" };
		[2] = { itemID = 20095, "=q3=Highlander's Cloth Boots", "=ds=", "300 #alliance#" };
		[3] = { itemID = 20116, "=q3=Highlander's Leather Girdle", "=ds=", "300 #alliance#" };
		[4] = { itemID = 20104, "=q3=Highlander's Lizardhide Girdle", "=ds=", "300 #alliance#" };
		[5] = { itemID = 20113, "=q3=Highlander's Leather Boots", "=ds=", "300 #alliance#" };
		[6] = { itemID = 20101, "=q3=Highlander's Lizardhide Boots", "=ds=", "300 #alliance#" };
	};
	{
		Name = AL["Level 20-29 Rewards"];
		[1] = { itemID = 20099, "=q3=Highlander's Cloth Girdle", "=ds=", "300 #alliance#" };
		[2] = { itemID = 20096, "=q3=Highlander's Cloth Boots", "=ds=", "300 #alliance#" };
		[3] = { itemID = 20117, "=q3=Highlander's Leather Girdle", "=ds=", "300 #alliance#" };
		[4] = { itemID = 20105, "=q3=Highlander's Lizardhide Girdle", "=ds=", "300 #alliance#" };
		[5] = { itemID = 20120, "=q3=Highlander's Mail Girdle", "=ds=", "300 #alliance#" };
		[6] = { itemID = 20090, "=q3=Highlander's Padded Girdle", "=ds=", "300 #alliance#" };
		[7] = { itemID = 20114, "=q3=Highlander's Leather Boots", "=ds=", "300 #alliance#" };
		[8] = { itemID = 20102, "=q3=Highlander's Lizardhide Boots", "=ds=", "300 #alliance#" };
		[9] = { itemID = 20123, "=q3=Highlander's Mail Greaves", "=ds=", "300 #alliance#" };
		[10] = { itemID = 20093, "=q3=Highlander's Padded Greaves", "=ds=", "300 #alliance#" };
		[11] = { itemID = 20108, "=q3=Highlander's Lamellar Girdle", "=ds=", "300 #alliance#" };
		[12] = { itemID = 20126, "=q3=Highlander's Mail Girdle", "=ds=", "300 #alliance#" };
		[13] = { itemID = 20111, "=q3=Highlander's Lamellar Greaves", "=ds=", "300 #alliance#" };
		[14] = { itemID = 20129, "=q3=Highlander's Mail Greaves", "=ds=", "300 #alliance#" };
	};
	{
		Name = AL["The Highlander's Intent"];
		[1] = { itemID = 20061, "=q4=Highlander's Epaulets", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20047, "=q3=Highlander's Cloth Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20054, "=q3=Highlander's Cloth Boots", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Purpose"];
		[1] = { itemID = 20059, "=q4=Highlander's Leather Shoulders", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20045, "=q3=Highlander's Leather Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20052, "=q3=Highlander's Leather Boots", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Will"];
		[1] = { itemID = 20060, "=q4=Highlander's Lizardhide Shoulders", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20046, "=q3=Highlander's Lizardhide Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20053, "=q3=Highlander's Lizardhide Boots", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Determination"];
		[1] = { itemID = 20055, "=q4=Highlander's Chain Pauldrons", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20043, "=q3=Highlander's Chain Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20050, "=q3=Highlander's Chain Greaves", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Fortitude"];
		[1] = { itemID = 20056, "=q4=Highlander's Mail Pauldrons", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20044, "=q3=Highlander's Mail Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20051, "=q3=Highlander's Mail Greaves", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Resolution"];
		[1] = { itemID = 20057, "=q4=Highlander's Plate Spaulders", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20041, "=q3=Highlander's Plate Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20048, "=q3=Highlander's Plate Greaves", "=ds=", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Resolve"];
		[1] = { itemID = 20058, "=q4=Highlander's Lamellar Spaulders", "=ds=", "9000 #alliance#" };
		[2] = { itemID = 20042, "=q3=Highlander's Lamellar Girdle", "=ds=", "3000 #alliance#" };
		[3] = { itemID = 20049, "=q3=Highlander's Lamellar Greaves", "=ds=", "3000 #alliance#" };
	};
};

AtlasLoot_Data["AB_H"] = {
	Name = BabbleZone["Arathi Basin"] .. " (Horde)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 17349, "=q1=Superior Healing Draught", "=ds=", "5 #silver# 5 #horde#" };
		[2] = { itemID = 17352, "=q1=Superior Mana Draught", "=ds=", "5 #silver# 5 #horde#" };
		[3] = { itemID = 20222, "=q1=Defiler's Enriched Ration", "=ds=", "18 #silver#" };
		[4] = { itemID = 20224, "=q1=Defiler's Iron Ration", "=ds=", "15 #silver#" };
		[5] = { itemID = 20223, "=q1=Defiler's Field Ration", "=ds=", "9 #silver#" };
		[6] = { itemID = 20234, "=q1=Defiler's Runecloth Bandage", "=ds=", "18 #silver#" };
		[7] = { itemID = 20232, "=q1=Defiler's Mageweave Bandage", "=ds=", "15 #silver#" };
		[8] = { itemID = 20235, "=q1=Defiler's Silk Bandage", "=ds=", "9 #silver#" };
		[9] = { itemID = 21116, "=q3=Defiler's Talisman", "=ds=", "300 #horde#" };
		[10] = { itemID = 21120, "=q3=Defiler's Talisman", "=ds=", "300 #horde#" };
		[11] = { itemID = 21115, "=q3=Defiler's Talisman", "=ds=", "400 #horde#" };
		[12] = { itemID = 20072, "=q3=Defiler's Talisman", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["Level 60 Rewards"];
		[1] = { itemID = 20068, "=q4=Deathguard's Cloak", "=ds=", "5000 #horde#" };
		[2] = { itemID = 20214, "=q4=Mindfang", "=ds=", "9000 #horde#" };
		[3] = { itemID = 20220, "=q4=Ironbark Staff", "=ds=", "16000 #horde#" };
	};
	{
		Name = AL["Level 40-49 Rewards"];
		[1] = { itemID = 20165, "=q3=Defiler's Cloth Girdle", "=ds=", "400 #horde#" };
		[2] = { itemID = 20160, "=q3=Defiler's Cloth Boots", "=ds=", "400 #horde#" };
		[3] = { itemID = 20193, "=q3=Defiler's Leather Girdle", "=ds=", "400 #horde#" };
		[4] = { itemID = 20174, "=q3=Defiler's Lizardhide Girdle", "=ds=", "400 #horde#" };
		[5] = { itemID = 20189, "=q3=Defiler's Leather Boots", "=ds=", "400 #horde#" };
		[6] = { itemID = 20170, "=q3=Defiler's Lizardhide Boots", "=ds=", "400 #horde#" };
		[7] = { itemID = 20153, "=q3=Defiler's Chain Girdle", "=ds=", "300 #horde#" };
		[8] = { itemID = 20151, "=q3=Defiler's Chain Girdle", "=ds=", "400 #horde#" };
		[9] = { itemID = 20198, "=q3=Defiler's Mail Girdle", "=ds=", "300 #horde#" };
		[10] = { itemID = 20196, "=q3=Defiler's Mail Girdle", "=ds=", "400 #horde#" };
		[11] = { itemID = 20156, "=q3=Defiler's Chain Greaves", "=ds=", "300 #horde#" };
		[12] = { itemID = 20155, "=q3=Defiler's Chain Greaves", "=ds=", "400 #horde#" };
		[13] = { itemID = 20200, "=q3=Defiler's Mail Greaves", "=ds=", "300 #horde#" };
		[14] = { itemID = 20202, "=q3=Defiler's Mail Greaves", "=ds=", "400 #horde#" };
		[15] = { itemID = 20180, "=q3=Defiler's Lamellar Girdle", "=ds=", "300 #horde#" };
		[16] = { itemID = 20179, "=q3=Defiler's Lamellar Girdle", "=ds=", "400 #horde#" };
		[17] = { itemID = 20206, "=q3=Defiler's Plate Girdle", "=ds=", "300 #horde#" };
		[18] = { itemID = 20205, "=q3=Defiler's Plate Girdle", "=ds=", "400 #horde#" };
		[19] = { itemID = 20183, "=q3=Defiler's Lamellar Greaves", "=ds=", "300 #horde#" };
		[20] = { itemID = 20185, "=q3=Defiler's Lamellar Greaves", "=ds=", "400 #horde#" };
		[21] = { itemID = 20209, "=q3=Defiler's Plate Greaves", "=ds=", "300 #horde#" };
		[22] = { itemID = 20211, "=q3=Defiler's Plate Greaves", "=ds=", "400 #horde#" };
	};
	{
		Name = AL["Level 30-39 Rewards"];
		[1] = { itemID = 20166, "=q3=Defiler's Cloth Girdle", "=ds=", "300 #horde#" };
		[2] = { itemID = 20161, "=q3=Defiler's Cloth Boots", "=ds=", "300 #horde#" };
		[3] = { itemID = 20192, "=q3=Defiler's Leather Girdle", "=ds=", "300 #horde#" };
		[4] = { itemID = 20173, "=q3=Defiler's Lizardhide Girdle", "=ds=", "300 #horde#" };
		[5] = { itemID = 20187, "=q3=Defiler's Leather Boots", "=ds=", "300 #horde#" };
		[6] = { itemID = 20168, "=q3=Defiler's Lizardhide Boots", "=ds=", "300 #horde#" };
	};
	{
		Name = AL["Level 20-29 Rewards"];
		[1] = { itemID = 20164, "=q3=Defiler's Cloth Girdle", "=ds=", "300 #horde#" };
		[2] = { itemID = 20162, "=q3=Defiler's Cloth Boots", "=ds=", "300 #horde#" };
		[3] = { itemID = 20191, "=q3=Defiler's Leather Girdle", "=ds=", "300 #horde#" };
		[4] = { itemID = 20172, "=q3=Defiler's Lizardhide Girdle", "=ds=", "300 #horde#" };
		[5] = { itemID = 20152, "=q3=Defiler's Chain Girdle", "=ds=", "300 #horde#" };
		[6] = { itemID = 20197, "=q3=Defiler's Padded Girdle", "=ds=", "300 #horde#" };
		[7] = { itemID = 20188, "=q3=Defiler's Leather Boots", "=ds=", "300 #horde#" };
		[8] = { itemID = 20169, "=q3=Defiler's Lizardhide Boots", "=ds=", "300 #horde#" };
		[9] = { itemID = 20201, "=q3=Defiler's Mail Greaves", "=ds=", "300 #horde#" };
		[0] = { itemID = 20157, "=q3=Defiler's Chain Greaves", "=ds=", "300 #horde#" };
		[10] = { itemID = 20178, "=q3=Defiler's Lamellar Girdle", "=ds=", "300 #horde#" };
		[11] = { itemID = 20207, "=q3=Defiler's Mail Girdle", "=ds=", "300 #horde#" };
		[12] = { itemID = 20182, "=q3=Defiler's Lamellar Greaves", "=ds=", "300 #horde#" };
		[13] = { itemID = 20210, "=q3=Defiler's Mail Greaves", "=ds=", "300 #horde#" };
	};
	{
		Name = AL["The Defiler's Intent"];
		[1] = { itemID = 20176, "=q4=Defiler's Epaulets", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20163, "=q3=Defiler's Cloth Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20159, "=q3=Defiler's Cloth Boots", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Purpose"];
		[1] = { itemID = 20194, "=q4=Defiler's Leather Shoulders", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20190, "=q3=Defiler's Leather Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20186, "=q3=Defiler's Leather Boots", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Will"];
		[1] = { itemID = 20175, "=q4=Defiler's Lizardhide Shoulders", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20171, "=q3=Defiler's Lizardhide Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20167, "=q3=Defiler's Lizardhide Boots", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Determination"];
		[1] = { itemID = 20158, "=q3=Defiler's Chain Pauldrons", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20150, "=q3=Defiler's Chain Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20154, "=q3=Defiler's Chain Greaves", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Fortitude"];
		[1] = { itemID = 20203, "=q4=Defiler's Mail Pauldrons", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20195, "=q3=Defiler's Mail Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20199, "=q3=Defiler's Mail Greaves", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Resolution"];
		[1] = { itemID = 20212, "=q4=Defiler's Plate Spaulders", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20204, "=q3=Defiler's Plate Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20208, "=q3=Defiler's Plate Greaves", "=ds=", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Resolve"];
		[1] = { itemID = 20184, "=q4=Defiler's Lamellar Spaulders", "=ds=", "9000 #horde#" };
		[2] = { itemID = 20177, "=q3=Defiler's Lamellar Girdle", "=ds=", "3000 #horde#" };
		[3] = { itemID = 20181, "=q3=Defiler's Lamellar Greaves", "=ds=", "3000 #horde#" };
	};
};

---------------------
--- Warsong Gulch ---
---------------------

AtlasLoot_Data["WSG_A"] = {
	Name = BabbleZone["Warsong Gulch"] .. " (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 19506, "=q1=Silverwing Battle Tabard", "=ds=", "12000 #faction#" };
		[2] = { itemID = 17348, "=q1=Major Healing Draught", "=ds=", "10 #silver# 2 #faction#" };
		[3] = { itemID = 17349, "=q1=Superior Healing Draught", "=ds=", "5 #silver# 5 #faction#" };
		[4] = { itemID = 19060, "=q1=Warsong Gulch Enriched Ration", "=ds=", "20 #silver#" };
		[5] = { itemID = 19062, "=q1=Warsong Gulch Field Ration", "=ds=", "10 #silver#" };
		[6] = { itemID = 19067, "=q1=Warsong Gulch Mageweave Bandage", "=ds=", "15 #silver#" };
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 20428, "=q3=Caretaker's Cape", "=ds=", "100 #alliance#" };
		[2] = { itemID = 19533, "=q3=Caretaker's Cape", "=ds=", "100 #alliance#" };
		[3] = { itemID = 19532, "=q3=Caretaker's Cape", "=ds=", "300 #alliance#" };
		[4] = { itemID = 19531, "=q3=Caretaker's Cape", "=ds=", "300 #alliance#" };
		[5] = { itemID = 19530, "=q3=Caretaker's Cape", "=ds=", "1600 #alliance#" };
		[7] = { itemID = 20444, "=q3=Sentinel's Medallion", "=ds=", "100 #alliance#" };
		[8] = { itemID = 19541, "=q3=Sentinel's Medallion", "=ds=", "100 #alliance#" };
		[9] = { itemID = 19540, "=q3=Sentinel's Medallion", "=ds=", "300 #alliance#" };
		[10] = { itemID = 19539, "=q3=Sentinel's Medallion", "=ds=", "300 #alliance#" };
		[11] = { itemID = 19538, "=q3=Sentinel's Medallion", "=ds=", "1600 #alliance#" };
		[13] = { itemID = 21568, "=q3=Rune of Duty", "=ds=", "300 #alliance#" };
		[14] = { itemID = 21567, "=q3=Rune of Duty", "=ds=", "300 #alliance#" };
		[16] = { itemID = 20431, "=q3=Lorekeeper's Ring", "=ds=", "100 #alliance#" };
		[17] = { itemID = 19525, "=q3=Lorekeeper's Ring", "=ds=", "100 #alliance#" };
		[18] = { itemID = 19524, "=q3=Lorekeeper's Ring", "=ds=", "300 #alliance#" };
		[19] = { itemID = 19523, "=q3=Lorekeeper's Ring", "=ds=", "300 #alliance#" };
		[20] = { itemID = 19522, "=q3=Lorekeeper's Ring", "=ds=", "1600 #alliance#" };
		[22] = { itemID = 20439, "=q3=Protector's Band", "=ds=", "100 #alliance#" };
		[23] = { itemID = 19517, "=q3=Protector's Band", "=ds=", "100 #alliance#" };
		[24] = { itemID = 19515, "=q3=Protector's Band", "=ds=", "300 #alliance#" };
		[25] = { itemID = 19516, "=q3=Protector's Band", "=ds=", "300 #alliance#" };
		[26] = { itemID = 19514, "=q3=Protector's Band", "=ds=", "1600 #alliance#" };
		[28] = { itemID = 21566, "=q3=Rune of Perfection", "=ds=", "300 #alliance#" };
		[29] = { itemID = 21565, "=q3=Rune of Perfection", "=ds=", "300 #alliance#" };
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 20443, "=q3=Sentinel's Blade", "=ds=", "300 #alliance#" };
		[2] = { itemID = 19549, "=q3=Sentinel's Blade", "=ds=", "400 #alliance#" };
		[3] = { itemID = 19548, "=q3=Sentinel's Blade", "=ds=", "500 #alliance#" };
		[4] = { itemID = 19547, "=q3=Sentinel's Blade", "=ds=", "700 #alliance#" };
		[5] = { itemID = 19546, "=q3=Sentinel's Blade", "=ds=", "6000 #alliance#" };
		[7] = { itemID = 20440, "=q3=Protector's Sword", "=ds=", "300 #alliance#" };
		[8] = { itemID = 19557, "=q3=Protector's Sword", "=ds=", "400 #alliance#" };
		[9] = { itemID = 19556, "=q3=Protector's Sword", "=ds=", "500 #alliance#" };
		[10] = { itemID = 19555, "=q3=Protector's Sword", "=ds=", "700 #alliance#" };
		[11] = { itemID = 19554, "=q3=Protector's Sword", "=ds=", "6000 #alliance#" };
		[16] = { itemID = 20434, "=q3=Lorekeeper's Staff", "=ds=", "500 #alliance#" };
		[17] = { itemID = 19573, "=q3=Lorekeeper's Staff", "=ds=", "700 #alliance#" };
		[18] = { itemID = 19572, "=q3=Lorekeeper's Staff", "=ds=", "1000 #alliance#" };
		[19] = { itemID = 19571, "=q3=Lorekeeper's Staff", "=ds=", "5000 #alliance#" };
		[20] = { itemID = 19570, "=q3=Lorekeeper's Staff", "=ds=", "15000 #alliance#" };
		[22] = { itemID = 20438, "=q3=Outrunner's Bow", "=ds=", "300 #alliance#" };
		[23] = { itemID = 19565, "=q3=Outrunner's Bow", "=ds=", "400 #alliance#" };
		[24] = { itemID = 19564, "=q3=Outrunner's Bow", "=ds=", "500 #alliance#" };
		[25] = { itemID = 19563, "=q3=Outrunner's Bow", "=ds=", "700 #alliance#" };
		[26] = { itemID = 19562, "=q3=Outrunner's Bow", "=ds=", "6000 #alliance#" };
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { itemID = 19597, "=q4=Dryad's Wrist Bindings", "=ds=", "500 #alliance#" };
		[2] = { itemID = 19596, "=q4=Dryad's Wrist Bindings", "=ds=", "700 #alliance#" };
		[3] = { itemID = 19595, "=q4=Dryad's Wrist Bindings", "=ds=", "5000 #alliance#" };
		[5] = { itemID = 19590, "=q4=Forest Stalker's Bracers", "=ds=", "500 #alliance#" };
		[6] = { itemID = 19589, "=q4=Forest Stalker's Bracers", "=ds=", "700 #alliance#" };
		[7] = { itemID = 19587, "=q4=Forest Stalker's Bracers", "=ds=", "5000 #alliance#" };
		[9] = { itemID = 19584, "=q4=Windtalker's Wristguards", "=ds=", "500 #alliance#" };
		[10] = { itemID = 19583, "=q4=Windtalker's Wristguards", "=ds=", "700 #alliance#" };
		[11] = { itemID = 19582, "=q4=Windtalker's Wristguards", "=ds=", "5000 #alliance#" };
		[13] = { itemID = 19581, "=q4=Berserker Bracers", "=ds=", "500 #alliance#" };
		[14] = { itemID = 19580, "=q4=Berserker Bracers", "=ds=", "700 #alliance#" };
		[15] = { itemID = 19578, "=q4=Berserker Bracers", "=ds=", "5000 #alliance#" };
		[16] = { itemID = 22752, "=q4=Sentinel's Silk Leggings", "=ds=", "9000 #alliance#" };
		[18] = { itemID = 22749, "=q4=Sentinel's Leather Pants", "=ds=", "9000 #alliance#" };
		[19] = { itemID = 22750, "=q4=Sentinel's Lizardhide Pants", "=ds=", "9000 #alliance#" };
		[21] = { itemID = 22748, "=q4=Sentinel's Chain Leggings", "=ds=", "9000 #alliance#" };
		[22] = { itemID = 30497, "=q4=Sentinel's Mail Leggings", "=ds=", "9000 #alliance#" };
		[24] = { itemID = 22753, "=q4=Sentinel's Lamellar Legguards", "=ds=", "9000 #alliance#" };
		[25] = { itemID = 22672, "=q4=Sentinel's Plate Legguards", "=ds=", "9000 #alliance#" };
	};
};

AtlasLoot_Data["WSG_H"] = {
	Name = BabbleZone["Warsong Gulch"] .. " (Horde)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 19505, "=q1=Warsong Battle Tabard", "=ds=", "12000 #faction#" };
		[2] = { itemID = 17351, "=q1=Major Mana Draught", "=ds=", "10 #silver# 2 #faction#" };
		[3] = { itemID = 17352, "=q1=Superior Mana Draught", "=ds=", "5 #silver# 5 #faction#" };
		[4] = { itemID = 19061, "=q1=Warsong Gulch Iron Ration", "=ds=", "15 #silver#" };
		[5] = { itemID = 19066, "=q1=Warsong Gulch Runecloth Bandage", "=ds=", "20 #silver#" };
		[6] = { itemID = 19068, "=q1=Warsong Gulch Silk Bandage", "=ds=", "10 #silver#" };
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 20427, "=q3=Battle Healer's Cloak", "=ds=", "100 #horde#" };
		[2] = { itemID = 19529, "=q3=Battle Healer's Cloak", "=ds=", "100 #horde#" };
		[3] = { itemID = 19528, "=q3=Battle Healer's Cloak", "=ds=", "300 #horde#" };
		[4] = { itemID = 19527, "=q3=Battle Healer's Cloak", "=ds=", "300 #horde#" };
		[5] = { itemID = 19526, "=q3=Battle Healer's Cloak", "=ds=", "1600 #horde#" };
		[7] = { itemID = 20442, "=q3=Scout's Medallion", "=ds=", "100 #horde#" };
		[8] = { itemID = 19537, "=q3=Scout's Medallion", "=ds=", "100 #horde#" };
		[9] = { itemID = 19536, "=q3=Scout's Medallion", "=ds=", "300 #horde#" };
		[10] = { itemID = 19535, "=q3=Scout's Medallion", "=ds=", "300 #horde#" };
		[11] = { itemID = 19534, "=q3=Scout's Medallion", "=ds=", "1600 #horde#" };
		[13] = { itemID = 21568, "=q3=Rune of Duty", "=ds=", "300 #horde#" };
		[14] = { itemID = 21567, "=q3=Rune of Duty", "=ds=", "300 #horde#" };
		[16] = { itemID = 20426, "=q3=Advisor's Ring", "=ds=", "100 #horde#" };
		[17] = { itemID = 19521, "=q3=Advisor's Ring", "=ds=", "100 #horde#" };
		[18] = { itemID = 19520, "=q3=Advisor's Ring", "=ds=", "300 #horde#" };
		[19] = { itemID = 19519, "=q3=Advisor's Ring", "=ds=", "300 #horde#" };
		[20] = { itemID = 19518, "=q3=Advisor's Ring", "=ds=", "1600 #horde#" };
		[22] = { itemID = 20429, "=q3=Legionnaire's Band", "=ds=", "100 #horde#" };
		[23] = { itemID = 19513, "=q3=Legionnaire's Band", "=ds=", "100 #horde#" };
		[24] = { itemID = 19512, "=q3=Legionnaire's Band", "=ds=", "300 #horde#" };
		[25] = { itemID = 19511, "=q3=Legionnaire's Band", "=ds=", "300 #horde#" };
		[26] = { itemID = 19510, "=q3=Legionnaire's Band", "=ds=", "1600 #horde#" };
		[28] = { itemID = 21566, "=q3=Rune of Perfection", "=ds=", "300 #horde#" };
		[29] = { itemID = 21565, "=q3=Rune of Perfection", "=ds=", "300 #horde#" };
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 20441, "=q3=Scout's Blade", "=ds=", "300 #horde#" };
		[2] = { itemID = 19545, "=q3=Scout's Blade", "=ds=", "400 #horde#" };
		[3] = { itemID = 19544, "=q3=Scout's Blade", "=ds=", "500 #horde#" };
		[4] = { itemID = 19543, "=q3=Scout's Blade", "=ds=", "700 #horde#" };
		[5] = { itemID = 19542, "=q3=Scout's Blade", "=ds=", "6000 #horde#" };
		[7] = { itemID = 20430, "=q3=Legionnaire's Sword", "=ds=", "300 #horde#" };
		[8] = { itemID = 19553, "=q3=Legionnaire's Sword", "=ds=", "400 #horde#" };
		[9] = { itemID = 19552, "=q3=Legionnaire's Sword", "=ds=", "500 #horde#" };
		[10] = { itemID = 19551, "=q3=Legionnaire's Sword", "=ds=", "700 #horde#" };
		[11] = { itemID = 19550, "=q3=Legionnaire's Sword", "=ds=", "6000 #horde#" };
		[16] = { itemID = 20425, "=q3=Advisor's Gnarled Staff", "=ds=", "500 #horde#" };
		[17] = { itemID = 19569, "=q3=Advisor's Gnarled Staff", "=ds=", "700 #horde#" };
		[18] = { itemID = 19568, "=q3=Advisor's Gnarled Staff", "=ds=", "1000 #horde#" };
		[19] = { itemID = 19567, "=q3=Advisor's Gnarled Staff", "=ds=", "5000 #horde#" };
		[20] = { itemID = 19566, "=q3=Advisor's Gnarled Staff", "=ds=", "15000 #horde#" };
		[22] = { itemID = 20437, "=q3=Outrider's Bow", "=ds=", "300 #horde#" };
		[23] = { itemID = 19561, "=q3=Outrider's Bow", "=ds=", "400 #horde#" };
		[24] = { itemID = 19560, "=q3=Outrider's Bow", "=ds=", "500 #horde#" };
		[25] = { itemID = 19559, "=q3=Outrider's Bow", "=ds=", "700 #horde#" };
		[26] = { itemID = 19558, "=q3=Outrider's Bow", "=ds=", "6000 #horde#" };
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { itemID = 19597, "=q4=Dryad's Wrist Bindings", "=ds=", "500 #horde#" };
		[2] = { itemID = 19596, "=q4=Dryad's Wrist Bindings", "=ds=", "700 #horde#" };
		[3] = { itemID = 19595, "=q4=Dryad's Wrist Bindings", "=ds=", "5000 #horde#" };
		[5] = { itemID = 19590, "=q4=Forest Stalker's Bracers", "=ds=", "500 #horde#" };
		[6] = { itemID = 19589, "=q4=Forest Stalker's Bracers", "=ds=", "700 #horde#" };
		[7] = { itemID = 19587, "=q4=Forest Stalker's Bracers", "=ds=", "5000 #horde#" };
		[9] = { itemID = 19584, "=q4=Windtalker's Wristguards", "=ds=", "500 #horde#" };
		[10] = { itemID = 19583, "=q4=Windtalker's Wristguards", "=ds=", "700 #horde#" };
		[11] = { itemID = 19582, "=q4=Windtalker's Wristguards", "=ds=", "5000 #horde#" };
		[13] = { itemID = 19581, "=q4=Berserker Bracers", "=ds=", "500 #horde#" };
		[14] = { itemID = 19580, "=q4=Berserker Bracers", "=ds=", "700 #horde#" };
		[15] = { itemID = 19578, "=q4=Berserker Bracers", "=ds=", "5000 #horde#" };
		[16] = { itemID = 22747, "=q4=Outrider's Silk Leggings", "=ds=", "9000 #horde#" };
		[18] = { itemID = 22740, "=q4=Outrider's Leather Pants", "=ds=", "9000 #horde#" };
		[19] = { itemID = 22741, "=q4=Outrider's Lizardhide Pants", "=ds=", "9000 #horde#" };
		[21] = { itemID = 22673, "=q4=Outrider's Chain Leggings", "=ds=", "9000 #horde#" };
		[22] = { itemID = 22676, "=q4=Outrider's Mail Leggings", "=ds=", "9000 #horde#" };
		[24] = { itemID = 30498, "=q4=Outrider's Lamellar Legguards", "=ds=", "9000 #horde#" };
		[25] = { itemID = 22651, "=q4=Outrider's Plate Legguards", "=ds=", "9000 #horde#" };
	};
};

---------------------------------------
--- PvP Level 60 Rare and Epic Sets ---
---------------------------------------
AtlasLoot_Data["PVPDruid"] = {
	Name = AL["Druid"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16424, "=q3=Lieutenant Commander's Dragonhide Headguard, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16423, "=q3=Lieutenant Commander's Dragonhide Shoulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16421, "=q3=Knight-Captain's Dragonhide Chestpiece, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16397, "=q3=Knight-Lieutenant's Dragonhide Grips, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16422, "=q3=Knight-Captain's Dragonhide Leggings, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16393, "=q3=Knight-Lieutenant's Dragonhide Treads, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23308, "=q3=Lieutenant Commander's Dragonhide Headguard", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23309, "=q3=Lieutenant Commander's Dragonhide Shoulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23294, "=q3=Knight-Captain's Dragonhide Chestpiece", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23280, "=q3=Knight-Lieutenant's Dragonhide Grips", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23295, "=q3=Knight-Captain's Dragonhide Leggings", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23281, "=q3=Knight-Lieutenant's Dragonhide Treads", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16451, "=q4=Field Marshal's Dragonhide Helmet", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16449, "=q4=Field Marshal's Dragonhide Spaulders", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16452, "=q4=Field Marshal's Dragonhide Breastplate", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16448, "=q4=Marshal's Dragonhide Gauntlets", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16450, "=q4=Marshal's Dragonhide Legguards", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16459, "=q4=Marshal's Dragonhide Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116550, "=q4=Grand Marshal's Chain Helm, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116551, "=q4=Grand Marshal's Chain Spaulders, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116549, "=q4=Grand Marshal's Chain Breastplate, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116555, "=q4=Grand Marshal's Chain Grips, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116552, "=q4=Grand Marshal's Chain Legguards, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116554, "=q4=Grand Marshal's Chain Boots, =ds=", "1430 #arena# #horde#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16503, "=q3=Champion's Dragonhide Headguard, =ds=", "9435 #horde#" };
		[2] = { itemID = 16501, "=q3=Champion's Dragonhide Shoulders, =ds=", "6885 #horde#" };
		[3] = { itemID = 16504, "=q3=Legionnaire's Dragonhide Chestpiece, =ds=", "9435 #horde#" };
		[4] = { itemID = 16496, "=q3=Blood Guard's Dragonhide Grips, =ds=", "5000 #horde#" };
		[5] = { itemID = 16502, "=q3=Legionnaire's Dragonhide Leggings, =ds=", "9435 #horde#" };
		[6] = { itemID = 16494, "=q3=Blood Guard's Dragonhide Treads, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23253, "=q3=Champion's Dragonhide Headguard", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23254, "=q3=Champion's Dragonhide Shoulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22877, "=q3=Legionnaire's Dragonhide Chestpiece", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22863, "=q3=Blood Guard's Dragonhide Grips", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22878, "=q3=Legionnaire's Dragonhide Leggings", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22852, "=q3=Blood Guard's Dragonhide Treads", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16550, "=q4=Warlord's Dragonhide Helmet", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16551, "=q4=Warlord's Dragonhide Epaulets", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16549, "=q4=Warlord's Dragonhide Hauberk", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16555, "=q4=General's Dragonhide Gloves", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16552, "=q4=General's Dragonhide Leggings", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16554, "=q4=General's Dragonhide Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116451, "=q4=High Warlord's Dragonhide Helmet, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116449, "=q4=High Warlord's Dragonhide Epaulets, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116452, "=q4=High Warlord's Dragonhide Hauberk, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116448, "=q4=High High Warlord's Dragonhide Gloves, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116450, "=q4=High High Warlord's Dragonhide Leggings, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116459, "=q4=High High Warlord's Dragonhide Boots, =ds=", "1430 #arena# #alliance#" };
	};
};



AtlasLoot_Data["PVPHunter"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16428, "=q3=Lieutenant Commander's Chain Helm, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16427, "=q3=Lieutenant Commander's Chain Shoulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16425, "=q3=Knight-Captain's Chain Hauberk, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16403, "=q3=Knight-Lieutenant's Chain Vices, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16426, "=q3=Knight-Captain's Chain Legguards, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16401, "=q3=Knight-Lieutenant's Chain Greaves, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23306, "=q3=Lieutenant Commander's Chain Helm", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23307, "=q3=Lieutenant Commander's Chain Shoulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23292, "=q3=Knight-Captain's Chain Hauberk", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23279, "=q3=Knight-Lieutenant's Chain Vices", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23293, "=q3=Knight-Captain's Chain Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23278, "=q3=Knight-Lieutenant's Chain Greaves", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16465, "=q4=Field Marshal's Chain Helm", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16468, "=q4=Field Marshal's Chain Spaulders", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16466, "=q4=Field Marshal's Chain Breastplate", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16463, "=q4=Marshal's Chain Grips", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16467, "=q4=Marshal's Chain Legguards", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16462, "=q4=Marshal's Chain Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116465, "=q4=Grand Marshal's Chain Helm, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116468, "=q4=Grand Marshal's Chain Spaulders, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116466, "=q4=Grand Marshal's Chain Breastplate, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116463, "=q4=Grand Marshal's Chain Grips, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116467, "=q4=Grand Marshal's Chain Legguards, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116462, "=q4=Grand Marshal's Chain Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16526, "=q3=Champion's Chain Helm, =ds=", "9435 #horde#" };
		[2] = { itemID = 16528, "=q3=Champion's Chain Shoulders, =ds=", "6885 #horde#" };
		[3] = { itemID = 16525, "=q3=Legionnaire's Chain Hauberk, =ds=", "9435 #horde#" };
		[4] = { itemID = 16530, "=q3=Blood Guard's Chain Vices, =ds=", "5000 #horde#" };
		[5] = { itemID = 16527, "=q3=Legionnaire's Chain Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 16531, "=q3=Blood Guard's Chain Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23251, "=q3=Champion's Chain Helm", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23252, "=q3=Champion's Chain Shoulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22874, "=q3=Legionnaire's Chain Hauberk", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22862, "=q3=Blood Guard's Chain Vices", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22875, "=q3=Legionnaire's Chain Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22843, "=q3=Blood Guard's Chain Greaves", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16566, "=q4=Warlord's Chain Helmet", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16568, "=q4=Warlord's Chain Shoulders", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16565, "=q4=Warlord's Chain Chestpiece", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16571, "=q4=General's Chain Gloves", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16567, "=q4=General's Chain Legguards", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16569, "=q4=General's Chain Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116566, "=q4=High Warlord's Chain Helmet, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116568, "=q4=High Warlord's Chain Shoulders, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116565, "=q4=High Warlord's Chain Chestpiece, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116571, "=q4=High High Warlord's Chain Gloves, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116567, "=q4=High High Warlord's Chain Legguards, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116569, "=q4=High High Warlord's Chain Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPMage"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16416, "=q3=Lieutenant Commander's Silk Cowl, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16415, "=q3=Lieutenant Commander's Silk Mantle, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16413, "=q3=Knight-Captain's Silk Tunic, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16391, "=q3=Knight-Lieutenant's Silk Handwraps, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16414, "=q3=Knight-Captain's Silk Legguards, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16369, "=q3=Knight-Lieutenant's Silk Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23318, "=q3=Lieutenant Commander's Silk Cowl", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23319, "=q3=Lieutenant Commander's Silk Mantle", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23305, "=q3=Knight-Captain's Silk Tunic", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23290, "=q3=Knight-Lieutenant's Silk Handwraps", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23304, "=q3=Knight-Captain's Silk Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23291, "=q3=Knight-Lieutenant's Silk Walkers", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16441, "=q4=Field Marshal's Coronet", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16444, "=q4=Field Marshal's Silk Spaulders", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16443, "=q4=Field Marshal's Silk Vestments", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16440, "=q4=Marshal's Silk Gloves", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16442, "=q4=Marshal's Silk Leggings", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16437, "=q4=Marshal's Silk Footwraps", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116441, "=q4=Grand Marshal's Coronet, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116444, "=q4=Grand Marshal's Silk Spaulders, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116443, "=q4=Grand Marshal's Silk Vestments, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116440, "=q4=Grand Marshal's Silk Gloves, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116442, "=q4=Grand Marshal's Silk Leggings, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116437, "=q4=Grand Marshal's Silk Footwraps, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16489, "=q3=Champion's Silk Cowl, =ds=", "9435 #horde#" };
		[2] = { itemID = 16492, "=q3=Champion's Silk Mantle, =ds=", "6885 #horde#" };
		[3] = { itemID = 16491, "=q3=Legionnaire's Silk Tunic, =ds=", "9435 #horde#" };
		[4] = { itemID = 16487, "=q3=Blood Guard's Silk Handwraps, =ds=", "5000 #horde#" };
		[5] = { itemID = 16490, "=q3=Legionnaire's Silk Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 16485, "=q3=Blood Guard's Silk Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23263, "=q3=Champion's Silk Cowl", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23264, "=q3=Champion's Silk Mantle", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22886, "=q3=Legionnaire's Silk Tunic", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22870, "=q3=Blood Guard's Silk Handwraps", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22883, "=q3=Legionnaire's Silk Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22860, "=q3=Blood Guard's Silk Walkers", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16533, "=q4=Warlord's Silk Cowl", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16536, "=q4=Warlord's Silk Amice", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16535, "=q4=Warlord's Silk Raiment", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16540, "=q4=General's Silk Handguards", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16534, "=q4=General's Silk Trousers", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16539, "=q4=General's Silk Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116533, "=q4=High Warlord's Silk Cowl, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116536, "=q4=High Warlord's Silk Amice, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116535, "=q4=High Warlord's Silk Raiment, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116540, "=q4=High High Warlord's Silk Handguards, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116534, "=q4=High High Warlord's Silk Trousers, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116539, "=q4=High High Warlord's Silk Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPPaladin"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16434, "=q3=Lieutenant Commander's Lamellar Headguard, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16436, "=q3=Lieutenant Commander's Lamellar Shoulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16433, "=q3=Knight-Captain's Lamellar Breastplate, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16410, "=q3=Knight-Lieutenant's Lamellar Gauntlets, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16435, "=q3=Knight-Captain's Lamellar Leggings, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16409, "=q3=Knight-Lieutenant's Lamellar Sabatons, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23276, "=q3=Lieutenant Commander's Lamellar Headguard", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23277, "=q3=Lieutenant Commander's Lamellar Shoulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23272, "=q3=Knight-Captain's Lamellar Breastplate", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23274, "=q3=Knight-Lieutenant's Lamellar Gauntlets", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23273, "=q3=Knight-Captain's Lamellar Leggings", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23275, "=q3=Knight-Lieutenant's Lamellar Sabatons", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16474, "=q4=Field Marshal's Lamellar Faceguard", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16476, "=q4=Field Marshal's Lamellar Pauldrons", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16473, "=q4=Field Marshal's Lamellar Chestplate", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16471, "=q4=Marshal's Lamellar Gloves", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16475, "=q4=Marshal's Lamellar Legplates", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16472, "=q4=Marshal's Lamellar Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116474, "=q4=Grand Marshal's Lamellar Faceguard, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116476, "=q4=Grand Marshal's Lamellar Pauldrons, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116473, "=q4=Grand Marshal's Lamellar Chestplate, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116471, "=q4=Grand Marshal's Lamellar Gloves, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116475, "=q4=Grand Marshal's Lamellar Legplates, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116472, "=q4=Grand Marshal's Lamellar Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 29604, "=q3=Champion's Lamellar Headguard", "=ds=", "24000 #horde#" };
		[2] = { itemID = 29605, "=q3=Champion's Lamellar Shoulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 29602, "=q3=Legionnaire's Lamellar Breastplate", "=ds=", "24000 #horde#" };
		[4] = { itemID = 29600, "=q3=Blood Guard's Lamellar Gauntlets", "=ds=", "14000 #horde#" };
		[5] = { itemID = 29603, "=q3=Legionnaire's Lamellar Leggings", "=ds=", "24000 #horde#" };
		[6] = { itemID = 29601, "=q3=Blood Guard's Lamellar Sabatons", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 29616, "=q4=Warlord's Lamellar Faceguard", "=ds=", "68200 #horde#" };
		[2] = { itemID = 29617, "=q4=Warlord's Lamellar Pauldrons", "=ds=", "52200 #horde#" };
		[3] = { itemID = 29615, "=q4=Warlord's Lamellar Chestplate", "=ds=", "68200 #horde#" };
		[4] = { itemID = 29613, "=q4=General's Lamellar Gloves", "=ds=", "52200 #horde#" };
		[5] = { itemID = 29614, "=q4=General's Lamellar Legplates", "=ds=", "68200 #horde#" };
		[6] = { itemID = 29612, "=q4=General's Lamellar Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6129616, "=q4=High Warlord's Lamellar Faceguard, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6129617, "=q4=High Warlord's Lamellar Pauldrons, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6129615, "=q4=High Warlord's Lamellar Chestplate, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6129613, "=q4=High High Warlord's Lamellar Gloves, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6129614, "=q4=High High Warlord's Lamellar Legplates, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6129612, "=q4=High High Warlord's Lamellar Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPPriest"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 17598, "=q3=Lieutenant Commander's Satin Hood, =ds=", "9435 #alliance#" };
		[2] = { itemID = 17601, "=q3=Lieutenant Commander's Satin Mantle, =ds=", "6885 #alliance#" };
		[3] = { itemID = 17600, "=q3=Knight-Captain's Satin Tunic, =ds=", "9435 #alliance#" };
		[4] = { itemID = 17596, "=q3=Knight-Lieutenant's Satin Handwraps, =ds=", "5000 #alliance#" };
		[5] = { itemID = 17599, "=q3=Knight-Captain's Satin Legguards, =ds=", "9435 #alliance#" };
		[6] = { itemID = 17594, "=q3=Knight-Lieutenant's Satin Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23316, "=q3=Lieutenant Commander's Satin Hood", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23317, "=q3=Lieutenant Commander's Satin Mantle", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23303, "=q3=Knight-Captain's Satin Tunic", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23288, "=q3=Knight-Lieutenant's Satin Handwraps", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23302, "=q3=Knight-Captain's Satin Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23289, "=q3=Knight-Lieutenant's Satin Walkers", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 17602, "=q4=Field Marshal's Headdress", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 17604, "=q4=Field Marshal's Satin Mantle", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 17605, "=q4=Field Marshal's Satin Vestments", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 17608, "=q4=Marshal's Satin Gloves", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 17603, "=q4=Marshal's Satin Pants", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 17607, "=q4=Marshal's Satin Sandals", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6117602, "=q4=Grand Marshal's Headdress, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6117604, "=q4=Grand Marshal's Satin Mantle, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6117605, "=q4=Grand Marshal's Satin Vestments, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6117608, "=q4=Grand Marshal's Satin Gloves, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6117603, "=q4=Grand Marshal's Satin Pants, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6117607, "=q4=Grand Marshal's Satin Sandals, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16489, "=q3=Champion's Satin Hood, =ds=", "9435 #horde#" };
		[2] = { itemID = 16492, "=q3=Champion's Satin Mantle, =ds=", "6885 #horde#" };
		[3] = { itemID = 16491, "=q3=Legionnaire's Satin Tunic, =ds=", "9435 #horde#" };
		[4] = { itemID = 16487, "=q3=Blood Guard's Satin Handwraps, =ds=", "5000 #horde#" };
		[5] = { itemID = 16490, "=q3=Legionnaire's Satin Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 16485, "=q3=Blood Guard's Satin Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23261, "=q3=Champion's Satin Hood", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23262, "=q3=Champion's Satin Mantle", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22885, "=q3=Legionnaire's Satin Tunic", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22869, "=q3=Blood Guard's Satin Handwraps", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22882, "=q3=Legionnaire's Satin Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22859, "=q3=Blood Guard's Satin Walkers", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 17623, "=q4=Warlord's Satin Cowl", "=ds=", "68200 #horde#" };
		[2] = { itemID = 17622, "=q4=Warlord's Satin Mantle", "=ds=", "52200 #horde#" };
		[3] = { itemID = 17624, "=q4=Warlord's Satin Robes", "=ds=", "68200 #horde#" };
		[4] = { itemID = 17620, "=q4=General's Satin Gloves", "=ds=", "52200 #horde#" };
		[5] = { itemID = 17625, "=q4=General's Satin Leggings", "=ds=", "68200 #horde#" };
		[6] = { itemID = 17618, "=q4=General's Satin Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6117623, "=q4=High Warlord's Satin Cowl, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6117622, "=q4=High Warlord's Satin Mantle, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6117624, "=q4=High Warlord's Satin Robes, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6117620, "=q4=High High Warlord's Satin Gloves, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6117625, "=q4=High High Warlord's Satin Leggings, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6117618, "=q4=High High Warlord's Satin Boots, =ds=", "1430 #arena# #horde#" };
	};
};


AtlasLoot_Data["PVPRogue"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16418, "=q3=Lieutenant Commander's Leather Helm, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16420, "=q3=Lieutenant Commander's Leather Shoulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16417, "=q3=Knight-Captain's Leather Chestpiece, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16396, "=q3=Knight-Lieutenant's Leather Grips, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16419, "=q3=Knight-Captain's Leather Legguards, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16392, "=q3=Knight-Lieutenant's Leather Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23312, "=q3=Lieutenant Commander's Leather Helm", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23313, "=q3=Lieutenant Commander's Leather Shoulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23298, "=q3=Knight-Captain's Leather Chestpiece", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23284, "=q3=Knight-Lieutenant's Leather Grips", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23299, "=q3=Knight-Captain's Leather Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23285, "=q3=Knight-Lieutenant's Leather Walkers", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16455, "=q4=Field Marshal's Leather Mask", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16457, "=q4=Field Marshal's Leather Epaulets", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16453, "=q4=Field Marshal's Leather Chestpiece", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16454, "=q4=Marshal's Leather Handgrips", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16456, "=q4=Marshal's Leather Leggings", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16446, "=q4=Marshal's Leather Footguards", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116455, "=q4=Grand Marshal's Leather Mask, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116457, "=q4=Grand Marshal's Leather Epaulets, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116453, "=q4=Grand Marshal's Leather Chestpiece, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116454, "=q4=Grand Marshal's Leather Handgrips, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116456, "=q4=Grand Marshal's Leather Leggings, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116446, "=q4=Grand Marshal's Leather Footguards, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16506, "=q3=Champion's Leather Helm, =ds=", "9435 #horde#" };
		[2] = { itemID = 16507, "=q3=Champion's Leather Shoulders, =ds=", "6885 #horde#" };
		[3] = { itemID = 16505, "=q3=Legionnaire's Leather Chestpiece, =ds=", "9435 #horde#" };
		[4] = { itemID = 16499, "=q3=Blood Guard's Leather Grips, =ds=", "5000 #horde#" };
		[5] = { itemID = 16508, "=q3=Legionnaire's Leather Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 16498, "=q3=Blood Guard's Leather Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23257, "=q3=Champion's Leather Helm", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23258, "=q3=Champion's Leather Shoulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22879, "=q3=Legionnaire's Leather Chestpiece", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22864, "=q3=Blood Guard's Leather Grips", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22880, "=q3=Legionnaire's Leather Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22856, "=q3=Blood Guard's Leather Walkers", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16561, "=q4=Warlord's Leather Helm", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16562, "=q4=Warlord's Leather Spaulders", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16563, "=q4=Warlord's Leather Breastplate", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16560, "=q4=General's Leather Mitts", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16564, "=q4=General's Leather Legguards", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16558, "=q4=General's Leather Treads", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116561, "=q4=High Warlord's Leather Helm, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116562, "=q4=High Warlord's Leather Spaulders, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116563, "=q4=High Warlord's Leather Breastplate, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116560, "=q4=High High Warlord's Leather Mitts, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116564, "=q4=High High Warlord's Leather Legguards, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116558, "=q4=High High Warlord's Leather Treads, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPShaman"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 29598, "=q3=Lieutenant Commander's Mail Headguard", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 29599, "=q3=Lieutenant Commander's Mail Pauldrons", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 29596, "=q3=Knight-Captain's Mail Hauberk", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 29595, "=q3=Knight-Lieutenant's Mail Vices", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 29597, "=q3=Knight-Captain's Mail Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 29594, "=q3=Knight-Lieutenant's Mail Greaves", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 29610, "=q4=Field Marshal's Mail Helm", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 29611, "=q4=Field Marshal's Mail Spaulders", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 29609, "=q4=Field Marshal's Mail Armor", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 29607, "=q4=Marshal's Mail Gauntlets", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 29608, "=q4=Marshal's Mail Leggings", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 29606, "=q4=Marshal's Mail Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6129610, "=q4=Grand Marshal's Mail Helm, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6129611, "=q4=Grand Marshal's Mail Spaulders, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6129609, "=q4=Grand Marshal's Mail Armor, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6129607, "=q4=Grand Marshal's Mail Gauntlets, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6129608, "=q4=Grand Marshal's Mail Leggings, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6129606, "=q4=Grand Marshal's Mail Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16521, "=q3=Champion's Mail Headguard, =ds=", "9435 #horde#" };
		[2] = { itemID = 16524, "=q3=Champion's Mail Pauldrons, =ds=", "6885 #horde#" };
		[3] = { itemID = 16522, "=q3=Legionnaire's Mail Hauberk, =ds=", "9435 #horde#" };
		[4] = { itemID = 16519, "=q3=Blood Guard's Mail Vices, =ds=", "5000 #horde#" };
		[5] = { itemID = 16523, "=q3=Legionnaire's Mail Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 16518, "=q3=Blood Guard's Mail Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23259, "=q3=Champion's Mail Headguard", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23260, "=q3=Champion's Mail Pauldrons", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22876, "=q3=Legionnaire's Mail Hauberk", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22867, "=q3=Blood Guard's Mail Vices", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22887, "=q3=Legionnaire's Mail Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22857, "=q3=Blood Guard's Mail Greaves", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16578, "=q4=Warlord's Mail Helm", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16580, "=q4=Warlord's Mail Spaulders", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16577, "=q4=Warlord's Mail Armor", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16574, "=q4=General's Mail Gauntlets", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16579, "=q4=General's Mail Leggings", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16573, "=q4=General's Mail Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116578, "=q4=High Warlord's Mail Helm, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116580, "=q4=High Warlord's Mail Spaulders, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116577, "=q4=High Warlord's Mail Armor, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116574, "=q4=High High Warlord's Mail Gauntlets, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116579, "=q4=High High Warlord's Mail Leggings, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116573, "=q4=High High Warlord's Mail Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPWarlock"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 17566, "=q3=Lieutenant Commander's Dreadweave Cowl, =ds=", "9435 #alliance#" };
		[2] = { itemID = 17569, "=q3=Lieutenant Commander's Dreadweave Spaulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 17568, "=q3=Knight-Captain's Dreadweave Tunic, =ds=", "9435 #alliance#" };
		[4] = { itemID = 17564, "=q3=Knight-Lieutenant's Dreadweave Handwraps, =ds=", "5000 #alliance#" };
		[5] = { itemID = 17567, "=q3=Knight-Captain's Dreadweave Legguards, =ds=", "9435 #alliance#" };
		[6] = { itemID = 17562, "=q3=Knight-Lieutenant's Dreadweave Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23310, "=q3=Lieutenant Commander's Dreadweave Cowl", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23311, "=q3=Lieutenant Commander's Dreadweave Spaulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23297, "=q3=Knight-Captain's Dreadweave Tunic", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23282, "=q3=Knight-Lieutenant's Dreadweave Handwraps", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23296, "=q3=Knight-Captain's Dreadweave Legguards", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23283, "=q3=Knight-Lieutenant's Dreadweave Walkers", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6117578, "=q4=Grand Marshal's Coronal, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6117580, "=q4=Grand Marshal's Dreadweave Shoulders, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6117581, "=q4=Grand Marshal's Dreadweave Robe, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6117584, "=q4=Grand Marshal's Dreadweave Gloves, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6117579, "=q4=Grand Marshal's Dreadweave Leggings, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6117583, "=q4=Grand Marshal's Dreadweave Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 17578, "=q4=Field Marshal's Coronal", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 17580, "=q4=Field Marshal's Dreadweave Shoulders", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 17581, "=q4=Field Marshal's Dreadweave Robe", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 17584, "=q4=Marshal's Dreadweave Gloves", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 17579, "=q4=Marshal's Dreadweave Leggings", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 17583, "=q4=Marshal's Dreadweave Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 17570, "=q3=Champion's Dreadweave Cowl, =ds=", "9435 #horde#" };
		[2] = { itemID = 17573, "=q3=Champion's Dreadweave Spaulders, =ds=", "6885 #horde#" };
		[3] = { itemID = 17572, "=q3=Legionnaire's Dreadweave Tunic, =ds=", "9435 #horde#" };
		[4] = { itemID = 17577, "=q3=Blood Guard's Dreadweave Handwraps, =ds=", "5000 #horde#" };
		[5] = { itemID = 17571, "=q3=Legionnaire's Dreadweave Legguards, =ds=", "9435 #horde#" };
		[6] = { itemID = 17576, "=q3=Blood Guard's Dreadweave Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23255, "=q3=Champion's Dreadweave Cowl", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23256, "=q3=Champion's Dreadweave Spaulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22884, "=q3=Legionnaire's Dreadweave Tunic", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22865, "=q3=Blood Guard's Dreadweave Handwraps", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22881, "=q3=Legionnaire's Dreadweave Legguards", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22855, "=q3=Blood Guard's Dreadweave Walkers", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 17591, "=q4=Warlord's Dreadweave Hood", "=ds=", "68200 #horde#" };
		[2] = { itemID = 17590, "=q4=Warlord's Dreadweave Mantle", "=ds=", "52200 #horde#" };
		[3] = { itemID = 17592, "=q4=Warlord's Dreadweave Robe", "=ds=", "68200 #horde#" };
		[4] = { itemID = 17588, "=q4=General's Dreadweave Gloves", "=ds=", "52200 #horde#" };
		[5] = { itemID = 17593, "=q4=General's Dreadweave Pants", "=ds=", "68200 #horde#" };
		[6] = { itemID = 17586, "=q4=General's Dreadweave Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6117591, "=q4=High Warlord's Dreadweave Hood, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6117590, "=q4=High Warlord's Dreadweave Mantle, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6117592, "=q4=High Warlord's Dreadweave Robe, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6117588, "=q4=High High Warlord's Dreadweave Gloves, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6117593, "=q4=High High Warlord's Dreadweave Pants, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6117586, "=q4=High High Warlord's Dreadweave Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPWarrior"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		[1] = { itemID = 16429, "=q3=Lieutenant Commander's Plate Helm, =ds=", "9435 #alliance#" };
		[2] = { itemID = 16432, "=q3=Lieutenant Commander's Plate Shoulders, =ds=", "6885 #alliance#" };
		[3] = { itemID = 16430, "=q3=Knight-Captain's Plate Hauberk, =ds=", "9435 #alliance#" };
		[4] = { itemID = 16406, "=q3=Knight-Lieutenant's Plate Gauntlets, =ds=", "5000 #alliance#" };
		[5] = { itemID = 16431, "=q3=Knight-Captain's Plate Leggings, =ds=", "9435 #alliance#" };
		[6] = { itemID = 16405, "=q3=Knight-Lieutenant's Plate Greaves, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		[1] = { itemID = 23314, "=q3=Lieutenant Commander's Plate Helm", "=ds=", "24000 #alliance#" };
		[2] = { itemID = 23315, "=q3=Lieutenant Commander's Plate Shoulders", "=ds=", "14000 #alliance#" };
		[3] = { itemID = 23300, "=q3=Knight-Captain's Plate Hauberk", "=ds=", "24000 #alliance#" };
		[4] = { itemID = 23286, "=q3=Knight-Lieutenant's Plate Gauntlets", "=ds=", "14000 #alliance#" };
		[5] = { itemID = 23301, "=q3=Knight-Captain's Plate Leggings", "=ds=", "24000 #alliance#" };
		[6] = { itemID = 23287, "=q3=Knight-Lieutenant's Plate Greaves", "=ds=", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		[1] = { itemID = 16478, "=q4=Field Marshal's Plate Helm", "=ds=", "68200 #alliance#" };
		[2] = { itemID = 16480, "=q4=Field Marshal's Plate Shoulderguards", "=ds=", "52200 #alliance#" };
		[3] = { itemID = 16477, "=q4=Field Marshal's Plate Armor", "=ds=", "68200 #alliance#" };
		[4] = { itemID = 16484, "=q4=Marshal's Plate Gauntlets", "=ds=", "52200 #alliance#" };
		[5] = { itemID = 16479, "=q4=Marshal's Plate Legguards", "=ds=", "68200 #alliance#" };
		[6] = { itemID = 16483, "=q4=Marshal's Plate Boots", "=ds=", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		[1] = { itemID = 6116478, "=q4=Grand Marshal's Plate Helm, =ds=", "2370 #arena# #alliance#" };
		[2] = { itemID = 6116480, "=q4=Grand Marshal's Plate Shoulderguards, =ds=", "1930 #arena# #alliance#" };
		[3] = { itemID = 6116477, "=q4=Grand Marshal's Plate Armor, =ds=", "2370 #arena# #alliance#" };
		[4] = { itemID = 6116484, "=q4=Grand Marshal's Plate Gauntlets, =ds=", "1430 #arena# #alliance#" };
		[5] = { itemID = 6116479, "=q4=Grand Marshal's Plate Legguards, =ds=", "2370 #arena# #alliance#" };
		[6] = { itemID = 6116483, "=q4=Grand Marshal's Plate Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		[1] = { itemID = 16514, "=q3=Champion's Plate Helm, =ds=", "9435 #horde#" };
		[2] = { itemID = 16516, "=q3=Champion's Plate Shoulders, =ds=", "6885 #horde#" };
		[3] = { itemID = 16513, "=q3=Legionnaire's Plate Hauberk, =ds=", "9435 #horde#" };
		[4] = { itemID = 16510, "=q3=Blood Guard's Plate Gauntlets, =ds=", "5000 #horde#" };
		[5] = { itemID = 16515, "=q3=Legionnaire's Plate Leggings, =ds=", "9435 #horde#" };
		[6] = { itemID = 16509, "=q3=Blood Guard's Plate Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		[1] = { itemID = 23244, "=q3=Champion's Plate Helm", "=ds=", "24000 #horde#" };
		[2] = { itemID = 23243, "=q3=Champion's Plate Shoulders", "=ds=", "14000 #horde#" };
		[3] = { itemID = 22872, "=q3=Legionnaire's Plate Hauberk", "=ds=", "24000 #horde#" };
		[4] = { itemID = 22868, "=q3=Blood Guard's Plate Gauntlets", "=ds=", "14000 #horde#" };
		[5] = { itemID = 22873, "=q3=Legionnaire's Plate Leggings", "=ds=", "24000 #horde#" };
		[6] = { itemID = 22858, "=q3=Blood Guard's Plate Greaves", "=ds=", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		[1] = { itemID = 16542, "=q4=Warlord's Plate Headpiece", "=ds=", "68200 #horde#" };
		[2] = { itemID = 16544, "=q4=Warlord's Plate Shoulders", "=ds=", "52200 #horde#" };
		[3] = { itemID = 16541, "=q4=Warlord's Plate Armor", "=ds=", "68200 #horde#" };
		[4] = { itemID = 16548, "=q4=General's Plate Gauntlets", "=ds=", "52200 #horde#" };
		[5] = { itemID = 16543, "=q4=General's Plate Leggings", "=ds=", "68200 #horde#" };
		[6] = { itemID = 16545, "=q4=General's Plate Boots", "=ds=", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		[1] = { itemID = 6116542, "=q4=High Warlord's Plate Headpiece, =ds=", "2370 #arena# #horde#" };
		[2] = { itemID = 6116544, "=q4=High Warlord's Plate Shoulders, =ds=", "1930 #arena# #horde#" };
		[3] = { itemID = 6116541, "=q4=High Warlord's Plate Armor, =ds=", "2370 #arena# #horde#" };
		[4] = { itemID = 6116548, "=q4=High High Warlord's Plate Gauntlets, =ds=", "1430 #arena# #horde#" };
		[5] = { itemID = 6116543, "=q4=High High Warlord's Plate Leggings, =ds=", "2370 #arena# #horde#" };
		[6] = { itemID = 6116545, "=q4=High High Warlord's Plate Boots, =ds=", "1430 #arena# #horde#" };
	};
};

----------------------------
--- PvP Level 60 Weapons ---
----------------------------

AtlasLoot_Data["PVPWeapons60"] = {
	Name = AL["PvP Weapons (Level 60)"];
	{
		Name = "Grand Marshal's (Alliance)";
		[1] = { itemID = 18843, "=q4=Grand Marshal's Right Hand Blade", "=ds=#h3#, #w13#", "34100 #alliance#" };
		[2] = { itemID = 18847, "=q4=Grand Marshal's Left Hand Blade", "=ds=#h4#, #w13#", "34100 #alliance#" };
		[3] = { itemID = 23451, "=q4=Grand Marshal's Mageblade", "=ds=#h4#, #w4#", "34100 #alliance#" };
		[4] = { itemID = 18838, "=q4=Grand Marshal's Dirk", "=ds=#h1#, #w4#", "34100 #alliance#" };
		[5] = { itemID = 12584, "=q4=Grand Marshal's Longsword", "34100 #alliance#" };
		[6] = { itemID = 23456, "=q4=Grand Marshal's Swiftblade", "34100 #alliance#" };
		[7] = { itemID = 18876, "=q4=Grand Marshal's Claymore", "=ds=#h2#, #w10#", "68200 #alliance#" };
		[8] = { itemID = 18827, "=q4=Grand Marshal's Handaxe", "34100 #alliance#" };
		[9] = { itemID = 18830, "=q4=Grand Marshal's Sunderer", "=ds=#h2#, #w1#", "68200 #alliance#" };
		[10] = { itemID = 23454, "=q4=Grand Marshal's Warhammer", "=ds=#h3#, #w6#", "34100 #alliance#" };
		[11] = { itemID = 18865, "=q4=Grand Marshal's Punisher", "=ds=#h1#, #w6#", "34100 #alliance#" };
		[12] = { itemID = 18867, "=q4=Grand Marshal's Battle Hammer", "68200 #alliance#" };
		[13] = { itemID = 23455, "=q4=Grand Marshal's Demolisher", "68200 #alliance#" };
		[14] = { itemID = 18869, "=q4=Grand Marshal's Glaive", "=ds=#w7#", "68200 #alliance#" };
		[15] = { itemID = 18873, "=q4=Grand Marshal's Stave", "=ds=#w9#", "68200 #alliance#" };
		[16] = { itemID = 18825, "=q4=Grand Marshal's Aegis", "=ds=#w8#", "34100 #alliance#" };
		[17] = { itemID = 18833, "=q4=Grand Marshal's Bullseye", "=ds=#w2#", "34100 #alliance#" };
		[18] = { itemID = 18836, "=q4=Grand Marshal's Repeater", "=ds=#w3#", "34100 #alliance#" };
		[19] = { itemID = 18855, "=q4=Grand Marshal's Hand Cannon", "=ds=#w5#", "34100 #alliance#" };
		[20] = { itemID = 23452, "=q4=Grand Marshal's Tome of Power", "34100 #alliance#" };
		[21] = { itemID = 23453, "=q4=Grand Marshal's Tome of Restoration", "34100 #alliance#" };
	};
	{
		Name = "Lieutenant Commander's (Alliance)";
		[1] = { itemID = 918843, "=q3=Lieutenant Commander's Right Hand Blade", "=ds=#h3#, #w13#", "20000 #alliance#" };
		[2] = { itemID = 918847, "=q3=Lieutenant Commander's Left Hand Blade", "=ds=#h4#, #w13#", "20000 #alliance#" };
		[3] = { itemID = 923451, "=q3=Lieutenant Commander's Mageblade", "=ds=#h4#, #w4#", "20000 #alliance#" };
		[4] = { itemID = 918838, "=q3=Lieutenant Commander's Dirk", "=ds=#h1#, #w4#", "20000 #alliance#" };
		[5] = { itemID = 912584, "=q3=Lieutenant Commander's Longsword", "20000 #alliance#" };
		[6] = { itemID = 923456, "=q3=Lieutenant Commander's Swiftblade", "20000 #alliance#" };
		[7] = { itemID = 918876, "=q3=Lieutenant Commander's Claymore", "=ds=#h2#, #w10#", "34100 #alliance#" };
		[8] = { itemID = 918827, "=q3=Lieutenant Commander's Handaxe", "20000 #alliance#" };
		[9] = { itemID = 918830, "=q3=Lieutenant Commander's Sunderer", "=ds=#h2#, #w1#", "34100 #alliance#" };
		[10] = { itemID = 923454, "=q3=Lieutenant Commander's Warhammer", "=ds=#h3#, #w6#", "20000 #alliance#" };
		[11] = { itemID = 918865, "=q3=Lieutenant Commander's Punisher", "=ds=#h1#, #w6#", "20000 #alliance#" };
		[12] = { itemID = 918867, "=q3=Lieutenant Commander's Battle Hammer", "34100 #alliance#" };
		[13] = { itemID = 923455, "=q3=Lieutenant Commander's Demolisher", "34100 #alliance#" };
		[14] = { itemID = 918869, "=q3=Lieutenant Commander's Glaive", "=ds=#w7#", "34100 #alliance#" };
		[15] = { itemID = 918873, "=q3=Lieutenant Commander's Stave", "=ds=#w9#", "34100 #alliance#" };
		[16] = { itemID = 918825, "=q3=Lieutenant Commander's Aegis", "=ds=#w8#", "20000 #alliance#" };
		[17] = { itemID = 918833, "=q3=Lieutenant Commander's Bullseye", "=ds=#w2#", "20000 #alliance#" };
		[18] = { itemID = 918836, "=q3=Lieutenant Commander's Repeater", "=ds=#w3#", "20000 #alliance#" };
		[19] = { itemID = 918855, "=q3=Lieutenant Commander's Hand Cannon", "=ds=#w5#", "20000 #alliance#" };
		[20] = { itemID = 923452, "=q3=Lieutenant Commander's Tome of Power", "20000 #alliance#" };
		[21] = { itemID = 923453, "=q3=Lieutenant Commander's Tome of Restoration", "20000 #alliance#" };
	};
	{
		Name = "High Warlord's (Horde)";
		[1] = { itemID = 18844, "=q4=High Warlord's Right Claw", "=ds=#h3#, #w13#", "34100 #horde#" };
		[2] = { itemID = 18848, "=q4=High Warlord's Left Claw", "=ds=#h4#, #w13#", "34100 #horde#" };
		[3] = { itemID = 23466, "=q4=High Warlord's Spellblade", "=ds=#h4#, #w4#", "34100 #horde#" };
		[4] = { itemID = 18840, "=q4=High Warlord's Razor", "=ds=#h1#, #w4#", "34100 #horde#" };
		[5] = { itemID = 16345, "=q4=High Warlord's Blade", "34100 #horde#" };
		[6] = { itemID = 23467, "=q4=High Warlord's Quickblade", "34100 #horde#" };
		[7] = { itemID = 18877, "=q4=High Warlord's Greatsword", "=ds=#h2#, #w10#", "68200 #horde#" };
		[8] = { itemID = 18828, "=q4=High Warlord's Cleaver", "34100 #horde#" };
		[9] = { itemID = 18831, "=q4=High Warlord's Battle Axe", "=ds=#h2#, #w1#", "68200 #horde#" };
		[10] = { itemID = 23464, "=q4=High Warlord's Battle Mace", "=ds=#h3#, #w6#", "34100 #horde#" };
		[11] = { itemID = 18866, "=q4=High Warlord's Bludgeon", "=ds=#h1#, #w6#", "34100 #horde#" };
		[12] = { itemID = 18868, "=q4=High Warlord's Pulverizer", "68200 #horde#" };
		[13] = { itemID = 23465, "=q4=High Warlord's Destroyer", "68200 #horde#" };
		[14] = { itemID = 18871, "=q4=High Warlord's Pig Sticker", "=ds=#w7#", "68200 #horde#" };
		[15] = { itemID = 18874, "=q4=High Warlord's War Staff", "=ds=#w9#", "68200 #horde#" };
		[16] = { itemID = 18826, "=q4=High Warlord's Shield Wall", "=ds=#w8#", "34100 #horde#" };
		[17] = { itemID = 18835, "=q4=High Warlord's Recurve", "=ds=#w2#", "34100 #horde#" };
		[18] = { itemID = 18837, "=q4=High Warlord's Crossbow", "=ds=#w3#", "34100 #horde#" };
		[19] = { itemID = 18860, "=q4=High Warlord's Street Sweeper", "=ds=#w5#", "34100 #horde#" };
		[20] = { itemID = 23468, "=q4=High Warlord's Tome of Destruction", "34100 #horde#" };
		[21] = { itemID = 23469, "=q4=High Warlord's Tome of Mending", "34100 #horde#" };

	};
	{
		Name = "Champion's (Horde)";
		[1] = { itemID = 918844, "=q3=Champion's Right Claw", "=ds=#h3#, #w13#", "20000 #horde#" };
		[2] = { itemID = 918848, "=q3=Champion's Left Claw", "=ds=#h4#, #w13#", "20000 #horde#" };
		[3] = { itemID = 923466, "=q3=Champion's Spellblade", "=ds=#h4#, #w4#", "20000 #horde#" };
		[4] = { itemID = 918840, "=q3=Champion's Razor", "=ds=#h1#, #w4#", "20000 #horde#" };
		[5] = { itemID = 916345, "=q3=Champion's Blade", "20000 #horde#" };
		[6] = { itemID = 923467, "=q3=Champion's Quickblade", "20000 #horde#" };
		[7] = { itemID = 918877, "=q3=Champion's Greatsword", "=ds=#h2#, #w10#", "34100 #horde#" };
		[8] = { itemID = 918828, "=q3=Champion's Cleaver", "20000 #horde#" };
		[9] = { itemID = 918831, "=q3=Champion's Battle Axe", "=ds=#h2#, #w1#", "34100 #horde#" };
		[10] = { itemID = 923464, "=q3=Champion's Battle Mace", "=ds=#h3#, #w6#", "20000 #horde#" };
		[11] = { itemID = 918866, "=q3=Champion's Bludgeon", "=ds=#h1#, #w6#", "20000 #horde#" };
		[12] = { itemID = 918868, "=q3=Champion's Pulverizer", "34100 #horde#" };
		[13] = { itemID = 923465, "=q3=Champion's Destroyer", "34100 #horde#" };
		[14] = { itemID = 918871, "=q3=Champion's Pig Sticker", "=ds=#w7#", "34100 #horde#" };
		[15] = { itemID = 918874, "=q3=Champion's War Staff", "=ds=#w9#", "34100 #horde#" };
		[16] = { itemID = 918826, "=q3=Champion's Shield Wall", "=ds=#w8#", "20000 #horde#" };
		[17] = { itemID = 918835, "=q3=Champion's Recurve", "=ds=#w2#", "20000 #horde#" };
		[18] = { itemID = 918837, "=q3=Champion's Crossbow", "=ds=#w3#", "20000 #horde#" };
		[19] = { itemID = 918860, "=q3=Champion's Street Sweeper", "=ds=#w5#", "20000 #horde#" };
		[20] = { itemID = 923468, "=q3=Champion's Tome of Destruction", "20000 #horde#" };
		[21] = { itemID = 923469, "=q3=Champion's Tome of Mending", "20000 #horde#" };
	};
};

--------------------------------
--- PvP Level 60 Accessories ---
--------------------------------
AtlasLoot_Data["PvP60Accessories"] = {
	Name = AL["PvP Accessories (Level 60)"];
	{
		Name = "Alliance 1";
		[1] = { itemID = 100533, "=q4=Combatant's Amulet of Victory, =ds=", "34100 #alliance#" };
		[2] = { itemID = 100534, "=q4=Combatant's Amulet of Triumph, =ds=", "34100 #alliance#" };
		[3] = { itemID = 100535, "=q4=Combatant's Amulet of Dominance, =ds=", "34100 #alliance#" };
		[4] = { itemID = 100536, "=q4=Combatant's Amulet of Conquest, =ds=", "34100 #alliance#" };
		[5] = { itemID = 100537, "=q4=Combatant's Loop of Triumph, =ds=", "34100 #alliance#" };
		[6] = { itemID = 100538, "=q4=Combatant's Loop of Victory, =ds=", "34100 #alliance#" };
		[7] = { itemID = 100539, "=q4=Combatant's Loop of Dominance, =ds=", "34100 #alliance#" };
		[8] = { itemID = 100540, "=q4=Combatant's Loop of Conquest, =ds=", "34100 #alliance#" };
		[9] = { itemID = 100541, "=q4=Combatant's Cloak of Triumph, =ds=", "34100 #alliance#" };
		[10] = { itemID = 100542, "=q4=Combatant's Cloak of Victory, =ds=", "34100 #alliance#" };
		[11] = { itemID = 100543, "=q4=Combatant's Cloak of Dominance, =ds=", "34100 #alliance#" };
		[12] = { itemID = 100544, "=q4=Combatant's Cloak of Conquest, =ds=", "34100 #alliance#" };
		[16] = { itemID = 100526, "=q4=Battlemaster's Fury, =ds=", " #alliance#" };
		[17] = { itemID = 100527, "=q4=Battlemaster's Rage, =ds=", " #alliance#" };
		[18] = { itemID = 100528, "=q4=Battlemaster's Ruination, =ds=", " #alliance#" };
		[19] = { itemID = 100529, "=q4=Insignia of the Alliance, =ds=", " #alliance#" };
		[20] = { itemID = 100530, "=q4=Insignia of the Horde, =ds=", " #alliance#" };
		[21] = { itemID = 100531, "=q4=Combatant's Scroll of Battle, =ds=", " #alliance#" };
		[22] = { itemID = 100532, "=q4=Combatant's Scroll of Sorcery, =ds=", " #alliance#" };
	};
	{
		Name = "Alliance 2";
		[1] = { itemID = 29465, "=q4=Black Battlestrider", "50000 #alliance#" };
		[2] = { itemID = 29467, "=q4=Black War Ram", "50000 #alliance#" };
		[3] = { itemID = 29468, "=q4=Black War Steed Bridle", "50000 #alliance#" };
		[4] = { itemID = 29471, "=q4=Reins of the Black War Tiger", "50000 #alliance#" };
		[5] = { itemID = 35906, "=q4=Reins of the Black War Elekk", "=ds#e12#=", "50000 #alliance#" };
		[7] = { itemID = 18863, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[8] = { itemID = 18856, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[9] = { itemID = 18859, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[10] = { itemID = 18864, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[11] = { itemID = 18862, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[12] = { itemID = 18857, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[13] = { itemID = 29593, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[14] = { itemID = 18858, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[15] = { itemID = 18854, "=q3=Insignia of the Alliance", "2805 #alliance#" };
		[16] = { itemID = 15196, "=q1=Private's Tabard", "=ds=#s7#", "15000 #alliance#" };
		[17] = { itemID = 15198, "=q1=Knight's Colors", "=ds=#s7#", "20000 #alliance#" };
		[18] = { itemID = 18606, "=q1=Alliance Battle Standard", "=ds=", "15300 #alliance#" };
		[20] = { itemID = 18839, "=q1=Combat Healing Potion", "=ds=#e2#", "10 #silver# 1 #alliance#" };
		[21] = { itemID = 18841, "=q1=Combat Mana Potion", "=ds=#e2#", "10 #silver# 1 #alliance#" };
		[22] = { itemID = 32455, "=q1=Star's Lament", "=ds=#e4#", "12 #silver# 1 #alliance#" };
	};
	{
		Name = "Alliance 3";
		[1] = { itemID = 18457, "=q3=Sergeant Major's Silk Cuffs", "=ds=#s8#, #a1#", "300 #alliance#" };
		[2] = { itemID = 18456, "=q3=Sergeant Major's Silk Cuffs", "=ds=#s8#, #a1#", "1600 #alliance#" };
		[4] = { itemID = 18455, "=q3=Sergeant Major's Dragonhide Armsplints", "=ds=#s8#, #a2#", "300 #alliance#" };
		[5] = { itemID = 18454, "=q3=Sergeant Major's Dragonhide Armsplints", "=ds=#s8#, #a2#", "1600 #alliance#" };
		[7] = { itemID = 18453, "=q3=Sergeant Major's Leather Armsplints", "=ds=#s8#, #a3#", "300 #alliance#" };
		[8] = { itemID = 18452, "=q3=Sergeant Major's Leather Armsplints", "=ds=#s8#, #a3#", "1600 #alliance#" };
		[10] = { itemID = 18449, "=q3=Sergeant Major's Chain Armguards", "=ds=#s8#, #a3#", "300 #alliance#" };
		[11] = { itemID = 18448, "=q3=Sergeant Major's Chain Armguards", "=ds=#s8#, #a3#", "1600 #alliance#" };
		[13] = { itemID = 18447, "=q3=Sergeant Major's Plate Wristguards", "=ds=#s8#, #a4#", "300 #alliance#" };
		[14] = { itemID = 18445, "=q3=Sergeant Major's Plate Wristguards", "=ds=#s8#, #a4#", "1600 #alliance#" };
		[16] = { itemID = 18440, "=q3=Sergeant's Cape", "100 #alliance#" };
		[17] = { itemID = 18441, "=q3=Sergeant's Cape", "300 #alliance#" };
		[18] = { itemID = 16342, "=q3=Sergeant's Cape", "1600 #alliance#" };
		[20] = { itemID = 18442, "=q3=Master Sergeant's Insignia", "100 #alliance#" };
		[21] = { itemID = 18444, "=q3=Master Sergeant's Insignia", "300 #alliance#" };
		[22] = { itemID = 18443, "=q3=Master Sergeant's Insignia", "1600 #alliance#" };
	};
	{
		Name = "Horde 1";
		[1] = { itemID = 100533, "=q4=Combatant's Amulet of Victory, =ds=", "34100 #horde#" };
		[2] = { itemID = 100534, "=q4=Combatant's Amulet of Triumph, =ds=", "34100 #horde#" };
		[3] = { itemID = 100535, "=q4=Combatant's Amulet of Dominance, =ds=", "34100 #horde#" };
		[4] = { itemID = 100536, "=q4=Combatant's Amulet of Conquest, =ds=", "34100 #horde#" };
		[5] = { itemID = 100537, "=q4=Combatant's Loop of Triumph, =ds=", "34100 #horde#" };
		[6] = { itemID = 100538, "=q4=Combatant's Loop of Victory, =ds=", "34100 #horde#" };
		[7] = { itemID = 100539, "=q4=Combatant's Loop of Dominance, =ds=", "34100 #horde#" };
		[8] = { itemID = 100540, "=q4=Combatant's Loop of Conquest, =ds=", "34100 #horde#" };
		[9] = { itemID = 100541, "=q4=Combatant's Cloak of Triumph, =ds=", "34100 #horde#" };
		[10] = { itemID = 100542, "=q4=Combatant's Cloak of Victory, =ds=", "34100 #horde#" };
		[11] = { itemID = 100543, "=q4=Combatant's Cloak of Dominance, =ds=", "34100 #horde#" };
		[12] = { itemID = 100544, "=q4=Combatant's Cloak of Conquest, =ds=", "34100 #horde#" };
		[16] = { itemID = 100526, "=q4=Battlemaster's Fury, =ds=", " #horde#" };
		[17] = { itemID = 100527, "=q4=Battlemaster's Rage, =ds=", " #horde#" };
		[18] = { itemID = 100528, "=q4=Battlemaster's Ruination, =ds=", " #horde#" };
		[19] = { itemID = 100529, "=q4=Insignia of the Alliance, =ds=", " #horde#" };
		[20] = { itemID = 100530, "=q4=Insignia of the Horde, =ds=", " #horde#" };
		[21] = { itemID = 100531, "=q4=Combatant's Scroll of Battle, =ds=", " #horde#" };
		[22] = { itemID = 100532, "=q4=Combatant's Scroll of Sorcery, =ds=", " #horde#" };
	};
	{
		Name = "Horde 2";
		[1] = { itemID = 29466, "=q4=Black War Kodo", "50000 #horde#" };
		[2] = { itemID = 29469, "=q4=Horn of the Black War Wolf", "50000 #horde#" };
		[3] = { itemID = 29470, "=q4=Red Skeletal Warhorse", "50000 #horde#" };
		[4] = { itemID = 29472, "=q4=Whistle of the Black War Raptor", "50000 #horde#" };
		[5] = { itemID = 34129, "=q4=Swift Warstrider", "50000 #horde#" };
		[7] = { itemID = 18853, "=q3=Insignia of the Horde", "2805 #horde#" };
		[8] = { itemID = 18846, "=q3=Insignia of the Horde", "2805 #horde#" };
		[9] = { itemID = 18850, "=q3=Insignia of the Horde", "2805 #horde#" };
		[10] = { itemID = 29592, "=q3=Insignia of the Horde", "2805 #horde#" };
		[11] = { itemID = 18851, "=q3=Insignia of the Horde", "2805 #horde#" };
		[12] = { itemID = 18849, "=q3=Insignia of the Horde", "2805 #horde#" };
		[13] = { itemID = 18845, "=q3=Insignia of the Horde", "2805 #horde#" };
		[14] = { itemID = 18852, "=q3=Insignia of the Horde", "2805 #horde#" };
		[15] = { itemID = 18834, "=q3=Insignia of the Horde", "2805 #horde#" };
		[16] = { itemID = 15197, "=q1=Scout's Tabard", "=ds=#s7#", "15000 #horde#" };
		[17] = { itemID = 15199, "=q1=Stone Guard's Herald", "=ds=#s7#", "20000 #horde#" };
		[18] = { itemID = 18607, "=q1=Horde Battle Standard", "=ds=", "15300 #horde#" };
		[20] = { itemID = 18839, "=q1=Combat Healing Potion", "=ds=#e2#", "10 #silver# 1 #horde#" };
		[21] = { itemID = 18841, "=q1=Combat Mana Potion", "=ds=#e2#", "10 #silver# 1 #horde#" };
		[22] = { itemID = 32455, "=q1=Star's Lament", "=ds=#e4#", "12 #silver# 1 #horde#" };
	};
	{
		Name = "Horde 3";
		[1] = { itemID = 18437, "=q3=First Sergeant's Silk Cuffs", "=ds=#s8#, #a1#", "300 #horde#" };
		[2] = { itemID = 16486, "=q3=First Sergeant's Silk Cuffs", "=ds=#s8#, #a1#", "1600 #horde#" };
		[4] = { itemID = 18436, "=q3=First Sergeant's Dragonhide Armguards", "=ds=#s8#, #a1#", "300 #horde#" };
		[5] = { itemID = 18434, "=q3=First Sergeant's Dragonhide Armguards", "=ds=#s8#, #a1#", "1600 #horde#" };
		[7] = { itemID = 18435, "=q3=First Sergeant's Leather Armguards", "=ds=#s8#, #a2#", "300 #horde#" };
		[8] = { itemID = 16497, "=q3=First Sergeant's Leather Armguards", "=ds=#s8#, #a2#", "1600 #horde#" };
		[10] = { itemID = 18432, "=q3=First Sergeant's Mail Wristguards", "=ds=#s8#, #a3#", "300 #horde#" };
		[11] = { itemID = 16532, "=q3=First Sergeant's Mail Wristguards", "=ds=#s8#, #a3#", "1600 #horde#" };
		[13] = { itemID = 18430, "=q3=First Sergeant's Plate Bracers", "=ds=#s8#, #a4#", "300 #horde#" };
		[14] = { itemID = 18429, "=q3=First Sergeant's Plate Bracers", "=ds=#s8#, #a4#", "1600 #horde#" };
		[16] = { itemID = 18427, "=q3=Sergeant's Cloak", "100 #horde#" };
		[17] = { itemID = 16341, "=q3=Sergeant's Cloak", "300 #horde#" };
		[18] = { itemID = 18461, "=q3=Sergeant's Cloak", "1600 #horde#" };
		[20] = { itemID = 15200, "=q3=Senior Sergeant's Insignia", "100 #horde#" };
		[21] = { itemID = 18428, "=q3=Senior Sergeant's Insignia", "300 #horde#" };
		[22] = { itemID = 16335, "=q3=Senior Sergeant's Insignia", "1600 #horde#" };
	};
};

AtlasLoot_Data["PvP60Ench"] = {
	Name = AL["PvP Enchants"];
	{
		Name = AL["PvP Enchants"];
		[1] = { itemID = 100545, "=q3=Superior Resistance, =ds=", "25000 #alliance#" };
		[2] = { itemID = 100546, "=q3=Lesser Resilience, =ds=", "25000 #alliance#" };
		[3] = { itemID = 100547, "=q2=Absorption, =ds=", "25000 #alliance#" };
		[4] = { itemID = 100548, "=q2=Lesser Stats, =ds=", "25000 #alliance#" };
		[5] = { itemID = 100549, "=q2=Superior Intellect, =ds=", "25000 #alliance#" };
		[6] = { itemID = 100550, "=q3=Nature Power, =ds=", "25000 #alliance#" };
		[7] = { itemID = 100551, "=q3=Arcane Power, =ds=", "25000 #alliance#" };
		[8] = { itemID = 100552, "=q3=Holy Power, =ds=", "25000 #alliance#" };
		[9] = { itemID = 100553, "=q4=Greater Healing Power, =ds=", "25000 #alliance#" };
		[10] = { itemID = 100554, "=q3=Superior Strength, =ds=", "25000 #alliance#" };
		[11] = { itemID = 100555, "=q3=Greater Riding Skill, =ds=", "25000 #alliance#" };
		[12] = { itemID = 100556, "=q3=Lesser Boar's Speed, =ds=", "25000 #alliance#" };
		[13] = { itemID = 100557, "=q3=Lesser Cat's Swiftness, =ds=", "25000 #alliance#" };
		[14] = { itemID = 100558, "=q3=Lesser Falcon's Quickness, =ds=", "25000 #alliance#" };
		[15] = { itemID = 100559, "=q4=Lesser Stamina, =ds=", "25000 #alliance#" };
		[16] = { itemID = 100560, "=q4=Lesser Stats, =ds=", "25000 #alliance#" };
		[17] = { itemID = 100561, "=q4=Lesser Blood Draining, =ds=", "40000 #alliance#" };
		[18] = { itemID = 100563, "=q3=Lesser Arcanum of Dominance, =ds=", "40000 #alliance#" };
		[19] = { itemID = 100564, "=q3=Lesser Arcanum of Triumph, =ds=", "50000 #alliance#" };
		[20] = { itemID = 449570, "=q3=Lesser Inscription of the Gladiator, =ds=", "40000 #alliance#" };
		[21] = { itemID = 449571, "=q3=Lesser Inscription of the Battle Mage, =ds=", "40000 #alliance#" };
	};
};
----------------
--- Factions ---
----------------

------------
--- Misc ---
------------

AtlasLoot_Data["DesolaceCentaurClans"] = {
	Name = "Desolace Centaur Clans";
	{
		Name = BabbleFaction["Magram Clan Centaur"];
		[1] = { itemID = 6789, "=q2=Ceremonial Centaur Blanket", "=q1=#m4#: =ds=#s4#" };
		[2] = { itemID = 6788, "=q2=Magram Hunter's Belt", "=q1=#m4#: =ds=#s10#, #a2#" };
	};
	{
		Name = BabbleFaction["Gelkis Clan Centaur"];
		[1] = { itemID = 6773, "=q2=Gelkis Marauder Chain", "=q1=#m4#: =ds=#s5#, #a3#" };
		[2] = { itemID = 6774, "=q2=Uthek's Finger", "=q1=#m4#: =ds=#s15#" };
	};
};

AtlasLoot_Data["Wintersaber"] = {
	Name = BabbleFaction["Wintersaber Trainers"];
	{
		Name = BabbleFaction["Wintersaber Trainers"];
		[1] = { itemID = 13086, "=q4=Reins of the Winterspring Frostsaber" };
	};
};

AtlasLoot_Data["ArathiBasinFactions"] = {
	Name = BabbleZone["Arathi Basin"];
	{
		Name = BabbleFaction["The League of Arathor"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		[6] = { itemID = 20132, "=q1=Arathor Battle Tabard", "=q1=#m4#: =ds=#s7#" };
	};
	{
		Name = BabbleFaction["The Defilers"] .. " (" .. BabbleFaction["Horde"] .. ")";
		[21] = { itemID = 20131, "=q1=Battle Tabard of the Defilers", "=q1=#m4#: =ds=#s7#" };
	};
};

-------------------
--- Argent Dawn ---
-------------------

AtlasLoot_Data["Argent"] = {
	Name = BabbleFaction["Argent Dawn"];
	{
		Name = BabbleFaction["Argent Dawn"];
		[1] = { itemID = 22689, "=q3=Sanctified Leather Helm", "=ds=#s1#, #a2#" };
		[2] = { itemID = 22690, "=q3=Leggings of the Plague Hunter", "=ds=#s11#, #a3#" };
		[3] = { itemID = 22681, "=q3=Band of Piety", "=ds=#s13#" };
		[4] = { itemID = 22680, "=q3=Band of Resolution", "=ds=#s13#" };
		[5] = { itemID = 22688, "=q3=Verimonde's Last Resort", "=ds=#h3#, #w4#" };
		[6] = { itemID = 22679, "=q3=Supply Bag" };
		[8] = { itemID = 22638, "=q3=Shadow Guard", "=ds=#s1# #e17#" };
		[10] = { itemID = 22523, "=q2=Insignia of the Dawn", "=ds=#m17#" };
		[12] = { itemID = 12844, "=q2=Argent Dawn Valor Token", "=ds=#m17#" };
		[16] = { itemID = 22667, "=q4=Bracers of Hope", "=ds=#s8#, #a1#" };
		[17] = { itemID = 22668, "=q4=Bracers of Subterfuge", "=ds=#s8#, #a2#" };
		[18] = { itemID = 22657, "=q4=Amulet of the Dawn", "=ds=#s2#" };
		[19] = { itemID = 22659, "=q4=Medallion of the Dawn", "=ds=#s2#" };
		[20] = { itemID = 22678, "=q4=Talisman of Ascendance", "=ds=#s14#" };
		[21] = { itemID = 22656, "=q4=The Purifier", "=ds=#w5#" };
		[23] = { itemID = 22636, "=q3=Ice Guard", "=ds=#s1# #e17#" };
		[25] = { itemID = 22524, "=q2=Insignia of the Crusade", "=ds=#m17#" };
	};
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 13724, "=q1=Enriched Manna Biscuit", "=ds=#e3#" };
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 13482, "=q2=Recipe: Transmute Air to Fire", "=ds=#p1# (275)" };
		[2] = { itemID = 19203, "=q1=Plans: Girdle of the Dawn", "=ds=#p2# (290)" };
		[3] = { itemID = 19446, "=q1=Formula: Enchant Bracer - Mana Regeneration", "=ds=#p4# (290)" };
		[4] = { itemID = 19442, "=q1=Formula: Powerful Anti-Venom", "=ds=#p6# (300)" };
		[5] = { itemID = 19328, "=q1=Pattern: Dawn Treaders", "=ds=#p7# (290)" };
		[6] = { itemID = 19216, "=q1=Pattern: Argent Boots", "=ds=#p8# (290)" };
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 18171, "=q2=Arcane Mantle of the Dawn", "=ds=#s3# #e17#" };
		[2] = { itemID = 18169, "=q2=Flame Mantle of the Dawn", "=ds=#s3# #e17#" };
		[3] = { itemID = 18170, "=q2=Frost Mantle of the Dawn", "=ds=#s3# #e17#" };
		[4] = { itemID = 18172, "=q2=Nature Mantle of the Dawn", "=ds=#s3# #e17#" };
		[5] = { itemID = 18173, "=q2=Shadow Mantle of the Dawn", "=ds=#s3# #e17#" };
		[6] = { itemID = 19205, "=q1=Plans: Gloves of the Dawn", "=ds=#p2# (300)" };
		[7] = { itemID = 19447, "=q1=Formula: Enchant Bracer - Healing", "=ds=#p4# (300)" };
		[8] = { itemID = 19329, "=q1=Pattern: Golden Mantle of the Dawn", "=ds=#p7# (300)" };
		[9] = { itemID = 19217, "=q1=Pattern: Argent Shoulders", "=ds=#p8# (300)" };
		[10] = { itemID = 13810, "=q1=Blessed Sunfruit", "=ds=#e3#" };
		[11] = { itemID = 13813, "=q1=Blessed Sunfruit Juice", "=ds=#e4#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 18182, "=q2=Chromatic Mantle of the Dawn", "=ds=#s3# #e17#" };
	};
};
---------------------------------------------------
--- Bloodsail Buccaneers & Hydraxian Waterlords ---
---------------------------------------------------

AtlasLoot_Data["Bloodsail"] = {
	Name = BabbleFaction["Bloodsail Buccaneers"];
	{
		Name = BabbleFaction["Bloodsail Buccaneers"];
		[1] = { icon = "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r1#" };
		[2] = { itemID = 22742, "=q1=Bloodsail Shirt", "=ds=#s5#" };
		[3] = { itemID = 22743, "=q1=Bloodsail Sash", "=ds=#s10#" };
		[4] = { itemID = 22745, "=q1=Bloodsail Pants", "=ds=#s11#" };
		[5] = { itemID = 22744, "=q1=Bloodsail Boots", "=ds=#s12#" };
		[7] = { icon = "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r2#" };
		[8] = { itemID = 12185, "=q2=Bloodsail Admiral's Hat", "=ds=#s1#, #a1#" };
	};
};

AtlasLoot_Data["Hydraxian"] = {
	Name = BabbleFaction["Hydraxian Waterlords"];
	{
		Name = BabbleFaction["Hydraxian Waterlords"];
		[1] = { icon = "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r3#" };
		[2] = { itemID = 18399, "=q3=Ocean's Breeze" };
		[3] = { itemID = 18398, "=q3=Tidal Loop" };
		[4] = { itemID = 17333, "=q1=Aqual Quintessence", "=ds=#m3#" };
		[16] = { icon = "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r4#" };
		[17] = { itemID = 22754, "=q1=Eternal Quintessence", "=ds=#m3#" };
	};
};
-------------------------
--- Brood of Nozdormu ---
-------------------------

AtlasLoot_Data["AQBroodRings"] = {
	Name = BabbleFaction["Brood of Nozdormu"];
	{
		Name = BabbleFaction["Brood of Nozdormu"];
		[1] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Conqueror"] };
		[2] = { itemID = 21201, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		[3] = { itemID = 21202, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r2#" };
		[4] = { itemID = 21203, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r3#" };
		[5] = { itemID = 21204, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r4#" };
		[6] = { itemID = 21205, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r5#" };
		[8] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Invoker"] };
		[9] = { itemID = 21206, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		[10] = { itemID = 21207, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r2#" };
		[11] = { itemID = 21208, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r3#" };
		[12] = { itemID = 21209, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r4#" };
		[13] = { itemID = 21210, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r5#" };
		[16] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Protector"] };
		[17] = { itemID = 21196, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		[18] = { itemID = 21197, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r2#" };
		[19] = { itemID = 21198, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r3#" };
		[20] = { itemID = 21199, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r4#" };
		[21] = { itemID = 21200, "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r5#" };
	};
};

-----------------------
--- Cenarion Circle ---
-----------------------

AtlasLoot_Data["Cenarion"] = {
	Name = BabbleFaction["Cenarion Circle"];
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22209, "=q1=Plans: Heavy Obsidian Belt", "=ds=#p2# (300)" };
		[2] = { itemID = 22768, "=q1=Plans: Ironvine Belt", "=ds=#p2# (300)" };
		[3] = { itemID = 20732, "=q1=Formula: Enchant Cloak - Greater Fire Resistance", "=ds=#p4# (300)" };
		[4] = { itemID = 22769, "=q1=Pattern: Bramblewood Belt", "=ds=#p7# (300)" };
		[5] = { itemID = 20509, "=q1=Pattern: Sandstalker Bracers", "=ds=#p7# (300)" };
		[6] = { itemID = 20506, "=q1=Pattern: Spitfire Bracers", "=ds=#p7# (300)" };
		[7] = { itemID = 22772, "=q1=Pattern: Sylvan Shoulders", "=ds=#p8# (300)" };
		[8] = { itemID = 22310, "=q1=Pattern: Cenarion Herb Bag", "=ds=#p8# (275)" };
		[10] = { itemID = 20802, "=q2=Cenarion Combat Badge", "=ds=#m17#" };
		[11] = { itemID = 20800, "=q2=Cenarion Logistics Badge", "=ds=#m17#" };
		[12] = { itemID = 21515, "=q2=Mark of Remulos", "=ds=#m17#" };
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21187, "=q3=Earthweave Cloak", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		[18] = { itemID = 21178, "=q3=Gloves of Earthen Power", "=ds=#s9#, #a2#", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		[19] = { itemID = 21179, "=q3=Band of Earthen Wrath", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		[25] = { itemID = 20801, "=q2=Cenarion Tactical Badge", "=ds=#m17#" };
		[26] = { itemID = 21508, "=q2=Mark of Cenarius", "=ds=#m17#" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22767, "=q1=Plans: Ironvine Gloves", "=ds=#p2# (300)" };
		[2] = { itemID = 22214, "=q1=Plans: Light Obsidian Belt", "=ds=#p2# (300)" };
		[3] = { itemID = 20733, "=q1=Formula: Enchant Cloak - Greater Nature Resistance", "=ds=#p4# (300)" };
		[4] = { itemID = 22770, "=q1=Pattern: Bramblewood Boots", "=ds=#p7# (300)" };
		[5] = { itemID = 20510, "=q1=Pattern: Sandstalker Gauntlets", "=ds=#p7# (300)" };
		[6] = { itemID = 20507, "=q1=Pattern: Spitfire Gauntlets", "=ds=#p7# (300)" };
		[7] = { itemID = 22773, "=q1=Pattern: Sylvan Crown", "=ds=#p8# (300)" };
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21183, "=q3=Earthpower Vest", "=ds=#s5#, #a1#", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
		[18] = { itemID = 21182, "=q3=Band of Earthen Might", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
		[19] = { itemID = 21181, "=q3=Grace of Earth", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22766, "=q1=Plans: Ironvine Breastplate", "=ds=#p2# (300)" };
		[2] = { itemID = 22219, "=q1=Plans: Jagged Obsidian Shield", "=ds=#p2# (300)" };
		[3] = { itemID = 22771, "=q1=Pattern: Bramblewood Helm", "=ds=#p7# (300)" };
		[4] = { itemID = 20511, "=q1=Pattern: Sandstalker Breastplate", "=ds=#p7# (300)" };
		[5] = { itemID = 20508, "=q1=Pattern: Spitfire Breastplate", "=ds=#p7# (300)" };
		[6] = { itemID = 22683, "=q1=Pattern: Gaea's Embrace", "=ds=#p8# (300)" };
		[7] = { itemID = 22312, "=q1=Pattern: Satchel of Cenarius", "=ds=#p8# (300)" };
		[8] = { itemID = 22774, "=q1=Pattern: Sylvan Vest", "=ds=#p8# (300)" };
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21186, "=q4=Rockfury Bracers", "=ds=#s8#, #a1#", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		[18] = { itemID = 21184, "=q4=Deeprock Bracers", "=ds=#s8#, #a4#", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		[19] = { itemID = 21189, "=q4=Might of Cenarius", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		[20] = { itemID = 21185, "=q4=Earthcalm Orb", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22221, "=q1=Plans: Obsidian Mail Tunic", "=ds=#p2# (300)" };
		[2] = { itemID = 20382, "=q1=Pattern: Dreamscale Breastplate", "=ds=#p7# (300)" };
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21190, "=q4=Wrath of Cenarius", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#" };
		[18] = { itemID = 21180, "=q4=Earthstrike", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#" };
		[19] = { itemID = 21188, "=q4=Fist of Cenarius", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#", "" };
	};
};

----------------------------------------
--- Stormpike Guard & Frostwolf Clan ---
----------------------------------------

AtlasLoot_Data["AlteracFactions"] = {
	Name = BabbleZone["Alterac Valley"];
	{
		Name = BabbleFaction["Stormpike Guard"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		[1] = { itemID = 17904, "=q4=Stormpike Insignia Rank 6", "=ds=#s14#, =q1=#r5#" };
		[2] = { itemID = 17903, "=q3=Stormpike Insignia Rank 5", "=ds=#s14#, =q1=#r5#" };
		[3] = { itemID = 17902, "=q3=Stormpike Insignia Rank 4", "=ds=#s14#, =q1=#r4#" };
		[4] = { itemID = 17901, "=q2=Stormpike Insignia Rank 3", "=ds=#s14#, =q1=#r3#" };
		[5] = { itemID = 17900, "=q2=Stormpike Insignia Rank 2", "=ds=#s14#, =q1=#r2#" };
		[6] = { itemID = 17691, "=q2=Stormpike Insignia Rank 1", "=ds=#s14#, =q1=#r1#" };
		[7] = { itemID = 20648, "=q3=Cold Forged Hammer", "=q1=#m4#: =ds=#h3#, #w6#" };
		[8] = { itemID = 19106, "=q3=Ice Barbed Spear", "=q1=#m4#: =ds=#w7#" };
		[9] = { itemID = 19108, "=q3=Wand of Biting Cold", "=q1=#m4#: =ds=#w12#" };
		[10] = { itemID = 19107, "=q3=Bloodseeker", "=q1=#m4#: =ds=#w3#" };
	};
	{
		Name = BabbleFaction["Frostwolf Clan"] .. " (" .. BabbleFaction["Horde"] .. ")";
		[1] = { itemID = 17909, "=q4=Frostwolf Insignia Rank 6", "=ds=#s14#, =q1=#r5#" };
		[2] = { itemID = 17908, "=q3=Frostwolf Insignia Rank 5", "=ds=#s14#, =q1=#r5#" };
		[3] = { itemID = 17907, "=q3=Frostwolf Insignia Rank 4", "=ds=#s14#, =q1=#r4#" };
		[4] = { itemID = 17906, "=q2=Frostwolf Insignia Rank 3", "=ds=#s14#, =q1=#r3#" };
		[5] = { itemID = 17905, "=q2=Frostwolf Insignia Rank 2", "=ds=#s14#, =q1=#r2#" };
		[6] = { itemID = 17690, "=q2=Frostwolf Insignia Rank 1", "=ds=#s14#, =q1=#r1#" };
	};
};

---------------------------
--- Thorium Brotherhood ---
---------------------------

AtlasLoot_Data["Thorium"] = {
	Name = BabbleFaction["Thorium Brotherhood"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 17051, "=q3=Plans: Dark Iron Bracers", "=ds=#p2# (295)" };
		[2] = { itemID = 20761, "=q1=Recipe: Transmute Elemental Fire", "=ds=#p1# (300)" };
		[3] = { itemID = 19444, "=q1=Formula: Enchant Weapon - Strength", "=ds=#p4# (290)" };
		[4] = { itemID = 17023, "=q1=Pattern: Molten Helm", "=ds=#p7# (300)" };
		[5] = { itemID = 17022, "=q1=Pattern: Corehound Boots", "=ds=#p7# (295)" };
		[6] = { itemID = 17018, "=q1=Pattern: Flarecore Gloves", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 17060, "=q3=Plans: Dark Iron Destroyer", "=ds=#p2# (300)" };
		[2] = { itemID = 17059, "=q3=Plans: Dark Iron Reaver", "=ds=#p2# (300)" };
		[3] = { itemID = 17049, "=q3=Plans: Fiery Chain Girdle", "=ds=#p2# (295)" };
		[4] = { itemID = 19206, "=q1=Plans: Dark Iron Helm", "=ds=#p2# (300)" };
		[5] = { itemID = 19448, "=q1=Formula: Enchant Weapon - Mighty Spirit", "=ds=#p4# (300)" };
		[6] = { itemID = 17025, "=q1=Pattern: Black Dragonscale Boots", "=ds=#p7# (300)" };
		[7] = { itemID = 19330, "=q1=Pattern: Lava Belt", "=ds=#p7# (300)" };
		[8] = { itemID = 17017, "=q1=Pattern: Flarecore Mantle", "=ds=#p8# (300)" };
		[9] = { itemID = 19219, "=q1=Pattern: Flarecore Robe", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 18592, "=q4=Plans: Sulfuron Hammer", "=ds=#p2# (300), #m4#" };
		[2] = { itemID = 17052, "=q3=Plans: Dark Iron Leggings", "=ds=#p2# (300)" };
		[3] = { itemID = 17053, "=q3=Plans: Fiery Chain Shoulders", "=ds=#p2# (300)" };
		[4] = { itemID = 19209, "=q1=Plans: Blackfury", "=ds=#p2# (300)" };
		[5] = { itemID = 19208, "=q1=Plans: Black Amnesty", "=ds=#p2# (300)" };
		[6] = { itemID = 19207, "=q1=Plans: Dark Iron Gauntlets", "=ds=#p2# (300)" };
		[7] = { itemID = 19449, "=q1=Formula: Enchant Weapon - Mighty Intellect", "=ds=#p4# (300)" };
		[8] = { itemID = 19331, "=q1=Pattern: Chromatic Gauntlets", "=ds=#p7# (300)" };
		[9] = { itemID = 19332, "=q1=Pattern: Corehound Belt", "=ds=#p7# (300)" };
		[9] = { itemID = 19333, "=q1=Pattern: Molten Belt", "=ds=#p7# (300)" };
		[10] = { itemID = 19220, "=q1=Pattern: Flarecore Leggings", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 19211, "=q1=Plans: Blackguard", "=ds=#p2# (300)" };
		[2] = { itemID = 20040, "=q1=Plans: Dark Iron Boots", "=ds=#p2# (300)" };
		[3] = { itemID = 19210, "=q1=Plans: Ebon Hand", "=ds=#p2# (300)" };
		[4] = { itemID = 19212, "=q1=Plans: Nightfall", "=ds=#p2# (300)" };
	};
};
----------------------
--- Timbermaw Hold ---
----------------------

AtlasLoot_Data["Timbermaw"] = {
	Name = BabbleFaction["Timbermaw Hold"];
	{
		Name = BabbleFaction["Timbermaw Hold"];
		[1] = { icon = "INV_Misc_Horn_01", "=q6=#r2#" };
		[2] = { itemID = 13484, "=q2=Recipe: Transmute Earth to Water", "=ds=#p1# (275)" };
		[3] = { itemID = 22392, "=q1=Formula: Enchant 2H Weapon - Agility", "=ds=#p4# (290)" };
		[4] = { itemID = 20254, "=q1=Pattern: Warbear Woolies", "=ds=#p7# (285)" };
		[5] = { itemID = 20253, "=q1=Pattern: Warbear Harness", "=ds=#p7# (275)" };
		[7] = { icon = "INV_Misc_Horn_01", "=q6=#r3#" };
		[8] = { itemID = 16768, "=q2=Furbolg Medicine Pouch", "=ds=#s15#" };
		[9] = { itemID = 16769, "=q2=Furbolg Medicine Totem", "=ds=#h3#, #w6#" };
		[10] = { itemID = 19202, "=q1=Plans: Heavy Timbermaw Belt", "=ds=#p2# (290)" };
		[11] = { itemID = 19445, "=q1=Formula: Enchant Weapon - Agility", "=ds=#p4# (290)" };
		[12] = { itemID = 19326, "=q1=Pattern: Might of the Timbermaw", "=ds=#p7# (290)" };
		[13] = { itemID = 19215, "=q1=Pattern: Wisdom of the Timbermaw", "=ds=#p8# (290)" };
		[16] = { icon = "INV_Misc_Horn_01", "=q6=#r4#" };
		[17] = { itemID = 19204, "=q1=Plans: Heavy Timbermaw Boots", "=ds=#p2# (300)" };
		[18] = { itemID = 19327, "=q1=Pattern: Timbermaw Brawlers", "=ds=#p7# (300)" };
		[19] = { itemID = 19218, "=q1=Pattern: Mantle of the Timbermaw", "=ds=#p8# (300)" };
		[22] = { icon = "INV_Misc_Horn_01", "=q6=#r5#" };
		[23] = { itemID = 21326, "=q4=Defender of the Timbermaw" };
	};
};

----------------------
--- Zandalar Tribe ---
----------------------

AtlasLoot_Data["Zandalar"] = {
	Name = BabbleFaction["Zandalar Tribe"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 19858, "=q2=Zandalar Honor Token", "=ds=#m17#" };
	};
	{
		Name = BabbleFaction["Friendly"];
		[1] = { icon = "INV_Misc_Coin_08", "=q6=#r2#" };
		[2] = { itemID = 20012, "=q1=Recipe: Greater Dreamless Sleep", "=ds=#p1# (275)" };
		[3] = { itemID = 19778, "=q1=Plans: Bloodsoul Gauntlets", "=ds=#p2# (300)" };
		[4] = { itemID = 19781, "=q1=Plans: Darksoul Shoulders", "=ds=#p2# (300)" };
		[5] = { itemID = 20757, "=q1=Formula: Brilliant Mana Oil", "=ds=#p4# (300)" };
		[6] = { itemID = 20001, "=q1=Schematic: Bloodvine Lens", "=ds=#p5# (300)" };
		[7] = { itemID = 19771, "=q1=Pattern: Primal Batskin Bracers", "=ds=#p7# (300)" };
		[8] = { itemID = 19766, "=q1=Pattern: Bloodvine Boots", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 20014, "=q1=Recipe: Major Troll's Blood Potion", "=ds=#p1# (290)" };
		[2] = { itemID = 19777, "=q1=Plans: Bloodsoul Shoulders", "=ds=#p2# (300)" };
		[3] = { itemID = 19780, "=q1=Plans: Darksoul Leggings", "=ds=#p2# (300)" };
		[4] = { itemID = 20756, "=q1=Formula: Brilliant Wizard Oil", "=ds=#p4# (300)" };
		[5] = { itemID = 20000, "=q1=Schematic: Bloodvine Goggles", "=ds=#p5# (300)" };
		[6] = { itemID = 19773, "=q1=Pattern: Blood Tiger Shoulders", "=ds=#p7# (300)" };
		[7] = { itemID = 19770, "=q1=Pattern: Primal Batskin Gloves", "=ds=#p7# (300)" };
		[8] = { itemID = 19765, "=q1=Pattern: Bloodvine Leggings", "=ds=#p8# (300)" };
		[9] = { itemID = 20031, "=q1=Essence Mango", "=ds=#e3#", "1 #zandalar#" };
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 20080, "=q2=Sheen of Zanza", "=ds=#e2#", "3 #zandalar#" };
		[2] = { itemID = 20079, "=q2=Spirit of Zanza", "=ds=#e2#", "3 #zandalar#" };
		[3] = { itemID = 20081, "=q2=Swiftness of Zanza", "=ds=#e2#", "3 #zandalar#" };
		[4] = { itemID = 20011, "=q1=Recipe: Mageblood Potion", "=ds=#p1# (275)" };
		[5] = { itemID = 19776, "=q1=Plans: Bloodsoul Breastplate", "=ds=#p2# (300)" };
		[6] = { itemID = 19779, "=q1=Plans: Darksoul Breastplate", "=ds=#p2# (300)" };
		[7] = { itemID = 19772, "=q1=Pattern: Blood Tiger Breastplate", "=ds=#p7# (300)" };
		[8] = { itemID = 19769, "=q1=Pattern: Primal Batskin Jerkin", "=ds=#p7# (300)" };
		[9] = { itemID = 19764, "=q1=Pattern: Bloodvine Vest", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 20077, "=q3=Zandalar Signet of Might", "=ds=#s3# #e17#", "15 #zandalar#" };
		[2] = { itemID = 20076, "=q3=Zandalar Signet of Mojo", "=ds=#s3# #e17#", "15 #zandalar#" };
		[3] = { itemID = 20078, "=q3=Zandalar Signet of Serenity", "=ds=#s3# #e17#", "15 #zandalar#" };
		[4] = { itemID = 20013, "=q1=Recipe: Living Action Potion", "=ds=#p1# (285)" };
	};
};

--------------------
--- World Bosses ---
--------------------

----------------------------
--- Dragons of Nightmare ---
----------------------------

AtlasLoot_Data["WorldBossesCLASSIC"] = {
	Name = AL["World Bosses"];
	Type = "ClassicRaid";
	{
		Name = "Weapons/Trinkets";
		[1] = { itemID = 20581, "=q4=Staff of Rampant Growth", "=ds=#w9# =q1=#m5#", "9.70%" };
		[2] = { itemID = 17070, "=q4=Fang of the Mystics", "=ds=#h3#, #w4#", "13.64%" };
		[3] = { itemID = 19130, "=q4=Cold Snap", "11.89%" };
		[4] = { itemID = 17113, "=q4=Amberseal Keeper", "=ds=#h2#, #w9#", "16.87% " };
		[5] = { itemID = 20636, "=q4=Hibernation Crystal", "12.75%" };
		[6] = { itemID = 20582, "=q4=Trance Stone", "=ds=#s15# =q1=#m5#", "9.57%" };
		[7] = { itemID = 18665, "=q4=The Eye of Shadow", "40.96%" };
		[14] = { itemID = 18704, "=q4=Mature Blue Dragon Sinew", "=ds=#m3# =q1=(#c2#)", "51.56%" };
		[15] = { itemID = 18714, "=q4=Ancient Sinew Wrapped Lamina", "=q1=#m4#: =ds=#m14# #w19#" };
		[16] = { itemID = 20580, "=q4=Hammer of Bestial Fury", "=ds=#h3#, #w6# =q1=#m5#", "8.93%" };
		[17] = { itemID = 20599, "=q4=Polished Ironwood Crossbow", "=ds=#w3#", "12.63%" };
		[18] = { itemID = 18202, "=q4=Eskhandar's Left Claw", "=ds=#h4#, #w13#", "11.76%" };
		[19] = { itemID = 20577, "=q4=Nightmare Blade", "12.07%" };
		[20] = { itemID = 20578, "=q4=Emerald Dragonfang", "=ds=#h1#, #w4#", "9.95%" };
		[21] = { itemID = 17112, "=q4=Empyrean Demolisher", "=ds=#h1#, #w6#", "" };
		[22] = { itemID = 18542, "=q4=Typhoon", "=ds=#h2#, #w10#", "16.89%" };
		[29] = { itemID = 20644, "=q4=Nightmare Engulfed Object", "=ds=#m3# =q1=#m5#", "80.05%" };
		[30] = { itemID = 20600, "=q4=Malfurion's Signet Ring" };
	};
	{
		Name = "Physical Gear";
		[1] = { itemID = 20623, "=q4=Circlet of Restless Dreams", "=ds=#s1#, #a2#", "10.51%" };
		[3] = { itemID = 20615, "=q4=Dragonspur Wraps", "=ds=#s8#, #a2# =q1=#m5#", "8.83%" };
		[4] = { itemID = 122884, "=q4=Wristguards of the Shifting Sands", "=ds=#s8#, #a2#", "" };
		[6] = { itemID = 122885, "=q4=Waistguard of the Shifting Sands", "=ds=#s10#, #a2#", "" };
		[8] = { itemID = 18544, "=q4=Doomhide Gauntlets", "=ds=#s9#, #a2#", "11.76%" };
		[10] = { itemID = 20627, "=q4=Dark Heart Pants", "=ds=#s11#, #a2#", "11.68%" };
		[13] = { itemID = 20633, "=q4=Unnatural Leather Spaulders", "=ds=#s3#, #a2#", "11.30%" };
		[11] = { itemID = 20617, "=q4=Ancient Corroded Leggings", "=ds=#s11#, #a3# =q1=#m5#", "9.80%" };
		[16] = { itemID = 20624, "=q4=Ring of the Unliving", "13.23%" };
		[18] = { itemID = 20622, "=q4=Dragonheart Necklace", "12.35%" };
		[20] = { itemID = 18541, "=q4=Puissant Cape", "11.71%" };
		[21] = { itemID = 18204, "=q4=Eskhandar's Pelt", "=ds=#s4#, #a1#", "12.23%" };
	};
	{
		Name = "Caster Gear";
		[1] = { itemID = 19132, "=q4=Crystal Adorned Crown", "=ds=#s1#, #a1#", "" };
		[2] = { itemID = 18546, "=q4=Infernal Headcage", "=ds=#s1#, #a3#", "22.89%" };
		[3] = { itemID = 20628, "=q4=Deviate Growth Cap", "=ds=#s1#, #a2#", "15.80%" };
		[5] = { itemID = 18545, "=q4=Leggings of Arcane Supremacy", "=ds=#s11#, #a1#", "16.39% " };
		[6] = { itemID = 19133, "=q4=Fel Infused Leggings", "=ds=#s11#, #a1#", "12.05%" };
		[7] = { itemID = 20638, "=q4=Leggings of the Demented Mind", "=ds=#s11#, #a3#", "3.66%" };
		[8] = { itemID = 20639, "=q4=Strangely Glyphed Legplates", "=ds=#s11#, #a4#", "8.87%" };
		[10] = { itemID = 19131, "=q4=Snowblind Shoes", "=ds=#s12#, #a1#", "12.23%" };
		[11] = { itemID = 20631, "=q4=Mendicant's Slippers", "=ds=#s12#, #a1#", "13.14%" };
		[12] = { itemID = 20634, "=q4=Boots of Fright", "=ds=#s12#, #a2#", "10.15%" };
		[13] = { itemID = 20621, "=q4=Boots of the Endless Moor", "=ds=#s12#, #a3#", "10.24%" };
		[14] = { itemID = 20629, "=q4=Malignant Footguards", "=ds=#s12#, #a3#", "4.46%" };
		[16] = { itemID = 20630, "=q4=Gauntlets of the Shining Light", "=ds=#s9#, #a4#", "8.19%" };
		[17] = { itemID = 20618, "=q4=Gloves of Delusional Power", "=ds=#s9#, #a1# =q1=#m5#", "9.71%" };
		[15] = { itemID = 20635, "=q4=Jade Inlaid Vestments", "=ds=#s5#, #a1#", "14.19%" };
		[19] = { itemID = 19135, "=q4=Blacklight Bracer", "=ds=#s8#, #a1#", "11.89%" };
		[20] = { itemID = 122886, "=q4=Bracers of the Sand Prince", "=ds=#s8#, #a2#", "" };
		[21] = { itemID = 20626, "=q4=Black Bark Wristbands", "=ds=#s8#, #a1#", "9.44%" };
		[23] = { itemID = 122887, "=q4=Belt of the Sand Prince", "=ds=#s10#, #a2#", "" };
		[24] = { itemID = 19134, "=q4=Flayed Doomguard Belt", "=ds=#s10#, #a2#", "16.89%" };
		[25] = { itemID = 20625, "=q4=Belt of the Dark Bog", "=ds=#s10#, #a1#", "10.99%" };
		[27] = { itemID = 20579, "=q4=Green Dragonskin Cloak", "=ds=#s4# =q1=#m5#", "9.14%" };
		[28] = { itemID = 18208, "=q4=Drape of Benediction", "11.22%" };
		[29] = { itemID = 20632, "=q4=Mindtear Band", "13.69%" };
		[30] = { itemID = 18543, "=q4=Ring of Entropy", "14.46%" };
	};
	{
		Name = "Tank Gear";
		[1] = { itemID = 18547, "=q4=Unmelting Ice Girdle", "=ds=#s10#, #a4#", "12.93%" };
		[3] = { itemID = 20616, "=q4=Dragonbone Wristguards", "=ds=#s8#, #a4# =q1=#m5#", "10.20%" };
		[5] = { itemID = 20619, "=q4=Acid Inscribed Greaves", "=ds=#s12#, #a4# =q1=#m5#", "8.85%" };
		[7] = { itemID = 20637, "=q4=Acid Inscribed Pauldrons", "=ds=#s3#, #a4#", "10.13%" };
	};
};
