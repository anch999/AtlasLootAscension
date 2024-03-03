local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local WHITE = "|cffFFFFFF"
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
	Module = "AtlasLoot_OriginalWoW";
	Name = "Old Keys";
	{
		Name = "Old Keys";
		[1] = { icon = "INV_Box_01", name = "=q6="..BabbleInventory["Key"].."s" };
		[2] = { itemID = 7146 }; --The Scarlet Key
		[3] = { itemID = 12382 }; --Key to the City
		[4] = { itemID = 6893 }; --Workshop Key
		[5] = { itemID = 11000 }; --Shadowforge Key
		[6] = { itemID = 11140 }; --Prison Cell Key
		[7] = { itemID = 18249 }; --Crescent Key
		[8] = { itemID = 13704 }; --Skeleton Key
		[10] = { icon = "INV_Box_01", "=q6=#j7#" };
		[11] = { itemID = 22057 }; --Brazier of Invocation
		[12] = { itemID = 21986 }; --Banner of Provocation
		[16] = { icon = "INV_Box_01", "=q6=#m20#" };
		[17] = { itemID = 19931 }; --Gurubashi Mojo Madness
		[18] = { itemID = 13523 }; --Blood of Innocents
		[19] = { itemID = 18746 }; --Divination Scryer
		[20] = { itemID = 18663 }; --J'eevee's Jar
		[21] = { itemID = 19974 }; --Mudskunk Lure
		[22] = { itemID = 7733 }; --Staff of Prehistoria
		[23] = { itemID = 10818 }; --Yeh'kinya's Scroll
	};
};

-----------------------------------------
--- Ahn'Qiraj: The Ruins of Ahn'Qiraj ---
-----------------------------------------

AtlasLoot_Data["RuinsofAQ"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Ruins of Ahn'Qiraj"];
	Type = "ClassicRaid";
	Map = "TheRuinsofAhnQiraj";
	{
		Name = BabbleBoss["Kurinnaxx"];
		[1] = { itemID = 21499, droprate = "7.34%" }; --Vestments of the Shifting Sands
		[2] = { itemID = 21498, droprate = "7.53%" }; --Qiraji Sacrificial Dagger
		[4] = { itemID = 21500, droprate = "14.84%" }; --Belt of the Inquisition
		[5] = { itemID = 21501, droprate = "12.91%" }; --Toughened Silithid Hide Gloves
		[6] = { itemID = 21502, droprate = "13.79%" }; --Sand Reaver Wristguards
		[7] = { itemID = 21503, droprate = "14.38%" }; --Belt of the Sand Reaver
		[9] = { itemID = 22217, droprate = "100%" }; --Kurinnaxx's Venom Sac
		[16] = { itemID = 1506051, droprate = "100%", lootTable = {"AQ20SetsBACK","Token"} }; --Ceremonial Qiraji Drape
	};
	{
		Name = BabbleBoss["General Rajaxx"];
		[1] = { itemID = 21493, droprate = "8.13%" }; --Boots of the Vanguard
		[2] = { itemID = 21492, droprate = "10.04%" }; --Manslayer of the Qiraji
		[4] = { itemID = 21496, droprate = "15.79%" }; --Bracers of Qiraji Command
		[5] = { itemID = 21494, droprate = "15.13%" }; --Southwind's Grasp
		[6] = { itemID = 21497, droprate = "15.45%" }; --Boots of the Qiraji General
		[7] = { itemID = 21495, droprate = "15.47%" }; --Legplates of the Qiraji Command
		[9] = { icon = "INV_Box_01", "=q6=" .. AL["Rajaxx's Captains"] };
		[10] = { itemID = 21810, droprate = "3.11%" }; --Treads of the Wandering Nomad
		[11] = { itemID = 21809, droprate = "3.20%" }; --Fury of the Forgotten Swarm
		[12] = { itemID = 21806, droprate = "3.04%" }; --Gavel of Qiraji Authority
		[16] = { itemID = 1506051, droprate = "100%", lootTable = {"AQ20SetsBACK","Token"} }; --Ceremonial Qiraji Drape
		[18] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Lieutenant General Andorov"] };
		[19] = { itemID = 22221 }; --Plans: Obsidian Mail Tunic
		[20] = { itemID = 22219 }; --Plans: Jagged Obsidian Shield
	};
	{
		Name = BabbleBoss["Moam"];
		[1] = { itemID = 21472, droprate = "7.76%" }; --Dustwind Turban
		[2] = { itemID = 21467, droprate = "6.76%" }; --Thick Silithid Chestguard
		[3] = { itemID = 21479, droprate = "7.12%" }; --Gauntlets of the Immovable
		[4] = { itemID = 21471, droprate = "7.39%" }; --Talon of Furious Concentration
		[6] = { itemID = 21470, droprate = "14.23%" }; --Cloak of the Savior
		[7] = { itemID = 21468, droprate = "15.86%" }; --Mantle of Maz'Nadir
		[8] = { itemID = 21455, droprate = "14.08%" }; --Southwind Helm
		[9] = { itemID = 21474, droprate = "15.25%" }; --Chitinous Shoulderguards
		[10] = { itemID = 21469, droprate = "1" }; --Gauntlets of Southwind
		[11] = { itemID = 21476, droprate = "6.81%" }; --Obsidian Scaled Leggings
		[12] = { itemID = 21475, droprate = "10.39%" }; --Legplates of the Destroyer
		[13] = { itemID = 21477, droprate = "14.42%" }; --Ring of Fury
		[14] = { itemID = 21473, droprate = "14.74%" }; --Eye of Moam
		[16] = { itemID = 1506053, droprate = "100%", lootTable = {"AQ20SetsNECK","Token"} }; --Ceremonial Qiraji Pendant
		[18] = { itemID = 22220, droprate = "4.11%" }; --Plans: Black Grasp of the Destroyer
		[19] = { itemID = 22194 }; --Black Grasp of the Destroyer
	};
	{
		Name = BabbleBoss["Buru the Gorger"];
		[1] = { itemID = 21487, droprate = "2.64%" }; --Slimy Scaled Gauntlets
		[2] = { itemID = 21486, droprate = "5.22%" }; --Gloves of the Swarm
		[3] = { itemID = 21485, droprate = "7.88%" }; --Buru's Skull Fragment
		[5] = { itemID = 21489, droprate = "15.95%" }; --Quicksand Waders
		[6] = { itemID = 21491, droprate = "16.51%" }; --Scaled Bracers of the Gorger
		[7] = { itemID = 21490, droprate = "15.99%" }; --Slime Kickers
		[8] = { itemID = 21488, droprate = "17.22%" }; --Fetish of Chitinous Spikes
		[16] = { itemID = 1506052, droprate = "100%", lootTable = {"AQ20SetsFINGER","Token"} }; --Ceremonial Qiraji Ring
	};
	{
		Name = BabbleBoss["Ayamiss the Hunter"];
		[1] = { itemID = 21479, droprate = "6.18%" }; --Gauntlets of the Immovable
		[2] = { itemID = 21466, droprate = "2.06%" }; --Stinger of Ayamiss
		[3] = { itemID = 21478, droprate = "10.14%" }; --Bow of Taut Sinew
		[5] = { itemID = 21484, droprate = "15.85%" }; --Helm of Regrowth
		[6] = { itemID = 21480, droprate = "17.10%" }; --Scaled Silithid Gauntlets
		[7] = { itemID = 21482, droprate = "4.92%" }; --Boots of the Fiery Sands
		[8] = { itemID = 21481, droprate = "11.08%" }; --Boots of the Desert Protector
		[9] = { itemID = 21483, droprate = "16.32%" }; --Ring of the Desert Winds
		[16] = { itemID = 1506052, droprate = "100%", lootTable = {"AQ20SetsFINGER","Token"} }; --Ceremonial Qiraji Ring
	};
	{
		Name = BabbleBoss["Ossirian the Unscarred"];
		[1] = { itemID = 21456, droprate = "10.89%" }; --Sandstorm Cloak
		[2] = { itemID = 21464, droprate = "12.62%" }; --Shackles of the Unscarred
		[3] = { itemID = 21462, droprate = "11.89%" }; --Gloves of Dark Wisdom
		[4] = { itemID = 21461, droprate = "12.83%" }; --Leggings of the Black Blizzard
		[5] = { itemID = 21458, droprate = "13.25%" }; --Gauntlets of New Life
		[6] = { itemID = 21454, droprate = "4.10%" }; --Runic Stone Shoulders
		[7] = { itemID = 21463, droprate = "12.27%" }; --Ossirian's Binding
		[8] = { itemID = 21460, droprate = "12.18%" }; --Helm of Domination
		[9] = { itemID = 21453, droprate = "6.96%" }; --Mantle of the Horusath
		[10] = { itemID = 21457, droprate = "10.74%" }; --Bracers of Brutality
		[11] = { itemID = 21715, droprate = "5.95%" }; --Sand Polished Hammer
		[12] = { itemID = 21459, droprate = "6.12%" }; --Crossbow of Imminent Doom
		[13] = { itemID = 21452, droprate = "10.32%" }; --Staff of the Ruins
		[16] = { itemID = 21220, droprate = "100%" }; --Head of Ossirian the Unscarred
		[17] = { itemID = 21504 }; --Charm of the Shifting Sands
		[18] = { itemID = 21507 }; --Amulet of the Shifting Sands
		[19] = { itemID = 21505 }; --Choker of the Shifting Sands
		[20] = { itemID = 21506 }; --Pendant of the Shifting Sands
		[22] = { itemID = 1506053, droprate = "100%", lootTable = {"AQ20SetsNECK","Token"} }; --Ceremonial Qiraji Pendant
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20873, droprate = "0.39%" }; --Alabaster Idol
		[2] = { itemID = 20869, droprate = "0.36%" }; --Amber Idol
		[3] = { itemID = 20866, droprate = "0.48%" }; --Azure Idol
		[4] = { itemID = 20870, droprate = "0.52%" }; --Jasper Idol
		[5] = { itemID = 20868, droprate = "0.48%" }; --Lambent Idol
		[6] = { itemID = 20871, droprate = "0.41%" }; --Obsidian Idol
		[7] = { itemID = 20867, droprate = "0.36%" }; --Onyx Idol
		[8] = { itemID = 20872, droprate = "0.31%" }; --Vermillion Idol

		[9] = { itemID = 22202 }; --Small Obsidian Shard
		[10] = { itemID = 22203 }; --Large Obsidian Shard

		[16] = { itemID = 20864, droprate = "0.84%" }; --Bone Scarab
		[17] = { itemID = 20861, droprate = "0.88%" }; --Bronze Scarab
		[18] = { itemID = 20863, droprate = "0.95%" }; --Clay Scarab
		[19] = { itemID = 20862, droprate = "0.99%" }; --Crystal Scarab
		[20] = { itemID = 20859, droprate = "0.96%" }; --Gold Scarab
		[21] = { itemID = 20865, droprate = "0.93%" }; --Ivory Scarab
		[22] = { itemID = 20860, droprate = "1.82%" }; --Silver Scarab
		[23] = { itemID = 20858, droprate = "0.86%" }; --Stone Scarab
		[24] = { itemID = 21761, droprate = "7.27%" }; --Scarab Coffer Key

		[12] = { itemID = 21404 }; --Dagger of Veiled Shadows
		[13] = { itemID = 21416 }; --Kris of Unspoken Names
		[14] = { itemID = 21413 }; --Blade of Vaulted Secrets
		[15] = { itemID = 21395 }; --Blade of Eternal Justice
		
		[26] = { itemID = 21407 }; --Mace of Unending Life
		[27] = { itemID = 21410 }; --Gavel of Infinite Wisdom
		[28] = { itemID = 21398 }; --Hammer of the Gathering Storm
		[29] = { itemID = 21401 }; --Scythe of the Unseen Path
		[30] = { itemID = 21392 }; --Sickle of Unyielding Strength
	};
	{
		Name = "AQ Enchants";
		[1] = { itemID = 20728 }; --Formula: Enchant Gloves - Frost Power
		[2] = { itemID = 20731 }; --Formula: Enchant Gloves - Superior Agility
		[3] = { itemID = 20734 }; --Formula: Enchant Cloak - Stealth
		[4] = { itemID = 20729 }; --Formula: Enchant Gloves - Fire Power
		[5] = { itemID = 20736 }; --Formula: Enchant Cloak - Dodge
		[6] = { itemID = 20730 }; --Formula: Enchant Gloves - Healing Power
		[7] = { itemID = 20727 }; --Formula: Enchant Gloves - Shadow Power
	};
};

------------------------------------------
--- Ahn'Qiraj: The Temple of Ahn'Qiraj ---
------------------------------------------

AtlasLoot_Data["TempleofAQ"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Temple of Ahn'Qiraj"];
	Type = "ClassicRaid";
	Map = "TheTempleofAhnQiraj";
	{
		Name = BabbleBoss["The Prophet Skeram"];
		[1] = { itemID = 21701, droprate = "11.81%" }; --Cloak of Concentrated Hatred
		[2] = { itemID = 21708, droprate = "12.85%" }; --Beetle Scaled Wristguards
		[3] = { itemID = 21698, droprate = " 10.99%" }; --Leggings of Immersion
		[4] = { itemID = 21699, droprate = "11.50%" }; --Barrage Shoulders
		[5] = { itemID = 21705, droprate = "3.33%" }; --Boots of the Fallen Prophet
		[6] = { itemID = 21814, droprate = "11.01%" }; --Breastplate of Annihilation
		[7] = { itemID = 21704, droprate = "7.75%" }; --Boots of the Redeemed Prophecy
		[8] = { itemID = 21706, droprate = "12.23%" }; --Boots of the Unwavering Will

		[10] = { itemID = 21702, droprate = "12.20%" }; --Amulet of Foul Warding
		[11] = { itemID = 21700, droprate = "11.57%" }; --Pendant of the Qiraji Guardian
		[12] = { itemID = 21707, droprate = "12.57%" }; --Ring of Swarming Thought
		[13] = { itemID = 21703, droprate = "7.14%" }; --Hammer of Ji'zhi
		[14] = { itemID = 21128, droprate = " 6.32%" }; --Staff of the Qiraji Prophets
		
		[16] = { itemID = 21237, droprate = "1.74%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232, droprate = "1.32%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark
		[27] = { itemID = 22222, droprate = "5.00%" }; --Plans: Thick Obsidian Breastplate
		[28] = { itemID = 22196 }; --Thick Obsidian Breastplate

		[30] = { itemID = 20928, droprate = "100%", lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{
		Name = BabbleBoss["The Bug Family"];
		[1] = { itemID = 21697, droprate = "14%" }; --Cape of the Trinity
		[2] = { itemID = 21694, droprate = "16%" }; --Ternary Mantle
		[3] = { itemID = 21696, droprate = "13%" }; --Robes of the Triumvirate
		[4] = { itemID = 21693, droprate = "16%" }; --Guise of the Devourer
		[5] = { itemID = 21692, droprate = "16%" }; --Triad Girdle
		[6] = { itemID = 21695, droprate = "14%" }; --Angelista's Touch
		[8] = { itemID = 21237, droprate = "7%" }; --Imperial Qiraji Regalia
		[9] = { itemID = 21232, droprate = "7%" }; --Imperial Qiraji Armaments

		[11] = { itemID = 21680, droprate = "21%" }; --Vest of Swift Execution
		[12] = { itemID = 21603, droprate = "25%" }; --Wand of Qiraji Nobility
		[13] = { itemID = 21681, droprate = "17%" }; --Ring of the Devoured
		[14] = { itemID = 21685, droprate = "21%" }; --Petrified Scarab

		[16] = { itemID = 21689, droprate = "18%" }; --Gloves of Ebru
		[17] = { itemID = 21691, droprate = "20%" }; --Ooze-ridden Gauntlets
		[18] = { itemID = 21688, droprate = "18%" }; --Boots of the Fallen Hero
		[19] = { itemID = 21690, droprate = "20%" }; --Angelista's Charm

		[21] = { itemID = 21686, droprate = "13%" }; --Mantle of Phrenic Power
		[22] = { itemID = 21682, droprate = "19%" }; --Bile-Covered Gauntlets
		[23] = { itemID = 21684, droprate = "16%" }; --Mantle of the Desert's Fury
		[24] = { itemID = 21683, droprate = "14%" }; --Mantle of the Desert Crusade
		[25] = { itemID = 21687, droprate = "20%" }; --Ukko's Ring of Darkness

		[27] = { itemID = 20928, droprate = "100%", lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{
		Name = BabbleBoss["Battleguard Sartura"];
		[1] = { itemID = 21671, droprate = "13.30%" }; --Robes of the Battleguard
		[2] = { itemID = 21676, droprate = "13.02%" }; --Leggings of the Festering Swarm
		[3] = { itemID = 21648, droprate = "7.64%" }; --Recomposed Boots
		[4] = { itemID = 21669, droprate = "12.33%" }; --Creeping Vine Helm
		[5] = { itemID = 21672, droprate = "11.87%" }; --Gloves of Enforcement
		[6] = { itemID = 21675, droprate = "13.26%" }; --Thick Qirajihide Belt
		[7] = { itemID = 21668, droprate = "4.03%" }; --Scaled Leggings of Qiraji Fury
		[8] = { itemID = 21674, droprate = "11.07%" }; --Gauntlets of Steadfast Determination
		[9] = { itemID = 21667, droprate = "7.44%" }; --Legplates of Blazing Light

		[11] = { itemID = 21678 }; --Necklace of Purity
		[12] = { itemID = 21670, droprate = "13.22%" }; --Badge of the Swarmguard
		[13] = { itemID = 21666, droprate = "6.47%" }; --Sartura's Might
		[14] = { itemID = 21673, droprate = "7.16%" }; --Silithid Claw

		[16] = { itemID = 21237, droprate = "4.01%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer

		[21] = { itemID = 21232, droprate = "4.02%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
	};
	{
		Name = BabbleBoss["Fankriss the Unyielding"];
		[1] = { itemID = 21627, droprate = "12.51%" }; --Cloak of Untold Secrets
		[2] = { itemID = 21663, droprate = "12.95%" }; --Robes of the Guardian Saint
		[3] = { itemID = 21665, droprate = "13.25%" }; --Mantle of Wicked Revenge
		[4] = { itemID = 21645, droprate = "14.04%" }; --Hive Tunneler's Boots
		[5] = { itemID = 21651, droprate = "12.91%" }; --Scaled Sand Reaver Leggings
		[6] = { itemID = 21639, droprate = "14.78%" }; --Pauldrons of the Unrelenting
		[7] = { itemID = 21652, droprate = "10.29%" }; --Silithid Carapace Chestguard

		[9] = { itemID = 21647, droprate = "13.82%" }; --Fetish of the Sand Reaver
		[10] = { itemID = 21664, droprate = "12.63%" }; --Barbed Choker
		[11] = { itemID = 22402, droprate = "4.21%" }; --Libram of Grace
		[12] = { itemID = 22396, droprate = "1.69%" }; --Totem of Life
		[13] = { itemID = 21650, droprate = " 7.19%" }; --Ancient Qiraji Ripper
		[14] = { itemID = 21635, droprate = "6.61%" }; --Barb of the Sand Reaver

		[16] = { itemID = 21237, droprate = "4.84%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232, droprate = "4.09%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
	};
	{
		Name = BabbleBoss["Viscidus"];
		[1] = { itemID = 21624, droprate = "3.90%" }; --Gauntlets of Kalimdor
		[2] = { itemID = 21626, droprate = "13.66%" }; --Slime-coated Leggings
		[3] = { itemID = 21623, droprate = "5.37%" }; --Gauntlets of the Righteous Champion
		[4] = { itemID = 21691, droprate = "5.37%" }; --Ooze-ridden Gauntlets
		[5] = { itemID = 21688, droprate = "18%" }; --Boots of the Fallen Hero
		[6] = { itemID = 21682, droprate = "19%" }; --Bile-Covered Gauntlets

		[8] = { itemID = 21677, droprate = "2.93%" }; --Ring of the Qiraji Fury
		[9] = { itemID = 21625, droprate = "21.46%" }; --Scarab Brooch
		[10] = { itemID = 22399, droprate = "7.32%" }; --Idol of Health
		[11] = { itemID = 21622, droprate = "15.12%" }; --Sharpened Silithid Femur

		[16] = { itemID = 21237, droprate = "3.19%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232, droprate = "6.86%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
		[28] = { itemID = 20931, droprate = "100%", lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
		[29] = { itemID = 20930, droprate = "100%", lootTable = {"T2.5HEAD","Token"} }; --Diadem of the Desert Prince
		[30] = { itemID = 20928, droprate = "100%", lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{ 
		Name = BabbleBoss["Princess Huhuran"];
		[1] = { itemID = 21619, droprate = "12.01%" }; --Gloves of the Messiah
		[2] = { itemID = 21621, droprate = "12.56%" }; --Cloak of the Golden Hive
		[3] = { itemID = 21617, droprate = "11.97%" }; --Wasphide Gauntlets
		[4] = { itemID = 21618, droprate = "10.34%" }; --Hive Defiler Wristguards
		[5] = { itemID = 21694, droprate = "16%" }; --Ternary Mantle
		[6] = { itemID = 21683, droprate = "14%" }; --Mantle of the Desert Crusade
		[7] = { itemID = 21680, droprate = "21%" }; --Vest of Swift Execution
		[8] = { itemID = 21668, droprate = "4.03%" }; --Scaled Leggings of Qiraji Fury

		[10] = { itemID = 21603, droprate = "25%" }; --Wand of Qiraji Nobility
		[11] = { itemID = 21620, droprate = "12.97%" }; --Ring of the Martyr
		[12] = { itemID = 21616, droprate = "5.71%" }; --Huhuran's Stinger

		[16] = { itemID = 21237, droprate = "4.31%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		
		[21] = { itemID = 21232, droprate = "4.11%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, droprate = "100%", lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
		[28] = { itemID = 20931, droprate = "100%", lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
	};
	{
		Name = BabbleBoss["The Twin Emperors"];
		[1] = { itemID = 21600, droprate = "15.77%" }; --Boots of Epiphany
		[2] = { itemID = 21602, droprate = "15.95%" }; --Qiraji Execution Bracers
		[3] = { itemID = 21599, droprate = "15.77%" }; --Vek'lor's Gloves of Devastation
		[4] = { itemID = 21598, droprate = "9.84%" }; --Royal Qiraji Belt
		[5] = { itemID = 21597, droprate = "6.99%" }; --Royal Scepter of Vek'lor
		[6] = { itemID = 21601, droprate = "17.27%" }; --Ring of Emperor Vek'lor
		[7] = { itemID = 20735, droprate = "6.62%" }; --Formula: Enchant Cloak - Subtlety

		[9] = { itemID = 21232, droprate = "6.25%" }; --Imperial Qiraji Armaments
		[10] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[11] = { itemID = 21272 }; --Blessed Qiraji Musket
		[12] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[13] = { itemID = 21269 }; --Blessed Qiraji Bulwark
		[15] = { itemID = 20930, droprate = "100%", lootTable = {"T2.5HEAD","Token"} }; --Diadem of the Desert Prince

		[16] = { itemID = 21604, droprate = "12.51%" }; --Bracelets of Royal Redemption
		[17] = { itemID = 21605, droprate = "15.45%" }; --Gloves of the Hidden Temple
		[18] = { itemID = 21609, droprate = "13.35%" }; --Regenerating Belt of Vek'nilash
		[19] = { itemID = 21607, droprate = "2.72%" }; --Grasp of the Fallen Emperor
		[20] = { itemID = 21606, droprate = "12.22%" }; --Belt of the Fallen Emperor
		[21] = { itemID = 21679, droprate = "9.25%" }; --Kalimdor's Revenge
		[22] = { itemID = 21608, droprate = "14.25%" }; --Amulet of Vek'nilash
		[23] = { itemID = 20726, droprate = "6.24%" }; --Formula: Enchant Gloves - Threat

		[25] = { itemID = 21237, droprate = "5.00%" }; --Imperial Qiraji Regalia
		[26] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[27] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[28] = { itemID = 21268 }; --Blessed Qiraji War Hammer
	};
	{
		Name = BabbleBoss["Ouro"];
		[1] = { itemID = 21615, droprate = "28.63%" }; --Don Rigoberto's Lost Hat
		[2] = { itemID = 21611, droprate = "24.44%" }; --Burrower Bracers
		[3] = { itemID = 23558, droprate = "2.90%" }; --The Burrower's Shell
		[4] = { itemID = 23570, droprate = "2.80%" }; --Jom Gabbar
		[5] = { itemID = 23557, droprate = "3.95%" }; --Larvae of the Great Worm
		[6] = { itemID = 21610, droprate = "16.54%" }; --Wormscale Blocker
		[7] = { itemID = 21708, droprate = "12.85%" }; --Beetle Scaled Wristguards
		[8] = { itemID = 21645, droprate = "14.04%" }; --Hive Tunneler's Boots
		[9] = { itemID = 21605, droprate = "15.45%" }; --Gloves of the Hidden Temple
		[10] = { itemID = 15029, droprate = "3.65%" }; --Aera's Poison Gland

		[16] = { itemID = 21237, droprate = "5.20%" }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer

		[21] = { itemID = 21232, droprate = "4.10%" }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20931, droprate = "100%", lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
	};
	{
		Name = BabbleBoss["C'Thun"];
		[1] = { itemID = 21583, droprate = "14.45%" }; --Cloak of Clarity
		[2] = { itemID = 22731, droprate = "16.34%" }; --Cloak of the Devoured
		[3] = { itemID = 21585, droprate = "13.63%" }; --Dark Storm Gauntlets
		[4] = { itemID = 22730, droprate = "10.41%" }; --Eyestalk Waist Cord
		[5] = { itemID = 21582, droprate = "15.04%" }; --Grasp of the Old God
		[6] = { itemID = 21586, droprate = "11.24%" }; --Belt of Never-ending Agony
		[7] = { itemID = 21581, droprate = "12.04%" }; --Gauntlets of Annihilation

		[9] = { itemID = 22732, droprate = "10.62%" }; --Mark of C'Thun
		[10] = { itemID = 21596, droprate = "11.83%" }; --Ring of the Godslayer
		[11] = { itemID = 21579, droprate = "12.18%" }; --Vanquished Tentacle of C'Thun
		[12] = { itemID = 21126 }; --Death's Sting
		[13] = { itemID = 21134 }; --Dark Edge of Insanity
		[14] = { itemID = 21839, droprate = "4.75%" }; --Scepter of the False Prophet

		[15] = { itemID = 21221, droprate = "100%" }; --Eye of C'Thun
		[16] = { itemID = 21710 }; --Cloak of the Fallen God
		[17] = { itemID = 21712 }; --Amulet of the Fallen God
		[18] = { itemID = 21709 }; --Ring of the Fallen God

		[20] = { itemID = 22734 }; --Base of Atiesh
		[21] = { itemID = 22632 }; --Atiesh, Greatstaff of the Guardian
		[22] = { itemID = 22589 }; --Atiesh, Greatstaff of the Guardian
		[23] = { itemID = 22631 }; --Atiesh, Greatstaff of the Guardian
		[24] = { itemID = 22630 }; --Atiesh, Greatstaff of the Guardian
		
		[26] = { itemID = 20933, droprate = "100%", lootTable = {"T2.5CHEST","Token"} }; --Husk of the Old God
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 21838, droprate = "0.20%" }; --Garb of Royal Ascension
		[2] = { itemID = 21888, droprate = "0.16%" }; --Gloves of the Immortal
		[3] = { itemID = 21889, droprate = "0.39%" }; --Gloves of the Redeemed Prophecy
		[4] = { itemID = 21836, droprate = "0.18%" }; --Ritssyn's Ring of Chaos
		[5] = { itemID = 21891, droprate = "0.59%" }; --Shard of the Fallen Star
		[6] = { itemID = 21856, droprate = "0.20%" }; --Neretzek, The Blood Drinker
		[7] = { itemID = 21837, droprate = "0.21%" }; --Anubisath Warhammer
		[9] = { itemID = 22202 }; --Small Obsidian Shard
		[10] = { itemID = 22203 }; --Large Obsidian Shard
		[16] = { itemID = 21218, droprate = "10.64%" }; --Blue Qiraji Resonating Crystal
		[17] = { itemID = 21324, droprate = "12.15%" }; --Yellow Qiraji Resonating Crystal
		[18] = { itemID = 21323, droprate = "11.62%" }; --Green Qiraji Resonating Crystal
		[19] = { itemID = 21321, droprate = "1.39%" }; --Red Qiraji Resonating Crystal
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20876, droprate = "0.26%" }; --Idol of Death
		[2] = { itemID = 20879, droprate = "0.29%" }; --Idol of Life
		[3] = { itemID = 20875, droprate = "0.29%" }; --Idol of Night
		[4] = { itemID = 20878, droprate = "0.28%" }; --Idol of Rebirth
		[5] = { itemID = 20881, droprate = "0.21%" }; --Idol of Strife
		[6] = { itemID = 20877, droprate = "0.33%" }; --Idol of the Sage
		[7] = { itemID = 20874, droprate = "0.21%" }; --Idol of the Sun
		[8] = { itemID = 20882, droprate = "0.30%" }; --Idol of War
		[10] = { itemID = 21230 }; --Ancient Qiraji Artifact
		[12] = { itemID = 21762, droprate = "7.03%" }; --Greater Scarab Coffer Key
		[16] = { itemID = 20864, droprate = "0.84%" }; --Bone Scarab
		[17] = { itemID = 20861, droprate = "0.88%" }; --Bronze Scarab
		[18] = { itemID = 20863, droprate = "0.95%" }; --Clay Scarab
		[19] = { itemID = 20862, droprate = "0.99%" }; --Crystal Scarab
		[20] = { itemID = 20859, droprate = "0.96%" }; --Gold Scarab
		[21] = { itemID = 20865, droprate = "0.93%" }; --Ivory Scarab
		[22] = { itemID = 20860, droprate = "1.82%" }; --Silver Scarab
		[23] = { itemID = 20858, droprate = "0.86%" }; --Stone Scarab
	};
};

AtlasLoot_Data["AQOpening"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "AQOpening";
	{
		Name = "AQOpening";
		[1] = { itemID = 21138 }; --Red Scepter Shard
		[2] = { itemID = 21530 }; --Onyx Embedded Leggings
		[3] = { itemID = 21529 }; --Amulet of Shadow Shielding
		[5] = { itemID = 21139 }; --Green Scepter Shard
		[6] = { itemID = 21532 }; --Drudge Boots
		[7] = { itemID = 21531 }; --Drake Tooth Necklace
		[9] = { itemID = 21137 }; --Blue Scepter Shard
		[10] = { itemID = 21517 }; --Gnomish Turban of Psychic Might
		[11] = { itemID = 21527 }; --Darkwater Robes
		[12] = { itemID = 21526 }; --Band of Icy Depths
		[13] = { itemID = 21025 }; --Recipe: Dirge's Kickin' Chimaerok Chops
		[16] = { itemID = 21175 }; --The Scepter of the Shifting Sands
		[17] = { itemID = 21176 }; --Black Qiraji Resonating Crystal
		[18] = { itemID = 21522 }; --Shadowsong's Sorrow
		[19] = { itemID = 21523 }; --Fang of Korialstrasz
		[20] = { itemID = 21520 }; --Ravencrest's Legacy
		[21] = { itemID = 21521 }; --Runesword of the Red
	};
};

-------------------------
--- Blackfathom Deeps ---
-------------------------

AtlasLoot_Data["BlackfathomDeeps"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Blackfathom Deeps"];
	Type = "ClassicDungeon";
	Map = "BlackfathomDeeps";
	{
		Name = BabbleBoss["Ghamoo-ra"];
		[1] = { itemID = 6908, droprate = "45.81%" }; --Ghamoo-ra's Bind
		[2] = { itemID = 6907, droprate = "30.59%" }; --Tortoise Armor
	};
	{
		Name = BabbleBoss["Lady Sarevess"];
		[1] = { itemID = 888, droprate = "33.72%" }; --Naga Battle Gloves
		[2] = { itemID = 11121, droprate = "33.10%" }; --Darkwater Talwar
		[3] = { itemID = 3078, droprate = "16.87%" }; --Naga Heartpiercer
	};
	{
		Name = BabbleBoss["Gelihast"];
		[1] = { itemID = 6906, droprate = "38.24%" }; --Algae Fists
		[2] = { itemID = 6905, droprate = "42.29%" }; --Reef Axe
		[3] = { itemID = 1470, droprate = "14.13%" }; --Murloc Skin Bag
	};
	{
		Name = BabbleBoss["Baron Aquanis"];
		[1] = { itemID = 16782, droprate = "90.35%" }; --Strange Water Globe
		[2] = { itemID = 16886 }; --Outlaw Sabre
		[3] = { itemID = 16887 }; --Witch's Finger
	};
	{
		Name = BabbleBoss["Twilight Lord Kelris"];
		[1] = { itemID = 6903, droprate = "31.90%" }; --Gaze Dreamer Pants
		[2] = { itemID = 1155, droprate = "45.59%" }; --Rod of the Sleepwalker
		[3] = { itemID = 5881, droprate = "100%" }; --Head of Kelris
	};
	{
		Name = BabbleBoss["Old Serra'kis"];
		[1] = { itemID = 6901, droprate = "36.14%" }; --Glowing Thresher Cape
		[2] = { itemID = 6902, droprate = "29.24%" }; --Bands of Serra'kis
		[3] = { itemID = 6904, droprate = "15.34%" }; --Bite of Serra'kis
	};
	{
		Name = BabbleBoss["Aku'mai"];
		[1] = { itemID = 6910, droprate = "29.72%" }; --Leech Pants
		[2] = { itemID = 6911, droprate = "29.01%" }; --Moss Cinch
		[3] = { itemID = 6909, droprate = "14.46%" }; --Strike of the Hydra
		[4] = { icon = "INV_Box_01", "=q6=" .. AL["Quest Item"] };
		[5] = { itemID = 5359, droprate = "100%" }; --Lorgalis Manuscript
		[6] = { itemID = 16762, droprate = "100%" }; --Fathom Core
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 1486, droprate = "0.02%" }; --Tree Bark Jacket
		[2] = { itemID = 3416, droprate = "0.01%" }; --Martyr's Chain
		[3] = { itemID = 1491, droprate = "0.01%" }; --Ring of Precision
		[4] = { itemID = 3413, droprate = "0.01%" }; --Doomspike
		[5] = { itemID = 2567, droprate = "0.02%" }; --Evocator's Blade
		[6] = { itemID = 3417, droprate = "0.01%" }; --Onyx Claymore
		[7] = { itemID = 1454, droprate = "0.01%" }; --Axe of the Enforcer
		[8] = { itemID = 1481, droprate = "0.01%" }; --Grimclaw
		[9] = { itemID = 3414, droprate = "0.01%" }; --Crested Scepter
		[10] = { itemID = 3415, droprate = "0.02%" }; --Staff of the Friar
		[11] = { itemID = 2271, droprate = "0.02%" }; --Staff of the Blessed Seer
	};
};

--------------------------------------------
--- Blackrock Mountain: Blackrock Dephts ---
--------------------------------------------

AtlasLoot_Data["BlackrockDepths"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Blackrock Depths"];
	Type = "ClassicDungeonExt";
	Map = "BlackrockDepths";
	{
		Name = AL["Overmaster Pyron"];
		[1] = { itemID = 14486, droprate = "17.95%" }; --Pattern: Cloak of Fire
	};
	{
		Name = BabbleBoss["Lord Roccor"];
		[1] = { itemID = 22234, droprate = "20.48%" }; --Mantle of Lost Hope
		[2] = { itemID = 11632, droprate = "19.99%" }; --Earthslag Shoulders
		[3] = { itemID = 22397, droprate = "19.58%" }; --Idol of Ferocity
		[4] = { itemID = 11631, droprate = "22.06%" }; --Stoneshell Guard
		[5] = { itemID = 11630, droprate = "16.82%" }; --Rockshard Pellets
		[16] = { itemID = 11813, droprate = "14.79%" }; --Formula: Smoking Heart of the Mountain
		[17] = { itemID = 11811, "=q3=Smoking Heart of the Mountain", [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };
	};
	{
		Name = BabbleBoss["High Interrogator Gerstahn"];
		[1] = { itemID = 11626, droprate = "15.98%" }; --Blackveil Cape
		[2] = { itemID = 11624, droprate = "22.45%" }; --Kentic Amice
		[3] = { itemID = 22240, droprate = "16.81%" }; --Greaves of Withering Despair
		[4] = { itemID = 11625, droprate = "23.14%" }; --Enthralled Sphere
		[6] = { itemID = 11140 }; --Prison Cell Key
	};
	{
		Name = "Ring of Law";
		[1] = { itemID = 11677, droprate = "23.07%" }; --Graverot Cape
		[2] = { itemID = 11675, droprate = "25.84%" }; --Shadefiend Boots
		[3] = { itemID = 11731, droprate = "15.14%" }; --Savage Gladiator Greaves
		[4] = { itemID = 11678, droprate = "15.78%" }; --Carapace of Anub'shiah
		[6] = { itemID = 11685, droprate = "24.49%" }; --Splinthide Shoulders
		[7] = { itemID = 11686, droprate = "15.85%" }; --Girdle of Beastial Fury
		[8] = { itemID = 11679, droprate = "25.13%" }; --Rubicund Armguards
		[9] = { itemID = 11730, droprate = "14.12%" }; --Savage Gladiator Grips
		[11] = { itemID = 11726, droprate = "14.52%" }; --Savage Gladiator Chain
		[12] = { itemID = 22271, droprate = "23.24%" }; --Leggings of Frenzied Magic
		[13] = { itemID = 11729, droprate = "10.08%" }; --Savage Gladiator Helm
		[14] = { itemID = 11722, droprate = "15.07%" }; --Dregmetal Spaulders
		[15] = { itemID = 11703, droprate = "31.45%" }; --Stonewall Girdle
		[16] = { itemID = 22270, droprate = "11.97%" }; --Entrenching Boots
		[17] = { itemID = 22257, droprate = "26.28%" }; --Bloodclot Band
		[18] = { itemID = 22266, droprate = "17.98%" }; --Flarethorn
		[19] = { itemID = 11702, droprate = "20.62%" }; --Grizzle's Skinner
		[20] = { itemID = 11610, droprate = "69.76%" }; --Plans: Dark Iron Pulverizer
		[22] = { itemID = 11634, droprate = "24.02%" }; --Silkweb Gloves
		[23] = { itemID = 11633, droprate = "20.61%" }; --Spiderfang Carapace
		[24] = { itemID = 11635, droprate = "17.26%" }; --Hookfang Shanker
		[26] = { itemID = 11662, droprate = "23.77%" }; --Ban'thok Sash
		[27] = { itemID = 11665, droprate = "28.16%" }; --Ogreseer Fists
		[28] = { itemID = 11728, droprate = "14.95%" }; --Savage Gladiator Leggings
		[29] = { itemID = 11824, droprate = "18.37%" }; --Cyclopean Band
	};
	{
		Name = AL["Theldren"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n17#" };
		[2] = { itemID = 22330, droprate = "19.73%" }; --Shroud of Arcane Mastery
		[3] = { itemID = 22305, droprate = "30.39%" }; --Ironweave Mantle
		[4] = { itemID = 22317, droprate = "26.15%" }; --Lefty's Brass Knuckle
		[5] = { itemID = 22318, droprate = "22.88%" }; --Malgen's Long Bow
		[7] = { itemID = 22047 }; --Top Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Houndmaster Grebmar"];
		[1] = { itemID = 11623, droprate = "32.09%" }; --Spritecaster Cape
		[2] = { itemID = 11626, droprate = "0.60%" }; --Blackveil Cape
		[3] = { itemID = 11627, droprate = "32.09%" }; --Fleetfoot Greaves
		[4] = { itemID = 11628, droprate = "12.14%" }; --Houndmaster's Bow
		[5] = { itemID = 11629, droprate = "11.18%" }; --Houndmaster's Rifle
	};
	{
		Name = "Monument of Franclorn Forgewright";
		[1] = { itemID = 11000 }; --Shadowforge Key
	};
	{
		Name = BabbleBoss["Pyromancer Loregrain"];
		[1] = { itemID = 11747, droprate = "18.10%" }; --Flamestrider Robes
		[2] = { itemID = 11749, droprate = "21.29%" }; --Searingscale Leggings
		[3] = { itemID = 11750, droprate = " 16.19%" }; --Kindling Stave
		[4] = { itemID = 11748, droprate = "30.20%" }; --Pyric Caduceus
		[6] = { itemID = 11207, droprate = "13.32%" }; --Formula: Enchant Weapon - Fiery Weapon
	};
	{
		Name = AL["The Vault"];
		[1] = { icon = "INV_Box_01", "=q6=#x3#" };
		[2] = { itemID = 11309, droprate = "100%" }; --The Heart of the Mountain
		[4] = { icon = "INV_Box_01", "=q6=#x5#" };
		[5] = { itemID = 22256, droprate = "4.49%" }; --Mana Shaping Handwraps
		[6] = { itemID = 11929, droprate = "21.12%" }; --Haunting Specter Leggings
		[7] = { itemID = 11926, droprate = "21.57%" }; --Deathdealer Breastplate
		[8] = { itemID = 22205, droprate = "4.24%" }; --Black Steel Bindings
		[9] = { itemID = 22255, droprate = "4.02%" }; --Magma Forged Band
		[10] = { itemID = 11920, droprate = "21.12%" }; --Wraith Scythe
		[11] = { itemID = 11923, droprate = "19.84%" }; --The Hammer of Grace
		[12] = { itemID = 22254, droprate = "3.65%" }; --Wand of Eternal Light
		[16] = { icon = "INV_Box_01", "=q6=#x4#" };
		[17] = { itemID = 11752, droprate = "44.48%" }; --Black Blood of the Tormented
		[18] = { itemID = 11751, droprate = "39.35%" }; --Burning Essence
		[19] = { itemID = 11753, droprate = "39.95%" }; --Eye of Kajal
	};
	{
		Name = BabbleBoss["Warder Stilgiss"];
		[1] = { itemID = 11782, droprate = "18.38%" }; --Boreal Mantle
		[2] = { itemID = 22241, droprate = "18.38%" }; --Dark Warder's Pauldrons
		[3] = { itemID = 11783, droprate = "20.50%" }; --Chillsteel Girdle
		[4] = { itemID = 11784, droprate = "21.54%" }; --Arbiter's Blade
	};
	{
		Name = BabbleBoss["Verek"];
		[1] = { itemID = 22242, droprate = "9.78%" }; --Verek's Leash
		[2] = { itemID = 11755, droprate = "9.54%" }; --Verek's Collar
	};
	{
		Name = BabbleBoss["Fineous Darkvire"];
		[1] = { itemID = 11839, droprate = "1" }; --Chief Architect's Monocle
		[2] = { itemID = 11841, droprate = "21.25%" }; --Senior Designer's Pantaloons
		[3] = { itemID = 11842, droprate = "20.83%" }; --Lead Surveyor's Mantle
		[4] = { itemID = 22223, droprate = "19.73%" }; --Foreman's Head Protector
		[6] = { itemID = 11840, droprate = "3.9%" }; --Master Builder's Shirt
		[8] = { itemID = 10999, droprate = "100%" }; --Ironfel
	};
	{
		Name = BabbleBoss["Lord Incendius"];
		[1] = { itemID = 11768, droprate = "1.30%" }; --Incendic Bracers
		[2] = { itemID = 11766, droprate = "18.88%" }; --Flameweave Cuffs
		[3] = { itemID = 11764, droprate = "18.33%" }; --Cinderhide Armsplints
		[4] = { itemID = 11765, droprate = "18.85%" }; --Pyremail Wristguards
		[5] = { itemID = 11767, droprate = "19.24%" }; --Emberplate Armguards
		[6] = { itemID = 19268, droprate = "2.10%" }; --Ace of Elementals
		[8] = { itemID = 21987 }; --Incendicite of Incendius
		[9] = { itemID = 11126 }; --Tablet of Kurniya
	};
	{
		Name = BabbleBoss["Bael'Gar"];
		[1] = { itemID = 11807, droprate = "13.59%" }; --Sash of the Burning Heart
		[2] = { itemID = 11802, droprate = "26.75%" }; --Lavacrest Leggings
		[3] = { itemID = 11805, droprate = "17.02%" }; --Rubidium Hammer
		[4] = { itemID = 11803, droprate = "27.47%" }; --Force of Magma
	};
	{
		Name = BabbleBoss["General Angerforge"];
		[1] = { itemID = 11821, droprate = "16.41%" }; --Warstrife Leggings
		[2] = { itemID = 11820, droprate = "18.55%" }; --Royal Decorated Armor
		[3] = { itemID = 11810, droprate = "12.97%" }; --Force of Will
		[4] = { itemID = 11817, droprate = "14.72%" }; --Lord General's Sword
		[5] = { itemID = 11816, droprate = "16.41%" }; --Angerforge's Battle Axe
		[7] = { itemID = 11464 }; --Marshal Windsor's Lost Information
	};
	{
		Name = BabbleBoss["Golem Lord Argelmach"];
		[1] = { itemID = 11822, droprate = "2" }; --Omnicast Boots
		[2] = { itemID = 11823, droprate = "25.73%" }; --Luminary Kilt
		[3] = { itemID = 11669, droprate = "22.92%" }; --Naglering
		[4] = { itemID = 11819, droprate = "5.75%" }; --Second Wind
		[6] = { itemID = 21956 }; --Design: Dark Iron Scorpid
		[8] = { itemID = 11268 }; --Head of Argelmach
		[9] = { itemID = 11465 }; --Marshal Windsor's Lost Information
	};
	{
		Name = "The Grim Guzzler";
		[1] = { icon = "INV_Box_01", "=q6=#n48#" };
		[2] = { itemID = 11735, droprate = "8.11%" }; --Ragefury Eyepatch
		[3] = { itemID = 18043, droprate = "23.87%" }; --Coal Miner Boots
		[4] = { itemID = 22275, droprate = "23.87%" }; --Firemoss Boots
		[5] = { itemID = 18044, droprate = "31.02%" }; --Hurley's Tankard
		[6] = { itemID = 11312 }; --Lost Thunderbrew Recipe
		[8] = { icon = "INV_Box_01", "=q6=#n49#" };
		[9] = { itemID = 22212, droprate = "26.04%" }; --Golem Fitted Pauldrons
		[10] = { itemID = 11745, droprate = "29.79%" }; --Fists of Phalanx
		[11] = { itemID = 11744, droprate = "28.48%" }; --Bloodfist
		[16] = { icon = "INV_Box_01", "=q6=#n50#" };
		[17] = { itemID = 11612, droprate = "22.20%" }; --Plans: Dark Iron Plate
		[18] = { itemID = 2662 }; --Ribbly's Quiver
		[19] = { itemID = 2663, droprate = "15.73%" }; --Ribbly's Bandolier
		[20] = { itemID = 11742, droprate = "25.07%" }; --Wayfarer's Knapsack
		[21] = { itemID = 11313 }; --Ribbly's Head
		[23] = { icon = "INV_Box_01", "=q6=#n51#" };
		[24] = { itemID = 12793, droprate = "24.87%" }; --Mixologist's Tunic
		[25] = { itemID = 12791, droprate = "6.97%" }; --Barman Shanker
		[26] = { itemID = 13483 }; --Recipe: Transmute Fire to Earth
		[27] = { itemID = 18653, droprate = "14.13%" }; --Schematic: Goblin Jumper Cables XL
		[28] = { itemID = 15759 }; --Pattern: Black Dragonscale Breastplate
		[29] = { itemID = 11602 }; --Grim Guzzler Key
		[30] = { itemID = 11325 }; --Dark Iron Ale Mug
	};
	{
		Name = BabbleBoss["Ambassador Flamelash"];
		[1] = { itemID = 11808, droprate = "0.84%" }; --Circle of Flame
		[3] = { itemID = 11812, droprate = "25.25%" }; --Cape of the Fire Salamander
		[4] = { itemID = 11814, droprate = "27.88%" }; --Molten Fists
		[5] = { itemID = 11832, droprate = "14.61%" }; --Burst of Knowledge
		[6] = { itemID = 11809, droprate = "18.69%" }; --Flame Wrath
		[8] = { itemID = 23320 }; --Tablet of Flame Shock VI
	};
	{
		Name = BabbleBoss["Panzor the Invincible"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 22245, droprate = "22.06%" }; --Soot Encrusted Footwear
		[2] = { itemID = 11787, droprate = "19.96%" }; --Shalehusk Boots
		[3] = { itemID = 11786, droprate = "20.38%" }; --Stone of the Earth
		[4] = { itemID = 11785, droprate = "21.22%" }; --Rock Golem Bulwark
	};
	{
		Name = "Summoner's Tomb";
		[1] = { icon = "INV_Box_01", "=q6=#x2#" };
		[2] = { itemID = 11929, droprate = "22.60%" }; --Haunting Specter Leggings
		[3] = { itemID = 11925, droprate = "21.63%" }; --Ghostshroud
		[4] = { itemID = 11926, droprate = "22.08%" }; --Deathdealer Breastplate
		[5] = { itemID = 11927, droprate = "65.45%" }; --Legplates of the Eternal Guardian
		[6] = { itemID = 11922, droprate = "22.05%" }; --Blood-etched Blade
		[7] = { itemID = 11920, droprate = "22.61%" }; --Wraith Scythe
		[8] = { itemID = 11923, droprate = "21.29%" }; --The Hammer of Grace
		[9] = { itemID = 11921, droprate = "22.23%" }; --Impervious Giant
	};
	{
		Name = AL["Shadowforge Flame Keeper"];
		[1] = { icon = "INV_Box_01", "=q6=#n44#" };
		[2] = { itemID = 11885 }; --Shadowforge Torch
	};
	{
		Name = BabbleBoss["Magmus"];
		[1] = { itemID = 11746, droprate = "20.46%" }; --Golem Skull Helm
		[2] = { itemID = 11935, droprate = "21.26%" }; --Magmus Stone
		[3] = { itemID = 22395, droprate = "10.09%" }; --Totem of Rage
		[4] = { itemID = 22400, droprate = "9.75%" }; --Libram of Truth
		[5] = { itemID = 22208, droprate = "22.79%" }; --Lavastone Hammer
	};
	{
		Name = BabbleBoss["Emperor Dagran Thaurissan"];
		[1] = { itemID = 11684, droprate = "0.46%" }; --Ironfoe
		[3] = { itemID = 11930, droprate = "16.16%" }; --The Emperor's New Cape
		[4] = { itemID = 11924, droprate = "15.18%" }; --Robes of the Royal Crown
		[5] = { itemID = 22204, droprate = "12.92%" }; --Wristguards of Renown
		[6] = { itemID = 22207, droprate = "15.12%" }; --Sash of the Grand Hunt
		[7] = { itemID = 11933, droprate = "15.99%" }; --Imperial Jewel
		[8] = { itemID = 11934, droprate = "15.41%" }; --Emperor's Seal
		[9] = { itemID = 11815, droprate = "10.43%" }; --Hand of Justice
		[16] = { itemID = 11931, droprate = "15.76%" }; --Dreadforge Retaliator
		[17] = { itemID = 11932, droprate = "15.01%" }; --Guiding Stave of Wisdom
		[18] = { itemID = 11928, droprate = " 12.86%" }; --Thaurissan's Royal Scepter
		[20] = { itemID = 12033, droprate = "2.2%" }; --Thaurissan Family Jewels
	};
	{
		Name = BabbleBoss["Princess Moira Bronzebeard"];
		[1] = { itemID = 12554, droprate = "11.91%" }; --Hands of the Exalted Herald
		[2] = { itemID = 12556, droprate = "10.26%" }; --High Priestess Boots
		[3] = { itemID = 12557, droprate = "12.11%" }; --Ebonsteel Spaulders
		[4] = { itemID = 12553, droprate = "11.05%" }; --Swiftwalker Boots
	};
	{
		Name = "Blacksmith Plans";
		[1] = { itemID = 11614, droprate = "13.38%" }; --Plans: Dark Iron Mail
		[2] = { itemID = 11615, droprate = "7.65%" }; --Plans: Dark Iron Shoulders
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 12552, droprate = "0.01%" }; --Blisterbane Wrap
		[2] = { itemID = 12551, droprate = "0.01%" }; --Stoneshield Cloak
		[3] = { itemID = 12542, droprate = "0.02%" }; --Funeral Pyre Vestment
		[4] = { itemID = 12546, droprate = "0.01%" }; --Aristocratic Cuffs
		[5] = { itemID = 12550, droprate = "0.02%" }; --Runed Golem Shackles
		[6] = { itemID = 12547, droprate = "0.01%" }; --Mar Alom's Grip
		[7] = { itemID = 12549, droprate = "0.02%" }; --Braincage
		[8] = { itemID = 12555, droprate = "0.01%" }; --Battlechaser's Greaves
		[9] = { itemID = 12531, droprate = "0.02%" }; --Searing Needle
		[10] = { itemID = 12535, droprate = "0.01%" }; --Doomforged Straightedge
		[11] = { itemID = 12527, droprate = "0.02%" }; --Ribsplitter
		[12] = { itemID = 12528, droprate = "0.02%" }; --The Judge's Gavel
		[13] = { itemID = 12532, droprate = "0.01%" }; --Spire of the Stoneshaper
		[16] = { itemID = 15781, droprate = "1.93%" }; --Pattern: Black Dragonscale Leggings
		[17] = { itemID = 15770, droprate = "1.88%" }; --Pattern: Black Dragonscale Shoulders
		[18] = { itemID = 16053, droprate = "0.45%" }; --Schematic: Master Engineer's Goggles
		[19] = { itemID = 16049, droprate = "1.02%" }; --Schematic: Dark Iron Bomb
		[20] = { itemID = 16048, droprate = "0.98%" }; --Schematic: Dark Iron Rifle
		[21] = { itemID = 18654, droprate = "1.88%" }; --Schematic: Gnomish Alarm-O-Bot
		[22] = { itemID = 18661, droprate = "2.00%" }; --Schematic: World Enlarger
		[24] = { itemID = 11754, droprate = "5.0%" }; --Black Diamond
		[25] = { itemID = 11078 }; --Relic Coffer Key
		[26] = { itemID = 18945 }; --Dark Iron Residue
		[27] = { itemID = 11468 }; --Dark Iron Fanny Pack
		[28] = { itemID = 11446 }; --A Crumpled Up Note
	};
};

-------------------------------------------------
--- Blackrock Mountain: Lower Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["LowerBlackrock"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Lower Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Loadfirst = 3;
	Map = "BlackrockSpire";
	{
		Name = AL["Scarshield Quartermaster"];
		[1] = { itemID = 18987, droprate = "100%" }; --Blackhand's Command
		Next = "LBRSQuestItems";

	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12812, droprate = "100%" }; --Unfired Plate Gauntlets
		[2] = { itemID = 12631 }; --Fiery Plate Gauntlets
		[3] = { itemID = 12699 }; --Plans: Fiery Plate Gauntlets
		[5] = { itemID = 12533 }; --Roughshod Pike
		[6] = { itemID = 12740 }; --Fifth Mosh'aru Tablet
		[7] = { itemID = 12741 }; --Sixth Mosh'aru Tablet
		[8] = { itemID = 12345 }; --Bijou's Belongings
	};
	{
		Name = BabbleBoss["Spirestone Butcher"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 12608, droprate = "54.31%" }; --Butcher's Apron
		[2] = { itemID = 13286, droprate = "35.78%" }; --Rivenspike
	};
	{
		Name = BabbleBoss["Highlord Omokk"];
		[1] = { itemID = 13170, droprate = "8.52%" }; --Skyshroud Leggings
		[2] = { itemID = 13169, droprate = "9.52%" }; --Tressermane Leggings
		[3] = { itemID = 13168, droprate = "8.62%" }; --Plate of the Shaman King
		[4] = { itemID = 13166, droprate = "7.25%" }; --Slamshot Shoulders
		[5] = { itemID = 13167, droprate = "10.64%" }; --Fist of Omokk
		[7] = { itemID = 12336, droprate = "100%" }; --Gemstone of Spirestone
		[9] = { itemID = 12534, droprate = "100%" }; --Omokk's Head
		[16] = { itemID = 16670, droprate = "9.35%" }; --Boots of Elements
	};
	{
		Name = BabbleBoss["Spirestone Battle Lord"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13284, droprate = "48.68%" }; --Swiftdart Battleboots
		[2] = { itemID = 13285, droprate = "34.87%" }; --The Blackrock Slicer
	};
	{
		Name = BabbleBoss["Spirestone Lord Magus"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13282, droprate = "22.95%" }; --Ogreseer Tower Boots
		[2] = { itemID = 13283, droprate = "38.01%" }; --Magus Ring
		[3] = { itemID = 13261, droprate = "18.07%" }; --Globe of D'sak
	};
	{
		Name = BabbleBoss["Shadow Hunter Vosh'gajin"];
		[1] = { itemID = 12626, droprate = "18.74%" }; --Funeral Cuffs
		[2] = { itemID = 13257 }; --Demonic Runed Spaulders
		[3] = { itemID = 13255, droprate = "18.08%" }; --Trueaim Gauntlets
		[4] = { itemID = 12651, droprate = "8.56%" }; --Blackcrow
		[5] = { itemID = 12653, droprate = "7.99%" }; --Riphook
		[6] = { itemID = 12654, droprate = "23.06%" }; --Doomshot
		[8] = { itemID = 13352, droprate = "100%" }; --Vosh'gajin's Snakestone
		[9] = { itemID = 12821 }; --Plans: Dawn's Edge
		[16] = { itemID = 16712, droprate = "11.89%" }; --Shadowcraft Gloves
	};
	{
		Name = BabbleBoss["War Master Voone"];
		[1] = { itemID = 22231, droprate = "15.40%" }; --Kayser's Boots of Precision
		[2] = { itemID = 13179, droprate = "16.12%" }; --Brazecore Armguards
		[3] = { itemID = 13177, droprate = "15.40%" }; --Talisman of Evasion
		[4] = { itemID = 12582, droprate = "8.08%" }; --Keris of Zul'Serak
		[5] = { itemID = 28972, droprate = "79.85%" }; --Flightblade Throwing Axe
		[7] = { itemID = 12335, droprate = "100%" }; --Gemstone of Smolderthorn
		[16] = { itemID = 16676, droprate = "9.15%" }; --Beaststalker's Gloves
	};
	{
		Name = BabbleBoss["Mor Grayhoof"] .. " (" .. AL["Summon"] .. ")";
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n21#" };
		[2] = { itemID = 22306, droprate = "20.28%" }; --Ironweave Belt
		[3] = { itemID = 22325, droprate = "20.28%" }; --Belt of the Trickster
		[4] = { itemID = 22319, droprate = "20.81%" }; --Tome of Divine Right
		[5] = { itemID = 22398, droprate = "12.87%" }; --Idol of Rejuvenation
		[6] = { itemID = 22322, droprate = "20.28%" }; --The Jaw Breaker
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Bannok Grimaxe"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 12634, droprate = "31.73%" }; --Chiselbrand Girdle
		[2] = { itemID = 12637, droprate = "26.44%" }; --Backusarian Gauntlets
		[3] = { itemID = 12621, droprate = "27.64%" }; --Demonfork
		[5] = { itemID = 12838 }; --Plans: Arcanite Reaper
		[6] = { itemID = 12784 }; --Arcanite Reaper
	};
	{
		Name = BabbleBoss["Mother Smolderweb"];
		[1] = { itemID = 13244, droprate = "25.06%" }; --Gilded Gauntlets
		[2] = { itemID = 13213, droprate = "24.97%" }; --Smolderweb's Eye
		[3] = { itemID = 13183, droprate = "12.49%" }; --Venomspitter
		[16] = { itemID = 16715, droprate = "13.03%" }; --Wildheart Boots
	};
	{
		Name = BabbleBoss["Crystal Fang"];
		[1] = { itemID = 13185, droprate = "28.10%" }; --Sunderseer Mantle
		[2] = { itemID = 13184, droprate = "35.48%" }; --Fallbrush Handgrips
		[3] = { itemID = 13218, droprate = "17.62%" }; --Fang of the Crystal Spider
	};
	{
		Name = BabbleBoss["Urok Doomhowl"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 13258, droprate = "17.09%" }; --Slaghide Gauntlets
		[2] = { itemID = 22232, droprate = "20.60%" }; --Marksman's Girdle
		[3] = { itemID = 13259, droprate = "25.38%" }; --Ribsteel Footguards
		[4] = { itemID = 13178, droprate = "21.48%" }; --Rosewine Circle
		[6] = { itemID = 18784, droprate = "10.30%" }; --Top Half of Advanced Armorsmithing: Volume III
		[7] = { itemID = 12725 }; --Plans: Enchanted Thorium Helm
		[9] = { itemID = 12712, droprate = "100%" }; --Warosh's Mojo
		[10] = { itemID = 15867 }; --Prismcharm
	};
	{
		Name = BabbleBoss["Quartermaster Zigris"];
		[1] = { itemID = 13253, droprate = "14.22%" }; --Hands of Power
		[2] = { itemID = 13252, droprate = "15.48%" }; --Cloudrunner Girdle
		[4] = { itemID = 12835, droprate = "8.37%" }; --Plans: Annihilator
		[5] = { itemID = 12798 }; --Annihilator
		[7] = { itemID = 21955 }; --Design: Black Diamond Crab
	};
	{
		Name = BabbleBoss["Gizrul the Slavener"];
		[1] = { itemID = 13206, droprate = "17.46%" }; --Wolfshear Leggings
		[2] = { itemID = 13208, droprate = "18.02%" }; --Bleak Howler Armguards
		[3] = { itemID = 13205, droprate = "1" }; --Rhombeard Protector
		[16] = { itemID = 16718, droprate = "11.04%" }; --Wildheart Spaulders
	};
	{
		Name = BabbleBoss["Halycon"];
		[1] = { itemID = 22313, droprate = "18.16%" }; --Ironweave Bracers
		[2] = { itemID = 13210, droprate = "9.88%" }; --Pads of the Dread Wolf
		[3] = { itemID = 13211, droprate = "20.32%" }; --Slashclaw Bracers
		[4] = { itemID = 13212, droprate = "18.23%" }; --Halycon's Spiked Collar
	};
	{
		Name = BabbleBoss["Ghok Bashguud"] .. " (" .. AL["Rare"] .. ")";
		[1] = { itemID = 13203, droprate = "35.31%" }; --Armswake Cloak
		[2] = { itemID = 13198, droprate = "21.15%" }; --Hurd Smasher
		[3] = { itemID = 13204, droprate = "27.09%" }; --Bashguuder
	};
	{
		Name = BabbleBoss["Overlord Wyrmthalak"];
		[1] = { itemID = 13143, droprate = "1.11%" }; --Mark of the Dragon Lord
		[3] = { itemID = 13162, droprate = "12.14%" }; --Reiver Claws
		[4] = { itemID = 13164, droprate = "0.73%" }; --Heart of the Scale
		[5] = { itemID = 22321, droprate = "13.87%" }; --Heart of Wyrmthalak
		[6] = { itemID = 13163, droprate = "14.12%" }; --Relentless Scythe
		[7] = { itemID = 13148, droprate = "0.76%" }; --Chillpike
		[8] = { itemID = 13161, droprate = "10.40%" }; --Trindlehaven Staff
		[10] = { itemID = 12337, droprate = "100%" }; --Gemstone of Bloodaxe
		[16] = { itemID = 16679, droprate = "9.89%" }; --Beaststalker's Mantle
	};
	{
		Name = BabbleBoss["Burning Felguard"] .. " (" .. AL["Rare"] .. ", " .. AL["Random"] .. ")";
		[1] = { itemID = 13181, droprate = "14.47%" }; --Demonskin Gloves
		[2] = { itemID = 13182, droprate = "11.63%" }; --Phase Blade
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 14513, droprate = "10.12%" }; --Pattern: Robe of the Archmage
		[2] = { itemID = 14152 }; --Robe of the Archmage
		[4] = { itemID = 13494, droprate = "1.94%" }; --Recipe: Greater Fire Protection Potion
		[5] = { itemID = 16250, droprate = "1.04%" }; --Formula: Enchant Weapon - Superior Striking
		[6] = { itemID = 16244, droprate = "4.16%" }; --Formula: Enchant Gloves - Greater Strength
		[7] = { itemID = 15749, droprate = "2.04%" }; --Pattern: Volcanic Breastplate
		[8] = { itemID = 15775, droprate = "10.56%" }; --Pattern: Volcanic Shoulders
		[10] = { itemID = 12219 }; --Unadorned Seal of Ascension
		[11] = { itemID = 21982 }; --Ogre Warbeads
	};
};

-------------------------------------------------
--- Blackrock Mountain: Upper Blackrock Spire ---
-------------------------------------------------

AtlasLoot_Data["UpperBlackrock"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Upper Blackrock Spire"];
	Type = "ClassicDungeonExt";
	Map = "BlackrockSpire";
	{
		Name = BabbleBoss["Pyroguard Emberseer"];
		[1] = { itemID = 12905, droprate = "15.20%" }; --Wildfire Cape
		[2] = { itemID = 12927, droprate = "17.47%" }; --TruestrikeShoulders
		[3] = { itemID = 12929, droprate = "15.89%" }; --Emberfury Talisman
		[4] = { itemID = 12926, droprate = "18.52%" }; --Flaming Band
		[6] = { itemID = 17322, droprate = "100%" }; --Eye of the Emberseer
		[7] = { itemID = 21988 }; --Ember of Emberseer
		[16] = { itemID = 16672, droprate = "14.23%" }; --Gauntlets of Elements
	};
	{
		Name = BabbleBoss["Solakar Flamewreath"];
		[1] = { itemID = 12609, droprate = "15.82%" }; --Polychromatic Visionwrap
		[2] = { itemID = 12589, droprate = "12.84%" }; --Dustfeather Sash
		[3] = { itemID = 12603 }; --Nightbrace Tunic
		[4] = { itemID = 12606, droprate = "14.04%" }; --Crystallized Girdle
		[6] = { itemID = 18657, droprate = "7.38%" }; --Schematic: Hyper-Radiant Flame Reflector
		[7] = { itemID = 18638 }; --Hyper-Radiant Flame Reflector
		[16] = { itemID = 16695, droprate = "12.84%" }; --Devout Mantle
	};
	{
		Name = AL["Father Flame"];
		[1] = { itemID = 13371, droprate = "100%" }; --Father Flame
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12358 }; --Darkstone Tablet
		[2] = { itemID = 12352 }; --Doomrigger's Clasp
	};
	{
		Name = BabbleBoss["Jed Runewatcher"];
		[1] = { itemID = 12604, droprate = "28.64%" }; --Starfire Tiara
		[2] = { itemID = 12930, droprate = "26.36%" }; --Briarwood Reed
		[3] = { itemID = 12605, droprate = "32.95%" }; --Serpentine Skuller
	};
	{
		Name = BabbleBoss["Goraluk Anvilcrack"];
		[1] = { itemID = 18047, droprate = "18.05%" }; --Flame Walkers
		[2] = { itemID = 13502, droprate = "15.78%" }; --Handcrafted Mastersmith Girdle
		[3] = { itemID = 13498, droprate = "20.63%" }; --Handcrafted Mastersmith Leggings
		[4] = { itemID = 18048, droprate = "17.26%" }; --Mastersmith's Hammer
		[6] = { itemID = 12837, droprate = "4.80%" }; --Plans: Masterwork Stormhammer
		[7] = { itemID = 12794 }; --Masterwork Stormhammer
		[8] = { itemID = 12834, droprate = "4.75%" }; --Plans: Arcanite Champion
		[9] = { itemID = 12790 }; --Arcanite Champion
		[11] = { itemID = 18779, droprate = "17.08%" }; --Bottom Half of Advanced Armorsmithing: Volume I
		[12] = { itemID = 12727 }; --Plans: Enchanted Thorium Breastplate
		[16] = { icon = "INV_Box_01", "=q6=#x10#" };
		[17] = { itemID = 12806 }; --Unforged Rune Covered Breastplate
		[18] = { itemID = 12696 }; --Plans: Demon Forged Breastplate
	};
	{
		Name = BabbleBoss["Warchief Rend Blackhand"];
		[1] = { itemID = 12590, droprate = "1.06%" }; --Felstriker
		[3] = { itemID = 22247, droprate = "12.71%" }; --Faith Healer's Boots
		[4] = { itemID = 18102, droprate = "14.35%" }; --Dragonrider Boots
		[5] = { itemID = 12587, droprate = "14.50%" }; --Eye of Rend
		[6] = { itemID = 12588, droprate = "0.85%" }; --Bonespike Shoulder
		[7] = { itemID = 18104, droprate = "15.30%" }; --Feralsurge Girdle
		[8] = { itemID = 12936, droprate = "16.96%" }; --Battleborn Armbraces
		[9] = { itemID = 12935, droprate = "15.05%" }; --Warmaster Legguards
		[10] = { itemID = 18103, droprate = "15.38%" }; --Band of Rumination
		[16] = { itemID = 16733, droprate = "13.39%" }; --Spaulders of Valor
		[18] = { itemID = 12940, droprate = "6.79%" }; --Dal'Rend's Sacred Charge
		[19] = { itemID = 12939, droprate = "7.61%" }; --Dal'Rend's Tribal Guardian
		[20] = { itemID = 12583, droprate = "7.44%" }; --Blackhand Doomsaw
		[22] = { itemID = 12630, droprate = "100%" }; --Head of Rend Blackhand
	};
	{
		Name = BabbleBoss["Gyth"];
		[1] = { itemID = 12871, droprate = "2.64%" }; --Chromatic Carapace
		[2] = { itemID = 12945 }; --Legplates of the Chromatic Defier
		[3] = { itemID = 12903 }; --Legguards of the Chromatic Defier
		[4] = { itemID = 12895 }; --Breastplate of the Chromatic Flight
		[6] = { itemID = 22225, droprate = "11.85%" }; --Dragonskin Cowl
		[7] = { itemID = 12960, droprate = "15.24%" }; --Tribal War Feathers
		[8] = { itemID = 12953, droprate = "15.99%" }; --Dragoneye Coif
		[9] = { itemID = 12952, droprate = "12.43%" }; --Gyth's Skull
		[11] = { itemID = 13522, droprate = "2.95%" }; --Recipe: Flask of Chromatic Resistance
		[16] = { itemID = 16669, droprate = "14.77%" }; --Pauldrons of Elements
	};
	{
		Name = BabbleBoss["The Beast"];
		[1] = { itemID = 12731, droprate = "0.77%" }; --Pristine Hide of the Beast
		[2] = { itemID = 12752 }; --Cap of the Scarlet Savant
		[3] = { itemID = 12757 }; --Breastplate of Bloodthirst
		[4] = { itemID = 12756 }; --Leggings of Arcana
		[6] = { itemID = 12967, droprate = "18.30%" }; --Bloodmoon Cloak
		[7] = { itemID = 12968, droprate = "14.47%" }; --Frostweaver Cape
		[8] = { itemID = 12965, droprate = "13.16%" }; --Spiritshroud Leggings
		[9] = { itemID = 22311, droprate = "12.31%" }; --Ironweave Boots
		[10] = { itemID = 12966, droprate = "16.06%" }; --Blackmist Armguards
		[11] = { itemID = 12963, droprate = "12.74%" }; --Blademaster Leggings
		[12] = { itemID = 12964, droprate = "18.16%" }; --Tristam Legguards
		[13] = { itemID = 12709, droprate = "6.95%" }; --Finkle's Skinner
		[14] = { itemID = 12969, droprate = "11.49%" }; --Seeping Willow
		[16] = { itemID = 16729, droprate = "13.62%" }; --Lightforge Spaulders
		[18] = { itemID = 24101, droprate = "1.44%" }; --Book of Ferocious Bite V
		[19] = { itemID = 19227, droprate = "4.53%" }; --Ace of Beasts
	};
	{
		Name = BabbleBoss["Lord Valthalak"] .. " (" .. AL["Summon"] .. ")";
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n16#" };
		[2] = { itemID = 22337, droprate = "23.37%" }; --Shroud of Domination
		[3] = { itemID = 22302, droprate = "27.72%" }; --Ironweave Cowl
		[4] = { itemID = 22342, droprate = "23.10%" }; --Leggings of Torment
		[5] = { itemID = 22343, droprate = "20.11%" }; --Handguards of Savagery
		[6] = { itemID = 22340, droprate = "17.66%" }; --Pendant of Celerity
		[7] = { itemID = 22339, droprate = "15.49%" }; --Rune Band of Wizardry
		[8] = { itemID = 22335, droprate = "14.67%" }; --Lord Valthalak's Staff of Command
		[9] = { itemID = 22336, droprate = "17.66%" }; --Draconian Aegis of the Legion
	};
	{
		Name = BabbleBoss["General Drakkisath"];
		[1] = { itemID = 12592, droprate = "1.08%" }; --Blackblade of Shahram
		[3] = { itemID = 22269, droprate = "10.61%" }; --Shadow Prowler's Cloak
		[4] = { itemID = 22267, droprate = "15.50%" }; --Spellweaver's Turban
		[5] = { itemID = 13142, droprate = "16.40%" }; --Brigam Girdle
		[6] = { itemID = 13141 }; --Tooth of Gnarr
		[7] = { itemID = 13098, droprate = "13.51%" }; --Painweaver Band
		[8] = { itemID = 22268, droprate = "4.13%" }; --Draconic Infused Emblem
		[9] = { itemID = 22253, droprate = "16.05%" }; --Tome of the Lost
		[10] = { itemID = 12602, droprate = "14.52%" }; --Draconian Deflector
		[12] = { itemID = 15730, droprate = "3.58%" }; --Pattern: Red Dragonscale Breastplate
		[13] = { itemID = 15047 }; --Red Dragonscale Breastplate
		[15] = { itemID = 13519, droprate = "1.72%" }; --Recipe: Flask of the Titans
		[16] = { itemID = 16688, droprate = "7.24%" }; --Magister's Robes
		[17] = { itemID = 16700, droprate = "8.04%" }; --Dreadmist Robe
		[18] = { itemID = 16690, droprate = "6.20%" }; --Devout Robe
		[19] = { itemID = 16706, droprate = "7.36%" }; --Wildheart Vest
		[20] = { itemID = 16721, droprate = "6.09%" }; --Shadowcraft Tunic
		[21] = { itemID = 16674, droprate = "6.81%" }; --Beaststalker's Tunic
		[22] = { itemID = 16666, droprate = "3.03%" }; --Vest of Elements
		[23] = { itemID = 16730, droprate = "5.83%" }; --Breastplate of Valor
		[24] = { itemID = 16726, droprate = "3.76%" }; --Lightforge Breastplate
		[30] = { itemID = 16663, droprate = "100%" }; --Blood of the Black Dragon Champion
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 13260, droprate = "0.01%" }; --Wind Dancer Boots
		[2] = { itemID = 24102, droprate = "0.94%" }; --Manual of Eviscerate IX
		[4] = { itemID = 16247, droprate = "1.54%" }; --Formula: Enchant 2H Weapon - Superior Impact
		[6] = { itemID = 12607 }; --Brilliant Chromatic Scale
		[7] = { itemID = 12219 }; --Unadorned Seal of Ascension
	};
};
---------------------------------------
--- Blackrock Mountain: Molten Core ---
---------------------------------------

AtlasLoot_Data["MoltenCore"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Molten Core"];
	Type = "ClassicRaid";
	Map = "MoltenCore";
	{
		Name = BabbleBoss["Lucifron"];
		[1] = { itemID = 18872, droprate = "1.93%" }; --Manastorm Leggings
		[2] = { itemID = 19145, droprate = "1.84%" }; --Robe of Volatile Power
		[3] = { itemID = 19146, droprate = "1.95%" }; --Wristguards of Stability
		[4] = { itemID = 18875, droprate = "2.00%" }; --Salamander Scale Pants
		[5] = { itemID = 18870, droprate = "1.09%" }; --Helm of the Lifegiver
		[6] = { itemID = 18861, droprate = "2.15%" }; --Flamewaker Legplates
		[7] = { itemID = 17109, droprate = "12.61%" }; --Choker of Enlightenment
		[8] = { itemID = 18879, droprate = "2.04%" }; --Heavy Dark Iron Ring
		[9] = { itemID = 19147, droprate = "2.23%" }; --Ring of Spell Power
		[10] = { itemID = 18878, droprate = "2.23%" }; --Sorcerous Dagger
		[11] = { itemID = 17077, droprate = "1.60%" }; --Crimson Shocker
		[16] = { itemID = 2522362, droprate = "100%", lootTable = {"T1WRIST","Token"} }; --Molten Wristguards
		[18] = { itemID = 17329 }; --Hand of Lucifron
	};
	{
		Name = BabbleBoss["Magmadar"];
		[1] = { itemID = 19136, droprate = "4.79%" }; --Mana Igniting Cord
		[2] = { itemID = 18823, droprate = "6.18%" }; --Aged Core Leather Gloves
		[3] = { itemID = 18829, droprate = "2.10%" }; --Deep Earth Spaulders
		[4] = { itemID = 19144, droprate = "1.86%" }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143, droprate = "5.48%" }; --Flameguard Gauntlets
		[6] = { itemID = 18861, droprate = "3.98%" }; --Flamewaker Legplates
		[7] = { itemID = 18824, droprate = "3.22%" }; --Magma Tempered Boots
		[8] = { itemID = 17065, droprate = "14.05%" }; --Medallion of Steadfast Might
		[9] = { itemID = 18821, droprate = "5.79%" }; --Quick Strike Ring
		[10] = { itemID = 18820, droprate = "5.55%" }; --Talisman of Ephemeral Power
		[11] = { itemID = 19142, droprate = "5.42%" }; --Fire Runed Grimoire
		[12] = { itemID = 18203, droprate = "17.82%" }; --Eskhandar's Right Claw
		[13] = { itemID = 18822, droprate = "5.68%" }; --Obsidian Edged Blade
		[14] = { itemID = 17073, droprate = "16.75%" }; --Earthshaker
		[15] = { itemID = 17069, droprate = "16.37%" }; --Striker's Mark
		[16] = { itemID = 2522359, droprate = "100%", lootTable = {"T1LEGS","Token"} }; --Molten Leggaurds
	};
	{
		Name = BabbleBoss["Gehennas"];
		[1] = { itemID = 19145, droprate = "3.83%" }; --Robe of Volatile Power
		[2] = { itemID = 18872, droprate = "3.37%" }; --Manastorm Leggings
		[3] = { itemID = 19146, droprate = "3.53%" }; --Wristguards of Stability
		[4] = { itemID = 18875, droprate = "3.57%" }; --Salamander Scale Pants
		[5] = { itemID = 18870, droprate = "1.77%" }; --Helm of the Lifegiver
		[6] = { itemID = 18861, droprate = "3.48%" }; --Flamewaker Legplates
		[7] = { itemID = 18879, droprate = "3.78%" }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147, droprate = "3.78%" }; --Ring of Spell Power
		[9] = { itemID = 18878, droprate = "3.79%" }; --Sorcerous Dagger
		[10] = { itemID = 17077, droprate = "3.34%" }; --Crimson Shocker
		[16] = { itemID = 2522364, droprate = "100%", lootTable = {"T1HAND","Token"} }; --Molten Girdle
		[18] = { itemID = 17331 }; --Hand of Gehennas
	};
	{
		Name = BabbleBoss["Garr"];
		[1] = { itemID = 19136, droprate = "4.80%" }; --Mana Igniting Cord
		[2] = { itemID = 18823, droprate = "5.23%" }; --Aged Core Leather Gloves
		[3] = { itemID = 18829, droprate = "1.68%" }; --Deep Earth Spaulders
		[4] = { itemID = 19144, droprate = "1.48%" }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143, droprate = "3.84%" }; --Flameguard Gauntlets
		[6] = { itemID = 18861, droprate = "2.82%" }; --Flamewaker Legplates
		[7] = { itemID = 18824, droprate = "3.05%" }; --Magma Tempered Boots
		[8] = { itemID = 18821, droprate = "4.48%" }; --Quick Strike Ring
		[9] = { itemID = 18820, droprate = "4.13%" }; --Talisman of Ephemeral Power
		[10] = { itemID = 19142, droprate = "3.69%" }; --Fire Runed Grimoire
		[11] = { itemID = 17071, droprate = "11.21%" }; --Gutgore Ripper
		[12] = { itemID = 18832, droprate = "13.27%" }; --Brutality Blade
		[13] = { itemID = 18822, droprate = "4.09%" }; --Obsidian Edged Blade
		[14] = { itemID = 17105, droprate = "12.67%" }; --Aurastone Hammer
		[15] = { itemID = 17066, droprate = "11.85%" }; --Drillborer Disk
		[16] = { itemID = 2522360, droprate = "100%", lootTable = {"T1HEAD","Token"} }; --Molten Headpiece
		[18] = { itemID = 18564, droprate = "3.74%" }; --Bindings of the Windseeker
		[19] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
		[21] = { itemID = 17782 }; --Talisman of Binding Shard
		[22] = { itemID = 11879 }; --Medallion of Binding Shard
	};
	{
		Name = BabbleBoss["Shazzrah"];
		[1] = { itemID = 19145, droprate = "1.97%" }; --Robe of Volatile Power
		[2] = { itemID = 18872, droprate = "1.84%" }; --Manastorm Leggings
		[3] = { itemID = 19146, droprate = "1.85%" }; --Wristguards of Stability
		[4] = { itemID = 18875, droprate = "1.81%" }; --Salamander Scale Pants
		[5] = { itemID = 18870, droprate = "0.78%" }; --Helm of the Lifegiver
		[6] = { itemID = 18861, droprate = "2.22%" }; --Flamewaker Legplates
		[7] = { itemID = 18879, droprate = "1.72%" }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147, droprate = "1.99%" }; --Ring of Spell Power
		[9] = { itemID = 18878, droprate = "2.27%" }; --Sorcerous Dagger
		[10] = { itemID = 17077, droprate = "3.32%" }; --Crimson Shocker
		[16] = { itemID = 2522363, droprate = "100%", lootTable = {"T1WAIST","Token"} }; --Molten Handgaurds
		[18] = { itemID = 17332 }; --Hand of Shazzrah
	};
	{
		Name = BabbleBoss["Baron Geddon"];
		[1] = { itemID = 19136, droprate = "2.44%" }; --Mana Igniting Cord
		[2] = { itemID = 18823, droprate = "3.04%" }; --Aged Core Leather Gloves
		[3] = { itemID = 18829, droprate = "1.04%" }; --Deep Earth Spaulders
		[4] = { itemID = 19144, droprate = "1.00%" }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143, droprate = "2.61%" }; --Flameguard Gauntlets
		[6] = { itemID = 18861, droprate = "1.77%" }; --Flamewaker Legplates
		[7] = { itemID = 18824, droprate = "1.48%" }; --Magma Tempered Boots
		[8] = { itemID = 17110, droprate = "21.93%" }; --Seal of the Archmagus
		[9] = { itemID = 18821, droprate = "2.61%" }; --Quick Strike Ring
		[10] = { itemID = 18820, droprate = "2.68%" }; --Talisman of Ephemeral Power
		[11] = { itemID = 19142, droprate = "2.59%" }; --Fire Runed Grimoire
		[12] = { itemID = 18822, droprate = "2.70%" }; --Obsidian Edged Blade
		[16] = { itemID = 2522361, droprate = "100%", lootTable = {"T1SHOULDER","Token"} }; --Molten Spaulders
		[18] = { itemID = 18563, droprate = "3.78%" }; --Bindings of the Windseeker
		[19] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
	};
	{
		Name = BabbleBoss["Golemagg the Incinerator"];
		[1] = { itemID = 19136, droprate = "2.18%" }; --Mana Igniting Cord
		[2] = { itemID = 18823, droprate = "2.65%" }; --Aged Core Leather Gloves
		[3] = { itemID = 18829, droprate = "1.20%" }; --Deep Earth Spaulders
		[4] = { itemID = 19144, droprate = "1.00%" }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143, droprate = "2.17%" }; --Flameguard Gauntlets
		[6] = { itemID = 18861, droprate = "1.44%" }; --Flamewaker Legplates
		[7] = { itemID = 18824, droprate = "1.69%" }; --Magma Tempered Boots
		[8] = { itemID = 18821, droprate = "2.26%" }; --Quick Strike Ring
		[9] = { itemID = 18820, droprate = "2.91%" }; --Talisman of Ephemeral Power
		[10] = { itemID = 19142, droprate = "2.46%" }; --Fire Runed Grimoire
		[11] = { itemID = 17103, droprate = "17.59%" }; --Azuresong Mageblade
		[12] = { itemID = 18822, droprate = "2.89%" }; --Obsidian Edged Blade
		[13] = { itemID = 18842, droprate = "18.95%" }; --Staff of Dominance
		[14] = { itemID = 17072, droprate = "17.83%" }; --Blastershot Launcher
		[16] = { itemID = 2522350, droprate = "100%", lootTable = {"T1CHEST","Token"} }; --Molten Tunic
		[18] = { itemID = 17203, droprate = "11.98%" }; --Sulfuron Ingot
		[19] = { itemID = 17182 }; --Sulfuras, Hand of Ragnaros
	};
	{
		Name = BabbleBoss["Sulfuron Harbinger"];
		[1] = { itemID = 19145, droprate = "2.80%" }; --Robe of Volatile Power
		[2] = { itemID = 18872, droprate = "2.54%" }; --Manastorm Leggings
		[3] = { itemID = 19146, droprate = "2.70%" }; --Wristguards of Stability
		[4] = { itemID = 18875, droprate = "2.58%" }; --Salamander Scale Pants
		[5] = { itemID = 18870, droprate = "1.26%" }; --Helm of the Lifegiver
		[6] = { itemID = 18861, droprate = "2.54%" }; --Flamewaker Legplates
		[7] = { itemID = 18879, droprate = "2.32%" }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147, droprate = "2.39%" }; --Ring of Spell Power
		[9] = { itemID = 18878, droprate = "2.53%" }; --Sorcerous Dagger
		[10] = { itemID = 17074, droprate = "23.50%" }; --Shadowstrike
		[11] = { itemID = 17077, droprate = "2.26%" }; --Crimson Shocker
		[16] = { itemID = 2522365, droprate = "100%", lootTable = {"T1FEET","Token"} }; --Molten Boots
		[18] = { itemID = 17330 }; --Hand of Sulfuron
	};
	{
		Name = BabbleBoss["Majordomo Executus"];
		[1] = { itemID = 18811, droprate = "15.12%" }; --Fireproof Cloak
		[2] = { itemID = 18808, droprate = "15.36%" }; --Gloves of the Hypnotic Flame
		[3] = { itemID = 18809, droprate = "1%" }; --Sash of Whispered Secrets
		[4] = { itemID = 19139, droprate = "15.87%" }; --Fireguard Shoulders
		[5] = { itemID = 18810, droprate = "16.91%" }; --Wild Growth Spaulders
		[6] = { itemID = 18812, droprate = "18.04%" }; --Wristguards of True Flight
		[7] = { itemID = 18806, droprate = "16.53%" }; --Core Forged Greaves
		[8] = { itemID = 19140, droprate = "15.10%" }; --Cauterizing Band
		[9] = { itemID = 18805, droprate = "16.06%" }; --Core Hound Tooth
		[10] = { itemID = 18803, droprate = "12.43%" }; --Finkle's Lava Dredger
		[16] = { itemID = 18715 }; --Lok'delar, Stave of the Ancient Keepers
		[17] = { itemID = 18713 }; --Rhok'delar, Longbow of the Ancient Keepers
		[19] = { itemID = 18608 }; --Benediction
		[20] = { itemID = 18609 }; --Anathema
	};
	{
		Name = BabbleBoss["Ragnaros"];
		[1] = { itemID = 17102, droprate = "14.31%" }; --Cloak of the Shrouded Mists
		[2] = { itemID = 17107 }; --Dragon's Blood Cape
		[3] = { itemID = 18817, droprate = "16.75%" }; --Crown of Destruction
		[4] = { itemID = 19137, droprate = "13.18%" }; --Onslaught Girdle
		[5] = { itemID = 18814, droprate = "16.08%" }; --Choker of the Fire Lord
		[6] = { itemID = 19138, droprate = "15.64%" }; --Band of Sulfuras
		[7] = { itemID = 17063, droprate = "14.81%" }; --Band of Accuria
		[8] = { itemID = 17082, droprate = " 4.65%" }; --Shard of the Flame
		[9] = { itemID = 18815, droprate = "17.80%" }; --Essence of the Pure Flame
		[10] = { itemID = 18816, droprate = "15.90%" }; --Perdition's Blade
		[11] = { itemID = 17076, droprate = "5.12%" }; --Bonereaver's Edge
		[12] = { itemID = 17104, droprate = " 4.63%" }; --Spinal Reaper
		[13] = { itemID = 17106, droprate = "13.88%" }; --Malistar's Defender
		[14] = { itemID = 17083, droprate = "13.88%" }; --Blade of Dragon Bone
		[16] = { itemID = 2522459, droprate = "100%", lootTable = {"T2LEGS","Token"} }; --Chromatic Leggaurds
		[18] = { itemID = 21110, droprate = "100%" }; --Draconic for Dummies
		[20] = { itemID = 17204, droprate = "3.42%" }; --Eye of Sulfuras
		[21] = { itemID = 17182 }; --Sulfuras, Hand of Ragnaros
		[23] = { itemID = 19017, droprate = "0.46%" }; --Essence of the Firelord
		[24] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
		[25] = { itemID = 102107, [AtlasLoot.Difficultys.MIN_DIF] = AtlasLoot.Difficultys.Heroic }; -- Reins of the Magmatic Steed
	};
	{
		Name = "Random Boss Drops";
		[1] = { itemID = 17010 }; --Fiery Core
		[2] = { itemID = 17011 }; --Lava Core
		[3] = { itemID = 11382 }; --Blood of the Mountain
		[4] = { itemID = 17012 }; --Core Leather
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18264, droprate = "1.02%" }; --Plans: Elemental Sharpening Stone
		[2] = { itemID = 18262 }; --Elemental Sharpening Stone
		[4] = { itemID = 18292, droprate = "0.96%" }; --Schematic: Core Marksman Rifle
		[5] = { itemID = 18282 }; --Core Marksman Rifle
		[7] = { itemID = 18291, droprate = "0.92%" }; --Schematic: Force Reactive Disk
		[8] = { itemID = 18168 }; --Force Reactive Disk
		[10] = { itemID = 18290, droprate = "0.11%" }; --Schematic: Biznicks 247x128 Accurascope
		[11] = { itemID = 18283 }; --Biznicks 247x128 Accurascope
		[13] = { itemID = 18259, droprate = "0.85%" }; --Formula: Enchant Weapon - Spell Power
		[16] = { itemID = 18252, droprate = "0.85%" }; --Pattern: Core Armor Kit
		[17] = { itemID = 18251 }; --Core Armor Kit
		[19] = { itemID = 18265, droprate = "0.72%" }; --Pattern: Flarecore Wraps
		[20] = { itemID = 18263 }; --Flarecore Wraps
		[22] = { itemID = 21371, droprate = "0.33%" }; --Pattern: Core Felcloth Bag
		[23] = { itemID = 21342 }; --Core Felcloth Bag
		[25] = { itemID = 18257, droprate = "0.76%" }; --Recipe: Major Rejuvenation Potion
		[26] = { itemID = 18253 }; --Major Rejuvenation Potion
		[28] = { itemID = 18260, droprate = "0.75%" }; --Formula: Enchant Weapon - Healing Power
	};
};

------------------------------------------
--- Blackrock Mountain: Blackwing Lair ---
------------------------------------------

AtlasLoot_Data["BlackwingLair"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Blackwing Lair"];
	Type = "ClassicRaid";
	Map = "BlackwingLair";
	{
		Name = BabbleBoss["Razorgore the Untamed"];
		[1] = { itemID = 19337 }; --The Black Book
		[2] = { itemID = 19336 }; --Arcane Infused Gem
		[3] = { itemID = 1506015 }; --Soulsong Crystal
		[4] = { itemID = 1506014 }; --Living Blood Gem
		[5] = { itemID = 19370, droprate = "20%" }; --Mantle of the Blackwing Cabal
		[6] = { itemID = 19369, droprate = "20%" }; --Gloves of Rapid Evolution
		[7] = { itemID = 19334, droprate = "10%" }; --The Untamed Blade
		[8] = { itemID = 19335, droprate = "10%" }; --Spineshatter
		[9] = { itemID = 19397, droprate = "6.67%" }; --Ring of Blackrock
		[10] = { itemID = 19357, droprate = "16.67%" }; --Herald of Woe
		[11] = { itemID = 19405, droprate = "16.67%" }; --Malfurion's Blessed Bulwark
		[16] = { itemID = 2522462, droprate = "100%", lootTable = {"T2WRIST","Token"} }; --Chromatic Wristguards
	};
	{
		Name = BabbleBoss["Vaelastrasz the Corrupt"];
		[1] = { itemID = 19339, droprate = "20%" }; --Mind Quickening Gem
		[2] = { itemID = 19340, droprate = "20%" }; --Rune of Metamorphosis
		[3] = { itemID = 19372, droprate = "20%" }; --Helm of Endless Rage
		[4] = { itemID = 19371, droprate = "20%" }; --Pendant of the Fallen Dragon
		[5] = { itemID = 19346, droprate = "10%" }; --Dragonfang Blade
		[6] = { itemID = 19348, droprate = "10%" }; --Red Dragonscale Protector
		[7] = { itemID = 19430, droprate = "16.67%" }; --Shroud of Pure Thought
		[8] = { itemID = 19403, droprate = "16.67%" }; --Band of Forced Concentration
		[9] = { itemID = 19367, droprate = "16.67%" }; --Dragon's Touch
		[10] = { itemID = 14000, droprate = "12.5%" }; --Ring of Trinity Force
		[16] = { itemID = 2522463, droprate = "100%", lootTable = {"T2WAIST","Token"} }; --Chromatic Girdle
	};
	{
		Name = BabbleBoss["Broodlord Lashlayer"];
		[1] = { itemID = 19342, droprate = "20%" }; --Venomous Totem
		[2] = { itemID = 19341, droprate = "20%" }; --Lifegiving Gem
		[3] = { itemID = 19345, droprate = "16.67%" }; --Aegis of Preservation
		[4] = { itemID = 19374, droprate = "20%" }; --Bracers of Arcane Accuracy
		[5] = { itemID = 19373, droprate = "20%" }; --Black Brood Pauldrons
		[6] = { itemID = 19351, droprate = "10%" }; --Maladath, Runed Blade of the Black Flight
		[7] = { itemID = 19350, droprate = "10%" }; --Heartstriker
		[8] = { itemID = 19402, droprate = "12.5%" }; --Legguards of the Fallen Crusader
		[9] = { itemID = 19365, droprate = "12.5%" }; --Claw of the Black Drake
		[10] = { itemID = 19432, droprate = "16.67%" }; --Circle of Applied Force
		[16] = { itemID = 2522465, droprate = "100%", lootTable = {"T2FEET","Token"} }; --Chromatic Boots
		[18] = { itemID = 20383, droprate = "100%" }; --Head of the Broodlord Lashlayer
	};
	{
		Name = BabbleBoss["Firemaw"];
		[1] = { itemID = 19365, droprate = "12.5%" }; --Claw of the Black Drake
		[2] = { itemID = 19355, droprate = "6.67%" }; --Shadow Wing Focus Staff
		[3] = { itemID = 19353, droprate = "6.67%" }; --Drake Talon Cleaver
		[4] = { itemID = 19343, droprate = "12.5%" }; --Scrolls of Blinding Light
		[5] = { itemID = 19344, droprate = "6.67%" }; --Natural Alignment Crystal
		[6] = { itemID = 19398, droprate = "12.5%" }; --Cloak of Firemaw
		[7] = { itemID = 19400, droprate = "12.5%" }; --Firemaw's Clutch
		[8] = { itemID = 19399, droprate = "12.5%" }; --Black Ash Robe
		[9] = { itemID = 19396, droprate = "6.67%" }; --Taut Dragonhide Belt
		[10] = { itemID = 19401, droprate = "12.5%" }; --Primalist's Linked Legguards
		[11] = { itemID = 19394, droprate = "6.76%" }; --Drake Talon Pauldrons
		[12] = { itemID = 19402, droprate = "12.5%" }; --Legguards of the Fallen Crusader
		[13] = { itemID = 19397, droprate = "6.67%" }; --Ring of Blackrock
		[14] = { itemID = 19395, droprate = "6.67%" }; --Rejuvenating Gem
		[16] = { itemID = 2522464, droprate = "100%", lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Ebonroc"];
		[1] = { itemID = 19345, droprate = "16.67%" }; --Aegis of Preservation
		[2] = { itemID = 19407, droprate = "16.67%" }; --Ebony Flame Gloves
		[3] = { itemID = 19405, droprate = "16.67%" }; --Malfurion's Blessed Bulwark
		[4] = { itemID = 19396, droprate = "6.67%" }; --Taut Dragonhide Belt
		[5] = { itemID = 19394, droprate = "6.67%" }; --Drake Talon Pauldrons
		[6] = { itemID = 19403, droprate = "16.67%" }; --Band of Forced Concentration
		[7] = { itemID = 19397, droprate = "6.67%" }; --Ring of Blackrock
		[8] = { itemID = 19406, droprate = "16.67%" }; --Drake Fang Talisman
		[9] = { itemID = 19395, droprate = "6.67%" }; --Rejuvenating Gem
		[10] = { itemID = 19353, droprate = "6.67%" }; --Drake Talon Cleaver
		[11] = { itemID = 19355, droprate = "6.67%" }; --Shadow Wing Focus Staff
		[12] = { itemID = 19368, droprate = "16.67%" }; --Dragonbreath Hand Cannon
		[16] = { itemID = 2522464, droprate = "100%", lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Flamegor"];
		[1] = { itemID = 19430, droprate = "16.67%" }; --Shroud of Pure Thought
		[2] = { itemID = 19396, droprate = "6.67%" }; --Taut Dragonhide Belt
		[3] = { itemID = 19433, droprate = "16.67%" }; --Emberweave Leggings
		[4] = { itemID = 19394, droprate = "6.67%" }; --Drake Talon Pauldrons
		[5] = { itemID = 19397, droprate = "6.67%" }; --Ring of Blackrock
		[6] = { itemID = 19432, droprate = "16.67%" }; --Circle of Applied Force
		[7] = { itemID = 19395, droprate = "6.67%" }; --Rejuvenating Gem
		[8] = { itemID = 19431, droprate = "16.67%" }; --Styleen's Impeding Scarab
		[9] = { itemID = 19353, droprate = "6.67%" }; --Drake Talon Cleaver
		[10] = { itemID = 19357, droprate = "16.67%" }; --Herald of Woe
		[11] = { itemID = 19355, droprate = "6.67%" }; --Shadow Wing Focus Staff
		[12] = { itemID = 19367, droprate = "16.67%" }; --Dragon's Touch
		[16] = { itemID = 2522464, droprate = "100%", lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Chromaggus"];
		[1] = { itemID = 19386, droprate = "20%" }; --Elementium Threaded Cloak
		[2] = { itemID = 19388, droprate = "20%" }; --Angelista's Grasp
		[3] = { itemID = 19385, droprate = "20%" }; --Empowered Leggings
		[4] = { itemID = 19391, droprate = "20%" }; --Shimmering Geta
		[5] = { itemID = 19389, droprate = "20%" }; --Taut Dragonhide Shoulderpads
		[6] = { itemID = 19390, droprate = "20%" }; --Taut Dragonhide Gloves
		[7] = { itemID = 19393, droprate = "10%" }; --Primalist's Linked Waistguard
		[8] = { itemID = 19392, droprate = "10%" }; --Girdle of the Fallen Crusader
		[9] = { itemID = 19387, droprate = "20%" }; --Chromatic Boots
		[11] = { itemID = 19347, droprate = "10%" }; --Claw of Chromaggus
		[12] = { itemID = 19352, droprate = "10%" }; --Chromatically Tempered Sword
		[13] = { itemID = 19349, droprate = "10%" }; --Elementium Reinforced Bulwark
		[14] = { itemID = 19361, droprate = "10%" }; --Ashjre'thul, Crossbow of Smiting
		[16] = { itemID = 2522461, droprate = "100%", lootTable = {"T2SHOULDER","Token"} }; --Chromatic Spaulders
	};
	{
		Name = BabbleBoss["Nefarian"];
		[1] = { itemID = 19378, droprate = "16.67%" }; --Cloak of the Brood Lord
		[2] = { itemID = 19375, droprate = "16.67%" }; --Mish'undare, Circlet of the Mind Flayer
		[3] = { itemID = 19381, droprate = "16.67%" }; --Boots of the Shadow Flame
		[4] = { itemID = 19380, droprate = "16.67%" }; --Therazane's Link
		[5] = { itemID = 19377, droprate = "16.67%" }; --Prestor's Talisman of Connivery
		[6] = { itemID = 19376, droprate = "16.67%" }; --Archimtiros' Ring of Reckoning
		[7] = { itemID = 19382, droprate = "16.67%" }; --Pure Elementium Band
		[8] = { itemID = 19379, droprate = "16.67%" }; --Neltharion's Tear
		[9] = { itemID = 19364, droprate = "10%" }; --Ashkandi, Greatsword of the Brotherhood
		[10] = { itemID = 19363, droprate = "16.67%" }; --Crul'shorukh, Edge of Chaos
		[11] = { itemID = 19360, droprate = "16.67%" }; --Lok'amir il Romathis
		[12] = { itemID = 19356, droprate = "16.67%%" }; --Staff of the Shadow Flame
		[13] = { itemID = 14001, droprate = "16.67%%" }; --Archimtiros' Ring of Armageddon
		[16] = { itemID = 2522450, droprate = "100%", lootTable = {"T2CHEST","Token"} }; --Chromatic Tunic
		[18] = { itemID = 19003, droprate = "100%" }; --Head of Nefarian
		[19] = { itemID = 19383 }; --Master Dragonslayer's Medallion
		[20] = { itemID = 19384 }; --Master Dragonslayer's Ring
		[21] = { itemID = 19366 }; --Master Dragonslayer's Orb
		[23] = { itemID = 21138, droprate = "100%" }; --Red Scepter Shard
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 19436, droprate = "2.53%" }; --Cloak of Draconic Might
		[2] = { itemID = 19437, droprate = "2.33%" }; --Boots of Pure Thought
		[3] = { itemID = 19438, droprate = "4.42%" }; --Ringo's Blizzard Boots
		[4] = { itemID = 19439, droprate = "4.62%" }; --Interlaced Shadow Jerkin
		[5] = { itemID = 19434, droprate = "1.57%" }; --Band of Dark Dominion
		[6] = { itemID = 19362, droprate = "1.67%" }; --Doom's Edge
		[7] = { itemID = 19354, droprate = "5.96%" }; --Draconic Avenger
		[8] = { itemID = 19358, droprate = "2.30%" }; --Draconic Maul
		[9] = { itemID = 19435, droprate = "1.61%" }; --Essence Gatherer
		[16] = { itemID = 18562, droprate = "4.75%" }; --Elementium Ore
		[18] = { itemID = 21109 }; --Draconic for Dummies
	};
};

----------------------
--- Dire Maul East ---
----------------------

AtlasLoot_Data["DireMaulEast"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Dire Maul"] .. " East";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Pusillin"];
		[1] = { itemID = 18267, droprate = "71.55%" }; --Recipe: Runn Tum Tuber Surprise
		[3] = { itemID = 18261, droprate = "100%" }; --Book of Incantations
		[4] = { itemID = 18249, droprate = "100%" }; --Crescent Key
	};
	{
		Name = BabbleBoss["Zevrim Thornhoof"];
		[1] = { itemID = 18319, droprate = "7.88%" }; --Fervent Helm
		[2] = { itemID = 18313, droprate = "17.87%" }; --Helm of Awareness
		[3] = { itemID = 18323, droprate = "17.24%" }; --Satyr's Bow
		[5] = { itemID = 18306, droprate = "21.40%" }; --Gloves of Shadowy Mist
		[6] = { itemID = 18308, droprate = "23.73%" }; --Clever Hat
	};
	{
		Name = BabbleBoss["Lethtendris"];
		[1] = { itemID = 18325, droprate = "24.67%" }; --Felhide Cap
		[2] = { itemID = 18311, droprate = "7.30%" }; --Quel'dorei Channeling Rod
		[4] = { itemID = 18302, droprate = "29.30%" }; --Band of Vigor
		[5] = { itemID = 18301 }; --Lethtendris's Wand
		[7] = { itemID = 18426 }; --Lethtendris's Web
	};
	{
		Name = BabbleBoss["Pimgib"];
		[1] = { itemID = 18354, droprate = "18.68%" }; --Pimgib's Collar
	};
	{
		Name = BabbleBoss["Hydrospawn"];
		[1] = { itemID = 18322, droprate = "16.42%" }; --Waterspout Boots
		[2] = { itemID = 18317, droprate = "16.44%" }; --Tempest Talisman
		[3] = { itemID = 18324, droprate = "8.46%" }; --Waveslicer
		[5] = { itemID = 18307, droprate = "21.33%" }; --Riptide Shoes
		[6] = { itemID = 18305, droprate = "22.75%" }; --Breakwater Legguards
	};
	{
		Name = BabbleBoss["Alzzin the Wildshaper"];
		[1] = { itemID = 18328, droprate = "15.36%" }; --Shadewood Cloak
		[2] = { itemID = 18327, droprate = "16.53%" }; --Whipvine Cord
		[3] = { itemID = 18309, droprate = "14.05%" }; --Gloves of Restoration
		[4] = { itemID = 18318, droprate = "14.88%" }; --Merciful Greaves
		[5] = { itemID = 18312, droprate = "16.08%" }; --Energized Chestplate
		[6] = { itemID = 18326, droprate = "18.62%" }; --Razor Gauntlets
		[8] = { icon = "INV_Box_01", "=q6=#x9#" };
		[9] = { itemID = 18501 }; --Felvine Shard
		[16] = { itemID = 18315, droprate = "15.40%" }; --Ring of Demonic Potency
		[17] = { itemID = 18314, droprate = "13.71%" }; --Ring of Demonic Guile
		[18] = { itemID = 18310, droprate = "15.39%" }; --Fiendish Machete
		[19] = { itemID = 18321, droprate = "15.94%" }; --Energetic Rod
	};
	{
		Name = BabbleBoss["Isalien"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n20#" };
		[2] = { itemID = 22304, droprate = "16.24%" }; --Ironweave Gloves
		[3] = { itemID = 22472, droprate = "12.55%" }; --Boots of Ferocity
		[4] = { itemID = 22401, droprate = "14.76%" }; --Libram of Hope
		[5] = { itemID = 22345, droprate = "2.95%" }; --Totem of Rebirth
		[6] = { itemID = 22315 }; --Hammer of Revitalization
		[7] = { itemID = 22314, droprate = "15.50%" }; --Huntsman's Harpoon
		[17] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[18] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18295, droprate = "1.26%" }; --Phasing Boots
		[2] = { itemID = 18298, droprate = "0.62%" }; --Unbridled Leggings
		[3] = { itemID = 18296, droprate = "0.59%" }; --Marksman Bands
		[4] = { itemID = 18289, droprate = "0.87%" }; --Barbed Thorn Necklace
	};
	{
		Name = "Dire Maul Books";
		[1] = { itemID = 18364 }; --The Emerald Dream
		[2] = { itemID = 18361 }; --The Greatest Race of Hunters
		[3] = { itemID = 18358 }; --The Arcanist's Cookbook
		[4] = { itemID = 18359 }; --The Light and How to Swing It
		[5] = { itemID = 18362 }; --Holy Bologna: What the Light Won't Tell You
		[6] = { itemID = 18356 }; --Garona: A Study on Stealth and Treachery
		[7] = { itemID = 18363 }; --Frost Shock and You
		[8] = { itemID = 18360 }; --Harnessing Shadows
		[9] = { itemID = 18357 }; --Codex of Defense
		[11] = { itemID = 18333 }; --Libram of Focus
		[12] = { itemID = 18334 }; --Libram of Protection
		[13] = { itemID = 18332 }; --Libram of Rapidity
		[16] = { itemID = 18470 }; --Royal Seal of Eldre'Thalas
		[17] = { itemID = 18473 }; --Royal Seal of Eldre'Thalas
		[18] = { itemID = 18468 }; --Royal Seal of Eldre'Thalas
		[19] = { itemID = 18472 }; --Royal Seal of Eldre'Thalas
		[20] = { itemID = 18469 }; --Royal Seal of Eldre'Thalas
		[21] = { itemID = 18465 }; --Royal Seal of Eldre'Thalas
		[22] = { itemID = 18471 }; --Royal Seal of Eldre'Thalas
		[23] = { itemID = 18467 }; --Royal Seal of Eldre'Thalas
		[24] = { itemID = 18466 }; --Royal Seal of Eldre'Thalas
		[26] = { itemID = 18401 }; --Foror's Compendium of Dragon Slaying
		[27] = { itemID = 18348 }; --Quel'Serrar
	};
};
-----------------------
--- Dire Maul North ---
-----------------------

AtlasLoot_Data["DireMaulNorth"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Dire Maul"] .. " North";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Guard Mol'dar"];
		[1] = { itemID = 18496, droprate = "4.68%" }; --Heliotrope Cloak
		[2] = { itemID = 18497, droprate = "4.14%" }; --Sublime Wristguards
		[3] = { itemID = 18494, droprate = "4.62%" }; --Denwatcher's Shoulders
		[4] = { itemID = 18493, droprate = "3.96%" }; --Bulky Iron Spaulders
		[5] = { itemID = 18498, droprate = "4.94%" }; --Hedgecutter
		[7] = { itemID = 18268, droprate = "100%" }; --Gordok Inner Door Key
		[16] = { itemID = 18450, droprate = "6.57%" }; --Robe of Combustion
		[17] = { itemID = 18451, droprate = "6.61%" }; --Hyena Hide Belt
		[18] = { itemID = 18458, droprate = "7.12%" }; --Modest Armguards
		[19] = { itemID = 18459, droprate = "6.09%" }; --Gallant's Wristguards
		[20] = { itemID = 18464, droprate = "6.52%" }; --Gordok Nose Ring
		[21] = { itemID = 18462 }; --Jagged Bone Fist
		[22] = { itemID = 18463, droprate = "7.38%" }; --Ogre Pocket Knife
		[23] = { itemID = 18460, droprate = "5.86%" }; --Unsophisticated Hand Cannon
	};
	{
		Name = BabbleBoss["Stomper Kreeg"];
		[1] = { itemID = 18425, droprate = "40.24%" }; --Kreeg's Mug
		[2] = { itemID = 18269, droprate = "100%" }; --Gordok Green Grog
		[3] = { itemID = 18284, droprate = "100%" }; --Kreeg's Stout Beatdown
	};
	{
		Name = BabbleBoss["Guard Fengus"];
		[1] = { itemID = 18450, droprate = "9.76%" }; --Robe of Combustion
		[2] = { itemID = 18451, droprate = "10.64%" }; --Hyena Hide Belt
		[3] = { itemID = 18458, droprate = "11.41%" }; --Modest Armguards
		[4] = { itemID = 18459, droprate = "9.60%" }; --Gallant's Wristguards
		[5] = { itemID = 18464, droprate = "11.41%" }; --Gordok Nose Ring
		[6] = { itemID = 18462, droprate = "11.79%" }; --Jagged Bone Fist
		[7] = { itemID = 18463, droprate = "11.02%" }; --Ogre Pocket Knife
		[8] = { itemID = 18460, droprate = "9.07%" }; --Unsophisticated Hand Cannon
		[16] = { icon = "INV_Box_01", "=q6=#x7#" };
		[17] = { itemID = 18266, droprate = "100%" }; --Gordok Courtyard Key
	};
	{
		Name = AL["Knot Thimblejack"];
		[1] = { itemID = 18517, droprate = "0.92%" }; --Pattern: Chromatic Cloak
		[2] = { itemID = 18518, droprate = "1.29%" }; --Pattern: Hide of the Wild
		[3] = { itemID = 18519, droprate = "1.14%" }; --Pattern: Shifting Cloak
		[4] = { itemID = 18414, droprate = "1.00%" }; --Pattern: Belt of the Archmage
		[6] = { itemID = 18418, droprate = "9.75%" }; --Pattern: Cloak of Warding
		[7] = { itemID = 18415, droprate = "9.62%" }; --Pattern: Felcloth Gloves
		[8] = { itemID = 18416, droprate = "10.66%" }; --Pattern: Inferno Gloves
		[9] = { itemID = 18417, droprate = "10.28%" }; --Pattern: Mooncloth Gloves
		[10] = { itemID = 18514, droprate = "10.90%" }; --Pattern: Girdle of Insight
		[11] = { itemID = 18515, droprate = "11.18%" }; --Pattern: Mongoose Boots
		[12] = { itemID = 18516, droprate = "10.26%" }; --Pattern: Swift Flight Bracers
		[14] = { icon = "INV_Box_01", "=q6=#x6#" };
		[15] = { itemID = 18240, droprate = "100%" }; --Ogre Tannin
		[16] = { itemID = 18509 }; --Chromatic Cloak
		[17] = { itemID = 18510 }; --Hide of the Wild
		[18] = { itemID = 18511 }; --Shifting Cloak
		[19] = { itemID = 18405 }; --Belt of the Archmage
		[21] = { itemID = 18413 }; --Cloak of Warding
		[22] = { itemID = 18407 }; --Felcloth Gloves
		[23] = { itemID = 18408 }; --Inferno Gloves
		[24] = { itemID = 18409 }; --Mooncloth Gloves
		[25] = { itemID = 18504 }; --Girdle of Insight
		[26] = { itemID = 18506 }; --Mongoose Boots
		[27] = { itemID = 18508 }; --Swift Flight Bracers
	};
	{
		Name = BabbleBoss["Guard Slip'kik"];
		[1] = { itemID = 18496, droprate = "5.82%" }; --Heliotrope Cloak
		[2] = { itemID = 18497, droprate = "4.75%" }; --Sublime Wristguards
		[3] = { itemID = 18494, droprate = "5.70%" }; --Denwatcher's Shoulders
		[4] = { itemID = 18493, droprate = "4.89%" }; --Bulky Iron Spaulders
		[5] = { itemID = 18498, droprate = "6.01%" }; --Hedgecutter
		[16] = { itemID = 18450, droprate = "6.78%" }; --Robe of Combustion
		[17] = { itemID = 18451, droprate = "7.83%" }; --Hyena Hide Belt
		[18] = { itemID = 18458, droprate = "7.63%" }; --Modest Armguards
		[19] = { itemID = 18459, droprate = "6.98%" }; --Gallant's Wristguards
		[20] = { itemID = 18464, droprate = "7.36%" }; --Gordok Nose Ring
		[21] = { itemID = 18462, droprate = "8.52%" }; --Jagged Bone Fist
		[22] = { itemID = 18463, droprate = "7.74%" }; --Ogre Pocket Knife
		[23] = { itemID = 18460, droprate = "6.66%" }; --Unsophisticated Hand Cannon
	};
	{
		Name = BabbleBoss["Captain Kromcrush"];
		[1] = { itemID = 18507, droprate = "18.75%" }; --Boots of the Full Moon
		[2] = { itemID = 18505, droprate = "18.06%" }; --Mugger's Belt
		[3] = { itemID = 18503, droprate = "17.48%" }; --Kromcrush's Chestplate
		[4] = { itemID = 18502, droprate = "21.47%" }; --Monstrous Glaive
	};
	{
		Name = BabbleBoss["Cho'Rush the Observer"];
		[1] = { itemID = 18490, droprate = "21.46%" }; --Insightful Hood
		[2] = { itemID = 18484, droprate = "22.46%" }; --Cho'Rush's Blade
		[3] = { itemID = 18485, droprate = "22.96%" }; --Observer's Shield
		[4] = { itemID = 18483, droprate = "19.01%" }; --Mana Channeling Wand
	};
	{
		Name = BabbleBoss["King Gordok"];
		[1] = { itemID = 18526, droprate = "17.17%" }; --Crown of the Ogre King
		[2] = { itemID = 18525, droprate = "19.15%" }; --Bracers of Prosperity
		[3] = { itemID = 18527, droprate = "19.73%" }; --Harmonious Gauntlets
		[4] = { itemID = 18524, droprate = "18.55%" }; --Leggings of Destruction
		[5] = { itemID = 18521, droprate = "17.80%" }; --Grimy Metal Boots
		[6] = { itemID = 18522, droprate = "14.96%" }; --Band of the Ogre King
		[7] = { itemID = 18523, droprate = "20.21%" }; --Brightly Glowing Stone
		[8] = { itemID = 18520, droprate = "16.44%" }; --Barbarous Blade
		[16] = { itemID = 19258, droprate = "1.84%" }; --Ace of Warlords
		[18] = { itemID = 18780, droprate = "6.00%" }; --Top Half of Advanced Armorsmithing: Volume I
		[19] = { itemID = 12727 }; --Plans: Enchanted Thorium Breastplate
	};
	{
		Name = AL["DM North Tribute Chest"];
		[1] = { itemID = 18538 }; --Treant's Bane
		[3] = { itemID = 18495 }; --Redoubt Cloak
		[4] = { itemID = 18532 }; --Mindsurge Robe
		[5] = { itemID = 18528 }; --Cyclone Spaulders
		[6] = { itemID = 18530 }; --Ogre Forged Hauberk
		[7] = { itemID = 18533 }; --Gordok Bracers of Power
		[8] = { itemID = 18529 }; --Elemental Plate Girdle
		[9] = { itemID = 18500 }; --Tarnished Elven Ring
		[10] = { itemID = 18537 }; --Counterattack Lodestone
		[11] = { itemID = 18531 }; --Unyielding Maul
		[12] = { itemID = 18534 }; --Rod of the Ogre Magi
		[13] = { itemID = 18499 }; --Barrier Shield
		[16] = { itemID = 18475 }; --Oddly Magical Belt
		[17] = { itemID = 18478 }; --Hyena Hide Jerkin
		[18] = { itemID = 18477 }; --Shaggy Leggings
		[19] = { itemID = 18476 }; --Mud Stained Boots
		[20] = { itemID = 18479 }; --Carrion Scorpid Helm
		[21] = { itemID = 18480 }; --Scarab Plate Helm
		[22] = { itemID = 18481 }; --Skullcracking Mace
		[23] = { itemID = 18482 }; --Ogre Toothpick Shooter
		[24] = { itemID = 18655 }; --Schematic: Major Recombobulator
	};
};

----------------------
--- Dire Maul West ---
----------------------

AtlasLoot_Data["DireMaulWest"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Dire Maul"] .. " West";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Tendris Warpwood"];
		[1] = { itemID = 18390, droprate = "22.55%" }; --Tanglemoss Leggings
		[2] = { itemID = 18393, droprate = "19.81%" }; --Warpwood Binding
		[4] = { itemID = 18353, droprate = "23.46%" }; --Stoneflower Staff
		[5] = { itemID = 18352, droprate = "21.67%" }; --Petrified Bark Shield
	};
	{
		Name = BabbleBoss["Illyanna Ravenoak"];
		[1] = { itemID = 18386, droprate = "18.79%" }; --Padre's Trousers
		[2] = { itemID = 18383, droprate = "20.11%" }; --Force Imbued Gauntlets
		[4] = { itemID = 18349, droprate = "23.94%" }; --Gauntlets of Accuracy
		[5] = { itemID = 18347, droprate = "22.44%" }; --Well Balanced Axe
	};
	{
		Name = BabbleBoss["Magister Kalendris"];
		[1] = { itemID = 18374 }; --Flamescarred Shoulders
		[2] = { itemID = 18397, droprate = "17.46%" }; --Elder Magus Pendant
		[3] = { itemID = 18371, droprate = "7.45%" }; --Mindtap Talisman
		[5] = { itemID = 18350, droprate = "21.44%" }; --Amplifying Cloak
		[6] = { itemID = 18351, droprate = "24.36%" }; --Magically Sealed Bracers
		[7] = { itemID = 22309 }; --Pattern: Big Bag of Enchantment
	};
	{
		Name = BabbleBoss["Tsu'zee"];
		[1] = { itemID = 18387, droprate = "24.79%" }; --Brightspark Gloves
		[3] = { itemID = 18346, droprate = "33.94%" }; --Threadbare Trousers
		[4] = { itemID = 18345, droprate = "30.28%" }; --Murmuring Ring
	};
	{
		Name = BabbleBoss["Immol'thar"];
		[1] = { itemID = 18389, droprate = "14.35%" }; --Cloak of the Cosmos
		[2] = { itemID = 18385, droprate = "15.33%" }; --Robe of Everlasting Night
		[3] = { itemID = 18377, droprate = "21.01%" }; --Quickdraw Gloves
		[4] = { itemID = 18391, droprate = "20.08%" }; --Eyestalk Cord
		[5] = { itemID = 18394, droprate = "17.51%" }; --Demon Howl Wristguards
		[6] = { itemID = 18379, droprate = " 19.81%" }; --Odious Greaves
		[7] = { itemID = 18384, droprate = "14.71%" }; --Bile-etched Spaulders
		[16] = { itemID = 18381, droprate = "17.78%" }; --Evil Eye Pendant
		[17] = { itemID = 18370, droprate = "6.30%" }; --Vigilance Charm
		[18] = { itemID = 18372, droprate = "6.99%" }; --Blade of the New Moon
	};
	{
		Name = BabbleBoss["Lord Hel'nurath"];
		[1] = { itemID = 18757, droprate = "23.12%" }; --Diabolic Mantle
		[2] = { itemID = 18754, droprate = "19.24%" }; --Fel Hardened Bracers
		[3] = { itemID = 18756, droprate = "19.77%" }; --Dreadguard's Protector
		[4] = { itemID = 18755, droprate = "21.92%" }; --Xorothian Firestick
	};
	{
		Name = BabbleBoss["Prince Tortheldrin"];
		[1] = { itemID = 18382, droprate = "21.84%" }; --Fluctuating Cloak
		[2] = { itemID = 18373, droprate = "6.32%" }; --Chestplate of Tranquility
		[3] = { itemID = 18375, droprate = "15.62%" }; --Bracers of the Eclipse
		[4] = { itemID = 18378, droprate = "21.20%" }; --Silvermoon Leggings
		[5] = { itemID = 18380, droprate = "15.87%" }; --Eldritch Reinforced Legplates
		[6] = { itemID = 18395, droprate = "14.55%" }; --Emerald Flame Ring
		[8] = { icon = "INV_Box_01", "=q6=#x8#" };
		[9] = { itemID = 18336 }; --Gauntlet of Gordok Might
		[16] = { itemID = 18392, droprate = "14.70%" }; --Distracting Dagger
		[17] = { itemID = 18396, droprate = "14.62%" }; --Mind Carver
		[18] = { itemID = 18376, droprate = "14.40%" }; --Timeworn Mace
		[19] = { itemID = 18388, droprate = "7.72%" }; --Stoneshatter
	};
	{
		Name = AL["Shen'dralar Provisioner"];
		[1] = { itemID = 18487 }; --Pattern: Mooncloth Robe
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18344, droprate = "0.47%" }; --Stonebark Gauntlets
		[2] = { itemID = 18340, droprate = "0.58%" }; --Eidolon Talisman
		[3] = { itemID = 18338, droprate = "0.78%" }; --Wand of Arcane Potency
	};
};
------------------
--- Gnomeregan ---
------------------

AtlasLoot_Data["Gnomeregan"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Gnomeregan"];
	Type = "ClassicDungeon";
	Map = "Gnomeregan";
	{
		Name = AL["Namdo Bizzfizzle"];
		[1] = { itemID = 14639 }; --Schematic: Minor Recombobulator
	};
	{
		Name = BabbleBoss["Techbot"];
		[1] = { itemID = 9444, droprate = "69.3%" }; --Techbot CPU Shell
		[2] = { itemID = 9277, droprate = "100%" }; --Techbot's Memory Core
	};
	{
		Name = BabbleBoss["Grubbis"];
		[1] = { itemID = 9445, droprate = "9.22%" }; --Grubbis Paws
	};
	{
		Name = BabbleBoss["Viscous Fallout"];
		[1] = { itemID = 9454, droprate = "54.02%" }; --Acidic Walkers
		[2] = { itemID = 9453, droprate = "19.05%" }; --Toxic Revenger
		[3] = { itemID = 9452, droprate = "18.25%" }; --Hydrocane
	};
	{
		Name = BabbleBoss["Electrocutioner 6000"];
		[1] = { itemID = 9448, droprate = "28.37%" }; --Spidertank Oilrag
		[2] = { itemID = 9447, droprate = "28.44%" }; --Electrocutioner Lagnut
		[3] = { itemID = 9446, droprate = "13.19%" }; --Electrocutioner Leg
		[4] = { itemID = 6893 }; --Workshop Key
	};
	{
		Name = BabbleBoss["Crowd Pummeler 9-60"];
		[1] = { itemID = 9450, droprate = "60.45%" }; --Gnomebot Operating Boots
		[2] = { itemID = 9449, droprate = "33.14%" }; --Manual Crowd Pummeler
	};
	{
		Name = BabbleBoss["Dark Iron Ambassador"];
		[1] = { itemID = 9455, droprate = "33.96%" }; --Emissary Cuffs
		[2] = { itemID = 9457, droprate = "17.79%" }; --Royal Diplomatic Scepter
		[3] = { itemID = 9456, droprate = "38.01%" }; --Glass Shooter
	};
	{
		Name = BabbleBoss["Mekgineer Thermaplugg"];
		[1] = { itemID = 9492, droprate = "7.65%" }; --Electromagnetic Gigaflux Reactivator
		[2] = { itemID = 9461, droprate = "28.49%" }; --Charged Gear
		[3] = { itemID = 9459, droprate = "18.05%" }; --Thermaplugg's Left Arm
		[4] = { itemID = 9458, droprate = "28.61%" }; --Thermaplugg's Central Core
		[5] = { itemID = 4415 }; --Schematic: Craftsman's Monocle
		[6] = { itemID = 4413 }; --Schematic: Discombobulator Ray
		[7] = { itemID = 4411, droprate = "0.7%" }; --Schematic: Flame Deflector
		[8] = { itemID = 7742 }; --Schematic: Gnomish Cloaking Device
		[9] = { itemID = 9299, droprate = "100%" }; --Thermaplugg's Safe Combination
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9508, droprate = "0.02%" }; --Mechbuilder's Overalls
		[2] = { itemID = 9491, droprate = "0.01%" }; --Hotshot Pilot's Gloves
		[3] = { itemID = 9509, droprate = "0.01%" }; --Petrolspill Leggings
		[4] = { itemID = 9510, droprate = "0.01%" }; --Caverndeep Trudgers
		[5] = { itemID = 9490, droprate = "0.01%" }; --Gizmotron Megachopper
		[6] = { itemID = 9485, droprate = "0.01%" }; --Vibroblade
		[7] = { itemID = 9486, droprate = "0.02%" }; --Supercharger Battle Axe
		[8] = { itemID = 9488, droprate = "0.02%" }; --Oscillating Power Hammer
		[9] = { itemID = 9487, droprate = "0.01%" }; --Hi-tech Supergun
		[10] = { itemID = 9327, droprate = "1.41%" }; --Security DELTA Data Access Card
		[11] = { itemID = 9326, droprate = "9.38%" }; --Grime-Encrusted Ring
		[12] = { itemID = 9362 }; --Brilliant Gold Ring
		[13] = { itemID = 9538 }; --Talvash's Gold Ring
	};
};
----------------
--- Maraudon ---
----------------

AtlasLoot_Data["Maraudon"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Maraudon"];
	Type = "ClassicDungeon";
	Map = "Maraudon";
	{
		Name = BabbleBoss["Noxxion"];
		[1] = { itemID = 17746, droprate = "32.50%" }; --Noxxion's Shackles
		[2] = { itemID = 17744, droprate = "30.35%" }; --Heart of Noxxion
		[3] = { itemID = 17745, droprate = "17.53%" }; --Noxious Shooter
		[4] = { itemID = 17702, droprate = "100%" }; --Celebrian Rod
	};
	{
		Name = BabbleBoss["Razorlash"];
		[1] = { itemID = 17750, droprate = "22.93%" }; --Chloromesh Girdle
		[2] = { itemID = 17748, droprate = "20.60%" }; --Vinerot Sandals
		[3] = { itemID = 17749, droprate = "22.09%" }; --Phytoskin Spaulders
		[4] = { itemID = 17751, droprate = "21.65%" }; --Brusslehide Leggings
	};
	{
		Name = BabbleBoss["Lord Vyletongue"];
		[1] = { itemID = 17755, droprate = "25.71%" }; --Satyrmane Sash
		[2] = { itemID = 17754, droprate = "28.09%" }; --Infernal Trickster Leggings
		[3] = { itemID = 17752, droprate = "23.14%" }; --Satyr's Lash
		[4] = { itemID = 17703, droprate = "100%" }; --Celebrian Diamond
	};
	{
		Name = BabbleBoss["Meshlok the Harvester"];
		[1] = { itemID = 17741, droprate = "30.34%" }; --Nature's Embrace
		[2] = { itemID = 17742, droprate = "31.37%" }; --Fungus Shroud Armor
		[3] = { itemID = 17767, droprate = "28.32%" }; --Bloomsprout Headpiece
	};
	{
		Name = BabbleBoss["Celebras the Cursed"];
		[1] = { itemID = 17739, droprate = "30.32%" }; --Grovekeeper's Drape
		[2] = { itemID = 17740, droprate = "28.59%" }; --Soothsayer's Headdress
		[3] = { itemID = 17738, droprate = "28.22%" }; --Claw of Celebras
	};
	{
		Name = BabbleBoss["Landslide"];
		[1] = { itemID = 17736, droprate = "23.09%" }; --Rockgrip Gauntlets
		[2] = { itemID = 17734, droprate = "20.87%" }; --Helm of the Mountain
		[3] = { itemID = 17737, droprate = "19.99%" }; --Cloud Stone
		[4] = { itemID = 17943, droprate = "16.58%" }; --Fist of Stone
	};
	{
		Name = BabbleBoss["Tinkerer Gizlock"];
		[1] = { itemID = 17719, droprate = "27.44%" }; --Inventor's Focal Sword
		[2] = { itemID = 17718, droprate = "30.61%" }; --Gizlock's Hypertech Buckler
		[3] = { itemID = 17717, droprate = "27.23%" }; --Megashot Rifle
	};
	{
		Name = BabbleBoss["Rotgrip"];
		[1] = { itemID = 17732, droprate = "25.73%" }; --Rotgrip Mantle
		[2] = { itemID = 17728, droprate = "26.20%" }; --Albino Crocscale Boots
		[3] = { itemID = 17730, droprate = "19.21%" }; --Gatorbite Axe
	};
	{
		Name = BabbleBoss["Princess Theradras"];
		[1] = { itemID = 17780, droprate = "0.20%" }; --Blade of Eternal Darkness
		[2] = { itemID = 17715, droprate = "13.47%" }; --Eye of Theradras
		[3] = { itemID = 17714, droprate = "20.06%" }; --Bracers of the Stone Princess
		[4] = { itemID = 17711, droprate = "14.96%" }; --Elemental Rockridge Leggings
		[5] = { itemID = 17707, droprate = "15.30%" }; --Gemshard Heart
		[6] = { itemID = 17713, droprate = "18.92%" }; --Blackstone Ring
		[7] = { itemID = 17710, droprate = "14.24%" }; --Charstone Dirk
		[8] = { itemID = 17766, droprate = "16.44%" }; --Princess Theradras' Scepter
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 17764, droprate = "100%" }; --Gem of the Fourth Khan
		[2] = { itemID = 17765, droprate = "100%" }; --Gem of the Fifth Khan
	};
};
----------------------
--- Ragefire Chasm ---
----------------------
AtlasLoot_Data["RagefireChasm"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Ragefire Chasm"];
	Type = "ClassicDungeon";
	Map = "RagefireChasm";
	{
		Name = BabbleBoss["Taragaman the Hungerer"];
		[1] = { itemID = 14149, droprate = "31.59%" }; --Subterranean Cape
		[2] = { itemID = 14148, droprate = "33.91%" }; --Crystalline Cuffs
		[3] = { itemID = 14145, droprate = "15.98%" }; --Cursed Felblade
		[4] = { itemID = 14540, droprate = "100%" }; --Taragaman the Hungerer's Heart
	};
	{
		Name = AL["Zelemar the Wrathful"];
		[1] = { itemID = 24225, droprate = "100%" }; --Blood of the Wrathful
	};
	{
		Name = BabbleBoss["Jergosh the Invoker"];
		[1] = { itemID = 14150, droprate = "36.40%" }; --Robe of Evocation
		[2] = { itemID = 14147, droprate = "34.35%" }; --Cavedweller Bracers
		[3] = { itemID = 14151, droprate = "17.10%" }; --Chanting Blade
	};
};

----------------------
--- Razorfen Downs ---
----------------------

AtlasLoot_Data["RazorfenDowns"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Razorfen Downs"];
	Type = "ClassicDungeon";
	Map = "RazorfenDowns";
	{
		Name = BabbleBoss["Tuten'kash"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Tuten'kash"] };
		[2] = { itemID = 10776, droprate = "28.64%" }; --Silky Spider Cape
		[3] = { itemID = 10777, droprate = "28.95%" }; --Arachnid Gloves
		[4] = { itemID = 10775, droprate = "24.87%" }; --Carapace of Tuten'kash
	};
	{
		Name = AL["Henry Stern"];
		[1] = { itemID = 3831 }; --Recipe: Mighty Troll's Blood Potion
		[2] = { itemID = 10841, spellID = 13028 }; --Goldthorn Tea
	};
	{
		Name = BabbleBoss["Mordresh Fire Eye"];
		[1] = { itemID = 10771, droprate = "27.92%" }; --Deathmage Sash
		[2] = { itemID = 10769, droprate = "29.11%" }; --Glowing Eye of Mordresh
		[3] = { itemID = 10770, droprate = "29.59%" }; --Mordresh's Lifeless Skull
	};
	{
		Name = BabbleBoss["Glutton"];
		[1] = { itemID = 10774, droprate = "42.15%" }; --Fleshhide Shoulders
		[2] = { itemID = 10772, droprate = "44.22%" }; --Glutton's Cleaver
	};
	{
		Name = BabbleBoss["Ragglesnout"];
		[1] = { itemID = 10768, droprate = "31.40%" }; --Boar Champion's Belt
		[2] = { itemID = 10758, droprate = "18.51%" }; --X'caliboar
		[3] = { itemID = 10767, droprate = "35.14%" }; --Savage Boar's Guard
	};
	{
		Name = BabbleBoss["Amnennar the Coldbringer"];
		[1] = { itemID = 10762, droprate = "29.52%" }; --Robes of the Lich
		[2] = { itemID = 10765 }; --Bonefingers
		[3] = { itemID = 10764, droprate = "24.24%" }; --Deathchill Armor
		[4] = { itemID = 10763, droprate = "28.66%" }; --Icemetal Barbute
		[5] = { itemID = 10761, droprate = "13.89%" }; --Coldrage Dagger
		[6] = { itemID = 10420, droprate = "100%" }; --Skull of the Coldbringer
	};
	{
		Name = BabbleBoss["Plaguemaw the Rotting"];
		[1] = { itemID = 10760, droprate = "58.15%" }; --Swine Fists
		[2] = { itemID = 10766, droprate = "29.98%" }; --Plaguerot Sprig
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10574, droprate = "0.01%" }; --Corpseshroud
		[2] = { itemID = 10581, droprate = "0.02%" }; --Death's Head Vestment
		[3] = { itemID = 10578, droprate = "0.01%" }; --Thoughtcast Boots
		[4] = { itemID = 10583, droprate = "0.01%" }; --Quillward Harness
		[5] = { itemID = 10582, droprate = "0.02%" }; --Briar Tredders
		[6] = { itemID = 10584, droprate = "0.02%" }; --Stormgale Fists
		[7] = { itemID = 10573, droprate = "0.01%" }; --Boneslasher
		[8] = { itemID = 10570, droprate = "0.01%" }; --Manslayer
		[9] = { itemID = 10571, droprate = "0.01%" }; --Ebony Boneclub
		[10] = { itemID = 10567, droprate = "0.02%" }; --Quillshooter
		[11] = { itemID = 10572, droprate = "0.01%" }; --Freezing Shard
	};
};

----------------------
--- Razorfen Kraul ---
----------------------

AtlasLoot_Data["RazorfenKraul"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Razorfen Kraul"];
	Type = "ClassicDungeon";
	Map = "RazorfenKraul";
	{
		Name = AL["Roogug"];
		[1] = { itemID = 6841 }; --Vial of Phlogiston
	};
	{
		Name = AL["Aggem Thorncurse"];
		[1] = { itemID = 6681, droprate = "57,12%" }; --Thornspike
	};
	{
		Name = BabbleBoss["Death Speaker Jargba"];
		[1] = { itemID = 6685, droprate = "40.42%" }; --Death Speaker Mantle
		[2] = { itemID = 6682, droprate = "40.52%" }; --Death Speaker Robes
		[3] = { itemID = 2816, droprate = "7.72%" }; --Death Speaker Scepter
	};
	{
		Name = AL["Razorfen Spearhide"];
		[1] = { itemID = 6679, droprate = "43%" }; --Armor Piercer
	};
	{
		Name = BabbleBoss["Overlord Ramtusk"];
		[1] = { itemID = 6686, droprate = "57.14%" }; --Tusken Helm
		[2] = { itemID = 6687, droprate = "27.79%" }; --Corpsemaker
	};
	{
		Name = BabbleBoss["Agathelos the Raging"];
		[1] = { itemID = 6690, droprate = "49.21%" }; --Ferine Leggings
		[2] = { itemID = 6691, droprate = "24.85%" }; --Swinetusk Shank
	};
	{
		Name = BabbleBoss["Blind Hunter"];
		[1] = { itemID = 6697, droprate = "27.65%" }; --Batwing Mantle
		[2] = { itemID = 6695, droprate = "22.24%" }; --Stygian Bone Amulet
		[3] = { itemID = 6696, droprate = "25.12%" }; --Nightstalker Bow
	};
	{
		Name = BabbleBoss["Charlga Razorflank"];
		[1] = { itemID = 6693, droprate = "32.15%" }; --Agamaggan's Clutch
		[2] = { itemID = 6692, droprate = "15.43%" }; --Pronged Reaver
		[3] = { itemID = 6694, droprate = "30.24%" }; --Heart of Agamaggan
		[4] = { itemID = 17008 }; --Small Scroll
		[5] = { itemID = 5793, droprate = "100%" }; --Razorflank's Heart
		[6] = { itemID = 5792, droprate = "100%" }; --Razorflank's Medallion
	};
	{
		Name = BabbleBoss["Earthcaller Halmgar"];
		[1] = { itemID = 6688, droprate = "43.75%" }; --Whisperwind Headdress
		[2] = { itemID = 6689, droprate = "42.66%" }; --Wind Spirit Staff
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2264, droprate = "0.02%" }; --Mantle of Thieves
		[2] = { itemID = 1978, droprate = "0.02%" }; --Wolfclaw Gloves
		[3] = { itemID = 1488, droprate = "0.01%" }; --Avenger's Armor
		[4] = { itemID = 4438, droprate = "0.01%" }; --Pugilist Bracers
		[5] = { itemID = 2039, droprate = "0.02%" }; --Plains Ring
		[6] = { itemID = 776, droprate = "0.01%" }; --Vendetta
		[7] = { itemID = 1727, droprate = "0.02%" }; --Sword of Decay
		[8] = { itemID = 1975, droprate = "0.02%" }; --Pysan's Old Greatsword
		[9] = { itemID = 1976, droprate = "0.02%" }; --Slaghammer
		[10] = { itemID = 2549, droprate = "0.02%" }; --Staff of the Shade
	};
};
-------------------------
--- Scarlet Monastery ---
-------------------------

AtlasLoot_Data["Scarlet Monastery"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Scarlet Monastery"];
	Type = "ClassicDungeon";
	Map = "ScarletMonastery";
	{
		Name = "Armory";
		[1] = { itemID = 7719, droprate = "30.62%" }; --Raging Berserker's Helm
		[2] = { itemID = 7718, droprate = "30.82%" }; --Herod's Shoulder
		[3] = { itemID = 10330, droprate = "12.75%" }; --Scarlet Leggings
		[4] = { itemID = 7717, droprate = "12.86%" }; --Ravager
		[6] = { icon = "INV_Box_01", "=q6=#n43#" };
		[7] = { itemID = 23192, droprate = "0.4%" }; --Tabard of the Scarlet Crusade
	};
	{
		Name = BabbleZone["Cathedral"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Fairbanks"] };
		[2] = { itemID = 19507, droprate = "15.94%" }; --Inquisitor's Shawl
		[3] = { itemID = 19508, droprate = "16.17%" }; --Branded Leather Bracers
		[4] = { itemID = 19509, droprate = "17.24%" }; --Dusty Mail Boots
		[6] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Scarlet Commander Mograine"] };
		[7] = { itemID = 7724, droprate = "17.49%" }; --Gauntlets of Divinity
		[8] = { itemID = 10330, droprate = "12.95%" }; --Scarlet Leggings
		[9] = { itemID = 7723, droprate = "17.13%" }; --Mograine's Might
		[10] = { itemID = 7726, droprate = "38.37%" }; --Aegis of the Scarlet Commander
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["High Inquisitor Whitemane"] };
		[17] = { itemID = 7720, droprate = "34.01%" }; --Whitemane's Chapeau
		[18] = { itemID = 7722, droprate = "33.23%" }; --Triune Amulet
		[19] = { itemID = 7721, droprate = "18.32%" }; --Hand of Righteousness
		[20] = { itemID = 20976, droprate = "100%" }; --Design: Citrine Pendant of Golden Healing
	};
	{
		Name = BabbleZone["Graveyard"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Interrogator Vishas"] };
		[2] = { itemID = 7683, droprate = "66.1%" }; --Bloody Brass Knuckles
		[3] = { itemID = 7682, droprate = "5.56%" }; --Torturing Poker
		[5] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Bloodmage Thalnos"] };
		[6] = { itemID = 7684, droprate = "48.46%" }; --Bloodmage Mantle
		[7] = { itemID = 7685, droprate = "47.07%" }; --Orb of the Forgotten Seer
		[9] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Ironspine"] };
		[10] = { itemID = 7688, droprate = "32.91%" }; --Ironspine's Ribcage
		[11] = { itemID = 7686, droprate = "40.08%" }; --Ironspine's Eye
		[12] = { itemID = 7687, droprate = "20.34%" }; --Ironspine's Fist
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Azshir the Sleepless"] };
		[17] = { itemID = 7709, droprate = "31.19%" }; --Blighted Leggings
		[18] = { itemID = 7731, droprate = "32.71%" }; --Ghostshard Talisman
		[19] = { itemID = 7708, droprate = "30.72%" }; --Necrotic Wand
		[21] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Fallen Champion"] };
		[22] = { itemID = 7691, droprate = "38.58%" }; --Embalmed Shroud
		[23] = { itemID = 7690, droprate = "37.83%" }; --Ebon Vise
		[24] = { itemID = 7689, droprate = "19.15%" }; --Morbid Dawn
	};
	{
		Name = BabbleZone["Library"];
		[1] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Houndmaster Loksey"] };
		[2] = { itemID = 7756, droprate = "53.66%" }; --Dog Training Gloves
		[3] = { itemID = 7710, droprate = "13.96%" }; --Loksey's Training Stick
		[4] = { itemID = 3456, droprate = "21.33%" }; --Dog Whistle
		[16] = { icon = "INV_Box_01", "=q6=" .. BabbleBoss["Arcanist Doan"] };
		[17] = { itemID = 34227 }; --Deadman's Hand
		[18] = { itemID = 7712, droprate = "41.96%" }; --Mantle of Doan
		[19] = { itemID = 7711, droprate = "42.86%" }; --Robe of Doan
		[20] = { itemID = 7714, droprate = "39.91%" }; --Hypnotic Blade
		[21] = { itemID = 7713, droprate = "38.44%" }; --Illusionary Rod
		[23] = { icon = "INV_Box_01", "=q6=#x1#" };
		[24] = { itemID = 7146 }; --The Scarlet Key
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 7728, droprate = "0.01%" }; --Beguiler Robes
		[2] = { itemID = 7755, droprate = "0.00%" }; --Flintrock Shoulders
		[3] = { itemID = 7727, droprate = "0.01%" }; --Watchman Pauldrons
		[4] = { itemID = 7760, droprate = "0.00%" }; --Warchief Kilt
		[5] = { itemID = 7754, droprate = "0.01%" }; --Harbinger Boots
		[6] = { itemID = 5819, droprate = "0.01%" }; --Sunblaze Coif
		[7] = { itemID = 7759, droprate = "0.00%" }; --Archon Chestpiece
		[8] = { itemID = 10328, droprate = "0.3%" }; --Scarlet Chestpiece
		[9] = { itemID = 10332, droprate = "0.1%" }; --Scarlet Boots
		[10] = { itemID = 2262, droprate = "0.01%" }; --Mark of Kern
		[11] = { itemID = 1992, droprate = "0.00%" }; --Swampchill Fetish
		[13] = { itemID = 10333, droprate = "1.6%" }; --Scarlet Wristguards
		[14] = { itemID = 10331, droprate = "1.7%" }; --Scarlet Gauntlets
		[15] = { itemID = 10329, droprate = "1.6%" }; --Scarlet Belt
		[16] = { itemID = 5756, droprate = "0.01%" }; --Sliverblade
		[17] = { itemID = 8225, droprate = "0.01%" }; --Tainted Pierce
		[18] = { itemID = 8226, droprate = "0.01%" }; --The Butcher
		[19] = { itemID = 7786, droprate = "0.01%" }; --Headsplitter
		[20] = { itemID = 7761, droprate = "0.01%" }; --Steelclaw Reaver
		[21] = { itemID = 7753, droprate = "0.01%" }; --Bloodspiller
		[22] = { itemID = 7752, droprate = "0.01%" }; --Dreamslayer
		[23] = { itemID = 7736, droprate = "0.00%" }; --Fight Club
		[24] = { itemID = 7730, droprate = "0.01%" }; --Cobalt Crusher
		[25] = { itemID = 7758, droprate = "0.00%" }; --Ruthless Shiv
		[26] = { itemID = 7757, droprate = "0.01%" }; --Windweaver Staff
		[27] = { itemID = 7787, droprate = "0.01%" }; --Resplendent Guardian
		[28] = { itemID = 7729, droprate = "0.01%" }; --Chesterfall Musket
	};
};
-------------------
--- Scholomance ---
-------------------

AtlasLoot_Data["Scholomance"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Scholomance"];
	Type = "ClassicDungeonExt";
	Loadfirst = 3;
	Map = "Scholomance";
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 13873 }; --Viewing Room Key
		[3] = { itemID = 13471 }; --The Deed to Brill
		[4] = { itemID = 13448 }; --The Deed to Caer Darrow
		[5] = { itemID = 13450 }; --The Deed to Southshore
		[6] = { itemID = 13451 }; --The Deed to Tarren Mill
	};
	{
		Name = BabbleBoss["Blood Steward of Kirtonos"];
		[1] = { itemID = 13523, droprate = "100%" }; --Blood of Innocents
	};
	{
		Name = BabbleBoss["Kirtonos the Herald"];
		[1] = { itemID = 13956, droprate = "15.31%" }; --Clutch of Andros
		[2] = { itemID = 13957, droprate = "14.40%" }; --Gargoyle Slashers
		[3] = { itemID = 13969, droprate = "16.25%" }; --Loomguard Armbraces
		[4] = { itemID = 13967, droprate = "14.87%" }; --Windreaver Greaves
		[5] = { itemID = 13955, droprate = "14.73%" }; --Stoneform Shoulders
		[6] = { itemID = 13960, droprate = "16.36%" }; --Heart of the Fiend
		[7] = { itemID = 14024, droprate = "15.55%" }; --Frightalon
		[8] = { itemID = 13983, droprate = "12.78%" }; --Gravestone War Axe
		[16] = { itemID = 16734, droprate = "11.12%" }; --Boots of Valor
	};
	{
		Name = BabbleBoss["Jandice Barov"];
		[1] = { itemID = 18689, droprate = "7.52%" }; --Phantasmal Cloak
		[2] = { itemID = 14543, droprate = "0.26%" }; --Darkshade Gloves
		[3] = { itemID = 14545, droprate = "8.81%" }; --Ghostloom Leggings
		[4] = { itemID = 14548, droprate = "10.06%" }; --Royal Cap Spaulders
		[5] = { itemID = 18690, droprate = "8.59%" }; --Wraithplate Leggings
		[6] = { itemID = 14541, droprate = "8.27%" }; --Barovian Family Sword
		[7] = { itemID = 22394, droprate = "8.67%" }; --Staff of Metanoia
		[9] = { itemID = 13725, droprate = "100%" }; --Krastinov's Bag of Horrors
		[10] = { itemID = 13523, droprate = "17.8%" }; --Blood of Innocents
		[16] = { itemID = 16701, droprate = "12.20%" }; --Dreadmist Mantle
	};
	{
		Name = BabbleBoss["Rattlegore"];
		[1] = { itemID = 14538, droprate = "11.32%" }; --Deadwalker Mantle
		[2] = { itemID = 14539, droprate = "10.89%" }; --Bone Ring Helm
		[3] = { itemID = 18686, droprate = "9.04%" }; --Bone Golem Shoulders
		[4] = { itemID = 14537, droprate = "10.22%" }; --Corpselight Greaves
		[5] = { itemID = 14531, droprate = "9.55%" }; --Frightskull Shaft
		[6] = { itemID = 14528, droprate = "9.16%" }; --Rattlecage Buckler
		[8] = { itemID = 13873, droprate = "100%" }; --Viewing Room Key
		[16] = { itemID = 16711, droprate = "14.32%" }; --Shadowcraft Boots
		[18] = { itemID = 18782, droprate = "5.71%" }; --Top Half of Advanced Armorsmithing: Volume II
		[19] = { itemID = 12726 }; --Plans: Enchanted Thorium Leggings
	};
	{
		Name = BabbleBoss["Death Knight Darkreaver"];
		[1] = { itemID = 18760, droprate = "24.75%" }; --Necromantic Band
		[2] = { itemID = 18758, droprate = "15.72%" }; --Specter's Blade
		[3] = { itemID = 18759, droprate = "24.75%" }; --Malicious Axe
		[4] = { itemID = 18761, droprate = "17.17%" }; --Oblivion's Touch
		[6] = { itemID = 18749, droprate = "10.93%" }; --Charger's Lost Soul
	};
	{
		Name = BabbleBoss["Vectus"];
		[1] = { itemID = 14577, droprate = "5.24%" }; --Skullsmoke Pants
		[2] = { itemID = 18691, droprate = "6.16%" }; --Dark Advisor's Pendant
	};
	{
		Name = BabbleBoss["Marduk Blackpool"];
		[1] = { itemID = 18692, droprate = "6.29%" }; --Death Knight Sabatons
		[2] = { itemID = 14576, droprate = "6.55%" }; --Ebon Hilt of Marduk
	};
	{
		Name = BabbleBoss["Ras Frostwhisper"];
		[1] = { itemID = 13314, droprate = "1.07%" }; --Alanna's Embrace
		[3] = { itemID = 14340, droprate = "12.55%" }; --Freezing Lich Robes
		[4] = { itemID = 18693, droprate = "12.38%" }; --Shivery Handwraps
		[5] = { itemID = 14503, droprate = "11.73%" }; --Death's Clutch
		[6] = { itemID = 14502, droprate = "11.20%" }; --Frostbite Girdle
		[7] = { itemID = 18694, droprate = "14.63%" }; --Shadowy Mail Greaves
		[8] = { itemID = 14522, droprate = "13.01%" }; --Maelstrom Leggings
		[9] = { itemID = 14525, droprate = "11.45%" }; --Boneclenched Gauntlets
		[10] = { itemID = 18695, droprate = "10.86%" }; --Spellbound Tome
		[11] = { itemID = 13952, droprate = "9.74%" }; --Iceblade Hacker
		[12] = { itemID = 14487, droprate = "11.92%" }; --Bonechill Hammer
		[13] = { itemID = 18696, droprate = "13.04%" }; --Intricately Runed Shield
		[16] = { itemID = 16689, droprate = "11.93%" }; --Magister's Mantle
		[18] = { itemID = 13521, droprate = "2.92%" }; --Recipe: Flask of Supreme Power
		[20] = { itemID = 13626, droprate = "100%" }; --Human Head of Ras Frostwhisper
		[21] = { itemID = 13986 }; --Crown of Caer Darrow
		[22] = { itemID = 13984 }; --Darrowspike
		[23] = { itemID = 13982 }; --Warblade of Caer Darrow
		[24] = { itemID = 14002 }; --Darrowshire Strongguard
		[26] = { icon = "INV_Box_01", "=q6=#x12#" };
		[27] = { itemID = 12736 }; --Frostwhisper's Embalming Fluid
	};
	{
		Name = BabbleBoss["Kormok"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n22#" };
		[2] = { itemID = 22303, droprate = "23.33%" }; --Ironweave Pants
		[3] = { itemID = 22326, droprate = "16.67%" }; --Amalgam's Band
		[4] = { itemID = 22331, droprate = "15.42%" }; --Band of the Steadfast Hero
		[5] = { itemID = 22332, droprate = "25.42%" }; --Blade of Necromancy
		[6] = { itemID = 22333, droprate = "12.50%" }; --Hammer of Divine Might
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Instructor Malicia"];
		[1] = { itemID = 16710, droprate = "3.51%" }; --Shadowcraft Bracers
		[3] = { itemID = 18681, droprate = "1.81%" }; --Burial Shawl
		[4] = { itemID = 14633, droprate = "1.12%" }; --Necropile Mantle
		[5] = { itemID = 14626, droprate = "1.27%" }; --Necropile Robe
		[6] = { itemID = 14629, droprate = "1.03%" }; --Necropile Cuffs
		[7] = { itemID = 14631, droprate = "0.88%" }; --Necropile Boots
		[8] = { itemID = 14632, droprate = "0.85%" }; --Necropile Leggings
		[9] = { itemID = 14637, droprate = "1.51%" }; --Cadaverous Armor
		[10] = { itemID = 14640, droprate = "0.82%" }; --Cadaverous Gloves
		[11] = { itemID = 14636, droprate = "0.60%" }; --Cadaverous Belt
		[12] = { itemID = 14638, droprate = "1.09%" }; --Cadaverous Leggings
		[13] = { itemID = 18682, droprate = "1.00%" }; --Ghoul Skin Leggings
		[14] = { itemID = 14641, droprate = "0.67%" }; --Cadaverous Walkers
		[15] = { itemID = 14611, droprate = "0.54%" }; --Bloodmail Hauberk
		[16] = { itemID = 14615, droprate = "0.09%" }; --Bloodmail Gauntlets
		[17] = { itemID = 14614, droprate = "0.60%" }; --Bloodmail Belt
		[18] = { itemID = 14612, droprate = "0.42%" }; --Bloodmail Legguards
		[19] = { itemID = 14616, droprate = "0.36%" }; --Bloodmail Boots
		[20] = { itemID = 14624, droprate = "0.45%" }; --Deathbone Chestplate
		[21] = { itemID = 14622, droprate = "0.45%" }; --Deathbone Gauntlets
		[22] = { itemID = 14620, droprate = "0.67%" }; --Deathbone Girdle
		[23] = { itemID = 14623, droprate = "1.12%" }; --Deathbone Legguards
		[24] = { itemID = 14621, droprate = "0.57%" }; --Deathbone Sabatons
		[25] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[28] = { itemID = 18683, droprate = "1.39%" }; --Hammer of the Vesper
		[29] = { itemID = 18680, droprate = "0.91%" }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Doctor Theolen Krastinov"];
		[1] = { itemID = 16684, droprate = "9.75%" }; --Magister's Gloves
		[3] = { itemID = 18681, droprate = "2.81%" }; --Burial Shawl
		[4] = { itemID = 14633, droprate = "1.91%" }; --Necropile Mantle
		[5] = { itemID = 14626, droprate = "2.37%" }; --Necropile Robe
		[6] = { itemID = 14629, droprate = "1.82%" }; --Necropile Cuffs
		[7] = { itemID = 14631, droprate = "2.42%" }; --Necropile Boots
		[8] = { itemID = 14632, droprate = "2.16%" }; --Necropile Leggings
		[9] = { itemID = 18682, droprate = "3.14%" }; --Ghoul Skin Leggings
		[10] = { itemID = 14637, droprate = "2.08%" }; --Cadaverous Armor
		[11] = { itemID = 14638, droprate = "1.93%" }; --Cadaverous Leggings
		[12] = { itemID = 14640, droprate = "1.43%" }; --Cadaverous Gloves
		[13] = { itemID = 14636, droprate = "1.82%" }; --Cadaverous Belt
		[14] = { itemID = 14641, droprate = "1.91%" }; --Cadaverous Walkers
		[15] = { itemID = 14612, droprate = "0.87%" }; --Bloodmail Legguards
		[16] = { itemID = 14616, droprate = "0.53%" }; --Bloodmail Boots
		[17] = { itemID = 14615, droprate = "0.78%" }; --Bloodmail Gauntlets
		[18] = { itemID = 14614, droprate = "0.42%" }; --Bloodmail Belt
		[19] = { itemID = 14611, droprate = "0.79%" }; --Bloodmail Hauberk
		[20] = { itemID = 14621, droprate = "1.61%" }; --Deathbone Sabatons
		[21] = { itemID = 14620, droprate = "1.32%" }; --Deathbone Girdle
		[22] = { itemID = 14622, droprate = "1.52%" }; --Deathbone Gauntlets
		[23] = { itemID = 14624, droprate = "1.64%" }; --Deathbone Chestplate
		[24] = { itemID = 14623, droprate = "1.75%" }; --Deathbone Legguards
		[25] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[28] = { itemID = 18683, droprate = "2.54%" }; --Hammer of the Vesper
		[29] = { itemID = 18680, droprate = "3.21%" }; --Ancient Bone Bow
		[30] = { itemID = 13523, droprate = "25.7%" }; --Blood of Innocents
	};
	{
		Name = BabbleBoss["Lorekeeper Polkelt"];
		[1] = { itemID = 16705, droprate = "14.54%" }; --Dreadmist Wraps
		[3] = { itemID = 18681, droprate = "0.53%" }; --Burial Shawl
		[4] = { itemID = 14633, droprate = "0.67%" }; --Necropile Mantle
		[5] = { itemID = 14626, droprate = "0.55%" }; --Necropile Robe
		[6] = { itemID = 14629, droprate = "0.47%" }; --Necropile Cuffs
		[7] = { itemID = 14631, droprate = "0.57%" }; --Necropile Boots
		[8] = { itemID = 14632, droprate = "0.89%" }; --Necropile Leggings
		[9] = { itemID = 18682, droprate = "0.57%" }; --Ghoul Skin Leggings
		[10] = { itemID = 14637, droprate = "0.65%" }; --Cadaverous Armor
		[11] = { itemID = 14638, droprate = "0.79%" }; --Cadaverous Leggings
		[12] = { itemID = 14640, droprate = "0.83%" }; --Cadaverous Gloves
		[13] = { itemID = 14636, droprate = "0.63%" }; --Cadaverous Belt
		[14] = { itemID = 14641, droprate = "0.47%" }; --Cadaverous Walkers
		[15] = { itemID = 14612, droprate = "0.26%" }; --Bloodmail Legguards
		[16] = { itemID = 14616, droprate = "0.14%" }; --Bloodmail Boots
		[17] = { itemID = 14615, droprate = "0.45%" }; --Bloodmail Gauntlets
		[18] = { itemID = 14614, droprate = "0.18%" }; --Bloodmail Belt
		[19] = { itemID = 14611, droprate = "0.30%" }; --Bloodmail Hauberk
		[20] = { itemID = 14621, droprate = "0.49%" }; --Deathbone Sabatons
		[21] = { itemID = 14620, droprate = "0.32%" }; --Deathbone Girdle
		[22] = { itemID = 14622, droprate = "0.30%" }; --Deathbone Gauntlets
		[23] = { itemID = 14624, droprate = "0.30%" }; --Deathbone Chestplate
		[24] = { itemID = 14623, droprate = "0.41%" }; --Deathbone Legguards
		[25] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[28] = { itemID = 18683, droprate = "0.67%" }; --Hammer of the Vesper
		[29] = { itemID = 18680, droprate = "0.49%" }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["The Ravenian"];
		[1] = { itemID = 16716, droprate = "2.60%" }; --Wildheart Belt
		[3] = { itemID = 18681, droprate = "1.32%" }; --Burial Shawl
		[4] = { itemID = 14633, droprate = "0.76%" }; --Necropile Mantle
		[5] = { itemID = 14626, droprate = "1.04%" }; --Necropile Robe
		[6] = { itemID = 14629, droprate = "0.89%" }; --Necropile Cuffs
		[7] = { itemID = 14631, droprate = "1.32%" }; --Necropile Boots
		[8] = { itemID = 14632, droprate = "1.41%" }; --Necropile Leggings
		[9] = { itemID = 18682, droprate = "0.95%" }; --Ghoul Skin Leggings
		[10] = { itemID = 14637, droprate = "1.52%" }; --Cadaverous Armor
		[11] = { itemID = 14638, droprate = "0.82%" }; --Cadaverous Leggings
		[12] = { itemID = 14640, droprate = "1.02%" }; --Cadaverous Gloves
		[13] = { itemID = 14636, droprate = "0.95%" }; --Cadaverous Belt
		[14] = { itemID = 14641, droprate = "0.93%" }; --Cadaverous Walkers
		[15] = { itemID = 14612, droprate = "0.20%" }; --Bloodmail Legguards
		[16] = { itemID = 14616, droprate = "0.33%" }; --Bloodmail Boots
		[17] = { itemID = 14615, droprate = "0.11%" }; --Bloodmail Gauntlets
		[18] = { itemID = 14614, droprate = "0.09%" }; --Bloodmail Belt
		[19] = { itemID = 14611, droprate = "0.04%" }; --Bloodmail Hauberk
		[20] = { itemID = 14621, droprate = "1.06%" }; --Deathbone Sabatons
		[21] = { itemID = 14620, droprate = "0.91%" }; --Deathbone Girdle
		[22] = { itemID = 14622, droprate = "0.69%" }; --Deathbone Gauntlets
		[23] = { itemID = 14624, droprate = "1.15%" }; --Deathbone Chestplate
		[24] = { itemID = 14623, droprate = "0.89%" }; --Deathbone Legguards
		[25] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[28] = { itemID = 18683, droprate = "1.52%" }; --Hammer of the Vesper
		[29] = { itemID = 18680, droprate = "1.74%" }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Lord Alexei Barov"];
		[1] = { itemID = 16722, droprate = "3.37%" }; --Lightforge Bracers
		[3] = { itemID = 18681, droprate = "4.94%" }; --Burial Shawl
		[4] = { itemID = 14633, droprate = "3.39%" }; --Necropile Mantle
		[5] = { itemID = 14626, droprate = "5.30%" }; --Necropile Robe
		[6] = { itemID = 14629, droprate = "4.05%" }; --Necropile Cuffs
		[7] = { itemID = 14631, droprate = "2.86%" }; --Necropile Boots
		[8] = { itemID = 14632, droprate = "2.38%" }; --Necropile Leggings
		[9] = { itemID = 18682, droprate = "4.79%" }; --Ghoul Skin Leggings
		[10] = { itemID = 14637, droprate = "4.55%" }; --Cadaverous Armor
		[11] = { itemID = 14638, droprate = "2.08%" }; --Cadaverous Leggings
		[12] = { itemID = 14640, droprate = "2.35%" }; --Cadaverous Gloves
		[13] = { itemID = 14636, droprate = "2.83%" }; --Cadaverous Belt
		[14] = { itemID = 14641, droprate = "2.38%" }; --Cadaverous Walkers
		[15] = { itemID = 14612, droprate = "1.01%" }; --Bloodmail Legguards
		[16] = { itemID = 14616, droprate = "0.83%" }; --Bloodmail Boots
		[17] = { itemID = 14615, droprate = "0.62%" }; --Bloodmail Gauntlets
		[18] = { itemID = 14614, droprate = "1.13%" }; --Bloodmail Belt
		[19] = { itemID = 14611, droprate = "1.43%" }; --Bloodmail Hauberk
		[20] = { itemID = 14621, droprate = "1.49%" }; --Deathbone Sabatons
		[21] = { itemID = 14620, droprate = "1.73%" }; --Deathbone Girdle
		[22] = { itemID = 14622, droprate = "1.61%" }; --Deathbone Gauntlets
		[23] = { itemID = 14624, droprate = "2.65%" }; --Deathbone Chestplate
		[24] = { itemID = 14623, droprate = "2.20%" }; --Deathbone Legguards
		[25] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[28] = { itemID = 18683, droprate = "4.67%" }; --Hammer of the Vesper
		[29] = { itemID = 18680, droprate = "4.70%" }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Lady Illucia Barov"];
		[1] = { itemID = 18681, droprate = "1.20%" }; --Burial Shawl
		[2] = { itemID = 14633, droprate = "1.07%" }; --Necropile Mantle
		[3] = { itemID = 14626, droprate = "1.30%" }; --Necropile Robe
		[4] = { itemID = 14629, droprate = "1.17%" }; --Necropile Cuffs
		[5] = { itemID = 14631, droprate = "0.94%" }; --Necropile Boots
		[6] = { itemID = 14632, droprate = "0.78%" }; --Necropile Leggings
		[7] = { itemID = 18682, droprate = "1.61%" }; --Ghoul Skin Leggings
		[8] = { itemID = 14637, droprate = "0.94%" }; --Cadaverous Armor
		[9] = { itemID = 14638, droprate = "1.15%" }; --Cadaverous Leggings
		[10] = { itemID = 14640, droprate = "1.12%" }; --Cadaverous Gloves
		[11] = { itemID = 14636, droprate = "0.94%" }; --Cadaverous Belt
		[12] = { itemID = 14641, droprate = "0.70%" }; --Cadaverous Walkers
		[13] = { itemID = 14612, droprate = "0.44%" }; --Bloodmail Legguards
		[14] = { itemID = 14616, droprate = "0.34%" }; --Bloodmail Boots
		[15] = { itemID = 14615, droprate = "0.49%" }; --Bloodmail Gauntlets
		[16] = { itemID = 14614, droprate = "0.42%" }; --Bloodmail Belt
		[17] = { itemID = 14611, droprate = "0.44%" }; --Bloodmail Hauberk
		[18] = { itemID = 14621, droprate = "0.75%" }; --Deathbone Sabatons
		[19] = { itemID = 14620, droprate = "0.70%" }; --Deathbone Girdle
		[20] = { itemID = 14622, droprate = "0.60%" }; --Deathbone Gauntlets
		[21] = { itemID = 14624, droprate = "0.81%" }; --Deathbone Chestplate
		[22] = { itemID = 14623, droprate = "0.83%" }; --Deathbone Legguards
		[23] = { itemID = 18684, droprate = "0.85%" }; --Dimly Opalescent Ring
		[24] = { itemID = 23201 }; --Libram of Divinity
		[25] = { itemID = 23200, droprate = "3.5%" }; --Totem of Sustaining
		[26] = { itemID = 18683, droprate = "1.35%" }; --Hammer of the Vesper
		[27] = { itemID = 18680, droprate = "1.17%" }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Darkmaster Gandling"];
		[1] = { itemID = 13937, droprate = "1.11%" }; --Headmaster's Charge
		[2] = { itemID = 14514, droprate = "6.71%" }; --Pattern: Robe of the Void
		[3] = { itemID = 14153 }; --Robe of the Void
		[4] = { itemID = 13944, droprate = "8.96%" }; --Tombstone Breastplate
		[5] = { itemID = 13398, droprate = "10.75%" }; --Boots of the Shrieker
		[7] = { itemID = 13950, droprate = "0.24%" }; --Detention Strap
		[8] = { itemID = 13951, droprate = "10.38%" }; --Vigorsteel Vambraces
		[9] = { itemID = 22433, droprate = "7.72%" }; --Don Mauricio's Band of Domination
		[10] = { itemID = 13964, droprate = "9.82%" }; --Witchblade
		[11] = { itemID = 13953, droprate = "9.68%" }; --Silent Fang
		[12] = { itemID = 13938 }; --Bonecreeper Stylus
		[16] = { itemID = 16698, droprate = "8.78%" }; --Dreadmist Mask
		[17] = { itemID = 16686, droprate = "8.60%" }; --Magister's Crown
		[18] = { itemID = 16693, droprate = "7.89%" }; --Devout Crown
		[19] = { itemID = 16707, droprate = "6.65%" }; --Shadowcraft Cap
		[20] = { itemID = 16720, droprate = "7.09%" }; --Wildheart Cowl
		[21] = { itemID = 16677, droprate = "7.00%" }; --Beaststalker's Cap
		[22] = { itemID = 16667, droprate = "2.86%" }; --Coif of Elements
		[23] = { itemID = 16731, droprate = "6.54%" }; --Helm of Valor
		[24] = { itemID = 16727, droprate = "5.32%" }; --Lightforge Helm
		[26] = { itemID = 19276, droprate = "2.20%" }; --Ace of Portals
		[28] = { itemID = 13501, droprate = "8.64%" }; --Recipe: Major Mana Potion
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18697, droprate = "0.01%" }; --Coldstone Slippers
		[2] = { itemID = 18698, droprate = "0.01%" }; --Tattered Leather Hood
		[3] = { itemID = 18699, droprate = "0.01%" }; --Icy Tomb Spaulders
		[4] = { itemID = 18700, droprate = "0.01%" }; --Malefic Bracers
		[5] = { itemID = 14536, droprate = "0.01%" }; --Bonebrace Hauberk
		[6] = { itemID = 18702, droprate = "0.01%" }; --Belt of the Ordained
		[7] = { itemID = 18701, droprate = "0.01%" }; --Innervating Band
		[9] = { itemID = 16254, droprate = "0.93%" }; --Formula: Enchant Weapon - Lifestealing
		[10] = { itemID = 16255, droprate = "0.88%" }; --Formula: Enchant 2H Weapon - Major Spirit
		[11] = { itemID = 15773, droprate = "3.03%" }; --Pattern: Wicked Leather Armor
		[12] = { itemID = 15776, droprate = "1.62%" }; --Pattern: Runic Leather Armor
		[14] = { itemID = 12753 }; --Skin of Shadow
		[15] = { itemID = 13920 }; --Healthy Dragon Scale
		[16] = { itemID = 16705, droprate = "0.03%" }; --Dreadmist Wraps
		[17] = { itemID = 16684, droprate = "1.27%" }; --Magister's Gloves
		[18] = { itemID = 16685, droprate = "0.22%" }; --Magister's Belt
		[19] = { itemID = 16710, droprate = "1.53%" }; --Shadowcraft Bracers
		[20] = { itemID = 16716, droprate = "1.84%" }; --Wildheart Belt
		[21] = { itemID = 16722, droprate = "2.72%" }; --Lightforge Bracers
	};
};
-----------------------
--- Shadowfang Keep ---
-----------------------

AtlasLoot_Data["ShadowfangKeep"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Shadowfang Keep"];
	Type = "ClassicDungeon";
	Map = "ShadowfangKeep";
	{
		Name = BabbleBoss["Deathsworn Captain"];
		[1] = { itemID = 6642, droprate = "30.49%" }; --Phantom Armor
		[2] = { itemID = 6641, droprate = "58.60%" }; --Haunting Blade
	};
	{
		Name = AL["Rethilgore"];
		[1] = { itemID = 5254, droprate = "84.73%" }; --Rugged Spaulders
	};
	{
		Name = AL["Felsteed"];
		[1] = { itemID = 6341, droprate = "5.48%" }; --Eerie Stable Lantern
		[2] = { itemID = 932, droprate = "16.46%" }; --Fel Steed Saddlebags
	};
	{
		Name = BabbleBoss["Razorclaw the Butcher"];
		[1] = { itemID = 6226, droprate = "39.47%" }; --Bloody Apron
		[2] = { itemID = 6633, droprate = "39.53%" }; --Butcher's Slicer
		[3] = { itemID = 1292, droprate = "8.70%" }; --Butcher's Cleaver
	};
	{
		Name = BabbleBoss["Baron Silverlaine"];
		[1] = { itemID = 6321, droprate = "18.91%" }; --Silverlaine's Family Seal
		[2] = { itemID = 6323, droprate = "37.93%" }; --Baron's Scepter
	};
	{
		Name = BabbleBoss["Commander Springvale"];
		[1] = { itemID = 3191, droprate = "31.73%" }; --Arced War Axe
		[2] = { itemID = 6320, droprate = "27.71%" }; --Commander's Crest
	};
	{
		Name = BabbleBoss["Odo the Blindwatcher"];
		[1] = { itemID = 6319, droprate = "57.15%" }; --Girdle of the Blindwatcher
		[2] = { itemID = 6318, droprate = "29.97%" }; --Odo's Ley Staff
	};
	{
		Name = BabbleBoss["Fenrus the Devourer"];
		[1] = { itemID = 6340, droprate = "58.02%" }; --Fenrus' Hide
		[2] = { itemID = 3230, droprate = "14.76%" }; --Black Wolf Bracers
	};
	{
		Name = BabbleBoss["Arugal's Voidwalker"];
		[1] = { itemID = 5943, droprate = "3%" }; --Rift Bracers
	};
	{
		Name = BabbleBoss["Wolf Master Nandos"];
		[1] = { itemID = 6314, droprate = "33.25%" }; --Wolfmaster Cape
		[2] = { itemID = 3748, droprate = "48.55%" }; --Feline Mantle
	};
	{
		Name = BabbleBoss["Archmage Arugal"];
		[1] = { itemID = 6324, droprate = "30.50%" }; --Robes of Arugal
		[2] = { itemID = 6392, droprate = "30.51%" }; --Belt of Arugal
		[3] = { itemID = 6220, droprate = "15.78%" }; --Meteor Shard
		[4] = { itemID = 24224 }; --Crate of Bloodforged Ingots
		[5] = { itemID = 6895 }; --Jordan's Smithing Hammer
		[6] = { itemID = 6283 }; --The Book of Ur
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2292, droprate = "0.01%" }; --Necrology Robes
		[2] = { itemID = 1974, droprate = "0.02%" }; --Mindthrust Bracers
		[3] = { itemID = 1489, droprate = "0.01%" }; --Gloomshroud Armor
		[4] = { itemID = 1935, droprate = "0.01%" }; --Assassin's Blade
		[5] = { itemID = 1482, droprate = "0.01%" }; --Shadowfang
		[6] = { itemID = 2205, droprate = "0.01%" }; --Duskbringer
		[7] = { itemID = 2807, droprate = "0.01%" }; --Guillotine Axe
		[8] = { itemID = 1318, droprate = "0.01%" }; --Night Reaver
		[9] = { itemID = 1483, droprate = "0.02%" }; --Face Smasher
		[10] = { itemID = 3194, droprate = "0.02%" }; --Black Malice
		[11] = { itemID = 1484, droprate = "0.01%" }; --Witching Stave
	};
};

------------------
--- Stratholme ---
------------------

AtlasLoot_Data["Stratholme"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Stratholme"];
	Type = "ClassicDungeonExt";
	Map = "Stratholme";
	{
		Name = BabbleBoss["Skul"];
		[1] = { itemID = 13395, droprate = "36.52%" }; --Skul's Fingerbone Claws
		[2] = { itemID = 13394, droprate = "24.16%" }; --Skul's Cold Embrace
		[3] = { itemID = 13396, droprate = "16.85%" }; --Skul's Ghastly Touch
	};
	{
		Name = "Mailbox Keys";
		[1] = { itemID = 13304, droprate = "45.19%" }; --Festival Lane Postbox Key
		[2] = { itemID = 13303, droprate = "43.46%" }; --Crusaders' Square Postbox Key
		[3] = { itemID = 13307, droprate = "42.88%" }; --Fras Siabi's Postbox Key
		[4] = { itemID = 13305, droprate = "36.87%" }; --Elders' Square Postbox Key
		[5] = { itemID = 13302, droprate = "35.58%" }; --Market Row Postbox Key
		[6] = { itemID = 13306, droprate = "37.69%" }; --King's Square Postbox Key
	};
	{
		Name = BabbleBoss["Fras Siabi"];
		[1] = { itemID = 13172, droprate = "100%" }; --Siabi's Premium Tobacco
		[2] = { itemID = 13171 }; --Smokey's Lighter
	};
	{
		Name = "Atiesh <Hand of Sargeras>";
		[1] = { itemID = 22736, droprate = "100%" }; --Andonisus, Reaper of Souls
	};
	{
		Name = BabbleBoss["Hearthsinger Forresten"];
		[1] = { itemID = 13378, droprate = "15.31%" }; --Songbird Blouse
		[2] = { itemID = 13383 }; --Woollies of the Prancing Minstrel
		[3] = { itemID = 13384, droprate = "19.21%" }; --Rainbow Girdle
		[4] = { itemID = 13379, droprate = "15.13%" }; --Piccolo of the Flaming Fire
		[16] = { itemID = 16682, droprate = "10.86%" }; --Magister's Boots
	};
	{
		Name = BabbleBoss["The Unforgiven"];
		[1] = { itemID = 13409, droprate = "14.62%" }; --Tearfall Bracers
		[2] = { itemID = 13404, droprate = "14.96%" }; --Mask of the Unforgiven
		[3] = { itemID = 13405, droprate = "12.10%" }; --Wailing Nightbane Pauldrons
		[4] = { itemID = 13408, droprate = "19.33%" }; --Soul Breaker
		[16] = { itemID = 16717, droprate = "12.61%" }; --Wildheart Gloves
	};
	{
		Name = BabbleBoss["Timmy the Cruel"];
		[1] = { itemID = 13403, droprate = "16.48%" }; --Grimgore Noose
		[2] = { itemID = 13402, droprate = "16.74%" }; --Timmy's Galoshes
		[3] = { itemID = 13400, droprate = "14.02%" }; --Vambraces of the Sadist
		[4] = { itemID = 13401, droprate = "16.87%" }; --The Cruel Hand of Timmy
		[16] = { itemID = 16724, droprate = "10.42%" }; --Lightforge Gauntlets
	};
	{
		Name = AL["Malor's Strongbox"];
		[1] = { icon = "INV_Box_01", "=q6=#x13#" };
		[2] = { itemID = 12845, droprate = "100%" }; --Medallion of Faith
	};
	{
		Name = BabbleBoss["Crimson Hammersmith"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 18781, droprate = "41.6%" }; --Bottom Half of Advanced Armorsmithing: Volume II
		[2] = { itemID = 12726 }; --Plans: Enchanted Thorium Leggings
		[4] = { itemID = 13351, droprate = "100%" }; --Crimson Hammersmith's Apron
		[5] = { itemID = 12824 }; --Plans: Enchanted Battlehammer
	};
	{
		Name = "Plans: Serenity";
		[1] = { itemID = 12827, droprate = "100%" }; --Plans: Serenity
	};
	{
		Name = BabbleBoss["Cannon Master Willey"];
		[1] = { itemID = 22405, droprate = "16.03%" }; --Mantle of the Scarlet Crusade
		[2] = { itemID = 22407, droprate = "13.61%" }; --Helm of the New Moon
		[3] = { itemID = 18721, droprate = "12.39%" }; --Barrage Girdle
		[4] = { itemID = 13381, droprate = "12.86%" }; --Master Cannoneer Boots
		[5] = { itemID = 22403, droprate = "14.27%" }; --Diana's Pearl Necklace
		[6] = { itemID = 13382, droprate = "12.28%" }; --Cannonball Runner
		[7] = { itemID = 22404, droprate = "6.26%" }; --Willey's Back Scratcher
		[8] = { itemID = 22406, droprate = "7.04%" }; --Redemption
		[9] = { itemID = 13380, droprate = "10.71%" }; --Willey's Portable Howitzer
		[10] = { itemID = 13377, droprate = "66.61%" }; --Miniature Cannon Balls
		[16] = { itemID = 16708, droprate = "10.68%" }; --Shadowcraft Spaulders
		[18] = { itemID = 12839, droprate = "4.98%" }; --Plans: Heartseeker
		[19] = { itemID = 12783 }; --Heartseeker
	};
	{
		Name = BabbleBoss["Archivist Galford"];
		[1] = { itemID = 13386, droprate = "18.45%" }; --Archivist Cape
		[2] = { itemID = 18716, droprate = "16.30%" }; --Ash Covered Boots
		[3] = { itemID = 13387, droprate = "18.24%" }; --Foresight Girdle
		[4] = { itemID = 13385, droprate = "9.87%" }; --Tome of Knowledge
		[5] = { itemID = 22897 }; --Tome of Conjure Food VII
		[7] = { itemID = 12811, droprate = "61.3%" }; --Righteous Orb
		[9] = { icon = "INV_Box_01", "=q6=#x11#" };
		[10] = { itemID = 14679 }; --Of Love and Family
		[16] = { itemID = 16692 }; --Devout Gloves
	};
	{
		Name = BabbleBoss["Balnazzar"];
		[1] = { itemID = 13353, droprate = "1.37%" }; --Book of the Dead
		[2] = { itemID = 14512, droprate = "3.02%" }; --Pattern: Truefaith Vestments
		[3] = { itemID = 14154 }; --Truefaith Vestments
		[5] = { itemID = 18720, droprate = "10.54%" }; --Shroud of the Nathrezim
		[6] = { itemID = 13369, droprate = "14.84%" }; --Fire Striders
		[7] = { itemID = 13358, droprate = "11.58%" }; --Wyrmtongue Shoulders
		[8] = { itemID = 13359, droprate = "13.94%" }; --Crown of Tyranny
		[9] = { itemID = 18718, droprate = "10.16%" }; --Grand Crusader's Helm
		[10] = { itemID = 12103, droprate = "12.48%" }; --Star of Mystaria
		[11] = { itemID = 13360, droprate = "13.66%" }; --Gift of the Elven Magi
		[12] = { itemID = 13348, droprate = "13.94%" }; --Demonshear
		[13] = { itemID = 18717, droprate = "11.91%" }; --Hammer of the Grand Crusader
		[16] = { itemID = 16725, droprate = "11.11%" }; --Lightforge Boots
		[18] = { itemID = 13520, droprate = "1.94%" }; --Recipe: Flask of Distilled Wisdom
		[20] = { itemID = 13250 }; --Head of Balnazzar
	};
	{
		Name = AL["Sothos and Jarien"];
		[1] = { icon = "INV_Misc_Bag_09", name = "=q6=#j5#", desc = "=q5=#n18#" };
		[2] = { itemID = 22301, droprate = "19.00%" }; --Ironweave Robe
		[3] = { itemID = 22328, droprate = "21.27%" }; --Legplates of Vigilance
		[4] = { itemID = 22327, droprate = "14.03%" }; --Amulet of the Redeemed
		[5] = { itemID = 22334, droprate = "17.19%" }; --Band of Mending
		[6] = { itemID = 22329, droprate = "28.51%" }; --Scepter of Interminable Focus
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Stonespine"];
		[1] = { itemID = 13397, droprate = "23.44%" }; --Stoneskin Gargoyle Cape
		[2] = { itemID = 13954, droprate = "25.36%" }; --Verdant Footpads
		[3] = { itemID = 13399, droprate = "26.16%" }; --Gargoyle Shredder Talons
	};
	{
		Name = BabbleBoss["Baroness Anastari"];
		[1] = { itemID = 18730 }; --Shadowy Laced Handwraps
		[2] = { itemID = 18728, droprate = "11.92%" }; --Anastari Heirloom
		[3] = { itemID = 13534, droprate = "13.42%" }; --Banshee Finger
		[4] = { itemID = 18729, droprate = "15.59%" }; --Screeching Bow
		[6] = { itemID = 13535, droprate = "9.84%" }; --Coldtouch Phantom Wraps
		[7] = { itemID = 13537, droprate = "9.71%" }; --Chillhide Bracers
		[8] = { itemID = 13538, droprate = "9.75%" }; --Windshrieker Pauldrons
		[9] = { itemID = 13539, droprate = "8.27%" }; --Banshee's Touch
		[10] = { itemID = 13514, droprate = "7.73%" }; --Wail of the Banshee
		[16] = { itemID = 16704, droprate = "13.16%" }; --Dreadmist Sandals
	};
	{
		Name = BabbleBoss["Black Guard Swordsmith"] .. " (" .. AL["Summon"] .. ")";
		[1] = { itemID = 18783, droprate = "23.5%" }; --Bottom Half of Advanced Armorsmithing: Volume III
		[2] = { itemID = 12725 }; --Plans: Enchanted Thorium Helm
		[4] = { itemID = 13350, droprate = "100%" }; --Insignia of the Black Guard
		[5] = { itemID = 12825 }; --Plans: Blazing Rapier
	};
	{
		Name = "Plans: Corruption";
		[1] = { itemID = 12830, droprate = "100%" }; --Plans: Corruption
	};
	{
		Name = BabbleBoss["Nerub'enkan"];
		[1] = { itemID = 18740, droprate = "14.72%" }; --Thuzadin Sash
		[2] = { itemID = 18739, droprate = "12.19%" }; --Chitinous Plate Legguards
		[3] = { itemID = 13529, droprate = "12.62%" }; --Husk of Nerub'enkan
		[4] = { itemID = 18738, droprate = "14.17%" }; --Carapace Spine Crossbow
		[6] = { itemID = 13530, droprate = "8.49%" }; --Fangdrip Runners
		[7] = { itemID = 13531, droprate = "10.17%" }; --Crypt Stalker Leggings
		[8] = { itemID = 13532, droprate = "9.69%" }; --Darkspinner Claws
		[9] = { itemID = 13533, droprate = "8.11%" }; --Acid-etched Pauldrons
		[10] = { itemID = 13508, droprate = "7.39%" }; --Eye of Arachnida
		[16] = { itemID = 16675, droprate = "13.62%" }; --Beaststalker's Boots
	};
	{
		Name = BabbleBoss["Maleki the Pallid"];
		[1] = { itemID = 18734, droprate = "13.42%" }; --Pale Moon Cloak
		[2] = { itemID = 18735, droprate = "15.03%" }; --Maleki's Footwraps
		[3] = { itemID = 13524, droprate = "13.42%" }; --Skull of Burning Shadows
		[4] = { itemID = 18737, droprate = "14.23%" }; --Bone Slicing Hatchet
		[6] = { itemID = 13525, droprate = "9.15%" }; --Darkbind Fingers
		[7] = { itemID = 13526, droprate = "9.57%" }; --Flamescarred Girdle
		[8] = { itemID = 13528, droprate = "9.49%" }; --Twilight Void Bracers
		[9] = { itemID = 13527, droprate = "9.39%" }; --Lavawalker Greaves
		[10] = { itemID = 13509, droprate = "6.95%" }; --Clutch of Foresight
		[16] = { itemID = 16691, droprate = "13.64%" }; --Devout Sandals
		[18] = { itemID = 12833, droprate = "5.86%" }; --Plans: Hammer of the Titans
		[19] = { itemID = 12796 }; --Hammer of the Titans
	};
	{
		Name = BabbleBoss["Magistrate Barthilas"];
		[1] = { itemID = 13376, droprate = "12.44%" }; --Royal Tribunal Cloak
		[2] = { itemID = 18727, droprate = "13.82%" }; --Crimson Felt Hat
		[3] = { itemID = 18726, droprate = "12.87%" }; --Magistrate's Cuffs
		[4] = { itemID = 18722, droprate = "15.34%" }; --Death Grips
		[5] = { itemID = 23198, droprate = "2.37%" }; --Idol of Brutality
		[6] = { itemID = 18725, droprate = "14.22%" }; --Peacemaker
		[8] = { itemID = 12382, droprate = "100%" }; --Key to the City
	};
	{
		Name = BabbleBoss["Ramstein the Gorger"];
		[1] = { itemID = 13374, droprate = "9.87%" }; --Soulstealer Mantle
		[2] = { itemID = 18723 }; --Animated Chain Necklace
		[3] = { itemID = 13373, droprate = "8.15%" }; --Band of Flesh
		[4] = { itemID = 13515, droprate = "8.09%" }; --Ramstein's Lightning Bolts
		[5] = { itemID = 13372, droprate = "8.63%" }; --Slavedriver's Cane
		[6] = { itemID = 13375, droprate = "9.17%" }; --Crest of Retribution
		[16] = { itemID = 16737, droprate = "9.58%" }; --Gauntlets of Valor
	};
	{
		Name = BabbleBoss["Baron Rivendare"];
		[1] = { itemID = 13505, droprate = "1%" }; --Runeblade of Baron Rivendare
		[2] = { itemID = 13335, droprate = "0.10%" }; --Deathcharger's Reins
		[4] = { itemID = 13340, droprate = "8.75%" }; --Cape of the Black Baron
		[5] = { itemID = 22412, droprate = "4.16%" }; --Thuzadin Mantle
		[6] = { itemID = 13346, droprate = "11.51%" }; --Robes of the Exalted
		[7] = { itemID = 22409, droprate = "4.59%" }; --Tunic of the Crescent Moon
		[8] = { itemID = 13344, droprate = "10.85%" }; --Dracorian Gauntlets
		[9] = { itemID = 22410, droprate = "4.98%" }; --Gauntlets of Deftness
		[10] = { itemID = 22411, droprate = "3.80%" }; --Helm of the Executioner
		[11] = { itemID = 13345, droprate = "9.50%" }; --Seal of Rivendare
		[12] = { itemID = 13368, droprate = "4.32%" }; --Bonescraper
		[13] = { itemID = 13361, droprate = "4.25%" }; --Skullforge Reaver
		[14] = { itemID = 13349, droprate = "9.30%" }; --Scepter of the Unholy
		[15] = { itemID = 22408, droprate = "3.39%" }; --Ritssyn's Wand of Bad Mojo
		[16] = { itemID = 16687, droprate = "6.79%" }; --Magister's Leggings
		[17] = { itemID = 16699, droprate = "7.31%" }; --Dreadmist Leggings
		[18] = { itemID = 16694, droprate = "7.42%" }; --Devout Skirt
		[19] = { itemID = 16709, droprate = "7.76%" }; --Shadowcraft Pants
		[20] = { itemID = 16719, droprate = "6.58%" }; --Wildheart Kilt
		[21] = { itemID = 16668, droprate = "3.02%" }; --Kilt of Elements
		[22] = { itemID = 16678, droprate = "6.16%" }; --Beaststalker's Pants
		[23] = { itemID = 16732, droprate = "5.74%" }; --Legplates of Valor
		[24] = { itemID = 16728, droprate = "4.20%" }; --Lightforge Legplates
		[26] = { itemID = 13251, droprate = "100%" }; --Head of Baron Rivendare
		[27] = { itemID = 13246 }; --Argent Avenger
		[28] = { itemID = 13249 }; --Argent Crusader
		[29] = { itemID = 13243 }; --Argent Defender
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18743, droprate = "0.01%" }; --Gracious Cape
		[2] = { itemID = 17061, droprate = "0.01%" }; --Juno's Shadow
		[3] = { itemID = 18745, droprate = "0.01%" }; --Sacred Cloth Leggings
		[4] = { itemID = 18744, droprate = "0.00%" }; --Plaguebat Fur Gloves
		[5] = { itemID = 18736, droprate = "0.00%" }; --Plaguehound Leggings
		[6] = { itemID = 18742, droprate = "0.00%" }; --Stratholme Militia Shoulderguard
		[7] = { itemID = 18741, droprate = "0.01%" }; --Morlune's Bracer
		[9] = { itemID = 16249, droprate = "1.19%" }; --Formula: Enchant 2H Weapon - Major Intellect
		[10] = { itemID = 16248, droprate = "0.36%" }; --Formula: Enchant Weapon - Unholy
		[11] = { itemID = 18658, droprate = "1.82%" }; --Schematic: Ultra-Flash Shadow Reflector
		[12] = { itemID = 16052, droprate = "1.99%" }; --Schematic: Voice Amplification Modulator
		[13] = { itemID = 15777, droprate = "1.00%" }; --Pattern: Runic Leather Shoulders
		[14] = { itemID = 15768, droprate = "0.85%" }; --Pattern: Wicked Leather Belt
		[15] = { itemID = 14495 }; --Pattern: Ghostweave Pants
		[16] = { itemID = 16697, droprate = "1.15%" }; --Devout Bracers
		[17] = { itemID = 16702, droprate = "0.90%" }; --Dreadmist Belt
		[18] = { itemID = 16685, droprate = "0.80%" }; --Magister's Belt
		[19] = { itemID = 16714, droprate = "1.49%" }; --Wildheart Bracers
		[20] = { itemID = 16681, droprate = "1.64%" }; --Beaststalker's Bindings
		[21] = { itemID = 16671, droprate = "1.90%" }; --Bindings of Elements
		[22] = { itemID = 16736, droprate = "2.02%" }; --Belt of Valor
		[23] = { itemID = 16723, droprate = "1.83%" }; --Lightforge Belt
		[25] = { itemID = 12811, droprate = "5.09%" }; --Righteous Orb
		[26] = { itemID = 12735, droprate = "17.5%" }; --Frayed Abomination Stitching
	};
};
---------------------
--- The Deadmines ---
---------------------

AtlasLoot_Data["TheDeadmines"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["The Deadmines"];
	Type = "ClassicDungeon";
	Map = "TheDeadmines";
	{
		Name = BabbleBoss["Marisa du'Paige"];
		[1] = { itemID = 3019, droprate = "22.4%" }; --Noble's Robe
		[2] = { itemID = 4660, droprate = "71.4%" }; --Walking Boots
	};
	{
		Name = BabbleBoss["Brainwashed Noble"];
		[1] = { itemID = 5967, droprate = "70.4%" }; --Girdle of Nobility
		[2] = { itemID = 3902, droprate = "23.0%" }; --Staff of Nobles
	};
	{
		Name = BabbleBoss["Foreman Thistlenettle"];
		[1] = { itemID = 1875, droprate = "100%" }; --Thistlenettle's Badge
	};
	{
		Name = BabbleBoss["Rhahk'Zor"];
		[1] = { itemID = 872, droprate = "3.13%" }; --Rockslicer
		[2] = { itemID = 5187, droprate = "77.98%" }; --Rhahk'Zor's Hammer
	};
	{
		Name = BabbleBoss["Miner Johnson"];
		[1] = { itemID = 5444, droprate = "54.88%" }; --Miner's Cape
		[2] = { itemID = 5443, droprate = "37.21%" }; --Gold-plated Buckler
	};
	{
		Name = BabbleBoss["Sneed's Shredder"];
		[1] = { itemID = 2169, droprate = "70.78%" }; --Buzzer Blade
		[2] = { itemID = 1937, droprate = "8.75%" }; --Buzz Saw
		[3] = { itemID = 7365, droprate = "100%" }; --Gnoam Sprecklesprocket
	};
	{
		Name = BabbleBoss["Sneed"];
		[1] = { itemID = 5195, droprate = "62.38%" }; --Gold-flecked Gloves
		[2] = { itemID = 5194, droprate = "26.23%" }; --Taskmaster Axe
		[3] = { itemID = 5397, droprate = "100%" }; --Defias Gunpowder
	};
	{
		Name = BabbleBoss["Gilnid"];
		[1] = { itemID = 5199, droprate = "51.37%" }; --Smelting Pants
		[2] = { itemID = 1156, droprate = "35.02%" }; --Lavishly Jeweled Ring
		[3] = { icon = "INV_Box_01", "=q6=#n7#" };
		[4] = { itemID = 10403, droprate = "23.26%" }; --Blackened Defias Belt
		[5] = { itemID = 5200, droprate = "25.39%" }; --Impaling Harpoon
		[6] = { itemID = 5201, droprate = "34.10%" }; --Emberstone Staff
	};
	{
		Name = BabbleBoss["Mr. Smite"];
		[1] = { itemID = 5192, droprate = "34.96%" }; --Thief's Blade
		[2] = { itemID = 5196, droprate = "33.95%" }; --Smite's Reaver
		[3] = { itemID = 7230, droprate = "17.27%" }; --Smite's Mighty Hammer
	};
	{
		Name = BabbleBoss["Cookie"];
		[1] = { itemID = 5197, droprate = "49.62%" }; --Cookie's Tenderizer
		[2] = { itemID = 5198, droprate = "30.90%" }; --Cookie's Stirring Rod
		[3] = { itemID = 8490, droprate = "12.38%" }; --Cat Carrier (Siamese)
	};
	{
		Name = BabbleBoss["Edwin VanCleef"];
		[1] = { itemID = 5193, droprate = "21.25%" }; --Cape of the Brotherhood
		[2] = { itemID = 5202, droprate = "22.86%" }; --Corsair's Overshirt
		[3] = { itemID = 10399, droprate = "14.77%" }; --Blackened Defias Armor
		[4] = { itemID = 5191, droprate = "14.17%" }; --Cruel Barb
		[5] = { itemID = 2874 }; --An Unsent Letter
		[6] = { itemID = 3637 }; --Head of VanCleef
	};
};

--------------------
--- The Stockade ---
--------------------

AtlasLoot_Data["TheStockade"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["The Stockade"];
	Type = "ClassicDungeon";
	Map = "TheStockade";
	{
		Name = BabbleBoss["Targorr the Dread"];
		[1] = { itemID = 3630, droprate = "100%" }; --Head of Targorr
		[3] = { itemID = 56971, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kam Deepfury"];
		[1] = { itemID = 2280, droprate = "0.62%" }; --Kam's Walking Stick
		[2] = { itemID = 3640, droprate = "100%" }; --Head of Deepfury
		[4] = { itemID = 56970, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Bazil Thredd"];
		[1] = { itemID = 2926, droprate = "100%" }; --Head of Bazil Thredd
		[3] = { itemID = 56972, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Hamhock"];
		[1] = { itemID = 2926, droprate = "100%" }; --Head of Bazil Thredd
		[3] = { itemID = 56973, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Dextren Ward"];
		[1] = { itemID = 3628, droprate = "100%" }; --Hand of Dextren Ward
		[3] = { itemID = 56969, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Bruegal Ironknuckle"];
		[1] = { itemID = 3228, droprate = "54.73%" }; --Jimmied Handcuffs
		[2] = { itemID = 2942, droprate = "18.18%" }; --Iron Knuckles
		[3] = { itemID = 2941, droprate = "16.05%" }; --Prison Shank
		[5] = { itemID = 56974, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = "Quest Item's";
		[1] = { itemID = 2909 }; --Red Wool Bandana
	};
};

-------------------------
--- The Sunken Temple ---
-------------------------

AtlasLoot_Data["SunkenTemple"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Sunken Temple";
	Type = "ClassicDungeon";
	Map = "TheSunkenTemple";
	{
		Name = "Spawn of Hakkar";
		[1] = { itemID = 10802, droprate = "25.6%" }; --Wingveil Cloak
		[2] = { itemID = 10801, droprate = "42.33%" }; --Slitherscale Boots
	};
	{
		Name = "Troll Minibosses";
		[1] = { itemID = 10787, droprate = "5.25%" }; --Atal'ai Gloves
		[2] = { itemID = 10783, droprate = "3.12%" }; --Atal'ai Spaulders
		[3] = { itemID = 10785, droprate = "4.42%" }; --Atal'ai Leggings
		[4] = { itemID = 10784, droprate = "2.12%" }; --Atal'ai Breastplate
		[5] = { itemID = 10786, droprate = "6.15%" }; --Atal'ai Boots
		[6] = { itemID = 10788, droprate = "7.17%" }; --Atal'ai Girdle
		[8] = { itemID = 20606 }; --Amber Voodoo Feather
		[9] = { itemID = 20607 }; --Blue Voodoo Feather
		[10] = { itemID = 20608 }; --Green Voodoo Feather
	};
	{
		Name = BabbleBoss["Atal'alarion"];
		[1] = { itemID = 10800, droprate = "31.73%" }; --Darkwater Bracers
		[2] = { itemID = 10798, droprate = "30.53%" }; --Atal'alarion's Tusk Ring
		[3] = { itemID = 10799, droprate = "17.98%" }; --Headspike
	};
	{
		Name = BabbleBoss["Dreamscythe"];
		[1] = { itemID = 12465, droprate = "4.42%" }; --Nightfall Drape
		[2] = { itemID = 12466, droprate = "4.16%" }; --Dawnspire Cord
		[3] = { itemID = 12464, droprate = "4.99%" }; --Bloodfire Talons
		[4] = { itemID = 10795, droprate = "3.68%" }; --Drakeclaw Band
		[5] = { itemID = 10796, droprate = "4.26%" }; --Drakestone
		[6] = { itemID = 10797, droprate = "4.57%" }; --Firebreather
		[7] = { itemID = 12463, droprate = "4.40%" }; --Drakefang Butcher
		[8] = { itemID = 12243, droprate = "4.50%" }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Weaver"];
		[1] = { itemID = 12465, droprate = "4.20%" }; --Nightfall Drape
		[2] = { itemID = 12466, droprate = "3.89%" }; --Dawnspire Cord
		[3] = { itemID = 12464, droprate = "4.10%" }; --Bloodfire Talons
		[4] = { itemID = 10795, droprate = "4.46%" }; --Drakeclaw Band
		[5] = { itemID = 10796, droprate = "4.47%" }; --Drakestone
		[6] = { itemID = 10797, droprate = "4.08%" }; --Firebreather
		[7] = { itemID = 12463, droprate = "5.00%" }; --Drakefang Butcher
		[8] = { itemID = 12243, droprate = "4.42%" }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Avatar of Hakkar"];
		[1] = { itemID = 12462, droprate = "0.15%" }; --Embrace of the Wind Serpent
		[3] = { itemID = 10843, droprate = "31.12%" }; --Featherskin Cape
		[4] = { itemID = 10842, droprate = "33.22%" }; --Windscale Sarong
		[5] = { itemID = 10846, droprate = "32.44%" }; --Bloodshot Greaves
		[6] = { itemID = 10845, droprate = "30.44%" }; --Warrior's Embrace
		[7] = { itemID = 10838, droprate = "16.37%" }; --Might of Hakkar
		[8] = { itemID = 10844, droprate = "16.02%" }; --Spire of Hakkar
		[10] = { itemID = 10663, droprate = "100%" }; --Essence of Hakkar
	};
	{
		Name = BabbleBoss["Jammal'an the Prophet"];
		[1] = { itemID = 10806, droprate = "24.13%" }; --Vestments of the Atal'ai Prophet
		[2] = { itemID = 10808, droprate = "26.74%" }; --Gloves of the Atal'ai Prophet
		[3] = { itemID = 10807, droprate = "23.00%" }; --Kilt of the Atal'ai Prophet
		[5] = { itemID = 6212 }; --Head of Jammal'an
	};
	{
		Name = BabbleBoss["Ogom the Wretched"];
		[1] = { itemID = 10805, droprate = "28.27%" }; --Eater of the Dead
		[2] = { itemID = 10804, droprate = "30.03%" }; --Fist of the Damned
		[3] = { itemID = 10803, droprate = "28.21%" }; --Blade of the Wretched
	};
	{
		Name = BabbleBoss["Morphaz"];
		[1] = { itemID = 12465, droprate = "4.29%" }; --Nightfall Drape
		[2] = { itemID = 12466, droprate = "4.12%" }; --Dawnspire Cord
		[3] = { itemID = 12464, droprate = "4.21%" }; --Bloodfire Talons
		[4] = { itemID = 10795, droprate = "4.07%" }; --Drakeclaw Band
		[5] = { itemID = 10796, droprate = "4.18%" }; --Drakestone
		[6] = { itemID = 10797, droprate = "4.24%" }; --Firebreather
		[7] = { itemID = 12463, droprate = "4.35%" }; --Drakefang Butcher
		[8] = { itemID = 12243, droprate = "4.09%" }; --Smoldering Claw
		[10] = { itemID = 20022, droprate = "100%" }; --Azure Key
		[11] = { itemID = 20085, droprate = "100%" }; --Arcane Shard
		[12] = { itemID = 20025, droprate = "100%" }; --Blood of Morphaz
		[13] = { itemID = 20019, droprate = "100%" }; --Tooth of Morphaz
	};
	{
		Name = BabbleBoss["Hazzas"];
		[1] = { itemID = 12465, droprate = "4.48%" }; --Nightfall Drape
		[2] = { itemID = 12466, droprate = "4.46%" }; --Dawnspire Cord
		[3] = { itemID = 12464, droprate = "5.00%" }; --Bloodfire Talons
		[4] = { itemID = 10795, droprate = "4.18%" }; --Drakeclaw Band
		[5] = { itemID = 10796, droprate = "4.92%" }; --Drakestone
		[6] = { itemID = 10797, droprate = "4.50%" }; --Firebreather
		[7] = { itemID = 12463, droprate = "4.58%" }; --Drakefang Butcher
		[8] = { itemID = 12243, droprate = "4.56%" }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Shade of Eranikus"];
		[1] = { itemID = 10847, droprate = "0.18%" }; --Dragon's Call
		[3] = { itemID = 10833, droprate = "25.66%" }; --Horns of Eranikus
		[4] = { itemID = 10829, droprate = "27.02%" }; --Dragon's Eye
		[5] = { itemID = 10828, droprate = "10.91%" }; --Dire Nail
		[6] = { itemID = 10837, droprate = "10.05%" }; --Tooth of Eranikus
		[7] = { itemID = 10835, droprate = "19.17%" }; --Crest of Supremacy
		[8] = { itemID = 10836, droprate = "21.54%" }; --Rod of Corrosion
		[10] = { itemID = 10454 }; --Essence of Eranikus
		[11] = { itemID = 10455 }; --Chained Essence of Eranikus
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10630, droprate = "0.01%" }; --Soulcatcher Halo
		[2] = { itemID = 10629, droprate = "0.01%" }; --Mistwalker Boots
		[3] = { itemID = 10632, droprate = "0.01%" }; --Slimescale Bracers
		[4] = { itemID = 10631, droprate = "0.01%" }; --Murkwater Gauntlets
		[5] = { itemID = 10633, droprate = "0.01%" }; --Silvershell Leggings
		[6] = { itemID = 10634, droprate = "0.02%" }; --Mindseye Circle
		[8] = { itemID = 15733, droprate = "1.80%" }; --Pattern: Green Dragonscale Leggings
		[9] = { itemID = 16216, droprate = "0.75%" }; --Formula: Enchant Cloak - Greater Resistance
		[11] = { itemID = 11318 }; --Atal'ai Haze
		[12] = { itemID = 6181 }; --Fetish of Hakkar
		[16] = { itemID = 10623, droprate = "0.01%" }; --Winter's Bite
		[17] = { itemID = 10625, droprate = "0.01%" }; --Stealthblade
		[18] = { itemID = 10628, droprate = "0.01%" }; --Deathblow
		[19] = { itemID = 10626, droprate = "0.01%" }; --Ragehammer
		[20] = { itemID = 10627, droprate = "0.02%" }; --Bludgeon of the Grinning Dog
		[21] = { itemID = 10624, droprate = "0.02%" }; --Stinging Bow
	};
};

---------------
--- Uldaman ---
---------------

AtlasLoot_Data["Uldaman"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Uldaman"];
	Type = "ClassicDungeon";
	Map = "Uldaman";
	{
		Name = AL["Magregan Deepshadow"];
		[1] = { itemID = 4635, droprate = "100%" }; --Hammertoe's Amulet
	};
	{
		Name = "Tablet of Ryun'eh";
		[1] = { itemID = 4631 }; --Tablet of Ryun'eh
	};
	{
		Name = AL["Krom Stoutarm's Chest"];
		[1] = { itemID = 8027 }; --Krom Stoutarm's Treasure
	};
	{
		Name = AL["Garrett Family Chest"];
		[1] = { itemID = 8026 }; --Garrett Family Treasure
	};
	{
		Name = BabbleBoss["Digmaster Shovelphlange"];
		[1] = { itemID = 9375, droprate = "9.30%" }; --Expert Goldminer's Helmet
		[2] = { itemID = 9378, droprate = "13.50%" }; --Shovelphlange's Mining Axe
		[3] = { itemID = 9382, droprate = "70.70%" }; --Tromping Miner's Boots
	};
	{
		Name = BabbleBoss["Baelog"];
		[1] = { icon = "INV_Box_01", "=q6=#n45#" };
		[2] = { itemID = 9401, droprate = "8.89%" }; --Nordic Longshank
		[3] = { itemID = 9400, droprate = "46.52%" }; --Baelog's Shortbow
		[4] = { itemID = 9399, droprate = "78.62%" }; --Precision Arrow
		[6] = { icon = "INV_Box_01", "=q6=#n46#" };
		[7] = { itemID = 9394, droprate = "4.05%" }; --Horned Viking Helmet
		[8] = { itemID = 9398, droprate = "45.09%" }; --Worn Running Boots
		[9] = { itemID = 2459 }; --Swiftness Potion
		[11] = { icon = "INV_Box_01", "=q6=#n47#" };
		[12] = { itemID = 9404, droprate = "11.33%" }; --Olaf's All Purpose Shield
		[13] = { itemID = 9403, droprate = "69.85%" }; --Battered Viking Shield
		[14] = { itemID = 1177, droprate = "76.54%" }; --Oil of Olaf
		[16] = { icon = "INV_Box_01", "=q6=#x14#" };
		[17] = { itemID = 7740 }; --Gni'kiv Medallion
		[19] = { icon = "INV_Box_01", "=q6=#x15#" };
		[20] = { itemID = 7671 }; --Shattered Necklace Topaz
	};
	{
		Name = BabbleBoss["Revelosh"];
		[1] = { itemID = 9390, droprate = "20.08%" }; --Revelosh's Gloves
		[2] = { itemID = 9389, droprate = "18.77%" }; --Revelosh's Spaulders
		[3] = { itemID = 9388, droprate = "19.84%" }; --Revelosh's Armguards
		[4] = { itemID = 9387, droprate = "20.53%" }; --Revelosh's Boots
		[6] = { itemID = 7741 }; --The Shaft of Tsol
	};
	{
		Name = BabbleBoss["Ironaya"];
		[1] = { itemID = 9407, droprate = "31.02%" }; --Stoneweaver Leggings
		[2] = { itemID = 9409, droprate = "32.71%" }; --Ironaya's Bracers
		[3] = { itemID = 9408, droprate = "1" }; --Ironshod Bludgeon
	};
	{
		Name = BabbleBoss["Obsidian Sentinel"];
		[1] = { itemID = 8053, droprate = "100%" }; --Obsidian Power Source
	};
	{
		Name = BabbleBoss["Ancient Stone Keeper"];
		[1] = { itemID = 9411, droprate = "43.41%" }; --Rockshard Pauldrons
		[2] = { itemID = 9410, droprate = "41.61%" }; --Cragfists
	};
	{
		Name = BabbleBoss["Galgann Firehammer"];
		[1] = { itemID = 11311, droprate = "36.52%" }; --Emberscale Cape
		[2] = { itemID = 11310, droprate = "17.35%" }; --Flameseer Mantle
		[3] = { itemID = 9419, droprate = "18.10%" }; --Galgann's Firehammer
		[4] = { itemID = 9412, droprate = "17.10%" }; --Galgann's Fireblaster
	};
	{
		Name = "Tablet of Will";
		[1] = { itemID = 5824 }; --Tablet of Will
	};
	{
		Name = "Shadowforge Cache";
		[1] = { itemID = 7669 }; --Shattered Necklace Ruby
	};
	{
		Name = BabbleBoss["Grimlok"];
		[1] = { itemID = 9415, droprate = "36.51%" }; --Grimlok's Tribal Vestments
		[2] = { itemID = 9414, droprate = "29.78%" }; --Oilskin Leggings
		[3] = { itemID = 9416, droprate = "15.05%" }; --Grimlok's Charge
		[5] = { itemID = 7670, droprate = "100%" }; --Shattered Necklace Sapphire
	};
	{
		Name = BabbleBoss["Archaedas"];
		[1] = { itemID = 11118, droprate = "51.99%" }; --Archaedic Stone
		[2] = { itemID = 9418, droprate = "10.48%" }; --Stoneslayer
		[3] = { itemID = 9413, droprate = "10.94%" }; --The Rockpounder
		[5] = { itemID = 7672, droprate = "100%" }; --Shattered Necklace Power Source
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9397, droprate = "0.01%" }; --Energy Cloak
		[2] = { itemID = 9431, droprate = "0.01%" }; --Papal Fez
		[3] = { itemID = 9429, droprate = "0.01%" }; --Miner's Hat of the Deep
		[4] = { itemID = 9420, droprate = "0.01%" }; --Adventurer's Pith Helmet
		[5] = { itemID = 9406, droprate = "0.01%" }; --Spirewind Fetter
		[6] = { itemID = 9428, droprate = "0.01%" }; --Unearthed Bands
		[7] = { itemID = 9430, droprate = "0.00%" }; --Spaulders of a Lost Age
		[8] = { itemID = 9396 }; --Legguards of the Vault
		[9] = { itemID = 9432, droprate = "0.01%" }; --Skullplate Bracers
		[10] = { itemID = 9393, droprate = "0.01%" }; --Beacon of Hope
		[12] = { itemID = 7666 }; --Shattered Necklace
		[13] = { itemID = 7673 }; --Talvash's Enhancing Necklace
		[16] = { itemID = 9384, droprate = "0.01%" }; --Stonevault Shiv
		[17] = { itemID = 9392, droprate = "0.01%" }; --Annealed Blade
		[18] = { itemID = 9424, droprate = "0.01%" }; --Ginn-su Sword
		[19] = { itemID = 9465, droprate = "0.01%" }; --Digmaster 5000
		[20] = { itemID = 9383, droprate = "0.01%" }; --Obsidian Cleaver
		[21] = { itemID = 9425, droprate = "0.01%" }; --Pendulum of Doom
		[22] = { itemID = 9386, droprate = "0.01%" }; --Excavator's Brand
		[23] = { itemID = 9427, droprate = "0.01%" }; --Stonevault Bonebreaker
		[24] = { itemID = 9423, droprate = "0.01%" }; --The Jackhammer
		[25] = { itemID = 9391, droprate = "0.01%" }; --The Shoveler
		[26] = { itemID = 9381, droprate = "0.01%" }; --Earthen Rod
		[27] = { itemID = 9426, droprate = "0.01%" }; --Monolithic Bow
		[28] = { itemID = 9422, droprate = "0.01%" }; --Shadowforge Bushmaster
	};
};

-----------------------
--- Wailing Caverns ---
-----------------------

AtlasLoot_Data["WailingCaverns"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Wailing Caverns"];
	Type = "ClassicDungeon";
	Map = "WailingCaverns";
	{
		Name = AL["Kalldan Felmoon"];
		[1] = { itemID = 6475 }; --Pattern: Deviate Scale Gloves
		[2] = { itemID = 6474 }; --Pattern: Deviate Scale Cloak
	};
	{
		Name = BabbleBoss["Mad Magglish"];
		[1] = { itemID = 5334, droprate = "100%" }; --99-Year-Old Port
	};
	{
		Name = BabbleBoss["Trigore the Lasher"];
		[1] = { itemID = 5425, droprate = "50%" }; --Runescale Girdle
		[2] = { itemID = 5426, droprate = "35%" }; --Serpent's Kiss
	};
	{
		Name = BabbleBoss["Boahn"];
		[1] = { itemID = 5423, droprate = "28%" }; --Boahn's Fang
		[2] = { itemID = 5422, droprate = "64%" }; --Brambleweed Leggings
	};
	{
		Name = BabbleBoss["Lord Cobrahn"];
		[1] = { itemID = 6465, droprate = "51.73%" }; --Robe of the Moccasin
		[2] = { itemID = 10410, droprate = "16.03%" }; --Leggings of the Fang
		[3] = { itemID = 6460, droprate = "16.20%" }; --Cobrahn's Grasp
	};
	{
		Name = BabbleBoss["Lady Anacondra"];
		[1] = { itemID = 5404, droprate = "58.61%" }; --Serpent's Shoulders
		[2] = { itemID = 10412, droprate = "8.63%" }; --Belt of the Fang
		[3] = { itemID = 6446, droprate = "6.61%" }; --Snakeskin Bag
	};
	{
		Name = BabbleBoss["Kresh"];
		[1] = { itemID = 13245, droprate = "9.17%" }; --Kresh's Back
		[2] = { itemID = 6447, droprate = "63.66%" }; --Worn Turtle Shell Shield
	};
	{
		Name = BabbleBoss["Lord Pythas"];
		[1] = { itemID = 6473, droprate = "52.06%" }; --Armor of the Fang
		[2] = { itemID = 6472, droprate = "28.24%" }; --Stinging Viper
	};
	{
		Name = BabbleBoss["Skum"];
		[1] = { itemID = 6449, droprate = "38.24%" }; --Glowing Lizardscale Cloak
		[2] = { itemID = 6448, droprate = "39.24%" }; --Tail Spike
	};
	{
		Name = BabbleBoss["Lord Serpentis"];
		[1] = { itemID = 5970, droprate = "20.96%" }; --Serpent Gloves
		[2] = { itemID = 10411, droprate = "19.07%" }; --Footpads of the Fang
		[3] = { itemID = 6459, droprate = "24.39%" }; --Savage Trodders
		[4] = { itemID = 6469, droprate = "16.63%" }; --Venomstrike
	};
	{
		Name = BabbleBoss["Verdan the Everliving"];
		[1] = { itemID = 6629, droprate = "16.65%" }; --Sporid Cape
		[2] = { itemID = 6631, droprate = "34.47%" }; --Living Root
		[3] = { itemID = 6630, droprate = "35.38%" }; --Seedcloud Buckler
	};
	{
		Name = BabbleBoss["Mutanus the Devourer"];
		[1] = { itemID = 6461, droprate = "22.96%" }; --Slime-encrusted Pads
		[2] = { itemID = 6627, droprate = "18.33%" }; --Mutant Scale Breastplate
		[3] = { itemID = 6463, droprate = "21.99%" }; --Deep Fathom Ring
		[4] = { itemID = 10441 }; --Glowing Shard
	};
	{
		Name = BabbleBoss["Deviate Faerie Dragon"];
		[1] = { itemID = 6632, droprate = "37.84%" }; --Feyscale Cloak
		[2] = { itemID = 5243, droprate = "39.65%" }; --Firebelcher
	};
};

------------------
--- Zul'Farrak ---
------------------

AtlasLoot_Data["ZulFarrak"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Zul'Farrak"];
	Type = "ClassicDungeon";
	Map = "ZulFarrak";
	{
		Name = BabbleBoss["Antu'sul"];
		[1] = { itemID = 9640, droprate = "31.30%" }; --Vice Grips
		[2] = { itemID = 9641, droprate = "30.80%" }; --Lifeblood Amulet
		[3] = { itemID = 9639, droprate = "15.47%" }; --The Hand of Antu'sul
		[5] = { itemID = 9379, droprate = "2.10%" }; --Sang'thraze the Deflector
		[6] = { itemID = 9372 }; --Sul'thraze the Lasher
	};
	{
		Name = BabbleBoss["Theka the Martyr"];
		[1] = { itemID = 10660, droprate = "100%" }; --First Mosh'aru Tablet
	};
	{
		Name = BabbleBoss["Witch Doctor Zum'rah"];
		[1] = { itemID = 18083, droprate = "24.97%" }; --Jumanza Grips
		[2] = { itemID = 18082, droprate = "11.98%" }; --Zum'rah's Vexing Cane
	};
	{
		Name = BabbleBoss["Nekrum Gutchewer"];
		[1] = { itemID = 9471, droprate = "100%" }; --Nekrum's Medallion
	};
	{
		Name = BabbleBoss["Shadowpriest Sezz'ziz"];
		[1] = { itemID = 9470, droprate = "18.69%" }; --Bad Mojo Mask
		[2] = { itemID = 9473, droprate = "21.12%" }; --Jinxed Hoodoo Skin
		[3] = { itemID = 9474, droprate = "20.95%" }; --Jinxed Hoodoo Kilt
		[4] = { itemID = 9475, droprate = "20.06%" }; --Diabolic Skiver
	};
	{
		Name = BabbleBoss["Dustwraith"];
		[1] = { itemID = 12471, droprate = "17.71%" }; --Desertwalker Cane
	};
	{
		Name = BabbleBoss["Sergeant Bly"];
		[1] = { itemID = 8444 }; --Executioner's Key
	};
	{
		Name = BabbleBoss["Sandfury Executioner"];
		[1] = { itemID = 8548, droprate = "100%" }; --Divino-matic Rod
	};

	{
		Name = BabbleBoss["Hydromancer Velratha"];
		[1] = { itemID = 9234, droprate = "100%" }; --Tiara of the Deep
		[2] = { itemID = 10661, droprate = "100%" }; --Second Mosh'aru Tablet
	};
	{
		Name = BabbleBoss["Gahz'rilla"];
		[1] = { itemID = 9469, droprate = "36.76%" }; --Gahz'rilla Scale Armor
		[2] = { itemID = 9467, droprate = "36.83%" }; --Gahz'rilla Fang
		[4] = { itemID = 8707 }; --Gahz'rilla's Electrified Scale
	};
	{
		Name = BabbleBoss["Chief Ukorz Sandscalp"];
		[1] = { itemID = 9479, droprate = "8.97%" }; --Embrace of the Lycan
		[2] = { itemID = 9476, droprate = "28.17%" }; --Big Bad Pauldrons
		[3] = { itemID = 9478, droprate = "19.78%" }; --Ripsaw
		[4] = { itemID = 9477, droprate = "22.33%" }; --The Chief's Enforcer
		[6] = { itemID = 11086, droprate = "1.72%" }; --Jang'thraze the Protector
		[7] = { itemID = 9372 }; --Sul'thraze the Lasher
	};
	{
		Name = BabbleBoss["Zerillis"];
		[1] = { itemID = 12470, droprate = "15.55%" }; --Sandstalker Ankleguards
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9512, droprate = "0.02%" }; --Blackmetal Cape
		[2] = { itemID = 9484, droprate = "0.01%" }; --Spellshock Leggings
		[3] = { itemID = 862, droprate = "0.02%" }; --Runed Ring
		[4] = { itemID = 6440, droprate = "0.01%" }; --Brainlash
		[6] = { itemID = 9243 }; --Shriveled Heart
		[8] = { itemID = 9523 }; --Troll Temper
		[9] = { itemID = 9238 }; --Uncracked Scarab Shell
		[16] = { itemID = 5616, droprate = "0.01%" }; --Gutwrencher
		[17] = { itemID = 9511, droprate = "0.01%" }; --Bloodletter Scalpel
		[18] = { itemID = 9481, droprate = "0.01%" }; --The Minotaur
		[19] = { itemID = 9480, droprate = "0.01%" }; --Eyegouger
		[20] = { itemID = 9482, droprate = "0.01%" }; --Witch Doctor's Cane
		[21] = { itemID = 9483, droprate = "0.01%" }; --Flaming Incinerator
		[22] = { itemID = 2040, droprate = "0.02%" }; --Troll Protector
	};
};

-----------------
--- Zul'Gurub ---
-----------------

AtlasLoot_Data["ZulGurub"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Zul'Gurub"];
	Type = "ClassicRaid";
	Map = "ZulGurub";
	{
		Name = BabbleBoss["High Priestess Jeklik"];
		[1] = { itemID = 19918, droprate = "3.96%" }; --Jeklik's Crusher
		[2] = { itemID = 19928, droprate = "3.39%" }; --Animist's Spaulders
		[3] = { itemID = 20262, droprate = "4.31%" }; --Seafury Boots
		[4] = { itemID = 20265, droprate = "6.99%" }; --Peacekeeper Boots
		[5] = { itemID = 19923, droprate = "12.22%" }; --Jeklik's Opaline Talisman
		[6] = { itemID = 19920, droprate = "11.89%" }; --Primalist's Band
		[7] = { itemID = 19915, droprate = " 11.36%" }; --Zulian Defender
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943, droprate = "8.8%" }; --Massive Mojo
		[19] = { itemID = 19881, droprate = "100%" }; --Channeler's Head
	};
	{
		Name = BabbleBoss["High Priest Venoxis"];
		[1] = { itemID = 19904, droprate = "3.70%" }; --Runed Bloodstained Hauberk
		[2] = { itemID = 19903, droprate = "3.68%" }; --Fang of Venoxis
		[4] = { itemID = 19907, droprate = "12.09%" }; --Zulian Tigerhide Cloak
		[5] = { itemID = 19906, droprate = "11.36%" }; --Blooddrenched Footpads
		[6] = { itemID = 19905, droprate = "6.99%" }; --Zanzil's Band
		[7] = { itemID = 19900, droprate = "11.89%" }; --Zulian Stone Axe
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943, droprate = "6.0%" }; --Massive Mojo
		[19] = { itemID = 19881, droprate = "100%" }; --Channeler's Head
		[21] = { itemID = 22216, droprate = "100%" }; --Venoxis's Venom Sac
	};
	{
		Name = BabbleBoss["High Priestess Mar'li"];
		[1] = { itemID = 20032, droprate = "4.46%" }; --Flowing Ritual Robes
		[2] = { itemID = 19927, droprate = "4.35%" }; --Mar'li's Touch
		[3] = { itemID = 19919, droprate = "11.89%" }; --Bloodstained Greaves
		[4] = { itemID = 19871, droprate = "11.36%" }; --Talisman of Protection
		[5] = { itemID = 19925, droprate = " 6.99%" }; --Band of Jin
		[6] = { itemID = 19930, droprate = "12.09%" }; --Mar'li's Eye
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943, droprate = "7.4%" }; --Massive Mojo
		[19] = { itemID = 19881, droprate = "100%" }; --Channeler's Head
	};
	{
		Name = BabbleBoss["Bloodlord Mandokir"];
		[1] = { itemID = 19867, droprate = "5.83%" }; --Bloodlord's Defender
		[2] = { itemID = 19866, droprate = "3.96%" }; --Warblade of the Hakkari
		[3] = { itemID = 19874, droprate = "6.35%" }; --Halberd of Smiting
		[4] = { itemID = 20038, droprate = "5.96%" }; --Mandokir's Sting
		[5] = { itemID = 19872, droprate = "0.43%" }; --Swift Razzashi Raptor
		[7] = { itemID = 19870, droprate = "12.54%" }; --Hakkari Loa Cloak
		[8] = { itemID = 19895, droprate = "13.50%" }; --Bloodtinged Kilt
		[9] = { itemID = 19869, droprate = "12.87%" }; --Blooddrenched Grips
		[10] = { itemID = 19877, droprate = "12.14%" }; --Animist's Leggings
		[11] = { itemID = 19878, droprate = "12.31%" }; --Bloodsoaked Pauldrons
		[12] = { itemID = 19873, droprate = "12.28%" }; --Overlord's Crimson Band
		[13] = { itemID = 19893, droprate = "13.11%" }; --Zanzil's Seal
		[14] = { itemID = 19863, droprate = "12.32%" }; --Primalist's Seal
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 22637 }; --Primal Hakkari Idol
		[19] = { itemID = 19943, droprate = "9.4%" }; --Massive Mojo
	};
	{
		Name = BabbleZone["Zul'Gurub"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Gri'lek"] };
		[2] = { itemID = 19961, droprate = "43.90%" }; --Gri'lek's Grinder
		[3] = { itemID = 19962, droprate = "41.99%" }; --Gri'lek's Carver
		[4] = { itemID = 19939, droprate = "100%" }; --Gri'lek's Blood
		[6] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Hazza'rah"] };
		[7] = { itemID = 19968, droprate = "38.37%" }; --Fiery Retributer
		[8] = { itemID = 19967, droprate = "45.49%" }; --Thoughtblighter
		[9] = { itemID = 19942, droprate = "100%" }; --Hazza'rah's Dream Thread
		[16] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Renataki"] };
		[17] = { itemID = 19964, droprate = "40.06%" }; --Renataki's Soul Conduit
		[18] = { itemID = 19963, droprate = "45.51%" }; --Pitchfork of Madness
		[19] = { itemID = 19940, droprate = "100%" }; --Renataki's Tooth
		[21] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Wushoolay"] };
		[22] = { itemID = 19965, droprate = "45.21%" }; --Wushoolay's Poker
		[23] = { itemID = 19993, droprate = "40.96%" }; --Hoodoo Hunting Bow
		[24] = { itemID = 19941, droprate = "100%" }; --Wushoolay's Mane
	};
	{
		Name = BabbleBoss["Gahz'ranka"];
		[1] = { itemID = 19945, droprate = "8,82%" }; --Foror's Eyepatch
		[2] = { itemID = 19944, droprate = "2.39%" }; --Nat Pagle's Fish Terminator
		[4] = { itemID = 19947, droprate = "28.20%" }; --Nat Pagle's Broken Reel
		[5] = { itemID = 19946, droprate = "29.22%" }; --Tigule's Harpoon
		[7] = { itemID = 22739 }; --Tome of Polymorph: Turtle
	};
	{
		Name = BabbleBoss["High Priest Thekal"];
		[1] = { itemID = 19897, droprate = "5.83%" }; --Betrayer's Boots
		[2] = { itemID = 19896, droprate = "4.23%" }; --Thekal's Grasp
		[3] = { itemID = 19902, droprate = "0.70%" }; --Swift Zulian Tiger
		[5] = { itemID = 19898 }; --Seal of Jin
		[6] = { itemID = 19899, droprate = "13.41%" }; --Ritualistic Legguards
		[7] = { itemID = 20260, droprate = "4.30%" }; --Seafury Leggings
		[8] = { itemID = 20266, droprate = "8.69%" }; --Peacekeeper Leggings
		[9] = { itemID = 19901, droprate = "13.36%" }; --Zulian Slicer
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 19943, droprate = "8.3%" }; --Massive Mojo
		[19] = { itemID = 19881, droprate = "100%" }; --Channeler's Head
	};
	{
		Name = BabbleBoss["High Priestess Arlokk"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 19943, droprate = "5.6%" }; --Massive Mojo
		[19] = { itemID = 19881, droprate = "100%" }; --Channeler's Head
		[1] = { itemID = 19910, droprate = "3.62%" }; --Arlokk's Grasp
		[2] = { itemID = 19909, droprate = "5.14%" }; --Will of Arlokk
		[4] = { itemID = 19913, droprate = "13.29%" }; --Bloodsoaked Greaves
		[5] = { itemID = 19912, droprate = "13.95%" }; --Overlord's Onyx Band
		[6] = { itemID = 19922, droprate = "13.66%" }; --Arlokk's Hoodoo Stick
		[7] = { itemID = 19914, droprate = "14.03%" }; --Panther Hide Sack
	};
	{
		Name = BabbleBoss["Jin'do the Hexxer"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", ootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 22637 }; --Primal Hakkari Idol
		[19] = { itemID = 19943, droprate = "8.4%" }; --Massive Mojo
		[1] = { itemID = 19885, droprate = "6.82%" }; --Jin'do's Evil Eye
		[2] = { itemID = 19891, droprate = "7.70%" }; --Jin'do's Bag of Whammies
		[3] = { itemID = 19890, droprate = "8.08%" }; --Jin'do's Hexxer
		[4] = { itemID = 19884, droprate = "8.36%" }; --Jin'do's Judgement
		[6] = { itemID = 19888, droprate = "12.72%" }; --Overlord's Embrace
		[7] = { itemID = 19886, droprate = "12.11%" }; --The Hexxer's Cover
		[8] = { itemID = 19929, droprate = "11.75%" }; --Bloodtinged Gloves
		[9] = { itemID = 19889, droprate = "11.97%" }; --Blooddrenched Leggings
		[10] = { itemID = 19892, droprate = "12.28%" }; --Animist's Boots
		[11] = { itemID = 19875, droprate = "13.73%" }; --Bloodstained Coif
		[12] = { itemID = 19887, droprate = "11.11%" }; --Bloodstained Legplates
		[13] = { itemID = 19894, droprate = "12.93%" }; --Bloodsoaked Gauntlets
	};
	{
		Name = BabbleBoss["Hakkar"];
		[1] = { itemID = 19857, droprate = "11.65%" }; --Cloak of Consumption
		[2] = { itemID = 20257, droprate = "4.11%" }; --Seafury Gauntlets
		[3] = { itemID = 20264 }; --Peacekeeper Gauntlets
		[4] = { itemID = 19855, droprate = "10.52%" }; --Bloodsoaked Legplates
		[5] = { itemID = 19876, droprate = "10.11%" }; --Soul Corrupter's Necklace
		[6] = { itemID = 19856, droprate = "12.02%" }; --The Eye of Hakkar
		[8] = { itemID = 19859, droprate = "7.33%" }; --Fang of the Faceless
		[9] = { itemID = 19864, droprate = "7.69%" }; --Bloodcaller
		[10] = { itemID = 19865, droprate = "3.67%" }; --Warblade of the Hakkari
		[11] = { itemID = 19854, droprate = "6.78%" }; --Zin'rokh, Destroyer of Worlds
		[12] = { itemID = 19852, droprate = "6.62%" }; --Ancient Hakkari Manslayer
		[13] = { itemID = 19862, droprate = "9.99%" }; --Aegis of the Blood God
		[14] = { itemID = 19853, droprate = "6.12%" }; --Gurubashi Dwarf Destroyer
		[15] = { itemID = 19861, droprate = "7.24%" }; --Touch of Chaos
		[16] = { itemID = 19802, droprate = "100%" }; --Heart of Hakkar
		[17] = { itemID = 19950 }; --Zandalarian Hero Charm
		[18] = { itemID = 19949 }; --Zandalarian Hero Medallion
		[19] = { itemID = 19948 }; --Zandalarian Hero Badge
		[21] = { itemID = 19943, droprate = "34.3%" }; --Massive Mojo
	};
	{
		Name = "Muddy Churning Waters";
		[1] = { itemID = 19975 }; --Zulian Mudskunk
	};
	{
		Name = "Shared ZG Priest Drops";
		[1] = { itemID = 22721 }; --Band of Servitude
		[2] = { itemID = 22722 }; --Seal of the Gurubashi Berserker
		[4] = { itemID = 22711 }; --Cloak of the Hakkari Worshipers
		[5] = { itemID = 22712 }; --Might of the Tribe
		[6] = { itemID = 22720 }; --Zulian Headdress
		[7] = { itemID = 22716 }; --Belt of Untapped Power
		[8] = { itemID = 22718 }; --Blooddrenched Mask
		[9] = { itemID = 22715 }; --Gloves of the Tormented
		[10] = { itemID = 22714 }; --Sacrificial Gauntlets
		[11] = { itemID = 22713 }; --Zulian Scepter of Rites
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20259 }; --Shadow Panther Hide Gloves
		[2] = { itemID = 20261 }; --Shadow Panther Hide Belt
		[3] = { itemID = 20263 }; --Gurubashi Helm
		[4] = { itemID = 19908 }; --Sceptre of Smiting
		[5] = { itemID = 19921 }; --Zulian Hacker
		[6] = { itemID = 20258 }; --Zulian Ceremonial Staff
		[7] = { itemID = 19727, droprate = "0.02%" }; --Blood Scythe
		[8] = { itemID = 48126 }; --Razzashi Hatchling
		[10] = { itemID = 19726 }; --Bloodvine
		[11] = { itemID = 19774 }; --Souldarite
		[12] = { itemID = 19767 }; --Primal Bat Leather
		[13] = { itemID = 19768 }; --Primal Tiger Leather
		[16] = { itemID = 19821, droprate = "0.01%" }; --Punctured Voodoo Doll
		[17] = { itemID = 19816, droprate = "0.01%" }; --Punctured Voodoo Doll
		[18] = { itemID = 19818, droprate = "0.01%" }; --Punctured Voodoo Doll
		[19] = { itemID = 19815, droprate = "0.01%" }; --Punctured Voodoo Doll
		[20] = { itemID = 19820, droprate = "0.01%" }; --Punctured Voodoo Doll
		[21] = { itemID = 19814, droprate = "0.01%" }; --Punctured Voodoo Doll
		[22] = { itemID = 19817, droprate = "0.01%" }; --Punctured Voodoo Doll
		[23] = { itemID = 19819, droprate = "0.01%" }; --Punctured Voodoo Doll
		[24] = { itemID = 19813, droprate = "0.01%" }; --Punctured Voodoo Doll
	};
	{
		Name = "Coin's and Bijou's";
		[1] = { itemID = 19708, droprate = "1.48%" }; --Blue Hakkari Bijou
		[2] = { itemID = 19713, droprate = "1.57%" }; --Bronze Hakkari Bijou
		[3] = { itemID = 19715, droprate = "1.63%" }; --Gold Hakkari Bijou
		[4] = { itemID = 19711, droprate = "1.67%" }; --Green Hakkari Bijou
		[5] = { itemID = 19710, droprate = "1.76%" }; --Orange Hakkari Bijou
		[6] = { itemID = 19712, droprate = "1.67%" }; --Purple Hakkari Bijou
		[7] = { itemID = 19707, droprate = "1.63%" }; --Red Hakkari Bijou
		[8] = { itemID = 19714, droprate = "1.59%" }; --Silver Hakkari Bijou
		[9] = { itemID = 19709, droprate = "1.50%" }; --Yellow Hakkari Bijou
		[16] = { itemID = 19706, droprate = "3.01%" }; --Bloodscalp Coin
		[17] = { itemID = 19701, droprate = "3.12%" }; --Gurubashi Coin
		[18] = { itemID = 19700, droprate = "3.19%" }; --Hakkari Coin
		[19] = { itemID = 19699, droprate = "3.36%" }; --Razzashi Coin
		[20] = { itemID = 19704, droprate = "3.47%" }; --Sandfury Coin
		[21] = { itemID = 19705, droprate = "3.32%" }; --Skullsplitter Coin
		[22] = { itemID = 19702, droprate = "3.27%" }; --Vilebranch Coin
		[23] = { itemID = 19703, droprate = "3.27%" }; --Witherbark Coin
		[24] = { itemID = 19698, droprate = "3.01%" }; --Zulian Coin
	};
	{
		Name = "ZG Enchants";
		[1] = { itemID = 19790 }; --Animist's Caress
		[2] = { itemID = 19785 }; --Falcon's Call
		[3] = { itemID = 19787 }; --Presence of Sight
		[4] = { itemID = 19783 }; --Syncretist's Sigil
		[5] = { itemID = 19789 }; --Prophetic Aura
		[6] = { itemID = 19784 }; --Death's Embrace
		[7] = { itemID = 19786 }; --Vodouisant's Vigilant Embrace
		[8] = { itemID = 19788 }; --Hoodoo Hex
		[9] = { itemID = 19782 }; --Presence of Might
		[16] = { itemID = 20077 }; --Zandalar Signet of Might
		[17] = { itemID = 20076 }; --Zandalar Signet of Mojo
		[18] = { itemID = 20078 }; --Zandalar Signet of Serenity
		[20] = { itemID = 22635 }; --Savage Guard
	};
};

-----------------
--- Naxxramas ---
-----------------

AtlasLoot_Data["Naxxramas60"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Naxxramas"];
	Type = "ClassicRaid";
	Map = "Naxxramas60";
	{
		Name = BabbleBoss["Patchwerk"];
		[1] = { itemID = 22960, droprate = "20%" }; --Cloak of Suturing
		[2] = { itemID = 22815, droprate = "20%" }; --Severance
		[3] = { itemID = 22820, droprate = "20%" }; --Wand of Fates
		[4] = { itemID = 22818, droprate = "20%" }; --The Plague Bearer
		[5] = { itemID = 22961, droprate = "20%" }; --Band of Reanimation
		[16] = { itemID = 22354, droprate = "100%", lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[1] = { itemID = 22968, droprate = "20%" }; --Glacial Mantle
		[2] = { itemID = 22967, droprate = "20%" }; --Icy Scale Spaulders
		[3] = { itemID = 22803, droprate = "20%" }; --Midnight Haze
		[4] = { itemID = 22988, droprate = "20%" }; --The End of Dreams
		[5] = { itemID = 22810, droprate = "20%" }; --Toxin Injector
		[16] = { itemID = 22354, droprate = "100%", lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 22983, droprate = "20%" }; --Rime Covered Mantle
		[2] = { itemID = 22813, droprate = "20%" }; --Claymore of Unholy Might
		[3] = { itemID = 23075, droprate = "20%" }; --Death's Bargain
		[4] = { itemID = 22994, droprate = "20%" }; --Digested Hand of Power
		[5] = { itemID = 22981, droprate = "20%" }; --Gluth's Missing Collar
		[16] = { itemID = 22354, droprate = "100%", lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[17] = { itemID = 22355, droprate = "8.33%", lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22356, droprate = "8.33%", lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[19] = { itemID = 22358, droprate = "8.33%", lootTable = {"T3FEET","Token"} }; --Desecrated Sabatons
		[21] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[22] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Thaddius"];
		[1] = { itemID = 23070, droprate = "20%" }; --Leggings of Polarity
		[2] = { itemID = 23000, droprate = "20%" }; --Plated Abomination Ribcage
		[3] = { itemID = 22808, droprate = "20%" }; --The Castigator
		[4] = { itemID = 22801, droprate = "20%" }; --Spire of Twilight
		[5] = { itemID = 23001, droprate = "20%" }; --Eye of Diminution
		[16] = { itemID = 22353, droprate = "100%", lootTable = {"T3HEAD","Token"} }; --Desecrated Helmet
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[1] = { itemID = 22938, droprate = "20%" }; --Cryptfiend Silk Cloak
		[2] = { itemID = 22936, droprate = "20%" }; --Wristguards of Vengeance
		[3] = { itemID = 22937, droprate = "20%" }; --Gem of Nerubis
		[4] = { itemID = 22939, droprate = "20%" }; --Band of Unanswered Prayers
		[5] = { itemID = 22935, droprate = "20%" }; --Touch of Frost
		[16] = { itemID = 22355, droprate = "100%", lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[1] = { itemID = 22941, droprate = "20%" }; --Polar Shoulder Pads
		[2] = { itemID = 22940, droprate = "20%" }; --Icebane Pauldrons
		[3] = { itemID = 22806, droprate = "20%" }; --Widow's Remorse
		[4] = { itemID = 22942, droprate = "20%" }; --The Widow's Embrace
		[5] = { itemID = 22943, droprate = "20%" }; --Malice Stone Pendant
		[16] = { itemID = 22355, droprate = "100%", lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Maexxna"];
		[1] = { itemID = 23220, droprate = "20%" }; --Crystal Webbed Robe
		[2] = { itemID = 22804, droprate = "20%" }; --Maexxna's Fang
		[3] = { itemID = 22807, droprate = "20%" }; --Wraith Blade
		[4] = { itemID = 22947, droprate = "20%" }; --Pendant of Forgotten Names
		[5] = { itemID = 22954, droprate = "20%" }; --Kiss of the Spider
		[16] = { itemID = 22357, droprate = "100%", lootTable = {"T3HAND","Token"} }; --Desecrated Gauntlets
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[1] = { itemID = 23017, droprate = "16.67%" }; --Veil of Eclipse
		[2] = { itemID = 23219, droprate = "16.67%" }; --Girdle of the Mentor
		[3] = { itemID = 23014, droprate = "16.67%" }; --Iblis, Blade of the Fallen Seraph
		[4] = { itemID = 23009, droprate = "16.67%" }; --Wand of the Whispering Dead
		[5] = { itemID = 23004, droprate = "16.67%" }; --Idol of Longevity
		[6] = { itemID = 23018, droprate = "16.67%" }; --Signet of the Fallen Defender
		[16] = { itemID = 22358, droprate = "100%", lootTable = {"T3FEET","Token"} }; --Desecrated Sabatons
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[1] = { itemID = 23032, droprate = "20%" }; --Glacial Headdress
		[2] = { itemID = 23021, droprate = "20%" }; --The Soul Harvester's Bindings
		[3] = { itemID = 23020, droprate = "20%" }; --Polar Helmet
		[4] = { itemID = 23073, droprate = "20%" }; --Boots of Displacement
		[5] = { itemID = 23023, droprate = "20%" }; --Sadist's Collar
		[16] = { itemID = 22358, droprate = "100%", lootTable = {"T3SHOULDER","Token"} }; --Desecrated Sabatons
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[1] = { itemID = 23071, droprate = "16.67%" }; --Leggings of Apocalypse
		[2] = { itemID = 22809, droprate = "16.67%" }; --Maul of the Redeemed Crusader
		[3] = { itemID = 22691, droprate = "16.67%" }; --Corrupted Ashbringer
		[4] = { itemID = 22811, droprate = "20%" }; --Soulstring
		[5] = { itemID = 23025, droprate = "16.67%" }; --Seal of the Damned
		[6] = { itemID = 23027, droprate = "16.67%" }; --Warmth of Forgiveness
		[16] = { itemID = 22349, droprate = "100%", lootTable = {"T3CHEST","Token"} }; --Desecrated Breastplate
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[1] = { itemID = 23030, droprate = "14.29%" }; --Cloak of the Scourge
		[2] = { itemID = 22816, droprate = "14.29%" }; --Hatchet of Sundered Bone
		[3] = { itemID = 23005, droprate = "14.29%" }; --Totem of Flowing Water
		[4] = { itemID = 23006, droprate = "14.29%" }; --Libram of Light
		[5] = { itemID = 23029, droprate = "14.29%" }; --Noth's Frigid Heart
		[6] = { itemID = 23031, droprate = "14.29%" }; --Band of the Inevitable
		[7] = { itemID = 23028, droprate = "14.29%" }; --Hailstone Band
		[16] = { itemID = 22356, droprate = "100%", lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[1] = { itemID = 23035, droprate = "20%" }; --Preceptor's Hat
		[2] = { itemID = 23033, droprate = "20%" }; --Icy Scale Coif
		[3] = { itemID = 23019, droprate = "20%" }; --Icebane Helmet
		[4] = { itemID = 23068, droprate = "20%" }; --Legplates of Carnage
		[5] = { itemID = 23036, droprate = "20%" }; --Necklace of Necropsy
		[16] = { itemID = 22356, droprate = "100%", lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Loatheb"];
		[1] = { itemID = 23039, droprate = "20%" }; --The Eye of Nerub
		[2] = { itemID = 22800, droprate = "20%" }; --Brimstone Staff
		[3] = { itemID = 23037, droprate = "20%" }; --Ring of Spiritual Fervor
		[4] = { itemID = 23038, droprate = "20%" }; --Band of Unnatural Forces
		[5] = { itemID = 23042, droprate = "20%" }; --Loatheb's Reflection
		[16] = { itemID = 22352, droprate = "100%", lootTable = {"T3LEGS","Token"} }; --Desecrated Legplates
		[18] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[1] = { itemID = 23050, droprate = "18.18%" }; --Cloak of the Necropolis
		[2] = { itemID = 23045, droprate = "18.18%" }; --Shroud of Dominion
		[3] = { itemID = 23072, droprate = "18.18%" }; --Fists of the Unrelenting
		[4] = { itemID = 23043, droprate = "18.18%" }; --The Face of Death
		[5] = { itemID = 23242, droprate = "18.18%" }; --Claw of the Frost Wyrm
		[6] = { itemID = 23049, droprate = "18.18%" }; --Sapphiron's Left Eye
		[7] = { itemID = 23048, droprate = "18.18%" }; --Sapphiron's Right Eye
		[8] = { itemID = 23040, droprate = "18.18%" }; --Glyph of Deflection
		[9] = { itemID = 23047, droprate = "18.18%" }; --Eye of the Dead
		[10] = { itemID = 23046, droprate = "18.18%" }; --The Restrained Essence of Sapphiron
		[11] = { itemID = 23041, droprate = "18.18%" }; --Slayer's Crest
		[12] = { itemID = 19761 }, --Fang of the Frost Wyrm
		[16] = { itemID = 23545, droprate = "50%" }; --Power of the Scourge
		[17] = { itemID = 23547, droprate = "50%" }; --Resilience of the Scourge
		[18] = { itemID = 23549, droprate = "50%" }; --Fortitude of the Scourge
		[19] = { itemID = 23548, droprate = "50%" }; --Might of the Scourge
		[21] = { itemID = 22726, droprate = "30%" }; --Splinter of Atiesh
		[22] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[1] = { itemID = 22802, droprate = "18.18%" }; --Kingsfall
		[2] = { itemID = 23054, droprate = "18.18%" }; --Gressil, Dawn of Ruin
		[3] = { itemID = 23577, droprate = "18.18%" }; --The Hungering Cold
		[4] = { itemID = 23056, droprate = "18.18%" }; --Hammer of the Twisting Nether
		[5] = { itemID = 22798, droprate = "18.18%" }; --Might of Menethil
		[6] = { itemID = 22799, droprate = "18.18%" }; --Soulseeker
		[7] = { itemID = 22821, droprate = "18.18%" }; --Doomfinger
		[8] = { itemID = 22812, droprate = "18.18%" }; --Nerubian Slavemaker
		[9] = { itemID = 22819, droprate = "18.18%" }; --Shield of Condemnation
		[10] = { itemID = 23057, droprate = "18.18%" }; --Gem of Trapped Innocents
		[11] = { itemID = 23053, droprate = "18.18%" }; --Stormrage's Talisman of Seething
		[13] = { itemID = 22520, droprate = "100%" }; --The Phylactery of Kel'Thuzad
		[14] = { itemID = 23207 }; --Mark of the Champion
		[15] = { itemID = 23206 }; --Mark of the Champion
		[16] = { itemID = 1510496, droprate = "100%", lootTable = {"T3FINGER","Token"} }; --Desecrated Ring
		[18] = { itemID = 22733 }; --Staff Head of Atiesh
		[19] = { itemID = 22632 }; --Atiesh, Greatstaff of the Guardian
		[20] = { itemID = 22589 }; --Atiesh, Greatstaff of the Guardian
		[21] = { itemID = 22631 }; --Atiesh, Greatstaff of the Guardian
		[22] = { itemID = 22630 }; --Atiesh, Greatstaff of the Guardian
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 23069 }; --Necro-Knight's Garb
		[2] = { itemID = 23226 }; --Ghoul Skin Tunic
		[3] = { itemID = 23663 }; --Girdle of Elemental Fury
		[4] = { itemID = 23664 }; --Pauldrons of Elemental Fury
		[5] = { itemID = 23665 }; --Leggings of Elemental Fury
		[6] = { itemID = 23666 }; --Belt of the Grand Crusader
		[7] = { itemID = 23667 }; --Spaulders of the Grand Crusader
		[8] = { itemID = 23668 }; --Leggings of the Grand Crusader
		[9] = { itemID = 23044 }; --Harbinger of Doom
		[10] = { itemID = 23221 }; --Misplaced Servo Arm
		[11] = { itemID = 23238 }; --Stygian Buckler
		[12] = { itemID = 23237 }; --Ring of the Eternal Flame
		[16] = { itemID = 22376 }; --Wartorn Cloth Scrap
		[17] = { itemID = 22373 }; --Wartorn Leather Scrap
		[18] = { itemID = 22374 }; --Wartorn Chain Scrap
		[19] = { itemID = 22375 }; --Wartorn Plate Scrap
		[21] = { itemID = 22708 }; --Fate of Ramaladni
		[22] = { itemID = 23055 }; --Word of Thawing
	};
};

---------------------
--- Onyxia's Lair 60 ---
---------------------

AtlasLoot_Data["Onyxia60"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Onyxia's Lair"];
	Type = "ClassicRaid";
	Map = "Onyxia60";
	{
		Name = BabbleZone["Onyxia's Lair"];
		[1] = { itemID = 17078, droprate = "28.57%" }; --Sapphiron Drape
		[2] = { itemID = 18205, droprate = "28.57%" }; --Eskhandar's Collar
		[3] = { itemID = 18813, droprate = "28.57%" }; --Ring of Binding
		[4] = { itemID = 17064, droprate = "28.57%" }; --Shard of the Scale
		[5] = { itemID = 17067, droprate = "28.57%" }; --Ancient Cornerstone Grimoire
		[6] = { itemID = 17075, droprate = "28.57%" }; --Vis'kag the Bloodletter
		[7] = { itemID = 17068, droprate = "28.57%" }; --Deathbringer
		[8] = { itemID = 18215, droprate = "28.57%" }; --Insignia of the Dragon
		[9] = { itemID = 18216, droprate = "28.57%" }; --Neltharion's Badge
		[10] = { itemID = 18211, droprate = "28.57%" }; --Wand of the Noble
		[11] = { itemID = 17084, droprate = "28.57%" }; --Mace of the Dragon Knight
		[12] = { itemID = 18212, droprate = "28.57%" }; --Band of Nyxondra
		[16] = { itemID = 2522460, droprate = "100%", lootTable = {"T2HEAD","Token"} }; --Chromatic Headpiece
		[18] = { itemID = 18423, droprate = "100%" }; --Head of Onyxia
		[19] = { itemID = 18404 }; -- Onyxia Tooth Pendant
		[20] = { itemID = 18403 }; -- Dragonslayer's Signet
		[21] = { itemID = 18406 }; -- Onyxia Blood Talisman
		[23] = { itemID = 15410 }; -- Scale of Onyxia
		[24] = { itemID = 17966, droprate = "100%" }; --Onyxia Hide Backpack
		[26] = { itemID = 49636, [AtlasLoot.Difficultys.MIN_DIF] = AtlasLoot.Difficultys.Heroic }; -- Reins of the Onyxian Drake
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

------------------------------------
--- Dungeon 1 and 2 Sets (D1/D2) ---
------------------------------------

AtlasLoot_Data["T0"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Dungeon Sets";
	Type = "ClassicDungeonExt";
	{
		Name = AL["Wildheart Raiment"];
		[1] = { itemID = 16720, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "7.09%" }; --Wildheart Cowl
		[2] = { itemID = 16718, desc = "=ds=" .. BabbleBoss["Gizrul the Slavener"] .. " (" .. AL["LBRS"] .. ")", droprate = "11.04%" }; --Wildheart Spaulders
		[3] = { itemID = 16706, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "7.36%" }; --Wildheart Vest
		[4] = { itemID = 16714, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.85%" }; --Wildheart Bracers
		[5] = { itemID = 16717, desc = "=ds=" .. BabbleBoss["The Unforgiven"] .. " (" .. AL["Strat"] .. ")", droprate = "12.61%" }; --Wildheart Gloves
		[6] = { itemID = 16716, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", droprate = "2.60%" }; --Wildheart Belt
		[7] = { itemID = 16719, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "6.58%" }; --Wildheart Kilt
		[8] = { itemID = 16715, desc = "=ds=" .. BabbleBoss["Mother Smolderweb"] .. " (" .. AL["LBRS"] .. ")", droprate = "13.03%" }; --Wildheart Boots

	};
	{
		Name = AL["Beaststalker Armor"];
		[1] = { itemID = 16677, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "7.00%" }; --Beaststalker's Cap
		[2] = { itemID = 16679, desc = "=ds=" .. BabbleBoss["Overlord Wyrmthalak"] .. " (" .. AL["LBRS"] .. ")", droprate = "9.89%" }; --Beaststalker's Mantle
		[3] = { itemID = 16674, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "6.81%" }; --Beaststalker's Tunic
		[4] = { itemID = 16681, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.64%" }; --Beaststalker's Bindings
		[5] = { itemID = 16676, desc = "=ds=" .. BabbleBoss["War Master Voone"] .. " (" .. AL["LBRS"] .. ")", droprate = "9.15%" }; --Beaststalker's Gloves
		[6] = { itemID = 16680, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.36%" }; --Beaststalker's Belt
		[7] = { itemID = 16678, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "6.16%" }; --Beaststalker's Pants
		[8] = { itemID = 16675, desc = "=ds=" .. BabbleBoss["Nerub'enkan"] .. " (" .. AL["Strat"] .. ")", droprate = "13.62%" }; --Beaststalker's Boots

	};
	{
		Name = AL["Magister's Regalia"];
		[1] = { itemID = 16686, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "8.60%" }; --Magister's Crown
		[2] = { itemID = 16689, desc = "=ds=" .. BabbleBoss["Ras Frostwhisper"] .. " (" .. AL["Scholo"] .. ")", droprate = "11.93%" }; --Magister's Mantle
		[3] = { itemID = 16688, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "7.24%" }; --Magister's Robes
		[4] = { itemID = 16683, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.19%" }; --Magister's Bindings
		[5] = { itemID = 16684, desc = "=ds=" .. BabbleBoss["Doctor Theolen Krastinov"] .. " (" .. AL["Scholo"] ..")", droprate = "9.75%" }; --Magister's Gloves
		[6] = { itemID = 16685, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.32%" }; --Magister's Belt
		[7] = { itemID = 16687, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "6.79%" }; --Magister's Leggings
		[8] = { itemID = 16682, desc = "=ds=" .. BabbleBoss["Hearthsinger Forresten"] .. " (" .. AL["Strat"] .. ")", droprate = "10.86%" }; --Magister's Boots

	};
	{
		Name = AL["Lightforge Armor"];
		[1] = { itemID = 16727, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "5.32%" }; --Lightforge Helm
		[2] = { itemID = 16729, desc = "=ds=" .. BabbleBoss["The Beast"] .. " (" .. AL["UBRS"] .. ")", droprate = "13.62%" }; --Lightforge Spaulders
		[3] = { itemID = 16726, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "3.76%" }; --Lightforge Breastplate
		[4] = { itemID = 16722, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", droprate = "3.37%" }; --Lightforge Bracers
		[5] = { itemID = 16724, desc = "=ds=" .. BabbleBoss["Timmy the Cruel"] .. " (" .. AL["Strat"] .. ")", droprate = "10.42%" }; --Lightforge Gauntlets
		[6] = { itemID = 16723, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.93%" }; --Lightforge Belt
		[7] = { itemID = 16728, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "4.20%" }; --Lightforge Legplates
		[8] = { itemID = 16725, desc = "=ds=" .. BabbleBoss["Balnazzar"] .. " (" .. AL["Strat"] .. ")", droprate = "11.11%" }; --Lightforge Boots

	};
	{
		Name = AL["Vestments of the Devout"];
		[1] = { itemID = 16693, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "7.89%" }; --Devout Crown
		[2] = { itemID = 16695, desc = "=ds=" .. BabbleBoss["Solakar Flamewreath"] .. " (" .. AL["UBRS"] .. ")", droprate = "12.84%" }; --Devout Mantle
		[3] = { itemID = 16690, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "6.20%" }; --Devout Robe
		[4] = { itemID = 16697, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.13%" }; --Devout Bracers
		[5] = { itemID = 16692, "=q3=Devout Gloves", "=ds=" .. BabbleBoss["Archivist Galford"] .. " (" .. AL["Strat"] .. ")" };
		[6] = { itemID = 16696, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "2.07%" }; --Devout Belt
		[7] = { itemID = 16694, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "7.42%" }; --Devout Skirt
		[8] = { itemID = 16691, desc = "=ds=" .. BabbleBoss["Maleki the Pallid"] .. " (" .. AL["Strat"] .. ")", droprate = "13.64%" }; --Devout Sandals

	};
	{
		Name = AL["Shadowcraft Armor"];
		[1] = { itemID = 16707, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "6.65%" }; --Shadowcraft Cap
		[2] = { itemID = 16708, desc = "=ds=" .. BabbleBoss["Cannon Master Willey"] .. " (" .. AL["Strat"] .. ")", droprate = "10.68%" }; --Shadowcraft Spaulders
		[3] = { itemID = 16721, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "6.09%" }; --Shadowcraft Tunic
		[4] = { itemID = 16710, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Scholo"] .. ")", droprate = "3.51%" }; --Shadowcraft Bracers
		[5] = { itemID = 16712, desc = "=ds=" .. BabbleBoss["Shadow Hunter Vosh'gajin"] .. " (" .. AL["LBRS"] .. ")", droprate = "11.89%" }; --Shadowcraft Gloves
		[6] = { itemID = 16713, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.05%" }; --Shadowcraft Belt
		[7] = { itemID = 16709, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "7.76%" }; --Shadowcraft Pants
		[8] = { itemID = 16711, desc = "=ds=" .. BabbleBoss["Rattlegore"] .. " (" .. AL["Scholo"] .. ")", droprate = "14.32%" }; --Shadowcraft Boots

	};
	{
		Name = AL["The Elements"];
		[1] = { itemID = 16667, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "2.86%" }; --Coif of Elements
		[2] = { itemID = 16669, desc = "=ds=" .. BabbleBoss["Gyth"] .. " (" .. AL["UBRS"] .. ")", droprate = "14.77%" }; --Pauldrons of Elements
		[3] = { itemID = 16666, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "3.03%" }; --Vest of Elements
		[4] = { itemID = 16671, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.59%" }; --Bindings of Elements
		[5] = { itemID = 16672, desc = "=ds=" .. BabbleBoss["Pyroguard Emberseer"] .. " (" .. AL["UBRS"] .. ")", droprate = "14.23%" }; --Gauntlets of Elements
		[6] = { itemID = 16673, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.06%" }; --Cord of Elements
		[7] = { itemID = 16668, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "3.02%" }; --Kilt of Elements
		[8] = { itemID = 16670, desc = "=ds=" .. BabbleBoss["Highlord Omokk"] .. " (" .. AL["LBRS"] .. ")", droprate = "9.35%" }; --Boots of Elements

	};
	{
		Name = AL["Dreadmist Raiment"];
		[1] = { itemID = 16698, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "8.78%" }; --Dreadmist Mask
		[2] = { itemID = 16701, desc = "=ds=" .. BabbleBoss["Jandice Barov"] .. " (" .. AL["Scholo"] .. ")", droprate = "12.20%" }; --Dreadmist Mantle
		[3] = { itemID = 16700, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "8.04%" }; --Dreadmist Robe
		[4] = { itemID = 16703, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.68%" }; --Dreadmist Bracers
		[5] = { itemID = 16705, desc = "=ds=" .. BabbleBoss["Lorekeeper Polkelt"] .. " (" .. AL["Scholo"] .. ")", droprate = "14.54%" }; --Dreadmist Wraps
		[6] = { itemID = 16702, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["Strat"] .. ")", droprate = "1.03%" }; --Dreadmist Belt
		[7] = { itemID = 16699, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "7.31%" }; --Dreadmist Leggings
		[8] = { itemID = 16704, desc = "=ds=" .. BabbleBoss["Baroness Anastari"] .. " (" .. AL["Strat"] .. ")", droprate = "13.16%" }; --Dreadmist Sandals

	};
	{
		Name = AL["Battlegear of Valor"];
		[1] = { itemID = 16731, desc = "=ds=" .. BabbleBoss["Darkmaster Gandling"] .. " (" .. AL["Scholo"] .. ")", droprate = "6.54%" }; --Helm of Valor
		[2] = { itemID = 16733, desc = "=ds=" .. BabbleBoss["Warchief Rend Blackhand"] .. " (" .. AL["UBRS"] .. ")", droprate = "13.39%" }; --Spaulders of Valor
		[3] = { itemID = 16730, desc = "=ds=" .. BabbleBoss["General Drakkisath"] .. " (" .. AL["UBRS"] .. ")", droprate = "5.83%" }; --Breastplate of Valor
		[4] = { itemID = 16735, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.49%" }; --Bracers of Valor
		[5] = { itemID = 16737, desc = "=ds=" .. BabbleBoss["Ramstein the Gorger"] .. " (" .. AL["Strat"] .. ")", droprate = "9.58%" }; --Gauntlets of Valor
		[6] = { itemID = 16736, desc = "=ds=" .. AL["Trash Mobs"] .. " (" .. AL["LBRS"] .. ")", droprate = "1.96%" }; --Belt of Valor
		[7] = { itemID = 16732, desc = "=ds=" .. BabbleBoss["Baron Rivendare"] .. " (" .. AL["Strat"] .. ")", droprate = "5.74%" }; --Legplates of Valor
		[8] = { itemID = 16734, desc = "=ds=" .. BabbleBoss["Kirtonos the Herald"] .. " (" .. AL["Scholo"] .. ")", droprate = "11.12%" }; --Boots of Valor

	};
	{
		Name = "Lightborne";
		[1] = { itemID = 46567 }; --Lightborne Faceguard
		[2] = { itemID = 46610 }; --Lightborne Shoulderguards
		[3] = { itemID = 53162 }; --Lightborne Chestguard
		[4] = { itemID = 201774 }; --Lightborne Wrists
		[5] = { itemID = 54110 }; --Lightborne Handguards
		[6] = { itemID = 202325 }; --Lightborne Cord
		[7] = { itemID = 53309 }; --Lightborne Legguards
		[8] = { itemID = 202459 }; --Lightborne Boots
	};
	{
		Name = "Thornheart";
		[1] = { itemID = 56579 }; --Thornheart Cover
		[2] = { itemID = 97953 }; --Thornheart Mantle
		[3] = { itemID = 56730 }; --Thornheart Tunic
		[4] = { itemID = 54346 }; --Thornheart Bands
		[5] = { itemID = 98099 }; --Thornheart Gauntlets
		[6] = { itemID = 54153 }; --Thornheart Sash
		[7] = { itemID = 98013 }; --Thornheart Leggings
		[8] = { itemID = 54219 }; --Thornheart Treads
	};
	{
		Name = "Currents";
		[1] = { itemID = 98718 }; --Headdress of Currents
		[2] = { itemID = 98761 }; --Shoulderpads of Currents
		[3] = { itemID = 98805 }; --Tunic of Currents
		[4] = { itemID = 99537 }; --Bracers of Currents
		[5] = { itemID = 98938 }; --Gloves of Currents
		[6] = { itemID = 99494 }; --Belt of Currents
		[7] = { itemID = 98895 }; --Kilt of Currents
		[8] = { itemID = 99580 }; --Boots of Currents
	};
	{
		Name = "Bravery";
		[1] = { itemID = 98389 }; --Faceguard Bravery
		[2] = { itemID = 98491 }; --Shoulderpads of Bravery
		[3] = { itemID = 98589 }; --Chestguard of Bravery
		[4] = { itemID = 136455 }; --Bracers of Bravery
		[5] = { itemID = 192589 }; --Gauntlets of Bravery
		[6] = { itemID = 191643 }; --Belt of Bravery
		[7] = { itemID = 98632 }; --Leggings of Bravery
		[8] = { itemID = 98675 }; --Stompers of Bravery
	};
	{
		Name = "Courage";
		[1] = { itemID = 98142 }; --Greathelm of Courage
		[2] = { itemID = 98185 }; --Pauldrons of Courage
		[3] = { itemID = 98228 }; --Chestplate of Courage
		[4] = { itemID = 194184 }; --Bracers of Courage
		[5] = { itemID = 99167 }; --Gauntlets of Courage
		[6] = { itemID = 194292 }; --Belt of Courage
		[7] = { itemID = 98271  }; --Legguards of Courage
		[8] = { itemID = 98346  }; --Treads of Courage
	};
};

AtlasLoot_Data["T0.5"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Dungeon Sets Quest Upgrades";
	Type = "ClassicDungeonExt";
	{
		Name = AL["Feralheart Raiment"];
		[1] = { itemID = 22109, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Cowl
		[2] = { itemID = 22112, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Spaulders
		[3] = { itemID = 22113, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Vest
		[4] = { itemID = 22108, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Bracers
		[5] = { itemID = 22110, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Gloves
		[6] = { itemID = 22106, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Belt
		[7] = { itemID = 22111, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Kilt
		[8] = { itemID = 22107, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Feralheart Boots
	};
	{
		Name = AL["Beastmaster Armor"];  
		[1] = { itemID = 22013, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Cap
		[2] = { itemID = 22016, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Mantle
		[3] = { itemID = 22060, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Tunic
		[4] = { itemID = 22011, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Bindings
		[5] = { itemID = 22015, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Gloves
		[6] = { itemID = 22010, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Belt
		[7] = { itemID = 22017, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Pants
		[8] = { itemID = 22061, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Beastmaster's Boots
	};
	{
		Name = AL["Sorcerer's Regalia"];
		[1] = { itemID = 22065, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Crown
		[2] = { itemID = 22068, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Mantle
		[3] = { itemID = 22069, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Robes
		[4] = { itemID = 22063, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Bindings
		[5] = { itemID = 22066, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Gloves
		[6] = { itemID = 22062, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Belt
		[7] = { itemID = 22067, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Leggings
		[8] = { itemID = 22064, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Sorcerer's Boots
	};
	{
		Name = AL["Soulforge Armor"];  
		[1] = { itemID = 22091, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Helm
		[2] = { itemID = 22093, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Spaulders
		[3] = { itemID = 22089, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Breastplate
		[4] = { itemID = 22088, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Bracers
		[5] = { itemID = 22090, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Gauntlets
		[6] = { itemID = 22086, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Belt
		[7] = { itemID = 22092, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Legplates
		[8] = { itemID = 22087, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Soulforge Boots
	};
	{
		Name = AL["Vestments of the Virtuous"];  
		[1] = { itemID = 22080, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Crown
		[2] = { itemID = 22082, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Mantle
		[3] = { itemID = 22083, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Robe
		[4] = { itemID = 22079, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Bracers
		[5] = { itemID = 22081, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Gloves
		[6] = { itemID = 22078, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Belt
		[7] = { itemID = 22085, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Skirt
		[8] = { itemID = 22084, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Virtuous Sandals
	};
	{
		Name = AL["Darkmantle Armor"];
		[1] = { itemID = 22005, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Cap
		[2] = { itemID = 22008, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Spaulders
		[3] = { itemID = 22009, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Tunic
		[4] = { itemID = 22004, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Bracers
		[5] = { itemID = 22006, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Gloves
		[6] = { itemID = 22002, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Belt
		[7] = { itemID = 22007, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Pants
		[8] = { itemID = 22003, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Darkmantle Boots
	};
	{
		Name = AL["The Five Thunders"];
		[1] = { itemID = 22097, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Coif of The Five Thunders
		[2] = { itemID = 22101, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Pauldrons of The Five Thunders
		[3] = { itemID = 22102, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Vest of The Five Thunders
		[4] = { itemID = 22095, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Bindings of The Five Thunders
		[5] = { itemID = 22099, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Gauntlets of The Five Thunders
		[6] = { itemID = 22098, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Cord of The Five Thunders
		[7] = { itemID = 22100, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Kilt of The Five Thunders
		[8] = { itemID = 22096, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Boots of The Five Thunders
	};
	{
		Name = AL["Deathmist Raiment"];
		[1] = { itemID = 22074, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Mask
		[2] = { itemID = 22073, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Mantle
		[3] = { itemID = 22075, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Robe
		[4] = { itemID = 22071, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Bracers
		[5] = { itemID = 22077, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Wraps
		[6] = { itemID = 22070, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Belt
		[7] = { itemID = 22072, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Leggings
		[8] = { itemID = 22076, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Deathmist Sandals
	};
	{
		Name = AL["Battlegear of Heroism"];
		[1] = { itemID = 21999, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Helm of Heroism
		[2] = { itemID = 22001, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Spaulders of Heroism
		[3] = { itemID = 21997, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Breastplate of Heroism
		[4] = { itemID = 21996, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Bracers of Heroism
		[5] = { itemID = 21998, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Gauntlets of Heroism
		[6] = { itemID = 21994, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Belt of Heroism
		[7] = { itemID = 22000, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Legplates of Heroism
		[8] = { itemID = 21995, [AtlasLoot.Difficultys.MAX_DIF] = AtlasLoot.Difficultys.Normal };  --Boots of Heroism
	};
};

-----------------------------
--- Tier 1/2 Sets (T1/T2) ---
-----------------------------

AtlasLoot_Data["T1"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Tier 1";
	Type = "ClassicRaid";
	{
		Name = "Druid"..WHITE.." - "..AL["Restoration"];
		[1] = { itemID = 16834, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.51%" }; --Cenarion Helm
		[2] = { itemID = 16836, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "19.52%" }; --Cenarion Spaulders
		[3] = { itemID = 16833, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "15.21%" }; --Cenarion Vestments
		[4] = { itemID = 16830, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.17%" }; --Cenarion Bracers
		[5] = { itemID = 16831, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "19.53%" }; --Cenarion Gloves
		[6] = { itemID = 16828, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Cenarion Belt
		[7] = { itemID = 16835, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "12.90%" }; --Cenarion Leggings
		[8] = { itemID = 16829, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "10.72%" }; --Cenarion Boots
	};
	{
		Name = "Druid" ..WHITE.. " - Tank";
		[1] = { itemID = 13437, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.51%" }; --Cenarion Cover
		[2] = { itemID = 13439, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "19.52%" }; --Cenarion Pauldrons
		[3] = { itemID = 13436, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "15.21%" }; --Cenarion Tunic
		[4] = { itemID = 13434, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.17%" }; --Cenarion Bands
		[5] = { itemID = 13435, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "19.53%" }; --Cenarion Handguards
		[6] = { itemID = 13432, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Cenarion Girdle
		[7] = { itemID = 13438, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "12.90%" }; --Cenarion Pants
		[8] = { itemID = 13433, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "10.72%" }; --Cenarion Treads
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16846, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.57%" }; --Giantstalker's Helmet
		[2] = { itemID = 16848, desc = "=ds=" .. BabbleBoss["Sulfuron Harbinger"], droprate = "19.64%" }; --Giantstalker's Epaulets
		[3] = { itemID = 16845, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "15.83%" }; --Giantstalker's Breastplate
		[4] = { itemID = 16850, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.18%" }; --Giantstalker's Bracers
		[5] = { itemID = 16852, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "18.58%" }; --Giantstalker's Gloves
		[6] = { itemID = 16851, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.17%" }; --Giantstalker's Belt
		[7] = { itemID = 16847, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "13.28%" }; --Giantstalker's Leggings
		[8] = { itemID = 16849, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "14.54%" }; --Giantstalker's Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16795, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.31%" }; --Arcanist Crown
		[2] = { itemID = 16797, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "19.92%" }; --Arcanist Mantle
		[3] = { itemID = 16798, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "16.51%" }; --Arcanist Robes
		[4] = { itemID = 16799, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Arcanist Bindings
		[5] = { itemID = 16801, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "19.59%" }; --Arcanist Gloves
		[6] = { itemID = 16802, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Arcanist Belt
		[7] = { itemID = 16796, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "14.57%" }; --Arcanist Leggings
		[8] = { itemID = 16800, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "12.06%" }; --Arcanist Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Holy"];
		[1] = { itemID = 16854, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "7.23%" }; --Lawbringer Helm
		[2] = { itemID = 16856, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "12.62%" }; --Lawbringer Spaulders
		[3] = { itemID = 16853, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "9.53%" }; --Lawbringer Chestguard
		[4] = { itemID = 16857, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.11%" }; --Lawbringer Bracers
		[5] = { itemID = 16860, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "11.77%" }; --Lawbringer Gauntlets
		[6] = { itemID = 16858, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.10%" }; --Lawbringer Belt
		[7] = { itemID = 16855, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "8.54%" }; --Lawbringer Legplates
		[8] = { itemID = 16859, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "7.20%" }; --Lawbringer Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Protection"];
		[1] = { itemID = 11536, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "7.23%" }; --Lawbringer Greathelm
		[2] = { itemID = 11538, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "12.62%" }; --Lawbringer Pauldrons
		[3] = { itemID = 11535, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "9.53%" }; --Lawbringer Breastplate
		[4] = { itemID = 11531, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.11%" }; --Lawbringer Wristguards
		[5] = { itemID = 11533, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "11.77%" }; --Lawbringer Handguards
		[6] = { itemID = 11534, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.10%" }; --Lawbringer Waistguard
		[7] = { itemID = 11537, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "8.54%" }; --Lawbringer Legguards
		[8] = { itemID = 11532, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "7.20%" }; --Lawbringer Stompers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 16813, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.36%" }; --Circlet of Prophecy
		[2] = { itemID = 16816, desc = "=ds=" .. BabbleBoss["Sulfuron Harbinger"], droprate = "21.06%" }; --Mantle of Prophecy
		[3] = { itemID = 16815, "=q4=Robes of Prophecy", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16819, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Vambraces of Prophecy
		[5] = { itemID = 16812, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "18.65%" }; --Gloves of Prophecy
		[6] = { itemID = 16817, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.18%" }; --Girdle of Prophecy
		[7] = { itemID = 16814, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "14.33%" }; --Pants of Prophecy
		[8] = { itemID = 16811, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "14.90%" }; --Boots of Prophecy
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16821, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "10.38%" }; --Nightslayer Cover
		[2] = { itemID = 16823, desc = "=ds=" .. BabbleBoss["Sulfuron Harbinger"], droprate = "20.66%" }; --Nightslayer Shoulder Pads
		[3] = { itemID = 16820, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "16.76%" }; --Nightslayer Chestpiece
		[4] = { itemID = 16825, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.17%" }; --Nightslayer Bracelets
		[5] = { itemID = 16826, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "19.47%" }; --Nightslayer Gloves
		[6] = { itemID = 16827, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.15%" }; --Nightslayer Belt
		[7] = { itemID = 16822, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "13.83%" }; --Nightslayer Pants
		[8] = { itemID = 16824, desc = "=ds=" .. BabbleBoss["Shazzrah"], droprate = "15.58%" }; --Nightslayer Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Restoration"];
		[1] = { itemID = 16842, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "3.91%" }; --Earthfury Helmet
		[2] = { itemID = 16844, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "7.29%" }; --Earthfury Epaulets
		[3] = { itemID = 16841, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "6.08%" }; --Earthfury Vestments
		[4] = { itemID = 16840, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.06%" }; --Earthfury Bracers
		[5] = { itemID = 16839, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "7.38%" }; --Earthfury Gauntlets
		[6] = { itemID = 16838, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.07%" }; --Earthfury Belt
		[7] = { itemID = 16843, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "4.73%" }; --Earthfury Legguards
		[8] = { itemID = 16837, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "4.16%" }; --Earthfury Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Enhancement"];
		[1] = { itemID = 11794, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "3.91%" }; --Earthfury Cover
		[2] = { itemID = 11796, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "7.29%" }; --Earthfury Pauldrons
		[3] = { itemID = 11792, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"], droprate = "6.08%" }; --Earthfury Tunic
		[4] = { itemID = 11793, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.06%" }; --Earthfury Bands
		[5] = { itemID = 11791, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "7.38%" }; --Earthfury Gloves
		[6] = { itemID = 11790, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.07%" }; --Earthfury Girdle
		[7] = { itemID = 11789, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "4.73%" }; --Earthfury Leggings
		[8] = { itemID = 11795, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "4.16%" }; --Earthfury Treads
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16808, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "10.62%" }; --Felheart Horns
		[2] = { itemID = 16807, desc = "=ds=" .. BabbleBoss["Baron Geddon"], droprate = "19.78%" }; --Felheart Shoulder Pads
		[3] = { itemID = 16809, "=q4=Felheart Robes", "=ds=" .. BabbleBoss["Golemagg the Incinerator"] };
		[4] = { itemID = 16804, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Felheart Bracers
		[5] = { itemID = 16805, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "14.89%" }; --Felheart Gloves
		[6] = { itemID = 16806, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.19%" }; --Felheart Belt
		[7] = { itemID = 16810, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "13.75%" }; --Felheart Pants
		[8] = { itemID = 16803, "=q4=Felheart Slippers", "=ds=" .. BabbleBoss["Shazzrah"], "1" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 16866, desc = "=ds=" .. BabbleBoss["Garr"], droprate = "11.39%" }; --Helm of Might
		[2] = { itemID = 16868, desc = "=ds=" .. BabbleBoss["Sulfuron Harbinger"], droprate = "21.14%" }; --Pauldrons of Might
		[3] = { itemID = 16865, "=q4=Breastplate of Might", "=ds=" .. BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16861, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Bracers of Might
		[5] = { itemID = 16863, desc = "=ds=" .. BabbleBoss["Lucifron"], droprate = "16.40%" }; --Gauntlets of Might
		[6] = { itemID = 16864, desc = "=ds=" .. AL["Trash Mobs"], droprate = "0.16%" }; --Belt of Might
		[7] = { itemID = 16867, desc = "=ds=" .. BabbleBoss["Magmadar"], droprate = "13.97%" }; --Legplates of Might
		[8] = { itemID = 16862, desc = "=ds=" .. BabbleBoss["Gehennas"], droprate = "14.48%" }; --Sabatons of Might
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10480, desc = "=ds=" .. BabbleBoss["Garr"] };--Faceguard of Might
		[2] = { itemID = 10481, desc = "=ds=" .. BabbleBoss["Sulfuron Harbinger"] };--Shoulderpads of Might
		[3] = { itemID = 10482, desc = "=ds=" .. BabbleBoss["Golemagg the Incinerator"] };--Chesttplate of Might
		[4] = { itemID = 10483, desc = "=ds=" .. AL["Trash Mobs"] };--Wristguards of Might
		[5] = { itemID = 10484, desc = "=ds=" .. BabbleBoss["Lucifron"] };--Handguards of Might
		[6] = { itemID = 10485, desc = "=ds=" .. AL["Trash Mobs"] };--Girdle of Might
		[7] = { itemID = 10486, desc = "=ds=" .. BabbleBoss["Magmadar"] };--Legguards of Might
		[8] = { itemID = 10487, desc = "=ds=" .. BabbleBoss["Gehennas"] };--Stompers of Might
	};
};

-- T2 Sets
AtlasLoot_Data["T2"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Tier 2";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		[1] = { itemID = 16900, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 16902, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 16897, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 16904, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 16899, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 16903, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 16901, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 16898, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = AL["Druid"] .. WHITE.." - Tank";
		[1] = { itemID = 1516900, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 1516902, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 1516897, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 1516904, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 1516904, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 1516899, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 1516903, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 1516898, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = AL["Druid"] .. WHITE.." - DPS";
		[1] = { itemID = 1516892, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 1516894, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 1516889, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 1516896, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 1516891, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 1516895, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 1516893, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 1516890, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16939, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Dragonstalker's Helm
		[2] = { itemID = 16937, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Dragonstalker's Spaulders
		[3] = { itemID = 16942, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Dragonstalker's Breastplate
		[4] = { itemID = 16935, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Dragonstalker's Bracers
		[5] = { itemID = 16940, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Dragonstalker's Gauntlets
		[6] = { itemID = 16936, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Dragonstalker's Belt
		[7] = { itemID = 16938, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Dragonstalker's Legguards
		[8] = { itemID = 16941, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Dragonstalker's Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16914, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Netherwind Crown
		[2] = { itemID = 16917, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Netherwind Mantle
		[3] = { itemID = 16916, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Netherwind Robes
		[4] = { itemID = 16918, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Netherwind Bindings
		[5] = { itemID = 16913, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Netherwind Gloves
		[6] = { itemID = 16818, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Netherwind Belt
		[7] = { itemID = 16915, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Netherwind Pants
		[8] = { itemID = 16912, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Netherwind Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 16955, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Judgement Crown
		[2] = { itemID = 16953, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Judgement Spaulders
		[3] = { itemID = 16958, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Judgement Breastplate
		[4] = { itemID = 16951, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Judgement Bindings
		[5] = { itemID = 16956, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Judgement Gauntlets
		[6] = { itemID = 16952, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Judgement Belt
		[7] = { itemID = 16954, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Judgement Legplates
		[8] = { itemID = 16957, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Judgement Sabatons
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - Tank";
		[1] = { itemID = 1516955, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Judgement Crown
		[2] = { itemID = 1516953, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Judgement Spaulders
		[3] = { itemID = 1516958, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Judgement Breastplate
		[4] = { itemID = 1516951, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Judgement Bindings
		[5] = { itemID = 1516956, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Judgement Gauntlets
		[6] = { itemID = 1516952, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Judgement Belt
		[7] = { itemID = 1516954, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Judgement Legplates
		[8] = { itemID = 1516957, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Judgement Sabatons
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 16921, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Halo of Transcendence
		[2] = { itemID = 16924, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Pauldrons of Transcendence
		[3] = { itemID = 16923, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Robes of Transcendence
		[4] = { itemID = 16926, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bindings of Transcendence
		[5] = { itemID = 16920, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Handguards of Transcendence
		[6] = { itemID = 16925, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Transcendence
		[7] = { itemID = 16922, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Leggings of Transcendence
		[8] = { itemID = 16919, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Boots of Transcendence
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - DPS";
		[1] = { itemID = 1516921, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Halo of Transcendence
		[2] = { itemID = 1516924, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Pauldrons of Transcendence
		[3] = { itemID = 1516923, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Robes of Transcendence
		[4] = { itemID = 1516926, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bindings of Transcendence
		[5] = { itemID = 1516920, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Handguards of Transcendence
		[6] = { itemID = 1516925, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Transcendence
		[7] = { itemID = 1516922, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Leggings of Transcendence
		[8] = { itemID = 1516919, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Boots of Transcendence
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16908, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Bloodfang Hood
		[2] = { itemID = 16832, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Bloodfang Spaulders
		[3] = { itemID = 16905, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Bloodfang Chestpiece
		[4] = { itemID = 16911, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bloodfang Bracers
		[5] = { itemID = 16907, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Bloodfang Gloves
		[6] = { itemID = 16910, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Bloodfang Belt
		[7] = { itemID = 16909, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Bloodfang Pants
		[8] = { itemID = 16906, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Bloodfang Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { itemID = 16947, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Helmet of Ten Storms
		[2] = { itemID = 16945, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Epaulets of Ten Storms
		[3] = { itemID = 16950, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Breastplate of Ten Storms
		[4] = { itemID = 16943, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bracers of Ten Storms
		[5] = { itemID = 16948, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Gauntlets of Ten Storms
		[6] = { itemID = 16944, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Ten Storms
		[7] = { itemID = 16946, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Legplates of Ten Storms
		[8] = { itemID = 16949, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Greaves of Ten Storms
	};
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		[1] = { itemID = 1516947, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Helmet of Ten Storms
		[2] = { itemID = 1516945, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Epaulets of Ten Storms
		[3] = { itemID = 1516950, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Breastplate of Ten Storms
		[4] = { itemID = 1516943, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bracers of Ten Storms
		[5] = { itemID = 1516948, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Gauntlets of Ten Storms
		[6] = { itemID = 1516944, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Ten Storms
		[7] = { itemID = 1516946, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Legplates of Ten Storms
		[8] = { itemID = 1516949, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Greaves of Ten Storms
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16929, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Nemesis Skullcap
		[2] = { itemID = 16932, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Nemesis Spaulders
		[3] = { itemID = 16931, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Nemesis Robes
		[4] = { itemID = 16934, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Nemesis Bracers
		[5] = { itemID = 16928, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Nemesis Gloves
		[6] = { itemID = 16933, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Nemesis Belt
		[7] = { itemID = 16930, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Nemesis Leggings
		[8] = { itemID = 16927, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Nemesis Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10904, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Faceguard of Wrath
		[2] = { itemID = 10902, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Shoulderpads of Wrath
		[3] = { itemID = 10907, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Chestplate of Wrath
		[4] = { itemID = 10900, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Wristguards of Wrath
		[5] = { itemID = 10905, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Grippers of Wrath
		[6] = { itemID = 10901, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Wrath
		[7] = { itemID = 10903, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Legguards of Wrath
		[8] = { itemID = 10906, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Stompers of Wrath
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 16963, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Helm of Wrath
		[2] = { itemID = 16961, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Pauldrons of Wrath
		[3] = { itemID = 16966, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Breastplate of Wrath
		[4] = { itemID = 16959, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Bracelets of Wrath
		[5] = { itemID = 16964, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Gauntlets of Wrath
		[6] = { itemID = 16960, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Waistband of Wrath
		[7] = { itemID = 16962, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Legplates of Wrath
		[8] = { itemID = 16965, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Sabatons of Wrath
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 1516963, desc = "=ds=" .. BabbleBoss["Onyxia"] };--Faceguard of Wrath
		[2] = { itemID = 1516961, desc = "=ds=" .. BabbleBoss["Chromaggus"] };--Shoulderpads of Wrath
		[3] = { itemID = 1516966, desc = "=ds=" .. BabbleBoss["Nefarian"] };--Chestplate of Wrath
		[4] = { itemID = 1516959, desc = "=ds=" .. BabbleBoss["Razorgore the Untamed"] };--Wristguards of Wrath
		[5] = { itemID = 1516964, desc = BabbleBoss["Firemaw"] .. ", " .. BabbleBoss["Ebonroc"] .. ", " .. BabbleBoss["Flamegor"] };--Grippers of Wrath
		[6] = { itemID = 1516960, desc = "=ds=" .. BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Wrath
		[7] = { itemID = 1516962, desc = "=ds=" .. BabbleBoss["Ragnaros"] };--Legguards of Wrath
		[8] = { itemID = 1516965, desc = "=ds=" .. BabbleBoss["Broodlord Lashlayer"] };--Stompers of Wrath
	};
};

------------------------
--- Tier 3 Sets (T3) ---
------------------------

AtlasLoot_Data["T3"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Tier 3";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"] .. WHITE.." - Healing";
		[1] = { itemID = 22490 }; --Dreamwalker Headpiece
		[2] = { itemID = 22491 }; --Dreamwalker Spaulders
		[3] = { itemID = 22488 }; --Dreamwalker Tunic
		[4] = { itemID = 22495 }; --Dreamwalker Wristguards
		[5] = { itemID = 22493 }; --Dreamwalker Handguards
		[6] = { itemID = 22494 }; --Dreamwalker Girdle
		[7] = { itemID = 22489 }; --Dreamwalker Legguards
		[8] = { itemID = 22492 }; --Dreamwalker Boots
		[9] = { itemID = 23064 }; --Ring of the Dreamwalker
	};
	{
		Name = AL["Druid"] .. WHITE.." - Haste";
		[1] = { itemID = 1522490 }; --Dreamwalker Headpiece
		[2] = { itemID = 1522491 }; --Dreamwalker Spaulders
		[3] = { itemID = 1522488 }; --Dreamwalker Tunic
		[4] = { itemID = 1522495 }; --Dreamwalker Wristguards
		[5] = { itemID = 1522493 }; --Dreamwalker Handguards
		[6] = { itemID = 1522494 }; --Dreamwalker Girdle
		[7] = { itemID = 1522489 }; --Dreamwalker Legguards
		[8] = { itemID = 1522492 }; --Dreamwalker Boots
		[9] = { itemID = 1523064 }; --Ring of the Dreamwalker
	};
	{
		Name = AL["Druid"] .. WHITE.." - Feral Dps";
		[1] = { itemID = 1532490 }; --Dreamwalker Headpiece
		[2] = { itemID = 1532491 }; --Dreamwalker Spaulders
		[3] = { itemID = 1532488 }; --Dreamwalker Tunic
		[4] = { itemID = 1532495 }; --Dreamwalker Wristguards
		[5] = { itemID = 1532493 }; --Dreamwalker Handguards
		[6] = { itemID = 1532494 }; --Dreamwalker Girdle
		[7] = { itemID = 1532489 }; --Dreamwalker Legguards
		[8] = { itemID = 1532492 }; --Dreamwalker Boots
		[9] = { itemID = 1533064 }; --Ring of the Dreamwalker
	};
	{
		Name = AL["Druid"] .. WHITE.." - Tank";
		[1] = { itemID = 1507037 }; --Dreamwalker Headpiece
		[2] = { itemID = 1507038 }; --Dreamwalker Spaulders
		[3] = { itemID = 1507035 }; --Dreamwalker Tunic
		[4] = { itemID = 1507042 }; --Dreamwalker Wristguards
		[5] = { itemID = 1507040 }; --Dreamwalker Handguards
		[6] = { itemID = 1507041 }; --Dreamwalker Girdle
		[7] = { itemID = 1507036 }; --Dreamwalker Legguards
		[8] = { itemID = 1507039 }; --Dreamwalker Boots
		[9] = { itemID = 1507043 }; --Ring of the Dreamwalker
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 22438 }; --Cryptstalker Headpiece
		[2] = { itemID = 22439 }; --Cryptstalker Spaulders
		[3] = { itemID = 22436 }; --Cryptstalker Tunic
		[4] = { itemID = 22443 }; --Cryptstalker Wristguards
		[5] = { itemID = 22441 }; --Cryptstalker Handguards
		[6] = { itemID = 22442 }; --Cryptstalker Girdle
		[7] = { itemID = 22437 }; --Cryptstalker Legguards
		[8] = { itemID = 22440 }; --Cryptstalker Boots
		[9] = { itemID = 23067 }; --Ring of the Cryptstalker
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 22498 }; --Frostfire Circlet
		[2] = { itemID = 22499 }; --Frostfire Shoulderpads
		[3] = { itemID = 22496 }; --Frostfire Robe
		[4] = { itemID = 22503 }; --Frostfire Bindings
		[5] = { itemID = 22501 }; --Frostfire Gloves
		[6] = { itemID = 22502 }; --Frostfire Belt
		[7] = { itemID = 22497 }; --Frostfire Leggings
		[8] = { itemID = 22500 }; --Frostfire Sandals
		[9] = { itemID = 23062 }; --Frostfire Ring
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. WHITE.. " - Healing";
		[1] = { itemID = 22428 }; --Redemption Headpiece
		[2] = { itemID = 22429 }; --Redemption Spaulders
		[3] = { itemID = 22425 }; --Redemption Tunic
		[4] = { itemID = 22424 }; --Redemption Wristguards
		[5] = { itemID = 22426 }; --Redemption Handguards
		[6] = { itemID = 22431 }; --Redemption Girdle
		[7] = { itemID = 22427 }; --Redemption Legguards
		[8] = { itemID = 22430 }; --Redemption Boots
		[9] = { itemID = 23066 }; --Ring of Redemption
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. WHITE.. " - Dps";
		[1] = { itemID = 1532428 }; --Redemption Headpiece
		[2] = { itemID = 1532429 }; --Redemption Spaulders
		[3] = { itemID = 1532425 }; --Redemption Tunic
		[4] = { itemID = 1532424 }; --Redemption Wristguards
		[5] = { itemID = 1532426 }; --Redemption Handguards
		[6] = { itemID = 1532431 }; --Redemption Girdle
		[7] = { itemID = 1532427 }; --Redemption Legguards
		[8] = { itemID = 1532430 }; --Redemption Boots
		[9] = { itemID = 1533066 }; --Ring of Redemption
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. WHITE.. " - Tank";
		[1] = { itemID = 1522428 }; --Redemption Headpiece
		[2] = { itemID = 1522429 }; --Redemption Spaulders
		[3] = { itemID = 1522425 }; --Redemption Tunic
		[4] = { itemID = 1522424 }; --Redemption Wristguards
		[5] = { itemID = 1522426 }; --Redemption Handguards
		[6] = { itemID = 1522431 }; --Redemption Girdle
		[7] = { itemID = 1522427 }; --Redemption Legguards
		[8] = { itemID = 1522430 }; --Redemption Boots
		[9] = { itemID = 1523066 }; --Ring of Redemption
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. WHITE.. " - Healing";
		[1] = { itemID = 22514 }; --Circlet of Faith
		[2] = { itemID = 22515 }; --Shoulderpads of Faith
		[3] = { itemID = 22512 }; --Robe of Faith
		[4] = { itemID = 22519 }; --Bindings of Faith
		[5] = { itemID = 22517 }; --Gloves of Faith
		[6] = { itemID = 22518 }; --Belt of Faith
		[7] = { itemID = 22513 }; --Leggings of Faith
		[8] = { itemID = 22516 }; --Sandals of Faith
		[9] = { itemID = 23061 }; --Ring of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. WHITE.. " - Dps";
		[1] = { itemID = 1522514 }; --Circlet of Faith
		[2] = { itemID = 1522515 }; --Shoulderpads of Faith
		[3] = { itemID = 1522512 }; --Robe of Faith
		[4] = { itemID = 1522519 }; --Bindings of Faith
		[5] = { itemID = 1522517 }; --Gloves of Faith
		[6] = { itemID = 1522518 }; --Belt of Faith
		[7] = { itemID = 1522513 }; --Leggings of Faith
		[8] = { itemID = 1522516 }; --Sandals of Faith
		[9] = { itemID = 1523061 }; --Ring of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 22478 }; --Bonescythe Helmet
		[2] = { itemID = 22479 }; --Bonescythe Pauldrons
		[3] = { itemID = 22476 }; --Bonescythe Breastplate
		[4] = { itemID = 22483 }; --Bonescythe Bracers
		[5] = { itemID = 22481 }; --Bonescythe Gauntlets
		[6] = { itemID = 22482 }; --Bonescythe Waistguard
		[7] = { itemID = 22477 }; --Bonescythe Legplates
		[8] = { itemID = 22480 }; --Bonescythe Sabatons
		[9] = { itemID = 23060 }; --Bonescythe Ring
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. WHITE.. " - Enhancement";
		[1] = { itemID = 22466 }; --Earthshatter Headpiece
		[2] = { itemID = 22467 }; --Earthshatter Spaulders
		[3] = { itemID = 22464 }; --Earthshatter Tunic
		[4] = { itemID = 22471 }; --Earthshatter Wristguards
		[5] = { itemID = 22469 }; --Earthshatter Handguards
		[6] = { itemID = 22470 }; --Earthshatter Girdle
		[7] = { itemID = 22465 }; --Earthshatter Legguards
		[8] = { itemID = 22468 }; --Earthshatter Boots
		[9] = { itemID = 23065 }; --Ring of the Earthshatterer
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. WHITE.. " - Spell";
		[1] = { itemID = 1522466 }; --Earthshatter Headpiece
		[2] = { itemID = 1522467 }; --Earthshatter Spaulders
		[3] = { itemID = 1522464 }; --Earthshatter Tunic
		[4] = { itemID = 1522471 }; --Earthshatter Wristguards
		[5] = { itemID = 1522469 }; --Earthshatter Handguards
		[6] = { itemID = 1522470 }; --Earthshatter Girdle
		[7] = { itemID = 1522465 }; --Earthshatter Legguards
		[8] = { itemID = 1522468 }; --Earthshatter Boots
		[9] = { itemID = 1523065 }; --Ring of the Earthshatterer
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 22506 }; --Plagueheart Circlet
		[2] = { itemID = 22507 }; --Plagueheart Shoulderpads
		[3] = { itemID = 22504 }; --Plagueheart Robe
		[4] = { itemID = 22511 }; --Plagueheart Bindings
		[5] = { itemID = 22509 }; --Plagueheart Gloves
		[6] = { itemID = 22510 }; --Plagueheart Belt
		[7] = { itemID = 22505 }; --Plagueheart Leggings
		[8] = { itemID = 22508 }; --Plagueheart Sandals
		[9] = { itemID = 23063 }; --Plagueheart Ring
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. WHITE.. " - Block Tank";
		[1] = { itemID = 22418 }; --Dreadnaught Helmet
		[2] = { itemID = 22419 }; --Dreadnaught Pauldrons
		[3] = { itemID = 22416 }; --Dreadnaught Breastplate
		[4] = { itemID = 22423 }; --Dreadnaught Bracers
		[5] = { itemID = 22421 }; --Dreadnaught Gauntlets
		[6] = { itemID = 22422 }; --Dreadnaught Waistguard
		[7] = { itemID = 22417 }; --Dreadnaught Legplates
		[8] = { itemID = 22420 }; --Dreadnaught Sabatons
		[9] = { itemID = 23059 }; --Ring of the Dreadnaught
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. WHITE.. " - Parry Tank";
		[1] = { itemID = 1522418 }; --Dreadnaught Helmet
		[2] = { itemID = 1522419 }; --Dreadnaught Pauldrons
		[3] = { itemID = 1522416 }; --Dreadnaught Breastplate
		[4] = { itemID = 1522423 }; --Dreadnaught Bracers
		[5] = { itemID = 1522421 }; --Dreadnaught Gauntlets
		[6] = { itemID = 1522422 }; --Dreadnaught Waistguard
		[7] = { itemID = 1522417 }; --Dreadnaught Legplates
		[8] = { itemID = 1522420 }; --Dreadnaught Sabatons
		[9] = { itemID = 1523059 }; --Ring of the Dreadnaught
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. WHITE.. " - DPS";
		[1] = { itemID = 10490 }; --Dreadborne Helmet
		[2] = { itemID = 10491 }; --Dreadborne Pauldrons
		[3] = { itemID = 10488 }; --Dreadborne Breastplate
		[4] = { itemID = 10495 }; --Dreadborne Bracers
		[5] = { itemID = 10493 }; --Dreadborne Gauntlets
		[6] = { itemID = 10494 }; --Dreadborne Waistguard
		[7] = { itemID = 10489 }; --Dreadborne Legplates
		[8] = { itemID = 10492 }; --Dreadborne Sabatons
		[9] = { itemID = 10496 }; --Dreadborne Ring
	};
};

------------------------
--- Vanilla WoW Sets ---
------------------------

AtlasLoot_Data["ClassicSets"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["Classic Sets"];
	{
		Name = AL["Defias Leather"];
		[1] = { itemID = 10399, desc = "=ds==q2=#n6#", droprate = "14.77%" }; --Blackened Defias Armor
		[2] = { itemID = 10401, desc = "=ds==q2=#n9#", droprate = "1.76%" }; --Blackened Defias Gloves
		[3] = { itemID = 10403, desc = "=ds==q2=#n7#", droprate = "23.26%" }; --Blackened Defias Belt
		[4] = { itemID = 10400, desc = "=ds==q2=#n9#", droprate = "1.64%" }; --Blackened Defias Leggings
		[5] = { itemID = 10402, desc = "=ds==q2=#n8#", droprate = "1.23%" }; --Blackened Defias Boots
	};
	{
		Name = AL["Embrace of the Viper"];
		[1] = { itemID = 6473, desc = "=ds==q2=#n5#", droprate = "52.05%" }; --Armor of the Fang
		[2] = { itemID = 10413, desc = "=ds==q2=#n4#", droprate = "1.20%" }; --Gloves of the Fang
		[3] = { itemID = 10412, desc = "=ds==q2=#n2#", droprate = "8.64%" }; --Belt of the Fang
		[4] = { itemID = 10410, desc = "=ds==q2=#n1#", droprate = "16.03%" }; --Leggings of the Fang
		[5] = { itemID = 10411, desc = "=ds==q2=#n3#", droprate = "19.08%" }; --Footpads of the Fang
	};
	{
		Name = AL["Chain of the Scarlet Crusade"];
		[1] = { itemID = 10328, desc = "=ds==q2=#n12#", droprate = "0.3%" }; --Scarlet Chestpiece
		[2] = { itemID = 10333, desc = "=ds==q2=#n15#", droprate = "1.6%" }; --Scarlet Wristguards
		[3] = { itemID = 10331, desc = "=ds==q2=#n13#", droprate = "1.7%" }; --Scarlet Gauntlets
		[4] = { itemID = 10329, desc = "=ds==q2=#n10#", droprate = "1.6%" }; --Scarlet Belt
		[5] = { itemID = 10330, desc = "=ds==q2=#n14#", droprate = "13.2%" }; --Scarlet Leggings
		[6] = { itemID = 10332, desc = "=ds==q2=#n11#", droprate = "0.1%" }; --Scarlet Boots
	};
	{
		Name = AL["The Gladiator"];
		[1] = { itemID = 11729, desc = "=ds==q2=#brd3#, #brd5#", droprate = "10.08%" }; --Savage Gladiator Helm
		[2] = { itemID = 11726, desc = "=ds==q2=#brd3#", droprate = "14.52%" }; --Savage Gladiator Chain
		[3] = { itemID = 11730, desc = "=ds==q2=#brd2#", droprate = "14.12%" }; --Savage Gladiator Grips
		[4] = { itemID = 11728, desc = "=ds==q2=#brd6#", droprate = "14.95%" }; --Savage Gladiator Leggings
		[5] = { itemID = 11731, desc = "=ds==q2=#brd1#", droprate = "15.14%" }; --Savage Gladiator Greaves
	};
	{
		Name = AL["Ironweave Battlesuit"];
		[1] = { itemID = 22302, desc = "=ds==q2=#n16# (#z9#)", droprate = "27.72%" }; --Ironweave Cowl
		[2] = { itemID = 22305, desc = "=ds==q2=#n17# (#z4#)", droprate = "30.39%" }; --Ironweave Mantle
		[3] = { itemID = 22301, desc = "=ds==q2=#n18# (#z6#)", droprate = "19.00%" }; --Ironweave Robe
		[4] = { itemID = 22313, desc = "=ds==q2=#n19# (#z10#)", droprate = "18.16%" }; --Ironweave Bracers
		[5] = { itemID = 22304, desc = "=ds==q2=#n20# (#z13#)", droprate = "16.24%" }; --Ironweave Gloves
		[6] = { itemID = 22306, desc = "=ds==q2=#n21# (#z10#)", droprate = "20.28%" }; --Ironweave Belt
		[7] = { itemID = 22303, desc = "=ds==q2=#n22# (#z5#)", droprate = "23.33%" }; --Ironweave Pants
		[8] = { itemID = 22311, desc = "=ds==q2=#n23# (#z9#)", droprate = "12.31%" }; --Ironweave Boots
	};
	{
		Name = AL["The Postmaster"];
		[1] = { itemID = 13390 }; --The Postmaster's Band
		[2] = { itemID = 13388 }; --The Postmaster's Tunic
		[3] = { itemID = 13389 }; --The Postmaster's Trousers
		[4] = { itemID = 13391 }; --The Postmaster's Treads
		[5] = { itemID = 13392 }; --The Postmaster's Seal
	};
	{
		Name = AL["Shard of the Gods"];
		[1] = { itemID = 17082, desc = "=ds==q2=#n35# (#z14#)", droprate = "4.46%" }; --Shard of the Flame
		[2] = { itemID = 17064, desc = "=ds==q2=#n36# (#z15#)", droprate = "3.71%" }; --Shard of the Scale
	};
	{
		Name = AL["Spirit of Eskhandar"];
		[1] = { itemID = 18204, droprate = "9.16%" }; --Eskhandar's Pelt
		[2] = { itemID = 18203, droprate = "16.97%" }; --Eskhandar's Right Claw
		[3] = { itemID = 18202, droprate = "12.36%" }; --Eskhandar's Left Claw
	};
	{
		Name = AL["Spider's Kiss"];
		[1] = { itemID = 13218, droprate = "15.46%" }; --Fang of the Crystal Spider
		[2] = { itemID = 13183, droprate = "13.07%" }; --Venomspitter
	};
	{
		Name = AL["Dal'Rend's Arms"];
		[1] = { itemID = 12940, droprate = "6.62%" }; --Dal'Rend's Sacred Charge
		[2] = { itemID = 12939, droprate = "7.44%" }; --Dal'Rend's Tribal Guardian
	};
	{
		Name = AL["Necropile Raiment"];
		[1] = { itemID = 14633, droprate = "1.12%" }; --Necropile Mantle
		[2] = { itemID = 14626, droprate = "1.27%" }; --Necropile Robe
		[3] = { itemID = 14629, droprate = "1.03%" }; --Necropile Cuffs
		[4] = { itemID = 14632, droprate = "0.85%" }; --Necropile Leggings
		[5] = { itemID = 14631, droprate = "0.88%" }; --Necropile Boots
	};
	{
		Name = AL["Cadaverous Garb"];
		[1] = { itemID = 14637, droprate = "1.51%" }; --Cadaverous Armor
		[2] = { itemID = 14640, droprate = "0.82%" }; --Cadaverous Gloves
		[3] = { itemID = 14636, droprate = "0.60%" }; --Cadaverous Belt
		[4] = { itemID = 14638, droprate = "1.09%" }; --Cadaverous Leggings
		[5] = { itemID = 14641, droprate = "0.67%" }; --Cadaverous Walkers
	};
	{
		Name = AL["Bloodmail Regalia"];
		[1] = { itemID = 14611, droprate = "0.54%" }; --Bloodmail Hauberk
		[2] = { itemID = 14615, droprate = "0.09%" }; --Bloodmail Gauntlets
		[3] = { itemID = 14614, droprate = "0.60%" }; --Bloodmail Belt
		[4] = { itemID = 14612, droprate = "0.42%" }; --Bloodmail Legguards
		[5] = { itemID = 14616, droprate = "0.36%" }; --Bloodmail Boots
	};
	{
		Name = AL["Deathbone Guardian"];
		[1] = { itemID = 14624, droprate = "0.45%" }; --Deathbone Chestplate
		[2] = { itemID = 14622, droprate = "0.45%" }; --Deathbone Gauntlets
		[3] = { itemID = 14620, droprate = "0.67%" }; --Deathbone Girdle
		[4] = { itemID = 14623, droprate = "1.12%" }; --Deathbone Legguards
		[5] = { itemID = 14621, droprate = "0.57%" }; --Deathbone Sabatons
	};
	{
		Name = AL["Major Mojo Infusion"];
		[1] = { itemID = 19898, droprate = "8.81%" }; --Seal of Jin
		[2] = { itemID = 19925, droprate = "10.36%" }; --Band of Jin
	};
	{
		Name = AL["Overlord's Resolution"];
		[1] = { itemID = 19873, droprate = "10.12%" }; --Overlord's Crimson Band
		[2] = { itemID = 19912, droprate = "14.51%" }; --Overlord's Onyx Band
	};
	{
		Name = AL["Primal Blessing"];
		[1] = { itemID = 19896, droprate = "5.20%" }; --Thekal's Grasp
		[2] = { itemID = 19910, droprate = "4.54%" }; --Arlokk's Grasp
	};
	{
		Name = AL["Prayer of the Primal"];
		[1] = { itemID = 19863, droprate = "9.72%" }; --Primalist's Seal
		[2] = { itemID = 19920, droprate = "8.95%" }; --Primalist's Band
	};
	{
		Name = AL["Zanzil's Concentration"];
		[1] = { itemID = 19905, droprate = "9.24%" }; --Zanzil's Band
		[2] = { itemID = 19893, droprate = "10.12%" }; --Zanzil's Seal
	};
	{
		Name = AL["The Twin Blades of Hakkari"];
		[1] = { itemID = 19865, droprate = "5.18%" }; --Warblade of the Hakkari
		[2] = { itemID = 19866, droprate = "4.55%" }; --Warblade of the Hakkari
	};
};

---------------
--- ZG Sets ---
---------------

AtlasLoot_Data["ZGSets"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["Zul'Gurub Sets"];
	Type = "ClassicRaid";
	{
		Name = AL["Haruspex's Garb"];
		[1] = { itemID = 19955 }; -- =q4=Wushoolay's Charm of Nature" 
		[2] = { itemID = 19613, desc = "=ds=#r5#" }; --Pristine Enchanted South Seas Kelp
		[3] = { itemID = 19838, desc = "=q4=#zgt9#, =ds=#r4#" }; --Zandalar Haruspex's Tunic
		[4] = { itemID = 19839, desc = "=q4=#zgt4#, =ds=#r3#" }; --Zandalar Haruspex's Belt
		[5] = { itemID = 19840, desc = "=q4=#zgt5#, =ds=#r2#" }; --Zandalar Haruspex's Bracers
	};
	{
		Name = AL["Predator's Armor"];
		[1] = { itemID = 19953 }; -- =q4=Renataki's Charm of Beasts" 
		[2] = { itemID = 19621, desc = "=ds=#r5#" }; --Maelstrom's Wrath
		[3] = { itemID = 19831, desc = "=q4=#zgt6#, =ds=#r4#" }; --Zandalar Predator's Mantle
		[4] = { itemID = 19832, desc = "=q4=#zgt2#, =ds=#r3#" }; --Zandalar Predator's Belt
		[5] = { itemID = 19833, desc = "=q4=#zgt3#, =ds=#r2#" }; --Zandalar Predator's Bracers
	};
	{
		Name = AL["Illusionist's Attire"];
		[1] = { itemID = 19959 }; -- =q4=Hazza'rah's Charm of Magic" 
		[2] = { itemID = 19601, desc = "=ds=#r5#" }; --Jewel of Kajaro
		[3] = { itemID = 20034, desc = "=q4=#zgt1#, =ds=#r4#" }; --Zandalar Illusionist's Robe
		[4] = { itemID = 19845, desc = "=q4=#zgt2#, =ds=#r3#" }; --Zandalar Illusionist's Mantle
		[5] = { itemID = 19846, desc = "=q4=#zgt3#, =ds=#r2#" }; --Zandalar Illusionist's Wraps
	};
	{
		Name = AL["Freethinker's Armor"];
		[1] = { itemID = 19952 }; -- =q4=Gri'lek's Charm of Valor" 
		[2] = { itemID = 19588, desc = "=ds=#r5#" }; --Hero's Brand
		[3] = { itemID = 19825, desc = "=q4=#zgt9#, =ds=#r4#" }; --Zandalar Freethinker's Breastplate
		[4] = { itemID = 19826, desc = "=q4=#zgt2#, =ds=#r3#" }; --Zandalar Freethinker's Belt
		[5] = { itemID = 19827, desc = "=q4=#zgt3#, =ds=#r2#" }; --Zandalar Freethinker's Armguards
	};
	{
		Name = AL["Confessor's Raiment"];
		[1] = { itemID = 19958 }; -- =q4=Hazza'rah's Charm of Healing" 
		[2] = { itemID = 19594, desc = "=ds=#r5#" }; --The All-Seeing Eye of Zuldazar
		[3] = { itemID = 19841, desc = "=q4=#zgt6#, =ds=#r4#" }; --Zandalar Confessor's Mantle
		[4] = { itemID = 19842, desc = "=q4=#zgt4#, =ds=#r3#" }; --Zandalar Confessor's Bindings
		[5] = { itemID = 19843, desc = "=q4=#zgt5#, =ds=#r2#" }; --Zandalar Confessor's Wraps
	};
	{
		Name = AL["Madcap's Outfit"];
		[1] = { itemID = 19954 }; -- =q4=Renataki's Charm of Trickery" 
		[2] = { itemID = 19617, desc = "=ds=#r5#" }; --Zandalarian Shadow Mastery Talisman
		[3] = { itemID = 19834, desc = "=q4=#zgt6#, =ds=#r4#" }; --Zandalar Madcap's Tunic
		[4] = { itemID = 19835, desc = "=q4=#zgt7#, =ds=#r3#" }; --Zandalar Madcap's Mantle
		[5] = { itemID = 19836, desc = "=q4=#zgt8#, =ds=#r2#" }; --Zandalar Madcap's Bracers
	};
	{
		Name = AL["Augur's Regalia"];
		[1] = { itemID = 19956 }; -- =q4=Wushoolay's Charm of Spirits" 
		[2] = { itemID = 19609, desc = "=ds=#r5#" }; --Unmarred Vision of Voodress
		[3] = { itemID = 19828, desc = "=q4=#zgt9#, =ds=#r4#" }; --Zandalar Augur's Hauberk
		[4] = { itemID = 19829, desc = "=q4=#zgt7#, =ds=#r3#" }; --Zandalar Augur's Belt
		[5] = { itemID = 19830, desc = "=q4=#zgt8#, =ds=#r2#" }; --Zandalar Augur's Bracers
	};
	{
		Name = AL["Demoniac's Threads"];
		[1] = { itemID = 19957 }; -- =q4=Hazza'rah's Charm of Destruction" 
		[2] = { itemID = 19605, desc = "=ds=#r5#" }; --Kezan's Unstoppable Taint
		[3] = { itemID = 20033, desc = "=q4=#zgt1#, =ds=#r4#" }; --Zandalar Demoniac's Robe
		[4] = { itemID = 19849, desc = "=q4=#zgt4#, =ds=#r3#" }; --Zandalar Demoniac's Mantle
		[5] = { itemID = 19848, desc = "=q4=#zgt5#, =ds=#r2#" }; --Zandalar Demoniac's Wraps
	};
	{
		Name = AL["Vindicator's Battlegear"];
		[1] = { itemID = 19951 }; -- =q4=Gri'lek's Charm of Might" 
		[2] = { itemID = 19577, desc = "=ds=#r5#" }; --Rage of Mugamba
		[3] = { itemID = 19822, desc = "=q4=#zgt1#, =ds=#r4#" }; --Zandalar Vindicator's Breastplate
		[4] = { itemID = 19823, desc = "=q4=#zgt7#, =ds=#r3#" }; --Zandalar Vindicator's Belt
		[5] = { itemID = 19824, desc = "=q4=#zgt8#, =ds=#r2#" }; --Zandalar Vindicator's Armguards
	};
};

-----------------
--- AQ20 Sets ---
-----------------

AtlasLoot_Data["AQ20Sets"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["AQ20 Class Sets"];
	Type = "ClassicRaid";
	{
		Name = AL["Symbols of Unending Life"];
		[1] = { itemID = 1506017, desc = "=q4=#aq20t1#, =ds=#r5#" }; --Locket of Unending Life
		[2] = { itemID = 21409, desc = "=q3=#aq20t5#, =ds=#r4#" }; --Cloak of Unending Life
		[3] = { itemID = 21408, desc = "=q3=#aq20t3#, =ds=#r3#" }; --Band of Unending Life
	};
	{
		Name = AL["Trappings of the Unseen Path"];
		[1] = { itemID = 1506018, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Choker of the Unseen Path
		[2] = { itemID = 21403, desc = "=q3=#aq20t5#, =ds=#r4#" }; --Cloak of the Unseen Path
		[3] = { itemID = 21402, desc = "=q3=#aq20t4#, =ds=#r3#" }; --Signet of the Unseen Path
	};
	{
		Name = AL["Trappings of Vaulted Secrets"];
		[1] = { itemID = 1506021, desc = "=q4=#aq20t1#, =ds=#r5#" }; --Charm of Vaulted Secrets
		[2] = { itemID = 21415, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Drape of Vaulted Secrets
		[3] = { itemID = 21414, desc = "=q3=#aq20t3#, =ds=#r3#" }; --Band of Vaulted Secrets
	};
	{
		Name = AL["Battlegear of Eternal Justice"];
		[1] = { itemID = 1506020, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Medallion of Eternal Justice
		[2] = { itemID = 21397, desc = "=q3=#aq20t5#, =ds=#r4#" }; --Cape of Eternal Justice
		[3] = { itemID = 21396, desc = "=q3=#aq20t3#, =ds=#r3#" }; --Ring of Eternal Justice
	};
	{
		Name = AL["Finery of Infinite Wisdom"];
		[1] = { itemID = 1506023, desc = "=q4=#aq20t1#, =ds=#r5#" }; --Bayadere of Infinite Wisdom
		[2] = { itemID = 21412, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Shroud of Infinite Wisdom
		[3] = { itemID = 21411, desc = "=q3=#aq20t4#, =ds=#r3#" }; --Ring of Infinite Wisdom
	};
	{
		Name = AL["Emblems of Veiled Shadows"];
		[1] = { itemID = 1506021, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Charm of Vaulted Secrets
		[2] = { itemID = 21406, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Cloak of Veiled Shadows
		[3] = { itemID = 21405, desc = "=q3=#aq20t4#, =ds=#r3#" }; --Band of Veiled Shadows
	};
	{
		Name = AL["Gift of the Gathering Storm"];
		[1] = { itemID = 1506024, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Necklace of the Gathering Storm
		[2] = { itemID = 21400, desc = "=q3=#aq20t5#, =ds=#r4#" }; --Cloak of the Gathering Storm
		[3] = { itemID = 21399, desc = "=q3=#aq20t3#, =ds=#r3#" }; --Ring of the Gathering Storm
	};
	{
		Name = AL["Implements of Unspoken Names"];
		[1] = { itemID = 1506026, desc = "=q4=#aq20t1#, =ds=#r5#" }; --Bayadere of Unspoken Names
		[2] = { itemID = 21418, desc = "=q3=#aq20t5#, =ds=#r4#" }; --Shroud of Unspoken Names
		[3] = { itemID = 21417, desc = "=q3=#aq20t4#, =ds=#r3#" }; --Ring of Unspoken Names
	};
	{
		Name = AL["Battlegear of Unyielding Strength"];
		[1] = { itemID = 1506025, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Collar of Unyielding Strength
		[2] = { itemID = 21394, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Drape of Unyielding Strength
		[3] = { itemID = 21393, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Signet of Unyielding Strength
	};
	{
		Name = AL["Keepsakes of Endless Machinations"];
		[1] = { itemID = 1506027, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Choker of Endless Machinations
		[2] = { itemID = 1506028, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Shroud of Endless Machinations
		[3] = { itemID = 1506029, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Loop of Endless Machinations
	};
	{
		Name = AL["Regalia of Roaring Earth"];
		[1] = { itemID = 1506019, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Pendant of Roaring Earth
		[2] = { itemID = 1506031, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Drape of Roaring Earth
		[3] = { itemID = 1506030, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Signet of Roaring Earth
	};
	{
		Name = AL["Relics of Ferocious Vigor"];
		[1] = { itemID = 1506034, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Choker of Ferocious Vigor
		[2] = { itemID = 1506033, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Cape of Ferocious Vigor
		[3] = { itemID = 1506032, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Signet of Ferocious Vigor
	};
	{
		Name = AL["Laurels of the Faithful Zealot"];
		[1] = { itemID = 1506037, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Locket of the Faithful Zealot
		[2] = { itemID = 1506036, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Shroud of the Faithful Zealot
		[3] = { itemID = 1506035, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Band of the Faithful Zealot
	};
	{
		Name = AL["Instruments of Masterful Technique"];
		[1] = { itemID = 1506040, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Locket of Masterful Technique
		[2] = { itemID = 1506039, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Drape of Masterful Technique
		[3] = { itemID = 1506038, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Band of Masterful Technique
	};
	{
		Name = AL["Decorations of Martial Prowess"];
		[1] = { itemID = 1506043, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Lariat of Martial Prowess
		[2] = { itemID = 1506042, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Cloak of Martial Prowess
		[3] = { itemID = 1506041, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Ring of Martial Prowess
	};
	{
		Name = AL["Trophies of Unrivaled Rage"];
		[1] = { itemID = 1506046, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Collar of Unrivaled Rage
		[2] = { itemID = 1506045, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Cloak of Unrivaled Rage
		[3] = { itemID = 1506044, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Signet of Unrivaled Rage
	};
	{
		Name = AL["Remnants of Expansive Research"];
		[1] = { itemID = 1506049, desc = "=q4=#aq20t6#, =ds=#r5#" }; --Bayadere of Expansive Research
		[2] = { itemID = 1506048, desc = "=q3=#aq20t2#, =ds=#r4#" }; --Drape of Expansive Research
		[3] = { itemID = 1506047, desc = "=q3=#aq20t3#=ds=, #r3#" }; --Loop of Expansive Research
	};
};

-----------------
--- AQ40 Sets ---
-----------------

AtlasLoot_Data["T2.5"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["AQ40 Class Sets"] .. " (Tier 2.5)";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"];
		[1] = { itemID = 21357 }; -- =q4=Genesis Vest" 
		[2] = { itemID = 21353 }; -- =q4=Genesis Helm" 
		[3] = { itemID = 21356 }; -- =q4=Genesis Trousers" 
		[4] = { itemID = 21354 }; -- =q4=Genesis Shoulderpads" 
		[5] = { itemID = 21355 }; -- =q4=Genesis Boots" 
	};
	{
		Name = AL["Druid"] .. WHITE.." - Tank";
		[1] = { itemID = 1507029 }; -- =q4=Genesis Carapace" 
		[2] = { itemID = 1507025 }; -- =q4=Genesis Mask" 
		[3] = { itemID = 1507028 }; -- =q4=Genesis Pants" 
		[4] = { itemID = 1507026 }; -- =q4=Genesis Shoulderpads" 
		[5] = { itemID = 1507027 }; -- =q4=Genesis Treads" 
	};
	{
		Name = AL["Druid"] .. WHITE.." - Feral";
		[1] = { itemID = 1507024 }; -- =q4=Genesis Garb" 
		[2] = { itemID = 1507020 }; -- =q4=Genesis Visor" 
		[3] = { itemID = 1507023 }; -- =q4=Genesis Legguards" 
		[4] = { itemID = 1507021 }; -- =q4=Genesis Pauldrons" 
		[5] = { itemID = 1507022 }; -- =q4=Genesis Footwraps" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 21370 }; -- =q4=Striker's Hauberk" 
		[2] = { itemID = 21366 }; -- =q4=Striker's Diadem" 
		[3] = { itemID = 21368 }; -- =q4=Striker's Leggings" 
		[4] = { itemID = 21367 }; -- =q4=Striker's Pauldrons" 
		[5] = { itemID = 21365 }; -- =q4=Striker's Footguards" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 21343 }; -- =q4=Enigma Robes" 
		[2] = { itemID = 21347 }; -- =q4=Enigma Circlet" 
		[3] = { itemID = 21346 }; -- =q4=Enigma Leggings" 
		[4] = { itemID = 21345 }; -- =q4=Enigma Shoulderpads" 
		[5] = { itemID = 21344 }; -- =q4=Enigma Boots" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 21389 }; -- =q4=Avenger's Breastplate" 
		[2] = { itemID = 21387 }; -- =q4=Avenger's Crown" 
		[3] = { itemID = 21390 }; -- =q4=Avenger's Legguards" 
		[4] = { itemID = 21391 }; -- =q4=Avenger's Pauldrons" 
		[5] = { itemID = 21388 }; -- =q4=Avenger's Greaves" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - Tank";
		[1] = { itemID = 1507030 }; -- =q4=Avenger's Carapace" 
		[2] = { itemID = 1507031 }; -- =q4=Avenger's Laurels" 
		[3] = { itemID = 1507033 }; -- =q4=Avenger's Legplates" 
		[4] = { itemID = 1507034 }; -- =q4=Avenger's Shoulderguards" 
		[5] = { itemID = 1507032 }; -- =q4=Avenger's Sabatons" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 21351 }; -- =q4=Vestments of the Oracle" 
		[2] = { itemID = 21348 }; -- =q4=Tiara of the Oracle" 
		[3] = { itemID = 21352 }; -- =q4=Trousers of the Oracle" 
		[4] = { itemID = 21350 }; -- =q4=Mantle of the Oracle" 
		[5] = { itemID = 21349 }; -- =q4=Footwraps of the Oracle" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 21364 }; -- =q4=Deathdealer's Vest" 
		[2] = { itemID = 21360 }; -- =q4=Deathdealer's Helm" 
		[3] = { itemID = 21362 }; -- =q4=Deathdealer's Leggings" 
		[4] = { itemID = 21361 }; -- =q4=Deathdealer's Spaulders" 
		[5] = { itemID = 21359 }; -- =q4=Deathdealer's Boots" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = { itemID = 21374 }; -- =q4=Stormcaller's Hauberk" 
		[2] = { itemID = 21372 }; -- =q4=Stormcaller's Diadem" 
		[3] = { itemID = 21375 }; -- =q4=Stormcaller's Leggings" 
		[4] = { itemID = 21376 }; -- =q4=Stormcaller's Pauldrons" 
		[5] = { itemID = 21373 }; -- =q4=Stormcaller's Footguards" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - Hybrid";
		[1] = { itemID = 1507017 }; -- =q4=Stormcaller's Chestguard" 
		[2] = { itemID = 1507015 }; -- =q4=Stormcaller's Crown" 
		[3] = { itemID = 1507018 }; -- =q4=Stormcaller's Greaves" 
		[4] = { itemID = 1507019 }; -- =q4=Stormcaller's Epaulets" 
		[5] = { itemID = 1507016 }; -- =q4=Stormcaller's Stompers" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 21334 }; -- =q4=Doomcaller's Robes" 
		[2] = { itemID = 21337 }; -- =q4=Doomcaller's Circlet" 
		[3] = { itemID = 21336 }; -- =q4=Doomcaller's Trousers" 
		[4] = { itemID = 21335 }; -- =q4=Doomcaller's Mantle" 
		[5] = { itemID = 21338 }; -- =q4=Doomcaller's Footwraps" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Tank";
		[1] = { itemID = 21331 }; -- =q4=Conqueror's Breastplate" 
		[2] = { itemID = 21329 }; -- =q4=Conqueror's Crown" 
		[3] = { itemID = 21332 }; -- =q4=Conqueror's Legguards" 
		[4] = { itemID = 21330 }; -- =q4=Conqueror's Spaulders" 
		[5] = { itemID = 21333 }; -- =q4=Conqueror's Greaves" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - Parry Tank";
		[1] = { itemID = 1507002 }; -- =q4=Conqueror's Carapace" 
		[2] = { itemID = 1507000 }; -- =q4=Conqueror's Tusks" 
		[3] = { itemID = 1507003 }; -- =q4=Conqueror's Tassets" 
		[4] = { itemID = 1507001 }; -- =q4=Conqueror's Shoulderplates" 
		[5] = { itemID = 1507004 }; -- =q4=Conqueror's Advance" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - DPS";
		[1] = { itemID = 10912 }; -- =q4=Conqueror's Chestplate" 
		[2] = { itemID = 10910 }; -- =q4=Conqueror's Headguard" 
		[3] = { itemID = 10913 }; -- =q4=Conqueror's Platelegs" 
		[4] = { itemID = 10911 }; -- =q4=Conqueror's Shoulderpads" 
		[5] = { itemID = 10914 }; -- =q4=Conqueror's War Stompers" 
	};
};

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsCLASSIC"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["BoE World Epics"];
	Type = "ClassicDungeonExt";
	{
		Name = AL["Level 30-39"];
		[1] = { itemID = 867 };--Gloves of Holy Might
		[2] = { itemID = 1981 };--Icemail Jerkin
		[3] = { itemID = 1980 }; -- =q4=Underworld Band" 
		[16] = { itemID = 869 }; -- =q4=Dazzling Longsword" 
		[17] = { itemID = 1982 };--Nightblade
		[18] = { itemID = 870 };--Fiery War Axe
		[19] = { itemID = 868 };--Ardent Custodian
		[20] = { itemID = 873 };--Staff of Jordan
		[21] = { itemID = 1204 };--The Green Tower
		[22] = { itemID = 2825 };--Bow of Searing Arrows
	};
	{
		Name = AL["Level 40-49"];
		[1] = { itemID = 3075 };--Eye of Flame
		[2] = { itemID = 940 };--Robes of Insight
		[3] = { itemID = 14551 };--Edgemaster's Handguards
		[4] = { itemID = 17007 };--Stonerender Gauntlets
		[5] = { itemID = 14549 };--Boots of Avoidance
		[6] = { itemID = 1315 }; -- =q4=Lei of Lilies" 
		[7] = { itemID = 942 }; -- =q4=Freezing Band" 
		[8] = { itemID = 1447 }; -- =q4=Ring of Saviors" 
		[16] = { itemID = 2164 };--Gut Ripper
		[17] = { itemID = 2163 };--Shadowblade
		[18] = { itemID = 809 }; -- =q4=Bloodrazor" 
		[19] = { itemID = 871 }; -- =q4=Flurry Axe" 
		[20] = { itemID = 2291 };--Kang the Decapitator
		[21] = { itemID = 810 };--Hammer of the Northern Wind
		[22] = { itemID = 2915 }; -- =q4=Taran Icebreaker" 
		[23] = { itemID = 812 };--Glowing Brightwood Staff
		[24] = { itemID = 943 };--Warden Staff
		[25] = { itemID = 1169 };--Blackskull Shield
		[26] = { itemID = 1979 };--Wall of the Dead
		[27] = { itemID = 2824 };--Hurricane
		[28] = { itemID = 2100, desc = "=ds=#w5#" };--Precisely Calibrated Boomstick
	};
	{
		Name = AL["Level 50-60"];
		[1] = { itemID = 3475 }; -- =q4=Cloak of Flames" 
		[2] = { itemID = 14553 };--Sash of Mercy
		[3] = { itemID = 2245 };--Helm of Narv
		[4] = { itemID = 14552 };--Stockade Pauldrons
		[5] = { itemID = 14554 };--Cloudkeeper Legplates
		[6] = { itemID = 1443 }; -- =q4=Jeweled Amulet of Cainwyn" 
		[7] = { itemID = 14558 }; -- =q4=Lady Maye's Pendant" 
		[8] = { itemID = 2246 }; -- =q4=Myrmidon's Signet" 
		[9] = { itemID = 833 }; -- =q4=Lifestone" 
		[10] = { itemID = 14557 }; -- =q4=The Lion Horn of Stormwind" 
		[16] = { itemID = 14555 };--Alcor's Sunrazor
		[17] = { itemID = 2244 }; -- =q4=Krol Blade" 
		[18] = { itemID = 1728 }; -- =q4=Teebu's Blazing Longsword" 
		[19] = { itemID = 2801 };--Blade of Hanna
		[20] = { itemID = 647 };--Destiny
		[21] = { itemID = 811 }; -- =q4=Axe of the Deep Woods" 
		[22] = { itemID = 1263 };--Brain Hacker
		[23] = { itemID = 2243 };--Hand of Edward the Odd
		[24] = { itemID = 944 };--Elemental Mage Staff
		[25] = { itemID = 1168 };--Skullflame Shield
		[26] = { itemID = 2099, desc = "=ds=#w5#" };--Dwarven Hand Cannon
	};
};

-----------
--- PvP ---
-----------

----------------------
--- Alterac Valley ---
----------------------

AtlasLoot_Data["AVMisc"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Alterac Valley"];
	{
		Name = AL["Misc. Rewards"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#m7#", desc = "=q5=#b1#" };
		[2] = { itemID = 19030, price = "50000 #alliance#" }; --Stormpike Battle Charger
		[3] = { itemID = 19045, price = "15000 #alliance#" }; --Stormpike Battle Standard
		[4] = { itemID = 19032, price = "15000 #alliance#" }; --Stormpike Battle Tabard
		[6] = { itemID = 19316, price = "60 #silver# 1 #faction#" }; --Ice Threaded Arrow
		[7] = { itemID = 17348, price = "10 #silver# 8 #faction#" }; --Major Healing Draught
		[8] = { itemID = 17349, price = "5 #silver# 1 #faction#" }; --Superior Healing Draught
		[9] = { itemID = 19301, price = "70 #silver#" }; --Alterac Manna Biscuit
		[10] = { itemID = 19307, price = "80 #silver#" }; --Alterac Heavy Runecloth Bandage
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#m6#", desc = "=q5=#b2#" };
		[17] = { itemID = 19029, price = "50000 #horde#" }; --Horn of the Frostwolf Howler
		[18] = { itemID = 19046, price = "15000 #horde#" }; --Frostwolf Battle Standard
		[19] = { itemID = 19031, price = "15000 #horde#" }; --Frostwolf Battle Tabard
		[21] = { itemID = 19317, price = "60 #silver# 1 #faction#" }; --Ice Threaded Bullet
		[22] = { itemID = 17351, price = "10 #silver# 8 #faction#" }; --Major Mana Draught
		[23] = { itemID = 17352, price = "5 #silver# 1 #faction#" }; --Superior Mana Draught
		[24] = { itemID = 19318, price = "50 #silver#" }; --Bottled Alterac Spring Water
	};
	{
		Name = "Alliance";
		[2] = { itemID = 19086, price = "1600 #alliance#" }; --Stormpike Sage's Cloak
		[3] = { itemID = 19084, price = "1600 #alliance#" }; --Stormpike Soldier's Cloak
		[4] = { itemID = 19094, price = "3000 #alliance#" }; --Stormpike Cloth Girdle
		[5] = { itemID = 19093, price = "3000 #alliance#" }; --Stormpike Leather Girdle
		[6] = { itemID = 19092, price = "3000 #alliance#" }; --Stormpike Mail Girdle
		[7] = { itemID = 19091, price = "3000 #alliance#" }; --Stormpike Plate Girdle
		[8] = { itemID = 19098, price = "1600 #alliance#" }; --Stormpike Sage's Pendant
		[9] = { itemID = 19097, price = "1600 #alliance#" }; --Stormpike Soldier's Pendant
		[10] = { itemID = 19100, price = "2400 #alliance#" }; --Electrified Dagger
		[11] = { itemID = 19104, price = "2400 #alliance#" }; --Stormstrike Hammer
		[12] = { itemID = 19102, price = "3000 #alliance#" }; --Crackling Staff
		[13] = { itemID = 19320, price = "1600 #alliance#" }; --Gnoll Skin Bandolier
		[14] = { itemID = 19319, price = "1600 #alliance#" }; --Harpy Hide Quiver
		[17] = { itemID = 19325, price = "5000 #faction#" }; --Don Julio's Band
		[18] = { itemID = 21563, price = "5000 #faction#" }; --Don Rodrigo's Band
		[19] = { itemID = 19312, price = "5000 #faction#" }; --Lei of the Lifegiver
		[20] = { itemID = 19315, price = "5000 #faction#" }; --Therazane's Touch
		[21] = { itemID = 19308, price = "5000 #faction#" }; --Tome of Arcane Domination
		[22] = { itemID = 19309, price = "5000 #faction#" }; --Tome of Shadow Force
		[23] = { itemID = 19311, price = "5000 #faction#" }; --Tome of Fiery Arcana
		[24] = { itemID = 19310, price = "5000 #faction#" }; --Tome of the Ice Lord
		[25] = { itemID = 19324, price = "5000 #faction#" }; --The Lobotomizer
		[26] = { itemID = 19321, price = "5000 #faction#" }; --The Immovable Object
		[27] = { itemID = 19323, price = "5000 #faction#" }; --The Unstoppable Force
	};
	{
		Name = "Horde";
		[2] = { itemID = 19085, price = "1600 #horde#" }; --Frostwolf Advisor's Cloak
		[3] = { itemID = 19083, price = "1600 #horde#" }; --Frostwolf Legionnaire's Cloak
		[4] = { itemID = 19090, price = "3000 #horde#" }; --Frostwolf Cloth Belt
		[5] = { itemID = 19089, price = "3000 #horde#" }; --Frostwolf Leather Belt
		[6] = { itemID = 19088, price = "3000 #horde#" }; --Frostwolf Mail Belt
		[7] = { itemID = 19087, price = "3000 #horde#" }; --Frostwolf Plate Belt
		[8] = { itemID = 19096, price = "1600 #horde#" }; --Frostwolf Advisor's Pendant
		[9] = { itemID = 19095, price = "1600 #horde#" }; --Frostwolf Legionnaire's Pendant
		[10] = { itemID = 19099, price = "2400 #horde#" }; --Glacial Blade
		[11] = { itemID = 19103, price = "2400 #horde#" }; --Frostbite
		[12] = { itemID = 19101, price = "3000 #horde#" }; --Whiteout Staff
		[13] = { itemID = 19320, price = "1600 #horde#" }; --Gnoll Skin Bandolier
		[14] = { itemID = 19319, price = "1600 #horde#" }; --Harpy Hide Quiver
		[17] = { itemID = 19325, price = "5000 #faction#" }; --Don Julio's Band
		[18] = { itemID = 21563, price = "5000 #faction#" }; --Don Rodrigo's Band
		[19] = { itemID = 19312, price = "5000 #faction#" }; --Lei of the Lifegiver
		[20] = { itemID = 19315, price = "5000 #faction#" }; --Therazane's Touch
		[21] = { itemID = 19308, price = "5000 #faction#" }; --Tome of Arcane Domination
		[22] = { itemID = 19309, price = "5000 #faction#" }; --Tome of Shadow Force
		[23] = { itemID = 19311, price = "5000 #faction#" }; --Tome of Fiery Arcana
		[24] = { itemID = 19310, price = "5000 #faction#" }; --Tome of the Ice Lord
		[25] = { itemID = 19324, price = "5000 #faction#" }; --The Lobotomizer
		[26] = { itemID = 19321, price = "5000 #faction#" }; --The Immovable Object
		[27] = { itemID = 19323, price = "5000 #faction#" }; --The Unstoppable Force
	};
};

--------------------
--- Arathi Basin ---
--------------------

AtlasLoot_Data["AB_A"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Arathi Basin"] .. WHITE.." (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 17349, price = "5 #silver# 1 #alliance#" }; --Superior Healing Draught
		[2] = { itemID = 17352, price = "5 #silver# 1 #alliance#" }; --Superior Mana Draught
		[3] = { itemID = 20225, price = "18 #silver#" }; --Highlander's Enriched Ration
		[4] = { itemID = 20227, price = "13,5 #silver#" }; --Highlander's Iron Ration
		[5] = { itemID = 20226, price = "9 #silver#" }; --Highlander's Field Ration
		[6] = { itemID = 20243, price = "18 #silver#" }; --Highlander's Runecloth Bandage
		[7] = { itemID = 20237, price = "13,5 #silver#" }; --Highlander's Mageweave Bandage
		[8] = { itemID = 20244, price = "9 #silver#" }; --Highlander's Silk Bandage
		[9] = { itemID = 21119, price = "300 #alliance#" }; --Talisman of Arathor
		[10] = { itemID = 21118, price = "300 #alliance#" }; --Talisman of Arathor
		[11] = { itemID = 21117, price = "400 #alliance#" }; --Talisman of Arathor
		[12] = { itemID = 20071, price = "3000 #alliance#" }; --Talisman of Arathor
	};
	{
		Name = AL["Level 60 Rewards"];
		[1] = { itemID = 20073, price = "5000 #alliance#" }; --Cloak of the Honor Guard
		[2] = { itemID = 20070, price = "9000 #alliance#" }; --Sageclaw
		[3] = { itemID = 20069, price = "16000 #alliance#" }; --Ironbark Staff
	};
	{
		Name = AL["Level 40-49 Rewards"];
		[1] = { itemID = 20097, price = "400 #alliance#" }; --Highlander's Cloth Girdle
		[2] = { itemID = 20094, price = "400 #alliance#" }; --Highlander's Cloth Boots
		[3] = { itemID = 20115, price = "400 #alliance#" }; --Highlander's Leather Girdle
		[4] = { itemID = 20103, price = "400 #alliance#" }; --Highlander's Lizardhide Girdle
		[5] = { itemID = 20112, price = "400 #alliance#" }; --Highlander's Leather Boots
		[6] = { itemID = 20100, price = "400 #alliance#" }; --Highlander's Lizardhide Boots
		[7] = { itemID = 20089, price = "300 #alliance#" }; --Highlander's Chain Girdle
		[8] = { itemID = 20088, price = "400 #alliance#" }; --Highlander's Chain Girdle
		[9] = { itemID = 20119, price = "300 #alliance#" }; --Highlander's Mail Girdle
		[10] = { itemID = 20118, price = "400 #alliance#" }; --Highlander's Mail Girdle
		[11] = { itemID = 20092, price = "300 #alliance#" }; --Highlander's Chain Greaves
		[12] = { itemID = 20091, price = "400 #alliance#" }; --Highlander's Chain Greaves
		[13] = { itemID = 20122, price = "300 #alliance#" }; --Highlander's Mail Greaves
		[14] = { itemID = 20121, price = "400 #alliance#" }; --Highlander's Mail Greaves
		[15] = { itemID = 20107, price = "300 #alliance#" }; --Highlander's Lamellar Girdle
		[16] = { itemID = 20106, price = "400 #alliance#" }; --Highlander's Lamellar Girdle
		[17] = { itemID = 20125, price = "300 #alliance#" }; --Highlander's Plate Girdle
		[18] = { itemID = 20124, price = "400 #alliance#" }; --Highlander's Plate Girdle
		[19] = { itemID = 20110, price = "300 #alliance#" }; --Highlander's Lamellar Greaves
		[20] = { itemID = 20109, price = "400 #alliance#" }; --Highlander's Lamellar Greaves
		[21] = { itemID = 20128, price = "300 #alliance#" }; --Highlander's Plate Greaves
		[22] = { itemID = 20127, price = "400 #alliance#" }; --Highlander's Plate Greaves
	};
	{
		Name = AL["Level 30-39 Rewards"];
		[1] = { itemID = 20098, price = "300 #alliance#" }; --Highlander's Cloth Girdle
		[2] = { itemID = 20095, price = "300 #alliance#" }; --Highlander's Cloth Boots
		[3] = { itemID = 20116, price = "300 #alliance#" }; --Highlander's Leather Girdle
		[4] = { itemID = 20104, price = "300 #alliance#" }; --Highlander's Lizardhide Girdle
		[5] = { itemID = 20113, price = "300 #alliance#" }; --Highlander's Leather Boots
		[6] = { itemID = 20101, price = "300 #alliance#" }; --Highlander's Lizardhide Boots
	};
	{
		Name = AL["Level 20-29 Rewards"];
		[1] = { itemID = 20099, price = "300 #alliance#" }; --Highlander's Cloth Girdle
		[2] = { itemID = 20096, price = "300 #alliance#" }; --Highlander's Cloth Boots
		[3] = { itemID = 20117, price = "300 #alliance#" }; --Highlander's Leather Girdle
		[4] = { itemID = 20105, price = "300 #alliance#" }; --Highlander's Lizardhide Girdle
		[5] = { itemID = 20120, price = "300 #alliance#" }; --Highlander's Mail Girdle
		[6] = { itemID = 20090, price = "300 #alliance#" }; --Highlander's Padded Girdle
		[7] = { itemID = 20114, price = "300 #alliance#" }; --Highlander's Leather Boots
		[8] = { itemID = 20102, price = "300 #alliance#" }; --Highlander's Lizardhide Boots
		[9] = { itemID = 20123, price = "300 #alliance#" }; --Highlander's Mail Greaves
		[10] = { itemID = 20093, price = "300 #alliance#" }; --Highlander's Padded Greaves
		[11] = { itemID = 20108, price = "300 #alliance#" }; --Highlander's Lamellar Girdle
		[12] = { itemID = 20126, price = "300 #alliance#" }; --Highlander's Mail Girdle
		[13] = { itemID = 20111, price = "300 #alliance#" }; --Highlander's Lamellar Greaves
		[14] = { itemID = 20129, price = "300 #alliance#" }; --Highlander's Mail Greaves
	};
	{
		Name = AL["The Highlander's Intent"];
		[1] = { itemID = 20061, price = "9000 #alliance#" }; --Highlander's Epaulets
		[2] = { itemID = 20047, price = "3000 #alliance#" }; --Highlander's Cloth Girdle
		[3] = { itemID = 20054, price = "3000 #alliance#" }; --Highlander's Cloth Boots
	};
	{
		Name = AL["The Highlander's Purpose"];
		[1] = { itemID = 20059, price = "9000 #alliance#" }; --Highlander's Leather Shoulders
		[2] = { itemID = 20045, price = "3000 #alliance#" }; --Highlander's Leather Girdle
		[3] = { itemID = 20052, price = "3000 #alliance#" }; --Highlander's Leather Boots
	};
	{
		Name = AL["The Highlander's Will"];
		[1] = { itemID = 20060, price = "9000 #alliance#" }; --Highlander's Lizardhide Shoulders
		[2] = { itemID = 20046, price = "3000 #alliance#" }; --Highlander's Lizardhide Girdle
		[3] = { itemID = 20053, price = "3000 #alliance#" }; --Highlander's Lizardhide Boots
	};
	{
		Name = AL["The Highlander's Determination"];
		[1] = { itemID = 20055, price = "9000 #alliance#" }; --Highlander's Chain Pauldrons
		[2] = { itemID = 20043, price = "3000 #alliance#" }; --Highlander's Chain Girdle
		[3] = { itemID = 20050, price = "3000 #alliance#" }; --Highlander's Chain Greaves
	};
	{
		Name = AL["The Highlander's Fortitude"];
		[1] = { itemID = 20056, price = "9000 #alliance#" }; --Highlander's Mail Pauldrons
		[2] = { itemID = 20044, price = "3000 #alliance#" }; --Highlander's Mail Girdle
		[3] = { itemID = 20051, price = "3000 #alliance#" }; --Highlander's Mail Greaves
	};
	{
		Name = AL["The Highlander's Resolution"];
		[1] = { itemID = 20057, price = "9000 #alliance#" }; --Highlander's Plate Spaulders
		[2] = { itemID = 20041, price = "3000 #alliance#" }; --Highlander's Plate Girdle
		[3] = { itemID = 20048, price = "3000 #alliance#" }; --Highlander's Plate Greaves
	};
	{
		Name = AL["The Highlander's Resolve"];
		[1] = { itemID = 20058, price = "9000 #alliance#" }; --Highlander's Lamellar Spaulders
		[2] = { itemID = 20042, price = "3000 #alliance#" }; --Highlander's Lamellar Girdle
		[3] = { itemID = 20049, price = "3000 #alliance#" }; --Highlander's Lamellar Greaves
	};
};

AtlasLoot_Data["AB_H"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Arathi Basin"] .. WHITE.." (Horde)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 17349, price = "5 #silver# 5 #horde#" }; --Superior Healing Draught
		[2] = { itemID = 17352, price = "5 #silver# 5 #horde#" }; --Superior Mana Draught
		[3] = { itemID = 20222, price = "18 #silver#" }; --Defiler's Enriched Ration
		[4] = { itemID = 20224, price = "15 #silver#" }; --Defiler's Iron Ration
		[5] = { itemID = 20223, price = "9 #silver#" }; --Defiler's Field Ration
		[6] = { itemID = 20234, price = "18 #silver#" }; --Defiler's Runecloth Bandage
		[7] = { itemID = 20232, price = "15 #silver#" }; --Defiler's Mageweave Bandage
		[8] = { itemID = 20235, price = "9 #silver#" }; --Defiler's Silk Bandage
		[9] = { itemID = 21116, price = "300 #horde#" }; --Defiler's Talisman
		[10] = { itemID = 21120, price = "300 #horde#" }; --Defiler's Talisman
		[11] = { itemID = 21115, price = "400 #horde#" }; --Defiler's Talisman
		[12] = { itemID = 20072, price = "3000 #horde#" }; --Defiler's Talisman
	};
	{
		Name = AL["Level 60 Rewards"];
		[1] = { itemID = 20068, price = "5000 #horde#" }; --Deathguard's Cloak
		[2] = { itemID = 20214, price = "9000 #horde#" }; --Mindfang
		[3] = { itemID = 20220, price = "16000 #horde#" }; --Ironbark Staff
	};
	{
		Name = AL["Level 40-49 Rewards"];
		[1] = { itemID = 20165, price = "400 #horde#" }; --Defiler's Cloth Girdle
		[2] = { itemID = 20160, price = "400 #horde#" }; --Defiler's Cloth Boots
		[3] = { itemID = 20193, price = "400 #horde#" }; --Defiler's Leather Girdle
		[4] = { itemID = 20174, price = "400 #horde#" }; --Defiler's Lizardhide Girdle
		[5] = { itemID = 20189, price = "400 #horde#" }; --Defiler's Leather Boots
		[6] = { itemID = 20170, price = "400 #horde#" }; --Defiler's Lizardhide Boots
		[7] = { itemID = 20153, price = "300 #horde#" }; --Defiler's Chain Girdle
		[8] = { itemID = 20151, price = "400 #horde#" }; --Defiler's Chain Girdle
		[9] = { itemID = 20198, price = "300 #horde#" }; --Defiler's Mail Girdle
		[10] = { itemID = 20196, price = "400 #horde#" }; --Defiler's Mail Girdle
		[11] = { itemID = 20156, price = "300 #horde#" }; --Defiler's Chain Greaves
		[12] = { itemID = 20155, price = "400 #horde#" }; --Defiler's Chain Greaves
		[13] = { itemID = 20200, price = "300 #horde#" }; --Defiler's Mail Greaves
		[14] = { itemID = 20202, price = "400 #horde#" }; --Defiler's Mail Greaves
		[15] = { itemID = 20180, price = "300 #horde#" }; --Defiler's Lamellar Girdle
		[16] = { itemID = 20179, price = "400 #horde#" }; --Defiler's Lamellar Girdle
		[17] = { itemID = 20206, price = "300 #horde#" }; --Defiler's Plate Girdle
		[18] = { itemID = 20205, price = "400 #horde#" }; --Defiler's Plate Girdle
		[19] = { itemID = 20183, price = "300 #horde#" }; --Defiler's Lamellar Greaves
		[20] = { itemID = 20185, price = "400 #horde#" }; --Defiler's Lamellar Greaves
		[21] = { itemID = 20209, price = "300 #horde#" }; --Defiler's Plate Greaves
		[22] = { itemID = 20211, price = "400 #horde#" }; --Defiler's Plate Greaves
	};
	{
		Name = AL["Level 30-39 Rewards"];
		[1] = { itemID = 20166, price = "300 #horde#" }; --Defiler's Cloth Girdle
		[2] = { itemID = 20161, price = "300 #horde#" }; --Defiler's Cloth Boots
		[3] = { itemID = 20192, price = "300 #horde#" }; --Defiler's Leather Girdle
		[4] = { itemID = 20173, price = "300 #horde#" }; --Defiler's Lizardhide Girdle
		[5] = { itemID = 20187, price = "300 #horde#" }; --Defiler's Leather Boots
		[6] = { itemID = 20168, price = "300 #horde#" }; --Defiler's Lizardhide Boots
	};
	{
		Name = AL["Level 20-29 Rewards"];
		[1] = { itemID = 20164, price = "300 #horde#" }; --Defiler's Cloth Girdle
		[2] = { itemID = 20162, price = "300 #horde#" }; --Defiler's Cloth Boots
		[3] = { itemID = 20191, price = "300 #horde#" }; --Defiler's Leather Girdle
		[4] = { itemID = 20172, price = "300 #horde#" }; --Defiler's Lizardhide Girdle
		[5] = { itemID = 20152, price = "300 #horde#" }; --Defiler's Chain Girdle
		[6] = { itemID = 20197, price = "300 #horde#" }; --Defiler's Padded Girdle
		[7] = { itemID = 20188, price = "300 #horde#" }; --Defiler's Leather Boots
		[8] = { itemID = 20169, price = "300 #horde#" }; --Defiler's Lizardhide Boots
		[9] = { itemID = 20201, price = "300 #horde#" }; --Defiler's Mail Greaves
		[0] = { itemID = 20157, price = "300 #horde#" }; --Defiler's Chain Greaves
		[10] = { itemID = 20178, price = "300 #horde#" }; --Defiler's Lamellar Girdle
		[11] = { itemID = 20207, price = "300 #horde#" }; --Defiler's Mail Girdle
		[12] = { itemID = 20182, price = "300 #horde#" }; --Defiler's Lamellar Greaves
		[13] = { itemID = 20210, price = "300 #horde#" }; --Defiler's Mail Greaves
	};
	{
		Name = AL["The Defiler's Intent"];
		[1] = { itemID = 20176, price = "9000 #horde#" }; --Defiler's Epaulets
		[2] = { itemID = 20163, price = "3000 #horde#" }; --Defiler's Cloth Girdle
		[3] = { itemID = 20159, price = "3000 #horde#" }; --Defiler's Cloth Boots
	};
	{
		Name = AL["The Defiler's Purpose"];
		[1] = { itemID = 20194, price = "9000 #horde#" }; --Defiler's Leather Shoulders
		[2] = { itemID = 20190, price = "3000 #horde#" }; --Defiler's Leather Girdle
		[3] = { itemID = 20186, price = "3000 #horde#" }; --Defiler's Leather Boots
	};
	{
		Name = AL["The Defiler's Will"];
		[1] = { itemID = 20175, price = "9000 #horde#" }; --Defiler's Lizardhide Shoulders
		[2] = { itemID = 20171, price = "3000 #horde#" }; --Defiler's Lizardhide Girdle
		[3] = { itemID = 20167, price = "3000 #horde#" }; --Defiler's Lizardhide Boots
	};
	{
		Name = AL["The Defiler's Determination"];
		[1] = { itemID = 20158, price = "9000 #horde#" }; --Defiler's Chain Pauldrons
		[2] = { itemID = 20150, price = "3000 #horde#" }; --Defiler's Chain Girdle
		[3] = { itemID = 20154, price = "3000 #horde#" }; --Defiler's Chain Greaves
	};
	{
		Name = AL["The Defiler's Fortitude"];
		[1] = { itemID = 20203, price = "9000 #horde#" }; --Defiler's Mail Pauldrons
		[2] = { itemID = 20195, price = "3000 #horde#" }; --Defiler's Mail Girdle
		[3] = { itemID = 20199, price = "3000 #horde#" }; --Defiler's Mail Greaves
	};
	{
		Name = AL["The Defiler's Resolution"];
		[1] = { itemID = 20212, price = "9000 #horde#" }; --Defiler's Plate Spaulders
		[2] = { itemID = 20204, price = "3000 #horde#" }; --Defiler's Plate Girdle
		[3] = { itemID = 20208, price = "3000 #horde#" }; --Defiler's Plate Greaves
	};
	{
		Name = AL["The Defiler's Resolve"];
		[1] = { itemID = 20184, price = "9000 #horde#" }; --Defiler's Lamellar Spaulders
		[2] = { itemID = 20177, price = "3000 #horde#" }; --Defiler's Lamellar Girdle
		[3] = { itemID = 20181, price = "3000 #horde#" }; --Defiler's Lamellar Greaves
	};
};

---------------------
--- Warsong Gulch ---
---------------------

AtlasLoot_Data["WSG_A"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Warsong Gulch"] .. WHITE.." (Alliance)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 19506, price = "12000 #faction#" }; --Silverwing Battle Tabard
		[2] = { itemID = 17348, price = "10 #silver# 2 #faction#" }; --Major Healing Draught
		[3] = { itemID = 17349, price = "5 #silver# 5 #faction#" }; --Superior Healing Draught
		[4] = { itemID = 19060, price = "20 #silver#" }; --Warsong Gulch Enriched Ration
		[5] = { itemID = 19062, price = "10 #silver#" }; --Warsong Gulch Field Ration
		[6] = { itemID = 19067, price = "15 #silver#" }; --Warsong Gulch Mageweave Bandage
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 20428, price = "100 #alliance#" }; --Caretaker's Cape
		[2] = { itemID = 19533, price = "100 #alliance#" }; --Caretaker's Cape
		[3] = { itemID = 19532, price = "300 #alliance#" }; --Caretaker's Cape
		[4] = { itemID = 19531, price = "300 #alliance#" }; --Caretaker's Cape
		[5] = { itemID = 19530, price = "1600 #alliance#" }; --Caretaker's Cape
		[7] = { itemID = 20444, price = "100 #alliance#" }; --Sentinel's Medallion
		[8] = { itemID = 19541, price = "100 #alliance#" }; --Sentinel's Medallion
		[9] = { itemID = 19540, price = "300 #alliance#" }; --Sentinel's Medallion
		[10] = { itemID = 19539, price = "300 #alliance#" }; --Sentinel's Medallion
		[11] = { itemID = 19538, price = "1600 #alliance#" }; --Sentinel's Medallion
		[13] = { itemID = 21568, price = "300 #alliance#" }; --Rune of Duty
		[14] = { itemID = 21567, price = "300 #alliance#" }; --Rune of Duty
		[16] = { itemID = 20431, price = "100 #alliance#" }; --Lorekeeper's Ring
		[17] = { itemID = 19525, price = "100 #alliance#" }; --Lorekeeper's Ring
		[18] = { itemID = 19524, price = "300 #alliance#" }; --Lorekeeper's Ring
		[19] = { itemID = 19523, price = "300 #alliance#" }; --Lorekeeper's Ring
		[20] = { itemID = 19522, price = "1600 #alliance#" }; --Lorekeeper's Ring
		[22] = { itemID = 20439, price = "100 #alliance#" }; --Protector's Band
		[23] = { itemID = 19517, price = "100 #alliance#" }; --Protector's Band
		[24] = { itemID = 19515, price = "300 #alliance#" }; --Protector's Band
		[25] = { itemID = 19516, price = "300 #alliance#" }; --Protector's Band
		[26] = { itemID = 19514, price = "1600 #alliance#" }; --Protector's Band
		[28] = { itemID = 21566, price = "300 #alliance#" }; --Rune of Perfection
		[29] = { itemID = 21565, price = "300 #alliance#" }; --Rune of Perfection
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 20443, price = "300 #alliance#" }; --Sentinel's Blade
		[2] = { itemID = 19549, price = "400 #alliance#" }; --Sentinel's Blade
		[3] = { itemID = 19548, price = "500 #alliance#" }; --Sentinel's Blade
		[4] = { itemID = 19547, price = "700 #alliance#" }; --Sentinel's Blade
		[5] = { itemID = 19546, price = "6000 #alliance#" }; --Sentinel's Blade
		[7] = { itemID = 20440, price = "300 #alliance#" }; --Protector's Sword
		[8] = { itemID = 19557, price = "400 #alliance#" }; --Protector's Sword
		[9] = { itemID = 19556, price = "500 #alliance#" }; --Protector's Sword
		[10] = { itemID = 19555, price = "700 #alliance#" }; --Protector's Sword
		[11] = { itemID = 19554, price = "6000 #alliance#" }; --Protector's Sword
		[16] = { itemID = 20434, price = "500 #alliance#" }; --Lorekeeper's Staff
		[17] = { itemID = 19573, price = "700 #alliance#" }; --Lorekeeper's Staff
		[18] = { itemID = 19572, price = "1000 #alliance#" }; --Lorekeeper's Staff
		[19] = { itemID = 19571, price = "5000 #alliance#" }; --Lorekeeper's Staff
		[20] = { itemID = 19570, price = "15000 #alliance#" }; --Lorekeeper's Staff
		[22] = { itemID = 20438, price = "300 #alliance#" }; --Outrunner's Bow
		[23] = { itemID = 19565, price = "400 #alliance#" }; --Outrunner's Bow
		[24] = { itemID = 19564, price = "500 #alliance#" }; --Outrunner's Bow
		[25] = { itemID = 19563, price = "700 #alliance#" }; --Outrunner's Bow
		[26] = { itemID = 19562, price = "6000 #alliance#" }; --Outrunner's Bow
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { itemID = 19597, price = "500 #alliance#" }; --Dryad's Wrist Bindings
		[2] = { itemID = 19596, price = "700 #alliance#" }; --Dryad's Wrist Bindings
		[3] = { itemID = 19595, price = "5000 #alliance#" }; --Dryad's Wrist Bindings
		[5] = { itemID = 19590, price = "500 #alliance#" }; --Forest Stalker's Bracers
		[6] = { itemID = 19589, price = "700 #alliance#" }; --Forest Stalker's Bracers
		[7] = { itemID = 19587, price = "5000 #alliance#" }; --Forest Stalker's Bracers
		[9] = { itemID = 19584, price = "500 #alliance#" }; --Windtalker's Wristguards
		[10] = { itemID = 19583, price = "700 #alliance#" }; --Windtalker's Wristguards
		[11] = { itemID = 19582, price = "5000 #alliance#" }; --Windtalker's Wristguards
		[13] = { itemID = 19581, price = "500 #alliance#" }; --Berserker Bracers
		[14] = { itemID = 19580, price = "700 #alliance#" }; --Berserker Bracers
		[15] = { itemID = 19578, price = "5000 #alliance#" }; --Berserker Bracers
		[16] = { itemID = 22752, price = "9000 #alliance#" }; --Sentinel's Silk Leggings
		[18] = { itemID = 22749, price = "9000 #alliance#" }; --Sentinel's Leather Pants
		[19] = { itemID = 22750, price = "9000 #alliance#" }; --Sentinel's Lizardhide Pants
		[21] = { itemID = 22748, price = "9000 #alliance#" }; --Sentinel's Chain Leggings
		[22] = { itemID = 30497, price = "9000 #alliance#" }; --Sentinel's Mail Leggings
		[24] = { itemID = 22753, price = "9000 #alliance#" }; --Sentinel's Lamellar Legguards
		[25] = { itemID = 22672, price = "9000 #alliance#" }; --Sentinel's Plate Legguards
	};
};

AtlasLoot_Data["WSG_H"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Warsong Gulch"] .. WHITE.." (Horde)";
	{
		Name = AL["Misc. Rewards"];
		[1] = { itemID = 19505, price = "12000 #faction#" }; --Warsong Battle Tabard
		[2] = { itemID = 17351, price = "10 #silver# 2 #faction#" }; --Major Mana Draught
		[3] = { itemID = 17352, price = "5 #silver# 5 #faction#" }; --Superior Mana Draught
		[4] = { itemID = 19061, price = "15 #silver#" }; --Warsong Gulch Iron Ration
		[5] = { itemID = 19066, price = "20 #silver#" }; --Warsong Gulch Runecloth Bandage
		[6] = { itemID = 19068, price = "10 #silver#" }; --Warsong Gulch Silk Bandage
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 20427, price = "100 #horde#" }; --Battle Healer's Cloak
		[2] = { itemID = 19529, price = "100 #horde#" }; --Battle Healer's Cloak
		[3] = { itemID = 19528, price = "300 #horde#" }; --Battle Healer's Cloak
		[4] = { itemID = 19527, price = "300 #horde#" }; --Battle Healer's Cloak
		[5] = { itemID = 19526, price = "1600 #horde#" }; --Battle Healer's Cloak
		[7] = { itemID = 20442, price = "100 #horde#" }; --Scout's Medallion
		[8] = { itemID = 19537, price = "100 #horde#" }; --Scout's Medallion
		[9] = { itemID = 19536, price = "300 #horde#" }; --Scout's Medallion
		[10] = { itemID = 19535, price = "300 #horde#" }; --Scout's Medallion
		[11] = { itemID = 19534, price = "1600 #horde#" }; --Scout's Medallion
		[13] = { itemID = 21568, price = "300 #horde#" }; --Rune of Duty
		[14] = { itemID = 21567, price = "300 #horde#" }; --Rune of Duty
		[16] = { itemID = 20426, price = "100 #horde#" }; --Advisor's Ring
		[17] = { itemID = 19521, price = "100 #horde#" }; --Advisor's Ring
		[18] = { itemID = 19520, price = "300 #horde#" }; --Advisor's Ring
		[19] = { itemID = 19519, price = "300 #horde#" }; --Advisor's Ring
		[20] = { itemID = 19518, price = "1600 #horde#" }; --Advisor's Ring
		[22] = { itemID = 20429, price = "100 #horde#" }; --Legionnaire's Band
		[23] = { itemID = 19513, price = "100 #horde#" }; --Legionnaire's Band
		[24] = { itemID = 19512, price = "300 #horde#" }; --Legionnaire's Band
		[25] = { itemID = 19511, price = "300 #horde#" }; --Legionnaire's Band
		[26] = { itemID = 19510, price = "1600 #horde#" }; --Legionnaire's Band
		[28] = { itemID = 21566, price = "300 #horde#" }; --Rune of Perfection
		[29] = { itemID = 21565, price = "300 #horde#" }; --Rune of Perfection
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 20441, price = "300 #horde#" }; --Scout's Blade
		[2] = { itemID = 19545, price = "400 #horde#" }; --Scout's Blade
		[3] = { itemID = 19544, price = "500 #horde#" }; --Scout's Blade
		[4] = { itemID = 19543, price = "700 #horde#" }; --Scout's Blade
		[5] = { itemID = 19542, price = "6000 #horde#" }; --Scout's Blade
		[7] = { itemID = 20430, price = "300 #horde#" }; --Legionnaire's Sword
		[8] = { itemID = 19553, price = "400 #horde#" }; --Legionnaire's Sword
		[9] = { itemID = 19552, price = "500 #horde#" }; --Legionnaire's Sword
		[10] = { itemID = 19551, price = "700 #horde#" }; --Legionnaire's Sword
		[11] = { itemID = 19550, price = "6000 #horde#" }; --Legionnaire's Sword
		[16] = { itemID = 20425, price = "500 #horde#" }; --Advisor's Gnarled Staff
		[17] = { itemID = 19569, price = "700 #horde#" }; --Advisor's Gnarled Staff
		[18] = { itemID = 19568, price = "1000 #horde#" }; --Advisor's Gnarled Staff
		[19] = { itemID = 19567, price = "5000 #horde#" }; --Advisor's Gnarled Staff
		[20] = { itemID = 19566, price = "15000 #horde#" }; --Advisor's Gnarled Staff
		[22] = { itemID = 20437, price = "300 #horde#" }; --Outrider's Bow
		[23] = { itemID = 19561, price = "400 #horde#" }; --Outrider's Bow
		[24] = { itemID = 19560, price = "500 #horde#" }; --Outrider's Bow
		[25] = { itemID = 19559, price = "700 #horde#" }; --Outrider's Bow
		[26] = { itemID = 19558, price = "6000 #horde#" }; --Outrider's Bow
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { itemID = 19597, price = "500 #horde#" }; --Dryad's Wrist Bindings
		[2] = { itemID = 19596, price = "700 #horde#" }; --Dryad's Wrist Bindings
		[3] = { itemID = 19595, price = "5000 #horde#" }; --Dryad's Wrist Bindings
		[5] = { itemID = 19590, price = "500 #horde#" }; --Forest Stalker's Bracers
		[6] = { itemID = 19589, price = "700 #horde#" }; --Forest Stalker's Bracers
		[7] = { itemID = 19587, price = "5000 #horde#" }; --Forest Stalker's Bracers
		[9] = { itemID = 19584, price = "500 #horde#" }; --Windtalker's Wristguards
		[10] = { itemID = 19583, price = "700 #horde#" }; --Windtalker's Wristguards
		[11] = { itemID = 19582, price = "5000 #horde#" }; --Windtalker's Wristguards
		[13] = { itemID = 19581, price = "500 #horde#" }; --Berserker Bracers
		[14] = { itemID = 19580, price = "700 #horde#" }; --Berserker Bracers
		[15] = { itemID = 19578, price = "5000 #horde#" }; --Berserker Bracers
		[16] = { itemID = 22747, price = "9000 #horde#" }; --Outrider's Silk Leggings
		[18] = { itemID = 22740, price = "9000 #horde#" }; --Outrider's Leather Pants
		[19] = { itemID = 22741, price = "9000 #horde#" }; --Outrider's Lizardhide Pants
		[21] = { itemID = 22673, price = "9000 #horde#" }; --Outrider's Chain Leggings
		[22] = { itemID = 22676, price = "9000 #horde#" }; --Outrider's Mail Leggings
		[24] = { itemID = 30498, price = "9000 #horde#" }; --Outrider's Lamellar Legguards
		[25] = { itemID = 22651, price = "9000 #horde#" }; --Outrider's Plate Legguards
	};
};

---------------------------------------
--- PvP Level 60 Rare and Epic Sets ---
---------------------------------------
AtlasLoot_Data["PVPDruid"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["Druid"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16424, price = "9435 #alliance#" }; --Lieutenant Commander's Dragonhide Headguard
		[2] = { itemID = 16423, price = "6885 #alliance#" }; --Lieutenant Commander's Dragonhide Shoulders
		[3] = { itemID = 16421, price = "9435 #alliance#" }; --Knight-Captain's Dragonhide Chestpiece
		[4] = { itemID = 16397, price = "5000 #alliance#" }; --Knight-Lieutenant's Dragonhide Grips
		[5] = { itemID = 16422, price = "9435 #alliance#" }; --Knight-Captain's Dragonhide Leggings
		[6] = { itemID = 16393, price = "5000 #alliance#" }; --Knight-Lieutenant's Dragonhide Treads
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23308, price = "24000 #alliance#" }; --Lieutenant Commander's Dragonhide Headguard
		[2] = { itemID = 23309, price = "14000 #alliance#" }; --Lieutenant Commander's Dragonhide Shoulders
		[3] = { itemID = 23294, price = "24000 #alliance#" }; --Knight-Captain's Dragonhide Chestpiece
		[4] = { itemID = 23280, price = "14000 #alliance#" }; --Knight-Lieutenant's Dragonhide Grips
		[5] = { itemID = 23295, price = "24000 #alliance#" }; --Knight-Captain's Dragonhide Leggings
		[6] = { itemID = 23281, price = "14000 #alliance#" }; --Knight-Lieutenant's Dragonhide Treads
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16451, price = "68200 #alliance#" }; --Field Marshal's Dragonhide Helmet
		[2] = { itemID = 16449, price = "52200 #alliance#" }; --Field Marshal's Dragonhide Spaulders
		[3] = { itemID = 16452, price = "68200 #alliance#" }; --Field Marshal's Dragonhide Breastplate
		[4] = { itemID = 16448, price = "52200 #alliance#" }; --Marshal's Dragonhide Gauntlets
		[5] = { itemID = 16450, price = "68200 #alliance#" }; --Marshal's Dragonhide Legguards
		[6] = { itemID = 16459, price = "52200 #alliance#" }; --Marshal's Dragonhide Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6116550, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Helm
		[2] = { itemID = 6116551, price = "1930 #arena# #horde#" }; --Grand Marshal's Chain Spaulders
		[3] = { itemID = 6116549, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Breastplate
		[4] = { itemID = 6116555, price = "1430 #arena# #horde#" }; --Grand Marshal's Chain Grips
		[5] = { itemID = 6116552, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Legguards
		[6] = { itemID = 6116554, price = "1430 #arena# #horde#" }; --Grand Marshal's Chain Boots
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16503, price = "9435 #horde#" }; --Champion's Dragonhide Headguard
		[2] = { itemID = 16501, price = "6885 #horde#" }; --Champion's Dragonhide Shoulders
		[3] = { itemID = 16504, price = "9435 #horde#" }; --Legionnaire's Dragonhide Chestpiece
		[4] = { itemID = 16496, price = "5000 #horde#" }; --Blood Guard's Dragonhide Grips
		[5] = { itemID = 16502, price = "9435 #horde#" }; --Legionnaire's Dragonhide Leggings
		[6] = { itemID = 16494, price = "5000 #horde#" }; --Blood Guard's Dragonhide Treads
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23253, price = "24000 #horde#" }; --Champion's Dragonhide Headguard
		[2] = { itemID = 23254, price = "14000 #horde#" }; --Champion's Dragonhide Shoulders
		[3] = { itemID = 22877, price = "24000 #horde#" }; --Legionnaire's Dragonhide Chestpiece
		[4] = { itemID = 22863, price = "14000 #horde#" }; --Blood Guard's Dragonhide Grips
		[5] = { itemID = 22878, price = "24000 #horde#" }; --Legionnaire's Dragonhide Leggings
		[6] = { itemID = 22852, price = "14000 #horde#" }; --Blood Guard's Dragonhide Treads
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16550, price = "68200 #horde#" }; --Warlord's Dragonhide Helmet
		[2] = { itemID = 16551, price = "52200 #horde#" }; --Warlord's Dragonhide Epaulets
		[3] = { itemID = 16549, price = "68200 #horde#" }; --Warlord's Dragonhide Hauberk
		[4] = { itemID = 16555, price = "52200 #horde#" }; --General's Dragonhide Gloves
		[5] = { itemID = 16552, price = "68200 #horde#" }; --General's Dragonhide Leggings
		[6] = { itemID = 16554, price = "52200 #horde#" }; --General's Dragonhide Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116451, price = "2370 #arena# #alliance#" }; --High Warlord's Dragonhide Helmet
		[2] = { itemID = 6116449, price = "1930 #arena# #alliance#" }; --High Warlord's Dragonhide Epaulets
		[3] = { itemID = 6116452, price = "2370 #arena# #alliance#" }; --High Warlord's Dragonhide Hauberk
		[4] = { itemID = 6116448, price = "1430 #arena# #alliance#" }; --High High Warlord's Dragonhide Gloves
		[5] = { itemID = 6116450, price = "2370 #arena# #alliance#" }; --High High Warlord's Dragonhide Leggings
		[6] = { itemID = 6116459, price = "1430 #arena# #alliance#" }; --High High Warlord's Dragonhide Boots
	};
};



AtlasLoot_Data["PVPHunter"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16428, price = "9435 #alliance#" }; --Lieutenant Commander's Chain Helm
		[2] = { itemID = 16427, price = "6885 #alliance#" }; --Lieutenant Commander's Chain Shoulders
		[3] = { itemID = 16425, price = "9435 #alliance#" }; --Knight-Captain's Chain Hauberk
		[4] = { itemID = 16403, price = "5000 #alliance#" }; --Knight-Lieutenant's Chain Vices
		[5] = { itemID = 16426, price = "9435 #alliance#" }; --Knight-Captain's Chain Legguards
		[6] = { itemID = 16401, price = "5000 #alliance#" }; --Knight-Lieutenant's Chain Greaves
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23306, price = "24000 #alliance#" }; --Lieutenant Commander's Chain Helm
		[2] = { itemID = 23307, price = "14000 #alliance#" }; --Lieutenant Commander's Chain Shoulders
		[3] = { itemID = 23292, price = "24000 #alliance#" }; --Knight-Captain's Chain Hauberk
		[4] = { itemID = 23279, price = "14000 #alliance#" }; --Knight-Lieutenant's Chain Vices
		[5] = { itemID = 23293, price = "24000 #alliance#" }; --Knight-Captain's Chain Legguards
		[6] = { itemID = 23278, price = "14000 #alliance#" }; --Knight-Lieutenant's Chain Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16465, price = "68200 #alliance#" }; --Field Marshal's Chain Helm
		[2] = { itemID = 16468, price = "52200 #alliance#" }; --Field Marshal's Chain Spaulders
		[3] = { itemID = 16466, price = "68200 #alliance#" }; --Field Marshal's Chain Breastplate
		[4] = { itemID = 16463, price = "52200 #alliance#" }; --Marshal's Chain Grips
		[5] = { itemID = 16467, price = "68200 #alliance#" }; --Marshal's Chain Legguards
		[6] = { itemID = 16462, price = "52200 #alliance#" }; --Marshal's Chain Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6116465, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Helm
		[2] = { itemID = 6116468, price = "1930 #arena# #alliance#" }; --Grand Marshal's Chain Spaulders
		[3] = { itemID = 6116466, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Breastplate
		[4] = { itemID = 6116463, price = "1430 #arena# #alliance#" }; --Grand Marshal's Chain Grips
		[5] = { itemID = 6116467, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Legguards
		[6] = { itemID = 6116462, price = "1430 #arena# #alliance#" }; --Grand Marshal's Chain Boots
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16526, price = "9435 #horde#" }; --Champion's Chain Helm
		[2] = { itemID = 16528, price = "6885 #horde#" }; --Champion's Chain Shoulders
		[3] = { itemID = 16525, price = "9435 #horde#" }; --Legionnaire's Chain Hauberk
		[4] = { itemID = 16530, price = "5000 #horde#" }; --Blood Guard's Chain Vices
		[5] = { itemID = 16527, price = "9435 #horde#" }; --Legionnaire's Chain Legguards
		[6] = { itemID = 16531, price = "5000 #horde#" }; --Blood Guard's Chain Greaves
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23251, price = "24000 #horde#" }; --Champion's Chain Helm
		[2] = { itemID = 23252, price = "14000 #horde#" }; --Champion's Chain Shoulders
		[3] = { itemID = 22874, price = "24000 #horde#" }; --Legionnaire's Chain Hauberk
		[4] = { itemID = 22862, price = "14000 #horde#" }; --Blood Guard's Chain Vices
		[5] = { itemID = 22875, price = "24000 #horde#" }; --Legionnaire's Chain Legguards
		[6] = { itemID = 22843, price = "14000 #horde#" }; --Blood Guard's Chain Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16566, price = "68200 #horde#" }; --Warlord's Chain Helmet
		[2] = { itemID = 16568, price = "52200 #horde#" }; --Warlord's Chain Shoulders
		[3] = { itemID = 16565, price = "68200 #horde#" }; --Warlord's Chain Chestpiece
		[4] = { itemID = 16571, price = "52200 #horde#" }; --General's Chain Gloves
		[5] = { itemID = 16567, price = "68200 #horde#" }; --General's Chain Legguards
		[6] = { itemID = 16569, price = "52200 #horde#" }; --General's Chain Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116566, price = "2370 #arena# #horde#" }; --High Warlord's Chain Helmet
		[2] = { itemID = 6116568, price = "1930 #arena# #horde#" }; --High Warlord's Chain Shoulders
		[3] = { itemID = 6116565, price = "2370 #arena# #horde#" }; --High Warlord's Chain Chestpiece
		[4] = { itemID = 6116571, price = "1430 #arena# #horde#" }; --High High Warlord's Chain Gloves
		[5] = { itemID = 6116567, price = "2370 #arena# #horde#" }; --High High Warlord's Chain Legguards
		[6] = { itemID = 6116569, price = "1430 #arena# #horde#" }; --High High Warlord's Chain Boots
	};
};

AtlasLoot_Data["PVPMage"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16416, price = "9435 #alliance#" }; --Lieutenant Commander's Silk Cowl
		[2] = { itemID = 16415, price = "6885 #alliance#" }; --Lieutenant Commander's Silk Mantle
		[3] = { itemID = 16413, price = "9435 #alliance#" }; --Knight-Captain's Silk Tunic
		[4] = { itemID = 16391, price = "5000 #alliance#" }; --Knight-Lieutenant's Silk Handwraps
		[5] = { itemID = 16414, price = "9435 #alliance#" }; --Knight-Captain's Silk Legguards
		[6] = { itemID = 16369, price = "5000 #alliance#" }; --Knight-Lieutenant's Silk Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23318, price = "24000 #alliance#" }; --Lieutenant Commander's Silk Cowl
		[2] = { itemID = 23319, price = "14000 #alliance#" }; --Lieutenant Commander's Silk Mantle
		[3] = { itemID = 23305, price = "24000 #alliance#" }; --Knight-Captain's Silk Tunic
		[4] = { itemID = 23290, price = "14000 #alliance#" }; --Knight-Lieutenant's Silk Handwraps
		[5] = { itemID = 23304, price = "24000 #alliance#" }; --Knight-Captain's Silk Legguards
		[6] = { itemID = 23291, price = "14000 #alliance#" }; --Knight-Lieutenant's Silk Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16441, price = "68200 #alliance#" }; --Field Marshal's Coronet
		[2] = { itemID = 16444, price = "52200 #alliance#" }; --Field Marshal's Silk Spaulders
		[3] = { itemID = 16443, price = "68200 #alliance#" }; --Field Marshal's Silk Vestments
		[4] = { itemID = 16440, price = "52200 #alliance#" }; --Marshal's Silk Gloves
		[5] = { itemID = 16442, price = "68200 #alliance#" }; --Marshal's Silk Leggings
		[6] = { itemID = 16437, price = "52200 #alliance#" }; --Marshal's Silk Footwraps
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6116441, price = "2370 #arena# #alliance#" }; --Grand Marshal's Coronet
		[2] = { itemID = 6116444, price = "1930 #arena# #alliance#" }; --Grand Marshal's Silk Spaulders
		[3] = { itemID = 6116443, price = "2370 #arena# #alliance#" }; --Grand Marshal's Silk Vestments
		[4] = { itemID = 6116440, price = "1430 #arena# #alliance#" }; --Grand Marshal's Silk Gloves
		[5] = { itemID = 6116442, price = "2370 #arena# #alliance#" }; --Grand Marshal's Silk Leggings
		[6] = { itemID = 6116437, price = "1430 #arena# #alliance#" }; --Grand Marshal's Silk Footwraps
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16489, price = "9435 #horde#" }; --Champion's Silk Cowl
		[2] = { itemID = 16492, price = "6885 #horde#" }; --Champion's Silk Mantle
		[3] = { itemID = 16491, price = "9435 #horde#" }; --Legionnaire's Silk Tunic
		[4] = { itemID = 16487, price = "5000 #horde#" }; --Blood Guard's Silk Handwraps
		[5] = { itemID = 16490, price = "9435 #horde#" }; --Legionnaire's Silk Legguards
		[6] = { itemID = 16485, price = "5000 #horde#" }; --Blood Guard's Silk Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23263, price = "24000 #horde#" }; --Champion's Silk Cowl
		[2] = { itemID = 23264, price = "14000 #horde#" }; --Champion's Silk Mantle
		[3] = { itemID = 22886, price = "24000 #horde#" }; --Legionnaire's Silk Tunic
		[4] = { itemID = 22870, price = "14000 #horde#" }; --Blood Guard's Silk Handwraps
		[5] = { itemID = 22883, price = "24000 #horde#" }; --Legionnaire's Silk Legguards
		[6] = { itemID = 22860, price = "14000 #horde#" }; --Blood Guard's Silk Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16533, price = "68200 #horde#" }; --Warlord's Silk Cowl
		[2] = { itemID = 16536, price = "52200 #horde#" }; --Warlord's Silk Amice
		[3] = { itemID = 16535, price = "68200 #horde#" }; --Warlord's Silk Raiment
		[4] = { itemID = 16540, price = "52200 #horde#" }; --General's Silk Handguards
		[5] = { itemID = 16534, price = "68200 #horde#" }; --General's Silk Trousers
		[6] = { itemID = 16539, price = "52200 #horde#" }; --General's Silk Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116533, price = "2370 #arena# #horde#" }; --High Warlord's Silk Cowl
		[2] = { itemID = 6116536, price = "1930 #arena# #horde#" }; --High Warlord's Silk Amice
		[3] = { itemID = 6116535, price = "2370 #arena# #horde#" }; --High Warlord's Silk Raiment
		[4] = { itemID = 6116540, price = "1430 #arena# #horde#" }; --High High Warlord's Silk Handguards
		[5] = { itemID = 6116534, price = "2370 #arena# #horde#" }; --High High Warlord's Silk Trousers
		[6] = { itemID = 6116539, price = "1430 #arena# #horde#" }; --High High Warlord's Silk Boots
	};
};

AtlasLoot_Data["PVPPaladin"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16434, price = "9435 #alliance#" }; --Lieutenant Commander's Lamellar Headguard
		[2] = { itemID = 16436, price = "6885 #alliance#" }; --Lieutenant Commander's Lamellar Shoulders
		[3] = { itemID = 16433, price = "9435 #alliance#" }; --Knight-Captain's Lamellar Breastplate
		[4] = { itemID = 16410, price = "5000 #alliance#" }; --Knight-Lieutenant's Lamellar Gauntlets
		[5] = { itemID = 16435, price = "9435 #alliance#" }; --Knight-Captain's Lamellar Leggings
		[6] = { itemID = 16409, price = "5000 #alliance#" }; --Knight-Lieutenant's Lamellar Sabatons
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23276, price = "24000 #alliance#" }; --Lieutenant Commander's Lamellar Headguard
		[2] = { itemID = 23277, price = "14000 #alliance#" }; --Lieutenant Commander's Lamellar Shoulders
		[3] = { itemID = 23272, price = "24000 #alliance#" }; --Knight-Captain's Lamellar Breastplate
		[4] = { itemID = 23274, price = "14000 #alliance#" }; --Knight-Lieutenant's Lamellar Gauntlets
		[5] = { itemID = 23273, price = "24000 #alliance#" }; --Knight-Captain's Lamellar Leggings
		[6] = { itemID = 23275, price = "14000 #alliance#" }; --Knight-Lieutenant's Lamellar Sabatons
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16474, price = "68200 #alliance#" }; --Field Marshal's Lamellar Faceguard
		[2] = { itemID = 16476, price = "52200 #alliance#" }; --Field Marshal's Lamellar Pauldrons
		[3] = { itemID = 16473, price = "68200 #alliance#" }; --Field Marshal's Lamellar Chestplate
		[4] = { itemID = 16471, price = "52200 #alliance#" }; --Marshal's Lamellar Gloves
		[5] = { itemID = 16475, price = "68200 #alliance#" }; --Marshal's Lamellar Legplates
		[6] = { itemID = 16472, price = "52200 #alliance#" }; --Marshal's Lamellar Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6116474, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Faceguard
		[2] = { itemID = 6116476, price = "1930 #arena# #alliance#" }; --Grand Marshal's Lamellar Pauldrons
		[3] = { itemID = 6116473, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Chestplate
		[4] = { itemID = 6116471, price = "1430 #arena# #alliance#" }; --Grand Marshal's Lamellar Gloves
		[5] = { itemID = 6116475, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Legplates
		[6] = { itemID = 6116472, price = "1430 #arena# #alliance#" }; --Grand Marshal's Lamellar Boots
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 29604, price = "24000 #horde#" }; --Champion's Lamellar Headguard
		[2] = { itemID = 29605, price = "14000 #horde#" }; --Champion's Lamellar Shoulders
		[3] = { itemID = 29602, price = "24000 #horde#" }; --Legionnaire's Lamellar Breastplate
		[4] = { itemID = 29600, price = "14000 #horde#" }; --Blood Guard's Lamellar Gauntlets
		[5] = { itemID = 29603, price = "24000 #horde#" }; --Legionnaire's Lamellar Leggings
		[6] = { itemID = 29601, price = "14000 #horde#" }; --Blood Guard's Lamellar Sabatons
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 29616, price = "68200 #horde#" }; --Warlord's Lamellar Faceguard
		[2] = { itemID = 29617, price = "52200 #horde#" }; --Warlord's Lamellar Pauldrons
		[3] = { itemID = 29615, price = "68200 #horde#" }; --Warlord's Lamellar Chestplate
		[4] = { itemID = 29613, price = "52200 #horde#" }; --General's Lamellar Gloves
		[5] = { itemID = 29614, price = "68200 #horde#" }; --General's Lamellar Legplates
		[6] = { itemID = 29612, price = "52200 #horde#" }; --General's Lamellar Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6129616, price = "2370 #arena# #horde#" }; --High Warlord's Lamellar Faceguard
		[2] = { itemID = 6129617, price = "1930 #arena# #horde#" }; --High Warlord's Lamellar Pauldrons
		[3] = { itemID = 6129615, price = "2370 #arena# #horde#" }; --High Warlord's Lamellar Chestplate
		[4] = { itemID = 6129613, price = "1430 #arena# #horde#" }; --High High Warlord's Lamellar Gloves
		[5] = { itemID = 6129614, price = "2370 #arena# #horde#" }; --High High Warlord's Lamellar Legplates
		[6] = { itemID = 6129612, price = "1430 #arena# #horde#" }; --High High Warlord's Lamellar Boots
	};
};

AtlasLoot_Data["PVPPriest"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 17598, price = "9435 #alliance#" }; --Lieutenant Commander's Satin Hood
		[2] = { itemID = 17601, price = "6885 #alliance#" }; --Lieutenant Commander's Satin Mantle
		[3] = { itemID = 17600, price = "9435 #alliance#" }; --Knight-Captain's Satin Tunic
		[4] = { itemID = 17596, price = "5000 #alliance#" }; --Knight-Lieutenant's Satin Handwraps
		[5] = { itemID = 17599, price = "9435 #alliance#" }; --Knight-Captain's Satin Legguards
		[6] = { itemID = 17594, price = "5000 #alliance#" }; --Knight-Lieutenant's Satin Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23316, price = "24000 #alliance#" }; --Lieutenant Commander's Satin Hood
		[2] = { itemID = 23317, price = "14000 #alliance#" }; --Lieutenant Commander's Satin Mantle
		[3] = { itemID = 23303, price = "24000 #alliance#" }; --Knight-Captain's Satin Tunic
		[4] = { itemID = 23288, price = "14000 #alliance#" }; --Knight-Lieutenant's Satin Handwraps
		[5] = { itemID = 23302, price = "24000 #alliance#" }; --Knight-Captain's Satin Legguards
		[6] = { itemID = 23289, price = "14000 #alliance#" }; --Knight-Lieutenant's Satin Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 17602, price = "68200 #alliance#" }; --Field Marshal's Headdress
		[2] = { itemID = 17604, price = "52200 #alliance#" }; --Field Marshal's Satin Mantle
		[3] = { itemID = 17605, price = "68200 #alliance#" }; --Field Marshal's Satin Vestments
		[4] = { itemID = 17608, price = "52200 #alliance#" }; --Marshal's Satin Gloves
		[5] = { itemID = 17603, price = "68200 #alliance#" }; --Marshal's Satin Pants
		[6] = { itemID = 17607, price = "52200 #alliance#" }; --Marshal's Satin Sandals
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6117602, price = "2370 #arena# #alliance#" }; --Grand Marshal's Headdress
		[2] = { itemID = 6117604, price = "1930 #arena# #alliance#" }; --Grand Marshal's Satin Mantle
		[3] = { itemID = 6117605, price = "2370 #arena# #alliance#" }; --Grand Marshal's Satin Vestments
		[4] = { itemID = 6117608, price = "1430 #arena# #alliance#" }; --Grand Marshal's Satin Gloves
		[5] = { itemID = 6117603, price = "2370 #arena# #alliance#" }; --Grand Marshal's Satin Pants
		[6] = { itemID = 6117607, price = "1430 #arena# #alliance#" }; --Grand Marshal's Satin Sandals
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16489, price = "9435 #horde#" }; --Champion's Satin Hood
		[2] = { itemID = 16492, price = "6885 #horde#" }; --Champion's Satin Mantle
		[3] = { itemID = 16491, price = "9435 #horde#" }; --Legionnaire's Satin Tunic
		[4] = { itemID = 16487, price = "5000 #horde#" }; --Blood Guard's Satin Handwraps
		[5] = { itemID = 16490, price = "9435 #horde#" }; --Legionnaire's Satin Legguards
		[6] = { itemID = 16485, price = "5000 #horde#" }; --Blood Guard's Satin Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23261, price = "24000 #horde#" }; --Champion's Satin Hood
		[2] = { itemID = 23262, price = "14000 #horde#" }; --Champion's Satin Mantle
		[3] = { itemID = 22885, price = "24000 #horde#" }; --Legionnaire's Satin Tunic
		[4] = { itemID = 22869, price = "14000 #horde#" }; --Blood Guard's Satin Handwraps
		[5] = { itemID = 22882, price = "24000 #horde#" }; --Legionnaire's Satin Legguards
		[6] = { itemID = 22859, price = "14000 #horde#" }; --Blood Guard's Satin Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 17623, price = "68200 #horde#" }; --Warlord's Satin Cowl
		[2] = { itemID = 17622, price = "52200 #horde#" }; --Warlord's Satin Mantle
		[3] = { itemID = 17624, price = "68200 #horde#" }; --Warlord's Satin Robes
		[4] = { itemID = 17620, price = "52200 #horde#" }; --General's Satin Gloves
		[5] = { itemID = 17625, price = "68200 #horde#" }; --General's Satin Leggings
		[6] = { itemID = 17618, price = "52200 #horde#" }; --General's Satin Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6117623, price = "2370 #arena# #horde#" }; --High Warlord's Satin Cowl
		[2] = { itemID = 6117622, price = "1930 #arena# #horde#" }; --High Warlord's Satin Mantle
		[3] = { itemID = 6117624, price = "2370 #arena# #horde#" }; --High Warlord's Satin Robes
		[4] = { itemID = 6117620, price = "1430 #arena# #horde#" }; --High High Warlord's Satin Gloves
		[5] = { itemID = 6117625, price = "2370 #arena# #horde#" }; --High High Warlord's Satin Leggings
		[6] = { itemID = 6117618, price = "1430 #arena# #horde#" }; --High High Warlord's Satin Boots
	};
};


AtlasLoot_Data["PVPRogue"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16418, price = "9435 #alliance#" }; --Lieutenant Commander's Leather Helm
		[2] = { itemID = 16420, price = "6885 #alliance#" }; --Lieutenant Commander's Leather Shoulders
		[3] = { itemID = 16417, price = "9435 #alliance#" }; --Knight-Captain's Leather Chestpiece
		[4] = { itemID = 16396, price = "5000 #alliance#" }; --Knight-Lieutenant's Leather Grips
		[5] = { itemID = 16419, price = "9435 #alliance#" }; --Knight-Captain's Leather Legguards
		[6] = { itemID = 16392, price = "5000 #alliance#" }; --Knight-Lieutenant's Leather Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23312, price = "24000 #alliance#" }; --Lieutenant Commander's Leather Helm
		[2] = { itemID = 23313, price = "14000 #alliance#" }; --Lieutenant Commander's Leather Shoulders
		[3] = { itemID = 23298, price = "24000 #alliance#" }; --Knight-Captain's Leather Chestpiece
		[4] = { itemID = 23284, price = "14000 #alliance#" }; --Knight-Lieutenant's Leather Grips
		[5] = { itemID = 23299, price = "24000 #alliance#" }; --Knight-Captain's Leather Legguards
		[6] = { itemID = 23285, price = "14000 #alliance#" }; --Knight-Lieutenant's Leather Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 16455, price = "68200 #alliance#" }; --Field Marshal's Leather Mask
		[2] = { itemID = 16457, price = "52200 #alliance#" }; --Field Marshal's Leather Epaulets
		[3] = { itemID = 16453, price = "68200 #alliance#" }; --Field Marshal's Leather Chestpiece
		[4] = { itemID = 16454, price = "52200 #alliance#" }; --Marshal's Leather Handgrips
		[5] = { itemID = 16456, price = "68200 #alliance#" }; --Marshal's Leather Leggings
		[6] = { itemID = 16446, price = "52200 #alliance#" }; --Marshal's Leather Footguards
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6116455, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Mask
		[2] = { itemID = 6116457, price = "1930 #arena# #alliance#" }; --Grand Marshal's Leather Epaulets
		[3] = { itemID = 6116453, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Chestpiece
		[4] = { itemID = 6116454, price = "1430 #arena# #alliance#" }; --Grand Marshal's Leather Handgrips
		[5] = { itemID = 6116456, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Leggings
		[6] = { itemID = 6116446, price = "1430 #arena# #alliance#" }; --Grand Marshal's Leather Footguards
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16506, price = "9435 #horde#" }; --Champion's Leather Helm
		[2] = { itemID = 16507, price = "6885 #horde#" }; --Champion's Leather Shoulders
		[3] = { itemID = 16505, price = "9435 #horde#" }; --Legionnaire's Leather Chestpiece
		[4] = { itemID = 16499, price = "5000 #horde#" }; --Blood Guard's Leather Grips
		[5] = { itemID = 16508, price = "9435 #horde#" }; --Legionnaire's Leather Legguards
		[6] = { itemID = 16498, price = "5000 #horde#" }; --Blood Guard's Leather Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23257, price = "24000 #horde#" }; --Champion's Leather Helm
		[2] = { itemID = 23258, price = "14000 #horde#" }; --Champion's Leather Shoulders
		[3] = { itemID = 22879, price = "24000 #horde#" }; --Legionnaire's Leather Chestpiece
		[4] = { itemID = 22864, price = "14000 #horde#" }; --Blood Guard's Leather Grips
		[5] = { itemID = 22880, price = "24000 #horde#" }; --Legionnaire's Leather Legguards
		[6] = { itemID = 22856, price = "14000 #horde#" }; --Blood Guard's Leather Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16561, price = "68200 #horde#" }; --Warlord's Leather Helm
		[2] = { itemID = 16562, price = "52200 #horde#" }; --Warlord's Leather Spaulders
		[3] = { itemID = 16563, price = "68200 #horde#" }; --Warlord's Leather Breastplate
		[4] = { itemID = 16560, price = "52200 #horde#" }; --General's Leather Mitts
		[5] = { itemID = 16564, price = "68200 #horde#" }; --General's Leather Legguards
		[6] = { itemID = 16558, price = "52200 #horde#" }; --General's Leather Treads
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116561, price = "2370 #arena# #horde#" }; --High Warlord's Leather Helm
		[2] = { itemID = 6116562, price = "1930 #arena# #horde#" }; --High Warlord's Leather Spaulders
		[3] = { itemID = 6116563, price = "2370 #arena# #horde#" }; --High Warlord's Leather Breastplate
		[4] = { itemID = 6116560, price = "1430 #arena# #horde#" }; --High High Warlord's Leather Mitts
		[5] = { itemID = 6116564, price = "2370 #arena# #horde#" }; --High High Warlord's Leather Legguards
		[6] = { itemID = 6116558, price = "1430 #arena# #horde#" }; --High High Warlord's Leather Treads
	};
};

AtlasLoot_Data["PVPShaman"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 29598, price = "24000 #alliance#" }; --Lieutenant Commander's Mail Headguard
		[2] = { itemID = 29599, price = "14000 #alliance#" }; --Lieutenant Commander's Mail Pauldrons
		[3] = { itemID = 29596, price = "24000 #alliance#" }; --Knight-Captain's Mail Hauberk
		[4] = { itemID = 29595, price = "14000 #alliance#" }; --Knight-Lieutenant's Mail Vices
		[5] = { itemID = 29597, price = "24000 #alliance#" }; --Knight-Captain's Mail Legguards
		[6] = { itemID = 29594, price = "14000 #alliance#" }; --Knight-Lieutenant's Mail Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 29610, price = "68200 #alliance#" }; --Field Marshal's Mail Helm
		[2] = { itemID = 29611, price = "52200 #alliance#" }; --Field Marshal's Mail Spaulders
		[3] = { itemID = 29609, price = "68200 #alliance#" }; --Field Marshal's Mail Armor
		[4] = { itemID = 29607, price = "52200 #alliance#" }; --Marshal's Mail Gauntlets
		[5] = { itemID = 29608, price = "68200 #alliance#" }; --Marshal's Mail Leggings
		[6] = { itemID = 29606, price = "52200 #alliance#" }; --Marshal's Mail Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 6129610, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Helm
		[2] = { itemID = 6129611, price = "1930 #arena# #alliance#" }; --Grand Marshal's Mail Spaulders
		[3] = { itemID = 6129609, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Armor
		[4] = { itemID = 6129607, price = "1430 #arena# #alliance#" }; --Grand Marshal's Mail Gauntlets
		[5] = { itemID = 6129608, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Leggings
		[6] = { itemID = 6129606, price = "1430 #arena# #alliance#" }; --Grand Marshal's Mail Boots
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16521, price = "9435 #horde#" }; --Champion's Mail Headguard
		[2] = { itemID = 16524, price = "6885 #horde#" }; --Champion's Mail Pauldrons
		[3] = { itemID = 16522, price = "9435 #horde#" }; --Legionnaire's Mail Hauberk
		[4] = { itemID = 16519, price = "5000 #horde#" }; --Blood Guard's Mail Vices
		[5] = { itemID = 16523, price = "9435 #horde#" }; --Legionnaire's Mail Legguards
		[6] = { itemID = 16518, price = "5000 #horde#" }; --Blood Guard's Mail Greaves
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23259, price = "24000 #horde#" }; --Champion's Mail Headguard
		[2] = { itemID = 23260, price = "14000 #horde#" }; --Champion's Mail Pauldrons
		[3] = { itemID = 22876, price = "24000 #horde#" }; --Legionnaire's Mail Hauberk
		[4] = { itemID = 22867, price = "14000 #horde#" }; --Blood Guard's Mail Vices
		[5] = { itemID = 22887, price = "24000 #horde#" }; --Legionnaire's Mail Legguards
		[6] = { itemID = 22857, price = "14000 #horde#" }; --Blood Guard's Mail Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16578, price = "68200 #horde#" }; --Warlord's Mail Helm
		[2] = { itemID = 16580, price = "52200 #horde#" }; --Warlord's Mail Spaulders
		[3] = { itemID = 16577, price = "68200 #horde#" }; --Warlord's Mail Armor
		[4] = { itemID = 16574, price = "52200 #horde#" }; --General's Mail Gauntlets
		[5] = { itemID = 16579, price = "68200 #horde#" }; --General's Mail Leggings
		[6] = { itemID = 16573, price = "52200 #horde#" }; --General's Mail Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116578, price = "2370 #arena# #horde#" }; --High Warlord's Mail Helm
		[2] = { itemID = 6116580, price = "1930 #arena# #horde#" }; --High Warlord's Mail Spaulders
		[3] = { itemID = 6116577, price = "2370 #arena# #horde#" }; --High Warlord's Mail Armor
		[4] = { itemID = 6116574, price = "1430 #arena# #horde#" }; --High High Warlord's Mail Gauntlets
		[5] = { itemID = 6116579, price = "2370 #arena# #horde#" }; --High High Warlord's Mail Leggings
		[6] = { itemID = 6116573, price = "1430 #arena# #horde#" }; --High High Warlord's Mail Boots
	};
};

AtlasLoot_Data["PVPWarlock"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 17566, price = "9435 #alliance#" }; --Lieutenant Commander's Dreadweave Cowl
		[2] = { itemID = 17569, price = "6885 #alliance#" }; --Lieutenant Commander's Dreadweave Spaulders
		[3] = { itemID = 17568, price = "9435 #alliance#" }; --Knight-Captain's Dreadweave Tunic
		[4] = { itemID = 17564, price = "5000 #alliance#" }; --Knight-Lieutenant's Dreadweave Handwraps
		[5] = { itemID = 17567, price = "9435 #alliance#" }; --Knight-Captain's Dreadweave Legguards
		[6] = { itemID = 17562, price = "5000 #alliance#" }; --Knight-Lieutenant's Dreadweave Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE..WHITE.." (Alliance)";
		[1] = { itemID = 23310, price = "24000 #alliance#" }; --Lieutenant Commander's Dreadweave Cowl
		[2] = { itemID = 23311, price = "14000 #alliance#" }; --Lieutenant Commander's Dreadweave Spaulders
		[3] = { itemID = 23297, price = "24000 #alliance#" }; --Knight-Captain's Dreadweave Tunic
		[4] = { itemID = 23282, price = "14000 #alliance#" }; --Knight-Lieutenant's Dreadweave Handwraps
		[5] = { itemID = 23296, price = "24000 #alliance#" }; --Knight-Captain's Dreadweave Legguards
		[6] = { itemID = 23283, price = "14000 #alliance#" }; --Knight-Lieutenant's Dreadweave Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 6117578, price = "2370 #arena# #alliance#" }; --Grand Marshal's Coronal
		[2] = { itemID = 6117580, price = "1930 #arena# #alliance#" }; --Grand Marshal's Dreadweave Shoulders
		[3] = { itemID = 6117581, price = "2370 #arena# #alliance#" }; --Grand Marshal's Dreadweave Robe
		[4] = { itemID = 6117584, price = "1430 #arena# #alliance#" }; --Grand Marshal's Dreadweave Gloves
		[5] = { itemID = 6117579, price = "2370 #arena# #alliance#" }; --Grand Marshal's Dreadweave Leggings
		[6] = { itemID = 6117583, price = "1430 #arena# #alliance#" }; --Grand Marshal's Dreadweave Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 17578, price = "68200 #alliance#" }; --Field Marshal's Coronal
		[2] = { itemID = 17580, price = "52200 #alliance#" }; --Field Marshal's Dreadweave Shoulders
		[3] = { itemID = 17581, price = "68200 #alliance#" }; --Field Marshal's Dreadweave Robe
		[4] = { itemID = 17584, price = "52200 #alliance#" }; --Marshal's Dreadweave Gloves
		[5] = { itemID = 17579, price = "68200 #alliance#" }; --Marshal's Dreadweave Leggings
		[6] = { itemID = 17583, price = "52200 #alliance#" }; --Marshal's Dreadweave Boots
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 17570, price = "9435 #horde#" }; --Champion's Dreadweave Cowl
		[2] = { itemID = 17573, price = "6885 #horde#" }; --Champion's Dreadweave Spaulders
		[3] = { itemID = 17572, price = "9435 #horde#" }; --Legionnaire's Dreadweave Tunic
		[4] = { itemID = 17577, price = "5000 #horde#" }; --Blood Guard's Dreadweave Handwraps
		[5] = { itemID = 17571, price = "9435 #horde#" }; --Legionnaire's Dreadweave Legguards
		[6] = { itemID = 17576, price = "5000 #horde#" }; --Blood Guard's Dreadweave Walkers
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23255, price = "24000 #horde#" }; --Champion's Dreadweave Cowl
		[2] = { itemID = 23256, price = "14000 #horde#" }; --Champion's Dreadweave Spaulders
		[3] = { itemID = 22884, price = "24000 #horde#" }; --Legionnaire's Dreadweave Tunic
		[4] = { itemID = 22865, price = "14000 #horde#" }; --Blood Guard's Dreadweave Handwraps
		[5] = { itemID = 22881, price = "24000 #horde#" }; --Legionnaire's Dreadweave Legguards
		[6] = { itemID = 22855, price = "14000 #horde#" }; --Blood Guard's Dreadweave Walkers
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 17591, price = "68200 #horde#" }; --Warlord's Dreadweave Hood
		[2] = { itemID = 17590, price = "52200 #horde#" }; --Warlord's Dreadweave Mantle
		[3] = { itemID = 17592, price = "68200 #horde#" }; --Warlord's Dreadweave Robe
		[4] = { itemID = 17588, price = "52200 #horde#" }; --General's Dreadweave Gloves
		[5] = { itemID = 17593, price = "68200 #horde#" }; --General's Dreadweave Pants
		[6] = { itemID = 17586, price = "52200 #horde#" }; --General's Dreadweave Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6117591, price = "2370 #arena# #horde#" }; --High Warlord's Dreadweave Hood
		[2] = { itemID = 6117590, price = "1930 #arena# #horde#" }; --High Warlord's Dreadweave Mantle
		[3] = { itemID = 6117592, price = "2370 #arena# #horde#" }; --High Warlord's Dreadweave Robe
		[4] = { itemID = 6117588, price = "1430 #arena# #horde#" }; --High High Warlord's Dreadweave Gloves
		[5] = { itemID = 6117593, price = "2370 #arena# #horde#" }; --High High Warlord's Dreadweave Pants
		[6] = { itemID = 6117586, price = "1430 #arena# #horde#" }; --High High Warlord's Dreadweave Boots
	};
};

AtlasLoot_Data["PVPWarrior"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = AL["Rare Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 16429, price = "9435 #alliance#" }; --Lieutenant Commander's Plate Helm
		[2] = { itemID = 16432, price = "6885 #alliance#" }; --Lieutenant Commander's Plate Shoulders
		[3] = { itemID = 16430, price = "9435 #alliance#" }; --Knight-Captain's Plate Hauberk
		[4] = { itemID = 16406, price = "5000 #alliance#" }; --Knight-Lieutenant's Plate Gauntlets
		[5] = { itemID = 16431, price = "9435 #alliance#" }; --Knight-Captain's Plate Leggings
		[6] = { itemID = 16405, price = "5000 #alliance#" }; --Knight-Lieutenant's Plate Greaves
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 23314, price = "24000 #alliance#" }; --Lieutenant Commander's Plate Helm
		[2] = { itemID = 23315, price = "14000 #alliance#" }; --Lieutenant Commander's Plate Shoulders
		[3] = { itemID = 23300, price = "24000 #alliance#" }; --Knight-Captain's Plate Hauberk
		[4] = { itemID = 23286, price = "14000 #alliance#" }; --Knight-Lieutenant's Plate Gauntlets
		[5] = { itemID = 23301, price = "24000 #alliance#" }; --Knight-Captain's Plate Leggings
		[6] = { itemID = 23287, price = "14000 #alliance#" }; --Knight-Lieutenant's Plate Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 16478, price = "68200 #alliance#" }; --Field Marshal's Plate Helm
		[2] = { itemID = 16480, price = "52200 #alliance#" }; --Field Marshal's Plate Shoulderguards
		[3] = { itemID = 16477, price = "68200 #alliance#" }; --Field Marshal's Plate Armor
		[4] = { itemID = 16484, price = "52200 #alliance#" }; --Marshal's Plate Gauntlets
		[5] = { itemID = 16479, price = "68200 #alliance#" }; --Marshal's Plate Legguards
		[6] = { itemID = 16483, price = "52200 #alliance#" }; --Marshal's Plate Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Alliance)";
		[1] = { itemID = 6116478, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Helm
		[2] = { itemID = 6116480, price = "1930 #arena# #alliance#" }; --Grand Marshal's Plate Shoulderguards
		[3] = { itemID = 6116477, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Armor
		[4] = { itemID = 6116484, price = "1430 #arena# #alliance#" }; --Grand Marshal's Plate Gauntlets
		[5] = { itemID = 6116479, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Legguards
		[6] = { itemID = 6116483, price = "1430 #arena# #alliance#" }; --Grand Marshal's Plate Boots
	};
	{
		Name = AL["Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16514, price = "9435 #horde#" }; --Champion's Plate Helm
		[2] = { itemID = 16516, price = "6885 #horde#" }; --Champion's Plate Shoulders
		[3] = { itemID = 16513, price = "9435 #horde#" }; --Legionnaire's Plate Hauberk
		[4] = { itemID = 16510, price = "5000 #horde#" }; --Blood Guard's Plate Gauntlets
		[5] = { itemID = 16515, price = "9435 #horde#" }; --Legionnaire's Plate Leggings
		[6] = { itemID = 16509, price = "5000 #horde#" }; --Blood Guard's Plate Greaves
	};
	{
		Name = AL["Superior Rare Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 23244, price = "24000 #horde#" }; --Champion's Plate Helm
		[2] = { itemID = 23243, price = "14000 #horde#" }; --Champion's Plate Shoulders
		[3] = { itemID = 22872, price = "24000 #horde#" }; --Legionnaire's Plate Hauberk
		[4] = { itemID = 22868, price = "14000 #horde#" }; --Blood Guard's Plate Gauntlets
		[5] = { itemID = 22873, price = "24000 #horde#" }; --Legionnaire's Plate Leggings
		[6] = { itemID = 22858, price = "14000 #horde#" }; --Blood Guard's Plate Greaves
	};
	{
		Name = AL["Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 16542, price = "68200 #horde#" }; --Warlord's Plate Headpiece
		[2] = { itemID = 16544, price = "52200 #horde#" }; --Warlord's Plate Shoulders
		[3] = { itemID = 16541, price = "68200 #horde#" }; --Warlord's Plate Armor
		[4] = { itemID = 16548, price = "52200 #horde#" }; --General's Plate Gauntlets
		[5] = { itemID = 16543, price = "68200 #horde#" }; --General's Plate Leggings
		[6] = { itemID = 16545, price = "52200 #horde#" }; --General's Plate Boots
	};
	{
		Name = AL["Superior Epic Set"] .. WHITE.." (Horde)";
		[1] = { itemID = 6116542, price = "2370 #arena# #horde#" }; --High Warlord's Plate Headpiece
		[2] = { itemID = 6116544, price = "1930 #arena# #horde#" }; --High Warlord's Plate Shoulders
		[3] = { itemID = 6116541, price = "2370 #arena# #horde#" }; --High Warlord's Plate Armor
		[4] = { itemID = 6116548, price = "1430 #arena# #horde#" }; --High High Warlord's Plate Gauntlets
		[5] = { itemID = 6116543, price = "2370 #arena# #horde#" }; --High High Warlord's Plate Leggings
		[6] = { itemID = 6116545, price = "1430 #arena# #horde#" }; --High High Warlord's Plate Boots
	};
};

----------------------------
--- PvP Level 60 Weapons ---
----------------------------

AtlasLoot_Data["PVPWeapons60"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["PvP Weapons (Level 60)"];
	{
		Name = "Grand Marshal's (Alliance)";
		[1] = { itemID = 18843, price = "34100 #alliance#" }; --Grand Marshal's Right Hand Blade
		[2] = { itemID = 18847, price = "34100 #alliance#" }; --Grand Marshal's Left Hand Blade
		[3] = { itemID = 23451, price = "34100 #alliance#" }; --Grand Marshal's Mageblade
		[4] = { itemID = 18838, price = "34100 #alliance#" }; --Grand Marshal's Dirk
		[5] = { itemID = 12584, price = "34100 #alliance#" }; --Grand Marshal's Longsword
		[6] = { itemID = 23456, price = "34100 #alliance#" }; --Grand Marshal's Swiftblade
		[7] = { itemID = 18876, price = "68200 #alliance#" }; --Grand Marshal's Claymore
		[8] = { itemID = 18827, price = "34100 #alliance#" }; --Grand Marshal's Handaxe
		[9] = { itemID = 18830, price = "68200 #alliance#" }; --Grand Marshal's Sunderer
		[10] = { itemID = 23454, price = "34100 #alliance#" }; --Grand Marshal's Warhammer
		[11] = { itemID = 18865, price = "34100 #alliance#" }; --Grand Marshal's Punisher
		[12] = { itemID = 18867, price = "68200 #alliance#" }; --Grand Marshal's Battle Hammer
		[13] = { itemID = 23455, price = "68200 #alliance#" }; --Grand Marshal's Demolisher
		[14] = { itemID = 18869, price = "68200 #alliance#" }; --Grand Marshal's Glaive
		[15] = { itemID = 18873, price = "68200 #alliance#" }; --Grand Marshal's Stave
		[16] = { itemID = 18825, price = "34100 #alliance#" }; --Grand Marshal's Aegis
		[17] = { itemID = 18833, price = "34100 #alliance#" }; --Grand Marshal's Bullseye
		[18] = { itemID = 18836, price = "34100 #alliance#" }; --Grand Marshal's Repeater
		[19] = { itemID = 18855, price = "34100 #alliance#" }; --Grand Marshal's Hand Cannon
		[20] = { itemID = 23452, price = "34100 #alliance#" }; --Grand Marshal's Tome of Power
		[21] = { itemID = 23453, price = "34100 #alliance#" }; --Grand Marshal's Tome of Restoration
	};
	{
		Name = "Lieutenant Commander's (Alliance)";
		[1] = { itemID = 918843, price = "20000 #alliance#" }; --Lieutenant Commander's Right Hand Blade
		[2] = { itemID = 918847, price = "20000 #alliance#" }; --Lieutenant Commander's Left Hand Blade
		[3] = { itemID = 923451, price = "20000 #alliance#" }; --Lieutenant Commander's Mageblade
		[4] = { itemID = 918838, price = "20000 #alliance#" }; --Lieutenant Commander's Dirk
		[5] = { itemID = 912584, price = "20000 #alliance#" }; --Lieutenant Commander's Longsword
		[6] = { itemID = 923456, price = "20000 #alliance#" }; --Lieutenant Commander's Swiftblade
		[7] = { itemID = 918876, price = "34100 #alliance#" }; --Lieutenant Commander's Claymore
		[8] = { itemID = 918827, price = "20000 #alliance#" }; --Lieutenant Commander's Handaxe
		[9] = { itemID = 918830, price = "34100 #alliance#" }; --Lieutenant Commander's Sunderer
		[10] = { itemID = 923454, price = "20000 #alliance#" }; --Lieutenant Commander's Warhammer
		[11] = { itemID = 918865, price = "20000 #alliance#" }; --Lieutenant Commander's Punisher
		[12] = { itemID = 918867, price = "34100 #alliance#" }; --Lieutenant Commander's Battle Hammer
		[13] = { itemID = 923455, price = "34100 #alliance#" }; --Lieutenant Commander's Demolisher
		[14] = { itemID = 918869, price = "34100 #alliance#" }; --Lieutenant Commander's Glaive
		[15] = { itemID = 918873, price = "34100 #alliance#" }; --Lieutenant Commander's Stave
		[16] = { itemID = 918825, price = "20000 #alliance#" }; --Lieutenant Commander's Aegis
		[17] = { itemID = 918833, price = "20000 #alliance#" }; --Lieutenant Commander's Bullseye
		[18] = { itemID = 918836, price = "20000 #alliance#" }; --Lieutenant Commander's Repeater
		[19] = { itemID = 918855, price = "20000 #alliance#" }; --Lieutenant Commander's Hand Cannon
		[20] = { itemID = 923452, price = "20000 #alliance#" }; --Lieutenant Commander's Tome of Power
		[21] = { itemID = 923453, price = "20000 #alliance#" }; --Lieutenant Commander's Tome of Restoration
	};
	{
		Name = "High Warlord's (Horde)";
		[1] = { itemID = 18844, price = "34100 #horde#" }; --High Warlord's Right Claw
		[2] = { itemID = 18848, price = "34100 #horde#" }; --High Warlord's Left Claw
		[3] = { itemID = 23466, price = "34100 #horde#" }; --High Warlord's Spellblade
		[4] = { itemID = 18840, price = "34100 #horde#" }; --High Warlord's Razor
		[5] = { itemID = 16345, price = "34100 #horde#" }; --High Warlord's Blade
		[6] = { itemID = 23467, price = "34100 #horde#" }; --High Warlord's Quickblade
		[7] = { itemID = 18877, price = "68200 #horde#" }; --High Warlord's Greatsword
		[8] = { itemID = 18828, price = "34100 #horde#" }; --High Warlord's Cleaver
		[9] = { itemID = 18831, price = "68200 #horde#" }; --High Warlord's Battle Axe
		[10] = { itemID = 23464, price = "34100 #horde#" }; --High Warlord's Battle Mace
		[11] = { itemID = 18866, price = "34100 #horde#" }; --High Warlord's Bludgeon
		[12] = { itemID = 18868, price = "68200 #horde#" }; --High Warlord's Pulverizer
		[13] = { itemID = 23465, price = "68200 #horde#" }; --High Warlord's Destroyer
		[14] = { itemID = 18871, price = "68200 #horde#" }; --High Warlord's Pig Sticker
		[15] = { itemID = 18874, price = "68200 #horde#" }; --High Warlord's War Staff
		[16] = { itemID = 18826, price = "34100 #horde#" }; --High Warlord's Shield Wall
		[17] = { itemID = 18835, price = "34100 #horde#" }; --High Warlord's Recurve
		[18] = { itemID = 18837, price = "34100 #horde#" }; --High Warlord's Crossbow
		[19] = { itemID = 18860, price = "34100 #horde#" }; --High Warlord's Street Sweeper
		[20] = { itemID = 23468, price = "34100 #horde#" }; --High Warlord's Tome of Destruction
		[21] = { itemID = 23469, price = "34100 #horde#" }; --High Warlord's Tome of Mending

	};
	{
		Name = "Champion's (Horde)";
		[1] = { itemID = 918844, price = "20000 #horde#" }; --Champion's Right Claw
		[2] = { itemID = 918848, price = "20000 #horde#" }; --Champion's Left Claw
		[3] = { itemID = 923466, price = "20000 #horde#" }; --Champion's Spellblade
		[4] = { itemID = 918840, price = "20000 #horde#" }; --Champion's Razor
		[5] = { itemID = 916345, price = "20000 #horde#" }; --Champion's Blade
		[6] = { itemID = 923467, price = "20000 #horde#" }; --Champion's Quickblade
		[7] = { itemID = 918877, price = "34100 #horde#" }; --Champion's Greatsword
		[8] = { itemID = 918828, price = "20000 #horde#" }; --Champion's Cleaver
		[9] = { itemID = 918831, price = "34100 #horde#" }; --Champion's Battle Axe
		[10] = { itemID = 923464, price = "20000 #horde#" }; --Champion's Battle Mace
		[11] = { itemID = 918866, price = "20000 #horde#" }; --Champion's Bludgeon
		[12] = { itemID = 918868, price = "34100 #horde#" }; --Champion's Pulverizer
		[13] = { itemID = 923465, price = "34100 #horde#" }; --Champion's Destroyer
		[14] = { itemID = 918871, price = "34100 #horde#" }; --Champion's Pig Sticker
		[15] = { itemID = 918874, price = "34100 #horde#" }; --Champion's War Staff
		[16] = { itemID = 918826, price = "20000 #horde#" }; --Champion's Shield Wall
		[17] = { itemID = 918835, price = "20000 #horde#" }; --Champion's Recurve
		[18] = { itemID = 918837, price = "20000 #horde#" }; --Champion's Crossbow
		[19] = { itemID = 918860, price = "20000 #horde#" }; --Champion's Street Sweeper
		[20] = { itemID = 923468, price = "20000 #horde#" }; --Champion's Tome of Destruction
		[21] = { itemID = 923469, price = "20000 #horde#" }; --Champion's Tome of Mending
	};
};

--------------------------------
--- PvP Level 60 Accessories ---
--------------------------------
AtlasLoot_Data["PvP60Accessories"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["PvP Accessories (Level 60)"];
	{
		Name = "Alliance 1";
		[1] = { itemID = 100533, price = "34100 #alliance#" }; --Combatant's Amulet of Victory
		[2] = { itemID = 100534, price = "34100 #alliance#" }; --Combatant's Amulet of Triumph
		[3] = { itemID = 100535, price = "34100 #alliance#" }; --Combatant's Amulet of Dominance
		[4] = { itemID = 100536, price = "34100 #alliance#" }; --Combatant's Amulet of Conquest
		[5] = { itemID = 100537, price = "34100 #alliance#" }; --Combatant's Loop of Triumph
		[6] = { itemID = 100538, price = "34100 #alliance#" }; --Combatant's Loop of Victory
		[7] = { itemID = 100539, price = "34100 #alliance#" }; --Combatant's Loop of Dominance
		[8] = { itemID = 100540, price = "34100 #alliance#" }; --Combatant's Loop of Conquest
		[9] = { itemID = 100541, price = "34100 #alliance#" }; --Combatant's Cloak of Triumph
		[10] = { itemID = 100542, price = "34100 #alliance#" }; --Combatant's Cloak of Victory
		[11] = { itemID = 100543, price = "34100 #alliance#" }; --Combatant's Cloak of Dominance
		[12] = { itemID = 100544, price = "34100 #alliance#" }; --Combatant's Cloak of Conquest
		[16] = { itemID = 100526, price = " #alliance#" }; --Battlemaster's Fury
		[17] = { itemID = 100527, price = " #alliance#" }; --Battlemaster's Rage
		[18] = { itemID = 100528, price = " #alliance#" }; --Battlemaster's Ruination
		[19] = { itemID = 100529, price = " #alliance#" }; --Insignia of the Alliance
		[20] = { itemID = 100530, price = " #alliance#" }; --Insignia of the Horde
		[21] = { itemID = 100531, price = " #alliance#" }; --Combatant's Scroll of Battle
		[22] = { itemID = 100532, price = " #alliance#" }; --Combatant's Scroll of Sorcery
	};
	{
		Name = "Alliance 2";
		[1] = { itemID = 29465, price = "50000 #alliance#" }; --Black Battlestrider
		[2] = { itemID = 29467, price = "50000 #alliance#" }; --Black War Ram
		[3] = { itemID = 29468, price = "50000 #alliance#" }; --Black War Steed Bridle
		[4] = { itemID = 29471, price = "50000 #alliance#" }; --Reins of the Black War Tiger
		[5] = { itemID = 35906, price = "50000 #alliance#" }; --Reins of the Black War Elekk
		[7] = { itemID = 18863, price = "2805 #alliance#" }; --Insignia of the Alliance
		[8] = { itemID = 18856, price = "2805 #alliance#" }; --Insignia of the Alliance
		[9] = { itemID = 18859, price = "2805 #alliance#" }; --Insignia of the Alliance
		[10] = { itemID = 18864, price = "2805 #alliance#" }; --Insignia of the Alliance
		[11] = { itemID = 18862, price = "2805 #alliance#" }; --Insignia of the Alliance
		[12] = { itemID = 18857, price = "2805 #alliance#" }; --Insignia of the Alliance
		[13] = { itemID = 29593, price = "2805 #alliance#" }; --Insignia of the Alliance
		[14] = { itemID = 18858, price = "2805 #alliance#" }; --Insignia of the Alliance
		[15] = { itemID = 18854, price = "2805 #alliance#" }; --Insignia of the Alliance
		[16] = { itemID = 15196, price = "15000 #alliance#" }; --Private's Tabard
		[17] = { itemID = 15198, price = "20000 #alliance#" }; --Knight's Colors
		[18] = { itemID = 18606, price = "15300 #alliance#" }; --Alliance Battle Standard
		[20] = { itemID = 18839, price = "10 #silver# 1 #alliance#" }; --Combat Healing Potion
		[21] = { itemID = 18841, price = "10 #silver# 1 #alliance#" }; --Combat Mana Potion
		[22] = { itemID = 32455, price = "12 #silver# 1 #alliance#" }; --Star's Lament
	};
	{
		Name = "Alliance 3";
		[1] = { itemID = 18457, price = "300 #alliance#" }; --Sergeant Major's Silk Cuffs
		[2] = { itemID = 18456, price = "1600 #alliance#" }; --Sergeant Major's Silk Cuffs
		[4] = { itemID = 18455, price = "300 #alliance#" }; --Sergeant Major's Dragonhide Armsplints
		[5] = { itemID = 18454, price = "1600 #alliance#" }; --Sergeant Major's Dragonhide Armsplints
		[7] = { itemID = 18453, price = "300 #alliance#" }; --Sergeant Major's Leather Armsplints
		[8] = { itemID = 18452, price = "1600 #alliance#" }; --Sergeant Major's Leather Armsplints
		[10] = { itemID = 18449, price = "300 #alliance#" }; --Sergeant Major's Chain Armguards
		[11] = { itemID = 18448, price = "1600 #alliance#" }; --Sergeant Major's Chain Armguards
		[13] = { itemID = 18447, price = "300 #alliance#" }; --Sergeant Major's Plate Wristguards
		[14] = { itemID = 18445, price = "1600 #alliance#" }; --Sergeant Major's Plate Wristguards
		[16] = { itemID = 18440, price = "100 #alliance#" }; --Sergeant's Cape
		[17] = { itemID = 18441, price = "300 #alliance#" }; --Sergeant's Cape
		[18] = { itemID = 16342, price = "1600 #alliance#" }; --Sergeant's Cape
		[20] = { itemID = 18442, price = "100 #alliance#" }; --Master Sergeant's Insignia
		[21] = { itemID = 18444, price = "300 #alliance#" }; --Master Sergeant's Insignia
		[22] = { itemID = 18443, price = "1600 #alliance#" }; --Master Sergeant's Insignia
	};
	{
		Name = "Horde 1";
		[1] = { itemID = 100533, price = "34100 #horde#" }; --Combatant's Amulet of Victory
		[2] = { itemID = 100534, price = "34100 #horde#" }; --Combatant's Amulet of Triumph
		[3] = { itemID = 100535, price = "34100 #horde#" }; --Combatant's Amulet of Dominance
		[4] = { itemID = 100536, price = "34100 #horde#" }; --Combatant's Amulet of Conquest
		[5] = { itemID = 100537, price = "34100 #horde#" }; --Combatant's Loop of Triumph
		[6] = { itemID = 100538, price = "34100 #horde#" }; --Combatant's Loop of Victory
		[7] = { itemID = 100539, price = "34100 #horde#" }; --Combatant's Loop of Dominance
		[8] = { itemID = 100540, price = "34100 #horde#" }; --Combatant's Loop of Conquest
		[9] = { itemID = 100541, price = "34100 #horde#" }; --Combatant's Cloak of Triumph
		[10] = { itemID = 100542, price = "34100 #horde#" }; --Combatant's Cloak of Victory
		[11] = { itemID = 100543, price = "34100 #horde#" }; --Combatant's Cloak of Dominance
		[12] = { itemID = 100544, price = "34100 #horde#" }; --Combatant's Cloak of Conquest
		[16] = { itemID = 100526, price = " #horde#" }; --Battlemaster's Fury
		[17] = { itemID = 100527, price = " #horde#" }; --Battlemaster's Rage
		[18] = { itemID = 100528, price = " #horde#" }; --Battlemaster's Ruination
		[19] = { itemID = 100529, price = " #horde#" }; --Insignia of the Alliance
		[20] = { itemID = 100530, price = " #horde#" }; --Insignia of the Horde
		[21] = { itemID = 100531, price = " #horde#" }; --Combatant's Scroll of Battle
		[22] = { itemID = 100532, price = " #horde#" }; --Combatant's Scroll of Sorcery
	};
	{
		Name = "Horde 2";
		[1] = { itemID = 29466, price = "50000 #horde#" }; --Black War Kodo
		[2] = { itemID = 29469, price = "50000 #horde#" }; --Horn of the Black War Wolf
		[3] = { itemID = 29470, price = "50000 #horde#" }; --Red Skeletal Warhorse
		[4] = { itemID = 29472, price = "50000 #horde#" }; --Whistle of the Black War Raptor
		[5] = { itemID = 34129, price = "50000 #horde#" }; --Swift Warstrider
		[7] = { itemID = 18853, price = "2805 #horde#" }; --Insignia of the Horde
		[8] = { itemID = 18846, price = "2805 #horde#" }; --Insignia of the Horde
		[9] = { itemID = 18850, price = "2805 #horde#" }; --Insignia of the Horde
		[10] = { itemID = 29592, price = "2805 #horde#" }; --Insignia of the Horde
		[11] = { itemID = 18851, price = "2805 #horde#" }; --Insignia of the Horde
		[12] = { itemID = 18849, price = "2805 #horde#" }; --Insignia of the Horde
		[13] = { itemID = 18845, price = "2805 #horde#" }; --Insignia of the Horde
		[14] = { itemID = 18852, price = "2805 #horde#" }; --Insignia of the Horde
		[15] = { itemID = 18834, price = "2805 #horde#" }; --Insignia of the Horde
		[16] = { itemID = 15197, price = "15000 #horde#" }; --Scout's Tabard
		[17] = { itemID = 15199, price = "20000 #horde#" }; --Stone Guard's Herald
		[18] = { itemID = 18607, price = "15300 #horde#" }; --Horde Battle Standard
		[20] = { itemID = 18839, price = "10 #silver# 1 #horde#" }; --Combat Healing Potion
		[21] = { itemID = 18841, price = "10 #silver# 1 #horde#" }; --Combat Mana Potion
		[22] = { itemID = 32455, price = "12 #silver# 1 #horde#" }; --Star's Lament
	};
	{
		Name = "Horde 3";
		[1] = { itemID = 18437, price = "300 #horde#" }; --First Sergeant's Silk Cuffs
		[2] = { itemID = 16486, price = "1600 #horde#" }; --First Sergeant's Silk Cuffs
		[4] = { itemID = 18436, price = "300 #horde#" }; --First Sergeant's Dragonhide Armguards
		[5] = { itemID = 18434, price = "1600 #horde#" }; --First Sergeant's Dragonhide Armguards
		[7] = { itemID = 18435, price = "300 #horde#" }; --First Sergeant's Leather Armguards
		[8] = { itemID = 16497, price = "1600 #horde#" }; --First Sergeant's Leather Armguards
		[10] = { itemID = 18432, price = "300 #horde#" }; --First Sergeant's Mail Wristguards
		[11] = { itemID = 16532, price = "1600 #horde#" }; --First Sergeant's Mail Wristguards
		[13] = { itemID = 18430, price = "300 #horde#" }; --First Sergeant's Plate Bracers
		[14] = { itemID = 18429, price = "1600 #horde#" }; --First Sergeant's Plate Bracers
		[16] = { itemID = 18427, price = "100 #horde#" }; --Sergeant's Cloak
		[17] = { itemID = 16341, price = "300 #horde#" }; --Sergeant's Cloak
		[18] = { itemID = 18461, price = "1600 #horde#" }; --Sergeant's Cloak
		[20] = { itemID = 15200, price = "100 #horde#" }; --Senior Sergeant's Insignia
		[21] = { itemID = 18428, price = "300 #horde#" }; --Senior Sergeant's Insignia
		[22] = { itemID = 16335, price = "1600 #horde#" }; --Senior Sergeant's Insignia
	};
};

AtlasLoot_Data["PvP60Ench"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["PvP Enchants"];
	{
		Name = AL["PvP Enchants"];
		[1] = { itemID = 100545, price = "25000 #alliance#" }; --Superior Resistance
		[2] = { itemID = 100546, price = "25000 #alliance#" }; --Lesser Resilience
		[3] = { itemID = 100547, price = "25000 #alliance#" }; --Absorption
		[4] = { itemID = 100548, price = "25000 #alliance#" }; --Lesser Stats
		[5] = { itemID = 100549, price = "25000 #alliance#" }; --Superior Intellect
		[6] = { itemID = 100550, price = "25000 #alliance#" }; --Nature Power
		[7] = { itemID = 100551, price = "25000 #alliance#" }; --Arcane Power
		[8] = { itemID = 100552, price = "25000 #alliance#" }; --Holy Power
		[9] = { itemID = 100553, price = "25000 #alliance#" }; --Greater Healing Power
		[10] = { itemID = 100554, price = "25000 #alliance#" }; --Superior Strength
		[11] = { itemID = 100555, price = "25000 #alliance#" }; --Greater Riding Skill
		[12] = { itemID = 100556, price = "25000 #alliance#" }; --Lesser Boar's Speed
		[13] = { itemID = 100557, price = "25000 #alliance#" }; --Lesser Cat's Swiftness
		[14] = { itemID = 100558, price = "25000 #alliance#" }; --Lesser Falcon's Quickness
		[15] = { itemID = 100559, price = "25000 #alliance#" }; --Lesser Stamina
		[16] = { itemID = 100560, price = "25000 #alliance#" }; --Lesser Stats
		[17] = { itemID = 100561, price = "40000 #alliance#" }; --Lesser Blood Draining
		[18] = { itemID = 100563, price = "40000 #alliance#" }; --Lesser Arcanum of Dominance
		[19] = { itemID = 100564, price = "50000 #alliance#" }; --Lesser Arcanum of Triumph
		[20] = { itemID = 449570, price = "40000 #alliance#" }; --Lesser Inscription of the Gladiator
		[21] = { itemID = 449571, price = "40000 #alliance#" }; --Lesser Inscription of the Battle Mage
	};
};
----------------
--- Factions ---
----------------

------------
--- Misc ---
------------

AtlasLoot_Data["DesolaceCentaurClans"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Desolace Centaur Clans";
	{
		Name = BabbleFaction["Magram Clan Centaur"];
		[1] = { itemID = 6789}; --Ceremonial Centaur Blanket
		[2] = { itemID = 6788}; --Magram Hunter's Belt
	};
	{
		Name = BabbleFaction["Gelkis Clan Centaur"];
		[1] = { itemID = 6773}; --Gelkis Marauder Chain
		[2] = { itemID = 6774}; --Uthek's Finger
	};
};

AtlasLoot_Data["Wintersaber"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Wintersaber Trainers"];
	{
		Name = BabbleFaction["Wintersaber Trainers"];
		[1] = { itemID = 13086}; --Reins of the Winterspring Frostsaber 
	};
};

AtlasLoot_Data["ArathiBasinFactions"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Arathi Basin"];
	{
		Name = BabbleFaction["The League of Arathor"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		[6] = { itemID = 20132}; --Arathor Battle Tabard
	};
	{
		Name = BabbleFaction["The Defilers"] .. " (" .. BabbleFaction["Horde"] .. ")";
		[21] = { itemID = 20131}; --Battle Tabard of the Defilers
	};
};

-------------------
--- Argent Dawn ---
-------------------

AtlasLoot_Data["Argent"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Argent Dawn"];
	{
		Name = BabbleFaction["Argent Dawn"];
		[1] = { itemID = 22689}; --Sanctified Leather Helm
		[2] = { itemID = 22690}; --Leggings of the Plague Hunter
		[3] = { itemID = 22681}; --Band of Piety
		[4] = { itemID = 22680}; --Band of Resolution
		[5] = { itemID = 22688}; --Verimonde's Last Resort
		[6] = { itemID = 22679}; --Supply Bag 
		[8] = { itemID = 22638}; --Shadow Guard
		[10] = { itemID = 22523}; --Insignia of the Dawn
		[12] = { itemID = 12844}; --Argent Dawn Valor Token
		[16] = { itemID = 22667}; --Bracers of Hope
		[17] = { itemID = 22668}; --Bracers of Subterfuge
		[18] = { itemID = 22657}; --Amulet of the Dawn
		[19] = { itemID = 22659}; --Medallion of the Dawn
		[20] = { itemID = 22678}; --Talisman of Ascendance
		[21] = { itemID = 22656}; --The Purifier
		[23] = { itemID = 22636}; --Ice Guard
		[25] = { itemID = 22524}; --Insignia of the Crusade
	};
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 13724}; --Enriched Manna Biscuit
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 13482}; --Recipe: Transmute Air to Fire
		[2] = { itemID = 19203}; --Plans: Girdle of the Dawn
		[3] = { itemID = 19446}; --Formula: Enchant Bracer - Mana Regeneration
		[4] = { itemID = 19442}; --Formula: Powerful Anti-Venom
		[5] = { itemID = 19328}; --Pattern: Dawn Treaders
		[6] = { itemID = 19216}; --Pattern: Argent Boots
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 18171}; --Arcane Mantle of the Dawn
		[2] = { itemID = 18169}; --Flame Mantle of the Dawn
		[3] = { itemID = 18170}; --Frost Mantle of the Dawn
		[4] = { itemID = 18172}; --Nature Mantle of the Dawn
		[5] = { itemID = 18173}; --Shadow Mantle of the Dawn
		[6] = { itemID = 19205}; --Plans: Gloves of the Dawn
		[7] = { itemID = 19447}; --Formula: Enchant Bracer - Healing
		[8] = { itemID = 19329}; --Pattern: Golden Mantle of the Dawn
		[9] = { itemID = 19217}; --Pattern: Argent Shoulders
		[10] = { itemID = 13810}; --Blessed Sunfruit
		[11] = { itemID = 13813}; --Blessed Sunfruit Juice
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 18182}; --Chromatic Mantle of the Dawn
	};
};
---------------------------------------------------
--- Bloodsail Buccaneers & Hydraxian Waterlords ---
---------------------------------------------------

AtlasLoot_Data["Bloodsail"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Bloodsail Buccaneers"];
	{
		Name = BabbleFaction["Bloodsail Buccaneers"];
		[1] = { icon = "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r1#" };
		[2] = { itemID = 22742}; --Bloodsail Shirt
		[3] = { itemID = 22743}; --Bloodsail Sash
		[4] = { itemID = 22745}; --Bloodsail Pants
		[5] = { itemID = 22744}; --Bloodsail Boots
		[7] = { icon = "INV_Helmet_66", "=q6=" .. BabbleFaction["Bloodsail Buccaneers"], "=q5=#r2#" };
		[8] = { itemID = 12185}; --Bloodsail Admiral's Hat
	};
};

AtlasLoot_Data["Hydraxian"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Hydraxian Waterlords"];
	{
		Name = BabbleFaction["Hydraxian Waterlords"];
		[1] = { icon = "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r3#" };
		[2] = { itemID = 18399}; --Ocean's Breeze 
		[3] = { itemID = 18398}; --Tidal Loop 
		[4] = { itemID = 17333}; --Aqual Quintessence
		[16] = { icon = "Spell_Frost_SummonWaterElemental_2", "=q6=" .. BabbleFaction["Hydraxian Waterlords"], "=q5=#r4#" };
		[17] = { itemID = 22754}; --Eternal Quintessence
	};
};
-------------------------
--- Brood of Nozdormu ---
-------------------------

AtlasLoot_Data["AQBroodRings"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Brood of Nozdormu"];
	{
		Name = BabbleFaction["Brood of Nozdormu"];
		[1] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Conqueror"] };
		[2] = { itemID = 21201}; --Signet Ring of the Bronze Dragonflight
		[3] = { itemID = 21202}; --Signet Ring of the Bronze Dragonflight
		[4] = { itemID = 21203}; --Signet Ring of the Bronze Dragonflight
		[5] = { itemID = 21204}; --Signet Ring of the Bronze Dragonflight
		[6] = { itemID = 21205}; --Signet Ring of the Bronze Dragonflight
		[8] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Invoker"] };
		[9] = { itemID = 21206}; --Signet Ring of the Bronze Dragonflight
		[10] = { itemID = 21207}; --Signet Ring of the Bronze Dragonflight
		[11] = { itemID = 21208}; --Signet Ring of the Bronze Dragonflight
		[12] = { itemID = 21209}; --Signet Ring of the Bronze Dragonflight
		[13] = { itemID = 21210}; --Signet Ring of the Bronze Dragonflight
		[16] = { icon = "INV_Jewelry_Ring_40", "=q6=" .. AL["Path of the Protector"] };
		[17] = { itemID = 21196}; --Signet Ring of the Bronze Dragonflight
		[18] = { itemID = 21197}; --Signet Ring of the Bronze Dragonflight
		[19] = { itemID = 21198}; --Signet Ring of the Bronze Dragonflight
		[20] = { itemID = 21199}; --Signet Ring of the Bronze Dragonflight
		[21] = { itemID = 21200}; --Signet Ring of the Bronze Dragonflight
	};
};

-----------------------
--- Cenarion Circle ---
-----------------------

AtlasLoot_Data["Cenarion"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Cenarion Circle"];
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22209}; --Plans: Heavy Obsidian Belt
		[2] = { itemID = 22768}; --Plans: Ironvine Belt
		[3] = { itemID = 20732}; --Formula: Enchant Cloak - Greater Fire Resistance
		[4] = { itemID = 22769}; --Pattern: Bramblewood Belt
		[5] = { itemID = 20509}; --Pattern: Sandstalker Bracers
		[6] = { itemID = 20506}; --Pattern: Spitfire Bracers
		[7] = { itemID = 22772}; --Pattern: Sylvan Shoulders
		[8] = { itemID = 22310}; --Pattern: Cenarion Herb Bag
		[10] = { itemID = 20802}; --Cenarion Combat Badge
		[11] = { itemID = 20800}; --Cenarion Logistics Badge
		[12] = { itemID = 21515}; --Mark of Remulos
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21187}; --Earthweave Cloak
		[18] = { itemID = 21178}; --Gloves of Earthen Power
		[19] = { itemID = 21179}; --Band of Earthen Wrath
		[25] = { itemID = 20801}; --Cenarion Tactical Badge
		[26] = { itemID = 21508}; --Mark of Cenarius
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22767}; --Plans: Ironvine Gloves
		[2] = { itemID = 22214}; --Plans: Light Obsidian Belt
		[3] = { itemID = 20733}; --Formula: Enchant Cloak - Greater Nature Resistance
		[4] = { itemID = 22770}; --Pattern: Bramblewood Boots
		[5] = { itemID = 20510}; --Pattern: Sandstalker Gauntlets
		[6] = { itemID = 20507}; --Pattern: Spitfire Gauntlets
		[7] = { itemID = 22773}; --Pattern: Sylvan Crown
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21183}; --Earthpower Vest
		[18] = { itemID = 21182}; --Band of Earthen Might
		[19] = { itemID = 21181}; --Grace of Earth
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22766}; --Plans: Ironvine Breastplate
		[2] = { itemID = 22219}; --Plans: Jagged Obsidian Shield
		[3] = { itemID = 22771}; --Pattern: Bramblewood Helm
		[4] = { itemID = 20511}; --Pattern: Sandstalker Breastplate
		[5] = { itemID = 20508}; --Pattern: Spitfire Breastplate
		[6] = { itemID = 22683}; --Pattern: Gaea's Embrace
		[7] = { itemID = 22312}; --Pattern: Satchel of Cenarius
		[8] = { itemID = 22774}; --Pattern: Sylvan Vest
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21186}; --Rockfury Bracers
		[18] = { itemID = 21184}; --Deeprock Bracers
		[19] = { itemID = 21189}; --Might of Cenarius
		[20] = { itemID = 21185}; --Earthcalm Orb
	};
	{
		Name = BabbleFaction["Cenarion Circle"];
		[1] = { itemID = 22221}; --Plans: Obsidian Mail Tunic
		[2] = { itemID = 20382}; --Pattern: Dreamscale Breastplate
		[16] = { icon = "INV_QirajIdol_Amber", "=q6=#j8#" };
		[17] = { itemID = 21190}; --Wrath of Cenarius
		[18] = { itemID = 21180}; --Earthstrike
		[19] = { itemID = 21188}; --Fist of Cenarius
	};
};

----------------------------------------
--- Stormpike Guard & Frostwolf Clan ---
----------------------------------------

AtlasLoot_Data["AlteracFactions"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Alterac Valley"];
	{
		Name = BabbleFaction["Stormpike Guard"] .. " (" .. BabbleFaction["Alliance"] .. ")";
		[1] = { itemID = 17904}; --Stormpike Insignia Rank 6
		[2] = { itemID = 17903}; --Stormpike Insignia Rank 5
		[3] = { itemID = 17902}; --Stormpike Insignia Rank 4
		[4] = { itemID = 17901}; --Stormpike Insignia Rank 3
		[5] = { itemID = 17900}; --Stormpike Insignia Rank 2
		[6] = { itemID = 17691}; --Stormpike Insignia Rank 1
		[7] = { itemID = 20648}; --Cold Forged Hammer
		[8] = { itemID = 19106}; --Ice Barbed Spear
		[9] = { itemID = 19108}; --Wand of Biting Cold
		[10] = { itemID = 19107}; --Bloodseeker
	};
	{
		Name = BabbleFaction["Frostwolf Clan"] .. " (" .. BabbleFaction["Horde"] .. ")";
		[1] = { itemID = 17909}; --Frostwolf Insignia Rank 6
		[2] = { itemID = 17908}; --Frostwolf Insignia Rank 5
		[3] = { itemID = 17907}; --Frostwolf Insignia Rank 4
		[4] = { itemID = 17906}; --Frostwolf Insignia Rank 3
		[5] = { itemID = 17905}; --Frostwolf Insignia Rank 2
		[6] = { itemID = 17690}; --Frostwolf Insignia Rank 1
	};
};

---------------------------
--- Thorium Brotherhood ---
---------------------------

AtlasLoot_Data["Thorium"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Thorium Brotherhood"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 17051}; --Plans: Dark Iron Bracers
		[2] = { itemID = 20761}; --Recipe: Transmute Elemental Fire
		[3] = { itemID = 19444}; --Formula: Enchant Weapon - Strength
		[4] = { itemID = 17023}; --Pattern: Molten Helm
		[5] = { itemID = 17022}; --Pattern: Corehound Boots
		[6] = { itemID = 17018}; --Pattern: Flarecore Gloves
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 17060}; --Plans: Dark Iron Destroyer
		[2] = { itemID = 17059}; --Plans: Dark Iron Reaver
		[3] = { itemID = 17049}; --Plans: Fiery Chain Girdle
		[4] = { itemID = 19206}; --Plans: Dark Iron Helm
		[5] = { itemID = 19448}; --Formula: Enchant Weapon - Mighty Spirit
		[6] = { itemID = 17025}; --Pattern: Black Dragonscale Boots
		[7] = { itemID = 19330}; --Pattern: Lava Belt
		[8] = { itemID = 17017}; --Pattern: Flarecore Mantle
		[9] = { itemID = 19219}; --Pattern: Flarecore Robe
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 18592}; --Plans: Sulfuron Hammer
		[2] = { itemID = 17052}; --Plans: Dark Iron Leggings
		[3] = { itemID = 17053}; --Plans: Fiery Chain Shoulders
		[4] = { itemID = 19209}; --Plans: Blackfury
		[5] = { itemID = 19208}; --Plans: Black Amnesty
		[6] = { itemID = 19207}; --Plans: Dark Iron Gauntlets
		[7] = { itemID = 19449}; --Formula: Enchant Weapon - Mighty Intellect
		[8] = { itemID = 19331}; --Pattern: Chromatic Gauntlets
		[9] = { itemID = 19332}; --Pattern: Corehound Belt
		[9] = { itemID = 19333}; --Pattern: Molten Belt
		[10] = { itemID = 19220}; --Pattern: Flarecore Leggings
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 19211}; --Plans: Blackguard
		[2] = { itemID = 20040}; --Plans: Dark Iron Boots
		[3] = { itemID = 19210}; --Plans: Ebon Hand
		[4] = { itemID = 19212}; --Plans: Nightfall
	};
};
----------------------
--- Timbermaw Hold ---
----------------------

AtlasLoot_Data["Timbermaw"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Timbermaw Hold"];
	{
		Name = BabbleFaction["Timbermaw Hold"];
		[1] = { icon = "INV_Misc_Horn_01", "=q6=#r2#" };
		[2] = { itemID = 13484}; --Recipe: Transmute Earth to Water
		[3] = { itemID = 22392}; --Formula: Enchant 2H Weapon - Agility
		[4] = { itemID = 20254}; --Pattern: Warbear Woolies
		[5] = { itemID = 20253}; --Pattern: Warbear Harness
		[7] = { icon = "INV_Misc_Horn_01", "=q6=#r3#" };
		[8] = { itemID = 16768}; --Furbolg Medicine Pouch
		[9] = { itemID = 16769}; --Furbolg Medicine Totem
		[10] = { itemID = 19202}; --Plans: Heavy Timbermaw Belt
		[11] = { itemID = 19445}; --Formula: Enchant Weapon - Agility
		[12] = { itemID = 19326}; --Pattern: Might of the Timbermaw
		[13] = { itemID = 19215}; --Pattern: Wisdom of the Timbermaw
		[16] = { icon = "INV_Misc_Horn_01", "=q6=#r4#" };
		[17] = { itemID = 19204}; --Plans: Heavy Timbermaw Boots
		[18] = { itemID = 19327}; --Pattern: Timbermaw Brawlers
		[19] = { itemID = 19218}; --Pattern: Mantle of the Timbermaw
		[22] = { icon = "INV_Misc_Horn_01", "=q6=#r5#" };
		[23] = { itemID = 21326}; --Defender of the Timbermaw 
	};
};

----------------------
--- Zandalar Tribe ---
----------------------

AtlasLoot_Data["Zandalar"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Zandalar Tribe"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 19858}; --Zandalar Honor Token
	};
	{
		Name = BabbleFaction["Friendly"];
		[1] = { icon = "INV_Misc_Coin_08", "=q6=#r2#" };
		[2] = { itemID = 20012}; --Recipe: Greater Dreamless Sleep
		[3] = { itemID = 19778}; --Plans: Bloodsoul Gauntlets
		[4] = { itemID = 19781}; --Plans: Darksoul Shoulders
		[5] = { itemID = 20757}; --Formula: Brilliant Mana Oil
		[6] = { itemID = 20001}; --Schematic: Bloodvine Lens
		[7] = { itemID = 19771}; --Pattern: Primal Batskin Bracers
		[8] = { itemID = 19766}; --Pattern: Bloodvine Boots
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 20014}; --Recipe: Major Troll's Blood Potion
		[2] = { itemID = 19777}; --Plans: Bloodsoul Shoulders
		[3] = { itemID = 19780}; --Plans: Darksoul Leggings
		[4] = { itemID = 20756}; --Formula: Brilliant Wizard Oil
		[5] = { itemID = 20000}; --Schematic: Bloodvine Goggles
		[6] = { itemID = 19773}; --Pattern: Blood Tiger Shoulders
		[7] = { itemID = 19770}; --Pattern: Primal Batskin Gloves
		[8] = { itemID = 19765}; --Pattern: Bloodvine Leggings
		[9] = { itemID = 20031}; --Essence Mango
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 20080}; --Sheen of Zanza
		[2] = { itemID = 20079}; --Spirit of Zanza
		[3] = { itemID = 20081}; --Swiftness of Zanza
		[4] = { itemID = 20011}; --Recipe: Mageblood Potion
		[5] = { itemID = 19776}; --Plans: Bloodsoul Breastplate
		[6] = { itemID = 19779}; --Plans: Darksoul Breastplate
		[7] = { itemID = 19772}; --Pattern: Blood Tiger Breastplate
		[8] = { itemID = 19769}; --Pattern: Primal Batskin Jerkin
		[9] = { itemID = 19764}; --Pattern: Bloodvine Vest
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 20077}; --Zandalar Signet of Might
		[2] = { itemID = 20076}; --Zandalar Signet of Mojo
		[3] = { itemID = 20078}; --Zandalar Signet of Serenity
		[4] = { itemID = 20013}; --Recipe: Living Action Potion
	};
};

--------------------
--- World Bosses ---
--------------------

----------------------------
--- Dragons of Nightmare ---
----------------------------

AtlasLoot_Data["WorldBossesCLASSIC"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["World Bosses"];
	Type = "ClassicRaid";
	{
		Name = "Weapons/Trinkets";
		[1] = { itemID = 20581, droprate = "9.70%" }; --Staff of Rampant Growth
		[2] = { itemID = 17070, droprate = "13.64%" }; --Fang of the Mystics
		[3] = {itemID = 19130, droprate = "11.89%" }; --Cold Snap
		[4] = { itemID = 17113, droprate = "16.87%" }; --Amberseal Keeper
		[5] = {itemID = 20636, droprate = "12.75%" }; --Hibernation Crystal
		[6] = { itemID = 20582, droprate = "9.57%" }; --Trance Stone
		[7] = {itemID = 18665, droprate = "40.96%" }; --The Eye of Shadow
		[14] = { itemID = 18704, droprate = "51.56%" }; --Mature Blue Dragon Sinew
		[15] = {itemID = 18714 }; --Ancient Sinew Wrapped Lamina
		[16] = { itemID = 20580, droprate = "8.93%" }; --Hammer of Bestial Fury
		[17] = { itemID = 20599, droprate = "12.63%" }; --Polished Ironwood Crossbow
		[18] = { itemID = 18202, droprate = "11.76%" }; --Eskhandar's Left Claw
		[19] = {itemID = 20577, droprate = "12.07%" }; --Nightmare Blade
		[20] = { itemID = 20578, droprate = "9.95%" }; --Emerald Dragonfang
		[21] = {itemID = 17112 }; --Empyrean Demolisher
		[22] = { itemID = 18542, droprate = "16.89%" }; --Typhoon
		[29] = { itemID = 20644, droprate = "80.05%" }; --Nightmare Engulfed Object
		[30] = { itemID = 20600 }; --Malfurion's Signet Ring
	};
	{
		Name = "Physical Gear";
		[1] = { itemID = 20623, droprate = "10.51%" }; --Circlet of Restless Dreams
		[3] = { itemID = 20615, droprate = "8.83%" }; --Dragonspur Wraps
		[4] = {itemID = 122884 }; --Wristguards of the Shifting Sands
		[6] = {itemID = 122885 }; --Waistguard of the Shifting Sands
		[8] = { itemID = 18544, droprate = "11.76%" }; --Doomhide Gauntlets
		[10] = { itemID = 20627, droprate = "11.68%" }; --Dark Heart Pants
		[13] = { itemID = 20633, droprate = "11.30%" }; --Unnatural Leather Spaulders
		[11] = { itemID = 20617, droprate = "9.80%" }; --Ancient Corroded Leggings
		[16] = {itemID = 20624, droprate = "13.23%" }; --Ring of the Unliving
		[18] = {itemID = 20622, droprate = "12.35%" }; --Dragonheart Necklace
		[20] = {itemID = 18541, droprate = "11.71%" }; --Puissant Cape
		[21] = { itemID = 18204, droprate = "12.23%" }; --Eskhandar's Pelt
	};
	{
		Name = "Caster Gear";
		[1] = {itemID = 19132 }; --Crystal Adorned Crown
		[2] = { itemID = 18546, droprate = "22.89%" }; --Infernal Headcage
		[3] = { itemID = 20628, droprate = "15.80%" }; --Deviate Growth Cap
		[5] = { itemID = 18545, droprate = "16.39%" }; --Leggings of Arcane Supremacy
		[6] = { itemID = 19133, droprate = "12.05%" }; --Fel Infused Leggings
		[7] = { itemID = 20638, droprate = "3.66%" }; --Leggings of the Demented Mind
		[8] = { itemID = 20639, droprate = "8.87%" }; --Strangely Glyphed Legplates
		[10] = { itemID = 19131, droprate = "12.23%" }; --Snowblind Shoes
		[11] = { itemID = 20631, droprate = "13.14%" }; --Mendicant's Slippers
		[12] = { itemID = 20634, droprate = "10.15%" }; --Boots of Fright
		[13] = { itemID = 20621, droprate = "10.24%" }; --Boots of the Endless Moor
		[14] = { itemID = 20629, droprate = "4.46%" }; --Malignant Footguards
		[16] = { itemID = 20630, droprate = "8.19%" }; --Gauntlets of the Shining Light
		[17] = { itemID = 20618, droprate = "9.71%" }; --Gloves of Delusional Power
		[15] = { itemID = 20635, droprate = "14.19%" }; --Jade Inlaid Vestments
		[19] = { itemID = 19135, droprate = "11.89%" }; --Blacklight Bracer
		[20] = {itemID = 122886 }; --Bracers of the Sand Prince
		[21] = { itemID = 20626, droprate = "9.44%" }; --Black Bark Wristbands
		[23] = {itemID = 122887 }; --Belt of the Sand Prince
		[24] = { itemID = 19134, droprate = "16.89%" }; --Flayed Doomguard Belt
		[25] = { itemID = 20625, droprate = "10.99%" }; --Belt of the Dark Bog
		[27] = { itemID = 20579, droprate = "9.14%" }; --Green Dragonskin Cloak
		[28] = {itemID = 18208, droprate = "11.22%" }; --Drape of Benediction
		[29] = {itemID = 20632, droprate = "13.69%" }; --Mindtear Band
		[30] = {itemID = 18543, droprate = "14.46%" }; --Ring of Entropy
	};
	{
		Name = "Tank Gear";
		[1] = { itemID = 18547, droprate = "12.93%" }; --Unmelting Ice Girdle
		[3] = { itemID = 20616, droprate = "10.20%" }; --Dragonbone Wristguards
		[5] = { itemID = 20619, droprate = "8.85%" }; --Acid Inscribed Greaves
		[7] = { itemID = 20637, droprate = "10.13%" }; --Acid Inscribed Pauldrons
	};
};

------------------------
-- Item Sacks Classic --
------------------------

AtlasLoot_ExtraData[22637] = {
	[1] = { itemID = 19790 }; --Animist's Caress
	[2] = { itemID = 19785 }; --Falcon's Call
	[3] = { itemID = 19787 }; --Presence of Sight
	[4] = { itemID = 19783 }; --Syncretist's Sigil
	[5] = { itemID = 19789 }; --Prophetic Aura
	[6] = { itemID = 19784 }; --Death's Embrace
	[7] = { itemID = 19786 }; --Vodouisant's Vigilant Embrace
	[8] = { itemID = 19788 }; --Hoodoo Hex
	[9] = { itemID = 19782 }; --Presence of Might
};