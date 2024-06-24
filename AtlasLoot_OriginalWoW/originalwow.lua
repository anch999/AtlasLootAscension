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
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleInventory["Key"].."s" };
		[2] = { itemID = 7146 }; --The Scarlet Key
		[3] = { itemID = 12382 }; --Key to the City
		[4] = { itemID = 6893 }; --Workshop Key
		[5] = { itemID = 11000 }; --Shadowforge Key
		[6] = { itemID = 11140 }; --Prison Cell Key
		[7] = { itemID = 18249 }; --Crescent Key
		[8] = { itemID = 13704 }; --Skeleton Key
		[10] = { icon = "INV_Box_01", name = WHITE..AL["Dungeon Set 2"] };
		[11] = { itemID = 22057 }; --Brazier of Invocation
		[12] = { itemID = 21986 }; --Banner of Provocation
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Misc"] };
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
		[1] = { itemID = 21499 }; --Vestments of the Shifting Sands
		[2] = { itemID = 21498 }; --Qiraji Sacrificial Dagger
		[4] = { itemID = 21500 }; --Belt of the Inquisition
		[5] = { itemID = 21501 }; --Toughened Silithid Hide Gloves
		[6] = { itemID = 21502 }; --Sand Reaver Wristguards
		[7] = { itemID = 21503 }; --Belt of the Sand Reaver
		[9] = { itemID = 22217 }; --Kurinnaxx's Venom Sac
		[16] = { itemID = 1506051, lootTable = {"AQ20SetsBACK","Token"} }; --Ceremonial Qiraji Drape
	};
	{
		Name = BabbleBoss["General Rajaxx"];
		[1] = { itemID = 21493 }; --Boots of the Vanguard
		[2] = { itemID = 21492 }; --Manslayer of the Qiraji
		[4] = { itemID = 21496 }; --Bracers of Qiraji Command
		[5] = { itemID = 21494 }; --Southwind's Grasp
		[6] = { itemID = 21497 }; --Boots of the Qiraji General
		[7] = { itemID = 21495 }; --Legplates of the Qiraji Command
		[9] = { icon = "INV_Box_01", name = WHITE..AL["Rajaxx's Captains"] };
		[10] = { itemID = 21810 }; --Treads of the Wandering Nomad
		[11] = { itemID = 21809 }; --Fury of the Forgotten Swarm
		[12] = { itemID = 21806 }; --Gavel of Qiraji Authority
		[16] = { itemID = 1506051, lootTable = {"AQ20SetsBACK","Token"} }; --Ceremonial Qiraji Drape
		[18] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Lieutenant General Andorov"] };
		[19] = { itemID = 22221 }; --Plans: Obsidian Mail Tunic
		[20] = { itemID = 22219 }; --Plans: Jagged Obsidian Shield
	};
	{
		Name = BabbleBoss["Moam"];
		[1] = { itemID = 21472 }; --Dustwind Turban
		[2] = { itemID = 21467 }; --Thick Silithid Chestguard
		[3] = { itemID = 21479 }; --Gauntlets of the Immovable
		[4] = { itemID = 21471 }; --Talon of Furious Concentration
		[6] = { itemID = 21470 }; --Cloak of the Savior
		[7] = { itemID = 21468 }; --Mantle of Maz'Nadir
		[8] = { itemID = 21455 }; --Southwind Helm
		[9] = { itemID = 21474 }; --Chitinous Shoulderguards
		[10] = { itemID = 21469 }; --Gauntlets of Southwind
		[11] = { itemID = 21476 }; --Obsidian Scaled Leggings
		[12] = { itemID = 21475 }; --Legplates of the Destroyer
		[13] = { itemID = 21477 }; --Ring of Fury
		[14] = { itemID = 21473 }; --Eye of Moam
		[16] = { itemID = 1506053, lootTable = {"AQ20SetsNECK","Token"} }; --Ceremonial Qiraji Pendant
		[18] = { itemID = 22220 }; --Plans: Black Grasp of the Destroyer
		[19] = { itemID = 22194 }; --Black Grasp of the Destroyer
	};
	{
		Name = BabbleBoss["Buru the Gorger"];
		[1] = { itemID = 21487 }; --Slimy Scaled Gauntlets
		[2] = { itemID = 21486 }; --Gloves of the Swarm
		[3] = { itemID = 21485 }; --Buru's Skull Fragment
		[5] = { itemID = 21489 }; --Quicksand Waders
		[6] = { itemID = 21491 }; --Scaled Bracers of the Gorger
		[7] = { itemID = 21490 }; --Slime Kickers
		[8] = { itemID = 21488 }; --Fetish of Chitinous Spikes
		[16] = { itemID = 1506052, lootTable = {"AQ20SetsFINGER","Token"} }; --Ceremonial Qiraji Ring
	};
	{
		Name = BabbleBoss["Ayamiss the Hunter"];
		[1] = { itemID = 21479 }; --Gauntlets of the Immovable
		[2] = { itemID = 21466 }; --Stinger of Ayamiss
		[3] = { itemID = 21478 }; --Bow of Taut Sinew
		[5] = { itemID = 21484 }; --Helm of Regrowth
		[6] = { itemID = 21480 }; --Scaled Silithid Gauntlets
		[7] = { itemID = 21482 }; --Boots of the Fiery Sands
		[8] = { itemID = 21481 }; --Boots of the Desert Protector
		[9] = { itemID = 21483 }; --Ring of the Desert Winds
		[16] = { itemID = 1506052, lootTable = {"AQ20SetsFINGER","Token"} }; --Ceremonial Qiraji Ring
	};
	{
		Name = BabbleBoss["Ossirian the Unscarred"];
		[1] = { itemID = 21456 }; --Sandstorm Cloak
		[2] = { itemID = 21464 }; --Shackles of the Unscarred
		[3] = { itemID = 21462 }; --Gloves of Dark Wisdom
		[4] = { itemID = 21461 }; --Leggings of the Black Blizzard
		[5] = { itemID = 21458 }; --Gauntlets of New Life
		[6] = { itemID = 21454 }; --Runic Stone Shoulders
		[7] = { itemID = 21463 }; --Ossirian's Binding
		[8] = { itemID = 21460 }; --Helm of Domination
		[9] = { itemID = 21453 }; --Mantle of the Horusath
		[10] = { itemID = 21457 }; --Bracers of Brutality
		[11] = { itemID = 21715 }; --Sand Polished Hammer
		[12] = { itemID = 21459 }; --Crossbow of Imminent Doom
		[13] = { itemID = 21452 }; --Staff of the Ruins
		[16] = { itemID = 21220 }; --Head of Ossirian the Unscarred
		[17] = { itemID = 21504 }; --Charm of the Shifting Sands
		[18] = { itemID = 21507 }; --Amulet of the Shifting Sands
		[19] = { itemID = 21505 }; --Choker of the Shifting Sands
		[20] = { itemID = 21506 }; --Pendant of the Shifting Sands
		[22] = { itemID = 1506053, lootTable = {"AQ20SetsNECK","Token"} }; --Ceremonial Qiraji Pendant
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20873 }; --Alabaster Idol
		[2] = { itemID = 20869 }; --Amber Idol
		[3] = { itemID = 20866 }; --Azure Idol
		[4] = { itemID = 20870 }; --Jasper Idol
		[5] = { itemID = 20868 }; --Lambent Idol
		[6] = { itemID = 20871 }; --Obsidian Idol
		[7] = { itemID = 20867 }; --Onyx Idol
		[8] = { itemID = 20872 }; --Vermillion Idol

		[9] = { itemID = 22202 }; --Small Obsidian Shard
		[10] = { itemID = 22203 }; --Large Obsidian Shard

		[16] = { itemID = 20864 }; --Bone Scarab
		[17] = { itemID = 20861 }; --Bronze Scarab
		[18] = { itemID = 20863 }; --Clay Scarab
		[19] = { itemID = 20862 }; --Crystal Scarab
		[20] = { itemID = 20859 }; --Gold Scarab
		[21] = { itemID = 20865 }; --Ivory Scarab
		[22] = { itemID = 20860 }; --Silver Scarab
		[23] = { itemID = 20858 }; --Stone Scarab
		[24] = { itemID = 21761 }; --Scarab Coffer Key

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
		[1] = { itemID = 21701 }; --Cloak of Concentrated Hatred
		[2] = { itemID = 21708 }; --Beetle Scaled Wristguards
		[3] = { itemID = 21698 }; --Leggings of Immersion
		[4] = { itemID = 21699 }; --Barrage Shoulders
		[5] = { itemID = 21705 }; --Boots of the Fallen Prophet
		[6] = { itemID = 21814 }; --Breastplate of Annihilation
		[7] = { itemID = 21704 }; --Boots of the Redeemed Prophecy
		[8] = { itemID = 21706 }; --Boots of the Unwavering Will

		[10] = { itemID = 21702 }; --Amulet of Foul Warding
		[11] = { itemID = 21700 }; --Pendant of the Qiraji Guardian
		[12] = { itemID = 21707 }; --Ring of Swarming Thought
		[13] = { itemID = 21703 }; --Hammer of Ji'zhi
		[14] = { itemID = 21128 }; --Staff of the Qiraji Prophets
		
		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark
		[27] = { itemID = 22222 }; --Plans: Thick Obsidian Breastplate
		[28] = { itemID = 22196 }; --Thick Obsidian Breastplate

		[30] = { itemID = 20928, lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{
		Name = BabbleBoss["The Bug Family"];
		[1] = { itemID = 21697 }; --Cape of the Trinity
		[2] = { itemID = 21694 }; --Ternary Mantle
		[3] = { itemID = 21696 }; --Robes of the Triumvirate
		[4] = { itemID = 21693 }; --Guise of the Devourer
		[5] = { itemID = 21692 }; --Triad Girdle
		[6] = { itemID = 21695 }; --Angelista's Touch
		[8] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[9] = { itemID = 21232 }; --Imperial Qiraji Armaments

		[11] = { itemID = 21680 }; --Vest of Swift Execution
		[12] = { itemID = 21603 }; --Wand of Qiraji Nobility
		[13] = { itemID = 21681 }; --Ring of the Devoured
		[14] = { itemID = 21685 }; --Petrified Scarab

		[16] = { itemID = 21689 }; --Gloves of Ebru
		[17] = { itemID = 21691 }; --Ooze-ridden Gauntlets
		[18] = { itemID = 21688 }; --Boots of the Fallen Hero
		[19] = { itemID = 21690 }; --Angelista's Charm

		[21] = { itemID = 21686 }; --Mantle of Phrenic Power
		[22] = { itemID = 21682 }; --Bile-Covered Gauntlets
		[23] = { itemID = 21684 }; --Mantle of the Desert's Fury
		[24] = { itemID = 21683 }; --Mantle of the Desert Crusade
		[25] = { itemID = 21687 }; --Ukko's Ring of Darkness

		[27] = { itemID = 20928, lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{
		Name = BabbleBoss["Battleguard Sartura"];
		[1] = { itemID = 21671 }; --Robes of the Battleguard
		[2] = { itemID = 21676 }; --Leggings of the Festering Swarm
		[3] = { itemID = 21648 }; --Recomposed Boots
		[4] = { itemID = 21669 }; --Creeping Vine Helm
		[5] = { itemID = 21672 }; --Gloves of Enforcement
		[6] = { itemID = 21675 }; --Thick Qirajihide Belt
		[7] = { itemID = 21668 }; --Scaled Leggings of Qiraji Fury
		[8] = { itemID = 21674 }; --Gauntlets of Steadfast Determination
		[9] = { itemID = 21667 }; --Legplates of Blazing Light

		[11] = { itemID = 21678 }; --Necklace of Purity
		[12] = { itemID = 21670 }; --Badge of the Swarmguard
		[13] = { itemID = 21666 }; --Sartura's Might
		[14] = { itemID = 21673 }; --Silithid Claw

		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer

		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
	};
	{
		Name = BabbleBoss["Fankriss the Unyielding"];
		[1] = { itemID = 21627 }; --Cloak of Untold Secrets
		[2] = { itemID = 21663 }; --Robes of the Guardian Saint
		[3] = { itemID = 21665 }; --Mantle of Wicked Revenge
		[4] = { itemID = 21645 }; --Hive Tunneler's Boots
		[5] = { itemID = 21651 }; --Scaled Sand Reaver Leggings
		[6] = { itemID = 21639 }; --Pauldrons of the Unrelenting
		[7] = { itemID = 21652 }; --Silithid Carapace Chestguard

		[9] = { itemID = 21647 }; --Fetish of the Sand Reaver
		[10] = { itemID = 21664 }; --Barbed Choker
		[11] = { itemID = 22402 }; --Libram of Grace
		[12] = { itemID = 22396 }; --Totem of Life
		[13] = { itemID = 21650 }; --Ancient Qiraji Ripper
		[14] = { itemID = 21635 }; --Barb of the Sand Reaver

		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
	};
	{
		Name = BabbleBoss["Viscidus"];
		[1] = { itemID = 21624 }; --Gauntlets of Kalimdor
		[2] = { itemID = 21626 }; --Slime-coated Leggings
		[3] = { itemID = 21623 }; --Gauntlets of the Righteous Champion
		[4] = { itemID = 21691 }; --Ooze-ridden Gauntlets
		[5] = { itemID = 21688 }; --Boots of the Fallen Hero
		[6] = { itemID = 21682 }; --Bile-Covered Gauntlets

		[8] = { itemID = 21677 }; --Ring of the Qiraji Fury
		[9] = { itemID = 21625 }; --Scarab Brooch
		[10] = { itemID = 22399 }; --Idol of Health
		[11] = { itemID = 21622 }; --Sharpened Silithid Femur

		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
		[28] = { itemID = 20931, lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
		[29] = { itemID = 20930, lootTable = {"T2.5HEAD","Token"} }; --Diadem of the Desert Prince
		[30] = { itemID = 20928, lootTable = {"T2.5FEET","Token"} }; --Bindings of the Lost Nomad
	};
	{ 
		Name = BabbleBoss["Princess Huhuran"];
		[1] = { itemID = 21619 }; --Gloves of the Messiah
		[2] = { itemID = 21621 }; --Cloak of the Golden Hive
		[3] = { itemID = 21617 }; --Wasphide Gauntlets
		[4] = { itemID = 21618 }; --Hive Defiler Wristguards
		[5] = { itemID = 21694 }; --Ternary Mantle
		[6] = { itemID = 21683 }; --Mantle of the Desert Crusade
		[7] = { itemID = 21680 }; --Vest of Swift Execution
		[8] = { itemID = 21668 }; --Scaled Leggings of Qiraji Fury

		[10] = { itemID = 21603 }; --Wand of Qiraji Nobility
		[11] = { itemID = 21620 }; --Ring of the Martyr
		[12] = { itemID = 21616 }; --Huhuran's Stinger

		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer
		
		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20932, lootTable = {"T2.5SHOULDER","Token"} }; --Spaulders of the Imperial Guard
		[28] = { itemID = 20931, lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
	};
	{
		Name = BabbleBoss["The Twin Emperors"];
		[1] = { itemID = 21600 }; --Boots of Epiphany
		[2] = { itemID = 21602 }; --Qiraji Execution Bracers
		[3] = { itemID = 21599 }; --Vek'lor's Gloves of Devastation
		[4] = { itemID = 21598 }; --Royal Qiraji Belt
		[5] = { itemID = 21597 }; --Royal Scepter of Vek'lor
		[6] = { itemID = 21601 }; --Ring of Emperor Vek'lor
		[7] = { itemID = 20735 }; --Formula: Enchant Cloak - Subtlety

		[9] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[10] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[11] = { itemID = 21272 }; --Blessed Qiraji Musket
		[12] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[13] = { itemID = 21269 }; --Blessed Qiraji Bulwark
		[15] = { itemID = 20930, lootTable = {"T2.5HEAD","Token"} }; --Diadem of the Desert Prince

		[16] = { itemID = 21604 }; --Bracelets of Royal Redemption
		[17] = { itemID = 21605 }; --Gloves of the Hidden Temple
		[18] = { itemID = 21609 }; --Regenerating Belt of Vek'nilash
		[19] = { itemID = 21607 }; --Grasp of the Fallen Emperor
		[20] = { itemID = 21606 }; --Belt of the Fallen Emperor
		[21] = { itemID = 21679 }; --Kalimdor's Revenge
		[22] = { itemID = 21608 }; --Amulet of Vek'nilash
		[23] = { itemID = 20726 }; --Formula: Enchant Gloves - Threat

		[25] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[26] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[27] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[28] = { itemID = 21268 }; --Blessed Qiraji War Hammer
	};
	{
		Name = BabbleBoss["Ouro"];
		[1] = { itemID = 21615 }; --Don Rigoberto's Lost Hat
		[2] = { itemID = 21611 }; --Burrower Bracers
		[3] = { itemID = 23558 }; --The Burrower's Shell
		[4] = { itemID = 23570 }; --Jom Gabbar
		[5] = { itemID = 23557 }; --Larvae of the Great Worm
		[6] = { itemID = 21610 }; --Wormscale Blocker
		[7] = { itemID = 21708 }; --Beetle Scaled Wristguards
		[8] = { itemID = 21645 }; --Hive Tunneler's Boots
		[9] = { itemID = 21605 }; --Gloves of the Hidden Temple
		[10] = { itemID = 15029 }; --Aera's Poison Gland

		[16] = { itemID = 21237 }; --Imperial Qiraji Regalia
		[17] = { itemID = 21273 }; --Blessed Qiraji Acolyte Staff
		[18] = { itemID = 21275 }; --Blessed Qiraji Augur Staff
		[19] = { itemID = 21268 }; --Blessed Qiraji War Hammer

		[21] = { itemID = 21232 }; --Imperial Qiraji Armaments
		[22] = { itemID = 21242 }; --Blessed Qiraji War Axe
		[23] = { itemID = 21272 }; --Blessed Qiraji Musket
		[24] = { itemID = 21244 }; --Blessed Qiraji Pugio
		[25] = { itemID = 21269 }; --Blessed Qiraji Bulwark

		[27] = { itemID = 20931, lootTable = {"T2.5LEGS","Token"} }; --Hardened Qiraj Chitin
	};
	{
		Name = BabbleBoss["C'Thun"];
		[1] = { itemID = 21583 }; --Cloak of Clarity
		[2] = { itemID = 22731 }; --Cloak of the Devoured
		[3] = { itemID = 21585 }; --Dark Storm Gauntlets
		[4] = { itemID = 22730 }; --Eyestalk Waist Cord
		[5] = { itemID = 21582 }; --Grasp of the Old God
		[6] = { itemID = 21586 }; --Belt of Never-ending Agony
		[7] = { itemID = 21581 }; --Gauntlets of Annihilation

		[9] = { itemID = 22732 }; --Mark of C'Thun
		[10] = { itemID = 21596 }; --Ring of the Godslayer
		[11] = { itemID = 21579 }; --Vanquished Tentacle of C'Thun
		[12] = { itemID = 21126 }; --Death's Sting
		[13] = { itemID = 21134 }; --Dark Edge of Insanity
		[14] = { itemID = 21839 }; --Scepter of the False Prophet

		[15] = { itemID = 21221 }; --Eye of C'Thun
		[16] = { itemID = 21710 }; --Cloak of the Fallen God
		[17] = { itemID = 21712 }; --Amulet of the Fallen God
		[18] = { itemID = 21709 }; --Ring of the Fallen God

		[20] = { itemID = 22734 }; --Base of Atiesh
		[21] = { itemID = 22632 }; --Atiesh, Greatstaff of the Guardian
		[22] = { itemID = 22589 }; --Atiesh, Greatstaff of the Guardian
		[23] = { itemID = 22631 }; --Atiesh, Greatstaff of the Guardian
		[24] = { itemID = 22630 }; --Atiesh, Greatstaff of the Guardian
		
		[26] = { itemID = 20933, lootTable = {"T2.5CHEST","Token"} }; --Husk of the Old God
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 21838 }; --Garb of Royal Ascension
		[2] = { itemID = 21888 }; --Gloves of the Immortal
		[3] = { itemID = 21889 }; --Gloves of the Redeemed Prophecy
		[4] = { itemID = 21836 }; --Ritssyn's Ring of Chaos
		[5] = { itemID = 21891 }; --Shard of the Fallen Star
		[6] = { itemID = 21856 }; --Neretzek, The Blood Drinker
		[7] = { itemID = 21837 }; --Anubisath Warhammer
		[9] = { itemID = 22202 }; --Small Obsidian Shard
		[10] = { itemID = 22203 }; --Large Obsidian Shard
		[16] = { itemID = 21218 }; --Blue Qiraji Resonating Crystal
		[17] = { itemID = 21324 }; --Yellow Qiraji Resonating Crystal
		[18] = { itemID = 21323 }; --Green Qiraji Resonating Crystal
		[19] = { itemID = 21321 }; --Red Qiraji Resonating Crystal
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 20876 }; --Idol of Death
		[2] = { itemID = 20879 }; --Idol of Life
		[3] = { itemID = 20875 }; --Idol of Night
		[4] = { itemID = 20878 }; --Idol of Rebirth
		[5] = { itemID = 20881 }; --Idol of Strife
		[6] = { itemID = 20877 }; --Idol of the Sage
		[7] = { itemID = 20874 }; --Idol of the Sun
		[8] = { itemID = 20882 }; --Idol of War
		[10] = { itemID = 21230 }; --Ancient Qiraji Artifact
		[12] = { itemID = 21762 }; --Greater Scarab Coffer Key
		[16] = { itemID = 20864 }; --Bone Scarab
		[17] = { itemID = 20861 }; --Bronze Scarab
		[18] = { itemID = 20863 }; --Clay Scarab
		[19] = { itemID = 20862 }; --Crystal Scarab
		[20] = { itemID = 20859 }; --Gold Scarab
		[21] = { itemID = 20865 }; --Ivory Scarab
		[22] = { itemID = 20860 }; --Silver Scarab
		[23] = { itemID = 20858 }; --Stone Scarab
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
		[1] = { itemID = 6908 }; --Ghamoo-ra's Bind
		[2] = { itemID = 6907 }; --Tortoise Armor
	};
	{
		Name = BabbleBoss["Lady Sarevess"];
		[1] = { itemID = 888 }; --Naga Battle Gloves
		[2] = { itemID = 11121 }; --Darkwater Talwar
		[3] = { itemID = 3078 }; --Naga Heartpiercer
	};
	{
		Name = BabbleBoss["Gelihast"];
		[1] = { itemID = 6906 }; --Algae Fists
		[2] = { itemID = 6905 }; --Reef Axe
		[3] = { itemID = 1470 }; --Murloc Skin Bag
	};
	{
		Name = BabbleBoss["Baron Aquanis"];
		[1] = { itemID = 16782 }; --Strange Water Globe
		[2] = { itemID = 16886 }; --Outlaw Sabre
		[3] = { itemID = 16887 }; --Witch's Finger
	};
	{
		Name = BabbleBoss["Twilight Lord Kelris"];
		[1] = { itemID = 6903 }; --Gaze Dreamer Pants
		[2] = { itemID = 1155 }; --Rod of the Sleepwalker
		[3] = { itemID = 5881 }; --Head of Kelris
	};
	{
		Name = BabbleBoss["Old Serra'kis"];
		[1] = { itemID = 6901 }; --Glowing Thresher Cape
		[2] = { itemID = 6902 }; --Bands of Serra'kis
		[3] = { itemID = 6904 }; --Bite of Serra'kis
	};
	{
		Name = BabbleBoss["Aku'mai"];
		[1] = { itemID = 6910 }; --Leech Pants
		[2] = { itemID = 6911 }; --Moss Cinch
		[3] = { itemID = 6909 }; --Strike of the Hydra
		[4] = { icon = "INV_Box_01", name = WHITE..AL["Quest Item"] };
		[5] = { itemID = 5359 }; --Lorgalis Manuscript
		[6] = { itemID = 16762 }; --Fathom Core
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 1486 }; --Tree Bark Jacket
		[2] = { itemID = 3416 }; --Martyr's Chain
		[3] = { itemID = 1491 }; --Ring of Precision
		[4] = { itemID = 3413 }; --Doomspike
		[5] = { itemID = 2567 }; --Evocator's Blade
		[6] = { itemID = 3417 }; --Onyx Claymore
		[7] = { itemID = 1454 }; --Axe of the Enforcer
		[8] = { itemID = 1481 }; --Grimclaw
		[9] = { itemID = 3414 }; --Crested Scepter
		[10] = { itemID = 3415 }; --Staff of the Friar
		[11] = { itemID = 2271 }; --Staff of the Blessed Seer
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
		[1] = { itemID = 14486 }; --Pattern: Cloak of Fire
	};
	{
		Name = BabbleBoss["Lord Roccor"];
		[1] = { itemID = 22234 }; --Mantle of Lost Hope
		[2] = { itemID = 11632 }; --Earthslag Shoulders
		[3] = { itemID = 22397 }; --Idol of Ferocity
		[4] = { itemID = 11631 }; --Stoneshell Guard
		[5] = { itemID = 11630 }; --Rockshard Pellets
		[16] = { itemID = 11813 }; --Formula: Smoking Heart of the Mountain
		[17] = { itemID = 11811, "=q3=Smoking Heart of the Mountain", [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };
	};
	{
		Name = BabbleBoss["High Interrogator Gerstahn"];
		[1] = { itemID = 11626 }; --Blackveil Cape
		[2] = { itemID = 11624 }; --Kentic Amice
		[3] = { itemID = 22240 }; --Greaves of Withering Despair
		[4] = { itemID = 11625 }; --Enthralled Sphere
		[6] = { itemID = 11140 }; --Prison Cell Key
	};
	{
		Name = "Ring of Law";
		[1] = { itemID = 11677 }; --Graverot Cape
		[2] = { itemID = 11675 }; --Shadefiend Boots
		[3] = { itemID = 11731 }; --Savage Gladiator Greaves
		[4] = { itemID = 11678 }; --Carapace of Anub'shiah
		[6] = { itemID = 11685 }; --Splinthide Shoulders
		[7] = { itemID = 11686 }; --Girdle of Beastial Fury
		[8] = { itemID = 11679 }; --Rubicund Armguards
		[9] = { itemID = 11730 }; --Savage Gladiator Grips
		[11] = { itemID = 11726 }; --Savage Gladiator Chain
		[12] = { itemID = 22271 }; --Leggings of Frenzied Magic
		[13] = { itemID = 11729 }; --Savage Gladiator Helm
		[14] = { itemID = 11722 }; --Dregmetal Spaulders
		[15] = { itemID = 11703 }; --Stonewall Girdle
		[16] = { itemID = 22270 }; --Entrenching Boots
		[17] = { itemID = 22257 }; --Bloodclot Band
		[18] = { itemID = 22266 }; --Flarethorn
		[19] = { itemID = 11702 }; --Grizzle's Skinner
		[20] = { itemID = 11610 }; --Plans: Dark Iron Pulverizer
		[22] = { itemID = 11634 }; --Silkweb Gloves
		[23] = { itemID = 11633 }; --Spiderfang Carapace
		[24] = { itemID = 11635 }; --Hookfang Shanker
		[26] = { itemID = 11662 }; --Ban'thok Sash
		[27] = { itemID = 11665 }; --Ogreseer Fists
		[28] = { itemID = 11728 }; --Savage Gladiator Leggings
		[29] = { itemID = 11824 }; --Cyclopean Band
	};
	{
		Name = AL["Theldren"];
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..AL["Theldren"] };
		[2] = { itemID = 22330 }; --Shroud of Arcane Mastery
		[3] = { itemID = 22305 }; --Ironweave Mantle
		[4] = { itemID = 22317 }; --Lefty's Brass Knuckle
		[5] = { itemID = 22318 }; --Malgen's Long Bow
		[7] = { itemID = 22047 }; --Top Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Houndmaster Grebmar"];
		[1] = { itemID = 11623 }; --Spritecaster Cape
		[2] = { itemID = 11626 }; --Blackveil Cape
		[3] = { itemID = 11627 }; --Fleetfoot Greaves
		[4] = { itemID = 11628 }; --Houndmaster's Bow
		[5] = { itemID = 11629 }; --Houndmaster's Rifle
	};
	{
		Name = "Monument of Franclorn Forgewright";
		[1] = { itemID = 11000 }; --Shadowforge Key
	};
	{
		Name = BabbleBoss["Pyromancer Loregrain"];
		[1] = { itemID = 11747 }; --Flamestrider Robes
		[2] = { itemID = 11749 }; --Searingscale Leggings
		[3] = { itemID = 11750 }; --Kindling Stave
		[4] = { itemID = 11748 }; --Pyric Caduceus
		[6] = { itemID = 11207 }; --Formula: Enchant Weapon - Fiery Weapon
	};
	{
		Name = AL["The Vault"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["The Vault"] };
		[2] = { itemID = 11309 }; --The Heart of the Mountain
		[4] = { icon = "INV_Box_01", name = WHITE..AL["The Secret Safe"] };
		[5] = { itemID = 22256 }; --Mana Shaping Handwraps
		[6] = { itemID = 11929 }; --Haunting Specter Leggings
		[7] = { itemID = 11926 }; --Deathdealer Breastplate
		[8] = { itemID = 22205 }; --Black Steel Bindings
		[9] = { itemID = 22255 }; --Magma Forged Band
		[10] = { itemID = 11920 }; --Wraith Scythe
		[11] = { itemID = 11923 }; --The Hammer of Grace
		[12] = { itemID = 22254 }; --Wand of Eternal Light
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Dark Coffer"] };
		[17] = { itemID = 11752 }; --Black Blood of the Tormented
		[18] = { itemID = 11751 }; --Burning Essence
		[19] = { itemID = 11753 }; --Eye of Kajal
	};
	{
		Name = BabbleBoss["Warder Stilgiss"];
		[1] = { itemID = 11782 }; --Boreal Mantle
		[2] = { itemID = 22241 }; --Dark Warder's Pauldrons
		[3] = { itemID = 11783 }; --Chillsteel Girdle
		[4] = { itemID = 11784 }; --Arbiter's Blade
	};
	{
		Name = BabbleBoss["Verek"];
		[1] = { itemID = 22242 }; --Verek's Leash
		[2] = { itemID = 11755 }; --Verek's Collar
	};
	{
		Name = BabbleBoss["Fineous Darkvire"];
		[1] = { itemID = 11839 }; --Chief Architect's Monocle
		[2] = { itemID = 11841 }; --Senior Designer's Pantaloons
		[3] = { itemID = 11842 }; --Lead Surveyor's Mantle
		[4] = { itemID = 22223 }; --Foreman's Head Protector
		[6] = { itemID = 11840 }; --Master Builder's Shirt
		[8] = { itemID = 10999 }; --Ironfel
	};
	{
		Name = BabbleBoss["Lord Incendius"];
		[1] = { itemID = 11768 }; --Incendic Bracers
		[2] = { itemID = 11766 }; --Flameweave Cuffs
		[3] = { itemID = 11764 }; --Cinderhide Armsplints
		[4] = { itemID = 11765 }; --Pyremail Wristguards
		[5] = { itemID = 11767 }; --Emberplate Armguards
		[6] = { itemID = 19268 }; --Ace of Elementals
		[8] = { itemID = 21987 }; --Incendicite of Incendius
		[9] = { itemID = 11126 }; --Tablet of Kurniya
	};
	{
		Name = BabbleBoss["Bael'Gar"];
		[1] = { itemID = 11807 }; --Sash of the Burning Heart
		[2] = { itemID = 11802 }; --Lavacrest Leggings
		[3] = { itemID = 11805 }; --Rubidium Hammer
		[4] = { itemID = 11803 }; --Force of Magma
	};
	{
		Name = BabbleBoss["General Angerforge"];
		[1] = { itemID = 11821 }; --Warstrife Leggings
		[2] = { itemID = 11820 }; --Royal Decorated Armor
		[3] = { itemID = 11810 }; --Force of Will
		[4] = { itemID = 11817 }; --Lord General's Sword
		[5] = { itemID = 11816 }; --Angerforge's Battle Axe
		[7] = { itemID = 11464 }; --Marshal Windsor's Lost Information
	};
	{
		Name = BabbleBoss["Golem Lord Argelmach"];
		[1] = { itemID = 11822 }; --Omnicast Boots
		[2] = { itemID = 11823 }; --Luminary Kilt
		[3] = { itemID = 11669 }; --Naglering
		[4] = { itemID = 11819 }; --Second Wind
		[6] = { itemID = 21956 }; --Design: Dark Iron Scorpid
		[8] = { itemID = 11268 }; --Head of Argelmach
		[9] = { itemID = 11465 }; --Marshal Windsor's Lost Information
	};
	{
		Name = "The Grim Guzzler";
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Hurley Blackbreath"] };
		[2] = { itemID = 11735 }; --Ragefury Eyepatch
		[3] = { itemID = 18043 }; --Coal Miner Boots
		[4] = { itemID = 22275 }; --Firemoss Boots
		[5] = { itemID = 18044 }; --Hurley's Tankard
		[6] = { itemID = 11312 }; --Lost Thunderbrew Recipe
		[8] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Phalanx"] };
		[9] = { itemID = 22212 }; --Golem Fitted Pauldrons
		[10] = { itemID = 11745 }; --Fists of Phalanx
		[11] = { itemID = 11744 }; --Bloodfist
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Ribbly Screwspigot"] };
		[17] = { itemID = 11612 }; --Plans: Dark Iron Plate
		[18] = { itemID = 2662 }; --Ribbly's Quiver
		[19] = { itemID = 2663 }; --Ribbly's Bandolier
		[20] = { itemID = 11742 }; --Wayfarer's Knapsack
		[21] = { itemID = 11313 }; --Ribbly's Head
		[23] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Plugger Spazzring"] };
		[24] = { itemID = 12793 }; --Mixologist's Tunic
		[25] = { itemID = 12791 }; --Barman Shanker
		[26] = { itemID = 13483 }; --Recipe: Transmute Fire to Earth
		[27] = { itemID = 18653 }; --Schematic: Goblin Jumper Cables XL
		[28] = { itemID = 15759 }; --Pattern: Black Dragonscale Breastplate
		[29] = { itemID = 11602 }; --Grim Guzzler Key
		[30] = { itemID = 11325 }; --Dark Iron Ale Mug
	};
	{
		Name = BabbleBoss["Ambassador Flamelash"];
		[1] = { itemID = 11808 }; --Circle of Flame
		[3] = { itemID = 11812 }; --Cape of the Fire Salamander
		[4] = { itemID = 11814 }; --Molten Fists
		[5] = { itemID = 11832 }; --Burst of Knowledge
		[6] = { itemID = 11809 }; --Flame Wrath
		[8] = { itemID = 23320 }; --Tablet of Flame Shock VI
	};
	{
		Name = BabbleBoss["Panzor the Invincible"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 22245 }; --Soot Encrusted Footwear
		[2] = { itemID = 11787 }; --Shalehusk Boots
		[3] = { itemID = 11786 }; --Stone of the Earth
		[4] = { itemID = 11785 }; --Rock Golem Bulwark
	};
	{
		Name = "Summoner's Tomb";
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Chest of The Seven"] };
		[2] = { itemID = 11929 }; --Haunting Specter Leggings
		[3] = { itemID = 11925 }; --Ghostshroud
		[4] = { itemID = 11926 }; --Deathdealer Breastplate
		[5] = { itemID = 11927 }; --Legplates of the Eternal Guardian
		[6] = { itemID = 11922 }; --Blood-etched Blade
		[7] = { itemID = 11920 }; --Wraith Scythe
		[8] = { itemID = 11923 }; --The Hammer of Grace
		[9] = { itemID = 11921 }; --Impervious Giant
	};
	{
		Name = AL["Shadowforge Flame Keeper"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Shadowforge Flame Keeper"] };
		[2] = { itemID = 11885 }; --Shadowforge Torch
	};
	{
		Name = BabbleBoss["Magmus"];
		[1] = { itemID = 11746 }; --Golem Skull Helm
		[2] = { itemID = 11935 }; --Magmus Stone
		[3] = { itemID = 22395 }; --Totem of Rage
		[4] = { itemID = 22400 }; --Libram of Truth
		[5] = { itemID = 22208 }; --Lavastone Hammer
	};
	{
		Name = BabbleBoss["Emperor Dagran Thaurissan"];
		[1] = { itemID = 11684 }; --Ironfoe
		[3] = { itemID = 11930 }; --The Emperor's New Cape
		[4] = { itemID = 11924 }; --Robes of the Royal Crown
		[5] = { itemID = 22204 }; --Wristguards of Renown
		[6] = { itemID = 22207 }; --Sash of the Grand Hunt
		[7] = { itemID = 11933 }; --Imperial Jewel
		[8] = { itemID = 11934 }; --Emperor's Seal
		[9] = { itemID = 11815 }; --Hand of Justice
		[16] = { itemID = 11931 }; --Dreadforge Retaliator
		[17] = { itemID = 11932 }; --Guiding Stave of Wisdom
		[18] = { itemID = 11928 }; --Thaurissan's Royal Scepter
		[20] = { itemID = 12033 }; --Thaurissan Family Jewels
	};
	{
		Name = BabbleBoss["Princess Moira Bronzebeard"];
		[1] = { itemID = 12554 }; --Hands of the Exalted Herald
		[2] = { itemID = 12556 }; --High Priestess Boots
		[3] = { itemID = 12557 }; --Ebonsteel Spaulders
		[4] = { itemID = 12553 }; --Swiftwalker Boots
	};
	{
		Name = "Blacksmith Plans";
		[1] = { itemID = 11614 }; --Plans: Dark Iron Mail
		[2] = { itemID = 11615 }; --Plans: Dark Iron Shoulders
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 12552 }; --Blisterbane Wrap
		[2] = { itemID = 12551 }; --Stoneshield Cloak
		[3] = { itemID = 12542 }; --Funeral Pyre Vestment
		[4] = { itemID = 12546 }; --Aristocratic Cuffs
		[5] = { itemID = 12550 }; --Runed Golem Shackles
		[6] = { itemID = 12547 }; --Mar Alom's Grip
		[7] = { itemID = 12549 }; --Braincage
		[8] = { itemID = 12555 }; --Battlechaser's Greaves
		[9] = { itemID = 12531 }; --Searing Needle
		[10] = { itemID = 12535 }; --Doomforged Straightedge
		[11] = { itemID = 12527 }; --Ribsplitter
		[12] = { itemID = 12528 }; --The Judge's Gavel
		[13] = { itemID = 12532 }; --Spire of the Stoneshaper
		[16] = { itemID = 15781 }; --Pattern: Black Dragonscale Leggings
		[17] = { itemID = 15770 }; --Pattern: Black Dragonscale Shoulders
		[18] = { itemID = 16053 }; --Schematic: Master Engineer's Goggles
		[19] = { itemID = 16049 }; --Schematic: Dark Iron Bomb
		[20] = { itemID = 16048 }; --Schematic: Dark Iron Rifle
		[21] = { itemID = 18654 }; --Schematic: Gnomish Alarm-O-Bot
		[22] = { itemID = 18661 }; --Schematic: World Enlarger
		[24] = { itemID = 11754 }; --Black Diamond
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
		[1] = { itemID = 18987 }; --Blackhand's Command
		Next = "LBRSQuestItems";

	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12812 }; --Unfired Plate Gauntlets
		[2] = { itemID = 12631 }; --Fiery Plate Gauntlets
		[3] = { itemID = 12699 }; --Plans: Fiery Plate Gauntlets
		[5] = { itemID = 12533 }; --Roughshod Pike
		[6] = { itemID = 12740 }; --Fifth Mosh'aru Tablet
		[7] = { itemID = 12741 }; --Sixth Mosh'aru Tablet
		[8] = { itemID = 12345 }; --Bijou's Belongings
	};
	{
		Name = BabbleBoss["Spirestone Butcher"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 12608 }; --Butcher's Apron
		[2] = { itemID = 13286 }; --Rivenspike
	};
	{
		Name = BabbleBoss["Highlord Omokk"];
		[1] = { itemID = 13170 }; --Skyshroud Leggings
		[2] = { itemID = 13169 }; --Tressermane Leggings
		[3] = { itemID = 13168 }; --Plate of the Shaman King
		[4] = { itemID = 13166 }; --Slamshot Shoulders
		[5] = { itemID = 13167 }; --Fist of Omokk
		[7] = { itemID = 12336 }; --Gemstone of Spirestone
		[9] = { itemID = 12534 }; --Omokk's Head
		[16] = { itemID = 16670 }; --Boots of Elements
	};
	{
		Name = BabbleBoss["Spirestone Battle Lord"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 13284 }; --Swiftdart Battleboots
		[2] = { itemID = 13285 }; --The Blackrock Slicer
	};
	{
		Name = BabbleBoss["Spirestone Lord Magus"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 13282 }; --Ogreseer Tower Boots
		[2] = { itemID = 13283 }; --Magus Ring
		[3] = { itemID = 13261 }; --Globe of D'sak
	};
	{
		Name = BabbleBoss["Shadow Hunter Vosh'gajin"];
		[1] = { itemID = 12626 }; --Funeral Cuffs
		[2] = { itemID = 13257 }; --Demonic Runed Spaulders
		[3] = { itemID = 13255 }; --Trueaim Gauntlets
		[4] = { itemID = 12651 }; --Blackcrow
		[5] = { itemID = 12653 }; --Riphook
		[6] = { itemID = 12654 }; --Doomshot
		[8] = { itemID = 13352 }; --Vosh'gajin's Snakestone
		[9] = { itemID = 12821 }; --Plans: Dawn's Edge
		[16] = { itemID = 16712 }; --Shadowcraft Gloves
	};
	{
		Name = BabbleBoss["War Master Voone"];
		[1] = { itemID = 22231 }; --Kayser's Boots of Precision
		[2] = { itemID = 13179 }; --Brazecore Armguards
		[3] = { itemID = 13177 }; --Talisman of Evasion
		[4] = { itemID = 12582 }; --Keris of Zul'Serak
		[5] = { itemID = 28972 }; --Flightblade Throwing Axe
		[7] = { itemID = 12335 }; --Gemstone of Smolderthorn
		[16] = { itemID = 16676 }; --Beaststalker's Gloves
	};
	{
		Name = BabbleBoss["Mor Grayhoof"] .." (" ..AL["Summon"] ..")";
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Mor Grayhoof"] };
		[2] = { itemID = 22306 }; --Ironweave Belt
		[3] = { itemID = 22325 }; --Belt of the Trickster
		[4] = { itemID = 22319 }; --Tome of Divine Right
		[5] = { itemID = 22398 }; --Idol of Rejuvenation
		[6] = { itemID = 22322 }; --The Jaw Breaker
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Bannok Grimaxe"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 12634 }; --Chiselbrand Girdle
		[2] = { itemID = 12637 }; --Backusarian Gauntlets
		[3] = { itemID = 12621 }; --Demonfork
		[5] = { itemID = 12838 }; --Plans: Arcanite Reaper
		[6] = { itemID = 12784 }; --Arcanite Reaper
	};
	{
		Name = BabbleBoss["Mother Smolderweb"];
		[1] = { itemID = 13244 }; --Gilded Gauntlets
		[2] = { itemID = 13213 }; --Smolderweb's Eye
		[3] = { itemID = 13183 }; --Venomspitter
		[16] = { itemID = 16715 }; --Wildheart Boots
	};
	{
		Name = BabbleBoss["Crystal Fang"];
		[1] = { itemID = 13185 }; --Sunderseer Mantle
		[2] = { itemID = 13184 }; --Fallbrush Handgrips
		[3] = { itemID = 13218 }; --Fang of the Crystal Spider
	};
	{
		Name = BabbleBoss["Urok Doomhowl"] .." (" ..AL["Summon"] ..")";
		[1] = { itemID = 13258 }; --Slaghide Gauntlets
		[2] = { itemID = 22232 }; --Marksman's Girdle
		[3] = { itemID = 13259 }; --Ribsteel Footguards
		[4] = { itemID = 13178 }; --Rosewine Circle
		[6] = { itemID = 18784 }; --Top Half of Advanced Armorsmithing: Volume III
		[7] = { itemID = 12725 }; --Plans: Enchanted Thorium Helm
		[9] = { itemID = 12712 }; --Warosh's Mojo
		[10] = { itemID = 15867 }; --Prismcharm
	};
	{
		Name = BabbleBoss["Quartermaster Zigris"];
		[1] = { itemID = 13253 }; --Hands of Power
		[2] = { itemID = 13252 }; --Cloudrunner Girdle
		[4] = { itemID = 12835 }; --Plans: Annihilator
		[5] = { itemID = 12798 }; --Annihilator
		[7] = { itemID = 21955 }; --Design: Black Diamond Crab
	};
	{
		Name = BabbleBoss["Gizrul the Slavener"];
		[1] = { itemID = 13206 }; --Wolfshear Leggings
		[2] = { itemID = 13208 }; --Bleak Howler Armguards
		[3] = { itemID = 13205 }; --Rhombeard Protector
		[16] = { itemID = 16718 }; --Wildheart Spaulders
	};
	{
		Name = BabbleBoss["Halycon"];
		[1] = { itemID = 22313 }; --Ironweave Bracers
		[2] = { itemID = 13210 }; --Pads of the Dread Wolf
		[3] = { itemID = 13211 }; --Slashclaw Bracers
		[4] = { itemID = 13212 }; --Halycon's Spiked Collar
	};
	{
		Name = BabbleBoss["Ghok Bashguud"] .." (" ..AL["Rare"] ..")";
		[1] = { itemID = 13203 }; --Armswake Cloak
		[2] = { itemID = 13198 }; --Hurd Smasher
		[3] = { itemID = 13204 }; --Bashguuder
	};
	{
		Name = BabbleBoss["Overlord Wyrmthalak"];
		[1] = { itemID = 13143 }; --Mark of the Dragon Lord
		[3] = { itemID = 13162 }; --Reiver Claws
		[4] = { itemID = 13164 }; --Heart of the Scale
		[5] = { itemID = 22321 }; --Heart of Wyrmthalak
		[6] = { itemID = 13163 }; --Relentless Scythe
		[7] = { itemID = 13148 }; --Chillpike
		[8] = { itemID = 13161 }; --Trindlehaven Staff
		[10] = { itemID = 12337 }; --Gemstone of Bloodaxe
		[16] = { itemID = 16679 }; --Beaststalker's Mantle
	};
	{
		Name = BabbleBoss["Burning Felguard"] .." (" ..AL["Rare"] ..", " ..AL["Random"] ..")";
		[1] = { itemID = 13181 }; --Demonskin Gloves
		[2] = { itemID = 13182 }; --Phase Blade
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 14513 }; --Pattern: Robe of the Archmage
		[2] = { itemID = 14152 }; --Robe of the Archmage
		[4] = { itemID = 13494 }; --Recipe: Greater Fire Protection Potion
		[5] = { itemID = 16250 }; --Formula: Enchant Weapon - Superior Striking
		[6] = { itemID = 16244 }; --Formula: Enchant Gloves - Greater Strength
		[7] = { itemID = 15749 }; --Pattern: Volcanic Breastplate
		[8] = { itemID = 15775 }; --Pattern: Volcanic Shoulders
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
		[1] = { itemID = 12905 }; --Wildfire Cape
		[2] = { itemID = 12927 }; --TruestrikeShoulders
		[3] = { itemID = 12929 }; --Emberfury Talisman
		[4] = { itemID = 12926 }; --Flaming Band
		[6] = { itemID = 17322 }; --Eye of the Emberseer
		[7] = { itemID = 21988 }; --Ember of Emberseer
		[16] = { itemID = 16672 }; --Gauntlets of Elements
	};
	{
		Name = BabbleBoss["Solakar Flamewreath"];
		[1] = { itemID = 12609 }; --Polychromatic Visionwrap
		[2] = { itemID = 12589 }; --Dustfeather Sash
		[3] = { itemID = 12603 }; --Nightbrace Tunic
		[4] = { itemID = 12606 }; --Crystallized Girdle
		[6] = { itemID = 18657 }; --Schematic: Hyper-Radiant Flame Reflector
		[7] = { itemID = 18638 }; --Hyper-Radiant Flame Reflector
		[16] = { itemID = 16695 }; --Devout Mantle
	};
	{
		Name = AL["Father Flame"];
		[1] = { itemID = 13371 }; --Father Flame
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 12358 }; --Darkstone Tablet
		[2] = { itemID = 12352 }; --Doomrigger's Clasp
	};
	{
		Name = BabbleBoss["Jed Runewatcher"];
		[1] = { itemID = 12604 }; --Starfire Tiara
		[2] = { itemID = 12930 }; --Briarwood Reed
		[3] = { itemID = 12605 }; --Serpentine Skuller
	};
	{
		Name = BabbleBoss["Goraluk Anvilcrack"];
		[1] = { itemID = 18047 }; --Flame Walkers
		[2] = { itemID = 13502 }; --Handcrafted Mastersmith Girdle
		[3] = { itemID = 13498 }; --Handcrafted Mastersmith Leggings
		[4] = { itemID = 18048 }; --Mastersmith's Hammer
		[6] = { itemID = 12837 }; --Plans: Masterwork Stormhammer
		[7] = { itemID = 12794 }; --Masterwork Stormhammer
		[8] = { itemID = 12834 }; --Plans: Arcanite Champion
		[9] = { itemID = 12790 }; --Arcanite Champion
		[11] = { itemID = 18779 }; --Bottom Half of Advanced Armorsmithing: Volume I
		[12] = { itemID = 12727 }; --Plans: Enchanted Thorium Breastplate
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Unforged Rune Covered Breastplate"] };
		[17] = { itemID = 12806 }; --Unforged Rune Covered Breastplate
		[18] = { itemID = 12696 }; --Plans: Demon Forged Breastplate
	};
	{
		Name = BabbleBoss["Warchief Rend Blackhand"];
		[1] = { itemID = 12590 }; --Felstriker
		[3] = { itemID = 22247 }; --Faith Healer's Boots
		[4] = { itemID = 18102 }; --Dragonrider Boots
		[5] = { itemID = 12587 }; --Eye of Rend
		[6] = { itemID = 12588 }; --Bonespike Shoulder
		[7] = { itemID = 18104 }; --Feralsurge Girdle
		[8] = { itemID = 12936 }; --Battleborn Armbraces
		[9] = { itemID = 12935 }; --Warmaster Legguards
		[10] = { itemID = 18103 }; --Band of Rumination
		[16] = { itemID = 16733 }; --Spaulders of Valor
		[18] = { itemID = 12940 }; --Dal'Rend's Sacred Charge
		[19] = { itemID = 12939 }; --Dal'Rend's Tribal Guardian
		[20] = { itemID = 12583 }; --Blackhand Doomsaw
		[22] = { itemID = 12630 }; --Head of Rend Blackhand
	};
	{
		Name = BabbleBoss["Gyth"];
		[1] = { itemID = 12871 }; --Chromatic Carapace
		[2] = { itemID = 12945 }; --Legplates of the Chromatic Defier
		[3] = { itemID = 12903 }; --Legguards of the Chromatic Defier
		[4] = { itemID = 12895 }; --Breastplate of the Chromatic Flight
		[6] = { itemID = 22225 }; --Dragonskin Cowl
		[7] = { itemID = 12960 }; --Tribal War Feathers
		[8] = { itemID = 12953 }; --Dragoneye Coif
		[9] = { itemID = 12952 }; --Gyth's Skull
		[11] = { itemID = 13522 }; --Recipe: Flask of Chromatic Resistance
		[16] = { itemID = 16669 }; --Pauldrons of Elements
	};
	{
		Name = BabbleBoss["The Beast"];
		[1] = { itemID = 12731 }; --Pristine Hide of the Beast
		[2] = { itemID = 12752 }; --Cap of the Scarlet Savant
		[3] = { itemID = 12757 }; --Breastplate of Bloodthirst
		[4] = { itemID = 12756 }; --Leggings of Arcana
		[6] = { itemID = 12967 }; --Bloodmoon Cloak
		[7] = { itemID = 12968 }; --Frostweaver Cape
		[8] = { itemID = 12965 }; --Spiritshroud Leggings
		[9] = { itemID = 22311 }; --Ironweave Boots
		[10] = { itemID = 12966 }; --Blackmist Armguards
		[11] = { itemID = 12963 }; --Blademaster Leggings
		[12] = { itemID = 12964 }; --Tristam Legguards
		[13] = { itemID = 12709 }; --Finkle's Skinner
		[14] = { itemID = 12969 }; --Seeping Willow
		[16] = { itemID = 16729 }; --Lightforge Spaulders
		[18] = { itemID = 24101 }; --Book of Ferocious Bite V
		[19] = { itemID = 19227 }; --Ace of Beasts
	};
	{
		Name = BabbleBoss["Lord Valthalak"] .." (" ..AL["Summon"] ..")";
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Lord Valthalak"] };
		[2] = { itemID = 22337 }; --Shroud of Domination
		[3] = { itemID = 22302 }; --Ironweave Cowl
		[4] = { itemID = 22342 }; --Leggings of Torment
		[5] = { itemID = 22343 }; --Handguards of Savagery
		[6] = { itemID = 22340 }; --Pendant of Celerity
		[7] = { itemID = 22339 }; --Rune Band of Wizardry
		[8] = { itemID = 22335 }; --Lord Valthalak's Staff of Command
		[9] = { itemID = 22336 }; --Draconian Aegis of the Legion
	};
	{
		Name = BabbleBoss["General Drakkisath"];
		[1] = { itemID = 12592 }; --Blackblade of Shahram
		[3] = { itemID = 22269 }; --Shadow Prowler's Cloak
		[4] = { itemID = 22267 }; --Spellweaver's Turban
		[5] = { itemID = 13142 }; --Brigam Girdle
		[6] = { itemID = 13141 }; --Tooth of Gnarr
		[7] = { itemID = 13098 }; --Painweaver Band
		[8] = { itemID = 22268 }; --Draconic Infused Emblem
		[9] = { itemID = 22253 }; --Tome of the Lost
		[10] = { itemID = 12602 }; --Draconian Deflector
		[12] = { itemID = 15730 }; --Pattern: Red Dragonscale Breastplate
		[13] = { itemID = 15047 }; --Red Dragonscale Breastplate
		[15] = { itemID = 13519 }; --Recipe: Flask of the Titans
		[16] = { itemID = 16688 }; --Magister's Robes
		[17] = { itemID = 16700 }; --Dreadmist Robe
		[18] = { itemID = 16690 }; --Devout Robe
		[19] = { itemID = 16706 }; --Wildheart Vest
		[20] = { itemID = 16721 }; --Shadowcraft Tunic
		[21] = { itemID = 16674 }; --Beaststalker's Tunic
		[22] = { itemID = 16666 }; --Vest of Elements
		[23] = { itemID = 16730 }; --Breastplate of Valor
		[24] = { itemID = 16726 }; --Lightforge Breastplate
		[30] = { itemID = 16663 }; --Blood of the Black Dragon Champion
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 13260 }; --Wind Dancer Boots
		[2] = { itemID = 24102 }; --Manual of Eviscerate IX
		[4] = { itemID = 16247 }; --Formula: Enchant 2H Weapon - Superior Impact
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
		[1] = { itemID = 18872 }; --Manastorm Leggings
		[2] = { itemID = 19145 }; --Robe of Volatile Power
		[3] = { itemID = 19146 }; --Wristguards of Stability
		[4] = { itemID = 18875 }; --Salamander Scale Pants
		[5] = { itemID = 18870 }; --Helm of the Lifegiver
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 17109 }; --Choker of Enlightenment
		[8] = { itemID = 18879 }; --Heavy Dark Iron Ring
		[9] = { itemID = 19147 }; --Ring of Spell Power
		[10] = { itemID = 18878 }; --Sorcerous Dagger
		[11] = { itemID = 17077 }; --Crimson Shocker
		[16] = { itemID = 2522362, lootTable = {"T1WRIST","Token"} }; --Molten Wristguards
		[18] = { itemID = 17329 }; --Hand of Lucifron
	};
	{
		Name = BabbleBoss["Magmadar"];
		[1] = { itemID = 19136 }; --Mana Igniting Cord
		[2] = { itemID = 18823 }; --Aged Core Leather Gloves
		[3] = { itemID = 18829 }; --Deep Earth Spaulders
		[4] = { itemID = 19144 }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143 }; --Flameguard Gauntlets
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18824 }; --Magma Tempered Boots
		[8] = { itemID = 17065 }; --Medallion of Steadfast Might
		[9] = { itemID = 18821 }; --Quick Strike Ring
		[10] = { itemID = 18820 }; --Talisman of Ephemeral Power
		[11] = { itemID = 19142 }; --Fire Runed Grimoire
		[12] = { itemID = 18203 }; --Eskhandar's Right Claw
		[13] = { itemID = 18822 }; --Obsidian Edged Blade
		[14] = { itemID = 17073 }; --Earthshaker
		[15] = { itemID = 17069 }; --Striker's Mark
		[16] = { itemID = 2522359, lootTable = {"T1LEGS","Token"} }; --Molten Leggaurds
	};
	{
		Name = BabbleBoss["Gehennas"];
		[1] = { itemID = 19145 }; --Robe of Volatile Power
		[2] = { itemID = 18872 }; --Manastorm Leggings
		[3] = { itemID = 19146 }; --Wristguards of Stability
		[4] = { itemID = 18875 }; --Salamander Scale Pants
		[5] = { itemID = 18870 }; --Helm of the Lifegiver
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18879 }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147 }; --Ring of Spell Power
		[9] = { itemID = 18878 }; --Sorcerous Dagger
		[10] = { itemID = 17077 }; --Crimson Shocker
		[16] = { itemID = 2522364, lootTable = {"T1HAND","Token"} }; --Molten Girdle
		[18] = { itemID = 17331 }; --Hand of Gehennas
	};
	{
		Name = BabbleBoss["Garr"];
		[1] = { itemID = 19136 }; --Mana Igniting Cord
		[2] = { itemID = 18823 }; --Aged Core Leather Gloves
		[3] = { itemID = 18829 }; --Deep Earth Spaulders
		[4] = { itemID = 19144 }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143 }; --Flameguard Gauntlets
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18824 }; --Magma Tempered Boots
		[8] = { itemID = 18821 }; --Quick Strike Ring
		[9] = { itemID = 18820 }; --Talisman of Ephemeral Power
		[10] = { itemID = 19142 }; --Fire Runed Grimoire
		[11] = { itemID = 17071 }; --Gutgore Ripper
		[12] = { itemID = 18832 }; --Brutality Blade
		[13] = { itemID = 18822 }; --Obsidian Edged Blade
		[14] = { itemID = 17105 }; --Aurastone Hammer
		[15] = { itemID = 17066 }; --Drillborer Disk
		[16] = { itemID = 2522360, lootTable = {"T1HEAD","Token"} }; --Molten Headpiece
		[18] = { itemID = 18564 }; --Bindings of the Windseeker
		[19] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
		[21] = { itemID = 17782 }; --Talisman of Binding Shard
		[22] = { itemID = 11879 }; --Medallion of Binding Shard
	};
	{
		Name = BabbleBoss["Shazzrah"];
		[1] = { itemID = 19145 }; --Robe of Volatile Power
		[2] = { itemID = 18872 }; --Manastorm Leggings
		[3] = { itemID = 19146 }; --Wristguards of Stability
		[4] = { itemID = 18875 }; --Salamander Scale Pants
		[5] = { itemID = 18870 }; --Helm of the Lifegiver
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18879 }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147 }; --Ring of Spell Power
		[9] = { itemID = 18878 }; --Sorcerous Dagger
		[10] = { itemID = 17077 }; --Crimson Shocker
		[16] = { itemID = 2522363, lootTable = {"T1WAIST","Token"} }; --Molten Handgaurds
		[18] = { itemID = 17332 }; --Hand of Shazzrah
	};
	{
		Name = BabbleBoss["Baron Geddon"];
		[1] = { itemID = 19136 }; --Mana Igniting Cord
		[2] = { itemID = 18823 }; --Aged Core Leather Gloves
		[3] = { itemID = 18829 }; --Deep Earth Spaulders
		[4] = { itemID = 19144 }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143 }; --Flameguard Gauntlets
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18824 }; --Magma Tempered Boots
		[8] = { itemID = 17110 }; --Seal of the Archmagus
		[9] = { itemID = 18821 }; --Quick Strike Ring
		[10] = { itemID = 18820 }; --Talisman of Ephemeral Power
		[11] = { itemID = 19142 }; --Fire Runed Grimoire
		[12] = { itemID = 18822 }; --Obsidian Edged Blade
		[16] = { itemID = 2522361, lootTable = {"T1SHOULDER","Token"} }; --Molten Spaulders
		[18] = { itemID = 18563 }; --Bindings of the Windseeker
		[19] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
	};
	{
		Name = BabbleBoss["Golemagg the Incinerator"];
		[1] = { itemID = 19136 }; --Mana Igniting Cord
		[2] = { itemID = 18823 }; --Aged Core Leather Gloves
		[3] = { itemID = 18829 }; --Deep Earth Spaulders
		[4] = { itemID = 19144 }; --Sabatons of the Flamewalker
		[5] = { itemID = 19143 }; --Flameguard Gauntlets
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18824 }; --Magma Tempered Boots
		[8] = { itemID = 18821 }; --Quick Strike Ring
		[9] = { itemID = 18820 }; --Talisman of Ephemeral Power
		[10] = { itemID = 19142 }; --Fire Runed Grimoire
		[11] = { itemID = 17103 }; --Azuresong Mageblade
		[12] = { itemID = 18822 }; --Obsidian Edged Blade
		[13] = { itemID = 18842 }; --Staff of Dominance
		[14] = { itemID = 17072 }; --Blastershot Launcher
		[16] = { itemID = 2522350, lootTable = {"T1CHEST","Token"} }; --Molten Tunic
		[18] = { itemID = 17203 }; --Sulfuron Ingot
		[19] = { itemID = 17182 }; --Sulfuras, Hand of Ragnaros
	};
	{
		Name = BabbleBoss["Sulfuron Harbinger"];
		[1] = { itemID = 19145 }; --Robe of Volatile Power
		[2] = { itemID = 18872 }; --Manastorm Leggings
		[3] = { itemID = 19146 }; --Wristguards of Stability
		[4] = { itemID = 18875 }; --Salamander Scale Pants
		[5] = { itemID = 18870 }; --Helm of the Lifegiver
		[6] = { itemID = 18861 }; --Flamewaker Legplates
		[7] = { itemID = 18879 }; --Heavy Dark Iron Ring
		[8] = { itemID = 19147 }; --Ring of Spell Power
		[9] = { itemID = 18878 }; --Sorcerous Dagger
		[10] = { itemID = 17074 }; --Shadowstrike
		[11] = { itemID = 17077 }; --Crimson Shocker
		[16] = { itemID = 2522365, lootTable = {"T1FEET","Token"} }; --Molten Boots
		[18] = { itemID = 17330 }; --Hand of Sulfuron
	};
	{
		Name = BabbleBoss["Majordomo Executus"];
		[1] = { itemID = 18811 }; --Fireproof Cloak
		[2] = { itemID = 18808 }; --Gloves of the Hypnotic Flame
		[3] = { itemID = 18809 }; --Sash of Whispered Secrets
		[4] = { itemID = 19139 }; --Fireguard Shoulders
		[5] = { itemID = 18810 }; --Wild Growth Spaulders
		[6] = { itemID = 18812 }; --Wristguards of True Flight
		[7] = { itemID = 18806 }; --Core Forged Greaves
		[8] = { itemID = 19140 }; --Cauterizing Band
		[9] = { itemID = 18805 }; --Core Hound Tooth
		[10] = { itemID = 18803 }; --Finkle's Lava Dredger
		[16] = { itemID = 18715 }; --Lok'delar, Stave of the Ancient Keepers
		[17] = { itemID = 18713 }; --Rhok'delar, Longbow of the Ancient Keepers
		[19] = { itemID = 18608 }; --Benediction
		[20] = { itemID = 18609 }; --Anathema
	};
	{
		Name = BabbleBoss["Ragnaros"];
		[1] = { itemID = 17102 }; --Cloak of the Shrouded Mists
		[2] = { itemID = 17107 }; --Dragon's Blood Cape
		[3] = { itemID = 18817 }; --Crown of Destruction
		[4] = { itemID = 19137 }; --Onslaught Girdle
		[5] = { itemID = 18814 }; --Choker of the Fire Lord
		[6] = { itemID = 19138 }; --Band of Sulfuras
		[7] = { itemID = 17063 }; --Band of Accuria
		[8] = { itemID = 17082 }; --Shard of the Flame
		[9] = { itemID = 18815 }; --Essence of the Pure Flame
		[10] = { itemID = 18816 }; --Perdition's Blade
		[11] = { itemID = 17076 }; --Bonereaver's Edge
		[12] = { itemID = 17104 }; --Spinal Reaper
		[13] = { itemID = 17106 }; --Malistar's Defender
		[14] = { itemID = 17083 }; --Blade of Dragon Bone
		[16] = { itemID = 2522459, lootTable = {"T2LEGS","Token"} }; --Chromatic Leggaurds
		[18] = { itemID = 21110 }; --Draconic for Dummies
		[20] = { itemID = 17204 }; --Eye of Sulfuras
		[21] = { itemID = 17182 }; --Sulfuras, Hand of Ragnaros
		[23] = { itemID = 19017 }; --Essence of the Firelord
		[24] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
		[25] = { itemID = 102107, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; -- Reins of the Magmatic Steed
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
		[1] = { itemID = 18264 }; --Plans: Elemental Sharpening Stone
		[2] = { itemID = 18262 }; --Elemental Sharpening Stone
		[4] = { itemID = 18292 }; --Schematic: Core Marksman Rifle
		[5] = { itemID = 18282 }; --Core Marksman Rifle
		[7] = { itemID = 18291 }; --Schematic: Force Reactive Disk
		[8] = { itemID = 18168 }; --Force Reactive Disk
		[10] = { itemID = 18290 }; --Schematic: Biznicks 247x128 Accurascope
		[11] = { itemID = 18283 }; --Biznicks 247x128 Accurascope
		[13] = { itemID = 18259 }; --Formula: Enchant Weapon - Spell Power
		[16] = { itemID = 18252 }; --Pattern: Core Armor Kit
		[17] = { itemID = 18251 }; --Core Armor Kit
		[19] = { itemID = 18265 }; --Pattern: Flarecore Wraps
		[20] = { itemID = 18263 }; --Flarecore Wraps
		[22] = { itemID = 21371 }; --Pattern: Core Felcloth Bag
		[23] = { itemID = 21342 }; --Core Felcloth Bag
		[25] = { itemID = 18257 }; --Recipe: Major Rejuvenation Potion
		[26] = { itemID = 18253 }; --Major Rejuvenation Potion
		[28] = { itemID = 18260 }; --Formula: Enchant Weapon - Healing Power
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
		[5] = { itemID = 19370 }; --Mantle of the Blackwing Cabal
		[6] = { itemID = 19369 }; --Gloves of Rapid Evolution
		[7] = { itemID = 19334 }; --The Untamed Blade
		[8] = { itemID = 19335 }; --Spineshatter
		[9] = { itemID = 19397 }; --Ring of Blackrock
		[10] = { itemID = 19357 }; --Herald of Woe
		[11] = { itemID = 19405 }; --Malfurion's Blessed Bulwark
		[16] = { itemID = 2522462, lootTable = {"T2WRIST","Token"} }; --Chromatic Wristguards
	};
	{
		Name = BabbleBoss["Vaelastrasz the Corrupt"];
		[1] = { itemID = 19339 }; --Mind Quickening Gem
		[2] = { itemID = 19340 }; --Rune of Metamorphosis
		[3] = { itemID = 19372 }; --Helm of Endless Rage
		[4] = { itemID = 19371 }; --Pendant of the Fallen Dragon
		[5] = { itemID = 19346 }; --Dragonfang Blade
		[6] = { itemID = 19348 }; --Red Dragonscale Protector
		[7] = { itemID = 19430 }; --Shroud of Pure Thought
		[8] = { itemID = 19403 }; --Band of Forced Concentration
		[9] = { itemID = 19367 }; --Dragon's Touch
		[10] = { itemID = 14000 }; --Ring of Trinity Force
		[16] = { itemID = 2522463, lootTable = {"T2WAIST","Token"} }; --Chromatic Girdle
	};
	{
		Name = BabbleBoss["Broodlord Lashlayer"];
		[1] = { itemID = 19342 }; --Venomous Totem
		[2] = { itemID = 19341 }; --Lifegiving Gem
		[3] = { itemID = 19345 }; --Aegis of Preservation
		[4] = { itemID = 19374 }; --Bracers of Arcane Accuracy
		[5] = { itemID = 19373 }; --Black Brood Pauldrons
		[6] = { itemID = 19351 }; --Maladath, Runed Blade of the Black Flight
		[7] = { itemID = 19350 }; --Heartstriker
		[8] = { itemID = 19402 }; --Legguards of the Fallen Crusader
		[9] = { itemID = 19365 }; --Claw of the Black Drake
		[10] = { itemID = 19432 }; --Circle of Applied Force
		[16] = { itemID = 2522465, lootTable = {"T2FEET","Token"} }; --Chromatic Boots
		[18] = { itemID = 20383 }; --Head of the Broodlord Lashlayer
	};
	{
		Name = BabbleBoss["Firemaw"];
		[1] = { itemID = 19365 }; --Claw of the Black Drake
		[2] = { itemID = 19355 }; --Shadow Wing Focus Staff
		[3] = { itemID = 19353 }; --Drake Talon Cleaver
		[4] = { itemID = 19343 }; --Scrolls of Blinding Light
		[5] = { itemID = 19344 }; --Natural Alignment Crystal
		[6] = { itemID = 19398 }; --Cloak of Firemaw
		[7] = { itemID = 19400 }; --Firemaw's Clutch
		[8] = { itemID = 19399 }; --Black Ash Robe
		[9] = { itemID = 19396 }; --Taut Dragonhide Belt
		[10] = { itemID = 19401 }; --Primalist's Linked Legguards
		[11] = { itemID = 19394 }; --Drake Talon Pauldrons
		[12] = { itemID = 19402 }; --Legguards of the Fallen Crusader
		[13] = { itemID = 19397 }; --Ring of Blackrock
		[14] = { itemID = 19395 }; --Rejuvenating Gem
		[16] = { itemID = 2522464, lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Ebonroc"];
		[1] = { itemID = 19345 }; --Aegis of Preservation
		[2] = { itemID = 19407 }; --Ebony Flame Gloves
		[3] = { itemID = 19405 }; --Malfurion's Blessed Bulwark
		[4] = { itemID = 19396 }; --Taut Dragonhide Belt
		[5] = { itemID = 19394 }; --Drake Talon Pauldrons
		[6] = { itemID = 19403 }; --Band of Forced Concentration
		[7] = { itemID = 19397 }; --Ring of Blackrock
		[8] = { itemID = 19406 }; --Drake Fang Talisman
		[9] = { itemID = 19395 }; --Rejuvenating Gem
		[10] = { itemID = 19353 }; --Drake Talon Cleaver
		[11] = { itemID = 19355 }; --Shadow Wing Focus Staff
		[12] = { itemID = 19368 }; --Dragonbreath Hand Cannon
		[16] = { itemID = 2522464, lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Flamegor"];
		[1] = { itemID = 19430 }; --Shroud of Pure Thought
		[2] = { itemID = 19396 }; --Taut Dragonhide Belt
		[3] = { itemID = 19433 }; --Emberweave Leggings
		[4] = { itemID = 19394 }; --Drake Talon Pauldrons
		[5] = { itemID = 19397 }; --Ring of Blackrock
		[6] = { itemID = 19432 }; --Circle of Applied Force
		[7] = { itemID = 19395 }; --Rejuvenating Gem
		[8] = { itemID = 19431 }; --Styleen's Impeding Scarab
		[9] = { itemID = 19353 }; --Drake Talon Cleaver
		[10] = { itemID = 19357 }; --Herald of Woe
		[11] = { itemID = 19355 }; --Shadow Wing Focus Staff
		[12] = { itemID = 19367 }; --Dragon's Touch
		[16] = { itemID = 2522464, lootTable = {"T2HAND","Token"} }; --Chromatic Handgaurds
	};
	{
		Name = BabbleBoss["Chromaggus"];
		[1] = { itemID = 19386 }; --Elementium Threaded Cloak
		[2] = { itemID = 19388 }; --Angelista's Grasp
		[3] = { itemID = 19385 }; --Empowered Leggings
		[4] = { itemID = 19391 }; --Shimmering Geta
		[5] = { itemID = 19389 }; --Taut Dragonhide Shoulderpads
		[6] = { itemID = 19390 }; --Taut Dragonhide Gloves
		[7] = { itemID = 19393 }; --Primalist's Linked Waistguard
		[8] = { itemID = 19392 }; --Girdle of the Fallen Crusader
		[9] = { itemID = 19387 }; --Chromatic Boots
		[11] = { itemID = 19347 }; --Claw of Chromaggus
		[12] = { itemID = 19352 }; --Chromatically Tempered Sword
		[13] = { itemID = 19349 }; --Elementium Reinforced Bulwark
		[14] = { itemID = 19361 }; --Ashjre'thul, Crossbow of Smiting
		[16] = { itemID = 2522461, lootTable = {"T2SHOULDER","Token"} }; --Chromatic Spaulders
	};
	{
		Name = BabbleBoss["Nefarian"];
		[1] = { itemID = 19378 }; --Cloak of the Brood Lord
		[2] = { itemID = 19375 }; --Mish'undare, Circlet of the Mind Flayer
		[3] = { itemID = 19381 }; --Boots of the Shadow Flame
		[4] = { itemID = 19380 }; --Therazane's Link
		[5] = { itemID = 19377 }; --Prestor's Talisman of Connivery
		[6] = { itemID = 19376 }; --Archimtiros' Ring of Reckoning
		[7] = { itemID = 19382 }; --Pure Elementium Band
		[8] = { itemID = 19379 }; --Neltharion's Tear
		[9] = { itemID = 19364 }; --Ashkandi, Greatsword of the Brotherhood
		[10] = { itemID = 19363 }; --Crul'shorukh, Edge of Chaos
		[11] = { itemID = 19360 }; --Lok'amir il Romathis
		[12] = { itemID = 19356 }; --Staff of the Shadow Flame
		[13] = { itemID = 14001 }; --Archimtiros' Ring of Armageddon
		[16] = { itemID = 2522450, lootTable = {"T2CHEST","Token"} }; --Chromatic Tunic
		[18] = { itemID = 19003 }; --Head of Nefarian
		[19] = { itemID = 19383 }; --Master Dragonslayer's Medallion
		[20] = { itemID = 19384 }; --Master Dragonslayer's Ring
		[21] = { itemID = 19366 }; --Master Dragonslayer's Orb
		[23] = { itemID = 21138 }; --Red Scepter Shard
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 19436 }; --Cloak of Draconic Might
		[2] = { itemID = 19437 }; --Boots of Pure Thought
		[3] = { itemID = 19438 }; --Ringo's Blizzard Boots
		[4] = { itemID = 19439 }; --Interlaced Shadow Jerkin
		[5] = { itemID = 19434 }; --Band of Dark Dominion
		[6] = { itemID = 19362 }; --Doom's Edge
		[7] = { itemID = 19354 }; --Draconic Avenger
		[8] = { itemID = 19358 }; --Draconic Maul
		[9] = { itemID = 19435 }; --Essence Gatherer
		[16] = { itemID = 18562 }; --Elementium Ore
		[18] = { itemID = 21109 }; --Draconic for Dummies
	};
};

----------------------
--- Dire Maul East ---
----------------------

AtlasLoot_Data["DireMaulEast"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleZone["Dire Maul"] .." East";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Pusillin"];
		[1] = { itemID = 18267 }; --Recipe: Runn Tum Tuber Surprise
		[3] = { itemID = 18261 }; --Book of Incantations
		[4] = { itemID = 18249 }; --Crescent Key
	};
	{
		Name = BabbleBoss["Zevrim Thornhoof"];
		[1] = { itemID = 18319 }; --Fervent Helm
		[2] = { itemID = 18313 }; --Helm of Awareness
		[3] = { itemID = 18323 }; --Satyr's Bow
		[5] = { itemID = 18306 }; --Gloves of Shadowy Mist
		[6] = { itemID = 18308 }; --Clever Hat
	};
	{
		Name = BabbleBoss["Lethtendris"];
		[1] = { itemID = 18325 }; --Felhide Cap
		[2] = { itemID = 18311 }; --Quel'dorei Channeling Rod
		[4] = { itemID = 18302 }; --Band of Vigor
		[5] = { itemID = 18301 }; --Lethtendris's Wand
		[7] = { itemID = 18426 }; --Lethtendris's Web
	};
	{
		Name = BabbleBoss["Pimgib"];
		[1] = { itemID = 18354 }; --Pimgib's Collar
	};
	{
		Name = BabbleBoss["Hydrospawn"];
		[1] = { itemID = 18322 }; --Waterspout Boots
		[2] = { itemID = 18317 }; --Tempest Talisman
		[3] = { itemID = 18324 }; --Waveslicer
		[5] = { itemID = 18307 }; --Riptide Shoes
		[6] = { itemID = 18305 }; --Breakwater Legguards
	};
	{
		Name = BabbleBoss["Alzzin the Wildshaper"];
		[1] = { itemID = 18328 }; --Shadewood Cloak
		[2] = { itemID = 18327 }; --Whipvine Cord
		[3] = { itemID = 18309 }; --Gloves of Restoration
		[4] = { itemID = 18318 }; --Merciful Greaves
		[5] = { itemID = 18312 }; --Energized Chestplate
		[6] = { itemID = 18326 }; --Razor Gauntlets
		[8] = { icon = "INV_Box_01", name = WHITE..AL["Felvine Shard"] };
		[9] = { itemID = 18501 }; --Felvine Shard
		[16] = { itemID = 18315 }; --Ring of Demonic Potency
		[17] = { itemID = 18314 }; --Ring of Demonic Guile
		[18] = { itemID = 18310 }; --Fiendish Machete
		[19] = { itemID = 18321 }; --Energetic Rod
	};
	{
		Name = BabbleBoss["Isalien"];
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Isalien"] };
		[2] = { itemID = 22304 }; --Ironweave Gloves
		[3] = { itemID = 22472 }; --Boots of Ferocity
		[4] = { itemID = 22401 }; --Libram of Hope
		[5] = { itemID = 22345 }; --Totem of Rebirth
		[6] = { itemID = 22315 }; --Hammer of Revitalization
		[7] = { itemID = 22314 }; --Huntsman's Harpoon
		[17] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[18] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18295 }; --Phasing Boots
		[2] = { itemID = 18298 }; --Unbridled Leggings
		[3] = { itemID = 18296 }; --Marksman Bands
		[4] = { itemID = 18289 }; --Barbed Thorn Necklace
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
	Name = BabbleZone["Dire Maul"] .." North";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Guard Mol'dar"];
		[1] = { itemID = 18496 }; --Heliotrope Cloak
		[2] = { itemID = 18497 }; --Sublime Wristguards
		[3] = { itemID = 18494 }; --Denwatcher's Shoulders
		[4] = { itemID = 18493 }; --Bulky Iron Spaulders
		[5] = { itemID = 18498 }; --Hedgecutter
		[7] = { itemID = 18268 }; --Gordok Inner Door Key
		[16] = { itemID = 18450 }; --Robe of Combustion
		[17] = { itemID = 18451 }; --Hyena Hide Belt
		[18] = { itemID = 18458 }; --Modest Armguards
		[19] = { itemID = 18459 }; --Gallant's Wristguards
		[20] = { itemID = 18464 }; --Gordok Nose Ring
		[21] = { itemID = 18462 }; --Jagged Bone Fist
		[22] = { itemID = 18463 }; --Ogre Pocket Knife
		[23] = { itemID = 18460 }; --Unsophisticated Hand Cannon
	};
	{
		Name = BabbleBoss["Stomper Kreeg"];
		[1] = { itemID = 18425 }; --Kreeg's Mug
		[2] = { itemID = 18269 }; --Gordok Green Grog
		[3] = { itemID = 18284 }; --Kreeg's Stout Beatdown
	};
	{
		Name = BabbleBoss["Guard Fengus"];
		[1] = { itemID = 18450 }; --Robe of Combustion
		[2] = { itemID = 18451 }; --Hyena Hide Belt
		[3] = { itemID = 18458 }; --Modest Armguards
		[4] = { itemID = 18459 }; --Gallant's Wristguards
		[5] = { itemID = 18464 }; --Gordok Nose Ring
		[6] = { itemID = 18462 }; --Jagged Bone Fist
		[7] = { itemID = 18463 }; --Ogre Pocket Knife
		[8] = { itemID = 18460 }; --Unsophisticated Hand Cannon
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Fengus's Chest"] };
		[17] = { itemID = 18266 }; --Gordok Courtyard Key
	};
	{
		Name = AL["Knot Thimblejack"];
		[1] = { itemID = 18517 }; --Pattern: Chromatic Cloak
		[2] = { itemID = 18518 }; --Pattern: Hide of the Wild
		[3] = { itemID = 18519 }; --Pattern: Shifting Cloak
		[4] = { itemID = 18414 }; --Pattern: Belt of the Archmage
		[6] = { itemID = 18418 }; --Pattern: Cloak of Warding
		[7] = { itemID = 18415 }; --Pattern: Felcloth Gloves
		[8] = { itemID = 18416 }; --Pattern: Inferno Gloves
		[9] = { itemID = 18417 }; --Pattern: Mooncloth Gloves
		[10] = { itemID = 18514 }; --Pattern: Girdle of Insight
		[11] = { itemID = 18515 }; --Pattern: Mongoose Boots
		[12] = { itemID = 18516 }; --Pattern: Swift Flight Bracers
		[14] = { icon = "INV_Box_01", name = WHITE..AL["Ogre Tannin Basket"] };
		[15] = { itemID = 18240 }; --Ogre Tannin
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
		[1] = { itemID = 18496 }; --Heliotrope Cloak
		[2] = { itemID = 18497 }; --Sublime Wristguards
		[3] = { itemID = 18494 }; --Denwatcher's Shoulders
		[4] = { itemID = 18493 }; --Bulky Iron Spaulders
		[5] = { itemID = 18498 }; --Hedgecutter
		[16] = { itemID = 18450 }; --Robe of Combustion
		[17] = { itemID = 18451 }; --Hyena Hide Belt
		[18] = { itemID = 18458 }; --Modest Armguards
		[19] = { itemID = 18459 }; --Gallant's Wristguards
		[20] = { itemID = 18464 }; --Gordok Nose Ring
		[21] = { itemID = 18462 }; --Jagged Bone Fist
		[22] = { itemID = 18463 }; --Ogre Pocket Knife
		[23] = { itemID = 18460 }; --Unsophisticated Hand Cannon
	};
	{
		Name = BabbleBoss["Captain Kromcrush"];
		[1] = { itemID = 18507 }; --Boots of the Full Moon
		[2] = { itemID = 18505 }; --Mugger's Belt
		[3] = { itemID = 18503 }; --Kromcrush's Chestplate
		[4] = { itemID = 18502 }; --Monstrous Glaive
	};
	{
		Name = BabbleBoss["Cho'Rush the Observer"];
		[1] = { itemID = 18490 }; --Insightful Hood
		[2] = { itemID = 18484 }; --Cho'Rush's Blade
		[3] = { itemID = 18485 }; --Observer's Shield
		[4] = { itemID = 18483 }; --Mana Channeling Wand
	};
	{
		Name = BabbleBoss["King Gordok"];
		[1] = { itemID = 18526 }; --Crown of the Ogre King
		[2] = { itemID = 18525 }; --Bracers of Prosperity
		[3] = { itemID = 18527 }; --Harmonious Gauntlets
		[4] = { itemID = 18524 }; --Leggings of Destruction
		[5] = { itemID = 18521 }; --Grimy Metal Boots
		[6] = { itemID = 18522 }; --Band of the Ogre King
		[7] = { itemID = 18523 }; --Brightly Glowing Stone
		[8] = { itemID = 18520 }; --Barbarous Blade
		[16] = { itemID = 19258 }; --Ace of Warlords
		[18] = { itemID = 18780 }; --Top Half of Advanced Armorsmithing: Volume I
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
	Name = BabbleZone["Dire Maul"] .." West";
	Type = "ClassicDungeonExt";
	Map = "DireMaul";
	{
		Name = BabbleBoss["Tendris Warpwood"];
		[1] = { itemID = 18390 }; --Tanglemoss Leggings
		[2] = { itemID = 18393 }; --Warpwood Binding
		[4] = { itemID = 18353 }; --Stoneflower Staff
		[5] = { itemID = 18352 }; --Petrified Bark Shield
	};
	{
		Name = BabbleBoss["Illyanna Ravenoak"];
		[1] = { itemID = 18386 }; --Padre's Trousers
		[2] = { itemID = 18383 }; --Force Imbued Gauntlets
		[4] = { itemID = 18349 }; --Gauntlets of Accuracy
		[5] = { itemID = 18347 }; --Well Balanced Axe
	};
	{
		Name = BabbleBoss["Magister Kalendris"];
		[1] = { itemID = 18374 }; --Flamescarred Shoulders
		[2] = { itemID = 18397 }; --Elder Magus Pendant
		[3] = { itemID = 18371 }; --Mindtap Talisman
		[5] = { itemID = 18350 }; --Amplifying Cloak
		[6] = { itemID = 18351 }; --Magically Sealed Bracers
		[7] = { itemID = 22309 }; --Pattern: Big Bag of Enchantment
	};
	{
		Name = BabbleBoss["Tsu'zee"];
		[1] = { itemID = 18387 }; --Brightspark Gloves
		[3] = { itemID = 18346 }; --Threadbare Trousers
		[4] = { itemID = 18345 }; --Murmuring Ring
	};
	{
		Name = BabbleBoss["Immol'thar"];
		[1] = { itemID = 18389 }; --Cloak of the Cosmos
		[2] = { itemID = 18385 }; --Robe of Everlasting Night
		[3] = { itemID = 18377 }; --Quickdraw Gloves
		[4] = { itemID = 18391 }; --Eyestalk Cord
		[5] = { itemID = 18394 }; --Demon Howl Wristguards
		[6] = { itemID = 18379 }; --Odious Greaves
		[7] = { itemID = 18384 }; --Bile-etched Spaulders
		[16] = { itemID = 18381 }; --Evil Eye Pendant
		[17] = { itemID = 18370 }; --Vigilance Charm
		[18] = { itemID = 18372 }; --Blade of the New Moon
	};
	{
		Name = BabbleBoss["Lord Hel'nurath"];
		[1] = { itemID = 18757 }; --Diabolic Mantle
		[2] = { itemID = 18754 }; --Fel Hardened Bracers
		[3] = { itemID = 18756 }; --Dreadguard's Protector
		[4] = { itemID = 18755 }; --Xorothian Firestick
	};
	{
		Name = BabbleBoss["Prince Tortheldrin"];
		[1] = { itemID = 18382 }; --Fluctuating Cloak
		[2] = { itemID = 18373 }; --Chestplate of Tranquility
		[3] = { itemID = 18375 }; --Bracers of the Eclipse
		[4] = { itemID = 18378 }; --Silvermoon Leggings
		[5] = { itemID = 18380 }; --Eldritch Reinforced Legplates
		[6] = { itemID = 18395 }; --Emerald Flame Ring
		[8] = { icon = "INV_Box_01", name = WHITE..AL["The Prince's Chest"] };
		[9] = { itemID = 18336 }; --Gauntlet of Gordok Might
		[16] = { itemID = 18392 }; --Distracting Dagger
		[17] = { itemID = 18396 }; --Mind Carver
		[18] = { itemID = 18376 }; --Timeworn Mace
		[19] = { itemID = 18388 }; --Stoneshatter
	};
	{
		Name = AL["Shen'dralar Provisioner"];
		[1] = { itemID = 18487 }; --Pattern: Mooncloth Robe
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18344 }; --Stonebark Gauntlets
		[2] = { itemID = 18340 }; --Eidolon Talisman
		[3] = { itemID = 18338 }; --Wand of Arcane Potency
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
		[1] = { itemID = 9444 }; --Techbot CPU Shell
		[2] = { itemID = 9277 }; --Techbot's Memory Core
	};
	{
		Name = BabbleBoss["Grubbis"];
		[1] = { itemID = 9445 }; --Grubbis Paws
	};
	{
		Name = BabbleBoss["Viscous Fallout"];
		[1] = { itemID = 9454 }; --Acidic Walkers
		[2] = { itemID = 9453 }; --Toxic Revenger
		[3] = { itemID = 9452 }; --Hydrocane
	};
	{
		Name = BabbleBoss["Electrocutioner 6000"];
		[1] = { itemID = 9448 }; --Spidertank Oilrag
		[2] = { itemID = 9447 }; --Electrocutioner Lagnut
		[3] = { itemID = 9446 }; --Electrocutioner Leg
		[4] = { itemID = 6893 }; --Workshop Key
	};
	{
		Name = BabbleBoss["Crowd Pummeler 9-60"];
		[1] = { itemID = 9450 }; --Gnomebot Operating Boots
		[2] = { itemID = 9449 }; --Manual Crowd Pummeler
	};
	{
		Name = BabbleBoss["Dark Iron Ambassador"];
		[1] = { itemID = 9455 }; --Emissary Cuffs
		[2] = { itemID = 9457 }; --Royal Diplomatic Scepter
		[3] = { itemID = 9456 }; --Glass Shooter
	};
	{
		Name = BabbleBoss["Mekgineer Thermaplugg"];
		[1] = { itemID = 9492 }; --Electromagnetic Gigaflux Reactivator
		[2] = { itemID = 9461 }; --Charged Gear
		[3] = { itemID = 9459 }; --Thermaplugg's Left Arm
		[4] = { itemID = 9458 }; --Thermaplugg's Central Core
		[5] = { itemID = 4415 }; --Schematic: Craftsman's Monocle
		[6] = { itemID = 4413 }; --Schematic: Discombobulator Ray
		[7] = { itemID = 4411 }; --Schematic: Flame Deflector
		[8] = { itemID = 7742 }; --Schematic: Gnomish Cloaking Device
		[9] = { itemID = 9299 }; --Thermaplugg's Safe Combination
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9508 }; --Mechbuilder's Overalls
		[2] = { itemID = 9491 }; --Hotshot Pilot's Gloves
		[3] = { itemID = 9509 }; --Petrolspill Leggings
		[4] = { itemID = 9510 }; --Caverndeep Trudgers
		[5] = { itemID = 9490 }; --Gizmotron Megachopper
		[6] = { itemID = 9485 }; --Vibroblade
		[7] = { itemID = 9486 }; --Supercharger Battle Axe
		[8] = { itemID = 9488 }; --Oscillating Power Hammer
		[9] = { itemID = 9487 }; --Hi-tech Supergun
		[10] = { itemID = 9327 }; --Security DELTA Data Access Card
		[11] = { itemID = 9326 }; --Grime-Encrusted Ring
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
		[1] = { itemID = 17746 }; --Noxxion's Shackles
		[2] = { itemID = 17744 }; --Heart of Noxxion
		[3] = { itemID = 17745 }; --Noxious Shooter
		[4] = { itemID = 17702 }; --Celebrian Rod
	};
	{
		Name = BabbleBoss["Razorlash"];
		[1] = { itemID = 17750 }; --Chloromesh Girdle
		[2] = { itemID = 17748 }; --Vinerot Sandals
		[3] = { itemID = 17749 }; --Phytoskin Spaulders
		[4] = { itemID = 17751 }; --Brusslehide Leggings
	};
	{
		Name = BabbleBoss["Lord Vyletongue"];
		[1] = { itemID = 17755 }; --Satyrmane Sash
		[2] = { itemID = 17754 }; --Infernal Trickster Leggings
		[3] = { itemID = 17752 }; --Satyr's Lash
		[4] = { itemID = 17703 }; --Celebrian Diamond
	};
	{
		Name = BabbleBoss["Meshlok the Harvester"];
		[1] = { itemID = 17741 }; --Nature's Embrace
		[2] = { itemID = 17742 }; --Fungus Shroud Armor
		[3] = { itemID = 17767 }; --Bloomsprout Headpiece
	};
	{
		Name = BabbleBoss["Celebras the Cursed"];
		[1] = { itemID = 17739 }; --Grovekeeper's Drape
		[2] = { itemID = 17740 }; --Soothsayer's Headdress
		[3] = { itemID = 17738 }; --Claw of Celebras
	};
	{
		Name = BabbleBoss["Landslide"];
		[1] = { itemID = 17736 }; --Rockgrip Gauntlets
		[2] = { itemID = 17734 }; --Helm of the Mountain
		[3] = { itemID = 17737 }; --Cloud Stone
		[4] = { itemID = 17943 }; --Fist of Stone
	};
	{
		Name = BabbleBoss["Tinkerer Gizlock"];
		[1] = { itemID = 17719 }; --Inventor's Focal Sword
		[2] = { itemID = 17718 }; --Gizlock's Hypertech Buckler
		[3] = { itemID = 17717 }; --Megashot Rifle
	};
	{
		Name = BabbleBoss["Rotgrip"];
		[1] = { itemID = 17732 }; --Rotgrip Mantle
		[2] = { itemID = 17728 }; --Albino Crocscale Boots
		[3] = { itemID = 17730 }; --Gatorbite Axe
	};
	{
		Name = BabbleBoss["Princess Theradras"];
		[1] = { itemID = 17780 }; --Blade of Eternal Darkness
		[2] = { itemID = 17715 }; --Eye of Theradras
		[3] = { itemID = 17714 }; --Bracers of the Stone Princess
		[4] = { itemID = 17711 }; --Elemental Rockridge Leggings
		[5] = { itemID = 17707 }; --Gemshard Heart
		[6] = { itemID = 17713 }; --Blackstone Ring
		[7] = { itemID = 17710 }; --Charstone Dirk
		[8] = { itemID = 17766 }; --Princess Theradras' Scepter
	};
	{
		Name = AL["Quest Item"];
		[1] = { itemID = 17764 }; --Gem of the Fourth Khan
		[2] = { itemID = 17765 }; --Gem of the Fifth Khan
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
		[1] = { itemID = 14149 }; --Subterranean Cape
		[2] = { itemID = 14148 }; --Crystalline Cuffs
		[3] = { itemID = 14145 }; --Cursed Felblade
		[4] = { itemID = 14540 }; --Taragaman the Hungerer's Heart
	};
	{
		Name = AL["Zelemar the Wrathful"];
		[1] = { itemID = 24225 }; --Blood of the Wrathful
	};
	{
		Name = BabbleBoss["Jergosh the Invoker"];
		[1] = { itemID = 14150 }; --Robe of Evocation
		[2] = { itemID = 14147 }; --Cavedweller Bracers
		[3] = { itemID = 14151 }; --Chanting Blade
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
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Tuten'kash"] };
		[2] = { itemID = 10776 }; --Silky Spider Cape
		[3] = { itemID = 10777 }; --Arachnid Gloves
		[4] = { itemID = 10775 }; --Carapace of Tuten'kash
	};
	{
		Name = AL["Henry Stern"];
		[1] = { itemID = 3831 }; --Recipe: Mighty Troll's Blood Potion
		[2] = { itemID = 10841, spellID = 13028 }; --Goldthorn Tea
	};
	{
		Name = BabbleBoss["Mordresh Fire Eye"];
		[1] = { itemID = 10771 }; --Deathmage Sash
		[2] = { itemID = 10769 }; --Glowing Eye of Mordresh
		[3] = { itemID = 10770 }; --Mordresh's Lifeless Skull
	};
	{
		Name = BabbleBoss["Glutton"];
		[1] = { itemID = 10774 }; --Fleshhide Shoulders
		[2] = { itemID = 10772 }; --Glutton's Cleaver
	};
	{
		Name = BabbleBoss["Ragglesnout"];
		[1] = { itemID = 10768 }; --Boar Champion's Belt
		[2] = { itemID = 10758 }; --X'caliboar
		[3] = { itemID = 10767 }; --Savage Boar's Guard
	};
	{
		Name = BabbleBoss["Amnennar the Coldbringer"];
		[1] = { itemID = 10762 }; --Robes of the Lich
		[2] = { itemID = 10765 }; --Bonefingers
		[3] = { itemID = 10764 }; --Deathchill Armor
		[4] = { itemID = 10763 }; --Icemetal Barbute
		[5] = { itemID = 10761 }; --Coldrage Dagger
		[6] = { itemID = 10420 }; --Skull of the Coldbringer
	};
	{
		Name = BabbleBoss["Plaguemaw the Rotting"];
		[1] = { itemID = 10760 }; --Swine Fists
		[2] = { itemID = 10766 }; --Plaguerot Sprig
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10574 }; --Corpseshroud
		[2] = { itemID = 10581 }; --Death's Head Vestment
		[3] = { itemID = 10578 }; --Thoughtcast Boots
		[4] = { itemID = 10583 }; --Quillward Harness
		[5] = { itemID = 10582 }; --Briar Tredders
		[6] = { itemID = 10584 }; --Stormgale Fists
		[7] = { itemID = 10573 }; --Boneslasher
		[8] = { itemID = 10570 }; --Manslayer
		[9] = { itemID = 10571 }; --Ebony Boneclub
		[10] = { itemID = 10567 }; --Quillshooter
		[11] = { itemID = 10572 }; --Freezing Shard
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
		[1] = { itemID = 6681 }; --Thornspike
	};
	{
		Name = BabbleBoss["Death Speaker Jargba"];
		[1] = { itemID = 6685 }; --Death Speaker Mantle
		[2] = { itemID = 6682 }; --Death Speaker Robes
		[3] = { itemID = 2816 }; --Death Speaker Scepter
	};
	{
		Name = AL["Razorfen Spearhide"];
		[1] = { itemID = 6679 }; --Armor Piercer
	};
	{
		Name = BabbleBoss["Overlord Ramtusk"];
		[1] = { itemID = 6686 }; --Tusken Helm
		[2] = { itemID = 6687 }; --Corpsemaker
	};
	{
		Name = BabbleBoss["Agathelos the Raging"];
		[1] = { itemID = 6690 }; --Ferine Leggings
		[2] = { itemID = 6691 }; --Swinetusk Shank
	};
	{
		Name = BabbleBoss["Blind Hunter"];
		[1] = { itemID = 6697 }; --Batwing Mantle
		[2] = { itemID = 6695 }; --Stygian Bone Amulet
		[3] = { itemID = 6696 }; --Nightstalker Bow
	};
	{
		Name = BabbleBoss["Charlga Razorflank"];
		[1] = { itemID = 6693 }; --Agamaggan's Clutch
		[2] = { itemID = 6692 }; --Pronged Reaver
		[3] = { itemID = 6694 }; --Heart of Agamaggan
		[4] = { itemID = 17008 }; --Small Scroll
		[5] = { itemID = 5793 }; --Razorflank's Heart
		[6] = { itemID = 5792 }; --Razorflank's Medallion
	};
	{
		Name = BabbleBoss["Earthcaller Halmgar"];
		[1] = { itemID = 6688 }; --Whisperwind Headdress
		[2] = { itemID = 6689 }; --Wind Spirit Staff
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2264 }; --Mantle of Thieves
		[2] = { itemID = 1978 }; --Wolfclaw Gloves
		[3] = { itemID = 1488 }; --Avenger's Armor
		[4] = { itemID = 4438 }; --Pugilist Bracers
		[5] = { itemID = 2039 }; --Plains Ring
		[6] = { itemID = 776 }; --Vendetta
		[7] = { itemID = 1727 }; --Sword of Decay
		[8] = { itemID = 1975 }; --Pysan's Old Greatsword
		[9] = { itemID = 1976 }; --Slaghammer
		[10] = { itemID = 2549 }; --Staff of the Shade
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
		[1] = { itemID = 7719 }; --Raging Berserker's Helm
		[2] = { itemID = 7718 }; --Herod's Shoulder
		[3] = { itemID = 10330 }; --Scarlet Leggings
		[4] = { itemID = 7717 }; --Ravager
		[6] = { icon = "INV_Box_01", name = WHITE..AL["Scarlet Trainee"] };
		[7] = { itemID = 23192 }; --Tabard of the Scarlet Crusade
	};
	{
		Name = BabbleZone["Cathedral"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["High Inquisitor Fairbanks"] };
		[2] = { itemID = 19507 }; --Inquisitor's Shawl
		[3] = { itemID = 19508 }; --Branded Leather Bracers
		[4] = { itemID = 19509 }; --Dusty Mail Boots
		[6] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Scarlet Commander Mograine"] };
		[7] = { itemID = 7724 }; --Gauntlets of Divinity
		[8] = { itemID = 10330 }; --Scarlet Leggings
		[9] = { itemID = 7723 }; --Mograine's Might
		[10] = { itemID = 7726 }; --Aegis of the Scarlet Commander
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["High Inquisitor Whitemane"] };
		[17] = { itemID = 7720 }; --Whitemane's Chapeau
		[18] = { itemID = 7722 }; --Triune Amulet
		[19] = { itemID = 7721 }; --Hand of Righteousness
		[20] = { itemID = 20976 }; --Design: Citrine Pendant of Golden Healing
	};
	{
		Name = BabbleZone["Graveyard"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Interrogator Vishas"] };
		[2] = { itemID = 7683 }; --Bloody Brass Knuckles
		[3] = { itemID = 7682 }; --Torturing Poker
		[5] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Bloodmage Thalnos"] };
		[6] = { itemID = 7684 }; --Bloodmage Mantle
		[7] = { itemID = 7685 }; --Orb of the Forgotten Seer
		[9] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Ironspine"] };
		[10] = { itemID = 7688 }; --Ironspine's Ribcage
		[11] = { itemID = 7686 }; --Ironspine's Eye
		[12] = { itemID = 7687 }; --Ironspine's Fist
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Azshir the Sleepless"] };
		[17] = { itemID = 7709 }; --Blighted Leggings
		[18] = { itemID = 7731 }; --Ghostshard Talisman
		[19] = { itemID = 7708 }; --Necrotic Wand
		[21] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Fallen Champion"] };
		[22] = { itemID = 7691 }; --Embalmed Shroud
		[23] = { itemID = 7690 }; --Ebon Vise
		[24] = { itemID = 7689 }; --Morbid Dawn
	};
	{
		Name = BabbleZone["Library"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Houndmaster Loksey"] };
		[2] = { itemID = 7756 }; --Dog Training Gloves
		[3] = { itemID = 7710 }; --Loksey's Training Stick
		[4] = { itemID = 3456 }; --Dog Whistle
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Arcanist Doan"] };
		[17] = { itemID = 34227 }; --Deadman's Hand
		[18] = { itemID = 7712 }; --Mantle of Doan
		[19] = { itemID = 7711 }; --Robe of Doan
		[20] = { itemID = 7714 }; --Hypnotic Blade
		[21] = { itemID = 7713 }; --Illusionary Rod
		[23] = { icon = "INV_Box_01", name = WHITE..AL["Doan's Strongbox"] };
		[24] = { itemID = 7146 }; --The Scarlet Key
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 7728 }; --Beguiler Robes
		[2] = { itemID = 7755 }; --Flintrock Shoulders
		[3] = { itemID = 7727 }; --Watchman Pauldrons
		[4] = { itemID = 7760 }; --Warchief Kilt
		[5] = { itemID = 7754 }; --Harbinger Boots
		[6] = { itemID = 5819 }; --Sunblaze Coif
		[7] = { itemID = 7759 }; --Archon Chestpiece
		[8] = { itemID = 10328 }; --Scarlet Chestpiece
		[9] = { itemID = 10332 }; --Scarlet Boots
		[10] = { itemID = 2262 }; --Mark of Kern
		[11] = { itemID = 1992 }; --Swampchill Fetish
		[13] = { itemID = 10333 }; --Scarlet Wristguards
		[14] = { itemID = 10331 }; --Scarlet Gauntlets
		[15] = { itemID = 10329 }; --Scarlet Belt
		[16] = { itemID = 5756 }; --Sliverblade
		[17] = { itemID = 8225 }; --Tainted Pierce
		[18] = { itemID = 8226 }; --The Butcher
		[19] = { itemID = 7786 }; --Headsplitter
		[20] = { itemID = 7761 }; --Steelclaw Reaver
		[21] = { itemID = 7753 }; --Bloodspiller
		[22] = { itemID = 7752 }; --Dreamslayer
		[23] = { itemID = 7736 }; --Fight Club
		[24] = { itemID = 7730 }; --Cobalt Crusher
		[25] = { itemID = 7758 }; --Ruthless Shiv
		[26] = { itemID = 7757 }; --Windweaver Staff
		[27] = { itemID = 7787 }; --Resplendent Guardian
		[28] = { itemID = 7729 }; --Chesterfall Musket
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
		[1] = { itemID = 13523 }; --Blood of Innocents
	};
	{
		Name = BabbleBoss["Kirtonos the Herald"];
		[1] = { itemID = 13956 }; --Clutch of Andros
		[2] = { itemID = 13957 }; --Gargoyle Slashers
		[3] = { itemID = 13969 }; --Loomguard Armbraces
		[4] = { itemID = 13967 }; --Windreaver Greaves
		[5] = { itemID = 13955 }; --Stoneform Shoulders
		[6] = { itemID = 13960 }; --Heart of the Fiend
		[7] = { itemID = 14024 }; --Frightalon
		[8] = { itemID = 13983 }; --Gravestone War Axe
		[16] = { itemID = 16734 }; --Boots of Valor
	};
	{
		Name = BabbleBoss["Jandice Barov"];
		[1] = { itemID = 18689 }; --Phantasmal Cloak
		[2] = { itemID = 14543 }; --Darkshade Gloves
		[3] = { itemID = 14545 }; --Ghostloom Leggings
		[4] = { itemID = 14548 }; --Royal Cap Spaulders
		[5] = { itemID = 18690 }; --Wraithplate Leggings
		[6] = { itemID = 14541 }; --Barovian Family Sword
		[7] = { itemID = 22394 }; --Staff of Metanoia
		[9] = { itemID = 13725 }; --Krastinov's Bag of Horrors
		[10] = { itemID = 13523 }; --Blood of Innocents
		[16] = { itemID = 16701 }; --Dreadmist Mantle
	};
	{
		Name = BabbleBoss["Rattlegore"];
		[1] = { itemID = 14538 }; --Deadwalker Mantle
		[2] = { itemID = 14539 }; --Bone Ring Helm
		[3] = { itemID = 18686 }; --Bone Golem Shoulders
		[4] = { itemID = 14537 }; --Corpselight Greaves
		[5] = { itemID = 14531 }; --Frightskull Shaft
		[6] = { itemID = 14528 }; --Rattlecage Buckler
		[8] = { itemID = 13873 }; --Viewing Room Key
		[16] = { itemID = 16711 }; --Shadowcraft Boots
		[18] = { itemID = 18782 }; --Top Half of Advanced Armorsmithing: Volume II
		[19] = { itemID = 12726 }; --Plans: Enchanted Thorium Leggings
	};
	{
		Name = BabbleBoss["Death Knight Darkreaver"];
		[1] = { itemID = 18760 }; --Necromantic Band
		[2] = { itemID = 18758 }; --Specter's Blade
		[3] = { itemID = 18759 }; --Malicious Axe
		[4] = { itemID = 18761 }; --Oblivion's Touch
		[6] = { itemID = 18749 }; --Charger's Lost Soul
	};
	{
		Name = BabbleBoss["Vectus"];
		[1] = { itemID = 14577 }; --Skullsmoke Pants
		[2] = { itemID = 18691 }; --Dark Advisor's Pendant
	};
	{
		Name = BabbleBoss["Marduk Blackpool"];
		[1] = { itemID = 18692 }; --Death Knight Sabatons
		[2] = { itemID = 14576 }; --Ebon Hilt of Marduk
	};
	{
		Name = BabbleBoss["Ras Frostwhisper"];
		[1] = { itemID = 13314 }; --Alanna's Embrace
		[3] = { itemID = 14340 }; --Freezing Lich Robes
		[4] = { itemID = 18693 }; --Shivery Handwraps
		[5] = { itemID = 14503 }; --Death's Clutch
		[6] = { itemID = 14502 }; --Frostbite Girdle
		[7] = { itemID = 18694 }; --Shadowy Mail Greaves
		[8] = { itemID = 14522 }; --Maelstrom Leggings
		[9] = { itemID = 14525 }; --Boneclenched Gauntlets
		[10] = { itemID = 18695 }; --Spellbound Tome
		[11] = { itemID = 13952 }; --Iceblade Hacker
		[12] = { itemID = 14487 }; --Bonechill Hammer
		[13] = { itemID = 18696 }; --Intricately Runed Shield
		[16] = { itemID = 16689 }; --Magister's Mantle
		[18] = { itemID = 13521 }; --Recipe: Flask of Supreme Power
		[20] = { itemID = 13626 }; --Human Head of Ras Frostwhisper
		[21] = { itemID = 13986 }; --Crown of Caer Darrow
		[22] = { itemID = 13984 }; --Darrowspike
		[23] = { itemID = 13982 }; --Warblade of Caer Darrow
		[24] = { itemID = 14002 }; --Darrowshire Strongguard
		[26] = { icon = "INV_Box_01", name = WHITE..AL["Frostwhisper's Embalming Fluid"] };
		[27] = { itemID = 12736 }; --Frostwhisper's Embalming Fluid
	};
	{
		Name = BabbleBoss["Kormok"];
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..BabbleBoss["Kormok"] };
		[2] = { itemID = 22303 }; --Ironweave Pants
		[3] = { itemID = 22326 }; --Amalgam's Band
		[4] = { itemID = 22331 }; --Band of the Steadfast Hero
		[5] = { itemID = 22332 }; --Blade of Necromancy
		[6] = { itemID = 22333 }; --Hammer of Divine Might
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Instructor Malicia"];
		[1] = { itemID = 16710 }; --Shadowcraft Bracers
		[3] = { itemID = 18681 }; --Burial Shawl
		[4] = { itemID = 14633 }; --Necropile Mantle
		[5] = { itemID = 14626 }; --Necropile Robe
		[6] = { itemID = 14629 }; --Necropile Cuffs
		[7] = { itemID = 14631 }; --Necropile Boots
		[8] = { itemID = 14632 }; --Necropile Leggings
		[9] = { itemID = 14637 }; --Cadaverous Armor
		[10] = { itemID = 14640 }; --Cadaverous Gloves
		[11] = { itemID = 14636 }; --Cadaverous Belt
		[12] = { itemID = 14638 }; --Cadaverous Leggings
		[13] = { itemID = 18682 }; --Ghoul Skin Leggings
		[14] = { itemID = 14641 }; --Cadaverous Walkers
		[15] = { itemID = 14611 }; --Bloodmail Hauberk
		[16] = { itemID = 14615 }; --Bloodmail Gauntlets
		[17] = { itemID = 14614 }; --Bloodmail Belt
		[18] = { itemID = 14612 }; --Bloodmail Legguards
		[19] = { itemID = 14616 }; --Bloodmail Boots
		[20] = { itemID = 14624 }; --Deathbone Chestplate
		[21] = { itemID = 14622 }; --Deathbone Gauntlets
		[22] = { itemID = 14620 }; --Deathbone Girdle
		[23] = { itemID = 14623 }; --Deathbone Legguards
		[24] = { itemID = 14621 }; --Deathbone Sabatons
		[25] = { itemID = 18684 }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200 }; --Totem of Sustaining
		[28] = { itemID = 18683 }; --Hammer of the Vesper
		[29] = { itemID = 18680 }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Doctor Theolen Krastinov"];
		[1] = { itemID = 16684 }; --Magister's Gloves
		[3] = { itemID = 18681 }; --Burial Shawl
		[4] = { itemID = 14633 }; --Necropile Mantle
		[5] = { itemID = 14626 }; --Necropile Robe
		[6] = { itemID = 14629 }; --Necropile Cuffs
		[7] = { itemID = 14631 }; --Necropile Boots
		[8] = { itemID = 14632 }; --Necropile Leggings
		[9] = { itemID = 18682 }; --Ghoul Skin Leggings
		[10] = { itemID = 14637 }; --Cadaverous Armor
		[11] = { itemID = 14638 }; --Cadaverous Leggings
		[12] = { itemID = 14640 }; --Cadaverous Gloves
		[13] = { itemID = 14636 }; --Cadaverous Belt
		[14] = { itemID = 14641 }; --Cadaverous Walkers
		[15] = { itemID = 14612 }; --Bloodmail Legguards
		[16] = { itemID = 14616 }; --Bloodmail Boots
		[17] = { itemID = 14615 }; --Bloodmail Gauntlets
		[18] = { itemID = 14614 }; --Bloodmail Belt
		[19] = { itemID = 14611 }; --Bloodmail Hauberk
		[20] = { itemID = 14621 }; --Deathbone Sabatons
		[21] = { itemID = 14620 }; --Deathbone Girdle
		[22] = { itemID = 14622 }; --Deathbone Gauntlets
		[23] = { itemID = 14624 }; --Deathbone Chestplate
		[24] = { itemID = 14623 }; --Deathbone Legguards
		[25] = { itemID = 18684 }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200 }; --Totem of Sustaining
		[28] = { itemID = 18683 }; --Hammer of the Vesper
		[29] = { itemID = 18680 }; --Ancient Bone Bow
		[30] = { itemID = 13523 }; --Blood of Innocents
	};
	{
		Name = BabbleBoss["Lorekeeper Polkelt"];
		[1] = { itemID = 16705 }; --Dreadmist Wraps
		[3] = { itemID = 18681 }; --Burial Shawl
		[4] = { itemID = 14633 }; --Necropile Mantle
		[5] = { itemID = 14626 }; --Necropile Robe
		[6] = { itemID = 14629 }; --Necropile Cuffs
		[7] = { itemID = 14631 }; --Necropile Boots
		[8] = { itemID = 14632 }; --Necropile Leggings
		[9] = { itemID = 18682 }; --Ghoul Skin Leggings
		[10] = { itemID = 14637 }; --Cadaverous Armor
		[11] = { itemID = 14638 }; --Cadaverous Leggings
		[12] = { itemID = 14640 }; --Cadaverous Gloves
		[13] = { itemID = 14636 }; --Cadaverous Belt
		[14] = { itemID = 14641 }; --Cadaverous Walkers
		[15] = { itemID = 14612 }; --Bloodmail Legguards
		[16] = { itemID = 14616 }; --Bloodmail Boots
		[17] = { itemID = 14615 }; --Bloodmail Gauntlets
		[18] = { itemID = 14614 }; --Bloodmail Belt
		[19] = { itemID = 14611 }; --Bloodmail Hauberk
		[20] = { itemID = 14621 }; --Deathbone Sabatons
		[21] = { itemID = 14620 }; --Deathbone Girdle
		[22] = { itemID = 14622 }; --Deathbone Gauntlets
		[23] = { itemID = 14624 }; --Deathbone Chestplate
		[24] = { itemID = 14623 }; --Deathbone Legguards
		[25] = { itemID = 18684 }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200 }; --Totem of Sustaining
		[28] = { itemID = 18683 }; --Hammer of the Vesper
		[29] = { itemID = 18680 }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["The Ravenian"];
		[1] = { itemID = 16716 }; --Wildheart Belt
		[3] = { itemID = 18681 }; --Burial Shawl
		[4] = { itemID = 14633 }; --Necropile Mantle
		[5] = { itemID = 14626 }; --Necropile Robe
		[6] = { itemID = 14629 }; --Necropile Cuffs
		[7] = { itemID = 14631 }; --Necropile Boots
		[8] = { itemID = 14632 }; --Necropile Leggings
		[9] = { itemID = 18682 }; --Ghoul Skin Leggings
		[10] = { itemID = 14637 }; --Cadaverous Armor
		[11] = { itemID = 14638 }; --Cadaverous Leggings
		[12] = { itemID = 14640 }; --Cadaverous Gloves
		[13] = { itemID = 14636 }; --Cadaverous Belt
		[14] = { itemID = 14641 }; --Cadaverous Walkers
		[15] = { itemID = 14612 }; --Bloodmail Legguards
		[16] = { itemID = 14616 }; --Bloodmail Boots
		[17] = { itemID = 14615 }; --Bloodmail Gauntlets
		[18] = { itemID = 14614 }; --Bloodmail Belt
		[19] = { itemID = 14611 }; --Bloodmail Hauberk
		[20] = { itemID = 14621 }; --Deathbone Sabatons
		[21] = { itemID = 14620 }; --Deathbone Girdle
		[22] = { itemID = 14622 }; --Deathbone Gauntlets
		[23] = { itemID = 14624 }; --Deathbone Chestplate
		[24] = { itemID = 14623 }; --Deathbone Legguards
		[25] = { itemID = 18684 }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200 }; --Totem of Sustaining
		[28] = { itemID = 18683 }; --Hammer of the Vesper
		[29] = { itemID = 18680 }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Lord Alexei Barov"];
		[1] = { itemID = 16722 }; --Lightforge Bracers
		[3] = { itemID = 18681 }; --Burial Shawl
		[4] = { itemID = 14633 }; --Necropile Mantle
		[5] = { itemID = 14626 }; --Necropile Robe
		[6] = { itemID = 14629 }; --Necropile Cuffs
		[7] = { itemID = 14631 }; --Necropile Boots
		[8] = { itemID = 14632 }; --Necropile Leggings
		[9] = { itemID = 18682 }; --Ghoul Skin Leggings
		[10] = { itemID = 14637 }; --Cadaverous Armor
		[11] = { itemID = 14638 }; --Cadaverous Leggings
		[12] = { itemID = 14640 }; --Cadaverous Gloves
		[13] = { itemID = 14636 }; --Cadaverous Belt
		[14] = { itemID = 14641 }; --Cadaverous Walkers
		[15] = { itemID = 14612 }; --Bloodmail Legguards
		[16] = { itemID = 14616 }; --Bloodmail Boots
		[17] = { itemID = 14615 }; --Bloodmail Gauntlets
		[18] = { itemID = 14614 }; --Bloodmail Belt
		[19] = { itemID = 14611 }; --Bloodmail Hauberk
		[20] = { itemID = 14621 }; --Deathbone Sabatons
		[21] = { itemID = 14620 }; --Deathbone Girdle
		[22] = { itemID = 14622 }; --Deathbone Gauntlets
		[23] = { itemID = 14624 }; --Deathbone Chestplate
		[24] = { itemID = 14623 }; --Deathbone Legguards
		[25] = { itemID = 18684 }; --Dimly Opalescent Ring
		[26] = { itemID = 23201 }; --Libram of Divinity
		[27] = { itemID = 23200 }; --Totem of Sustaining
		[28] = { itemID = 18683 }; --Hammer of the Vesper
		[29] = { itemID = 18680 }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Lady Illucia Barov"];
		[1] = { itemID = 18681 }; --Burial Shawl
		[2] = { itemID = 14633 }; --Necropile Mantle
		[3] = { itemID = 14626 }; --Necropile Robe
		[4] = { itemID = 14629 }; --Necropile Cuffs
		[5] = { itemID = 14631 }; --Necropile Boots
		[6] = { itemID = 14632 }; --Necropile Leggings
		[7] = { itemID = 18682 }; --Ghoul Skin Leggings
		[8] = { itemID = 14637 }; --Cadaverous Armor
		[9] = { itemID = 14638 }; --Cadaverous Leggings
		[10] = { itemID = 14640 }; --Cadaverous Gloves
		[11] = { itemID = 14636 }; --Cadaverous Belt
		[12] = { itemID = 14641 }; --Cadaverous Walkers
		[13] = { itemID = 14612 }; --Bloodmail Legguards
		[14] = { itemID = 14616 }; --Bloodmail Boots
		[15] = { itemID = 14615 }; --Bloodmail Gauntlets
		[16] = { itemID = 14614 }; --Bloodmail Belt
		[17] = { itemID = 14611 }; --Bloodmail Hauberk
		[18] = { itemID = 14621 }; --Deathbone Sabatons
		[19] = { itemID = 14620 }; --Deathbone Girdle
		[20] = { itemID = 14622 }; --Deathbone Gauntlets
		[21] = { itemID = 14624 }; --Deathbone Chestplate
		[22] = { itemID = 14623 }; --Deathbone Legguards
		[23] = { itemID = 18684 }; --Dimly Opalescent Ring
		[24] = { itemID = 23201 }; --Libram of Divinity
		[25] = { itemID = 23200 }; --Totem of Sustaining
		[26] = { itemID = 18683 }; --Hammer of the Vesper
		[27] = { itemID = 18680 }; --Ancient Bone Bow
	};
	{
		Name = BabbleBoss["Darkmaster Gandling"];
		[1] = { itemID = 13937 }; --Headmaster's Charge
		[2] = { itemID = 14514 }; --Pattern: Robe of the Void
		[3] = { itemID = 14153 }; --Robe of the Void
		[4] = { itemID = 13944 }; --Tombstone Breastplate
		[5] = { itemID = 13398 }; --Boots of the Shrieker
		[7] = { itemID = 13950 }; --Detention Strap
		[8] = { itemID = 13951 }; --Vigorsteel Vambraces
		[9] = { itemID = 22433 }; --Don Mauricio's Band of Domination
		[10] = { itemID = 13964 }; --Witchblade
		[11] = { itemID = 13953 }; --Silent Fang
		[12] = { itemID = 13938 }; --Bonecreeper Stylus
		[16] = { itemID = 16698 }; --Dreadmist Mask
		[17] = { itemID = 16686 }; --Magister's Crown
		[18] = { itemID = 16693 }; --Devout Crown
		[19] = { itemID = 16707 }; --Shadowcraft Cap
		[20] = { itemID = 16720 }; --Wildheart Cowl
		[21] = { itemID = 16677 }; --Beaststalker's Cap
		[22] = { itemID = 16667 }; --Coif of Elements
		[23] = { itemID = 16731 }; --Helm of Valor
		[24] = { itemID = 16727 }; --Lightforge Helm
		[26] = { itemID = 19276 }; --Ace of Portals
		[28] = { itemID = 13501 }; --Recipe: Major Mana Potion
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18697 }; --Coldstone Slippers
		[2] = { itemID = 18698 }; --Tattered Leather Hood
		[3] = { itemID = 18699 }; --Icy Tomb Spaulders
		[4] = { itemID = 18700 }; --Malefic Bracers
		[5] = { itemID = 14536 }; --Bonebrace Hauberk
		[6] = { itemID = 18702 }; --Belt of the Ordained
		[7] = { itemID = 18701 }; --Innervating Band
		[9] = { itemID = 16254 }; --Formula: Enchant Weapon - Lifestealing
		[10] = { itemID = 16255 }; --Formula: Enchant 2H Weapon - Major Spirit
		[11] = { itemID = 15773 }; --Pattern: Wicked Leather Armor
		[12] = { itemID = 15776 }; --Pattern: Runic Leather Armor
		[14] = { itemID = 12753 }; --Skin of Shadow
		[15] = { itemID = 13920 }; --Healthy Dragon Scale
		[16] = { itemID = 16705 }; --Dreadmist Wraps
		[17] = { itemID = 16684 }; --Magister's Gloves
		[18] = { itemID = 16685 }; --Magister's Belt
		[19] = { itemID = 16710 }; --Shadowcraft Bracers
		[20] = { itemID = 16716 }; --Wildheart Belt
		[21] = { itemID = 16722 }; --Lightforge Bracers
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
		[1] = { itemID = 6642 }; --Phantom Armor
		[2] = { itemID = 6641 }; --Haunting Blade
	};
	{
		Name = AL["Rethilgore"];
		[1] = { itemID = 5254 }; --Rugged Spaulders
	};
	{
		Name = AL["Felsteed"];
		[1] = { itemID = 6341 }; --Eerie Stable Lantern
		[2] = { itemID = 932 }; --Fel Steed Saddlebags
	};
	{
		Name = BabbleBoss["Razorclaw the Butcher"];
		[1] = { itemID = 6226 }; --Bloody Apron
		[2] = { itemID = 6633 }; --Butcher's Slicer
		[3] = { itemID = 1292 }; --Butcher's Cleaver
	};
	{
		Name = BabbleBoss["Baron Silverlaine"];
		[1] = { itemID = 6321 }; --Silverlaine's Family Seal
		[2] = { itemID = 6323 }; --Baron's Scepter
	};
	{
		Name = BabbleBoss["Commander Springvale"];
		[1] = { itemID = 3191 }; --Arced War Axe
		[2] = { itemID = 6320 }; --Commander's Crest
	};
	{
		Name = BabbleBoss["Odo the Blindwatcher"];
		[1] = { itemID = 6319 }; --Girdle of the Blindwatcher
		[2] = { itemID = 6318 }; --Odo's Ley Staff
	};
	{
		Name = BabbleBoss["Fenrus the Devourer"];
		[1] = { itemID = 6340 }; --Fenrus' Hide
		[2] = { itemID = 3230 }; --Black Wolf Bracers
	};
	{
		Name = BabbleBoss["Arugal's Voidwalker"];
		[1] = { itemID = 5943 }; --Rift Bracers
	};
	{
		Name = BabbleBoss["Wolf Master Nandos"];
		[1] = { itemID = 6314 }; --Wolfmaster Cape
		[2] = { itemID = 3748 }; --Feline Mantle
	};
	{
		Name = BabbleBoss["Archmage Arugal"];
		[1] = { itemID = 6324 }; --Robes of Arugal
		[2] = { itemID = 6392 }; --Belt of Arugal
		[3] = { itemID = 6220 }; --Meteor Shard
		[4] = { itemID = 24224 }; --Crate of Bloodforged Ingots
		[5] = { itemID = 6895 }; --Jordan's Smithing Hammer
		[6] = { itemID = 6283 }; --The Book of Ur
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 2292 }; --Necrology Robes
		[2] = { itemID = 1974 }; --Mindthrust Bracers
		[3] = { itemID = 1489 }; --Gloomshroud Armor
		[4] = { itemID = 1935 }; --Assassin's Blade
		[5] = { itemID = 1482 }; --Shadowfang
		[6] = { itemID = 2205 }; --Duskbringer
		[7] = { itemID = 2807 }; --Guillotine Axe
		[8] = { itemID = 1318 }; --Night Reaver
		[9] = { itemID = 1483 }; --Face Smasher
		[10] = { itemID = 3194 }; --Black Malice
		[11] = { itemID = 1484 }; --Witching Stave
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
		[1] = { itemID = 13395 }; --Skul's Fingerbone Claws
		[2] = { itemID = 13394 }; --Skul's Cold Embrace
		[3] = { itemID = 13396 }; --Skul's Ghastly Touch
	};
	{
		Name = "Mailbox Keys";
		[1] = { itemID = 13304 }; --Festival Lane Postbox Key
		[2] = { itemID = 13303 }; --Crusaders' Square Postbox Key
		[3] = { itemID = 13307 }; --Fras Siabi's Postbox Key
		[4] = { itemID = 13305 }; --Elders' Square Postbox Key
		[5] = { itemID = 13302 }; --Market Row Postbox Key
		[6] = { itemID = 13306 }; --King's Square Postbox Key
	};
	{
		Name = BabbleBoss["Fras Siabi"];
		[1] = { itemID = 13172 }; --Siabi's Premium Tobacco
		[2] = { itemID = 13171 }; --Smokey's Lighter
	};
	{
		Name = "Atiesh <Hand of Sargeras>";
		[1] = { itemID = 22736 }; --Andonisus, Reaper of Souls
	};
	{
		Name = BabbleBoss["Hearthsinger Forresten"];
		[1] = { itemID = 13378 }; --Songbird Blouse
		[2] = { itemID = 13383 }; --Woollies of the Prancing Minstrel
		[3] = { itemID = 13384 }; --Rainbow Girdle
		[4] = { itemID = 13379 }; --Piccolo of the Flaming Fire
		[16] = { itemID = 16682 }; --Magister's Boots
	};
	{
		Name = BabbleBoss["The Unforgiven"];
		[1] = { itemID = 13409 }; --Tearfall Bracers
		[2] = { itemID = 13404 }; --Mask of the Unforgiven
		[3] = { itemID = 13405 }; --Wailing Nightbane Pauldrons
		[4] = { itemID = 13408 }; --Soul Breaker
		[16] = { itemID = 16717 }; --Wildheart Gloves
	};
	{
		Name = BabbleBoss["Timmy the Cruel"];
		[1] = { itemID = 13403 }; --Grimgore Noose
		[2] = { itemID = 13402 }; --Timmy's Galoshes
		[3] = { itemID = 13400 }; --Vambraces of the Sadist
		[4] = { itemID = 13401 }; --The Cruel Hand of Timmy
		[16] = { itemID = 16724 }; --Lightforge Gauntlets
	};
	{
		Name = AL["Malor's Strongbox"];
		[1] = { icon = "INV_Box_01", name = WHITE..AL["Malor's Strongbox"] };
		[2] = { itemID = 12845 }; --Medallion of Faith
	};
	{
		Name = BabbleBoss["Crimson Hammersmith"] .." (" ..AL["Summon"] ..")";
		[1] = { itemID = 18781 }; --Bottom Half of Advanced Armorsmithing: Volume II
		[2] = { itemID = 12726 }; --Plans: Enchanted Thorium Leggings
		[4] = { itemID = 13351 }; --Crimson Hammersmith's Apron
		[5] = { itemID = 12824 }; --Plans: Enchanted Battlehammer
	};
	{
		Name = "Plans: Serenity";
		[1] = { itemID = 12827 }; --Plans: Serenity
	};
	{
		Name = BabbleBoss["Cannon Master Willey"];
		[1] = { itemID = 22405 }; --Mantle of the Scarlet Crusade
		[2] = { itemID = 22407 }; --Helm of the New Moon
		[3] = { itemID = 18721 }; --Barrage Girdle
		[4] = { itemID = 13381 }; --Master Cannoneer Boots
		[5] = { itemID = 22403 }; --Diana's Pearl Necklace
		[6] = { itemID = 13382 }; --Cannonball Runner
		[7] = { itemID = 22404 }; --Willey's Back Scratcher
		[8] = { itemID = 22406 }; --Redemption
		[9] = { itemID = 13380 }; --Willey's Portable Howitzer
		[10] = { itemID = 13377 }; --Miniature Cannon Balls
		[16] = { itemID = 16708 }; --Shadowcraft Spaulders
		[18] = { itemID = 12839 }; --Plans: Heartseeker
		[19] = { itemID = 12783 }; --Heartseeker
	};
	{
		Name = BabbleBoss["Archivist Galford"];
		[1] = { itemID = 13386 }; --Archivist Cape
		[2] = { itemID = 18716 }; --Ash Covered Boots
		[3] = { itemID = 13387 }; --Foresight Girdle
		[4] = { itemID = 13385 }; --Tome of Knowledge
		[5] = { itemID = 22897 }; --Tome of Conjure Food VII
		[7] = { itemID = 12811 }; --Righteous Orb
		[9] = { icon = "INV_Box_01", name = WHITE..AL["Unfinished Painting"] };
		[10] = { itemID = 14679 }; --Of Love and Family
		[16] = { itemID = 16692 }; --Devout Gloves
	};
	{
		Name = BabbleBoss["Balnazzar"];
		[1] = { itemID = 13353 }; --Book of the Dead
		[2] = { itemID = 14512 }; --Pattern: Truefaith Vestments
		[3] = { itemID = 14154 }; --Truefaith Vestments
		[5] = { itemID = 18720 }; --Shroud of the Nathrezim
		[6] = { itemID = 13369 }; --Fire Striders
		[7] = { itemID = 13358 }; --Wyrmtongue Shoulders
		[8] = { itemID = 13359 }; --Crown of Tyranny
		[9] = { itemID = 18718 }; --Grand Crusader's Helm
		[10] = { itemID = 12103 }; --Star of Mystaria
		[11] = { itemID = 13360 }; --Gift of the Elven Magi
		[12] = { itemID = 13348 }; --Demonshear
		[13] = { itemID = 18717 }; --Hammer of the Grand Crusader
		[16] = { itemID = 16725 }; --Lightforge Boots
		[18] = { itemID = 13520 }; --Recipe: Flask of Distilled Wisdom
		[20] = { itemID = 13250 }; --Head of Balnazzar
	};
	{
		Name = AL["Sothos and Jarien"];
		[1] = { icon = "INV_Misc_Bag_09", name = WHITE..AL["Dungeon Set 2 Summonable"], desc = "=q5="..AL["Sothos and Jarien"] };
		[2] = { itemID = 22301 }; --Ironweave Robe
		[3] = { itemID = 22328 }; --Legplates of Vigilance
		[4] = { itemID = 22327 }; --Amulet of the Redeemed
		[5] = { itemID = 22334 }; --Band of Mending
		[6] = { itemID = 22329 }; --Scepter of Interminable Focus
		[8] = { itemID = 21984 }; --Left Piece of Lord Valthalak's Amulet
		[9] = { itemID = 22046 }; --Right Piece of Lord Valthalak's Amulet
	};
	{
		Name = BabbleBoss["Stonespine"];
		[1] = { itemID = 13397 }; --Stoneskin Gargoyle Cape
		[2] = { itemID = 13954 }; --Verdant Footpads
		[3] = { itemID = 13399 }; --Gargoyle Shredder Talons
	};
	{
		Name = BabbleBoss["Baroness Anastari"];
		[1] = { itemID = 18730 }; --Shadowy Laced Handwraps
		[2] = { itemID = 18728 }; --Anastari Heirloom
		[3] = { itemID = 13534 }; --Banshee Finger
		[4] = { itemID = 18729 }; --Screeching Bow
		[6] = { itemID = 13535 }; --Coldtouch Phantom Wraps
		[7] = { itemID = 13537 }; --Chillhide Bracers
		[8] = { itemID = 13538 }; --Windshrieker Pauldrons
		[9] = { itemID = 13539 }; --Banshee's Touch
		[10] = { itemID = 13514 }; --Wail of the Banshee
		[16] = { itemID = 16704 }; --Dreadmist Sandals
	};
	{
		Name = BabbleBoss["Black Guard Swordsmith"] .." (" ..AL["Summon"] ..")";
		[1] = { itemID = 18783 }; --Bottom Half of Advanced Armorsmithing: Volume III
		[2] = { itemID = 12725 }; --Plans: Enchanted Thorium Helm
		[4] = { itemID = 13350 }; --Insignia of the Black Guard
		[5] = { itemID = 12825 }; --Plans: Blazing Rapier
	};
	{
		Name = "Plans: Corruption";
		[1] = { itemID = 12830 }; --Plans: Corruption
	};
	{
		Name = BabbleBoss["Nerub'enkan"];
		[1] = { itemID = 18740 }; --Thuzadin Sash
		[2] = { itemID = 18739 }; --Chitinous Plate Legguards
		[3] = { itemID = 13529 }; --Husk of Nerub'enkan
		[4] = { itemID = 18738 }; --Carapace Spine Crossbow
		[6] = { itemID = 13530 }; --Fangdrip Runners
		[7] = { itemID = 13531 }; --Crypt Stalker Leggings
		[8] = { itemID = 13532 }; --Darkspinner Claws
		[9] = { itemID = 13533 }; --Acid-etched Pauldrons
		[10] = { itemID = 13508 }; --Eye of Arachnida
		[16] = { itemID = 16675 }; --Beaststalker's Boots
	};
	{
		Name = BabbleBoss["Maleki the Pallid"];
		[1] = { itemID = 18734 }; --Pale Moon Cloak
		[2] = { itemID = 18735 }; --Maleki's Footwraps
		[3] = { itemID = 13524 }; --Skull of Burning Shadows
		[4] = { itemID = 18737 }; --Bone Slicing Hatchet
		[6] = { itemID = 13525 }; --Darkbind Fingers
		[7] = { itemID = 13526 }; --Flamescarred Girdle
		[8] = { itemID = 13528 }; --Twilight Void Bracers
		[9] = { itemID = 13527 }; --Lavawalker Greaves
		[10] = { itemID = 13509 }; --Clutch of Foresight
		[16] = { itemID = 16691 }; --Devout Sandals
		[18] = { itemID = 12833 }; --Plans: Hammer of the Titans
		[19] = { itemID = 12796 }; --Hammer of the Titans
	};
	{
		Name = BabbleBoss["Magistrate Barthilas"];
		[1] = { itemID = 13376 }; --Royal Tribunal Cloak
		[2] = { itemID = 18727 }; --Crimson Felt Hat
		[3] = { itemID = 18726 }; --Magistrate's Cuffs
		[4] = { itemID = 18722 }; --Death Grips
		[5] = { itemID = 23198 }; --Idol of Brutality
		[6] = { itemID = 18725 }; --Peacemaker
		[8] = { itemID = 12382 }; --Key to the City
	};
	{
		Name = BabbleBoss["Ramstein the Gorger"];
		[1] = { itemID = 13374 }; --Soulstealer Mantle
		[2] = { itemID = 18723 }; --Animated Chain Necklace
		[3] = { itemID = 13373 }; --Band of Flesh
		[4] = { itemID = 13515 }; --Ramstein's Lightning Bolts
		[5] = { itemID = 13372 }; --Slavedriver's Cane
		[6] = { itemID = 13375 }; --Crest of Retribution
		[16] = { itemID = 16737 }; --Gauntlets of Valor
	};
	{
		Name = BabbleBoss["Baron Rivendare"];
		[1] = { itemID = 13505 }; --Runeblade of Baron Rivendare
		[2] = { itemID = 13335 }; --Deathcharger's Reins
		[4] = { itemID = 13340 }; --Cape of the Black Baron
		[5] = { itemID = 22412 }; --Thuzadin Mantle
		[6] = { itemID = 13346 }; --Robes of the Exalted
		[7] = { itemID = 22409 }; --Tunic of the Crescent Moon
		[8] = { itemID = 13344 }; --Dracorian Gauntlets
		[9] = { itemID = 22410 }; --Gauntlets of Deftness
		[10] = { itemID = 22411 }; --Helm of the Executioner
		[11] = { itemID = 13345 }; --Seal of Rivendare
		[12] = { itemID = 13368 }; --Bonescraper
		[13] = { itemID = 13361 }; --Skullforge Reaver
		[14] = { itemID = 13349 }; --Scepter of the Unholy
		[15] = { itemID = 22408 }; --Ritssyn's Wand of Bad Mojo
		[16] = { itemID = 16687 }; --Magister's Leggings
		[17] = { itemID = 16699 }; --Dreadmist Leggings
		[18] = { itemID = 16694 }; --Devout Skirt
		[19] = { itemID = 16709 }; --Shadowcraft Pants
		[20] = { itemID = 16719 }; --Wildheart Kilt
		[21] = { itemID = 16668 }; --Kilt of Elements
		[22] = { itemID = 16678 }; --Beaststalker's Pants
		[23] = { itemID = 16732 }; --Legplates of Valor
		[24] = { itemID = 16728 }; --Lightforge Legplates
		[26] = { itemID = 13251 }; --Head of Baron Rivendare
		[27] = { itemID = 13246 }; --Argent Avenger
		[28] = { itemID = 13249 }; --Argent Crusader
		[29] = { itemID = 13243 }; --Argent Defender
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 18743 }; --Gracious Cape
		[2] = { itemID = 17061 }; --Juno's Shadow
		[3] = { itemID = 18745 }; --Sacred Cloth Leggings
		[4] = { itemID = 18744 }; --Plaguebat Fur Gloves
		[5] = { itemID = 18736 }; --Plaguehound Leggings
		[6] = { itemID = 18742 }; --Stratholme Militia Shoulderguard
		[7] = { itemID = 18741 }; --Morlune's Bracer
		[9] = { itemID = 16249 }; --Formula: Enchant 2H Weapon - Major Intellect
		[10] = { itemID = 16248 }; --Formula: Enchant Weapon - Unholy
		[11] = { itemID = 18658 }; --Schematic: Ultra-Flash Shadow Reflector
		[12] = { itemID = 16052 }; --Schematic: Voice Amplification Modulator
		[13] = { itemID = 15777 }; --Pattern: Runic Leather Shoulders
		[14] = { itemID = 15768 }; --Pattern: Wicked Leather Belt
		[15] = { itemID = 14495 }; --Pattern: Ghostweave Pants
		[16] = { itemID = 16697 }; --Devout Bracers
		[17] = { itemID = 16702 }; --Dreadmist Belt
		[18] = { itemID = 16685 }; --Magister's Belt
		[19] = { itemID = 16714 }; --Wildheart Bracers
		[20] = { itemID = 16681 }; --Beaststalker's Bindings
		[21] = { itemID = 16671 }; --Bindings of Elements
		[22] = { itemID = 16736 }; --Belt of Valor
		[23] = { itemID = 16723 }; --Lightforge Belt
		[25] = { itemID = 12811 }; --Righteous Orb
		[26] = { itemID = 12735 }; --Frayed Abomination Stitching
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
		[1] = { itemID = 3019 }; --Noble's Robe
		[2] = { itemID = 4660 }; --Walking Boots
	};
	{
		Name = BabbleBoss["Brainwashed Noble"];
		[1] = { itemID = 5967 }; --Girdle of Nobility
		[2] = { itemID = 3902 }; --Staff of Nobles
	};
	{
		Name = BabbleBoss["Foreman Thistlenettle"];
		[1] = { itemID = 1875 }; --Thistlenettle's Badge
	};
	{
		Name = BabbleBoss["Rhahk'Zor"];
		[1] = { itemID = 872 }; --Rockslicer
		[2] = { itemID = 5187 }; --Rhahk'Zor's Hammer
	};
	{
		Name = BabbleBoss["Miner Johnson"];
		[1] = { itemID = 5444 }; --Miner's Cape
		[2] = { itemID = 5443 }; --Gold-plated Buckler
	};
	{
		Name = BabbleBoss["Sneed's Shredder"];
		[1] = { itemID = 2169 }; --Buzzer Blade
		[2] = { itemID = 1937 }; --Buzz Saw
		[3] = { itemID = 7365 }; --Gnoam Sprecklesprocket
	};
	{
		Name = BabbleBoss["Sneed"];
		[1] = { itemID = 5195 }; --Gold-flecked Gloves
		[2] = { itemID = 5194 }; --Taskmaster Axe
		[3] = { itemID = 5397 }; --Defias Gunpowder
	};
	{
		Name = BabbleBoss["Gilnid"];
		[1] = { itemID = 5199 }; --Smelting Pants
		[2] = { itemID = 1156 }; --Lavishly Jeweled Ring
		[3] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Captain Greenskin"] };
		[4] = { itemID = 10403 }; --Blackened Defias Belt
		[5] = { itemID = 5200 }; --Impaling Harpoon
		[6] = { itemID = 5201 }; --Emberstone Staff
	};
	{
		Name = BabbleBoss["Mr. Smite"];
		[1] = { itemID = 5192 }; --Thief's Blade
		[2] = { itemID = 5196 }; --Smite's Reaver
		[3] = { itemID = 7230 }; --Smite's Mighty Hammer
	};
	{
		Name = BabbleBoss["Cookie"];
		[1] = { itemID = 5197 }; --Cookie's Tenderizer
		[2] = { itemID = 5198 }; --Cookie's Stirring Rod
		[3] = { itemID = 8490 }; --Cat Carrier (Siamese)
	};
	{
		Name = BabbleBoss["Edwin VanCleef"];
		[1] = { itemID = 5193 }; --Cape of the Brotherhood
		[2] = { itemID = 5202 }; --Corsair's Overshirt
		[3] = { itemID = 10399 }; --Blackened Defias Armor
		[4] = { itemID = 5191 }; --Cruel Barb
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
		[1] = { itemID = 3630 }; --Head of Targorr
		[3] = { itemID = 56971, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Kam Deepfury"];
		[1] = { itemID = 2280 }; --Kam's Walking Stick
		[2] = { itemID = 3640 }; --Head of Deepfury
		[4] = { itemID = 56970, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Bazil Thredd"];
		[1] = { itemID = 2926 }; --Head of Bazil Thredd
		[3] = { itemID = 56972, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Hamhock"];
		[1] = { itemID = 2926 }; --Head of Bazil Thredd
		[3] = { itemID = 56973, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Dextren Ward"];
		[1] = { itemID = 3628 }; --Hand of Dextren Ward
		[3] = { itemID = 56969, droprate = "1%" }; --Pet Sigil
	};
	{
		Name = BabbleBoss["Bruegal Ironknuckle"];
		[1] = { itemID = 3228 }; --Jimmied Handcuffs
		[2] = { itemID = 2942 }; --Iron Knuckles
		[3] = { itemID = 2941 }; --Prison Shank
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
		[1] = { itemID = 10802 }; --Wingveil Cloak
		[2] = { itemID = 10801 }; --Slitherscale Boots
	};
	{
		Name = "Troll Minibosses";
		[1] = { itemID = 10787 }; --Atal'ai Gloves
		[2] = { itemID = 10783 }; --Atal'ai Spaulders
		[3] = { itemID = 10785 }; --Atal'ai Leggings
		[4] = { itemID = 10784 }; --Atal'ai Breastplate
		[5] = { itemID = 10786 }; --Atal'ai Boots
		[6] = { itemID = 10788 }; --Atal'ai Girdle
		[8] = { itemID = 20606 }; --Amber Voodoo Feather
		[9] = { itemID = 20607 }; --Blue Voodoo Feather
		[10] = { itemID = 20608 }; --Green Voodoo Feather
	};
	{
		Name = BabbleBoss["Atal'alarion"];
		[1] = { itemID = 10800 }; --Darkwater Bracers
		[2] = { itemID = 10798 }; --Atal'alarion's Tusk Ring
		[3] = { itemID = 10799 }; --Headspike
	};
	{
		Name = BabbleBoss["Dreamscythe"];
		[1] = { itemID = 12465 }; --Nightfall Drape
		[2] = { itemID = 12466 }; --Dawnspire Cord
		[3] = { itemID = 12464 }; --Bloodfire Talons
		[4] = { itemID = 10795 }; --Drakeclaw Band
		[5] = { itemID = 10796 }; --Drakestone
		[6] = { itemID = 10797 }; --Firebreather
		[7] = { itemID = 12463 }; --Drakefang Butcher
		[8] = { itemID = 12243 }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Weaver"];
		[1] = { itemID = 12465 }; --Nightfall Drape
		[2] = { itemID = 12466 }; --Dawnspire Cord
		[3] = { itemID = 12464 }; --Bloodfire Talons
		[4] = { itemID = 10795 }; --Drakeclaw Band
		[5] = { itemID = 10796 }; --Drakestone
		[6] = { itemID = 10797 }; --Firebreather
		[7] = { itemID = 12463 }; --Drakefang Butcher
		[8] = { itemID = 12243 }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Avatar of Hakkar"];
		[1] = { itemID = 12462 }; --Embrace of the Wind Serpent
		[3] = { itemID = 10843 }; --Featherskin Cape
		[4] = { itemID = 10842 }; --Windscale Sarong
		[5] = { itemID = 10846 }; --Bloodshot Greaves
		[6] = { itemID = 10845 }; --Warrior's Embrace
		[7] = { itemID = 10838 }; --Might of Hakkar
		[8] = { itemID = 10844 }; --Spire of Hakkar
		[10] = { itemID = 10663 }; --Essence of Hakkar
	};
	{
		Name = BabbleBoss["Jammal'an the Prophet"];
		[1] = { itemID = 10806 }; --Vestments of the Atal'ai Prophet
		[2] = { itemID = 10808 }; --Gloves of the Atal'ai Prophet
		[3] = { itemID = 10807 }; --Kilt of the Atal'ai Prophet
		[5] = { itemID = 6212 }; --Head of Jammal'an
	};
	{
		Name = BabbleBoss["Ogom the Wretched"];
		[1] = { itemID = 10805 }; --Eater of the Dead
		[2] = { itemID = 10804 }; --Fist of the Damned
		[3] = { itemID = 10803 }; --Blade of the Wretched
	};
	{
		Name = BabbleBoss["Morphaz"];
		[1] = { itemID = 12465 }; --Nightfall Drape
		[2] = { itemID = 12466 }; --Dawnspire Cord
		[3] = { itemID = 12464 }; --Bloodfire Talons
		[4] = { itemID = 10795 }; --Drakeclaw Band
		[5] = { itemID = 10796 }; --Drakestone
		[6] = { itemID = 10797 }; --Firebreather
		[7] = { itemID = 12463 }; --Drakefang Butcher
		[8] = { itemID = 12243 }; --Smoldering Claw
		[10] = { itemID = 20022 }; --Azure Key
		[11] = { itemID = 20085 }; --Arcane Shard
		[12] = { itemID = 20025 }; --Blood of Morphaz
		[13] = { itemID = 20019 }; --Tooth of Morphaz
	};
	{
		Name = BabbleBoss["Hazzas"];
		[1] = { itemID = 12465 }; --Nightfall Drape
		[2] = { itemID = 12466 }; --Dawnspire Cord
		[3] = { itemID = 12464 }; --Bloodfire Talons
		[4] = { itemID = 10795 }; --Drakeclaw Band
		[5] = { itemID = 10796 }; --Drakestone
		[6] = { itemID = 10797 }; --Firebreather
		[7] = { itemID = 12463 }; --Drakefang Butcher
		[8] = { itemID = 12243 }; --Smoldering Claw
	};
	{
		Name = BabbleBoss["Shade of Eranikus"];
		[1] = { itemID = 10847 }; --Dragon's Call
		[3] = { itemID = 10833 }; --Horns of Eranikus
		[4] = { itemID = 10829 }; --Dragon's Eye
		[5] = { itemID = 10828 }; --Dire Nail
		[6] = { itemID = 10837 }; --Tooth of Eranikus
		[7] = { itemID = 10835 }; --Crest of Supremacy
		[8] = { itemID = 10836 }; --Rod of Corrosion
		[10] = { itemID = 10454 }; --Essence of Eranikus
		[11] = { itemID = 10455 }; --Chained Essence of Eranikus
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 10630 }; --Soulcatcher Halo
		[2] = { itemID = 10629 }; --Mistwalker Boots
		[3] = { itemID = 10632 }; --Slimescale Bracers
		[4] = { itemID = 10631 }; --Murkwater Gauntlets
		[5] = { itemID = 10633 }; --Silvershell Leggings
		[6] = { itemID = 10634 }; --Mindseye Circle
		[8] = { itemID = 15733 }; --Pattern: Green Dragonscale Leggings
		[9] = { itemID = 16216 }; --Formula: Enchant Cloak - Greater Resistance
		[11] = { itemID = 11318 }; --Atal'ai Haze
		[12] = { itemID = 6181 }; --Fetish of Hakkar
		[16] = { itemID = 10623 }; --Winter's Bite
		[17] = { itemID = 10625 }; --Stealthblade
		[18] = { itemID = 10628 }; --Deathblow
		[19] = { itemID = 10626 }; --Ragehammer
		[20] = { itemID = 10627 }; --Bludgeon of the Grinning Dog
		[21] = { itemID = 10624 }; --Stinging Bow
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
		[1] = { itemID = 4635 }; --Hammertoe's Amulet
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
		[1] = { itemID = 9375 }; --Expert Goldminer's Helmet
		[2] = { itemID = 9378 }; --Shovelphlange's Mining Axe
		[3] = { itemID = 9382 }; --Tromping Miner's Boots
	};
	{
		Name = BabbleBoss["Baelog"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Baelog"] };
		[2] = { itemID = 9401 }; --Nordic Longshank
		[3] = { itemID = 9400 }; --Baelog's Shortbow
		[4] = { itemID = 9399 }; --Precision Arrow
		[6] = { icon = "INV_Box_01", name = WHITE..AL["Eric 'The Swift'"] };
		[7] = { itemID = 9394 }; --Horned Viking Helmet
		[8] = { itemID = 9398 }; --Worn Running Boots
		[9] = { itemID = 2459 }; --Swiftness Potion
		[11] = { icon = "INV_Box_01", name = WHITE..AL["Olaf"] };
		[12] = { itemID = 9404 }; --Olaf's All Purpose Shield
		[13] = { itemID = 9403 }; --Battered Viking Shield
		[14] = { itemID = 1177 }; --Oil of Olaf
		[16] = { icon = "INV_Box_01", name = WHITE..AL["Baelog's Chest"] };
		[17] = { itemID = 7740 }; --Gni'kiv Medallion
		[19] = { icon = "INV_Box_01", name = WHITE..AL["Conspicuous Urn"] };
		[20] = { itemID = 7671 }; --Shattered Necklace Topaz
	};
	{
		Name = BabbleBoss["Revelosh"];
		[1] = { itemID = 9390 }; --Revelosh's Gloves
		[2] = { itemID = 9389 }; --Revelosh's Spaulders
		[3] = { itemID = 9388 }; --Revelosh's Armguards
		[4] = { itemID = 9387 }; --Revelosh's Boots
		[6] = { itemID = 7741 }; --The Shaft of Tsol
	};
	{
		Name = BabbleBoss["Ironaya"];
		[1] = { itemID = 9407 }; --Stoneweaver Leggings
		[2] = { itemID = 9409 }; --Ironaya's Bracers
		[3] = { itemID = 9408 }; --Ironshod Bludgeon
	};
	{
		Name = BabbleBoss["Obsidian Sentinel"];
		[1] = { itemID = 8053 }; --Obsidian Power Source
	};
	{
		Name = BabbleBoss["Ancient Stone Keeper"];
		[1] = { itemID = 9411 }; --Rockshard Pauldrons
		[2] = { itemID = 9410 }; --Cragfists
	};
	{
		Name = BabbleBoss["Galgann Firehammer"];
		[1] = { itemID = 11311 }; --Emberscale Cape
		[2] = { itemID = 11310 }; --Flameseer Mantle
		[3] = { itemID = 9419 }; --Galgann's Firehammer
		[4] = { itemID = 9412 }; --Galgann's Fireblaster
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
		[1] = { itemID = 9415 }; --Grimlok's Tribal Vestments
		[2] = { itemID = 9414 }; --Oilskin Leggings
		[3] = { itemID = 9416 }; --Grimlok's Charge
		[5] = { itemID = 7670 }; --Shattered Necklace Sapphire
	};
	{
		Name = BabbleBoss["Archaedas"];
		[1] = { itemID = 11118 }; --Archaedic Stone
		[2] = { itemID = 9418 }; --Stoneslayer
		[3] = { itemID = 9413 }; --The Rockpounder
		[5] = { itemID = 7672 }; --Shattered Necklace Power Source
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9397 }; --Energy Cloak
		[2] = { itemID = 9431 }; --Papal Fez
		[3] = { itemID = 9429 }; --Miner's Hat of the Deep
		[4] = { itemID = 9420 }; --Adventurer's Pith Helmet
		[5] = { itemID = 9406 }; --Spirewind Fetter
		[6] = { itemID = 9428 }; --Unearthed Bands
		[7] = { itemID = 9430 }; --Spaulders of a Lost Age
		[8] = { itemID = 9396 }; --Legguards of the Vault
		[9] = { itemID = 9432 }; --Skullplate Bracers
		[10] = { itemID = 9393 }; --Beacon of Hope
		[12] = { itemID = 7666 }; --Shattered Necklace
		[13] = { itemID = 7673 }; --Talvash's Enhancing Necklace
		[16] = { itemID = 9384 }; --Stonevault Shiv
		[17] = { itemID = 9392 }; --Annealed Blade
		[18] = { itemID = 9424 }; --Ginn-su Sword
		[19] = { itemID = 9465 }; --Digmaster 5000
		[20] = { itemID = 9383 }; --Obsidian Cleaver
		[21] = { itemID = 9425 }; --Pendulum of Doom
		[22] = { itemID = 9386 }; --Excavator's Brand
		[23] = { itemID = 9427 }; --Stonevault Bonebreaker
		[24] = { itemID = 9423 }; --The Jackhammer
		[25] = { itemID = 9391 }; --The Shoveler
		[26] = { itemID = 9381 }; --Earthen Rod
		[27] = { itemID = 9426 }; --Monolithic Bow
		[28] = { itemID = 9422 }; --Shadowforge Bushmaster
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
		[1] = { itemID = 5334 }; --99-Year-Old Port
	};
	{
		Name = BabbleBoss["Trigore the Lasher"];
		[1] = { itemID = 5425 }; --Runescale Girdle
		[2] = { itemID = 5426 }; --Serpent's Kiss
	};
	{
		Name = BabbleBoss["Boahn"];
		[1] = { itemID = 5423 }; --Boahn's Fang
		[2] = { itemID = 5422 }; --Brambleweed Leggings
	};
	{
		Name = BabbleBoss["Lord Cobrahn"];
		[1] = { itemID = 6465 }; --Robe of the Moccasin
		[2] = { itemID = 10410 }; --Leggings of the Fang
		[3] = { itemID = 6460 }; --Cobrahn's Grasp
	};
	{
		Name = BabbleBoss["Lady Anacondra"];
		[1] = { itemID = 5404 }; --Serpent's Shoulders
		[2] = { itemID = 10412 }; --Belt of the Fang
		[3] = { itemID = 6446 }; --Snakeskin Bag
	};
	{
		Name = BabbleBoss["Kresh"];
		[1] = { itemID = 13245 }; --Kresh's Back
		[2] = { itemID = 6447 }; --Worn Turtle Shell Shield
	};
	{
		Name = BabbleBoss["Lord Pythas"];
		[1] = { itemID = 6473 }; --Armor of the Fang
		[2] = { itemID = 6472 }; --Stinging Viper
	};
	{
		Name = BabbleBoss["Skum"];
		[1] = { itemID = 6449 }; --Glowing Lizardscale Cloak
		[2] = { itemID = 6448 }; --Tail Spike
	};
	{
		Name = BabbleBoss["Lord Serpentis"];
		[1] = { itemID = 5970 }; --Serpent Gloves
		[2] = { itemID = 10411 }; --Footpads of the Fang
		[3] = { itemID = 6459 }; --Savage Trodders
		[4] = { itemID = 6469 }; --Venomstrike
	};
	{
		Name = BabbleBoss["Verdan the Everliving"];
		[1] = { itemID = 6629 }; --Sporid Cape
		[2] = { itemID = 6631 }; --Living Root
		[3] = { itemID = 6630 }; --Seedcloud Buckler
	};
	{
		Name = BabbleBoss["Mutanus the Devourer"];
		[1] = { itemID = 6461 }; --Slime-encrusted Pads
		[2] = { itemID = 6627 }; --Mutant Scale Breastplate
		[3] = { itemID = 6463 }; --Deep Fathom Ring
		[4] = { itemID = 10441 }; --Glowing Shard
	};
	{
		Name = BabbleBoss["Deviate Faerie Dragon"];
		[1] = { itemID = 6632 }; --Feyscale Cloak
		[2] = { itemID = 5243 }; --Firebelcher
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
		[1] = { itemID = 9640 }; --Vice Grips
		[2] = { itemID = 9641 }; --Lifeblood Amulet
		[3] = { itemID = 9639 }; --The Hand of Antu'sul
		[5] = { itemID = 9379 }; --Sang'thraze the Deflector
		[6] = { itemID = 9372 }; --Sul'thraze the Lasher
	};
	{
		Name = BabbleBoss["Theka the Martyr"];
		[1] = { itemID = 10660 }; --First Mosh'aru Tablet
	};
	{
		Name = BabbleBoss["Witch Doctor Zum'rah"];
		[1] = { itemID = 18083 }; --Jumanza Grips
		[2] = { itemID = 18082 }; --Zum'rah's Vexing Cane
	};
	{
		Name = BabbleBoss["Nekrum Gutchewer"];
		[1] = { itemID = 9471 }; --Nekrum's Medallion
	};
	{
		Name = BabbleBoss["Shadowpriest Sezz'ziz"];
		[1] = { itemID = 9470 }; --Bad Mojo Mask
		[2] = { itemID = 9473 }; --Jinxed Hoodoo Skin
		[3] = { itemID = 9474 }; --Jinxed Hoodoo Kilt
		[4] = { itemID = 9475 }; --Diabolic Skiver
	};
	{
		Name = BabbleBoss["Dustwraith"];
		[1] = { itemID = 12471 }; --Desertwalker Cane
	};
	{
		Name = BabbleBoss["Sergeant Bly"];
		[1] = { itemID = 8444 }; --Executioner's Key
	};
	{
		Name = BabbleBoss["Sandfury Executioner"];
		[1] = { itemID = 8548 }; --Divino-matic Rod
	};

	{
		Name = BabbleBoss["Hydromancer Velratha"];
		[1] = { itemID = 9234 }; --Tiara of the Deep
		[2] = { itemID = 10661 }; --Second Mosh'aru Tablet
	};
	{
		Name = BabbleBoss["Gahz'rilla"];
		[1] = { itemID = 9469 }; --Gahz'rilla Scale Armor
		[2] = { itemID = 9467 }; --Gahz'rilla Fang
		[4] = { itemID = 8707 }; --Gahz'rilla's Electrified Scale
	};
	{
		Name = BabbleBoss["Chief Ukorz Sandscalp"];
		[1] = { itemID = 9479 }; --Embrace of the Lycan
		[2] = { itemID = 9476 }; --Big Bad Pauldrons
		[3] = { itemID = 9478 }; --Ripsaw
		[4] = { itemID = 9477 }; --The Chief's Enforcer
		[6] = { itemID = 11086 }; --Jang'thraze the Protector
		[7] = { itemID = 9372 }; --Sul'thraze the Lasher
	};
	{
		Name = BabbleBoss["Zerillis"];
		[1] = { itemID = 12470 }; --Sandstalker Ankleguards
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 9512 }; --Blackmetal Cape
		[2] = { itemID = 9484 }; --Spellshock Leggings
		[3] = { itemID = 862 }; --Runed Ring
		[4] = { itemID = 6440 }; --Brainlash
		[6] = { itemID = 9243 }; --Shriveled Heart
		[8] = { itemID = 9523 }; --Troll Temper
		[9] = { itemID = 9238 }; --Uncracked Scarab Shell
		[16] = { itemID = 5616 }; --Gutwrencher
		[17] = { itemID = 9511 }; --Bloodletter Scalpel
		[18] = { itemID = 9481 }; --The Minotaur
		[19] = { itemID = 9480 }; --Eyegouger
		[20] = { itemID = 9482 }; --Witch Doctor's Cane
		[21] = { itemID = 9483 }; --Flaming Incinerator
		[22] = { itemID = 2040 }; --Troll Protector
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
		[1] = { itemID = 19918 }; --Jeklik's Crusher
		[2] = { itemID = 19928 }; --Animist's Spaulders
		[3] = { itemID = 20262 }; --Seafury Boots
		[4] = { itemID = 20265 }; --Peacekeeper Boots
		[5] = { itemID = 19923 }; --Jeklik's Opaline Talisman
		[6] = { itemID = 19920 }; --Primalist's Band
		[7] = { itemID = 19915 }; --Zulian Defender
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943 }; --Massive Mojo
		[19] = { itemID = 19881 }; --Channeler's Head
	};
	{
		Name = BabbleBoss["High Priest Venoxis"];
		[1] = { itemID = 19904 }; --Runed Bloodstained Hauberk
		[2] = { itemID = 19903 }; --Fang of Venoxis
		[4] = { itemID = 19907 }; --Zulian Tigerhide Cloak
		[5] = { itemID = 19906 }; --Blooddrenched Footpads
		[6] = { itemID = 19905 }; --Zanzil's Band
		[7] = { itemID = 19900 }; --Zulian Stone Axe
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943 }; --Massive Mojo
		[19] = { itemID = 19881 }; --Channeler's Head
		[21] = { itemID = 22216 }; --Venoxis's Venom Sac
	};
	{
		Name = BabbleBoss["High Priestess Mar'li"];
		[1] = { itemID = 20032 }; --Flowing Ritual Robes
		[2] = { itemID = 19927 }; --Mar'li's Touch
		[3] = { itemID = 19919 }; --Bloodstained Greaves
		[4] = { itemID = 19871 }; --Talisman of Protection
		[5] = { itemID = 19925 }; --Band of Jin
		[6] = { itemID = 19930 }; --Mar'li's Eye
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
	Module = "AtlasLoot_OriginalWoW";
		[18] = { itemID = 19943 }; --Massive Mojo
		[19] = { itemID = 19881 }; --Channeler's Head
	};
	{
		Name = BabbleBoss["Bloodlord Mandokir"];
		[1] = { itemID = 19867 }; --Bloodlord's Defender
		[2] = { itemID = 19866 }; --Warblade of the Hakkari
		[3] = { itemID = 19874 }; --Halberd of Smiting
		[4] = { itemID = 20038 }; --Mandokir's Sting
		[5] = { itemID = 19872 }; --Swift Razzashi Raptor
		[7] = { itemID = 19870 }; --Hakkari Loa Cloak
		[8] = { itemID = 19895 }; --Bloodtinged Kilt
		[9] = { itemID = 19869 }; --Blooddrenched Grips
		[10] = { itemID = 19877 }; --Animist's Leggings
		[11] = { itemID = 19878 }; --Bloodsoaked Pauldrons
		[12] = { itemID = 19873 }; --Overlord's Crimson Band
		[13] = { itemID = 19893 }; --Zanzil's Seal
		[14] = { itemID = 19863 }; --Primalist's Seal
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 22637 }; --Primal Hakkari Idol
		[19] = { itemID = 19943 }; --Massive Mojo
	};
	{
		Name = BabbleZone["Zul'Gurub"];
		[1] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Gri'lek"] };
		[2] = { itemID = 19961 }; --Gri'lek's Grinder
		[3] = { itemID = 19962 }; --Gri'lek's Carver
		[4] = { itemID = 19939 }; --Gri'lek's Blood
		[6] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Hazza'rah"] };
		[7] = { itemID = 19968 }; --Fiery Retributer
		[8] = { itemID = 19967 }; --Thoughtblighter
		[9] = { itemID = 19942 }; --Hazza'rah's Dream Thread
		[16] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Renataki"] };
		[17] = { itemID = 19964 }; --Renataki's Soul Conduit
		[18] = { itemID = 19963 }; --Pitchfork of Madness
		[19] = { itemID = 19940 }; --Renataki's Tooth
		[21] = { icon = "INV_Box_01", name = WHITE..BabbleBoss["Wushoolay"] };
		[22] = { itemID = 19965 }; --Wushoolay's Poker
		[23] = { itemID = 19993 }; --Hoodoo Hunting Bow
		[24] = { itemID = 19941 }; --Wushoolay's Mane
	};
	{
		Name = BabbleBoss["Gahz'ranka"];
		[1] = { itemID = 19945 }; --Foror's Eyepatch
		[2] = { itemID = 19944 }; --Nat Pagle's Fish Terminator
		[4] = { itemID = 19947 }; --Nat Pagle's Broken Reel
		[5] = { itemID = 19946 }; --Tigule's Harpoon
		[7] = { itemID = 22739 }; --Tome of Polymorph: Turtle
	};
	{
		Name = BabbleBoss["High Priest Thekal"];
		[1] = { itemID = 19897 }; --Betrayer's Boots
		[2] = { itemID = 19896 }; --Thekal's Grasp
		[3] = { itemID = 19902 }; --Swift Zulian Tiger
		[5] = { itemID = 19898 }; --Seal of Jin
		[6] = { itemID = 19899 }; --Ritualistic Legguards
		[7] = { itemID = 20260 }; --Seafury Leggings
		[8] = { itemID = 20266 }; --Peacekeeper Leggings
		[9] = { itemID = 19901 }; --Zulian Slicer
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 19943 }; --Massive Mojo
		[19] = { itemID = 19881 }; --Channeler's Head
	};
	{
		Name = BabbleBoss["High Priestess Arlokk"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 19943 }; --Massive Mojo
		[19] = { itemID = 19881 }; --Channeler's Head
		[1] = { itemID = 19910 }; --Arlokk's Grasp
		[2] = { itemID = 19909 }; --Will of Arlokk
		[4] = { itemID = 19913 }; --Bloodsoaked Greaves
		[5] = { itemID = 19912 }; --Overlord's Onyx Band
		[6] = { itemID = 19922 }; --Arlokk's Hoodoo Stick
		[7] = { itemID = 19914 }; --Panther Hide Sack
	};
	{
		Name = BabbleBoss["Jin'do the Hexxer"];
		[16] = { icon = "INV_Banner_01", name = "=q4=ZG Sets", lootTable = {{"ZGSets", "AtlasLoot_Data", 1},"Source"} };
		[18] = { itemID = 22637 }; --Primal Hakkari Idol
		[19] = { itemID = 19943 }; --Massive Mojo
		[1] = { itemID = 19885 }; --Jin'do's Evil Eye
		[2] = { itemID = 19891 }; --Jin'do's Bag of Whammies
		[3] = { itemID = 19890 }; --Jin'do's Hexxer
		[4] = { itemID = 19884 }; --Jin'do's Judgement
		[6] = { itemID = 19888 }; --Overlord's Embrace
		[7] = { itemID = 19886 }; --The Hexxer's Cover
		[8] = { itemID = 19929 }; --Bloodtinged Gloves
		[9] = { itemID = 19889 }; --Blooddrenched Leggings
		[10] = { itemID = 19892 }; --Animist's Boots
		[11] = { itemID = 19875 }; --Bloodstained Coif
		[12] = { itemID = 19887 }; --Bloodstained Legplates
		[13] = { itemID = 19894 }; --Bloodsoaked Gauntlets
	};
	{
		Name = BabbleBoss["Hakkar"];
		[1] = { itemID = 19857 }; --Cloak of Consumption
		[2] = { itemID = 20257 }; --Seafury Gauntlets
		[3] = { itemID = 20264 }; --Peacekeeper Gauntlets
		[4] = { itemID = 19855 }; --Bloodsoaked Legplates
		[5] = { itemID = 19876 }; --Soul Corrupter's Necklace
		[6] = { itemID = 19856 }; --The Eye of Hakkar
		[8] = { itemID = 19859 }; --Fang of the Faceless
		[9] = { itemID = 19864 }; --Bloodcaller
		[10] = { itemID = 19865 }; --Warblade of the Hakkari
		[11] = { itemID = 19854 }; --Zin'rokh, Destroyer of Worlds
		[12] = { itemID = 19852 }; --Ancient Hakkari Manslayer
		[13] = { itemID = 19862 }; --Aegis of the Blood God
		[14] = { itemID = 19853 }; --Gurubashi Dwarf Destroyer
		[15] = { itemID = 19861 }; --Touch of Chaos
		[16] = { itemID = 19802 }; --Heart of Hakkar
		[17] = { itemID = 19950 }; --Zandalarian Hero Charm
		[18] = { itemID = 19949 }; --Zandalarian Hero Medallion
		[19] = { itemID = 19948 }; --Zandalarian Hero Badge
		[21] = { itemID = 19943 }; --Massive Mojo
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
		[7] = { itemID = 19727 }; --Blood Scythe
		[8] = { itemID = 48126 }; --Razzashi Hatchling
		[10] = { itemID = 19726 }; --Bloodvine
		[11] = { itemID = 19774 }; --Souldarite
		[12] = { itemID = 19767 }; --Primal Bat Leather
		[13] = { itemID = 19768 }; --Primal Tiger Leather
		[16] = { itemID = 19821 }; --Punctured Voodoo Doll
		[17] = { itemID = 19816 }; --Punctured Voodoo Doll
		[18] = { itemID = 19818 }; --Punctured Voodoo Doll
		[19] = { itemID = 19815 }; --Punctured Voodoo Doll
		[20] = { itemID = 19820 }; --Punctured Voodoo Doll
		[21] = { itemID = 19814 }; --Punctured Voodoo Doll
		[22] = { itemID = 19817 }; --Punctured Voodoo Doll
		[23] = { itemID = 19819 }; --Punctured Voodoo Doll
		[24] = { itemID = 19813 }; --Punctured Voodoo Doll
	};
	{
		Name = "Coin's and Bijou's";
		[1] = { itemID = 19708 }; --Blue Hakkari Bijou
		[2] = { itemID = 19713 }; --Bronze Hakkari Bijou
		[3] = { itemID = 19715 }; --Gold Hakkari Bijou
		[4] = { itemID = 19711 }; --Green Hakkari Bijou
		[5] = { itemID = 19710 }; --Orange Hakkari Bijou
		[6] = { itemID = 19712 }; --Purple Hakkari Bijou
		[7] = { itemID = 19707 }; --Red Hakkari Bijou
		[8] = { itemID = 19714 }; --Silver Hakkari Bijou
		[9] = { itemID = 19709 }; --Yellow Hakkari Bijou
		[16] = { itemID = 19706 }; --Bloodscalp Coin
		[17] = { itemID = 19701 }; --Gurubashi Coin
		[18] = { itemID = 19700 }; --Hakkari Coin
		[19] = { itemID = 19699 }; --Razzashi Coin
		[20] = { itemID = 19704 }; --Sandfury Coin
		[21] = { itemID = 19705 }; --Skullsplitter Coin
		[22] = { itemID = 19702 }; --Vilebranch Coin
		[23] = { itemID = 19703 }; --Witherbark Coin
		[24] = { itemID = 19698 }; --Zulian Coin
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
		[1] = { itemID = 22960 }; --Cloak of Suturing
		[2] = { itemID = 22815 }; --Severance
		[3] = { itemID = 22820 }; --Wand of Fates
		[4] = { itemID = 22818 }; --The Plague Bearer
		[5] = { itemID = 22961 }; --Band of Reanimation
		[16] = { itemID = 22354, lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[1] = { itemID = 22968 }; --Glacial Mantle
		[2] = { itemID = 22967 }; --Icy Scale Spaulders
		[3] = { itemID = 22803 }; --Midnight Haze
		[4] = { itemID = 22988 }; --The End of Dreams
		[5] = { itemID = 22810 }; --Toxin Injector
		[16] = { itemID = 22354, lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 22983 }; --Rime Covered Mantle
		[2] = { itemID = 22813 }; --Claymore of Unholy Might
		[3] = { itemID = 23075 }; --Death's Bargain
		[4] = { itemID = 22994 }; --Digested Hand of Power
		[5] = { itemID = 22981 }; --Gluth's Missing Collar
		[16] = { itemID = 22354, lootTable = {"T3SHOULDER","Token"} }; --Desecrated Pauldrons
		[17] = { itemID = 22355, lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22356, lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[19] = { itemID = 22358, lootTable = {"T3FEET","Token"} }; --Desecrated Sabatons
		[21] = { itemID = 22726 }; --Splinter of Atiesh
		[22] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Thaddius"];
		[1] = { itemID = 23070 }; --Leggings of Polarity
		[2] = { itemID = 23000 }; --Plated Abomination Ribcage
		[3] = { itemID = 22808 }; --The Castigator
		[4] = { itemID = 22801 }; --Spire of Twilight
		[5] = { itemID = 23001 }; --Eye of Diminution
		[16] = { itemID = 22353, lootTable = {"T3HEAD","Token"} }; --Desecrated Helmet
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[1] = { itemID = 22938 }; --Cryptfiend Silk Cloak
		[2] = { itemID = 22936 }; --Wristguards of Vengeance
		[3] = { itemID = 22937 }; --Gem of Nerubis
		[4] = { itemID = 22939 }; --Band of Unanswered Prayers
		[5] = { itemID = 22935 }; --Touch of Frost
		[16] = { itemID = 22355, lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[1] = { itemID = 22941 }; --Polar Shoulder Pads
		[2] = { itemID = 22940 }; --Icebane Pauldrons
		[3] = { itemID = 22806 }; --Widow's Remorse
		[4] = { itemID = 22942 }; --The Widow's Embrace
		[5] = { itemID = 22943 }; --Malice Stone Pendant
		[16] = { itemID = 22355, lootTable = {"T3WRIST","Token"} }; --Desecrated Bracers
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Maexxna"];
		[1] = { itemID = 23220 }; --Crystal Webbed Robe
		[2] = { itemID = 22804 }; --Maexxna's Fang
		[3] = { itemID = 22807 }; --Wraith Blade
		[4] = { itemID = 22947 }; --Pendant of Forgotten Names
		[5] = { itemID = 22954 }; --Kiss of the Spider
		[16] = { itemID = 22357, lootTable = {"T3HAND","Token"} }; --Desecrated Gauntlets
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[1] = { itemID = 23017 }; --Veil of Eclipse
		[2] = { itemID = 23219 }; --Girdle of the Mentor
		[3] = { itemID = 23014 }; --Iblis, Blade of the Fallen Seraph
		[4] = { itemID = 23009 }; --Wand of the Whispering Dead
		[5] = { itemID = 23004 }; --Idol of Longevity
		[6] = { itemID = 23018 }; --Signet of the Fallen Defender
		[16] = { itemID = 22358, lootTable = {"T3FEET","Token"} }; --Desecrated Sabatons
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[1] = { itemID = 23032 }; --Glacial Headdress
		[2] = { itemID = 23021 }; --The Soul Harvester's Bindings
		[3] = { itemID = 23020 }; --Polar Helmet
		[4] = { itemID = 23073 }; --Boots of Displacement
		[5] = { itemID = 23023 }; --Sadist's Collar
		[16] = { itemID = 22358, lootTable = {"T3SHOULDER","Token"} }; --Desecrated Sabatons
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[1] = { itemID = 23071 }; --Leggings of Apocalypse
		[2] = { itemID = 22809 }; --Maul of the Redeemed Crusader
		[3] = { itemID = 22691 }; --Corrupted Ashbringer
		[4] = { itemID = 22811 }; --Soulstring
		[5] = { itemID = 23025 }; --Seal of the Damned
		[6] = { itemID = 23027 }; --Warmth of Forgiveness
		[16] = { itemID = 22349, lootTable = {"T3CHEST","Token"} }; --Desecrated Breastplate
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[1] = { itemID = 23030 }; --Cloak of the Scourge
		[2] = { itemID = 22816 }; --Hatchet of Sundered Bone
		[3] = { itemID = 23005 }; --Totem of Flowing Water
		[4] = { itemID = 23006 }; --Libram of Light
		[5] = { itemID = 23029 }; --Noth's Frigid Heart
		[6] = { itemID = 23031 }; --Band of the Inevitable
		[7] = { itemID = 23028 }; --Hailstone Band
		[16] = { itemID = 22356, lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[1] = { itemID = 23035 }; --Preceptor's Hat
		[2] = { itemID = 23033 }; --Icy Scale Coif
		[3] = { itemID = 23019 }; --Icebane Helmet
		[4] = { itemID = 23068 }; --Legplates of Carnage
		[5] = { itemID = 23036 }; --Necklace of Necropsy
		[16] = { itemID = 22356, lootTable = {"T3WAIST","Token"} }; --Desecrated Waistguard
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Loatheb"];
		[1] = { itemID = 23039 }; --The Eye of Nerub
		[2] = { itemID = 22800 }; --Brimstone Staff
		[3] = { itemID = 23037 }; --Ring of Spiritual Fervor
		[4] = { itemID = 23038 }; --Band of Unnatural Forces
		[5] = { itemID = 23042 }; --Loatheb's Reflection
		[16] = { itemID = 22352, lootTable = {"T3LEGS","Token"} }; --Desecrated Legplates
		[18] = { itemID = 22726 }; --Splinter of Atiesh
		[19] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[1] = { itemID = 23050 }; --Cloak of the Necropolis
		[2] = { itemID = 23045 }; --Shroud of Dominion
		[3] = { itemID = 23072 }; --Fists of the Unrelenting
		[4] = { itemID = 23043 }; --The Face of Death
		[5] = { itemID = 23242 }; --Claw of the Frost Wyrm
		[6] = { itemID = 23049 }; --Sapphiron's Left Eye
		[7] = { itemID = 23048 }; --Sapphiron's Right Eye
		[8] = { itemID = 23040 }; --Glyph of Deflection
		[9] = { itemID = 23047 }; --Eye of the Dead
		[10] = { itemID = 23046 }; --The Restrained Essence of Sapphiron
		[11] = { itemID = 23041 }; --Slayer's Crest
		[12] = { itemID = 19761 }, --Fang of the Frost Wyrm
		[16] = { itemID = 23545 }; --Power of the Scourge
		[17] = { itemID = 23547 }; --Resilience of the Scourge
		[18] = { itemID = 23549 }; --Fortitude of the Scourge
		[19] = { itemID = 23548 }; --Might of the Scourge
		[21] = { itemID = 22726 }; --Splinter of Atiesh
		[22] = { itemID = 22727 }; --Frame of Atiesh
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[1] = { itemID = 22802 }; --Kingsfall
		[2] = { itemID = 23054 }; --Gressil, Dawn of Ruin
		[3] = { itemID = 23577 }; --The Hungering Cold
		[4] = { itemID = 23056 }; --Hammer of the Twisting Nether
		[5] = { itemID = 22798 }; --Might of Menethil
		[6] = { itemID = 22799 }; --Soulseeker
		[7] = { itemID = 22821 }; --Doomfinger
		[8] = { itemID = 22812 }; --Nerubian Slavemaker
		[9] = { itemID = 22819 }; --Shield of Condemnation
		[10] = { itemID = 23057 }; --Gem of Trapped Innocents
		[11] = { itemID = 23053 }; --Stormrage's Talisman of Seething
		[13] = { itemID = 22520 }; --The Phylactery of Kel'Thuzad
		[14] = { itemID = 23207 }; --Mark of the Champion
		[15] = { itemID = 23206 }; --Mark of the Champion
		[16] = { itemID = 1510496, lootTable = {"T3FINGER","Token"} }; --Desecrated Ring
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
		[1] = { itemID = 17078 }; --Sapphiron Drape
		[2] = { itemID = 18205 }; --Eskhandar's Collar
		[3] = { itemID = 18813 }; --Ring of Binding
		[4] = { itemID = 17064 }; --Shard of the Scale
		[5] = { itemID = 17067 }; --Ancient Cornerstone Grimoire
		[6] = { itemID = 17075 }; --Vis'kag the Bloodletter
		[7] = { itemID = 17068 }; --Deathbringer
		[8] = { itemID = 18215 }; --Insignia of the Dragon
		[9] = { itemID = 18216 }; --Neltharion's Badge
		[10] = { itemID = 18211 }; --Wand of the Noble
		[11] = { itemID = 17084 }; --Mace of the Dragon Knight
		[12] = { itemID = 18212 }; --Band of Nyxondra
		[16] = { itemID = 2522460, lootTable = {"T2HEAD","Token"} }; --Chromatic Headpiece
		[18] = { itemID = 18423 }; --Head of Onyxia
		[19] = { itemID = 18404 }; -- Onyxia Tooth Pendant
		[20] = { itemID = 18403 }; -- Dragonslayer's Signet
		[21] = { itemID = 18406 }; -- Onyxia Blood Talisman
		[23] = { itemID = 15410 }; -- Scale of Onyxia
		[24] = { itemID = 17966 }; --Onyxia Hide Backpack
		[26] = { itemID = 49636, [AtlasLoot.Difficulties.MIN_DIF] = AtlasLoot.Difficulties.Heroic }; -- Reins of the Onyxian Drake
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
		[1] = { itemID = 16720, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Wildheart Cowl
		[2] = { itemID = 16718, desc = "=ds=" ..BabbleBoss["Gizrul the Slavener"] .." (" ..AL["LBRS"] ..")" }; --Wildheart Spaulders
		[3] = { itemID = 16706, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Wildheart Vest
		[4] = { itemID = 16714, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Wildheart Bracers
		[5] = { itemID = 16717, desc = "=ds=" ..BabbleBoss["The Unforgiven"] .." (" ..AL["Strat"] ..")" }; --Wildheart Gloves
		[6] = { itemID = 16716, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }; --Wildheart Belt
		[7] = { itemID = 16719, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Wildheart Kilt
		[8] = { itemID = 16715, desc = "=ds=" ..BabbleBoss["Mother Smolderweb"] .." (" ..AL["LBRS"] ..")" }; --Wildheart Boots

	};
	{
		Name = AL["Beaststalker Armor"];
		[1] = { itemID = 16677, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Beaststalker's Cap
		[2] = { itemID = 16679, desc = "=ds=" ..BabbleBoss["Overlord Wyrmthalak"] .." (" ..AL["LBRS"] ..")" }; --Beaststalker's Mantle
		[3] = { itemID = 16674, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Beaststalker's Tunic
		[4] = { itemID = 16681, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Beaststalker's Bindings
		[5] = { itemID = 16676, desc = "=ds=" ..BabbleBoss["War Master Voone"] .." (" ..AL["LBRS"] ..")" }; --Beaststalker's Gloves
		[6] = { itemID = 16680, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Beaststalker's Belt
		[7] = { itemID = 16678, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Beaststalker's Pants
		[8] = { itemID = 16675, desc = "=ds=" ..BabbleBoss["Nerub'enkan"] .." (" ..AL["Strat"] ..")" }; --Beaststalker's Boots

	};
	{
		Name = AL["Magister's Regalia"];
		[1] = { itemID = 16686, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Magister's Crown
		[2] = { itemID = 16689, desc = "=ds=" ..BabbleBoss["Ras Frostwhisper"] .." (" ..AL["Scholo"] ..")" }; --Magister's Mantle
		[3] = { itemID = 16688, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Magister's Robes
		[4] = { itemID = 16683, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Magister's Bindings
		[5] = { itemID = 16684, desc = "=ds=" ..BabbleBoss["Doctor Theolen Krastinov"] .." (" ..AL["Scholo"] ..")" }; --Magister's Gloves
		[6] = { itemID = 16685, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Magister's Belt
		[7] = { itemID = 16687, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Magister's Leggings
		[8] = { itemID = 16682, desc = "=ds=" ..BabbleBoss["Hearthsinger Forresten"] .." (" ..AL["Strat"] ..")" }; --Magister's Boots

	};
	{
		Name = AL["Lightforge Armor"];
		[1] = { itemID = 16727, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Lightforge Helm
		[2] = { itemID = 16729, desc = "=ds=" ..BabbleBoss["The Beast"] .." (" ..AL["UBRS"] ..")" }; --Lightforge Spaulders
		[3] = { itemID = 16726, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Lightforge Breastplate
		[4] = { itemID = 16722, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }; --Lightforge Bracers
		[5] = { itemID = 16724, desc = "=ds=" ..BabbleBoss["Timmy the Cruel"] .." (" ..AL["Strat"] ..")" }; --Lightforge Gauntlets
		[6] = { itemID = 16723, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Lightforge Belt
		[7] = { itemID = 16728, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Lightforge Legplates
		[8] = { itemID = 16725, desc = "=ds=" ..BabbleBoss["Balnazzar"] .." (" ..AL["Strat"] ..")" }; --Lightforge Boots

	};
	{
		Name = AL["Vestments of the Devout"];
		[1] = { itemID = 16693, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Devout Crown
		[2] = { itemID = 16695, desc = "=ds=" ..BabbleBoss["Solakar Flamewreath"] .." (" ..AL["UBRS"] ..")" }; --Devout Mantle
		[3] = { itemID = 16690, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Devout Robe
		[4] = { itemID = 16697, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Devout Bracers
		[5] = { itemID = 16692, "=q3=Devout Gloves", "=ds=" ..BabbleBoss["Archivist Galford"] .." (" ..AL["Strat"] ..")" };
		[6] = { itemID = 16696, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Devout Belt
		[7] = { itemID = 16694, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Devout Skirt
		[8] = { itemID = 16691, desc = "=ds=" ..BabbleBoss["Maleki the Pallid"] .." (" ..AL["Strat"] ..")" }; --Devout Sandals

	};
	{
		Name = AL["Shadowcraft Armor"];
		[1] = { itemID = 16707, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Shadowcraft Cap
		[2] = { itemID = 16708, desc = "=ds=" ..BabbleBoss["Cannon Master Willey"] .." (" ..AL["Strat"] ..")" }; --Shadowcraft Spaulders
		[3] = { itemID = 16721, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Shadowcraft Tunic
		[4] = { itemID = 16710, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Scholo"] ..")" }; --Shadowcraft Bracers
		[5] = { itemID = 16712, desc = "=ds=" ..BabbleBoss["Shadow Hunter Vosh'gajin"] .." (" ..AL["LBRS"] ..")" }; --Shadowcraft Gloves
		[6] = { itemID = 16713, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Shadowcraft Belt
		[7] = { itemID = 16709, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Shadowcraft Pants
		[8] = { itemID = 16711, desc = "=ds=" ..BabbleBoss["Rattlegore"] .." (" ..AL["Scholo"] ..")" }; --Shadowcraft Boots

	};
	{
		Name = AL["The Elements"];
		[1] = { itemID = 16667, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Coif of Elements
		[2] = { itemID = 16669, desc = "=ds=" ..BabbleBoss["Gyth"] .." (" ..AL["UBRS"] ..")" }; --Pauldrons of Elements
		[3] = { itemID = 16666, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Vest of Elements
		[4] = { itemID = 16671, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Bindings of Elements
		[5] = { itemID = 16672, desc = "=ds=" ..BabbleBoss["Pyroguard Emberseer"] .." (" ..AL["UBRS"] ..")" }; --Gauntlets of Elements
		[6] = { itemID = 16673, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Cord of Elements
		[7] = { itemID = 16668, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Kilt of Elements
		[8] = { itemID = 16670, desc = "=ds=" ..BabbleBoss["Highlord Omokk"] .." (" ..AL["LBRS"] ..")" }; --Boots of Elements

	};
	{
		Name = AL["Dreadmist Raiment"];
		[1] = { itemID = 16698, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Dreadmist Mask
		[2] = { itemID = 16701, desc = "=ds=" ..BabbleBoss["Jandice Barov"] .." (" ..AL["Scholo"] ..")" }; --Dreadmist Mantle
		[3] = { itemID = 16700, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Dreadmist Robe
		[4] = { itemID = 16703, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Dreadmist Bracers
		[5] = { itemID = 16705, desc = "=ds=" ..BabbleBoss["Lorekeeper Polkelt"] .." (" ..AL["Scholo"] ..")" }; --Dreadmist Wraps
		[6] = { itemID = 16702, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["Strat"] ..")" }; --Dreadmist Belt
		[7] = { itemID = 16699, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Dreadmist Leggings
		[8] = { itemID = 16704, desc = "=ds=" ..BabbleBoss["Baroness Anastari"] .." (" ..AL["Strat"] ..")" }; --Dreadmist Sandals

	};
	{
		Name = AL["Battlegear of Valor"];
		[1] = { itemID = 16731, desc = "=ds=" ..BabbleBoss["Darkmaster Gandling"] .." (" ..AL["Scholo"] ..")" }; --Helm of Valor
		[2] = { itemID = 16733, desc = "=ds=" ..BabbleBoss["Warchief Rend Blackhand"] .." (" ..AL["UBRS"] ..")" }; --Spaulders of Valor
		[3] = { itemID = 16730, desc = "=ds=" ..BabbleBoss["General Drakkisath"] .." (" ..AL["UBRS"] ..")" }; --Breastplate of Valor
		[4] = { itemID = 16735, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Bracers of Valor
		[5] = { itemID = 16737, desc = "=ds=" ..BabbleBoss["Ramstein the Gorger"] .." (" ..AL["Strat"] ..")" }; --Gauntlets of Valor
		[6] = { itemID = 16736, desc = "=ds=" ..AL["Trash Mobs"] .." (" ..AL["LBRS"] ..")" }; --Belt of Valor
		[7] = { itemID = 16732, desc = "=ds=" ..BabbleBoss["Baron Rivendare"] .." (" ..AL["Strat"] ..")" }; --Legplates of Valor
		[8] = { itemID = 16734, desc = "=ds=" ..BabbleBoss["Kirtonos the Herald"] .." (" ..AL["Scholo"] ..")" }; --Boots of Valor

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
		[1] = { itemID = 22109, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Cowl
		[2] = { itemID = 22112, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Spaulders
		[3] = { itemID = 22113, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Vest
		[4] = { itemID = 22108, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Bracers
		[5] = { itemID = 22110, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Gloves
		[6] = { itemID = 22106, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Belt
		[7] = { itemID = 22111, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Kilt
		[8] = { itemID = 22107, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Feralheart Boots
	};
	{
		Name = AL["Beastmaster Armor"];  
		[1] = { itemID = 22013, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Cap
		[2] = { itemID = 22016, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Mantle
		[3] = { itemID = 22060, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Tunic
		[4] = { itemID = 22011, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Bindings
		[5] = { itemID = 22015, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Gloves
		[6] = { itemID = 22010, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Belt
		[7] = { itemID = 22017, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Pants
		[8] = { itemID = 22061, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Beastmaster's Boots
	};
	{
		Name = AL["Sorcerer's Regalia"];
		[1] = { itemID = 22065, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Crown
		[2] = { itemID = 22068, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Mantle
		[3] = { itemID = 22069, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Robes
		[4] = { itemID = 22063, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Bindings
		[5] = { itemID = 22066, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Gloves
		[6] = { itemID = 22062, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Belt
		[7] = { itemID = 22067, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Leggings
		[8] = { itemID = 22064, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Sorcerer's Boots
	};
	{
		Name = AL["Soulforge Armor"];  
		[1] = { itemID = 22091, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Helm
		[2] = { itemID = 22093, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Spaulders
		[3] = { itemID = 22089, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Breastplate
		[4] = { itemID = 22088, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Bracers
		[5] = { itemID = 22090, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Gauntlets
		[6] = { itemID = 22086, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Belt
		[7] = { itemID = 22092, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Legplates
		[8] = { itemID = 22087, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Soulforge Boots
	};
	{
		Name = AL["Vestments of the Virtuous"];  
		[1] = { itemID = 22080, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Crown
		[2] = { itemID = 22082, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Mantle
		[3] = { itemID = 22083, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Robe
		[4] = { itemID = 22079, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Bracers
		[5] = { itemID = 22081, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Gloves
		[6] = { itemID = 22078, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Belt
		[7] = { itemID = 22085, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Skirt
		[8] = { itemID = 22084, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Virtuous Sandals
	};
	{
		Name = AL["Darkmantle Armor"];
		[1] = { itemID = 22005, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Cap
		[2] = { itemID = 22008, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Spaulders
		[3] = { itemID = 22009, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Tunic
		[4] = { itemID = 22004, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Bracers
		[5] = { itemID = 22006, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Gloves
		[6] = { itemID = 22002, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Belt
		[7] = { itemID = 22007, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Pants
		[8] = { itemID = 22003, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Darkmantle Boots
	};
	{
		Name = AL["The Five Thunders"];
		[1] = { itemID = 22097, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Coif of The Five Thunders
		[2] = { itemID = 22101, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Pauldrons of The Five Thunders
		[3] = { itemID = 22102, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Vest of The Five Thunders
		[4] = { itemID = 22095, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Bindings of The Five Thunders
		[5] = { itemID = 22099, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Gauntlets of The Five Thunders
		[6] = { itemID = 22098, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Cord of The Five Thunders
		[7] = { itemID = 22100, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Kilt of The Five Thunders
		[8] = { itemID = 22096, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Boots of The Five Thunders
	};
	{
		Name = AL["Deathmist Raiment"];
		[1] = { itemID = 22074, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Mask
		[2] = { itemID = 22073, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Mantle
		[3] = { itemID = 22075, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Robe
		[4] = { itemID = 22071, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Bracers
		[5] = { itemID = 22077, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Wraps
		[6] = { itemID = 22070, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Belt
		[7] = { itemID = 22072, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Leggings
		[8] = { itemID = 22076, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Deathmist Sandals
	};
	{
		Name = AL["Battlegear of Heroism"];
		[1] = { itemID = 21999, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Helm of Heroism
		[2] = { itemID = 22001, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Spaulders of Heroism
		[3] = { itemID = 21997, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Breastplate of Heroism
		[4] = { itemID = 21996, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Bracers of Heroism
		[5] = { itemID = 21998, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Gauntlets of Heroism
		[6] = { itemID = 21994, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Belt of Heroism
		[7] = { itemID = 22000, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Legplates of Heroism
		[8] = { itemID = 21995, [AtlasLoot.Difficulties.MAX_DIF] = AtlasLoot.Difficulties.Normal };  --Boots of Heroism
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
		[1] = { itemID = 16834, desc = "=ds=" ..BabbleBoss["Garr"] }; --Cenarion Helm
		[2] = { itemID = 16836, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Cenarion Spaulders
		[3] = { itemID = 16833, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Cenarion Vestments
		[4] = { itemID = 16830, desc = "=ds=" ..AL["Trash Mobs"] }; --Cenarion Bracers
		[5] = { itemID = 16831, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Cenarion Gloves
		[6] = { itemID = 16828, desc = "=ds=" ..AL["Trash Mobs"] }; --Cenarion Belt
		[7] = { itemID = 16835, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Cenarion Leggings
		[8] = { itemID = 16829, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Cenarion Boots
	};
	{
		Name = "Druid" ..WHITE.." - Tank";
		[1] = { itemID = 13437, desc = "=ds=" ..BabbleBoss["Garr"] }; --Cenarion Cover
		[2] = { itemID = 13439, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Cenarion Pauldrons
		[3] = { itemID = 13436, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Cenarion Tunic
		[4] = { itemID = 13434, desc = "=ds=" ..AL["Trash Mobs"] }; --Cenarion Bands
		[5] = { itemID = 13435, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Cenarion Handguards
		[6] = { itemID = 13432, desc = "=ds=" ..AL["Trash Mobs"] }; --Cenarion Girdle
		[7] = { itemID = 13438, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Cenarion Pants
		[8] = { itemID = 13433, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Cenarion Treads
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16846, desc = "=ds=" ..BabbleBoss["Garr"] }; --Giantstalker's Helmet
		[2] = { itemID = 16848, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }; --Giantstalker's Epaulets
		[3] = { itemID = 16845, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Giantstalker's Breastplate
		[4] = { itemID = 16850, desc = "=ds=" ..AL["Trash Mobs"] }; --Giantstalker's Bracers
		[5] = { itemID = 16852, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Giantstalker's Gloves
		[6] = { itemID = 16851, desc = "=ds=" ..AL["Trash Mobs"] }; --Giantstalker's Belt
		[7] = { itemID = 16847, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Giantstalker's Leggings
		[8] = { itemID = 16849, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Giantstalker's Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16795, desc = "=ds=" ..BabbleBoss["Garr"] }; --Arcanist Crown
		[2] = { itemID = 16797, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Arcanist Mantle
		[3] = { itemID = 16798, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Arcanist Robes
		[4] = { itemID = 16799, desc = "=ds=" ..AL["Trash Mobs"] }; --Arcanist Bindings
		[5] = { itemID = 16801, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Arcanist Gloves
		[6] = { itemID = 16802, desc = "=ds=" ..AL["Trash Mobs"] }; --Arcanist Belt
		[7] = { itemID = 16796, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Arcanist Leggings
		[8] = { itemID = 16800, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Arcanist Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Holy"];
		[1] = { itemID = 16854, desc = "=ds=" ..BabbleBoss["Garr"] }; --Lawbringer Helm
		[2] = { itemID = 16856, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Lawbringer Spaulders
		[3] = { itemID = 16853, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Lawbringer Chestguard
		[4] = { itemID = 16857, desc = "=ds=" ..AL["Trash Mobs"] }; --Lawbringer Bracers
		[5] = { itemID = 16860, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Lawbringer Gauntlets
		[6] = { itemID = 16858, desc = "=ds=" ..AL["Trash Mobs"] }; --Lawbringer Belt
		[7] = { itemID = 16855, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Lawbringer Legplates
		[8] = { itemID = 16859, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Lawbringer Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - "..AL["Protection"];
		[1] = { itemID = 11536, desc = "=ds=" ..BabbleBoss["Garr"] }; --Lawbringer Greathelm
		[2] = { itemID = 11538, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Lawbringer Pauldrons
		[3] = { itemID = 11535, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Lawbringer Breastplate
		[4] = { itemID = 11531, desc = "=ds=" ..AL["Trash Mobs"] }; --Lawbringer Wristguards
		[5] = { itemID = 11533, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Lawbringer Handguards
		[6] = { itemID = 11534, desc = "=ds=" ..AL["Trash Mobs"] }; --Lawbringer Waistguard
		[7] = { itemID = 11537, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Lawbringer Legguards
		[8] = { itemID = 11532, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Lawbringer Stompers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = { itemID = 16813, desc = "=ds=" ..BabbleBoss["Garr"] }; --Circlet of Prophecy
		[2] = { itemID = 16816, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }; --Mantle of Prophecy
		[3] = { itemID = 16815, "=q4=Robes of Prophecy", "=ds=" ..BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16819, desc = "=ds=" ..AL["Trash Mobs"] }; --Vambraces of Prophecy
		[5] = { itemID = 16812, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Gloves of Prophecy
		[6] = { itemID = 16817, desc = "=ds=" ..AL["Trash Mobs"] }; --Girdle of Prophecy
		[7] = { itemID = 16814, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Pants of Prophecy
		[8] = { itemID = 16811, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Boots of Prophecy
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16821, desc = "=ds=" ..BabbleBoss["Garr"] }; --Nightslayer Cover
		[2] = { itemID = 16823, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }; --Nightslayer Shoulder Pads
		[3] = { itemID = 16820, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Nightslayer Chestpiece
		[4] = { itemID = 16825, desc = "=ds=" ..AL["Trash Mobs"] }; --Nightslayer Bracelets
		[5] = { itemID = 16826, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Nightslayer Gloves
		[6] = { itemID = 16827, desc = "=ds=" ..AL["Trash Mobs"] }; --Nightslayer Belt
		[7] = { itemID = 16822, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Nightslayer Pants
		[8] = { itemID = 16824, desc = "=ds=" ..BabbleBoss["Shazzrah"] }; --Nightslayer Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Restoration"];
		[1] = { itemID = 16842, desc = "=ds=" ..BabbleBoss["Garr"] }; --Earthfury Helmet
		[2] = { itemID = 16844, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Earthfury Epaulets
		[3] = { itemID = 16841, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Earthfury Vestments
		[4] = { itemID = 16840, desc = "=ds=" ..AL["Trash Mobs"] }; --Earthfury Bracers
		[5] = { itemID = 16839, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Earthfury Gauntlets
		[6] = { itemID = 16838, desc = "=ds=" ..AL["Trash Mobs"] }; --Earthfury Belt
		[7] = { itemID = 16843, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Earthfury Legguards
		[8] = { itemID = 16837, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Earthfury Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - "..AL["Enhancement"];
		[1] = { itemID = 11794, desc = "=ds=" ..BabbleBoss["Garr"] }; --Earthfury Cover
		[2] = { itemID = 11796, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Earthfury Pauldrons
		[3] = { itemID = 11792, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] }; --Earthfury Tunic
		[4] = { itemID = 11793, desc = "=ds=" ..AL["Trash Mobs"] }; --Earthfury Bands
		[5] = { itemID = 11791, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Earthfury Gloves
		[6] = { itemID = 11790, desc = "=ds=" ..AL["Trash Mobs"] }; --Earthfury Girdle
		[7] = { itemID = 11789, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Earthfury Leggings
		[8] = { itemID = 11795, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Earthfury Treads
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16808, desc = "=ds=" ..BabbleBoss["Garr"] }; --Felheart Horns
		[2] = { itemID = 16807, desc = "=ds=" ..BabbleBoss["Baron Geddon"] }; --Felheart Shoulder Pads
		[3] = { itemID = 16809, "=q4=Felheart Robes", "=ds=" ..BabbleBoss["Golemagg the Incinerator"] };
		[4] = { itemID = 16804, desc = "=ds=" ..AL["Trash Mobs"] }; --Felheart Bracers
		[5] = { itemID = 16805, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Felheart Gloves
		[6] = { itemID = 16806, desc = "=ds=" ..AL["Trash Mobs"] }; --Felheart Belt
		[7] = { itemID = 16810, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Felheart Pants
		[8] = { itemID = 16803, "=q4=Felheart Slippers", "=ds=" ..BabbleBoss["Shazzrah"], "1" };
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - Tank";
		[1] = { itemID = 16866, desc = "=ds=" ..BabbleBoss["Garr"] }; --Helm of Might
		[2] = { itemID = 16868, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] }; --Pauldrons of Might
		[3] = { itemID = 16865, "=q4=Breastplate of Might", "=ds=" ..BabbleBoss["Golemagg the Incinerator"], "1" };
		[4] = { itemID = 16861, desc = "=ds=" ..AL["Trash Mobs"] }; --Bracers of Might
		[5] = { itemID = 16863, desc = "=ds=" ..BabbleBoss["Lucifron"] }; --Gauntlets of Might
		[6] = { itemID = 16864, desc = "=ds=" ..AL["Trash Mobs"] }; --Belt of Might
		[7] = { itemID = 16867, desc = "=ds=" ..BabbleBoss["Magmadar"] }; --Legplates of Might
		[8] = { itemID = 16862, desc = "=ds=" ..BabbleBoss["Gehennas"] }; --Sabatons of Might
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - DPS";
		[1] = { itemID = 10480, desc = "=ds=" ..BabbleBoss["Garr"] };--Faceguard of Might
		[2] = { itemID = 10481, desc = "=ds=" ..BabbleBoss["Sulfuron Harbinger"] };--Shoulderpads of Might
		[3] = { itemID = 10482, desc = "=ds=" ..BabbleBoss["Golemagg the Incinerator"] };--Chesttplate of Might
		[4] = { itemID = 10483, desc = "=ds=" ..AL["Trash Mobs"] };--Wristguards of Might
		[5] = { itemID = 10484, desc = "=ds=" ..BabbleBoss["Lucifron"] };--Handguards of Might
		[6] = { itemID = 10485, desc = "=ds=" ..AL["Trash Mobs"] };--Girdle of Might
		[7] = { itemID = 10486, desc = "=ds=" ..BabbleBoss["Magmadar"] };--Legguards of Might
		[8] = { itemID = 10487, desc = "=ds=" ..BabbleBoss["Gehennas"] };--Stompers of Might
	};
};

-- T2 Sets
AtlasLoot_Data["T2"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = "Tier 2";
	Type = "ClassicRaid";
	{
		Name = AL["Druid"]..WHITE.." - Healer";
		[1] = { itemID = 16900, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 16902, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 16897, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 16904, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 16899, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 16903, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 16901, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 16898, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = AL["Druid"] ..WHITE.." - Tank";
		[1] = { itemID = 1516900, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 1516902, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 1516897, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 1516904, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 1516904, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 1516899, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 1516903, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 1516898, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = AL["Druid"] ..WHITE.." - Caster";
		[1] = { itemID = 1516892, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Stormrage Cover
		[2] = { itemID = 1516894, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Stormrage Pauldrons
		[3] = { itemID = 1516889, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Stormrage Chestguard
		[4] = { itemID = 1516896, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Stormrage Bracers
		[5] = { itemID = 1516891, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Stormrage Handguards
		[6] = { itemID = 1516895, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Stormrage Belt
		[7] = { itemID = 1516893, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Stormrage Legguards
		[8] = { itemID = 1516890, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Stormrage Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { itemID = 16939, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Dragonstalker's Helm
		[2] = { itemID = 16937, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Dragonstalker's Spaulders
		[3] = { itemID = 16942, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Dragonstalker's Breastplate
		[4] = { itemID = 16935, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Dragonstalker's Bracers
		[5] = { itemID = 16940, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Dragonstalker's Gauntlets
		[6] = { itemID = 16936, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Dragonstalker's Belt
		[7] = { itemID = 16938, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Dragonstalker's Legguards
		[8] = { itemID = 16941, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Dragonstalker's Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { itemID = 16914, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Netherwind Crown
		[2] = { itemID = 16917, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Netherwind Mantle
		[3] = { itemID = 16916, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Netherwind Robes
		[4] = { itemID = 16918, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Netherwind Bindings
		[5] = { itemID = 16913, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Netherwind Gloves
		[6] = { itemID = 16818, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Netherwind Belt
		[7] = { itemID = 16915, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Netherwind Pants
		[8] = { itemID = 16912, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Netherwind Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = { itemID = 16955, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Judgement Crown
		[2] = { itemID = 16953, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Judgement Spaulders
		[3] = { itemID = 16958, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Judgement Breastplate
		[4] = { itemID = 16951, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Judgement Bindings
		[5] = { itemID = 16956, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Judgement Gauntlets
		[6] = { itemID = 16952, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Judgement Belt
		[7] = { itemID = 16954, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Judgement Legplates
		[8] = { itemID = 16957, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Judgement Sabatons
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"]..WHITE.." - Tank";
		[1] = { itemID = 1516955, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Judgement Crown
		[2] = { itemID = 1516953, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Judgement Spaulders
		[3] = { itemID = 1516958, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Judgement Breastplate
		[4] = { itemID = 1516951, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Judgement Bindings
		[5] = { itemID = 1516956, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Judgement Gauntlets
		[6] = { itemID = 1516952, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Judgement Belt
		[7] = { itemID = 1516954, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Judgement Legplates
		[8] = { itemID = 1516957, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Judgement Sabatons
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - Healer";
		[1] = { itemID = 16921, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Halo of Transcendence
		[2] = { itemID = 16924, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Pauldrons of Transcendence
		[3] = { itemID = 16923, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Robes of Transcendence
		[4] = { itemID = 16926, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bindings of Transcendence
		[5] = { itemID = 16920, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Handguards of Transcendence
		[6] = { itemID = 16925, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Transcendence
		[7] = { itemID = 16922, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Leggings of Transcendence
		[8] = { itemID = 16919, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Boots of Transcendence
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"]..WHITE.." - Caster";
		[1] = { itemID = 1516921, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Halo of Transcendence
		[2] = { itemID = 1516924, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Pauldrons of Transcendence
		[3] = { itemID = 1516923, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Robes of Transcendence
		[4] = { itemID = 1516926, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bindings of Transcendence
		[5] = { itemID = 1516920, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Handguards of Transcendence
		[6] = { itemID = 1516925, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Transcendence
		[7] = { itemID = 1516922, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Leggings of Transcendence
		[8] = { itemID = 1516919, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Boots of Transcendence
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { itemID = 16908, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Bloodfang Hood
		[2] = { itemID = 16832, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Bloodfang Spaulders
		[3] = { itemID = 16905, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Bloodfang Chestpiece
		[4] = { itemID = 16911, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bloodfang Bracers
		[5] = { itemID = 16907, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Bloodfang Gloves
		[6] = { itemID = 16910, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Bloodfang Belt
		[7] = { itemID = 16909, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Bloodfang Pants
		[8] = { itemID = 16906, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Bloodfang Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - Healer";
		[1] = { itemID = 16947, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Helmet of Ten Storms
		[2] = { itemID = 16945, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Epaulets of Ten Storms
		[3] = { itemID = 16950, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Breastplate of Ten Storms
		[4] = { itemID = 16943, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bracers of Ten Storms
		[5] = { itemID = 16948, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Gauntlets of Ten Storms
		[6] = { itemID = 16944, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Ten Storms
		[7] = { itemID = 16946, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legplates of Ten Storms
		[8] = { itemID = 16949, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Greaves of Ten Storms
	};
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - Caster";
		[1] = { itemID = 10962, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Helmet of Ten Storms
		[2] = { itemID = 10963, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Epaulets of Ten Storms
		[3] = { itemID = 10964, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Breastplate of Ten Storms
		[4] = { itemID = 10965, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bracers of Ten Storms
		[5] = { itemID = 11001, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Gauntlets of Ten Storms
		[6] = { itemID = 11002, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Ten Storms
		[7] = { itemID = 11003, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legplates of Ten Storms
		[8] = { itemID = 11004, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Greaves of Ten Storms
	};
	{		
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"]..WHITE.." - Hybrid";
		[1] = { itemID = 1516947, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Helmet of Ten Storms
		[2] = { itemID = 1516945, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Epaulets of Ten Storms
		[3] = { itemID = 1516950, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Breastplate of Ten Storms
		[4] = { itemID = 1516943, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bracers of Ten Storms
		[5] = { itemID = 1516948, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Gauntlets of Ten Storms
		[6] = { itemID = 1516944, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Ten Storms
		[7] = { itemID = 1516946, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legplates of Ten Storms
		[8] = { itemID = 1516949, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Greaves of Ten Storms
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { itemID = 16929, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Nemesis Skullcap
		[2] = { itemID = 16932, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Nemesis Spaulders
		[3] = { itemID = 16931, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Nemesis Robes
		[4] = { itemID = 16934, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Nemesis Bracers
		[5] = { itemID = 16928, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Nemesis Gloves
		[6] = { itemID = 16933, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Nemesis Belt
		[7] = { itemID = 16930, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Nemesis Leggings
		[8] = { itemID = 16927, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Nemesis Boots
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - DPS";
		[1] = { itemID = 10904, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Faceguard of Wrath
		[2] = { itemID = 10902, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Shoulderpads of Wrath
		[3] = { itemID = 10907, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Chestplate of Wrath
		[4] = { itemID = 10900, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Wristguards of Wrath
		[5] = { itemID = 10905, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Grippers of Wrath
		[6] = { itemID = 10901, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Wrath
		[7] = { itemID = 10903, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legguards of Wrath
		[8] = { itemID = 10906, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Stompers of Wrath
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - Block Tank";
		[1] = { itemID = 16963, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Helm of Wrath
		[2] = { itemID = 16961, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Pauldrons of Wrath
		[3] = { itemID = 16966, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Breastplate of Wrath
		[4] = { itemID = 16959, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Bracelets of Wrath
		[5] = { itemID = 16964, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Gauntlets of Wrath
		[6] = { itemID = 16960, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Waistband of Wrath
		[7] = { itemID = 16962, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legplates of Wrath
		[8] = { itemID = 16965, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Sabatons of Wrath
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"]..WHITE.." - Avoidance Tank";
		[1] = { itemID = 1516963, desc = "=ds=" ..BabbleBoss["Onyxia"] };--Faceguard of Wrath
		[2] = { itemID = 1516961, desc = "=ds=" ..BabbleBoss["Chromaggus"] };--Shoulderpads of Wrath
		[3] = { itemID = 1516966, desc = "=ds=" ..BabbleBoss["Nefarian"] };--Chestplate of Wrath
		[4] = { itemID = 1516959, desc = "=ds=" ..BabbleBoss["Razorgore the Untamed"] };--Wristguards of Wrath
		[5] = { itemID = 1516964, desc = BabbleBoss["Firemaw"] ..", " ..BabbleBoss["Ebonroc"] ..", " ..BabbleBoss["Flamegor"] };--Grippers of Wrath
		[6] = { itemID = 1516960, desc = "=ds=" ..BabbleBoss["Vaelastrasz the Corrupt"] };--Belt of Wrath
		[7] = { itemID = 1516962, desc = "=ds=" ..BabbleBoss["Ragnaros"] };--Legguards of Wrath
		[8] = { itemID = 1516965, desc = "=ds=" ..BabbleBoss["Broodlord Lashlayer"] };--Stompers of Wrath
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
		Name = AL["Druid"] ..WHITE.." - Healing";
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
		Name = AL["Druid"] ..WHITE.." - Haste";
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
		Name = AL["Druid"] ..WHITE.." - Feral Dps";
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
		Name = AL["Druid"] ..WHITE.." - Tank";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..WHITE.." - Healing";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..WHITE.." - Dps";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] ..WHITE.." - Tank";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] ..WHITE.." - Healing";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] ..WHITE.." - Dps";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] ..WHITE.." - Enhancement";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] ..WHITE.." - Spell";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..WHITE.." - Block Tank";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..WHITE.." - Parry Tank";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] ..WHITE.." - DPS";
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
		[1] = { itemID = 10399, desc = "=ds==q2="..BabbleBoss["Edwin VanCleef"] }; --Blackened Defias Armor
		[2] = { itemID = 10401, desc = "=ds==q2="..AL["Defias Overseer/Taskmaster"] }; --Blackened Defias Gloves
		[3] = { itemID = 10403, desc = "=ds==q2="..BabbleBoss["Captain Greenskin"] }; --Blackened Defias Belt
		[4] = { itemID = 10400, desc = "=ds==q2="..AL["Defias Overseer/Taskmaster"] }; --Blackened Defias Leggings
		[5] = { itemID = 10402, desc = "=ds==q2="..AL["Defias Strip Miner"] }; --Blackened Defias Boots
	};
	{
		Name = AL["Embrace of the Viper"];
		[1] = { itemID = 6473, desc = "=ds==q2="..BabbleBoss["Lord Pythas"] }; --Armor of the Fang
		[2] = { itemID = 10413, desc = "=ds==q2="..AL["Druid of the Fang"] }; --Gloves of the Fang
		[3] = { itemID = 10412, desc = "=ds==q2="..BabbleBoss["Lady Anacondra"] }; --Belt of the Fang
		[4] = { itemID = 10410, desc = "=ds==q2="..BabbleBoss["Lord Cobrahn"] }; --Leggings of the Fang
		[5] = { itemID = 10411, desc = "=ds==q2="..BabbleBoss["Lord Serpentis"] }; --Footpads of the Fang
	};
	{
		Name = AL["Chain of the Scarlet Crusade"];
		[1] = { itemID = 10328, desc = "=ds==q2="..AL["Scarlet Champion"] }; --Scarlet Chestpiece
		[2] = { itemID = 10333, desc = "=ds==q2="..AL["Scarlet Protector/Guardsman"] }; --Scarlet Wristguards
		[3] = { itemID = 10331, desc = "=ds==q2="..AL["Scarlet Centurion"] }; --Scarlet Gauntlets
		[4] = { itemID = 10329, desc = "=ds==q2="..AL["Scarlet Defender/Myrmidon"] }; --Scarlet Belt
		[5] = { itemID = 10330, desc = "=ds==q2="..AL["Herod/Mograine"] }; --Scarlet Leggings
		[6] = { itemID = 10332, desc = "=ds==q2="..AL["Trash Mobs"] }; --Scarlet Boots
	};
	{
		Name = AL["The Gladiator"];
		[1] = { itemID = 11729, desc = "=ds==q2=#brd3#, "..BabbleBoss["Hedrum the Creeper"] }; --Savage Gladiator Helm
		[2] = { itemID = 11726, desc = "=ds==q2="..BabbleBoss["Gorosh the Dervish"] }; --Savage Gladiator Chain
		[3] = { itemID = 11730, desc = "=ds==q2="..BabbleBoss["Eviscerator"] }; --Savage Gladiator Grips
		[4] = { itemID = 11728, desc = "=ds==q2="..BabbleBoss["Ok'thor the Breaker"] }; --Savage Gladiator Leggings
		[5] = { itemID = 11731, desc = "=ds==q2="..BabbleBoss["Anub'shiah"] }; --Savage Gladiator Greaves
	};
	{
		Name = AL["Ironweave Battlesuit"];
		[1] = { itemID = 22302, desc = "=ds==q2="..BabbleBoss["Lord Valthalak"].." (#z9#)" }; --Ironweave Cowl
		[2] = { itemID = 22305, desc = "=ds==q2="..AL["Theldren"].." ("..BabbleZone["Blackrock Depths"]..")" }; --Ironweave Mantle
		[3] = { itemID = 22301, desc = "=ds==q2="..AL["Sothos and Jarien"].." ("..BabbleZone["Stratholme"]..")" }; --Ironweave Robe
		[4] = { itemID = 22313, desc = "=ds==q2="..BabbleBoss["Halycon"].." (#z10#)" }; --Ironweave Bracers
		[5] = { itemID = 22304, desc = "=ds==q2="..BabbleBoss["Isalien"].." ("..BabbleZone["Dire Maul (East)"]..")" }; --Ironweave Gloves
		[6] = { itemID = 22306, desc = "=ds==q2="..BabbleBoss["Mor Grayhoof"].." (#z10#)" }; --Ironweave Belt
		[7] = { itemID = 22303, desc = "=ds==q2="..BabbleBoss["Kormok"].." ("..BabbleZone["Scholomance"]..")" }; --Ironweave Pants
		[8] = { itemID = 22311, desc = "=ds==q2="..BabbleBoss["The Beast"].." (#z9#)" }; --Ironweave Boots
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
		[1] = { itemID = 17082, desc = "=ds==q2="..BabbleBoss["Ragnaros"].." ("..BabbleZone["Molten Core"]..")" }; --Shard of the Flame
		[2] = { itemID = 17064, desc = "=ds==q2="..BabbleBoss["Onyxia"].." ("..BabbleZone["Onyxia's Lair"]..")" }; --Shard of the Scale
	};
	{
		Name = AL["Spirit of Eskhandar"];
		[1] = { itemID = 18204 }; --Eskhandar's Pelt
		[2] = { itemID = 18203 }; --Eskhandar's Right Claw
		[3] = { itemID = 18202 }; --Eskhandar's Left Claw
	};
	{
		Name = AL["Spider's Kiss"];
		[1] = { itemID = 13218 }; --Fang of the Crystal Spider
		[2] = { itemID = 13183 }; --Venomspitter
	};
	{
		Name = AL["Dal'Rend's Arms"];
		[1] = { itemID = 12940 }; --Dal'Rend's Sacred Charge
		[2] = { itemID = 12939 }; --Dal'Rend's Tribal Guardian
	};
	{
		Name = AL["Necropile Raiment"];
		[1] = { itemID = 14633 }; --Necropile Mantle
		[2] = { itemID = 14626 }; --Necropile Robe
		[3] = { itemID = 14629 }; --Necropile Cuffs
		[4] = { itemID = 14632 }; --Necropile Leggings
		[5] = { itemID = 14631 }; --Necropile Boots
	};
	{
		Name = AL["Cadaverous Garb"];
		[1] = { itemID = 14637 }; --Cadaverous Armor
		[2] = { itemID = 14640 }; --Cadaverous Gloves
		[3] = { itemID = 14636 }; --Cadaverous Belt
		[4] = { itemID = 14638 }; --Cadaverous Leggings
		[5] = { itemID = 14641 }; --Cadaverous Walkers
	};
	{
		Name = AL["Bloodmail Regalia"];
		[1] = { itemID = 14611 }; --Bloodmail Hauberk
		[2] = { itemID = 14615 }; --Bloodmail Gauntlets
		[3] = { itemID = 14614 }; --Bloodmail Belt
		[4] = { itemID = 14612 }; --Bloodmail Legguards
		[5] = { itemID = 14616 }; --Bloodmail Boots
	};
	{
		Name = AL["Deathbone Guardian"];
		[1] = { itemID = 14624 }; --Deathbone Chestplate
		[2] = { itemID = 14622 }; --Deathbone Gauntlets
		[3] = { itemID = 14620 }; --Deathbone Girdle
		[4] = { itemID = 14623 }; --Deathbone Legguards
		[5] = { itemID = 14621 }; --Deathbone Sabatons
	};
	{
		Name = AL["Major Mojo Infusion"];
		[1] = { itemID = 19898 }; --Seal of Jin
		[2] = { itemID = 19925 }; --Band of Jin
	};
	{
		Name = AL["Overlord's Resolution"];
		[1] = { itemID = 19873 }; --Overlord's Crimson Band
		[2] = { itemID = 19912 }; --Overlord's Onyx Band
	};
	{
		Name = AL["Primal Blessing"];
		[1] = { itemID = 19896 }; --Thekal's Grasp
		[2] = { itemID = 19910 }; --Arlokk's Grasp
	};
	{
		Name = AL["Prayer of the Primal"];
		[1] = { itemID = 19863 }; --Primalist's Seal
		[2] = { itemID = 19920 }; --Primalist's Band
	};
	{
		Name = AL["Zanzil's Concentration"];
		[1] = { itemID = 19905 }; --Zanzil's Band
		[2] = { itemID = 19893 }; --Zanzil's Seal
	};
	{
		Name = AL["The Twin Blades of Hakkari"];
		[1] = { itemID = 19865 }; --Warblade of the Hakkari
		[2] = { itemID = 19866 }; --Warblade of the Hakkari
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
		[2] = { itemID = 19613, desc = "=ds="..BabbleFaction["Exalted"] }; --Pristine Enchanted South Seas Kelp
		[3] = { itemID = 19838, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Haruspex's Tunic
		[4] = { itemID = 19839, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Haruspex's Belt
		[5] = { itemID = 19840, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Haruspex's Bracers
	};
	{
		Name = AL["Predator's Armor"];
		[1] = { itemID = 19953 }; -- =q4=Renataki's Charm of Beasts" 
		[2] = { itemID = 19621, desc = "=ds="..BabbleFaction["Exalted"] }; --Maelstrom's Wrath
		[3] = { itemID = 19831, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Predator's Mantle
		[4] = { itemID = 19832, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Predator's Belt
		[5] = { itemID = 19833, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Predator's Bracers
	};
	{
		Name = AL["Illusionist's Attire"];
		[1] = { itemID = 19959 }; -- =q4=Hazza'rah's Charm of Magic" 
		[2] = { itemID = 19601, desc = "=ds="..BabbleFaction["Exalted"] }; --Jewel of Kajaro
		[3] = { itemID = 20034, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Illusionist's Robe
		[4] = { itemID = 19845, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Illusionist's Mantle
		[5] = { itemID = 19846, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Illusionist's Wraps
	};
	{
		Name = AL["Freethinker's Armor"];
		[1] = { itemID = 19952 }; -- =q4=Gri'lek's Charm of Valor" 
		[2] = { itemID = 19588, desc = "=ds="..BabbleFaction["Exalted"] }; --Hero's Brand
		[3] = { itemID = 19825, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Freethinker's Breastplate
		[4] = { itemID = 19826, desc = "=q4="..AL["Primal Hakkari Shawl"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Freethinker's Belt
		[5] = { itemID = 19827, desc = "=q4="..AL["Primal Hakkari Bindings"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Freethinker's Armguards
	};
	{
		Name = AL["Confessor's Raiment"];
		[1] = { itemID = 19958 }; -- =q4=Hazza'rah's Charm of Healing" 
		[2] = { itemID = 19594, desc = "=ds="..BabbleFaction["Exalted"] }; --The All-Seeing Eye of Zuldazar
		[3] = { itemID = 19841, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Confessor's Mantle
		[4] = { itemID = 19842, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Confessor's Bindings
		[5] = { itemID = 19843, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Confessor's Wraps
	};
	{
		Name = AL["Madcap's Outfit"];
		[1] = { itemID = 19954 }; -- =q4=Renataki's Charm of Trickery" 
		[2] = { itemID = 19617, desc = "=ds="..BabbleFaction["Exalted"] }; --Zandalarian Shadow Mastery Talisman
		[3] = { itemID = 19834, desc = "=q4="..AL["Primal Hakkari Aegis"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Madcap's Tunic
		[4] = { itemID = 19835, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Madcap's Mantle
		[5] = { itemID = 19836, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Madcap's Bracers
	};
	{
		Name = AL["Augur's Regalia"];
		[1] = { itemID = 19956 }; -- =q4=Wushoolay's Charm of Spirits" 
		[2] = { itemID = 19609, desc = "=ds="..BabbleFaction["Exalted"] }; --Unmarred Vision of Voodress
		[3] = { itemID = 19828, desc = "=q4="..AL["Primal Hakkari Tabard"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Augur's Hauberk
		[4] = { itemID = 19829, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Augur's Belt
		[5] = { itemID = 19830, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Augur's Bracers
	};
	{
		Name = AL["Demoniac's Threads"];
		[1] = { itemID = 19957 }; -- =q4=Hazza'rah's Charm of Destruction" 
		[2] = { itemID = 19605, desc = "=ds="..BabbleFaction["Exalted"] }; --Kezan's Unstoppable Taint
		[3] = { itemID = 20033, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Demoniac's Robe
		[4] = { itemID = 19849, desc = "=q4="..AL["Primal Hakkari Sash"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Demoniac's Mantle
		[5] = { itemID = 19848, desc = "=q4="..AL["Primal Hakkari Stanchion"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Demoniac's Wraps
	};
	{
		Name = AL["Vindicator's Battlegear"];
		[1] = { itemID = 19951 }; -- =q4=Gri'lek's Charm of Might" 
		[2] = { itemID = 19577, desc = "=ds="..BabbleFaction["Exalted"] }; --Rage of Mugamba
		[3] = { itemID = 19822, desc = "=q4="..AL["Primal Hakkari Kossack"]..", =ds="..BabbleFaction["Revered"] }; --Zandalar Vindicator's Breastplate
		[4] = { itemID = 19823, desc = "=q4="..AL["Primal Hakkari Girdle"]..", =ds="..BabbleFaction["Honored"] }; --Zandalar Vindicator's Belt
		[5] = { itemID = 19824, desc = "=q4="..AL["Primal Hakkari Armsplint"]..", =ds="..BabbleFaction["Friendly"] }; --Zandalar Vindicator's Armguards
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
		[1] = { itemID = 1506017, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Locket of Unending Life
		[2] = { itemID = 21409, desc = "=q3="..AL["Qiraji Regal Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of Unending Life
		[3] = { itemID = 21408, desc = "=q3="..AL["Qiraji Magisterial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Band of Unending Life
	};
	{
		Name = AL["Trappings of the Unseen Path"];
		[1] = { itemID = 1506018, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Choker of the Unseen Path
		[2] = { itemID = 21403, desc = "=q3="..AL["Qiraji Regal Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of the Unseen Path
		[3] = { itemID = 21402, desc = "=q3="..AL["Qiraji Ceremonial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Signet of the Unseen Path
	};
	{
		Name = AL["Trappings of Vaulted Secrets"];
		[1] = { itemID = 1506021, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Charm of Vaulted Secrets
		[2] = { itemID = 21415, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Drape of Vaulted Secrets
		[3] = { itemID = 21414, desc = "=q3="..AL["Qiraji Magisterial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Band of Vaulted Secrets
	};
	{
		Name = AL["Battlegear of Eternal Justice"];
		[1] = { itemID = 1506020, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Medallion of Eternal Justice
		[2] = { itemID = 21397, desc = "=q3="..AL["Qiraji Regal Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cape of Eternal Justice
		[3] = { itemID = 21396, desc = "=q3="..AL["Qiraji Magisterial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Ring of Eternal Justice
	};
	{
		Name = AL["Finery of Infinite Wisdom"];
		[1] = { itemID = 1506023, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Bayadere of Infinite Wisdom
		[2] = { itemID = 21412, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Shroud of Infinite Wisdom
		[3] = { itemID = 21411, desc = "=q3="..AL["Qiraji Ceremonial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Ring of Infinite Wisdom
	};
	{
		Name = AL["Emblems of Veiled Shadows"];
		[1] = { itemID = 1506021, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Charm of Vaulted Secrets
		[2] = { itemID = 21406, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of Veiled Shadows
		[3] = { itemID = 21405, desc = "=q3="..AL["Qiraji Ceremonial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Band of Veiled Shadows
	};
	{
		Name = AL["Gift of the Gathering Storm"];
		[1] = { itemID = 1506024, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Necklace of the Gathering Storm
		[2] = { itemID = 21400, desc = "=q3="..AL["Qiraji Regal Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of the Gathering Storm
		[3] = { itemID = 21399, desc = "=q3="..AL["Qiraji Magisterial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Ring of the Gathering Storm
	};
	{
		Name = AL["Implements of Unspoken Names"];
		[1] = { itemID = 1506026, desc = "=q4="..AL["Qiraji Ornate Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Bayadere of Unspoken Names
		[2] = { itemID = 21418, desc = "=q3="..AL["Qiraji Regal Drape"]..", =ds="..BabbleFaction["Revered"] }; --Shroud of Unspoken Names
		[3] = { itemID = 21417, desc = "=q3="..AL["Qiraji Ceremonial Ring"]..", =ds="..BabbleFaction["Honored"] }; --Ring of Unspoken Names
	};
	{
		Name = AL["Battlegear of Unyielding Strength"];
		[1] = { itemID = 1506025, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Collar of Unyielding Strength
		[2] = { itemID = 21394, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Drape of Unyielding Strength
		[3] = { itemID = 21393, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Signet of Unyielding Strength
	};
	{
		Name = AL["Keepsakes of Endless Machinations"];
		[1] = { itemID = 1506027, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Choker of Endless Machinations
		[2] = { itemID = 1506028, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Shroud of Endless Machinations
		[3] = { itemID = 1506029, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Loop of Endless Machinations
	};
	{
		Name = AL["Regalia of Roaring Earth"];
		[1] = { itemID = 1506019, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Pendant of Roaring Earth
		[2] = { itemID = 1506031, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Drape of Roaring Earth
		[3] = { itemID = 1506030, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Signet of Roaring Earth
	};
	{
		Name = AL["Relics of Ferocious Vigor"];
		[1] = { itemID = 1506034, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Choker of Ferocious Vigor
		[2] = { itemID = 1506033, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cape of Ferocious Vigor
		[3] = { itemID = 1506032, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Signet of Ferocious Vigor
	};
	{
		Name = AL["Laurels of the Faithful Zealot"];
		[1] = { itemID = 1506037, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Locket of the Faithful Zealot
		[2] = { itemID = 1506036, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Shroud of the Faithful Zealot
		[3] = { itemID = 1506035, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Band of the Faithful Zealot
	};
	{
		Name = AL["Instruments of Masterful Technique"];
		[1] = { itemID = 1506040, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Locket of Masterful Technique
		[2] = { itemID = 1506039, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Drape of Masterful Technique
		[3] = { itemID = 1506038, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Band of Masterful Technique
	};
	{
		Name = AL["Decorations of Martial Prowess"];
		[1] = { itemID = 1506043, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Lariat of Martial Prowess
		[2] = { itemID = 1506042, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of Martial Prowess
		[3] = { itemID = 1506041, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Ring of Martial Prowess
	};
	{
		Name = AL["Trophies of Unrivaled Rage"];
		[1] = { itemID = 1506046, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Collar of Unrivaled Rage
		[2] = { itemID = 1506045, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Cloak of Unrivaled Rage
		[3] = { itemID = 1506044, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Signet of Unrivaled Rage
	};
	{
		Name = AL["Remnants of Expansive Research"];
		[1] = { itemID = 1506049, desc = "=q4="..AL["Qiraji Spiked Hilt"]..", =ds="..BabbleFaction["Exalted"] }; --Bayadere of Expansive Research
		[2] = { itemID = 1506048, desc = "=q3="..AL["Qiraji Martial Drape"]..", =ds="..BabbleFaction["Revered"] }; --Drape of Expansive Research
		[3] = { itemID = 1506047, desc = "=q3="..AL["Qiraji Magisterial Ring"].."=ds=, "..BabbleFaction["Honored"] }; --Loop of Expansive Research
	};
};

-----------------
--- AQ40 Sets ---
-----------------

AtlasLoot_Data["T2.5"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = AL["AQ40 Class Sets"] .." (Tier 2.5)";
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
		Name = AL["Druid"] ..WHITE.." - Tank";
		[1] = { itemID = 1507029 }; -- =q4=Genesis Carapace" 
		[2] = { itemID = 1507025 }; -- =q4=Genesis Mask" 
		[3] = { itemID = 1507028 }; -- =q4=Genesis Pants" 
		[4] = { itemID = 1507026 }; -- =q4=Genesis Shoulderpads" 
		[5] = { itemID = 1507027 }; -- =q4=Genesis Treads" 
	};
	{
		Name = AL["Druid"] ..WHITE.." - Feral";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .." - Tank";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .." - Hybrid";
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
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - Tank";
		[1] = { itemID = 21331 }; -- =q4=Conqueror's Breastplate" 
		[2] = { itemID = 21329 }; -- =q4=Conqueror's Crown" 
		[3] = { itemID = 21332 }; -- =q4=Conqueror's Legguards" 
		[4] = { itemID = 21330 }; -- =q4=Conqueror's Spaulders" 
		[5] = { itemID = 21333 }; -- =q4=Conqueror's Greaves" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - Parry Tank";
		[1] = { itemID = 1507002 }; -- =q4=Conqueror's Carapace" 
		[2] = { itemID = 1507000 }; -- =q4=Conqueror's Tusks" 
		[3] = { itemID = 1507003 }; -- =q4=Conqueror's Tassets" 
		[4] = { itemID = 1507001 }; -- =q4=Conqueror's Shoulderplates" 
		[5] = { itemID = 1507004 }; -- =q4=Conqueror's Advance" 
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .." - DPS";
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
		[1] = { icon = "INV_BannerPVP_02", name = WHITE..BabbleFaction["Alliance"], desc = "=q5="..BabbleFaction["Stormpike Guard"] };
		[2] = { itemID = 19030, price = "50000 #alliance#" }; --Stormpike Battle Charger
		[3] = { itemID = 19045, price = "15000 #alliance#" }; --Stormpike Battle Standard
		[4] = { itemID = 19032, price = "15000 #alliance#" }; --Stormpike Battle Tabard
		[6] = { itemID = 19316, price = "60 #silver# 1 #faction#" }; --Ice Threaded Arrow
		[7] = { itemID = 17348, price = "10 #silver# 8 #faction#" }; --Major Healing Draught
		[8] = { itemID = 17349, price = "5 #silver# 1 #faction#" }; --Superior Healing Draught
		[9] = { itemID = 19301, price = "70 #silver#" }; --Alterac Manna Biscuit
		[10] = { itemID = 19307, price = "80 #silver#" }; --Alterac Heavy Runecloth Bandage
		[16] = { icon = "INV_BannerPVP_01", name = WHITE..BabbleFaction["Horde"], desc = "=q5="..BabbleFaction["Frostwolf Clan"] };
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
	Name = BabbleZone["Arathi Basin"] ..WHITE.." (Alliance)";
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
	Name = BabbleZone["Arathi Basin"] ..WHITE.." (Horde)";
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
	Name = BabbleZone["Warsong Gulch"] ..WHITE.." (Alliance)";
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
	Name = BabbleZone["Warsong Gulch"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16424, price = "9435 #alliance#" }; --Lieutenant Commander's Dragonhide Headguard
		[2] = { itemID = 16423, price = "6885 #alliance#" }; --Lieutenant Commander's Dragonhide Shoulders
		[3] = { itemID = 16421, price = "9435 #alliance#" }; --Knight-Captain's Dragonhide Chestpiece
		[4] = { itemID = 16397, price = "5000 #alliance#" }; --Knight-Lieutenant's Dragonhide Grips
		[5] = { itemID = 16422, price = "9435 #alliance#" }; --Knight-Captain's Dragonhide Leggings
		[6] = { itemID = 16393, price = "5000 #alliance#" }; --Knight-Lieutenant's Dragonhide Treads
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23308, price = "24000 #alliance#" }; --Lieutenant Commander's Dragonhide Headguard
		[2] = { itemID = 23309, price = "14000 #alliance#" }; --Lieutenant Commander's Dragonhide Shoulders
		[3] = { itemID = 23294, price = "24000 #alliance#" }; --Knight-Captain's Dragonhide Chestpiece
		[4] = { itemID = 23280, price = "14000 #alliance#" }; --Knight-Lieutenant's Dragonhide Grips
		[5] = { itemID = 23295, price = "24000 #alliance#" }; --Knight-Captain's Dragonhide Leggings
		[6] = { itemID = 23281, price = "14000 #alliance#" }; --Knight-Lieutenant's Dragonhide Treads
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16451, price = "68200 #alliance#" }; --Field Marshal's Dragonhide Helmet
		[2] = { itemID = 16449, price = "52200 #alliance#" }; --Field Marshal's Dragonhide Spaulders
		[3] = { itemID = 16452, price = "68200 #alliance#" }; --Field Marshal's Dragonhide Breastplate
		[4] = { itemID = 16448, price = "52200 #alliance#" }; --Marshal's Dragonhide Gauntlets
		[5] = { itemID = 16450, price = "68200 #alliance#" }; --Marshal's Dragonhide Legguards
		[6] = { itemID = 16459, price = "52200 #alliance#" }; --Marshal's Dragonhide Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116550, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Helm
		[2] = { itemID = 6116551, price = "1930 #arena# #horde#" }; --Grand Marshal's Chain Spaulders
		[3] = { itemID = 6116549, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Breastplate
		[4] = { itemID = 6116555, price = "1430 #arena# #horde#" }; --Grand Marshal's Chain Grips
		[5] = { itemID = 6116552, price = "2370 #arena# #horde#" }; --Grand Marshal's Chain Legguards
		[6] = { itemID = 6116554, price = "1430 #arena# #horde#" }; --Grand Marshal's Chain Boots
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16503, price = "9435 #horde#" }; --Champion's Dragonhide Headguard
		[2] = { itemID = 16501, price = "6885 #horde#" }; --Champion's Dragonhide Shoulders
		[3] = { itemID = 16504, price = "9435 #horde#" }; --Legionnaire's Dragonhide Chestpiece
		[4] = { itemID = 16496, price = "5000 #horde#" }; --Blood Guard's Dragonhide Grips
		[5] = { itemID = 16502, price = "9435 #horde#" }; --Legionnaire's Dragonhide Leggings
		[6] = { itemID = 16494, price = "5000 #horde#" }; --Blood Guard's Dragonhide Treads
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23253, price = "24000 #horde#" }; --Champion's Dragonhide Headguard
		[2] = { itemID = 23254, price = "14000 #horde#" }; --Champion's Dragonhide Shoulders
		[3] = { itemID = 22877, price = "24000 #horde#" }; --Legionnaire's Dragonhide Chestpiece
		[4] = { itemID = 22863, price = "14000 #horde#" }; --Blood Guard's Dragonhide Grips
		[5] = { itemID = 22878, price = "24000 #horde#" }; --Legionnaire's Dragonhide Leggings
		[6] = { itemID = 22852, price = "14000 #horde#" }; --Blood Guard's Dragonhide Treads
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16550, price = "68200 #horde#" }; --Warlord's Dragonhide Helmet
		[2] = { itemID = 16551, price = "52200 #horde#" }; --Warlord's Dragonhide Epaulets
		[3] = { itemID = 16549, price = "68200 #horde#" }; --Warlord's Dragonhide Hauberk
		[4] = { itemID = 16555, price = "52200 #horde#" }; --General's Dragonhide Gloves
		[5] = { itemID = 16552, price = "68200 #horde#" }; --General's Dragonhide Leggings
		[6] = { itemID = 16554, price = "52200 #horde#" }; --General's Dragonhide Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16428, price = "9435 #alliance#" }; --Lieutenant Commander's Chain Helm
		[2] = { itemID = 16427, price = "6885 #alliance#" }; --Lieutenant Commander's Chain Shoulders
		[3] = { itemID = 16425, price = "9435 #alliance#" }; --Knight-Captain's Chain Hauberk
		[4] = { itemID = 16403, price = "5000 #alliance#" }; --Knight-Lieutenant's Chain Vices
		[5] = { itemID = 16426, price = "9435 #alliance#" }; --Knight-Captain's Chain Legguards
		[6] = { itemID = 16401, price = "5000 #alliance#" }; --Knight-Lieutenant's Chain Greaves
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23306, price = "24000 #alliance#" }; --Lieutenant Commander's Chain Helm
		[2] = { itemID = 23307, price = "14000 #alliance#" }; --Lieutenant Commander's Chain Shoulders
		[3] = { itemID = 23292, price = "24000 #alliance#" }; --Knight-Captain's Chain Hauberk
		[4] = { itemID = 23279, price = "14000 #alliance#" }; --Knight-Lieutenant's Chain Vices
		[5] = { itemID = 23293, price = "24000 #alliance#" }; --Knight-Captain's Chain Legguards
		[6] = { itemID = 23278, price = "14000 #alliance#" }; --Knight-Lieutenant's Chain Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16465, price = "68200 #alliance#" }; --Field Marshal's Chain Helm
		[2] = { itemID = 16468, price = "52200 #alliance#" }; --Field Marshal's Chain Spaulders
		[3] = { itemID = 16466, price = "68200 #alliance#" }; --Field Marshal's Chain Breastplate
		[4] = { itemID = 16463, price = "52200 #alliance#" }; --Marshal's Chain Grips
		[5] = { itemID = 16467, price = "68200 #alliance#" }; --Marshal's Chain Legguards
		[6] = { itemID = 16462, price = "52200 #alliance#" }; --Marshal's Chain Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116465, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Helm
		[2] = { itemID = 6116468, price = "1930 #arena# #alliance#" }; --Grand Marshal's Chain Spaulders
		[3] = { itemID = 6116466, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Breastplate
		[4] = { itemID = 6116463, price = "1430 #arena# #alliance#" }; --Grand Marshal's Chain Grips
		[5] = { itemID = 6116467, price = "2370 #arena# #alliance#" }; --Grand Marshal's Chain Legguards
		[6] = { itemID = 6116462, price = "1430 #arena# #alliance#" }; --Grand Marshal's Chain Boots
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16526, price = "9435 #horde#" }; --Champion's Chain Helm
		[2] = { itemID = 16528, price = "6885 #horde#" }; --Champion's Chain Shoulders
		[3] = { itemID = 16525, price = "9435 #horde#" }; --Legionnaire's Chain Hauberk
		[4] = { itemID = 16530, price = "5000 #horde#" }; --Blood Guard's Chain Vices
		[5] = { itemID = 16527, price = "9435 #horde#" }; --Legionnaire's Chain Legguards
		[6] = { itemID = 16531, price = "5000 #horde#" }; --Blood Guard's Chain Greaves
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23251, price = "24000 #horde#" }; --Champion's Chain Helm
		[2] = { itemID = 23252, price = "14000 #horde#" }; --Champion's Chain Shoulders
		[3] = { itemID = 22874, price = "24000 #horde#" }; --Legionnaire's Chain Hauberk
		[4] = { itemID = 22862, price = "14000 #horde#" }; --Blood Guard's Chain Vices
		[5] = { itemID = 22875, price = "24000 #horde#" }; --Legionnaire's Chain Legguards
		[6] = { itemID = 22843, price = "14000 #horde#" }; --Blood Guard's Chain Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16566, price = "68200 #horde#" }; --Warlord's Chain Helmet
		[2] = { itemID = 16568, price = "52200 #horde#" }; --Warlord's Chain Shoulders
		[3] = { itemID = 16565, price = "68200 #horde#" }; --Warlord's Chain Chestpiece
		[4] = { itemID = 16571, price = "52200 #horde#" }; --General's Chain Gloves
		[5] = { itemID = 16567, price = "68200 #horde#" }; --General's Chain Legguards
		[6] = { itemID = 16569, price = "52200 #horde#" }; --General's Chain Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16416, price = "9435 #alliance#" }; --Lieutenant Commander's Silk Cowl
		[2] = { itemID = 16415, price = "6885 #alliance#" }; --Lieutenant Commander's Silk Mantle
		[3] = { itemID = 16413, price = "9435 #alliance#" }; --Knight-Captain's Silk Tunic
		[4] = { itemID = 16391, price = "5000 #alliance#" }; --Knight-Lieutenant's Silk Handwraps
		[5] = { itemID = 16414, price = "9435 #alliance#" }; --Knight-Captain's Silk Legguards
		[6] = { itemID = 16369, price = "5000 #alliance#" }; --Knight-Lieutenant's Silk Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23318, price = "24000 #alliance#" }; --Lieutenant Commander's Silk Cowl
		[2] = { itemID = 23319, price = "14000 #alliance#" }; --Lieutenant Commander's Silk Mantle
		[3] = { itemID = 23305, price = "24000 #alliance#" }; --Knight-Captain's Silk Tunic
		[4] = { itemID = 23290, price = "14000 #alliance#" }; --Knight-Lieutenant's Silk Handwraps
		[5] = { itemID = 23304, price = "24000 #alliance#" }; --Knight-Captain's Silk Legguards
		[6] = { itemID = 23291, price = "14000 #alliance#" }; --Knight-Lieutenant's Silk Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16441, price = "68200 #alliance#" }; --Field Marshal's Coronet
		[2] = { itemID = 16444, price = "52200 #alliance#" }; --Field Marshal's Silk Spaulders
		[3] = { itemID = 16443, price = "68200 #alliance#" }; --Field Marshal's Silk Vestments
		[4] = { itemID = 16440, price = "52200 #alliance#" }; --Marshal's Silk Gloves
		[5] = { itemID = 16442, price = "68200 #alliance#" }; --Marshal's Silk Leggings
		[6] = { itemID = 16437, price = "52200 #alliance#" }; --Marshal's Silk Footwraps
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116441, price = "2370 #arena# #alliance#" }; --Grand Marshal's Coronet
		[2] = { itemID = 6116444, price = "1930 #arena# #alliance#" }; --Grand Marshal's Silk Spaulders
		[3] = { itemID = 6116443, price = "2370 #arena# #alliance#" }; --Grand Marshal's Silk Vestments
		[4] = { itemID = 6116440, price = "1430 #arena# #alliance#" }; --Grand Marshal's Silk Gloves
		[5] = { itemID = 6116442, price = "2370 #arena# #alliance#" }; --Grand Marshal's Silk Leggings
		[6] = { itemID = 6116437, price = "1430 #arena# #alliance#" }; --Grand Marshal's Silk Footwraps
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16489, price = "9435 #horde#" }; --Champion's Silk Cowl
		[2] = { itemID = 16492, price = "6885 #horde#" }; --Champion's Silk Mantle
		[3] = { itemID = 16491, price = "9435 #horde#" }; --Legionnaire's Silk Tunic
		[4] = { itemID = 16487, price = "5000 #horde#" }; --Blood Guard's Silk Handwraps
		[5] = { itemID = 16490, price = "9435 #horde#" }; --Legionnaire's Silk Legguards
		[6] = { itemID = 16485, price = "5000 #horde#" }; --Blood Guard's Silk Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23263, price = "24000 #horde#" }; --Champion's Silk Cowl
		[2] = { itemID = 23264, price = "14000 #horde#" }; --Champion's Silk Mantle
		[3] = { itemID = 22886, price = "24000 #horde#" }; --Legionnaire's Silk Tunic
		[4] = { itemID = 22870, price = "14000 #horde#" }; --Blood Guard's Silk Handwraps
		[5] = { itemID = 22883, price = "24000 #horde#" }; --Legionnaire's Silk Legguards
		[6] = { itemID = 22860, price = "14000 #horde#" }; --Blood Guard's Silk Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16533, price = "68200 #horde#" }; --Warlord's Silk Cowl
		[2] = { itemID = 16536, price = "52200 #horde#" }; --Warlord's Silk Amice
		[3] = { itemID = 16535, price = "68200 #horde#" }; --Warlord's Silk Raiment
		[4] = { itemID = 16540, price = "52200 #horde#" }; --General's Silk Handguards
		[5] = { itemID = 16534, price = "68200 #horde#" }; --General's Silk Trousers
		[6] = { itemID = 16539, price = "52200 #horde#" }; --General's Silk Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16434, price = "9435 #alliance#" }; --Lieutenant Commander's Lamellar Headguard
		[2] = { itemID = 16436, price = "6885 #alliance#" }; --Lieutenant Commander's Lamellar Shoulders
		[3] = { itemID = 16433, price = "9435 #alliance#" }; --Knight-Captain's Lamellar Breastplate
		[4] = { itemID = 16410, price = "5000 #alliance#" }; --Knight-Lieutenant's Lamellar Gauntlets
		[5] = { itemID = 16435, price = "9435 #alliance#" }; --Knight-Captain's Lamellar Leggings
		[6] = { itemID = 16409, price = "5000 #alliance#" }; --Knight-Lieutenant's Lamellar Sabatons
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23276, price = "24000 #alliance#" }; --Lieutenant Commander's Lamellar Headguard
		[2] = { itemID = 23277, price = "14000 #alliance#" }; --Lieutenant Commander's Lamellar Shoulders
		[3] = { itemID = 23272, price = "24000 #alliance#" }; --Knight-Captain's Lamellar Breastplate
		[4] = { itemID = 23274, price = "14000 #alliance#" }; --Knight-Lieutenant's Lamellar Gauntlets
		[5] = { itemID = 23273, price = "24000 #alliance#" }; --Knight-Captain's Lamellar Leggings
		[6] = { itemID = 23275, price = "14000 #alliance#" }; --Knight-Lieutenant's Lamellar Sabatons
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16474, price = "68200 #alliance#" }; --Field Marshal's Lamellar Faceguard
		[2] = { itemID = 16476, price = "52200 #alliance#" }; --Field Marshal's Lamellar Pauldrons
		[3] = { itemID = 16473, price = "68200 #alliance#" }; --Field Marshal's Lamellar Chestplate
		[4] = { itemID = 16471, price = "52200 #alliance#" }; --Marshal's Lamellar Gloves
		[5] = { itemID = 16475, price = "68200 #alliance#" }; --Marshal's Lamellar Legplates
		[6] = { itemID = 16472, price = "52200 #alliance#" }; --Marshal's Lamellar Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116474, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Faceguard
		[2] = { itemID = 6116476, price = "1930 #arena# #alliance#" }; --Grand Marshal's Lamellar Pauldrons
		[3] = { itemID = 6116473, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Chestplate
		[4] = { itemID = 6116471, price = "1430 #arena# #alliance#" }; --Grand Marshal's Lamellar Gloves
		[5] = { itemID = 6116475, price = "2370 #arena# #alliance#" }; --Grand Marshal's Lamellar Legplates
		[6] = { itemID = 6116472, price = "1430 #arena# #alliance#" }; --Grand Marshal's Lamellar Boots
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 29604, price = "24000 #horde#" }; --Champion's Lamellar Headguard
		[2] = { itemID = 29605, price = "14000 #horde#" }; --Champion's Lamellar Shoulders
		[3] = { itemID = 29602, price = "24000 #horde#" }; --Legionnaire's Lamellar Breastplate
		[4] = { itemID = 29600, price = "14000 #horde#" }; --Blood Guard's Lamellar Gauntlets
		[5] = { itemID = 29603, price = "24000 #horde#" }; --Legionnaire's Lamellar Leggings
		[6] = { itemID = 29601, price = "14000 #horde#" }; --Blood Guard's Lamellar Sabatons
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 29616, price = "68200 #horde#" }; --Warlord's Lamellar Faceguard
		[2] = { itemID = 29617, price = "52200 #horde#" }; --Warlord's Lamellar Pauldrons
		[3] = { itemID = 29615, price = "68200 #horde#" }; --Warlord's Lamellar Chestplate
		[4] = { itemID = 29613, price = "52200 #horde#" }; --General's Lamellar Gloves
		[5] = { itemID = 29614, price = "68200 #horde#" }; --General's Lamellar Legplates
		[6] = { itemID = 29612, price = "52200 #horde#" }; --General's Lamellar Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 17598, price = "9435 #alliance#" }; --Lieutenant Commander's Satin Hood
		[2] = { itemID = 17601, price = "6885 #alliance#" }; --Lieutenant Commander's Satin Mantle
		[3] = { itemID = 17600, price = "9435 #alliance#" }; --Knight-Captain's Satin Tunic
		[4] = { itemID = 17596, price = "5000 #alliance#" }; --Knight-Lieutenant's Satin Handwraps
		[5] = { itemID = 17599, price = "9435 #alliance#" }; --Knight-Captain's Satin Legguards
		[6] = { itemID = 17594, price = "5000 #alliance#" }; --Knight-Lieutenant's Satin Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23316, price = "24000 #alliance#" }; --Lieutenant Commander's Satin Hood
		[2] = { itemID = 23317, price = "14000 #alliance#" }; --Lieutenant Commander's Satin Mantle
		[3] = { itemID = 23303, price = "24000 #alliance#" }; --Knight-Captain's Satin Tunic
		[4] = { itemID = 23288, price = "14000 #alliance#" }; --Knight-Lieutenant's Satin Handwraps
		[5] = { itemID = 23302, price = "24000 #alliance#" }; --Knight-Captain's Satin Legguards
		[6] = { itemID = 23289, price = "14000 #alliance#" }; --Knight-Lieutenant's Satin Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 17602, price = "68200 #alliance#" }; --Field Marshal's Headdress
		[2] = { itemID = 17604, price = "52200 #alliance#" }; --Field Marshal's Satin Mantle
		[3] = { itemID = 17605, price = "68200 #alliance#" }; --Field Marshal's Satin Vestments
		[4] = { itemID = 17608, price = "52200 #alliance#" }; --Marshal's Satin Gloves
		[5] = { itemID = 17603, price = "68200 #alliance#" }; --Marshal's Satin Pants
		[6] = { itemID = 17607, price = "52200 #alliance#" }; --Marshal's Satin Sandals
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6117602, price = "2370 #arena# #alliance#" }; --Grand Marshal's Headdress
		[2] = { itemID = 6117604, price = "1930 #arena# #alliance#" }; --Grand Marshal's Satin Mantle
		[3] = { itemID = 6117605, price = "2370 #arena# #alliance#" }; --Grand Marshal's Satin Vestments
		[4] = { itemID = 6117608, price = "1430 #arena# #alliance#" }; --Grand Marshal's Satin Gloves
		[5] = { itemID = 6117603, price = "2370 #arena# #alliance#" }; --Grand Marshal's Satin Pants
		[6] = { itemID = 6117607, price = "1430 #arena# #alliance#" }; --Grand Marshal's Satin Sandals
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16489, price = "9435 #horde#" }; --Champion's Satin Hood
		[2] = { itemID = 16492, price = "6885 #horde#" }; --Champion's Satin Mantle
		[3] = { itemID = 16491, price = "9435 #horde#" }; --Legionnaire's Satin Tunic
		[4] = { itemID = 16487, price = "5000 #horde#" }; --Blood Guard's Satin Handwraps
		[5] = { itemID = 16490, price = "9435 #horde#" }; --Legionnaire's Satin Legguards
		[6] = { itemID = 16485, price = "5000 #horde#" }; --Blood Guard's Satin Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23261, price = "24000 #horde#" }; --Champion's Satin Hood
		[2] = { itemID = 23262, price = "14000 #horde#" }; --Champion's Satin Mantle
		[3] = { itemID = 22885, price = "24000 #horde#" }; --Legionnaire's Satin Tunic
		[4] = { itemID = 22869, price = "14000 #horde#" }; --Blood Guard's Satin Handwraps
		[5] = { itemID = 22882, price = "24000 #horde#" }; --Legionnaire's Satin Legguards
		[6] = { itemID = 22859, price = "14000 #horde#" }; --Blood Guard's Satin Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 17623, price = "68200 #horde#" }; --Warlord's Satin Cowl
		[2] = { itemID = 17622, price = "52200 #horde#" }; --Warlord's Satin Mantle
		[3] = { itemID = 17624, price = "68200 #horde#" }; --Warlord's Satin Robes
		[4] = { itemID = 17620, price = "52200 #horde#" }; --General's Satin Gloves
		[5] = { itemID = 17625, price = "68200 #horde#" }; --General's Satin Leggings
		[6] = { itemID = 17618, price = "52200 #horde#" }; --General's Satin Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16418, price = "9435 #alliance#" }; --Lieutenant Commander's Leather Helm
		[2] = { itemID = 16420, price = "6885 #alliance#" }; --Lieutenant Commander's Leather Shoulders
		[3] = { itemID = 16417, price = "9435 #alliance#" }; --Knight-Captain's Leather Chestpiece
		[4] = { itemID = 16396, price = "5000 #alliance#" }; --Knight-Lieutenant's Leather Grips
		[5] = { itemID = 16419, price = "9435 #alliance#" }; --Knight-Captain's Leather Legguards
		[6] = { itemID = 16392, price = "5000 #alliance#" }; --Knight-Lieutenant's Leather Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23312, price = "24000 #alliance#" }; --Lieutenant Commander's Leather Helm
		[2] = { itemID = 23313, price = "14000 #alliance#" }; --Lieutenant Commander's Leather Shoulders
		[3] = { itemID = 23298, price = "24000 #alliance#" }; --Knight-Captain's Leather Chestpiece
		[4] = { itemID = 23284, price = "14000 #alliance#" }; --Knight-Lieutenant's Leather Grips
		[5] = { itemID = 23299, price = "24000 #alliance#" }; --Knight-Captain's Leather Legguards
		[6] = { itemID = 23285, price = "14000 #alliance#" }; --Knight-Lieutenant's Leather Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16455, price = "68200 #alliance#" }; --Field Marshal's Leather Mask
		[2] = { itemID = 16457, price = "52200 #alliance#" }; --Field Marshal's Leather Epaulets
		[3] = { itemID = 16453, price = "68200 #alliance#" }; --Field Marshal's Leather Chestpiece
		[4] = { itemID = 16454, price = "52200 #alliance#" }; --Marshal's Leather Handgrips
		[5] = { itemID = 16456, price = "68200 #alliance#" }; --Marshal's Leather Leggings
		[6] = { itemID = 16446, price = "52200 #alliance#" }; --Marshal's Leather Footguards
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116455, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Mask
		[2] = { itemID = 6116457, price = "1930 #arena# #alliance#" }; --Grand Marshal's Leather Epaulets
		[3] = { itemID = 6116453, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Chestpiece
		[4] = { itemID = 6116454, price = "1430 #arena# #alliance#" }; --Grand Marshal's Leather Handgrips
		[5] = { itemID = 6116456, price = "2370 #arena# #alliance#" }; --Grand Marshal's Leather Leggings
		[6] = { itemID = 6116446, price = "1430 #arena# #alliance#" }; --Grand Marshal's Leather Footguards
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16506, price = "9435 #horde#" }; --Champion's Leather Helm
		[2] = { itemID = 16507, price = "6885 #horde#" }; --Champion's Leather Shoulders
		[3] = { itemID = 16505, price = "9435 #horde#" }; --Legionnaire's Leather Chestpiece
		[4] = { itemID = 16499, price = "5000 #horde#" }; --Blood Guard's Leather Grips
		[5] = { itemID = 16508, price = "9435 #horde#" }; --Legionnaire's Leather Legguards
		[6] = { itemID = 16498, price = "5000 #horde#" }; --Blood Guard's Leather Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23257, price = "24000 #horde#" }; --Champion's Leather Helm
		[2] = { itemID = 23258, price = "14000 #horde#" }; --Champion's Leather Shoulders
		[3] = { itemID = 22879, price = "24000 #horde#" }; --Legionnaire's Leather Chestpiece
		[4] = { itemID = 22864, price = "14000 #horde#" }; --Blood Guard's Leather Grips
		[5] = { itemID = 22880, price = "24000 #horde#" }; --Legionnaire's Leather Legguards
		[6] = { itemID = 22856, price = "14000 #horde#" }; --Blood Guard's Leather Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16561, price = "68200 #horde#" }; --Warlord's Leather Helm
		[2] = { itemID = 16562, price = "52200 #horde#" }; --Warlord's Leather Spaulders
		[3] = { itemID = 16563, price = "68200 #horde#" }; --Warlord's Leather Breastplate
		[4] = { itemID = 16560, price = "52200 #horde#" }; --General's Leather Mitts
		[5] = { itemID = 16564, price = "68200 #horde#" }; --General's Leather Legguards
		[6] = { itemID = 16558, price = "52200 #horde#" }; --General's Leather Treads
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 29598, price = "24000 #alliance#" }; --Lieutenant Commander's Mail Headguard
		[2] = { itemID = 29599, price = "14000 #alliance#" }; --Lieutenant Commander's Mail Pauldrons
		[3] = { itemID = 29596, price = "24000 #alliance#" }; --Knight-Captain's Mail Hauberk
		[4] = { itemID = 29595, price = "14000 #alliance#" }; --Knight-Lieutenant's Mail Vices
		[5] = { itemID = 29597, price = "24000 #alliance#" }; --Knight-Captain's Mail Legguards
		[6] = { itemID = 29594, price = "14000 #alliance#" }; --Knight-Lieutenant's Mail Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 29610, price = "68200 #alliance#" }; --Field Marshal's Mail Helm
		[2] = { itemID = 29611, price = "52200 #alliance#" }; --Field Marshal's Mail Spaulders
		[3] = { itemID = 29609, price = "68200 #alliance#" }; --Field Marshal's Mail Armor
		[4] = { itemID = 29607, price = "52200 #alliance#" }; --Marshal's Mail Gauntlets
		[5] = { itemID = 29608, price = "68200 #alliance#" }; --Marshal's Mail Leggings
		[6] = { itemID = 29606, price = "52200 #alliance#" }; --Marshal's Mail Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6129610, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Helm
		[2] = { itemID = 6129611, price = "1930 #arena# #alliance#" }; --Grand Marshal's Mail Spaulders
		[3] = { itemID = 6129609, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Armor
		[4] = { itemID = 6129607, price = "1430 #arena# #alliance#" }; --Grand Marshal's Mail Gauntlets
		[5] = { itemID = 6129608, price = "2370 #arena# #alliance#" }; --Grand Marshal's Mail Leggings
		[6] = { itemID = 6129606, price = "1430 #arena# #alliance#" }; --Grand Marshal's Mail Boots
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16521, price = "9435 #horde#" }; --Champion's Mail Headguard
		[2] = { itemID = 16524, price = "6885 #horde#" }; --Champion's Mail Pauldrons
		[3] = { itemID = 16522, price = "9435 #horde#" }; --Legionnaire's Mail Hauberk
		[4] = { itemID = 16519, price = "5000 #horde#" }; --Blood Guard's Mail Vices
		[5] = { itemID = 16523, price = "9435 #horde#" }; --Legionnaire's Mail Legguards
		[6] = { itemID = 16518, price = "5000 #horde#" }; --Blood Guard's Mail Greaves
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23259, price = "24000 #horde#" }; --Champion's Mail Headguard
		[2] = { itemID = 23260, price = "14000 #horde#" }; --Champion's Mail Pauldrons
		[3] = { itemID = 22876, price = "24000 #horde#" }; --Legionnaire's Mail Hauberk
		[4] = { itemID = 22867, price = "14000 #horde#" }; --Blood Guard's Mail Vices
		[5] = { itemID = 22887, price = "24000 #horde#" }; --Legionnaire's Mail Legguards
		[6] = { itemID = 22857, price = "14000 #horde#" }; --Blood Guard's Mail Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16578, price = "68200 #horde#" }; --Warlord's Mail Helm
		[2] = { itemID = 16580, price = "52200 #horde#" }; --Warlord's Mail Spaulders
		[3] = { itemID = 16577, price = "68200 #horde#" }; --Warlord's Mail Armor
		[4] = { itemID = 16574, price = "52200 #horde#" }; --General's Mail Gauntlets
		[5] = { itemID = 16579, price = "68200 #horde#" }; --General's Mail Leggings
		[6] = { itemID = 16573, price = "52200 #horde#" }; --General's Mail Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 17566, price = "9435 #alliance#" }; --Lieutenant Commander's Dreadweave Cowl
		[2] = { itemID = 17569, price = "6885 #alliance#" }; --Lieutenant Commander's Dreadweave Spaulders
		[3] = { itemID = 17568, price = "9435 #alliance#" }; --Knight-Captain's Dreadweave Tunic
		[4] = { itemID = 17564, price = "5000 #alliance#" }; --Knight-Lieutenant's Dreadweave Handwraps
		[5] = { itemID = 17567, price = "9435 #alliance#" }; --Knight-Captain's Dreadweave Legguards
		[6] = { itemID = 17562, price = "5000 #alliance#" }; --Knight-Lieutenant's Dreadweave Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23310, price = "24000 #alliance#" }; --Lieutenant Commander's Dreadweave Cowl
		[2] = { itemID = 23311, price = "14000 #alliance#" }; --Lieutenant Commander's Dreadweave Spaulders
		[3] = { itemID = 23297, price = "24000 #alliance#" }; --Knight-Captain's Dreadweave Tunic
		[4] = { itemID = 23282, price = "14000 #alliance#" }; --Knight-Lieutenant's Dreadweave Handwraps
		[5] = { itemID = 23296, price = "24000 #alliance#" }; --Knight-Captain's Dreadweave Legguards
		[6] = { itemID = 23283, price = "14000 #alliance#" }; --Knight-Lieutenant's Dreadweave Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6117578, price = "2370 #arena# #alliance#" }; --Grand Marshal's Coronal
		[2] = { itemID = 6117580, price = "1930 #arena# #alliance#" }; --Grand Marshal's Dreadweave Shoulders
		[3] = { itemID = 6117581, price = "2370 #arena# #alliance#" }; --Grand Marshal's Dreadweave Robe
		[4] = { itemID = 6117584, price = "1430 #arena# #alliance#" }; --Grand Marshal's Dreadweave Gloves
		[5] = { itemID = 6117579, price = "2370 #arena# #alliance#" }; --Grand Marshal's Dreadweave Leggings
		[6] = { itemID = 6117583, price = "1430 #arena# #alliance#" }; --Grand Marshal's Dreadweave Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 17578, price = "68200 #alliance#" }; --Field Marshal's Coronal
		[2] = { itemID = 17580, price = "52200 #alliance#" }; --Field Marshal's Dreadweave Shoulders
		[3] = { itemID = 17581, price = "68200 #alliance#" }; --Field Marshal's Dreadweave Robe
		[4] = { itemID = 17584, price = "52200 #alliance#" }; --Marshal's Dreadweave Gloves
		[5] = { itemID = 17579, price = "68200 #alliance#" }; --Marshal's Dreadweave Leggings
		[6] = { itemID = 17583, price = "52200 #alliance#" }; --Marshal's Dreadweave Boots
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 17570, price = "9435 #horde#" }; --Champion's Dreadweave Cowl
		[2] = { itemID = 17573, price = "6885 #horde#" }; --Champion's Dreadweave Spaulders
		[3] = { itemID = 17572, price = "9435 #horde#" }; --Legionnaire's Dreadweave Tunic
		[4] = { itemID = 17577, price = "5000 #horde#" }; --Blood Guard's Dreadweave Handwraps
		[5] = { itemID = 17571, price = "9435 #horde#" }; --Legionnaire's Dreadweave Legguards
		[6] = { itemID = 17576, price = "5000 #horde#" }; --Blood Guard's Dreadweave Walkers
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23255, price = "24000 #horde#" }; --Champion's Dreadweave Cowl
		[2] = { itemID = 23256, price = "14000 #horde#" }; --Champion's Dreadweave Spaulders
		[3] = { itemID = 22884, price = "24000 #horde#" }; --Legionnaire's Dreadweave Tunic
		[4] = { itemID = 22865, price = "14000 #horde#" }; --Blood Guard's Dreadweave Handwraps
		[5] = { itemID = 22881, price = "24000 #horde#" }; --Legionnaire's Dreadweave Legguards
		[6] = { itemID = 22855, price = "14000 #horde#" }; --Blood Guard's Dreadweave Walkers
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 17591, price = "68200 #horde#" }; --Warlord's Dreadweave Hood
		[2] = { itemID = 17590, price = "52200 #horde#" }; --Warlord's Dreadweave Mantle
		[3] = { itemID = 17592, price = "68200 #horde#" }; --Warlord's Dreadweave Robe
		[4] = { itemID = 17588, price = "52200 #horde#" }; --General's Dreadweave Gloves
		[5] = { itemID = 17593, price = "68200 #horde#" }; --General's Dreadweave Pants
		[6] = { itemID = 17586, price = "52200 #horde#" }; --General's Dreadweave Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = AL["Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16429, price = "9435 #alliance#" }; --Lieutenant Commander's Plate Helm
		[2] = { itemID = 16432, price = "6885 #alliance#" }; --Lieutenant Commander's Plate Shoulders
		[3] = { itemID = 16430, price = "9435 #alliance#" }; --Knight-Captain's Plate Hauberk
		[4] = { itemID = 16406, price = "5000 #alliance#" }; --Knight-Lieutenant's Plate Gauntlets
		[5] = { itemID = 16431, price = "9435 #alliance#" }; --Knight-Captain's Plate Leggings
		[6] = { itemID = 16405, price = "5000 #alliance#" }; --Knight-Lieutenant's Plate Greaves
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 23314, price = "24000 #alliance#" }; --Lieutenant Commander's Plate Helm
		[2] = { itemID = 23315, price = "14000 #alliance#" }; --Lieutenant Commander's Plate Shoulders
		[3] = { itemID = 23300, price = "24000 #alliance#" }; --Knight-Captain's Plate Hauberk
		[4] = { itemID = 23286, price = "14000 #alliance#" }; --Knight-Lieutenant's Plate Gauntlets
		[5] = { itemID = 23301, price = "24000 #alliance#" }; --Knight-Captain's Plate Leggings
		[6] = { itemID = 23287, price = "14000 #alliance#" }; --Knight-Lieutenant's Plate Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 16478, price = "68200 #alliance#" }; --Field Marshal's Plate Helm
		[2] = { itemID = 16480, price = "52200 #alliance#" }; --Field Marshal's Plate Shoulderguards
		[3] = { itemID = 16477, price = "68200 #alliance#" }; --Field Marshal's Plate Armor
		[4] = { itemID = 16484, price = "52200 #alliance#" }; --Marshal's Plate Gauntlets
		[5] = { itemID = 16479, price = "68200 #alliance#" }; --Marshal's Plate Legguards
		[6] = { itemID = 16483, price = "52200 #alliance#" }; --Marshal's Plate Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Alliance)";
		[1] = { itemID = 6116478, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Helm
		[2] = { itemID = 6116480, price = "1930 #arena# #alliance#" }; --Grand Marshal's Plate Shoulderguards
		[3] = { itemID = 6116477, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Armor
		[4] = { itemID = 6116484, price = "1430 #arena# #alliance#" }; --Grand Marshal's Plate Gauntlets
		[5] = { itemID = 6116479, price = "2370 #arena# #alliance#" }; --Grand Marshal's Plate Legguards
		[6] = { itemID = 6116483, price = "1430 #arena# #alliance#" }; --Grand Marshal's Plate Boots
	};
	{
		Name = AL["Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16514, price = "9435 #horde#" }; --Champion's Plate Helm
		[2] = { itemID = 16516, price = "6885 #horde#" }; --Champion's Plate Shoulders
		[3] = { itemID = 16513, price = "9435 #horde#" }; --Legionnaire's Plate Hauberk
		[4] = { itemID = 16510, price = "5000 #horde#" }; --Blood Guard's Plate Gauntlets
		[5] = { itemID = 16515, price = "9435 #horde#" }; --Legionnaire's Plate Leggings
		[6] = { itemID = 16509, price = "5000 #horde#" }; --Blood Guard's Plate Greaves
	};
	{
		Name = AL["Superior Rare Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 23244, price = "24000 #horde#" }; --Champion's Plate Helm
		[2] = { itemID = 23243, price = "14000 #horde#" }; --Champion's Plate Shoulders
		[3] = { itemID = 22872, price = "24000 #horde#" }; --Legionnaire's Plate Hauberk
		[4] = { itemID = 22868, price = "14000 #horde#" }; --Blood Guard's Plate Gauntlets
		[5] = { itemID = 22873, price = "24000 #horde#" }; --Legionnaire's Plate Leggings
		[6] = { itemID = 22858, price = "14000 #horde#" }; --Blood Guard's Plate Greaves
	};
	{
		Name = AL["Epic Set"] ..WHITE.." (Horde)";
		[1] = { itemID = 16542, price = "68200 #horde#" }; --Warlord's Plate Headpiece
		[2] = { itemID = 16544, price = "52200 #horde#" }; --Warlord's Plate Shoulders
		[3] = { itemID = 16541, price = "68200 #horde#" }; --Warlord's Plate Armor
		[4] = { itemID = 16548, price = "52200 #horde#" }; --General's Plate Gauntlets
		[5] = { itemID = 16543, price = "68200 #horde#" }; --General's Plate Leggings
		[6] = { itemID = 16545, price = "52200 #horde#" }; --General's Plate Boots
	};
	{
		Name = AL["Superior Epic Set"] ..WHITE.." (Horde)";
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
		Name = BabbleFaction["The League of Arathor"] .." (" ..BabbleFaction["Alliance"] ..")";
		[1] = { itemID = 20132}; --Arathor Battle Tabard
	};
	{
		Name = BabbleFaction["The Defilers"] .." (" ..BabbleFaction["Horde"] ..")";
		[1] = { itemID = 20131}; --Battle Tabard of the Defilers
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
		[1] = { icon = "INV_Helmet_66", name = WHITE..BabbleFaction["Neutral"] };
		[2] = { itemID = 22742}; --Bloodsail Shirt
		[3] = { itemID = 22743}; --Bloodsail Sash
		[4] = { itemID = 22745}; --Bloodsail Pants
		[5] = { itemID = 22744}; --Bloodsail Boots
		[7] = { icon = "INV_Helmet_66", name = WHITE..BabbleFaction["Friendly"] };
		[8] = { itemID = 12185}; --Bloodsail Admiral's Hat
	};
};

AtlasLoot_Data["Hydraxian"] = {
	Module = "AtlasLoot_OriginalWoW";
	Name = BabbleFaction["Hydraxian Waterlords"];
	{
		Name = BabbleFaction["Hydraxian Waterlords"];
		[1] = { icon = "Spell_Frost_SummonWaterElemental_2", name = WHITE..BabbleFaction["Honored"] };
		[2] = { itemID = 18399}; --Ocean's Breeze 
		[3] = { itemID = 18398}; --Tidal Loop 
		[4] = { itemID = 17333}; --Aqual Quintessence
		[16] = { icon = "Spell_Frost_SummonWaterElemental_2", name = WHITE..BabbleFaction["Revered"] };
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
		[1] = { icon = "INV_Jewelry_Ring_40", name = WHITE..AL["Path of the Conqueror"] };
		[2] = { itemID = 21201}; --Signet Ring of the Bronze Dragonflight
		[3] = { itemID = 21202}; --Signet Ring of the Bronze Dragonflight
		[4] = { itemID = 21203}; --Signet Ring of the Bronze Dragonflight
		[5] = { itemID = 21204}; --Signet Ring of the Bronze Dragonflight
		[6] = { itemID = 21205}; --Signet Ring of the Bronze Dragonflight
		[8] = { icon = "INV_Jewelry_Ring_40", name = WHITE..AL["Path of the Invoker"] };
		[9] = { itemID = 21206}; --Signet Ring of the Bronze Dragonflight
		[10] = { itemID = 21207}; --Signet Ring of the Bronze Dragonflight
		[11] = { itemID = 21208}; --Signet Ring of the Bronze Dragonflight
		[12] = { itemID = 21209}; --Signet Ring of the Bronze Dragonflight
		[13] = { itemID = 21210}; --Signet Ring of the Bronze Dragonflight
		[16] = { icon = "INV_Jewelry_Ring_40", name = WHITE..AL["Path of the Protector"] };
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
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 22209}; --Plans: Heavy Obsidian Belt
		[2] = { itemID = 22768}; --Plans: Ironvine Belt
		[3] = { itemID = 20732}; --Formula: Enchant Cloak - Greater Fire Resistance
		[4] = { itemID = 22769}; --Pattern: Bramblewood Belt
		[5] = { itemID = 20509}; --Pattern: Sandstalker Bracers
		[6] = { itemID = 20506}; --Pattern: Spitfire Bracers
		[7] = { itemID = 22772}; --Pattern: Sylvan Shoulders
		[8] = { itemID = 22310}; --Pattern: Cenarion Herb Bag
		[16] = { icon = "INV_QirajIdol_Amber", name = WHITE..AL["Token Hand-Ins"] };
		[17] = { itemID = 21187}; --Earthweave Cloak
		[18] = { itemID = 21178}; --Gloves of Earthen Power
		[19] = { itemID = 21179}; --Band of Earthen Wrath
		[21] = { itemID = 20802}; --Cenarion Combat Badge
		[22] = { itemID = 20800}; --Cenarion Logistics Badge
		[23] = { itemID = 20801}; --Cenarion Tactical Badge
		[24] = { itemID = 21508}; --Mark of Cenarius
		[25] = { itemID = 21515}; --Mark of Remulos
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 22767}; --Plans: Ironvine Gloves
		[2] = { itemID = 22214}; --Plans: Light Obsidian Belt
		[3] = { itemID = 20733}; --Formula: Enchant Cloak - Greater Nature Resistance
		[4] = { itemID = 22770}; --Pattern: Bramblewood Boots
		[5] = { itemID = 20510}; --Pattern: Sandstalker Gauntlets
		[6] = { itemID = 20507}; --Pattern: Spitfire Gauntlets
		[7] = { itemID = 22773}; --Pattern: Sylvan Crown
		[16] = { icon = "INV_QirajIdol_Amber", name = WHITE..AL["Token Hand-Ins"] };
		[17] = { itemID = 21183}; --Earthpower Vest
		[18] = { itemID = 21182}; --Band of Earthen Might
		[19] = { itemID = 21181}; --Grace of Earth
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 22766}; --Plans: Ironvine Breastplate
		[2] = { itemID = 22219}; --Plans: Jagged Obsidian Shield
		[3] = { itemID = 22771}; --Pattern: Bramblewood Helm
		[4] = { itemID = 20511}; --Pattern: Sandstalker Breastplate
		[5] = { itemID = 20508}; --Pattern: Spitfire Breastplate
		[6] = { itemID = 22683}; --Pattern: Gaea's Embrace
		[7] = { itemID = 22312}; --Pattern: Satchel of Cenarius
		[8] = { itemID = 22774}; --Pattern: Sylvan Vest
		[16] = { icon = "INV_QirajIdol_Amber", name = WHITE..AL["Token Hand-Ins"] };
		[17] = { itemID = 21186}; --Rockfury Bracers
		[18] = { itemID = 21184}; --Deeprock Bracers
		[19] = { itemID = 21189}; --Might of Cenarius
		[20] = { itemID = 21185}; --Earthcalm Orb
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 22221}; --Plans: Obsidian Mail Tunic
		[2] = { itemID = 20382}; --Pattern: Dreamscale Breastplate
		[16] = { icon = "INV_QirajIdol_Amber", name = WHITE..AL["Token Hand-Ins"] };
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
		Name = BabbleFaction["Stormpike Guard"] .." (" ..BabbleFaction["Alliance"] ..")";
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
		Name = BabbleFaction["Frostwolf Clan"] .." (" ..BabbleFaction["Horde"] ..")";
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
		[1] = { icon = "INV_Misc_Horn_01", name = WHITE..BabbleFaction["Friendly"] };
		[2] = { itemID = 13484}; --Recipe: Transmute Earth to Water
		[3] = { itemID = 22392}; --Formula: Enchant 2H Weapon - Agility
		[4] = { itemID = 20254}; --Pattern: Warbear Woolies
		[5] = { itemID = 20253}; --Pattern: Warbear Harness
		[7] = { icon = "INV_Misc_Horn_01", name = WHITE..BabbleFaction["Honored"] };
		[8] = { itemID = 16768}; --Furbolg Medicine Pouch
		[9] = { itemID = 16769}; --Furbolg Medicine Totem
		[10] = { itemID = 19202}; --Plans: Heavy Timbermaw Belt
		[11] = { itemID = 19445}; --Formula: Enchant Weapon - Agility
		[12] = { itemID = 19326}; --Pattern: Might of the Timbermaw
		[13] = { itemID = 19215}; --Pattern: Wisdom of the Timbermaw
		[16] = { icon = "INV_Misc_Horn_01", name = WHITE..BabbleFaction["Revered"] };
		[17] = { itemID = 19204}; --Plans: Heavy Timbermaw Boots
		[18] = { itemID = 19327}; --Pattern: Timbermaw Brawlers
		[19] = { itemID = 19218}; --Pattern: Mantle of the Timbermaw
		[22] = { icon = "INV_Misc_Horn_01", name = WHITE..BabbleFaction["Exalted"] };
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
		[1] = { itemID = 20012}; --Recipe: Greater Dreamless Sleep
		[2] = { itemID = 19778}; --Plans: Bloodsoul Gauntlets
		[3] = { itemID = 19781}; --Plans: Darksoul Shoulders
		[4] = { itemID = 20757}; --Formula: Brilliant Mana Oil
		[5] = { itemID = 20001}; --Schematic: Bloodvine Lens
		[6] = { itemID = 19771}; --Pattern: Primal Batskin Bracers
		[7] = { itemID = 19766}; --Pattern: Bloodvine Boots
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
		[1] = { itemID = 20581 }; --Staff of Rampant Growth
		[2] = { itemID = 17070 }; --Fang of the Mystics
		[3] = {itemID = 19130 }; --Cold Snap
		[4] = { itemID = 17113 }; --Amberseal Keeper
		[5] = {itemID = 20636 }; --Hibernation Crystal
		[6] = { itemID = 20582 }; --Trance Stone
		[7] = {itemID = 18665 }; --The Eye of Shadow
		[14] = { itemID = 18704 }; --Mature Blue Dragon Sinew
		[15] = {itemID = 18714 }; --Ancient Sinew Wrapped Lamina
		[16] = { itemID = 20580 }; --Hammer of Bestial Fury
		[17] = { itemID = 20599 }; --Polished Ironwood Crossbow
		[18] = { itemID = 18202 }; --Eskhandar's Left Claw
		[19] = {itemID = 20577 }; --Nightmare Blade
		[20] = { itemID = 20578 }; --Emerald Dragonfang
		[21] = {itemID = 17112 }; --Empyrean Demolisher
		[22] = { itemID = 18542 }; --Typhoon
		[29] = { itemID = 20644 }; --Nightmare Engulfed Object
		[30] = { itemID = 20600 }; --Malfurion's Signet Ring
	};
	{
		Name = "Physical Gear";
		[1] = { itemID = 20623 }; --Circlet of Restless Dreams
		[3] = { itemID = 20615 }; --Dragonspur Wraps
		[4] = {itemID = 122884 }; --Wristguards of the Shifting Sands
		[6] = {itemID = 122885 }; --Waistguard of the Shifting Sands
		[8] = { itemID = 18544 }; --Doomhide Gauntlets
		[10] = { itemID = 20627 }; --Dark Heart Pants
		[13] = { itemID = 20633 }; --Unnatural Leather Spaulders
		[11] = { itemID = 20617 }; --Ancient Corroded Leggings
		[16] = {itemID = 20624 }; --Ring of the Unliving
		[18] = {itemID = 20622 }; --Dragonheart Necklace
		[20] = {itemID = 18541 }; --Puissant Cape
		[21] = { itemID = 18204 }; --Eskhandar's Pelt
	};
	{
		Name = "Caster Gear";
		[1] = {itemID = 19132 }; --Crystal Adorned Crown
		[2] = { itemID = 18546 }; --Infernal Headcage
		[3] = { itemID = 20628 }; --Deviate Growth Cap
		[5] = { itemID = 18545 }; --Leggings of Arcane Supremacy
		[6] = { itemID = 19133 }; --Fel Infused Leggings
		[7] = { itemID = 20638 }; --Leggings of the Demented Mind
		[8] = { itemID = 20639 }; --Strangely Glyphed Legplates
		[10] = { itemID = 19131 }; --Snowblind Shoes
		[11] = { itemID = 20631 }; --Mendicant's Slippers
		[12] = { itemID = 20634 }; --Boots of Fright
		[13] = { itemID = 20621 }; --Boots of the Endless Moor
		[14] = { itemID = 20629 }; --Malignant Footguards
		[16] = { itemID = 20630 }; --Gauntlets of the Shining Light
		[17] = { itemID = 20618 }; --Gloves of Delusional Power
		[15] = { itemID = 20635 }; --Jade Inlaid Vestments
		[19] = { itemID = 19135 }; --Blacklight Bracer
		[20] = {itemID = 122886 }; --Bracers of the Sand Prince
		[21] = { itemID = 20626 }; --Black Bark Wristbands
		[23] = {itemID = 122887 }; --Belt of the Sand Prince
		[24] = { itemID = 19134 }; --Flayed Doomguard Belt
		[25] = { itemID = 20625 }; --Belt of the Dark Bog
		[27] = { itemID = 20579 }; --Green Dragonskin Cloak
		[28] = {itemID = 18208 }; --Drape of Benediction
		[29] = {itemID = 20632 }; --Mindtear Band
		[30] = {itemID = 18543 }; --Ring of Entropy
	};
	{
		Name = "Tank Gear";
		[1] = { itemID = 18547 }; --Unmelting Ice Girdle
		[3] = { itemID = 20616 }; --Dragonbone Wristguards
		[5] = { itemID = 20619 }; --Acid Inscribed Greaves
		[7] = { itemID = 20637 }; --Acid Inscribed Pauldrons
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