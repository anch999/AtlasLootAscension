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
		{ 1, 0, "INV_Box_01", "=q6=#e9#" };
		{ 2, 7146, "", "=q2=The Scarlet Key" };
		{ 3, 12382, "", "=q2=Key to the City" };
		{ 4, 6893, "", "=q1=Workshop Key" };
		{ 5, 11000, "", "=q1=Shadowforge Key" };
		{ 6, 11140, "", "=q1=Prison Cell Key" };
		{ 7, 18249, "", "=q1=Crescent Key" };
		{ 8, 13704, "", "=q1=Skeleton Key" };
		{ 10, 0, "INV_Box_01", "=q6=#j7#" };
		{ 11, 22057, "", "=q1=Brazier of Invocation" };
		{ 12, 21986, "", "=q1=Banner of Provocation" };
		{ 16, 0, "INV_Box_01", "=q6=#m20#" };
		{ 17, 19931, "", "=q3=Gurubashi Mojo Madness" };
		{ 18, 13523, "", "=q1=Blood of Innocents" };
		{ 19, 18746, "", "=q1=Divination Scryer" };
		{ 20, 18663, "", "=q1=J'eevee's Jar" };
		{ 21, 19974, "", "=q1=Mudskunk Lure" };
		{ 22, 7733, "", "=q1=Staff of Prehistoria" };
		{ 23, 10818, "", "=q1=Yeh'kinya's Scroll" };
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
		{ 1, 21499, "", "=q4=Vestments of the Shifting Sands",  droprate = "7%" };
		{ 2, 21498, "", "=q4=Qiraji Sacrificial Dagger",  droprate = "7%" };
		{ 4, 21500, "", "=q3=Belt of the Inquisition",  droprate = "14%" };
		{ 5, 21501, "", "=q3=Toughened Silithid Hide Gloves",  droprate = "12%" };
		{ 6, 21502, "", "=q3=Sand Reaver Wristguards",  droprate = "13%" };
		{ 7, 21503, "", "=q3=Belt of the Sand Reaver",  droprate = "14%" };
		{ 9, 22217, "", "=q1=Kurinnaxx's Venom Sac",  droprate = "100%" };
		{ 16, 1506051, "", "=q4=Ceremonial Qiraji Drape", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsBACK","Token"} };
	};
	{
		Name = BabbleBoss["General Rajaxx"];
		{ 1, 21493, "", "=q4=Boots of the Vanguard",  droprate = "8%" };
		{ 2, 21492, "", "=q4=Manslayer of the Qiraji",  droprate = "10%" };
		{ 4, 21496, "", "=q3=Bracers of Qiraji Command",  droprate = "15%" };
		{ 5, 21494, "", "=q3=Southwind's Grasp",  droprate = "15%" };
		{ 6, 21497, "", "=q3=Boots of the Qiraji General",  droprate = "15%" };
		{ 7, 21495, "", "=q3=Legplates of the Qiraji Command",  droprate = "15%" };
		{ 9, 0, "INV_Box_01", "=q6=" .. AL["Rajaxx's Captains"] };
		{ 10, 21810, "", "=q3=Treads of the Wandering Nomad",  droprate = "3%" };
		{ 11, 21809, "", "=q3=Fury of the Forgotten Swarm",  droprate = "3%" };
		{ 12, 21806, "", "=q3=Gavel of Qiraji Authority",  droprate = "3%" };
		{ 16, 1506051, "", "=q4=Ceremonial Qiraji Drape", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsBACK","Token"} };
		{ 18, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Lieutenant General Andorov"] };
		{ 19, 22221, "", "=q1=Plans: Obsidian Mail Tunic", "=ds=#p2# (300)" };
		{ 20, 22219, "", "=q1=Plans: Jagged Obsidian Shield", "=ds=#p2# (300)" };
	};
	{
		Name = BabbleBoss["Moam"];
		{ 1, 21472, "", "=q4=Dustwind Turban",  droprate = "7%" };
		{ 2, 21467, "", "=q4=Thick Silithid Chestguard",  droprate = "6%" };
		{ 3, 21479, "", "=q4=Gauntlets of the Immovable",  droprate = "7%" };
		{ 4, 21471, "", "=q4=Talon of Furious Concentration",  droprate = "7%" };
		{ 6, 21470, "", "=q3=Cloak of the Savior",  droprate = "14%" };
		{ 7, 21468, "", "=q3=Mantle of Maz'Nadir",  droprate = "15%" };
		{ 8, 21455, "", "=q3=Southwind Helm",  droprate = "14%" };
		{ 9, 21474, "", "=q3=Chitinous Shoulderguards",  droprate = "15%" };
		{ 10, 21469, "", "=q3=Gauntlets of Southwind",  "1" };
		{ 11, 21476, "", "=q3=Obsidian Scaled Leggings",  droprate = "6%" };
		{ 12, 21475, "", "=q3=Legplates of the Destroyer",  droprate = "10%" };
		{ 13, 21477, "", "=q3=Ring of Fury",  droprate = "14%" };
		{ 14, 21473, "", "=q3=Eye of Moam",  droprate = "14%" };
		{ 16, 1506053, "", "=q4=Ceremonial Qiraji Pendant", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsNECK","Token"} };
		{ 18, 22220, "", "=q3=Plans: Black Grasp of the Destroyer", "=ds=#p2# (300)", "", droprate = "4%" };
		{ 19, 22194, "", "=q4=Black Grasp of the Destroyer" };
	};
	{
		Name = BabbleBoss["Buru the Gorger"];
		{ 1, 21487, "", "=q4=Slimy Scaled Gauntlets",  droprate = "2%" };
		{ 2, 21486, "", "=q4=Gloves of the Swarm",  droprate = "5%" };
		{ 3, 21485, "", "=q4=Buru's Skull Fragment",  droprate = "7%" };
		{ 5, 21489, "", "=q3=Quicksand Waders",  droprate = "15%" };
		{ 6, 21491, "", "=q3=Scaled Bracers of the Gorger",  droprate = "16%" };
		{ 7, 21490, "", "=q3=Slime Kickers",  droprate = "15%" };
		{ 8, 21488, "", "=q3=Fetish of Chitinous Spikes",  droprate = "17%" };
		{ 16, 1506052, "", "=q4=Ceremonial Qiraji Ring", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsFINGER","Token"} };
	};
	{
		Name = BabbleBoss["Ayamiss the Hunter"];
		{ 1, 21479, "", "=q4=Gauntlets of the Immovable",  droprate = "6%" };
		{ 2, 21466, "", "=q4=Stinger of Ayamiss",  droprate = "2%" };
		{ 3, 21478, "", "=q4=Bow of Taut Sinew",  droprate = "10%" };
		{ 5, 21484, "", "=q3=Helm of Regrowth",  droprate = "15%" };
		{ 6, 21480, "", "=q3=Scaled Silithid Gauntlets",  droprate = "17%" };
		{ 7, 21482, "", "=q3=Boots of the Fiery Sands",  droprate = "4%" };
		{ 8, 21481, "", "=q3=Boots of the Desert Protector",  droprate = "11%" };
		{ 9, 21483, "", "=q3=Ring of the Desert Winds",  droprate = "16%" };
		{ 16, 1506052, "", "=q4=Ceremonial Qiraji Ring", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsFINGER","Token"} };
	};
	{
		Name = BabbleBoss["Ossirian the Unscarred"];
		{ 1, 21456, "", "=q4=Sandstorm Cloak",  droprate = "10%" };
		{ 2, 21464, "", "=q4=Shackles of the Unscarred",  droprate = "12%" };
		{ 3, 21462, "", "=q4=Gloves of Dark Wisdom",  droprate = "11%" };
		{ 4, 21461, "", "=q4=Leggings of the Black Blizzard",  droprate = "12%" };
		{ 5, 21458, "", "=q4=Gauntlets of New Life",  droprate = "13%" };
		{ 6, 21454, "", "=q4=Runic Stone Shoulders",  droprate = "4%" };
		{ 7, 21463, "", "=q4=Ossirian's Binding",  droprate = "12%" };
		{ 8, 21460, "", "=q4=Helm of Domination",  droprate = "12%" };
		{ 9, 21453, "", "=q4=Mantle of the Horusath",  droprate = "6%" };
		{ 10, 21457, "", "=q4=Bracers of Brutality",  droprate = "10%" };
		{ 11, 21715, "", "=q4=Sand Polished Hammer",  droprate = "5%" };
		{ 12, 21459, "", "=q4=Crossbow of Imminent Doom",  droprate = "6%" };
		{ 13, 21452, "", "=q4=Staff of the Ruins",  droprate = "10%" };
		{ 16, 21220, "", "=q4=Head of Ossirian the Unscarred",  droprate = "100%" };
		{ 17, 21504, "", "=q4=Charm of the Shifting Sands" };
		{ 18, 21507, "", "=q4=Amulet of the Shifting Sands" };
		{ 19, 21505, "", "=q4=Choker of the Shifting Sands" };
		{ 20, 21506, "", "=q4=Pendant of the Shifting Sands" };
		{ 22, 1506053, "", "=q4=Ceremonial Qiraji Pendant", "=ds=#tt2.5A#", "", droprate = "100%", lootTable = {"AQ20SetsNECK","Token"} };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 20873, "", "=q3=Alabaster Idol",  "0.39%" };
		{ 2, 20869, "", "=q3=Amber Idol",  "0.36%" };
		{ 3, 20866, "", "=q3=Azure Idol",  "0%" };
		{ 4, 20870, "", "=q3=Jasper Idol",  "0.52%" };
		{ 5, 20868, "", "=q3=Lambent Idol",  "0%" };
		{ 6, 20871, "", "=q3=Obsidian Idol",  "0.41%" };
		{ 7, 20867, "", "=q3=Onyx Idol",  "0.36%" };
		{ 8, 20872, "", "=q3=Vermillion Idol",  "0.31%" };

		{ 9, 22202, "", "=q1=Small Obsidian Shard" };
		{ 10, 22203, "", "=q1=Large Obsidian Shard" };

		{ 16, 20864, "", "=q2=Bone Scarab",  "0.84%" };
		{ 17, 20861, "", "=q2=Bronze Scarab",  "0.88%" };
		{ 18, 20863, "", "=q2=Clay Scarab",  "0.95%" };
		{ 19, 20862, "", "=q2=Crystal Scarab",  droprate = "0.99%" };
		{ 20, 20859, "", "=q2=Gold Scarab",  "0.96%" };
		{ 21, 20865, "", "=q2=Ivory Scarab",  "0.93%" };
		{ 22, 20860, "", "=q2=Silver Scarab",  droprate = "1%" };
		{ 23, 20858, "", "=q2=Stone Scarab",  "0.86%" };
		{ 24, 21761, "", "=q1=Scarab Coffer Key",  droprate = "7%" };

		{ 12, 21404, "", "=q4=Dagger of Veiled Shadows" };
		{ 13, 21416, "", "=q4=Kris of Unspoken Names" };
		{ 14, 21413, "", "=q4=Blade of Vaulted Secrets" };
		{ 15, 21395, "", "=q4=Blade of Eternal Justice" };
		
		{ 26, 21407, "", "=q4=Mace of Unending Life" };
		{ 27, 21410, "", "=q4=Gavel of Infinite Wisdom" };
		{ 28, 21398, "", "=q4=Hammer of the Gathering Storm" };
		{ 29, 21401, "", "=q4=Scythe of the Unseen Path" };
		{ 30, 21392, "", "=q4=Sickle of Unyielding Strength" };
	};
	{
		Name = "AQ Enchants";
		{ 1, 20728, "", "=q3=Formula: Enchant Gloves - Frost Power" };
		{ 2, 20731, "", "=q3=Formula: Enchant Gloves - Superior Agility" };
		{ 3, 20734, "", "=q3=Formula: Enchant Cloak - Stealth" };
		{ 4, 20729, "", "=q3=Formula: Enchant Gloves - Fire Power" };
		{ 5, 20736, "", "=q3=Formula: Enchant Cloak - Dodge" };
		{ 6, 20730, "", "=q3=Formula: Enchant Gloves - Healing Power" };
		{ 7, 20727, "", "=q3=Formula: Enchant Gloves - Shadow Power" };
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
		{ 1, 21701, "", "=q4=Cloak of Concentrated Hatred",  droprate = "11%" };
		{ 2, 21708, "", "=q4=Beetle Scaled Wristguards",  droprate = "12%" };
		{ 3, 21698, "", "=q4=Leggings of Immersion",  " 10%" };
		{ 4, 21699, "", "=q4=Barrage Shoulders",  droprate = "11%" };
		{ 5, 21705, "", "=q4=Boots of the Fallen Prophet",  droprate = "3%" };
		{ 6, 21814, "", "=q4=Breastplate of Annihilation",  droprate = "11%" };
		{ 7, 21704, "", "=q4=Boots of the Redeemed Prophecy",  droprate = "7%" };
		{ 8, 21706, "", "=q4=Boots of the Unwavering Will",  droprate = "12%" };

		{ 10, 21702, "", "=q4=Amulet of Foul Warding",  droprate = "12%" };
		{ 11, 21700, "", "=q4=Pendant of the Qiraji Guardian",  droprate = "11%" };
		{ 12, 21707, "", "=q4=Ring of Swarming Thought",  droprate = "12%" };
		{ 13, 21703, "", "=q4=Hammer of Ji'zhi",  droprate = "7%" };
		{ 14, 21128, "", "=q4=Staff of the Qiraji Prophets",  " 6%" };
		
		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "1%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "1%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };
		{ 27, 22222, "", "=q3=Plans: Thick Obsidian Breastplate", "=ds=#p2# (300)", "", droprate = "5%" };
		{ 28, 22196, "", "=q4=Thick Obsidian Breastplate" };

		{ 30, 20928, "", "=q4=Bindings of the Lost Nomad",  droprate = "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{
		Name = BabbleBoss["The Bug Family"];
		{ 1, 21697, "", "=q4=Cape of the Trinity",  droprate = "14%" };
		{ 2, 21694, "", "=q4=Ternary Mantle",  droprate = "16%" };
		{ 3, 21696, "", "=q4=Robes of the Triumvirate",  droprate = "13%" };
		{ 4, 21693, "", "=q4=Guise of the Devourer",  droprate = "16%" };
		{ 5, 21692, "", "=q4=Triad Girdle",  droprate = "16%" };
		{ 6, 21695, "", "=q4=Angelista's Touch",  droprate = "14%" };
		{ 8, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "7%" };
		{ 9, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "7%" };

		{ 11, 21680, "", "=q4=Vest of Swift Execution",  droprate = "21%" };
		{ 12, 21603, "", "=q4=Wand of Qiraji Nobility",  droprate = "25%" };
		{ 13, 21681, "", "=q4=Ring of the Devoured",  droprate = "17%" };
		{ 14, 21685, "", "=q4=Petrified Scarab",  droprate = "21%" };

		{ 16, 21689, "", "=q4=Gloves of Ebru",  droprate = "18%" };
		{ 17, 21691, "", "=q4=Ooze-ridden Gauntlets",  droprate = "20%" };
		{ 18, 21688, "", "=q4=Boots of the Fallen Hero",  droprate = "18%" };
		{ 19, 21690, "", "=q4=Angelista's Charm",  droprate = "20%" };

		{ 21, 21686, "", "=q4=Mantle of Phrenic Power",  droprate = "13%" };
		{ 22, 21682, "", "=q4=Bile-Covered Gauntlets",  droprate = "19%" };
		{ 23, 21684, "", "=q4=Mantle of the Desert's Fury",  droprate = "16%" };
		{ 24, 21683, "", "=q4=Mantle of the Desert Crusade",  droprate = "14%" };
		{ 25, 21687, "", "=q4=Ukko's Ring of Darkness",  droprate = "20%" };

		{ 27, 20928, "", "=q4=Bindings of the Lost Nomad",  droprate = "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{
		Name = BabbleBoss["Battleguard Sartura"];
		{ 1, 21671, "", "=q4=Robes of the Battleguard",  droprate = "13%" };
		{ 2, 21676, "", "=q4=Leggings of the Festering Swarm",  droprate = "13%" };
		{ 3, 21648, "", "=q4=Recomposed Boots",  droprate = "7%" };
		{ 4, 21669, "", "=q4=Creeping Vine Helm",  droprate = "12%" };
		{ 5, 21672, "", "=q4=Gloves of Enforcement",  droprate = "11%" };
		{ 6, 21675, "", "=q4=Thick Qirajihide Belt",  droprate = "13%" };
		{ 7, 21668, "", "=q4=Scaled Leggings of Qiraji Fury",  droprate = "4%" };
		{ 8, 21674, "", "=q4=Gauntlets of Steadfast Determination",  droprate = "11%" };
		{ 9, 21667, "", "=q4=Legplates of Blazing Light",  droprate = "7%" };

		{ 11, 21678, "", "=q4=Necklace of Purity" };
		{ 12, 21670, "", "=q4=Badge of the Swarmguard",  droprate = "13%" };
		{ 13, 21666, "", "=q4=Sartura's Might",  droprate = "6%" };
		{ 14, 21673, "", "=q4=Silithid Claw",  droprate = "7%" };

		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "4%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };

		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "4%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		{ 27, 20932, "", "=q4=Spaulders of the Imperial Guard",  droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Fankriss the Unyielding"];
		{ 1, 21627, "", "=q4=Cloak of Untold Secrets",  droprate = "12%" };
		{ 2, 21663, "", "=q4=Robes of the Guardian Saint",  droprate = "12%" };
		{ 3, 21665, "", "=q4=Mantle of Wicked Revenge",  droprate = "13%" };
		{ 4, 21645, "", "=q4=Hive Tunneler's Boots",  droprate = "14%" };
		{ 5, 21651, "", "=q4=Scaled Sand Reaver Leggings",  droprate = "12%" };
		{ 6, 21639, "", "=q4=Pauldrons of the Unrelenting",  droprate = "14%" };
		{ 7, 21652, "", "=q4=Silithid Carapace Chestguard",  droprate = "10%" };

		{ 9, 21647, "", "=q4=Fetish of the Sand Reaver",  droprate = "13%" };
		{ 10, 21664, "", "=q4=Barbed Choker",  droprate = "12%" };
		{ 11, 22402, "", "=q4=Libram of Grace",  droprate = "4%" };
		{ 12, 22396, "", "=q4=Totem of Life",  droprate = "1%" };
		{ 13, 21650, "", "=q4=Ancient Qiraji Ripper",  " 7%" };
		{ 14, 21635, "", "=q4=Barb of the Sand Reaver",  droprate = "6%" };

		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "4%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "4%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		{ 27, 20932, "", "=q4=Spaulders of the Imperial Guard",  droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Viscidus"];
		{ 1, 21624, "", "=q4=Gauntlets of Kalimdor",  droprate = "3%" };
		{ 2, 21626, "", "=q4=Slime-coated Leggings",  droprate = "13%" };
		{ 3, 21623, "", "=q4=Gauntlets of the Righteous Champion",  droprate = "5%" };
		{ 4, 21691, "", "=q4=Ooze-ridden Gauntlets",  droprate = "5%" };
		{ 5, 21688, "", "=q4=Boots of the Fallen Hero",  droprate = "18%" };
		{ 6, 21682, "", "=q4=Bile-Covered Gauntlets",  droprate = "19%" };

		{ 8, 21677, "", "=q4=Ring of the Qiraji Fury",  droprate = "2%" };
		{ 9, 21625, "", "=q4=Scarab Brooch",  droprate = "21%" };
		{ 10, 22399, "", "=q4=Idol of Health",  droprate = "7%" };
		{ 11, 21622, "", "=q4=Sharpened Silithid Femur",  droprate = "15%" };

		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "3%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "6%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		{ 27, 20932, "", "=q4=Spaulders of the Imperial Guard",  droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} };
		{ 28, 20931, "", "=q4=Hardened Qiraj Chitin",  droprate = "100%", lootTable = {"T2.5LEGS","Token"} };
		{ 29, 20930, "", "=q4=Diadem of the Desert Prince",  droprate = "100%", lootTable = {"T2.5HEAD","Token"} };
		{ 30, 20928, "", "=q4=Bindings of the Lost Nomad",  droprate = "100%", lootTable = {"T2.5FEET","Token"} };
	};
	{ 
		Name = BabbleBoss["Princess Huhuran"];
		{ 1, 21619, "", "=q4=Gloves of the Messiah",  droprate = "12%" };
		{ 2, 21621, "", "=q4=Cloak of the Golden Hive",  droprate = "12%" };
		{ 3, 21617, "", "=q4=Wasphide Gauntlets",  droprate = "11%" };
		{ 4, 21618, "", "=q4=Hive Defiler Wristguards",  droprate = "10%" };
		{ 5, 21694, "", "=q4=Ternary Mantle",  droprate = "16%" };
		{ 6, 21683, "", "=q4=Mantle of the Desert Crusade",  droprate = "14%" };
		{ 7, 21680, "", "=q4=Vest of Swift Execution",  droprate = "21%" };
		{ 8, 21668, "", "=q4=Scaled Leggings of Qiraji Fury",  droprate = "4%" };

		{ 10, 21603, "", "=q4=Wand of Qiraji Nobility",  droprate = "25%" };
		{ 11, 21620, "", "=q4=Ring of the Martyr",  droprate = "12%" };
		{ 12, 21616, "", "=q4=Huhuran's Stinger",  droprate = "5%" };

		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "4%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
		
		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "4%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };

		{ 27, 20932, "", "=q4=Spaulders of the Imperial Guard",  droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} };
		{ 28, 20931, "", "=q4=Hardened Qiraj Chitin",  droprate = "100%", lootTable = {"T2.5LEGS","Token"} };
	};
	{
		Name = BabbleBoss["The Twin Emperors"];
		{ 1, 21600, "", "=q4=Boots of Epiphany",  droprate = "15%" };
		{ 2, 21602, "", "=q4=Qiraji Execution Bracers",  droprate = "15%" };
		{ 3, 21599, "", "=q4=Vek'lor's Gloves of Devastation",  droprate = "15%" };
		{ 4, 21598, "", "=q4=Royal Qiraji Belt",  droprate = "9%" };
		{ 5, 21597, "", "=q4=Royal Scepter of Vek'lor",  droprate = "6%" };
		{ 6, 21601, "", "=q4=Ring of Emperor Vek'lor",  droprate = "17%" };
		{ 7, 20735, "", "=q3=Formula: Enchant Cloak - Subtlety",  droprate = "6%" };

		{ 9, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "6%" };
		{ 10, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4#, =ds=#h1#, #w1#" };
		{ 11, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4#, =ds=#w5#" };
		{ 12, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4#, =ds=#h1#, #w4#" };
		{ 13, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4#, =ds=#w8#" };
		{ 15, 20930, "", "=q4=Diadem of the Desert Prince",  droprate = "100%", lootTable = {"T2.5HEAD","Token"} };

		{ 16, 21604, "", "=q4=Bracelets of Royal Redemption",  droprate = "12%" };
		{ 17, 21605, "", "=q4=Gloves of the Hidden Temple",  droprate = "15%" };
		{ 18, 21609, "", "=q4=Regenerating Belt of Vek'nilash",  droprate = "13%" };
		{ 19, 21607, "", "=q4=Grasp of the Fallen Emperor",  droprate = "2%" };
		{ 20, 21606, "", "=q4=Belt of the Fallen Emperor",  droprate = "12%" };
		{ 21, 21679, "", "=q4=Kalimdor's Revenge",  droprate = "9%" };
		{ 22, 21608, "", "=q4=Amulet of Vek'nilash",  droprate = "14%" };
		{ 23, 20726, "", "=q3=Formula: Enchant Gloves - Threat",  droprate = "6%" };

		{ 25, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "5%" };
		{ 26, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4#, =ds=#w9#" };
		{ 27, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4#, =ds=#w9#" };
		{ 28, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4#, =ds=#h1#, #w6#" };
	};
	{
		Name = BabbleBoss["Ouro"];
		{ 1, 21615, "", "=q4=Don Rigoberto's Lost Hat",  droprate = "28%" };
		{ 2, 21611, "", "=q4=Burrower Bracers",  droprate = "24%" };
		{ 3, 23558, "", "=q4=The Burrower's Shell",  droprate = "2%" };
		{ 4, 23570, "", "=q4=Jom Gabbar",  "2.%" };
		{ 5, 23557, "", "=q4=Larvae of the Great Worm",  droprate = "3%" };
		{ 6, 21610, "", "=q4=Wormscale Blocker",  droprate = "16%" };
		{ 7, 21708, "", "=q4=Beetle Scaled Wristguards",  droprate = "12%" };
		{ 8, 21645, "", "=q4=Hive Tunneler's Boots",  droprate = "14%" };
		{ 9, 21605, "", "=q4=Gloves of the Hidden Temple",  droprate = "15%" };
		{ 10, 15029, "", "=q3=Aera's Poison Gland",  droprate = "3%" };

		{ 16, 21237, "", "=q4=Imperial Qiraji Regalia",  droprate = "5%" };
		{ 17, 21273, "", "=q4=Blessed Qiraji Acolyte Staff", "=q1=#m4# =ds=#w9#" };
		{ 18, 21275, "", "=q4=Blessed Qiraji Augur Staff", "=q1=#m4# =ds=#w9#" };
		{ 19, 21268, "", "=q4=Blessed Qiraji War Hammer", "=q1=#m4# =ds=#h1#, #w6#" };

		{ 21, 21232, "", "=q4=Imperial Qiraji Armaments",  droprate = "4%" };
		{ 22, 21242, "", "=q4=Blessed Qiraji War Axe", "=q1=#m4# =ds=#h1#, #w1#" };
		{ 23, 21272, "", "=q4=Blessed Qiraji Musket", "=q1=#m4# =ds=#w5#" };
		{ 24, 21244, "", "=q4=Blessed Qiraji Pugio", "=q1=#m4# =ds=#h1#, #w4#" };
		{ 25, 21269, "", "=q4=Blessed Qiraji Bulwark", "=q1=#m4# =ds=#w8#" };

		{ 27, 20931, "", "=q4=Hardened Qiraj Chitin",  droprate = "100%", lootTable = {"T2.5LEGS","Token"} };
	};
	{
		Name = BabbleBoss["C'Thun"];
		{ 1, 21583, "", "=q4=Cloak of Clarity",  droprate = "14%" };
		{ 2, 22731, "", "=q4=Cloak of the Devoured",  droprate = "16%" };
		{ 3, 21585, "", "=q4=Dark Storm Gauntlets",  droprate = "13%" };
		{ 4, 22730, "", "=q4=Eyestalk Waist Cord",  droprate = "10%" };
		{ 5, 21582, "", "=q4=Grasp of the Old God",  droprate = "15%" };
		{ 6, 21586, "", "=q4=Belt of Never-ending Agony",  droprate = "11%" };
		{ 7, 21581, "", "=q4=Gauntlets of Annihilation",  droprate = "12%" };

		{ 9, 22732, "", "=q4=Mark of C'Thun",  droprate = "10%" };
		{ 10, 21596, "", "=q4=Ring of the Godslayer",  droprate = "11%" };
		{ 11, 21579, "", "=q4=Vanquished Tentacle of C'Thun",  droprate = "12%" };
		{ 12, 21126, "", "=q4=Death's Sting" };
		{ 13, 21134, "", "=q4=Dark Edge of Insanity" };
		{ 14, 21839, "", "=q4=Scepter of the False Prophet",  droprate = "4%" };

		{ 15, 21221, "", "=q4=Eye of C'Thun",  droprate = "100%" };
		{ 16, 21710, "", "=q4=Cloak of the Fallen God", "=q1=#m4#: =ds=#s4#" };
		{ 17, 21712, "", "=q4=Amulet of the Fallen God" };
		{ 18, 21709, "", "=q4=Ring of the Fallen God" };

		{ 20, 22734, "", "=q1=Base of Atiesh" };
		{ 21, 22632, "", "=q5=Atiesh, Greatstaff of the Guardian", ""};
		{ 22, 22589, "", "=q5=Atiesh, Greatstaff of the Guardian" };
		{ 23, 22631, "", "=q5=Atiesh, Greatstaff of the Guardian" };
		{ 24, 22630, "", "=q5=Atiesh, Greatstaff of the Guardian" };
		
		{ 26, 20933, "", "=q4=Husk of the Old God",  droprate = "100%", lootTable = {"T2.5CHEST","Token"} };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 21838, "", "=q4=Garb of Royal Ascension",  "0.20%" };
		{ 2, 21888, "", "=q4=Gloves of the Immortal",  "0.16%" };
		{ 3, 21889, "", "=q4=Gloves of the Redeemed Prophecy", "=ds=#s9#, #a4# =q1=#m1# =ds=#c4#", "", "0.39%" };
		{ 4, 21836, "", "=q4=Ritssyn's Ring of Chaos",  droprate = "0.18%" };
		{ 5, 21891, "", "=q4=Shard of the Fallen Star",  "0.59%" };
		{ 6, 21856, "", "=q4=Neretzek, The Blood Drinker",  "0.20%" };
		{ 7, 21837, "", "=q4=Anubisath Warhammer",  "0.21%" };
		{ 9, 22202, "", "=q1=Small Obsidian Shard" };
		{ 10, 22203, "", "=q1=Large Obsidian Shard" };
		{ 16, 21218, "", "=q3=Blue Qiraji Resonating Crystal",  droprate = "10%" };
		{ 17, 21324, "", "=q3=Yellow Qiraji Resonating Crystal",  droprate = "12%" };
		{ 18, 21323, "", "=q3=Green Qiraji Resonating Crystal",  droprate = "11%" };
		{ 19, 21321, "", "=q3=Red Qiraji Resonating Crystal",  droprate = "1%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 20876, "", "=q3=Idol of Death",  "0.26%" };
		{ 2, 20879, "", "=q3=Idol of Life",  "0.29%" };
		{ 3, 20875, "", "=q3=Idol of Night",  "0.29%" };
		{ 4, 20878, "", "=q3=Idol of Rebirth",  "0.28%" };
		{ 5, 20881, "", "=q3=Idol of Strife",  "0.21%" };
		{ 6, 20877, "", "=q3=Idol of the Sage",  "0.33%" };
		{ 7, 20874, "", "=q3=Idol of the Sun",  "0.21%" };
		{ 8, 20882, "", "=q3=Idol of War",  "0.30%" };
		{ 10, 21230, "", "=q1=Ancient Qiraji Artifact" };
		{ 12, 21762, "", "=q1=Greater Scarab Coffer Key",  droprate = "7%" };
		{ 16, 20864, "", "=q2=Bone Scarab",  "0.84%" };
		{ 17, 20861, "", "=q2=Bronze Scarab",  "0.88%" };
		{ 18, 20863, "", "=q2=Clay Scarab",  "0.95%" };
		{ 19, 20862, "", "=q2=Crystal Scarab",  droprate = "0.99%" };
		{ 20, 20859, "", "=q2=Gold Scarab",  "0.96%" };
		{ 21, 20865, "", "=q2=Ivory Scarab",  "0.93%" };
		{ 22, 20860, "", "=q2=Silver Scarab",  droprate = "1%" };
		{ 23, 20858, "", "=q2=Stone Scarab",  "0.86%" };
	};
};

AtlasLoot_Data["AQOpening"] = {
	Name = "AQOpening";
	{
		Name = "AQOpening";
		{ 1, 21138, "", "=q1=Red Scepter Shard" };
		{ 2, 21530, "", "=q4=Onyx Embedded Leggings" };
		{ 3, 21529, "", "=q4=Amulet of Shadow Shielding" };
		{ 5, 21139, "", "=q1=Green Scepter Shard" };
		{ 6, 21532, "", "=q4=Drudge Boots" };
		{ 7, 21531, "", "=q4=Drake Tooth Necklace" };
		{ 9, 21137, "", "=q1=Blue Scepter Shard" };
		{ 10, 21517, "", "=q4=Gnomish Turban of Psychic Might" };
		{ 11, 21527, "", "=q4=Darkwater Robes" };
		{ 12, 21526, "", "=q4=Band of Icy Depths" };
		{ 13, 21025, "", "=q4=Recipe: Dirge's Kickin' Chimaerok Chops" };
		{ 16, 21175, "", "=q1=The Scepter of the Shifting Sands" };
		{ 17, 21176, "", "=q5=Black Qiraji Resonating Crystal" };
		{ 18, 21522, "", "=q4=Shadowsong's Sorrow" };
		{ 19, 21523, "", "=q4=Fang of Korialstrasz" };
		{ 20, 21520, "", "=q4=Ravencrest's Legacy" };
		{ 21, 21521, "", "=q4=Runesword of the Red" };
	};
};

-------------------------
--- Blackfathom Deeps ---
-------------------------

AtlasLoot_Data["BlackfathomDeeps"] = {
	Name = BabbleZone["Blackfathom Deeps"];
	Type = "ClassicDungeon";
	Map = "BlackfathomDeeps";
	{
		Name = BabbleBoss["Ghamoo-ra"];
		{ 1, 6908, "", "=q3=Ghamoo-ra's Bind",  droprate = "45%" };
		{ 2, 6907, "", "=q3=Tortoise Armor",  droprate = "30%" };
	};
	{
		Name = BabbleBoss["Lady Sarevess"];
		{ 1, 888, "", "=q3=Naga Battle Gloves",  droprate = "33%" };
		{ 2, 11121, "", "=q3=Darkwater Talwar",  droprate = "33%" };
		{ 3, 3078, "", "=q3=Naga Heartpiercer",  droprate = "16%" };
	};
	{
		Name = BabbleBoss["Gelihast"];
		{ 1, 6906, "", "=q3=Algae Fists",  droprate = "38%" };
		{ 2, 6905, "", "=q3=Reef Axe",  droprate = "42%" };
		{ 3, 1470, "", "=q1=Murloc Skin Bag", "=ds=#m12# #e1#", "", droprate = "14%" };
	};
	{
		Name = BabbleBoss["Baron Aquanis"];
		{ 1, 16782, "", "=q2=Strange Water Globe", "=ds=#m2# (#m6#)", "", droprate = "90%" };
		{ 2, 16886, "", "=q3=Outlaw Sabre", "=q1=#m4#: =ds=#h1#, #w10#" };
		{ 3, 16887, "", "=q3=Witch's Finger", "=q1=#m4#: =ds=#s15#" };
	};
	{
		Name = BabbleBoss["Twilight Lord Kelris"];
		{ 1, 6903, "", "=q3=Gaze Dreamer Pants",  droprate = "31%" };
		{ 2, 1155, "", "=q3=Rod of the Sleepwalker",  droprate = "45%" };
		{ 3, 5881, "", "=q1=Head of Kelris",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Old Serra'kis"];
		{ 1, 6901, "", "=q3=Glowing Thresher Cape",  droprate = "36%" };
		{ 2, 6902, "", "=q3=Bands of Serra'kis",  droprate = "29%" };
		{ 3, 6904, "", "=q3=Bite of Serra'kis",  droprate = "15%" };
	};
	{
		Name = BabbleBoss["Aku'mai"];
		{ 1, 6910, "", "=q3=Leech Pants",  droprate = "29%" };
		{ 2, 6911, "", "=q3=Moss Cinch",  droprate = "29%" };
		{ 3, 6909, "", "=q3=Strike of the Hydra",  droprate = "14%" };
		{ 4, 0, "INV_Box_01", "=q6=" .. AL["Quest Item"] };
		{ 5, 5359, "", "=q1=Lorgalis Manuscript",  droprate = "100%" };
		{ 6, 16762, "", "=q1=Fathom Core",  droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 1486, "", "=q3=Tree Bark Jacket",  droprate = "0.02%" };
		{ 2, 3416, "", "=q3=Martyr's Chain",  droprate = "0.01%" };
		{ 3, 1491, "", "=q3=Ring of Precision",  droprate = "0.01%" };
		{ 4, 3413, "", "=q3=Doomspike",  droprate = "0.01%" };
		{ 5, 2567, "", "=q3=Evocator's Blade",  droprate = "0.02%" };
		{ 6, 3417, "", "=q3=Onyx Claymore",  droprate = "0.01%" };
		{ 7, 1454, "", "=q3=Axe of the Enforcer",  droprate = "0.01%" };
		{ 8, 1481, "", "=q3=Grimclaw",  droprate = "0.01%" };
		{ 9, 3414, "", "=q3=Crested Scepter",  droprate = "0.01%" };
		{ 10, 3415, "", "=q3=Staff of the Friar",  droprate = "0.02%" };
		{ 11, 2271, "", "=q3=Staff of the Blessed Seer",  droprate = "0.02%" };
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
		{ 1, 14486, "", "=q3=Pattern: Cloak of Fire", "=ds=#p8# (275)", "", droprate = "17%" };
	};
	{
		Name = BabbleBoss["Lord Roccor"];
		{ 1, 22234, "", "=q3=Mantle of Lost Hope",  droprate = "20%" };
		{ 2, 11632, "", "=q3=Earthslag Shoulders",  droprate = "19%" };
		{ 3, 22397, "", "=q3=Idol of Ferocity",  droprate = "19%" };
		{ 4, 11631, "", "=q3=Stoneshell Guard",  droprate = "22%" };
		{ 5, 11630, "", "=q3=Rockshard Pellets",  droprate = "16%" };
		{ 16, 11813, "", "=q2=Formula: Smoking Heart of the Mountain", "=ds=#p4# (265)", "", droprate = "14%" };
		{ 17, 11811, "", "=q3=Smoking Heart of the Mountain", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = BabbleBoss["High Interrogator Gerstahn"];
		{ 1, 11626, "", "=q3=Blackveil Cape",  droprate = "15%" };
		{ 2, 11624, "", "=q3=Kentic Amice",  droprate = "22%" };
		{ 3, 22240, "", "=q3=Greaves of Withering Despair",  droprate = "16%" };
		{ 4, 11625, "", "=q3=Enthralled Sphere",  droprate = "23%" };
		{ 6, 11140, "", "=q1=Prison Cell Key" };
	};
	{
		Name = "Ring of Law";
		{ 1, 11677, "", "=q3=Graverot Cape", "=ds=#s4# =q2=#brd1#", "", droprate = "23%" };
		{ 2, 11675, "", "=q3=Shadefiend Boots", "=ds=#s12#, #a2# =q2=#brd1#", "", droprate = "25%" };
		{ 3, 11731, "", "=q3=Savage Gladiator Greaves", "=ds=#s12#, #a3# =q2=#brd1#", "", droprate = "15%" };
		{ 4, 11678, "", "=q3=Carapace of Anub'shiah", "=ds=#s5#, #a4# =q2=#brd1#", "", droprate = "15%" };
		{ 6, 11685, "", "=q3=Splinthide Shoulders", "=ds=#s3#, #a2# =q2=#brd2#", "", droprate = "24%" };
		{ 7, 11686, "", "=q3=Girdle of Beastial Fury", "=ds=#s10#, #a2# =q2=#brd2#", "", droprate = "15%" };
		{ 8, 11679, "", "=q3=Rubicund Armguards", "=ds=#s8#, #a3# =q2=#brd2#", "", droprate = "25%" };
		{ 9, 11730, "", "=q3=Savage Gladiator Grips", "=ds=#s9#, #a3# =q2=#brd2#", "", droprate = "14%" };
		{ 11, 11726, "", "=q4=Savage Gladiator Chain", "=ds=#s5#, #a3# =q2=#brd3#", "", droprate = "14%" };
		{ 12, 22271, "", "=q3=Leggings of Frenzied Magic", "=ds=#s11#, #a2# =q2=#brd3#", "", droprate = "23%" };
		{ 13, 11729, "", "=q3=Savage Gladiator Helm", "=ds=#s1#, #a3# =q2=#brd3#, #brd5#", "", droprate = "10%" };
		{ 14, 11722, "", "=q3=Dregmetal Spaulders", "=ds=#s3#, #a3# =q2=#brd4#", "", droprate = "15%" };
		{ 15, 11703, "", "=q3=Stonewall Girdle", "=ds=#s10#, #a4# =q2=#brd4#", "", droprate = "31%" };
		{ 16, 22270, "", "=q3=Entrenching Boots", "=ds=#s12#, #a4# =q2=#brd4#", "", droprate = "11%" };
		{ 17, 22257, "", "=q3=Bloodclot Band", "=ds=#s13# =q2=#brd3#", "", droprate = "26%" };
		{ 18, 22266, "", "=q3=Flarethorn", "=ds=#h1#, #w4# =q2=#brd3#", "", droprate = "17%" };
		{ 19, 11702, "", "=q3=Grizzle's Skinner", "=ds=#h1#, #w1# =q2=#brd4#", "", droprate = "20%" };
		{ 20, 11610, "", "=q3=Plans: Dark Iron Pulverizer", "=ds=#p2# (265) =q2=#brd4#", "", droprate = "69%" };
		{ 22, 11634, "", "=q3=Silkweb Gloves", "=ds=#s9#, #a1# =q2=#brd5#", "", droprate = "24%" };
		{ 23, 11633, "", "=q3=Spiderfang Carapace", "=ds=#s5#, #a4# =q2=#brd5#", "", droprate = "20%" };
		{ 24, 11635, "", "=q3=Hookfang Shanker", "=ds=#h1#, #w4# =q2=#brd5#", "", droprate = "17%" };
		{ 26, 11662, "", "=q3=Ban'thok Sash", "=ds=#s10#, #a1# =q2=#brd6#", "", droprate = "23%" };
		{ 27, 11665, "", "=q3=Ogreseer Fists", "=ds=#s9#, #a2# =q2=#brd6#", "", droprate = "28%" };
		{ 28, 11728, "", "=q3=Savage Gladiator Leggings", "=ds=#s11#, #a3# =q2=#brd6#", "", droprate = "14%" };
		{ 29, 11824, "", "=q3=Cyclopean Band", "=ds=#s13# =q2=#brd6#", "", droprate = "18%" };
	};
	{
		Name = AL["Theldren"];
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n17#" };
		{ 2, 22330, "", "=q3=Shroud of Arcane Mastery",  droprate = "19%" };
		{ 3, 22305, "", "=q3=Ironweave Mantle",  droprate = "30%" };
		{ 4, 22317, "", "=q3=Lefty's Brass Knuckle",  droprate = "26%" };
		{ 5, 22318, "", "=q3=Malgen's Long Bow",  droprate = "22%" };
		{ 7, 22047, "", "=q1=Top Piece of Lord Valthalak's Amulet" };
	};
	{
		Name = BabbleBoss["Houndmaster Grebmar"];
		{ 1, 11623, "", "=q3=Spritecaster Cape",  droprate = "32%" };
		{ 2, 11626, "", "=q3=Blackveil Cape",  "0%" };
		{ 3, 11627, "", "=q3=Fleetfoot Greaves",  droprate = "32%" };
		{ 4, 11628, "", "=q3=Houndmaster's Bow",  droprate = "12%" };
		{ 5, 11629, "", "=q3=Houndmaster's Rifle",  droprate = "11%" };
	};
	{
		Name = "Monument of Franclorn Forgewright";
		{ 1, 11000, "", "=q1=Shadowforge Key", "=q1=#m4#: =ds=#e9#" };
	};
	{
		Name = BabbleBoss["Pyromancer Loregrain"];
		{ 1, 11747, "", "=q3=Flamestrider Robes",  droprate = "18%" };
		{ 2, 11749, "", "=q3=Searingscale Leggings",  droprate = "21%" };
		{ 3, 11750, "", "=q3=Kindling Stave",  " 16%" };
		{ 4, 11748, "", "=q3=Pyric Caduceus",  droprate = "30%" };
		{ 6, 11207, "", "=q2=Formula: Enchant Weapon - Fiery Weapon", "=ds=#p4# (265)", "", droprate = "13%" };
	};
	{
		Name = AL["The Vault"];
		{ 1, 0, "INV_Box_01", "=q6=#x3#" };
		{ 2, 11309, "", "=q1=The Heart of the Mountain",  droprate = "100%" };
		{ 4, 0, "INV_Box_01", "=q6=#x5#" };
		{ 5, 22256, "", "=q3=Mana Shaping Handwraps",  droprate = "4%" };
		{ 6, 11929, "", "=q3=Haunting Specter Leggings",  droprate = "21%" };
		{ 7, 11926, "", "=q3=Deathdealer Breastplate",  droprate = "21%" };
		{ 8, 22205, "", "=q3=Black Steel Bindings",  droprate = "4%" };
		{ 9, 22255, "", "=q3=Magma Forged Band",  droprate = "4%" };
		{ 10, 11920, "", "=q3=Wraith Scythe",  droprate = "21%" };
		{ 11, 11923, "", "=q3=The Hammer of Grace",  droprate = "19%" };
		{ 12, 22254, "", "=q3=Wand of Eternal Light",  droprate = "3%" };
		{ 16, 0, "INV_Box_01", "=q6=#x4#" };
		{ 17, 11752, "", "=q1=Black Blood of the Tormented",  droprate = "44%" };
		{ 18, 11751, "", "=q1=Burning Essence",  droprate = "39%" };
		{ 19, 11753, "", "=q1=Eye of Kajal",  droprate = "39%" };
	};
	{
		Name = BabbleBoss["Warder Stilgiss"];
		{ 1, 11782, "", "=q3=Boreal Mantle",  droprate = "18%" };
		{ 2, 22241, "", "=q3=Dark Warder's Pauldrons",  droprate = "18%" };
		{ 3, 11783, "", "=q3=Chillsteel Girdle",  droprate = "20%" };
		{ 4, 11784, "", "=q3=Arbiter's Blade",  droprate = "21%" };
	};
	{
		Name = BabbleBoss["Verek"];
		{ 1, 22242, "", "=q3=Verek's Leash",  droprate = "9%" };
		{ 2, 11755, "", "=q3=Verek's Collar",  droprate = "9%" };
	};
	{
		Name = BabbleBoss["Fineous Darkvire"];
		{ 1, 11839, "", "=q3=Chief Architect's Monocle",  "1" };
		{ 2, 11841, "", "=q3=Senior Designer's Pantaloons",  droprate = "21%" };
		{ 3, 11842, "", "=q3=Lead Surveyor's Mantle",  droprate = "20%" };
		{ 4, 22223, "", "=q3=Foreman's Head Protector",  droprate = "19%" };
		{ 6, 11840, "", "=q1=Master Builder's Shirt", "#s6#", "", "3.9%" };
		{ 8, 10999, "", "=q1=Ironfel",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Lord Incendius"];
		{ 1, 11768, "", "=q3=Incendic Bracers",  droprate = "1%" };
		{ 2, 11766, "", "=q3=Flameweave Cuffs",  droprate = "18%" };
		{ 3, 11764, "", "=q3=Cinderhide Armsplints",  droprate = "18%" };
		{ 4, 11765, "", "=q3=Pyremail Wristguards",  droprate = "18%" };
		{ 5, 11767, "", "=q3=Emberplate Armguards",  droprate = "19%" };
		{ 6, 19268, "", "=q3=Ace of Elementals", "=ds=#e16#", "", droprate = "2%" };
		{ 8, 21987, "", "=q1=Incendicite of Incendius" };
		{ 9, 11126, "", "=q1=Tablet of Kurniya" };
	};
	{
		Name = BabbleBoss["Bael'Gar"];
		{ 1, 11807, "", "=q3=Sash of the Burning Heart",  droprate = "13%" };
		{ 2, 11802, "", "=q3=Lavacrest Leggings",  droprate = "26%" };
		{ 3, 11805, "", "=q3=Rubidium Hammer",  droprate = "17%" };
		{ 4, 11803, "", "=q3=Force of Magma",  droprate = "27%" };
	};
	{
		Name = BabbleBoss["General Angerforge"];
		{ 1, 11821, "", "=q3=Warstrife Leggings",  droprate = "16%" };
		{ 2, 11820, "", "=q3=Royal Decorated Armor",  droprate = "18%" };
		{ 3, 11810, "", "=q3=Force of Will",  droprate = "12%" };
		{ 4, 11817, "", "=q3=Lord General's Sword", "=ds=#h1#, #w10# ", "", droprate = "14%" };
		{ 5, 11816, "", "=q3=Angerforge's Battle Axe",  droprate = "16%" };
		{ 7, 11464, "", "=q1=Marshal Windsor's Lost Information" };
	};
	{
		Name = BabbleBoss["Golem Lord Argelmach"];
		{ 1, 11822, "", "=q3=Omnicast Boots",  "2" };
		{ 2, 11823, "", "=q3=Luminary Kilt",  droprate = "25%" };
		{ 3, 11669, "", "=q3=Naglering",  droprate = "22%" };
		{ 4, 11819, "", "=q3=Second Wind",  droprate = "5%" };
		{ 6, 21956, "", "=q2=Design: Dark Iron Scorpid", "=ds=#p12# (300)" };
		{ 8, 11268, "", "=q1=Head of Argelmach" };
		{ 9, 11465, "", "=q1=Marshal Windsor's Lost Information" };
	};
	{
		Name = "The Grim Guzzler";
		{ 1, 0, "INV_Box_01", "=q6=#n48#" };
		{ 2, 11735, "", "=q3=Ragefury Eyepatch",  droprate = "8%" };
		{ 3, 18043, "", "=q3=Coal Miner Boots",  droprate = "23%" };
		{ 4, 22275, "", "=q3=Firemoss Boots",  droprate = "23%" };
		{ 5, 18044, "", "=q3=Hurley's Tankard",  droprate = "31%" };
		{ 6, 11312, "", "=q1=Lost Thunderbrew Recipe" };
		{ 8, 0, "INV_Box_01", "=q6=#n49#" };
		{ 9, 22212, "", "=q3=Golem Fitted Pauldrons",  droprate = "26%" };
		{ 10, 11745, "", "=q3=Fists of Phalanx",  droprate = "29%" };
		{ 11, 11744, "", "=q3=Bloodfist",  droprate = "28%" };
		{ 16, 0, "INV_Box_01", "=q6=#n50#" };
		{ 17, 11612, "", "=q3=Plans: Dark Iron Plate", "=ds=#p2# (285)", "", droprate = "22%" };
		{ 18, 2662, "", "=q2=Ribbly's Quiver", "=ds=#m13# #w19#" };
		{ 19, 2663, "", "=q2=Ribbly's Bandolier", "=ds=#m13# #w20#", "", droprate = "15%" };
		{ 20, 11742, "", "=q2=Wayfarer's Knapsack", "=ds=#m13# #e1#", "", droprate = "25%" };
		{ 21, 11313, "", "=q1=Ribbly's Head" };
		{ 23, 0, "INV_Box_01", "=q6=#n51#" };
		{ 24, 12793, "", "=q3=Mixologist's Tunic",  droprate = "24%" };
		{ 25, 12791, "", "=q3=Barman Shanker",  droprate = "6%" };
		{ 26, 13483, "", "=q2=Recipe: Transmute Fire to Earth", "=ds=#p1# (275)" };
		{ 27, 18653, "", "=q2=Schematic: Goblin Jumper Cables XL", "=ds=#p5# (265)", "", droprate = "14%" };
		{ 28, 15759, "", "=q1=Pattern: Black Dragonscale Breastplate", "=ds=#p7# (290)" };
		{ 29, 11602, "", "=q1=Grim Guzzler Key" };
		{ 30, 11325, "", "=q1=Dark Iron Ale Mug" };
	};
	{
		Name = BabbleBoss["Ambassador Flamelash"];
		{ 1, 11808, "", "=q4=Circle of Flame",  "0%" };
		{ 3, 11812, "", "=q3=Cape of the Fire Salamander",  droprate = "25%" };
		{ 4, 11814, "", "=q3=Molten Fists",  droprate = "27%" };
		{ 5, 11832, "", "=q3=Burst of Knowledge",  droprate = "14%" };
		{ 6, 11809, "", "=q3=Flame Wrath",  droprate = "18%" };
		{ 8, 23320, "", "=q3=Tablet of Flame Shock VI", "=ds=#e10# =q1=#m1# =ds=#c7#" };
	};
	{
		Name = BabbleBoss["Panzor the Invincible"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 22245, "", "=q3=Soot Encrusted Footwear", "=ds=#s12#,#a1#", "", droprate = "22%" };
		{ 2, 11787, "", "=q3=Shalehusk Boots",  droprate = "19%" };
		{ 3, 11786, "", "=q3=Stone of the Earth",  droprate = "20%" };
		{ 4, 11785, "", "=q3=Rock Golem Bulwark",  droprate = "21%" };
	};
	{
		Name = "Summoner's Tomb";
		{ 1, 0, "INV_Box_01", "=q6=#x2#" };
		{ 2, 11929, "", "=q3=Haunting Specter Leggings",  droprate = "22%" };
		{ 3, 11925, "", "=q3=Ghostshroud",  droprate = "21%" };
		{ 4, 11926, "", "=q3=Deathdealer Breastplate",  droprate = "22%" };
		{ 5, 11927, "", "=q3=Legplates of the Eternal Guardian",  droprate = "65%" };
		{ 6, 11922, "", "=q3=Blood-etched Blade",  droprate = "22%" };
		{ 7, 11920, "", "=q3=Wraith Scythe", "=ds=#h1# #w1#", "", droprate = "22%" };
		{ 8, 11923, "", "=q3=The Hammer of Grace",  droprate = "21%" };
		{ 9, 11921, "", "=q3=Impervious Giant",  droprate = "22%" };
	};
	{
		Name = AL["Shadowforge Flame Keeper"];
		{ 1, 0, "INV_Box_01", "=q6=#n44#" };
		{ 2, 11885, "", "=q1=Shadowforge Torch" };
	};
	{
		Name = BabbleBoss["Magmus"];
		{ 1, 11746, "", "=q3=Golem Skull Helm",  droprate = "20%" };
		{ 2, 11935, "", "=q3=Magmus Stone",  droprate = "21%" };
		{ 3, 22395, "", "=q3=Totem of Rage",  droprate = "10%" };
		{ 4, 22400, "", "=q3=Libram of Truth",  droprate = "9%" };
		{ 5, 22208, "", "=q3=Lavastone Hammer",  droprate = "22%" };
	};
	{
		Name = BabbleBoss["Emperor Dagran Thaurissan"];
		{ 1, 11684, "", "=q4=Ironfoe",  "0.46%" };
		{ 3, 11930, "", "=q3=The Emperor's New Cape",  droprate = "16%" };
		{ 4, 11924, "", "=q3=Robes of the Royal Crown",  droprate = "15%" };
		{ 5, 22204, "", "=q3=Wristguards of Renown",  droprate = "12%" };
		{ 6, 22207, "", "=q3=Sash of the Grand Hunt",  droprate = "15%" };
		{ 7, 11933, "", "=q3=Imperial Jewel",  droprate = "15%" };
		{ 8, 11934, "", "=q3=Emperor's Seal",  droprate = "15%" };
		{ 9, 11815, "", "=q3=Hand of Justice",  droprate = "10%" };
		{ 16, 11931, "", "=q3=Dreadforge Retaliator",  droprate = "15%" };
		{ 17, 11932, "", "=q3=Guiding Stave of Wisdom",  droprate = "15%" };
		{ 18, 11928, "", "=q3=Thaurissan's Royal Scepter",  " 12%" };
		{ 20, 12033, "", "=q1=Thaurissan Family Jewels", "=ds=#e7# #e1#", "", "2.2%" };
	};
	{
		Name = BabbleBoss["Princess Moira Bronzebeard"];
		{ 1, 12554, "", "=q3=Hands of the Exalted Herald",  droprate = "11%" };
		{ 2, 12556, "", "=q3=High Priestess Boots",  droprate = "10%" };
		{ 3, 12557, "", "=q3=Ebonsteel Spaulders",  droprate = "12%" };
		{ 4, 12553, "", "=q3=Swiftwalker Boots",  droprate = "11%" };
	};
	{
		Name = "Blacksmith Plans";
		{ 1, 11614, "", "=q2=Plans: Dark Iron Mail", "=ds=#p2# (270)", "", droprate = "13%" };
		{ 2, 11615, "", "=q2=Plans: Dark Iron Shoulders", "=ds=#p2# (280)", "", droprate = "7%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 12552, "", "=q3=Blisterbane Wrap",  droprate = "0.01%" };
		{ 2, 12551, "", "=q3=Stoneshield Cloak",  droprate = "0.01%" };
		{ 3, 12542, "", "=q3=Funeral Pyre Vestment",  droprate = "0.02%" };
		{ 4, 12546, "", "=q3=Aristocratic Cuffs",  droprate = "0.01%" };
		{ 5, 12550, "", "=q3=Runed Golem Shackles",  droprate = "0.02%" };
		{ 6, 12547, "", "=q3=Mar Alom's Grip",  droprate = "0.01%" };
		{ 7, 12549, "", "=q3=Braincage",  droprate = "0.02%" };
		{ 8, 12555, "", "=q3=Battlechaser's Greaves",  droprate = "0.01%" };
		{ 9, 12531, "", "=q3=Searing Needle",  droprate = "0.02%" };
		{ 10, 12535, "", "=q3=Doomforged Straightedge",  droprate = "0.01%" };
		{ 11, 12527, "", "=q3=Ribsplitter", "=ds=#h1#, #w1# =q2=#m16#", "", droprate = "0.02%" };
		{ 12, 12528, "", "=q3=The Judge's Gavel",  droprate = "0.02%" };
		{ 13, 12532, "", "=q3=Spire of the Stoneshaper",  droprate = "0.01%" };
		{ 16, 15781, "", "=q3=Pattern: Black Dragonscale Leggings", "=ds=#p7# (300) =q1=#n75#", "", droprate = "1%" };
		{ 17, 15770, "", "=q3=Pattern: Black Dragonscale Shoulders", "=ds=#p7# (300) =q1=#n76#", "", droprate = "1%" };
		{ 18, 16053, "", "=q2=Schematic: Master Engineer's Goggles", "=ds=#p5# (290) =q1=#n77#", "", "0.45%" };
		{ 19, 16049, "", "=q2=Schematic: Dark Iron Bomb", "=ds=#p5# (285) =q1=#n78#", "", droprate = "1%" };
		{ 20, 16048, "", "=q2=Schematic: Dark Iron Rifle", "=ds=#p5# (275) =q1=#n79#", "", droprate = "0.98%" };
		{ 21, 18654, "", "=q2=Schematic: Gnomish Alarm-O-Bot", "=ds=#p5# (265) =q1=#n78#", "", droprate = "1%" };
		{ 22, 18661, "", "=q2=Schematic: World Enlarger", "=ds=#p5# (260) =q1=#n78#", "", droprate = "2%" };
		{ 24, 11754, "", "=q2=Black Diamond", "#e8#", "", "5.0%" };
		{ 25, 11078, "", "=q1=Relic Coffer Key" };
		{ 26, 18945, "", "=q1=Dark Iron Residue" };
		{ 27, 11468, "", "=q1=Dark Iron Fanny Pack" };
		{ 28, 11446, "", "=q1=A Crumpled Up Note" };
	};
};

-------------------------------------------------
--- Blackrock Mountain: Lower Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["LowerBlackrock"] = {
	Name = BabbleZone["Lower Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Loadfirst = 3;
	Map = "BlackrockSpire";
	{
		Name = AL["Scarshield Quartermaster"];
		{ 1, 18987, "", "=q1=Blackhand's Command",  droprate = "100%" };
		Next = "LBRSQuestItems";

	};
	{
		Name = AL["Quest Item"];
		{ 1, 12812, "", "=q3=Unfired Plate Gauntlets",  droprate = "100%" };
		{ 2, 12631, "", "=q3=Fiery Plate Gauntlets", "=q1=#m4#: =ds=#s9#, #a4#" };
		{ 3, 12699, "", "=q3=Plans: Fiery Plate Gauntlets", "=q1=#m4#: =ds=#p2# (290)" };
		{ 5, 12533, "", "=q1=Roughshod Pike" };
		{ 6, 12740, "", "=q1=Fifth Mosh'aru Tablet" };
		{ 7, 12741, "", "=q1=Sixth Mosh'aru Tablet" };
		{ 8, 12345, "", "=q1=Bijou's Belongings" };
	};
	{
		Name = BabbleBoss["Spirestone Butcher"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 12608, "", "=q3=Butcher's Apron",  droprate = "54%" };
		{ 2, 13286, "", "=q3=Rivenspike",  droprate = "35%" };
	};
	{
		Name = BabbleBoss["Highlord Omokk"];
		{ 1, 13170, "", "=q3=Skyshroud Leggings",  droprate = "8%" };
		{ 2, 13169, "", "=q3=Tressermane Leggings",  droprate = "9%" };
		{ 3, 13168, "", "=q3=Plate of the Shaman King",  droprate = "8%" };
		{ 4, 13166, "", "=q3=Slamshot Shoulders",  droprate = "7%" };
		{ 5, 13167, "", "=q3=Fist of Omokk",  droprate = "10%" };
		{ 7, 12336, "", "=q2=Gemstone of Spirestone",  droprate = "100%" };
		{ 9, 12534, "", "=q1=Omokk's Head",  droprate = "100%" };
		{ 16, 16670, "", "=q3=Boots of Elements", "=ds=#s12#, #a3# (D1, #c7#)", "", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Spirestone Battle Lord"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 13284, "", "=q3=Swiftdart Battleboots",  droprate = "48%" };
		{ 2, 13285, "", "=q3=The Blackrock Slicer",  droprate = "34%" };
	};
	{
		Name = BabbleBoss["Spirestone Lord Magus"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 13282, "", "=q3=Ogreseer Tower Boots",  droprate = "22%" };
		{ 2, 13283, "", "=q3=Magus Ring",  droprate = "38%" };
		{ 3, 13261, "", "=q3=Globe of D'sak",  droprate = "18%" };
	};
	{
		Name = BabbleBoss["Shadow Hunter Vosh'gajin"];
		{ 1, 12626, "", "=q3=Funeral Cuffs",  droprate = "18%" };
		{ 2, 13257, "", "=q3=Demonic Runed Spaulders" };
		{ 3, 13255, "", "=q3=Trueaim Gauntlets",  droprate = "18%" };
		{ 4, 12651, "", "=q3=Blackcrow",  droprate = "8%" };
		{ 5, 12653, "", "=q3=Riphook",  droprate = "7%" };
		{ 6, 12654, "", "=q3=Doomshot",  droprate = "23%" };
		{ 8, 13352, "", "=q1=Vosh'gajin's Snakestone",  droprate = "100%" };
		{ 9, 12821, "", "=q3=Plans: Dawn's Edge", "=q1=#m4#: =ds=#p2# (275)" };
		{ 16, 16712, "", "=q3=Shadowcraft Gloves", "=ds=#s9#, #a2# (D1, #c6#)", "", droprate = "11%" };
	};
	{
		Name = BabbleBoss["War Master Voone"];
		{ 1, 22231, "", "=q3=Kayser's Boots of Precision",  droprate = "15%" };
		{ 2, 13179, "", "=q3=Brazecore Armguards",  droprate = "16%" };
		{ 3, 13177, "", "=q3=Talisman of Evasion",  droprate = "15%" };
		{ 4, 12582, "", "=q3=Keris of Zul'Serak",  droprate = "8%" };
		{ 5, 28972, "", "=q3=Flightblade Throwing Axe",  droprate = "79%" };
		{ 7, 12335, "", "=q2=Gemstone of Smolderthorn",  droprate = "100%" };
		{ 16, 16676, "", "=q3=Beaststalker's Gloves", "=ds=#s9#, #a3# (D1, #c2#)", "", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Mor Grayhoof"] .. " (" .. AL["Summon"] .. ")";
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n21#" };
		{ 2, 22306, "", "=q3=Ironweave Belt",  droprate = "20%" };
		{ 3, 22325, "", "=q3=Belt of the Trickster",  droprate = "20%" };
		{ 4, 22319, "", "=q3=Tome of Divine Right",  droprate = "20%" };
		{ 5, 22398, "", "=q3=Idol of Rejuvenation",  droprate = "12%" };
		{ 6, 22322, "", "=q3=The Jaw Breaker",  droprate = "20%" };
		{ 8, 21984, "", "=q1=Left Piece of Lord Valthalak's Amulet" };
		{ 9, 22046, "", "=q1=Right Piece of Lord Valthalak's Amulet" };
	};
	{
		Name = BabbleBoss["Bannok Grimaxe"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 12634, "", "=q3=Chiselbrand Girdle",  droprate = "31%" };
		{ 2, 12637, "", "=q3=Backusarian Gauntlets",  droprate = "26%" };
		{ 3, 12621, "", "=q3=Demonfork",  droprate = "27%" };
		{ 5, 12838, "", "=q3=Plans: Arcanite Reaper", "=ds=#p2# (300)" };
		{ 6, 12784, "", "=q3=Arcanite Reaper" };
	};
	{
		Name = BabbleBoss["Mother Smolderweb"];
		{ 1, 13244, "", "=q3=Gilded Gauntlets",  droprate = "25%" };
		{ 2, 13213, "", "=q3=Smolderweb's Eye",  droprate = "24%" };
		{ 3, 13183, "", "=q3=Venomspitter",  droprate = "12%" };
		{ 16, 16715, "", "=q3=Wildheart Boots", "=ds=#s12#, #a2# (D1, #c1#)", "", droprate = "13%" };
	};
	{
		Name = BabbleBoss["Crystal Fang"];
		{ 1, 13185, "", "=q3=Sunderseer Mantle",  droprate = "28%" };
		{ 2, 13184, "", "=q3=Fallbrush Handgrips",  droprate = "35%" };
		{ 3, 13218, "", "=q3=Fang of the Crystal Spider",  droprate = "17%" };
	};
	{
		Name = BabbleBoss["Urok Doomhowl"] .. " (" .. AL["Summon"] .. ")";
		{ 1, 13258, "", "=q3=Slaghide Gauntlets",  droprate = "17%" };
		{ 2, 22232, "", "=q3=Marksman's Girdle",  droprate = "20%" };
		{ 3, 13259, "", "=q3=Ribsteel Footguards",  droprate = "25%" };
		{ 4, 13178, "", "=q3=Rosewine Circle",  droprate = "21%" };
		{ 6, 18784, "", "=q3=Top Half of Advanced Armorsmithing: Volume III",  droprate = "10%" };
		{ 7, 12725, "", "=q3=Plans: Enchanted Thorium Helm", "=q1=#m4#: =ds=#p2# (300)" };
		{ 9, 12712, "", "=q1=Warosh's Mojo",  droprate = "100%" };
		{ 10, 15867, "", "=q2=Prismcharm" };
	};
	{
		Name = BabbleBoss["Quartermaster Zigris"];
		{ 1, 13253, "", "=q3=Hands of Power",  droprate = "14%" };
		{ 2, 13252, "", "=q3=Cloudrunner Girdle",  droprate = "15%" };
		{ 4, 12835, "", "=q3=Plans: Annihilator", "=ds=#p2# (300)", "", droprate = "8%" };
		{ 5, 12798, "", "=q3=Annihilator" };
		{ 7, 21955, "", "=q2=Design: Black Diamond Crab", "=ds=#p12# (300)" };
	};
	{
		Name = BabbleBoss["Gizrul the Slavener"];
		{ 1, 13206, "", "=q3=Wolfshear Leggings",  droprate = "17%" };
		{ 2, 13208, "", "=q3=Bleak Howler Armguards",  droprate = "18%" };
		{ 3, 13205, "", "=q3=Rhombeard Protector",  "1" };
		{ 16, 16718, "", "=q3=Wildheart Spaulders", "=ds=#s3#, #a2# (D1, #c1#)", "", droprate = "11%" };
	};
	{
		Name = BabbleBoss["Halycon"];
		{ 1, 22313, "", "=q3=Ironweave Bracers",  droprate = "18%" };
		{ 2, 13210, "", "=q3=Pads of the Dread Wolf",  droprate = "9%" };
		{ 3, 13211, "", "=q3=Slashclaw Bracers",  droprate = "20%" };
		{ 4, 13212, "", "=q3=Halycon's Spiked Collar",  droprate = "18%" };
	};
	{
		Name = BabbleBoss["Ghok Bashguud"] .. " (" .. AL["Rare"] .. ")";
		{ 1, 13203, "", "=q3=Armswake Cloak",  droprate = "35%" };
		{ 2, 13198, "", "=q3=Hurd Smasher",  droprate = "21%" };
		{ 3, 13204, "", "=q3=Bashguuder",  droprate = "27%" };
	};
	{
		Name = BabbleBoss["Overlord Wyrmthalak"];
		{ 1, 13143, "", "=q4=Mark of the Dragon Lord",  droprate = "1%" };
		{ 3, 13162, "", "=q3=Reiver Claws",  droprate = "12%" };
		{ 4, 13164, "", "=q3=Heart of the Scale",  "0.73%" };
		{ 5, 22321, "", "=q3=Heart of Wyrmthalak",  droprate = "13%" };
		{ 6, 13163, "", "=q3=Relentless Scythe",  droprate = "14%" };
		{ 7, 13148, "", "=q3=Chillpike",  "0%" };
		{ 8, 13161, "", "=q3=Trindlehaven Staff",  droprate = "10%" };
		{ 10, 12337, "", "=q2=Gemstone of Bloodaxe",  droprate = "100%" };
		{ 16, 16679, "", "=q3=Beaststalker's Mantle", "=ds=#s3#, #a3# (D1, #c2#)", "", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Burning Felguard"] .. " (" .. AL["Rare"] .. ", " .. AL["Random"] .. ")";
		{ 1, 13181, "", "=q3=Demonskin Gloves",  droprate = "14%" };
		{ 2, 13182, "", "=q3=Phase Blade",  droprate = "11%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 14513, "", "=q4=Pattern: Robe of the Archmage", "=ds=#p8# (300) =q1=#m1# =ds=#c3# =q1=#n71#", "", droprate = "10%" };
		{ 2, 14152, "", "=q4=Robe of the Archmage", "=ds=#s5#, #a1# =q1=#m1# =ds=#c3#" };
		{ 4, 13494, "", "=q2=Recipe: Greater Fire Protection Potion", "=ds=#p1# (290) =q1=#n71#/#n72#", "", droprate = "1%" };
		{ 5, 16250, "", "=q2=Formula: Enchant Weapon - Superior Striking", "=ds=#p4# (300) =q1=#n75#", "", droprate = "1%" };
		{ 6, 16244, "", "=q2=Formula: Enchant Gloves - Greater Strength", "=ds=#p4# (295) =q1=#n76#", "", droprate = "4%" };
		{ 7, 15749, "", "=q2=Pattern: Volcanic Breastplate", "=ds=#p7# (285) =q1=#n73#", "", droprate = "2%" };
		{ 8, 15775, "", "=q2=Pattern: Volcanic Shoulders", "=ds=#p7# (300) =q1=#n74#", "", droprate = "10%" };
		{ 10, 12219, "", "=q1=Unadorned Seal of Ascension" };
		{ 11, 21982, "", "=q1=Ogre Warbeads" };
	};
};

-------------------------------------------------
--- Blackrock Mountain: Upper Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["UpperBlackrock"] = {
	Name = BabbleZone["Upper Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Map = "BlackrockSpire";
	{
		Name = BabbleBoss["Pyroguard Emberseer"];
		{ 1, 12905, "", "=q3=Wildfire Cape",  droprate = "15%" };
		{ 2, 12927, "", "=q3=TruestrikeShoulders",  droprate = "17%" };
		{ 3, 12929, "", "=q3=Emberfury Talisman",  droprate = "15%" };
		{ 4, 12926, "", "=q3=Flaming Band",  droprate = "18%" };
		{ 6, 17322, "", "=q1=Eye of the Emberseer",  droprate = "100%" };
		{ 7, 21988, "", "=q1=Ember of Emberseer" };
		{ 16, 16672, "", "=q3=Gauntlets of Elements", "=ds=#s9#, #a3# (D1, #c7#)", "", droprate = "14%" };
	};
	{
		Name = BabbleBoss["Solakar Flamewreath"];
		{ 1, 12609, "", "=q3=Polychromatic Visionwrap",  droprate = "15%" };
		{ 2, 12589, "", "=q3=Dustfeather Sash",  droprate = "12%" };
		{ 3, 12603, "", "=q3=Nightbrace Tunic" };
		{ 4, 12606, "", "=q3=Crystallized Girdle",  droprate = "14%" };
		{ 6, 18657, "", "=q2=Schematic: Hyper-Radiant Flame Reflector", "=ds=#p5# (290)", "", droprate = "7%" };
		{ 7, 18638, "", "=q3=Hyper-Radiant Flame Reflector" };
		{ 16, 16695, "", "=q3=Devout Mantle", "=ds=#s3#, #a1# (D1, #c5#)", "", droprate = "12%" };
	};
	{
		Name = AL["Father Flame"];
		{ 1, 13371, "", "=q2=Father Flame",  droprate = "100%" };
	};
	{
		Name = AL["Quest Item"];
		{ 1, 12358, "", "=q1=Darkstone Tablet" };
		{ 2, 12352, "", "=q1=Doomrigger's Clasp" };
	};
	{
		Name = BabbleBoss["Jed Runewatcher"];
		{ 1, 12604, "", "=q3=Starfire Tiara",  droprate = "28%" };
		{ 2, 12930, "", "=q3=Briarwood Reed",  droprate = "26%" };
		{ 3, 12605, "", "=q3=Serpentine Skuller",  droprate = "32%" };
	};
	{
		Name = BabbleBoss["Goraluk Anvilcrack"];
		{ 1, 18047, "", "=q3=Flame Walkers",  droprate = "18%" };
		{ 2, 13502, "", "=q3=Handcrafted Mastersmith Girdle",  droprate = "15%" };
		{ 3, 13498, "", "=q3=Handcrafted Mastersmith Leggings",  droprate = "20%" };
		{ 4, 18048, "", "=q3=Mastersmith's Hammer",  droprate = "17%" };
		{ 6, 12837, "", "=q3=Plans: Masterwork Stormhammer", "=ds=#p2# (300)", "", "4.%" };
		{ 7, 12794, "", "=q3=Masterwork Stormhammer" };
		{ 8, 12834, "", "=q3=Plans: Arcanite Champion", "=ds=#p2# (300)", "", droprate = "4%" };
		{ 9, 12790, "", "=q3=Arcanite Champion" };
		{ 11, 18779, "", "=q3=Bottom Half of Advanced Armorsmithing: Volume I",  droprate = "17%" };
		{ 12, 12727, "", "=q3=Plans: Enchanted Thorium Breastplate", "=q1=#m4#: =ds=#p2# (300)" };
		{ 16, 0, "INV_Box_01", "=q6=#x10#" };
		{ 17, 12806, "", "=q3=Unforged Rune Covered Breastplate" };
		{ 18, 12696, "", "=q3=Plans: Demon Forged Breastplate", "=q1=#m4#: =ds=#p2# (285)" };
	};
	{
		Name = BabbleBoss["Warchief Rend Blackhand"];
		{ 1, 12590, "", "=q4=Felstriker",  droprate = "1%" };
		{ 3, 22247, "", "=q3=Faith Healer's Boots",  droprate = "12%" };
		{ 4, 18102, "", "=q3=Dragonrider Boots",  droprate = "14%" };
		{ 5, 12587, "", "=q3=Eye of Rend",  droprate = "14%" };
		{ 6, 12588, "", "=q3=Bonespike Shoulder",  "0.85%" };
		{ 7, 18104, "", "=q3=Feralsurge Girdle",  droprate = "15%" };
		{ 8, 12936, "", "=q3=Battleborn Armbraces",  droprate = "16%" };
		{ 9, 12935, "", "=q3=Warmaster Legguards",  droprate = "15%" };
		{ 10, 18103, "", "=q3=Band of Rumination",  droprate = "15%" };
		{ 16, 16733, "", "=q3=Spaulders of Valor", "=ds=#s3#, #a4# (D1, #c9#)", "", droprate = "13%" };
		{ 18, 12940, "", "=q3=Dal'Rend's Sacred Charge",  droprate = "6%" };
		{ 19, 12939, "", "=q3=Dal'Rend's Tribal Guardian", "=ds=#h4#, #w10#", "", droprate = "7%" };
		{ 20, 12583, "", "=q3=Blackhand Doomsaw",  droprate = "7%" };
		{ 22, 12630, "", "=q1=Head of Rend Blackhand",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Gyth"];
		{ 1, 12871, "", "=q4=Chromatic Carapace",  droprate = "2%" };
		{ 2, 12945, "", "=q4=Legplates of the Chromatic Defier", "=q1=#m4#: =ds=#s11#, #a3#" };
		{ 3, 12903, "", "=q4=Legguards of the Chromatic Defier", "=q1=#m4#: =ds=#s11#, #a3#" };
		{ 4, 12895, "", "=q4=Breastplate of the Chromatic Flight", "=q1=#m4#: =ds=#s5#, #a4#" };
		{ 6, 22225, "", "=q3=Dragonskin Cowl", "=ds=#s1#, #a1# =q2=#m16#", "", droprate = "11%" };
		{ 7, 12960, "", "=q3=Tribal War Feathers", "=ds=#s1#, #a2# =q2=#m16#", "", droprate = "15%" };
		{ 8, 12953, "", "=q3=Dragoneye Coif", "=ds=#s1#, #a3# =q2=#m16#", "", droprate = "15%" };
		{ 9, 12952, "", "=q3=Gyth's Skull", "=ds=#s1#, #a4# =q2=#m16#", "", droprate = "12%" };
		{ 11, 13522, "", "=q2=Recipe: Flask of Chromatic Resistance",  droprate = "2%" };
		{ 16, 16669, "", "=q3=Pauldrons of Elements", "=ds=#s3#, #a3# (D1, #c7#)", "", droprate = "14%" };
	};
	{
		Name = BabbleBoss["The Beast"];
		{ 1, 12731, "", "=q4=Pristine Hide of the Beast",  "0%" };
		{ 2, 12752, "", "=q4=Cap of the Scarlet Savant", "=q1=#m4#: =ds=#s1#, #a1#" };
		{ 3, 12757, "", "=q4=Breastplate of Bloodthirst", "=q1=#m4#: =ds=#s5#, #a2#" };
		{ 4, 12756, "", "=q4=Leggings of Arcana", "=q1=#m4#: =ds=#s11#, #a2#" };
		{ 6, 12967, "", "=q3=Bloodmoon Cloak",  droprate = "18%" };
		{ 7, 12968, "", "=q3=Frostweaver Cape",  droprate = "14%" };
		{ 8, 12965, "", "=q3=Spiritshroud Leggings",  droprate = "13%" };
		{ 9, 22311, "", "=q3=Ironweave Boots",  droprate = "12%" };
		{ 10, 12966, "", "=q3=Blackmist Armguards",  droprate = "16%" };
		{ 11, 12963, "", "=q3=Blademaster Leggings",  droprate = "12%" };
		{ 12, 12964, "", "=q3=Tristam Legguards",  droprate = "18%" };
		{ 13, 12709, "", "=q3=Finkle's Skinner", "=ds=#h1#, #w4#, =q1=#e18#", "", droprate = "6%" };
		{ 14, 12969, "", "=q3=Seeping Willow",  droprate = "11%" };
		{ 16, 16729, "", "=q3=Lightforge Spaulders", "=ds=#s3#, #a4# (D1, #c4#)", "", droprate = "13%" };
		{ 18, 24101, "", "=q3=Book of Ferocious Bite V", "=ds=#e10# =q1=#m1# =ds=#c1#", "", droprate = "1%" };
		{ 19, 19227, "", "=q3=Ace of Beasts", "=ds=#e16#", "", droprate = "4%" };
	};
	{
		Name = BabbleBoss["Lord Valthalak"] .. " (" .. AL["Summon"] .. ")";
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n16#" };
		{ 2, 22337, "", "=q3=Shroud of Domination",  droprate = "23%" };
		{ 3, 22302, "", "=q3=Ironweave Cowl",  droprate = "27%" };
		{ 4, 22342, "", "=q3=Leggings of Torment",  droprate = "23%" };
		{ 5, 22343, "", "=q3=Handguards of Savagery",  droprate = "20%" };
		{ 6, 22340, "", "=q3=Pendant of Celerity",  droprate = "17%" };
		{ 7, 22339, "", "=q3=Rune Band of Wizardry",  droprate = "15%" };
		{ 8, 22335, "", "=q3=Lord Valthalak's Staff of Command",  droprate = "14%" };
		{ 9, 22336, "", "=q3=Draconian Aegis of the Legion",  droprate = "17%" };
	};
	{
		Name = BabbleBoss["General Drakkisath"];
		{ 1, 12592, "", "=q4=Blackblade of Shahram",  droprate = "1%" };
		{ 3, 22269, "", "=q3=Shadow Prowler's Cloak",  droprate = "10%" };
		{ 4, 22267, "", "=q3=Spellweaver's Turban",  droprate = "15%" };
		{ 5, 13142, "", "=q3=Brigam Girdle",  droprate = "16%" };
		{ 6, 13141, "", "=q3=Tooth of Gnarr" };
		{ 7, 13098, "", "=q3=Painweaver Band",  droprate = "13%" };
		{ 8, 22268, "", "=q3=Draconic Infused Emblem",  droprate = "4%" };
		{ 9, 22253, "", "=q3=Tome of the Lost",  droprate = "16%" };
		{ 10, 12602, "", "=q3=Draconian Deflector",  droprate = "14%" };
		{ 12, 15730, "", "=q3=Pattern: Red Dragonscale Breastplate", "=ds=#p7# (300)", "", droprate = "3%" };
		{ 13, 15047, "", "=q3=Red Dragonscale Breastplate" };
		{ 15, 13519, "", "=q2=Recipe: Flask of the Titans",  droprate = "1%" };
		{ 16, 16688, "", "=q3=Magister's Robes", "=ds=#s5#, #a1# (D1, #c3#)", "", droprate = "7%" };
		{ 17, 16700, "", "=q3=Dreadmist Robe", "=ds=#s5#, #a1# (D1, #c8#)", "", droprate = "8%" };
		{ 18, 16690, "", "=q3=Devout Robe", "=ds=#s5#, #a1# (D1, #c5#)", "", droprate = "6%" };
		{ 19, 16706, "", "=q3=Wildheart Vest", "=ds=#s5#, #a2# (D1, #c1#)", "", droprate = "7%" };
		{ 20, 16721, "", "=q3=Shadowcraft Tunic", "=ds=#s5#, #a2# (D1, #c6#)", "", droprate = "6%" };
		{ 21, 16674, "", "=q3=Beaststalker's Tunic", "=ds=#s5#, #a3# (D1, #c2#)", "", droprate = "6%" };
		{ 22, 16666, "", "=q3=Vest of Elements", "=ds=#s5#, #a3# (D1, #c7#)", "", droprate = "3%" };
		{ 23, 16730, "", "=q3=Breastplate of Valor", "=ds=#s5#, #a4# (D1, #c9#)", "", droprate = "5%" };
		{ 24, 16726, "", "=q3=Lightforge Breastplate", "=ds=#s5#, #a4# (D1, #c4#)", "", droprate = "3%" };
		{ 30, 16663, "", "=q1=Blood of the Black Dragon Champion",  droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 13260, "", "=q3=Wind Dancer Boots",  droprate = "0.01%" };
		{ 2, 24102, "", "=q3=Manual of Eviscerate IX", "=ds=#e10# =q1=#m1# =ds=#c6# =q1=#n70#", "", "0.94%" };
		{ 4, 16247, "", "=q2=Formula: Enchant 2H Weapon - Superior Impact", "=ds=#p4# (295) =q1=#n69#", "", droprate = "1%" };
		{ 6, 12607, "", "=q3=Brilliant Chromatic Scale" };
		{ 7, 12219, "", "=q1=Unadorned Seal of Ascension" };
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
		{ 1, 18872, "", "=q4=Manastorm Leggings",  droprate = "1%" };
		{ 2, 19145, "", "=q4=Robe of Volatile Power",  droprate = "1%" };
		{ 3, 19146, "", "=q4=Wristguards of Stability",  droprate = "1%" };
		{ 4, 18875, "", "=q4=Salamander Scale Pants",  droprate = "2%" };
		{ 5, 18870, "", "=q4=Helm of the Lifegiver",  droprate = "1%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "2%" };
		{ 7, 17109, "", "=q4=Choker of Enlightenment",  droprate = "12%" };
		{ 8, 18879, "", "=q4=Heavy Dark Iron Ring",  droprate = "2%" };
		{ 9, 19147, "", "=q4=Ring of Spell Power",  droprate = "2%" };
		{ 10, 18878, "", "=q4=Sorcerous Dagger",  droprate = "2%" };
		{ 11, 17077, "", "=q4=Crimson Shocker",  droprate = "1%" };
		{ 16, 2522362, "", "=q4=Molten Wristguards",  droprate = "100%", lootTable = {"T1WRIST","Token"} };
		{ 18, 17329, "", "=q1=Hand of Lucifron" };
	};
	{
		Name = BabbleBoss["Magmadar"];
		{ 1, 19136, "", "=q4=Mana Igniting Cord",  droprate = "4%" };
		{ 2, 18823, "", "=q4=Aged Core Leather Gloves",  droprate = "6%" };
		{ 3, 18829, "", "=q4=Deep Earth Spaulders",  droprate = "2%" };
		{ 4, 19144, "", "=q4=Sabatons of the Flamewalker",  droprate = "1%" };
		{ 5, 19143, "", "=q4=Flameguard Gauntlets",  droprate = "5%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "3%" };
		{ 7, 18824, "", "=q4=Magma Tempered Boots",  droprate = "3%" };
		{ 8, 17065, "", "=q4=Medallion of Steadfast Might",  droprate = "14%" };
		{ 9, 18821, "", "=q4=Quick Strike Ring",  droprate = "5%" };
		{ 10, 18820, "", "=q4=Talisman of Ephemeral Power",  droprate = "5%" };
		{ 11, 19142, "", "=q4=Fire Runed Grimoire",  droprate = "5%" };
		{ 12, 18203, "", "=q4=Eskhandar's Right Claw",  droprate = "17%" };
		{ 13, 18822, "", "=q4=Obsidian Edged Blade",  droprate = "5%" };
		{ 14, 17073, "", "=q4=Earthshaker",  droprate = "16%" };
		{ 15, 17069, "", "=q4=Striker's Mark",  droprate = "16%" };
		{ 16, 2522359, "", "=q4=Molten Leggaurds",  droprate = "100%", lootTable = {"T1LEGS","Token"} };
	};
	{
		Name = BabbleBoss["Gehennas"];
		{ 1, 19145, "", "=q4=Robe of Volatile Power",  droprate = "3%" };
		{ 2, 18872, "", "=q4=Manastorm Leggings",  droprate = "3%" };
		{ 3, 19146, "", "=q4=Wristguards of Stability",  droprate = "3%" };
		{ 4, 18875, "", "=q4=Salamander Scale Pants",  droprate = "3%" };
		{ 5, 18870, "", "=q4=Helm of the Lifegiver",  droprate = "1%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "3%" };
		{ 7, 18879, "", "=q4=Heavy Dark Iron Ring",  droprate = "3%" };
		{ 8, 19147, "", "=q4=Ring of Spell Power",  droprate = "3%" };
		{ 9, 18878, "", "=q4=Sorcerous Dagger",  droprate = "3%" };
		{ 10, 17077, "", "=q4=Crimson Shocker",  droprate = "3%" };
		{ 16, 2522364, "", "=q4=Molten Girdle",  droprate = "100%", lootTable = {"T1HAND","Token"} };
		{ 18, 17331, "", "=q1=Hand of Gehennas" };
	};
	{
		Name = BabbleBoss["Garr"];
		{ 1, 19136, "", "=q4=Mana Igniting Cord",  "4.%" };
		{ 2, 18823, "", "=q4=Aged Core Leather Gloves",  droprate = "5%" };
		{ 3, 18829, "", "=q4=Deep Earth Spaulders",  droprate = "1%" };
		{ 4, 19144, "", "=q4=Sabatons of the Flamewalker",  droprate = "1%" };
		{ 5, 19143, "", "=q4=Flameguard Gauntlets",  droprate = "3%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "2%" };
		{ 7, 18824, "", "=q4=Magma Tempered Boots",  droprate = "3%" };
		{ 8, 18821, "", "=q4=Quick Strike Ring",  droprate = "4%" };
		{ 9, 18820, "", "=q4=Talisman of Ephemeral Power",  droprate = "4%" };
		{ 10, 19142, "", "=q4=Fire Runed Grimoire",  droprate = "3%" };
		{ 11, 17071, "", "=q4=Gutgore Ripper",  droprate = "11%" };
		{ 12, 18832, "", "=q4=Brutality Blade",  droprate = "13%" };
		{ 13, 18822, "", "=q4=Obsidian Edged Blade",  droprate = "4%" };
		{ 14, 17105, "", "=q4=Aurastone Hammer",  droprate = "12%" };
		{ 15, 17066, "", "=q4=Drillborer Disk",  droprate = "11%" };
		{ 16, 2522360, "", "=q4=Molten Headpiece",  droprate = "100%", lootTable = {"T1HEAD","Token"} };
		{ 18, 18564, "", "=q5=Bindings of the Windseeker", "=ds=#m3#, =q1=#m9#", "", droprate = "3%" };
		{ 19, 19019, "", "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
		{ 21, 17782, "", "=q5=Talisman of Binding Shard" };
		{ 22, 11879, "", "=q5=Medallion of Binding Shard" };
	};
	{
		Name = BabbleBoss["Shazzrah"];
		{ 1, 19145, "", "=q4=Robe of Volatile Power",  droprate = "1%" };
		{ 2, 18872, "", "=q4=Manastorm Leggings",  droprate = "1%" };
		{ 3, 19146, "", "=q4=Wristguards of Stability",  droprate = "1%" };
		{ 4, 18875, "", "=q4=Salamander Scale Pants",  droprate = "1%" };
		{ 5, 18870, "", "=q4=Helm of the Lifegiver",  "0.78%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "2%" };
		{ 7, 18879, "", "=q4=Heavy Dark Iron Ring",  droprate = "1%" };
		{ 8, 19147, "", "=q4=Ring of Spell Power",  droprate = "1%" };
		{ 9, 18878, "", "=q4=Sorcerous Dagger",  droprate = "2%" };
		{ 10, 17077, "", "=q4=Crimson Shocker",  droprate = "3%" };
		{ 16, 2522363, "", "=q4=Molten Handgaurds",  droprate = "100%", lootTable = {"T1WAIST","Token"} };
		{ 18, 17332, "", "=q1=Hand of Shazzrah" };
	};
	{
		Name = BabbleBoss["Baron Geddon"];
		{ 1, 19136, "", "=q4=Mana Igniting Cord",  droprate = "2%" };
		{ 2, 18823, "", "=q4=Aged Core Leather Gloves",  droprate = "3%" };
		{ 3, 18829, "", "=q4=Deep Earth Spaulders",  droprate = "1%" };
		{ 4, 19144, "", "=q4=Sabatons of the Flamewalker",  droprate = "1%" };
		{ 5, 19143, "", "=q4=Flameguard Gauntlets",  droprate = "2%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "1%" };
		{ 7, 18824, "", "=q4=Magma Tempered Boots",  droprate = "1%" };
		{ 8, 17110, "", "=q4=Seal of the Archmagus",  droprate = "21%" };
		{ 9, 18821, "", "=q4=Quick Strike Ring",  droprate = "2%" };
		{ 10, 18820, "", "=q4=Talisman of Ephemeral Power",  droprate = "2%" };
		{ 11, 19142, "", "=q4=Fire Runed Grimoire",  droprate = "2%" };
		{ 12, 18822, "", "=q4=Obsidian Edged Blade",  droprate = "2%" };
		{ 16, 2522361, "", "=q4=Molten Spaulders",  droprate = "100%", lootTable = {"T1SHOULDER","Token"} };
		{ 18, 18563, "", "=q5=Bindings of the Windseeker", " =ds=#m3#, =q1=#m10#", "", droprate = "3%" };
		{ 19, 19019, "", "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
	};
	{
		Name = BabbleBoss["Golemagg the Incinerator"];
		{ 1, 19136, "", "=q4=Mana Igniting Cord",  droprate = "2%" };
		{ 2, 18823, "", "=q4=Aged Core Leather Gloves",  droprate = "2%" };
		{ 3, 18829, "", "=q4=Deep Earth Spaulders",  droprate = "1%" };
		{ 4, 19144, "", "=q4=Sabatons of the Flamewalker",  droprate = "1%" };
		{ 5, 19143, "", "=q4=Flameguard Gauntlets",  droprate = "2%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "1%" };
		{ 7, 18824, "", "=q4=Magma Tempered Boots",  droprate = "1%" };
		{ 8, 18821, "", "=q4=Quick Strike Ring",  droprate = "2%" };
		{ 9, 18820, "", "=q4=Talisman of Ephemeral Power",  droprate = "2%" };
		{ 10, 19142, "", "=q4=Fire Runed Grimoire",  droprate = "2%" };
		{ 11, 17103, "", "=q4=Azuresong Mageblade",  droprate = "17%" };
		{ 12, 18822, "", "=q4=Obsidian Edged Blade",  droprate = "2%" };
		{ 13, 18842, "", "=q4=Staff of Dominance",  droprate = "18%" };
		{ 14, 17072, "", "=q4=Blastershot Launcher",  droprate = "17%" };
		{ 16, 2522350, "", "=q4=Molten Tunic",  droprate = "100%", lootTable = {"T1CHEST","Token"} };
		{ 18, 17203, "", "=q4=Sulfuron Ingot",  droprate = "11%" };
		{ 19, 17182, "", "=q5=Sulfuras, Hand of Ragnaros", "=q1=#m4#: =ds=#h2#, #w6#" };
	};
	{
		Name = BabbleBoss["Sulfuron Harbinger"];
		{ 1, 19145, "", "=q4=Robe of Volatile Power",  "2.%" };
		{ 2, 18872, "", "=q4=Manastorm Leggings",  droprate = "2%" };
		{ 3, 19146, "", "=q4=Wristguards of Stability",  droprate = "2%" };
		{ 4, 18875, "", "=q4=Salamander Scale Pants",  droprate = "2%" };
		{ 5, 18870, "", "=q4=Helm of the Lifegiver",  droprate = "1%" };
		{ 6, 18861, "", "=q4=Flamewaker Legplates",  droprate = "2%" };
		{ 7, 18879, "", "=q4=Heavy Dark Iron Ring",  droprate = "2%" };
		{ 8, 19147, "", "=q4=Ring of Spell Power",  droprate = "2%" };
		{ 9, 18878, "", "=q4=Sorcerous Dagger",  droprate = "2%" };
		{ 10, 17074, "", "=q4=Shadowstrike",  droprate = "23%" };
		{ 11, 17077, "", "=q4=Crimson Shocker",  droprate = "2%" };
		{ 16, 2522365, "", "=q4=Molten Boots",  droprate = "100%", lootTable = {"T1FEET","Token"} };
		{ 18, 17330, "", "=q1=Hand of Sulfuron" };
	};
	{
		Name = BabbleBoss["Majordomo Executus"];
		{ 1, 18811, "", "=q4=Fireproof Cloak",  droprate = "15%" };
		{ 2, 18808, "", "=q4=Gloves of the Hypnotic Flame",  droprate = "15%" };
		{ 3, 18809, "", "=q4=Sash of Whispered Secrets",  "1" };
		{ 4, 19139, "", "=q4=Fireguard Shoulders",  droprate = "15%" };
		{ 5, 18810, "", "=q4=Wild Growth Spaulders",  droprate = "16%" };
		{ 6, 18812, "", "=q4=Wristguards of True Flight",  droprate = "18%" };
		{ 7, 18806, "", "=q4=Core Forged Greaves",  droprate = "16%" };
		{ 8, 19140, "", "=q4=Cauterizing Band",  droprate = "15%" };
		{ 9, 18805, "", "=q4=Core Hound Tooth",  droprate = "16%" };
		{ 10, 18803, "", "=q4=Finkle's Lava Dredger",  droprate = "12%" };
		{ 16, 18715, "", "=q4=Lok'delar, Stave of the Ancient Keepers" };
		{ 17, 18713, "", "=q4=Rhok'delar, Longbow of the Ancient Keepers" };
		{ 19, 18608, "", "=q4=Benediction" };
		{ 20, 18609, "", "=q4=Anathema" };
	};
	{
		Name = BabbleBoss["Ragnaros"];
		{ 1, 17102, "", "=q4=Cloak of the Shrouded Mists",  droprate = "14%" };
		{ 2, 17107, "", "=q4=Dragon's Blood Cape" };
		{ 3, 18817, "", "=q4=Crown of Destruction",  droprate = "16%" };
		{ 4, 19137, "", "=q4=Onslaught Girdle",  droprate = "13%" };
		{ 5, 18814, "", "=q4=Choker of the Fire Lord",  droprate = "16%" };
		{ 6, 19138, "", "=q4=Band of Sulfuras",  droprate = "15%" };
		{ 7, 17063, "", "=q4=Band of Accuria",  droprate = "14%" };
		{ 8, 17082, "", "=q4=Shard of the Flame",  " 4%" };
		{ 9, 18815, "", "=q4=Essence of the Pure Flame",  "17.%" };
		{ 10, 18816, "", "=q4=Perdition's Blade",  droprate = "15%" };
		{ 11, 17076, "", "=q4=Bonereaver's Edge",  droprate = "5%" };
		{ 12, 17104, "", "=q4=Spinal Reaper",  " 4%" };
		{ 13, 17106, "", "=q4=Malistar's Defender",  droprate = "13%" };
		{ 14, 17083, "", "=q4=Blade of Dragon Bone",  droprate = "13%" };
		{ 16, 2522459, "", "=q4=Chromatic Leggaurds",  droprate = "100%", lootTable = {"T2LEGS","Token"} };
		{ 18, 21110, "", "=q1=Draconic for Dummies",  droprate = "100%" };
		{ 20, 17204, "", "=q5=Eye of Sulfuras",  droprate = "3%" };
		{ 21, 17182, "", "=q5=Sulfuras, Hand of Ragnaros", "=q1=#m4#: =ds=#h2#, #w6#" };
		{ 23, 19017, "", "=q1=Essence of the Firelord",  "0.46%" };
		{ 24, 19019, "", "=q5=Thunderfury, Blessed Blade of the Windseeker", "=q1=#m4#: =ds=#h1#, #w10#" };
		{ 25, 102107, "", "=q4=Reins of the Magmatic Steed", "", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic };
	};
	{
		Name = "Random Boss Drops";
		{ 1, 17010, "", "=q3=Fiery Core" };
		{ 2, 17011, "", "=q3=Lava Core" };
		{ 3, 11382, "", "=q2=Blood of the Mountain" };
		{ 4, 17012, "", "=q1=Core Leather" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 18264, "", "=q3=Plans: Elemental Sharpening Stone", "=ds=#p2# (300)", "", droprate = "1%" };
		{ 2, 18262, "", "=q2=Elemental Sharpening Stone", "=ds=#e6#" };
		{ 4, 18292, "", "=q3=Schematic: Core Marksman Rifle", "=ds=#p5# (300)", "", "0.96%" };
		{ 5, 18282, "", "=q4=Core Marksman Rifle" };
		{ 7, 18291, "", "=q3=Schematic: Force Reactive Disk", "=ds=#p5# (300)", "", "0%" };
		{ 8, 18168, "", "=q4=Force Reactive Disk" };
		{ 10, 18290, "", "=q3=Schematic: Biznicks 247x128 Accurascope", "=ds=#p5# (300)", "", "0%" };
		{ 11, 18283, "", "=q3=Biznicks 247x128 Accurascope", "=ds=#e11#" };
		{ 13, 18259, "", "=q3=Formula: Enchant Weapon - Spell Power",  "0.85%" };
		{ 16, 18252, "", "=q3=Pattern: Core Armor Kit", "=ds=#p7# (300)", "", "0.85%" };
		{ 17, 18251, "", "=q3=Core Armor Kit", "=ds=#e6#" };
		{ 19, 18265, "", "=q3=Pattern: Flarecore Wraps", "=ds=#p8# (300)", "", "0.72%" };
		{ 20, 18263, "", "=q4=Flarecore Wraps" };
		{ 22, 21371, "", "=q3=Pattern: Core Felcloth Bag", "=ds=#p8# (300)", "", "0.33%" };
		{ 23, 21342, "", "=q4=Core Felcloth Bag", "=ds=#m11# #e1# =q1=#m1# #c8#" };
		{ 25, 18257, "", "=q3=Recipe: Major Rejuvenation Potion",  "0.76%" };
		{ 26, 18253, "", "=q1=Major Rejuvenation Potion" };
		{ 28, 18260, "", "=q3=Formula: Enchant Weapon - Healing Power",  "0%" };
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
		{ 1, 19337, "", "=q4=The Black Book" };
		{ 2, 19336, "", "=q4=Arcane Infused Gem" };
		{ 3, 1506015, "", "=q4=Soulsong Crystal" };
		{ 4, 1506014, "", "=q4=Living Blood Gem" };
		{ 5, 19370, "", "=q4=Mantle of the Blackwing Cabal",  droprate = "20%" };
		{ 6, 19369, "", "=q4=Gloves of Rapid Evolution",  droprate = "20%" };
		{ 7, 19334, "", "=q4=The Untamed Blade",  droprate = "10%" };
		{ 8, 19335, "", "=q4=Spineshatter",  droprate = "10%" };
		{ 9, 19397, "", "=q4=Ring of Blackrock",  droprate = "6%" };
		{ 10, 19357, "", "=q4=Herald of Woe",  droprate = "16%" };
		{ 11, 19405, "", "=q4=Malfurion's Blessed Bulwark",  droprate = "16%" };
		{ 16, 2522462, "", "=q4=Chromatic Wristguards",  droprate = "100%", lootTable = {"T2WRIST","Token"} };
	};
	{
		Name = BabbleBoss["Vaelastrasz the Corrupt"];
		{ 1, 19339, "", "=q4=Mind Quickening Gem",  droprate = "20%" };
		{ 2, 19340, "", "=q4=Rune of Metamorphosis",  droprate = "20%" };
		{ 3, 19372, "", "=q4=Helm of Endless Rage",  droprate = "20%" };
		{ 4, 19371, "", "=q4=Pendant of the Fallen Dragon",  droprate = "20%" };
		{ 5, 19346, "", "=q4=Dragonfang Blade",  droprate = "10%" };
		{ 6, 19348, "", "=q4=Red Dragonscale Protector",  droprate = "10%" };
		{ 7, 19430, "", "=q4=Shroud of Pure Thought",  droprate = "16%" };
		{ 8, 19403, "", "=q4=Band of Forced Concentration",  droprate = "16%" };
		{ 9, 19367, "", "=q4=Dragon's Touch",  droprate = "16%" };
		{ 10, 14000, "", "=q4=Ring of Trinity Force",  "12.5%" };
		{ 16, 2522463, "", "=q4=Chromatic Girdle",  droprate = "100%", lootTable = {"T2WAIST","Token"} };
	};
	{
		Name = BabbleBoss["Broodlord Lashlayer"];
		{ 1, 19342, "", "=q4=Venomous Totem",  droprate = "20%" };
		{ 2, 19341, "", "=q4=Lifegiving Gem",  droprate = "20%" };
		{ 3, 19345, "", "=q4=Aegis of Preservation",  droprate = "16%" };
		{ 4, 19374, "", "=q4=Bracers of Arcane Accuracy",  droprate = "20%" };
		{ 5, 19373, "", "=q4=Black Brood Pauldrons",  droprate = "20%" };
		{ 6, 19351, "", "=q4=Maladath, Runed Blade of the Black Flight",  droprate = "10%" };
		{ 7, 19350, "", "=q4=Heartstriker",  droprate = "10%" };
		{ 8, 19402, "", "=q4=Legguards of the Fallen Crusader",  "12.5%" };
		{ 9, 19365, "", "=q4=Claw of the Black Drake",  "12.5%" };
		{ 10, 19432, "", "=q4=Circle of Applied Force",  droprate = "16%" };
		{ 16, 2522465, "", "=q4=Chromatic Boots",  droprate = "100%", lootTable = {"T2FEET","Token"} };
		{ 18, 20383, "", "=q1=Head of the Broodlord Lashlayer",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Firemaw"];
		{ 1, 19365, "", "=q4=Claw of the Black Drake",  "12.5%" };
		{ 2, 19355, "", "=q4=Shadow Wing Focus Staff",  droprate = "6%" };
		{ 3, 19353, "", "=q4=Drake Talon Cleaver",  droprate = "6%" };
		{ 4, 19343, "", "=q4=Scrolls of Blinding Light",  "12.5%" };
		{ 5, 19344, "", "=q4=Natural Alignment Crystal",  droprate = "6%" };
		{ 6, 19398, "", "=q4=Cloak of Firemaw",  "12.5%" };
		{ 7, 19400, "", "=q4=Firemaw's Clutch",  "12.5%" };
		{ 8, 19399, "", "=q4=Black Ash Robe",  "12.5%" };
		{ 9, 19396, "", "=q4=Taut Dragonhide Belt",  droprate = "6%" };
		{ 10, 19401, "", "=q4=Primalist's Linked Legguards",  "12.5%" };
		{ 11, 19394, "", "=q4=Drake Talon Pauldrons",  droprate = "6%" };
		{ 12, 19402, "", "=q4=Legguards of the Fallen Crusader",  "12.5%" };
		{ 13, 19397, "", "=q4=Ring of Blackrock",  droprate = "6%" };
		{ 14, 19395, "", "=q4=Rejuvenating Gem",  droprate = "6%" };
		{ 16, 2522464, "", "=q4=Chromatic Handgaurds",  droprate = "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Ebonroc"];
		{ 1, 19345, "", "=q4=Aegis of Preservation",  droprate = "16%" };
		{ 2, 19407, "", "=q4=Ebony Flame Gloves",  droprate = "16%" };
		{ 3, 19405, "", "=q4=Malfurion's Blessed Bulwark",  droprate = "16%" };
		{ 4, 19396, "", "=q4=Taut Dragonhide Belt",  droprate = "6%" };
		{ 5, 19394, "", "=q4=Drake Talon Pauldrons",  droprate = "6%" };
		{ 6, 19403, "", "=q4=Band of Forced Concentration",  droprate = "16%" };
		{ 7, 19397, "", "=q4=Ring of Blackrock",  droprate = "6%" };
		{ 8, 19406, "", "=q4=Drake Fang Talisman",  droprate = "16%" };
		{ 9, 19395, "", "=q4=Rejuvenating Gem",  droprate = "6%" };
		{ 10, 19353, "", "=q4=Drake Talon Cleaver",  droprate = "6%" };
		{ 11, 19355, "", "=q4=Shadow Wing Focus Staff",  droprate = "6%" };
		{ 12, 19368, "", "=q4=Dragonbreath Hand Cannon",  droprate = "16%" };
		{ 16, 2522464, "", "=q4=Chromatic Handgaurds",  droprate = "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Flamegor"];
		{ 1, 19430, "", "=q4=Shroud of Pure Thought",  droprate = "16%" };
		{ 2, 19396, "", "=q4=Taut Dragonhide Belt",  droprate = "6%" };
		{ 3, 19433, "", "=q4=Emberweave Leggings",  droprate = "16%" };
		{ 4, 19394, "", "=q4=Drake Talon Pauldrons",  droprate = "6%" };
		{ 5, 19397, "", "=q4=Ring of Blackrock",  droprate = "6%" };
		{ 6, 19432, "", "=q4=Circle of Applied Force",  droprate = "16%" };
		{ 7, 19395, "", "=q4=Rejuvenating Gem",  droprate = "6%" };
		{ 8, 19431, "", "=q4=Styleen's Impeding Scarab",  droprate = "16%" };
		{ 9, 19353, "", "=q4=Drake Talon Cleaver",  droprate = "6%" };
		{ 10, 19357, "", "=q4=Herald of Woe",  droprate = "16%" };
		{ 11, 19355, "", "=q4=Shadow Wing Focus Staff",  droprate = "6%" };
		{ 12, 19367, "", "=q4=Dragon's Touch",  droprate = "16%" };
		{ 16, 2522464, "", "=q4=Chromatic Handgaurds",  droprate = "100%", lootTable = {"T2HAND","Token"} };
	};
	{
		Name = BabbleBoss["Chromaggus"];
		{ 1, 19386, "", "=q4=Elementium Threaded Cloak",  droprate = "20%" };
		{ 2, 19388, "", "=q4=Angelista's Grasp",  droprate = "20%" };
		{ 3, 19385, "", "=q4=Empowered Leggings",  droprate = "20%" };
		{ 4, 19391, "", "=q4=Shimmering Geta",  droprate = "20%" };
		{ 5, 19389, "", "=q4=Taut Dragonhide Shoulderpads",  droprate = "20%" };
		{ 6, 19390, "", "=q4=Taut Dragonhide Gloves",  droprate = "20%" };
		{ 7, 19393, "", "=q4=Primalist's Linked Waistguard",  droprate = "10%" };
		{ 8, 19392, "", "=q4=Girdle of the Fallen Crusader",  droprate = "10%" };
		{ 9, 19387, "", "=q4=Chromatic Boots",  droprate = "20%" };
		{ 11, 19347, "", "=q4=Claw of Chromaggus",  droprate = "10%" };
		{ 12, 19352, "", "=q4=Chromatically Tempered Sword",  droprate = "10%" };
		{ 13, 19349, "", "=q4=Elementium Reinforced Bulwark",  droprate = "10%" };
		{ 14, 19361, "", "=q4=Ashjre'thul, Crossbow of Smiting",  droprate = "10%" };
		{ 16, 2522461, "", "=q4=Chromatic Spaulders",  droprate = "100%", lootTable = {"T2SHOULDER","Token"} };
	};
	{
		Name = BabbleBoss["Nefarian"];
		{ 1, 19378, "", "=q4=Cloak of the Brood Lord",  droprate = "16%" };
		{ 2, 19375, "", "=q4=Mish'undare, Circlet of the Mind Flayer",  droprate = "16%" };
		{ 3, 19381, "", "=q4=Boots of the Shadow Flame",  droprate = "16%" };
		{ 4, 19380, "", "=q4=Therazane's Link",  droprate = "16%" };
		{ 5, 19377, "", "=q4=Prestor's Talisman of Connivery",  droprate = "16%" };
		{ 6, 19376, "", "=q4=Archimtiros' Ring of Reckoning",  droprate = "16%" };
		{ 7, 19382, "", "=q4=Pure Elementium Band",  droprate = "16%" };
		{ 8, 19379, "", "=q4=Neltharion's Tear",  droprate = "16%" };
		{ 9, 19364, "", "=q4=Ashkandi, Greatsword of the Brotherhood",  droprate = "10%" };
		{ 10, 19363, "", "=q4=Crul'shorukh, Edge of Chaos",  droprate = "16%" };
		{ 11, 19360, "", "=q4=Lok'amir il Romathis",  droprate = "16%" };
		{ 12, 19356, "", "=q4=Staff of the Shadow Flame",  "16%%" };
		{ 13, 14001, "", "=q4=Archimtiros' Ring of Armageddon",  "16%%" };
		{ 16, 2522450, "", "=q4=Chromatic Tunic",  droprate = "100%", lootTable = {"T2CHEST","Token"} };
		{ 18, 19003, "", "=q4=Head of Nefarian",  droprate = "100%" };
		{ 19, 19383, "", "=q4=Master Dragonslayer's Medallion" };
		{ 20, 19384, "", "=q4=Master Dragonslayer's Ring" };
		{ 21, 19366, "", "=q4=Master Dragonslayer's Orb", "=q1=#m4#: =ds=#s15#" };
		{ 23, 21138, "", "=q1=Red Scepter Shard",  droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 19436, "", "=q4=Cloak of Draconic Might",  droprate = "2%" };
		{ 2, 19437, "", "=q4=Boots of Pure Thought",  droprate = "2%" };
		{ 3, 19438, "", "=q4=Ringo's Blizzard Boots",  droprate = "4%" };
		{ 4, 19439, "", "=q4=Interlaced Shadow Jerkin",  droprate = "4%" };
		{ 5, 19434, "", "=q4=Band of Dark Dominion",  droprate = "1%" };
		{ 6, 19362, "", "=q4=Doom's Edge",  droprate = "1%" };
		{ 7, 19354, "", "=q4=Draconic Avenger",  droprate = "5%" };
		{ 8, 19358, "", "=q4=Draconic Maul",  droprate = "2%" };
		{ 9, 19435, "", "=q4=Essence Gatherer",  droprate = "1%" };
		{ 16, 18562, "", "=q4=Elementium Ore",  droprate = "4%" };
		{ 18, 21109, "", "=q1=Draconic for Dummies" };
	};
};

----------------------
--- Dire Maul East ---
----------------------

AtlasLoot_Data["DireMaulEast"] = {
	Name = BabbleZone["Dire Maul"] .. " East";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Pusillin"];
		{ 1, 18267, "", "=q2=Recipe: Runn Tum Tuber Surprise", "=ds=#p3# (275)", "", droprate = "71%" };
		{ 3, 18261, "", "=q1=Book of Incantations",  droprate = "100%" };
		{ 4, 18249, "", "=q1=Crescent Key",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Zevrim Thornhoof"];
		{ 1, 18319, "", "=q3=Fervent Helm",  droprate = "7%" };
		{ 2, 18313, "", "=q3=Helm of Awareness",  droprate = "17%" };
		{ 3, 18323, "", "=q3=Satyr's Bow",  droprate = "17%" };
		{ 5, 18306, "", "=q2=Gloves of Shadowy Mist",  droprate = "21%" };
		{ 6, 18308, "", "=q2=Clever Hat",  droprate = "23%" };
	};
	{
		Name = BabbleBoss["Lethtendris"];
		{ 1, 18325, "", "=q3=Felhide Cap",  droprate = "24%" };
		{ 2, 18311, "", "=q3=Quel'dorei Channeling Rod",  droprate = "7%" };
		{ 4, 18302, "", "=q3=Band of Vigor",  droprate = "29%" };
		{ 5, 18301, "", "=q3=Lethtendris's Wand",  "2" };
		{ 7, 18426, "", "=q1=Lethtendris's Web" };
	};
	{
		Name = BabbleBoss["Pimgib"];
		{ 1, 18354, "", "=q3=Pimgib's Collar",  droprate = "18%" };
	};
	{
		Name = BabbleBoss["Hydrospawn"];
		{ 1, 18322, "", "=q3=Waterspout Boots",  droprate = "16%" };
		{ 2, 18317, "", "=q3=Tempest Talisman",  droprate = "16%" };
		{ 3, 18324, "", "=q3=Waveslicer",  droprate = "8%" };
		{ 5, 18307, "", "=q3=Riptide Shoes",  droprate = "21%" };
		{ 6, 18305, "", "=q3=Breakwater Legguards",  droprate = "22%" };
	};
	{
		Name = BabbleBoss["Alzzin the Wildshaper"];
		{ 1, 18328, "", "=q3=Shadewood Cloak",  droprate = "15%" };
		{ 2, 18327, "", "=q3=Whipvine Cord",  droprate = "16%" };
		{ 3, 18309, "", "=q3=Gloves of Restoration",  droprate = "14%" };
		{ 4, 18318, "", "=q3=Merciful Greaves",  droprate = "14%" };
		{ 5, 18312, "", "=q3=Energized Chestplate",  droprate = "16%" };
		{ 6, 18326, "", "=q3=Razor Gauntlets",  droprate = "18%" };
		{ 8, 0, "INV_Box_01", "=q6=#x9#" };
		{ 9, 18501, "", "=q1=Felvine Shard" };
		{ 16, 18315, "", "=q3=Ring of Demonic Potency",  droprate = "15%" };
		{ 17, 18314, "", "=q3=Ring of Demonic Guile",  droprate = "13%" };
		{ 18, 18310, "", "=q3=Fiendish Machete",  droprate = "15%" };
		{ 19, 18321, "", "=q3=Energetic Rod",  droprate = "15%" };
	};
	{
		Name = BabbleBoss["Isalien"];
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n20#" };
		{ 2, 22304, "", "=q3=Ironweave Gloves",  droprate = "16%" };
		{ 3, 22472, "", "=q3=Boots of Ferocity",  droprate = "12%" };
		{ 4, 22401, "", "=q3=Libram of Hope",  droprate = "14%" };
		{ 5, 22345, "", "=q3=Totem of Rebirth",  droprate = "2%" };
		{ 6, 22315, "", "=q3=Hammer of Revitalization" };
		{ 7, 22314, "", "=q3=Huntsman's Harpoon",  droprate = "15%" };
		{ 17, 21984, "", "=q1=Left Piece of Lord Valthalak's Amulet" };
		{ 18, 22046, "", "=q1=Right Piece of Lord Valthalak's Amulet" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 18295, "", "=q3=Phasing Boots",  droprate = "1%" };
		{ 2, 18298, "", "=q3=Unbridled Leggings",  "0.62%" };
		{ 3, 18296, "", "=q3=Marksman Bands",  "0%" };
		{ 4, 18289, "", "=q3=Barbed Thorn Necklace",  "0.87%" };
	};
	{
		Name = "Dire Maul Books";
		{ 1, 18364, "", "=q3=The Emerald Dream", "=ds=#e10#, =q1=#m1# =ds=#c1#" };
		{ 2, 18361, "", "=q3=The Greatest Race of Hunters", "=ds=#e10#, =q1=#m1# =ds=#c2#" };
		{ 3, 18358, "", "=q3=The Arcanist's Cookbook", "=ds=#e10#, =q1=#m1# =ds=#c3#" };
		{ 4, 18359, "", "=q3=The Light and How to Swing It", "=ds=#e10#, =q1=#m1# =ds=#c4#" };
		{ 5, 18362, "", "=q3=Holy Bologna: What the Light Won't Tell You", "=ds=#e10#, =q1=#m1# =ds=#c5#" };
		{ 6, 18356, "", "=q3=Garona: A Study on Stealth and Treachery", "=ds=#e10#, =q1=#m1# =ds=#c6#" };
		{ 7, 18363, "", "=q3=Frost Shock and You", "=ds=#e10#, =q1=#m1# =ds=#c7#" };
		{ 8, 18360, "", "=q3=Harnessing Shadows", "=ds=#e10#, =q1=#m1# =ds=#c8#" };
		{ 9, 18357, "", "=q3=Codex of Defense", "=ds=#e10#, =q1=#m1# =ds=#c9#" };
		{ 11, 18333, "", "=q2=Libram of Focus", "=ds=#e10#" };
		{ 12, 18334, "", "=q2=Libram of Protection", "=ds=#e10#" };
		{ 13, 18332, "", "=q2=Libram of Rapidity", "=ds=#e10#" };
		{ 16, 18470, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 17, 18473, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 18, 18468, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 19, 18472, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 20, 18469, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 21, 18465, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 22, 18471, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 23, 18467, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 24, 18466, "", "=q3=Royal Seal of Eldre'Thalas" };
		{ 26, 18401, "", "=q4=Foror's Compendium of Dragon Slaying", "=ds=#e10#, =q1=#m1# =ds=#c9#, #c4#" };
		{ 27, 18348, "", "=q4=Quel'Serrar", "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c4#" };
	};
};
-----------------------
--- Dire Maul North ---
-----------------------

AtlasLoot_Data["DireMaulNorth"] = {
	Name = BabbleZone["Dire Maul"] .. " North";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Guard Mol'dar"];
		{ 1, 18496, "", "=q3=Heliotrope Cloak",  droprate = "4%" };
		{ 2, 18497, "", "=q3=Sublime Wristguards",  droprate = "4%" };
		{ 3, 18494, "", "=q3=Denwatcher's Shoulders",  droprate = "4%" };
		{ 4, 18493, "", "=q3=Bulky Iron Spaulders",  droprate = "3%" };
		{ 5, 18498, "", "=q3=Hedgecutter",  droprate = "4%" };
		{ 7, 18268, "", "=q1=Gordok Inner Door Key",  droprate = "100%" };
		{ 16, 18450, "", "=q3=Robe of Combustion",  droprate = "6%" };
		{ 17, 18451, "", "=q3=Hyena Hide Belt",  droprate = "6%" };
		{ 18, 18458, "", "=q3=Modest Armguards",  droprate = "7%" };
		{ 19, 18459, "", "=q3=Gallant's Wristguards",  droprate = "6%" };
		{ 20, 18464, "", "=q3=Gordok Nose Ring",  droprate = "6%" };
		{ 21, 18462, "", "=q3=Jagged Bone Fist" };
		{ 22, 18463, "", "=q3=Ogre Pocket Knife",  droprate = "7%" };
		{ 23, 18460, "", "=q3=Unsophisticated Hand Cannon",  droprate = "5%" };
	};
	{
		Name = BabbleBoss["Stomper Kreeg"];
		{ 1, 18425, "", "=q3=Kreeg's Mug",  droprate = "40%" };
		{ 2, 18269, "", "=q3=Gordok Green Grog",  droprate = "100%" };
		{ 3, 18284, "", "=q3=Kreeg's Stout Beatdown",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Guard Fengus"];
		{ 1, 18450, "", "=q3=Robe of Combustion",  droprate = "9%" };
		{ 2, 18451, "", "=q3=Hyena Hide Belt",  droprate = "10%" };
		{ 3, 18458, "", "=q3=Modest Armguards",  droprate = "11%" };
		{ 4, 18459, "", "=q3=Gallant's Wristguards",  droprate = "9%" };
		{ 5, 18464, "", "=q3=Gordok Nose Ring",  droprate = "11%" };
		{ 6, 18462, "", "=q3=Jagged Bone Fist",  droprate = "11%" };
		{ 7, 18463, "", "=q3=Ogre Pocket Knife",  droprate = "11%" };
		{ 8, 18460, "", "=q3=Unsophisticated Hand Cannon",  droprate = "9%" };
		{ 16, 0, "INV_Box_01", "=q6=#x7#" };
		{ 17, 18266, "", "=q1=Gordok Courtyard Key",  droprate = "100%" };
	};
	{
		Name = AL["Knot Thimblejack"];
		{ 1, 18517, "", "=q4=Pattern: Chromatic Cloak", "=ds=#p7# (300)", "", "0%" };
		{ 2, 18518, "", "=q4=Pattern: Hide of the Wild", "=ds=#p7# (300)", "", droprate = "1%" };
		{ 3, 18519, "", "=q4=Pattern: Shifting Cloak", "=ds=#p7# (300)", "", droprate = "1%" };
		{ 4, 18414, "", "=q4=Pattern: Belt of the Archmage", "=ds=#p8# (300)", "", droprate = "1%" };
		{ 6, 18418, "", "=q3=Pattern: Cloak of Warding", "=ds=#p8# (300)", "", droprate = "9%" };
		{ 7, 18415, "", "=q3=Pattern: Felcloth Gloves", "=ds=#p8# (300)", "", droprate = "9%" };
		{ 8, 18416, "", "=q3=Pattern: Inferno Gloves", "=ds=#p8# (300)", "", droprate = "10%" };
		{ 9, 18417, "", "=q3=Pattern: Mooncloth Gloves", "=ds=#p8# (300)", "", droprate = "10%" };
		{ 10, 18514, "", "=q3=Pattern: Girdle of Insight", "=ds=#p7# (300)", "", droprate = "10%" };
		{ 11, 18515, "", "=q3=Pattern: Mongoose Boots", "=ds=#p7# (300)", "", droprate = "11%" };
		{ 12, 18516, "", "=q3=Pattern: Swift Flight Bracers", "=ds=#p7# (300)", "", droprate = "10%" };
		{ 14, 0, "INV_Box_01", "=q6=#x6#" };
		{ 15, 18240, "", "=q2=Ogre Tannin",  droprate = "100%" };
		{ 16, 18509, "", "=q4=Chromatic Cloak" };
		{ 17, 18510, "", "=q4=Hide of the Wild" };
		{ 18, 18511, "", "=q4=Shifting Cloak" };
		{ 19, 18405, "", "=q4=Belt of the Archmage" };
		{ 21, 18413, "", "=q3=Cloak of Warding" };
		{ 22, 18407, "", "=q3=Felcloth Gloves" };
		{ 23, 18408, "", "=q3=Inferno Gloves" };
		{ 24, 18409, "", "=q3=Mooncloth Gloves" };
		{ 25, 18504, "", "=q3=Girdle of Insight" };
		{ 26, 18506, "", "=q3=Mongoose Boots" };
		{ 27, 18508, "", "=q3=Swift Flight Bracers" };
	};
	{
		Name = BabbleBoss["Guard Slip'kik"];
		{ 1, 18496, "", "=q3=Heliotrope Cloak",  droprate = "5%" };
		{ 2, 18497, "", "=q3=Sublime Wristguards",  droprate = "4%" };
		{ 3, 18494, "", "=q3=Denwatcher's Shoulders",  droprate = "5%" };
		{ 4, 18493, "", "=q3=Bulky Iron Spaulders",  droprate = "4%" };
		{ 5, 18498, "", "=q3=Hedgecutter",  droprate = "6%" };
		{ 16, 18450, "", "=q3=Robe of Combustion",  droprate = "6%" };
		{ 17, 18451, "", "=q3=Hyena Hide Belt",  droprate = "7%" };
		{ 18, 18458, "", "=q3=Modest Armguards",  droprate = "7%" };
		{ 19, 18459, "", "=q3=Gallant's Wristguards",  droprate = "6%" };
		{ 20, 18464, "", "=q3=Gordok Nose Ring",  droprate = "7%" };
		{ 21, 18462, "", "=q3=Jagged Bone Fist",  droprate = "8%" };
		{ 22, 18463, "", "=q3=Ogre Pocket Knife",  droprate = "7%" };
		{ 23, 18460, "", "=q3=Unsophisticated Hand Cannon",  droprate = "6%" };
	};
	{
		Name = BabbleBoss["Captain Kromcrush"];
		{ 1, 18507, "", "=q3=Boots of the Full Moon",  droprate = "18%" };
		{ 2, 18505, "", "=q3=Mugger's Belt",  droprate = "18%" };
		{ 3, 18503, "", "=q3=Kromcrush's Chestplate",  droprate = "17%" };
		{ 4, 18502, "", "=q3=Monstrous Glaive",  droprate = "21%" };
	};
	{
		Name = BabbleBoss["Cho'Rush the Observer"];
		{ 1, 18490, "", "=q3=Insightful Hood",  droprate = "21%" };
		{ 2, 18484, "", "=q3=Cho'Rush's Blade",  droprate = "22%" };
		{ 3, 18485, "", "=q3=Observer's Shield",  droprate = "22%" };
		{ 4, 18483, "", "=q3=Mana Channeling Wand",  droprate = "19%" };
	};
	{
		Name = BabbleBoss["King Gordok"];
		{ 1, 18526, "", "=q3=Crown of the Ogre King",  droprate = "17%" };
		{ 2, 18525, "", "=q3=Bracers of Prosperity",  droprate = "19%" };
		{ 3, 18527, "", "=q3=Harmonious Gauntlets",  droprate = "19%" };
		{ 4, 18524, "", "=q3=Leggings of Destruction",  droprate = "18%" };
		{ 5, 18521, "", "=q3=Grimy Metal Boots",  "17.%" };
		{ 6, 18522, "", "=q3=Band of the Ogre King",  droprate = "14%" };
		{ 7, 18523, "", "=q3=Brightly Glowing Stone",  droprate = "20%" };
		{ 8, 18520, "", "=q3=Barbarous Blade",  droprate = "16%" };
		{ 16, 19258, "", "=q3=Ace of Warlords", "=ds=#e16#", "", droprate = "1%" };
		{ 18, 18780, "", "=q3=Top Half of Advanced Armorsmithing: Volume I",  droprate = "6%" };
		{ 19, 12727, "", "=q3=Plans: Enchanted Thorium Breastplate", "=q1=#m4#: =ds=#p2# (300)" };
	};
	{
		Name = AL["DM North Tribute Chest"];
		{ 1, 18538, "", "=q4=Treant's Bane" };
		{ 3, 18495, "", "=q3=Redoubt Cloak" };
		{ 4, 18532, "", "=q3=Mindsurge Robe" };
		{ 5, 18528, "", "=q3=Cyclone Spaulders" };
		{ 6, 18530, "", "=q3=Ogre Forged Hauberk" };
		{ 7, 18533, "", "=q3=Gordok Bracers of Power" };
		{ 8, 18529, "", "=q3=Elemental Plate Girdle" };
		{ 9, 18500, "", "=q3=Tarnished Elven Ring" };
		{ 10, 18537, "", "=q3=Counterattack Lodestone" };
		{ 11, 18531, "", "=q3=Unyielding Maul" };
		{ 12, 18534, "", "=q3=Rod of the Ogre Magi" };
		{ 13, 18499, "", "=q3=Barrier Shield" };
		{ 16, 18475, "", "=q2=Oddly Magical Belt" };
		{ 17, 18478, "", "=q2=Hyena Hide Jerkin" };
		{ 18, 18477, "", "=q2=Shaggy Leggings" };
		{ 19, 18476, "", "=q2=Mud Stained Boots" };
		{ 20, 18479, "", "=q2=Carrion Scorpid Helm" };
		{ 21, 18480, "", "=q2=Scarab Plate Helm" };
		{ 22, 18481, "", "=q2=Skullcracking Mace" };
		{ 23, 18482, "", "=q2=Ogre Toothpick Shooter" };
		{ 24, 18655, "", "=q2=Schematic: Major Recombobulator", "=ds=#p5# (275)" };
	};
};

----------------------
--- Dire Maul West ---
----------------------

AtlasLoot_Data["DireMaulWest"] = {
	Name = BabbleZone["Dire Maul"] .. " West";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Tendris Warpwood"];
		{ 1, 18390, "", "=q3=Tanglemoss Leggings",  droprate = "22%" };
		{ 2, 18393, "", "=q3=Warpwood Binding",  droprate = "19%" };
		{ 4, 18353, "", "=q3=Stoneflower Staff",  droprate = "23%" };
		{ 5, 18352, "", "=q3=Petrified Bark Shield",  droprate = "21%" };
	};
	{
		Name = BabbleBoss["Illyanna Ravenoak"];
		{ 1, 18386, "", "=q3=Padre's Trousers",  droprate = "18%" };
		{ 2, 18383, "", "=q3=Force Imbued Gauntlets",  droprate = "20%" };
		{ 4, 18349, "", "=q3=Gauntlets of Accuracy",  droprate = "23%" };
		{ 5, 18347, "", "=q3=Well Balanced Axe",  droprate = "22%" };
	};
	{
		Name = BabbleBoss["Magister Kalendris"];
		{ 1, 18374, "", "=q3=Flamescarred Shoulders" };
		{ 2, 18397, "", "=q3=Elder Magus Pendant",  droprate = "17%" };
		{ 3, 18371, "", "=q3=Mindtap Talisman",  droprate = "7%" };
		{ 5, 18350, "", "=q3=Amplifying Cloak",  droprate = "21%" };
		{ 6, 18351, "", "=q3=Magically Sealed Bracers",  droprate = "24%" };
		{ 7, 22309, "", "=q2=Pattern: Big Bag of Enchantment", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleBoss["Tsu'zee"];
		{ 1, 18387, "", "=q3=Brightspark Gloves",  droprate = "24%" };
		{ 3, 18346, "", "=q3=Threadbare Trousers",  droprate = "33%" };
		{ 4, 18345, "", "=q3=Murmuring Ring",  droprate = "30%" };
	};
	{
		Name = BabbleBoss["Immol'thar"];
		{ 1, 18389, "", "=q3=Cloak of the Cosmos",  droprate = "14%" };
		{ 2, 18385, "", "=q3=Robe of Everlasting Night",  droprate = "15%" };
		{ 3, 18377, "", "=q3=Quickdraw Gloves",  droprate = "21%" };
		{ 4, 18391, "", "=q3=Eyestalk Cord",  droprate = "20%" };
		{ 5, 18394, "", "=q3=Demon Howl Wristguards",  droprate = "17%" };
		{ 6, 18379, "", "=q3=Odious Greaves",  " 19%" };
		{ 7, 18384, "", "=q3=Bile-etched Spaulders",  droprate = "14%" };
		{ 16, 18381, "", "=q3=Evil Eye Pendant",  droprate = "17%" };
		{ 17, 18370, "", "=q3=Vigilance Charm",  droprate = "6%" };
		{ 18, 18372, "", "=q3=Blade of the New Moon",  droprate = "6%" };
	};
	{
		Name = BabbleBoss["Lord Hel'nurath"];
		{ 1, 18757, "", "=q3=Diabolic Mantle",  droprate = "23%" };
		{ 2, 18754, "", "=q3=Fel Hardened Bracers",  droprate = "19%" };
		{ 3, 18756, "", "=q3=Dreadguard's Protector",  droprate = "19%" };
		{ 4, 18755, "", "=q3=Xorothian Firestick",  droprate = "21%" };
	};
	{
		Name = BabbleBoss["Prince Tortheldrin"];
		{ 1, 18382, "", "=q3=Fluctuating Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "21%" };
		{ 2, 18373, "", "=q3=Chestplate of Tranquility",  droprate = "6%" };
		{ 3, 18375, "", "=q3=Bracers of the Eclipse",  droprate = "15%" };
		{ 4, 18378, "", "=q3=Silvermoon Leggings",  droprate = "21%" };
		{ 5, 18380, "", "=q3=Eldritch Reinforced Legplates",  droprate = "15%" };
		{ 6, 18395, "", "=q3=Emerald Flame Ring",  droprate = "14%" };
		{ 8, 0, "INV_Box_01", "=q6=#x8#" };
		{ 9, 18336, "", "=q1=Gauntlet of Gordok Might" };
		{ 16, 18392, "", "=q3=Distracting Dagger",  droprate = "14%" };
		{ 17, 18396, "", "=q3=Mind Carver",  droprate = "14%" };
		{ 18, 18376, "", "=q3=Timeworn Mace",  droprate = "14%" };
		{ 19, 18388, "", "=q3=Stoneshatter",  droprate = "7%" };
	};
	{
		Name = AL["Shen'dralar Provisioner"];
		{ 1, 18487, "", "=q1=Pattern: Mooncloth Robe", "=ds=#p8# (300)" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 18344, "", "=q3=Stonebark Gauntlets",  "0.47%" };
		{ 2, 18340, "", "=q3=Eidolon Talisman",  "0.58%" };
		{ 3, 18338, "", "=q3=Wand of Arcane Potency",  "0%" };
	};
};
------------------
--- Gnomeregan ---
------------------

AtlasLoot_Data["Gnomeregan"] = {
	Name = BabbleZone["Gnomeregan"];
	Type = "ClassicDungeon";
	Map = "Gnomeregan";
	{
		Name = AL["Namdo Bizzfizzle"];
		{ 1, 14639, "", "=q1=Schematic: Minor Recombobulator", "=ds=#p5# (140)" };
	};
	{
		Name = BabbleBoss["Techbot"];
		{ 1, 9444, "", "=q1=Techbot CPU Shell",  "69.3%" };
		{ 2, 9277, "", "=q1=Techbot's Memory Core",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Grubbis"];
		{ 1, 9445, "", "=q3=Grubbis Paws",  droprate = "9%" };
	};
	{
		Name = BabbleBoss["Viscous Fallout"];
		{ 1, 9454, "", "=q3=Acidic Walkers",  droprate = "54%" };
		{ 2, 9453, "", "=q3=Toxic Revenger",  droprate = "19%" };
		{ 3, 9452, "", "=q3=Hydrocane",  droprate = "18%" };
	};
	{
		Name = BabbleBoss["Electrocutioner 6000"];
		{ 1, 9448, "", "=q3=Spidertank Oilrag",  droprate = "28%" };
		{ 2, 9447, "", "=q3=Electrocutioner Lagnut",  droprate = "28%" };
		{ 3, 9446, "", "=q3=Electrocutioner Leg",  droprate = "13%" };
		{ 4, 6893, "", "=q1=Workshop Key" };
	};
	{
		Name = BabbleBoss["Crowd Pummeler 9-60"];
		{ 1, 9450, "", "=q3=Gnomebot Operating Boots",  droprate = "60%" };
		{ 2, 9449, "", "=q3=Manual Crowd Pummeler",  droprate = "33%" };
	};
	{
		Name = BabbleBoss["Dark Iron Ambassador"];
		{ 1, 9455, "", "=q3=Emissary Cuffs",  droprate = "33%" };
		{ 2, 9457, "", "=q3=Royal Diplomatic Scepter",  droprate = "17%" };
		{ 3, 9456, "", "=q3=Glass Shooter",  droprate = "38%" };
	};
	{
		Name = BabbleBoss["Mekgineer Thermaplugg"];
		{ 1, 9492, "", "=q3=Electromagnetic Gigaflux Reactivator",  droprate = "7%" };
		{ 2, 9461, "", "=q3=Charged Gear", "=ds=#s13# =q2=#m16#", "", droprate = "28%" };
		{ 3, 9459, "", "=q3=Thermaplugg's Left Arm",  droprate = "18%" };
		{ 4, 9458, "", "=q3=Thermaplugg's Central Core",  droprate = "28%" };
		{ 5, 4415, "", "=q3=Schematic: Craftsman's Monocle", "=ds=#p5# (185)" };
		{ 6, 4413, "", "=q2=Schematic: Discombobulator Ray", "=ds=#p5# (160)" };
		{ 7, 4411, "", "=q2=Schematic: Flame Deflector", "=ds=#p5# (125)", "", "0.7%" };
		{ 8, 7742, "", "=q1=Schematic: Gnomish Cloaking Device", "=ds=#p5# (200)" };
		{ 9, 9299, "", "=q1=Thermaplugg's Safe Combination",  droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 9508, "", "=q3=Mechbuilder's Overalls",  droprate = "0.02%" };
		{ 2, 9491, "", "=q3=Hotshot Pilot's Gloves",  droprate = "0.01%" };
		{ 3, 9509, "", "=q3=Petrolspill Leggings",  droprate = "0.01%" };
		{ 4, 9510, "", "=q3=Caverndeep Trudgers",  droprate = "0.01%" };
		{ 5, 9490, "", "=q3=Gizmotron Megachopper",  droprate = "0.01%" };
		{ 6, 9485, "", "=q3=Vibroblade",  droprate = "0.01%" };
		{ 7, 9486, "", "=q3=Supercharger Battle Axe",  droprate = "0.02%" };
		{ 8, 9488, "", "=q3=Oscillating Power Hammer",  droprate = "0.02%" };
		{ 9, 9487, "", "=q3=Hi-tech Supergun",  droprate = "0.01%" };
		{ 10, 9327, "", "=q2=Security DELTA Data Access Card",  droprate = "1%" };
		{ 11, 9326, "", "=q1=Grime-Encrusted Ring",  droprate = "9%" };
		{ 12, 9362, "", "=q2=Brilliant Gold Ring" };
		{ 13, 9538, "", "=q3=Talvash's Gold Ring" };
	};
};
----------------
--- Maraudon ---
----------------

AtlasLoot_Data["Maraudon"] = {
	Name = BabbleZone["Maraudon"];
	Type = "ClassicDungeon";
	Map = "Maraudon";
	{
		Name = BabbleBoss["Noxxion"];
		{ 1, 17746, "", "=q3=Noxxion's Shackles",  droprate = "32%" };
		{ 2, 17744, "", "=q3=Heart of Noxxion",  droprate = "30%" };
		{ 3, 17745, "", "=q3=Noxious Shooter",  droprate = "17%" };
		{ 4, 17702, "", "=q1=Celebrian Rod",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Razorlash"];
		{ 1, 17750, "", "=q3=Chloromesh Girdle",  droprate = "22%" };
		{ 2, 17748, "", "=q3=Vinerot Sandals",  droprate = "20%" };
		{ 3, 17749, "", "=q3=Phytoskin Spaulders",  droprate = "22%" };
		{ 4, 17751, "", "=q3=Brusslehide Leggings",  droprate = "21%" };
	};
	{
		Name = BabbleBoss["Lord Vyletongue"];
		{ 1, 17755, "", "=q3=Satyrmane Sash",  droprate = "25%" };
		{ 2, 17754, "", "=q3=Infernal Trickster Leggings",  droprate = "28%" };
		{ 3, 17752, "", "=q3=Satyr's Lash",  droprate = "23%" };
		{ 4, 17703, "", "=q1=Celebrian Diamond",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Meshlok the Harvester"];
		{ 1, 17741, "", "=q3=Nature's Embrace",  droprate = "30%" };
		{ 2, 17742, "", "=q3=Fungus Shroud Armor",  droprate = "31%" };
		{ 3, 17767, "", "=q3=Bloomsprout Headpiece",  droprate = "28%" };
	};
	{
		Name = BabbleBoss["Celebras the Cursed"];
		{ 1, 17739, "", "=q3=Grovekeeper's Drape",  droprate = "30%" };
		{ 2, 17740, "", "=q3=Soothsayer's Headdress",  droprate = "28%" };
		{ 3, 17738, "", "=q3=Claw of Celebras",  droprate = "28%" };
	};
	{
		Name = BabbleBoss["Landslide"];
		{ 1, 17736, "", "=q3=Rockgrip Gauntlets",  droprate = "23%" };
		{ 2, 17734, "", "=q3=Helm of the Mountain",  droprate = "20%" };
		{ 3, 17737, "", "=q3=Cloud Stone",  droprate = "19%" };
		{ 4, 17943, "", "=q3=Fist of Stone",  droprate = "16%" };
	};
	{
		Name = BabbleBoss["Tinkerer Gizlock"];
		{ 1, 17719, "", "=q3=Inventor's Focal Sword",  droprate = "27%" };
		{ 2, 17718, "", "=q3=Gizlock's Hypertech Buckler",  droprate = "30%" };
		{ 3, 17717, "", "=q3=Megashot Rifle",  droprate = "27%" };
	};
	{
		Name = BabbleBoss["Rotgrip"];
		{ 1, 17732, "", "=q3=Rotgrip Mantle",  droprate = "25%" };
		{ 2, 17728, "", "=q3=Albino Crocscale Boots",  droprate = "26%" };
		{ 3, 17730, "", "=q3=Gatorbite Axe",  droprate = "19%" };
	};
	{
		Name = BabbleBoss["Princess Theradras"];
		{ 1, 17780, "", "=q4=Blade of Eternal Darkness",  "0.20%" };
		{ 2, 17715, "", "=q3=Eye of Theradras",  droprate = "13%" };
		{ 3, 17714, "", "=q3=Bracers of the Stone Princess",  droprate = "20%" };
		{ 4, 17711, "", "=q3=Elemental Rockridge Leggings",  droprate = "14%" };
		{ 5, 17707, "", "=q3=Gemshard Heart",  droprate = "15%" };
		{ 6, 17713, "", "=q3=Blackstone Ring",  droprate = "18%" };
		{ 7, 17710, "", "=q3=Charstone Dirk",  droprate = "14%" };
		{ 8, 17766, "", "=q3=Princess Theradras' Scepter",  droprate = "16%" };
	};
	{
		Name = AL["Quest Item"];
		{ 1, 17764, "", "=q1=Gem of the Fourth Khan",  droprate = "100%" };
		{ 2, 17765, "", "=q1=Gem of the Fifth Khan",  droprate = "100%" };
	};
};
----------------------
--- Ragefire Chasm ---
----------------------
AtlasLoot_Data["RagefireChasm"] = {
	Name = BabbleZone["Ragefire Chasm"];
	Type = "ClassicDungeon";
	Map = "RagefireChasm";
	{
		Name = BabbleBoss["Taragaman the Hungerer"];
		{ 1, 14149, "", "=q3=Subterranean Cape",  droprate = "31%" };
		{ 2, 14148, "", "=q3=Crystalline Cuffs",  droprate = "33%" };
		{ 3, 14145, "", "=q3=Cursed Felblade",  droprate = "15%" };
		{ 4, 14540, "", "=q1=Taragaman the Hungerer's Heart",  droprate = "100%" };
	};
	{
		Name = AL["Zelemar the Wrathful"];
		{ 1, 24225, "", "=q1=Blood of the Wrathful",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Jergosh the Invoker"];
		{ 1, 14150, "", "=q3=Robe of Evocation",  droprate = "36%" };
		{ 2, 14147, "", "=q3=Cavedweller Bracers",  droprate = "34%" };
		{ 3, 14151, "", "=q3=Chanting Blade",  droprate = "17%" };
	};
};

----------------------
--- Razorfen Downs ---
----------------------

AtlasLoot_Data["RazorfenDowns"] = {
	Name = BabbleZone["Razorfen Downs"];
	Type = "ClassicDungeon";
	Map = "RazorfenDowns";
	{
		Name = BabbleBoss["Tuten'kash"];
		{ 1, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Tuten'kash"] };
		{ 2, 10776, "", "=q3=Silky Spider Cape",  droprate = "28%" };
		{ 3, 10777, "", "=q3=Arachnid Gloves", "=ds=#s9#, #a2# =q2=#m16#", "", droprate = "28%" };
		{ 4, 10775, "", "=q3=Carapace of Tuten'kash",  droprate = "24%" };
	};
	{
		Name = AL["Henry Stern"];
		{ 1, 3831, "", "=q2=Recipe: Mighty Troll's Blood Potion", "=ds=#p1# (180)" };
		{ 2, "s13028", "10841", "=q1=Goldthorn Tea", "=ds=#p3# (175)" };
	};
	{
		Name = BabbleBoss["Mordresh Fire Eye"];
		{ 1, 10771, "", "=q3=Deathmage Sash",  droprate = "27%" };
		{ 2, 10769, "", "=q3=Glowing Eye of Mordresh",  droprate = "29%" };
		{ 3, 10770, "", "=q3=Mordresh's Lifeless Skull",  droprate = "29%" };
	};
	{
		Name = BabbleBoss["Glutton"];
		{ 1, 10774, "", "=q3=Fleshhide Shoulders",  droprate = "42%" };
		{ 2, 10772, "", "=q3=Glutton's Cleaver",  droprate = "44%" };
	};
	{
		Name = BabbleBoss["Ragglesnout"];
		{ 1, 10768, "", "=q3=Boar Champion's Belt",  droprate = "31%" };
		{ 2, 10758, "", "=q3=X'caliboar",  droprate = "18%" };
		{ 3, 10767, "", "=q3=Savage Boar's Guard",  droprate = "35%" };
	};
	{
		Name = BabbleBoss["Amnennar the Coldbringer"];
		{ 1, 10762, "", "=q3=Robes of the Lich",  droprate = "29%" };
		{ 2, 10765, "", "=q3=Bonefingers" };
		{ 3, 10764, "", "=q3=Deathchill Armor",  droprate = "24%" };
		{ 4, 10763, "", "=q3=Icemetal Barbute",  droprate = "28%" };
		{ 5, 10761, "", "=q3=Coldrage Dagger",  droprate = "13%" };
		{ 6, 10420, "", "=q1=Skull of the Coldbringer",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Plaguemaw the Rotting"];
		{ 1, 10760, "", "=q3=Swine Fists",  droprate = "58%" };
		{ 2, 10766, "", "=q3=Plaguerot Sprig", "=ds=#w12#, =q1=#m1# =ds=#c3#", "", droprate = "29%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 10574, "", "=q3=Corpseshroud",  droprate = "0.01%" };
		{ 2, 10581, "", "=q3=Death's Head Vestment",  droprate = "0.02%" };
		{ 3, 10578, "", "=q3=Thoughtcast Boots",  droprate = "0.01%" };
		{ 4, 10583, "", "=q3=Quillward Harness",  droprate = "0.01%" };
		{ 5, 10582, "", "=q3=Briar Tredders",  droprate = "0.02%" };
		{ 6, 10584, "", "=q3=Stormgale Fists",  droprate = "0.02%" };
		{ 7, 10573, "", "=q3=Boneslasher",  droprate = "0.01%" };
		{ 8, 10570, "", "=q3=Manslayer",  droprate = "0.01%" };
		{ 9, 10571, "", "=q3=Ebony Boneclub",  droprate = "0.01%" };
		{ 10, 10567, "", "=q3=Quillshooter",  droprate = "0.02%" };
		{ 11, 10572, "", "=q3=Freezing Shard", "=ds=#w12#, =q1=#m1# =q2=#c3#", "", droprate = "0.01%" };
	};
};

----------------------
--- Razorfen Kraul ---
----------------------

AtlasLoot_Data["RazorfenKraul"] = {
	Name = BabbleZone["Razorfen Kraul"];
	Type = "ClassicDungeon";
	Map = "RazorfenKraul";
	{
		Name = AL["Roogug"];
		{ 1, 6841, "", "=q1=Vial of Phlogiston" };
	};
	{
		Name = AL["Aggem Thorncurse"];
		{ 1, 6681, "", "=q3=Thornspike",  "57,12%" };
	};
	{
		Name = BabbleBoss["Death Speaker Jargba"];
		{ 1, 6685, "", "=q3=Death Speaker Mantle",  droprate = "40%" };
		{ 2, 6682, "", "=q3=Death Speaker Robes",  droprate = "40%" };
		{ 3, 2816, "", "=q3=Death Speaker Scepter",  droprate = "7%" };
	};
	{
		Name = AL["Razorfen Spearhide"];
		{ 1, 6679, "", "=q3=Armor Piercer",  droprate = "43%" };
	};
	{
		Name = BabbleBoss["Overlord Ramtusk"];
		{ 1, 6686, "", "=q3=Tusken Helm",  droprate = "57%" };
		{ 2, 6687, "", "=q3=Corpsemaker",  droprate = "27%" };
	};
	{
		Name = BabbleBoss["Agathelos the Raging"];
		{ 1, 6690, "", "=q3=Ferine Leggings",  droprate = "49%" };
		{ 2, 6691, "", "=q3=Swinetusk Shank",  droprate = "24%" };
	};
	{
		Name = BabbleBoss["Blind Hunter"];
		{ 1, 6697, "", "=q3=Batwing Mantle",  droprate = "27%" };
		{ 2, 6695, "", "=q3=Stygian Bone Amulet",  droprate = "22%" };
		{ 3, 6696, "", "=q3=Nightstalker Bow",  droprate = "25%" };
	};
	{
		Name = BabbleBoss["Charlga Razorflank"];
		{ 1, 6693, "", "=q3=Agamaggan's Clutch",  droprate = "32%" };
		{ 2, 6692, "", "=q3=Pronged Reaver",  droprate = "15%" };
		{ 3, 6694, "", "=q3=Heart of Agamaggan",  droprate = "30%" };
		{ 4, 17008, "", "=q1=Small Scroll", "=ds=#m2# (#m6#)" };
		{ 5, 5793, "", "=q1=Razorflank's Heart",  droprate = "100%" };
		{ 6, 5792, "", "=q1=Razorflank's Medallion",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Earthcaller Halmgar"];
		{ 1, 6688, "", "=q3=Whisperwind Headdress",  droprate = "43%" };
		{ 2, 6689, "", "=q3=Wind Spirit Staff",  droprate = "42%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 2264, "", "=q3=Mantle of Thieves",  droprate = "0.02%" };
		{ 2, 1978, "", "=q3=Wolfclaw Gloves",  droprate = "0.02%" };
		{ 3, 1488, "", "=q3=Avenger's Armor",  droprate = "0.01%" };
		{ 4, 4438, "", "=q3=Pugilist Bracers",  droprate = "0.01%" };
		{ 5, 2039, "", "=q3=Plains Ring",  droprate = "0.02%" };
		{ 6, 776, "", "=q3=Vendetta",  droprate = "0.01%" };
		{ 7, 1727, "", "=q3=Sword of Decay",  droprate = "0.02%" };
		{ 8, 1975, "", "=q3=Pysan's Old Greatsword",  droprate = "0.02%" };
		{ 9, 1976, "", "=q3=Slaghammer",  droprate = "0.02%" };
		{ 10, 2549, "", "=q3=Staff of the Shade",  droprate = "0.02%" };
	};
};
-------------------------
--- Scarlet Monastery ---
-------------------------

AtlasLoot_Data["Scarlet Monastery"] = {
	Name = BabbleZone["Scarlet Monastery"];
	Type = "ClassicDungeon";
	Map = "ScarletMonastery";
	{
		Name = "Armory";
		{ 1, 7719, "", "=q3=Raging Berserker's Helm",  droprate = "30%" };
		{ 2, 7718, "", "=q3=Herod's Shoulder",  droprate = "30%" };
		{ 3, 10330, "", "=q3=Scarlet Leggings",  droprate = "12%" };
		{ 4, 7717, "", "=q3=Ravager",  droprate = "12%" };
		{ 6, 0, "INV_Box_01", "=q6=#n43#" };
		{ 7, 23192, "", "=q2=Tabard of the Scarlet Crusade",  "0.4%" };
	};
	{
		Name = BabbleZone["Cathedral"];
		{ 1, 0, "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Fairbanks"] };
		{ 2, 19507, "", "=q3=Inquisitor's Shawl",  droprate = "15%" };
		{ 3, 19508, "", "=q3=Branded Leather Bracers",  droprate = "16%" };
		{ 4, 19509, "", "=q3=Dusty Mail Boots",  droprate = "17%" };
		{ 6, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Scarlet Commander Mograine"] };
		{ 7, 7724, "", "=q3=Gauntlets of Divinity",  droprate = "17%" };
		{ 8, 10330, "", "=q3=Scarlet Leggings",  droprate = "12%" };
		{ 9, 7723, "", "=q3=Mograine's Might",  droprate = "17%" };
		{ 10, 7726, "", "=q3=Aegis of the Scarlet Commander",  droprate = "38%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Whitemane"] };
		{ 17, 7720, "", "=q3=Whitemane's Chapeau",  "34.01%" };
		{ 18, 7722, "", "=q3=Triune Amulet",  droprate = "33%" };
		{ 19, 7721, "", "=q3=Hand of Righteousness",  droprate = "18%" };
		{ 20, 20976, "", "=q2=Design: Citrine Pendant of Golden Healing", "=ds=#p12# (190)", "", droprate = "100%" };
	};
	{
		Name = BabbleZone["Graveyard"];
		{ 1, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Interrogator Vishas"] };
		{ 2, 7683, "", "=q3=Bloody Brass Knuckles",  "66.1%" };
		{ 3, 7682, "", "=q3=Torturing Poker",  droprate = "5%" };
		{ 5, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Bloodmage Thalnos"] };
		{ 6, 7684, "", "=q3=Bloodmage Mantle",  droprate = "48%" };
		{ 7, 7685, "", "=q3=Orb of the Forgotten Seer",  droprate = "47%" };
		{ 9, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Ironspine"] };
		{ 10, 7688, "", "=q3=Ironspine's Ribcage",  droprate = "32%" };
		{ 11, 7686, "", "=q3=Ironspine's Eye",  droprate = "40%" };
		{ 12, 7687, "", "=q3=Ironspine's Fist",  droprate = "20%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Azshir the Sleepless"] };
		{ 17, 7709, "", "=q3=Blighted Leggings",  droprate = "31%" };
		{ 18, 7731, "", "=q3=Ghostshard Talisman",  droprate = "32%" };
		{ 19, 7708, "", "=q3=Necrotic Wand",  droprate = "30%" };
		{ 21, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Fallen Champion"] };
		{ 22, 7691, "", "=q3=Embalmed Shroud",  droprate = "38%" };
		{ 23, 7690, "", "=q3=Ebon Vise",  droprate = "37%" };
		{ 24, 7689, "", "=q3=Morbid Dawn",  droprate = "19%" };
	};
	{
		Name = BabbleZone["Library"];
		{ 1, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Houndmaster Loksey"] };
		{ 2, 7756, "", "=q3=Dog Training Gloves",  droprate = "53%" };
		{ 3, 7710, "", "=q3=Loksey's Training Stick",  droprate = "13%" };
		{ 4, 3456, "", "=q3=Dog Whistle",  droprate = "21%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Arcanist Doan"] };
		{ 17, 34227, "", "=q4=Deadman's Hand" };
		{ 18, 7712, "", "=q3=Mantle of Doan",  droprate = "41%" };
		{ 19, 7711, "", "=q3=Robe of Doan",  droprate = "42%" };
		{ 20, 7714, "", "=q3=Hypnotic Blade",  droprate = "39%" };
		{ 21, 7713, "", "=q3=Illusionary Rod",  droprate = "38%" };
		{ 23, 0, "INV_Box_01", "=q6=#x1#" };
		{ 24, 7146, "", "=q2=The Scarlet Key" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 7728, "", "=q3=Beguiler Robes",  droprate = "0.01%" };
		{ 2, 7755, "", "=q3=Flintrock Shoulders",  "0%" };
		{ 3, 7727, "", "=q3=Watchman Pauldrons",  droprate = "0.01%" };
		{ 4, 7760, "", "=q3=Warchief Kilt",  "0%" };
		{ 5, 7754, "", "=q3=Harbinger Boots",  droprate = "0.01%" };
		{ 6, 5819, "", "=q3=Sunblaze Coif",  droprate = "0.01%" };
		{ 7, 7759, "", "=q3=Archon Chestpiece",  "0%" };
		{ 8, 10328, "", "=q3=Scarlet Chestpiece",  "0.3%" };
		{ 9, 10332, "", "=q3=Scarlet Boots",  "0.1%" };
		{ 10, 2262, "", "=q3=Mark of Kern",  droprate = "0.01%" };
		{ 11, 1992, "", "=q3=Swampchill Fetish",  "0%" };
		{ 13, 10333, "", "=q2=Scarlet Wristguards",  "1.6%" };
		{ 14, 10331, "", "=q2=Scarlet Gauntlets",  "1.7%" };
		{ 15, 10329, "", "=q2=Scarlet Belt",  "1.6%" };
		{ 16, 5756, "", "=q3=Sliverblade",  droprate = "0.01%" };
		{ 17, 8225, "", "=q3=Tainted Pierce",  droprate = "0.01%" };
		{ 18, 8226, "", "=q3=The Butcher",  droprate = "0.01%" };
		{ 19, 7786, "", "=q3=Headsplitter",  droprate = "0.01%" };
		{ 20, 7761, "", "=q3=Steelclaw Reaver",  droprate = "0.01%" };
		{ 21, 7753, "", "=q3=Bloodspiller",  droprate = "0.01%" };
		{ 22, 7752, "", "=q3=Dreamslayer",  droprate = "0.01%" };
		{ 23, 7736, "", "=q3=Fight Club",  "0%" };
		{ 24, 7730, "", "=q3=Cobalt Crusher",  droprate = "0.01%" };
		{ 25, 7758, "", "=q3=Ruthless Shiv",  "0%" };
		{ 26, 7757, "", "=q3=Windweaver Staff",  droprate = "0.01%" };
		{ 27, 7787, "", "=q3=Resplendent Guardian",  droprate = "0.01%" };
		{ 28, 7729, "", "=q3=Chesterfall Musket",  droprate = "0.01%" };
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
		{ 1, 13873, "", "=q1=Viewing Room Key" };
		{ 3, 13471, "", "=q1=The Deed to Brill" };
		{ 4, 13448, "", "=q1=The Deed to Caer Darrow" };
		{ 5, 13450, "", "=q1=The Deed to Southshore" };
		{ 6, 13451, "", "=q1=The Deed to Tarren Mill" };
	};
	{
		Name = BabbleBoss["Blood Steward of Kirtonos"];
		{ 1, 13523, "", "=q1=Blood of Innocents",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Kirtonos the Herald"];
		{ 1, 13956, "", "=q3=Clutch of Andros",  droprate = "15%" };
		{ 2, 13957, "", "=q3=Gargoyle Slashers",  droprate = "14%" };
		{ 3, 13969, "", "=q3=Loomguard Armbraces",  droprate = "16%" };
		{ 4, 13967, "", "=q3=Windreaver Greaves",  droprate = "14%" };
		{ 5, 13955, "", "=q3=Stoneform Shoulders",  droprate = "14%" };
		{ 6, 13960, "", "=q3=Heart of the Fiend",  droprate = "16%" };
		{ 7, 14024, "", "=q3=Frightalon",  droprate = "15%" };
		{ 8, 13983, "", "=q3=Gravestone War Axe",  droprate = "12%" };
		{ 16, 16734, "", "=q3=Boots of Valor", "=ds=#s12#, #a4# (D1, #c9#)", "", droprate = "11%" };
	};
	{
		Name = BabbleBoss["Jandice Barov"];
		{ 1, 18689, "", "=q3=Phantasmal Cloak",  droprate = "7%" };
		{ 2, 14543, "", "=q3=Darkshade Gloves",  "0.26%" };
		{ 3, 14545, "", "=q3=Ghostloom Leggings",  "8.81%" };
		{ 4, 14548, "", "=q3=Royal Cap Spaulders",  droprate = "10%" };
		{ 5, 18690, "", "=q3=Wraithplate Leggings",  droprate = "8%" };
		{ 6, 14541, "", "=q3=Barovian Family Sword",  droprate = "8%" };
		{ 7, 22394, "", "=q3=Staff of Metanoia",  droprate = "8%" };
		{ 9, 13725, "", "=q1=Krastinov's Bag of Horrors",  droprate = "100%" };
		{ 10, 13523, "", "=q1=Blood of Innocents",  "17.8%" };
		{ 16, 16701, "", "=q3=Dreadmist Mantle", "=ds=#s3#, #a1# (D1, #c8#)", "", droprate = "12%" };
	};
	{
		Name = BabbleBoss["Rattlegore"];
		{ 1, 14538, "", "=q3=Deadwalker Mantle",  droprate = "11%" };
		{ 2, 14539, "", "=q3=Bone Ring Helm",  droprate = "10%" };
		{ 3, 18686, "", "=q3=Bone Golem Shoulders",  droprate = "9%" };
		{ 4, 14537, "", "=q3=Corpselight Greaves",  droprate = "10%" };
		{ 5, 14531, "", "=q3=Frightskull Shaft",  droprate = "9%" };
		{ 6, 14528, "", "=q3=Rattlecage Buckler",  droprate = "9%" };
		{ 8, 13873, "", "=q1=Viewing Room Key",  droprate = "100%" };
		{ 16, 16711, "", "=q3=Shadowcraft Boots", "=ds=#s12#, #a2# (D1, #c6#)", "", droprate = "14%" };
		{ 18, 18782, "", "=q3=Top Half of Advanced Armorsmithing: Volume II",  droprate = "5%" };
		{ 19, 12726, "", "=q3=Plans: Enchanted Thorium Leggings", "=q1=#m4#: =ds=#p2# (300)" };
	};
	{
		Name = BabbleBoss["Death Knight Darkreaver"];
		{ 1, 18760, "", "=q3=Necromantic Band",  droprate = "24%" };
		{ 2, 18758, "", "=q3=Specter's Blade",  droprate = "15%" };
		{ 3, 18759, "", "=q3=Malicious Axe",  droprate = "24%" };
		{ 4, 18761, "", "=q3=Oblivion's Touch",  droprate = "17%" };
		{ 6, 18749, "", "=q1=Charger's Lost Soul",  droprate = "10%" };
	};
	{
		Name = BabbleBoss["Vectus"];
		{ 1, 14577, "", "=q3=Skullsmoke Pants",  droprate = "5%" };
		{ 2, 18691, "", "=q3=Dark Advisor's Pendant",  droprate = "6%" };
	};
	{
		Name = BabbleBoss["Marduk Blackpool"];
		{ 1, 18692, "", "=q3=Death Knight Sabatons",  droprate = "6%" };
		{ 2, 14576, "", "=q3=Ebon Hilt of Marduk",  droprate = "6%" };
	};
	{
		Name = BabbleBoss["Ras Frostwhisper"];
		{ 1, 13314, "", "=q4=Alanna's Embrace",  droprate = "1%" };
		{ 3, 14340, "", "=q3=Freezing Lich Robes",  droprate = "12%" };
		{ 4, 18693, "", "=q3=Shivery Handwraps",  droprate = "12%" };
		{ 5, 14503, "", "=q3=Death's Clutch",  droprate = "11%" };
		{ 6, 14502, "", "=q3=Frostbite Girdle",  droprate = "11%" };
		{ 7, 18694, "", "=q3=Shadowy Mail Greaves",  droprate = "14%" };
		{ 8, 14522, "", "=q3=Maelstrom Leggings",  droprate = "13%" };
		{ 9, 14525, "", "=q3=Boneclenched Gauntlets",  droprate = "11%" };
		{ 10, 18695, "", "=q3=Spellbound Tome",  droprate = "10%" };
		{ 11, 13952, "", "=q3=Iceblade Hacker",  droprate = "9%" };
		{ 12, 14487, "", "=q3=Bonechill Hammer",  droprate = "11%" };
		{ 13, 18696, "", "=q3=Intricately Runed Shield",  droprate = "13%" };
		{ 16, 16689, "", "=q3=Magister's Mantle", "=ds=#s3#, #a1# (D1, #c3#)", "", droprate = "11%" };
		{ 18, 13521, "", "=q2=Recipe: Flask of Supreme Power",  droprate = "2%" };
		{ 20, 13626, "", "=q1=Human Head of Ras Frostwhisper",  droprate = "100%" };
		{ 21, 13986, "", "=q3=Crown of Caer Darrow", "=q1=#m4#: =ds=#s1#, #a1#" };
		{ 22, 13984, "", "=q3=Darrowspike", "=q1=#m4#: =ds=#h1#, #w4#" };
		{ 23, 13982, "", "=q3=Warblade of Caer Darrow", "=q1=#m4#: =ds=#h2#, #w10#" };
		{ 24, 14002, "", "=q3=Darrowshire Strongguard", "=q1=#m4#: =ds=#w8#" };
		{ 26, 0, "INV_Box_01", "=q6=#x12#" };
		{ 27, 12736, "", "=q1=Frostwhisper's Embalming Fluid" };
	};
	{
		Name = BabbleBoss["Kormok"];
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n22#" };
		{ 2, 22303, "", "=q3=Ironweave Pants",  droprate = "23%" };
		{ 3, 22326, "", "=q3=Amalgam's Band",  droprate = "16%" };
		{ 4, 22331, "", "=q3=Band of the Steadfast Hero",  droprate = "15%" };
		{ 5, 22332, "", "=q3=Blade of Necromancy",  droprate = "25%" };
		{ 6, 22333, "", "=q3=Hammer of Divine Might",  droprate = "12%" };
		{ 8, 21984, "", "=q1=Left Piece of Lord Valthalak's Amulet" };
		{ 9, 22046, "", "=q1=Right Piece of Lord Valthalak's Amulet" };
	};
	{
		Name = BabbleBoss["Instructor Malicia"];
		{ 1, 16710, "", "=q3=Shadowcraft Bracers", "=ds=#s8#, #a2# (D1, #c6#)", "", droprate = "3%" };
		{ 3, 18681, "", "=q3=Burial Shawl",  droprate = "1%" };
		{ 4, 14633, "", "=q3=Necropile Mantle",  droprate = "1%" };
		{ 5, 14626, "", "=q3=Necropile Robe",  droprate = "1%" };
		{ 6, 14629, "", "=q3=Necropile Cuffs",  droprate = "1%" };
		{ 7, 14631, "", "=q3=Necropile Boots",  "0.88%" };
		{ 8, 14632, "", "=q3=Necropile Leggings",  "0.85%" };
		{ 9, 14637, "", "=q3=Cadaverous Armor",  droprate = "1%" };
		{ 10, 14640, "", "=q3=Cadaverous Gloves",  "0.82%" };
		{ 11, 14636, "", "=q3=Cadaverous Belt",  "0%" };
		{ 12, 14638, "", "=q3=Cadaverous Leggings",  droprate = "1%" };
		{ 13, 18682, "", "=q3=Ghoul Skin Leggings",  droprate = "1%" };
		{ 14, 14641, "", "=q3=Cadaverous Walkers",  "0.67%" };
		{ 15, 14611, "", "=q3=Bloodmail Hauberk",  "0.54%" };
		{ 16, 14615, "", "=q3=Bloodmail Gauntlets",  "0%" };
		{ 17, 14614, "", "=q3=Bloodmail Belt",  "0%" };
		{ 18, 14612, "", "=q3=Bloodmail Legguards",  "0.42%" };
		{ 19, 14616, "", "=q3=Bloodmail Boots",  "0%" };
		{ 20, 14624, "", "=q3=Deathbone Chestplate",  "0.45%" };
		{ 21, 14622, "", "=q3=Deathbone Gauntlets",  "0.45%" };
		{ 22, 14620, "", "=q3=Deathbone Girdle",  "0.67%" };
		{ 23, 14623, "", "=q3=Deathbone Legguards",  droprate = "1%" };
		{ 24, 14621, "", "=q3=Deathbone Sabatons",  "0.57%" };
		{ 25, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 26, 23201, "", "=q3=Libram of Divinity" };
		{ 27, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 28, 18683, "", "=q3=Hammer of the Vesper",  droprate = "1%" };
		{ 29, 18680, "", "=q3=Ancient Bone Bow",  "0.91%" };
	};
	{
		Name = BabbleBoss["Doctor Theolen Krastinov"];
		{ 1, 16684, "", "=q3=Magister's Gloves", "=ds=#s9#, #a1# (D1, #c3#)", "", droprate = "9%" };
		{ 3, 18681, "", "=q3=Burial Shawl",  droprate = "2%" };
		{ 4, 14633, "", "=q3=Necropile Mantle",  droprate = "1%" };
		{ 5, 14626, "", "=q3=Necropile Robe",  droprate = "2%" };
		{ 6, 14629, "", "=q3=Necropile Cuffs",  droprate = "1%" };
		{ 7, 14631, "", "=q3=Necropile Boots",  droprate = "2%" };
		{ 8, 14632, "", "=q3=Necropile Leggings",  droprate = "2%" };
		{ 9, 18682, "", "=q3=Ghoul Skin Leggings",  droprate = "3%" };
		{ 10, 14637, "", "=q3=Cadaverous Armor",  droprate = "2%" };
		{ 11, 14638, "", "=q3=Cadaverous Leggings",  droprate = "1%" };
		{ 12, 14640, "", "=q3=Cadaverous Gloves",  droprate = "1%" };
		{ 13, 14636, "", "=q3=Cadaverous Belt",  droprate = "1%" };
		{ 14, 14641, "", "=q3=Cadaverous Walkers",  droprate = "1%" };
		{ 15, 14612, "", "=q3=Bloodmail Legguards",  "0.87%" };
		{ 16, 14616, "", "=q3=Bloodmail Boots",  "0.53%" };
		{ 17, 14615, "", "=q3=Bloodmail Gauntlets",  "0.78%" };
		{ 18, 14614, "", "=q3=Bloodmail Belt",  "0.42%" };
		{ 19, 14611, "", "=q3=Bloodmail Hauberk",  "0.79%" };
		{ 20, 14621, "", "=q3=Deathbone Sabatons",  droprate = "1%" };
		{ 21, 14620, "", "=q3=Deathbone Girdle",  droprate = "1%" };
		{ 22, 14622, "", "=q3=Deathbone Gauntlets",  droprate = "1%" };
		{ 23, 14624, "", "=q3=Deathbone Chestplate",  droprate = "1%" };
		{ 24, 14623, "", "=q3=Deathbone Legguards",  droprate = "1%" };
		{ 25, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 26, 23201, "", "=q3=Libram of Divinity" };
		{ 27, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 28, 18683, "", "=q3=Hammer of the Vesper",  droprate = "2%" };
		{ 29, 18680, "", "=q3=Ancient Bone Bow",  droprate = "3%" };
		{ 30, 13523, "", "=q1=Blood of Innocents",  "25.7%" };
	};
	{
		Name = BabbleBoss["Lorekeeper Polkelt"];
		{ 1, 16705, "", "=q3=Dreadmist Wraps", "=ds=#s9#, #a1# (D1, #c8#)", "", droprate = "14%" };
		{ 3, 18681, "", "=q3=Burial Shawl",  "0.53%" };
		{ 4, 14633, "", "=q3=Necropile Mantle",  "0.67%" };
		{ 5, 14626, "", "=q3=Necropile Robe",  "0.55%" };
		{ 6, 14629, "", "=q3=Necropile Cuffs",  "0.47%" };
		{ 7, 14631, "", "=q3=Necropile Boots",  "0.57%" };
		{ 8, 14632, "", "=q3=Necropile Leggings",  "0.89%" };
		{ 9, 18682, "", "=q3=Ghoul Skin Leggings",  "0.57%" };
		{ 10, 14637, "", "=q3=Cadaverous Armor",  "0.65%" };
		{ 11, 14638, "", "=q3=Cadaverous Leggings",  "0.79%" };
		{ 12, 14640, "", "=q3=Cadaverous Gloves",  "0.83%" };
		{ 13, 14636, "", "=q3=Cadaverous Belt",  "0.63%" };
		{ 14, 14641, "", "=q3=Cadaverous Walkers",  "0.47%" };
		{ 15, 14612, "", "=q3=Bloodmail Legguards",  "0.26%" };
		{ 16, 14616, "", "=q3=Bloodmail Boots",  "0.14%" };
		{ 17, 14615, "", "=q3=Bloodmail Gauntlets",  "0.45%" };
		{ 18, 14614, "", "=q3=Bloodmail Belt",  droprate = "0.18%" };
		{ 19, 14611, "", "=q3=Bloodmail Hauberk",  "0.30%" };
		{ 20, 14621, "", "=q3=Deathbone Sabatons",  "0.49%" };
		{ 21, 14620, "", "=q3=Deathbone Girdle",  "0.32%" };
		{ 22, 14622, "", "=q3=Deathbone Gauntlets",  "0.30%" };
		{ 23, 14624, "", "=q3=Deathbone Chestplate",  "0.30%" };
		{ 24, 14623, "", "=q3=Deathbone Legguards",  "0.41%" };
		{ 25, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 26, 23201, "", "=q3=Libram of Divinity" };
		{ 27, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 28, 18683, "", "=q3=Hammer of the Vesper",  "0.67%" };
		{ 29, 18680, "", "=q3=Ancient Bone Bow",  "0.49%" };
	};
	{
		Name = BabbleBoss["The Ravenian"];
		{ 1, 16716, "", "=q3=Wildheart Belt", "=ds=#s10#, #a2# (D1, #c1#)", "", droprate = "2%" };
		{ 3, 18681, "", "=q3=Burial Shawl",  droprate = "1%" };
		{ 4, 14633, "", "=q3=Necropile Mantle",  "0.76%" };
		{ 5, 14626, "", "=q3=Necropile Robe",  droprate = "1%" };
		{ 6, 14629, "", "=q3=Necropile Cuffs",  "0.89%" };
		{ 7, 14631, "", "=q3=Necropile Boots",  droprate = "1%" };
		{ 8, 14632, "", "=q3=Necropile Leggings",  droprate = "1%" };
		{ 9, 18682, "", "=q3=Ghoul Skin Leggings",  "0.95%" };
		{ 10, 14637, "", "=q3=Cadaverous Armor",  droprate = "1%" };
		{ 11, 14638, "", "=q3=Cadaverous Leggings",  "0.82%" };
		{ 12, 14640, "", "=q3=Cadaverous Gloves",  droprate = "1%" };
		{ 13, 14636, "", "=q3=Cadaverous Belt",  "0.95%" };
		{ 14, 14641, "", "=q3=Cadaverous Walkers",  "0.93%" };
		{ 15, 14612, "", "=q3=Bloodmail Legguards",  "0.20%" };
		{ 16, 14616, "", "=q3=Bloodmail Boots",  "0.33%" };
		{ 17, 14615, "", "=q3=Bloodmail Gauntlets",  droprate = "0.11%" };
		{ 18, 14614, "", "=q3=Bloodmail Belt",  "0%" };
		{ 19, 14611, "", "=q3=Bloodmail Hauberk",  droprate = "0.04%" };
		{ 20, 14621, "", "=q3=Deathbone Sabatons",  droprate = "1%" };
		{ 21, 14620, "", "=q3=Deathbone Girdle",  "0%" };
		{ 22, 14622, "", "=q3=Deathbone Gauntlets",  "0.69%" };
		{ 23, 14624, "", "=q3=Deathbone Chestplate",  droprate = "1%" };
		{ 24, 14623, "", "=q3=Deathbone Legguards",  "0.89%" };
		{ 25, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 26, 23201, "", "=q3=Libram of Divinity" };
		{ 27, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 28, 18683, "", "=q3=Hammer of the Vesper",  droprate = "1%" };
		{ 29, 18680, "", "=q3=Ancient Bone Bow",  droprate = "1%" };
	};
	{
		Name = BabbleBoss["Lord Alexei Barov"];
		{ 1, 16722, "", "=q3=Lightforge Bracers", "=ds=#s8#, #a4# (D1, #c4#)", "", droprate = "3%" };
		{ 3, 18681, "", "=q3=Burial Shawl",  droprate = "4%" };
		{ 4, 14633, "", "=q3=Necropile Mantle",  droprate = "3%" };
		{ 5, 14626, "", "=q3=Necropile Robe",  droprate = "5%" };
		{ 6, 14629, "", "=q3=Necropile Cuffs",  droprate = "4%" };
		{ 7, 14631, "", "=q3=Necropile Boots",  droprate = "2%" };
		{ 8, 14632, "", "=q3=Necropile Leggings",  droprate = "2%" };
		{ 9, 18682, "", "=q3=Ghoul Skin Leggings",  droprate = "4%" };
		{ 10, 14637, "", "=q3=Cadaverous Armor",  droprate = "4%" };
		{ 11, 14638, "", "=q3=Cadaverous Leggings",  droprate = "2%" };
		{ 12, 14640, "", "=q3=Cadaverous Gloves",  droprate = "2%" };
		{ 13, 14636, "", "=q3=Cadaverous Belt",  droprate = "2%" };
		{ 14, 14641, "", "=q3=Cadaverous Walkers",  droprate = "2%" };
		{ 15, 14612, "", "=q3=Bloodmail Legguards",  droprate = "1%" };
		{ 16, 14616, "", "=q3=Bloodmail Boots",  "0.83%" };
		{ 17, 14615, "", "=q3=Bloodmail Gauntlets",  "0.62%" };
		{ 18, 14614, "", "=q3=Bloodmail Belt",  droprate = "1%" };
		{ 19, 14611, "", "=q3=Bloodmail Hauberk",  droprate = "1%" };
		{ 20, 14621, "", "=q3=Deathbone Sabatons",  droprate = "1%" };
		{ 21, 14620, "", "=q3=Deathbone Girdle",  droprate = "1%" };
		{ 22, 14622, "", "=q3=Deathbone Gauntlets",  droprate = "1%" };
		{ 23, 14624, "", "=q3=Deathbone Chestplate",  droprate = "2%" };
		{ 24, 14623, "", "=q3=Deathbone Legguards",  droprate = "2%" };
		{ 25, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 26, 23201, "", "=q3=Libram of Divinity" };
		{ 27, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 28, 18683, "", "=q3=Hammer of the Vesper",  droprate = "4%" };
		{ 29, 18680, "", "=q3=Ancient Bone Bow",  droprate = "4%" };
	};
	{
		Name = BabbleBoss["Lady Illucia Barov"];
		{ 1, 18681, "", "=q3=Burial Shawl",  droprate = "1%" };
		{ 2, 14633, "", "=q3=Necropile Mantle",  droprate = "1%" };
		{ 3, 14626, "", "=q3=Necropile Robe",  droprate = "1%" };
		{ 4, 14629, "", "=q3=Necropile Cuffs",  droprate = "1%" };
		{ 5, 14631, "", "=q3=Necropile Boots",  "0.94%" };
		{ 6, 14632, "", "=q3=Necropile Leggings",  "0.78%" };
		{ 7, 18682, "", "=q3=Ghoul Skin Leggings",  droprate = "1%" };
		{ 8, 14637, "", "=q3=Cadaverous Armor",  "0.94%" };
		{ 9, 14638, "", "=q3=Cadaverous Leggings",  droprate = "1%" };
		{ 10, 14640, "", "=q3=Cadaverous Gloves",  droprate = "1%" };
		{ 11, 14636, "", "=q3=Cadaverous Belt",  "0.94%" };
		{ 12, 14641, "", "=q3=Cadaverous Walkers",  "0.70%" };
		{ 13, 14612, "", "=q3=Bloodmail Legguards",  "0.44%" };
		{ 14, 14616, "", "=q3=Bloodmail Boots",  "0.34%" };
		{ 15, 14615, "", "=q3=Bloodmail Gauntlets",  "0.49%" };
		{ 16, 14614, "", "=q3=Bloodmail Belt",  "0.42%" };
		{ 17, 14611, "", "=q3=Bloodmail Hauberk",  "0.44%" };
		{ 18, 14621, "", "=q3=Deathbone Sabatons",  "0%" };
		{ 19, 14620, "", "=q3=Deathbone Girdle",  "0.70%" };
		{ 20, 14622, "", "=q3=Deathbone Gauntlets",  "0%" };
		{ 21, 14624, "", "=q3=Deathbone Chestplate",  "0.81%" };
		{ 22, 14623, "", "=q3=Deathbone Legguards",  "0.83%" };
		{ 23, 18684, "", "=q3=Dimly Opalescent Ring",  "0.85%" };
		{ 24, 23201, "", "=q3=Libram of Divinity" };
		{ 25, 23200, "", "=q3=Totem of Sustaining",  "3.5%" };
		{ 26, 18683, "", "=q3=Hammer of the Vesper",  droprate = "1%" };
		{ 27, 18680, "", "=q3=Ancient Bone Bow",  droprate = "1%" };
	};
	{
		Name = BabbleBoss["Darkmaster Gandling"];
		{ 1, 13937, "", "=q4=Headmaster's Charge",  droprate = "1%" };
		{ 2, 14514, "", "=q4=Pattern: Robe of the Void", "=ds=#p8# (300) =q1=#m1# =ds=#c8#", "", droprate = "6%" };
		{ 3, 14153, "", "=q4=Robe of the Void", "=ds=#s5#, #a1# =q1=#m1# =ds=#c8#" };
		{ 4, 13944, "", "=q3=Tombstone Breastplate",  droprate = "8%" };
		{ 5, 13398, "", "=q3=Boots of the Shrieker",  droprate = "10%" };
		{ 7, 13950, "", "=q3=Detention Strap",  "0.24%" };
		{ 8, 13951, "", "=q3=Vigorsteel Vambraces",  droprate = "10%" };
		{ 9, 22433, "", "=q3=Don Mauricio's Band of Domination",  droprate = "7%" };
		{ 10, 13964, "", "=q3=Witchblade",  droprate = "9%" };
		{ 11, 13953, "", "=q3=Silent Fang",  droprate = "9%" };
		{ 12, 13938, "", "=q3=Bonecreeper Stylus",  "8.% " };
		{ 16, 16698, "", "=q3=Dreadmist Mask", "=ds=#s1#, #a1# (D1, #c8#)", "", droprate = "8%" };
		{ 17, 16686, "", "=q3=Magister's Crown", "=ds=#s1#, #a1# (D1, #c3#)", "", droprate = "8%" };
		{ 18, 16693, "", "=q3=Devout Crown", "=ds=#s1#, #a1# (D1, #c5#)", "", droprate = "7%" };
		{ 19, 16707, "", "=q3=Shadowcraft Cap", "=ds=#s1#, #a2# (D1, #c6#)", "", "6.65%" };
		{ 20, 16720, "", "=q3=Wildheart Cowl", "=ds=#s1#, #a2# (D1, #c1#)", "", droprate = "7%" };
		{ 21, 16677, "", "=q3=Beaststalker's Cap", "=ds=#s1#, #a3# (D1, #c2#)", "", droprate = "7%" };
		{ 22, 16667, "", "=q3=Coif of Elements", "=ds=#s1#, #a3# (D1, #c7#)", "", droprate = "2%" };
		{ 23, 16731, "", "=q3=Helm of Valor", "=ds=#s1#, #a4# (D1, #c9#)", "", droprate = "6%" };
		{ 24, 16727, "", "=q3=Lightforge Helm", "=ds=#s1#, #a4# (D1, #c4#)", "", droprate = "5%" };
		{ 26, 19276, "", "=q3=Ace of Portals", "=ds=#e16#", "", droprate = "2%" };
		{ 28, 13501, "", "=q2=Recipe: Major Mana Potion", "=ds=#p1# (295)", "", droprate = "8%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 18697, "", "=q3=Coldstone Slippers",  droprate = "0.01%" };
		{ 2, 18698, "", "=q3=Tattered Leather Hood",  droprate = "0.01%" };
		{ 3, 18699, "", "=q3=Icy Tomb Spaulders",  droprate = "0.01%" };
		{ 4, 18700, "", "=q3=Malefic Bracers",  droprate = "0.01%" };
		{ 5, 14536, "", "=q3=Bonebrace Hauberk",  droprate = "0.01%" };
		{ 6, 18702, "", "=q3=Belt of the Ordained",  droprate = "0.01%" };
		{ 7, 18701, "", "=q3=Innervating Band",  droprate = "0.01%" };
		{ 9, 16254, "", "=q3=Formula: Enchant Weapon - Lifestealing", "=ds=#p4# (300) =q1=#n66#", "", "0.93%" };
		{ 10, 16255, "", "=q2=Formula: Enchant 2H Weapon - Major Spirit", "=ds=#p4# (300) =q1=#n67#", "", "0.88%" };
		{ 11, 15773, "", "=q2=Pattern: Wicked Leather Armor", "=ds=#p7# (300) =q1=#n66#", "", droprate = "3%" };
		{ 12, 15776, "", "=q2=Pattern: Runic Leather Armor", "=ds=#p7# (300) =q1=#n68#", "", droprate = "1%" };
		{ 14, 12753, "", "=q2=Skin of Shadow" };
		{ 15, 13920, "", "=q1=Healthy Dragon Scale" };
		{ 16, 16705, "", "=q3=Dreadmist Wraps", "=ds=#s9#, #a1# (D1)", "", droprate = "0.03%" };
		{ 17, 16684, "", "=q3=Magister's Gloves", "=ds=#s9#, #a1# (D1)", "", droprate = "1%" };
		{ 18, 16685, "", "=q3=Magister's Belt", "=ds=#s8#, #a1# (D1)", "", "0.22%" };
		{ 19, 16710, "", "=q3=Shadowcraft Bracers", "=ds=#s8#, #a2# (D1)", "", droprate = "1%" };
		{ 20, 16716, "", "=q3=Wildheart Belt", "=ds=#s8#, #a2# (D1)", "", droprate = "1%" };
		{ 21, 16722, "", "=q3=Lightforge Bracers", "=ds=#s8#, #a4# (D1)", "", droprate = "2%" };
	};
};
-----------------------
--- Shadowfang Keep ---
-----------------------

AtlasLoot_Data["ShadowfangKeep"] = {
	Name = BabbleZone["Shadowfang Keep"];
	Type = "ClassicDungeon";
	Map = "ShadowfangKeep";
	{
		Name = BabbleBoss["Deathsworn Captain"];
		{ 1, 6642, "", "=q3=Phantom Armor",  droprate = "30%" };
		{ 2, 6641, "", "=q3=Haunting Blade",  droprate = "58%" };
	};
	{
		Name = AL["Rethilgore"];
		{ 1, 5254, "", "=q3=Rugged Spaulders",  droprate = "84%" };
	};
	{
		Name = AL["Felsteed"];
		{ 1, 6341, "", "=q3=Eerie Stable Lantern",  droprate = "5%" };
		{ 2, 932, "", "=q1=Fel Steed Saddlebags", "=ds=#m12# #e1#", "", droprate = "16%" };
	};
	{
		Name = BabbleBoss["Razorclaw the Butcher"];
		{ 1, 6226, "", "=q3=Bloody Apron",  droprate = "39%" };
		{ 2, 6633, "", "=q3=Butcher's Slicer",  droprate = "39%" };
		{ 3, 1292, "", "=q3=Butcher's Cleaver",  droprate = "8%" };
	};
	{
		Name = BabbleBoss["Baron Silverlaine"];
		{ 1, 6321, "", "=q3=Silverlaine's Family Seal",  droprate = "18%" };
		{ 2, 6323, "", "=q3=Baron's Scepter",  droprate = "37%" };
	};
	{
		Name = BabbleBoss["Commander Springvale"];
		{ 1, 3191, "", "=q3=Arced War Axe",  droprate = "31%" };
		{ 2, 6320, "", "=q3=Commander's Crest",  droprate = "27%" };
	};
	{
		Name = BabbleBoss["Odo the Blindwatcher"];
		{ 1, 6319, "", "=q3=Girdle of the Blindwatcher",  droprate = "57%" };
		{ 2, 6318, "", "=q3=Odo's Ley Staff",  droprate = "29%" };
	};
	{
		Name = BabbleBoss["Fenrus the Devourer"];
		{ 1, 6340, "", "=q3=Fenrus' Hide",  droprate = "58%" };
		{ 2, 3230, "", "=q3=Black Wolf Bracers",  droprate = "14%" };
	};
	{
		Name = BabbleBoss["Arugal's Voidwalker"];
		{ 1, 5943, "", "=q3=Rift Bracers",  droprate = "3%" };
	};
	{
		Name = BabbleBoss["Wolf Master Nandos"];
		{ 1, 6314, "", "=q3=Wolfmaster Cape",  droprate = "33%" };
		{ 2, 3748, "", "=q3=Feline Mantle",  droprate = "48%" };
	};
	{
		Name = BabbleBoss["Archmage Arugal"];
		{ 1, 6324, "", "=q3=Robes of Arugal",  droprate = "30%" };
		{ 2, 6392, "", "=q3=Belt of Arugal",  droprate = "30%" };
		{ 3, 6220, "", "=q3=Meteor Shard",  droprate = "15%" };
		{ 4, 24224, "", "=q1=Crate of Bloodforged Ingots" };
		{ 5, 6895, "", "=q1=Jordan's Smithing Hammer" };
		{ 6, 6283, "", "=q1=The Book of Ur" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 2292, "", "=q3=Necrology Robes",  droprate = "0.01%" };
		{ 2, 1974, "", "=q3=Mindthrust Bracers",  droprate = "0.02%" };
		{ 3, 1489, "", "=q3=Gloomshroud Armor",  droprate = "0.01%" };
		{ 4, 1935, "", "=q3=Assassin's Blade",  droprate = "0.01%" };
		{ 5, 1482, "", "=q3=Shadowfang",  droprate = "0.01%" };
		{ 6, 2205, "", "=q3=Duskbringer",  droprate = "0.01%" };
		{ 7, 2807, "", "=q3=Guillotine Axe",  droprate = "0.01%" };
		{ 8, 1318, "", "=q3=Night Reaver",  droprate = "0.01%" };
		{ 9, 1483, "", "=q3=Face Smasher",  droprate = "0.02%" };
		{ 10, 3194, "", "=q3=Black Malice",  droprate = "0.02%" };
		{ 11, 1484, "", "=q3=Witching Stave",  droprate = "0.01%" };
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
		{ 1, 13395, "", "=q3=Skul's Fingerbone Claws",  droprate = "36%" };
		{ 2, 13394, "", "=q3=Skul's Cold Embrace",  droprate = "24%" };
		{ 3, 13396, "", "=q3=Skul's Ghastly Touch",  droprate = "16%" };
	};
	{
		Name = "Mailbox Keys";
		{ 1, 13304, "", "=q1=Festival Lane Postbox Key",  droprate = "45%" };
		{ 2, 13303, "", "=q1=Crusaders' Square Postbox Key",  droprate = "43%" };
		{ 3, 13307, "", "=q1=Fras Siabi's Postbox Key",  droprate = "42%" };
		{ 4, 13305, "", "=q1=Elders' Square Postbox Key",  droprate = "36%" };
		{ 5, 13302, "", "=q1=Market Row Postbox Key",  droprate = "35%" };
		{ 6, 13306, "", "=q1=King's Square Postbox Key",  droprate = "37%" };
	};
	{
		Name = BabbleBoss["Fras Siabi"];
		{ 1, 13172, "", "=q1=Siabi's Premium Tobacco",  droprate = "100%" };
		{ 2, 13171, "", "=q2=Smokey's Lighter" };
	};
	{
		Name = "Atiesh <Hand of Sargeras>";
		{ 1, 22736, "", "=q5=Andonisus, Reaper of Souls",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Hearthsinger Forresten"];
		{ 1, 13378, "", "=q3=Songbird Blouse",  droprate = "15%" };
		{ 2, 13383, "", "=q3=Woollies of the Prancing Minstrel" };
		{ 3, 13384, "", "=q3=Rainbow Girdle",  droprate = "19%" };
		{ 4, 13379, "", "=q3=Piccolo of the Flaming Fire",  droprate = "15%" };
		{ 16, 16682, "", "=q3=Magister's Boots", "=ds=#s12#, #a1# (D1, #c3#)", "", droprate = "10%" };
	};
	{
		Name = BabbleBoss["The Unforgiven"];
		{ 1, 13409, "", "=q3=Tearfall Bracers",  droprate = "14%" };
		{ 2, 13404, "", "=q3=Mask of the Unforgiven",  droprate = "14%" };
		{ 3, 13405, "", "=q3=Wailing Nightbane Pauldrons",  droprate = "12%" };
		{ 4, 13408, "", "=q3=Soul Breaker",  droprate = "19%" };
		{ 16, 16717, "", "=q3=Wildheart Gloves", "=ds=#s9#, #a2# (D1, #c1#)", "", droprate = "12%" };
	};
	{
		Name = BabbleBoss["Timmy the Cruel"];
		{ 1, 13403, "", "=q3=Grimgore Noose",  droprate = "16%" };
		{ 2, 13402, "", "=q3=Timmy's Galoshes",  droprate = "16%" };
		{ 3, 13400, "", "=q3=Vambraces of the Sadist",  droprate = "14%" };
		{ 4, 13401, "", "=q3=The Cruel Hand of Timmy",  droprate = "16%" };
		{ 16, 16724, "", "=q3=Lightforge Gauntlets", "=ds=#s9#, #a4# (D1, #c4#)", "", droprate = "10%" };
	};
	{
		Name = AL["Malor's Strongbox"];
		{ 1, 0, "INV_Box_01", "=q6=#x13#" };
		{ 2, 12845, "", "=q1=Medallion of Faith",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Crimson Hammersmith"] .. " (" .. AL["Summon"] .. ")";
		{ 1, 18781, "", "=q3=Bottom Half of Advanced Armorsmithing: Volume II",  "41.6%" };
		{ 2, 12726, "", "=q3=Plans: Enchanted Thorium Leggings", "=q1=#m4#: =ds=#p2# (300)" };
		{ 4, 13351, "", "=q1=Crimson Hammersmith's Apron",  droprate = "100%" };
		{ 5, 12824, "", "=q2=Plans: Enchanted Battlehammer", "=q1=#m4#: =ds=#p2# (280)" };
	};
	{
		Name = "Plans: Serenity";
		{ 1, 12827, "", "=q2=Plans: Serenity", "=ds=#p2# (285)", "", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Cannon Master Willey"];
		{ 1, 22405, "", "=q3=Mantle of the Scarlet Crusade",  droprate = "16%" };
		{ 2, 22407, "", "=q3=Helm of the New Moon",  droprate = "13%" };
		{ 3, 18721, "", "=q3=Barrage Girdle",  droprate = "12%" };
		{ 4, 13381, "", "=q3=Master Cannoneer Boots",  droprate = "12%" };
		{ 5, 22403, "", "=q3=Diana's Pearl Necklace",  droprate = "14%" };
		{ 6, 13382, "", "=q3=Cannonball Runner",  droprate = "12%" };
		{ 7, 22404, "", "=q3=Willey's Back Scratcher",  droprate = "6%" };
		{ 8, 22406, "", "=q3=Redemption",  droprate = "7%" };
		{ 9, 13380, "", "=q3=Willey's Portable Howitzer",  droprate = "10%" };
		{ 10, 13377, "", "=q3=Miniature Cannon Balls",  droprate = "66%" };
		{ 16, 16708, "", "=q3=Shadowcraft Spaulders", "=ds=#s3#, #a2# (D1, #c6#)", "", droprate = "10%" };
		{ 18, 12839, "", "=q3=Plans: Heartseeker", "=ds=#p2# (300)", "", droprate = "4%" };
		{ 19, 12783, "", "=q3=Heartseeker" };
	};
	{
		Name = BabbleBoss["Archivist Galford"];
		{ 1, 13386, "", "=q3=Archivist Cape",  droprate = "18%" };
		{ 2, 18716, "", "=q3=Ash Covered Boots",  droprate = "16%" };
		{ 3, 13387, "", "=q3=Foresight Girdle",  droprate = "18%" };
		{ 4, 13385, "", "=q3=Tome of Knowledge",  droprate = "9%" };
		{ 5, 22897, "", "=q3=Tome of Conjure Food VII", "=ds=#e10# =q1=#m1# =ds=#c3#" };
		{ 7, 12811, "", "=q2=Righteous Orb",  "61.3%" };
		{ 9, 0, "INV_Box_01", "=q6=#x11#" };
		{ 10, 14679, "", "=q1=Of Love and Family" };
		{ 16, 16692, "", "=q3=Devout Gloves", "=ds=#s9#, #a1# (D1, #c5#)" };
	};
	{
		Name = BabbleBoss["Balnazzar"];
		{ 1, 13353, "", "=q4=Book of the Dead",  droprate = "1%" };
		{ 2, 14512, "", "=q4=Pattern: Truefaith Vestments", "=ds=#p8# (300)", "", droprate = "3%" };
		{ 3, 14154, "", "=q4=Truefaith Vestments", "=ds=#s5#, #a1# =q1=#m1# =ds=#c5#" };
		{ 5, 18720, "", "=q3=Shroud of the Nathrezim",  droprate = "10%" };
		{ 6, 13369, "", "=q3=Fire Striders",  droprate = "14%" };
		{ 7, 13358, "", "=q3=Wyrmtongue Shoulders",  droprate = "11%" };
		{ 8, 13359, "", "=q3=Crown of Tyranny",  droprate = "13%" };
		{ 9, 18718, "", "=q3=Grand Crusader's Helm",  droprate = "10%" };
		{ 10, 12103, "", "=q3=Star of Mystaria",  droprate = "12%" };
		{ 11, 13360, "", "=q3=Gift of the Elven Magi",  droprate = "13%" };
		{ 12, 13348, "", "=q3=Demonshear",  droprate = "13%" };
		{ 13, 18717, "", "=q3=Hammer of the Grand Crusader",  droprate = "11%" };
		{ 16, 16725, "", "=q3=Lightforge Boots", "=ds=#s12#, #a4# (D1, #c4#)", "", droprate = "11%" };
		{ 18, 13520, "", "=q2=Recipe: Flask of Distilled Wisdom",  droprate = "1%" };
		{ 20, 13250, "", "=q1=Head of Balnazzar" };
	};
	{
		Name = AL["Sothos and Jarien"];
		{ 1, 0, "INV_Misc_Bag_09", "=q6=#j5#", "=q5=#n18#" };
		{ 2, 22301, "", "=q3=Ironweave Robe",  droprate = "19%" };
		{ 3, 22328, "", "=q3=Legplates of Vigilance",  droprate = "21%" };
		{ 4, 22327, "", "=q3=Amulet of the Redeemed",  droprate = "14%" };
		{ 5, 22334, "", "=q3=Band of Mending",  droprate = "17%" };
		{ 6, 22329, "", "=q3=Scepter of Interminable Focus",  droprate = "28%" };
		{ 8, 21984, "", "=q1=Left Piece of Lord Valthalak's Amulet" };
		{ 9, 22046, "", "=q1=Right Piece of Lord Valthalak's Amulet" };
	};
	{
		Name = BabbleBoss["Stonespine"];
		{ 1, 13397, "", "=q3=Stoneskin Gargoyle Cape",  droprate = "23%" };
		{ 2, 13954, "", "=q3=Verdant Footpads",  droprate = "25%" };
		{ 3, 13399, "", "=q3=Gargoyle Shredder Talons",  droprate = "26%" };
	};
	{
		Name = BabbleBoss["Baroness Anastari"];
		{ 1, 18730, "", "=q3=Shadowy Laced Handwraps" };
		{ 2, 18728, "", "=q3=Anastari Heirloom",  droprate = "11%" };
		{ 3, 13534, "", "=q3=Banshee Finger",  droprate = "13%" };
		{ 4, 18729, "", "=q3=Screeching Bow",  droprate = "15%" };
		{ 6, 13535, "", "=q2=Coldtouch Phantom Wraps",  droprate = "9%" };
		{ 7, 13537, "", "=q2=Chillhide Bracers",  droprate = "9%" };
		{ 8, 13538, "", "=q2=Windshrieker Pauldrons",  droprate = "9%" };
		{ 9, 13539, "", "=q2=Banshee's Touch",  droprate = "8%" };
		{ 10, 13514, "", "=q2=Wail of the Banshee", "=ds=#m8#", "", droprate = "7%" };
		{ 16, 16704, "", "=q3=Dreadmist Sandals", "=ds=#s12#, #a1# (D1, #c8#)", "", droprate = "13%" };
	};
	{
		Name = BabbleBoss["Black Guard Swordsmith"] .. " (" .. AL["Summon"] .. ")";
		{ 1, 18783, "", "=q3=Bottom Half of Advanced Armorsmithing: Volume III",  "23.5%" };
		{ 2, 12725, "", "=q3=Plans: Enchanted Thorium Helm", "=q1=#m4#: =ds=#p2# (300)" };
		{ 4, 13350, "", "=q1=Insignia of the Black Guard",  droprate = "100%" };
		{ 5, 12825, "", "=q2=Plans: Blazing Rapier", "=q1=#m4#: =ds=#p2# (280)" };
	};
	{
		Name = "Plans: Corruption";
		{ 1, 12830, "", "=q1=Plans: Corruption", "=ds=#p2# (290)", "", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Nerub'enkan"];
		{ 1, 18740, "", "=q3=Thuzadin Sash",  droprate = "14%" };
		{ 2, 18739, "", "=q3=Chitinous Plate Legguards",  droprate = "12%" };
		{ 3, 13529, "", "=q3=Husk of Nerub'enkan",  droprate = "12%" };
		{ 4, 18738, "", "=q3=Carapace Spine Crossbow",  droprate = "14%" };
		{ 6, 13530, "", "=q2=Fangdrip Runners",  droprate = "8%" };
		{ 7, 13531, "", "=q2=Crypt Stalker Leggings",  droprate = "10%" };
		{ 8, 13532, "", "=q2=Darkspinner Claws",  droprate = "9%" };
		{ 9, 13533, "", "=q2=Acid-etched Pauldrons",  droprate = "8%" };
		{ 10, 13508, "", "=q2=Eye of Arachnida", "=ds=#m8#", "", droprate = "7%" };
		{ 16, 16675, "", "=q3=Beaststalker's Boots", "=ds=#s12#, #a3# (D1, #c2#)", "", droprate = "13%" };
	};
	{
		Name = BabbleBoss["Maleki the Pallid"];
		{ 1, 18734, "", "=q3=Pale Moon Cloak",  droprate = "13%" };
		{ 2, 18735, "", "=q3=Maleki's Footwraps",  droprate = "15%" };
		{ 3, 13524, "", "=q3=Skull of Burning Shadows",  droprate = "13%" };
		{ 4, 18737, "", "=q3=Bone Slicing Hatchet",  droprate = "14%" };
		{ 6, 13525, "", "=q2=Darkbind Fingers",  droprate = "9%" };
		{ 7, 13526, "", "=q2=Flamescarred Girdle",  droprate = "9%" };
		{ 8, 13528, "", "=q2=Twilight Void Bracers",  droprate = "9%" };
		{ 9, 13527, "", "=q2=Lavawalker Greaves",  droprate = "9%" };
		{ 10, 13509, "", "=q2=Clutch of Foresight", "=ds=#m8#", "", droprate = "6%" };
		{ 16, 16691, "", "=q3=Devout Sandals", "=ds=#s12#, #a1# (D1, #c5#)", "", droprate = "13%" };
		{ 18, 12833, "", "=q3=Plans: Hammer of the Titans", "=ds=#p2# (300)", "", droprate = "5%" };
		{ 19, 12796, "", "=q3=Hammer of the Titans" };
	};
	{
		Name = BabbleBoss["Magistrate Barthilas"];
		{ 1, 13376, "", "=q3=Royal Tribunal Cloak",  droprate = "12%" };
		{ 2, 18727, "", "=q3=Crimson Felt Hat",  droprate = "13%" };
		{ 3, 18726, "", "=q3=Magistrate's Cuffs",  droprate = "12%" };
		{ 4, 18722, "", "=q3=Death Grips",  droprate = "15%" };
		{ 5, 23198, "", "=q3=Idol of Brutality",  droprate = "2%" };
		{ 6, 18725, "", "=q3=Peacemaker",  droprate = "14%" };
		{ 8, 12382, "", "=q2=Key to the City",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Ramstein the Gorger"];
		{ 1, 13374, "", "=q3=Soulstealer Mantle",  droprate = "9%" };
		{ 2, 18723, "", "=q3=Animated Chain Necklace" };
		{ 3, 13373, "", "=q3=Band of Flesh",  droprate = "8%" };
		{ 4, 13515, "", "=q3=Ramstein's Lightning Bolts",  droprate = "8%" };
		{ 5, 13372, "", "=q3=Slavedriver's Cane",  droprate = "8%" };
		{ 6, 13375, "", "=q3=Crest of Retribution",  droprate = "9%" };
		{ 16, 16737, "", "=q3=Gauntlets of Valor", "=ds=#s9#, #a4# (D1, #c9#)", "", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Baron Rivendare"];
		{ 1, 13505, "", "=q4=Runeblade of Baron Rivendare",  droprate = "1%" }; ---drop rate according to blue
		{ 2, 13335, "", "=q4=Deathcharger's Reins",  droprate = "0.10%" };
		{ 4, 13340, "", "=q3=Cape of the Black Baron",  droprate = "8%" };
		{ 5, 22412, "", "=q3=Thuzadin Mantle",  droprate = "4%" };
		{ 6, 13346, "", "=q3=Robes of the Exalted",  droprate = "11%" };
		{ 7, 22409, "", "=q3=Tunic of the Crescent Moon",  droprate = "4%" };
		{ 8, 13344, "", "=q3=Dracorian Gauntlets",  droprate = "10%" };
		{ 9, 22410, "", "=q3=Gauntlets of Deftness",  droprate = "4%" };
		{ 10, 22411, "", "=q3=Helm of the Executioner",  "3.%" };
		{ 11, 13345, "", "=q3=Seal of Rivendare",  droprate = "9%" };
		{ 12, 13368, "", "=q3=Bonescraper",  droprate = "4%" };
		{ 13, 13361, "", "=q3=Skullforge Reaver",  droprate = "4%" };
		{ 14, 13349, "", "=q3=Scepter of the Unholy",  droprate = "9%" };
		{ 15, 22408, "", "=q3=Ritssyn's Wand of Bad Mojo",  droprate = "3%" };
		{ 16, 16687, "", "=q3=Magister's Leggings", "=ds=#s11#, #a1# (D1, #c3#)", "", droprate = "6%" };
		{ 17, 16699, "", "=q3=Dreadmist Leggings", "=ds=#s11#, #a1# (D1, #c8#)", "", droprate = "7%" };
		{ 18, 16694, "", "=q3=Devout Skirt", "=ds=#s11#, #a1# (D1, #c5#)", "", droprate = "7%" };
		{ 19, 16709, "", "=q3=Shadowcraft Pants", "=ds=#s11#, #a2# (D1, #c6#)", "", droprate = "7%" };
		{ 20, 16719, "", "=q3=Wildheart Kilt", "=ds=#s11#, #a2# (D1, #c1#)", "", droprate = "6%" };
		{ 21, 16668, "", "=q3=Kilt of Elements", "=ds=#s11#, #a3# (D1, #c7#)", "", droprate = "3%" };
		{ 22, 16678, "", "=q3=Beaststalker's Pants", "=ds=#s11#, #a3# (D1, #c2#)", "", droprate = "6%" };
		{ 23, 16732, "", "=q3=Legplates of Valor", "=ds=#s11#, #a4# (D1, #c9#)", "", droprate = "5%" };
		{ 24, 16728, "", "=q3=Lightforge Legplates", "=ds=#s11#, #a4# (D1, #c4#)", "", droprate = "4%" };
		{ 26, 13251, "", "=q1=Head of Baron Rivendare",  droprate = "100%" };
		{ 27, 13246, "", "=q3=Argent Avenger", "=q1=#m4#: =ds=#h1#, #w10#" };
		{ 28, 13249, "", "=q3=Argent Crusader", "=q1=#m4#: =ds=#w9#" };
		{ 29, 13243, "", "=q3=Argent Defender", "=q1=#m4#: =ds=#w8#" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 18743, "", "=q3=Gracious Cape",  droprate = "0.01%" };
		{ 2, 17061, "", "=q3=Juno's Shadow",  droprate = "0.01%" };
		{ 3, 18745, "", "=q3=Sacred Cloth Leggings",  droprate = "0.01%" };
		{ 4, 18744, "", "=q3=Plaguebat Fur Gloves",  "0%" };
		{ 5, 18736, "", "=q3=Plaguehound Leggings",  "0%" };
		{ 6, 18742, "", "=q3=Stratholme Militia Shoulderguard",  "0%" };
		{ 7, 18741, "", "=q3=Morlune's Bracer",  droprate = "0.01%" };
		{ 9, 16249, "", "=q2=Formula: Enchant 2H Weapon - Major Intellect", "=ds=#p4# (300) =q1=#n60#", "", droprate = "1%" };
		{ 10, 16248, "", "=q2=Formula: Enchant Weapon - Unholy", "=ds=#p4# (295) =q1=#n61#", "", "0%" };
		{ 11, 18658, "", "=q2=Schematic: Ultra-Flash Shadow Reflector", "=ds=#p5# (300) =q1=#n62#", "", droprate = "1%" };
		{ 12, 16052, "", "=q2=Schematic: Voice Amplification Modulator", "=ds=#p5# (290) =q1=#n62#", "", droprate = "1%" };
		{ 13, 15777, "", "=q2=Pattern: Runic Leather Shoulders", "=ds=#p7# (300) =q1=#n63#", "", droprate = "1%" };
		{ 14, 15768, "", "=q2=Pattern: Wicked Leather Belt", "=ds=#p7# (300) =q1=#n64#", "", "0.85%" };
		{ 15, 14495, "", "=q2=Pattern: Ghostweave Pants", "=ds=#p8# (290) =q1=#n65#" };
		{ 16, 16697, "", "=q3=Devout Bracers", "=ds=#s8#, #a1# (D1)", "", droprate = "1%" };
		{ 17, 16702, "", "=q3=Dreadmist Belt", "=ds=#s10#, #a1# (D1)", "", "0.90%" };
		{ 18, 16685, "", "=q3=Magister's Belt", "=ds=#s10#, #a1# (D1)", "", "0.%" };
		{ 19, 16714, "", "=q3=Wildheart Bracers", "=ds=#s8#, #a2# (D1)", "", droprate = "1%" };
		{ 20, 16681, "", "=q3=Beaststalker's Bindings", "=ds=#s8#, #a3# (D1)", "", droprate = "1%" };
		{ 21, 16671, "", "=q3=Bindings of Elements", "=ds=#s8#, #a3# (D1)", "", droprate = "1%" };
		{ 22, 16736, "", "=q3=Belt of Valor", "=ds=#s10#, #a4# (D1)", "", droprate = "2%" };
		{ 23, 16723, "", "=q3=Lightforge Belt", "=ds=#s10#, #a4# (D1)", "", droprate = "1%" };
		{ 25, 12811, "", "=q2=Righteous Orb",  droprate = "5%" };
		{ 26, 12735, "", "=q2=Frayed Abomination Stitching",  "17.5%" };
	};
};
---------------------
--- The Deadmines ---
---------------------

AtlasLoot_Data["TheDeadmines"] = {
	Name = BabbleZone["The Deadmines"];
	Type = "ClassicDungeon";
	Map = "TheDeadmines";
	{
		Name = BabbleBoss["Marisa du'Paige"];
		{ 1, 3019, "", "=q2=Noble's Robe",  "22.4%" };
		{ 2, 4660, "", "=q2=Walking Boots",  "71.4%" };
	};
	{
		Name = BabbleBoss["Brainwashed Noble"];
		{ 1, 5967, "", "=q2=Girdle of Nobility",  "70.4%" };
		{ 2, 3902, "", "=q2=Staff of Nobles",  "23.0%" };
	};
	{
		Name = BabbleBoss["Foreman Thistlenettle"];
		{ 1, 1875, "", "=q1=Thistlenettle's Badge",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Rhahk'Zor"];
		{ 1, 872, "", "=q3=Rockslicer",  droprate = "3%" };
		{ 2, 5187, "", "=q3=Rhahk'Zor's Hammer",  droprate = "77%" };
	};
	{
		Name = BabbleBoss["Miner Johnson"];
		{ 1, 5444, "", "=q3=Miner's Cape",  droprate = "54%" };
		{ 2, 5443, "", "=q3=Gold-plated Buckler",  droprate = "37%" };
	};
	{
		Name = BabbleBoss["Sneed's Shredder"];
		{ 1, 2169, "", "=q3=Buzzer Blade",  droprate = "70%" };
		{ 2, 1937, "", "=q3=Buzz Saw",  droprate = "8%" };
		{ 3, 7365, "", "=q1=Gnoam Sprecklesprocket",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Sneed"];
		{ 1, 5195, "", "=q3=Gold-flecked Gloves",  droprate = "62%" };
		{ 2, 5194, "", "=q3=Taskmaster Axe",  droprate = "26%" };
		{ 3, 5397, "", "=q1=Defias Gunpowder",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Gilnid"];
		{ 1, 5199, "", "=q3=Smelting Pants",  droprate = "51%" };
		{ 2, 1156, "", "=q3=Lavishly Jeweled Ring",  droprate = "35%" };
		{ 3, 0, "INV_Box_01", "=q6=#n7#" };
		{ 4, 10403, "", "=q3=Blackened Defias Belt",  droprate = "23%" };
		{ 5, 5200, "", "=q3=Impaling Harpoon",  droprate = "25%" };
		{ 6, 5201, "", "=q3=Emberstone Staff",  droprate = "34%" };
	};
	{
		Name = BabbleBoss["Mr. Smite"];
		{ 1, 5192, "", "=q3=Thief's Blade",  droprate = "34%" };
		{ 2, 5196, "", "=q3=Smite's Reaver",  droprate = "33%" };
		{ 3, 7230, "", "=q3=Smite's Mighty Hammer",  droprate = "17%" };
	};
	{
		Name = BabbleBoss["Cookie"];
		{ 1, 5197, "", "=q3=Cookie's Tenderizer",  droprate = "49%" };
		{ 2, 5198, "", "=q3=Cookie's Stirring Rod",  droprate = "30%" };
		{ 3, 8490, "", "=q1=Cat Carrier (Siamese)",  droprate = "12%" };
	};
	{
		Name = BabbleBoss["Edwin VanCleef"];
		{ 1, 5193, "", "=q3=Cape of the Brotherhood",  droprate = "21%" };
		{ 2, 5202, "", "=q3=Corsair's Overshirt",  droprate = "22%" };
		{ 3, 10399, "", "=q3=Blackened Defias Armor",  droprate = "14%" };
		{ 4, 5191, "", "=q3=Cruel Barb",  droprate = "14%" };
		{ 5, 2874, "", "=q1=An Unsent Letter" };
		{ 6, 3637, "", "=q1=Head of VanCleef" };
	};
};

--------------------
--- The Stockade ---
--------------------

AtlasLoot_Data["TheStockade"] = {
	Name = BabbleZone["The Stockade"];
	Type = "ClassicDungeon";
	Map = "TheStockade";
	{
		Name = BabbleBoss["Targorr the Dread"];
		{ 1, 3630, "", "=q1=Head of Targorr",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Kam Deepfury"];
		{ 1, 2280, "", "=q3=Kam's Walking Stick",  "0.62%" };
		{ 2, 3640, "", "=q1=Head of Deepfury",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Bazil Thredd"];
		{ 1, 2926, "", "=q1=Head of Bazil Thredd",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Dextren Ward"];
		{ 1, 3628, "", "=q1=Hand of Dextren Ward",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Bruegal Ironknuckle"];
		{ 1, 3228, "", "=q3=Jimmied Handcuffs",  droprate = "54%" };
		{ 2, 2942, "", "=q3=Iron Knuckles",  droprate = "18%" };
		{ 3, 2941, "", "=q3=Prison Shank",  droprate = "16%" };
	};
	{
		Name = "Quest Item's";
		{ 1, 2909, "", "=q1=Red Wool Bandana" };
	};
};

-------------------------
--- The Sunken Temple ---
-------------------------

AtlasLoot_Data["SunkenTemple"] = {
	Name = "Sunken Temple";
	Type = "ClassicDungeon";
	Map = "TheSunkenTemple";
	{
		Name = "Spawn of Hakkar";
		{ 1, 10802, "", "=q3=Wingveil Cloak",  "25.6%" };
		{ 2, 10801, "", "=q3=Slitherscale Boots",  droprate = "42%" };
	};
	{
		Name = "Troll Minibosses";
		{ 1, 10787, "", "=q3=Atal'ai Gloves", "=ds=#s9#, #a1# =q2=#m16#", "", droprate = "5%" };
		{ 2, 10783, "", "=q3=Atal'ai Spaulders", "=ds=#s3#, #a2# =q2=#m16#", "", droprate = "3%" };
		{ 3, 10785, "", "=q3=Atal'ai Leggings", "=ds=#s11#, #a2# =q2=#m16#", "", droprate = "4%" };
		{ 4, 10784, "", "=q3=Atal'ai Breastplate",  droprate = "2%" };
		{ 5, 10786, "", "=q3=Atal'ai Boots",  droprate = "6%" };
		{ 6, 10788, "", "=q3=Atal'ai Girdle",  droprate = "7%" };
		{ 8, 20606, "", "=q1=Amber Voodoo Feather", "=ds=#m3# =q2=#st1#, #st6#" };
		{ 9, 20607, "", "=q1=Blue Voodoo Feather", "=ds=#m3# =q2=#st2#, #st4#" };
		{ 10, 20608, "", "=q1=Green Voodoo Feather", "=ds=#m3# =q2=#st3#, #st5#" };
	};
	{
		Name = BabbleBoss["Atal'alarion"];
		{ 1, 10800, "", "=q3=Darkwater Bracers",  droprate = "31%" };
		{ 2, 10798, "", "=q3=Atal'alarion's Tusk Ring",  droprate = "30%" };
		{ 3, 10799, "", "=q3=Headspike",  droprate = "17%" };
	};
	{
		Name = BabbleBoss["Dreamscythe"];
		{ 1, 12465, "", "=q3=Nightfall Drape",  droprate = "4%" };
		{ 2, 12466, "", "=q3=Dawnspire Cord",  droprate = "4%" };
		{ 3, 12464, "", "=q3=Bloodfire Talons",  droprate = "4%" };
		{ 4, 10795, "", "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "", droprate = "3%" };
		{ 5, 10796, "", "=q3=Drakestone",  droprate = "4%" };
		{ 6, 10797, "", "=q3=Firebreather",  droprate = "4%" };
		{ 7, 12463, "", "=q3=Drakefang Butcher",  droprate = "4%" };
		{ 8, 12243, "", "=q3=Smoldering Claw",  droprate = "4%" };
	};
	{
		Name = BabbleBoss["Weaver"];
		{ 1, 12465, "", "=q3=Nightfall Drape",  droprate = "4%" };
		{ 2, 12466, "", "=q3=Dawnspire Cord",  droprate = "3%" };
		{ 3, 12464, "", "=q3=Bloodfire Talons",  droprate = "4%" };
		{ 4, 10795, "", "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "", droprate = "4%" };
		{ 5, 10796, "", "=q3=Drakestone",  droprate = "4%" };
		{ 6, 10797, "", "=q3=Firebreather",  droprate = "4%" };
		{ 7, 12463, "", "=q3=Drakefang Butcher",  droprate = "5%" };
		{ 8, 12243, "", "=q3=Smoldering Claw",  droprate = "4%" };
	};
	{
		Name = BabbleBoss["Avatar of Hakkar"];
		{ 1, 12462, "", "=q4=Embrace of the Wind Serpent",  "0.15%" };
		{ 3, 10843, "", "=q3=Featherskin Cape",  droprate = "31%" };
		{ 4, 10842, "", "=q3=Windscale Sarong",  droprate = "33%" };
		{ 5, 10846, "", "=q3=Bloodshot Greaves",  droprate = "32%" };
		{ 6, 10845, "", "=q3=Warrior's Embrace",  droprate = "30%" };
		{ 7, 10838, "", "=q3=Might of Hakkar",  droprate = "16%" };
		{ 8, 10844, "", "=q3=Spire of Hakkar",  droprate = "16%" };
		{ 10, 10663, "", "=q1=Essence of Hakkar",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Jammal'an the Prophet"];
		{ 1, 10806, "", "=q3=Vestments of the Atal'ai Prophet",  droprate = "24%" };
		{ 2, 10808, "", "=q3=Gloves of the Atal'ai Prophet",  droprate = "26%" };
		{ 3, 10807, "", "=q3=Kilt of the Atal'ai Prophet",  droprate = "23%" };
		{ 5, 6212, "", "=q1=Head of Jammal'an" };
	};
	{
		Name = BabbleBoss["Ogom the Wretched"];
		{ 1, 10805, "", "=q3=Eater of the Dead",  droprate = "28%" };
		{ 2, 10804, "", "=q3=Fist of the Damned",  droprate = "30%" };
		{ 3, 10803, "", "=q3=Blade of the Wretched",  droprate = "28%" };
	};
	{
		Name = BabbleBoss["Morphaz"];
		{ 1, 12465, "", "=q3=Nightfall Drape",  droprate = "4%" };
		{ 2, 12466, "", "=q3=Dawnspire Cord",  droprate = "4%" };
		{ 3, 12464, "", "=q3=Bloodfire Talons",  droprate = "4%" };
		{ 4, 10795, "", "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "", droprate = "4%" };
		{ 5, 10796, "", "=q3=Drakestone",  droprate = "4%" };
		{ 6, 10797, "", "=q3=Firebreather",  droprate = "4%" };
		{ 7, 12463, "", "=q3=Drakefang Butcher",  droprate = "4%" };
		{ 8, 12243, "", "=q3=Smoldering Claw",  droprate = "4%" };
		{ 10, 20022, "", "=q1=Azure Key",  droprate = "100%" };
		{ 11, 20085, "", "=q1=Arcane Shard",  droprate = "100%" };
		{ 12, 20025, "", "=q1=Blood of Morphaz",  droprate = "100%" };
		{ 13, 20019, "", "=q1=Tooth of Morphaz",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Hazzas"];
		{ 1, 12465, "", "=q3=Nightfall Drape",  droprate = "4%" };
		{ 2, 12466, "", "=q3=Dawnspire Cord",  droprate = "4%" };
		{ 3, 12464, "", "=q3=Bloodfire Talons",  droprate = "5%" };
		{ 4, 10795, "", "=q3=Drakeclaw Band", "=ds=#s13# =q2=#m16#", "", droprate = "4%" };
		{ 5, 10796, "", "=q3=Drakestone",  droprate = "4%" };
		{ 6, 10797, "", "=q3=Firebreather",  droprate = "4%" };
		{ 7, 12463, "", "=q3=Drakefang Butcher",  droprate = "4%" };
		{ 8, 12243, "", "=q3=Smoldering Claw",  droprate = "4%" };
	};
	{
		Name = BabbleBoss["Shade of Eranikus"];
		{ 1, 10847, "", "=q4=Dragon's Call",  droprate = "0%" };
		{ 3, 10833, "", "=q3=Horns of Eranikus",  droprate = "25%" };
		{ 4, 10829, "", "=q3=Dragon's Eye",  droprate = "27%" };
		{ 5, 10828, "", "=q3=Dire Nail",  droprate = "10%" };
		{ 6, 10837, "", "=q3=Tooth of Eranikus",  droprate = "10%" };
		{ 7, 10835, "", "=q3=Crest of Supremacy",  droprate = "19%" };
		{ 8, 10836, "", "=q3=Rod of Corrosion",  droprate = "21%" };
		{ 10, 10454, "", "=q2=Essence of Eranikus" };
		{ 11, 10455, "", "=q2=Chained Essence of Eranikus" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 10630, "", "=q3=Soulcatcher Halo",  droprate = "0.01%" };
		{ 2, 10629, "", "=q3=Mistwalker Boots",  droprate = "0.01%" };
		{ 3, 10632, "", "=q3=Slimescale Bracers",  droprate = "0.01%" };
		{ 4, 10631, "", "=q3=Murkwater Gauntlets",  droprate = "0.01%" };
		{ 5, 10633, "", "=q3=Silvershell Leggings",  droprate = "0.01%" };
		{ 6, 10634, "", "=q3=Mindseye Circle",  droprate = "0.02%" };
		{ 8, 15733, "", "=q3=Pattern: Green Dragonscale Leggings", "=ds=#p7# (270) =q1=#n80#", "", "1.%" };
		{ 9, 16216, "", "=q2=Formula: Enchant Cloak - Greater Resistance", "=ds=#p4# (265) =q1=#n81#", "", "%" };
		{ 11, 11318, "", "=q1=Atal'ai Haze" };
		{ 12, 6181, "", "=q1=Fetish of Hakkar" };
		{ 16, 10623, "", "=q3=Winter's Bite",  droprate = "0.01%" };
		{ 17, 10625, "", "=q3=Stealthblade",  droprate = "0.01%" };
		{ 18, 10628, "", "=q3=Deathblow",  droprate = "0.01%" };
		{ 19, 10626, "", "=q3=Ragehammer",  droprate = "0.01%" };
		{ 20, 10627, "", "=q3=Bludgeon of the Grinning Dog",  droprate = "0.02%" };
		{ 21, 10624, "", "=q3=Stinging Bow",  droprate = "0.02%" };
	};
};

---------------
--- Uldaman ---
---------------

AtlasLoot_Data["Uldaman"] = {
	Name = BabbleZone["Uldaman"];
	Type = "ClassicDungeon";
	Map = "Uldaman";
	{
		Name = AL["Magregan Deepshadow"];
		{ 1, 4635, "", "=q1=Hammertoe's Amulet",  droprate = "100%" };
	};
	{
		Name = "Tablet of Ryun'eh";
		{ 1, 4631, "", "=q1=Tablet of Ryun'eh" };
	};
	{
		Name = AL["Krom Stoutarm's Chest"];
		{ 1, 8027, "", "=q1=Krom Stoutarm's Treasure" };
	};
	{
		Name = AL["Garrett Family Chest"];
		{ 1, 8026, "", "=q1=Garrett Family Treasure" };
	};
	{
		Name = BabbleBoss["Digmaster Shovelphlange"];
		{ 1, 9375, "", "=q3=Expert Goldminer's Helmet",  droprate = "9%" };
		{ 2, 9378, "", "=q3=Shovelphlange's Mining Axe",  droprate = "13%" };
		{ 3, 9382, "", "=q2=Tromping Miner's Boots",  droprate = "70%" };
	};
	{
		Name = BabbleBoss["Baelog"];
		{ 1, 0, "INV_Box_01", "=q6=#n45#" };
		{ 2, 9401, "", "=q3=Nordic Longshank",  droprate = "8%" };
		{ 3, 9400, "", "=q3=Baelog's Shortbow",  droprate = "46%" };
		{ 4, 9399, "", "=q2=Precision Arrow",  droprate = "78%" };
		{ 6, 0, "INV_Box_01", "=q6=#n46#" };
		{ 7, 9394, "", "=q3=Horned Viking Helmet",  droprate = "4%" };
		{ 8, 9398, "", "=q3=Worn Running Boots",  droprate = "45%" };
		{ 9, 2459, "", "=q1=Swiftness Potion" };
		{ 11, 0, "INV_Box_01", "=q6=#n47#" };
		{ 12, 9404, "", "=q3=Olaf's All Purpose Shield",  droprate = "11%" };
		{ 13, 9403, "", "=q3=Battered Viking Shield",  droprate = "69%" };
		{ 14, 1177, "", "=q1=Oil of Olaf",  droprate = "76%" };
		{ 16, 0, "INV_Box_01", "=q6=#x14#" };
		{ 17, 7740, "", "=q1=Gni'kiv Medallion" };
		{ 19, 0, "INV_Box_01", "=q6=#x15#" };
		{ 20, 7671, "", "=q1=Shattered Necklace Topaz" };
	};
	{
		Name = BabbleBoss["Revelosh"];
		{ 1, 9390, "", "=q3=Revelosh's Gloves", "=ds=#s9#, #a1# =q2=#m16#", "", droprate = "20%" };
		{ 2, 9389, "", "=q3=Revelosh's Spaulders", "=ds=#s3#, #a2# =q2=#m16#", "", droprate = "18%" };
		{ 3, 9388, "", "=q3=Revelosh's Armguards",  droprate = "19%" };
		{ 4, 9387, "", "=q3=Revelosh's Boots",  droprate = "20%" };
		{ 6, 7741, "", "=q1=The Shaft of Tsol" };
	};
	{
		Name = BabbleBoss["Ironaya"];
		{ 1, 9407, "", "=q3=Stoneweaver Leggings",  droprate = "31%" };
		{ 2, 9409, "", "=q3=Ironaya's Bracers",  droprate = "32%" };
		{ 3, 9408, "", "=q3=Ironshod Bludgeon",  "1" };
	};
	{
		Name = BabbleBoss["Obsidian Sentinel"];
		{ 1, 8053, "", "=q1=Obsidian Power Source",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Ancient Stone Keeper"];
		{ 1, 9411, "", "=q3=Rockshard Pauldrons",  droprate = "43%" };
		{ 2, 9410, "", "=q3=Cragfists", "=ds=#s9#, #a4# =q2=#m16#", "", droprate = "41%" };
	};
	{
		Name = BabbleBoss["Galgann Firehammer"];
		{ 1, 11311, "", "=q3=Emberscale Cape",  droprate = "36%" };
		{ 2, 11310, "", "=q3=Flameseer Mantle",  droprate = "17%" };
		{ 3, 9419, "", "=q3=Galgann's Firehammer",  droprate = "18%" };
		{ 4, 9412, "", "=q3=Galgann's Fireblaster",  droprate = "17%" };
	};
	{
		Name = "Tablet of Will";
		{ 1, 5824, "", "=q1=Tablet of Will" };
	};
	{
		Name = "Shadowforge Cache";
		{ 1, 7669, "", "=q1=Shattered Necklace Ruby" };
	};
	{
		Name = BabbleBoss["Grimlok"];
		{ 1, 9415, "", "=q3=Grimlok's Tribal Vestments",  droprate = "36%" };
		{ 2, 9414, "", "=q3=Oilskin Leggings",  droprate = "29%" };
		{ 3, 9416, "", "=q3=Grimlok's Charge",  droprate = "15%" };
		{ 5, 7670, "", "=q1=Shattered Necklace Sapphire",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Archaedas"];
		{ 1, 11118, "", "=q3=Archaedic Stone", "=ds=#s13# =q2=#m16#", "", droprate = "51%" };
		{ 2, 9418, "", "=q3=Stoneslayer",  droprate = "10%" };
		{ 3, 9413, "", "=q3=The Rockpounder",  droprate = "10%" };
		{ 5, 7672, "", "=q1=Shattered Necklace Power Source",  droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 9397, "", "=q3=Energy Cloak",  droprate = "0.01%" };
		{ 2, 9431, "", "=q3=Papal Fez",  droprate = "0.01%" };
		{ 3, 9429, "", "=q3=Miner's Hat of the Deep",  droprate = "0.01%" };
		{ 4, 9420, "", "=q3=Adventurer's Pith Helmet",  droprate = "0.01%" };
		{ 5, 9406, "", "=q3=Spirewind Fetter",  droprate = "0.01%" };
		{ 6, 9428, "", "=q3=Unearthed Bands",  droprate = "0.01%" };
		{ 7, 9430, "", "=q3=Spaulders of a Lost Age",  "0%" };
		{ 8, 9396, "", "=q3=Legguards of the Vault" };
		{ 9, 9432, "", "=q3=Skullplate Bracers",  droprate = "0.01%" };
		{ 10, 9393, "", "=q3=Beacon of Hope",  droprate = "0.01%" };
		{ 12, 7666, "", "=q2=Shattered Necklace", "=q1=#m2#" };
		{ 13, 7673, "", "=q3=Talvash's Enhancing Necklace" };
		{ 16, 9384, "", "=q3=Stonevault Shiv",  droprate = "0.01%" };
		{ 17, 9392, "", "=q3=Annealed Blade",  droprate = "0.01%" };
		{ 18, 9424, "", "=q3=Ginn-su Sword",  droprate = "0.01%" };
		{ 19, 9465, "", "=q3=Digmaster 5000",  droprate = "0.01%" };
		{ 20, 9383, "", "=q3=Obsidian Cleaver",  droprate = "0.01%" };
		{ 21, 9425, "", "=q3=Pendulum of Doom",  droprate = "0.01%" };
		{ 22, 9386, "", "=q3=Excavator's Brand",  droprate = "0.01%" };
		{ 23, 9427, "", "=q3=Stonevault Bonebreaker",  droprate = "0.01%" };
		{ 24, 9423, "", "=q3=The Jackhammer",  droprate = "0.01%" };
		{ 25, 9391, "", "=q3=The Shoveler", "=ds=#h2#, #w6#, =q2=#c9#", "", droprate = "0.01%" };
		{ 26, 9381, "", "=q3=Earthen Rod",  droprate = "0.01%" };
		{ 27, 9426, "", "=q3=Monolithic Bow",  droprate = "0.01%" };
		{ 28, 9422, "", "=q3=Shadowforge Bushmaster",  droprate = "0.01%" };
	};
};

-----------------------
--- Wailing Caverns ---
-----------------------

AtlasLoot_Data["WailingCaverns"] = {
	Name = BabbleZone["Wailing Caverns"];
	Type = "ClassicDungeon";
	Map = "WailingCaverns";
	{
		Name = AL["Kalldan Felmoon"];
		{ 1, 6475, "", "=q1=Pattern: Deviate Scale Gloves", "=ds=#p7# (105)" };
		{ 2, 6474, "", "=q1=Pattern: Deviate Scale Cloak", "=ds=#p7# (90)" };
	};
	{
		Name = BabbleBoss["Mad Magglish"];
		{ 1, 5334, "", "=q1=99-Year-Old Port",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Trigore the Lasher"];
		{ 1, 5425, "", "=q3=Runescale Girdle",  droprate = "50%" };
		{ 2, 5426, "", "=q3=Serpent's Kiss",  droprate = "35%" };
	};
	{
		Name = BabbleBoss["Boahn"];
		{ 1, 5423, "", "=q3=Boahn's Fang",  droprate = "28%" };
		{ 2, 5422, "", "=q2=Brambleweed Leggings",  droprate = "64%" };
	};
	{
		Name = BabbleBoss["Lord Cobrahn"];
		{ 1, 6465, "", "=q3=Robe of the Moccasin",  droprate = "51%" };
		{ 2, 10410, "", "=q3=Leggings of the Fang",  droprate = "16%" };
		{ 3, 6460, "", "=q3=Cobrahn's Grasp",  droprate = "16%" };
	};
	{
		Name = BabbleBoss["Lady Anacondra"];
		{ 1, 5404, "", "=q3=Serpent's Shoulders",  droprate = "58%" };
		{ 2, 10412, "", "=q3=Belt of the Fang",  droprate = "8%" };
		{ 3, 6446, "", "=q3=Snakeskin Bag", "=ds=#m12# #e1#", "", droprate = "6%" };
	};
	{
		Name = BabbleBoss["Kresh"];
		{ 1, 13245, "", "=q3=Kresh's Back",  droprate = "9%" };
		{ 2, 6447, "", "=q3=Worn Turtle Shell Shield",  droprate = "63%" };
	};
	{
		Name = BabbleBoss["Lord Pythas"];
		{ 1, 6473, "", "=q3=Armor of the Fang",  droprate = "52%" };
		{ 2, 6472, "", "=q3=Stinging Viper",  droprate = "28%" };
	};
	{
		Name = BabbleBoss["Skum"];
		{ 1, 6449, "", "=q3=Glowing Lizardscale Cloak",  droprate = "38%" };
		{ 2, 6448, "", "=q3=Tail Spike",  droprate = "39%" };
	};
	{
		Name = BabbleBoss["Lord Serpentis"];
		{ 1, 5970, "", "=q3=Serpent Gloves",  droprate = "20%" };
		{ 2, 10411, "", "=q3=Footpads of the Fang",  droprate = "19%" };
		{ 3, 6459, "", "=q3=Savage Trodders",  droprate = "24%" };
		{ 4, 6469, "", "=q3=Venomstrike",  droprate = "16%" };
	};
	{
		Name = BabbleBoss["Verdan the Everliving"];
		{ 1, 6629, "", "=q3=Sporid Cape",  droprate = "16%" };
		{ 2, 6631, "", "=q3=Living Root",  droprate = "34%" };
		{ 3, 6630, "", "=q3=Seedcloud Buckler",  droprate = "35%" };
	};
	{
		Name = BabbleBoss["Mutanus the Devourer"];
		{ 1, 6461, "", "=q3=Slime-encrusted Pads",  droprate = "22%" };
		{ 2, 6627, "", "=q3=Mutant Scale Breastplate",  droprate = "18%" };
		{ 3, 6463, "", "=q3=Deep Fathom Ring",  droprate = "21%" };
		{ 4, 10441, "", "=q1=Glowing Shard" };
	};
	{
		Name = BabbleBoss["Deviate Faerie Dragon"];
		{ 1, 6632, "", "=q3=Feyscale Cloak",  droprate = "37%" };
		{ 2, 5243, "", "=q3=Firebelcher",  droprate = "39%" };
	};
};

------------------
--- Zul'Farrak ---
------------------

AtlasLoot_Data["ZulFarrak"] = {
	Name = BabbleZone["Zul'Farrak"];
	Type = "ClassicDungeon";
	Map = "ZulFarrak";
	{
		Name = BabbleBoss["Antu'sul"];
		{ 1, 9640, "", "=q3=Vice Grips",  droprate = "31%" };
		{ 2, 9641, "", "=q3=Lifeblood Amulet",  "30.%" };
		{ 3, 9639, "", "=q3=The Hand of Antu'sul",  droprate = "15%" };
		{ 5, 9379, "", "=q3=Sang'thraze the Deflector",  droprate = "2%" };
		{ 6, 9372, "", "=q4=Sul'thraze the Lasher" };
	};
	{
		Name = BabbleBoss["Theka the Martyr"];
		{ 1, 10660, "", "=q1=First Mosh'aru Tablet",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Witch Doctor Zum'rah"];
		{ 1, 18083, "", "=q3=Jumanza Grips",  droprate = "24%" };
		{ 2, 18082, "", "=q3=Zum'rah's Vexing Cane",  droprate = "11%" };
	};
	{
		Name = BabbleBoss["Nekrum Gutchewer"];
		{ 1, 9471, "", "=q1=Nekrum's Medallion",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Shadowpriest Sezz'ziz"];
		{ 1, 9470, "", "=q3=Bad Mojo Mask",  droprate = "18%" };
		{ 2, 9473, "", "=q3=Jinxed Hoodoo Skin",  droprate = "21%" };
		{ 3, 9474, "", "=q3=Jinxed Hoodoo Kilt",  droprate = "20%" };
		{ 4, 9475, "", "=q3=Diabolic Skiver",  droprate = "20%" };
	};
	{
		Name = BabbleBoss["Dustwraith"];
		{ 1, 12471, "", "=q3=Desertwalker Cane",  droprate = "17%" };
	};
	{
		Name = BabbleBoss["Sergeant Bly"];
		{ 1, 8444, "", "=q1=Executioner's Key" };
	};
	{
		Name = BabbleBoss["Sandfury Executioner"];
		{ 1, 8548, "", "=q1=Divino-matic Rod",  droprate = "100%" };
	};

	{
		Name = BabbleBoss["Hydromancer Velratha"];
		{ 1, 9234, "", "=q1=Tiara of the Deep",  droprate = "100%" };
		{ 2, 10661, "", "=q1=Second Mosh'aru Tablet",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Gahz'rilla"];
		{ 1, 9469, "", "=q3=Gahz'rilla Scale Armor",  droprate = "36%" };
		{ 2, 9467, "", "=q3=Gahz'rilla Fang",  droprate = "36%" };
		{ 4, 8707, "", "=q1=Gahz'rilla's Electrified Scale" };
	};
	{
		Name = BabbleBoss["Chief Ukorz Sandscalp"];
		{ 1, 9479, "", "=q3=Embrace of the Lycan",  droprate = "8%" };
		{ 2, 9476, "", "=q3=Big Bad Pauldrons",  droprate = "28%" };
		{ 3, 9478, "", "=q3=Ripsaw",  droprate = "19%" };
		{ 4, 9477, "", "=q3=The Chief's Enforcer",  droprate = "22%" };
		{ 6, 11086, "", "=q3=Jang'thraze the Protector",  droprate = "1%" };
		{ 7, 9372, "", "=q4=Sul'thraze the Lasher", "=ds=#h2# #w10#" };
	};
	{
		Name = BabbleBoss["Zerillis"];
		{ 1, 12470, "", "=q3=Sandstalker Ankleguards",  droprate = "15%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 9512, "", "=q3=Blackmetal Cape",  droprate = "0.02%" };
		{ 2, 9484, "", "=q3=Spellshock Leggings",  droprate = "0.01%" };
		{ 3, 862, "", "=q3=Runed Ring", "=ds=#s13# =q2=#m16#", "", droprate = "0.02%" };
		{ 4, 6440, "", "=q3=Brainlash",  droprate = "0.01%" };
		{ 6, 9243, "", "=q2=Shriveled Heart" };
		{ 8, 9523, "", "=q1=Troll Temper" };
		{ 9, 9238, "", "=q1=Uncracked Scarab Shell" };
		{ 16, 5616, "", "=q3=Gutwrencher",  droprate = "0.01%" };
		{ 17, 9511, "", "=q3=Bloodletter Scalpel",  droprate = "0.01%" };
		{ 18, 9481, "", "=q3=The Minotaur",  droprate = "0.01%" };
		{ 19, 9480, "", "=q3=Eyegouger",  droprate = "0.01%" };
		{ 20, 9482, "", "=q3=Witch Doctor's Cane",  droprate = "0.01%" };
		{ 21, 9483, "", "=q3=Flaming Incinerator",  droprate = "0.01%" };
		{ 22, 2040, "", "=q3=Troll Protector",  droprate = "0.02%" };
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
		{ 1, 19918, "", "=q4=Jeklik's Crusher",  droprate = "3%" };
		{ 2, 19928, "", "=q3=Animist's Spaulders",  droprate = "3%" };
		{ 3, 20262, "", "=q3=Seafury Boots",  droprate = "4%" };
		{ 4, 20265, "", "=q3=Peacekeeper Boots",  droprate = "6%" };
		{ 5, 19923, "", "=q3=Jeklik's Opaline Talisman",  droprate = "12%" };
		{ 6, 19920, "", "=q3=Primalist's Band",  droprate = "11%" };
		{ 7, 19915, "", "=q3=Zulian Defender",  " 11%" };
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 19943, "", "=q1=Massive Mojo",  "8.8%" };
		{ 19, 19881, "", "=q1=Channeler's Head",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["High Priest Venoxis"];
		{ 1, 19904, "", "=q4=Runed Bloodstained Hauberk",  droprate = "3%" };
		{ 2, 19903, "", "=q4=Fang of Venoxis",  droprate = "3%" };
		{ 4, 19907, "", "=q3=Zulian Tigerhide Cloak",  droprate = "12%" };
		{ 5, 19906, "", "=q3=Blooddrenched Footpads",  droprate = "11%" };
		{ 6, 19905, "", "=q3=Zanzil's Band",  droprate = "6%" };
		{ 7, 19900, "", "=q3=Zulian Stone Axe",  droprate = "11%" };
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 19943, "", "=q1=Massive Mojo",  "6.0%" };
		{ 19, 19881, "", "=q1=Channeler's Head",  droprate = "100%" };
		{ 21, 22216, "", "=q1=Venoxis's Venom Sac",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["High Priestess Mar'li"];
		{ 1, 20032, "", "=q4=Flowing Ritual Robes",  droprate = "4%" };
		{ 2, 19927, "", "=q4=Mar'li's Touch",  droprate = "4%" };
		{ 3, 19919, "", "=q3=Bloodstained Greaves",  droprate = "11%" };
		{ 4, 19871, "", "=q3=Talisman of Protection",  droprate = "11%" };
		{ 5, 19925, "", "=q3=Band of Jin",  droprate = "6%" };
		{ 6, 19930, "", "=q3=Mar'li's Eye",  droprate = "12%" };
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 19943, "", "=q1=Massive Mojo",  "7.4%" };
		{ 19, 19881, "", "=q1=Channeler's Head",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Bloodlord Mandokir"];
		{ 1, 19867, "", "=q4=Bloodlord's Defender",  droprate = "5%" };
		{ 2, 19866, "", "=q4=Warblade of the Hakkari", "=ds=#h4#, #w10#", "", droprate = "3%" };
		{ 3, 19874, "", "=q4=Halberd of Smiting",  droprate = "6%" };
		{ 4, 20038, "", "=q4=Mandokir's Sting",  droprate = "5%" };
		{ 5, 19872, "", "=q4=Swift Razzashi Raptor",  "0.43%" };
		{ 7, 19870, "", "=q3=Hakkari Loa Cloak",  droprate = "12%" };
		{ 8, 19895, "", "=q3=Bloodtinged Kilt",  droprate = "13%" };
		{ 9, 19869, "", "=q3=Blooddrenched Grips",  droprate = "12%" };
		{ 10, 19877, "", "=q3=Animist's Leggings",  droprate = "12%" };
		{ 11, 19878, "", "=q3=Bloodsoaked Pauldrons",  droprate = "12%" };
		{ 12, 19873, "", "=q3=Overlord's Crimson Band",  droprate = "12%" };
		{ 13, 19893, "", "=q3=Zanzil's Seal",  droprate = "13%" };
		{ 14, 19863, "", "=q3=Primalist's Seal",  droprate = "12%" };
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 22637, "", "=q3=Primal Hakkari Idol" };
		{ 19, 19943, "", "=q1=Massive Mojo",  "9.4%" };
	};
	{
		Name = BabbleZone["Zul'Gurub"];
		{ 1, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Gri'lek"] };
		{ 2, 19961, "", "=q3=Gri'lek's Grinder",  droprate = "43%" };
		{ 3, 19962, "", "=q3=Gri'lek's Carver",  droprate = "41%" };
		{ 4, 19939, "", "=q2=Gri'lek's Blood",  droprate = "100%" };
		{ 6, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Hazza'rah"] };
		{ 7, 19968, "", "=q3=Fiery Retributer",  droprate = "38%" };
		{ 8, 19967, "", "=q3=Thoughtblighter",  droprate = "45%" };
		{ 9, 19942, "", "=q2=Hazza'rah's Dream Thread",  droprate = "100%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Renataki"] };
		{ 17, 19964, "", "=q3=Renataki's Soul Conduit",  droprate = "40%" };
		{ 18, 19963, "", "=q3=Pitchfork of Madness",  droprate = "45%" };
		{ 19, 19940, "", "=q2=Renataki's Tooth",  droprate = "100%" };
		{ 21, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Wushoolay"] };
		{ 22, 19965, "", "=q3=Wushoolay's Poker",  droprate = "45%" };
		{ 23, 19993, "", "=q3=Hoodoo Hunting Bow",  droprate = "40%" };
		{ 24, 19941, "", "=q2=Wushoolay's Mane",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["Gahz'ranka"];
		{ 1, 19945, "", "=q4=Foror's Eyepatch",  "8,82%" };
		{ 2, 19944, "", "=q4=Nat Pagle's Fish Terminator",  droprate = "2%" };
		{ 4, 19947, "", "=q3=Nat Pagle's Broken Reel",  droprate = "28%" };
		{ 5, 19946, "", "=q3=Tigule's Harpoon",  droprate = "29%" };
		{ 7, 22739, "", "=q3=Tome of Polymorph: Turtle", "=ds=#e10#, =q1=#m1# =ds=#c3#" };
	};
	{
		Name = BabbleBoss["High Priest Thekal"];
		{ 1, 19897, "", "=q4=Betrayer's Boots",  droprate = "5%" };
		{ 2, 19896, "", "=q4=Thekal's Grasp",  droprate = "4%" };
		{ 3, 19902, "", "=q4=Swift Zulian Tiger",  "0.70%" };
		{ 5, 19898, "", "=q3=Seal of Jin" };
		{ 6, 19899, "", "=q3=Ritualistic Legguards",  droprate = "13%" };
		{ 7, 20260, "", "=q3=Seafury Leggings",  droprate = "4%" };
		{ 8, 20266, "", "=q3=Peacekeeper Leggings",  droprate = "8%" };
		{ 9, 19901, "", "=q3=Zulian Slicer", "=ds=#h1#, #w10#, =q1=#e18#", "", droprate = "13%" };
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 19943, "", "=q1=Massive Mojo",  "8.3%" };
		{ 19, 19881, "", "=q1=Channeler's Head",  droprate = "100%" };
	};
	{
		Name = BabbleBoss["High Priestess Arlokk"];
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 19943, "", "=q1=Massive Mojo",  "5.6%" };
		{ 19, 19881, "", "=q1=Channeler's Head",  droprate = "100%" };
		{ 1, 19910, "", "=q4=Arlokk's Grasp",  droprate = "3%" };
		{ 2, 19909, "", "=q4=Will of Arlokk",  droprate = "5%" };
		{ 4, 19913, "", "=q3=Bloodsoaked Greaves",  droprate = "13%" };
		{ 5, 19912, "", "=q3=Overlord's Onyx Band",  droprate = "13%" };
		{ 6, 19922, "", "=q3=Arlokk's Hoodoo Stick",  droprate = "13%" };
		{ 7, 19914, "", "=q3=Panther Hide Sack",  droprate = "14%" };
	};
	{
		Name = BabbleBoss["Jin'do the Hexxer"];
		{ 16, 0, "INV_Banner_01", "=q4=ZG Sets",  "", lootTable = {"ZGSets|AtlasLoot_Data|1","Source"} };
		{ 18, 22637, "", "=q3=Primal Hakkari Idol" };
		{ 19, 19943, "", "=q1=Massive Mojo",  "8.4%" };
		{ 1, 19885, "", "=q4=Jin'do's Evil Eye",  droprate = "6%" };
		{ 2, 19891, "", "=q4=Jin'do's Bag of Whammies",  droprate = "7%" };
		{ 3, 19890, "", "=q4=Jin'do's Hexxer",  droprate = "8%" };
		{ 4, 19884, "", "=q4=Jin'do's Judgement",  droprate = "8%" };
		{ 6, 19888, "", "=q3=Overlord's Embrace",  droprate = "12%" };
		{ 7, 19886, "", "=q3=The Hexxer's Cover",  droprate = "12%" };
		{ 8, 19929, "", "=q3=Bloodtinged Gloves",  droprate = "11%" };
		{ 9, 19889, "", "=q3=Blooddrenched Leggings",  droprate = "11%" };
		{ 10, 19892, "", "=q3=Animist's Boots",  droprate = "12%" };
		{ 11, 19875, "", "=q3=Bloodstained Coif",  droprate = "13%" };
		{ 12, 19887, "", "=q3=Bloodstained Legplates",  droprate = "11%" };
		{ 13, 19894, "", "=q3=Bloodsoaked Gauntlets",  droprate = "12%" };
	};
	{
		Name = BabbleBoss["Hakkar"];
		{ 1, 19857, "", "=q4=Cloak of Consumption",  droprate = "11%" };
		{ 2, 20257, "", "=q4=Seafury Gauntlets",  droprate = "4%" };
		{ 3, 20264, "", "=q4=Peacekeeper Gauntlets" };
		{ 4, 19855, "", "=q4=Bloodsoaked Legplates",  droprate = "10%" };
		{ 5, 19876, "", "=q4=Soul Corrupter's Necklace",  droprate = "10%" };
		{ 6, 19856, "", "=q4=The Eye of Hakkar",  droprate = "12%" };
		{ 8, 19859, "", "=q4=Fang of the Faceless",  droprate = "7%" };
		{ 9, 19864, "", "=q4=Bloodcaller",  droprate = "7%" };
		{ 10, 19865, "", "=q4=Warblade of the Hakkari",  droprate = "3%" };
		{ 11, 19854, "", "=q4=Zin'rokh, Destroyer of Worlds",  droprate = "6%" };
		{ 12, 19852, "", "=q4=Ancient Hakkari Manslayer",  droprate = "6%" };
		{ 13, 19862, "", "=q4=Aegis of the Blood God",  droprate = "9%" };
		{ 14, 19853, "", "=q4=Gurubashi Dwarf Destroyer",  droprate = "6%" };
		{ 15, 19861, "", "=q4=Touch of Chaos",  droprate = "7%" };
		{ 16, 19802, "", "=q4=Heart of Hakkar",  droprate = "100%" };
		{ 17, 19950, "", "=q4=Zandalarian Hero Charm" };
		{ 18, 19949, "", "=q4=Zandalarian Hero Medallion" };
		{ 19, 19948, "", "=q4=Zandalarian Hero Badge" };
		{ 21, 19943, "", "=q1=Massive Mojo",  "34.3%" };
	};
	{
		Name = "Muddy Churning Waters";
		{ 1, 19975, "", "=q1=Zulian Mudskunk", "=ds=#e21#" };
	};
	{
		Name = "Shared ZG Priest Drops";
		{ 1, 22721, "", "=q4=Band of Servitude" };
		{ 2, 22722, "", "=q4=Seal of the Gurubashi Berserker" };
		{ 4, 22711, "", "=q3=Cloak of the Hakkari Worshipers" };
		{ 5, 22712, "", "=q3=Might of the Tribe" };
		{ 6, 22720, "", "=q3=Zulian Headdress" };
		{ 7, 22716, "", "=q3=Belt of Untapped Power" };
		{ 8, 22718, "", "=q3=Blooddrenched Mask" };
		{ 9, 22715, "", "=q3=Gloves of the Tormented" };
		{ 10, 22714, "", "=q3=Sacrificial Gauntlets" };
		{ 11, 22713, "", "=q3=Zulian Scepter of Rites" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 20259, "", "=q3=Shadow Panther Hide Gloves" };
		{ 2, 20261, "", "=q3=Shadow Panther Hide Belt" };
		{ 3, 20263, "", "=q3=Gurubashi Helm" };
		{ 4, 19908, "", "=q3=Sceptre of Smiting" };
		{ 5, 19921, "", "=q3=Zulian Hacker" };
		{ 6, 20258, "", "=q3=Zulian Ceremonial Staff" };
		{ 7, 19727, "", "=q3=Blood Scythe", "=ds=#e19#", "", droprate = "0.02%" };
		{ 8, 48126, "", "=q1=Razzashi Hatchling" };
		{ 10, 19726, "", "=q2=Bloodvine" };
		{ 11, 19774, "", "=q2=Souldarite" };
		{ 12, 19767, "", "=q1=Primal Bat Leather" };
		{ 13, 19768, "", "=q1=Primal Tiger Leather" };
		{ 16, 19821, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c1#", "", droprate = "0.01%" };
		{ 17, 19816, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c2#", "", droprate = "0.01%" };
		{ 18, 19818, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c3#", "", droprate = "0.01%" };
		{ 19, 19815, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c4#", "", droprate = "0.01%" };
		{ 20, 19820, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c5#", "", droprate = "0.01%" };
		{ 21, 19814, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c6#", "", droprate = "0.01%" };
		{ 22, 19817, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c7#", "", droprate = "0.01%" };
		{ 23, 19819, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c8#", "", droprate = "0.01%" };
		{ 24, 19813, "", "=q2=Punctured Voodoo Doll", "=q1=#m1# =ds=#c9#", "", droprate = "0.01%" };
	};
	{
		Name = "Coin's and Bijou's";
		{ 1, 19708, "", "=q3=Blue Hakkari Bijou",  droprate = "1%" };
		{ 2, 19713, "", "=q3=Bronze Hakkari Bijou",  droprate = "1%" };
		{ 3, 19715, "", "=q3=Gold Hakkari Bijou",  droprate = "1%" };
		{ 4, 19711, "", "=q3=Green Hakkari Bijou",  droprate = "1%" };
		{ 5, 19710, "", "=q3=Orange Hakkari Bijou",  droprate = "1%" };
		{ 6, 19712, "", "=q3=Purple Hakkari Bijou",  droprate = "1%" };
		{ 7, 19707, "", "=q3=Red Hakkari Bijou",  droprate = "1%" };
		{ 8, 19714, "", "=q3=Silver Hakkari Bijou",  droprate = "1%" };
		{ 9, 19709, "", "=q3=Yellow Hakkari Bijou",  droprate = "1%" };
		{ 16, 19706, "", "=q2=Bloodscalp Coin",  droprate = "3%" };
		{ 17, 19701, "", "=q2=Gurubashi Coin",  droprate = "3%" };
		{ 18, 19700, "", "=q2=Hakkari Coin",  droprate = "3%" };
		{ 19, 19699, "", "=q2=Razzashi Coin",  droprate = "3%" };
		{ 20, 19704, "", "=q2=Sandfury Coin",  droprate = "3%" };
		{ 21, 19705, "", "=q2=Skullsplitter Coin",  droprate = "3%" };
		{ 22, 19702, "", "=q2=Vilebranch Coin",  droprate = "3%" };
		{ 23, 19703, "", "=q2=Witherbark Coin",  droprate = "3%" };
		{ 24, 19698, "", "=q2=Zulian Coin",  droprate = "3%" };
	};
	{
		Name = "ZG Enchants";
		{ 1, 19790, "", "=q3=Animist's Caress", "=q1=#m1# =ds=#c1#" };
		{ 2, 19785, "", "=q3=Falcon's Call", "=q1=#m1# =ds=#c2#" };
		{ 3, 19787, "", "=q3=Presence of Sight", "=q1=#m1# =ds=#c3#" };
		{ 4, 19783, "", "=q3=Syncretist's Sigil", "=q1=#m1# =ds=#c4#" };
		{ 5, 19789, "", "=q3=Prophetic Aura", "=q1=#m1# =ds=#c5#" };
		{ 6, 19784, "", "=q3=Death's Embrace", "=q1=#m1# =ds=#c6#" };
		{ 7, 19786, "", "=q3=Vodouisant's Vigilant Embrace", "=q1=#m1# =ds=#c7#" };
		{ 8, 19788, "", "=q3=Hoodoo Hex", "=q1=#m1# =ds=#c8#" };
		{ 9, 19782, "", "=q3=Presence of Might", "=q1=#m1# =ds=#c9#" };
		{ 16, 20077, "", "=q3=Zandalar Signet of Might" };
		{ 17, 20076, "", "=q3=Zandalar Signet of Mojo" };
		{ 18, 20078, "", "=q3=Zandalar Signet of Serenity" };
		{ 20, 22635, "", "=q3=Savage Guard", "=ds=#s1#/#s11# #e17#" };
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
		{ 1, 22960, "", "=q4=Cloak of Suturing",  droprate = "20%" },
		{ 2, 22815, "", "=q4=Severance",  droprate = "20%" },
		{ 3, 22820, "", "=q4=Wand of Fates",  droprate = "20%" },
		{ 4, 22818, "", "=q4=The Plague Bearer",  droprate = "20%" },
		{ 5, 22961, "", "=q4=Band of Reanimation",  droprate = "20%" },
		{ 16, 22354, "", "=q4=Desecrated Pauldrons",  droprate = "100%", lootTable = {"T3SHOULDER","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Grobbulus"];
		{ 1, 22968, "", "=q4=Glacial Mantle",  droprate = "20%" },
		{ 2, 22967, "", "=q4=Icy Scale Spaulders",  droprate = "20%" },
		{ 3, 22803, "", "=q4=Midnight Haze",  droprate = "20%" },
		{ 4, 22988, "", "=q4=The End of Dreams",  droprate = "20%" },
		{ 5, 22810, "", "=q4=Toxin Injector",  droprate = "20%" },
		{ 16, 22354, "", "=q4=Desecrated Pauldrons",  droprate = "100%", lootTable = {"T3SHOULDER","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Gluth"];
		{ 1, 22983, "", "=q4=Rime Covered Mantle",  droprate = "20%" },
		{ 2, 22813, "", "=q4=Claymore of Unholy Might",  droprate = "20%" },
		{ 3, 23075, "", "=q4=Death's Bargain",  droprate = "20%" },
		{ 4, 22994, "", "=q4=Digested Hand of Power",  droprate = "20%" },
		{ 5, 22981, "", "=q4=Gluth's Missing Collar",  droprate = "20%" },
		{ 16, 22354, "", "=q4=Desecrated Pauldrons",  droprate = "100%", lootTable = {"T3SHOULDER","Token"} };
		{ 17, 22355, "", "=q4=Desecrated Bracers",  droprate = "8%", lootTable = {"T3WRIST","Token"} };
		{ 18, 22356, "", "=q4=Desecrated Waistguard",  droprate = "8%", lootTable = {"T3WAIST","Token"} };
		{ 19, 22358, "", "=q4=Desecrated Sabatons",  droprate = "8%", lootTable = {"T3FEET","Token"} };
		{ 21, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 22, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Thaddius"];
		{ 1, 23070, "", "=q4=Leggings of Polarity",  droprate = "20%" },
		{ 2, 23000, "", "=q4=Plated Abomination Ribcage",  droprate = "20%" },
		{ 3, 22808, "", "=q4=The Castigator",  droprate = "20%" },
		{ 4, 22801, "", "=q4=Spire of Twilight",  droprate = "20%" },
		{ 5, 23001, "", "=q4=Eye of Diminution",  droprate = "20%" },
		{ 16, 22353, "", "=q4=Desecrated Helmet",  droprate = "100%", lootTable = {"T3HEAD","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		{ 1, 22938, "", "=q4=Cryptfiend Silk Cloak",  droprate = "20%" },
		{ 2, 22936, "", "=q4=Wristguards of Vengeance",  droprate = "20%" },
		{ 3, 22937, "", "=q4=Gem of Nerubis",  droprate = "20%" },
		{ 4, 22939, "", "=q4=Band of Unanswered Prayers",  droprate = "20%" },
		{ 5, 22935, "", "=q4=Touch of Frost",  droprate = "20%" },
		{ 16, 22355, "", "=q4=Desecrated Bracers",  droprate = "100%", lootTable = {"T3WRIST","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		{ 1, 22941, "", "=q4=Polar Shoulder Pads",  droprate = "20%" },
		{ 2, 22940, "", "=q4=Icebane Pauldrons",  droprate = "20%" },
		{ 3, 22806, "", "=q4=Widow's Remorse",  droprate = "20%" },
		{ 4, 22942, "", "=q4=The Widow's Embrace",  droprate = "20%" },
		{ 5, 22943, "", "=q4=Malice Stone Pendant",  droprate = "20%" },
		{ 16, 22355, "", "=q4=Desecrated Bracers",  droprate = "100%", lootTable = {"T3WRIST","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Maexxna"];
		{ 1, 23220, "", "=q4=Crystal Webbed Robe",  droprate = "20%" },
		{ 2, 22804, "", "=q4=Maexxna's Fang",  droprate = "20%" },
		{ 3, 22807, "", "=q4=Wraith Blade",  droprate = "20%" },
		{ 4, 22947, "", "=q4=Pendant of Forgotten Names",  droprate = "20%" },
		{ 5, 22954, "", "=q4=Kiss of the Spider",  droprate = "20%" },
		{ 16, 22357, "", "=q4=Desecrated Gauntlets",  droprate = "100%", lootTable = {"T3HAND","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		{ 1, 23017, "", "=q4=Veil of Eclipse",  droprate = "16%" },
		{ 2, 23219, "", "=q4=Girdle of the Mentor",  droprate = "16%" },
		{ 3, 23014, "", "=q4=Iblis, Blade of the Fallen Seraph",  droprate = "16%" },
		{ 4, 23009, "", "=q4=Wand of the Whispering Dead",  droprate = "16%" },
		{ 5, 23004, "", "=q4=Idol of Longevity",  droprate = "16%" },
		{ 6, 23018, "", "=q4=Signet of the Fallen Defender",  droprate = "16%" },
		{ 16, 22358, "", "=q4=Desecrated Sabatons",  droprate = "100%", lootTable = {"T3FEET","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		{ 1, 23032, "", "=q4=Glacial Headdress",  droprate = "20%" },
		{ 2, 23021, "", "=q4=The Soul Harvester's Bindings",  droprate = "20%" },
		{ 3, 23020, "", "=q4=Polar Helmet",  droprate = "20%" },
		{ 4, 23073, "", "=q4=Boots of Displacement",  droprate = "20%" },
		{ 5, 23023, "", "=q4=Sadist's Collar",  droprate = "20%" },
		{ 16, 22358, "", "=q4=Desecrated Sabatons",  droprate = "100%", lootTable = {"T3SHOULDER","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		{ 1, 23071, "", "=q4=Leggings of Apocalypse",  droprate = "16%" };
		{ 2, 22809, "", "=q4=Maul of the Redeemed Crusader",  droprate = "16%" },
		{ 3, 22691, "", "=q4=Corrupted Ashbringer",  droprate = "16%" },
		{ 4, 22811, "", "=q4=Soulstring",  droprate = "20%" },
		{ 5, 23025, "", "=q4=Seal of the Damned",  droprate = "16%" },
		{ 6, 23027, "", "=q4=Warmth of Forgiveness",  droprate = "16%" },
		{ 16, 22349, "", "=q4=Desecrated Breastplate",  droprate = "100%", lootTable = {"T3CHEST","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		{ 1, 23030, "", "=q4=Cloak of the Scourge",  droprate = "14%" },
		{ 2, 22816, "", "=q4=Hatchet of Sundered Bone",  droprate = "14%" },
		{ 3, 23005, "", "=q4=Totem of Flowing Water",  droprate = "14%" },
		{ 4, 23006, "", "=q4=Libram of Light",  droprate = "14%" },
		{ 5, 23029, "", "=q4=Noth's Frigid Heart",  droprate = "14%" },
		{ 6, 23031, "", "=q4=Band of the Inevitable",  droprate = "14%" },
		{ 7, 23028, "", "=q4=Hailstone Band",  droprate = "14%" },
		{ 16, 22356, "", "=q4=Desecrated Waistguard",  droprate = "100%", lootTable = {"T3WAIST","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		{ 1, 23035, "", "=q4=Preceptor's Hat",  droprate = "20%" },
		{ 2, 23033, "", "=q4=Icy Scale Coif",  droprate = "20%" },
		{ 3, 23019, "", "=q4=Icebane Helmet",  droprate = "20%" },
		{ 4, 23068, "", "=q4=Legplates of Carnage",  droprate = "20%" },
		{ 5, 23036, "", "=q4=Necklace of Necropsy",  droprate = "20%" },
		{ 16, 22356, "", "=q4=Desecrated Waistguard",  droprate = "100%", lootTable = {"T3WAIST","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Loatheb"];
		{ 1, 23039, "", "=q4=The Eye of Nerub",  droprate = "20%" },
		{ 2, 22800, "", "=q4=Brimstone Staff",  droprate = "20%" },
		{ 3, 23037, "", "=q4=Ring of Spiritual Fervor",  droprate = "20%" },
		{ 4, 23038, "", "=q4=Band of Unnatural Forces",  droprate = "20%" },
		{ 5, 23042, "", "=q4=Loatheb's Reflection",  droprate = "20%" },
		{ 16, 22352, "", "=q4=Desecrated Legplates",  droprate = "100%", lootTable = {"T3LEGS","Token"} };
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Sapphiron"];
		{ 1, 23050, "", "=q4=Cloak of the Necropolis",  droprate = "18%" },
		{ 2, 23045, "", "=q4=Shroud of Dominion",  droprate = "18%" },
		{ 3, 23072, "", "=q4=Fists of the Unrelenting",  droprate = "18%" },
		{ 4, 23043, "", "=q4=The Face of Death",  droprate = "18%" },
		{ 5, 23242, "", "=q4=Claw of the Frost Wyrm",  droprate = "18%" },
		{ 6, 23049, "", "=q4=Sapphiron's Left Eye",  droprate = "18%" },
		{ 7, 23048, "", "=q4=Sapphiron's Right Eye",  droprate = "18%" },
		{ 8, 23040, "", "=q4=Glyph of Deflection",  droprate = "18%" },
		{ 9, 23047, "", "=q4=Eye of the Dead",  droprate = "18%" },
		{ 10, 23046, "", "=q4=The Restrained Essence of Sapphiron",  droprate = "18%" },
		{ 11, 23041, "", "=q4=Slayer's Crest",  droprate = "18%" },
		{ 12, 19761, "", "Fang of the Frost Wyrm", "" },
		{ 16, 23545, "", "=q4=Power of the Scourge",  droprate = "50%" },
		{ 17, 23547, "", "=q4=Resilience of the Scourge",  droprate = "50%" },
		{ 18, 23549, "", "=q4=Fortitude of the Scourge",  droprate = "50%" },
		{ 19, 23548, "", "=q4=Might of the Scourge",  droprate = "50%" },
		{ 18, 22726, "", "=q5=Splinter of Atiesh",  droprate = "30%" },
		{ 19, 22727, "", "=q5=Frame of Atiesh", "" },
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		{ 1, 22802, "", "=q4=Kingsfall",  droprate = "18%" },
		{ 2, 23054, "", "=q4=Gressil, Dawn of Ruin",  droprate = "18%" },
		{ 3, 23577, "", "=q4=The Hungering Cold",  droprate = "18%" },
		{ 4, 23056, "", "=q4=Hammer of the Twisting Nether",  droprate = "18%" },
		{ 5, 22798, "", "=q4=Might of Menethil",  droprate = "18%" },
		{ 6, 22799, "", "=q4=Soulseeker",  droprate = "18%" },
		{ 7, 22821, "", "=q4=Doomfinger",  droprate = "18%" },
		{ 8, 22812, "", "=q4=Nerubian Slavemaker",  droprate = "18%" },
		{ 9, 22819, "", "=q4=Shield of Condemnation",  droprate = "18%" },
		{ 10, 23057, "", "=q4=Gem of Trapped Innocents",  droprate = "18%" },
		{ 11, 23053, "", "=q4=Stormrage's Talisman of Seething",  droprate = "18%" },
		{ 13, 22520, "", "=q4=The Phylactery of Kel'Thuzad",  droprate = "100%" },
		{ 14, 23207, "", "=q4=Mark of the Champion", "=q1=#m4# =ds=#s14#" },
		{ 15, 23206, "", "=q4=Mark of the Champion", "=q1=#m4# =ds=#s14#" },
		{ 16, 1510496, "", "=q4=Desecrated Ring",  droprate = "100%", lootTable = {"T3FINGER","Token"} };
		{ 18, 22733, "", "=q1=Staff Head of Atiesh", "" },
		{ 19, 22632, "", "=q5=Atiesh, Greatstaff of the Guardian", ""},
		{ 20, 22589, "", "=q5=Atiesh, Greatstaff of the Guardian", "" },
		{ 21, 22631, "", "=q5=Atiesh, Greatstaff of the Guardian", "" },
		{ 22, 22630, "", "=q5=Atiesh, Greatstaff of the Guardian", "" },
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 23069, "", "=q4=Necro-Knight's Garb", "=ds=#s5#, #a1# =q1=#m1# =ds=#c5#, #c3#, #c8#" },
		{ 2, 23226, "", "=q4=Ghoul Skin Tunic", "" },
		{ 3, 23663, "", "=q4=Girdle of Elemental Fury", "" },
		{ 4, 23664, "", "=q4=Pauldrons of Elemental Fury", "=ds=#s3#, #a3# =q1=#m1# =ds=#c7#" },
		{ 5, 23665, "", "=q4=Leggings of Elemental Fury", "=ds=#s11#, #a3# =q1=#m1# =ds=#c7#" },
		{ 6, 23666, "", "=q4=Belt of the Grand Crusader", "=ds=#s10#, #a4# =q1=#m1# =ds=#c4#" },
		{ 7, 23667, "", "=q4=Spaulders of the Grand Crusader", "=ds=#s3#, #a4# =q1=#m1# =ds=#c4#" },
		{ 8, 23668, "", "=q4=Leggings of the Grand Crusader", "=ds=#s11#, #a4# =q1=#m1# =ds=#c4#" },
		{ 9, 23044, "", "=q4=Harbinger of Doom", "" },
		{ 10, 23221, "", "=q4=Misplaced Servo Arm", "=ds=#h1# #w6#" },
		{ 11, 23238, "", "=q4=Stygian Buckler", "" },
		{ 12, 23237, "", "=q4=Ring of the Eternal Flame", "" },
		{ 16, 22376, "", "=q3=Wartorn Cloth Scrap", "" },
		{ 17, 22373, "", "=q3=Wartorn Leather Scrap", "" },
		{ 18, 22374, "", "=q3=Wartorn Chain Scrap", "" },
		{ 19, 22375, "", "=q3=Wartorn Plate Scrap", "" },
		{ 21, 22708, "", "=q1=Fate of Ramaladni", "" },
		{ 22, 23055, "", "=q1=Word of Thawing", "" },
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
		{ 1, 17078, "", "=q4=Sapphiron Drape",  droprate = "28%" },
		{ 2, 18205, "", "=q4=Eskhandar's Collar",  droprate = "28%" },
		{ 3, 18813, "", "=q4=Ring of Binding",  droprate = "28%" },
		{ 4, 17064, "", "=q4=Shard of the Scale",  droprate = "28%" },
		{ 5, 17067, "", "=q4=Ancient Cornerstone Grimoire",  droprate = "28%" },
		{ 6, 17075, "", "=q4=Vis'kag the Bloodletter",  droprate = "28%" },
		{ 7, 17068, "", "=q4=Deathbringer",  droprate = "28%" },
		{ 8, 18215, "", "=q4=Insignia of the Dragon",  droprate = "28%" },
		{ 9, 18216, "", "=q4=Neltharion's Badge",  droprate = "28%" },
		{ 10, 18211, "", "=q4=Wand of the Noble",  droprate = "28%" },
		{ 11, 17084, "", "=q4=Mace of the Dragon Knight",  droprate = "28%" },
		{ 12, 18212, "", "=q4=Band of Nyxondra",  droprate = "28%" },
		{ 16, 2522460, "", "=q4=Chromatic Headpiece",  droprate = "100%", lootTable = {"T2HEAD","Token"} };
		{ 18, 18423, "", "=q4=Head of Onyxia",  droprate = "100%" },
		{ 19, 18404, "", "=q4=Onyxia Tooth Pendant", "" },
		{ 20, 18403, "", "=q4=Dragonslayer's Signet", "" },
		{ 21, 18406, "", "=q4=Onyxia Blood Talisman", "" },
		{ 23, 15410, "", "=q3=Scale of Onyxia", "" },
		{ 24, 17966, "", "=q2=Onyxia Hide Backpack",  droprate = "100%" },
		{ 26, 49636, "", "=q4=Reins of the Onyxian Drake", "", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic };
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
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#t0s1#", "=ec1=#j6#" };
		{ 2, 16720, "", "=q3=Wildheart Cowl", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "7%" };
		{ 3, 16718, "", "=q3=Wildheart Spaulders", "" .. BabbleBoss["Gizrul the Slavener"] .. " (" .. AL["LBRS"] .. ")", "",droprate = "11%" };
		{ 4, 16706, "", "=q3=Wildheart Vest", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "7%" };
		{ 5, 16714, "", "=q3=Wildheart Bracers", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 6, 16717, "", "=q3=Wildheart Gloves", "" .. BabbleBoss["The Unforgiven"] .. " (" .. AL["Strat"] .. ")", "",droprate = "12%" };
		{ 7, 16716, "", "=q3=Wildheart Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "", droprate = "2%" };
		{ 8, 16719, "", "=q3=Wildheart Kilt", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "6%" };
		{ 9, 16715, "", "=q3=Wildheart Boots", "" .. BabbleBoss["Mother Smolderweb"] .. " (" .. AL["LBRS"] .. ")", "",droprate = "13%" };
		{ 16, 0, "Spell_Nature_Regeneration", "=q6=#t05s1#", "=ec1=#j7#" };
		{ 17, 22109, "", "=q4=Feralheart Cowl", "=ds=#a2#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22112, "", "=q3=Feralheart Spaulders", "=ds=#a2#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22113, "", "=q4=Feralheart Vest", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22108, "", "=q3=Feralheart Bracers", "=ds=#a2#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22110, "", "=q4=Feralheart Gloves", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22106, "", "=q3=Feralheart Belt", "=ds=#a2#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22111, "", "=q3=Feralheart Kilt", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22107, "", "=q4=Feralheart Boots", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#t0s2#", "=ec1=#j6#" };
		{ 2, 16677, "", "=q3=Beaststalker's Cap", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")","", droprate = "7%" };
		{ 3, 16679, "", "=q3=Beaststalker's Mantle", "" .. BabbleBoss["Overlord Wyrmthalak"] .. " (" .. AL["LBRS"] .. ")","", droprate = "9%" };
		{ 4, 16674, "", "=q3=Beaststalker's Tunic", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "6%" };
		{ 5, 16681, "", "=q3=Beaststalker's Bindings", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 6, 16676, "", "=q3=Beaststalker's Gloves", "" .. BabbleBoss["War Master Voone"] .. " (" .. AL["LBRS"] .. ")", "",droprate = "9%" };
		{ 7, 16680, "", "=q3=Beaststalker's Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 8, 16678, "", "=q3=Beaststalker's Pants", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "6%" };
		{ 9, 16675, "", "=q3=Beaststalker's Boots", "" .. BabbleBoss["Nerub'enkan"] .. " (" .. AL["Strat"] .. ")", "",droprate = "13%" };
		{ 16, 0, "Ability_Hunter_RunningShot", "=q6=#t05s2#", "=ec1=#j7#" };
		{ 17, 22013, "", "=q4=Beastmaster's Cap", "=ds=#a3#, #s1#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22016, "", "=q3=Beastmaster's Mantle", "=ds=#a3#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22060, "", "=q4=Beastmaster's Tunic", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22011, "", "=q3=Beastmaster's Bindings", "=ds=#a3#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22015, "", "=q4=Beastmaster's Gloves", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22010, "", "=q3=Beastmaster's Belt", "=ds=#a3#, #s10#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22017, "", "=q3=Beastmaster's Pants", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22061, "", "=q4=Beastmaster's Boots", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#t0s3#", "=ec1=#j6#" };
		{ 2, 16686, "", "=q3=Magister's Crown", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "8%" };
		{ 3, 16689, "", "=q3=Magister's Mantle", "" .. BabbleBoss["Ras Frostwhisper"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "11%" };
		{ 4, 16688, "", "=q3=Magister's Robes", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "7%" };
		{ 5, 16683, "", "=q3=Magister's Bindings", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 6, 16684, "", "=q3=Magister's Gloves", "" .. BabbleBoss["Doctor Theolen Krastinov"] .. " (" .. AL["Scholo"] ..")", "", droprate = "9%" };
		{ 7, 16685, "", "=q3=Magister's Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 8, 16687, "", "=q3=Magister's Leggings", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "6%" };
		{ 9, 16682, "", "=q3=Magister's Boots", "" .. BabbleBoss["Hearthsinger Forresten"] .. " (" .. AL["Strat"] .. ")","", droprate = "10%" };
		{ 16, 0, "Spell_Frost_IceStorm", "=q6=#t05s3#", "=ec1=#j7#" };
		{ 17, 22065, "", "=q4=Sorcerer's Crown", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22068, "", "=q3=Sorcerer's Mantle", "=ds=#a1#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22069, "", "=q4=Sorcerer's Robes", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22063, "", "=q3=Sorcerer's Bindings", "=ds=#a1#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22066, "", "=q4=Sorcerer's Gloves", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22062, "", "=q3=Sorcerer's Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22067, "", "=q3=Sorcerer's Leggings", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22064, "", "=q4=Sorcerer's Boots", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		{ 1, 0, "Spell_Holy_SealOfMight", "=q6=#t0s4#", "=ec1=#j6#" };
		{ 2, 16727, "", "=q3=Lightforge Helm", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "5%" };
		{ 3, 16729, "", "=q3=Lightforge Spaulders", "" .. BabbleBoss["The Beast"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "13%" };
		{ 4, 16726, "", "=q3=Lightforge Breastplate", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")","", droprate = "3%" };
		{ 5, 16722, "", "=q3=Lightforge Bracers", "" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "", droprate = "3%" };
		{ 6, 16724, "", "=q3=Lightforge Gauntlets", "" .. BabbleBoss["Timmy the Cruel"] .. " (" .. AL["Strat"] .. ")", "",droprate = "10%" };
		{ 7, 16723, "", "=q3=Lightforge Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 8, 16728, "", "=q3=Lightforge Legplates", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "4%" };
		{ 9, 16725, "", "=q3=Lightforge Boots", "" .. BabbleBoss["Balnazzar"] .. " (" .. AL["Strat"] .. ")", "", droprate = "11%" };
		{ 16, 0, "Spell_Holy_SealOfMight", "=q6=#t05s4#", "=ec1=#j7#" };
		{ 17, 22091, "", "=q4=Soulforge Helm", "=ds=#a4#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22093, "", "=q3=Soulforge Spaulders", "=ds=#a4#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22089, "", "=q4=Soulforge Breastplate", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22088, "", "=q3=Soulforge Bracers", "=ds=#a4#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22090, "", "=q4=Soulforge Gauntlets", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22086, "", "=q3=Soulforge Belt", "=ds=#a4#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22092, "", "=q3=Soulforge Legplates", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22087, "", "=q4=Soulforge Boots", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#t0s5#", "=ec1=#j6#" };
		{ 2, 16693, "", "=q3=Devout Crown", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "7%" };
		{ 3, 16695, "", "=q3=Devout Mantle", "" .. BabbleBoss["Solakar Flamewreath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "12%" };
		{ 4, 16690, "", "=q3=Devout Robe", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "", droprate = "6%" };
		{ 5, 16697, "", "=q3=Devout Bracers", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 6, 16692, "", "=q3=Devout Gloves", "" .. BabbleBoss["Archivist Galford"] .. " (" .. AL["Strat"] .. ")", "","" };
		{ 7, 16696, "", "=q3=Devout Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "2%" };
		{ 8, 16694, "", "=q3=Devout Skirt", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "", droprate = "7%" };
		{ 9, 16691, "", "=q3=Devout Sandals", "" .. BabbleBoss["Maleki the Pallid"] .. " (" .. AL["Strat"] .. ")", "",droprate = "13%" };
		{ 16, 0, "Spell_Holy_PowerWordShield", "=q6=#t05s5#", "=ec1=#j7#" };
		{ 17, 22080, "", "=q4=Virtuous Crown", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22082, "", "=q3=Virtuous Mantle", "=ds=#a1#, #s3#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22083, "", "=q4=Virtuous Robe", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22079, "", "=q3=Virtuous Bracers", "=ds=#a1#, #s8#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22081, "", "=q4=Virtuous Gloves", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22078, "", "=q3=Virtuous Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22085, "", "=q3=Virtuous Skirt", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22084, "", "=q4=Virtuous Sandals", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 0, "Ability_BackStab", "=q6=#t0s6#", "=ec1=#j6#" };
		{ 2, 16707, "", "=q3=Shadowcraft Cap", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "6%" };
		{ 3, 16708, "", "=q3=Shadowcraft Spaulders", "" .. BabbleBoss["Cannon Master Willey"] .. " (" .. AL["Strat"] .. ")","", droprate = "10%" };
		{ 4, 16721, "", "=q3=Shadowcraft Tunic", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "6%" };
		{ 5, 16710, "", "=q3=Shadowcraft Bracers", "" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", "", droprate = "3%" };
		{ 6, 16712, "", "=q3=Shadowcraft Gloves", "" .. BabbleBoss["Shadow Hunter Vosh'gajin"] .. " (" .. AL["LBRS"] .. ")","", droprate = "11%" };
		{ 7, 16713, "", "=q3=Shadowcraft Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 8, 16709, "", "=q3=Shadowcraft Pants", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "7%" };
		{ 9, 16711, "", "=q3=Shadowcraft Boots", "" .. BabbleBoss["Rattlegore"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "14%" };
		{ 16, 0, "Ability_BackStab", "=q6=#t05s6#", "=ec1=#j7#" };
		{ 17, 22005, "", "=q4=Darkmantle Cap", "=ds=#a2#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22008, "", "=q3=Darkmantle Spaulders", "=ds=#a2#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22009, "", "=q4=Darkmantle Tunic", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22004, "", "=q3=Darkmantle Bracers", "=ds=#a2#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22006, "", "=q4=Darkmantle Gloves", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22002, "", "=q3=Darkmantle Belt", "=ds=#a2#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22007, "", "=q3=Darkmantle Pants", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22003, "", "=q4=Darkmantle Boots", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#t0s7#", "=ec1=#j6#" };
		{ 2, 16667, "", "=q3=Coif of Elements", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "2%" };
		{ 3, 16669, "", "=q3=Pauldrons of Elements", "" .. BabbleBoss["Gyth"] .. " (" .. AL["UBRS"] .. ")", "", droprate = "14%" };
		{ 4, 16666, "", "=q3=Vest of Elements", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "3%" };
		{ 5, 16671, "", "=q3=Bindings of Elements", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 6, 16672, "", "=q3=Gauntlets of Elements", "" .. BabbleBoss["Pyroguard Emberseer"] .. " (" .. AL["UBRS"] .. ")","", droprate = "14%" };
		{ 7, 16673, "", "=q3=Cord of Elements", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 8, 16668, "", "=q3=Kilt of Elements", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "3%" };
		{ 9, 16670, "", "=q3=Boots of Elements", "" .. BabbleBoss["Highlord Omokk"] .. " (" .. AL["LBRS"] .. ")", "",droprate = "9%" };
		{ 16, 0, "Spell_FireResistanceTotem_01", "=q6=#t05s7#", "=ec1=#j7#" };
		{ 17, 22097, "", "=q4=Coif of The Five Thunders", "=ds=#a3#, #s1#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22101, "", "=q3=Pauldrons of The Five Thunders", "=ds=#a3#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22102, "", "=q4=Vest of The Five Thunders", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22095, "", "=q3=Bindings of The Five Thunders", "=ds=#a3#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22099, "", "=q4=Gauntlets of The Five Thunders", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22098, "", "=q3=Cord of The Five Thunders", "=ds=#a3#, #s10#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22100, "", "=q3=Kilt of The Five Thunders", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22096, "", "=q4=Boots of The Five Thunders", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t0s8#", "=ec1=#j6#" };
		{ 2, 16698, "", "=q3=Dreadmist Mask", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "8%" };
		{ 3, 16701, "", "=q3=Dreadmist Mantle", "" .. BabbleBoss["Jandice Barov"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "12%" };
		{ 4, 16700, "", "=q3=Dreadmist Robe", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "8%" };
		{ 5, 16703, "", "=q3=Dreadmist Bracers", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 6, 16705, "", "=q3=Dreadmist Wraps", "" .. BabbleBoss["Lorekeeper Polkelt"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "14%" };
		{ 7, 16702, "", "=q3=Dreadmist Belt", "" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", "", droprate = "1%" };
		{ 8, 16699, "", "=q3=Dreadmist Leggings", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "7%" };
		{ 9, 16704, "", "=q3=Dreadmist Sandals", "" .. BabbleBoss["Baroness Anastari"] .. " (" .. AL["Strat"] .. ")", "",droprate = "13%" };
		{ 16, 0, "Spell_Shadow_CurseOfTounges", "=q6=#t05s8#", "=ec1=#j7#" };
		{ 17, 22074, "", "=q4=Deathmist Mask", "=ds=#a1#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22073, "", "=q3=Deathmist Mantle", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 22075, "", "=q4=Deathmist Robe", "=ds=#a1#, #s3#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 22071, "", "=q3=Deathmist Bracers", "=ds=#a1#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 22077, "", "=q4=Deathmist Wraps", "", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 22070, "", "=q3=Deathmist Belt", "=ds=#a1#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22072, "", "=q3=Deathmist Leggings", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 22076, "", "=q4=Deathmist Sandals", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		{ 1, 0, "INV_Shield_05", "=q6=#t0s9#", "=ec1=#j6#" };
		{ 2, 16731, "", "=q3=Helm of Valor", "" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "6%" };
		{ 3, 16733, "", "=q3=Spaulders of Valor", "" .. BabbleBoss["Warchief Rend Blackhand"] .. " (" .. AL["UBRS"] .. ")","", droprate = "13%" };
		{ 4, 16730, "", "=q3=Breastplate of Valor", "" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", "",droprate = "5%" };
		{ 5, 16735, "", "=q3=Bracers of Valor", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 6, 16737, "", "=q3=Gauntlets of Valor", "" .. BabbleBoss["Ramstein the Gorger"] .. " (" .. AL["Strat"] .. ")", "",droprate = "9%" };
		{ 7, 16736, "", "=q3=Belt of Valor", "" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", "", droprate = "1%" };
		{ 8, 16732, "", "=q3=Legplates of Valor", "" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", "",droprate = "5%" };
		{ 9, 16734, "", "=q3=Boots of Valor", "" .. BabbleBoss["Kirtonos the Herald"] .. " (" .. AL["Scholo"] .. ")", "",droprate = "11%" };
		{ 16, 0, "INV_Shield_05", "=q6=#t05s9#", "=ec1=#j7#" };
		{ 17, 21999, "", "=q4=Helm of Heroism", "=ds=#a4#, #s1#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 18, 22001, "", "=q3=Spaulders of Heroism", "=ds=#a4#, #s3#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 19, 21997, "", "=q4=Breastplate of Heroism", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 20, 21996, "", "=q3=Bracers of Heroism", "=ds=#a4#, #s8#",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 21, 21998, "", "=q4=Gauntlets of Heroism", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 22, 21994, "", "=q3=Belt of Heroism", "=ds=#a4#, #s10#", [AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 23, 22000, "", "=q3=Legplates of Heroism", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
		{ 24, 21995, "", "=q4=Boots of Heroism", "",[AtlasLoot_Difficulty.MAX_DIF] = AtlasLoot_Difficulty.Normal };
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
		{ 1, 16834, "", "=q4=Cenarion Helm", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 16836, "", "=q4=Cenarion Spaulders", "" .. BabbleBoss["Baron Geddon"], "", droprate = "19%" };
		{ 3, 16833, "", "=q4=Cenarion Vestments", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "15%" };
		{ 4, 16830, "", "=q4=Cenarion Bracers", "" .. AL["Trash Mobs"], "", "0.17%" };
		{ 5, 16831, "", "=q4=Cenarion Gloves", "" .. BabbleBoss["Shazzrah"], "", droprate = "19%" };
		{ 6, 16828, "", "=q4=Cenarion Belt", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 7, 16835, "", "=q4=Cenarion Leggings", "" .. BabbleBoss["Magmadar"], "", droprate = "12%" };
		{ 8, 16829, "", "=q4=Cenarion Boots", "" .. BabbleBoss["Lucifron"], "", droprate = "10%" };
	};
	{
		Name = "Druid" .. " - Tank";
		{ 1, 13437, "", "=q4=Cenarion Cover", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 13439, "", "=q4=Cenarion Pauldrons", "" .. BabbleBoss["Baron Geddon"], "", droprate = "19%" };
		{ 3, 13436, "", "=q4=Cenarion Tunic", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "15%" };
		{ 4, 13434, "", "=q4=Cenarion Bands", "" .. AL["Trash Mobs"], "", "0.17%" };
		{ 5, 13435, "", "=q4=Cenarion Handguards", "" .. BabbleBoss["Shazzrah"], "", droprate = "19%" };
		{ 6, 13432, "", "=q4=Cenarion Girdle", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 7, 13438, "", "=q4=Cenarion Pants", "" .. BabbleBoss["Magmadar"], "", droprate = "12%" };
		{ 8, 13433, "", "=q4=Cenarion Treads", "" .. BabbleBoss["Lucifron"], "", droprate = "10%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 16846, "", "=q4=Giantstalker's Helmet", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 16848, "", "=q4=Giantstalker's Epaulets", "" .. BabbleBoss["Sulfuron Harbinger"], "", droprate = "19%" };
		{ 3, 16845, "", "=q4=Giantstalker's Breastplate", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "15%" };
		{ 4, 16850, "", "=q4=Giantstalker's Bracers", "" .. AL["Trash Mobs"], "", droprate = "0.18%" };
		{ 5, 16852, "", "=q4=Giantstalker's Gloves", "" .. BabbleBoss["Shazzrah"], "", droprate = "18%" };
		{ 6, 16851, "", "=q4=Giantstalker's Belt", "" .. AL["Trash Mobs"], "", "0.17%" };
		{ 7, 16847, "", "=q4=Giantstalker's Leggings", "" .. BabbleBoss["Magmadar"], "", droprate = "13%" };
		{ 8, 16849, "", "=q4=Giantstalker's Boots", "" .. BabbleBoss["Gehennas"], "", droprate = "14%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 16795, "", "=q4=Arcanist Crown", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 16797, "", "=q4=Arcanist Mantle", "" .. BabbleBoss["Baron Geddon"], "", droprate = "19%" };
		{ 3, 16798, "", "=q4=Arcanist Robes", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "16%" };
		{ 4, 16799, "", "=q4=Arcanist Bindings", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 5, 16801, "", "=q4=Arcanist Gloves", "" .. BabbleBoss["Shazzrah"], "", droprate = "19%" };
		{ 6, 16802, "", "=q4=Arcanist Belt", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 7, 16796, "", "=q4=Arcanist Leggings", "" .. BabbleBoss["Magmadar"], "", droprate = "14%" };
		{ 8, 16800, "", "=q4=Arcanist Boots", "" .. BabbleBoss["Lucifron"], "", droprate = "12%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
		{ 1, 16854, "", "=q4=Lawbringer Helm", "" .. BabbleBoss["Garr"], "", droprate = "7%" };
		{ 2, 16856, "", "=q4=Lawbringer Spaulders", "" .. BabbleBoss["Baron Geddon"], "", droprate = "12%" };
		{ 3, 16853, "", "=q4=Lawbringer Chestguard", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "9%" };
		{ 4, 16857, "", "=q4=Lawbringer Bracers", "" .. AL["Trash Mobs"], "", droprate = "0.11%" };
		{ 5, 16860, "", "=q4=Lawbringer Gauntlets", "" .. BabbleBoss["Gehennas"], "", droprate = "11%" };
		{ 6, 16858, "", "=q4=Lawbringer Belt", "" .. AL["Trash Mobs"], "", droprate = "0.10%" };
		{ 7, 16855, "", "=q4=Lawbringer Legplates", "" .. BabbleBoss["Magmadar"], "", droprate = "8%" };
		{ 8, 16859, "", "=q4=Lawbringer Boots", "" .. BabbleBoss["Lucifron"], "", droprate = "7%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
		{ 1, 11536, "", "=q4=Lawbringer Greathelm", "" .. BabbleBoss["Garr"], "", droprate = "7%" };
		{ 2, 11538, "", "=q4=Lawbringer Pauldrons", "" .. BabbleBoss["Baron Geddon"], "", droprate = "12%" };
		{ 3, 11535, "", "=q4=Lawbringer Breastplate", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "9%" };
		{ 4, 11531, "", "=q4=Lawbringer Wristguards", "" .. AL["Trash Mobs"], "", droprate = "0.11%" };
		{ 5, 11533, "", "=q4=Lawbringer Handguards", "" .. BabbleBoss["Gehennas"], "", droprate = "11%" };
		{ 6, 11534, "", "=q4=Lawbringer Waistguard", "" .. AL["Trash Mobs"], "", droprate = "0.10%" };
		{ 7, 11537, "", "=q4=Lawbringer Legguards", "" .. BabbleBoss["Magmadar"], "", droprate = "8%" };
		{ 8, 11532, "", "=q4=Lawbringer Stompers", "" .. BabbleBoss["Lucifron"], "", droprate = "7%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		{ 1, 16813, "", "=q4=Circlet of Prophecy", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 16816, "", "=q4=Mantle of Prophecy", "" .. BabbleBoss["Sulfuron Harbinger"], "", droprate = "21%" };
		{ 3, 16815, "", "=q4=Robes of Prophecy", "" .. BabbleBoss["Golemagg the Incinerator"], "", "1" };
		{ 4, 16819, "", "=q4=Vambraces of Prophecy", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 5, 16812, "", "=q4=Gloves of Prophecy", "" .. BabbleBoss["Gehennas"], "", droprate = "18%" };
		{ 6, 16817, "", "=q4=Girdle of Prophecy", "" .. AL["Trash Mobs"], "", droprate = "0.18%" };
		{ 7, 16814, "", "=q4=Pants of Prophecy", "" .. BabbleBoss["Magmadar"], "", droprate = "14%" };
		{ 8, 16811, "", "=q4=Boots of Prophecy", "" .. BabbleBoss["Shazzrah"], "", droprate = "14%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 16821, "", "=q4=Nightslayer Cover", "" .. BabbleBoss["Garr"], "", droprate = "10%" };
		{ 2, 16823, "", "=q4=Nightslayer Shoulder Pads", "" .. BabbleBoss["Sulfuron Harbinger"], "", droprate = "20%" };
		{ 3, 16820, "", "=q4=Nightslayer Chestpiece", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "16%" };
		{ 4, 16825, "", "=q4=Nightslayer Bracelets", "" .. AL["Trash Mobs"], "", "0.17%" };
		{ 5, 16826, "", "=q4=Nightslayer Gloves", "" .. BabbleBoss["Gehennas"], "", droprate = "19%" };
		{ 6, 16827, "", "=q4=Nightslayer Belt", "" .. AL["Trash Mobs"], "", "0.15%" };
		{ 7, 16822, "", "=q4=Nightslayer Pants", "" .. BabbleBoss["Magmadar"], "", droprate = "13%" };
		{ 8, 16824, "", "=q4=Nightslayer Boots", "" .. BabbleBoss["Shazzrah"], "", droprate = "15%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
		{ 1, 16842, "", "=q4=Earthfury Helmet", "" .. BabbleBoss["Garr"], "", droprate = "3%" };
		{ 2, 16844, "", "=q4=Earthfury Epaulets", "" .. BabbleBoss["Baron Geddon"], "", droprate = "7%" };
		{ 3, 16841, "", "=q4=Earthfury Vestments", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "6%" };
		{ 4, 16840, "", "=q4=Earthfury Bracers", "" .. AL["Trash Mobs"], "", droprate = "0.06%" };
		{ 5, 16839, "", "=q4=Earthfury Gauntlets", "" .. BabbleBoss["Gehennas"], "", droprate = "7%" };
		{ 6, 16838, "", "=q4=Earthfury Belt", "" .. AL["Trash Mobs"], "", "0%" };
		{ 7, 16843, "", "=q4=Earthfury Legguards", "" .. BabbleBoss["Magmadar"], "", droprate = "4%" };
		{ 8, 16837, "", "=q4=Earthfury Boots", "" .. BabbleBoss["Lucifron"], "", droprate = "4%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
		{ 1, 11794, "", "=q4=Earthfury Cover", "" .. BabbleBoss["Garr"], "", droprate = "3%" };
		{ 2, 11796, "", "=q4=Earthfury Pauldrons", "" .. BabbleBoss["Baron Geddon"], "", droprate = "7%" };
		{ 3, 11792, "", "=q4=Earthfury Tunic", "" .. BabbleBoss["Golemagg the Incinerator"], "", droprate = "6%" };
		{ 4, 11793, "", "=q4=Earthfury Bands", "" .. AL["Trash Mobs"], "", droprate = "0.06%" };
		{ 5, 11791, "", "=q4=Earthfury Gloves", "" .. BabbleBoss["Gehennas"], "", droprate = "7%" };
		{ 6, 11790, "", "=q4=Earthfury Girdle", "" .. AL["Trash Mobs"], "", "0%" };
		{ 7, 11789, "", "=q4=Earthfury Leggings", "" .. BabbleBoss["Magmadar"], "", droprate = "4%" };
		{ 8, 11795, "", "=q4=Earthfury Treads", "" .. BabbleBoss["Lucifron"], "", droprate = "4%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		{ 1, 16808, "", "=q4=Felheart Horns", "" .. BabbleBoss["Garr"], "", droprate = "10%" };
		{ 2, 16807, "", "=q4=Felheart Shoulder Pads", "" .. BabbleBoss["Baron Geddon"], "", droprate = "19%" };
		{ 3, 16809, "", "=q4=Felheart Robes", "" .. BabbleBoss["Golemagg the Incinerator"] };
		{ 4, 16804, "", "=q4=Felheart Bracers", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 5, 16805, "", "=q4=Felheart Gloves", "" .. BabbleBoss["Lucifron"], "", droprate = "14%" };
		{ 6, 16806, "", "=q4=Felheart Belt", "" .. AL["Trash Mobs"], "", "0.19%" };
		{ 7, 16810, "", "=q4=Felheart Pants", "" .. BabbleBoss["Magmadar"], "", droprate = "13%" };
		{ 8, 16803, "", "=q4=Felheart Slippers", "" .. BabbleBoss["Shazzrah"], "", "1" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		{ 1, 16866, "", "=q4=Helm of Might", "" .. BabbleBoss["Garr"], "", droprate = "11%" };
		{ 2, 16868, "", "=q4=Pauldrons of Might", "" .. BabbleBoss["Sulfuron Harbinger"], "", droprate = "21%" };
		{ 3, 16865, "", "=q4=Breastplate of Might", "" .. BabbleBoss["Golemagg the Incinerator"], "", "1" };
		{ 4, 16861, "", "=q4=Bracers of Might", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 5, 16863, "", "=q4=Gauntlets of Might", "" .. BabbleBoss["Lucifron"], "", droprate = "16%" };
		{ 6, 16864, "", "=q4=Belt of Might", "" .. AL["Trash Mobs"], "", "0.16%" };
		{ 7, 16867, "", "=q4=Legplates of Might", "" .. BabbleBoss["Magmadar"], "", droprate = "13%" };
		{ 8, 16862, "", "=q4=Sabatons of Might", "" .. BabbleBoss["Gehennas"], "", droprate = "14%" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		{ 1, 10480, "", "=q4=Faceguard of Might", "" .. BabbleBoss["Garr"] };
		{ 2, 10481, "", "=q4=Shoulderpads of Might", "" .. BabbleBoss["Sulfuron Harbinger"] };
		{ 3, 10482, "", "=q4=Chesttplate of Might", "" .. BabbleBoss["Golemagg the Incinerator"] };
		{ 4, 10483, "", "=q4=Wristguards of Might", "" .. AL["Trash Mobs"] };
		{ 5, 10484, "", "=q4=Handguards of Might", "" .. BabbleBoss["Lucifron"] };
		{ 6, 10485, "", "=q4=Girdle of Might", "" .. AL["Trash Mobs"] };
		{ 7, 10486, "", "=q4=Legguards of Might", "" .. BabbleBoss["Magmadar"] };
		{ 8, 10487, "", "=q4=Stompers of Might", "" .. BabbleBoss["Gehennas"] };
	};
};

-- T2 Sets
AtlasLoot_Data["T2"] = {
	Name = "Tier 2";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		{ 1, 16900, "", "=q4=Stormrage Cover", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16902, "", "=q4=Stormrage Pauldrons", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16897, "", "=q4=Stormrage Chestguard", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16904, "", "=q4=Stormrage Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16899, "", "=q4=Stormrage Handguards","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16903, "", "=q4=Stormrage Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16901, "", "=q4=Stormrage Legguards", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16898, "", "=q4=Stormrage Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = AL["Druid"] .. " - Tank";
		{ 1, 1516900, "", "=q4=Stormrage Cover", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516902, "", "=q4=Stormrage Pauldrons", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516897, "", "=q4=Stormrage Chestguard", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516904, "", "=q4=Stormrage Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516904, "", "=q4=Stormrage Handguards","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516899, "", "=q4=Stormrage Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516903, "", "=q4=Stormrage Legguards", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516898, "", "=q4=Stormrage Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = AL["Druid"] .. " - DPS";
		{ 1, 1516892, "", "=q4=Stormrage Cover", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516894, "", "=q4=Stormrage Pauldrons", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516889, "", "=q4=Stormrage Chestguard", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516896, "", "=q4=Stormrage Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516891, "", "=q4=Stormrage Handguards","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516895, "", "=q4=Stormrage Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516893, "", "=q4=Stormrage Legguards", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516890, "", "=q4=Stormrage Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 16939, "", "=q4=Dragonstalker's Helm", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16937, "", "=q4=Dragonstalker's Spaulders", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16942, "", "=q4=Dragonstalker's Breastplate", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16935, "", "=q4=Dragonstalker's Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16940, "", "=q4=Dragonstalker's Gauntlets","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16936, "", "=q4=Dragonstalker's Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16938, "", "=q4=Dragonstalker's Legguards", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16941, "", "=q4=Dragonstalker's Greaves", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 16914, "", "=q4=Netherwind Crown", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16917, "", "=q4=Netherwind Mantle", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16916, "", "=q4=Netherwind Robes", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16918, "", "=q4=Netherwind Bindings", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16913, "", "=q4=Netherwind Gloves","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16818, "", "=q4=Netherwind Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16915, "", "=q4=Netherwind Pants", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16912, "", "=q4=Netherwind Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		{ 1, 16955, "", "=q4=Judgement Crown", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16953, "", "=q4=Judgement Spaulders", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16958, "", "=q4=Judgement Breastplate", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16951, "", "=q4=Judgement Bindings", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16956, "", "=q4=Judgement Gauntlets","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16952, "", "=q4=Judgement Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16954, "", "=q4=Judgement Legplates", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16957, "", "=q4=Judgement Sabatons", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - Tank";
		{ 1, 1516955, "", "=q4=Judgement Crown", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516953, "", "=q4=Judgement Spaulders", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516958, "", "=q4=Judgement Breastplate", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516951, "", "=q4=Judgement Bindings", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516956, "", "=q4=Judgement Gauntlets","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516952, "", "=q4=Judgement Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516954, "", "=q4=Judgement Legplates", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516957, "", "=q4=Judgement Sabatons", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		{ 1, 16921, "", "=q4=Halo of Transcendence", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16924, "", "=q4=Pauldrons of Transcendence", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16923, "", "=q4=Robes of Transcendence", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16926, "", "=q4=Bindings of Transcendence", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16920, "", "=q4=Handguards of Transcendence","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16925, "", "=q4=Belt of Transcendence", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16922, "", "=q4=Leggings of Transcendence", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16919, "", "=q4=Boots of Transcendence", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - DPS";
		{ 1, 1516921, "", "=q4=Halo of Transcendence", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516924, "", "=q4=Pauldrons of Transcendence", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516923, "", "=q4=Robes of Transcendence", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516926, "", "=q4=Bindings of Transcendence", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516920, "", "=q4=Handguards of Transcendence","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516925, "", "=q4=Belt of Transcendence", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516922, "", "=q4=Leggings of Transcendence", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516919, "", "=q4=Boots of Transcendence", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 16908, "", "=q4=Bloodfang Hood", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16832, "", "=q4=Bloodfang Spaulders", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16905, "", "=q4=Bloodfang Chestpiece", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16911, "", "=q4=Bloodfang Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16907, "", "=q4=Bloodfang Gloves","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16910, "", "=q4=Bloodfang Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16909, "", "=q4=Bloodfang Pants", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16906, "", "=q4=Bloodfang Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		{ 1, 16947, "", "=q4=Helmet of Ten Storms", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16945, "", "=q4=Epaulets of Ten Storms", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16950, "", "=q4=Breastplate of Ten Storms", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16943, "", "=q4=Bracers of Ten Storms", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16948, "", "=q4=Gauntlets of Ten Storms","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16944, "", "=q4=Belt of Ten Storms", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16946, "", "=q4=Legplates of Ten Storms", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16949, "", "=q4=Greaves of Ten Storms", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		{ 1, 1516947, "", "=q4=Helmet of Ten Storms", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516945, "", "=q4=Epaulets of Ten Storms", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516950, "", "=q4=Breastplate of Ten Storms", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516943, "", "=q4=Bracers of Ten Storms", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516948, "", "=q4=Gauntlets of Ten Storms","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516944, "", "=q4=Belt of Ten Storms", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516946, "", "=q4=Legplates of Ten Storms", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516949, "", "=q4=Greaves of Ten Storms", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		{ 1, 16929, "", "=q4=Nemesis Skullcap", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16932, "", "=q4=Nemesis Spaulders", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16931, "", "=q4=Nemesis Robes", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16934, "", "=q4=Nemesis Bracers", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16928, "", "=q4=Nemesis Gloves","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16933, "", "=q4=Nemesis Belt", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16930, "", "=q4=Nemesis Leggings", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16927, "", "=q4=Nemesis Boots", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		{ 1, 10904, "", "=q4=Faceguard of Wrath", "" .. BabbleBoss["Onyxia"] };
		{ 2, 10902, "", "=q4=Shoulderpads of Wrath", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 10907, "", "=q4=Chestplate of Wrath", "" .. BabbleBoss["Nefarian"] };
		{ 4, 10900, "", "=q4=Wristguards of Wrath", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 10905, "", "=q4=Grippers of Wrath","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 10901, "", "=q4=Belt of Wrath", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 10903, "", "=q4=Legguards of Wrath", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 10906, "", "=q4=Stompers of Wrath", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		{ 1, 16963, "", "=q4=Helm of Wrath", "" .. BabbleBoss["Onyxia"] };
		{ 2, 16961, "", "=q4=Pauldrons of Wrath", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 16966, "", "=q4=Breastplate of Wrath", "" .. BabbleBoss["Nefarian"] };
		{ 4, 16959, "", "=q4=Bracelets of Wrath", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 16964, "", "=q4=Gauntlets of Wrath","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 16960, "", "=q4=Waistband of Wrath", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 16962, "", "=q4=Legplates of Wrath", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 16965, "", "=q4=Sabatons of Wrath", "" .. BabbleBoss["Broodlord Lashlayer"] };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		{ 1, 1516963, "", "=q4=Faceguard of Wrath", "" .. BabbleBoss["Onyxia"] };
		{ 2, 1516961, "", "=q4=Shoulderpads of Wrath", "" .. BabbleBoss["Chromaggus"] };
		{ 3, 1516966, "", "=q4=Chestplate of Wrath", "" .. BabbleBoss["Nefarian"] };
		{ 4, 1516959, "", "=q4=Wristguards of Wrath", "" .. BabbleBoss["Razorgore the Untamed"] };
		{ 5, 1516964, "", "=q4=Grippers of Wrath","" .. BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };
		{ 6, 1516960, "", "=q4=Belt of Wrath", "" .. BabbleBoss["Vaelastrasz the Corrupt"] };
		{ 7, 1516962, "", "=q4=Legguards of Wrath", "" .. BabbleBoss["Ragnaros"] };
		{ 8, 1516965, "", "=q4=Stompers of Wrath", "" .. BabbleBoss["Broodlord Lashlayer"] };
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
		{ 1, 22490, "", "=q4=Dreamwalker Headpiece" };
		{ 2, 22491, "", "=q4=Dreamwalker Spaulders" };
		{ 3, 22488, "", "=q4=Dreamwalker Tunic" };
		{ 4, 22495, "", "=q4=Dreamwalker Wristguards" };
		{ 5, 22493, "", "=q4=Dreamwalker Handguards" };
		{ 6, 22494, "", "=q4=Dreamwalker Girdle" };
		{ 7, 22489, "", "=q4=Dreamwalker Legguards" };
		{ 8, 22492, "", "=q4=Dreamwalker Boots" };
		{ 9, 23064, "", "=q4=Ring of the Dreamwalker" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 22438, "", "=q4=Cryptstalker Headpiece" };
		{ 2, 22439, "", "=q4=Cryptstalker Spaulders" };
		{ 3, 22436, "", "=q4=Cryptstalker Tunic" };
		{ 4, 22443, "", "=q4=Cryptstalker Wristguards" };
		{ 5, 22441, "", "=q4=Cryptstalker Handguards" };
		{ 6, 22442, "", "=q4=Cryptstalker Girdle" };
		{ 7, 22437, "", "=q4=Cryptstalker Legguards" };
		{ 8, 22440, "", "=q4=Cryptstalker Boots" };
		{ 9, 23067, "", "=q4=Ring of the Cryptstalker" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 22498, "", "=q4=Frostfire Circlet" };
		{ 2, 22499, "", "=q4=Frostfire Shoulderpads" };
		{ 3, 22496, "", "=q4=Frostfire Robe" };
		{ 4, 22503, "", "=q4=Frostfire Bindings" };
		{ 5, 22501, "", "=q4=Frostfire Gloves" };
		{ 6, 22502, "", "=q4=Frostfire Belt" };
		{ 7, 22497, "", "=q4=Frostfire Leggings" };
		{ 8, 22500, "", "=q4=Frostfire Sandals" };
		{ 9, 23062, "", "=q4=Frostfire Ring" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		{ 1, 22428, "", "=q4=Redemption Headpiece" };
		{ 2, 22429, "", "=q4=Redemption Spaulders" };
		{ 3, 22425, "", "=q4=Redemption Tunic" };
		{ 4, 22424, "", "=q4=Redemption Wristguards" };
		{ 5, 22426, "", "=q4=Redemption Handguards" };
		{ 6, 22431, "", "=q4=Redemption Girdle" };
		{ 7, 22427, "", "=q4=Redemption Legguards" };
		{ 8, 22430, "", "=q4=Redemption Boots" };
		{ 9, 23066, "", "=q4=Ring of Redemption" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		{ 1, 22514, "", "=q4=Circlet of Faith" };
		{ 2, 22515, "", "=q4=Shoulderpads of Faith" };
		{ 3, 22512, "", "=q4=Robe of Faith" };
		{ 4, 22519, "", "=q4=Bindings of Faith" };
		{ 5, 22517, "", "=q4=Gloves of Faith" };
		{ 6, 22518, "", "=q4=Belt of Faith" };
		{ 7, 22513, "", "=q4=Leggings of Faith" };
		{ 8, 22516, "", "=q4=Sandals of Faith" };
		{ 9, 23061, "", "=q4=Ring of Faith" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 22478, "", "=q4=Bonescythe Helmet" };
		{ 2, 22479, "", "=q4=Bonescythe Pauldrons" };
		{ 3, 22476, "", "=q4=Bonescythe Breastplate" };
		{ 4, 22483, "", "=q4=Bonescythe Bracers" };
		{ 5, 22481, "", "=q4=Bonescythe Gauntlets" };
		{ 6, 22482, "", "=q4=Bonescythe Waistguard" };
		{ 7, 22477, "", "=q4=Bonescythe Legplates" };
		{ 8, 22480, "", "=q4=Bonescythe Sabatons" };
		{ 9, 23060, "", "=q4=Bonescythe Ring" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		{ 1, 22466, "", "=q4=Earthshatter Headpiece" };
		{ 2, 22467, "", "=q4=Earthshatter Spaulders" };
		{ 3, 22464, "", "=q4=Earthshatter Tunic" };
		{ 4, 22471, "", "=q4=Earthshatter Wristguards" };
		{ 5, 22469, "", "=q4=Earthshatter Handguards" };
		{ 6, 22470, "", "=q4=Earthshatter Girdle" };
		{ 7, 22465, "", "=q4=Earthshatter Legguards" };
		{ 8, 22468, "", "=q4=Earthshatter Boots" };
		{ 9, 23065, "", "=q4=Ring of the Earthshatterer" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		{ 1, 22506, "", "=q4=Plagueheart Circlet" };
		{ 2, 22507, "", "=q4=Plagueheart Shoulderpads" };
		{ 3, 22504, "", "=q4=Plagueheart Robe" };
		{ 4, 22511, "", "=q4=Plagueheart Bindings" };
		{ 5, 22509, "", "=q4=Plagueheart Gloves" };
		{ 6, 22510, "", "=q4=Plagueheart Belt" };
		{ 7, 22505, "", "=q4=Plagueheart Leggings" };
		{ 8, 22508, "", "=q4=Plagueheart Sandals" };
		{ 9, 23063, "", "=q4=Plagueheart Ring" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		{ 1, 22418, "", "=q4=Dreadnaught Helmet" };
		{ 2, 22419, "", "=q4=Dreadnaught Pauldrons" };
		{ 3, 22416, "", "=q4=Dreadnaught Breastplate" };
		{ 4, 22423, "", "=q4=Dreadnaught Bracers" };
		{ 5, 22421, "", "=q4=Dreadnaught Gauntlets" };
		{ 6, 22422, "", "=q4=Dreadnaught Waistguard" };
		{ 7, 22417, "", "=q4=Dreadnaught Legplates" };
		{ 8, 22420, "", "=q4=Dreadnaught Sabatons" };
		{ 9, 23059, "", "=q4=Ring of the Dreadnaught" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		{ 1, 10490, "", "=q4=Dreadborne Helmet" };
		{ 2, 10491, "", "=q4=Dreadborne Pauldrons" };
		{ 3, 10488, "", "=q4=Dreadborne Breastplate" };
		{ 4, 10495, "", "=q4=Dreadborne Bracers" };
		{ 5, 10493, "", "=q4=Dreadborne Gauntlets" };
		{ 6, 10494, "", "=q4=Dreadborne Waistguard" };
		{ 7, 10489, "", "=q4=Dreadborne Legplates" };
		{ 8, 10492, "", "=q4=Dreadborne Sabatons" };
		{ 9, 10496, "", "=q4=Dreadborne Ring" };
	};
};

------------------------
--- Vanilla WoW Sets ---
------------------------

AtlasLoot_Data["ClassicSets"] = {
	Name = AL["Classic Sets"];
	{
		Name = AL["Defias Leather"];
		{ 1, 10399, "", "=q3=Blackened Defias Armor", "=ds=#s5#, =q2=#n6#", "", droprate = "14%" };
		{ 2, 10401, "", "=q2=Blackened Defias Gloves", "=ds=#s9#, =q2=#n9#", "", droprate = "1%" };
		{ 3, 10403, "", "=q3=Blackened Defias Belt", "=ds=#s10#, =q2=#n7#", "", droprate = "23%" };
		{ 4, 10400, "", "=q2=Blackened Defias Leggings", "=ds=#s11#, =q2=#n9#", "", droprate = "1%" };
		{ 5, 10402, "", "=q2=Blackened Defias Boots", "=ds=#s12#, =q2=#n8#", "", droprate = "1%" };
	};
	{
		Name = AL["Embrace of the Viper"];
		{ 1, 6473, "", "=q3=Armor of the Fang", "=ds=#s5#, =q2=#n5#", "", droprate = "52%" };
		{ 2, 10413, "", "=q3=Gloves of the Fang", "=ds=#s9#, =q2=#n4#", "", droprate = "1%" };
		{ 3, 10412, "", "=q3=Belt of the Fang", "=ds=#s10#, =q2=#n2#", "", droprate = "8%" };
		{ 4, 10410, "", "=q3=Leggings of the Fang", "=ds=#s11#, =q2=#n1#", "", droprate = "16%" };
		{ 5, 10411, "", "=q3=Footpads of the Fang", "=ds=#s12#, =q2=#n3#", "", droprate = "19%" };
	};
	{
		Name = AL["Chain of the Scarlet Crusade"];
		{ 1, 10328, "", "=q3=Scarlet Chestpiece", "=ds=#s5#, =q2=#n12#", "", "0.3%" };
		{ 2, 10333, "", "=q2=Scarlet Wristguards", "=ds=#s8#, =q2=#n15#", "", "1.6%" };
		{ 3, 10331, "", "=q2=Scarlet Gauntlets", "=ds=#s9#, =q2=#n13#", "", "1.7%" };
		{ 4, 10329, "", "=q2=Scarlet Belt", "=ds=#s10#, =q2=#n10#", "", "1.6%" };
		{ 5, 10330, "", "=q3=Scarlet Leggings", "=ds=#s11#, =q2=#n14#", "", "13.2%" };
		{ 6, 10332, "", "=q3=Scarlet Boots", "=ds=#s12#, =q2=#n11#", "", "0.1%" };
	};
	{
		Name = AL["The Gladiator"];
		{ 1, 11729, "", "=q3=Savage Gladiator Helm", "=ds=#s1#, =q2=#brd3#, #brd5#", "", droprate = "10%" };
		{ 2, 11726, "", "=q4=Savage Gladiator Chain", "=ds=#s5#, =q2=#brd3#", "", droprate = "14%" };
		{ 3, 11730, "", "=q3=Savage Gladiator Grips", "=ds=#s9#, =q2=#brd2#", "", droprate = "14%" };
		{ 4, 11728, "", "=q3=Savage Gladiator Leggings", "=ds=#s11#, =q2=#brd6#", "", droprate = "14%" };
		{ 5, 11731, "", "=q3=Savage Gladiator Greaves", "=ds=#s12#, =q2=#brd1#", "", droprate = "15%" };
	};
	{
		Name = AL["Ironweave Battlesuit"];
		{ 1, 22302, "", "=q3=Ironweave Cowl", "=ds=#s1#, =q2=#n16# (#z9#)", "", droprate = "27%" };
		{ 2, 22305, "", "=q3=Ironweave Mantle", "=ds=#s3#, =q2=#n17# (#z4#)", "", droprate = "30%" };
		{ 3, 22301, "", "=q3=Ironweave Robe", "=ds=#s5#, =q2=#n18# (#z6#)", "", droprate = "19%" };
		{ 4, 22313, "", "=q3=Ironweave Bracers", "=ds=#s8#, =q2=#n19# (#z10#)", "", droprate = "18%" };
		{ 5, 22304, "", "=q3=Ironweave Gloves", "=ds=#s9#, =q2=#n20# (#z13#)", "", droprate = "16%" };
		{ 6, 22306, "", "=q3=Ironweave Belt", "=ds=#s10#, =q2=#n21# (#z10#)", "", droprate = "20%" };
		{ 7, 22303, "", "=q3=Ironweave Pants", "=ds=#s11#, =q2=#n22# (#z5#)", "", droprate = "23%" };
		{ 8, 22311, "", "=q3=Ironweave Boots", "=ds=#s12#, =q2=#n23# (#z9#)", "", droprate = "12%" };
	};
	{
		Name = AL["The Postmaster"];
		{ 1, 13390, "", "=q3=The Postmaster's Band" };
		{ 2, 13388, "", "=q3=The Postmaster's Tunic" };
		{ 3, 13389, "", "=q3=The Postmaster's Trousers" };
		{ 4, 13391, "", "=q3=The Postmaster's Treads" };
		{ 5, 13392, "", "=q3=The Postmaster's Seal" };
	};
	{
		Name = AL["Shard of the Gods"];
		{ 1, 17082, "", "=q4=Shard of the Flame", "=ds=#s14#, =q2=#n35# (#z14#)", "", droprate = "4%" };
		{ 2, 17064, "", "=q4=Shard of the Scale", "=ds=#s14#, =q2=#n36# (#z15#)", "", droprate = "3%" };
	};
	{
		Name = AL["Spirit of Eskhandar"];
		{ 1, 18204, "", "=q4=Eskhandar's Pelt", "=ds=#s4#, =q2=#n37#", "", droprate = "9%" };
		{ 2, 18203, "", "=q4=Eskhandar's Right Claw", "=ds=#h3#, #w13#, =q2=#n38# (#z14#)", "", droprate = "16%" };
		{ 3, 18202, "", "=q4=Eskhandar's Left Claw", "=ds=#h4#, #w13#, =q2=#n39#", "", droprate = "12%" };
	};
	{
		Name = AL["Spider's Kiss"];
		{ 1, 13218, "", "=q3=Fang of the Crystal Spider", "=ds=#h1#, #w4#, =q2=#n41#", "", droprate = "15%" };
		{ 2, 13183, "", "=q3=Venomspitter", "=ds=#h1#, #w6#, =q2=#n42#", "", droprate = "13%" };
	};
	{
		Name = AL["Dal'Rend's Arms"];
		{ 1, 12940, "", "=q3=Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#, =q2=#n40#", "", droprate = "6%" };
		{ 2, 12939, "", "=q3=Dal'Rend's Tribal Guardian", "=ds=#h4#, #w10#, =q2=#n40#", "", droprate = "7%" };
	};
	{
		Name = AL["Necropile Raiment"];
		{ 1, 14633, "", "=q3=Necropile Mantle",  droprate = "1%" };
		{ 2, 14626, "", "=q3=Necropile Robe",  droprate = "1%" };
		{ 3, 14629, "", "=q3=Necropile Cuffs",  droprate = "1%" };
		{ 4, 14632, "", "=q3=Necropile Leggings",  "0.85%" };
		{ 5, 14631, "", "=q3=Necropile Boots",  "0.88%" };
	};
	{
		Name = AL["Cadaverous Garb"];
		{ 1, 14637, "", "=q3=Cadaverous Armor",  droprate = "1%" };
		{ 2, 14640, "", "=q3=Cadaverous Gloves",  "0.82%" };
		{ 3, 14636, "", "=q3=Cadaverous Belt",  "0%" };
		{ 4, 14638, "", "=q3=Cadaverous Leggings",  droprate = "1%" };
		{ 5, 14641, "", "=q3=Cadaverous Walkers",  "0%" };
	};
	{
		Name = AL["Bloodmail Regalia"];
		{ 1, 14611, "", "=q3=Bloodmail Hauberk",  "0.54%" };
		{ 2, 14615, "", "=q3=Bloodmail Gauntlets",  "0%" };
		{ 3, 14614, "", "=q3=Bloodmail Belt",  "0%" };
		{ 4, 14612, "", "=q3=Bloodmail Legguards",  "0.42%" };
		{ 5, 14616, "", "=q3=Bloodmail Boots",  "0.36%" };
	};
	{
		Name = AL["Deathbone Guardian"];
		{ 1, 14624, "", "=q3=Deathbone Chestplate",  "0.45%" };
		{ 2, 14622, "", "=q3=Deathbone Gauntlets",  "0.45%" };
		{ 3, 14620, "", "=q3=Deathbone Girdle",  "0.67%" };
		{ 4, 14623, "", "=q3=Deathbone Legguards",  droprate = "1%" };
		{ 5, 14621, "", "=q3=Deathbone Sabatons",  "0.57%" };
	};
	{
		Name = AL["Major Mojo Infusion"];
		{ 1, 19898, "", "=q3=Seal of Jin", "=ds=#s13#, =q2=#n28#", "", droprate = "8%" };
		{ 2, 19925, "", "=q3=Band of Jin", "=ds=#s13#, =q2=#n29#", "", droprate = "10%" };
	};
	{
		Name = AL["Overlord's Resolution"];
		{ 1, 19873, "", "=q3=Overlord's Crimson Band", "=ds=#s13#, =q2=#n33#", "", droprate = "10%" };
		{ 2, 19912, "", "=q3=Overlord's Onyx Band", "=ds=#s13#, =q2=#n30#", "", droprate = "14%" };
	};
	{
		Name = AL["Primal Blessing"];
		{ 1, 19896, "", "=q4=Thekal's Grasp", "=ds=#h3#, #w13#, =q2=#n28#", "", droprate = "5%" };
		{ 2, 19910, "", "=q4=Arlokk's Grasp", "=ds=#h4#, #w13#, =q2=#n30#", "", droprate = "4%" };
	};
	{
		Name = AL["Prayer of the Primal"];
		{ 1, 19863, "", "=q3=Primalist's Seal", "=ds=#s13#, =q2=#n33#", "", droprate = "9%" };
		{ 2, 19920, "", "=q3=Primalist's Band", "=ds=#s13#, =q2=#n31#", "", droprate = "8%" };
	};
	{
		Name = AL["Zanzil's Concentration"];
		{ 1, 19905, "", "=q3=Zanzil's Band", "=ds=#s13#, =q2=#n32#", "", droprate = "9%" };
		{ 2, 19893, "", "=q3=Zanzil's Seal", "=ds=#s13#, =q2=#n33#", "", droprate = "10%" };
	};
	{
		Name = AL["The Twin Blades of Hakkari"];
		{ 1, 19865, "", "=q4=Warblade of the Hakkari", "=ds=#h3#, #w10#, =q2=#n34#", "", droprate = "5%" };
		{ 2, 19866, "", "=q4=Warblade of the Hakkari", "=ds=#h4#, #w10#, =q2=#n33#", "", droprate = "4%" };
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
		{ 1, 19955, "", "=q4=Wushoolay's Charm of Nature" };
		{ 2, 19613, "", "=q4=Pristine Enchanted South Seas Kelp", "=ds=#r5#" };
		{ 3, 19838, "", "=q4=Zandalar Haruspex's Tunic", "=q4=#zgt9#, =ds=#r4#" };
		{ 4, 19839, "", "=q4=Zandalar Haruspex's Belt", "=q4=#zgt4#, =ds=#r3#" };
		{ 5, 19840, "", "=q4=Zandalar Haruspex's Bracers", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Predator's Armor"];
		{ 1, 19953, "", "=q4=Renataki's Charm of Beasts" };
		{ 2, 19621, "", "=q4=Maelstrom's Wrath", "=ds=#r5#" };
		{ 3, 19831, "", "=q4=Zandalar Predator's Mantle", "=q4=#zgt6#, =ds=#r4#" };
		{ 4, 19832, "", "=q4=Zandalar Predator's Belt", "=q4=#zgt2#, =ds=#r3#" };
		{ 5, 19833, "", "=q4=Zandalar Predator's Bracers", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Illusionist's Attire"];
		{ 1, 19959, "", "=q4=Hazza'rah's Charm of Magic" };
		{ 2, 19601, "", "=q4=Jewel of Kajaro", "=ds=#r5#" };
		{ 3, 20034, "", "=q4=Zandalar Illusionist's Robe", "=q4=#zgt1#, =ds=#r4#" };
		{ 4, 19845, "", "=q4=Zandalar Illusionist's Mantle", "=q4=#zgt2#, =ds=#r3#" };
		{ 5, 19846, "", "=q4=Zandalar Illusionist's Wraps", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Freethinker's Armor"];
		{ 1, 19952, "", "=q4=Gri'lek's Charm of Valor" };
		{ 2, 19588, "", "=q4=Hero's Brand", "=ds=#r5#" };
		{ 3, 19825, "", "=q4=Zandalar Freethinker's Breastplate", "=q4=#zgt9#, =ds=#r4#" };
		{ 4, 19826, "", "=q4=Zandalar Freethinker's Belt", "=q4=#zgt2#, =ds=#r3#" };
		{ 5, 19827, "", "=q4=Zandalar Freethinker's Armguards", "=q4=#zgt3#, =ds=#r2#" };
	};
	{
		Name = AL["Confessor's Raiment"];
		{ 1, 19958, "", "=q4=Hazza'rah's Charm of Healing" };
		{ 2, 19594, "", "=q4=The All-Seeing Eye of Zuldazar", "=ds=#r5#" };
		{ 3, 19841, "", "=q4=Zandalar Confessor's Mantle", "=q4=#zgt6#, =ds=#r4#" };
		{ 4, 19842, "", "=q4=Zandalar Confessor's Bindings", "=q4=#zgt4#, =ds=#r3#" };
		{ 5, 19843, "", "=q4=Zandalar Confessor's Wraps", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Madcap's Outfit"];
		{ 1, 19954, "", "=q4=Renataki's Charm of Trickery" };
		{ 2, 19617, "", "=q4=Zandalarian Shadow Mastery Talisman", "=ds=#r5#" };
		{ 3, 19834, "", "=q4=Zandalar Madcap's Tunic", "=q4=#zgt6#, =ds=#r4#" };
		{ 4, 19835, "", "=q4=Zandalar Madcap's Mantle", "=q4=#zgt7#, =ds=#r3#" };
		{ 5, 19836, "", "=q4=Zandalar Madcap's Bracers", "=q4=#zgt8#, =ds=#r2#" };
	};
	{
		Name = AL["Augur's Regalia"];
		{ 1, 19956, "", "=q4=Wushoolay's Charm of Spirits" };
		{ 2, 19609, "", "=q4=Unmarred Vision of Voodress", "=ds=#r5#" };
		{ 3, 19828, "", "=q4=Zandalar Augur's Hauberk", "=q4=#zgt9#, =ds=#r4#" };
		{ 4, 19829, "", "=q4=Zandalar Augur's Belt", "=q4=#zgt7#, =ds=#r3#" };
		{ 5, 19830, "", "=q4=Zandalar Augur's Bracers", "=q4=#zgt8#, =ds=#r2#" };
	};
	{
		Name = AL["Demoniac's Threads"];
		{ 1, 19957, "", "=q4=Hazza'rah's Charm of Destruction" };
		{ 2, 19605, "", "=q4=Kezan's Unstoppable Taint", "=ds=#r5#" };
		{ 3, 20033, "", "=q4=Zandalar Demoniac's Robe", "=q4=#zgt1#, =ds=#r4#" };
		{ 4, 19849, "", "=q4=Zandalar Demoniac's Mantle", "=q4=#zgt4#, =ds=#r3#" };
		{ 5, 19848, "", "=q4=Zandalar Demoniac's Wraps", "=q4=#zgt5#, =ds=#r2#" };
	};
	{
		Name = AL["Vindicator's Battlegear"];
		{ 1, 19951, "", "=q4=Gri'lek's Charm of Might" };
		{ 2, 19577, "", "=q4=Rage of Mugamba", "=ds=#r5#" };
		{ 3, 19822, "", "=q4=Zandalar Vindicator's Breastplate", "=q4=#zgt1#, =ds=#r4#" };
		{ 4, 19823, "", "=q4=Zandalar Vindicator's Belt", "=q4=#zgt7#, =ds=#r3#" };
		{ 5, 19824, "", "=q4=Zandalar Vindicator's Armguards", "=q4=#zgt8#, =ds=#r2#" };
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
		{ 1, 1506017, "", "=q4=Locket of Unending Life", "=q4=#aq20t1#, =ds=#r5#" };
		{ 2, 21409, "", "=q4=Cloak of Unending Life", "=q3=#aq20t5#, =ds=#r4#" };
		{ 3, 21408, "", "=q4=Band of Unending Life", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Trappings of the Unseen Path"];
		{ 1, 1506018, "", "=q4=Choker of the Unseen Path", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 21403, "", "=q4=Cloak of the Unseen Path", "=q3=#aq20t5#, =ds=#r4#" };
		{ 3, 21402, "", "=q4=Signet of the Unseen Path", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Trappings of Vaulted Secrets"];
		{ 1, 1506021, "", "=q4=Charm of Vaulted Secrets", "=q4=#aq20t1#, =ds=#r5#" };
		{ 2, 21415, "", "=q4=Drape of Vaulted Secrets", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 21414, "", "=q4=Band of Vaulted Secrets", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Battlegear of Eternal Justice"];
		{ 1, 1506020, "", "=q4=Medallion of Eternal Justice", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 21397, "", "=q4=Cape of Eternal Justice", "=q3=#aq20t5#, =ds=#r4#" };
		{ 3, 21396, "", "=q4=Ring of Eternal Justice", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Finery of Infinite Wisdom"];
		{ 1, 1506023, "", "=q4=Bayadere of Infinite Wisdom", "=q4=#aq20t1#, =ds=#r5#" };
		{ 2, 21412, "", "=q4=Shroud of Infinite Wisdom", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 21411, "", "=q4=Ring of Infinite Wisdom", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Emblems of Veiled Shadows"];
		{ 1, 1506021, "", "=q4=Charm of Vaulted Secrets", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 21406, "", "=q4=Cloak of Veiled Shadows", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 21405, "", "=q4=Band of Veiled Shadows", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Gift of the Gathering Storm"];
		{ 1, 1506024, "", "=q4=Necklace of the Gathering Storm", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 21400, "", "=q4=Cloak of the Gathering Storm", "=q3=#aq20t5#, =ds=#r4#" };
		{ 3, 21399, "", "=q4=Ring of the Gathering Storm", "=q3=#aq20t3#, =ds=#r3#" };
	};
	{
		Name = AL["Implements of Unspoken Names"];
		{ 1, 1506026, "", "=q4=Bayadere of Unspoken Names", "=q4=#aq20t1#, =ds=#r5#" };
		{ 2, 21418, "", "=q4=Shroud of Unspoken Names", "=q3=#aq20t5#, =ds=#r4#" };
		{ 3, 21417, "", "=q4=Ring of Unspoken Names", "=q3=#aq20t4#, =ds=#r3#" };
	};
	{
		Name = AL["Battlegear of Unyielding Strength"];
		{ 1, 1506025, "", "=q4=Collar of Unyielding Strength", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 21394, "", "=q4=Drape of Unyielding Strength", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 21393, "", "=q4=Signet of Unyielding Strength", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Keepsakes of Endless Machinations"];
		{ 1, 1506027, "", "=q4=Choker of Endless Machinations", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506028, "", "=q4=Shroud of Endless Machinations", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506029, "", "=q4=Loop of Endless Machinations", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Regalia of Roaring Earth"];
		{ 1, 1506019, "", "=q4=Pendant of Roaring Earth", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506031, "", "=q4=Drape of Roaring Earth", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506030, "", "=q4=Signet of Roaring Earth", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Relics of Ferocious Vigor"];
		{ 1, 1506034, "", "=q4=Choker of Ferocious Vigor", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506033, "", "=q4=Cape of Ferocious Vigor", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506032, "", "=q4=Signet of Ferocious Vigor", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Laurels of the Faithful Zealot"];
		{ 1, 1506037, "", "=q4=Locket of the Faithful Zealot", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506036, "", "=q4=Shroud of the Faithful Zealot", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506035, "", "=q4=Band of the Faithful Zealot", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Instruments of Masterful Technique"];
		{ 1, 1506040, "", "=q4=Locket of Masterful Technique", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506039, "", "=q4=Drape of Masterful Technique", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506038, "", "=q4=Band of Masterful Technique", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Decorations of Martial Prowess"];
		{ 1, 1506043, "", "=q4=Lariat of Martial Prowess", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506042, "", "=q4=Cloak of Martial Prowess", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506041, "", "=q4=Ring of Martial Prowess", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Trophies of Unrivaled Rage"];
		{ 1, 1506046, "", "=q4=Collar of Unrivaled Rage", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506045, "", "=q4=Cloak of Unrivaled Rage", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506044, "", "=q4=Signet of Unrivaled Rage", "=q3=#aq20t3#=ds=, #r3#" };
	};
	{
		Name = AL["Remnants of Expansive Research"];
		{ 1, 1506049, "", "=q4=Bayadere of Expansive Research", "=q4=#aq20t6#, =ds=#r5#" };
		{ 2, 1506048, "", "=q4=Drape of Expansive Research", "=q3=#aq20t2#, =ds=#r4#" };
		{ 3, 1506047, "", "=q4=Loop of Expansive Research", "=q3=#aq20t3#=ds=, #r3#" };
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
		{ 1, 21357, "", "=q4=Genesis Vest" };
		{ 2, 21353, "", "=q4=Genesis Helm" };
		{ 3, 21356, "", "=q4=Genesis Trousers" };
		{ 4, 21354, "", "=q4=Genesis Shoulderpads" };
		{ 5, 21355, "", "=q4=Genesis Boots" };
	};
	{
		Name = AL["Druid"] .. " - Tank";
		{ 1, 1507029, "", "=q4=Genesis Carapace" };
		{ 2, 1507025, "", "=q4=Genesis Mask" };
		{ 3, 1507028, "", "=q4=Genesis Pants" };
		{ 4, 1507026, "", "=q4=Genesis Shoulderpads" };
		{ 5, 1507027, "", "=q4=Genesis Treads" };
	};
	{
		Name = AL["Druid"] .. " - Feral";
		{ 1, 1507024, "", "=q4=Genesis Garb" };
		{ 2, 1507020, "", "=q4=Genesis Visor" };
		{ 3, 1507023, "", "=q4=Genesis Legguards" };
		{ 4, 1507021, "", "=q4=Genesis Pauldrons" };
		{ 5, 1507022, "", "=q4=Genesis Footwraps" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 21370, "", "=q4=Striker's Hauberk" };
		{ 2, 21366, "", "=q4=Striker's Diadem" };
		{ 3, 21368, "", "=q4=Striker's Leggings" };
		{ 4, 21367, "", "=q4=Striker's Pauldrons" };
		{ 5, 21365, "", "=q4=Striker's Footguards" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 21343, "", "=q4=Enigma Robes" };
		{ 2, 21347, "", "=q4=Enigma Circlet" };
		{ 3, 21346, "", "=q4=Enigma Leggings" };
		{ 4, 21345, "", "=q4=Enigma Shoulderpads" };
		{ 5, 21344, "", "=q4=Enigma Boots" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		{ 1, 21389, "", "=q4=Avenger's Breastplate" };
		{ 2, 21387, "", "=q4=Avenger's Crown" };
		{ 3, 21390, "", "=q4=Avenger's Legguards" };
		{ 4, 21391, "", "=q4=Avenger's Pauldrons" };
		{ 5, 21388, "", "=q4=Avenger's Greaves" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - Tank";
		{ 1, 1507030, "", "=q4=Avenger's Carapace" };
		{ 2, 1507031, "", "=q4=Avenger's Laurels" };
		{ 3, 1507033, "", "=q4=Avenger's Legplates" };
		{ 4, 1507034, "", "=q4=Avenger's Shoulderguards" };
		{ 5, 1507032, "", "=q4=Avenger's Sabatons" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		{ 1, 21351, "", "=q4=Vestments of the Oracle" };
		{ 2, 21348, "", "=q4=Tiara of the Oracle" };
		{ 3, 21352, "", "=q4=Trousers of the Oracle" };
		{ 4, 21350, "", "=q4=Mantle of the Oracle" };
		{ 5, 21349, "", "=q4=Footwraps of the Oracle" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 21364, "", "=q4=Deathdealer's Vest" };
		{ 2, 21360, "", "=q4=Deathdealer's Helm" };
		{ 3, 21362, "", "=q4=Deathdealer's Leggings" };
		{ 4, 21361, "", "=q4=Deathdealer's Spaulders" };
		{ 5, 21359, "", "=q4=Deathdealer's Boots" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		{ 1, 21374, "", "=q4=Stormcaller's Hauberk" };
		{ 2, 21372, "", "=q4=Stormcaller's Diadem" };
		{ 3, 21375, "", "=q4=Stormcaller's Leggings" };
		{ 4, 21376, "", "=q4=Stormcaller's Pauldrons" };
		{ 5, 21373, "", "=q4=Stormcaller's Footguards" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		{ 1, 1507017, "", "=q4=Stormcaller's Chestguard" };
		{ 2, 1507015, "", "=q4=Stormcaller's Crown" };
		{ 3, 1507018, "", "=q4=Stormcaller's Greaves" };
		{ 4, 1507019, "", "=q4=Stormcaller's Epaulets" };
		{ 5, 1507016, "", "=q4=Stormcaller's Stompers" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		{ 1, 21334, "", "=q4=Doomcaller's Robes" };
		{ 2, 21337, "", "=q4=Doomcaller's Circlet" };
		{ 3, 21336, "", "=q4=Doomcaller's Trousers" };
		{ 4, 21335, "", "=q4=Doomcaller's Mantle" };
		{ 5, 21338, "", "=q4=Doomcaller's Footwraps" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		{ 1, 21331, "", "=q4=Conqueror's Breastplate" };
		{ 2, 21329, "", "=q4=Conqueror's Crown" };
		{ 3, 21332, "", "=q4=Conqueror's Legguards" };
		{ 4, 21330, "", "=q4=Conqueror's Spaulders" };
		{ 5, 21333, "", "=q4=Conqueror's Greaves" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Parry Tank";
		{ 1, 1507002, "", "=q4=Conqueror's Carapace" };
		{ 2, 1507000, "", "=q4=Conqueror's Tusks" };
		{ 3, 1507003, "", "=q4=Conqueror's Tassets" };
		{ 4, 1507001, "", "=q4=Conqueror's Shoulderplates" };
		{ 5, 1507004, "", "=q4=Conqueror's Advance" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		{ 1, 10912, "", "=q4=Conqueror's Chestplate" };
		{ 2, 10910, "", "=q4=Conqueror's Headguard" };
		{ 3, 10913, "", "=q4=Conqueror's Platelegs" };
		{ 4, 10911, "", "=q4=Conqueror's Shoulderpads" };
		{ 5, 10914, "", "=q4=Conqueror's War Stompers" };
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
		{ 1, 867, "", "=q4=Gloves of Holy Might" };
		{ 2, 1981, "", "=q4=Icemail Jerkin" };
		{ 3, 1980, "", "=q4=Underworld Band" };
		{ 16, 869, "", "=q4=Dazzling Longsword" };
		{ 17, 1982, "", "=q4=Nightblade" };
		{ 18, 870, "", "=q4=Fiery War Axe" };
		{ 19, 868, "", "=q4=Ardent Custodian" };
		{ 20, 873, "", "=q4=Staff of Jordan" };
		{ 21, 1204, "", "=q4=The Green Tower" };
		{ 22, 2825, "", "=q4=Bow of Searing Arrows" };
	};
	{
		Name = AL["Level 40-49"];
		{ 1, 3075, "", "=q4=Eye of Flame" };
		{ 2, 940, "", "=q4=Robes of Insight" };
		{ 3, 14551, "", "=q4=Edgemaster's Handguards" };
		{ 4, 17007, "", "=q4=Stonerender Gauntlets" };
		{ 5, 14549, "", "=q4=Boots of Avoidance" };
		{ 6, 1315, "", "=q4=Lei of Lilies" };
		{ 7, 942, "", "=q4=Freezing Band" };
		{ 8, 1447, "", "=q4=Ring of Saviors" };
		{ 16, 2164, "", "=q4=Gut Ripper" };
		{ 17, 2163, "", "=q4=Shadowblade" };
		{ 18, 809, "", "=q4=Bloodrazor" };
		{ 19, 871, "", "=q4=Flurry Axe" };
		{ 20, 2291, "", "=q4=Kang the Decapitator" };
		{ 21, 810, "", "=q4=Hammer of the Northern Wind" };
		{ 22, 2915, "", "=q4=Taran Icebreaker" };
		{ 23, 812, "", "=q4=Glowing Brightwood Staff" };
		{ 24, 943, "", "=q4=Warden Staff" };
		{ 25, 1169, "", "=q4=Blackskull Shield" };
		{ 26, 1979, "", "=q4=Wall of the Dead" };
		{ 27, 2824, "", "=q4=Hurricane" };
		{ 28, 2100, "", "=q4=Precisely Calibrated Boomstick" };
	};
	{
		Name = AL["Level 50-60"];
		{ 1, 3475, "", "=q4=Cloak of Flames" };
		{ 2, 14553, "", "=q4=Sash of Mercy" };
		{ 3, 2245, "", "=q4=Helm of Narv" };
		{ 4, 14552, "", "=q4=Stockade Pauldrons" };
		{ 5, 14554, "", "=q4=Cloudkeeper Legplates" };
		{ 6, 1443, "", "=q4=Jeweled Amulet of Cainwyn" };
		{ 7, 14558, "", "=q4=Lady Maye's Pendant" };
		{ 8, 2246, "", "=q4=Myrmidon's Signet" };
		{ 9, 833, "", "=q4=Lifestone" };
		{ 10, 14557, "", "=q4=The Lion Horn of Stormwind" };
		{ 16, 14555, "", "=q4=Alcor's Sunrazor" };
		{ 17, 2244, "", "=q4=Krol Blade" };
		{ 18, 1728, "", "=q4=Teebu's Blazing Longsword" };
		{ 19, 2801, "", "=q4=Blade of Hanna" };
		{ 20, 647, "", "=q4=Destiny" };
		{ 21, 811, "", "=q4=Axe of the Deep Woods" };
		{ 22, 1263, "", "=q4=Brain Hacker" };
		{ 23, 2243, "", "=q4=Hand of Edward the Odd" };
		{ 24, 944, "", "=q4=Elemental Mage Staff" };
		{ 25, 1168, "", "=q4=Skullflame Shield" };
		{ 26, 2099, "", "=q4=Dwarven Hand Cannon" };
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
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#", "=q5=#b1#" };
		{ 2, 19030, "", "=q4=Stormpike Battle Charger", "", "50000 #alliance#" };
		{ 3, 19045, "", "=q3=Stormpike Battle Standard", "=ds=#e14#", "15000 #alliance#" };
		{ 4, 19032, "", "=q1=Stormpike Battle Tabard", "", "15000 #alliance#" };
		{ 6, 19316, "", "=q2=Ice Threaded Arrow", "", "60 #silver# 1 #faction#" };
		{ 7, 17348, "", "=q1=Major Healing Draught", "", "10 #silver# 8 #faction#" };
		{ 8, 17349, "", "=q1=Superior Healing Draught", "", "5 #silver# 1 #faction#" };
		{ 9, 19301, "", "=q1=Alterac Manna Biscuit", "", "70 #silver#" };
		{ 10, 19307, "", "=q1=Alterac Heavy Runecloth Bandage", "=ds=#e5#", "80 #silver#" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#", "=q5=#b2#" };
		{ 17, 19029, "", "=q4=Horn of the Frostwolf Howler", "", "50000 #horde#" };
		{ 18, 19046, "", "=q3=Frostwolf Battle Standard", "=ds=#e14#", "15000 #horde#" };
		{ 19, 19031, "", "=q1=Frostwolf Battle Tabard", "", "15000 #horde#" };
		{ 21, 19317, "", "=q2=Ice Threaded Bullet", "", "60 #silver# 1 #faction#" };
		{ 22, 17351, "", "=q1=Major Mana Draught", "", "10 #silver# 8 #faction#" };
		{ 23, 17352, "", "=q1=Superior Mana Draught", "", "5 #silver# 1 #faction#" };
		{ 24, 19318, "", "=q1=Bottled Alterac Spring Water", "", "50 #silver#" };
	};
	{
		Name = "Alliance";
		{ 2, 19086, "", "=q3=Stormpike Sage's Cloak", "", "1600 #alliance#" };
		{ 3, 19084, "", "=q3=Stormpike Soldier's Cloak", "", "1600 #alliance#" };
		{ 4, 19094, "", "=q3=Stormpike Cloth Girdle", "", "3000 #alliance#" };
		{ 5, 19093, "", "=q3=Stormpike Leather Girdle", "", "3000 #alliance#" };
		{ 6, 19092, "", "=q3=Stormpike Mail Girdle", "", "3000 #alliance#" };
		{ 7, 19091, "", "=q3=Stormpike Plate Girdle", "", "3000 #alliance#" };
		{ 8, 19098, "", "=q3=Stormpike Sage's Pendant", "", "1600 #alliance#" };
		{ 9, 19097, "", "=q3=Stormpike Soldier's Pendant", "", "1600 #alliance#" };
		{ 10, 19100, "", "=q3=Electrified Dagger", "", "2400 #alliance#" };
		{ 11, 19104, "", "=q3=Stormstrike Hammer", "", "2400 #alliance#" };
		{ 12, 19102, "", "=q3=Crackling Staff", "", "3000 #alliance#" };
		{ 13, 19320, "", "=q3=Gnoll Skin Bandolier", "=ds=#w20#", "1600 #alliance#" };
		{ 14, 19319, "", "=q3=Harpy Hide Quiver", "=ds=#w19#", "1600 #alliance#" };
		{ 17, 19325, "", "=q4=Don Julio's Band", "", "5000 #faction#" };
		{ 18, 21563, "", "=q4=Don Rodrigo's Band", "", "5000 #faction#" };
		{ 19, 19312, "", "=q4=Lei of the Lifegiver", "", "5000 #faction#" };
		{ 20, 19315, "", "=q4=Therazane's Touch", "", "5000 #faction#" };
		{ 21, 19308, "", "=q4=Tome of Arcane Domination", "", "5000 #faction#" };
		{ 22, 19309, "", "=q4=Tome of Shadow Force", "", "5000 #faction#" };
		{ 23, 19311, "", "=q4=Tome of Fiery Arcana", "", "5000 #faction#" };
		{ 24, 19310, "", "=q4=Tome of the Ice Lord", "", "5000 #faction#" };
		{ 25, 19324, "", "=q4=The Lobotomizer", "", "5000 #faction#" };
		{ 26, 19321, "", "=q4=The Immovable Object", "", "5000 #faction#" };
		{ 27, 19323, "", "=q4=The Unstoppable Force", "", "5000 #faction#" };
	};
	{
		Name = "Horde";
		{ 2, 19085, "", "=q3=Frostwolf Advisor's Cloak", "", "1600 #horde#" };
		{ 3, 19083, "", "=q3=Frostwolf Legionnaire's Cloak", "", "1600 #horde#" };
		{ 4, 19090, "", "=q3=Frostwolf Cloth Belt", "", "3000 #horde#" };
		{ 5, 19089, "", "=q3=Frostwolf Leather Belt", "", "3000 #horde#" };
		{ 6, 19088, "", "=q3=Frostwolf Mail Belt", "", "3000 #horde#" };
		{ 7, 19087, "", "=q3=Frostwolf Plate Belt", "", "3000 #horde#" };
		{ 8, 19096, "", "=q3=Frostwolf Advisor's Pendant", "", "1600 #horde#" };
		{ 9, 19095, "", "=q3=Frostwolf Legionnaire's Pendant", "", "1600 #horde#" };
		{ 10, 19099, "", "=q3=Glacial Blade", "", "2400 #horde#" };
		{ 11, 19103, "", "=q3=Frostbite", "", "2400 #horde#" };
		{ 12, 19101, "", "=q3=Whiteout Staff", "", "3000 #horde#" };
		{ 13, 19320, "", "=q3=Gnoll Skin Bandolier", "=ds=#w20#", "1600 #horde#" };
		{ 14, 19319, "", "=q3=Harpy Hide Quiver", "=ds=#w19#", "1600 #horde#" };
		{ 17, 19325, "", "=q4=Don Julio's Band", "", "5000 #faction#" };
		{ 18, 21563, "", "=q4=Don Rodrigo's Band", "", "5000 #faction#" };
		{ 19, 19312, "", "=q4=Lei of the Lifegiver", "", "5000 #faction#" };
		{ 20, 19315, "", "=q4=Therazane's Touch", "", "5000 #faction#" };
		{ 21, 19308, "", "=q4=Tome of Arcane Domination", "", "5000 #faction#" };
		{ 22, 19309, "", "=q4=Tome of Shadow Force", "", "5000 #faction#" };
		{ 23, 19311, "", "=q4=Tome of Fiery Arcana", "", "5000 #faction#" };
		{ 24, 19310, "", "=q4=Tome of the Ice Lord", "", "5000 #faction#" };
		{ 25, 19324, "", "=q4=The Lobotomizer", "", "5000 #faction#" };
		{ 26, 19321, "", "=q4=The Immovable Object", "", "5000 #faction#" };
		{ 27, 19323, "", "=q4=The Unstoppable Force", "", "5000 #faction#" };
	};
};

--------------------
--- Arathi Basin ---
--------------------

AtlasLoot_Data["AB_A"] = {
	Name = BabbleZone["Arathi Basin"] .. " (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		{ 1, 17349, "", "=q1=Superior Healing Draught", "", "5 #silver# 1 #alliance#" };
		{ 2, 17352, "", "=q1=Superior Mana Draught", "", "5 #silver# 1 #alliance#" };
		{ 3, 20225, "", "=q1=Highlander's Enriched Ration", "", "18 #silver#" };
		{ 4, 20227, "", "=q1=Highlander's Iron Ration", "", "13,5 #silver#" };
		{ 5, 20226, "", "=q1=Highlander's Field Ration", "", "9 #silver#" };
		{ 6, 20243, "", "=q1=Highlander's Runecloth Bandage", "", "18 #silver#" };
		{ 7, 20237, "", "=q1=Highlander's Mageweave Bandage", "", "13,5 #silver#" };
		{ 8, 20244, "", "=q1=Highlander's Silk Bandage", "", "9 #silver#" };
		{ 9, 21119, "", "=q3=Talisman of Arathor", "", "300 #alliance#" };
		{ 10, 21118, "", "=q3=Talisman of Arathor", "", "300 #alliance#" };
		{ 11, 21117, "", "=q3=Talisman of Arathor", "", "400 #alliance#" };
		{ 12, 20071, "", "=q3=Talisman of Arathor", "", "3000 #alliance#" };
	};
	{
		Name = AL["Level 60 Rewards"];
		{ 1, 20073, "", "=q4=Cloak of the Honor Guard", "", "5000 #alliance#" };
		{ 2, 20070, "", "=q4=Sageclaw", "", "9000 #alliance#" };
		{ 3, 20069, "", "=q4=Ironbark Staff", "", "16000 #alliance#" };
	};
	{
		Name = AL["Level 40-49 Rewards"];
		{ 1, 20097, "", "=q3=Highlander's Cloth Girdle", "", "400 #alliance#" };
		{ 2, 20094, "", "=q3=Highlander's Cloth Boots", "", "400 #alliance#" };
		{ 3, 20115, "", "=q3=Highlander's Leather Girdle", "", "400 #alliance#" };
		{ 4, 20103, "", "=q3=Highlander's Lizardhide Girdle", "", "400 #alliance#" };
		{ 5, 20112, "", "=q3=Highlander's Leather Boots", "", "400 #alliance#" };
		{ 6, 20100, "", "=q3=Highlander's Lizardhide Boots", "", "400 #alliance#" };
		{ 7, 20089, "", "=q3=Highlander's Chain Girdle", "", "300 #alliance#" };
		{ 8, 20088, "", "=q3=Highlander's Chain Girdle", "", "400 #alliance#" };
		{ 9, 20119, "", "=q3=Highlander's Mail Girdle", "", "300 #alliance#" };
		{ 10, 20118, "", "=q3=Highlander's Mail Girdle", "", "400 #alliance#" };
		{ 11, 20092, "", "=q3=Highlander's Chain Greaves", "", "300 #alliance#" };
		{ 12, 20091, "", "=q3=Highlander's Chain Greaves", "", "400 #alliance#" };
		{ 13, 20122, "", "=q3=Highlander's Mail Greaves", "", "300 #alliance#" };
		{ 14, 20121, "", "=q3=Highlander's Mail Greaves", "", "400 #alliance#" };
		{ 15, 20107, "", "=q3=Highlander's Lamellar Girdle", "", "300 #alliance#" };
		{ 16, 20106, "", "=q3=Highlander's Lamellar Girdle", "", "400 #alliance#" };
		{ 17, 20125, "", "=q3=Highlander's Plate Girdle", "", "300 #alliance#" };
		{ 18, 20124, "", "=q3=Highlander's Plate Girdle", "", "400 #alliance#" };
		{ 19, 20110, "", "=q3=Highlander's Lamellar Greaves", "", "300 #alliance#" };
		{ 20, 20109, "", "=q3=Highlander's Lamellar Greaves", "", "400 #alliance#" };
		{ 21, 20128, "", "=q3=Highlander's Plate Greaves", "", "300 #alliance#" };
		{ 22, 20127, "", "=q3=Highlander's Plate Greaves", "", "400 #alliance#" };
	};
	{
		Name = AL["Level 30-39 Rewards"];
		{ 1, 20098, "", "=q3=Highlander's Cloth Girdle", "", "300 #alliance#" };
		{ 2, 20095, "", "=q3=Highlander's Cloth Boots", "", "300 #alliance#" };
		{ 3, 20116, "", "=q3=Highlander's Leather Girdle", "", "300 #alliance#" };
		{ 4, 20104, "", "=q3=Highlander's Lizardhide Girdle", "", "300 #alliance#" };
		{ 5, 20113, "", "=q3=Highlander's Leather Boots", "", "300 #alliance#" };
		{ 6, 20101, "", "=q3=Highlander's Lizardhide Boots", "", "300 #alliance#" };
	};
	{
		Name = AL["Level 20-29 Rewards"];
		{ 1, 20099, "", "=q3=Highlander's Cloth Girdle", "", "300 #alliance#" };
		{ 2, 20096, "", "=q3=Highlander's Cloth Boots", "", "300 #alliance#" };
		{ 3, 20117, "", "=q3=Highlander's Leather Girdle", "", "300 #alliance#" };
		{ 4, 20105, "", "=q3=Highlander's Lizardhide Girdle", "", "300 #alliance#" };
		{ 5, 20120, "", "=q3=Highlander's Mail Girdle", "", "300 #alliance#" };
		{ 6, 20090, "", "=q3=Highlander's Padded Girdle", "", "300 #alliance#" };
		{ 7, 20114, "", "=q3=Highlander's Leather Boots", "", "300 #alliance#" };
		{ 8, 20102, "", "=q3=Highlander's Lizardhide Boots", "", "300 #alliance#" };
		{ 9, 20123, "", "=q3=Highlander's Mail Greaves", "", "300 #alliance#" };
		{ 10, 20093, "", "=q3=Highlander's Padded Greaves", "", "300 #alliance#" };
		{ 11, 20108, "", "=q3=Highlander's Lamellar Girdle", "", "300 #alliance#" };
		{ 12, 20126, "", "=q3=Highlander's Mail Girdle", "", "300 #alliance#" };
		{ 13, 20111, "", "=q3=Highlander's Lamellar Greaves", "", "300 #alliance#" };
		{ 14, 20129, "", "=q3=Highlander's Mail Greaves", "", "300 #alliance#" };
	};
	{
		Name = AL["The Highlander's Intent"];
		{ 1, 20061, "", "=q4=Highlander's Epaulets", "", "9000 #alliance#" };
		{ 2, 20047, "", "=q3=Highlander's Cloth Girdle", "", "3000 #alliance#" };
		{ 3, 20054, "", "=q3=Highlander's Cloth Boots", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Purpose"];
		{ 1, 20059, "", "=q4=Highlander's Leather Shoulders", "", "9000 #alliance#" };
		{ 2, 20045, "", "=q3=Highlander's Leather Girdle", "", "3000 #alliance#" };
		{ 3, 20052, "", "=q3=Highlander's Leather Boots", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Will"];
		{ 1, 20060, "", "=q4=Highlander's Lizardhide Shoulders", "", "9000 #alliance#" };
		{ 2, 20046, "", "=q3=Highlander's Lizardhide Girdle", "", "3000 #alliance#" };
		{ 3, 20053, "", "=q3=Highlander's Lizardhide Boots", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Determination"];
		{ 1, 20055, "", "=q4=Highlander's Chain Pauldrons", "", "9000 #alliance#" };
		{ 2, 20043, "", "=q3=Highlander's Chain Girdle", "", "3000 #alliance#" };
		{ 3, 20050, "", "=q3=Highlander's Chain Greaves", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Fortitude"];
		{ 1, 20056, "", "=q4=Highlander's Mail Pauldrons", "", "9000 #alliance#" };
		{ 2, 20044, "", "=q3=Highlander's Mail Girdle", "", "3000 #alliance#" };
		{ 3, 20051, "", "=q3=Highlander's Mail Greaves", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Resolution"];
		{ 1, 20057, "", "=q4=Highlander's Plate Spaulders", "", "9000 #alliance#" };
		{ 2, 20041, "", "=q3=Highlander's Plate Girdle", "", "3000 #alliance#" };
		{ 3, 20048, "", "=q3=Highlander's Plate Greaves", "", "3000 #alliance#" };
	};
	{
		Name = AL["The Highlander's Resolve"];
		{ 1, 20058, "", "=q4=Highlander's Lamellar Spaulders", "", "9000 #alliance#" };
		{ 2, 20042, "", "=q3=Highlander's Lamellar Girdle", "", "3000 #alliance#" };
		{ 3, 20049, "", "=q3=Highlander's Lamellar Greaves", "", "3000 #alliance#" };
	};
};

AtlasLoot_Data["AB_H"] = {
	Name = BabbleZone["Arathi Basin"] .. " (Horde)";
	{
		Name = AL["Misc. Rewards"];
		{ 1, 17349, "", "=q1=Superior Healing Draught", "", "5 #silver# 5 #horde#" };
		{ 2, 17352, "", "=q1=Superior Mana Draught", "", "5 #silver# 5 #horde#" };
		{ 3, 20222, "", "=q1=Defiler's Enriched Ration", "", "18 #silver#" };
		{ 4, 20224, "", "=q1=Defiler's Iron Ration", "", "15 #silver#" };
		{ 5, 20223, "", "=q1=Defiler's Field Ration", "", "9 #silver#" };
		{ 6, 20234, "", "=q1=Defiler's Runecloth Bandage", "", "18 #silver#" };
		{ 7, 20232, "", "=q1=Defiler's Mageweave Bandage", "", "15 #silver#" };
		{ 8, 20235, "", "=q1=Defiler's Silk Bandage", "", "9 #silver#" };
		{ 9, 21116, "", "=q3=Defiler's Talisman", "", "300 #horde#" };
		{ 10, 21120, "", "=q3=Defiler's Talisman", "", "300 #horde#" };
		{ 11, 21115, "", "=q3=Defiler's Talisman", "", "400 #horde#" };
		{ 12, 20072, "", "=q3=Defiler's Talisman", "", "3000 #horde#" };
	};
	{
		Name = AL["Level 60 Rewards"];
		{ 1, 20068, "", "=q4=Deathguard's Cloak", "", "5000 #horde#" };
		{ 2, 20214, "", "=q4=Mindfang", "", "9000 #horde#" };
		{ 3, 20220, "", "=q4=Ironbark Staff", "", "16000 #horde#" };
	};
	{
		Name = AL["Level 40-49 Rewards"];
		{ 1, 20165, "", "=q3=Defiler's Cloth Girdle", "", "400 #horde#" };
		{ 2, 20160, "", "=q3=Defiler's Cloth Boots", "", "400 #horde#" };
		{ 3, 20193, "", "=q3=Defiler's Leather Girdle", "", "400 #horde#" };
		{ 4, 20174, "", "=q3=Defiler's Lizardhide Girdle", "", "400 #horde#" };
		{ 5, 20189, "", "=q3=Defiler's Leather Boots", "", "400 #horde#" };
		{ 6, 20170, "", "=q3=Defiler's Lizardhide Boots", "", "400 #horde#" };
		{ 7, 20153, "", "=q3=Defiler's Chain Girdle", "", "300 #horde#" };
		{ 8, 20151, "", "=q3=Defiler's Chain Girdle", "", "400 #horde#" };
		{ 9, 20198, "", "=q3=Defiler's Mail Girdle", "", "300 #horde#" };
		{ 10, 20196, "", "=q3=Defiler's Mail Girdle", "", "400 #horde#" };
		{ 11, 20156, "", "=q3=Defiler's Chain Greaves", "", "300 #horde#" };
		{ 12, 20155, "", "=q3=Defiler's Chain Greaves", "", "400 #horde#" };
		{ 13, 20200, "", "=q3=Defiler's Mail Greaves", "", "300 #horde#" };
		{ 14, 20202, "", "=q3=Defiler's Mail Greaves", "", "400 #horde#" };
		{ 15, 20180, "", "=q3=Defiler's Lamellar Girdle", "", "300 #horde#" };
		{ 16, 20179, "", "=q3=Defiler's Lamellar Girdle", "", "400 #horde#" };
		{ 17, 20206, "", "=q3=Defiler's Plate Girdle", "", "300 #horde#" };
		{ 18, 20205, "", "=q3=Defiler's Plate Girdle", "", "400 #horde#" };
		{ 19, 20183, "", "=q3=Defiler's Lamellar Greaves", "", "300 #horde#" };
		{ 20, 20185, "", "=q3=Defiler's Lamellar Greaves", "", "400 #horde#" };
		{ 21, 20209, "", "=q3=Defiler's Plate Greaves", "", "300 #horde#" };
		{ 22, 20211, "", "=q3=Defiler's Plate Greaves", "", "400 #horde#" };
	};
	{
		Name = AL["Level 30-39 Rewards"];
		{ 1, 20166, "", "=q3=Defiler's Cloth Girdle", "", "300 #horde#" };
		{ 2, 20161, "", "=q3=Defiler's Cloth Boots", "", "300 #horde#" };
		{ 3, 20192, "", "=q3=Defiler's Leather Girdle", "", "300 #horde#" };
		{ 4, 20173, "", "=q3=Defiler's Lizardhide Girdle", "", "300 #horde#" };
		{ 5, 20187, "", "=q3=Defiler's Leather Boots", "", "300 #horde#" };
		{ 6, 20168, "", "=q3=Defiler's Lizardhide Boots", "", "300 #horde#" };
	};
	{
		Name = AL["Level 20-29 Rewards"];
		{ 1, 20164, "", "=q3=Defiler's Cloth Girdle", "", "300 #horde#" };
		{ 2, 20162, "", "=q3=Defiler's Cloth Boots", "", "300 #horde#" };
		{ 3, 20191, "", "=q3=Defiler's Leather Girdle", "", "300 #horde#" };
		{ 4, 20172, "", "=q3=Defiler's Lizardhide Girdle", "", "300 #horde#" };
		{ 5, 20152, "", "=q3=Defiler's Chain Girdle", "", "300 #horde#" };
		{ 6, 20197, "", "=q3=Defiler's Padded Girdle", "", "300 #horde#" };
		{ 7, 20188, "", "=q3=Defiler's Leather Boots", "", "300 #horde#" };
		{ 8, 20169, "", "=q3=Defiler's Lizardhide Boots", "", "300 #horde#" };
		{ 9, 20201, "", "=q3=Defiler's Mail Greaves", "", "300 #horde#" };
		{ 0, 20157, "", "=q3=Defiler's Chain Greaves", "", "300 #horde#" };
		{ 10, 20178, "", "=q3=Defiler's Lamellar Girdle", "", "300 #horde#" };
		{ 11, 20207, "", "=q3=Defiler's Mail Girdle", "", "300 #horde#" };
		{ 12, 20182, "", "=q3=Defiler's Lamellar Greaves", "", "300 #horde#" };
		{ 13, 20210, "", "=q3=Defiler's Mail Greaves", "", "300 #horde#" };
	};
	{
		Name = AL["The Defiler's Intent"];
		{ 1, 20176, "", "=q4=Defiler's Epaulets", "", "9000 #horde#" };
		{ 2, 20163, "", "=q3=Defiler's Cloth Girdle", "", "3000 #horde#" };
		{ 3, 20159, "", "=q3=Defiler's Cloth Boots", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Purpose"];
		{ 1, 20194, "", "=q4=Defiler's Leather Shoulders", "", "9000 #horde#" };
		{ 2, 20190, "", "=q3=Defiler's Leather Girdle", "", "3000 #horde#" };
		{ 3, 20186, "", "=q3=Defiler's Leather Boots", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Will"];
		{ 1, 20175, "", "=q4=Defiler's Lizardhide Shoulders", "", "9000 #horde#" };
		{ 2, 20171, "", "=q3=Defiler's Lizardhide Girdle", "", "3000 #horde#" };
		{ 3, 20167, "", "=q3=Defiler's Lizardhide Boots", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Determination"];
		{ 1, 20158, "", "=q3=Defiler's Chain Pauldrons", "", "9000 #horde#" };
		{ 2, 20150, "", "=q3=Defiler's Chain Girdle", "", "3000 #horde#" };
		{ 3, 20154, "", "=q3=Defiler's Chain Greaves", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Fortitude"];
		{ 1, 20203, "", "=q4=Defiler's Mail Pauldrons", "", "9000 #horde#" };
		{ 2, 20195, "", "=q3=Defiler's Mail Girdle", "", "3000 #horde#" };
		{ 3, 20199, "", "=q3=Defiler's Mail Greaves", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Resolution"];
		{ 1, 20212, "", "=q4=Defiler's Plate Spaulders", "", "9000 #horde#" };
		{ 2, 20204, "", "=q3=Defiler's Plate Girdle", "", "3000 #horde#" };
		{ 3, 20208, "", "=q3=Defiler's Plate Greaves", "", "3000 #horde#" };
	};
	{
		Name = AL["The Defiler's Resolve"];
		{ 1, 20184, "", "=q4=Defiler's Lamellar Spaulders", "", "9000 #horde#" };
		{ 2, 20177, "", "=q3=Defiler's Lamellar Girdle", "", "3000 #horde#" };
		{ 3, 20181, "", "=q3=Defiler's Lamellar Greaves", "", "3000 #horde#" };
	};
};

---------------------
--- Warsong Gulch ---
---------------------

AtlasLoot_Data["WSG_A"] = {
	Name = BabbleZone["Warsong Gulch"] .. " (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		{ 1, 19506, "", "=q1=Silverwing Battle Tabard", "", "12000 #faction#" };
		{ 2, 17348, "", "=q1=Major Healing Draught", "", "10 #silver# 2 #faction#" };
		{ 3, 17349, "", "=q1=Superior Healing Draught", "", "5 #silver# 5 #faction#" };
		{ 4, 19060, "", "=q1=Warsong Gulch Enriched Ration", "", "20 #silver#" };
		{ 5, 19062, "", "=q1=Warsong Gulch Field Ration", "", "10 #silver#" };
		{ 6, 19067, "", "=q1=Warsong Gulch Mageweave Bandage", "", "15 #silver#" };
	};
	{
		Name = AL["Accessories"];
		{ 1, 20428, "", "=q3=Caretaker's Cape", "", "100 #alliance#" };
		{ 2, 19533, "", "=q3=Caretaker's Cape", "", "100 #alliance#" };
		{ 3, 19532, "", "=q3=Caretaker's Cape", "", "300 #alliance#" };
		{ 4, 19531, "", "=q3=Caretaker's Cape", "", "300 #alliance#" };
		{ 5, 19530, "", "=q3=Caretaker's Cape", "", "1600 #alliance#" };
		{ 7, 20444, "", "=q3=Sentinel's Medallion", "", "100 #alliance#" };
		{ 8, 19541, "", "=q3=Sentinel's Medallion", "", "100 #alliance#" };
		{ 9, 19540, "", "=q3=Sentinel's Medallion", "", "300 #alliance#" };
		{ 10, 19539, "", "=q3=Sentinel's Medallion", "", "300 #alliance#" };
		{ 11, 19538, "", "=q3=Sentinel's Medallion", "", "1600 #alliance#" };
		{ 13, 21568, "", "=q3=Rune of Duty", "", "300 #alliance#" };
		{ 14, 21567, "", "=q3=Rune of Duty", "", "300 #alliance#" };
		{ 16, 20431, "", "=q3=Lorekeeper's Ring", "", "100 #alliance#" };
		{ 17, 19525, "", "=q3=Lorekeeper's Ring", "", "100 #alliance#" };
		{ 18, 19524, "", "=q3=Lorekeeper's Ring", "", "300 #alliance#" };
		{ 19, 19523, "", "=q3=Lorekeeper's Ring", "", "300 #alliance#" };
		{ 20, 19522, "", "=q3=Lorekeeper's Ring", "", "1600 #alliance#" };
		{ 22, 20439, "", "=q3=Protector's Band", "", "100 #alliance#" };
		{ 23, 19517, "", "=q3=Protector's Band", "", "100 #alliance#" };
		{ 24, 19515, "", "=q3=Protector's Band", "", "300 #alliance#" };
		{ 25, 19516, "", "=q3=Protector's Band", "", "300 #alliance#" };
		{ 26, 19514, "", "=q3=Protector's Band", "", "1600 #alliance#" };
		{ 28, 21566, "", "=q3=Rune of Perfection", "", "300 #alliance#" };
		{ 29, 21565, "", "=q3=Rune of Perfection", "", "300 #alliance#" };
	};
	{
		Name = AL["Weapons"];
		{ 1, 20443, "", "=q3=Sentinel's Blade", "", "300 #alliance#" };
		{ 2, 19549, "", "=q3=Sentinel's Blade", "", "400 #alliance#" };
		{ 3, 19548, "", "=q3=Sentinel's Blade", "", "500 #alliance#" };
		{ 4, 19547, "", "=q3=Sentinel's Blade", "", "700 #alliance#" };
		{ 5, 19546, "", "=q3=Sentinel's Blade", "", "6000 #alliance#" };
		{ 7, 20440, "", "=q3=Protector's Sword", "", "300 #alliance#" };
		{ 8, 19557, "", "=q3=Protector's Sword", "", "400 #alliance#" };
		{ 9, 19556, "", "=q3=Protector's Sword", "", "500 #alliance#" };
		{ 10, 19555, "", "=q3=Protector's Sword", "", "700 #alliance#" };
		{ 11, 19554, "", "=q3=Protector's Sword", "", "6000 #alliance#" };
		{ 16, 20434, "", "=q3=Lorekeeper's Staff", "", "500 #alliance#" };
		{ 17, 19573, "", "=q3=Lorekeeper's Staff", "", "700 #alliance#" };
		{ 18, 19572, "", "=q3=Lorekeeper's Staff", "", "1000 #alliance#" };
		{ 19, 19571, "", "=q3=Lorekeeper's Staff", "", "5000 #alliance#" };
		{ 20, 19570, "", "=q3=Lorekeeper's Staff", "", "15000 #alliance#" };
		{ 22, 20438, "", "=q3=Outrunner's Bow", "", "300 #alliance#" };
		{ 23, 19565, "", "=q3=Outrunner's Bow", "", "400 #alliance#" };
		{ 24, 19564, "", "=q3=Outrunner's Bow", "", "500 #alliance#" };
		{ 25, 19563, "", "=q3=Outrunner's Bow", "", "700 #alliance#" };
		{ 26, 19562, "", "=q3=Outrunner's Bow", "", "6000 #alliance#" };
	};
	{
		Name = BabbleInventory["Armor"];
		{ 1, 19597, "", "=q4=Dryad's Wrist Bindings", "", "500 #alliance#" };
		{ 2, 19596, "", "=q4=Dryad's Wrist Bindings", "", "700 #alliance#" };
		{ 3, 19595, "", "=q4=Dryad's Wrist Bindings", "", "5000 #alliance#" };
		{ 5, 19590, "", "=q4=Forest Stalker's Bracers", "", "500 #alliance#" };
		{ 6, 19589, "", "=q4=Forest Stalker's Bracers", "", "700 #alliance#" };
		{ 7, 19587, "", "=q4=Forest Stalker's Bracers", "", "5000 #alliance#" };
		{ 9, 19584, "", "=q4=Windtalker's Wristguards", "", "500 #alliance#" };
		{ 10, 19583, "", "=q4=Windtalker's Wristguards", "", "700 #alliance#" };
		{ 11, 19582, "", "=q4=Windtalker's Wristguards", "", "5000 #alliance#" };
		{ 13, 19581, "", "=q4=Berserker Bracers", "", "500 #alliance#" };
		{ 14, 19580, "", "=q4=Berserker Bracers", "", "700 #alliance#" };
		{ 15, 19578, "", "=q4=Berserker Bracers", "", "5000 #alliance#" };
		{ 16, 22752, "", "=q4=Sentinel's Silk Leggings", "", "9000 #alliance#" };
		{ 18, 22749, "", "=q4=Sentinel's Leather Pants", "", "9000 #alliance#" };
		{ 19, 22750, "", "=q4=Sentinel's Lizardhide Pants", "", "9000 #alliance#" };
		{ 21, 22748, "", "=q4=Sentinel's Chain Leggings", "", "9000 #alliance#" };
		{ 22, 30497, "", "=q4=Sentinel's Mail Leggings", "", "9000 #alliance#" };
		{ 24, 22753, "", "=q4=Sentinel's Lamellar Legguards", "", "9000 #alliance#" };
		{ 25, 22672, "", "=q4=Sentinel's Plate Legguards", "", "9000 #alliance#" };
	};
};

AtlasLoot_Data["WSG_H"] = {
	Name = BabbleZone["Warsong Gulch"] .. " (Horde)";
	{
		Name = AL["Misc. Rewards"];
		{ 1, 19505, "", "=q1=Warsong Battle Tabard", "", "12000 #faction#" };
		{ 2, 17351, "", "=q1=Major Mana Draught", "", "10 #silver# 2 #faction#" };
		{ 3, 17352, "", "=q1=Superior Mana Draught", "", "5 #silver# 5 #faction#" };
		{ 4, 19061, "", "=q1=Warsong Gulch Iron Ration", "", "15 #silver#" };
		{ 5, 19066, "", "=q1=Warsong Gulch Runecloth Bandage", "", "20 #silver#" };
		{ 6, 19068, "", "=q1=Warsong Gulch Silk Bandage", "", "10 #silver#" };
	};
	{
		Name = AL["Accessories"];
		{ 1, 20427, "", "=q3=Battle Healer's Cloak", "", "100 #horde#" };
		{ 2, 19529, "", "=q3=Battle Healer's Cloak", "", "100 #horde#" };
		{ 3, 19528, "", "=q3=Battle Healer's Cloak", "", "300 #horde#" };
		{ 4, 19527, "", "=q3=Battle Healer's Cloak", "", "300 #horde#" };
		{ 5, 19526, "", "=q3=Battle Healer's Cloak", "", "1600 #horde#" };
		{ 7, 20442, "", "=q3=Scout's Medallion", "", "100 #horde#" };
		{ 8, 19537, "", "=q3=Scout's Medallion", "", "100 #horde#" };
		{ 9, 19536, "", "=q3=Scout's Medallion", "", "300 #horde#" };
		{ 10, 19535, "", "=q3=Scout's Medallion", "", "300 #horde#" };
		{ 11, 19534, "", "=q3=Scout's Medallion", "", "1600 #horde#" };
		{ 13, 21568, "", "=q3=Rune of Duty", "", "300 #horde#" };
		{ 14, 21567, "", "=q3=Rune of Duty", "", "300 #horde#" };
		{ 16, 20426, "", "=q3=Advisor's Ring", "", "100 #horde#" };
		{ 17, 19521, "", "=q3=Advisor's Ring", "", "100 #horde#" };
		{ 18, 19520, "", "=q3=Advisor's Ring", "", "300 #horde#" };
		{ 19, 19519, "", "=q3=Advisor's Ring", "", "300 #horde#" };
		{ 20, 19518, "", "=q3=Advisor's Ring", "", "1600 #horde#" };
		{ 22, 20429, "", "=q3=Legionnaire's Band", "", "100 #horde#" };
		{ 23, 19513, "", "=q3=Legionnaire's Band", "", "100 #horde#" };
		{ 24, 19512, "", "=q3=Legionnaire's Band", "", "300 #horde#" };
		{ 25, 19511, "", "=q3=Legionnaire's Band", "", "300 #horde#" };
		{ 26, 19510, "", "=q3=Legionnaire's Band", "", "1600 #horde#" };
		{ 28, 21566, "", "=q3=Rune of Perfection", "", "300 #horde#" };
		{ 29, 21565, "", "=q3=Rune of Perfection", "", "300 #horde#" };
	};
	{
		Name = AL["Weapons"];
		{ 1, 20441, "", "=q3=Scout's Blade", "", "300 #horde#" };
		{ 2, 19545, "", "=q3=Scout's Blade", "", "400 #horde#" };
		{ 3, 19544, "", "=q3=Scout's Blade", "", "500 #horde#" };
		{ 4, 19543, "", "=q3=Scout's Blade", "", "700 #horde#" };
		{ 5, 19542, "", "=q3=Scout's Blade", "", "6000 #horde#" };
		{ 7, 20430, "", "=q3=Legionnaire's Sword", "", "300 #horde#" };
		{ 8, 19553, "", "=q3=Legionnaire's Sword", "", "400 #horde#" };
		{ 9, 19552, "", "=q3=Legionnaire's Sword", "", "500 #horde#" };
		{ 10, 19551, "", "=q3=Legionnaire's Sword", "", "700 #horde#" };
		{ 11, 19550, "", "=q3=Legionnaire's Sword", "", "6000 #horde#" };
		{ 16, 20425, "", "=q3=Advisor's Gnarled Staff", "", "500 #horde#" };
		{ 17, 19569, "", "=q3=Advisor's Gnarled Staff", "", "700 #horde#" };
		{ 18, 19568, "", "=q3=Advisor's Gnarled Staff", "", "1000 #horde#" };
		{ 19, 19567, "", "=q3=Advisor's Gnarled Staff", "", "5000 #horde#" };
		{ 20, 19566, "", "=q3=Advisor's Gnarled Staff", "", "15000 #horde#" };
		{ 22, 20437, "", "=q3=Outrider's Bow", "", "300 #horde#" };
		{ 23, 19561, "", "=q3=Outrider's Bow", "", "400 #horde#" };
		{ 24, 19560, "", "=q3=Outrider's Bow", "", "500 #horde#" };
		{ 25, 19559, "", "=q3=Outrider's Bow", "", "700 #horde#" };
		{ 26, 19558, "", "=q3=Outrider's Bow", "", "6000 #horde#" };
	};
	{
		Name = BabbleInventory["Armor"];
		{ 1, 19597, "", "=q4=Dryad's Wrist Bindings", "", "500 #horde#" };
		{ 2, 19596, "", "=q4=Dryad's Wrist Bindings", "", "700 #horde#" };
		{ 3, 19595, "", "=q4=Dryad's Wrist Bindings", "", "5000 #horde#" };
		{ 5, 19590, "", "=q4=Forest Stalker's Bracers", "", "500 #horde#" };
		{ 6, 19589, "", "=q4=Forest Stalker's Bracers", "", "700 #horde#" };
		{ 7, 19587, "", "=q4=Forest Stalker's Bracers", "", "5000 #horde#" };
		{ 9, 19584, "", "=q4=Windtalker's Wristguards", "", "500 #horde#" };
		{ 10, 19583, "", "=q4=Windtalker's Wristguards", "", "700 #horde#" };
		{ 11, 19582, "", "=q4=Windtalker's Wristguards", "", "5000 #horde#" };
		{ 13, 19581, "", "=q4=Berserker Bracers", "", "500 #horde#" };
		{ 14, 19580, "", "=q4=Berserker Bracers", "", "700 #horde#" };
		{ 15, 19578, "", "=q4=Berserker Bracers", "", "5000 #horde#" };
		{ 16, 22747, "", "=q4=Outrider's Silk Leggings", "", "9000 #horde#" };
		{ 18, 22740, "", "=q4=Outrider's Leather Pants", "", "9000 #horde#" };
		{ 19, 22741, "", "=q4=Outrider's Lizardhide Pants", "", "9000 #horde#" };
		{ 21, 22673, "", "=q4=Outrider's Chain Leggings", "", "9000 #horde#" };
		{ 22, 22676, "", "=q4=Outrider's Mail Leggings", "", "9000 #horde#" };
		{ 24, 30498, "", "=q4=Outrider's Lamellar Legguards", "", "9000 #horde#" };
		{ 25, 22651, "", "=q4=Outrider's Plate Legguards", "", "9000 #horde#" };
	};
};

---------------------------------------
--- PvP Level 60 Rare and Epic Sets ---
---------------------------------------
AtlasLoot_Data["PVPDruid"] = {
	Name = AL["Druid"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16424, "", "=q3=Lieutenant Commander's Dragonhide Headguard, =ds=", "9435 #alliance#" };
		{ 2, 16423, "", "=q3=Lieutenant Commander's Dragonhide Shoulders, =ds=", "6885 #alliance#" };
		{ 3, 16421, "", "=q3=Knight-Captain's Dragonhide Chestpiece, =ds=", "9435 #alliance#" };
		{ 4, 16397, "", "=q3=Knight-Lieutenant's Dragonhide Grips, =ds=", "5000 #alliance#" };
		{ 5, 16422, "", "=q3=Knight-Captain's Dragonhide Leggings, =ds=", "9435 #alliance#" };
		{ 6, 16393, "", "=q3=Knight-Lieutenant's Dragonhide Treads, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23308, "", "=q3=Lieutenant Commander's Dragonhide Headguard", "", "24000 #alliance#" };
		{ 2, 23309, "", "=q3=Lieutenant Commander's Dragonhide Shoulders", "", "14000 #alliance#" };
		{ 3, 23294, "", "=q3=Knight-Captain's Dragonhide Chestpiece", "", "24000 #alliance#" };
		{ 4, 23280, "", "=q3=Knight-Lieutenant's Dragonhide Grips", "", "14000 #alliance#" };
		{ 5, 23295, "", "=q3=Knight-Captain's Dragonhide Leggings", "", "24000 #alliance#" };
		{ 6, 23281, "", "=q3=Knight-Lieutenant's Dragonhide Treads", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16451, "", "=q4=Field Marshal's Dragonhide Helmet", "", "68200 #alliance#" };
		{ 2, 16449, "", "=q4=Field Marshal's Dragonhide Spaulders", "", "52200 #alliance#" };
		{ 3, 16452, "", "=q4=Field Marshal's Dragonhide Breastplate", "", "68200 #alliance#" };
		{ 4, 16448, "", "=q4=Marshal's Dragonhide Gauntlets", "", "52200 #alliance#" };
		{ 5, 16450, "", "=q4=Marshal's Dragonhide Legguards", "", "68200 #alliance#" };
		{ 6, 16459, "", "=q4=Marshal's Dragonhide Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116550, "", "=q4=Grand Marshal's Chain Helm, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116551, "", "=q4=Grand Marshal's Chain Spaulders, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116549, "", "=q4=Grand Marshal's Chain Breastplate, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116555, "", "=q4=Grand Marshal's  Chain Grips, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116552, "", "=q4=Grand Marshal's  Chain Legguards, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116554, "", "=q4=Grand Marshal's  Chain Boots, =ds=", "1430 #arena# #horde#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16503, "", "=q3=Champion's Dragonhide Headguard, =ds=", "9435 #horde#" };
		{ 2, 16501, "", "=q3=Champion's Dragonhide Shoulders, =ds=", "6885 #horde#" };
		{ 3, 16504, "", "=q3=Legionnaire's Dragonhide Chestpiece, =ds=", "9435 #horde#" };
		{ 4, 16496, "", "=q3=Blood Guard's Dragonhide Grips, =ds=", "5000 #horde#" };
		{ 5, 16502, "", "=q3=Legionnaire's Dragonhide Leggings, =ds=", "9435 #horde#" };
		{ 6, 16494, "", "=q3=Blood Guard's Dragonhide Treads, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23253, "", "=q3=Champion's Dragonhide Headguard", "", "24000 #horde#" };
		{ 2, 23254, "", "=q3=Champion's Dragonhide Shoulders", "", "14000 #horde#" };
		{ 3, 22877, "", "=q3=Legionnaire's Dragonhide Chestpiece", "", "24000 #horde#" };
		{ 4, 22863, "", "=q3=Blood Guard's Dragonhide Grips", "", "14000 #horde#" };
		{ 5, 22878, "", "=q3=Legionnaire's Dragonhide Leggings", "", "24000 #horde#" };
		{ 6, 22852, "", "=q3=Blood Guard's Dragonhide Treads", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16550, "", "=q4=Warlord's Dragonhide Helmet", "", "68200 #horde#" };
		{ 2, 16551, "", "=q4=Warlord's Dragonhide Epaulets", "", "52200 #horde#" };
		{ 3, 16549, "", "=q4=Warlord's Dragonhide Hauberk", "", "68200 #horde#" };
		{ 4, 16555, "", "=q4=General's Dragonhide Gloves", "", "52200 #horde#" };
		{ 5, 16552, "", "=q4=General's Dragonhide Leggings", "", "68200 #horde#" };
		{ 6, 16554, "", "=q4=General's Dragonhide Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116451, "", "=q4=High Warlord's Dragonhide Helmet, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116449, "", "=q4=High Warlord's Dragonhide Epaulets, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116452, "", "=q4=High Warlord's Dragonhide Hauberk, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116448, "", "=q4=High High Warlord's Dragonhide Gloves, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116450, "", "=q4=High High Warlord's Dragonhide Leggings, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116459, "", "=q4=High High Warlord's Dragonhide Boots, =ds=", "1430 #arena# #alliance#" };
	};
};



AtlasLoot_Data["PVPHunter"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16428, "", "=q3=Lieutenant Commander's Chain Helm, =ds=", "9435 #alliance#" };
		{ 2, 16427, "", "=q3=Lieutenant Commander's Chain Shoulders, =ds=", "6885 #alliance#" };
		{ 3, 16425, "", "=q3=Knight-Captain's Chain Hauberk, =ds=", "9435 #alliance#" };
		{ 4, 16403, "", "=q3=Knight-Lieutenant's Chain Vices, =ds=", "5000 #alliance#" };
		{ 5, 16426, "", "=q3=Knight-Captain's Chain Legguards, =ds=", "9435 #alliance#" };
		{ 6, 16401, "", "=q3=Knight-Lieutenant's Chain Greaves, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23306, "", "=q3=Lieutenant Commander's Chain Helm", "", "24000 #alliance#" };
		{ 2, 23307, "", "=q3=Lieutenant Commander's Chain Shoulders", "", "14000 #alliance#" };
		{ 3, 23292, "", "=q3=Knight-Captain's Chain Hauberk", "", "24000 #alliance#" };
		{ 4, 23279, "", "=q3=Knight-Lieutenant's Chain Vices", "", "14000 #alliance#" };
		{ 5, 23293, "", "=q3=Knight-Captain's Chain Legguards", "", "24000 #alliance#" };
		{ 6, 23278, "", "=q3=Knight-Lieutenant's Chain Greaves", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16465, "", "=q4=Field Marshal's Chain Helm", "", "68200 #alliance#" };
		{ 2, 16468, "", "=q4=Field Marshal's Chain Spaulders", "", "52200 #alliance#" };
		{ 3, 16466, "", "=q4=Field Marshal's Chain Breastplate", "", "68200 #alliance#" };
		{ 4, 16463, "", "=q4=Marshal's Chain Grips", "", "52200 #alliance#" };
		{ 5, 16467, "", "=q4=Marshal's Chain Legguards", "", "68200 #alliance#" };
		{ 6, 16462, "", "=q4=Marshal's Chain Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116465, "", "=q4=Grand Marshal's Chain Helm, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116468, "", "=q4=Grand Marshal's Chain Spaulders, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116466, "", "=q4=Grand Marshal's Chain Breastplate, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116463, "", "=q4=Grand Marshal's  Chain Grips, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116467, "", "=q4=Grand Marshal's  Chain Legguards, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116462, "", "=q4=Grand Marshal's  Chain Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16526, "", "=q3=Champion's Chain Helm, =ds=", "9435 #horde#" };
		{ 2, 16528, "", "=q3=Champion's Chain Shoulders, =ds=", "6885 #horde#" };
		{ 3, 16525, "", "=q3=Legionnaire's Chain Hauberk, =ds=", "9435 #horde#" };
		{ 4, 16530, "", "=q3=Blood Guard's Chain Vices, =ds=", "5000 #horde#" };
		{ 5, 16527, "", "=q3=Legionnaire's Chain Legguards, =ds=", "9435 #horde#" };
		{ 6, 16531, "", "=q3=Blood Guard's Chain Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23251, "", "=q3=Champion's Chain Helm", "", "24000 #horde#" };
		{ 2, 23252, "", "=q3=Champion's Chain Shoulders", "", "14000 #horde#" };
		{ 3, 22874, "", "=q3=Legionnaire's Chain Hauberk", "", "24000 #horde#" };
		{ 4, 22862, "", "=q3=Blood Guard's Chain Vices", "", "14000 #horde#" };
		{ 5, 22875, "", "=q3=Legionnaire's Chain Legguards", "", "24000 #horde#" };
		{ 6, 22843, "", "=q3=Blood Guard's Chain Greaves", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16566, "", "=q4=Warlord's Chain Helmet", "", "68200 #horde#" };
		{ 2, 16568, "", "=q4=Warlord's Chain Shoulders", "", "52200 #horde#" };
		{ 3, 16565, "", "=q4=Warlord's Chain Chestpiece", "", "68200 #horde#" };
		{ 4, 16571, "", "=q4=General's Chain Gloves", "", "52200 #horde#" };
		{ 5, 16567, "", "=q4=General's Chain Legguards", "", "68200 #horde#" };
		{ 6, 16569, "", "=q4=General's Chain Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116566, "", "=q4=High Warlord's Chain Helmet, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116568, "", "=q4=High Warlord's Chain Shoulders, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116565, "", "=q4=High Warlord's Chain Chestpiece, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116571, "", "=q4=High High Warlord's Chain Gloves, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116567, "", "=q4=High High Warlord's Chain Legguards, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116569, "", "=q4=High High Warlord's Chain Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPMage"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16416, "", "=q3=Lieutenant Commander's Silk Cowl, =ds=", "9435 #alliance#" };
		{ 2, 16415, "", "=q3=Lieutenant Commander's Silk Mantle, =ds=", "6885 #alliance#" };
		{ 3, 16413, "", "=q3=Knight-Captain's Silk Tunic, =ds=", "9435 #alliance#" };
		{ 4, 16391, "", "=q3=Knight-Lieutenant's Silk Handwraps, =ds=", "5000 #alliance#" };
		{ 5, 16414, "", "=q3=Knight-Captain's Silk Legguards, =ds=", "9435 #alliance#" };
		{ 6, 16369, "", "=q3=Knight-Lieutenant's Silk Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23318, "", "=q3=Lieutenant Commander's Silk Cowl", "", "24000 #alliance#" };
		{ 2, 23319, "", "=q3=Lieutenant Commander's Silk Mantle", "", "14000 #alliance#" };
		{ 3, 23305, "", "=q3=Knight-Captain's Silk Tunic", "", "24000 #alliance#" };
		{ 4, 23290, "", "=q3=Knight-Lieutenant's Silk Handwraps", "", "14000 #alliance#" };
		{ 5, 23304, "", "=q3=Knight-Captain's Silk Legguards", "", "24000 #alliance#" };
		{ 6, 23291, "", "=q3=Knight-Lieutenant's Silk Walkers", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16441, "", "=q4=Field Marshal's Coronet", "", "68200 #alliance#" };
		{ 2, 16444, "", "=q4=Field Marshal's Silk Spaulders", "", "52200 #alliance#" };
		{ 3, 16443, "", "=q4=Field Marshal's Silk Vestments", "", "68200 #alliance#" };
		{ 4, 16440, "", "=q4=Marshal's Silk Gloves", "", "52200 #alliance#" };
		{ 5, 16442, "", "=q4=Marshal's Silk Leggings", "", "68200 #alliance#" };
		{ 6, 16437, "", "=q4=Marshal's Silk Footwraps", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116441, "", "=q4=Grand Marshal's Coronet, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116444, "", "=q4=Grand Marshal's Silk Spaulders, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116443, "", "=q4=Grand Marshal's Silk Vestments, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116440, "", "=q4=Grand Marshal's  Silk Gloves, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116442, "", "=q4=Grand Marshal's  Silk Leggings, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116437, "", "=q4=Grand Marshal's  Silk Footwraps, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16489, "", "=q3=Champion's Silk Cowl, =ds=", "9435 #horde#" };
		{ 2, 16492, "", "=q3=Champion's Silk Mantle, =ds=", "6885 #horde#" };
		{ 3, 16491, "", "=q3=Legionnaire's Silk Tunic, =ds=", "9435 #horde#" };
		{ 4, 16487, "", "=q3=Blood Guard's Silk Handwraps, =ds=", "5000 #horde#" };
		{ 5, 16490, "", "=q3=Legionnaire's Silk Legguards, =ds=", "9435 #horde#" };
		{ 6, 16485, "", "=q3=Blood Guard's Silk Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23263, "", "=q3=Champion's Silk Cowl", "", "24000 #horde#" };
		{ 2, 23264, "", "=q3=Champion's Silk Mantle", "", "14000 #horde#" };
		{ 3, 22886, "", "=q3=Legionnaire's Silk Tunic", "", "24000 #horde#" };
		{ 4, 22870, "", "=q3=Blood Guard's Silk Handwraps", "", "14000 #horde#" };
		{ 5, 22883, "", "=q3=Legionnaire's Silk Legguards", "", "24000 #horde#" };
		{ 6, 22860, "", "=q3=Blood Guard's Silk Walkers", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16533, "", "=q4=Warlord's Silk Cowl", "", "68200 #horde#" };
		{ 2, 16536, "", "=q4=Warlord's Silk Amice", "", "52200 #horde#" };
		{ 3, 16535, "", "=q4=Warlord's Silk Raiment", "", "68200 #horde#" };
		{ 4, 16540, "", "=q4=General's Silk Handguards", "", "52200 #horde#" };
		{ 5, 16534, "", "=q4=General's Silk Trousers", "", "68200 #horde#" };
		{ 6, 16539, "", "=q4=General's Silk Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116533, "", "=q4=High Warlord's Silk Cowl, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116536, "", "=q4=High Warlord's Silk Amice, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116535, "", "=q4=High Warlord's Silk Raiment, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116540, "", "=q4=High High Warlord's Silk Handguards, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116534, "", "=q4=High High Warlord's Silk Trousers, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116539, "", "=q4=High High Warlord's Silk Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPPaladin"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16434, "", "=q3=Lieutenant Commander's Lamellar Headguard, =ds=", "9435 #alliance#" };
		{ 2, 16436, "", "=q3=Lieutenant Commander's Lamellar Shoulders, =ds=", "6885 #alliance#" };
		{ 3, 16433, "", "=q3=Knight-Captain's Lamellar Breastplate, =ds=", "9435 #alliance#" };
		{ 4, 16410, "", "=q3=Knight-Lieutenant's Lamellar Gauntlets, =ds=", "5000 #alliance#" };
		{ 5, 16435, "", "=q3=Knight-Captain's Lamellar Leggings, =ds=", "9435 #alliance#" };
		{ 6, 16409, "", "=q3=Knight-Lieutenant's Lamellar Sabatons, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23276, "", "=q3=Lieutenant Commander's Lamellar Headguard", "", "24000 #alliance#" };
		{ 2, 23277, "", "=q3=Lieutenant Commander's Lamellar Shoulders", "", "14000 #alliance#" };
		{ 3, 23272, "", "=q3=Knight-Captain's Lamellar Breastplate", "", "24000 #alliance#" };
		{ 4, 23274, "", "=q3=Knight-Lieutenant's Lamellar Gauntlets", "", "14000 #alliance#" };
		{ 5, 23273, "", "=q3=Knight-Captain's Lamellar Leggings", "", "24000 #alliance#" };
		{ 6, 23275, "", "=q3=Knight-Lieutenant's Lamellar Sabatons", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16474, "", "=q4=Field Marshal's Lamellar Faceguard", "", "68200 #alliance#" };
		{ 2, 16476, "", "=q4=Field Marshal's Lamellar Pauldrons", "", "52200 #alliance#" };
		{ 3, 16473, "", "=q4=Field Marshal's Lamellar Chestplate", "", "68200 #alliance#" };
		{ 4, 16471, "", "=q4=Marshal's Lamellar Gloves", "", "52200 #alliance#" };
		{ 5, 16475, "", "=q4=Marshal's Lamellar Legplates", "", "68200 #alliance#" };
		{ 6, 16472, "", "=q4=Marshal's Lamellar Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116474, "", "=q4=Grand Marshal's Lamellar Faceguard, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116476, "", "=q4=Grand Marshal's Lamellar Pauldrons, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116473, "", "=q4=Grand Marshal's Lamellar Chestplate, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116471, "", "=q4=Grand Marshal's  Lamellar Gloves, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116475, "", "=q4=Grand Marshal's  Lamellar Legplates, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116472, "", "=q4=Grand Marshal's  Lamellar Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 29604, "", "=q3=Champion's Lamellar Headguard", "", "24000 #horde#" };
		{ 2, 29605, "", "=q3=Champion's Lamellar Shoulders", "", "14000 #horde#" };
		{ 3, 29602, "", "=q3=Legionnaire's Lamellar Breastplate", "", "24000 #horde#" };
		{ 4, 29600, "", "=q3=Blood Guard's Lamellar Gauntlets", "", "14000 #horde#" };
		{ 5, 29603, "", "=q3=Legionnaire's Lamellar Leggings", "", "24000 #horde#" };
		{ 6, 29601, "", "=q3=Blood Guard's Lamellar Sabatons", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 29616, "", "=q4=Warlord's Lamellar Faceguard", "", "68200 #horde#" };
		{ 2, 29617, "", "=q4=Warlord's Lamellar Pauldrons", "", "52200 #horde#" };
		{ 3, 29615, "", "=q4=Warlord's Lamellar Chestplate", "", "68200 #horde#" };
		{ 4, 29613, "", "=q4=General's Lamellar Gloves", "", "52200 #horde#" };
		{ 5, 29614, "", "=q4=General's Lamellar Legplates", "", "68200 #horde#" };
		{ 6, 29612, "", "=q4=General's Lamellar Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6129616, "", "=q4=High Warlord's Lamellar Faceguard, =ds=", "2370 #arena# #horde#" };
		{ 2, 6129617, "", "=q4=High Warlord's Lamellar Pauldrons, =ds=", "1930 #arena# #horde#" };
		{ 3, 6129615, "", "=q4=High Warlord's Lamellar Chestplate, =ds=", "2370 #arena# #horde#" };
		{ 4, 6129613, "", "=q4=High High Warlord's Lamellar Gloves, =ds=", "1430 #arena# #horde#" };
		{ 5, 6129614, "", "=q4=High High Warlord's Lamellar Legplates, =ds=", "2370 #arena# #horde#" };
		{ 6, 6129612, "", "=q4=High High Warlord's Lamellar Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPPriest"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 17598, "", "=q3=Lieutenant Commander's Satin Hood, =ds=", "9435 #alliance#" };
		{ 2, 17601, "", "=q3=Lieutenant Commander's Satin Mantle, =ds=", "6885 #alliance#" };
		{ 3, 17600, "", "=q3=Knight-Captain's Satin Tunic, =ds=", "9435 #alliance#" };
		{ 4, 17596, "", "=q3=Knight-Lieutenant's Satin Handwraps, =ds=", "5000 #alliance#" };
		{ 5, 17599, "", "=q3=Knight-Captain's Satin Legguards, =ds=", "9435 #alliance#" };
		{ 6, 17594, "", "=q3=Knight-Lieutenant's Satin Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23316, "", "=q3=Lieutenant Commander's Satin Hood", "", "24000 #alliance#" };
		{ 2, 23317, "", "=q3=Lieutenant Commander's Satin Mantle", "", "14000 #alliance#" };
		{ 3, 23303, "", "=q3=Knight-Captain's Satin Tunic", "", "24000 #alliance#" };
		{ 4, 23288, "", "=q3=Knight-Lieutenant's Satin Handwraps", "", "14000 #alliance#" };
		{ 5, 23302, "", "=q3=Knight-Captain's Satin Legguards", "", "24000 #alliance#" };
		{ 6, 23289, "", "=q3=Knight-Lieutenant's Satin Walkers", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 17602, "", "=q4=Field Marshal's Headdress", "", "68200 #alliance#" };
		{ 2, 17604, "", "=q4=Field Marshal's Satin Mantle", "", "52200 #alliance#" };
		{ 3, 17605, "", "=q4=Field Marshal's Satin Vestments", "", "68200 #alliance#" };
		{ 4, 17608, "", "=q4=Marshal's Satin Gloves", "", "52200 #alliance#" };
		{ 5, 17603, "", "=q4=Marshal's Satin Pants", "", "68200 #alliance#" };
		{ 6, 17607, "", "=q4=Marshal's Satin Sandals", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6117602, "", "=q4=Grand Marshal's Headdress, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6117604, "", "=q4=Grand Marshal's Satin Mantle, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6117605, "", "=q4=Grand Marshal's Satin Vestments, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6117608, "", "=q4=Grand Marshal's  Satin Gloves, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6117603, "", "=q4=Grand Marshal's  Satin Pants, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6117607, "", "=q4=Grand Marshal's  Satin Sandals, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16489, "", "=q3=Champion's Satin Hood, =ds=", "9435 #horde#" };
		{ 2, 16492, "", "=q3=Champion's Satin Mantle, =ds=", "6885 #horde#" };
		{ 3, 16491, "", "=q3=Legionnaire's Satin Tunic, =ds=", "9435 #horde#" };
		{ 4, 16487, "", "=q3=Blood Guard's Satin Handwraps, =ds=", "5000 #horde#" };
		{ 5, 16490, "", "=q3=Legionnaire's Satin Legguards, =ds=", "9435 #horde#" };
		{ 6, 16485, "", "=q3=Blood Guard's Satin Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23261, "", "=q3=Champion's Satin Hood", "", "24000 #horde#" };
		{ 2, 23262, "", "=q3=Champion's Satin Mantle", "", "14000 #horde#" };
		{ 3, 22885, "", "=q3=Legionnaire's Satin Tunic", "", "24000 #horde#" };
		{ 4, 22869, "", "=q3=Blood Guard's Satin Handwraps", "", "14000 #horde#" };
		{ 5, 22882, "", "=q3=Legionnaire's Satin Legguards", "", "24000 #horde#" };
		{ 6, 22859, "", "=q3=Blood Guard's Satin Walkers", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 17623, "", "=q4=Warlord's Satin Cowl", "", "68200 #horde#" };
		{ 2, 17622, "", "=q4=Warlord's Satin Mantle", "", "52200 #horde#" };
		{ 3, 17624, "", "=q4=Warlord's Satin Robes", "", "68200 #horde#" };
		{ 4, 17620, "", "=q4=General's Satin Gloves", "", "52200 #horde#" };
		{ 5, 17625, "", "=q4=General's Satin Leggings", "", "68200 #horde#" };
		{ 6, 17618, "", "=q4=General's Satin Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6117623, "", "=q4=High Warlord's Satin Cowl, =ds=", "2370 #arena# #horde#" };
		{ 2, 6117622, "", "=q4=High Warlord's Satin Mantle, =ds=", "1930 #arena# #horde#" };
		{ 3, 6117624, "", "=q4=High Warlord's Satin Robes, =ds=", "2370 #arena# #horde#" };
		{ 4, 6117620, "", "=q4=High High Warlord's Satin Gloves, =ds=", "1430 #arena# #horde#" };
		{ 5, 6117625, "", "=q4=High High Warlord's Satin Leggings, =ds=", "2370 #arena# #horde#" };
		{ 6, 6117618, "", "=q4=High High Warlord's Satin Boots, =ds=", "1430 #arena# #horde#" };
	};
};


AtlasLoot_Data["PVPRogue"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16418, "", "=q3=Lieutenant Commander's Leather Helm, =ds=", "9435 #alliance#" };
		{ 2, 16420, "", "=q3=Lieutenant Commander's Leather Shoulders, =ds=", "6885 #alliance#" };
		{ 3, 16417, "", "=q3=Knight-Captain's Leather Chestpiece, =ds=", "9435 #alliance#" };
		{ 4, 16396, "", "=q3=Knight-Lieutenant's Leather Grips, =ds=", "5000 #alliance#" };
		{ 5, 16419, "", "=q3=Knight-Captain's Leather Legguards, =ds=", "9435 #alliance#" };
		{ 6, 16392, "", "=q3=Knight-Lieutenant's Leather Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23312, "", "=q3=Lieutenant Commander's Leather Helm", "", "24000 #alliance#" };
		{ 2, 23313, "", "=q3=Lieutenant Commander's Leather Shoulders", "", "14000 #alliance#" };
		{ 3, 23298, "", "=q3=Knight-Captain's Leather Chestpiece", "", "24000 #alliance#" };
		{ 4, 23284, "", "=q3=Knight-Lieutenant's Leather Grips", "", "14000 #alliance#" };
		{ 5, 23299, "", "=q3=Knight-Captain's Leather Legguards", "", "24000 #alliance#" };
		{ 6, 23285, "", "=q3=Knight-Lieutenant's Leather Walkers", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16455, "", "=q4=Field Marshal's Leather Mask", "", "68200 #alliance#" };
		{ 2, 16457, "", "=q4=Field Marshal's Leather Epaulets", "", "52200 #alliance#" };
		{ 3, 16453, "", "=q4=Field Marshal's Leather Chestpiece", "", "68200 #alliance#" };
		{ 4, 16454, "", "=q4=Marshal's Leather Handgrips", "", "52200 #alliance#" };
		{ 5, 16456, "", "=q4=Marshal's Leather Leggings", "", "68200 #alliance#" };
		{ 6, 16446, "", "=q4=Marshal's Leather Footguards", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116455, "", "=q4=Grand Marshal's Leather Mask, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116457, "", "=q4=Grand Marshal's Leather Epaulets, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116453, "", "=q4=Grand Marshal's Leather Chestpiece, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116454, "", "=q4=Grand Marshal's  Leather Handgrips, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116456, "", "=q4=Grand Marshal's  Leather Leggings, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116446, "", "=q4=Grand Marshal's  Leather Footguards, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16506, "", "=q3=Champion's Leather Helm, =ds=", "9435 #horde#" };
		{ 2, 16507, "", "=q3=Champion's Leather Shoulders, =ds=", "6885 #horde#" };
		{ 3, 16505, "", "=q3=Legionnaire's Leather Chestpiece, =ds=", "9435 #horde#" };
		{ 4, 16499, "", "=q3=Blood Guard's Leather Grips, =ds=", "5000 #horde#" };
		{ 5, 16508, "", "=q3=Legionnaire's Leather Legguards, =ds=", "9435 #horde#" };
		{ 6, 16498, "", "=q3=Blood Guard's Leather Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23257, "", "=q3=Champion's Leather Helm", "", "24000 #horde#" };
		{ 2, 23258, "", "=q3=Champion's Leather Shoulders", "", "14000 #horde#" };
		{ 3, 22879, "", "=q3=Legionnaire's Leather Chestpiece", "", "24000 #horde#" };
		{ 4, 22864, "", "=q3=Blood Guard's Leather Grips", "", "14000 #horde#" };
		{ 5, 22880, "", "=q3=Legionnaire's Leather Legguards", "", "24000 #horde#" };
		{ 6, 22856, "", "=q3=Blood Guard's Leather Walkers", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16561, "", "=q4=Warlord's Leather Helm", "", "68200 #horde#" };
		{ 2, 16562, "", "=q4=Warlord's Leather Spaulders", "", "52200 #horde#" };
		{ 3, 16563, "", "=q4=Warlord's Leather Breastplate", "", "68200 #horde#" };
		{ 4, 16560, "", "=q4=General's Leather Mitts", "", "52200 #horde#" };
		{ 5, 16564, "", "=q4=General's Leather Legguards", "", "68200 #horde#" };
		{ 6, 16558, "", "=q4=General's Leather Treads", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116561, "", "=q4=High Warlord's Leather Helm, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116562, "", "=q4=High Warlord's Leather Spaulders, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116563, "", "=q4=High Warlord's Leather Breastplate, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116560, "", "=q4=High High Warlord's Leather Mitts, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116564, "", "=q4=High High Warlord's Leather Legguards, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116558, "", "=q4=High High Warlord's Leather Treads, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPShaman"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 29598, "", "=q3=Lieutenant Commander's Mail Headguard", "", "24000 #alliance#" };
		{ 2, 29599, "", "=q3=Lieutenant Commander's Mail Pauldrons", "", "14000 #alliance#" };
		{ 3, 29596, "", "=q3=Knight-Captain's Mail Hauberk", "", "24000 #alliance#" };
		{ 4, 29595, "", "=q3=Knight-Lieutenant's Mail Vices", "", "14000 #alliance#" };
		{ 5, 29597, "", "=q3=Knight-Captain's Mail Legguards", "", "24000 #alliance#" };
		{ 6, 29594, "", "=q3=Knight-Lieutenant's Mail Greaves", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 29610, "", "=q4=Field Marshal's Mail Helm", "", "68200 #alliance#" };
		{ 2, 29611, "", "=q4=Field Marshal's Mail Spaulders", "", "52200 #alliance#" };
		{ 3, 29609, "", "=q4=Field Marshal's Mail Armor", "", "68200 #alliance#" };
		{ 4, 29607, "", "=q4=Marshal's Mail Gauntlets", "", "52200 #alliance#" };
		{ 5, 29608, "", "=q4=Marshal's Mail Leggings", "", "68200 #alliance#" };
		{ 6, 29606, "", "=q4=Marshal's Mail Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6129610, "", "=q4=Grand Marshal's Mail Helm, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6129611, "", "=q4=Grand Marshal's Mail Spaulders, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6129609, "", "=q4=Grand Marshal's Mail Armor, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6129607, "", "=q4=Grand Marshal's  Mail Gauntlets, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6129608, "", "=q4=Grand Marshal's  Mail Leggings, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6129606, "", "=q4=Grand Marshal's  Mail Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16521, "", "=q3=Champion's Mail Headguard, =ds=", "9435 #horde#" };
		{ 2, 16524, "", "=q3=Champion's Mail Pauldrons, =ds=", "6885 #horde#" };
		{ 3, 16522, "", "=q3=Legionnaire's Mail Hauberk, =ds=", "9435 #horde#" };
		{ 4, 16519, "", "=q3=Blood Guard's Mail Vices, =ds=", "5000 #horde#" };
		{ 5, 16523, "", "=q3=Legionnaire's Mail Legguards, =ds=", "9435 #horde#" };
		{ 6, 16518, "", "=q3=Blood Guard's Mail Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23259, "", "=q3=Champion's Mail Headguard", "", "24000 #horde#" };
		{ 2, 23260, "", "=q3=Champion's Mail Pauldrons", "", "14000 #horde#" };
		{ 3, 22876, "", "=q3=Legionnaire's Mail Hauberk", "", "24000 #horde#" };
		{ 4, 22867, "", "=q3=Blood Guard's Mail Vices", "", "14000 #horde#" };
		{ 5, 22887, "", "=q3=Legionnaire's Mail Legguards", "", "24000 #horde#" };
		{ 6, 22857, "", "=q3=Blood Guard's Mail Greaves", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16578, "", "=q4=Warlord's Mail Helm", "", "68200 #horde#" };
		{ 2, 16580, "", "=q4=Warlord's Mail Spaulders", "", "52200 #horde#" };
		{ 3, 16577, "", "=q4=Warlord's Mail Armor", "", "68200 #horde#" };
		{ 4, 16574, "", "=q4=General's Mail Gauntlets", "", "52200 #horde#" };
		{ 5, 16579, "", "=q4=General's Mail Leggings", "", "68200 #horde#" };
		{ 6, 16573, "", "=q4=General's Mail Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116578, "", "=q4=High Warlord's Mail Helm, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116580, "", "=q4=High Warlord's Mail Spaulders, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116577, "", "=q4=High Warlord's Mail Armor, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116574, "", "=q4=High High Warlord's Mail Gauntlets, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116579, "", "=q4=High High Warlord's Mail Leggings, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116573, "", "=q4=High High Warlord's Mail Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPWarlock"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 17566, "", "=q3=Lieutenant Commander's Dreadweave Cowl, =ds=", "9435 #alliance#" };
		{ 2, 17569, "", "=q3=Lieutenant Commander's Dreadweave Spaulders, =ds=", "6885 #alliance#" };
		{ 3, 17568, "", "=q3=Knight-Captain's Dreadweave Tunic, =ds=", "9435 #alliance#" };
		{ 4, 17564, "", "=q3=Knight-Lieutenant's Dreadweave Handwraps, =ds=", "5000 #alliance#" };
		{ 5, 17567, "", "=q3=Knight-Captain's Dreadweave Legguards, =ds=", "9435 #alliance#" };
		{ 6, 17562, "", "=q3=Knight-Lieutenant's Dreadweave Walkers, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23310, "", "=q3=Lieutenant Commander's Dreadweave Cowl", "", "24000 #alliance#" };
		{ 2, 23311, "", "=q3=Lieutenant Commander's Dreadweave Spaulders", "", "14000 #alliance#" };
		{ 3, 23297, "", "=q3=Knight-Captain's Dreadweave Tunic", "", "24000 #alliance#" };
		{ 4, 23282, "", "=q3=Knight-Lieutenant's Dreadweave Handwraps", "", "14000 #alliance#" };
		{ 5, 23296, "", "=q3=Knight-Captain's Dreadweave Legguards", "", "24000 #alliance#" };
		{ 6, 23283, "", "=q3=Knight-Lieutenant's Dreadweave Walkers", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 6117578, "", "=q4=Grand Marshal's Coronal, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6117580, "", "=q4=Grand Marshal's Dreadweave Shoulders, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6117581, "", "=q4=Grand Marshal's Dreadweave Robe, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6117584, "", "=q4=Grand Marshal's  Dreadweave Gloves, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6117579, "", "=q4=Grand Marshal's  Dreadweave Leggings, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6117583, "", "=q4=Grand Marshal's  Dreadweave Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 17578, "", "=q4=Field Marshal's Coronal", "", "68200 #alliance#" };
		{ 2, 17580, "", "=q4=Field Marshal's Dreadweave Shoulders", "", "52200 #alliance#" };
		{ 3, 17581, "", "=q4=Field Marshal's Dreadweave Robe", "", "68200 #alliance#" };
		{ 4, 17584, "", "=q4=Marshal's Dreadweave Gloves", "", "52200 #alliance#" };
		{ 5, 17579, "", "=q4=Marshal's Dreadweave Leggings", "", "68200 #alliance#" };
		{ 6, 17583, "", "=q4=Marshal's Dreadweave Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 17570, "", "=q3=Champion's Dreadweave Cowl, =ds=", "9435 #horde#" };
		{ 2, 17573, "", "=q3=Champion's Dreadweave Spaulders, =ds=", "6885 #horde#" };
		{ 3, 17572, "", "=q3=Legionnaire's Dreadweave Tunic, =ds=", "9435 #horde#" };
		{ 4, 17577, "", "=q3=Blood Guard's Dreadweave Handwraps, =ds=", "5000 #horde#" };
		{ 5, 17571, "", "=q3=Legionnaire's Dreadweave Legguards, =ds=", "9435 #horde#" };
		{ 6, 17576, "", "=q3=Blood Guard's Dreadweave Walkers, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23255, "", "=q3=Champion's Dreadweave Cowl", "", "24000 #horde#" };
		{ 2, 23256, "", "=q3=Champion's Dreadweave Spaulders", "", "14000 #horde#" };
		{ 3, 22884, "", "=q3=Legionnaire's Dreadweave Tunic", "", "24000 #horde#" };
		{ 4, 22865, "", "=q3=Blood Guard's Dreadweave Handwraps", "", "14000 #horde#" };
		{ 5, 22881, "", "=q3=Legionnaire's Dreadweave Legguards", "", "24000 #horde#" };
		{ 6, 22855, "", "=q3=Blood Guard's Dreadweave Walkers", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 17591, "", "=q4=Warlord's Dreadweave Hood", "", "68200 #horde#" };
		{ 2, 17590, "", "=q4=Warlord's Dreadweave Mantle", "", "52200 #horde#" };
		{ 3, 17592, "", "=q4=Warlord's Dreadweave Robe", "", "68200 #horde#" };
		{ 4, 17588, "", "=q4=General's Dreadweave Gloves", "", "52200 #horde#" };
		{ 5, 17593, "", "=q4=General's Dreadweave Pants", "", "68200 #horde#" };
		{ 6, 17586, "", "=q4=General's Dreadweave Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6117591, "", "=q4=High Warlord's Dreadweave Hood, =ds=", "2370 #arena# #horde#" };
		{ 2, 6117590, "", "=q4=High Warlord's Dreadweave Mantle, =ds=", "1930 #arena# #horde#" };
		{ 3, 6117592, "", "=q4=High Warlord's Dreadweave Robe, =ds=", "2370 #arena# #horde#" };
		{ 4, 6117588, "", "=q4=High High Warlord's Dreadweave Gloves, =ds=", "1430 #arena# #horde#" };
		{ 5, 6117593, "", "=q4=High High Warlord's Dreadweave Pants, =ds=", "2370 #arena# #horde#" };
		{ 6, 6117586, "", "=q4=High High Warlord's Dreadweave Boots, =ds=", "1430 #arena# #horde#" };
	};
};

AtlasLoot_Data["PVPWarrior"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = AL["Rare Set"] .. " (Alliance)";
		{ 1, 16429, "", "=q3=Lieutenant Commander's Plate Helm, =ds=", "9435 #alliance#" };
		{ 2, 16432, "", "=q3=Lieutenant Commander's Plate Shoulders, =ds=", "6885 #alliance#" };
		{ 3, 16430, "", "=q3=Knight-Captain's Plate Hauberk, =ds=", "9435 #alliance#" };
		{ 4, 16406, "", "=q3=Knight-Lieutenant's Plate Gauntlets, =ds=", "5000 #alliance#" };
		{ 5, 16431, "", "=q3=Knight-Captain's Plate Leggings, =ds=", "9435 #alliance#" };
		{ 6, 16405, "", "=q3=Knight-Lieutenant's Plate Greaves, =ds=", "5000 #alliance#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Alliance)";
		{ 1, 23314, "", "=q3=Lieutenant Commander's Plate Helm", "", "24000 #alliance#" };
		{ 2, 23315, "", "=q3=Lieutenant Commander's Plate Shoulders", "", "14000 #alliance#" };
		{ 3, 23300, "", "=q3=Knight-Captain's Plate Hauberk", "", "24000 #alliance#" };
		{ 4, 23286, "", "=q3=Knight-Lieutenant's Plate Gauntlets", "", "14000 #alliance#" };
		{ 5, 23301, "", "=q3=Knight-Captain's Plate Leggings", "", "24000 #alliance#" };
		{ 6, 23287, "", "=q3=Knight-Lieutenant's Plate Greaves", "", "14000 #alliance#" };
	};
	{
		Name = AL["Epic Set"] .. " (Alliance)";
		{ 1, 16478, "", "=q4=Field Marshal's Plate Helm", "", "68200 #alliance#" };
		{ 2, 16480, "", "=q4=Field Marshal's Plate Shoulderguards", "", "52200 #alliance#" };
		{ 3, 16477, "", "=q4=Field Marshal's Plate Armor", "", "68200 #alliance#" };
		{ 4, 16484, "", "=q4=Marshal's Plate Gauntlets", "", "52200 #alliance#" };
		{ 5, 16479, "", "=q4=Marshal's Plate Legguards", "", "68200 #alliance#" };
		{ 6, 16483, "", "=q4=Marshal's Plate Boots", "", "52200 #alliance#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Alliance)";
		{ 1, 6116478, "", "=q4=Grand Marshal's Plate Helm, =ds=", "2370 #arena# #alliance#" };
		{ 2, 6116480, "", "=q4=Grand Marshal's Plate Shoulderguards, =ds=", "1930 #arena# #alliance#" };
		{ 3, 6116477, "", "=q4=Grand Marshal's Plate Armor, =ds=", "2370 #arena# #alliance#" };
		{ 4, 6116484, "", "=q4=Grand Marshal's  Plate Gauntlets, =ds=", "1430 #arena# #alliance#" };
		{ 5, 6116479, "", "=q4=Grand Marshal's  Plate Legguards, =ds=", "2370 #arena# #alliance#" };
		{ 6, 6116483, "", "=q4=Grand Marshal's  Plate Boots, =ds=", "1430 #arena# #alliance#" };
	};
	{
		Name = AL["Rare Set"] .. " (Horde)";
		{ 1, 16514, "", "=q3=Champion's Plate Helm, =ds=", "9435 #horde#" };
		{ 2, 16516, "", "=q3=Champion's Plate Shoulders, =ds=", "6885 #horde#" };
		{ 3, 16513, "", "=q3=Legionnaire's Plate Hauberk, =ds=", "9435 #horde#" };
		{ 4, 16510, "", "=q3=Blood Guard's Plate Gauntlets, =ds=", "5000 #horde#" };
		{ 5, 16515, "", "=q3=Legionnaire's Plate Leggings, =ds=", "9435 #horde#" };
		{ 6, 16509, "", "=q3=Blood Guard's Plate Greaves, =ds=", "5000 #horde#" };
	};
	{
		Name = AL["Superior Rare Set"] .. " (Horde)";
		{ 1, 23244, "", "=q3=Champion's Plate Helm", "", "24000 #horde#" };
		{ 2, 23243, "", "=q3=Champion's Plate Shoulders", "", "14000 #horde#" };
		{ 3, 22872, "", "=q3=Legionnaire's Plate Hauberk", "", "24000 #horde#" };
		{ 4, 22868, "", "=q3=Blood Guard's Plate Gauntlets", "", "14000 #horde#" };
		{ 5, 22873, "", "=q3=Legionnaire's Plate Leggings", "", "24000 #horde#" };
		{ 6, 22858, "", "=q3=Blood Guard's Plate Greaves", "", "14000 #horde#" };
	};
	{
		Name = AL["Epic Set"] .. " (Horde)";
		{ 1, 16542, "", "=q4=Warlord's Plate Headpiece", "", "68200 #horde#" };
		{ 2, 16544, "", "=q4=Warlord's Plate Shoulders", "", "52200 #horde#" };
		{ 3, 16541, "", "=q4=Warlord's Plate Armor", "", "68200 #horde#" };
		{ 4, 16548, "", "=q4=General's Plate Gauntlets", "", "52200 #horde#" };
		{ 5, 16543, "", "=q4=General's Plate Leggings", "", "68200 #horde#" };
		{ 6, 16545, "", "=q4=General's Plate Boots", "", "52200 #horde#" };
	};
	{
		Name = AL["Superior Epic Set"] .. " (Horde)";
		{ 1, 6116542, "", "=q4=High Warlord's Plate Headpiece, =ds=", "2370 #arena# #horde#" };
		{ 2, 6116544, "", "=q4=High Warlord's Plate Shoulders, =ds=", "1930 #arena# #horde#" };
		{ 3, 6116541, "", "=q4=High Warlord's Plate Armor, =ds=", "2370 #arena# #horde#" };
		{ 4, 6116548, "", "=q4=High High Warlord's Plate Gauntlets, =ds=", "1430 #arena# #horde#" };
		{ 5, 6116543, "", "=q4=High High Warlord's Plate Leggings, =ds=", "2370 #arena# #horde#" };
		{ 6, 6116545, "", "=q4=High High Warlord's Plate Boots, =ds=", "1430 #arena# #horde#" };
	};
};

----------------------------
--- PvP Level 60 Weapons ---
----------------------------

AtlasLoot_Data["PVPWeapons60"] = {
	Name = AL["PvP Weapons (Level 60)"];
	{
		Name = "Grand Marshal's (Alliance)";
		{ 1, 18843, "", "=q4=Grand Marshal's Right Hand Blade", "", "34100 #alliance#" };
		{ 2, 18847, "", "=q4=Grand Marshal's Left Hand Blade", "", "34100 #alliance#" };
		{ 3, 23451, "", "=q4=Grand Marshal's Mageblade", "", "34100 #alliance#" };
		{ 4, 18838, "", "=q4=Grand Marshal's Dirk", "", "34100 #alliance#" };
		{ 5, 12584, "", "=q4=Grand Marshal's Longsword", "", "34100 #alliance#" };
		{ 6, 23456, "", "=q4=Grand Marshal's Swiftblade", "", "34100 #alliance#" };
		{ 7, 18876, "", "=q4=Grand Marshal's Claymore", "", "68200 #alliance#" };
		{ 8, 18827, "", "=q4=Grand Marshal's Handaxe", "", "34100 #alliance#" };
		{ 9, 18830, "", "=q4=Grand Marshal's Sunderer", "", "68200 #alliance#" };
		{ 10, 23454, "", "=q4=Grand Marshal's Warhammer", "", "34100 #alliance#" };
		{ 11, 18865, "", "=q4=Grand Marshal's Punisher", "", "34100 #alliance#" };
		{ 12, 18867, "", "=q4=Grand Marshal's Battle Hammer", "", "68200 #alliance#" };
		{ 13, 23455, "", "=q4=Grand Marshal's Demolisher", "", "68200 #alliance#" };
		{ 14, 18869, "", "=q4=Grand Marshal's Glaive", "", "68200 #alliance#" };
		{ 15, 18873, "", "=q4=Grand Marshal's Stave", "", "68200 #alliance#" };
		{ 16, 18825, "", "=q4=Grand Marshal's Aegis", "", "34100 #alliance#" };
		{ 17, 18833, "", "=q4=Grand Marshal's Bullseye", "", "34100 #alliance#" };
		{ 18, 18836, "", "=q4=Grand Marshal's Repeater", "", "34100 #alliance#" };
		{ 19, 18855, "", "=q4=Grand Marshal's Hand Cannon", "", "34100 #alliance#" };
		{ 20, 23452, "", "=q4=Grand Marshal's Tome of Power", "", "34100 #alliance#" };
		{ 21, 23453, "", "=q4=Grand Marshal's Tome of Restoration", "", "34100 #alliance#" };
	};
	{
		Name = "Lieutenant Commander's (Alliance)";
		{ 1, 918843, "", "=q3=Lieutenant Commander's Right Hand Blade", "", "20000 #alliance#" };
		{ 2, 918847, "", "=q3=Lieutenant Commander's Left Hand Blade", "", "20000 #alliance#" };
		{ 3, 923451, "", "=q3=Lieutenant Commander's Mageblade", "", "20000 #alliance#" };
		{ 4, 918838, "", "=q3=Lieutenant Commander's Dirk", "", "20000 #alliance#" };
		{ 5, 912584, "", "=q3=Lieutenant Commander's Longsword", "", "20000 #alliance#" };
		{ 6, 923456, "", "=q3=Lieutenant Commander's Swiftblade", "", "20000 #alliance#" };
		{ 7, 918876, "", "=q3=Lieutenant Commander's Claymore", "", "34100 #alliance#" };
		{ 8, 918827, "", "=q3=Lieutenant Commander's Handaxe", "", "20000 #alliance#" };
		{ 9, 918830, "", "=q3=Lieutenant Commander's Sunderer", "", "34100 #alliance#" };
		{ 10, 923454, "", "=q3=Lieutenant Commander's Warhammer", "", "20000 #alliance#" };
		{ 11, 918865, "", "=q3=Lieutenant Commander's Punisher", "", "20000 #alliance#" };
		{ 12, 918867, "", "=q3=Lieutenant Commander's Battle Hammer", "", "34100 #alliance#" };
		{ 13, 923455, "", "=q3=Lieutenant Commander's Demolisher", "", "34100 #alliance#" };
		{ 14, 918869, "", "=q3=Lieutenant Commander's Glaive", "", "34100 #alliance#" };
		{ 15, 918873, "", "=q3=Lieutenant Commander's Stave", "", "34100 #alliance#" };
		{ 16, 918825, "", "=q3=Lieutenant Commander's Aegis", "", "20000 #alliance#" };
		{ 17, 918833, "", "=q3=Lieutenant Commander's Bullseye", "", "20000 #alliance#" };
		{ 18, 918836, "", "=q3=Lieutenant Commander's Repeater", "", "20000 #alliance#" };
		{ 19, 918855, "", "=q3=Lieutenant Commander's Hand Cannon", "", "20000 #alliance#" };
		{ 20, 923452, "", "=q3=Lieutenant Commander's Tome of Power", "", "20000 #alliance#" };
		{ 21, 923453, "", "=q3=Lieutenant Commander's Tome of Restoration", "", "20000 #alliance#" };
	};
	{
		Name = "High Warlord's (Horde)";
		{ 1, 18844, "", "=q4=High Warlord's Right Claw", "", "34100 #horde#" };
		{ 2, 18848, "", "=q4=High Warlord's Left Claw", "", "34100 #horde#" };
		{ 3, 23466, "", "=q4=High Warlord's Spellblade", "", "34100 #horde#" };
		{ 4, 18840, "", "=q4=High Warlord's Razor", "", "34100 #horde#" };
		{ 5, 16345, "", "=q4=High Warlord's Blade", "", "34100 #horde#" };
		{ 6, 23467, "", "=q4=High Warlord's Quickblade", "", "34100 #horde#" };
		{ 7, 18877, "", "=q4=High Warlord's Greatsword", "", "68200 #horde#" };
		{ 8, 18828, "", "=q4=High Warlord's Cleaver", "", "34100 #horde#" };
		{ 9, 18831, "", "=q4=High Warlord's Battle Axe", "", "68200 #horde#" };
		{ 10, 23464, "", "=q4=High Warlord's Battle Mace", "", "34100 #horde#" };
		{ 11, 18866, "", "=q4=High Warlord's Bludgeon", "", "34100 #horde#" };
		{ 12, 18868, "", "=q4=High Warlord's Pulverizer", "", "68200 #horde#" };
		{ 13, 23465, "", "=q4=High Warlord's Destroyer", "", "68200 #horde#" };
		{ 14, 18871, "", "=q4=High Warlord's Pig Sticker", "", "68200 #horde#" };
		{ 15, 18874, "", "=q4=High Warlord's War Staff", "", "68200 #horde#" };
		{ 16, 18826, "", "=q4=High Warlord's Shield Wall", "", "34100 #horde#" };
		{ 17, 18835, "", "=q4=High Warlord's Recurve", "", "34100 #horde#" };
		{ 18, 18837, "", "=q4=High Warlord's Crossbow", "", "34100 #horde#" };
		{ 19, 18860, "", "=q4=High Warlord's Street Sweeper", "", "34100 #horde#" };
		{ 20, 23468, "", "=q4=High Warlord's Tome of Destruction", "", "34100 #horde#" };
		{ 21, 23469, "", "=q4=High Warlord's Tome of Mending", "", "34100 #horde#" };

	};
	{
		Name = "Champion's (Horde)";
		{ 1, 918844, "", "=q3=Champion's Right Claw", "", "20000 #horde#" };
		{ 2, 918848, "", "=q3=Champion's Left Claw", "", "20000 #horde#" };
		{ 3, 923466, "", "=q3=Champion's Spellblade", "", "20000 #horde#" };
		{ 4, 918840, "", "=q3=Champion's Razor", "", "20000 #horde#" };
		{ 5, 916345, "", "=q3=Champion's Blade", "", "20000 #horde#" };
		{ 6, 923467, "", "=q3=Champion's Quickblade", "", "20000 #horde#" };
		{ 7, 918877, "", "=q3=Champion's Greatsword", "", "34100 #horde#" };
		{ 8, 918828, "", "=q3=Champion's Cleaver", "", "20000 #horde#" };
		{ 9, 918831, "", "=q3=Champion's Battle Axe", "", "34100 #horde#" };
		{ 10, 923464, "", "=q3=Champion's Battle Mace", "", "20000 #horde#" };
		{ 11, 918866, "", "=q3=Champion's Bludgeon", "", "20000 #horde#" };
		{ 12, 918868, "", "=q3=Champion's Pulverizer", "", "34100 #horde#" };
		{ 13, 923465, "", "=q3=Champion's Destroyer", "", "34100 #horde#" };
		{ 14, 918871, "", "=q3=Champion's Pig Sticker", "", "34100 #horde#" };
		{ 15, 918874, "", "=q3=Champion's War Staff", "", "34100 #horde#" };
		{ 16, 918826, "", "=q3=Champion's Shield Wall", "", "20000 #horde#" };
		{ 17, 918835, "", "=q3=Champion's Recurve", "", "20000 #horde#" };
		{ 18, 918837, "", "=q3=Champion's Crossbow", "", "20000 #horde#" };
		{ 19, 918860, "", "=q3=Champion's Street Sweeper", "", "20000 #horde#" };
		{ 20, 923468, "", "=q3=Champion's Tome of Destruction", "", "20000 #horde#" };
		{ 21, 923469, "", "=q3=Champion's Tome of Mending", "", "20000 #horde#" };
	};
};

--------------------------------
--- PvP Level 60 Accessories ---
--------------------------------
AtlasLoot_Data["PvP60Accessories"] = {
	Name = AL["PvP Accessories (Level 60)"];
	{
		Name = "Alliance 1";
		{ 1, 100533, "", "=q4=Combatant's Amulet of Victory, =ds=", "34100 #alliance#" };
		{ 2, 100534, "", "=q4=Combatant's Amulet of Triumph, =ds=", "34100 #alliance#" };
		{ 3, 100535, "", "=q4=Combatant's Amulet of Dominance, =ds=", "34100 #alliance#" };
		{ 4, 100536, "", "=q4=Combatant's Amulet of Conquest, =ds=", "34100 #alliance#" };
		{ 5, 100537, "", "=q4=Combatant's Loop of Triumph, =ds=", "34100 #alliance#" };
		{ 6, 100538, "", "=q4=Combatant's Loop of Victory, =ds=", "34100 #alliance#" };
		{ 7, 100539, "", "=q4=Combatant's Loop of Dominance, =ds=", "34100 #alliance#" };
		{ 8, 100540, "", "=q4=Combatant's Loop of Conquest, =ds=", "34100 #alliance#" };
		{ 9, 100541, "", "=q4=Combatant's Cloak of Triumph, =ds=", "34100 #alliance#" };
		{ 10, 100542, "", "=q4=Combatant's Cloak of Victory, =ds=", "34100 #alliance#" };
		{ 11, 100543, "", "=q4=Combatant's Cloak of Dominance, =ds=", "34100 #alliance#" };
		{ 12, 100544, "", "=q4=Combatant's Cloak of Conquest, =ds=", "34100 #alliance#" };
		{ 16, 100526, "", "=q4=Battlemaster's Fury, =ds=", " #alliance#" };
		{ 17, 100527, "", "=q4=Battlemaster's Rage, =ds=", " #alliance#" };
		{ 18, 100528, "", "=q4=Battlemaster's Ruination, =ds=", " #alliance#" };
		{ 19, 100529, "", "=q4=Insignia of the Alliance, =ds=", " #alliance#" };
		{ 20, 100530, "", "=q4=Insignia of the Horde, =ds=", " #alliance#" };
		{ 21, 100531, "", "=q4=Combatant's Scroll of Battle, =ds=", " #alliance#" };
		{ 22, 100532, "", "=q4=Combatant's Scroll of Sorcery, =ds=", " #alliance#" };
	};
	{
		Name = "Alliance 2";
		{ 1, 29465, "", "=q4=Black Battlestrider", "", "50000 #alliance#" };
		{ 2, 29467, "", "=q4=Black War Ram", "", "50000 #alliance#" };
		{ 3, 29468, "", "=q4=Black War Steed Bridle", "", "50000 #alliance#" };
		{ 4, 29471, "", "=q4=Reins of the Black War Tiger", "", "50000 #alliance#" };
		{ 5, 35906, "", "=q4=Reins of the Black War Elekk", "=ds#e12#=", "50000 #alliance#" };
		{ 7, 18863, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 8, 18856, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 9, 18859, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 10, 18864, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 11, 18862, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 12, 18857, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 13, 29593, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 14, 18858, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 15, 18854, "", "=q3=Insignia of the Alliance", "", "2805 #alliance#" };
		{ 16, 15196, "", "=q1=Private's Tabard", "", "15000 #alliance#" };
		{ 17, 15198, "", "=q1=Knight's Colors", "", "20000 #alliance#" };
		{ 18, 18606, "", "=q1=Alliance Battle Standard", "", "15300 #alliance#" };
		{ 20, 18839, "", "=q1=Combat Healing Potion", "", "10 #silver# 1 #alliance#" };
		{ 21, 18841, "", "=q1=Combat Mana Potion", "", "10 #silver# 1 #alliance#" };
		{ 22, 32455, "", "=q1=Star's Lament", "", "12 #silver# 1 #alliance#" };
	};
	{
		Name = "Alliance 3";
		{ 1, 18457, "", "=q3=Sergeant Major's Silk Cuffs", "", "300 #alliance#" };
		{ 2, 18456, "", "=q3=Sergeant Major's Silk Cuffs", "", "1600 #alliance#" };
		{ 4, 18455, "", "=q3=Sergeant Major's Dragonhide Armsplints", "", "300 #alliance#" };
		{ 5, 18454, "", "=q3=Sergeant Major's Dragonhide Armsplints", "", "1600 #alliance#" };
		{ 7, 18453, "", "=q3=Sergeant Major's Leather Armsplints", "", "300 #alliance#" };
		{ 8, 18452, "", "=q3=Sergeant Major's Leather Armsplints", "", "1600 #alliance#" };
		{ 10, 18449, "", "=q3=Sergeant Major's Chain Armguards", "", "300 #alliance#" };
		{ 11, 18448, "", "=q3=Sergeant Major's Chain Armguards", "", "1600 #alliance#" };
		{ 13, 18447, "", "=q3=Sergeant Major's Plate Wristguards", "", "300 #alliance#" };
		{ 14, 18445, "", "=q3=Sergeant Major's Plate Wristguards", "", "1600 #alliance#" };
		{ 16, 18440, "", "=q3=Sergeant's Cape", "", "100 #alliance#" };
		{ 17, 18441, "", "=q3=Sergeant's Cape", "", "300 #alliance#" };
		{ 18, 16342, "", "=q3=Sergeant's Cape", "", "1600 #alliance#" };
		{ 20, 18442, "", "=q3=Master Sergeant's Insignia", "", "100 #alliance#" };
		{ 21, 18444, "", "=q3=Master Sergeant's Insignia", "", "300 #alliance#" };
		{ 22, 18443, "", "=q3=Master Sergeant's Insignia", "", "1600 #alliance#" };
	};
	{
		Name = "Horde 1";
		{ 1, 100533, "", "=q4=Combatant's Amulet of Victory, =ds=", "34100 #horde#" };
		{ 2, 100534, "", "=q4=Combatant's Amulet of Triumph, =ds=", "34100 #horde#" };
		{ 3, 100535, "", "=q4=Combatant's Amulet of Dominance, =ds=", "34100 #horde#" };
		{ 4, 100536, "", "=q4=Combatant's Amulet of Conquest, =ds=", "34100 #horde#" };
		{ 5, 100537, "", "=q4=Combatant's Loop of Triumph, =ds=", "34100 #horde#" };
		{ 6, 100538, "", "=q4=Combatant's Loop of Victory, =ds=", "34100 #horde#" };
		{ 7, 100539, "", "=q4=Combatant's Loop of Dominance, =ds=", "34100 #horde#" };
		{ 8, 100540, "", "=q4=Combatant's Loop of Conquest, =ds=", "34100 #horde#" };
		{ 9, 100541, "", "=q4=Combatant's Cloak of Triumph, =ds=", "34100 #horde#" };
		{ 10, 100542, "", "=q4=Combatant's Cloak of Victory, =ds=", "34100 #horde#" };
		{ 11, 100543, "", "=q4=Combatant's Cloak of Dominance, =ds=", "34100 #horde#" };
		{ 12, 100544, "", "=q4=Combatant's Cloak of Conquest, =ds=", "34100 #horde#" };
		{ 16, 100526, "", "=q4=Battlemaster's Fury, =ds=", " #horde#" };
		{ 17, 100527, "", "=q4=Battlemaster's Rage, =ds=", " #horde#" };
		{ 18, 100528, "", "=q4=Battlemaster's Ruination, =ds=", " #horde#" };
		{ 19, 100529, "", "=q4=Insignia of the Alliance, =ds=", " #horde#" };
		{ 20, 100530, "", "=q4=Insignia of the Horde, =ds=", " #horde#" };
		{ 21, 100531, "", "=q4=Combatant's Scroll of Battle, =ds=", " #horde#" };
		{ 22, 100532, "", "=q4=Combatant's Scroll of Sorcery, =ds=", " #horde#" };
	};
	{
		Name = "Horde 2";
		{ 1, 29466, "", "=q4=Black War Kodo", "", "50000 #horde#" };
		{ 2, 29469, "", "=q4=Horn of the Black War Wolf", "", "50000 #horde#" };
		{ 3, 29470, "", "=q4=Red Skeletal Warhorse", "", "50000 #horde#" };
		{ 4, 29472, "", "=q4=Whistle of the Black War Raptor", "", "50000 #horde#" };
		{ 5, 34129, "", "=q4=Swift Warstrider", "", "50000 #horde#" };
		{ 7, 18853, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 8, 18846, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 9, 18850, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 10, 29592, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 11, 18851, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 12, 18849, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 13, 18845, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 14, 18852, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 15, 18834, "", "=q3=Insignia of the Horde", "", "2805 #horde#" };
		{ 16, 15197, "", "=q1=Scout's Tabard", "", "15000 #horde#" };
		{ 17, 15199, "", "=q1=Stone Guard's Herald", "", "20000 #horde#" };
		{ 18, 18607, "", "=q1=Horde Battle Standard", "", "15300 #horde#" };
		{ 20, 18839, "", "=q1=Combat Healing Potion", "", "10 #silver# 1 #horde#" };
		{ 21, 18841, "", "=q1=Combat Mana Potion", "", "10 #silver# 1 #horde#" };
		{ 22, 32455, "", "=q1=Star's Lament", "", "12 #silver# 1 #horde#" };
	};
	{
		Name = "Horde 3";
		{ 1, 18437, "", "=q3=First Sergeant's Silk Cuffs", "", "300 #horde#" };
		{ 2, 16486, "", "=q3=First Sergeant's Silk Cuffs", "", "1600 #horde#" };
		{ 4, 18436, "", "=q3=First Sergeant's Dragonhide Armguards", "", "300 #horde#" };
		{ 5, 18434, "", "=q3=First Sergeant's Dragonhide Armguards", "", "1600 #horde#" };
		{ 7, 18435, "", "=q3=First Sergeant's Leather Armguards", "", "300 #horde#" };
		{ 8, 16497, "", "=q3=First Sergeant's Leather Armguards", "", "1600 #horde#" };
		{ 10, 18432, "", "=q3=First Sergeant's Mail Wristguards", "", "300 #horde#" };
		{ 11, 16532, "", "=q3=First Sergeant's Mail Wristguards", "", "1600 #horde#" };
		{ 13, 18430, "", "=q3=First Sergeant's Plate Bracers", "", "300 #horde#" };
		{ 14, 18429, "", "=q3=First Sergeant's Plate Bracers", "", "1600 #horde#" };
		{ 16, 18427, "", "=q3=Sergeant's Cloak", "", "100 #horde#" };
		{ 17, 16341, "", "=q3=Sergeant's Cloak", "", "300 #horde#" };
		{ 18, 18461, "", "=q3=Sergeant's Cloak", "", "1600 #horde#" };
		{ 20, 15200, "", "=q3=Senior Sergeant's Insignia", "", "100 #horde#" };
		{ 21, 18428, "", "=q3=Senior Sergeant's Insignia", "", "300 #horde#" };
		{ 22, 16335, "", "=q3=Senior Sergeant's Insignia", "", "1600 #horde#" };
	};
};

AtlasLoot_Data["PvP60Ench"] = {
	Name = AL["PvP Enchants"];
	{
		Name = AL["PvP Enchants"];
		{ 1, 100545, "", "=q3=Superior Resistance, =ds=", "25000 #alliance#" };
		{ 2, 100546, "", "=q3=Lesser Resilience, =ds=", "25000 #alliance#" };
		{ 3, 100547, "", "=q2=Absorption, =ds=", "25000 #alliance#" };
		{ 4, 100548, "", "=q2=Lesser Stats, =ds=", "25000 #alliance#" };
		{ 5, 100549, "", "=q2=Superior Intellect, =ds=", "25000 #alliance#" };
		{ 6, 100550, "", "=q3=Nature Power, =ds=", "25000 #alliance#" };
		{ 7, 100551, "", "=q3=Arcane Power, =ds=", "25000 #alliance#" };
		{ 8, 100552, "", "=q3=Holy Power, =ds=", "25000 #alliance#" };
		{ 9, 100553, "", "=q4=Greater Healing Power, =ds=", "25000 #alliance#" };
		{ 10, 100554, "", "=q3=Superior Strength, =ds=", "25000 #alliance#" };
		{ 11, 100555, "", "=q3=Greater Riding Skill, =ds=", "25000 #alliance#" };
		{ 12, 100556, "", "=q3=Lesser Boar's Speed, =ds=", "25000 #alliance#" };
		{ 13, 100557, "", "=q3=Lesser Cat's Swiftness, =ds=", "25000 #alliance#" };
		{ 14, 100558, "", "=q3=Lesser Falcon's Quickness, =ds=", "25000 #alliance#" };
		{ 15, 100559, "", "=q4=Lesser Stamina, =ds=", "25000 #alliance#" };
		{ 16, 100560, "", "=q4=Lesser Stats, =ds=", "25000 #alliance#" };
		{ 17, 100561, "", "=q4=Lesser Blood Draining, =ds=", "40000 #alliance#" };
		{ 18, 100563, "", "=q3=Lesser Arcanum of Dominance, =ds=", "40000 #alliance#" };
		{ 19, 100564, "", "=q3=Lesser Arcanum of Triumph, =ds=", "50000 #alliance#" };
		{ 20, 449570, "", "=q3=Lesser Inscription of the Gladiator, =ds=", "40000 #alliance#" };
		{ 21, 449571, "", "=q3=Lesser Inscription of the Battle Mage, =ds=", "40000 #alliance#" };
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
		{ 1, 6789, "", "=q2=Ceremonial Centaur Blanket", "=q1=#m4#: =ds=#s4#" };
		{ 2, 6788, "", "=q2=Magram Hunter's Belt", "=q1=#m4#: =ds=#s10#, #a2#" };
	};
	{
		Name = BabbleFaction["Gelkis Clan Centaur"];
		{ 1, 6773, "", "=q2=Gelkis Marauder Chain", "=q1=#m4#: =ds=#s5#, #a3#" };
		{ 2, 6774, "", "=q2=Uthek's Finger", "=q1=#m4#: =ds=#s15#" };
	};
};

AtlasLoot_Data["Wintersaber"] = {
	Name = BabbleFaction["Wintersaber Trainers"];
	{
		Name = BabbleFaction["Wintersaber Trainers"];
		{ 1, 13086, "", "=q4=Reins of the Winterspring Frostsaber" };
	};
};

AtlasLoot_Data["ArathiBasinFactions"] = {
	Name = BabbleZone["Arathi Basin"];
	{
		Name = BabbleFaction["The League of Arathor"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		{ 6, 20132, "", "=q1=Arathor Battle Tabard", "=q1=#m4#: =ds=#s7#" };
	};
	{
		Name = BabbleFaction["The Defilers"] .. " (" .. BabbleFaction["Horde"] .. ")";
		{ 21, 20131, "", "=q1=Battle Tabard of the Defilers", "=q1=#m4#: =ds=#s7#" };
	};
};

-------------------
--- Argent Dawn ---
-------------------

AtlasLoot_Data["Argent"] = {
	Name = BabbleFaction["Argent Dawn"];
	{
		Name = BabbleFaction["Argent Dawn"];
		{ 1, 22689, "", "=q3=Sanctified Leather Helm" };
		{ 2, 22690, "", "=q3=Leggings of the Plague Hunter" };
		{ 3, 22681, "", "=q3=Band of Piety" };
		{ 4, 22680, "", "=q3=Band of Resolution" };
		{ 5, 22688, "", "=q3=Verimonde's Last Resort" };
		{ 6, 22679, "", "=q3=Supply Bag" };
		{ 8, 22638, "", "=q3=Shadow Guard" };
		{ 10, 22523, "", "=q2=Insignia of the Dawn" };
		{ 12, 12844, "", "=q2=Argent Dawn Valor Token" };
		{ 16, 22667, "", "=q4=Bracers of Hope" };
		{ 17, 22668, "", "=q4=Bracers of Subterfuge" };
		{ 18, 22657, "", "=q4=Amulet of the Dawn" };
		{ 19, 22659, "", "=q4=Medallion of the Dawn" };
		{ 20, 22678, "", "=q4=Talisman of Ascendance" };
		{ 21, 22656, "", "=q4=The Purifier" };
		{ 23, 22636, "", "=q3=Ice Guard" };
		{ 25, 22524, "", "=q2=Insignia of the Crusade" };
	};
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 13724, "", "=q1=Enriched Manna Biscuit" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 13482, "", "=q2=Recipe: Transmute Air to Fire", "=ds=#p1# (275)" };
		{ 2, 19203, "", "=q1=Plans: Girdle of the Dawn", "=ds=#p2# (290)" };
		{ 3, 19446, "", "=q1=Formula: Enchant Bracer - Mana Regeneration", "=ds=#p4# (290)" };
		{ 4, 19442, "", "=q1=Formula: Powerful Anti-Venom", "=ds=#p6# (300)" };
		{ 5, 19328, "", "=q1=Pattern: Dawn Treaders", "=ds=#p7# (290)" };
		{ 6, 19216, "", "=q1=Pattern: Argent Boots", "=ds=#p8# (290)" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 18171, "", "=q2=Arcane Mantle of the Dawn" };
		{ 2, 18169, "", "=q2=Flame Mantle of the Dawn" };
		{ 3, 18170, "", "=q2=Frost Mantle of the Dawn" };
		{ 4, 18172, "", "=q2=Nature Mantle of the Dawn" };
		{ 5, 18173, "", "=q2=Shadow Mantle of the Dawn" };
		{ 6, 19205, "", "=q1=Plans: Gloves of the Dawn", "=ds=#p2# (300)" };
		{ 7, 19447, "", "=q1=Formula: Enchant Bracer - Healing" };
		{ 8, 19329, "", "=q1=Pattern: Golden Mantle of the Dawn", "=ds=#p7# (300)" };
		{ 9, 19217, "", "=q1=Pattern: Argent Shoulders", "=ds=#p8# (300)" };
		{ 10, 13810, "", "=q1=Blessed Sunfruit" };
		{ 11, 13813, "", "=q1=Blessed Sunfruit Juice" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 18182, "", "=q2=Chromatic Mantle of the Dawn" };
	};
};
---------------------------------------------------
--- Bloodsail Buccaneers & Hydraxian Waterlords ---
---------------------------------------------------

AtlasLoot_Data["Bloodsail"] = {
	Name = BabbleFaction["Bloodsail Buccaneers"];
	{
		Name = BabbleFaction["Bloodsail Buccaneers"];
		{ 1, 0, "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r1#" };
		{ 2, 22742, "", "=q1=Bloodsail Shirt" };
		{ 3, 22743, "", "=q1=Bloodsail Sash" };
		{ 4, 22745, "", "=q1=Bloodsail Pants" };
		{ 5, 22744, "", "=q1=Bloodsail Boots" };
		{ 7, 0, "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r2#" };
		{ 8, 12185, "", "=q2=Bloodsail Admiral's Hat" };
	};
};

AtlasLoot_Data["Hydraxian"] = {
	Name = BabbleFaction["Hydraxian Waterlords"];
	{
		Name = BabbleFaction["Hydraxian Waterlords"];
		{ 1, 0, "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r3#" };
		{ 2, 18399, "", "=q3=Ocean's Breeze" };
		{ 3, 18398, "", "=q3=Tidal Loop" };
		{ 4, 17333, "", "=q1=Aqual Quintessence" };
		{ 16, 0, "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r4#" };
		{ 17, 22754, "", "=q1=Eternal Quintessence" };
	};
};
-------------------------
--- Brood of Nozdormu ---
-------------------------

AtlasLoot_Data["AQBroodRings"] = {
	Name = BabbleFaction["Brood of Nozdormu"];
	{
		Name = BabbleFaction["Brood of Nozdormu"];
		{ 1, 0, "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Conqueror"] };
		{ 2, 21201, "", "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		{ 3, 21202, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 4, 21203, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 5, 21204, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 6, 21205, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 8, 0, "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Invoker"] };
		{ 9, 21206, "", "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		{ 10, 21207, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 11, 21208, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 12, 21209, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 13, 21210, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 16, 0, "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Protector"] };
		{ 17, 21196, "", "=q4=Signet Ring of the Bronze Dragonflight", "=ds=#s13#, =q1=#r1#" };
		{ 18, 21197, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 19, 21198, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 20, 21199, "", "=q4=Signet Ring of the Bronze Dragonflight" };
		{ 21, 21200, "", "=q4=Signet Ring of the Bronze Dragonflight" };
	};
};

-----------------------
--- Cenarion Circle ---
-----------------------

AtlasLoot_Data["Cenarion"] = {
	Name = BabbleFaction["Cenarion Circle"];
	{
		Name = BabbleFaction["Cenarion Circle"];
		{ 1, 22209, "", "=q1=Plans: Heavy Obsidian Belt", "=ds=#p2# (300)" };
		{ 2, 22768, "", "=q1=Plans: Ironvine Belt", "=ds=#p2# (300)" };
		{ 3, 20732, "", "=q1=Formula: Enchant Cloak - Greater Fire Resistance" };
		{ 4, 22769, "", "=q1=Pattern: Bramblewood Belt", "=ds=#p7# (300)" };
		{ 5, 20509, "", "=q1=Pattern: Sandstalker Bracers", "=ds=#p7# (300)" };
		{ 6, 20506, "", "=q1=Pattern: Spitfire Bracers", "=ds=#p7# (300)" };
		{ 7, 22772, "", "=q1=Pattern: Sylvan Shoulders", "=ds=#p8# (300)" };
		{ 8, 22310, "", "=q1=Pattern: Cenarion Herb Bag", "=ds=#p8# (275)" };
		{ 10, 20802, "", "=q2=Cenarion Combat Badge" };
		{ 11, 20800, "", "=q2=Cenarion Logistics Badge" };
		{ 12, 21515, "", "=q2=Mark of Remulos" };
		{ 16, 0, "INV_QirajIdol_Amber", "=q6=#j8#" };
		{ 17, 21187, "", "=q3=Earthweave Cloak", "", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		{ 18, 21178, "", "=q3=Gloves of Earthen Power", "", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		{ 19, 21179, "", "=q3=Band of Earthen Wrath", "", "5 #ccombat# 3 #clogistics# 7 #ctactical#" };
		{ 25, 20801, "", "=q2=Cenarion Tactical Badge" };
		{ 26, 21508, "", "=q2=Mark of Cenarius" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		{ 1, 22767, "", "=q1=Plans: Ironvine Gloves", "=ds=#p2# (300)" };
		{ 2, 22214, "", "=q1=Plans: Light Obsidian Belt", "=ds=#p2# (300)" };
		{ 3, 20733, "", "=q1=Formula: Enchant Cloak - Greater Nature Resistance" };
		{ 4, 22770, "", "=q1=Pattern: Bramblewood Boots", "=ds=#p7# (300)" };
		{ 5, 20510, "", "=q1=Pattern: Sandstalker Gauntlets", "=ds=#p7# (300)" };
		{ 6, 20507, "", "=q1=Pattern: Spitfire Gauntlets", "=ds=#p7# (300)" };
		{ 7, 22773, "", "=q1=Pattern: Sylvan Crown", "=ds=#p8# (300)" };
		{ 16, 0, "INV_QirajIdol_Amber", "=q6=#j8#" };
		{ 17, 21183, "", "=q3=Earthpower Vest", "", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
		{ 18, 21182, "", "=q3=Band of Earthen Might", "", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
		{ 19, 21181, "", "=q3=Grace of Earth", "", "7 #ccombat# 4 #clogistics# 4 #ctactical#" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		{ 1, 22766, "", "=q1=Plans: Ironvine Breastplate", "=ds=#p2# (300)" };
		{ 2, 22219, "", "=q1=Plans: Jagged Obsidian Shield", "=ds=#p2# (300)" };
		{ 3, 22771, "", "=q1=Pattern: Bramblewood Helm", "=ds=#p7# (300)" };
		{ 4, 20511, "", "=q1=Pattern: Sandstalker Breastplate", "=ds=#p7# (300)" };
		{ 5, 20508, "", "=q1=Pattern: Spitfire Breastplate", "=ds=#p7# (300)" };
		{ 6, 22683, "", "=q1=Pattern: Gaea's Embrace", "=ds=#p8# (300)" };
		{ 7, 22312, "", "=q1=Pattern: Satchel of Cenarius", "=ds=#p8# (300)" };
		{ 8, 22774, "", "=q1=Pattern: Sylvan Vest", "=ds=#p8# (300)" };
		{ 16, 0, "INV_QirajIdol_Amber", "=q6=#j8#" };
		{ 17, 21186, "", "=q4=Rockfury Bracers", "", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		{ 18, 21184, "", "=q4=Deeprock Bracers", "", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		{ 19, 21189, "", "=q4=Might of Cenarius", "", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
		{ 20, 21185, "", "=q4=Earthcalm Orb", "", "15 #ccombat# 20 #clogistics# 17 #ctactical# 1 #cremulos#" };
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		{ 1, 22221, "", "=q1=Plans: Obsidian Mail Tunic", "=ds=#p2# (300)" };
		{ 2, 20382, "", "=q1=Pattern: Dreamscale Breastplate", "=ds=#p7# (300)" };
		{ 16, 0, "INV_QirajIdol_Amber", "=q6=#j8#" };
		{ 17, 21190, "", "=q4=Wrath of Cenarius", "", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#" };
		{ 18, 21180, "", "=q4=Earthstrike", "", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#" };
		{ 19, 21188, "", "=q4=Fist of Cenarius", "", "15 #ccombat# 20 #clogistics# 20 #ctactical# 1 #ccenarius#" };
	};
};

----------------------------------------
--- Stormpike Guard & Frostwolf Clan ---
----------------------------------------

AtlasLoot_Data["AlteracFactions"] = {
	Name = BabbleZone["Alterac Valley"];
	{
		Name = BabbleFaction["Stormpike Guard"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		{ 1, 17904, "", "=q4=Stormpike Insignia Rank 6", "=ds=#s14#, =q1=#r5#" };
		{ 2, 17903, "", "=q3=Stormpike Insignia Rank 5", "=ds=#s14#, =q1=#r5#" };
		{ 3, 17902, "", "=q3=Stormpike Insignia Rank 4", "=ds=#s14#, =q1=#r4#" };
		{ 4, 17901, "", "=q2=Stormpike Insignia Rank 3", "=ds=#s14#, =q1=#r3#" };
		{ 5, 17900, "", "=q2=Stormpike Insignia Rank 2", "=ds=#s14#, =q1=#r2#" };
		{ 6, 17691, "", "=q2=Stormpike Insignia Rank 1", "=ds=#s14#, =q1=#r1#" };
		{ 7, 20648, "", "=q3=Cold Forged Hammer", "=q1=#m4#: =ds=#h3#, #w6#" };
		{ 8, 19106, "", "=q3=Ice Barbed Spear", "=q1=#m4#: =ds=#w7#" };
		{ 9, 19108, "", "=q3=Wand of Biting Cold", "=q1=#m4#: =ds=#w12#" };
		{ 10, 19107, "", "=q3=Bloodseeker", "=q1=#m4#: =ds=#w3#" };
	};
	{
		Name = BabbleFaction["Frostwolf Clan"] .. " (" .. BabbleFaction["Horde"] .. ")";
		{ 1, 17909, "", "=q4=Frostwolf Insignia Rank 6", "=ds=#s14#, =q1=#r5#" };
		{ 2, 17908, "", "=q3=Frostwolf Insignia Rank 5", "=ds=#s14#, =q1=#r5#" };
		{ 3, 17907, "", "=q3=Frostwolf Insignia Rank 4", "=ds=#s14#, =q1=#r4#" };
		{ 4, 17906, "", "=q2=Frostwolf Insignia Rank 3", "=ds=#s14#, =q1=#r3#" };
		{ 5, 17905, "", "=q2=Frostwolf Insignia Rank 2", "=ds=#s14#, =q1=#r2#" };
		{ 6, 17690, "", "=q2=Frostwolf Insignia Rank 1", "=ds=#s14#, =q1=#r1#" };
	};
};

---------------------------
--- Thorium Brotherhood ---
---------------------------

AtlasLoot_Data["Thorium"] = {
	Name = BabbleFaction["Thorium Brotherhood"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 17051, "", "=q3=Plans: Dark Iron Bracers", "=ds=#p2# (295)" };
		{ 2, 20761, "", "=q1=Recipe: Transmute Elemental Fire" };
		{ 3, 19444, "", "=q1=Formula: Enchant Weapon - Strength", "=ds=#p4# (290)" };
		{ 4, 17023, "", "=q1=Pattern: Molten Helm", "=ds=#p7# (300)" };
		{ 5, 17022, "", "=q1=Pattern: Corehound Boots", "=ds=#p7# (295)" };
		{ 6, 17018, "", "=q1=Pattern: Flarecore Gloves", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 17060, "", "=q3=Plans: Dark Iron Destroyer", "=ds=#p2# (300)" };
		{ 2, 17059, "", "=q3=Plans: Dark Iron Reaver", "=ds=#p2# (300)" };
		{ 3, 17049, "", "=q3=Plans: Fiery Chain Girdle", "=ds=#p2# (295)" };
		{ 4, 19206, "", "=q1=Plans: Dark Iron Helm", "=ds=#p2# (300)" };
		{ 5, 19448, "", "=q1=Formula: Enchant Weapon - Mighty Spirit" };
		{ 6, 17025, "", "=q1=Pattern: Black Dragonscale Boots", "=ds=#p7# (300)" };
		{ 7, 19330, "", "=q1=Pattern: Lava Belt", "=ds=#p7# (300)" };
		{ 8, 17017, "", "=q1=Pattern: Flarecore Mantle", "=ds=#p8# (300)" };
		{ 9, 19219, "", "=q1=Pattern: Flarecore Robe", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 18592, "", "=q4=Plans: Sulfuron Hammer", "=ds=#p2# (300), #m4#" };
		{ 2, 17052, "", "=q3=Plans: Dark Iron Leggings", "=ds=#p2# (300)" };
		{ 3, 17053, "", "=q3=Plans: Fiery Chain Shoulders", "=ds=#p2# (300)" };
		{ 4, 19209, "", "=q1=Plans: Blackfury", "=ds=#p2# (300)" };
		{ 5, 19208, "", "=q1=Plans: Black Amnesty", "=ds=#p2# (300)" };
		{ 6, 19207, "", "=q1=Plans: Dark Iron Gauntlets", "=ds=#p2# (300)" };
		{ 7, 19449, "", "=q1=Formula: Enchant Weapon - Mighty Intellect" };
		{ 8, 19331, "", "=q1=Pattern: Chromatic Gauntlets", "=ds=#p7# (300)" };
		{ 9, 19332, "", "=q1=Pattern: Corehound Belt", "=ds=#p7# (300)" };
		{ 9, 19333, "", "=q1=Pattern: Molten Belt", "=ds=#p7# (300)" };
		{ 10, 19220, "", "=q1=Pattern: Flarecore Leggings", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 19211, "", "=q1=Plans: Blackguard", "=ds=#p2# (300)" };
		{ 2, 20040, "", "=q1=Plans: Dark Iron Boots", "=ds=#p2# (300)" };
		{ 3, 19210, "", "=q1=Plans: Ebon Hand", "=ds=#p2# (300)" };
		{ 4, 19212, "", "=q1=Plans: Nightfall", "=ds=#p2# (300)" };
	};
};
----------------------
--- Timbermaw Hold ---
----------------------

AtlasLoot_Data["Timbermaw"] = {
	Name = BabbleFaction["Timbermaw Hold"];
	{
		Name = BabbleFaction["Timbermaw Hold"];
		{ 1, 0, "INV_Misc_Horn_01", "=q6=#r2#" };
		{ 2, 13484, "", "=q2=Recipe: Transmute Earth to Water", "=ds=#p1# (275)" };
		{ 3, 22392, "", "=q1=Formula: Enchant 2H Weapon - Agility", "=ds=#p4# (290)" };
		{ 4, 20254, "", "=q1=Pattern: Warbear Woolies", "=ds=#p7# (285)" };
		{ 5, 20253, "", "=q1=Pattern: Warbear Harness", "=ds=#p7# (275)" };
		{ 7, 0, "INV_Misc_Horn_01", "=q6=#r3#" };
		{ 8, 16768, "", "=q2=Furbolg Medicine Pouch" };
		{ 9, 16769, "", "=q2=Furbolg Medicine Totem" };
		{ 10, 19202, "", "=q1=Plans: Heavy Timbermaw Belt", "=ds=#p2# (290)" };
		{ 11, 19445, "", "=q1=Formula: Enchant Weapon - Agility", "=ds=#p4# (290)" };
		{ 12, 19326, "", "=q1=Pattern: Might of the Timbermaw", "=ds=#p7# (290)" };
		{ 13, 19215, "", "=q1=Pattern: Wisdom of the Timbermaw", "=ds=#p8# (290)" };
		{ 16, 0, "INV_Misc_Horn_01", "=q6=#r4#" };
		{ 17, 19204, "", "=q1=Plans: Heavy Timbermaw Boots", "=ds=#p2# (300)" };
		{ 18, 19327, "", "=q1=Pattern: Timbermaw Brawlers", "=ds=#p7# (300)" };
		{ 19, 19218, "", "=q1=Pattern: Mantle of the Timbermaw", "=ds=#p8# (300)" };
		{ 22, 0, "INV_Misc_Horn_01", "=q6=#r5#" };
		{ 23, 21326, "", "=q4=Defender of the Timbermaw" };
	};
};

----------------------
--- Zandalar Tribe ---
----------------------

AtlasLoot_Data["Zandalar"] = {
	Name = BabbleFaction["Zandalar Tribe"];
	{
		Name = AL["Miscellaneous"];
		{ 1, 19858, "", "=q2=Zandalar Honor Token" };
	};
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 0, "INV_Misc_Coin_08", "=q6=#r2#" };
		{ 2, 20012, "", "=q1=Recipe: Greater Dreamless Sleep", "=ds=#p1# (275)" };
		{ 3, 19778, "", "=q1=Plans: Bloodsoul Gauntlets", "=ds=#p2# (300)" };
		{ 4, 19781, "", "=q1=Plans: Darksoul Shoulders", "=ds=#p2# (300)" };
		{ 5, 20757, "", "=q1=Formula: Brilliant Mana Oil" };
		{ 6, 20001, "", "=q1=Schematic: Bloodvine Lens", "=ds=#p5# (300)" };
		{ 7, 19771, "", "=q1=Pattern: Primal Batskin Bracers", "=ds=#p7# (300)" };
		{ 8, 19766, "", "=q1=Pattern: Bloodvine Boots", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 20014, "", "=q1=Recipe: Major Troll's Blood Potion", "=ds=#p1# (290)" };
		{ 2, 19777, "", "=q1=Plans: Bloodsoul Shoulders", "=ds=#p2# (300)" };
		{ 3, 19780, "", "=q1=Plans: Darksoul Leggings", "=ds=#p2# (300)" };
		{ 4, 20756, "", "=q1=Formula: Brilliant Wizard Oil" };
		{ 5, 20000, "", "=q1=Schematic: Bloodvine Goggles", "=ds=#p5# (300)" };
		{ 6, 19773, "", "=q1=Pattern: Blood Tiger Shoulders", "=ds=#p7# (300)" };
		{ 7, 19770, "", "=q1=Pattern: Primal Batskin Gloves", "=ds=#p7# (300)" };
		{ 8, 19765, "", "=q1=Pattern: Bloodvine Leggings", "=ds=#p8# (300)" };
		{ 9, 20031, "", "=q1=Essence Mango", "", "1 #zandalar#" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 20080, "", "=q2=Sheen of Zanza", "", "3 #zandalar#" };
		{ 2, 20079, "", "=q2=Spirit of Zanza", "", "3 #zandalar#" };
		{ 3, 20081, "", "=q2=Swiftness of Zanza", "", "3 #zandalar#" };
		{ 4, 20011, "", "=q1=Recipe: Mageblood Potion", "=ds=#p1# (275)" };
		{ 5, 19776, "", "=q1=Plans: Bloodsoul Breastplate", "=ds=#p2# (300)" };
		{ 6, 19779, "", "=q1=Plans: Darksoul Breastplate", "=ds=#p2# (300)" };
		{ 7, 19772, "", "=q1=Pattern: Blood Tiger Breastplate", "=ds=#p7# (300)" };
		{ 8, 19769, "", "=q1=Pattern: Primal Batskin Jerkin", "=ds=#p7# (300)" };
		{ 9, 19764, "", "=q1=Pattern: Bloodvine Vest", "=ds=#p8# (300)" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 20077, "", "=q3=Zandalar Signet of Might", "", "15 #zandalar#" };
		{ 2, 20076, "", "=q3=Zandalar Signet of Mojo", "", "15 #zandalar#" };
		{ 3, 20078, "", "=q3=Zandalar Signet of Serenity", "", "15 #zandalar#" };
		{ 4, 20013, "", "=q1=Recipe: Living Action Potion", "=ds=#p1# (285)" };
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
		{ 1, 20581, "", "=q4=Staff of Rampant Growth", "=ds=#w9# =q1=#m5#", "", droprate = "9%" };
		{ 2, 17070, "", "=q4=Fang of the Mystics",  droprate = "13%" };
		{ 3, 19130, "", "=q4=Cold Snap",  droprate = "11%" };
		{ 4, 17113, "", "=q4=Amberseal Keeper",  "16% " };
		{ 5, 20636, "", "=q4=Hibernation Crystal",  droprate = "12%" };
		{ 6, 20582, "", "=q4=Trance Stone", "=ds=#s15# =q1=#m5#", "", droprate = "9%" };
		{ 7, 18665, "", "=q4=The Eye of Shadow",  droprate = "40%" };
		{ 14, 18704, "", "=q4=Mature Blue Dragon Sinew", "=ds=#m3# =q1=(#c2#)", "", droprate = "51%" };
		{ 15, 18714, "", "=q4=Ancient Sinew Wrapped Lamina", "=q1=#m4#: =ds=#m14# #w19#" };
		{ 16, 20580, "", "=q4=Hammer of Bestial Fury", "=ds=#h3#, #w6# =q1=#m5#", "", droprate = "8%" };
		{ 17, 20599, "", "=q4=Polished Ironwood Crossbow",  droprate = "12%" };
		{ 18, 18202, "", "=q4=Eskhandar's Left Claw",  droprate = "11%" };
		{ 19, 20577, "", "=q4=Nightmare Blade",  droprate = "12%" };
		{ 20, 20578, "", "=q4=Emerald Dragonfang",  droprate = "9%" };
		{ 21, 17112, "", "=q4=Empyrean Demolisher" };
		{ 22, 18542, "", "=q4=Typhoon",  droprate = "16%" };
		{ 29, 20644, "", "=q4=Nightmare Engulfed Object", "=ds=#m3# =q1=#m5#", "", droprate = "80%" };
		{ 30, 20600, "", "=q4=Malfurion's Signet Ring" };
	};
	{
		Name = "Physical Gear";
		{ 1, 20623, "", "=q4=Circlet of Restless Dreams",  droprate = "10%" };
		{ 3, 20615, "", "=q4=Dragonspur Wraps", "=ds=#s8#, #a2# =q1=#m5#", "", droprate = "8%" };
		{ 4, 122884, "", "=q4=Wristguards of the Shifting Sands" };
		{ 6, 122885, "", "=q4=Waistguard of the Shifting Sands" };
		{ 8, 18544, "", "=q4=Doomhide Gauntlets",  droprate = "11%" };
		{ 10, 20627, "", "=q4=Dark Heart Pants",  droprate = "11%" };
		{ 13, 20633, "", "=q4=Unnatural Leather Spaulders",  droprate = "11%" };
		{ 11, 20617, "", "=q4=Ancient Corroded Leggings", "=ds=#s11#, #a3# =q1=#m5#", "", "9.%" };
		{ 16, 20624, "", "=q4=Ring of the Unliving",  droprate = "13%" };
		{ 18, 20622, "", "=q4=Dragonheart Necklace",  droprate = "12%" };
		{ 20, 18541, "", "=q4=Puissant Cape",  droprate = "11%" };
		{ 21, 18204, "", "=q4=Eskhandar's Pelt", "=ds=#s4#, #a1#", "", droprate = "12%" };
	};
	{
		Name = "Caster Gear";
		{ 1, 19132, "", "=q4=Crystal Adorned Crown" };
		{ 2, 18546, "", "=q4=Infernal Headcage",  droprate = "22%" };
		{ 3, 20628, "", "=q4=Deviate Growth Cap",  "15.%" };
		{ 5, 18545, "", "=q4=Leggings of Arcane Supremacy",  "16% " };
		{ 6, 19133, "", "=q4=Fel Infused Leggings",  droprate = "12%" };
		{ 7, 20638, "", "=q4=Leggings of the Demented Mind",  droprate = "3%" };
		{ 8, 20639, "", "=q4=Strangely Glyphed Legplates",  droprate = "8%" };
		{ 10, 19131, "", "=q4=Snowblind Shoes",  droprate = "12%" };
		{ 11, 20631, "", "=q4=Mendicant's Slippers",  droprate = "13%" };
		{ 12, 20634, "", "=q4=Boots of Fright",  droprate = "10%" };
		{ 13, 20621, "", "=q4=Boots of the Endless Moor",  droprate = "10%" };
		{ 14, 20629, "", "=q4=Malignant Footguards",  droprate = "4%" };
		{ 16, 20630, "", "=q4=Gauntlets of the Shining Light",  droprate = "8%" };
		{ 17, 20618, "", "=q4=Gloves of Delusional Power", "=ds=#s9#, #a1# =q1=#m5#", "", droprate = "9%" };
		{ 15, 20635, "", "=q4=Jade Inlaid Vestments",  droprate = "14%" };
		{ 19, 19135, "", "=q4=Blacklight Bracer",  droprate = "11%" };
		{ 20, 122886, "", "=q4=Bracers of the Sand Prince" };
		{ 21, 20626, "", "=q4=Black Bark Wristbands",  droprate = "9%" };
		{ 23, 122887, "", "=q4=Belt of the Sand Prince" };
		{ 24, 19134, "", "=q4=Flayed Doomguard Belt",  droprate = "16%" };
		{ 25, 20625, "", "=q4=Belt of the Dark Bog",  droprate = "10%" };
		{ 27, 20579, "", "=q4=Green Dragonskin Cloak", "=ds=#s4# =q1=#m5#", "", droprate = "9%" };
		{ 28, 18208, "", "=q4=Drape of Benediction",  droprate = "11%" };
		{ 29, 20632, "", "=q4=Mindtear Band",  droprate = "13%" };
		{ 30, 18543, "", "=q4=Ring of Entropy",  droprate = "14%" };
	};
	{
		Name = "Tank Gear";
		{ 1, 18547, "", "=q4=Unmelting Ice Girdle",  droprate = "12%" };
		{ 3, 20616, "", "=q4=Dragonbone Wristguards", "=ds=#s8#, #a4# =q1=#m5#", "", droprate = "10%" };
		{ 5, 20619, "", "=q4=Acid Inscribed Greaves", "=ds=#s12#, #a4# =q1=#m5#", "", droprate = "8%" };
		{ 7, 20637, "", "=q4=Acid Inscribed Pauldrons",  droprate = "10%" };
	};
};