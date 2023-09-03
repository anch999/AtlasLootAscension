local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0");
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0");

-- Index
--- Dungeons & BCRaids
---- Keys
---- Auchindoun: Auchenai Crypts
---- Auchindoun: Mana-Tombs
---- Auchindoun: Sethekk Halls
---- Auchindoun: Shadow Labyrinth
---- Black Temple
---- Caverns of Time: Old Hillsbrad Foothills
---- Caverns of Time: The Black Morass
---- Caverns of Time: Hyjal Summit
---- Coilfang Reservoir: The Slave Pens
---- Coilfang Reservoir: The Steamvault
---- Coilfang Reservoir: The Underbog
---- Coilfang Reservoir: Serpentshrine Cavern
---- Gruul's Lair
---- Hellfire Citadel: Hellfire Ramparts
---- Hellfire Citadel: The Blood Furnace
---- Hellfire Citadel: The Shattered Halls
---- Hellfire Citadel: Magtheridon's Lair
---- Karazhan
---- Sunwell Isle: Magister's Terrace
---- Sunwell Isle: Sunwell Plateau
---- Tempest Keep: The Arcatraz
---- Tempest Keep: The Botanica
---- Tempest Keep: The Mechanar
---- Tempest Keep: The Eye
---- Zul'Aman
--- Factions
---- Ashtongue Deathsworn
---- Cenarion Expedition
---- Honor Hold
---- Keepers of Time
---- Kurenai
---- Lower City
---- Netherwing
---- Ogri'la
---- Sha'tari Skyguard
---- Shattered Sun Offensive
---- Sporeggar
---- The Aldor
---- The Consortium
---- The Mag'har
---- The Scale of the Sands
---- The Scryers
---- The Sha'tar
---- The Violet Eye
---- Thrallmar
---- Tranquillien
---- Misc
--- PvP
---- World PvP - Hellfire Peninsula: Hellfire Fortifications
---- World PvP - Nagrand: Halaa
---- World PvP - Terokkar Forest: Bone Wastes
---- World PvP - Zangarmarsh: Twin Spire Ruins
---- Rep-PvP Level 70 - Armor Sets
---- PvP Level 70 - Accessories
---- PvP Level 70 - Non Set Epics
---- Arena - Armor Sets
---- Arena Season 2 - Weapons
---- Arena Season 3 - Weapons
---- Arena Season 4 - Weapons
--- Sets & Collections
---- Dungeon 3 Sets (D3)
---- Tier 4/Tier 5/Tier 6
---- The Burning Crusade Sets
---- Badge of Justice Rewards
---- BoE World Epics
--- World Bosses


-- The scale of the sand rep rings
local scaleOfSandsRings = {
	Name = "Rings";
	[1] = { itemID = 29298, desc = "Band of Eternity"  };
	[2] = { itemID = 29299, desc = "Band of Eternity"  };
	[3] = { itemID = 29300, desc = "Band of Eternity"  };
	[4] = { itemID = 29301, desc = "Band of the Eternal Champion"  };
	[6] = { itemID = 29294, desc = "Band of Eternity"  };
	[7] = { itemID = 29295, desc = "Band of Eternity"  };
	[8] = { itemID = 29296, desc = "Band of Eternity"  };
	[9] = { itemID = 29297, desc = "Band of the Eternal Defender"  };
	[11] = { itemID = 15037, desc = "Band of Eternity"  };
	[12] = { itemID = 15038, desc = "Band of Eternity"  };
	[13] = { itemID = 15039, desc = "Band of Eternity"  };
	[14] = { itemID = 15040, desc = "Flawless Band of the Eternal Assassin"  };
	[16] = { itemID = 29302, desc = "Band of Eternity"  };
	[17] = { itemID = 29303, desc = "Band of Eternity"  };
	[18] = { itemID = 29304, desc = "Band of Eternity"  };
	[19] = { itemID = 29305, desc = "Band of the Eternal Sage"  };
	[21] = { itemID = 29307, desc = "Band of Eternity"  };
	[22] = { itemID = 29306, desc = "Band of Eternity"  };
	[23] = { itemID = 29308, desc = "Band of Eternity"  };
	[24] = { itemID = 29309, desc = "Band of the Eternal Restorer"  };
};

------------------------
--- Dungeons & BCRaids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["BCKeys"] = {
	Name = "BCKeys";
	{
		Name = "BCKeys";
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 27991, desc = "=ds=#e9#"  }; --Shadow Labyrinth Key
		[3] = { itemID = 28395, desc = "=ds=#e9#"  }; --Shattered Halls Key
		[4] = { itemID = 31084, desc = "=ds=#e9#"  }; --Key to the Arcatraz
		[6] = { icon = "INV_Box_01", name = "#j27#" };
		[7] = { itemID = 30622, desc = "=ds=#e9# =ec1=#m7#"  }; --Flamewrought Key
		[8] = { itemID = 30637, desc = "=ds=#e9# =ec1=#m6#"  }; --Flamewrought Key
		[9] = { itemID = 30623, desc = "=ds=#e9#"  }; --Reservoir Key
		[10] = { itemID = 30633, desc = "=ds=#e9#"  }; --Auchenai Key
		[11] = { itemID = 30635, desc = "=ds=#e9#"  }; --Key of Time
		[12] = { itemID = 30634, desc = "=ds=#e9#"  }; --Warpforged Key
		[16] = { icon = "INV_Box_01", name = "=q6=#j2#" };
		[17] = { itemID = 24490, desc = "=ds=#e9#"  }; --The Master's Key
		[19] = { icon = "INV_Box_01", name = "=q6=#m20#" };
		[20] = { itemID = 32092, desc = "=ds=#m27#"  }; --The Eye of Haramad
		[21] = { itemID = 32449, desc = "=ds=#m27#"  }; --Essence-Infused Moonstone
	};
};

-----------------------------------
--- Auchindoun: Auchenai Crypts ---
-----------------------------------

AtlasLoot_Data["AuchCrypts"] = {
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Auchenai Crypts"];
	DisplayName = BabbleZone["Auchenai Crypts"];
	Type = "BCDungeon";
	Map = "AuchAuchenaiCrypts";
	{
		Name = BabbleBoss["Shirrak the Dead Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 27410, droprate = "3.100" }; --Collar of Command
		[3] = { itemID = 27409, droprate = "1.18%" }; --Raven-Heart Headdress
		[4] = { itemID = 27408, droprate = "5.16%" }; --Hope Bearer Helm
		[5] = { itemID = 26055, droprate = "5.16%" }; --Oculus of the Hidden Eye
		[6] = { itemID = 25964, droprate = "1.59%" }; --Shaarde the Lesser
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30587, droprate = "1.67%" }; --Champion's Fire Opal
		[19] = { itemID = 30588, droprate = ".67%" }; --Potent Fire Opal
		[20] = { itemID = 30586, droprate = "1.67%" }; --Seer's Chrysoprase
		[22] = { itemID = 27866, droprate = "5.100" }; --Scintillating Headdress of Second Sight
		[23] = { itemID = 27493, droprate = "0.87%" }; --Gloves of the Deadwatcher
		[24] = { itemID = 27865, droprate = "1.74%" }; --Bracers of Shirrak
		[25] = { itemID = 27845, droprate = "3.91%" }; --Magma Plume Boots
		[26] = { itemID = 27847, droprate = ".52%" }; --Fanblade Pauldrons
		[27] = { itemID = 27846, droprate = ".52%" }; --Claw of the Watcher
	};
	{
		Name = BabbleBoss["Exarch Maladaar"];
		[1] = { icon = "INV_Box_01", name = "#j27#" };
		[2] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[3] = { itemID = 29354, droprate = ".67%" }; --Light-Touched Stole of Altruism
		[4] = { itemID = 29257, droprate = ".67%" }; --Sash of Arcane Visions
		[5] = { itemID = 29244, droprate = "0.100" }; --Wave-Song Girdle
		[7] = { itemID = 27867, droprate = ".33%" }; --Boots of the Unjust
		[8] = { itemID = 27871, droprate = "8.33%" }; --Maladaar's Blessed Chaplet
		[9] = { itemID = 27869, droprate = "8.33%" }; --Soulpriest's Ring of Resolve
		[10] = { itemID = 27523, droprate = "3.33%" }; --Exarch's Diamond Band
		[11] = { itemID = 27872, droprate = "1.67%" }; --The Harvester of Souls
		[13] = { itemID = 33836, droprate = "100%" }; --The Exarch's Soul Gem
		[16] = { itemID = 30587, droprate = "1.67%" }; --Champion's Fire Opal
		[17] = { itemID = 30588, droprate = ".67%" }; --Potent Fire Opal
		[18] = { itemID = 30586, droprate = "1.67%" }; --Seer's Chrysoprase
		[20] = { itemID = 427870, droprate = ".33%" }; --Doomplate Legguards
		[22] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[23] = { itemID = 27411, droprate = ".14%" }; --Slippers of Serenity
		[24] = { itemID = 27415, droprate = "1.44%" }; --Darkguard Face Mask
		[25] = { itemID = 27414, droprate = "1.27%" }; --Mok'Nathal Beast-Mask
		[26] = { itemID = 27413, droprate = "0.42%" }; --Ring of the Exarchs
		[27] = { itemID = 27416, droprate = "2.81%" }; --Fetish of the Fallen
		[28] = { itemID = 27412, droprate = "1.95%" }; --Ironstaff of Regeneration
	};
	{
		Name = AL["Avatar of the Martyred"];
		[1] = { itemID = 27878, droprate = ".41%" }; --Auchenai Death Shroud
		[2] = { itemID = 28268, droprate = ".94%" }; --Natural Mender's Wraps
		[3] = { itemID = 27876, droprate = ".10%" }; --Will of the Fallen Exarch
		[4] = { itemID = 27937, droprate = ".48%" }; --Sky Breaker
		[5] = { itemID = 27877, droprate = ".87%" }; --Draenic Wildstaff
		[7] = { itemID = 27797, droprate = ".94%" }; --Wastewalker Shoulderpads
	};
};

------------------------------
--- Auchindoun: Mana-Tombs ---
------------------------------

AtlasLoot_Data["AuchManaTombs"] = {
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Mana-Tombs"];
	DisplayName = BabbleZone["Mana-Tombs"];
	Type = "BCDungeon";
	Map = "AuchManaTombs";
	{
		Name = BabbleBoss["Pandemonius"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 25941, droprate = "0.55%" }; --Boots of the Outlander
		[3] = { itemID = 25942, droprate = "1.41%" }; --Faith Bearer's Gauntlets
		[4] = { itemID = 25940, droprate = "2.18%" }; --Idol of the Claw
		[5] = { itemID = 25943, droprate = "4.22%" }; --Creepjacker
		[6] = { itemID = 28166, droprate = "0.81%" }; --Shield of the Void
		[7] = { itemID = 25939, droprate = "3.04%" }; --Voidfire Wand
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30584, droprate = ".08%" }; --Enscribed Fire Opal
		[19] = { itemID = 30585, droprate = ".06%" }; --Glistening Fire Opal
		[20] = { itemID = 30583, droprate = ".09%" }; --Timeless Chrysoprase
		[22] = { itemID = 27816, droprate = "3.95%" }; --Mindrage Pauldrons
		[23] = { itemID = 27818, droprate = "1.63%" }; --Starry Robes of the Crescent
		[24] = { itemID = 27813, droprate = "3.95%" }; --Boots of the Colossus
		[25] = { itemID = 27815, droprate = ".33%" }; --Totem of the Astral Winds
		[26] = { itemID = 27814, droprate = ".98%" }; --Twinblade of Mastery
		[27] = { itemID = 27817, droprate = ".30%" }; --Starbolt Longbow
	};
	{
		Name = BabbleBoss["Tavarok"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 25945, droprate = ".08%" }; --Cloak of Revival
		[3] = { itemID = 25946, droprate = "1.62%" }; --Nethershade Boots
		[4] = { itemID = 25947, droprate = "1.25%" }; --Lightning-Rod Pauldrons
		[5] = { itemID = 25952, droprate = "2.12%" }; --Scimitar of the Nexus-Stalkers
		[6] = { itemID = 25944, droprate = ".35%" }; --Shaarde the Greater
		[7] = { itemID = 25950, droprate = ".91%" }; --Staff of Polarities
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30584, droprate = ".08%" }; --Enscribed Fire Opal
		[19] = { itemID = 30585, droprate = ".06%" }; --Glistening Fire Opal
		[20] = { itemID = 30583, droprate = ".09%" }; --Timeless Chrysoprase
		[22] = { itemID = 27824, droprate = ".09%" }; --Robe of the Great Dark Beyond
		[23] = { itemID = 27821, droprate = ".09%" }; --Extravagant Boots of Malice
		[24] = { itemID = 27825, droprate = "5.15%" }; --Predatory Gloves
		[25] = { itemID = 27826, droprate = ".03%" }; --Mantle of the Sea Wolf
		[26] = { itemID = 27823, droprate = "5.15%" }; --Shard Encrusted Breastplate
		[27] = { itemID = 27822, droprate = "5.15%" }; --Crystal Band of Valor
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"];
		[1] = { itemID = 25957, droprate = "1.60%" }; --Ethereal Boots of the Skystrider
		[2] = { itemID = 25955, droprate = "2.37%" }; --Mask of the Howling Storm
		[3] = { itemID = 25956, droprate = "0.84%" }; --Nexus-Bracers of Vigor
		[4] = { itemID = 25954, droprate = "2.45%" }; --Sigil of Shaffar
		[5] = { itemID = 25962, droprate = "2.32%" }; --Longstrider's Loop
		[6] = { itemID = 25953, droprate = "4.19%" }; --Ethereal Warp-Bow
		[8] = { itemID = 22921, droprate = ".85%" }; --Recipe: Major Frost Protection Potion
		[10] = { itemID = 28490, droprate = "100%" }; --Shaffar's Wrappings
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 29240, droprate = ".03%" }; --Bands of Negation
		[3] = { itemID = 30535, droprate = "7.27%" }; --Forestwalker Kilt
		[4] = { itemID = 29352, droprate = ".21%" }; --Cobalt Band of Tyrigosa
		[5] = { itemID = 32082 }; --The Fel Barrier
		[7] = { itemID = 27831, droprate = ".20%" }; --Mantle of the Unforgiven
		[8] = { itemID = 27843, droprate = "0.80%" }; --Glyph-Lined Sash
		[9] = { itemID = 27827 }; --Lucid Dream Bracers
		[10] = { itemID = 27835, droprate = ".06%" }; --Stillwater Girdle
		[11] = { itemID = 27844, droprate = ".10%" }; --Pauldrons of Swift Retribution
		[12] = { itemID = 27798, droprate = "1.80%" }; --Gauntlets of Vindication
		[14] = { itemID = 33835, droprate = "100%" }; --Shaffar's Wondrous Amulet
		[15] = { itemID = 28490, droprate = "100%" }; --Shaffar's Wrappings
		[16] = { itemID = 30584, droprate = ".08%" }; --Enscribed Fire Opal
		[17] = { itemID = 30585, droprate = ".06%" }; --Glistening Fire Opal
		[18] = { itemID = 30583, droprate = ".09%" }; --Timeless Chrysoprase
		[20] = { itemID = 27837, droprate = ".03%" }; --Wastewalker Leggings
		[22] = { itemID = 27828, droprate = "0.30%" }; --Warp-Scarab Brooch
		[23] = { itemID = 28400 }; --Warp-Storm Warblade
		[24] = { itemID = 27829, droprate = ".09%" }; --Axe of the Nexus-Kings
		[25] = { itemID = 27840 }; --Scepter of Sha'tar
		[26] = { itemID = 27842, droprate = ".09%" }; --Grand Scepter of the Nexus-Kings
		[28] = { itemID = 22921, droprate = ".85%" }; --Recipe: Major Frost Protection Potion
	};
	{
		Name = AL["Yor"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 31919 }; --Nexus-Prince's Ring of Balance
		[3] = { itemID = 31920 }; --Shaffar's Band of Brutality
		[4] = { itemID = 31921 }; --Yor's Collapsing Band
		[5] = { itemID = 31922 }; --Ring of Conflict Survival
		[6] = { itemID = 31923 }; --Band of the Crystalline Void
		[7] = { itemID = 31924 }; --Yor's Revenge
		[9] = { itemID = 31554 }; --Windchanneller's Tunic
		[10] = { itemID = 31562 }; --Skystalker's Tunic
		[11] = { itemID = 31570 }; --Mistshroud Tunic
		[12] = { itemID = 31578 }; --Slatesteel Breastplate
		[16] = { itemID = 30584, droprate = ".08%" }; --Enscribed Fire Opal
		[17] = { itemID = 30585, droprate = ".06%" }; --Glistening Fire Opal
		[18] = { itemID = 30583, droprate = ".09%" }; --Timeless Chrysoprase
	};
};

---------------------------------
--- Auchindoun: Sethekk Halls ---
---------------------------------

AtlasLoot_Data["AuchSethekk"] = {
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Sethekk Halls"];
	DisplayName = BabbleZone["Sethekk Halls"];
	Type = "BCDungeon";
	Map = "AuchSethekkHalls";
	{
		Name = BabbleBoss["Darkweaver Syth"];
		[1] = { itemID = 27919, droprate = "3.90%" }; --Light-Woven Slippers
		[2] = { itemID = 27914, droprate = "2.26%" }; --Moonstrider Boots
		[3] = { itemID = 27915, droprate = "1.74%" }; --Sky-Hunter Swift Boots
		[4] = { itemID = 27918, droprate = "1.81%" }; --Bands of Syth
		[5] = { itemID = 27917, droprate = "4.12%" }; --Libram of the Eternal Rest
		[6] = { itemID = 27916, droprate = "1.34%" }; --Sethekk Feather-Darts
		[8] = { itemID = 24160, droprate = ".29%" }; --Design: Khorium Inferno Band
		[10] = { itemID = 27633, droprate = "100%" }; --Terokk's Mask
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30553, droprate = "5.73%" }; --Pristine Fire Opal
		[19] = { itemID = 30554, droprate = "0.11%" }; --Stalwart Fire Opal
		[20] = { itemID = 30552, droprate = ".18%" }; --Blessed Tanzanite
		[22] = { itemID = 25461, droprate = "100%" }; --Book of Forgotten Names
	};
	{
		Name = BabbleBoss["Anzu"] .. " (" .. AL["Heroic"] .. ")";
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[22] = { itemID = 32768 }; --Reins of the Raven Lord
		[16] = { itemID = 30553, droprate = "5.73%" }; --Pristine Fire Opal
		[17] = { itemID = 30554, droprate = "0.11%" }; --Stalwart Fire Opal
		[18] = { itemID = 30552, droprate = ".18%" }; --Blessed Tanzanite
		[1] = { itemID = 32769 }; --Belt of the Raven Lord
		[2] = { itemID = 32778 }; --Boots of Righteous Fortitude
		[3] = { itemID = 32779 }; --Band of Frigid Elements
		[4] = { itemID = 32781 }; --Talon of Anzu
		[5] = { itemID = 32780 }; --The Boomstick
	};
	{
		Name = BabbleBoss["Talon King Ikiss"];
		[1] = { itemID = 27948, droprate = ".89%" }; --Trousers of Oblivion
		[2] = { itemID = 27838, droprate = ".54%" }; --Incanter's Trousers
		[3] = { itemID = 27875, droprate = "0.28%" }; --Hallowed Trousers
		[4] = { itemID = 27776, droprate = "0.21%" }; --Shoulderpads of Assassination
		[5] = { itemID = 27936, droprate = "2.100" }; --Greaves of Desolation
		[7] = { itemID = 27946, droprate = "0.21%" }; --Avian Cloak of Feathers
		[8] = { itemID = 27981, droprate = "0.100" }; --Sethekk Oracle Cloak
		[9] = { itemID = 27985, droprate = ".24%" }; --Deathforge Girdle
		[10] = { itemID = 27925, droprate = "2.79%" }; --Ravenclaw Band
		[11] = { itemID = 27980, droprate = "1.18%" }; --Terokk's Nightmace
		[12] = { itemID = 27986, droprate = ".50%" }; --Crow Wing Reaper
		[14] = { itemID = 27632, droprate = "100%" }; --Terokk's Quill
		[15] = { itemID = 27991, droprate = "100%" }; --Shadow Labyrinth Key
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30553, droprate = "5.73%" }; --Pristine Fire Opal
		[19] = { itemID = 30554, droprate = "0.11%" }; --Stalwart Fire Opal
		[20] = { itemID = 30552, droprate = ".18%" }; --Blessed Tanzanite
		[22] = { itemID = 29249, droprate = ".49%" }; --Bands of the Benevolent
		[23] = { itemID = 29259, droprate = ".87%" }; --Bracers of the Hunt
		[24] = { itemID = 32073 }; --Spaulders of Dementia
		[25] = { itemID = 29355, droprate = ".16%" }; --Terokk's Shadowstaff
		[27] = { itemID = 33834, droprate = "100%" }; --The Headfeathers of Ikiss
	};
};

------------------------------------
--- Auchindoun: Shadow Labyrinth ---
------------------------------------

AtlasLoot_Data["AuchShadowLab"] = {
	Name = BabbleZone["Auchindoun"] .. ": " .. BabbleZone["Shadow Labyrinth"];
	DisplayName = BabbleZone["Shadow Labyrinth"];
	Type = "BCDungeon";
	Map = "AuchShadowLabyrinth";
	{
		Name = BabbleBoss["Ambassador Hellmaw"];
		[1] = { itemID = 27889, droprate = "3.58%" }; --Jaedenfire Gloves of Annihilation
		[2] = { itemID = 27888, droprate = "1.81%" }; --Dream-Wing Helm
		[3] = { itemID = 27884, droprate = "3.15%" }; --Ornate Boots of the Sanctified
		[4] = { itemID = 27886, droprate = "2.94%" }; --Idol of the Emerald Queen
		[5] = { itemID = 27887, droprate = "0.88%" }; --Platinum Shield of the Valorous
		[6] = { itemID = 27885, droprate = "3.34%" }; --Soul-Wand of the Aldor
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30563, droprate = "6.67%" }; --Regal Tanzanite
		[19] = { itemID = 30559, droprate = "7.85%" }; --Etched Fire Opal
		[20] = { itemID = 30560, droprate = "5.47%" }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Blackheart the Inciter"];
		[1] = { itemID = 27468, droprate = ".67%" }; --Moonglade Handwraps
		[3] = { itemID = 27892, droprate = "6.32%" }; --Cloak of the Inciter
		[4] = { itemID = 27893, droprate = "3.35%" }; --Ornate Leggings of the Venerated
		[5] = { itemID = 28134, droprate = "0.54%" }; --Brooch of Hightened Potential
		[6] = { itemID = 27891, droprate = "0.93%" }; --Adamantine Figurine
		[7] = { itemID = 27890, droprate = "0.77%" }; --Wand of the Netherwing
		[9] = { itemID = 25728, droprate = ".94%" }; --Pattern: Stylin' Purple Hat
		[11] = { itemID = 30808, droprate = "100%" }; --Book of Fel Names
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30563, droprate = "6.67%" }; --Regal Tanzanite
		[19] = { itemID = 30559, droprate = "7.85%" }; --Etched Fire Opal
		[20] = { itemID = 30560, droprate = "5.47%" }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Grandmaster Vorpil"];
		[1] = { itemID = 27775, droprate = "6.11%" }; --Hallowed Pauldrons
		[3] = { itemID = 27897, droprate = "2.67%" }; --Breastplate of Many Graces
		[4] = { itemID = 27900, droprate = "6.64%" }; --Jewel of Charismatic Mystique
		[5] = { itemID = 27901, droprate = "4.35%" }; --Blackout Truncheon
		[6] = { itemID = 27898, droprate = "4.71%" }; --Wrathfire Hand-Cannon
		[8] = { itemID = 30827, droprate = "100%" }; --Lexicon Demonica
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30563, droprate = "6.67%" }; --Regal Tanzanite
		[19] = { itemID = 30559, droprate = "7.85%" }; --Etched Fire Opal
		[20] = { itemID = 30560, droprate = "5.47%" }; --Rune Covered Chrysoprase
	};
	{
		Name = BabbleBoss["Murmur"];
		[1] = { itemID = 24309 };
		[3] = { itemID = 27902, droprate = "2.28%" }; --Silent Slippers of Meditation
		[4] = { itemID = 27912, droprate = "3.59%" }; --Harness of the Deep Currents
		[5] = { itemID = 27913, droprate = ".69%" }; --Whispering Blade of Slaying
		[6] = { itemID = 27905, droprate = ".35%" }; --Greatsword of Horrid Dreams
		[7] = { itemID = 27903, droprate = "1.17%" }; --Sonic Spear
		[8] = { itemID = 27910, droprate = "2.46%" }; --Silvermoon Crest Shield
		[10] = { itemID = 27778, droprate = "2.28%" }; --Spaulders of Oblivion
		[11] = { itemID = 28232, droprate = "0.47%" }; --Robe of Oblivion
		[12] = { itemID = 28230, droprate = "1.46%" }; --Hallowed Garments
		[13] = { itemID = 27908, droprate = ".76%" }; --Leggings of Assassination
		[14] = { itemID = 27909, droprate = "3.87%" }; --Tidefury Kilt
		[15] = { itemID = 27803, droprate = ".49%" }; --Shoulderguards of the Bold
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30563, droprate = "6.67%" }; --Regal Tanzanite
		[19] = { itemID = 30559, droprate = "7.85%" }; --Etched Fire Opal
		[20] = { itemID = 30560, droprate = "5.47%" }; --Rune Covered Chrysoprase
		[22] = { itemID = 30532, droprate = "1.90%" }; --Kirin Tor Master's Trousers
		[23] = { itemID = 29357 }; --Master Thief's Gloves
		[24] = { itemID = 29261, droprate = ".57%" }; --Girdle of Ferocity
		[25] = { itemID = 29353, droprate = "0.71%" }; --Shockwave Truncheon
		[27] = { itemID = 31722, droprate = "100%" }; --Murmur's Essence
		[28] = { itemID = 33840, droprate = "100%" }; --Murmur's Whisper
		Prev = "AuchShadowGrandmaster";

	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["Mana-Tombs"] };
		[2] = { itemID = 23615, droprate = ".52%" }; --Plans: Swiftsteel Gloves
		[3] = { itemID = 22543, droprate = ".52%" }; --Formula: Enchant Boots - Fortitude
		[5] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[6] = { itemID = 25731, droprate = ".46%" }; --Pattern: Stylin' Crimson Hat
		[7] = { itemID = 29669, droprate = ".39%" }; --Pattern: Shadow Armor Kit
		[9] = { icon = "INV_Box_01", name = "=q6=" .. AL["The Saga of Terokk"], "=q5=" .. BabbleZone["Sethekk Halls"] };
		[10] = { itemID = 27634 }; --The Saga of Terokk
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["Auchenai Crypts"] };
		[17] = { itemID = 23605, droprate = ".69%" }; --Plans: Felsteel Gloves
		[18] = { itemID = 22544, droprate = ".60%" }; --Formula: Enchant Boots - Dexterity
		[20] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[21] = { itemID = 23607, droprate = ".61%" }; --Plans: Felsteel Helm
		[23] = { icon = "INV_Box_01", name = "=q6=" .. AL["First Fragment Guardian"], "=q5=" .. BabbleZone["Shadow Labyrinth"] };
		[24] = { itemID = 24514, droprate = "100%" }; --First Key Fragment
	};
};




--------------------
--- Black Temple ---
--------------------

AtlasLoot_Data["BlackTemple"] = {
	Name = BabbleZone["Black Temple"];
	Type = "BCRaid";
	Map = "BlackTempleStart";
	{
		Name = BabbleBoss["High Warlord Naj'entus"];
		[1] = { itemID = 32239, droprate = "5%" }; --Slippers of the Seacaller
		[2] = { itemID = 32240, droprate = "6%" }; --Guise of the Tidal Lurker
		[3] = { itemID = 32377, droprate = "5%" }; --Mantle of Darkness
		[4] = { itemID = 32241, droprate = "0%" }; --Helm of Soothing Currents
		[5] = { itemID = 32234, droprate = "6%" }; --Fists of Mukoa
		[6] = { itemID = 32242, droprate = "%" }; --Boots of Oceanic Fury
		[7] = { itemID = 32232, droprate = "6%" }; --Eternium Shell Bracers
		[8] = { itemID = 32243, droprate = "0%" }; --Pearl Inlaid Boots
		[9] = { itemID = 32245, droprate = "%" }; --Tide-stomper's Greaves
		[16] = { itemID = 32238, droprate = "6%" }; --Ring of Calming Waves
		[17] = { itemID = 32247, droprate = "6%" }; --Ring of Captured Storms
		[18] = { itemID = 32237, droprate = "5%" }; --The Maelstrom's Fury
		[19] = { itemID = 32236, droprate = "6%" }; --Rising Tide
		[20] = { itemID = 32248, droprate = "6%" }; --Halberd of Desolation
		[22] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Supremus"];
		[1] = { itemID = 32256, droprate = "6%" }; --Waistwrap of Infinity
		[2] = { itemID = 32252, droprate = "4%" }; --Nether Shadow Tunic
		[3] = { itemID = 32259, droprate = "%" }; --Bands of the Coming Storm
		[4] = { itemID = 32251, droprate = "5%" }; --Wraps of Precise Flight
		[5] = { itemID = 32258, droprate = "%" }; --Naturalist's Preserving Cinch
		[6] = { itemID = 32250, droprate = "6%" }; --Pauldrons of Abyssal Fury
		[8] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 32260, droprate = "7%" }; --Choker of Endless Nightmares
		[17] = { itemID = 32261, droprate = "4%" }; --Band of the Abyssal Lord
		[18] = { itemID = 32257, droprate = "5%" }; --Idol of the White Stag
		[19] = { itemID = 32254, droprate = "5%" }; --The Brutalizer
		[20] = { itemID = 32262, droprate = "6%" }; --Syphon of the Nathrezim
		[21] = { itemID = 32255, droprate = "5%" }; --Felstone Bulwark
		[22] = { itemID = 32253, droprate = "6%" }; --Legionkiller
	};
	{
		Name = BabbleBoss["Shade of Akama"];
		[1] = { itemID = 32273, droprate = "6%" }; --Amice of Brilliant Light
		[2] = { itemID = 32270, droprate = "5%" }; --Focused Mana Bindings
		[3] = { itemID = 32513, droprate = "6%" }; --Wristbands of Divine Influence
		[4] = { itemID = 32265, droprate = "6%" }; --Shadow-walker's Cord
		[5] = { itemID = 32271, droprate = "4%" }; --Kilt of Immortal Nature
		[6] = { itemID = 32264, droprate = "6%" }; --Shoulders of the Hidden Predator
		[7] = { itemID = 32275, droprate = "%" }; --Spiritwalker Gauntlets
		[8] = { itemID = 32276, droprate = "%" }; --Flashfire Girdle
		[9] = { itemID = 32279, droprate = "%" }; --The Seeker's Wristguards
		[10] = { itemID = 32278, droprate = "5%" }; --Grips of Silent Justice
		[11] = { itemID = 32263, droprate = "4%" }; --Praetorian's Legguards
		[12] = { itemID = 32268, droprate = "6%" }; --Myrmidon's Treads
		[16] = { itemID = 32266, droprate = "6%" }; --Ring of Deceitful Intent
		[17] = { itemID = 32361, droprate = "5%" }; --Blind-Seers Icon
		[19] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Teron Gorefiend"];
		[1] = { itemID = 32323, droprate = "7%" }; --Shadowmoon Destroyer's Drape
		[2] = { itemID = 32329, droprate = "7%" }; --Cowl of Benevolence
		[3] = { itemID = 32327, droprate = "5%" }; --Robe of the Shadow Council
		[4] = { itemID = 32324, droprate = "7%" }; --Insidious Bands
		[5] = { itemID = 32328, droprate = "7%" }; --Botanist's Gloves of Growth
		[6] = { itemID = 32510, droprate = "5%" }; --Softstep Boots of Tracking
		[7] = { itemID = 32280, droprate = "5%" }; --Gauntlets of Enforcement
		[8] = { itemID = 32512, droprate = "9%" }; --Girdle of Lordaeron's Fallen
		[16] = { itemID = 32330, droprate = "3%" }; --Totem of Ancestral Guidance
		[17] = { itemID = 32348, droprate = "9%" }; --Soul Cleaver
		[18] = { itemID = 32326, droprate = "1%" }; --Twisted Blades of Zarak
		[19] = { itemID = 32325, droprate = "4%" }; --Rifle of the Stoic Guardian
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Gurtogg Bloodboil"];
		[1] = { itemID = 32337, droprate = "6%" }; --Shroud of Forgiveness
		[2] = { itemID = 32338, droprate = "5%" }; --Blood-cursed Shoulderpads
		[3] = { itemID = 32340, droprate = "5%" }; --Garments of Temperance
		[4] = { itemID = 32339, droprate = "4%" }; --Belt of Primal Majesty
		[5] = { itemID = 32334, droprate = "5%" }; --Vest of Mounting Assault
		[6] = { itemID = 32342, droprate = "%" }; --Girdle of Mighty Resolve
		[7] = { itemID = 32333, droprate = "6%" }; --Girdle of Stability
		[8] = { itemID = 32341, droprate = "4%" }; --Leggings of Divine Retribution
		[16] = { itemID = 32335, droprate = "6%" }; --Unstoppable Aggressor's Ring
		[17] = { itemID = 32501, droprate = "5%" }; --Shadowmoon Insignia
		[18] = { itemID = 32269, droprate = "6%" }; --Messenger of Fate
		[19] = { itemID = 32344, droprate = "5%" }; --Staff of Immaculate Recovery
		[20] = { itemID = 32343, droprate = "4%" }; --Wand of Prismatic Focus
		[22] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = "Essence of Souls";
		[1] = { itemID = 32353, droprate = "7%" }; --Gloves of Unfailing Faith
		[2] = { itemID = 32351, droprate = "%" }; --Elunite Empowered Bracers
		[3] = { itemID = 32347, droprate = "6%" }; --Grips of Damnation
		[4] = { itemID = 32352, droprate = "%" }; --Naturewarden's Treads
		[5] = { itemID = 32517, droprate = "7%" }; --The Wavemender's Mantle
		[6] = { itemID = 32346, droprate = "6%" }; --Boneweave Girdle
		[7] = { itemID = 32354, droprate = "6%" }; --Crown of Empowered Fate
		[8] = { itemID = 32345, droprate = "5%" }; --Dreadboots of the Legion
		[16] = { itemID = 32349, droprate = "6%" }; --Translucent Spellthread Necklace
		[17] = { itemID = 32362, droprate = "5%" }; --Pendant of Titans
		[18] = { itemID = 32350, droprate = "6%" }; --Touch of Inspiration
		[19] = { itemID = 32332, droprate = "7%" }; --Torch of the Damned
		[20] = { itemID = 32363, droprate = "4%" }; --Naaru-Blessed Life Rod
		[22] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Mother Shahraz"];
		[1] = { itemID = 32367, droprate = "6%" }; --Leggings of Devastation
		[2] = { itemID = 32366, droprate = "5%" }; --Shadowmaster's Boots
		[3] = { itemID = 32365, droprate = "5%" }; --Heartshatter Breastplate
		[4] = { itemID = 32370, droprate = "5%" }; --Nadina's Pendant of Purity
		[5] = { itemID = 32368, droprate = "5%" }; --Tome of the Lightbringer
		[6] = { itemID = 32369, droprate = "5%" }; --Blade of Savagery
		[16] = { itemID = 31101, droprate = "6%" }; --Pauldrons of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 31103, droprate = "0%" }; --Pauldrons of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 31102, droprate = "7%" }; --Pauldrons of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["The Illidari Council"];
		[1] = { itemID = 32331, droprate = "6%" }; --Cloak of the Illidari Council
		[2] = { itemID = 32519, droprate = "6%" }; --Belt of Divine Guidance
		[3] = { itemID = 32518, droprate = "2%" }; --Veil of Turning Leaves
		[4] = { itemID = 32376, droprate = "7%" }; --Forest Prowler's Helm
		[5] = { itemID = 32373, droprate = "7%" }; --Helm of the Illidari Shatterer
		[6] = { itemID = 32505, droprate = "6%" }; --Madness of the Betrayer
		[16] = { itemID = 31098, droprate = "4%" }; --Leggings of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 31100, droprate = "3%" }; --Leggings of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 31099, droprate = "4%" }; --Leggings of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Illidan Stormrage"];
		[1] = { itemID = 32524, droprate = "6%" }; --Shroud of the Highborne
		[2] = { itemID = 32525, droprate = "5%" }; --Cowl of the Illidari High Lord
		[3] = { itemID = 32235, droprate = "6%" }; --Cursed Vision of Sargeras
		[4] = { itemID = 32521, droprate = "4%" }; --Faceplate of the Impenetrable
		[5] = { itemID = 32497, droprate = "5%" }; --Stormrage Signet Ring
		[6] = { itemID = 32483, droprate = "6%" }; --The Skull of Gul'dan
		[7] = { itemID = 32496, droprate = "5%" }; --Memento of Tyrande
		[9] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[11] = { itemID = 32837, droprate = "%" }; --Warglaive of Azzinoth
		[12] = { itemID = 32838, droprate = "%" }; --Warglaive of Azzinoth
		[16] = { itemID = 31089, droprate = "8%" }; --Chestguard of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 31091, droprate = "9%" }; --Chestguard of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 31090, droprate = "8%" }; --Chestguard of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 32471, droprate = "6%" }; --Shard of Azzinoth
		[21] = { itemID = 32500, droprate = "5%" }; --Crystal Spire of Karabor
		[22] = { itemID = 32374, droprate = "4%" }; --Zhar'doom, Greatstaff of the Devourer
		[23] = { itemID = 32375, droprate = "4%" }; --Bulwark of Azzinoth
		[24] = { itemID = 32336, droprate = "6%" }; --Black Bow of the Betrayer
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 32590, droprate = "%" }; --Nethervoid Cloak
		[2] = { itemID = 34012, droprate = "%" }; --Shroud of the Final Stand
		[3] = { itemID = 32609, droprate = "%" }; --Boots of the Divine Light
		[4] = { itemID = 32593, droprate = "%" }; --Treads of the Den Mother
		[5] = { itemID = 32592, droprate = "%" }; --Chestguard of Relentless Storms
		[6] = { itemID = 32608, droprate = "%" }; --Pillager's Gauntlets
		[7] = { itemID = 32606, droprate = "%" }; --Girdle of the Lightbearer
		[8] = { itemID = 32591, droprate = "%" }; --Choker of Serrated Blades
		[9] = { itemID = 32589, droprate = "%" }; --Hellfire-Encased Pendant
		[10] = { itemID = 32526, droprate = "%" }; --Band of Devastation
		[11] = { itemID = 32528, droprate = "%" }; --Blessed Band of Karabor
		[12] = { itemID = 32527, droprate = "%" }; --Ring of Ancient Knowledge
		[16] = { itemID = 34009, droprate = "%" }; --Hammer of Judgement
		[17] = { itemID = 32943, droprate = "%" }; --Swiftsteel Bludgeon
		[18] = { itemID = 34011, droprate = "%" }; --Illidari Runeshield
		[20] = { itemID = 32228, droprate = "2%" }; --Empyrean Sapphire
		[21] = { itemID = 32231, droprate = "%" }; --Pyrestone
		[22] = { itemID = 32229, droprate = "%" }; --Lionseye
		[23] = { itemID = 32249, droprate = "%" }; --Seaspray Emerald
		[24] = { itemID = 32230, droprate = "%" }; --Shadowsong Amethyst
		[25] = { itemID = 32227, droprate = "%" }; --Crimson Spinel
		[27] = { itemID = 32428, droprate = "6%" }; --Heart of Darkness
		[28] = { itemID = 32897, droprate = "7%" }; --Mark of the Illidari
	};
	{
		Name = "BT Patterns/Plans";
		[1] = { itemID = 32738 };
		[2] = { itemID = 32739 };
		[3] = { itemID = 32736 };
		[4] = { itemID = 32737 };
		[5] = { itemID = 32748 }; --Pattern: Bindings of Lightning Reflexes
		[6] = { itemID = 32744 }; --Pattern: Bracers of Renewed Life
		[7] = { itemID = 32750 }; --Pattern: Living Earth Bindings
		[8] = { itemID = 32751 }; --Pattern: Living Earth Shoulders
		[9] = { itemID = 32749 }; --Pattern: Shoulders of Lightning Reflexes
		[10] = { itemID = 32745 }; --Pattern: Shoulderpads of Renewed Life
		[11] = { itemID = 32746 }; --Pattern: Swiftstrike Bracers
		[12] = { itemID = 32747 }; --Pattern: Swiftstrike Shoulders
		[16] = { itemID = 32754 };
		[17] = { itemID = 32755 };
		[18] = { itemID = 32753 };
		[19] = { itemID = 32752 };
	};
};


------------------------------------------------
--- Caverns of Time: Old Hillsbrad Foothills ---
------------------------------------------------

AtlasLoot_Data["CoTOldHillsbrad"] = {
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Old Hillsbrad Foothills"];
	DisplayName = BabbleZone["Old Hillsbrad Foothills"];
	Type = "BCDungeon";
	Map = "CoTOldHillsbrad";
	{
		Name = BabbleBoss["Lieutenant Drake"];
		[1] = { itemID = 27423, droprate = "9.68%" }; --Cloak of Impulsiveness
		[2] = { itemID = 27418, droprate = "8.16%" }; --Stormreaver Shadow-Kilt
		[3] = { itemID = 27417, droprate = "8.33%" }; --Ravenwing Pauldrons
		[4] = { itemID = 27420, droprate = "7.14%" }; --Uther's Ceremonial Warboots
		[5] = { itemID = 27436, droprate = "5.09%" }; --Iron Band of the Unbreakable
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30589, droprate = ".66%" }; --Dazzling Chrysoprase
		[19] = { itemID = 30591, droprate = ".24%" }; --Empowered Fire Opal
		[20] = { itemID = 30590, droprate = ".10%" }; --Enduring Chrysoprase
		[22] = { itemID = 28212, droprate = "1.43%" }; --Aran's Sorcerous Slacks
		[23] = { itemID = 28214, droprate = ".86%" }; --Grips of the Lunar Eclipse
		[24] = { itemID = 28215, droprate = "1.43%" }; --Mok'Nathal Mask of Battle
		[25] = { itemID = 28211, droprate = ".71%" }; --Lieutenant's Signet of Lordaeron
		[26] = { itemID = 28213, droprate = ".57%" }; --Lordaeron Medical Guide
		[27] = { itemID = 28210, droprate = ".71%" }; --Bloodskull Destroyer
	};
	{
		Name = BabbleBoss["Captain Skarloc"];
		[1] = { itemID = 27428, droprate = "9.04%" }; --Stormfront Gauntlets
		[2] = { itemID = 27430, droprate = "9.22%" }; --Scaled Greaves of Patience
		[3] = { itemID = 27427, droprate = "4.83%" }; --Durotan's Battle Harness
		[4] = { itemID = 27424, droprate = "8.50%" }; --Amani Venom-Axe
		[5] = { itemID = 27426, droprate = "5.37%" }; --Northshire Battlemace
		[7] = { itemID = 22927, droprate = ".03%" }; --Recipe: Ironshield Potion
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30589, droprate = ".66%" }; --Dazzling Chrysoprase
		[19] = { itemID = 30591, droprate = ".24%" }; --Empowered Fire Opal
		[20] = { itemID = 30590, droprate = ".10%" }; --Enduring Chrysoprase
		[22] = { itemID = 28218, droprate = "8.18%" }; --Pontiff's Pantaloons of Prophecy
		[23] = { itemID = 28220, droprate = ".14%" }; --Moon-Crown Antlers
		[24] = { itemID = 28219, droprate = ".03%" }; --Emerald-Scale Greaves
		[25] = { itemID = 28221, droprate = ".52%" }; --Boots of the Watchful Heart
		[26] = { itemID = 28217, droprate = ".09%" }; --Tarren Mill Vitality Locket
		[27] = { itemID = 28216, droprate = ".06%" }; --Dathrohan's Ceremonial Hammer
	};
	{
		Name = BabbleBoss["Epoch Hunter"];
		[1] = { itemID = 27433, droprate = "9.11%" }; --Pauldrons of Sufferance
		[2] = { itemID = 27434, droprate = "6.26%" }; --Mantle of Perenolde
		[3] = { itemID = 27440, droprate = "6.12%" }; --Diamond Prism of Recurrence
		[4] = { itemID = 27432, droprate = "6.35%" }; --Broxigar's Ring of Valor
		[5] = { itemID = 27431, droprate = "4.09%" }; --Time-Shifted Dagger
		[6] = { icon = "INV_Box_01", name = "#j27#" };
		[7] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[8] = { itemID = 29250 }; --Cord of Sanctification
		[9] = { itemID = 29246 }; --Nightfall Wristguards
		[10] = { itemID = 29357, droprate = "0.100" }; --Master Thief's Gloves
		[11] = { itemID = 30534 }; --Wyrmscale Greaves
		[12] = { itemID = 30536, droprate = "5.100" }; --Greaves of the Martyr
		[13] = { itemID = 27911, droprate = "0.100" }; --Epoch's Whispering Cinch
		[14] = { itemID = 28344, droprate = ".24%" }; --Wyrmfury Pauldrons
		[15] = { itemID = 28233, droprate = "5.100" }; --Necklace of Resplendent Hope
		[16] = { itemID = 27904, droprate = ".17%" }; --Resounding Ring of Glory
		[17] = { itemID = 28227, droprate = ".24%" }; --Sparking Arcanite Ring
		[18] = { itemID = 28223, droprate = "0.100" }; --Arcanist's Stone
		[19] = { itemID = 28226, droprate = ".100" }; --Timeslicer
		[20] = { itemID = 28222, droprate = ".48%" }; --Reaver of the Infinites
		[21] = { itemID = 30589, droprate = ".66%" }; --Dazzling Chrysoprase
		[22] = { itemID = 30591, droprate = ".24%" }; --Empowered Fire Opal
		[23] = { itemID = 30590, droprate = ".10%" }; --Enduring Chrysoprase
		[24] = { itemID = 24173, droprate = ".10%" }; --Design: Circlet of Arcane Might
		[25] = { itemID = 28191, droprate = ".24%" }; --Mana-Etched Vestments
		[26] = { itemID = 28224, droprate = ".24%" }; --Wastewalker Helm
		[27] = { itemID = 28401, droprate = ".14%" }; --Hauberk of Desolation
		[28] = { itemID = 28225, droprate = ".14%" }; --Doomplate Warhelm
		[30] = { itemID = 33847, droprate = "100%" }; --Epoch Hunter's Head
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[2] = { itemID = 25729, droprate = ".25%" }; --Pattern: Stylin' Adventure Hat
		[4] = { icon = "INV_Box_01", name = "=q6=" .. AL["Don Carlos"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[5] = { itemID = 38506 }; --Don Carlos' Famous Hat
		[6] = { itemID = 38329 }; --Don Carlos' Hat
		[7] = { itemID = 38276 }; --Haliscan Brimmed Hat
		[9] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Black Morass"] };
		[10] = { itemID = 25730, droprate = ".29%" }; --Pattern: Stylin' Jungle Hat
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Thomas Yance"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[17] = { itemID = 25725 };
		[19] = { icon = "INV_Box_01", name = "=q6=" .. AL["Aged Dalaran Wizard"], "=q5=" .. BabbleZone["Old Hillsbrad Foothills"] };
		[20] = { itemID = 22539 };
	};
};





-----------------------------------------
--- Caverns of Time: The Black Morass ---
-----------------------------------------

AtlasLoot_Data["CoTBlackMorass"] = {
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["The Black Morass"];
	DisplayName = BabbleZone["The Black Morass"];
	Type = "BCDungeon";
	Map = "CoTBlackMorass";
	{
		Name = BabbleBoss["Chrono Lord Deja"];
		[1] = { itemID = 27988, droprate = "3.87%" }; --Burnoose of Shifting Ages
		[2] = { itemID = 27994, droprate = "2.30%" }; --Mantle of Three Terrors
		[3] = { itemID = 27995, droprate = "3.13%" }; --Sun-Gilded Shouldercaps
		[4] = { itemID = 27993, droprate = "3.84%" }; --Mask of Inner Fire
		[5] = { itemID = 27996, droprate = "4.45%" }; --Ring of Spiritual Precision
		[6] = { itemID = 27987, droprate = "1.51%" }; --Melmorta's Twilight Longbow
		[8] = { itemID = 29675, droprate = ".35%" }; --Pattern: Arcane Armor Kit
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30558 }; --Glimmering Fire Opal
		[19] = { itemID = 30556 }; --Glinting Fire Opal
		[20] = { itemID = 30555 }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Temporus"];
		[1] = { itemID = 28185, droprate = "4.26%" }; --Khadgar's Kilt of Abjuration
		[2] = { itemID = 28186, droprate = "3.14%" }; --Laughing Skull Battle-Harness
		[3] = { itemID = 28034, droprate = "3.69%" }; --Hourglass of the Unraveller
		[4] = { itemID = 28187, droprate = "1.83%" }; --Star-Heart Lamp
		[5] = { itemID = 28184, droprate = "1.74%" }; --Millennium Blade
		[6] = { itemID = 28033, droprate = "3.80%" }; --Epoch-Mender
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30558 }; --Glimmering Fire Opal
		[19] = { itemID = 30556 }; --Glinting Fire Opal
		[20] = { itemID = 30555 }; --Glowing Tanzanite
	};
	{
		Name = BabbleBoss["Aeonus"];
		[1] = { itemID = 28193, droprate = "1.99%" }; --Mana-Etched Crown
		[2] = { itemID = 27509, droprate = "2.84%" }; --Handgrips of Assassination
		[3] = { itemID = 27873, droprate = "1.28%" }; --Moonglade Pants
		[4] = { itemID = 28192, droprate = "2.77%" }; --Helm of Desolation
		[5] = { itemID = 27977, droprate = ".92%" }; --Legplates of the Bold
		[6] = { itemID = 27839, droprate = "2.10%" }; --Legplates of the Righteous
		[8] = { itemID = 28206, droprate = "2.25%" }; --Cowl of the Guiltless
		[9] = { itemID = 28194, droprate = "3.51%" }; --Primal Surge Bracers
		[10] = { itemID = 28207, droprate = "1.11%" }; --Pauldrons of the Crimson Flight
		[11] = { itemID = 28190, droprate = "1.32%" }; --Scarab of the Infinite Cycle
		[12] = { itemID = 28189, droprate = ".70%" }; --Latro's Shifting Sword
		[13] = { itemID = 28188, droprate = "0.48%" }; --Bloodfire Greatstaff
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30558 }; --Glimmering Fire Opal
		[19] = { itemID = 30556 }; --Glinting Fire Opal
		[20] = { itemID = 30555 }; --Glowing Tanzanite
		[22] = { itemID = 30531, droprate = ".49%" }; --Breeches of the Occultist
		[23] = { itemID = 29247 }; --Girdle of the Deathdealer
		[24] = { itemID = 29253 }; --Girdle of Valorous Deeds
		[25] = { itemID = 29356 }; --Quantum Blade
		[27] = { itemID = 33858, droprate = "100%" }; --Aeonus's Hourglass
	};
};




-------------------------------------
--- Caverns of Time: Hyjal Summit ---
-------------------------------------

AtlasLoot_Data["CoTHyjal"] = {
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["Hyjal Summit"];
	DisplayName = BabbleZone["Hyjal Summit"];
	Type = "BCRaid";
	Map = "CoTHyjal";
	{
		Name = BabbleBoss["Rage Winterchill"];
		[1] = { itemID = 30871 }; --Bracers of Martyrdom
		[2] = { itemID = 30870 }; --Cuffs of Devastation
		[3] = { itemID = 30863 }; --Deadly Cuffs
		[4] = { itemID = 30868 }; --Rejuvenating Bracers
		[5] = { itemID = 30864 }; --Bracers of the Pathfinder
		[6] = { itemID = 30869 }; --Howling Wind Bracers
		[7] = { itemID = 30873 }; --Stillwater Boots
		[8] = { itemID = 30866 }; --Blood-stained Pauldrons
		[9] = { itemID = 30862 }; --Blessed Adamantite Bracers
		[10] = { itemID = 30861 }; --Furious Shackles
		[16] = { itemID = 30865 }; --Tracker's Blade
		[17] = { itemID = 30872 }; --Chronicle of Dark Secrets
		[18] = { itemID = 30891 }; --Black Featherlight Boots
		[19] = { itemID = 30914 }; --Belt of the Crescent Moon
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 98570, droprate = "100%" };
		[24] = { itemID = 32459, droprate = "%" }; --Time-Phased Phylactery
		[26] = { itemID = 61196, droprate = "%" };
	};
	{
		Name = BabbleBoss["Anetheron"];
		[1] = { itemID = 30884 }; --Hatefury Mantle
		[2] = { itemID = 30888 }; --Anetheron's Noose
		[3] = { itemID = 30885 }; --Archbishop's Slippers
		[4] = { itemID = 30879 }; --Don Alejandro's Money Belt
		[5] = { itemID = 30886 }; --Enchanted Leather Sandals
		[6] = { itemID = 30887 }; --Golden Links of Restoration
		[7] = { itemID = 30880 }; --Quickstrider Moccasins
		[8] = { itemID = 30878 }; --Glimmering Steel Mantle
		[16] = { itemID = 30874 }; --The Unbreakable Will
		[17] = { itemID = 30881 }; --Blade of Infamy
		[18] = { itemID = 30883 }; --Pillar of Ferocity
		[19] = { itemID = 30882 }; --Bastion of Light
		[20] = { itemID = 30916 }; --Leggings of Channeled Elements
		[21] = { itemID = 30919 }; --Valestalker Girdle
		[23] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[25] = { itemID = 98570, droprate = "100%" };
		[26] = { itemID = 61287, droprate = "%" };
	};
	{
		Name = BabbleBoss["Kaz'rogal"];
		[1] = { itemID = 30889 }; --Kaz\'rogal\'s Hardened Heart"
		[2] = { itemID = 30893 }; --Sun-touched Chain Leggings"
		[3] = { itemID = 30894 }; --Blue Suede Shoes"
		[4] = { itemID = 30895 }; --Angelista\'s Sash"
		[5] = { itemID = 30898 }; --Shady Dealer\'s Pantaloons"
		[6] = { itemID = 30900 }; --Bow-stitched Leggings"
		[7] = { itemID = 30915 }; --Belt of Seething Fury"
		[8] = { itemID = 30918 }; --Hammer of Atonement"
		[16] = { itemID = 31092, droprate = "100%", lootTable = {"T6HANDS","Token"} };
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 98570, droprate = "100%" };
	};
	{
		Name = BabbleBoss["Azgalor"];
		[1] = { itemID = 30892 }; --Beast-tamer\'s Shoulders"
		[2] = { itemID = 30896 }; --Glory of the Defender"
		[3] = { itemID = 30897 }; --Girdle of Hope"
		[4] = { itemID = 30899 }; --Don Rodrigo\'s Poncho"
		[5] = { itemID = 30901 }; --Boundless Agony"
		[6] = { itemID = 30917 }; --Razorfury Mantle"
		[16] = { itemID = 31098, droprate = "100%", lootTable = {"T6LEGS","Token"} }; --Leggings of the Forgotten Conqueror
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 98570, droprate = "100%" };
		[21] = { itemID = 61289, droprate = "%" };
	};
	{
		Name = BabbleBoss["Archimonde"];
		[1] = { itemID = 30913, droprate = "5%" }; --Robes of Rhonin
		[2] = { itemID = 30912, droprate = "5%" }; --Leggings of Eternity
		[3] = { itemID = 30905, droprate = "4%" }; --Midnight Chestguard
		[4] = { itemID = 30907, droprate = "5%" }; --Mail of Fevered Pursuit
		[5] = { itemID = 30904, droprate = "4%" }; --Savior's Grasp
		[6] = { itemID = 30903, droprate = "5%" }; --Legguards of Endless Rage
		[7] = { itemID = 30911, droprate = "5%" }; --Scepter of Purification
		[9] = { itemID = 30910, droprate = "4%" }; --Tempest of Chaos
		[10] = { itemID = 30902, droprate = "5%" }; --Cataclysm's Edge
		[11] = { itemID = 30908, droprate = "5%" }; --Apostle of Argus
		[12] = { itemID = 30909, droprate = "5%" }; --Antonidas's Aegis of Rapt Concentration
		[13] = { itemID = 30906, droprate = "6%" }; --Bristleblitz Striker
		[16] = { itemID = 31097, droprate = "100%", lootTable = {"T6HEAD","Token"} }; --Helm of the Forgotten Conqueror
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 98570, droprate = "100%" };
		[21] = { itemID = 61557, droprate = "%" };
		[23] = { itemID = 1001620, droprate = "%" };
	};
	{
		Name = AL["Trash Mobs"].." - Items";
		[1] = { itemID = 32590, droprate = "%" }; --Nethervoid Cloak
		[2] = { itemID = 34010 }; --Pepe's Shroud of Pacification
		[3] = { itemID = 32609 }; --Boots of the Divine Light
		[4] = { itemID = 32592 }; --Chestguard of Relentless Storms
		[5] = { itemID = 32591 }; --Choker of Serrated Blades
		[6] = { itemID = 32589 }; --Hellfire-Encased Pendant
		[7] = { itemID = 34009 }; --Hammer of Judgement
		[8] = { itemID = 32946 }; --Claw of Molten Fury
		[9] = { itemID = 32945 }; --Fist of Molten Fury
		[10] = { itemID = 14986 };
		[11] = { itemID = 32428 }; --Heart of Darkness
		[12] = { itemID = 32897 }; --Mark of the Illidari
		[16] = { itemID = 32227 }; --Crimson Spinel
		[17] = { itemID = 32228 }; --Empyrean Sapphire
		[18] = { itemID = 32229 }; --Lionseye
		[19] = { itemID = 32230 }; --Shadowsong Amethyst
		[20] = { itemID = 32231 }; --Pyrestone
		[21] = { itemID = 32249 }; --Seaspray Emerald
	};
	scaleOfSandsRings;
	{
		Name = "Crafting Recipe Drops Page 1";
		[1] = { itemID = 15315 }; --Design: Purified Shadowsong Amethyst
		[2] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[3] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[4] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[5] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[6] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[7] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[8] = { itemID = 32285 }; --Design: Flashing Crimson Spinel
		[9] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
		[10] = { itemID = 32287 }; --Design: Sparkling Empyrean Sapphire
		[11] = { itemID = 32288 }; --Design: Lustrous Empyrean Sapphire
		[12] = { itemID = 32289 }; --Design: Stormy Empyrean Sapphire
		[13] = { itemID = 32290 }; --Design: Brilliant Lionseye
		[14] = { itemID = 32291 }; --Design: Smooth Lionseye
		[15] = { itemID = 32292 }; --Design: Rigid Lionseye
		[16] = { itemID = 32293 }; --Design: Gleaming Lionseye
		[17] = { itemID = 32294 }; --Design: Thick Lionseye
		[18] = { itemID = 32295 }; --Design: Mystic Lionseye
		[19] = { itemID = 32296 }; --Design: Great Lionseye
		[20] = { itemID = 32297 }; --Design: Sovereign Shadowsong Amethyst
		[21] = { itemID = 32298 }; --Design: Shifting Shadowsong Amethyst
		[22] = { itemID = 32299 }; --Design: Balanced Shadowsong Amethyst
		[23] = { itemID = 32300 }; --Design: Infused Shadowsong Amethyst
		[24] = { itemID = 32301 }; --Design: Glowing Shadowsong Amethyst
		[25] = { itemID = 32302 }; --Design: Royal Shadowsong Amethyst
		[26] = { itemID = 32303 }; --Design: Inscribed Pyrestone
		[27] = { itemID = 32304 }; --Design: Potent Pyrestone
		[28] = { itemID = 32305 }; --Design: Luminous Pyrestone
		[29] = { itemID = 32306 }; --Design: Glinting Pyrestone
		[30] = { itemID = 32307 }; --Design: Veiled Pyrestone
	};
	{
		Name = "Crafting Recipe Drops Page 2";
		[1] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[2] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[3] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[4] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[5] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[6] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[7] = { itemID = 35763 }; --Design: Quick Lionseye
		[8] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
		[9] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
		[10] = { itemID = 884039 }; --Design: Fractured Crimson Spinel
		[16] = { itemID = 32736 }; --Plans: Swiftsteel Bracers
		[17] = { itemID = 32739 }; --Plans: Dawnsteel Shoulders
		[18] = { itemID = 32745 }; --Pattern: Shoulderpads of Renewed Life
		[19] = { itemID = 32746 }; --Pattern: Swiftstrike Bracers
		[20] = { itemID = 32748 }; --Pattern: Bindings of Lightning Reflexes
		[21] = { itemID = 32751 }; --Pattern: Living Earth Shoulders
		[22] = { itemID = 32752 }; --Pattern: Swiftheal Wraps
		[23] = { itemID = 32755 }; --Pattern: Mantle of Nimble Thought
	};
};

------------------------------------------
--- Coilfang Reservoir: The Slave Pens ---
------------------------------------------

AtlasLoot_Data["CFRSlavePens"] = {
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Slave Pens"];
	DisplayName = BabbleZone["The Slave Pens"];
	Type = "BCDungeon";
	Map = "CFRTheSlavePens";
	{
		Name = BabbleBoss["Mennu the Betrayer"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24359, droprate = "0.20%" }; --Princely Reign Leggings
		[3] = { itemID = 24357, droprate = "1.94%" }; --Vest of Living Lightning
		[4] = { itemID = 24360, droprate = "1.07%" }; --Tracker's Belt
		[5] = { itemID = 24356, droprate = "2.47%" }; --Wastewalker Shiv
		[6] = { itemID = 24361, droprate = "1.07%" }; --Spellfire Longsword
		[8] = { itemID = 29674, droprate = ".80%" }; --Pattern: Nature Armor Kit
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30604, droprate = "2.49%" }; --Resplendent Fire Opal
		[19] = { itemID = 30605, droprate = ".39%" }; --Vivid Chrysoprase
		[20] = { itemID = 30603, droprate = "0.48%" }; --Royal Tanzanite
		[22] = { itemID = 27542, droprate = "6.50%" }; --Cord of Belief
		[23] = { itemID = 27545, droprate = ".50%" }; --Mennu's Scaled Leggings
		[24] = { itemID = 27541, droprate = "2.75%" }; --Archery Belt of the Broken
		[25] = { itemID = 27546, droprate = "3.75%" }; --Traitor's Noose
		[26] = { itemID = 27544, droprate = "2.25%" }; --Totem of Spontaneous Regrowth
		[27] = { itemID = 27543, droprate = "0.100" }; --Starlight Dagger
		[29] = { itemID = 29674, droprate = ".80%" }; --Pattern: Nature Armor Kit

	};
	{
		Name = BabbleBoss["Rokmar the Crackler"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24379, droprate = "0.05%" }; --Bogstrok Scale Cloak
		[3] = { itemID = 24376, droprate = "1.45%" }; --Runed Fungalcap
		[4] = { itemID = 24378, droprate = ".66%" }; --Coilfang Hammer of Renewal
		[5] = { itemID = 24380, droprate = "0.26%" }; --Calming Spore Reed
		[6] = { itemID = 24381, droprate = "0.05%" }; --Coilfang Needler
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30604, droprate = "2.49%" }; --Resplendent Fire Opal
		[19] = { itemID = 30605, droprate = ".39%" }; --Vivid Chrysoprase
		[20] = { itemID = 30603, droprate = "0.48%" }; --Royal Tanzanite
		[22] = { itemID = 27550, droprate = "1.48%" }; --Ironscale War Cloak
		[23] = { itemID = 27547, droprate = "4.85%" }; --Coldwhisper Cord
		[24] = { itemID = 28124, droprate = ".96%" }; --Liar's Cord
		[25] = { itemID = 27549, droprate = ".80%" }; --Wavefury Boots
		[26] = { itemID = 27548, droprate = "4.85%" }; --Girdle of Many Blessings
		[27] = { itemID = 27551, droprate = "6.25%" }; --Skeletal Necklace of Battlerage
	};
	{
		Name = BabbleBoss["Quagmirran"];
		[1] = { itemID = 27796, droprate = ".24%" }; --Mana-Etched Spaulders
		[2] = { itemID = 27713, droprate = "0.70%" }; --Pauldrons of Desolation
		[4] = { itemID = 27742, droprate = "2.100" }; --Mage-Fury Girdle
		[5] = { itemID = 27712, desc = "=ds=#s8#, #a2#"  }; --Shackles of Quagmirran
		[6] = { itemID = 27800, droprate = "3.76%" }; --Earthsoul Britches
		[7] = { itemID = 28337, droprate = ".73%" }; --Breastplate of Righteous Fury
		[8] = { itemID = 27672, droprate = ".64%" }; --Girdle of the Immovable
		[9] = { itemID = 27740, droprate = "2.23%" }; --Band of Ursol
		[10] = { itemID = 27683, droprate = ".86%" }; --Quagmirran's Eye
		[11] = { itemID = 27714, droprate = "0.92%" }; --Swamplight Lantern
		[12] = { itemID = 27673}; --Phosphorescent Blade
		[13] = { itemID = 27741, droprate = ".83%" }; --Bleeding Hollow Warhammer
		[15] = { itemID = 33821, droprate = "100%" }; --The Heart of Quagmirran
		[16] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[17] = { itemID = 30604, droprate = "2.49%" }; --Resplendent Fire Opal
		[18] = { itemID = 30605, droprate = ".39%" }; --Vivid Chrysoprase
		[19] = { itemID = 30603, droprate = "0.48%" }; --Royal Tanzanite
		[20] = { itemID = 29242, droprate = "0.04%" }; --Boots of Blasphemy
		[21] = { itemID = 30538, droprate = ".95%" }; --Midnight Legguards
		[22] = { itemID = 32078 }; --Pauldrons of Wild Magic
		[23] = { itemID = 29349, droprate = ".53%" }; --Adamantine Chain of the Unbroken
		[25] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[26] = { itemID = 24362, droprate = "0.63%" }; --Spore-Soaked Vaneer
		[27] = { itemID = 24365, droprate = "0.89%" }; --Deft Handguards
		[28] = { itemID = 24366, droprate = "1.72%" }; --Scorpid-Sting Mantle
		[29] = { itemID = 24363, droprate = ".54%" }; --Unscarred Breastplate
		[30] = { itemID = 24364, droprate = ".98%" }; --Azureplate Greaves
	};
};

------------------------------------------
--- Coilfang Reservoir: The Steamvault ---
------------------------------------------

AtlasLoot_Data["CFRSteamvault"] = {
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Steamvault"];
	DisplayName = BabbleZone["The Steamvault"];
	Type = "BCDungeon";
	Map = "CFRTheSteamvault";
	{
		Name = BabbleBoss["Hydromancer Thespia"];
		[1] = { itemID = 27508, droprate = "7.09%" }; --Incanter's Gloves
		[3] = { itemID = 27789, droprate = "4.32%" }; --Cloak of Whispering Shells
		[4] = { itemID = 27787, droprate = "7.65%" }; --Chestguard of No Remorse
		[5] = { itemID = 27783, droprate = "8.71%" }; --Moonrage Girdle
		[6] = { itemID = 27784, droprate = "6.72%" }; --Scintillating Coral Band
		[8] = { itemID = 29673, droprate = ".60%" }; --Pattern: Frost Armor Kit
		[10] = { itemID = 30828, droprate = "100%" }; --Vial of Underworld Loam
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30550, droprate = ".59%" }; --Sundered Chrysoprase
		[19] = { itemID = 30551, droprate = ".64%" }; --Infused Fire Opal
		[20] = { itemID = 30549, droprate = ".56%" }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Mekgineer Steamrigger"];
		[1] = { itemID = 27793, droprate = "6.92%" }; --Earth Mantle Handwraps
		[2] = { itemID = 27790, droprate = "6.65%" }; --Mask of Penance
		[3] = { itemID = 27792, droprate = "4.49%" }; --Steam-Hinge Chain of Valor
		[4] = { itemID = 27791, droprate = "7.09%" }; --Serpentcrest Life-Staff
		[5] = { itemID = 27794, droprate = "5.88%" }; --Recoilless Rocket Ripper X-54
		[7] = { itemID = 23887, droprate = ".52%" }; --Schematic: Rocket Boots Xtreme
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30550, droprate = ".59%" }; --Sundered Chrysoprase
		[19] = { itemID = 30551, droprate = ".64%" }; --Infused Fire Opal
		[20] = { itemID = 30549, droprate = ".56%" }; --Shifting Tanzanite
	};
	{
		Name = BabbleBoss["Warlord Kalithresh"];
		[1] = { itemID = 24313, droprate = ".20%" }; --Pattern: Battlecast Hood
		[3] = { itemID = 27738, droprate = "2.25%" }; --Incanter's Pauldrons
		[4] = { itemID = 27737, droprate = "2.89%" }; --Moonglade Shoulders
		[5] = { itemID = 27801, droprate = "0.63%" }; --Beast Lord Mantle
		[6] = { itemID = 27510, droprate = "2.45%" }; --Tidefury Gauntlets
		[7] = { itemID = 27874, droprate = ".56%" }; --Beast Lord Leggings
		[8] = { itemID = 28203, droprate = "0.98%" }; --Breastplate of the Righteous
		[9] = { itemID = 27475, droprate = "0.05%" }; --Gauntlets of the Bold
		[11] = { itemID = 27804, droprate = "2.18%" }; --Devilshark Cape
		[12] = { itemID = 27799, droprate = "2.47%" }; --Vermillion Robes of the Dominant
		[13] = { itemID = 27795, droprate = "1.03%" }; --Sash of Serpentra
		[14] = { itemID = 27806, droprate = "4.84%" }; --Fathomheart Gauntlets
		[15] = { itemID = 27805, droprate = "3.95%" }; --Ring of the Silver Hand
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30550, droprate = ".59%" }; --Sundered Chrysoprase
		[19] = { itemID = 30551, droprate = ".64%" }; --Infused Fire Opal
		[20] = { itemID = 30549, droprate = ".56%" }; --Shifting Tanzanite
		[21] = { itemID = 30543, droprate = ".81%" }; --Pontifex Kilt
		[22] = { itemID = 29243, droprate = "7.97%" }; --Wave-Fury Vambraces
		[23] = { itemID = 29463, droprate = ".34%" }; --Amber Bands of the Aggressor
		[24] = { itemID = 29351, droprate = ".52%" }; --Wrathtide Longbow
		[26] = { itemID = 31721, droprate = "100%" }; --Kalithresh's Trident
		[27] = { itemID = 33827, droprate = "100%" }; --The Warlord's Treatise
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 24159, droprate = ".14%" }; --Design: Khorium Band of Frost
		[3] = { itemID = 22533, droprate = ".40%" }; --Formula: Enchant Bracer - Fortitude
		[5] = { itemID = 24367, desc = "=ds=#m2#"  }; --Orders from Lady Vashj
		[6] = { itemID = 24368, droprate = "2.68%" }; --Coilfang Armaments
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Second Fragment Guardian"], "=q5=" .. BabbleZone["The Steamvault"] };
		[17] = { itemID = 24487, droprate = "100%" }; --Second Key Fragment
	};
};

----------------------------------------
--- Coilfang Reservoir: The Underbog ---
----------------------------------------

AtlasLoot_Data["CFRUnderbog"] = {
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["The Underbog"];
	DisplayName = BabbleZone["The Underbog"];
	Type = "BCDungeon";
	Map = "CFRTheUnderbog";
	{
		Name = BabbleBoss["Hungarfen"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24450, droprate = "1.72%" }; --Manaspark Gloves
		[3] = { itemID = 24452, droprate = "2.35%" }; --Starlight Gauntlets
		[4] = { itemID = 24451, droprate = "1.75%" }; --Lykul Bloodbands
		[5] = { itemID = 24413, droprate = "2.86%" }; --Totem of the Thunderhead
		[6] = { itemID = 27631, droprate = "1.60%" }; --Needle Shrike
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30606, droprate = "7.89%" }; --Lambent Chrysoprase
		[19] = { itemID = 30607, droprate = ".50%" }; --Splendid Fire Opal
		[20] = { itemID = 30608, droprate = ".76%" }; --Radiant Chrysoprase
		[22] = { itemID = 27746, droprate = ".37%" }; --Arcanium Signet Bands
		[23] = { itemID = 27745, droprate = "3.79%" }; --Hungarhide Gauntlets
		[24] = { itemID = 27743, droprate = "3.79%" }; --Girdle of Living Flame
		[25] = { itemID = 27748, droprate = ".39%" }; --Cassock of the Loyal
		[26] = { itemID = 27744, droprate = "6.26%" }; --Idol of Ursoc
		[27] = { itemID = 27747, droprate = "2.81%" }; --Boggspine Knuckles
	};
	{
		Name = BabbleBoss["Ghaz'an"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24459, droprate = "4.18%" }; --Cloak of Healing Rays
		[3] = { itemID = 24458, droprate = "4.06%" }; --Studded Girdle of Virtue
		[4] = { itemID = 24460, droprate = "2.99%" }; --Talisman of Tenacity
		[5] = { itemID = 24462, droprate = "2.75%" }; --Luminous Pearls of Insight
		[6] = { itemID = 24461, droprate = "4.12%" }; --Hatebringer
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30606, droprate = "7.89%" }; --Lambent Chrysoprase
		[19] = { itemID = 30607, droprate = ".50%" }; --Splendid Fire Opal
		[20] = { itemID = 30608, droprate = ".76%" }; --Radiant Chrysoprase
		[22] = { itemID = 27760, droprate = "4.67%" }; --Dunewind Sash
		[23] = { itemID = 27759, droprate = "3.33%" }; --Headdress of the Tides
		[24] = { itemID = 27755, droprate = ".33%" }; --Girdle of Gallantry
		[25] = { itemID = 27758, droprate = "2.100" }; --Hydra-fang Necklace
		[26] = { itemID = 27761, droprate = "8.67%" }; --Ring of the Shadow Deeps
		[27] = { itemID = 27757, droprate = "6.100" }; --Greatstaff of the Leviathan
	};
	{
		Name = BabbleBoss["Swamplord Musel'ek"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24454, droprate = "7.23%" }; --Cloak of Enduring Swiftness
		[3] = { itemID = 24455, droprate = "4.47%" }; --Tunic of the Nightwatcher
		[4] = { itemID = 24457, droprate = "4.42%" }; --Truth Bearer Shoulderguards
		[5] = { itemID = 24456, droprate = "2.41%" }; --Greaves of the Iron Guardian
		[6] = { itemID = 24453, droprate = "5.17%" }; --Zangartooth Shortblade
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30606, droprate = "7.89%" }; --Lambent Chrysoprase
		[19] = { itemID = 30607, droprate = ".50%" }; --Splendid Fire Opal
		[20] = { itemID = 30608, droprate = ".76%" }; --Radiant Chrysoprase
		[22] = { itemID = 27764, droprate = "2.14%" }; --Hands of the Sun
		[23] = { itemID = 27763, droprate = "0.100" }; --Crown of the Forest Lord
		[24] = { itemID = 27765, droprate = ".29%" }; --Armwraps of Disdain
		[25] = { itemID = 27766, droprate = "7.14%" }; --Swampstone Necklace
		[26] = { itemID = 27762 }; --Weathered Band of the Swamplord
		[27] = { itemID = 27767, droprate = ".29%" }; --Bogreaver
	};
	{
		Name = BabbleBoss["The Black Stalker"];
		[1] = { itemID = 24481, droprate = "0.55%" }; --Robes of the Augurer
		[2] = { itemID = 24466, droprate = "3.23%" }; --Skulldugger's Leggings
		[3] = { itemID = 24465, droprate = "0.95%" }; --Shamblehide Chestguard
		[4] = { itemID = 24463, droprate = "1.95%" }; --Pauldrons of Brute Force
		[5] = { itemID = 24464, droprate = "4.31%" }; --The Stalker's Fangs
		[7] = { itemID = 24248, droprate = "100%" }; --Brain of the Black Stalker
	};
	{ --only heroic
		Name = BabbleBoss["The Black Stalker"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 29265, droprate = ".54%" }; --Barkchip Boots
		[3] = { itemID = 30541, droprate = ".50%" }; --Stormsong Kilt
		[4] = { itemID = 32081 }; --Eye of the Stalker
		[5] = { itemID = 29350, droprate = ".88%" }; --The Black Stalk
		[7] = { itemID = 27781, droprate = ".94%" }; --Demonfang Ritual Helm
		[8] = { itemID = 27768, droprate = "4.63%" }; --Oracle Belt of Timeless Mystery
		[9] = { itemID = 27938, droprate = ".63%" }; --Savage Mask of the Lynx Lord
		[10] = { itemID = 27773, droprate = ".35%" }; --Barbaric Legstraps
		[11] = { itemID = 27779, droprate = "4.23%" }; --Bone Chain Necklace
		[12] = { itemID = 27780, droprate = ".90%" }; --Ring of Fabled Hope
		[13] = { itemID = 27896, droprate = "2.60%" }; --Alembic of Infernal Power
		[14] = { itemID = 27770, droprate = ".66%" }; --Argussian Compass
		[16] = { itemID = 30606, droprate = "7.89%" }; --Lambent Chrysoprase
		[17] = { itemID = 30607, droprate = ".50%" }; --Splendid Fire Opal
		[18] = { itemID = 30608, droprate = ".76%" }; --Radiant Chrysoprase
		[20] = { itemID = 27907, droprate = ".88%" }; --Mana-Etched Pantaloons
		[21] = { itemID = 27771, droprate = ".50%" }; --Doomplate Shoulderguards
		[23] = { itemID = 27769, droprate = ".35%" }; --Endbringer
		[24] = { itemID = 27772, droprate = "3.01%" }; --Stormshield of Renewal
		[26] = { itemID = 24248, droprate = "100%" }; --Brain of the Black Stalker
		[27] = { itemID = 33826, droprate = "100%" }; --Black Stalker Egg
	};
};
------------------------------------------------
--- Coilfang Reservoir: Serpentshrine Cavern ---
------------------------------------------------

AtlasLoot_Data["CFRSerpentshrine"] = {
	Name = BabbleZone["Coilfang Reservoir"] .. ": " .. BabbleZone["Serpentshrine Cavern"];
	DisplayName = BabbleZone["Serpentshrine Cavern"];
	Type = "BCRaid";
	Map = "CFRSerpentshrineCavern";
	{
		Name = BabbleBoss["Hydross the Unstable"];
		[1] = { itemID = 30056, droprate = "8%" }; --Robe of Hateful Echoes
		[2] = { itemID = 32516, droprate = "8%" }; --Wraps of Purification
		[3] = { itemID = 30050, droprate = "7%" }; --Boots of the Shifting Nightmare
		[4] = { itemID = 30055, droprate = "6%" }; --Shoulderpads of the Stranger
		[5] = { itemID = 30047, droprate = "9%" }; --Blackfathom Warbands
		[6] = { itemID = 30054, droprate = "8%" }; --Ranger-General's Chestguard
		[7] = { itemID = 30048, droprate = "1%" }; --Brighthelm of Justice
		[8] = { itemID = 30053, droprate = "6%" }; --Pauldrons of the Wardancer
		[16] = { itemID = 30052, droprate = "0%" }; --Ring of Lethality
		[17] = { itemID = 33055, droprate = "4%" }; --Band of Vile Aggression
		[18] = { itemID = 30664, droprate = "8%" }; --Living Root of the Wildheart
		[19] = { itemID = 30629, droprate = "1%" }; --Scarab of Displacement
		[20] = { itemID = 30049, droprate = "9%" }; --Fathomstone
		[21] = { itemID = 30051, droprate = "1%" }; --Idol of the Crescent Goddess
		[23] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[24] = { itemID = 816254, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Cloak - Crushing Wave
	};
	{
		Name = BabbleBoss["The Lurker Below"];
		[1] = { itemID = 30064, droprate = "7%" }; --Cord of Screaming Terrors
		[2] = { itemID = 30067, droprate = "7%" }; --Velvet Boots of the Guardian
		[3] = { itemID = 30062, droprate = "1%" }; --Grove-Bands of Remulos
		[4] = { itemID = 30060, droprate = "1%" }; --Boots of Effortless Striking
		[5] = { itemID = 30066, droprate = "1%" }; --Tempest-Strider Boots
		[6] = { itemID = 30065, droprate = "0%" }; --Glowing Breastplate of Truth
		[7] = { itemID = 30057, droprate = "9%" }; --Bracers of Eradication
		[9] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 30059, droprate = "1%" }; --Choker of Animalistic Fury
		[17] = { itemID = 30061, droprate = "0%" }; --Ancestral Ring of Conquest
		[18] = { itemID = 33054, droprate = "4%" }; --The Seal of Danzalar
		[19] = { itemID = 30665, droprate = "8%" }; --Earring of Soulful Meditation
		[20] = { itemID = 30063, droprate = "7%" }; --Libram of Absolute Truth
		[21] = { itemID = 30058, droprate = "0%" }; --Mallet of the Tides
	};
	{
		Name = BabbleBoss["Leotheras the Blind"];
		[1] = { itemID = 30092, droprate = "3%" }; --Orca-Hide Boots
		[2] = { itemID = 30097, droprate = "5%" }; --Coral-Barbed Shoulderpads
		[3] = { itemID = 30091, droprate = "7%" }; --True-Aim Stalker Bands
		[4] = { itemID = 30096, droprate = "4%" }; --Girdle of the Invulnerable
		[5] = { itemID = 30627, droprate = "5%" }; --Tsunami Talisman
		[6] = { itemID = 30095, droprate = "4%" }; --Fang of the Leviathan
		[16] = { itemID = 30240, droprate = "100%", lootTable = {"T5HAND","Token"} }; --Gloves of the Vanquished Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Fathom-Lord Karathress"];
		[1] = { itemID = 30100, droprate = "5%" }; --Soul-Strider Boots
		[2] = { itemID = 30101, droprate = "5%" }; --Bloodsea Brigand's Vest
		[3] = { itemID = 30099, droprate = "5%" }; --Frayed Tether of the Drowned
		[4] = { itemID = 30663, droprate = "5%" }; --Fathom-Brooch of the Tidewalker
		[5] = { itemID = 30626, droprate = "4%" }; --Sextant of Unstable Currents
		[6] = { itemID = 30090, droprate = "5%" }; --World Breaker
		[16] = { itemID = 30246, droprate = "100%", lootTable = {"T5LEGS","Token"} }; --Leggings of the Vanquished Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Morogrim Tidewalker"];
		[1] = { itemID = 30098, droprate = "2%" }; --Razor-Scale Battlecloak
		[2] = { itemID = 30079, droprate = "5%" }; --Illidari Shoulderpads
		[3] = { itemID = 30075, droprate = "9%" }; --Gnarled Chestpiece of the Ancients
		[4] = { itemID = 30085, droprate = "0%" }; --Mantle of the Tireless Tracker
		[5] = { itemID = 30068, droprate = "7%" }; --Girdle of the Tidal Call
		[6] = { itemID = 30084, droprate = "1%" }; --Pauldrons of the Argent Sentinel
		[7] = { itemID = 30081, droprate = "1%" }; --Warboots of Obliteration
		[9] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 30008, droprate = "8%" }; --Pendant of the Lost Ages
		[17] = { itemID = 30083, droprate = "1%" }; --Ring of Sundered Souls
		[18] = { itemID = 33058, droprate = "9%" }; --Band of the Vigilant
		[19] = { itemID = 30720, droprate = "0%" }; --Serpent-Coil Braid
		[20] = { itemID = 30082, droprate = "0%" }; --Talon of Azshara
		[21] = { itemID = 30080, droprate = "5%" }; --Luminescent Rod of the Naaru
	};
	{
		Name = BabbleBoss["Lady Vashj"];
		[1] = { itemID = 30107, droprate = "3%" }; --Vestments of the Sea-Witch
		[2] = { itemID = 30111, droprate = "4%" }; --Runetotem's Mantle
		[3] = { itemID = 30106, droprate = "2%" }; --Belt of One-Hundred Deaths
		[4] = { itemID = 30104, droprate = "3%" }; --Cobra-Lash Boots
		[5] = { itemID = 30102, droprate = "5%" }; --Krakken-Heart Breastplate
		[6] = { itemID = 30112, droprate = "4%" }; --Glorious Gauntlets of Crestfall
		[7] = { itemID = 30109, droprate = "3%" }; --Ring of Endless Coils
		[8] = { itemID = 30110, droprate = "6%" }; --Coral Band of the Revived
		[9] = { itemID = 30621, droprate = "3%" }; --Prism of Inner Calm
		[10] = { itemID = 30103, droprate = "4%" }; --Fang of Vashj
		[11] = { itemID = 30108, droprate = "4%" }; --Lightfathom Scepter
		[12] = { itemID = 30105, droprate = "3%" }; --Serpent Spine Longbow
		[16] = { itemID = 30243, droprate = "100%", lootTable = {"T5HEAD","Token"} }; --Helm of the Vanquished Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 29906, droprate = "5%" }; --Vashj's Vial Remnant
		[21] = { itemID = 450000, droprate = "%" }; --Intact Vial of Lady Vashj
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30027, droprate = "%" }; --Boots of Courage Unending
		[2] = { itemID = 30022, droprate = "%" }; --Pendant of the Perilous
		[3] = { itemID = 30620, droprate = "%" }; --Spyglass of the Hidden Fleet
		[4] = { itemID = 30023, droprate = "%" }; --Totem of the Maelstrom
		[5] = { itemID = 30021, droprate = "%" }; --Wildfury Greatstaff
		[6] = { itemID = 30025, droprate = "%" }; --Serpentshrine Shuriken
		[7] = { itemID = 44831, droprate = "%" }; --Mmrgrg glm Nuubs
		[9] = { itemID = 30324, droprate = "%" }; --Plans: Red Havoc Boots
		[10] = { itemID = 30322, droprate = "%" }; --Plans: Red Belt of Battle
		[11] = { itemID = 30323, droprate = "%" }; --Plans: Boots of the Protector
		[12] = { itemID = 30321, droprate = "%" }; --Plans: Belt of the Guardian
		[13] = { itemID = 30280, droprate = "%" }; --Pattern: Belt of Blasting
		[14] = { itemID = 30282, droprate = "%" }; --Pattern: Boots of Blasting
		[15] = { itemID = 30283, droprate = "%" }; --Pattern: Boots of the Long Road
		[16] = { itemID = 30281, droprate = "%" }; --Pattern: Belt of the Long Road
		[17] = { itemID = 30308, droprate = "%" }; --Pattern: Hurricane Boots
		[18] = { itemID = 30304, droprate = "%" }; --Pattern: Monsoon Belt
		[19] = { itemID = 30305, droprate = "%" }; --Pattern: Boots of Natural Grace
		[20] = { itemID = 30307, droprate = "%" }; --Pattern: Boots of the Crimson Hawk
		[21] = { itemID = 30306, droprate = "%" }; --Pattern: Boots of Utter Darkness
		[22] = { itemID = 30301, droprate = "%" }; --Pattern: Belt of Natural Power
		[23] = { itemID = 30303, droprate = "%" }; --Pattern: Belt of the Black Eagle
		[24] = { itemID = 30302, droprate = "%" }; --Pattern: Belt of Deep Shadow
		[26] = { itemID = 30183, droprate = "5%" }; --Nether Vortex
		[28] = { itemID = 32897, droprate = "7%" }; --Mark of the Illidari
	};
};

--------------------
--- Gruul's Lair ---
--------------------

AtlasLoot_Data["GruulsLair"] = {
	Name = BabbleZone["Gruul's Lair"];
	Type = "BCRaid";
	Map = "GruulsLair";
	{
		Name = BabbleBoss["High King Maulgar"];
		[1] = { itemID = 28797, droprate = ".39%" }; --Brute Cloak of the Ogre-Magi
		[2] = { itemID = 28799, droprate = ".98%" }; --Belt of Divine Inspiration
		[3] = { itemID = 28796, droprate = "2.93%" }; --Malefic Mask of the Shadows
		[4] = { itemID = 28801, droprate = "1.32%" }; --Maulgar's Warhelm
		[5] = { itemID = 28795, droprate = "2.02%" }; --Bladespire Warbands
		[6] = { itemID = 28800, droprate = "5.87%" }; --Hammer of the Naaru
		[16] = { itemID = 29764, droprate = "100%", lootTable = {"T4SHOULDER","Token"} }; --Pauldrons of the Fallen Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 816252, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Undaunted Might
	};
	{
		Name = BabbleBoss["Gruul the Dragonkiller"];
		[1] = { itemID = 28804, droprate = "4.96%" }; --Collar of Cho'gall
		[2] = { itemID = 28803, droprate = "4.21%" }; --Cowl of Nature's Breath
		[3] = { itemID = 28828, droprate = "1.22%" }; --Gronn-Stitched Girdle
		[4] = { itemID = 28827, droprate = ".48%" }; --Gauntlets of the Dragonslayer
		[5] = { itemID = 28810, droprate = "0.22%" }; --Windshear Boots
		[6] = { itemID = 28824, droprate = "2.22%" }; --Gauntlets of Martial Perfection
		[7] = { itemID = 28822, droprate = "1.47%" }; --Teeth of Gruul
		[8] = { itemID = 28823, droprate = ".73%" }; --Eye of Gruul
		[9] = { itemID = 28830, droprate = "1.72%" }; --Dragonspine Trophy
		[11] = { itemID = 31750, droprate = "100%" }; --Earthen Signet
		[16] = { itemID = 29767, droprate = "100%", lootTable = {"T4LEGS","Token"} }; --Leggings of the Fallen Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[20] = { itemID = 28802, droprate = ".23%" }; --Bloodmaw Magus-Blade
		[21] = { itemID = 28794, droprate = ".73%" }; --Axe of the Gronn Lords
		[22] = { itemID = 28825, droprate = ".99%" }; --Aldori Legacy Defender
		[23] = { itemID = 28826, droprate = "6.21%" }; --Shuriken of Negation
	};
};



-------------------------------------------
--- Hellfire Citadel: Hellfire Ramparts ---
-------------------------------------------

AtlasLoot_Data["HCRamparts"] = {
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Hellfire Ramparts"];
	DisplayName = BabbleZone["Hellfire Ramparts"];
	Type = "BCDungeon";
	Map = "HCHellfireRamparts";
	{
		Name = BabbleBoss["Watchkeeper Gargolmar"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24024, droprate = "4.69%" }; --Pauldrons of Arcane Rage
		[3] = { itemID = 24023, droprate = "3.29%" }; --Bracers of Finesse
		[4] = { itemID = 24022, droprate = "4.38%" }; --Scale Leggings of the Skirmisher
		[5] = { itemID = 24021, droprate = "3.03%" }; --Light-Touched Breastplate
		[6] = { itemID = 24020, droprate = "3.09%" }; --Shadowrend Longblade
		[8] = { itemID = 23881, droprate = "100%" }; --Gargolmar's Hand
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30593, droprate = "1.11%" }; --Iridescent Fire Opal
		[19] = { itemID = 30594, droprate = "2.35%" }; --Effulgent Chrysoprase
		[20] = { itemID = 30592, droprate = ".64%" }; --Steady Chrysoprase
		[22] = { itemID = 27448, droprate = "8.37%" }; --Cloak of the Everliving
		[23] = { itemID = 27451, droprate = "6.61%" }; --Boots of the Darkwalker
		[24] = { itemID = 27450, droprate = "4.19%" }; --Wild Stalker Boots
		[25] = { itemID = 27447, droprate = "3.84%" }; --Bracers of Just Rewards
		[26] = { itemID = 27449, droprate = "3.15%" }; --Blood Knight Defender
		[28] = { itemID = 23881, droprate = "100%" }; --Gargolmar's Hand
	};
	{
		Name = BabbleBoss["Omor the Unscarred"];
		[1] = { icon = "INV_Box_01", name = "#j27#" };
		[2] = { itemID = 27465, droprate = "1.74%" }; --Mana-Etched Gloves
		[3] = { itemID = 27466, droprate = "2.10%" }; --Headdress of Alacrity
		[4] = { itemID = 27462, droprate = ".12%" }; --Crimson Bracers of Gloom
		[5] = { itemID = 27467, droprate = "6.37%" }; --Silent-Strider Kneeboots
		[6] = { itemID = 27478, droprate = "4.59%" }; --Girdle of the Blasted Reaches
		[7] = { itemID = 27539, droprate = ".90%" }; --Justice Bearer's Pauldrons
		[8] = { itemID = 27906, droprate = "2.10%" }; --Crimsonforge Breastplate
		[9] = { itemID = 27464, droprate = "3.52%" }; --Omor's Unyielding Will
		[10] = { itemID = 27895, droprate = "1.74%" }; --Band of Many Prisms
		[11] = { itemID = 27477, droprate = "0.32%" }; --Faol's Signet of Cleansing
		[12] = { itemID = 27463, droprate = ".90%" }; --Terror Flame Dagger
		[13] = { itemID = 27476, droprate = ".25%" }; --Truncheon of Five Hells
		[16] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[17] = { itemID = 30593, droprate = "1.11%" }; --Iridescent Fire Opal
		[18] = { itemID = 30594, droprate = "2.35%" }; --Effulgent Chrysoprase
		[19] = { itemID = 30592, droprate = ".64%" }; --Steady Chrysoprase
		[21] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[22] = { itemID = 24090, droprate = "2.14%" }; --Bloodstained Ravager Gauntlets
		[23] = { itemID = 24091, droprate = "2.67%" }; --Tenacious Defender
		[24] = { itemID = 24073, droprate = "1.60%" }; --Garotte-String Necklace
		[25] = { itemID = 24096, droprate = "1.15%" }; --Heartblood Prayer Beads
		[26] = { itemID = 24094, droprate = "4.76%" }; --Heart Fire Warhammer
		[27] = { itemID = 24069, droprate = "2.43%" }; --Crystalfire Staff
		[29] = { itemID = 23886, droprate = "100%" }; --Omor's Hoof
	};
	{
		Name = BabbleBoss["Vazruden"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Reinforced Fel Iron Chest"] };
		[2] = { itemID = 24150, droprate = "5.65%" }; --Mok'Nathal Wildercloak
		[3] = { itemID = 24083, droprate = "7.100" }; --Lifegiver Britches
		[4] = { itemID = 24063, droprate = "7.25%" }; --Shifting Sash of Midnight
		[5] = { itemID = 24046, droprate = "5.96%" }; --Kilt of Rolling Thunders
		[6] = { itemID = 24064, droprate = "3.80%" }; --Ironsole Clompers
		[7] = { itemID = 24045, droprate = "4.44%" }; --Band of Renewal
		[8] = { itemID = 24154, droprate = "3.23%" }; --Witching Band
		[9] = { itemID = 24151, droprate = "5.45%" }; --Mok'Nathal Clan Ring
		[10] = { itemID = 24044, droprate = "3.91%" }; --Hellreaver
		[11] = { itemID = 24155, droprate = "6.21%" }; --Ursol's Claw
		[16] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Vazruden"] };
		[17] = { itemID = 23892, droprate = "100%" }; --Ominous Letter
		[19] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Nazan"] };
		[20] = { itemID = 23901, droprate = "100%" }; --Nazan's Head
	};
	{
		Name = BabbleBoss["Vazruden"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29264, droprate = "6.05%" }; --Tree-Mender's Belt
		[2] = { itemID = 32077 }; --Wrath Infused Gauntlets
		[3] = { itemID = 29238, droprate = "4.81%" }; --Lion's Heart Girdle
		[4] = { itemID = 29346, droprate = ".56%" }; --Feltooth Eviscerator
		[6] = { itemID = 27452, droprate = "1.73%" }; --Light Scribe Bands
		[7] = { itemID = 27461, droprate = "1.73%" }; --Chestguard of the Prowler
		[8] = { itemID = 27456, droprate = "9.75%" }; --Raiments of Nature's Breath
		[9] = { itemID = 27454, droprate = "6.66%" }; --Volcanic Pauldrons
		[10] = { itemID = 27458, droprate = "0.49%" }; --Oceansong Kilt
		[11] = { itemID = 27455, droprate = "1.11%" }; --Irondrake Faceguard
		[12] = { itemID = 27459, droprate = "0.49%" }; --Vambraces of Daring
		[13] = { itemID = 27457, droprate = ".02%" }; --Life Bearer's Gauntlets
		[16] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[17] = { itemID = 30593, droprate = "1.11%" }; --Iridescent Fire Opal
		[18] = { itemID = 30594, droprate = "2.35%" }; --Effulgent Chrysoprase
		[19] = { itemID = 30592, droprate = ".64%" }; --Steady Chrysoprase
		[21] = { itemID = 27453, droprate = "4.20%" }; --Averinn's Ring of Slaying
		[22] = { itemID = 27460, droprate = "7.90%" }; --Reavers' Ring
		[24] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Vazruden"] };
		[25] = { itemID = 23892, droprate = "100%" }; --Ominous Letter
		[27] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Nazan"] };
		[28] = { itemID = 23901, droprate = "100%" }; --Nazan's Head
	};
};




-------------------------------------------
--- Hellfire Citadel: The Blood Furnace ---
-------------------------------------------

AtlasLoot_Data["HCFurnace"] = {
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Blood Furnace"];
	DisplayName = BabbleZone["The Blood Furnace"];
	Type = "BCDungeon";
	Map = "HCBloodFurnace";
	{
		Name = BabbleBoss["The Maker"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24388, droprate = "5.84%" }; --Girdle of the Gale Storm
		[3] = { itemID = 24387, droprate = "3.27%" }; --Ironblade Gauntlets
		[4] = { itemID = 24385, droprate = "5.43%" }; --Pendant of Battle-Lust
		[5] = { itemID = 24386, droprate = "4.78%" }; --Libram of Saints Departed
		[6] = { itemID = 24384, droprate = "2.90%" }; --Diamond-Core Sledgemace
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30601, droprate = "8.18%" }; --Beaming Fire Opal
		[19] = { itemID = 30600, droprate = ".85%" }; --Fluorescent Tanzanite
		[20] = { itemID = 30602, droprate = "2.12%" }; --Jagged Chrysoprase
		[22] = { itemID = 27485, droprate = "3.89%" }; --Embroidered Cape of Mysteries
		[23] = { itemID = 27488, droprate = "6.67%" }; --Mage-Collar of the Firestorm
		[24] = { itemID = 27483, droprate = "5.100" }; --Moon-Touched Bands
		[25] = { itemID = 27487, droprate = ".26%" }; --Bloodlord Legplates
		[26] = { itemID = 27484, droprate = "4.81%" }; --Libram of Avengement
	};
	{
		Name = BabbleBoss["Broggok"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 24392, droprate = "4.37%" }; --Arcing Bracers
		[3] = { itemID = 24393, droprate = "7.62%" }; --Bloody Surgeon's Mitts
		[4] = { itemID = 24391, droprate = "6.58%" }; --Kilt of the Night Strider
		[5] = { itemID = 24390, droprate = "1.57%" }; --Auslese's Light Channeler
		[6] = { itemID = 24389, droprate = "7.69%" }; --Legion Blunderbuss
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30601, droprate = "8.18%" }; --Beaming Fire Opal
		[19] = { itemID = 30600, droprate = ".85%" }; --Fluorescent Tanzanite
		[20] = { itemID = 30602, droprate = "2.12%" }; --Jagged Chrysoprase
		[22] = { itemID = 27848, droprate = ".33%" }; --Embroidered Spellpyre Boots
		[23] = { itemID = 27492, droprate = "3.89%" }; --Moonchild Leggings
		[24] = { itemID = 27489, droprate = "2.22%" }; --Virtue Bearer's Vambraces
		[25] = { itemID = 27491, droprate = "0.56%" }; --Signet of Repose
		[26] = { itemID = 27490, droprate = ".72%" }; --Firebrand Battleaxe
	};
	{
		Name = BabbleBoss["Keli'dan the Breaker"];
		[1] = { itemID = 28264, droprate = ".82%" }; --Wastewalker Tunic
		[2] = { itemID = 27497, droprate = ".09%" }; --Doomplate Gauntlets
		[4] = { itemID = 27506, droprate = "7.42%" }; --Robe of Effervescent Light
		[5] = { itemID = 27514, droprate = "3.64%" }; --Leggings of the Unrepentant
		[6] = { itemID = 27522, droprate = "5.76%" }; --World's End Bracers
		[7] = { itemID = 27494, droprate = "1.50%" }; --Emerald Eye Bracer
		[8] = { itemID = 27505, droprate = "1.36%" }; --Ruby Helm of the Just
		[9] = { itemID = 27788 }; --Bloodsworn Warboots
		[10] = { itemID = 27495, droprate = ".85%" }; --Soldier's Dog Tags
		[11] = { itemID = 28121, droprate = ".33%" }; --Icon of Unyielding Courage
		[12] = { itemID = 27512, droprate = ".06%" }; --The Willbreaker
		[13] = { itemID = 27507, droprate = ".82%" }; --Adamantine Repeater
		[15] = { itemID = 33814, droprate = "100%" }; --Keli'dan's Feathered Stave
		[16] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[17] = { itemID = 30601, droprate = "8.18%" }; --Beaming Fire Opal
		[18] = { itemID = 30600, droprate = ".85%" }; --Fluorescent Tanzanite
		[19] = { itemID = 30602, droprate = "2.12%" }; --Jagged Chrysoprase
		[20] = { itemID = 32080 }; --Mantle of Shadowy Embrace
		[21] = { itemID = 29245, droprate = ".79%" }; --Wave-Crest Striders
		[22] = { itemID = 29239, droprate = ".82%" }; --Eaglecrest Warboots
		[23] = { itemID = 29347, droprate = ".58%" }; --Talisman of the Breaker
		[25] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[26] = { itemID = 24397, droprate = "6.92%" }; --Raiments of Divine Authority
		[27] = { itemID = 24395, droprate = "6.64%" }; --Mindfire Waistband
		[28] = { itemID = 24398, droprate = "4.29%" }; --Mantle of the Dusk-Dweller
		[29] = { itemID = 24396, droprate = "5.46%" }; --Vest of Vengeance
		[30] = { itemID = 24394, droprate = "5.52%" }; --Warsong Howling Axe
	};
};

---------------------------------------------
--- Hellfire Citadel: The Shattered Halls ---
---------------------------------------------

AtlasLoot_Data["HCShatteredHalls"] = {
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["The Shattered Halls"];
	DisplayName = BabbleZone["The Shattered Halls"];
	Type = "BCDungeon";
	Map = "HCTheShatteredHalls";
	{
		Name = BabbleBoss["Grand Warlock Nethekurse"];
		[1] = { itemID = 24312 };
		[3] = { itemID = 27519, droprate = "7.44%" }; --Cloak of Malice
		[4] = { itemID = 27517, droprate = "7.52%" }; --Bands of Nethekurse
		[5] = { itemID = 27521, droprate = "6.50%" }; --Telaari Hunting Girdle
		[6] = { itemID = 27520, droprate = "6.47%" }; --Greathelm of the Unbreakable
		[7] = { itemID = 27518, droprate = "7.42%" }; --Ivory Idol of the Moongoddess
		[9] = { itemID = 23735, droprate = "100%" }; --Grand Warlock's Amulet
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 24312 };
		[19] = { itemID = 30548, droprate = ".16%" }; --Polished Chrysoprase
		[20] = { itemID = 30547, droprate = ".19%" }; --Luminous Fire Opal
		[21] = { itemID = 30546, droprate = ".39%" }; --Sovereign Tanzanite
		[23] = { itemID = 25462, droprate = "100%" }; --Tome of Dusk
	};
	{
		Name = BabbleBoss["Blood Guard Porung"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 30548, droprate = ".16%" }; --Polished Chrysoprase
		[3] = { itemID = 30547, droprate = ".19%" }; --Luminous Fire Opal
		[4] = { itemID = 30546, droprate = ".39%" }; --Sovereign Tanzanite
		[6] = { itemID = 30709, droprate = "4.58%" }; --Pantaloons of Flaming Wrath
		[7] = { itemID = 30707, droprate = "0.42%" }; --Nimble-foot Treads
		[8] = { itemID = 30708, droprate = "2.50%" }; --Belt of Flowing Thought
		[9] = { itemID = 30705, droprate = "1.88%" }; --Spaulders of Slaughter
		[10] = { itemID = 30710, droprate = "0.42%" }; --Blood Guard's Necklace of Ferocity
	};
	{
		Name = BabbleBoss["Warbringer O'mrogg"];
		[1] = { itemID = 27802, droprate = "7.02%" }; --Tidefury Shoulderguards
		[3] = { itemID = 27525, droprate = "8.26%" }; --Jeweled Boots of Sanctification
		[4] = { itemID = 27868, droprate = "5.32%" }; --Runesong Dagger
		[5] = { itemID = 27524, droprate = "7.95%" }; --Firemaul of Destruction
		[6] = { itemID = 27526, droprate = "7.31%" }; --Skyfire Hawk-Bow
		[8] = { itemID = 30829, droprate = "100%" }; --Tear of the Earthmother
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30548, droprate = ".16%" }; --Polished Chrysoprase
		[19] = { itemID = 30547, droprate = ".19%" }; --Luminous Fire Opal
		[20] = { itemID = 30546, droprate = ".39%" }; --Sovereign Tanzanite
	};
	{
		Name = BabbleBoss["Warchief Kargath Bladefist"];
		[1] = { itemID = 27536, droprate = "2.63%" }; --Hallowed Handwraps
		[2] = { itemID = 27537, droprate = "2.54%" }; --Gloves of Oblivion
		[3] = { itemID = 27531, droprate = "1.03%" }; --Wastewalker Gloves
		[4] = { itemID = 27474, droprate = "0.73%" }; --Beast Lord Handguards
		[5] = { itemID = 27528, droprate = "3.86%" }; --Gauntlets of Desolation
		[6] = { itemID = 27535, droprate = "1.24%" }; --Gauntlets of the Righteous
		[8] = { itemID = 27527, droprate = "2.89%" }; --Greaves of the Shatterer
		[9] = { itemID = 27529, droprate = "0.41%" }; --Figurine of the Colossus
		[10] = { itemID = 27534, droprate = "2.98%" }; --Hortus' Seal of Brilliance
		[11] = { itemID = 27533, droprate = "2.70%" }; --Demonblood Eviscerator
		[12] = { itemID = 27538, droprate = "0.6%" }; --Lightsworn Hammer
		[13] = { itemID = 27540, droprate = "3.02%" }; --Nexus Torch
		[15] = { itemID = 23723, droprate = "100%" }; --Warchief Kargath's Fist
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30548, droprate = ".16%" }; --Polished Chrysoprase
		[19] = { itemID = 30547, droprate = ".19%" }; --Luminous Fire Opal
		[20] = { itemID = 30546, droprate = ".39%" }; --Sovereign Tanzanite
		[22] = { itemID = 29255, droprate = ".58%" }; --Bands of Rarefied Magic
		[23] = { itemID = 29263, droprate = ".28%" }; --Forestheart Bracers
		[24] = { itemID = 29254 }; --Boots of the Righteous Path
		[25] = { itemID = 29348, droprate = ".39%" }; --The Bladefist
		[27] = { itemID = 33815, droprate = "100%" }; --Bladefist's Seal
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 22554, droprate = ".65%" }; --Formula: Enchant 2H Weapon - Savagery
		[3] = { icon = "INV_Box_01", name = "=q6=" .. AL["Shattered Hand Executioner"] };
		[4] = { itemID = 31716, droprate = "100%" }; --Unused Axe of the Executioner
	};
};
--------------------------------------------
--- Hellfire Citadel: Magtheridon's Lair ---
--------------------------------------------

AtlasLoot_Data["HCMagtheridon"] = {
	Name = BabbleZone["Hellfire Citadel"] .. ": " .. BabbleZone["Magtheridon's Lair"];
	DisplayName = BabbleZone["Magtheridon's Lair"];
	Type = "BCRaid";
	Map = "HCMagtheridonsLair";
	{
		Name = BabbleBoss["Magtheridon"];
		[1] = { itemID = 28777 }; --Cloak of the Pit Stalker
		[2] = { itemID = 28780 }; --Soul-Eater's Handwraps
		[3] = { itemID = 28776 }; --Liar's Tongue Gloves
		[4] = { itemID = 28778 }; --Terror Pit Girdle
		[5] = { itemID = 28775 }; --Thundering Greathelm
		[6] = { itemID = 28779 }; --Girdle of the Endless Pit
		[7] = { itemID = 28789 }; --Eye of Magtheridon
		[8] = { itemID = 28781 }; --Karaborian Talisman
		[9] = { itemID = 28774 }; --Glaive of the Pit
		[10] = { itemID = 28782 }; --Crystalheart Pulse-Staff
		[11] = { itemID = 29458 }; --Aegis of the Vindicator
		[12] = { itemID = 28783 }; --Eredar Wand of Obliteration
		[14] = { itemID = 34845 }; --Pit Lord's Satchel
		[15] = { itemID = 34846 }; --Black Sack of Gems
		[16] = { itemID = 29753, droprate = "100%", lootTable = {"T4CHEST","Token"} }; --Chestguard of the Fallen Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[19] = { itemID = 32385, droprate = "100%" }; --Magtheridon's Head
		[20] = { itemID = 28791 }; --Ring of the Recalcitrant
		[21] = { itemID = 28790 }; --Naaru Lightwarden's Band
		[22] = { itemID = 28793 }; --Band of Crimson Fury
		[23] = { itemID = 28792 }; --A'dal's Signet of Defense
		[25] = { itemID = 428775, [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Mythic }; --Bor -o G'urth, the Hand of Death
		[26] = { itemID = 428776, [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Mythic }; --Lebed -o G'urth, the Finger of Death
	};
};
----------------
--- Karazhan ---
----------------

AtlasLoot_Data["Karazhan"] = {
	Name = "Karazhan";
	Type = "BCRaid";
	Map = "Karazhan";
	Loadfirst = 3;
	{
		Name = "Charred Bone Fragment (" .. AL["Quest Item"] .. ")";
		[1] = { itemID = 24152, icon = "INV_Misc_Bone_10" }; --Charred Bone Fragment
	};
	{
		Name = "Servant's Quarter Animal Bosses";
		[1] = { icon = "Ability_Hunter_Pet_Spider", name = "=q6=" .. BabbleBoss["Hyakiss the Lurker"], "=q5=" .. AL["Spider"] };
		[2] = { itemID = 30675, droprate = "2.81%" }; --Lurker's Cord
		[3] = { itemID = 30676, droprate = ".38%" }; --Lurker's Grasp
		[4] = { itemID = 30677, droprate = "3.44%" }; --Lurker's Belt
		[5] = { itemID = 30678, droprate = "5.62%" }; --Lurker's Girdle
		[7] = { icon = "Ability_Hunter_Pet_Hyena", name = "=q6=" .. BabbleBoss["Rokad the Ravager"], "=q5=" .. AL["Darkhound"] };
		[8] = { itemID = 30684, droprate = "7.78%" }; --Ravager's Cuffs
		[9] = { itemID = 30685, droprate = "1.11%" }; --Ravager's Wrist-Wraps
		[10] = { itemID = 30686, droprate = "3.33%" }; --Ravager's Bands
		[11] = { itemID = 30687, droprate = ".89%" }; --Ravager's Bracers
		[16] = { icon = "Ability_Hunter_Pet_Bat", name = "=q6=" .. BabbleBoss["Shadikith the Glider"], "=q5=" .. AL["Bat"] };
		[17] = { itemID = 30680, droprate = ".68%" }; --Glider's Foot-Wraps
		[18] = { itemID = 30681, droprate = "2.58%" }; --Glider's Boots
		[19] = { itemID = 30682, droprate = ".68%" }; --Glider's Sabatons
		[20] = { itemID = 30683, droprate = ".60%" }; --Glider's Greaves
	};
	{
		Name = BabbleBoss["Attumen the Huntsman"];
		[1] = { itemID = 28477, droprate = "4.68%" }; --Harbinger Bands
		[2] = { itemID = 28507, droprate = "2.44%" }; --Handwraps of Flowing Thought
		[3] = { itemID = 28508, droprate = "1.69%" }; --Gloves of Saintly Blessings
		[4] = { itemID = 28453, droprate = "2.19%" }; --Bracers of the White Stag
		[5] = { itemID = 28506, droprate = "4.68%" }; --Gloves of Dexterous Manipulation
		[6] = { itemID = 28503, droprate = ".20%" }; --Whirlwind Bracers
		[7] = { itemID = 28454, droprate = "6.17%" }; --Stalker's War Bands
		[8] = { itemID = 28502, droprate = "0.70%" }; --Vambraces of Courage
		[9] = { itemID = 28505, droprate = "0.95%" }; --Gauntlets of Renewed Hope
		[16] = { itemID = 28509, droprate = "7.16%" }; --Worgen Claw Necklace
		[17] = { itemID = 28510, droprate = "0.70%" }; --Spectral Band of Innervation
		[18] = { itemID = 28504, droprate = "2.44%" }; --Steelhawk Crossbow
		[19] = { itemID = 30480, droprate = ".25%" }; --Fiery Warhorse's Reins
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[23] = { itemID = 23809, droprate = ".100" }; --Schematic: Stabilized Eternium Scope
	};
	{
		Name = BabbleBoss["Moroes"];
		[1] = { itemID = 28529, droprate = "5.91%" }; --Royal Cloak of Arathi Kings
		[2] = { itemID = 28570, droprate = "2.18%" }; --Shadow-Cloak of Dalaran
		[3] = { itemID = 28565, droprate = "4.08%" }; --Nethershard Girdle
		[4] = { itemID = 28545, droprate = "1.07%" }; --Edgewalker Longboots
		[5] = { itemID = 28567, droprate = "2.05%" }; --Belt of Gale Force
		[6] = { itemID = 28566, droprate = "0.81%" }; --Crimson Girdle of the Indomitable
		[7] = { itemID = 28569, droprate = "1.33%" }; --Boots of Valiance
		[9] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 28530, droprate = "2.25%" }; --Brooch of Unquenchable Fury
		[17] = { itemID = 28528, droprate = "2.05%" }; --Moroes' Lucky Pocket Watch
		[18] = { itemID = 28525, droprate = "4.54%" }; --Signet of Unshakable Faith
		[19] = { itemID = 28568, droprate = "4.08%" }; --Idol of the Avian Heart
		[20] = { itemID = 28524, droprate = "2.90%" }; --Emerald Ripper
		[22] = { itemID = 22559, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Mongoose
	};
	{
		Name = "Keanna's Log (" .. AL["Quest Item"] .. ")";
		[1] = { itemID = 24492 }; --Keanna's Log
	};
	{
		Name = BabbleBoss["Maiden of Virtue"];
		[1] = { itemID = 28511, droprate = "2.46%" }; --Bands of Indwelling
		[2] = { itemID = 28515, droprate = "3.87%" }; --Bands of Nefarious Deeds
		[3] = { itemID = 28517, droprate = "6.96%" }; --Boots of Foretelling
		[4] = { itemID = 28514, droprate = "5.90%" }; --Bracers of Maliciousness
		[5] = { itemID = 28521, droprate = "3.16%" }; --Mitts of the Treemender
		[6] = { itemID = 28520, droprate = "3.16%" }; --Gloves of Centering
		[7] = { itemID = 28519, droprate = "4.22%" }; --Gloves of Quickening
		[8] = { itemID = 28512, droprate = "5%" }; --Bracers of Justice
		[9] = { itemID = 28518, droprate = "2.63%" }; --Iron Gauntlets of the Maiden
		[16] = { itemID = 28516, droprate = "1.48%" }; --Barbed Choker of Discipline
		[17] = { itemID = 28523, droprate = "4.58%" }; --Totem of Healing Rains
		[18] = { itemID = 28522, droprate = "0.69%" }; --Shard of the Virtuous
		[20] = { itemID = 229739, droprate = "100%" }; --Tome of Untold Secrets
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[22] = { itemID = 816253, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Faith
	};
	{
		Name = "Opera Event";
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Shared Drops"] };
		[2] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[3] = { itemID = 28594, droprate = "5.96%" }; --Trial-FireTrousers
		[4] = { itemID = 28591, droprate = "2.45%" }; --Earthsoul Leggings
		[5] = { itemID = 28589, droprate = "2.54%" }; --Beastmaw Pauldrons
		[6] = { itemID = 28593, droprate = "1.53%" }; --Eternium Greathelm
		[7] = { itemID = 28590, droprate = "8.41%" }; --Ribbon of Sacrifice
		[8] = { itemID = 28592, droprate = ".38%" }; --Libram of Souls Redeemed
		[10] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["The Crone"], "=q5=" .. AL["Wizard of Oz"] };
		[11] = { itemID = 28586, droprate = "0.12%" }; --Wicked Witch's Hat
		[12] = { itemID = 28585, droprate = "5.39%" }; --Ruby Slippers
		[13] = { itemID = 28587, droprate = "0.43%" }; --Legacy
		[14] = { itemID = 28588, droprate = "7.96%" }; --Blue Diamond Witchwand
		[16] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Romulo & Julianne"], "=q5=" .. AL["Romulo & Julianne"] };
		[17] = { itemID = 28578, droprate = "2.73%" }; --Masquerade Gown
		[18] = { itemID = 28579, droprate = "9.54%" }; --Romulo's Poison Vial
		[19] = { itemID = 28572, droprate = "3.52%" }; --Blade of the Unrequited
		[20] = { itemID = 28573, droprate = "0.07%" }; --Despair
		[24] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["The Big Bad Wolf"], "=q5=" .. AL["Red Riding Hood"] };
		[25] = { itemID = 28582, droprate = "2.85%" }; --Red Riding Hood's Cloak
		[26] = { itemID = 28583, droprate = "6.37%" }; --Big Bad Wolf's Head
		[27] = { itemID = 28584, droprate = "6.12%" }; --Big Bad Wolf's Paw
		[28] = { itemID = 28581, droprate = "2.42%" }; --Wolfslayer Sniper Rifle
	};
	{
		Name = BabbleBoss["Nightbane"];
		[1] = { itemID = 28602, droprate = "7.38%" }; --Robe of the Elder Scribes
		[2] = { itemID = 28600, droprate = "3.33%" }; --Stonebough Jerkin
		[3] = { itemID = 28601, droprate = "0.24%" }; --Chestguard of the Conniver
		[4] = { itemID = 28599, droprate = "1.67%" }; --Scaled Breastplate of Carnage
		[5] = { itemID = 28610, droprate = "5.71%" }; --Ferocious Swift-Kickers
		[6] = { itemID = 28597, droprate = "0.100" }; --Panzar'Thar Breastplate
		[7] = { itemID = 28608, droprate = ".05%" }; --Ironstriders of Urgency
		[9] = { itemID = 31751, droprate = "100%" }; --Blazing Signet
		[10] = { itemID = 24139, droprate = "100%" }; --Faint Arcane Essence
		[16] = { itemID = 28609, droprate = "3.33%" }; --Emberspur Talisman
		[17] = { itemID = 28603, droprate = "2.62%" }; --Talisman of Nightbane
		[18] = { itemID = 28604, droprate = "6.67%" }; --Nightstaff of the Everliving
		[19] = { itemID = 28611, droprate = "3.57%" }; --Dragonheart Flameshield
		[20] = { itemID = 28606, droprate = "2.14%" }; --Shield of Impenetrable Darkness
		[22] = { itemID = 229739, droprate = "100%" }; --Tome of Untold Secrets
		[23] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["The Curator"];
		[1] = { itemID = 28612, droprate = "5.19%" }; --Pauldrons of the Solace-Giver
		[2] = { itemID = 28647, droprate = "0.56%" }; --Forest Wind Shoulderpads
		[3] = { itemID = 28631, droprate = "3.47%" }; --Dragon-Quake Shoulderguards
		[4] = { itemID = 28621, droprate = "1.85%" }; --Wrynn Dynasty Greaves
		[5] = { itemID = 28649, droprate = "2.07%" }; --Garona's Signet Ring
		[6] = { itemID = 28633, droprate = "2.28%" }; --Staff of Infinite Mysteries
		[8] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 29758, droprate = "100%", lootTable = {"T4HAND","Token"} }; --Gloves of the Fallen Defender
	};
	{
		Name = BabbleBoss["Terestian Illhoof"];
		[1] = { itemID = 28660, droprate = "4.63%" }; --Gilded Thorium Cloak
		[2] = { itemID = 28653, droprate = "0.45%" }; --Shadowvine Cloak of Infusion
		[3] = { itemID = 28652, droprate = "0.75%" }; --Cincture of Will
		[4] = { itemID = 28654, droprate = "1.04%" }; --Malefic Girdle
		[5] = { itemID = 28655, droprate = "4.93%" }; --Cord of Nature's Sustenance
		[6] = { itemID = 28656, droprate = "7.91%" }; --Girdle of the Prowler
		[7] = { itemID = 28662, droprate = "7.31%" }; --Breastplate of the Lightbinder
		[9] = { itemID = 229739, droprate = "100%" }; --Tome of Untold Secrets
		[10] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 28661, droprate = "1.64%" }; --Mender's Heart-Ring
		[17] = { itemID = 28785, droprate = "0.75%" }; --The Lightning Capacitor
		[18] = { itemID = 28657, droprate = "4.63%" }; --Fool's Bane
		[19] = { itemID = 28658, droprate = ".46%" }; --Terestian's Stranglestaff
		[20] = { itemID = 28659, droprate = "3.43%" }; --Xavian Stiletto
		[22] = { itemID = 22561, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Soulfrost
	};
	{
		Name = BabbleBoss["Shade of Aran"];
		[1] = { itemID = 28672, droprate = "1.70%" }; --Drape of the Dark Reavers
		[2] = { itemID = 28726, droprate = "6.03%" }; --Mantle of the Mind Flayer
		[3] = { itemID = 28670, droprate = ".29%" }; --Boots of the Infernal Coven
		[4] = { itemID = 28663, droprate = "2.72%" }; --Boots of the Incorrupt
		[5] = { itemID = 28669, droprate = "1.32%" }; --Rapscallion Boots
		[6] = { itemID = 28671, droprate = "2.21%" }; --Steelspine Faceguard
		[7] = { itemID = 28666, droprate = "1.58%" }; --Pauldrons of the Justice-Seeker
		[9] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[11] = { itemID = 23933, droprate = "100%" }; --Medivh's Journal
		[16] = { itemID = 28674, droprate = "1.20%" }; --Saberclaw Talisman
		[17] = { itemID = 28675, droprate = "0.43%" }; --Shermanar Great-Ring
		[18] = { itemID = 28727, droprate = "5.39%" }; --Pendant of the Violet Eye
		[19] = { itemID = 28728, droprate = "2.72%" }; --Aran's Soothing Sapphire
		[20] = { itemID = 28673, droprate = ".25%" }; --Tirisfal Wand of Ascendancy
		[22] = { itemID = 22560, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Sunfire
	};
	{
		Name = BabbleBoss["Netherspite"];
		[1] = { itemID = 28744, droprate = "2.91%" }; --Uni-Mind Headdress
		[2] = { itemID = 28742, droprate = "0.99%" }; --Pantaloons of Repentence
		[3] = { itemID = 28732, droprate = "7.31%" }; --Cowl of Defiance
		[4] = { itemID = 28741, droprate = "5.38%" }; --Skulker's Greaves
		[5] = { itemID = 28735, droprate = "5.93%" }; --Earthblood Chestguard
		[6] = { itemID = 28740, droprate = "0.16%" }; --Rip-Flayer Leggings
		[7] = { itemID = 28743, droprate = ".34%" }; --Mantle of Abrahmis
		[8] = { itemID = 28733, droprate = "0.44%" }; --Girdle of Truth
		[16] = { itemID = 28731, droprate = "5.11%" }; --Shining Chain of the Afterworld
		[17] = { itemID = 28730, droprate = "0.99%" }; --Mithril Band of the Unscarred
		[18] = { itemID = 28734, droprate = "1.64%" }; --Jewel of Infinite Possibilities
		[19] = { itemID = 28729, droprate = ".32%" }; --Spiteblade
		[21] = { itemID = 229739, droprate = "100%" }; --Tome of Untold Secrets
		[22] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Chess Event"];
		[1] = { itemID = 28756, droprate = "7.98%" }; --Headdress of the High Potentate
		[2] = { itemID = 28755, droprate = "3.55%" }; --Bladed Shoulderpads of the Merciless
		[3] = { itemID = 28750, droprate = "5.02%" }; --Girdle of Treachery
		[4] = { itemID = 28752, droprate = "4.04%" }; --Forestlord Striders
		[5] = { itemID = 28751, droprate = "2.56%" }; --Heart-Flame Leggings
		[6] = { itemID = 28746, droprate = "6.26%" }; --Fiend Slayer Boots
		[7] = { itemID = 28748, droprate = "3.79%" }; --Legplates of the Innocent
		[8] = { itemID = 28747, droprate = "3.79%" }; --Battlescar Boots
		[16] = { itemID = 28745, droprate = "2.81%" }; --Mithril Chain of Heroism
		[17] = { itemID = 28753, droprate = "2.56%" }; --Ring of Recurrence
		[18] = { itemID = 28749, droprate = "2.07%" }; --King's Defender
		[19] = { itemID = 28754, droprate = "3.30%" }; --Triptych Shield of the Ancients
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Prince Malchezaar"];
		[1] = { itemID = 28765, droprate = "0.37%" }; --Stainless Cloak of the Pure Hearted
		[2] = { itemID = 28766, droprate = "2.50%" }; --Ruby Drape of the Mysticant
		[3] = { itemID = 28764, droprate = "5.96%" }; --Farstrider Wildercloak
		[4] = { itemID = 28762, droprate = ".57%" }; --Adornment of Stolen Souls
		[5] = { itemID = 28763, droprate = "1.84%" }; --Jade Ring of the Everliving
		[6] = { itemID = 28757, droprate = "2.90%" }; --Ring of a Thousand Marks
		[8] = { itemID = 28770, droprate = "0.64%" }; --Nathrezim Mindblade
		[9] = { itemID = 28768, droprate = ".84%" }; --Malchazeen
		[10] = { itemID = 28767, droprate = "5.43%" }; --The Decapitator
		[11] = { itemID = 28773, droprate = "2.63%" }; --Gorehowl
		[12] = { itemID = 28771, droprate = "1.17%" }; --Light's Justice
		[13] = { itemID = 28772, droprate = ".97%" }; --Sunfury Bow of the Phoenix
		[16] = { itemID = 29761, droprate = "100%", lootTable = {"T4HEAD","Token"} }; --Helm of the Fallen Defender
		[18] = { itemID = 229739, droprate = "100%" }; --Tome of Untold Secrets
		[19] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[21] = { itemID = 499438, [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic,"" }; --Smoldering Emberwyrm
	};
	{ --Trash Mobs
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30642, droprate = ".22%" }; --Drape of the Righteous
		[2] = { itemID = 30668, droprate = ".17%" }; --Grasp of the Dead
		[3] = { itemID = 30673, droprate = ".21%" }; --Inferno Waist Cord
		[4] = { itemID = 30644, droprate = ".23%" }; --Grips of the Deftness
		[5] = { itemID = 30674, droprate = ".17%" }; --Zierhut's Lost Treads
		[6] = { itemID = 30643, droprate = ".19%" }; --Belt of the Tracker
		[7] = { itemID = 30641, droprate = ".13%" }; --Boots of Elusion
		[9] = { itemID = 23857 }; --Legacy of the Mountain King
		[10] = { itemID = 23864 }; --Torment of the Worgen
		[11] = { itemID = 23862 }; --Redemption of the Fallen
		[12] = { itemID = 23865 }; --Wrath of the Titans
		[14] = { itemID = 21882 }; --Soul Essence
		[16] = { itemID = 30666, droprate = ".18%" }; --Ritssyn's Lost Pendant
		[17] = { itemID = 30667, droprate = ".17%" }; --Ring of Unrelenting Storms
		[19] = { itemID = 21903, droprate = ".74%" }; --Pattern: Soulcloth Shoulders
		[20] = { itemID = 21904, droprate = ".07%" }; --Pattern: Soulcloth Vest  
		[21] = { itemID = 22545, droprate = ".66%" }; --Formula: Enchant Boots - Surefooted
	};
};
----------------------------------------
--- Sunwell Isle: Magister's Terrace ---
----------------------------------------

AtlasLoot_Data["MagistersTerrace"] = {
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Magisters' Terrace"];
	DisplayName = BabbleZone["Magisters' Terrace"];
	Type = "BCDungeon";
	Map = "MagistersTerrace";
	{
		Name = BabbleBoss["Selin Fireheart"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 434702, droprate = "%" }; --Cloak of Swift Mending
		[3] = { itemID = 434697, droprate = "%" }; --Bindings of Raging Fire
		[4] = { itemID = 434701, droprate = "%" }; --Leggings of the Betrayed
		[5] = { itemID = 434698, droprate = "%" }; --Bracers of the Forest Stalker
		[6] = { itemID = 434700, droprate = "%" }; --Gauntlets of Divine Blessings
		[7] = { itemID = 434699, droprate = "%" }; --Sun-forged Cleaver
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 434602, droprate = "0%" }; --Eversong Cuffs
		[19] = { itemID = 434601, droprate = "1%" }; --Shoulderplates of Everlasting Pain
		[20] = { itemID = 434604, droprate = "1%" }; --Jaded Crystal Dagger
		[21] = { itemID = 434603, droprate = "1%" }; --Distracting Blades
		[23] = { itemID = 435275, droprate = "%" }; --Orb of the Sin'dorei
	};
	{
		Name = BabbleBoss["Vexallus"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 434708, droprate = "7%" }; --Cloak of the Coming Night
		[3] = { itemID = 434705, droprate = "%" }; --Bracers of Divine Infusion
		[4] = { itemID = 434707, droprate = "6%" }; --Boots of Resuscitation
		[5] = { itemID = 434704, droprate = "8%" }; --Band of Arcane Alacrity
		[6] = { itemID = 434706, droprate = "%" }; --Band of Determination
		[7] = { itemID = 434703, droprate = "6%" }; --Latro's Dancing Blade
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 434607, droprate = "0%" }; --Fel-tinged Mantle
		[19] = { itemID = 434605, droprate = "9%" }; --Breastplate of Fierce Survival
		[20] = { itemID = 434606, droprate = "0%" }; --Edge of Oppression
		[21] = { itemID = 434608, droprate = "9%" }; --Rod of the Blazing Light
		[23] = { itemID = 435275, droprate = "%" }; --Orb of the Sin'dorei
	};
	{
		Name = BabbleBoss["Priestess Delrissa"];
		[1] = { icon = "INV_Box_01", name = "=q6=#j1#" };
		[2] = { itemID = 434792, droprate = "7%" }; --Cloak of the Betrayed
		[3] = { itemID = 434788, droprate = "%" }; --Duskhallow Mantle
		[4] = { itemID = 434791, droprate = "6%" }; --Gauntlets of the Tranquil Waves
		[5] = { itemID = 434789, droprate = "7%" }; --Bracers of Slaughter
		[6] = { itemID = 434790, droprate = "6%" }; --Battle-mace of the High Priestess
		[7] = { itemID = 434783, droprate = "7%" }; --Nightstrike
		[9] = { itemID = 35756, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Cloak - Steelweave
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 434473, droprate = "9%" }; --Commendation of Kael'thas
		[19] = { itemID = 434472, droprate = "9%" }; --Shard of Contempt
		[20] = { itemID = 434470, droprate = "9%" }; --Timbal's Focusing Crystal
		[21] = { itemID = 434471, droprate = "9%" }; --Vial of the Sunwell
		[23] = { itemID = 435275, droprate = "%" }; --Orb of the Sin'dorei
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		[1] = { itemID = 434810, droprate = "%" }; --Cloak of Blade Turning
		[2] = { itemID = 434808, droprate = "%" }; --Gloves of Arcane Acuity
		[3] = { itemID = 434809, droprate = "5%" }; --Sunrage Treads
		[4] = { itemID = 434799, droprate = "3%" }; --Hauberk of the War Bringer
		[5] = { itemID = 434807, droprate = "%" }; --Sunstrider Warboots
		[6] = { itemID = 434625, droprate = "%" }; --Kharmaa's Ring of Fate
		[8] = { itemID = 34157, droprate = "6%" }; --Head of Kael'thas
		[16] = { itemID = 434793, droprate = "%" }; --Cord of Reconstruction
		[17] = { itemID = 434796, droprate = "%" }; --Robes of Summer Flame
		[18] = { itemID = 434795, droprate = "%" }; --Helm of Sanctification
		[19] = { itemID = 434798, droprate = "%" }; --Band of Celerity
		[20] = { itemID = 434794, droprate = "%" }; --Axe of Shattered Dreams
		[21] = { itemID = 434797, droprate = "4%" }; --Sun-infused Focus Staff
		[22] = { itemID = 35504, droprate = "%" }; --Phoenix Hatchling
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 434610, droprate = "9%" }; --Scarlet Sin'dorei Robes
		[3] = { itemID = 434613, droprate = "9%" }; --Shoulderpads of the Silvermoon Retainer
		[4] = { itemID = 434614, droprate = "8%" }; --Tunic of the Ranger Lord
		[5] = { itemID = 434615, droprate = "9%" }; --Netherforce Chestplate
		[6] = { itemID = 434612, droprate = "9%" }; --Greaves of the Penitent Knight
		[8] = { itemID = 34160, droprate = "2%" }; --The Signet Ring of Prince Kael'thas
		[16] = { itemID = 434609, droprate = "0%" }; --Quickening Blade of the Prince
		[17] = { itemID = 434616, droprate = "9%" }; --Breeching Comet
		[18] = { itemID = 434611, droprate = "9%" }; --Cudgel of Consecration
		[19] = { itemID = 35513, droprate = "%" }; --Swift White Hawkstrider
		[21] = { itemID = 35504, droprate = "%" }; --Phoenix Hatchling
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 35516, droprate = "%" }; --Sun Touched Satchel
	};
};
-------------------------------------
--- Sunwell Isle: Sunwell Plateau ---
-------------------------------------

AtlasLoot_Data["SunwellPlateau"] = {
	Name = AL["Sunwell Isle"] .. ": " .. BabbleZone["Sunwell Plateau"];
	DisplayName = BabbleZone["Sunwell Plateau"];
	Type = "BCRaid";
	Map = "SunwellPlateau";
	{
		Name = BabbleBoss["Kalecgos"];
		[1] = { itemID = 34170 }; --Pantaloons of Calming Strife
		[2] = { itemID = 34386 }; --Pantaloons of Growing Strife
		[3] = { itemID = 34169 }; --Breeches of Natural Aggression
		[4] = { itemID = 34384 }; --Breeches of Natural Splendor
		[5] = { itemID = 34168, droprate = ".#INF%" }; --Starstalker Legguards
		[6] = { itemID = 34167 }; --Legplates of the Holy Juggernaut
		[7] = { itemID = 34382 }; --Judicator's Legguards
		[8] = { itemID = 34166, droprate = ".#INF%" }; --Band of Lucent Beams
		[9] = { itemID = 34165 }; --Fang of Kalecgos
		[10] = { itemID = 34164 }; --Dragonscale-Encrusted Longblade
		[16] = { itemID = 34848, droprate = "0%" }; --Bracers of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 34851, droprate = "1%" }; --Bracers of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 34852, droprate = "2%" }; --Bracers of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Brutallus"];
		[1] = { itemID = 34181, droprate = "5%" }; --Leggings of Calamity
		[2] = { itemID = 34180, droprate = "3%" }; --Felfury Legplates
		[3] = { itemID = 34381 }; --Felstrength Legplates
		[4] = { itemID = 34178, droprate = "5%" }; --Collar of the Pit Lord
		[5] = { itemID = 34177, droprate = "5%" }; --Clutch of Demise
		[6] = { itemID = 34179, droprate = "3%" }; --Heart of the Pit
		[7] = { itemID = 34176, droprate = "7%" }; --Reign of Misery
		[16] = { itemID = 34853, droprate = "4%" }; --Belt of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 34854, droprate = "0%" }; --Belt of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 34855, droprate = "5%" }; --Belt of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Felmyst"];
		[1] = { itemID = 34352, droprate = "5%" }; --Borderland Fortress Grips
		[2] = { itemID = 34188, droprate = "4%" }; --Leggings of the Immortal Night
		[3] = { itemID = 34385 }; --Leggings of the Immortal Beast
		[4] = { itemID = 34186, droprate = "5%" }; --Chain Links of the Tumultuous Storm
		[5] = { itemID = 34383 }; --Kilt of Spiritual Reconstruction
		[6] = { itemID = 34184, droprate = "6%" }; --Brooch of the Highborne
		[7] = { itemID = 34185, droprate = "6%" }; --Sword Breaker's Bulwark
		[8] = { itemID = 34182, droprate = "7%" }; --Grand Magister's Staff of Torrents
		[16] = { itemID = 34856, droprate = "9%" }; --Boots of the Forgotten Conqueror --#m1# =ds=#c4#, #c5#, #c8#
		[17] = { itemID = 34857, droprate = "6%" }; --Boots of the Forgotten Protector --#m1# =ds=#c9#, #c2#, #c7#
		[18] = { itemID = 34858, droprate = "7%" }; --Boots of the Forgotten Vanquisher --#m1# =ds=#c6#, #c3#, #c1#
		[20] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["The Eredar Twins"];
		[1] = { itemID = 34205, droprate = "8%" }; --Shroud of Redeemed Souls
		[2] = { itemID = 34190, droprate = "6%" }; --Crimson Paragon's Cover
		[3] = { itemID = 34210, droprate = "9%" }; --Amice of the Convoker
		[4] = { itemID = 34202, droprate = "3%" }; --Shawl of Wonderment
		[5] = { itemID = 34393 }; --Shoulderpads of Knowledge's Pursuit
		[6] = { itemID = 34209, droprate = "0%" }; --Spaulders of Reclamation
		[7] = { itemID = 34391 }; --Spaulders of Devastation
		[8] = { itemID = 34195, droprate = "7%" }; --Shoulderpads of Vehemence
		[9] = { itemID = 34392 }; --Demontooth Shoulderpads
		[10] = { itemID = 34194, droprate = "1%" }; --Mantle of the Golden Forest
		[11] = { itemID = 34208, droprate = "9%" }; --Equilibrium Epaulets
		[12] = { itemID = 34390 }; --Erupting Epaulets
		[13] = { itemID = 34192, droprate = "9%" }; --Pauldrons of Perseverance
		[14] = { itemID = 34388 }; --Pauldrons of Berserking
		[16] = { itemID = 34193, droprate = "7%" }; --Spaulders of the Thalassian Savior
		[17] = { itemID = 34389 }; --Spaulders of the Thalassian Defender
		[18] = { itemID = 35290, droprate = "3%" }; --Sin'dorei Pendant of Conquest
		[19] = { itemID = 35291, droprate = "2%" }; --Sin'dorei Pendant of Salvation
		[20] = { itemID = 35292, droprate = "2%" }; --Sin'dorei Pendant of Triumph
		[21] = { itemID = 34204, droprate = "0%" }; --Amulet of Unfettered Magics
		[22] = { itemID = 34189, droprate = "8%" }; --Band of Ruinous Delight
		[23] = { itemID = 34206, droprate = "2%" }; --Book of Highborne Hymns
		[24] = { itemID = 34197, droprate = "3%" }; --Shiv of Exsanguination
		[25] = { itemID = 34199, droprate = "7%" }; --Archon's Gavel
		[26] = { itemID = 34203, droprate = "0%" }; --Grip of Mannoroth
		[27] = { itemID = 34198, droprate = "9%" }; --Stanchion of Primal Instinct
		[28] = { itemID = 34196, droprate = "8%" }; --Golden Bow of Quel'Thalas
		[30] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["M'uru"];
		[1] = { itemID = 34232, droprate = "3%" }; --Fel Conquerer Raiments
		[2] = { itemID = 34233, droprate = "7%" }; --Robes of Faltered Light
		[3] = { itemID = 34399 }; --Robes of Ghostly Hatred
		[4] = { itemID = 34212, droprate = "4%" }; --Sunglow Vest
		[5] = { itemID = 34398 }; --Utopian Tunic of Elune
		[6] = { itemID = 34211, droprate = "5%" }; --Harness of Carnal Instinct
		[7] = { itemID = 34397 }; --Bladed Chaos Tunic
		[8] = { itemID = 34234, droprate = "8%" }; --Shadowed Gauntlets of Paroxysm
		[9] = { itemID = 34408 }; --Gloves of the Forest Drifter
		[10] = { itemID = 34229, droprate = "3%" }; --Garments of Serene Shores
		[11] = { itemID = 34396 }; --Garments of Crashing Shores
		[12] = { itemID = 34228, droprate = "5%" }; --Vicious Hawkstrider Hauberk
		[13] = { itemID = 34215, droprate = "6%" }; --Warharness of Reckless Fury
		[14] = { itemID = 34394 }; --Breastplate of Agony's Aversion
		[15] = { itemID = 34240, droprate = "5%" }; --Gauntlets of the Soothed Soul
		[16] = { itemID = 34216, droprate = "6%" }; --Heroic Judicator's Chestguard
		[17] = { itemID = 34395 }; --Noble Judicator's Chestguard
		[18] = { itemID = 34213, droprate = "5%" }; --Ring of Hardened Resolve
		[19] = { itemID = 34230, droprate = "6%" }; --Ring of Omnipotence
		[20] = { itemID = 35282, droprate = "1%" }; --Sin'dorei Band of Dominance
		[21] = { itemID = 35283, droprate = "1%" }; --Sin'dorei Band of Salvation
		[22] = { itemID = 35284, droprate = "4%" }; --Sin'dorei Band of Triumph
		[23] = { itemID = 34427, droprate = "3%" }; --Blackened Naaru Sliver
		[24] = { itemID = 34430, droprate = "6%" }; --Glimmering Naaru Sliver
		[25] = { itemID = 34429, droprate = "5%" }; --Shifting Naaru Sliver
		[26] = { itemID = 34428, droprate = "5%" }; --Steely Naaru Sliver
		[27] = { itemID = 34214, droprate = "6%" }; --Muramasa
		[28] = { itemID = 34231, droprate = "4%" }; --Aegis of Angelic Fortune
		[30] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Kil'jaeden"];
		[1] = { itemID = 34241, droprate = "6%" }; --Cloak of Unforgivable Sin
		[2] = { itemID = 34242, droprate = "6%" }; --Tattered Cape of Antonidas
		[3] = { itemID = 34339, droprate = "8%" }; --Cowl of Light's Purity
		[4] = { itemID = 34405 }; --Helm of Arcane Purity
		[5] = { itemID = 34340, droprate = "0%" }; --Dark Conjuror's Collar
		[6] = { itemID = 34342, droprate = "9%" }; --Handguards of the Dawn
		[7] = { itemID = 34406 }; --Gloves of Tyri's Power
		[8] = { itemID = 34344, droprate = "2%" }; --Handguards of the Defiled Worlds
		[9] = { itemID = 34244, droprate = "7%" }; --Duplicitous Guise
		[10] = { itemID = 34404 }; --Mask of the Furry Hunter
		[11] = { itemID = 34245, droprate = "4%" }; --Cover of Ursol the Wise
		[12] = { itemID = 34403 }; --Cover of Ursoc the Mighty
		[13] = { itemID = 34333, droprate = "4%" }; --Coif of Alleria
		[14] = { itemID = 34332, droprate = "4%" }; --Cowl of Gul'dan
		[15] = { itemID = 34402 }; --Shroud of Chieftain Ner'zhul
		[16] = { itemID = 34343, droprate = "8%" }; --Thalassian Ranger Gauntlets
		[17] = { itemID = 34243, droprate = "1%" }; --Helm of Burning Righteousness
		[18] = { itemID = 34401 }; --Helm of Uther's Resolve
		[19] = { itemID = 34345, droprate = "6%" }; --Crown of Anasterian
		[20] = { itemID = 34400 }; --Crown of Dath'Remar
		[21] = { itemID = 34341, droprate = "8%" }; --Borderland Paingrips
		[23] = { itemID = 34334, droprate = "%" }; --Thori'dal, the Stars' Fury
		[25] = { itemID = 34329, droprate = "6%" }; --Crux of the Apocalypse
		[26] = { itemID = 34247, droprate = "7%" }; --Apolyon, the Soul-Render
		[27] = { itemID = 34335, droprate = "0%" }; --Hammer of Sanctification
		[28] = { itemID = 34331, droprate = "7%" }; --Hand of the Deceiver
		[29] = { itemID = 34336, droprate = "8%" }; --Sunflare
		[30] = { itemID = 34337, droprate = "4%" }; --Golden Staff of the Sin'dorei
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 34351, droprate = "%" }; --Tranquil Majesty Wraps
		[2] = { itemID = 34407 }; --Tranquil Moonlight Wraps
		[3] = { itemID = 34350, droprate = "%" }; --Gauntlets of the Ancient Shadowmoon
		[4] = { itemID = 34409 }; --Gauntlets of the Ancient Frostwolf
		[5] = { itemID = 35733, droprate = "%" }; --Ring of Harmonic Beauty
		[6] = { itemID = 34183, droprate = "%" }; --Shivering Felspine
		[7] = { itemID = 34346, droprate = "%" }; --Mounting Vengeance
		[8] = { itemID = 34349, droprate = "%" }; --Blade of Life's Inevitability
		[9] = { itemID = 34348, droprate = "%" }; --Wand of Cleansing Light
		[10] = { itemID = 34347, droprate = "%" }; --Wand of the Demonsoul
		[12] = { itemID = 35273, droprate = "%" }; --Study of Advanced Smelting
		[14] = { itemID = 34664, droprate = "6%" }; --Sunmote
		[16] = { itemID = 32228, droprate = "2%" }; --Empyrean Sapphire
		[17] = { itemID = 32231, droprate = "%" }; --Pyrestone
		[18] = { itemID = 32229, droprate = "%" }; --Lionseye
		[19] = { itemID = 32249, droprate = "%" }; --Seaspray Emerald
		[20] = { itemID = 32230, droprate = "%" }; --Shadowsong Amethyst
		[21] = { itemID = 32227, droprate = "%" }; --Crimson Spinel
		[23] = { itemID = 35208, droprate = ".25%" }; --Plans: Sunblessed Gauntlets
		[24] = { itemID = 35210, droprate = ".25%" }; --Plans: Sunblessed Breastplate
		[25] = { itemID = 35209, droprate = "%" }; --Plans: Hard Khorium Battlefists
		[26] = { itemID = 35211, droprate = ".38%" }; --Plans: Hard Khorium Battleplate
	};
	{
		Name = "SP Patterns/Plans";
		[1] = { itemID = 35212 }; --Pattern: Leather Gauntlets of the Sun
		[2] = { itemID = 35216 }; --Pattern: Leather Chestguard of the Sun
		[3] = { itemID = 35213 }; --Pattern: Fletcher's Gloves of the Phoenix
		[4] = { itemID = 35217 }; --Pattern: Pattern: Embrace of the Phoenix
		[5] = { itemID = 35214 }; --Pattern: Gloves of Immortal Dusk
		[6] = { itemID = 35218 }; --Pattern: Carapace of Sun and Shadow
		[7] = { itemID = 35215 }; --Pattern: Sun-Drenched Scale Gloves
		[8] = { itemID = 35219 }; --Pattern: Sun-Drenched Scale Chestguard
		[9] = { itemID = 35204 }; --Pattern: Sunfire Handwraps
		[10] = { itemID = 35206 }; --Pattern: Sunfire Robe
		[11] = { itemID = 35205 }; --Pattern: Hands of Eternal Light
		[12] = { itemID = 35207 }; --Pattern: Robe of Eternal Light
		[13] = { itemID = 35198 }; --Design: Loop of Forged Power
		[14] = { itemID = 35201 }; --Design: Pendant of Sunfire
		[15] = { itemID = 35199 }; --Design: Ring of Flowing Life
		[16] = { itemID = 35202 }; --Design: Amulet of Flowing Life
		[17] = { itemID = 35200 }; --Design: Hard Khorium Band
		[18] = { itemID = 35203 }; --Design: Hard Khorium Choker
		[19] = { itemID = 35186 }; --Schematic: Annihilator Holo-Gogs
		[20] = { itemID = 35187 }; --Schematic: Justicebringer 3000 Specs
		[21] = { itemID = 35189 }; --Schematic: Powerheal 9000 Lens
		[22] = { itemID = 35190 }; --Schematic: Hyper-Magnified Moon Specs
		[23] = { itemID = 35191 }; --Schematic: Wonderheal XT68 Shades
		[24] = { itemID = 35192 }; --Schematic: Primal-Attuned Goggles
		[25] = { itemID = 35193 }; --Schematic: Lightning Etched Specs
		[26] = { itemID = 35194 }; --Schematic: Surestrike Goggles v3.0
		[27] = { itemID = 35195 }; --Schematic: Mayhem Projection Goggles
		[28] = { itemID = 35196 }; --Schematic: Hard Khorium Goggles
		[29] = { itemID = 35197 }; --Schematic: Quad Deathblow X44 Goggles
	};
};

----------------------------------
--- Tempest Keep: The Arcatraz ---
----------------------------------

AtlasLoot_Data["TKArc"] = {
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Arcatraz"];
	DisplayName = BabbleZone["The Arcatraz"];
	Type = "BCDungeon";
	Map = "TempestKeepArcatraz";
	{
		Name = BabbleBoss["Zereketh the Unbound"];
		[1] = { itemID = 28373, droprate = "7.13%" }; --Cloak of Scintillating Auras
		[2] = { itemID = 28374, droprate = "0.35%" }; --Mana-Sphere Shoulderguards
		[3] = { itemID = 28384, droprate = "9.52%" }; --Outland Striders
		[4] = { itemID = 28375, droprate = "4.38%" }; --Rubium War-Girdle
		[5] = { itemID = 28372, droprate = "5.80%" }; --Idol of Feral Shadows
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30582, droprate = ".18%" }; --Deadly Fire Opal
		[19] = { itemID = 30575, droprate = ".18%" }; --Nimble Fire Opal
		[20] = { itemID = 30581, droprate = ".18%" }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Wrath-Scryer Soccothrates"];
		[1] = { itemID = 28396, droprate = "7.80%" }; --Gloves of the Unbound
		[2] = { itemID = 28398, droprate = "6.29%" }; --The Sleeper's Cord
		[3] = { itemID = 28394, droprate = "6.81%" }; --Ryngo's Band of Ingenuity
		[4] = { itemID = 28393, droprate = "6.14%" }; --Warmaul of Infused Light
		[5] = { itemID = 28397, droprate = "7.65%" }; --Emberhawk Crossbow
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30582, droprate = ".18%" }; --Deadly Fire Opal
		[19] = { itemID = 30575, droprate = ".18%" }; --Nimble Fire Opal
		[20] = { itemID = 30581, droprate = ".18%" }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Dalliah the Doomsayer"];
		[1] = { itemID = 24308, droprate = ".29%" }; --Pattern: Whitemend Pants"  
		[3] = { itemID = 28391, droprate = "8.57%" }; --Worldfire Chestguard
		[4] = { itemID = 28390, droprate = "4.80%" }; --Thatia's Self-Correcting Gauntlets
		[5] = { itemID = 28387, droprate = "5.92%" }; --Lamp of Peaceful Repose
		[6] = { itemID = 28392, droprate = "8.37%" }; --Reflex Blades
		[7] = { itemID = 28386, droprate = "5.29%" }; --Nether Core's Control Rod
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30582, droprate = ".18%" }; --Deadly Fire Opal
		[19] = { itemID = 30575, droprate = ".18%" }; --Nimble Fire Opal
		[20] = { itemID = 30581, droprate = ".18%" }; --Durable Fire Opal
	};
	{
		Name = BabbleBoss["Harbinger Skyriss"];
		[1] = { itemID = 28415, droprate = "2.23%" }; --Hood of Oblivion
		[2] = { itemID = 28413, droprate = "2.17%" }; --Hallowed Crown
		[3] = { itemID = 28414, droprate = "1.25%" }; --Helm of Assassination
		[4] = { itemID = 28231, droprate = "4.98%" }; --Tidefury Chestpiece
		[5] = { itemID = 28403, droprate = "3.15%" }; --Doomplate Chestguard
		[6] = { itemID = 28205, droprate = "1.19%" }; --Breastplate of the Bold
		[8] = { itemID = 28406, droprate = "2.23%" }; --Sigil-Laced Boots
		[9] = { itemID = 28419, droprate = "4.92%" }; --Choker of Fluid Thought
		[10] = { itemID = 28407, droprate = "0.70%" }; --Elementium Band of the Sentry
		[11] = { itemID = 28418, droprate = "2.23%" }; --Shiffar's Nexus-Horn
		[12] = { itemID = 28412, droprate = "3.15%" }; --Lamp of Peaceful Radiance
		[13] = { itemID = 28416, droprate = "2.35%" }; --Hungering Spineripper
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30582, droprate = ".18%" }; --Deadly Fire Opal
		[19] = { itemID = 30575, droprate = ".18%" }; --Nimble Fire Opal
		[20] = { itemID = 30581, droprate = ".18%" }; --Durable Fire Opal
		[22] = { itemID = 29241, droprate = ".47%" }; --Belt of Depravity
		[23] = { itemID = 29248, droprate = ".61%" }; --Shadowstep Striders
		[24] = { itemID = 29252, droprate = ".03%" }; --Bracers of Dignity
		[25] = { itemID = 29360, droprate = ".18%" }; --Vileblade of the Betrayer
		[27] = { itemID = 33861, droprate = "100%" }; --The Scroll of Skyriss
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Botanica"] };
		[2] = { itemID = 24172, droprate = ".27%" }; --Design: Coronet of Verdant Flame
		[4] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Mechanar"] };
		[5] = { itemID = 22920, droprate = ".30%" }; --Recipe: Major Fire Protection Potion
		[6] = { itemID = 21906, droprate = ".57%" }; --Pattern: Arcanoweave Boots
		[8] = { icon = "INV_Box_01", name = "=q6=" .. AL["Overcharged Manacell"], "=q5=" .. BabbleZone["The Mechanar"] };
		[9] = { itemID = 30824 }; --Overcharged Manacell
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Trash Mobs"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[17] = { itemID = 23606, droprate = ".93%" }; --Plans: Felsteel Leggings
		[18] = { itemID = 22556, droprate = ".68%" }; --Formula: Enchant 2H Weapon - Major Agility
		[19] = { itemID = 29672, droprate = ".84%" }; --Pattern: Flame Armor Kit
		[20] = { itemID = 21905, droprate = ".21%" }; --Pattern: Arcanoweave Bracers
		[22] = { icon = "INV_Box_01", name = "=q6=" .. AL["Third Fragment Guardian"], "=q5=" .. BabbleZone["The Arcatraz"] };
		[23] = { itemID = 24488, droprate = "100%" }; --Third Key Fragment
	};
};

----------------------------------
--- Tempest Keep: The Botanica ---
----------------------------------

AtlasLoot_Data["TKBot"] = {
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Botanica"];
	DisplayName = BabbleZone["The Botanica"];
	Type = "BCDungeon";
	Map = "TempestKeepBotanica";
	{
		Name = BabbleBoss["Commander Sarannis"];
		[1] = { itemID = 28301, droprate = "8.54%" }; --Syrannis' Mystic Sheen
		[2] = { itemID = 28304, droprate = "2.46%" }; --Prismatic Mittens of Mending
		[3] = { itemID = 28306, droprate = "0.68%" }; --Towering Mantle of the Hunt
		[4] = { itemID = 28296, droprate = "4.10%" }; --Libram of the Lightbringer
		[5] = { itemID = 28311, droprate = "6.25%" }; --Revenger
		[7] = { itemID = 28769, droprate = "100%" }; --The Keystone
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30574, droprate = ".1" }; --Brutal Tanzanite
		[19] = { itemID = 30572, droprate = ".1" }; --Imperial Tanzanite
		[20] = { itemID = 30573, droprate = ".1" }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["High Botanist Freywinn"];
		[1] = { itemID = 28317, droprate = "7.60%" }; --Energis Armwraps
		[2] = { itemID = 28318, droprate = "6.48%" }; --Obsidian Clodstompers
		[3] = { itemID = 28321, droprate = "8.09%" }; --Enchanted Thorium Torque
		[4] = { itemID = 28315, droprate = "6.75%" }; --Stormreaver Warblades
		[5] = { itemID = 28316, droprate = "4.60%" }; --Aegis of the Sunbird
		[7] = { itemID = 23617, droprate = ".07%" }; --Plans: Earthpeace Breastplate
		[9] = { itemID = 31744, droprate = "100%" }; --Botanist's Field Guide
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30574, droprate = ".100" }; --Brutal Tanzanite
		[19] = { itemID = 30572, droprate = ".100" }; --Imperial Tanzanite
		[20] = { itemID = 30573, droprate = ".100" }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Thorngrin the Tender"];
		[1] = { itemID = 24310, droprate = ".44%" }; --Pattern: Battlecast Pants"  
		[3] = { itemID = 28324, droprate = "5.56%" }; --Gauntlets of Cruel Intention
		[4] = { itemID = 28327, droprate = "7.77%" }; --Arcane Netherband
		[5] = { itemID = 28323, droprate = "6.25%" }; --Ring of Umbral Doom
		[6] = { itemID = 28322, droprate = "8.16%" }; --Runed Dagger of Solace
		[7] = { itemID = 28325, droprate = "5.46%" }; --Dreamer's Dragonstaff
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30574, droprate = ".100" }; --Brutal Tanzanite
		[19] = { itemID = 30572, droprate = ".100" }; --Imperial Tanzanite
		[20] = { itemID = 30573, droprate = ".100" }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Laj"];
		[1] = { itemID = 27739, droprate = "8.13%" }; --Spaulders of the Righteous
		[3] = { itemID = 28328, droprate = "0.88%" }; --Mithril-Bark Cloak
		[4] = { itemID = 28338, droprate = "8.71%" }; --Devil-Stitched Leggings
		[5] = { itemID = 28340, droprate = "7.19%" }; --Mantle of Autumn
		[6] = { itemID = 28339, droprate = "9.07%" }; --Boots of the Shifting Sands
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30574, droprate = ".100" }; --Brutal Tanzanite
		[19] = { itemID = 30572, droprate = ".100" }; --Imperial Tanzanite
		[20] = { itemID = 30573, droprate = ".100" }; --Mysterious Fire Opal
	};
	{
		Name = BabbleBoss["Warp Splinter"];
		[1] = { itemID = 24311, droprate = ".30%" }; --Pattern: Whitemend Hood
		[3] = { itemID = 28371, droprate = "3.52%" }; --Netherfury Cape
		[4] = { itemID = 28342, droprate = "0.27%" }; --Warp Infused Drape
		[5] = { itemID = 28347, droprate = "1.74%" }; --Warpscale Leggings
		[6] = { itemID = 28343, droprate = "2.34%" }; --Jagged Bark Pendant
		[7] = { itemID = 28370, droprate = "2.38%" }; --Bangle of Endless Blessings
		[8] = { itemID = 28345, droprate = "0.37%" }; --Warp Splinter's Thorn
		[9] = { itemID = 28367, droprate = "1.64%" }; --Greatsword of Forlorn Visions
		[10] = { itemID = 28341, droprate = "0.47%" }; --Warpstaff of Arcanum
		[12] = { itemID = 31085, droprate = "100%" }; --Top Shard of the Arcatraz Key
		[16] = { itemID = 28229, droprate = ".42%" }; --Incanter's Robe
		[17] = { itemID = 28348, droprate = "1.17%" }; --Moonglade Cowl
		[18] = { itemID = 28349, droprate = "3.85%" }; --Tidefury Helm
		[19] = { itemID = 28228, droprate = ".59%" }; --Beast Lord Curiass
		[20] = { itemID = 28350, droprate = ".96%" }; --Warhelm of the Bold
	};
	{ -- only heroic
		Name = BabbleBoss["Warp Splinter"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 29258 }; --Boots of Ethereal Manipulation
		[3] = { itemID = 29262, droprate = ".100" }; --Boots of the Endless Hunt
		[4] = { itemID = 32072 }; --Gauntlets of Dissension
		[5] = { itemID = 29359 }; --Feral Staff of Lashing
		[6] = { itemID = 24311, droprate = ".30%" }; --Pattern: Whitemend Hood
		[8] = { itemID = 28371, droprate = ".100" }; --Netherfury Cape
		[9] = { itemID = 28342, droprate = ".100" }; --Warp Infused Drape
		[10] = { itemID = 28347, droprate = "2.100" }; --Warpscale Leggings
		[11] = { itemID = 28343, droprate = ".100" }; --Jagged Bark Pendant
		[12] = { itemID = 28370, droprate = "8.100" }; --Bangle of Endless Blessings
		[13] = { itemID = 28345, droprate = "8.100" }; --Warp Splinter's Thorn
		[14] = { itemID = 28367, droprate = ".100" }; --Greatsword of Forlorn Visions
		[15] = { itemID = 28341, droprate = ".100" }; --Warpstaff of Arcanum
		[16] = { itemID = 30574, droprate = ".100" }; --Brutal Tanzanite
		[17] = { itemID = 30572, droprate = ".100" }; --Imperial Tanzanite
		[18] = { itemID = 30573, droprate = ".100" }; --Mysterious Fire Opal
		[20] = { itemID = 28229, droprate = ".100" }; --Incanter's Robe
		[21] = { itemID = 28348, droprate = "2.100" }; --Moonglade Cowl
		[22] = { itemID = 28349, droprate = "2.100" }; --Tidefury Helm
		[23] = { itemID = 28228, droprate = "0.100" }; --Beast Lord Curiass
		[24] = { itemID = 28350, droprate = "6.100" }; --Warhelm of the Bold
		[26] = { itemID = 31085, droprate = "100%" }; --Top Shard of the Arcatraz Key
		[27] = { itemID = 33859, droprate = "100%" }; --Warp Splinter Clipping
	};
};



----------------------------------
--- Tempest Keep: The Mechanar ---
----------------------------------

AtlasLoot_Data["TKMech"] = {
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Mechanar"];
	DisplayName = BabbleZone["The Mechanar"];
	Type = "BCDungeon";
	Map = "TempestKeepMechanar";
	{
		Name = AL["Cache of the Legion"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Cache of the Legion"] };
		[2] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[3] = { itemID = 28249, droprate = "1.16%" }; --Capacitus' Cloak of Calibration
		[4] = { itemID = 28250, droprate = "7.89%" }; --Vestia's Pauldrons of Inner Grace
		[5] = { itemID = 28252, droprate = "2.53%" }; --Bloodfyre Robes of Annihilation
		[6] = { itemID = 28251, droprate = "8.74%" }; --Boots of the Glade-Keeper
		[7] = { itemID = 28248, droprate = "9.58%" }; --Totem of the Void
		[16] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Gatewatcher Gyro-Kill"] };
		[17] = { itemID = 30436, droprate = "100%" }; --Jagged Blue Crystal
		[19] = { icon = "INV_Box_01", name = "=q6=" .. BabbleBoss["Gatewatcher Iron-Hand"] };
		[20] = { itemID = 30437, droprate = "100%" }; --Jagged Red Crystal
	};
	{
		Name = BabbleBoss["Mechano-Lord Capacitus"];
		[1] = { itemID = 28256, droprate = "4.81%" }; --Thoriumweave Cloak
		[2] = { itemID = 28255, droprate = "6.98%" }; --Lunar-Claw Pauldrons
		[3] = { itemID = 28254, droprate = "6.81%" }; --Warp Engineer's Prismatic Chain
		[4] = { itemID = 28257, droprate = "4.36%" }; --Hammer of the Penitent
		[5] = { itemID = 28253, droprate = "7.69%" }; --Plasma Rat's Hyper-Scythe
		[7] = { itemID = 35582 }; --Schematic: Rocket Boots Xtreme Lite
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30565, droprate = "8.72%" }; --Assassin's Fire Opal
		[19] = { itemID = 30566, droprate = ".87%" }; --Defender's Tanzanite
		[20] = { itemID = 30564, droprate = ".45%" }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Nethermancer Sepethrea"];
		[1] = { itemID = 28262, droprate = "5.37%" }; --Jade-Skull Breastplate
		[2] = { itemID = 28259, droprate = "8.06%" }; --Cosmic Lifeband
		[3] = { itemID = 28260, droprate = "5.61%" }; --Manual of the Nethermancer
		[4] = { itemID = 28263, droprate = "5.58%" }; --Stellaris
		[5] = { itemID = 28258, droprate = "5.88%" }; --Nethershrike
		[7] = { itemID = 22920 }; --Recipe: Major Fire Protection Potion
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 30565, droprate = "8.72%" }; --Assassin's Fire Opal
		[19] = { itemID = 30566, droprate = ".87%" }; --Defender's Tanzanite
		[20] = { itemID = 30564, droprate = ".45%" }; --Shining Fire Opal
	};
	{
		Name = BabbleBoss["Pathaleon the Calculator"];
		[1] = { itemID = 28269, droprate = "1.82%" }; --Baba's Cloak of Arcanistry
		[2] = { itemID = 28266, droprate = "4.29%" }; --Molten Earth Kilt
		[3] = { itemID = 28265, droprate = ".87%" }; --Dath'Remar's Ring of Defense
		[4] = { itemID = 28288, droprate = ".37%" }; --Abacus of Violent Odds
		[5] = { itemID = 27899, droprate = ".36%" }; --Mana Wrath
		[6] = { itemID = 28267, droprate = "1.82%" }; --Edge of the Cosmos
		[7] = { itemID = 28286, droprate = ".85%" }; --Telescopic Sharprifle
		[9] = { itemID = 28278, droprate = "4.29%" }; --Incanter's Cowl
		[10] = { itemID = 28202, droprate = "1.33%" }; --Moonglade Robe
		[11] = { itemID = 28204, droprate = ".87%" }; --Tunic of Assassination
		[12] = { itemID = 28275, droprate = "4.78%" }; --Beast Lord Helm
		[13] = { itemID = 28285, droprate = "0.34%" }; --Helm of the Righteous
		[15] = { itemID = 21907, droprate = ".11%" }; --Pattern: Arcanoweave Robe
		[16] = { icon = "INV_Box_01", name = "#j27#" };
		[17] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[18] = { itemID = 29251, droprate = ".88%" }; --Boots of the Pious
		[19] = { itemID = 32076 }; --Handguards of the Steady
		[20] = { itemID = 30533, droprate = ".90%" }; --Vanquisher's Legplates
		[21] = { itemID = 29362, droprate = ".48%" }; --The Sun Eater
		[23] = { itemID = 30565, droprate = "8.72%" }; --Assassin's Fire Opal
		[24] = { itemID = 30566, droprate = ".87%" }; --Defender's Tanzanite
		[25] = { itemID = 30564, droprate = ".45%" }; --Shining Fire Opal
		[29] = { itemID = 33860, droprate = "100%" }; --Pathaleon's Projector
		[30] = { itemID = 31086, droprate = "100%" }; --Bottom Shard of the Arcatraz Key
	};
};
-----------------------------
--- Tempest Keep: The Eye ---
-----------------------------

AtlasLoot_Data["TKEye"] = {
	Name = BabbleZone["Tempest Keep"] .. ": " .. BabbleZone["The Eye"];
	DisplayName = BabbleZone["The Eye"];
	Type = "BCRaid";
	Map = "TempestKeepTheEye";
	{
		Name = BabbleBoss["Al'ar"];
		[1] = { itemID = 29925, droprate = "3%" }; --Phoenix-Wing Cloak
		[2] = { itemID = 29918, droprate = "2%" }; --Mindstorm Wristbands
		[3] = { itemID = 29947, droprate = "3%" }; --Gloves of the Searing Grip
		[4] = { itemID = 29921, droprate = "0%" }; --Fire Crest Breastplate
		[5] = { itemID = 29922, droprate = "1%" }; --Band of Al'ar
		[6] = { itemID = 29920, droprate = "1%" }; --Phoenix-Ring of Rebirth
		[7] = { itemID = 30448, droprate = "2%" }; --Talon of Al'ar
		[8] = { itemID = 30447, droprate = "1%" }; --Tome of Fiery Redemption
		[9] = { itemID = 29923, droprate = "3%" }; --Talisman of the Sun King
		[16] = { itemID = 32944, droprate = "2%" }; --Talon of the Phoenix
		[17] = { itemID = 29948, droprate = "0%" }; --Claw of the Phoenix
		[18] = { itemID = 29924, droprate = "1%" }; --Netherbane
		[19] = { itemID = 29949, droprate = "2%" }; --Arcanite Steam-Pistol
		[21] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[22] = { itemID = 1816254, droprate = ".75%" }; --Forumla: Enchant Cloak - Phoenix Fire
	};
	{
		Name = BabbleBoss["Void Reaver"];
		[1] = { itemID = 29986, droprate = "3%" }; --Cowl of the Grand Engineer
		[2] = { itemID = 29984, droprate = "3%" }; --Girdle of Zaetar
		[3] = { itemID = 29985, droprate = "4%" }; --Void Reaver Greaves
		[4] = { itemID = 29983, droprate = "2%" }; --Fel-Steel Warhelm
		[5] = { itemID = 32515, droprate = "3%" }; --Wristguards of Determination
		[6] = { itemID = 30619, droprate = "3%" }; --Fel Reaver's Piston
		[7] = { itemID = 30450, droprate = "2%" }; --Warp-Spring Coil
		[16] = { itemID = 30249, droprate = "100%", lootTable = {"T5SHOULDER","Token"} }; --Pauldrons of the Vanquished Defender
		[18] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["High Astromancer Solarian"];
		[1] = { itemID = 29977, droprate = "9%" }; --Star-Soul Breeches
		[2] = { itemID = 29972, droprate = "9%" }; --Trousers of the Astromancer
		[3] = { itemID = 29966, droprate = "3%" }; --Vambraces of Ending
		[4] = { itemID = 29976, droprate = "8%" }; --Worldstorm Gauntlets
		[5] = { itemID = 29951, droprate = "3%" }; --Star-Strider Boots
		[6] = { itemID = 29965, droprate = "1%" }; --Girdle of the Righteous Path
		[7] = { itemID = 29950, droprate = "9%" }; --Greaves of the Bloodwarder
		[8] = { itemID = 32267, droprate = "7%" }; --Boots of the Resilient
		[16] = { itemID = 30446, droprate = "1%" }; --Solarian's Sapphire
		[17] = { itemID = 30449, droprate = "2%" }; --Void Star Talisman
		[18] = { itemID = 29962, droprate = "3%" }; --Heartrazor
		[19] = { itemID = 29981, droprate = "1%" }; --Ethereum Life-Staff
		[20] = { itemID = 29982, droprate = "8%" }; --Wand of the Forgotten Star
		[22] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		[1] = { itemID = 29992, droprate = "4%" }; --Royal Cloak of the Sunstriders
		[2] = { itemID = 29989, droprate = "2%" }; --Sunshower Light Cloak
		[3] = { itemID = 29994, droprate = "4%" }; --Thalassian Wildercloak
		[4] = { itemID = 29990, droprate = "4%" }; --Crown of the Sun
		[5] = { itemID = 29987, droprate = "4%" }; --Gauntlets of the Sun King
		[6] = { itemID = 29995, droprate = "5%" }; --Leggings of Murderous Intent
		[7] = { itemID = 29991, droprate = "3%" }; --Sunhawk Leggings
		[8] = { itemID = 29998, droprate = "2%" }; --Royal Gauntlets of Silvermoon
		[9] = { itemID = 29997, droprate = "4%" }; --Band of the Ranger-General
		[10] = { itemID = 29993, droprate = "2%" }; --Twinblade of the Phoenix
		[11] = { itemID = 29996, droprate = "5%" }; --Rod of the Sun King
		[12] = { itemID = 29988, droprate = "4%" }; --The Nexus Key
		[14] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[16] = { itemID = 30237, droprate = "100%", lootTable = {"T5CHEST","Token"} }; --Chestguard of the Vanquished Defender
		[18] = { itemID = 32458, droprate = "%" }; --Ashes of Al'ar
		[19] = { itemID = 32405, droprate = "100%" }; --Verdant Sphere
		[20] = { itemID = 30018 }; --Lord Sanguinar's Claim
		[21] = { itemID = 30017 }; --Telonicus's Pendant of Mayhem
		[22] = { itemID = 30007 }; --The Darkener's Grasp
		[23] = { itemID = 30015 }; --The Sun King's Talisman
		[25] = { itemID = 29905, droprate = "7%" }; --Kael's Vial Remnant
		[26] = { itemID = 450001, droprate = "%" }; --Intact Vial of Kael'thas Sunstrider
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 30024, droprate = "%" }; --Mantle of the Elven Kings
		[2] = { itemID = 30020, droprate = "%" }; --Fire-Cord of the Magus
		[3] = { itemID = 30029, droprate = "%" }; --Bark-Gloves of Ancient Wisdom
		[4] = { itemID = 30026, droprate = "%" }; --Bands of the Celestial Archer
		[5] = { itemID = 30030, droprate = "%" }; --Girdle of Fallen Stars
		[6] = { itemID = 30028, droprate = "%" }; --Seventh Ring of the Tirisfalen
		[7] = { itemID = 2032902, droprate = "%" }; --Bottled Nethergron Extract
		[9] = { itemID = 30324, droprate = "%" }; --Plans: Red Havoc Boots
		[10] = { itemID = 30322, droprate = "%" }; --Plans: Red Belt of Battle
		[11] = { itemID = 30323, droprate = "%" }; --Plans: Boots of the Protector
		[12] = { itemID = 30321, droprate = "%" }; --Plans: Belt of the Guardian
		[13] = { itemID = 30280, droprate = "%" }; --Pattern: Belt of Blasting
		[14] = { itemID = 30282, droprate = "%" }; --Pattern: Boots of Blasting
		[15] = { itemID = 30283, droprate = "%" }; --Pattern: Boots of the Long Road
		[16] = { itemID = 30281, droprate = "%" }; --Pattern: Belt of the Long Road
		[17] = { itemID = 30308, droprate = "%" }; --Pattern: Hurricane Boots
		[18] = { itemID = 30304, droprate = "%" }; --Pattern: Monsoon Belt
		[19] = { itemID = 30305, droprate = "%" }; --Pattern: Boots of Natural Grace
		[20] = { itemID = 30307, droprate = "%" }; --Pattern: Boots of the Crimson Hawk
		[21] = { itemID = 30306, droprate = "%" }; --Pattern: Boots of Utter Darkness
		[22] = { itemID = 30301, droprate = "%" }; --Pattern: Belt of Natural Power
		[23] = { itemID = 30303, droprate = "%" }; --Pattern: Belt of the Black Eagle
		[24] = { itemID = 30302, droprate = "%" }; --Pattern: Belt of Deep Shadow
		[26] = { itemID = 30183, droprate = "5%" }; --Nether Vortex
		[28] = { itemID = 32897, droprate = "7%" }; --Mark of the Illidari
	};
	{
		Name = "Legendary Items for Kael'thas Fight";
		[1] = { itemID = 30312 }; --Infinity Blade
		[2] = { itemID = 30311 }; --Warp Slicer
		[3] = { itemID = 30317 }; --Cosmic Infuser
		[4] = { itemID = 30316 }; --Devastation
		[5] = { itemID = 30313 }; --Staff of Disintegration
		[6] = { itemID = 30314 }; --Phaseshift Bulwark
		[7] = { itemID = 30318 }; --Netherstrand Longbow
		[8] = { itemID = 30319 }; --Nether Spike
	};
};


----------------
--- Zul'Aman ---
----------------

AtlasLoot_Data["ZulAman"] = {
	Name = BabbleZone["Zul'Aman"];
	Type = "BCRaid";
	Map = "ZulAman";
	{
		Name = BabbleBoss["Nalorakk"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33203, droprate = "3%" }; --Robes of Heavenly Purpose
		[3] = { itemID = 33285, droprate = "3%" }; --Fury of the Ursine
		[4] = { itemID = 33211, droprate = "4%" }; --Bladeangel's Money Belt
		[5] = { itemID = 33206, droprate = "3%" }; --Pauldrons of Primal Fury
		[6] = { itemID = 33327, droprate = "3%" }; --Mask of Introspection
		[7] = { itemID = 33191, droprate = "3%" }; --Jungle Stompers
		[8] = { itemID = 33640, droprate = "4%" }; --Fury
		[16] = { itemID = 33496, droprate = "3%" }; --Signet of Primal Wrath
		[17] = { itemID = 33498, droprate = "1%" }; --Signet of the Quiet Forest
		[18] = { itemID = 33971, droprate = "0%" }; --Elunite Imbued Leggings
		[19] = { itemID = 33495, droprate = "2%" }; --Rage
		[20] = { itemID = 33480, droprate = "0%" }; --Cord of BBCRaided Troll Hair

	};
	{
		Name = BabbleBoss["Akil'zon"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33286, droprate = "3%" }; --Mojo-mender's Mask
		[3] = { itemID = 33215, droprate = "3%" }; --Bloodstained Elven Battlevest
		[4] = { itemID = 33216, droprate = "3%" }; --Chestguard of Hidden Purpose
		[5] = { itemID = 33281, droprate = "3%" }; --Brooch of Nature's Mercy
		[6] = { itemID = 33293, droprate = "3%" }; --Signet of Ancient Magics
		[7] = { itemID = 33214, droprate = "3%" }; --Akil'zon's Talonblade
		[8] = { itemID = 33283, droprate = "4%" }; --Amani Punisher
		[16] = { itemID = 33591, droprate = "1%" }; --Shadowcaster's Drape
		[17] = { itemID = 33590, droprate = "0%" }; --Cloak of Fiends
		[18] = { itemID = 33481, droprate = "1%" }; --Pauldrons of Stone Resolve
		[19] = { itemID = 33492, droprate = "1%" }; --Trollbane
		[20] = { itemID = 33500, droprate = "0%" }; --Signet of Eternal Life
	};
	{
		Name = BabbleBoss["Jan'alai"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33357, droprate = "3%" }; --Footpads of Madness
		[3] = { itemID = 33356, droprate = "3%" }; --Helm of Natural Regeneration
		[4] = { itemID = 33329, droprate = "3%" }; --Shadowtooth Trollskin Cuirass
		[5] = { itemID = 33328, droprate = "3%" }; --Arrow-fall Chestguard
		[6] = { itemID = 33354, droprate = "4%" }; --Wub's Cursed Hexblade
		[7] = { itemID = 33326, droprate = "3%" }; --Bulwark of the Amani Empire
		[8] = { itemID = 33332, droprate = "2%" }; --Enamelled Disc of Mojo
		[16] = { itemID = 33499, droprate = "8%" }; --Signet of the Last Defender
		[17] = { itemID = 33805, droprate = "0%" }; --Shadowhunter's Treads
		[18] = { itemID = 33491, droprate = "2%" }; --Tuskbreaker
		[19] = { itemID = 33490, droprate = "3%" }; --Staff of Dark Mending
		[20] = { itemID = 33489, droprate = "1%" }; --Mantle of Ill Intent
	};
	{
		Name = BabbleBoss["Halazzi"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33317, droprate = "3%" }; --Robe of Departed Spirits
		[3] = { itemID = 33300, droprate = "4%" }; --Shoulderpads of Dancing Blades
		[4] = { itemID = 33322, droprate = "3%" }; --Shimmer-pelt Vest
		[5] = { itemID = 33533, droprate = "3%" }; --Avalanche Leggings
		[6] = { itemID = 33299, droprate = "3%" }; --Spaulders of the Advocate
		[7] = { itemID = 33303, droprate = "4%" }; --Skullshatter Warboots
		[8] = { itemID = 33297, droprate = "3%" }; --The Savage's Choker
		[16] = { itemID = 33483, droprate = "2%" }; --Life-step Belt
		[17] = { itemID = 33493, droprate = "2%" }; --Umbral Shiv
		[18] = { itemID = 33497, droprate = "8%" }; --Mana Attuned Band
		[19] = { itemID = 33979 }; --Sightless Head
		[20] = { itemID = 33465, droprate = "3%" }; --Staff of Primal Fury
	};
	{
		Name = BabbleBoss["Hex Lord Malacrass"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33592, droprate = "3%" }; --Cloak of Ancient Rituals
		[3] = { itemID = 33453, droprate = "3%" }; --Hood of Hexing
		[4] = { itemID = 33463, droprate = "3%" }; --Hood of the Third Eye
		[5] = { itemID = 33432, droprate = "5%" }; --Coif of the Jungle Stalker
		[6] = { itemID = 33464, droprate = "3%" }; --Hex Lord's Voodoo Pauldrons
		[7] = { itemID = 33421, droprate = "5%" }; --Battleworn Tuskguard
		[8] = { itemID = 33446, droprate = "5%" }; --Girdle of Stromgarde's Hope
		[10] = { itemID = 2033307, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Witchdoctor
		[16] = { itemID = 34029, droprate = "5%" }; --Tiny Voodoo Mask
		[17] = { itemID = 33828, droprate = "3%" }; --Tome of Diabolic Remedy
		[18] = { itemID = 38634, droprate = "1%" }; --Troll Dice
		[19] = { itemID = 33389, droprate = "5%" }; --Dagger of Bad Mojo
		[20] = { itemID = 33298, droprate = "4%" }; --Prowler's Strikeblade
		[21] = { itemID = 33388, droprate = "5%" }; --Heartless
		[22] = { itemID = 33494, droprate = "1%" }; --Amani Divining Staff
		[24] = { itemID = 1333809, droprate = "100%" }; --Amani Bear
	};
	{
		Name = BabbleBoss["Zul'jin"];
		[1] = { itemID = 29434, droprate = "100%" }; --Badge of Justice
		[2] = { itemID = 33471, droprate = "5%" }; --Two-toed Sandals
		[3] = { itemID = 33479, droprate = "5%" }; --Grimgin Faceguard
		[4] = { itemID = 33469, droprate = "6%" }; --Hauberk of the Empire's Champion
		[5] = { itemID = 33473, droprate = "5%" }; --Chestguard of the Warlord
		[6] = { itemID = 33466, droprate = "4%" }; --Loop of Cursed Bones
		[7] = { itemID = 33830, droprate = "4%" }; --Ancient Aqir Artifact
		[8] = { itemID = 33831, droprate = "4%" }; --Berserker's Call
		[9] = { itemID = 33829, droprate = "4%" }; --Hex Shrunken Head
		[10] = { itemID = 24537, droprate = "4%" }; --Waistband of Crushed Skulls
		[12] = { itemID = 33307, droprate = "N:2%/H:5%/A:10" }; --Formula: Enchant Weapon - Executioner
		[16] = { itemID = 33467, droprate = "4%" }; --Blade of Twisted Visions
		[17] = { itemID = 33478, droprate = "4%" }; --Jin'rohk, The Great Apocalypse
		[18] = { itemID = 33476, droprate = "5%" }; --Cleaver of the Unforgiving
		[19] = { itemID = 33468, droprate = "5%" }; --Dark Blessing
		[20] = { itemID = 33474, droprate = "4%" }; --Ancient Amani Longbow
		[21] = { itemID = 34071 }; --Seething Hate
		[23] = { itemID = 33102, droprate = "7%" }; --Blood of Zul'Jin
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 21824 }; --The Krakmon Wand
		[2] = { itemID = 24574 }; --Massacre Cloak
		[3] = { itemID = 28354 }; --Throat Crushers
		[4] = { itemID = 33059 }; --Seal of the Amani'shi Berserker
		[5] = { itemID = 33983 }; --Staff of Blazing Glory
		[6] = { itemID = 39755 }; --String of Ears
		[16] = { itemID = 33865, droprate = "0%" }; --Amani Hex Stick
		[17] = { itemID = 33930, droprate = "5%" }; --Amani Charm of the Bloodletter
		[18] = { itemID = 33932, droprate = "4%" }; --Amani Charm of the Witch Doctor
		[19] = { itemID = 33931, droprate = "5%" }; --Amani Charm of Mighty Mojo
		[20] = { itemID = 33933, droprate = "5%" }; --Amani Charm of the Raging Defender
		[22] = { itemID = 33993 }; --Mojo
	};
};





----------------
--- Factions ---
----------------

----------------------------
--- Ashtongue Deathsworn ---
----------------------------

AtlasLoot_Data["Ashtongue"] = {
	Name = BabbleFaction["Ashtongue Deathsworn"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32444 }; --=q1=Plans: Shadesteel Girdle"  
		[2] = { itemID = 32442 }; --=q1=Plans: Shadesteel Bracers"  
		[3] = { itemID = 32436 }; --Pattern: Redeemed Soul Cinch
		[4] = { itemID = 32435 }; --Pattern: Redeemed Soul Legguards
		[5] = { itemID = 32430 }; --Pattern: Bracers of Shackled Souls
		[6] = { itemID = 32429 }; --Pattern: Boots of Shackled Souls
		[7] = { itemID = 32440 }; --=q1=Pattern: Soulguard Girdle"   
		[8] = { itemID = 32438 }; --=q1=Pattern: Soulguard Bracers"   
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32443 }; --=q1=Plans: Shadesteel Greaves"  
		[2] = { itemID = 32441 }; --=q1=Plans: Shadesteel Sabots"  
		[3] = { itemID = 32433 }; --Pattern: Redeemed Soul Mocassins
		[4] = { itemID = 32434 }; --Pattern: Redeemed Soul Wristguards
		[5] = { itemID = 32431 }; --Pattern: Greaves of Shackled Souls
		[6] = { itemID = 32432 }; --Pattern: Waistguard of Shackled Souls
		[7] = { itemID = 32447 }; --=q1=Pattern: Night's End"   
		[8] = { itemID = 32439 }; --=q1=Pattern: Soulguard Leggings"   
		[9] = { itemID = 32437 }; --=q1=Pattern: Soulguard Slippers"   
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32486, desc = "=ds=#s14#, =q1=#m1# =ds=#c1#"  }; --Ashtongue Talisman of Equilibrium
		[2] = { itemID = 32487, desc = "=ds=#s14#, =q1=#m1# =ds=#c2#"  }; --Ashtongue Talisman of Swiftness
		[3] = { itemID = 32488, desc = "=ds=#s14#, =q1=#m1# =ds=#c3#"  }; --Ashtongue Talisman of Insight
		[4] = { itemID = 32489, desc = "=ds=#s14#, =q1=#m1# =ds=#c4#"  }; --Ashtongue Talisman of Zeal
		[5] = { itemID = 32490, desc = "=ds=#s14#, =q1=#m1# =ds=#c5#"  }; --Ashtongue Talisman of Acumen
		[6] = { itemID = 32492, desc = "=ds=#s14#, =q1=#m1# =ds=#c6#"  }; --Ashtongue Talisman of Lethality
		[7] = { itemID = 32491, desc = "=ds=#s14#, =q1=#m1# =ds=#c7#"  }; --Ashtongue Talisman of Vision
		[8] = { itemID = 32493, desc = "=ds=#s14#, =q1=#m1# =ds=#c8#"  }; --Ashtongue Talisman of Shadows
		[9] = { itemID = 32485, desc = "=ds=#s14#, =q1=#m1# =ds=#c9#"  }; --Ashtongue Talisman of Valor
	};
};

----------------------------
---  Cenarion Expedition ---
----------------------------

AtlasLoot_Data["CExpedition"] = {
	Name = BabbleFaction["Cenarion Expedition"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25737, desc = "=ds=#p7# (355)"  }; --Pattern: Heavy Clefthoof Boots
		[2] = { itemID = 24417, desc = "=ds=#w17#"  }; --Scout's Arrow
		[3] = { itemID = 23814, desc = "=ds=#p5# (335)"  }; --Schematic: Green Smoke Flare
		[4] = { itemID = 24429, desc = "=q1=Expedition Flare"  };
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25838, desc = "=ds=#s5#, #a2#"  }; --Warden's Hauberk
		[2] = { itemID = 25836, desc = "=ds=#h3#, #w6#"  }; --Preserver's Cudgel
		[3] = { itemID = 25835, desc = "=ds=#h2#, #w9#"  }; --Explorer's Walking Stick
		[4] = { itemID = 25735 }; --Pattern: Heavy Clefthoof Vest
		[5] = { itemID = 25736, desc = "=ds=#p7# (355)"  }; --Pattern: Heavy Clefthoof Leggings
		[6] = { itemID = 29194, desc = "#s1# #e17#"  }; --Arcanum of Nature Warding
		[7] = { itemID = 25869 }; --Recipe: Transmute Earthstorm Diamond
		[8] = { itemID = 32070, desc = "=ds=#p1# (320)"  }; --Recipe: Earthen Elixir
		[9] = { itemID = 23618 }; --Plans: Adamantite Sharpening Stone
		[10] = { itemID = 28632 }; --Plans: Adamantite Weightstone
		[11] = { itemID = 25526 }; --Plans: Greater Rune of Warding
		[12] = { itemID = 29720 }; --Pattern: Clefthide Leg Armor
		[13] = { itemID = 30623, desc = "=ds=#e9#"  }; --Reservoir Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 31392 }; --Plans: Wildguard Helm
		[2] = { itemID = 31391 }; --Plans: Wildguard Leggings
		[3] = { itemID = 29174, desc = "=ds=#s1#, #a1#"  }; --Watcher's Cowl
		[4] = { itemID = 29173, desc = "=ds=#s2#"  }; --Strength of the Untamed
		[5] = { itemID = 31949, desc = "=ds=#w17#"  }; --Warden's Arrow
		[6] = { itemID = 24183 }; --Design: Nightseye Panther
		[7] = { itemID = 29192, desc = "=ds=#s1# #e17#"  }; --Arcanum of Ferocity
		[8] = { itemID = 22918 }; --Recipe: Transmute Primal Water to Air
		[9] = { itemID = 28271, desc = "=ds=#p4# (360)"  }; --Formula: Enchant Gloves - Spell Strike
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29170, desc = "=ds=#s15#"  }; --Windcaller's Orb
		[2] = { itemID = 29172, desc = "=ds=#s13#"  }; --Ashyen's Gift
		[3] = { itemID = 29171, desc = "=ds=#h2#, #w6#"  }; --Earthwarden
		[4] = { itemID = 33999, desc = "=ds=#e12#"  }; --Cenarion War Hippogryph
		[5] = { itemID = 31390 }; --Plans: Wildguard Breastplate
		[6] = { itemID = 31402 }; --Design: The Natural Ward
		[7] = { itemID = 33149 }; --Formula: Enchant Cloak - Stealth
		[8] = { itemID = 31356 }; --Recipe: Flask of Distilled Wisdom
		[9] = { itemID = 22922, desc = "=ds=#p1# (360)"  }; --Recipe: Major Nature Protection Potion
		[10] = { itemID = 29721 }; --Pattern: Nethercleft Leg Armor
		[11] = { itemID = 31804, desc = "=ds=#s7#"  }; --Cenarion Expedition Tabard
	};
};

------------------
--- Honor Hold ---
------------------

AtlasLoot_Data["HonorHold"] = {
	Name = BabbleFaction["Honor Hold"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 29213 }; --Pattern: Felstalker Belt
		[2] = { itemID = 23142 }; --Design: Enduring Deep Peridot
		[3] = { itemID = 22531 }; --Formula: Enchant Bracer - Superior Healing
		[4] = { itemID = 24007, desc = "=ds=#e4#"  }; --Footman's Waterskin
		[5] = { itemID = 24008, desc = "=ds=#e3#"  }; --Dried Mushroom Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25826, desc = "=ds=#s13#"  }; --Sage's Band
		[2] = { itemID = 25825, desc = "=ds=#h1#, #w10#"  }; --Footman's Longsword
		[3] = { itemID = 29214 }; --Pattern: Felstalker Bracers
		[4] = { itemID = 29215 }; --Pattern: Felstalker Breastplate
		[5] = { itemID = 29196, desc = "=ds=#s1# #e17#"  }; --Arcanum of Fire Warding
		[6] = { itemID = 25870 }; --Recipe: Transmute Skyfire Diamond
		[7] = { itemID = 22905 }; --Recipe: Elixir of Major Agility
		[8] = { itemID = 29719 }; --Pattern: Cobrahide Leg Armor
		[9] = { itemID = 30622, desc = "=ds=#e9#"  }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29169, desc = "=ds=#s13#"  }; --Ring of Convalescence
		[2] = { itemID = 29166, desc = "=ds=#w7#"  }; --Hellforged Halberd
		[3] = { itemID = 32883, desc = "=ds=#w18#"  }; --Felbane Slugs
		[4] = { itemID = 24180 }; --Design: Dawnstone Crab
		[5] = { itemID = 29189, desc = "=ds=#s1# #e17#"  }; --Arcanum of Renewal
		[6] = { itemID = 22547 }; --Formula: Enchant Chest - Exceptional Stats
		[7] = { itemID = 34218 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29153, desc = "=ds=#h3#, #w10#"  }; --Blade of the Archmage
		[2] = { itemID = 29156, desc = "=ds=#h1#, #w10#"  }; --Honor's Call
		[3] = { itemID = 29151, desc = "=ds=#w5#"  }; --Veteran's Musket
		[4] = { itemID = 33150 }; --Formula: Enchant Cloak - Subtlety
		[5] = { itemID = 23619 }; --Plans: Felsteel Shield Spike
		[6] = { itemID = 29722 }; --Pattern: Nethercobra Leg Armor
		[7] = { itemID = 23999, desc = "=ds=#s7#"  }; --Honor Hold Tabard
	};
};

-----------------------
--- Keepers of Time ---
-----------------------

AtlasLoot_Data["KeepersofTime"] = {
	Name = BabbleFaction["Keepers of Time"];
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29198, desc = "=ds=#s1# #e17#"  }; --Arcanum of Frost Warding
		[2] = { itemID = 28272, desc = "=ds=#p4# (360)"  }; --Formula: Enchant Gloves - Major Spellpower
		[3] = { itemID = 22536, desc = "=ds=#p4# (360)"  }; --Formula: Enchant Ring - Spellpower
		[4] = { itemID = 25910 }; --Design: Enigmatic Skyfire Diamond
		[5] = { itemID = 33160 }; --Design: Facet of Eternity
		[6] = { itemID = 29713, desc = "=ds=#p7# (370)"  }; --Pattern: Drums of Panic
		[7] = { itemID = 30635, desc = "=ds=#e9#"  }; --Key of Time
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29184, desc = "=ds=#s11#, #a4#"  }; --Timewarden's Leggings
		[2] = { itemID = 29185, desc = "=ds=#h3#, #w10#"  }; --Continuum Blade
		[3] = { itemID = 24181 }; --Design: Living Ruby Serpent
		[4] = { itemID = 24174 }; --Design: Pendant of Frozen Flame
		[5] = { itemID = 29186, desc = "=ds=#s1# #e17#"  }; --Arcanum of the Defender
		[6] = { itemID = 33158 }; --Design: Stone of Blades
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29183, desc = "=ds=#s8#, #a1#"  }; --Bindings of the Timewalker
		[2] = { itemID = 29181, desc = "=ds=#s14#"  }; --Timelapse Shard
		[3] = { itemID = 29182, desc = "=ds=#h1#, #w4#"  }; --Riftmaker
		[4] = { itemID = 33152 }; --Formula: Enchant Gloves - Superior Agility
		[5] = { itemID = 31355 }; --Recipe: Flask of Supreme Power
		[6] = { itemID = 31777, desc = "=ds=#s7#"  }; --Keepers of Time Tabard
	};
};

---------------
--- Kurenai ---
---------------

AtlasLoot_Data["Kurenai"] = {
	Name = BabbleFaction["Kurenai"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 29217 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29144, desc = "=ds=#m14# #w19# =q1=#m1# =ds=#c2#"  }; --Worg Hide Quiver
		[2] = { itemID = 29219 }; --Pattern: Netherfury Leggings
		[3] = { itemID = 34175 }; --Pattern: Drums of Restoration
		[4] = { itemID = 34173 }; --Pattern: Drums of Speed
		[5] = { itemID = 30444 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29148, desc = "=ds=#s3#, #a2#"  }; --Blackened Leather Spaulders
		[2] = { itemID = 29142, desc = "=ds=#s11#, #a2#"  }; --Kurenai Kilt
		[3] = { itemID = 29146, desc = "=ds=#s13#"  }; --Band of Elemental Spirits
		[4] = { itemID = 29218 }; --Pattern: Netherfury Boots
		[5] = { itemID = 30443 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29227, desc = "=ds=#e12#"  }; --Reins of the Cobalt War Talbuk
		[2] = { itemID = 29229, desc = "=ds=#e12#"  }; --Reins of the Silver War Talbuk
		[3] = { itemID = 29230, desc = "=ds=#e12#"  }; --Reins of the Tan War Talbuk
		[4] = { itemID = 29231, desc = "=ds=#e12#"  }; --Reins of the White War Talbuk
		[5] = { itemID = 31830, desc = "=ds=#e12#"  }; --Reins of the Cobalt Riding Talbuk
		[6] = { itemID = 31832, desc = "=ds=#e12#"  }; --Reins of the Silver Riding Talbuk
		[7] = { itemID = 31834, desc = "=ds=#e12#"  }; --Reins of the Tan Riding Talbuk
		[8] = { itemID = 31836, desc = "=ds=#e12#"  }; --Reins of the White Riding Talbuk
		[9] = { itemID = 29140, desc = "=ds=#s4#"  }; --Cloak of the Ancient Spirits
		[10] = { itemID = 29136, desc = "=ds=#s1#, #a3#"  }; --Far Seer's Helm
		[11] = { itemID = 29138, desc = "=ds=#h2#, #w6#"  }; --Arechron's Gift
		[12] = { itemID = 31774, desc = "=ds=#s7#"  }; --Kurenai Tabard
	};
};

------------------
--- Lower City ---
------------------

AtlasLoot_Data["LowerCity"] = {
	Name = BabbleFaction["Lower City"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23138 }; --Design: Potent Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 30836, desc = "=ds=#s11#, #a1#"  }; --Leggings of the Skettis Exile
		[2] = { itemID = 30835, desc = "=ds=#s5#, #a3#"  }; --Salvager's Hauberk
		[3] = { itemID = 30841, desc = "=ds=#s14#"  }; --Lower City Prayerbook
		[4] = { itemID = 24179 }; --Design: Felsteel Boar
		[5] = { itemID = 24175 }; --Design: Pendant of Thawing
		[6] = { itemID = 30846, desc = "=ds=#s1# #e17#"  }; --Arcanum of the Outcast
		[7] = { itemID = 22910 }; --Recipe: Elixir of Major Shadow Power
		[8] = { itemID = 33157 }; --Design: Falling Star
		[9] = { itemID = 34200 }; --Pattern: Quiver of a Thousand Arrows
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29199, desc = "=ds=#s1# #e17#"  }; --Arcanum of Shadow Warding
		[2] = { itemID = 22538 }; --Formula: Enchant Ring - Stats
		[3] = { itemID = 30833 }; --Pattern: Cloak of Arcane Evasion
		[4] = { itemID = 30633, desc = "=ds=#e9#"  }; --Auchenai Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 30834, desc = "=ds=#s13#"  }; --Shapeshifter's Signet
		[2] = { itemID = 30832, desc = "=ds=#h3#, #w6#"  }; --Gavel of Unearthed Secrets
		[3] = { itemID = 30830, desc = "=ds=#w7#"  }; --Trident of the Outcast Tribe
		[4] = { itemID = 33148 }; --Formula: Enchant Cloak - Dodge
		[5] = { itemID = 31357 }; --Recipe: Flask of Chromatic Resistance
		[6] = { itemID = 31778, desc = "=ds=#s7#"  }; --Lower City Tabard
	};
};

------------------
--- Netherwing ---
------------------

AtlasLoot_Data["Netherwing"] = {
	Name = BabbleFaction["Netherwing"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32694, desc = "=ds=#s14#"  }; --Overseer's Badge
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32695, desc = "=ds=#s14#"  }; --Captain's Badge
		[2] = { itemID = 32863, desc = "=q1=#m4#: =ds=#s14#"  }; --Skybreaker Whip
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32864, desc = "=ds=#s14#"  }; --Commander's Badge
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32858, desc = "=ds=#e12#"  }; --Reins of the Azure Netherwing Drake
		[2] = { itemID = 32859, desc = "=ds=#e12#"  }; --Reins of the Cobalt Netherwing Drake
		[3] = { itemID = 32857, desc = "=ds=#e12#"  }; --Reins of the Onyx Netherwing Drake
		[4] = { itemID = 32860, desc = "=ds=#e12#"  }; --Reins of the Purple Netherwing Drake
		[5] = { itemID = 32861, desc = "=ds=#e12#"  }; --Reins of the Veridian Netherwing Drake
		[6] = { itemID = 32862, desc = "=ds=#e12#"  }; --Reins of the Violet Netherwing Drake
	};
};

---------------
--- Ogri'la ---
---------------

AtlasLoot_Data["Ogrila"] = {
	Name = BabbleFaction["Ogri'la"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32910, desc = "=q1=#m4#: =ds=#e2#"  }; --Red Ogre Brew Special
		[2] = { itemID = 32909, desc = "=q1=#m4#: =ds=#e2#"  }; --Blue Ogre Brew Special
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32784, desc = "=ds=#e2#", cost = "2 #ogrilashard#"  }; --Red Ogre Brew
		[2] = { itemID = 32783, desc = "=ds=#e2#", cost = "3 #ogrilashard#"  }; --Blue Ogre Brew
		[3] = { itemID = 32572, desc = "=ds=#m17#"  }; --Apexis Crystal
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32653, desc = "=ds=#s4#", cost = "1 #ogrilacrystal# 50 #ogrilashard#"  }; --Apexis Cloak
		[2] = { itemID = 32654, desc = "=ds=#s14#", cost = "1 #ogrilacrystal# 50 #ogrilashard#"  }; --Crystalforged Trinket
		[3] = { itemID = 32652, desc = "=ds=#w8#", cost = "1 #ogrilacrystal# 50 #ogrilashard#"  }; --Ogri'la Aegis
		[4] = { itemID = 32650, desc = "=ds=#w12#", cost = "1 #ogrilacrystal# 50 #ogrilashard#"  }; --Cerulean Crystal Rod
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32647, desc = "=ds=#s8#, #a2#", cost = "4 #ogrilacrystal# 100 #ogrilashard#"  }; --Shard-bound Bracers
		[2] = { itemID = 32648, desc = "=ds=#s12#, #a4#", cost = "4 #ogrilacrystal# 100 #ogrilashard#"  }; --Vortex Walking Boots
		[3] = { itemID = 32651, desc = "=ds=#s15#", cost = "4 #ogrilacrystal# 100 #ogrilashard#"  }; --Crystal Orb of Enlightenment
		[4] = { itemID = 32645, desc = "=ds=#w3#", cost = "4 #ogrilacrystal# 100 #ogrilashard#"  }; --Crystalline Crossbow
		[5] = { itemID = 32828, desc = "=ds=#s7#", cost = "10 #ogrilashard#"  }; --Ogri'la Tabard
		[6] = { itemID = 32569, desc = "=ds=#m17#"  }; --Apexis Shard
	};
};

-------------------------
--- Sha'tari Skyguard ---
-------------------------

AtlasLoot_Data["Skyguard"] = {
	Name = BabbleFaction["Sha'tari Skyguard"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32722, desc = "=ds=#e4#"  }; --Enriched Terocone Juice
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 32721, desc = "=ds=#e3#"  }; --Skyguard Rations
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 32539, desc = "=ds=#s4#"  }; --Skyguard's Drape
		[2] = { itemID = 32538, desc = "=ds=#s4#"  }; --Skywitch's Drape
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32770, desc = "=ds=#s14#"  }; --Skyguard Silver Cross
		[2] = { itemID = 32771, desc = "=ds=#s14#"  }; --Airman's Ribbon of Gallantry
		[3] = { itemID = 32319, desc = "=ds=#e12#"  }; --Blue Riding Nether Ray
		[4] = { itemID = 32314, desc = "=ds=#e12#"  }; --Green Riding Nether Ray
		[5] = { itemID = 32317, desc = "=ds=#e12#"  }; --Red Riding Nether Ray
		[6] = { itemID = 32316, desc = "=ds=#e12#"  }; --Purple Riding Nether Ray
		[7] = { itemID = 32318, desc = "=ds=#e12#"  }; --Silver Riding Nether Ray
		[8] = { itemID = 38628, desc = "=ds=#e13#"  }; --Nether Ray Fry
		[9] = { itemID = 32445, desc = "=ds=#s7#"  }; --Skyguard Tabard
	};
};

-------------------------------
--- Shattered Sun Offensive ---
-------------------------------

AtlasLoot_Data["SunOffensive"] = {
	Name = BabbleFaction["Shattered Sun Offensive"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 35244 }; --Design: Bold Crimson Spinel
		[2] = { itemID = 35245 }; --Design: Bright Crimson Spinel
		[3] = { itemID = 35255 }; --Design: Brilliant Lionseye
		[4] = { itemID = 35246 }; --Design: Delicate Crimson Spinel
		[5] = { itemID = 35256 }; --Design: Gleaming Lionseye
		[6] = { itemID = 35262 }; --Design: Lustrous Empyrean Sapphire
		[7] = { itemID = 35248 }; --Design: Runed Crimson Spinel
		[8] = { itemID = 35260 }; --Design: Smooth Lionseye
		[9] = { itemID = 35263 }; --Design: Solid Empyrean Sapphire
		[10] = { itemID = 35264 }; --Design: Sparkling Empyrean Sapphire
		[11] = { itemID = 35249 }; --Design: Subtle Crimson Spinel
		[12] = { itemID = 35250 }; --Design: Teardrop Crimson Spinel
		[13] = { itemID = 35261 }; --Design: Thick Lionseye
		[14] = { itemID = 34780, desc = "=ds=#e3#"  }; --Naaru Ration
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 35238 }; --Design: Balanced Shadowsong Amethyst
		[2] = { itemID = 35251 }; --Design: Dazzling Seaspray Emerald
		[3] = { itemID = 35266 }; --Design: Glinting Pyrestone
		[4] = { itemID = 35239 }; --Design: Glowing Shadowsong Amethyst
		[5] = { itemID = 35240 }; --Design: Infused Shadowsong Amethyst
		[6] = { itemID = 35253 }; --Design: Jagged Seaspray Emerald
		[7] = { itemID = 35268 }; --Design: Luminous Pyrestone
		[8] = { itemID = 35269 }; --Design: Potent Pyrestone
		[9] = { itemID = 35254 }; --Design: Radiant Seaspray Emerald
		[10] = { itemID = 34872 }; --Formula: Void Shatter
		[11] = { itemID = 35500, desc = "=ds=#p4# (360)"  }; --Formula: Enchant Chest - Defense
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 35769 }; --Design: Forceful Seaspray Emerald
		[2] = { itemID = 35768 }; --Design: Quick Lionseye
		[3] = { itemID = 35767 }; --Design: Reckless Pyrestone
		[4] = { itemID = 35766 }; --Design: Steady Seaspray Emerald
		[5] = { itemID = 34665, desc = "=ds=#h1#, #w4#"  }; --Bombardier's Blade
		[6] = { itemID = 34667, desc = "=ds=#h3#, #w10#"  }; --Archmage's Guile
		[7] = { itemID = 34672, desc = "=ds=#h1#, #w10#"  }; --Inuuro's Blade
		[8] = { itemID = 34666, desc = "=ds=#h1#, #w10#"  }; --The Sunbreaker
		[9] = { itemID = 34671, desc = "=ds=#h3#, #w6#"  }; --K'iru's Presage
		[10] = { itemID = 34670, desc = "=ds=#h3#, #w6#"  }; --Seeker's Gavel
		[11] = { itemID = 34673, desc = "=ds=#h2#, #w1#"  }; --Legionfoe
		[12] = { itemID = 34674, desc = "=ds=#w3#"  }; --Truestrike Crossbow
		[13] = { itemID = 29193, desc = "=ds=#s1# #e17#"  }; --Arcanum of the Gladiator
		[14] = { itemID = 35252 }; --Design: Enduring Seaspray Emerald
		[15] = { itemID = 35697 }; --Design: Figurine - Crimson Serpent
		[16] = { itemID = 35695 }; --Design: Figurine - Empyrean Tortoise
		[17] = { itemID = 35696 }; --Design: Figurine - Khorium Boar
		[18] = { itemID = 35699 }; --Design: Figurine - Seaspray Albatross
		[19] = { itemID = 35698 }; --Design: Figurine - Shadowsong Panther
		[20] = { itemID = 35259 }; --Design: Rigid Lionseye
		[21] = { itemID = 35241 }; --Design: Royal Shadowsong Amethyst
		[22] = { itemID = 35271 }; --Design: Wicked Pyrestone
		[23] = { itemID = 35505 }; --Design: Ember Skyfire Diamond
		[24] = { itemID = 35502 }; --Design: Eternal Earthstorm Diamond
		[25] = { itemID = 35708, desc = "=ds=#p12# (350)"  }; --Design: Regal Nightseye
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 34678, desc = "=ds=#s2#"  }; --Shattered Sun Pendant of Acumen
		[2] = { itemID = 34679, desc = "=ds=#s2#"  }; --Shattered Sun Pendant of Might
		[3] = { itemID = 34680, desc = "=ds=#s2#"  }; --Shattered Sun Pendant of Resolve
		[4] = { itemID = 34677, desc = "=ds=#s2#"  }; --Shattered Sun Pendant of Restoration
		[5] = { itemID = 34676, desc = "=ds=#w8#"  }; --Dawnforged Defender
		[6] = { itemID = 34675, desc = "=ds=#w8#"  }; --Sunward Crest
		[7] = { itemID = 35325, desc = "=ds=#p12# (350)"  }; --Design: Forceful Talasite
		[8] = { itemID = 35322, desc = "=ds=#p12# (350)"  }; --Design: Quick Dawnstone
		[9] = { itemID = 35323, desc = "=ds=#p12# (350)"  }; --Design: Reckless Noble Topaz
		[10] = { itemID = 35221, desc = "=ds=#s7#"  }; --Tabard of the Shattered Sun
		[11] = { itemID = 35247 }; --Design: Flashing Crimson Spinel
		[12] = { itemID = 35257 }; --Design: Great Lionseye
		[13] = { itemID = 35267 }; --Design: Inscribed Pyrestone
		[14] = { itemID = 35258 }; --Design: Mystic Lionseye
		[15] = { itemID = 37504 }; --Design: Purified Shadowsong Amethyst
		[16] = { itemID = 35242 }; --Design: Shifting Shadowsong Amethyst
		[17] = { itemID = 35243 }; --Design: Sovereign Shadowsong Amethyst
		[18] = { itemID = 35265 }; --Design: Stormy Empyrean Sapphire
		[19] = { itemID = 35270 }; --Design: Veiled Pyrestone
		[20] = { itemID = 35755 }; --Recipe: Assassin's Alchemist Stone
		[21] = { itemID = 35752 }; --Recipe: Guardian's Alchemist Stone
		[22] = { itemID = 35754 }; --Recipe: Redeemer's Alchemist Stone
		[23] = { itemID = 35753 }; --Recipe: Sorcerer's Alchemist Stone
	};
};

-----------------
--- Sporeggar ---
-----------------

AtlasLoot_Data["Sporeggar"] = {
	Name = BabbleFaction["Sporeggar"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 27689, desc = "=ds=#p3# (310)", cost = "2 #glowcap#"  }; --Recipe: Sporeling Snack
		[2] = { itemID = 30156, desc = "=q1=Recipe: Clam Bar"  , "1 #glowcap#" };
		[3] = { itemID = 25548, desc = "=ds=#e3#", cost = "1 #glowcap#"  }; --Tallstalk Mushroom
		[4] = { itemID = 24539, desc = "=ds=#e3#", cost = "2 #glowcap#"  }; --Marsh Lichen
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25827, desc = "=ds=#s4#", cost = "25 #glowcap#"  }; --Muck-Covered Drape
		[2] = { itemID = 25828, desc = "=ds=#w8#", cost = "15 #glowcap#"  }; --Petrified Lichen Guard
		[3] = { itemID = 25550, desc = "=ds=#e3#", cost = "1 #glowcap#"  }; --Redcap Toadstool
		[4] = { itemID = 24245, desc = "=ds=#m17#"  }; --Glowcap
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29150, desc = "=ds=#h1#, #w4#", cost = "45 #glowcap#"  }; --Hardened Stone Shard
		[2] = { itemID = 29149, desc = "=ds=#w12#", cost = "20 #glowcap#"  }; --Sporeling's Firestick
		[3] = { itemID = 22916, desc = "25 #glowcap#"  }; --Recipe: Transmute Primal Earth to Water
		[4] = { itemID = 38229, desc = "=q1=Pattern: Mycah's Botanical Bag"  , "25 #glowcap#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 34478, desc = "=ds=#e13#", cost = "30 #glowcap#"  }; --Tiny Sporebat
		[2] = { itemID = 22906, cost = "30 #glowcap#"  }; --Recipe: Shrouding Potion
		[3] = { itemID = 31775, desc = "=ds=#s7#", cost = "10 #glowcap#"  }; --Sporeggar Tabard
	};
};

-----------------
--- The Aldor ---
-----------------

AtlasLoot_Data["Aldor"] = {
	Name = BabbleFaction["The Aldor"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23149 }; --Design: Gleaming Golden Draenite
		[2] = { itemID = 23601 }; --Plans: Flamebane Bracers
		[3] = { itemID = 30842 }; --Pattern: Flameheart Bracers
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29129, desc = "=ds=#a1#, #s5#"  }; --Anchorite's Robes
		[2] = { itemID = 28881, desc = "=ds=#s3# #e17#"  }; --Inscription of Discipline
		[3] = { itemID = 28878, desc = "=ds=#s3# #e17#"  }; --Inscription of Faith
		[4] = { itemID = 28885, desc = "=ds=#s3# #e17#"  }; --Inscription of Vengeance
		[5] = { itemID = 28882, desc = "=ds=#s3# #e17#"  }; --Inscription of Warding
		[6] = { itemID = 23145 }; --Design: Royal Shadow Draenite
		[7] = { itemID = 23603 }; --Plans: Flamebane Gloves
		[8] = { itemID = 29704 }; --Pattern: Blastguard Belt
		[9] = { itemID = 29693 }; --Pattern: Flamescale Belt
		[10] = { itemID = 30843 }; --Pattern: Flameheart Gloves
		[11] = { itemID = 24293 }; --Pattern: Silver Spellthread
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29127, desc = "=ds=#s5#, #a4#"  }; --Vindicator's Hauberk
		[2] = { itemID = 29128, desc = "=ds=#s13#"  }; --Lightwarden's Band
		[3] = { itemID = 29130, desc = "=ds=#h2#, #w9#"  }; --Auchenai Staff
		[4] = { itemID = 24177 }; --Design: Pendant of Shadow's End
		[5] = { itemID = 23604 }; --Plans: Flamebane Breastplate
		[6] = { itemID = 29703 }; --Pattern: Blastguard Boots
		[7] = { itemID = 29691 }; --Pattern: Flamescale Boots
		[8] = { itemID = 25721 }; --Pattern: Vindicator's Armor Kit
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29123, desc = "=ds=#s2#"  }; --Medallion of the Lightbearer
		[2] = { itemID = 29124, desc = "=ds=#h1#, #w10#"  }; --Vindicator's Brand
		[3] = { itemID = 28886, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of Discipline
		[4] = { itemID = 28887, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of Faith
		[5] = { itemID = 28888, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of Vengeance
		[6] = { itemID = 28889, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of Warding
		[7] = { itemID = 23602 }; --Plans: Flamebane Helm
		[8] = { itemID = 29702 }; --Pattern: Blastguard Pants
		[9] = { itemID = 29689 }; --Pattern: Flamescale Leggings
		[10] = { itemID = 24295 }; --Pattern: Golden Spellthread
		[11] = { itemID = 30844 }; --Pattern: Flameheart Vest
		[12] = { itemID = 31779, desc = "=ds=#s7#"  }; --Aldor Tabard
	};
};

----------------------
--- The Consortium ---
----------------------

AtlasLoot_Data["Consortium"] = {
	Name = BabbleFaction["The Consortium"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25732 }; --Pattern: Fel Leather Gloves
		[2] = { itemID = 28274 }; --Formula: Enchant Cloak - Spell Penetration
		[3] = { itemID = 23146 }; --Design: Shifting Shadow Draenite
		[4] = { itemID = 23136 }; --Design: Luminous Flame Spessarite
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29457, desc = "=ds=#h3#, #w4#"  }; --Nethershard
		[2] = { itemID = 29456, desc = "=ds=#h1#, #w10#"  }; --Gift of the Ethereal
		[3] = { itemID = 29118, desc = "=ds=#m14# #w20# =q1=#m1# =ds=#c2#"  }; --Smuggler's Ammo Pouch
		[4] = { itemID = 25733 }; --Pattern: Fel Leather Boots
		[5] = { itemID = 23134 }; --Design: Delicate Blood Garnet
		[6] = { itemID = 23155 }; --Design: Lustrous Azure Moonstone
		[7] = { itemID = 23150 }; --Design: Thick Golden Draenite
		[8] = { itemID = 22552 }; --Formula: Enchant Weapon - Major Striking
		[9] = { itemID = 25908 }; --Design: Swift Skyfire Diamond
		[10] = { itemID = 25902 }; --Design: Powerful Earthstorm Diamond
		[11] = { itemID = 24314, desc = "=ds=#p8# (340)"  }; --Pattern: Bag of Jewels
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29117, desc = "=ds=#s5#, #a1#"  }; --Stormspire Vest
		[2] = { itemID = 29116, desc = "=ds=#s11#, #a2#"  }; --Nomad's Leggings
		[3] = { itemID = 29115, desc = "=ds=#w5#"  }; --Consortium Blaster
		[4] = { itemID = 24178 }; --Design: Pendant of the Null Rune
		[5] = { itemID = 25734 }; --Pattern: Fel Leather Leggings
		[6] = { itemID = 22535 }; --Formula: Enchant Ring - Striking
		[7] = { itemID = 23874 }; --Schematic: Elemental Seaforium Charge
		[8] = { itemID = 25903 }; --Design: Bracing Earthstorm Diamond
		[9] = { itemID = 33156 }; --Design: Crimson Sun
		[10] = { itemID = 33305 }; --Design: Don Julio's Heart
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29122, desc = "=ds=#s1#, #a1#"  }; --Nether Runner's Cowl
		[2] = { itemID = 29119, desc = "=ds=#s2#"  }; --Haramad's Bargain
		[3] = { itemID = 29121, desc = "=ds=#h1#, #w4#"  }; --Guile of Khoraazi
		[4] = { itemID = 33622 }; --Design: Relentless Earthstorm Diamond
		[5] = { itemID = 31776, desc = "=ds=#s7#"  }; --Consortium Tabard
	};
};

-------------------
--- The Mag'har ---
-------------------

AtlasLoot_Data["Maghar"] = {
	Name = BabbleFaction["The Mag'har"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25741 }; --Pattern: Netherfury Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29143, desc = "=ds=#m14# #w19# =q1=#m1# =ds=#c2#"  }; --Clefthoof Hide Quiver
		[2] = { itemID = 25742 }; --Pattern: Netherfury Leggings
		[3] = { itemID = 34174 }; --Pattern: Drums of Restoration
		[4] = { itemID = 34172 }; --Pattern: Drums of Speed
		[5] = { itemID = 29664 }; --Pattern: Reinforced Mining Bag
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29147, desc = "=ds=#s3#, #a2#"  }; --Talbuk Hide Spaulders
		[2] = { itemID = 29141, desc = "=ds=#s11#, #a2#"  }; --Tempest Leggings
		[3] = { itemID = 29145, desc = "=ds=#s13#"  }; --Band of Ancestral Spirits
		[4] = { itemID = 25743 }; --Pattern: Netherfury Boots
		[5] = { itemID = 22917 }; --Recipe: Transmute Primal Fire to Earth
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29102, desc = "=ds=#e12#"  }; --Reins of the Cobalt War Talbuk
		[2] = { itemID = 29104, desc = "=ds=#e12#"  }; --Reins of the Silver War Talbuk
		[3] = { itemID = 29105, desc = "=ds=#e12#"  }; --Reins of the Tan War Talbuk
		[4] = { itemID = 29103, desc = "=ds=#e12#"  }; --Reins of the White War Talbuk
		[5] = { itemID = 31829, desc = "=ds=#e12#"  }; --Reins of the Cobalt Riding Talbuk
		[6] = { itemID = 31831, desc = "=ds=#e12#"  }; --Reins of the Silver Riding Talbuk
		[7] = { itemID = 31833, desc = "=ds=#e12#"  }; --Reins of the Tan Riding Talbuk
		[8] = { itemID = 31835, desc = "=ds=#e12#"  }; --Reins of the White Riding Talbuk
		[9] = { itemID = 29139, desc = "=ds=#s4#"  }; --Ceremonial Cover
		[10] = { itemID = 29135, desc = "=ds=#s1#, #a3#"  }; --Earthcaller's Headdress
		[11] = { itemID = 29137, desc = "=ds=#h2#, #w1#"  }; --Hellscream's Will
		[12] = { itemID = 31773, desc = "=ds=#s7#"  }; --Mag'har Tabard
	};
};

------------------------------
--- The Scale of the Sands ---
------------------------------

AtlasLoot_Data["ScaleSands"] = {
	Name = BabbleFaction["The Scale of the Sands"];
	scaleOfSandsRings;
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 32274 }; --Design: Bold Crimson Spinel
		[2] = { itemID = 32283 }; --Design: Bright Crimson Spinel
		[3] = { itemID = 32277 }; --Design: Delicate Crimson Spinel
		[4] = { itemID = 32282 }; --Design: Runed Crimson Spinel
		[5] = { itemID = 32284 }; --Design: Subtle Crimson Spinel
		[6] = { itemID = 32281 }; --Design: Teardrop Crimson Spinel
		[7] = { itemID = 32288 }; --Design: Lustrous Empyrean Sapphire
		[8] = { itemID = 32286 }; --Design: Solid Empyrean Sapphire
		[9] = { itemID = 32287 }; --Design: Sparkling Empyrean Sapphire
		[10] = { itemID = 32290 }; --Design: Brilliant Lionseye
		[11] = { itemID = 32293 }; --Design: Gleaming Lionseye
		[12] = { itemID = 32291 }; --Design: Smooth Lionseye
		[13] = { itemID = 32294 }; --Design: Thick Lionseye
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 35763 }; --Design: Quick Lionseye
		[2] = { itemID = 32306 }; --Design: Glinting Pyrestone
		[3] = { itemID = 32305 }; --Design: Luminous Pyrestone
		[4] = { itemID = 32304 }; --Design: Potent Pyrestone
		[5] = { itemID = 35762 }; --Design: Reckless Pyrestone
		[6] = { itemID = 32299 }; --Design: Balanced Shadowsong Amethyst
		[7] = { itemID = 32301 }; --Design: Glowing Shadowsong Amethyst
		[8] = { itemID = 32300 }; --Design: Infused Shadowsong Amethyst
		[9] = { itemID = 32311 }; --Design: Dazzling Seaspray Emerald
		[10] = { itemID = 35765 }; --Design: Forceful Seaspray Emerald
		[11] = { itemID = 32312 }; --Design: Jagged Seaspray Emerald
		[12] = { itemID = 32310 }; --Design: Radiant Seaspray Emerald
		[13] = { itemID = 35764 }; --Design: Steady Seaspray Emerald
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 31737, desc = "=ds=#w17#"  }; --Timeless Arrow
		[2] = { itemID = 31735, desc = "=ds=#w18#"  }; --Timeless Shell
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 32292 }; --Design: Rigid Lionseye
		[2] = { itemID = 32308 }; --Design: Wicked Pyrestone
		[3] = { itemID = 32309 }; --Design: Enduring Seaspray Emerald
		[4] = { itemID = 32302 }; --Design: Royal Shadowsong Amethyst
	};
};

-------------------
--- The Scryers ---
-------------------

AtlasLoot_Data["Scryer"] = {
	Name = BabbleFaction["The Scryers"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 23133 }; --Design: Runed Blood Garnet
		[2] = { itemID = 23597 }; --Plans: Enchanted Adamantite Belt
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 28907, desc = "=ds=#s3# #e17#"  }; --Inscription of the Blade
		[2] = { itemID = 28908, desc = "=ds=#s3# #e17#"  }; --Inscription of the Knight
		[3] = { itemID = 28904, desc = "=ds=#s3# #e17#"  }; --Inscription of the Oracle
		[4] = { itemID = 28903, desc = "=ds=#s3# #e17#"  }; --Inscription of the Orb
		[5] = { itemID = 23143 }; --Design: Dazzling Deep Peridot
		[6] = { itemID = 23598 }; --Plans: Enchanted Adamantite Boots
		[7] = { itemID = 29701 }; --Pattern: Enchanted Clefthoof Boots
		[8] = { itemID = 29682 }; --Pattern: Enchanted Felscale Gloves
		[9] = { itemID = 24292 }; --Pattern: Mystic Spellthread
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29131, desc = "=ds=#s11#, #a2# "  }; --Retainer's Leggings
		[2] = { itemID = 29134, desc = "=ds=#s9#, #a4# "  }; --Gauntlets of the Chosen
		[3] = { itemID = 29132, desc = "=ds=#s14#"  }; --Scryer's Bloodgem
		[4] = { itemID = 29133, desc = "=ds=#h2#, #w9#"  }; --Seer's Cane
		[5] = { itemID = 24176 }; --Design: Pendant of Withering
		[6] = { itemID = 22908 }; --Recipe: Elixir of Major Firepower
		[7] = { itemID = 23599 }; --Plans: Enchanted Adamantite Breastplate
		[8] = { itemID = 29700 }; --Pattern: Enchanted Clefthoof Gloves
		[9] = { itemID = 29684 }; --Pattern: Enchanted Felscale Boots
		[10] = { itemID = 25722 }; --Pattern: Magister's Armor Kit
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29126, desc = "=ds=#s13#"  }; --Seer's Signet
		[2] = { itemID = 29125, desc = "=ds=#h1#, #w4#"  }; --Retainer's Blade
		[3] = { itemID = 28910, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of the Blade
		[4] = { itemID = 28911, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of the Knight
		[5] = { itemID = 28912, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of the Oracle
		[6] = { itemID = 28909, desc = "=ds=#s3# #e17#"  }; --Greater Inscription of the Orb
		[7] = { itemID = 23600 }; --Plans: Enchanted Adamantite Leggings
		[8] = { itemID = 29698 }; --Pattern: Enchanted Clefthoof Leggings
		[9] = { itemID = 29677 }; --Pattern: Enchanted Felscale Leggings
		[10] = { itemID = 24294 }; --Pattern: Runic Spellthread
		[11] = { itemID = 31780, desc = "=ds=#s7#"  }; --Scryers Tabard
	};
};

-------------------
--- The Sha'tar ---
-------------------

AtlasLoot_Data["Shatar"] = {
	Name = BabbleFaction["The Sha'tar"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25904 }; --Design: Insightful Earthstorm Diamond
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 29180, desc = "=ds=#s10#, #a3#"  }; --Blessed Scale Girdle
		[2] = { itemID = 29179, desc = "=ds=#s14#"  }; --Xi'ri's Gift
		[3] = { itemID = 24182 }; --Design: Talasite Owl
		[4] = { itemID = 29191, desc = "=ds=#s1# #e17#"  }; --Arcanum of Power
		[5] = { itemID = 22915 }; --Recipe: Transmute Primal Air to Fire
		[6] = { itemID = 28281 }; --Formula: Enchant Weapon - Major Healing
		[7] = { itemID = 13517 }; --Recipe: Alchemist's Stone
		[8] = { itemID = 22537 }; --Formula: Enchant Ring - Healing Power
		[9] = { itemID = 33159 }; --Design: Blood of Amber
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 30826 }; --Design: Ring of Arcane Shielding
		[2] = { itemID = 29195, desc = "=ds=#s1# #e17#"  }; --Arcanum of Arcane Warding
		[3] = { itemID = 28273 }; --Formula: Enchant Gloves - Major Healing
		[4] = { itemID = 33155 }; --Design: Kailee's Rose
		[5] = { itemID = 29717 }; --Pattern: Drums of Battle
		[6] = { itemID = 30634, desc = "=ds=#e9#"  }; --Warpforged Key
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29177, desc = "=ds=#s13#"  }; --A'dal's Command
		[2] = { itemID = 29175, desc = "=ds=#h3#, #w6#"  }; --Gavel of Pure Light
		[3] = { itemID = 29176, desc = "=ds=#w8#"  }; --Crest of the Sha'tar
		[4] = { itemID = 33153 }; --Formula: Enchant Gloves - Threat
		[5] = { itemID = 31354 }; --Recipe: Flask of the Titans
		[6] = { itemID = 31781, desc = "=ds=#s7#"  }; --Sha'tar Tabard
	};
};

----------------------
--- The Violet Eye ---
----------------------

AtlasLoot_Data["VioletEye"] = {
	Name = BabbleFaction["The Violet Eye"];
	{
		Name = "Rings";
		[1] = { icon = "INV_Jewelry_Ring_62", name = "=q6=" .. AL["Path of the Violet Assassin"] };
		[2] = { itemID = 29280, desc = "=ds=#s13#, =q1=#r2#"  }; --Violet Signet
		[3] = { itemID = 29281, desc = "=ds=#s13#, =q1=#r3#"  }; --Violet Signet
		[4] = { itemID = 29282, desc = "=ds=#s13#, =q1=#r4#"  }; --Violet Signet
		[5] = { itemID = 29283, desc = "=ds=#s13#, =q1=#r5#"  }; --Violet Signet of the Master Assassin
		[7] = { icon = "INV_Jewelry_Ring_62", name = "=q6=" .. AL["Path of the Violet Mage"] };
		[8] = { itemID = 29284, desc = "=ds=#s13#, =q1=#r2#"  }; --Violet Signet
		[9] = { itemID = 29285, desc = "=ds=#s13#, =q1=#r3#"  }; --Violet Signet
		[10] = { itemID = 29286, desc = "=ds=#s13#, =q1=#r4#"  }; --Violet Signet
		[11] = { itemID = 29287, desc = "=ds=#s13#, =q1=#r5#"  }; --Violet Signet of the Archmage
		[16] = { icon = "INV_Jewelry_Ring_62", name = "=q6=" .. AL["Path of the Violet Restorer"] };
		[17] = { itemID = 29288, desc = "=ds=#s13#, =q1=#r2#"  }; --Violet Signet
		[18] = { itemID = 29289, desc = "=ds=#s13#, =q1=#r3#"  }; --Violet Signet
		[19] = { itemID = 29291, desc = "=ds=#s13#, =q1=#r4#"  }; --Violet Signet
		[20] = { itemID = 29290, desc = "=ds=#s13#, =q1=#r5#"  }; --Violet Signet of the Grand Restorer
		[22] = { icon = "INV_Jewelry_Ring_62", name = "=q6=" .. AL["Path of the Violet Protector"] };
		[23] = { itemID = 29276, desc = "=ds=#s13#, =q1=#r2#"  }; --Violet Signet
		[24] = { itemID = 29277, desc = "=ds=#s13#, =q1=#r3#"  }; --Violet Signet
		[25] = { itemID = 29278, desc = "=ds=#s13#, =q1=#r4#"  }; --Violet Signet
		[26] = { itemID = 29279, desc = "=ds=#s13#, =q1=#r5#"  }; --Violet Signet of the Great Protector
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 31113, desc = "=q1=#m4#: =ds=#s14#"  }; --Violet Badge
		[2] = { itemID = 31395 }; --Plans: Iceguard Helm
		[3] = { itemID = 31393 }; --Plans: Iceguard Breastplate
		[4] = { itemID = 31401 }; --Design: The Frozen Eye
		[5] = { itemID = 29187, desc = "=ds=#s3# #e17#"  }; --Inscription of Endurance
		[6] = { itemID = 33209 }; --Recipe: Flask of Chromatic Wonder
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 34581, desc = "=ds=#w17#"  }; --Mysterious Arrow
		[2] = { itemID = 34582, desc = "=ds=#w18#"  }; --Mysterious Shell
		[3] = { itemID = 31394 }; --Plans: Iceguard Leggings
		[4] = { itemID = 33205 }; --Pattern: Shadowprowler's Chestguard
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 33124 }; --Pattern: Cloak of Darkness
		[2] = { itemID = 33165 }; --Formula: Enchant Weapon - Greater Agility
	};
};

-----------------
--- Thrallmar ---
-----------------

AtlasLoot_Data["Thrallmar"] = {
	Name = BabbleFaction["Thrallmar"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 25738 }; --Pattern: Felstalker Belt
		[2] = { itemID = 31359 }; --Design: Enduring Deep Peridot
		[3] = { itemID = 24000 }; --Formula: Enchant Bracer - Superior Healing
		[4] = { itemID = 24006, desc = "=ds=#e4#"  }; --Grunt's Waterskin
		[5] = { itemID = 24009, desc = "=ds=#e3#"  }; --Dried Fruit Rations
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 25824, desc = "=ds=#s13#"  }; --Farseer's Band
		[2] = { itemID = 25823, desc = "=ds=#h1#, #w1#"  }; --Grunt's Waraxe
		[3] = { itemID = 25739 }; --Pattern: Felstalker Bracers
		[4] = { itemID = 25740 }; --Pattern: Felstalker Breastplate
		[5] = { itemID = 29197, desc = "=ds=#s1# #e17#"  }; --Arcanum of Fire Warding
		[6] = { itemID = 29232 }; --Recipe: Transmute Skyfire Diamond
		[7] = { itemID = 24001 }; --Recipe: Elixir of Major Agility
		[8] = { itemID = 31361 }; --Pattern: Cobrahide Leg Armor
		[9] = { itemID = 30637, desc = "=ds=#e9#"  }; --Flamewrought Key
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 29168, desc = "=ds=#s13#"  }; --Ancestral Band
		[2] = { itemID = 29167, desc = "=ds=#w7#"  }; --Blackened Spear
		[3] = { itemID = 32882, desc = "=ds=#w18#"  }; --Hellfire Shot
		[4] = { itemID = 31358 }; --Design: Dawnstone Crab
		[5] = { itemID = 29190, desc = "=ds=#s1# #e17#"  }; --Arcanum of Renewal
		[6] = { itemID = 24003 }; --Formula: Enchant Chest - Exceptional Stats
		[7] = { itemID = 34201 }; --Pattern: Netherscale Ammo Pouch
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 29155, desc = "=ds=#h3#, #w10#"  }; --Stormcaller
		[2] = { itemID = 29165, desc = "=ds=#h1#, #w1#"  }; --Warbringer
		[3] = { itemID = 29152, desc = "=ds=#w2#"  }; --Marksman's Bow
		[4] = { itemID = 33151 }; --Formula: Enchant Cloak - Subtlety
		[5] = { itemID = 24002 }; --Plans: Felsteel Shield Spike
		[6] = { itemID = 31362 }; --Pattern: Nethercobra Leg Armor
		[7] = { itemID = 24004, desc = "=ds=#s7#"  }; --Thrallmar Tabard
	};
};

--------------------
--- Tranquillien ---
--------------------

AtlasLoot_Data["Tranquillien"] = {
	Name = BabbleFaction["Tranquillien"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 22991, desc = "=ds=#s12#, #a1# "  }; --Apprentice Boots
		[2] = { itemID = 22992, desc = "=ds=#s12#, #a2# "  }; --Bogwalker Boots
		[3] = { itemID = 22993, desc = "=ds=#s12#, #a3# "  }; --Volunteer's Greaves
		[4] = { itemID = 28164, desc = "=ds=#h2#, #w10#"  }; --Tranquillien Flamberge
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 28155, desc = "=ds=#s10#, #a1# "  }; --Apothecary's Waistband
		[2] = { itemID = 28158, desc = "=ds=#s10#, #a2# "  }; --Batskin Belt
		[3] = { itemID = 28162, desc = "=ds=#s10#, #a3# "  }; --Tranquillien Defender's Girdle
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 22986, desc = "=ds=#s5#, #a1# "  }; --Apothecary's Robe
		[2] = { itemID = 22987, desc = "=ds=#s5#, #a2# "  }; --Deathstalker's Vest
		[3] = { itemID = 22985, desc = "=ds=#s5#, #a3# "  }; --Suncrown Hauberk
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 22990, desc = "=ds=#s4#"  }; --Tranquillien Champion's Cloak
	};
};

------------
--- Misc ---
------------

AtlasLoot_Data["ShattrathFlasks"] = {
	Name = "Shattrath Flasks";
	{
		Name = "Shattrath Flasks";
		[1] = { itemID = 32898, desc = "=ds=#e2#"  }; --Shattrath Flask of Fortification
		[2] = { itemID = 32899, desc = "=ds=#e2#"  }; --Shattrath Flask of Mighty
		[3] = { itemID = 32901, desc = "=ds=#e2#"  }; --Shattrath Flask of Relentless
		[4] = { itemID = 32900, desc = "=ds=#e2#"  }; --Shattrath Flask of Supreme Power
	};
};

-----------
--- PvP ---
-----------

---------------------------------------------------------------
--- World PvP - Hellfire Peninsula: Hellfire Fortifications ---
---------------------------------------------------------------

AtlasLoot_Data["PVPHellfire"] = {
	Name = AL["Hellfire Fortifications"];
	{
		Name = AL["Hellfire Fortifications"];
		[1] = { itemID = 27833, desc = "=ds=15 #markthrallmarhhold#"  }; --Band of the Victor
		[2] = { itemID = 27786, desc = "=ds=10 #markthrallmarhhold#"  }; --Barbed Deep Peridot
		[3] = { itemID = 28360, desc = "=ds=10 #markthrallmarhhold#"  }; --Mighty Blood Garnet
		[5] = { icon = "INV_BannerPVP_02", name = "=q6=#m7#" };
		[6] = { itemID = 24520, desc = "=ds=5 #markhhold#"  }; --Honor Hold Favor
		[7] = { itemID = 24579, desc = "=ds=#m18#"  }; --Mark of Honor Hold
		[16] = { itemID = 27830, desc = "=ds=15 #markthrallmarhhold#"  }; --Circlet of the Victor
		[17] = { itemID = 27785, desc = "=ds=10 #markthrallmarhhold#"  }; --Notched Deep Peridot
		[18] = { itemID = 27777, desc = "=ds=10 #markthrallmarhhold#"  }; --Stark Blood Garnet
		[20] = { icon = "INV_BannerPVP_01", name = "=q6=#m6#" };
		[21] = { itemID = 24522, desc = "=ds=5 #markthrallmar#"  }; --Thrallmar Favor
		[22] = { itemID = 24581, desc = "=ds=#m19#"  }; --Mark of Thrallmar
	};
};

AtlasLoot_Data["PVPHalaa"] = {
	Name = BabbleZone["Nagrand"] .. ": " .. AL["Halaa"];
	{
		Name = "Page 1";
		[1] = { itemID = 28915, desc = "=ds=#e12#", cost = "70 #halaabattle# 15 #halaaresearch#"  }; --Reins of the Dark Riding Talbuk
		[2] = { itemID = 27679, desc = "=ds=#e7#", cost = "100 #halaabattle#"  }; --Sublime Mystic Dawnstone
		[3] = { itemID = 27649, desc = "=ds=#a1# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Hierophant's Leggings
		[4] = { itemID = 27648, desc = "=ds=#a2# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Dreamstalker Leggings
		[5] = { itemID = 27650, desc = "=ds=#a2# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Shadowstalker's Leggings
		[6] = { itemID = 27647, desc = "=ds=#a3# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Marksman's Legguards
		[7] = { itemID = 27652, desc = "=ds=#a3# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Stormbreaker's Leggings
		[8] = { itemID = 27654, desc = "=ds=#a4# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Avenger's Legguards
		[9] = { itemID = 27653, desc = "=ds=#a4# #s11#", cost = "40 #halaabattle# 2 #halaaresearch#"  }; --Slayer's Legguards
		[11] = { itemID = 24208, desc = "=ds=#p12# (350)"  }; --Design: Mystic Dawnstone
		[14] = { itemID = 26045, desc = "=ds=#m17#"  }; --Halaa Battle Token
		[16] = { itemID = 29228, desc = "=ds=#e12#", cost = "100 #halaabattle# 20 #halaaresearch#"  }; --Reins of the Dark War Talbuk
		[17] = { itemID = 27680, desc = "=ds=#m14# #e1#", cost = "8 #halaaresearch#"  }; --Halaani Bag
		[18] = { itemID = 27638, desc = "=ds=#a1# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Hierophant's Sash
		[19] = { itemID = 27645, desc = "=ds=#a2# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Dreamstalker Sash
		[20] = { itemID = 27637, desc = "=ds=#a2# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Shadowstalker's Sash
		[21] = { itemID = 27646, desc = "=ds=#a3# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Marksman's Belt
		[22] = { itemID = 27643, desc = "=ds=#a3# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Stormbreaker's Girdle
		[23] = { itemID = 27644, desc = "=ds=#a4# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Avenger's Waistguard
		[24] = { itemID = 27639, desc = "=ds=#a4# #s10#", cost = "20 #halaabattle# 1 #halaaresearch#"  }; --Slayer's Waistguard
		[26] = { itemID = 33783, desc = "=ds=#p12# (350)", cost = "4 #halaaresearch#"  }; --Design: Steady Talasite
		[27] = { itemID = 32071, desc = "2 #halaaresearch#"  }; --Recipe: Elixir of Ironskin
		[29] = { itemID = 26044, desc = "=ds=#m17#"  }; --Halaa Research Token
	};
	{
		Name = "Page 2";
		[1] = { itemID = 30611, desc = "=ds=#w17#"  }; --Halaani Razorshaft
		[2] = { itemID = 30615, desc = "=ds=#e4#"  }; --Halaani Whiskey
		[4] = { icon = "INV_BannerPVP_02", name = "=q6=#m7#" };
		[5] = { itemID = 30598, desc = "=ds=#e7#"  }; --Don Amancio's Heart
		[6] = { itemID = 30597, desc = "=ds=#h2#, #w10#"  }; --Halaani Claymore
		[7] = { itemID = 30599, desc = "=ds=#w11#"  }; --Avenging Blades
		[16] = { itemID = 30612, desc = "=ds=#w18#"  }; --Halaani Grimshot
		[19] = { icon = "INV_BannerPVP_01", name = "=q6=#m6#" };
		[20] = { itemID = 30571, desc = "=ds=#e7#"  }; --Don Rodrigo's Heart
		[21] = { itemID = 30570, desc = "=ds=#h2#, #w10#"  }; --Arkadian Claymore
		[22] = { itemID = 30568, desc = "=ds=#w11#"  }; --The Sharp Cookie
	};
};

AtlasLoot_Data["PVPSpiritTowers"] = {
	Name = AL["Spirit Towers"];
	{
		Name = BabbleZone["Terokkar Forest"] .. ": " .. AL["Spirit Towers"];
		[1] = { itemID = 28553, desc = "=ds=#s13#", cost = "50 #spiritshard#"  }; --Band of the Exorcist
		[2] = { itemID = 28557, desc = "=ds=#e7#", cost = "8 #spiritshard#"  }; --Swift Starfire Diamond
		[3] = { itemID = 28759, desc = "=ds=#a1# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Dreadweave Hood
		[4] = { itemID = 28574, desc = "=ds=#a2# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Dragonhide Helm
		[5] = { itemID = 28575, desc = "=ds=#a2# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Wyrmhide Helm
		[6] = { itemID = 28577, desc = "=ds=#a3# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Linked Helm
		[7] = { itemID = 28560, desc = "=ds=#a4# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Lamellar Helm
		[8] = { itemID = 28761, desc = "=ds=#a4# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Scaled Helm
		[10] = { itemID = 32947, desc = "=ds=#e2#", cost = "2 #spiritshard#"  }; --Auchenai Healing Potion
		[12] = { itemID = 28558, desc = "=ds=#m17#"  }; --Spirit Shard
		[16] = { itemID = 28555, desc = "=ds=#s13#", cost = "50 #spiritshard#"  }; --Seal of the Exorcist
		[17] = { itemID = 28556, desc = "=ds=#e7#", cost = "8 #spiritshard#"  }; --Swift Windfire Diamond
		[18] = { itemID = 28760, desc = "=ds=#a1# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Silk Hood
		[19] = { itemID = 28561, desc = "=ds=#a2# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Leather Helm
		[20] = { itemID = 28576, desc = "=ds=#a3# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Chain Helm
		[21] = { itemID = 28758, desc = "=ds=#a3# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Mail Helm
		[22] = { itemID = 28559, desc = "=ds=#a4# #s1#", cost = "18 #spiritshard#"  }; --Exorcist's Plate Helm
		[25] = { itemID = 32948, desc = "=ds=#e2#", cost = "2 #spiritshard#"  }; --Auchenai Mana Potion
	};
};

AtlasLoot_Data["PVPTwinSpireRuins"] = {
	Name = AL["Twin Spire Ruins"];
	{
		Name = BabbleZone["Zangarmarsh"] .. ": " .. AL["Twin Spire Ruins"];
		[1] = { itemID = 27990, desc = "=ds=#w14#", cost = "15 #markthrallmarhhold#"  }; --Idol of Savagery
		[2] = { itemID = 27984, desc = "=ds=#w15#", cost = "15 #markthrallmarhhold#"  }; --Totem of Impact
		[3] = { itemID = 27922, desc = "=ds=#s14#", cost = "30 #markthrallmarhhold#"  }; --Mark of Defiance
		[4] = { itemID = 27929, desc = "=ds=#w11#", cost = "15 #markthrallmarhhold#"  }; --Terminal Edge
		[5] = { itemID = 27939, desc = "=ds=#w12#", cost = "15 #markthrallmarhhold#"  }; --Incendic Rod
		[7] = { itemID = 24579, desc = "=ds=#m18#"  }; --Mark of Honor Hold
		[16] = { itemID = 27983, desc = "=ds=#w16#", cost = "15 #markthrallmarhhold#"  }; --Libram of Zeal
		[17] = { itemID = 27920, desc = "=ds=#s14#", cost = "30 #markthrallmarhhold#"  }; --Mark of Conquest
		[18] = { itemID = 27927, desc = "=ds=#s14#", cost = "30 #markthrallmarhhold#"  }; --Mark of Vindication
		[19] = { itemID = 27930, desc = "=ds=#w2#", cost = "15 #markthrallmarhhold#"  }; --Splintermark
		[22] = { itemID = 24581, desc = "=ds=#m19#"  }; --Mark of Thrallmar
	};
};

-------------------------------------
--- Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

AtlasLoot_Data["PVP70RepGear"] = {
	Name = "Rep PVP Gear";
	{
		Name = BabbleInventory["Cloth"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep705_1#", desc = "=ec1=#c5#" };
		[2] = { itemID = 35339, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Satin Hood
		[3] = { itemID = 35341, desc = "=ds=#f2#, =ec1=#r3#"  }; --Satin Mantle
		[4] = { itemID = 35342, desc = "=ds=#f6#, =ec1=#r3#"  }; --Satin Robe
		[5] = { itemID = 35338, desc = "=ds=#f5#, =ec1=#r3#"  }; --Satin Gloves
		[6] = { itemID = 35340, desc = "=ds=#f1#, =ec1=#r3#"  }; --Satin Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep705_2#", desc = "=ec1=#c5#" };
		[9] = { itemID = 35333, desc = "=ds=#f2#, =ec1=#r3#"  }; --Mooncloth Cowl
		[10] = { itemID = 35336, desc = "=ds=#f6#, =ec1=#r3#"  }; --Mooncloth Shoulderpads
		[11] = { itemID = 35337, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Mooncloth Vestments
		[12] = { itemID = 35335, desc = "=ds=#f1#, =ec1=#r3#"  }; --Mooncloth Mitts
		[13] = { itemID = 35334, desc = "=ds=#f5#, =ec1=#r3#"  }; --Mooncloth Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep703#", desc = "=ec1=#c3#" };
		[17] = { itemID = 35344, desc = "=ds=#f1#, =ec1=#r3#"  }; --Evoker's Silk Cowl
		[18] = { itemID = 35343, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Evoker's Silk Amice
		[19] = { itemID = 35346, desc = "=ds=#f5#, =ec1=#r3#"  }; --Evoker's Silk Raiment
		[20] = { itemID = 35345, desc = "=ds=#f2#, =ec1=#r3#"  }; --Evoker's Silk Handguards
		[21] = { itemID = 35347, desc = "=ds=#f6#, =ec1=#r3#"  }; --Evoker's Silk Trousers
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep708#", desc = "=ec1=#c8#" };
		[24] = { itemID = 35329, desc = "=ds=#f6#, =ec1=#r3#"  }; --Dreadweave Hood
		[25] = { itemID = 35331, desc = "=ds=#f1#, =ec1=#r3#"  }; --Dreadweave Mantle
		[26] = { itemID = 35332, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Dreadweave Robe
		[27] = { itemID = 35328, desc = "=ds=#f5#, =ec1=#r3#"  }; --Dreadweave Gloves
		[28] = { itemID = 35330, desc = "=ds=#f2#, =ec1=#r3#"  }; --Dreadweave Leggings
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_1#", desc = "=ec1=#c1#" };
		[2] = { itemID = 35357, desc = "=ds=#f1#, =ec1=#r3#"  }; --Dragonhide Helm
		[3] = { itemID = 35359, desc = "=ds=#f2#, =ec1=#r3#"  }; --Dragonhide Spaulders
		[4] = { itemID = 35360, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Dragonhide Robe
		[5] = { itemID = 35356, desc = "=ds=#f5#, =ec1=#r3#"  }; --Dragonhide Gloves
		[6] = { itemID = 35358, desc = "=ds=#f6#, =ec1=#r3#"  }; --Dragonhide Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_2#", desc = "=ec1=#c1#" };
		[9] = { itemID = 35372, desc = "=ds=#f5#, =ec1=#r3#"  }; --Wyrmhide Helm
		[10] = { itemID = 35374, desc = "=ds=#f6#, =ec1=#r3#"  }; --Wyrmhide Spaulders
		[11] = { itemID = 35375, desc = "=ds=#f2#, =ec1=#r3#"  }; --Wyrmhide Robe
		[12] = { itemID = 35371, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Wyrmhide Gloves
		[13] = { itemID = 35373, desc = "=ds=#f1#, =ec1=#r3#"  }; --Wyrmhide Legguards
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_3#", desc = "=ec1=#c1#" };
		[17] = { itemID = 35362, desc = "=ds=#f2#, =ec1=#r3#"  }; --Kodohide Helm
		[18] = { itemID = 35364, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Kodohide Spaulders
		[19] = { itemID = 35365, desc = "=ds=#f6#, =ec1=#r3#"  }; --Kodohide Robe
		[20] = { itemID = 35361, desc = "=ds=#f1#, =ec1=#r3#"  }; --Kodohide Gloves
		[21] = { itemID = 35363, desc = "=ds=#f5#, =ec1=#r3#"  }; --Kodohide Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep706#", desc = "=ec1=#c6#" };
		[24] = { itemID = 35367, desc = "=ds=#f6#, =ec1=#r3#"  }; --Opportunist's Leather Helm
		[25] = { itemID = 35369, desc = "=ds=#f5#, =ec1=#r3#"  }; --Opportunist's Leather Spaulders
		[26] = { itemID = 35370, desc = "=ds=#f1#, =ec1=#r3#"  }; --Opportunist's Leather Tunic
		[27] = { itemID = 35366, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Opportunist's Leather Gloves
		[28] = { itemID = 35368, desc = "=ds=#f2#, =ec1=#r3#"  }; --Opportunist's Leather Legguards
	};
	{
		Name = BabbleInventory["Mail"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_1#", desc = "=ec1=#c7#" };
		[2] = { itemID = 35383, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Seer's Linked Helm
		[3] = { itemID = 35385, desc = "=ds=#f6#, =ec1=#r3#"  }; --Seer's Linked Spaulders
		[4] = { itemID = 35381, desc = "=ds=#f2#, =ec1=#r3#"  }; --Seer's Linked Armor
		[5] = { itemID = 35382, desc = "=ds=#f1#, =ec1=#r3#"  }; --Seer's Linked Gauntlets
		[6] = { itemID = 35384, desc = "=ds=#f5#, =ec1=#r3#"  }; --Seer's Linked Leggings
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_2#", desc = "=ec1=#c7#" };
		[9] = { itemID = 35388, desc = "=ds=#f2#, =ec1=#r3#"  }; --Seer's Mail Helm
		[10] = { itemID = 35390, desc = "=ds=#f5#, =ec1=#r3#"  }; --Seer's Mail Spaulders
		[11] = { itemID = 35386, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Seer's Mail Armor
		[12] = { itemID = 35387, desc = "=ds=#f6#, =ec1=#r3#"  }; --Seer's Mail Gauntlets
		[13] = { itemID = 35389, desc = "=ds=#f1#, =ec1=#r3#"  }; --Seer's Mail Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_3#", desc = "=ec1=#c7#" };
		[17] = { itemID = 35393, desc = "=ds=#f5#, =ec1=#r3#"  }; --Seer's Ringmail Headpiece
		[18] = { itemID = 35395, desc = "=ds=#f2#, =ec1=#r3#"  }; --Seer's Ringmail Shoulderpads
		[19] = { itemID = 35391, desc = "=ds=#f1#, =ec1=#r3#"  }; --Seer's Ringmail Chestguard
		[20] = { itemID = 35392, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Seer's Ringmail Gloves
		[21] = { itemID = 35394, desc = "=ds=#f6#, =ec1=#r3#"  }; --Seer's Ringmail Legguards
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep702#", desc = "=ec1=#c2#" };
		[24] = { itemID = 35378, desc = "=ds=#f1#, =ec1=#r3#"  }; --Stalker's Chain Helm
		[25] = { itemID = 35380, desc = "=ds=#f2#, =ec1=#r3#"  }; --Stalker's Chain Spaulders
		[26] = { itemID = 35376, desc = "=ds=#f5#, =ec1=#r3#"  }; --Stalker's Chain Armor
		[27] = { itemID = 35377, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Stalker's Chain Gauntlets
		[28] = { itemID = 35379, desc = "=ds=#f6#, =ec1=#r3#"  }; --Stalker's Chain Leggings
	};
	{
		Name = BabbleInventory["Plate"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep704_1#", desc = "=ec1=#c4#" };
		[2] = { itemID = 35414, desc = "=ds=#f5#, =ec1=#r3#"  }; --Crusader's Scaled Helm
		[3] = { itemID = 35416, desc = "=ds=#f2#, =ec1=#r3#"  }; --Crusader's Scaled Shoulders
		[4] = { itemID = 35412, desc = "=ds=#f1#, =ec1=#r3#"  }; --Crusader's Scaled Chestpiece
		[5] = { itemID = 35413, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Crusader's Scaled Gauntlets
		[6] = { itemID = 35415, desc = "=ds=#f6#, =ec1=#r3#"  }; --Crusader's Scaled Legguards
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep704_2#", desc = "=ec1=#c4#" };
		[9] = { itemID = 35404, desc = "=ds=#f2#, =ec1=#r3#"  }; --Crusader's Ornamented Headguard
		[10] = { itemID = 35406, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Crusader's Ornamented Spaulders
		[11] = { itemID = 35402, desc = "=ds=#f5#, =ec1=#r3#"  }; --Crusader's Ornamented Chestplate
		[12] = { itemID = 35403, desc = "=ds=#f6#, =ec1=#r3#"  }; --Crusader's Ornamented Gloves
		[13] = { itemID = 35405, desc = "=ds=#f1#, =ec1=#r3#"  }; --Crusader's Ornamented Leggings
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep709#", desc = "=ec1=#c9#" };
		[17] = { itemID = 35409, desc = "=ds=#f3#/#f4#, =ec1=#r3#"  }; --Savage Plate Helm
		[18] = { itemID = 35411, desc = "=ds=#f1#, =ec1=#r3#"  }; --Savage Plate Shoulders
		[19] = { itemID = 35407, desc = "=ds=#f2#, =ec1=#r3#"  }; --Savage Plate Chestpiece
		[20] = { itemID = 35408, desc = "=ds=#f6#, =ec1=#r3#"  }; --Savage Plate Gauntlets
		[21] = { itemID = 35410, desc = "=ds=#f5#, =ec1=#r3#"  }; --Savage Plate Legguards
	};
	{
		Name = BabbleInventory["Cloth"] .. " - " .. BabbleFaction["Alliance"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep705_1#", desc = "=ec1=#c5#" };
		[2] = { itemID = 28705, desc = "=q3=Grand Marshal's Satin Hood"  };
		[3] = { itemID = 28707, desc = "=q3=Grand Marshal's Satin Mantle"  };
		[4] = { itemID = 28708, desc = "=q3=Grand Marshal's Satin Robe"  };
		[5] = { itemID = 28704, desc = "=q3=Grand Marshal's Satin Gloves"  };
		[6] = { itemID = 28706, desc = "=q3=Grand Marshal's Satin Leggings"  };
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep705_2#", desc = "=ec1=#c5#" };
		[9] = { itemID = 31622, desc = "=q3=Grand Marshal's Mooncloth Cowl"  };
		[10] = { itemID = 31624, desc = "=q3=Grand Marshal's Mooncloth Shoulderpads"  };
		[11] = { itemID = 31625, desc = "=q3=Grand Marshal's Mooncloth Vestments"  };
		[12] = { itemID = 31620, desc = "=q3=Grand Marshal's Mooncloth Mitts"  };
		[13] = { itemID = 31623, desc = "=q3=Grand Marshal's Mooncloth Legguards"  };
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep703#", desc = "=ec1=#c3#" };
		[17] = { itemID = 28715, desc = "=q3=Grand Marshal's Silk Cowl"  };
		[18] = { itemID = 28714, desc = "=q3=Grand Marshal's Silk Amice"  };
		[19] = { itemID = 28717, desc = "=q3=Grand Marshal's Silk Raiment"  };
		[20] = { itemID = 28716, desc = "=q3=Grand Marshal's Silk Handguards"  };
		[21] = { itemID = 28718, desc = "=q3=Grand Marshal's Silk Trousers"  };
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep708#", desc = "=ec1=#c8#" };
		[24] = { itemID = 28625, desc = "=q3=Grand Marshal's Dreadweave Hood"  };
		[25] = { itemID = 28627, desc = "=q3=Grand Marshal's Dreadweave Mantle"  };
		[26] = { itemID = 28628, desc = "=q3=Grand Marshal's Dreadweave Robe"  };
		[27] = { itemID = 28624, desc = "=q3=Grand Marshal's Dreadweave Gloves"  };
		[28] = { itemID = 28626, desc = "=q3=Grand Marshal's Dreadweave Leggings"  };

	};
	{
		Name = BabbleInventory["Leather"] .. " - " .. BabbleFaction["Alliance"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_1#", desc = "=ec1=#c1#" };
		[2] = { itemID = 28619, desc = "=q3=Grand Marshal's Dragonhide Helm"  };
		[3] = { itemID = 28622, desc = "=q3=Grand Marshal's Dragonhide Spaulders"  };
		[4] = { itemID = 28623, desc = "=q3=Grand Marshal's Dragonhide Robe"  };
		[5] = { itemID = 28618, desc = "=q3=Grand Marshal's Dragonhide Gloves"  };
		[6] = { itemID = 28620, desc = "=q3=Grand Marshal's Dragonhide Legguards"  };
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_2#", desc = "=ec1=#c1#" };
		[9] = { itemID = 31590, desc = "=q3=Grand Marshal's Wyrmhide Helm"  };
		[10] = { itemID = 31592, desc = "=q3=Grand Marshal's Wyrmhide Spaulders"  };
		[11] = { itemID = 31593, desc = "=q3=Grand Marshal's Wyrmhide Robe"  };
		[12] = { itemID = 31589, desc = "=q3=Grand Marshal's Wyrmhide Gloves"  };
		[13] = { itemID = 31591, desc = "=q3=Grand Marshal's Wyrmhide Legguards"  };
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep701_3#", desc = "=ec1=#c1#" };
		[17] = { itemID = 28720, desc = "=q3=Grand Marshal's Kodohide Helm"  };
		[18] = { itemID = 28722, desc = "=q3=Grand Marshal's Kodohide Spaulders"  };
		[19] = { itemID = 28723, desc = "=q3=Grand Marshal's Kodohide Robe"  };
		[20] = { itemID = 28719, desc = "=q3=Grand Marshal's Kodohide Gloves"  };
		[21] = { itemID = 28721, desc = "=q3=Grand Marshal's Kodohide Legguards"  };
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep706#", desc = "=ec1=#c6#" };
		[24] = { itemID = 28685, desc = "=q3=Grand Marshal's Leather Helm"  };
		[25] = { itemID = 28687, desc = "=q3=Grand Marshal's Leather Spaulders"  };
		[26] = { itemID = 28688, desc = "=q3=Grand Marshal's Leather Tunic"  };
		[27] = { itemID = 28684, desc = "=q3=Grand Marshal's Leather Gloves"  };
		[28] = { itemID = 28686, desc = "=q3=Grand Marshal's Leather Legguards"  };
	};
	{
		Name = BabbleInventory["Mail"] .. " - " .. BabbleFaction["Alliance"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_1#", desc = "=ec1=#c7#" };
		[2] = { itemID = 28691, desc = "=q3=Grand Marshal's Linked Helm"  };
		[3] = { itemID = 28693, desc = "=q3=Grand Marshal's Linked Spaulders"  };
		[4] = { itemID = 28689, desc = "=q3=Grand Marshal's Linked Armor"  };
		[5] = { itemID = 28690, desc = "=q3=Grand Marshal's Linked Gauntlets"  };
		[6] = { itemID = 28692, desc = "=q3=Grand Marshal's Linked Leggings"  };
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_2#", desc = "=ec1=#c7#" };
		[9] = { itemID = 28696, desc = "=q3=Grand Marshal's Mail Helm"  };
		[10] = { itemID = 28698, desc = "=q3=Grand Marshal's Mail Spaulders"  };
		[11] = { itemID = 28694, desc = "=q3=Grand Marshal's Mail Armor"  };
		[12] = { itemID = 28695, desc = "=q3=Grand Marshal's Mail Gauntlets"  };
		[13] = { itemID = 28697, desc = "=q3=Grand Marshal's Mail Leggings"  };
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep707_3#", desc = "=ec1=#c7#" };
		[17] = { itemID = 31642, desc = "=q3=Grand Marshal's Ringmail Headpiece"  };
		[18] = { itemID = 31644, desc = "=q3=Grand Marshal's Ringmail Shoulderpads"  };
		[19] = { itemID = 31640, desc = "=q3=Grand Marshal's Ringmail Chestguard"  };
		[20] = { itemID = 31641, desc = "=q3=Grand Marshal's Ringmail Gloves"  };
		[21] = { itemID = 31643, desc = "=q3=Grand Marshal's Ringmail Legguards"  };
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep702#", desc = "=ec1=#c2#" };
		[24] = { itemID = 28615, desc = "=q3=Grand Marshal's Chain Helm"  };
		[25] = { itemID = 28617, desc = "=q3=Grand Marshal's Chain Spaulders"  };
		[26] = { itemID = 28613, desc = "=q3=Grand Marshal's Chain Armor"  };
		[27] = { itemID = 28614, desc = "=q3=Grand Marshal's Chain Gauntlets"  };
		[28] = { itemID = 28616, desc = "=q3=Grand Marshal's Chain Leggings"  };
	};
	{
		Name = BabbleInventory["Plate"] .. " - " .. BabbleFaction["Alliance"];
		[1] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep704_1#", desc = "=ec1=#c4#" };
		[2] = { itemID = 28711, desc = "=q3=Grand Marshal's Scaled Helm"  };
		[3] = { itemID = 28713, desc = "=q3=Grand Marshal's Scaled Shoulders"  };
		[4] = { itemID = 28709, desc = "=q3=Grand Marshal's Scaled Chestpiece"  };
		[5] = { itemID = 28710, desc = "=q3=Grand Marshal's Scaled Gauntlets"  };
		[6] = { itemID = 28712, desc = "=q3=Grand Marshal's Scaled Legguards"  };
		[8] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep704_2#", desc = "=ec1=#c4#" };
		[9] = { itemID = 31632, desc = "=q3=Grand Marshal's Ornamented Headguard"  };
		[10] = { itemID = 31634, desc = "=q3=Grand Marshal's Ornamented Spaulders"  };
		[11] = { itemID = 31630, desc = "=q3=Grand Marshal's Ornamented Chestplate"  };
		[12] = { itemID = 31631, desc = "=q3=Grand Marshal's Ornamented Gloves"  };
		[13] = { itemID = 31633, desc = "=q3=Grand Marshal's Ornamented Leggings"  };
		[16] = { icon = "INV_BannerPVP_02", name = "=q6=#pvprep709#", desc = "=ec1=#c9#" };
		[17] = { itemID = 28701, desc = "=q3=Grand Marshal's Plate Helm"  };
		[18] = { itemID = 28703, desc = "=q3=Grand Marshal's Plate Shoulders"  };
		[19] = { itemID = 28699, desc = "=q3=Grand Marshal's Plate Chestpiece"  };
		[20] = { itemID = 28700, desc = "=q3=Grand Marshal's Plate Gauntlets"  };
		[21] = { itemID = 28702, desc = "=q3=Grand Marshal's Plate Legguards"  };
		[23] = { icon = "INV_BannerPVP_02", name = "=q6=#arenas4_1#", desc = "=ec1=#c4#" };
		[24] = { itemID = 28681, desc = "=q3=Grand Marshal's Lamellar Helm"  };
		[25] = { itemID = 28683, desc = "=q3=Grand Marshal's Lamellar Shoulders"  };
		[26] = { itemID = 28679, desc = "=q3=Grand Marshal's Lamellar Chestpiece"  };
		[27] = { itemID = 28680, desc = "=q3=Grand Marshal's Lamellar Gauntlets"  };
		[28] = { itemID = 28724, desc = "=q3=Grand Marshal's Lamellar Legguards"  };
	};
	{
		Name = BabbleInventory["Cloth"] .. " - Horde";
		[1] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep705_1#", desc = "=ec1=#c5#" };
		[2] = { itemID = 28857, desc = "=q3=High Warlord's Satin Hood"  };
		[3] = { itemID = 28859, desc = "=q3=High Warlord's Satin Mantle"  };
		[4] = { itemID = 28860, desc = "=q3=High Warlord's Satin Robe"  };
		[5] = { itemID = 28856, desc = "=q3=High Warlord's Satin Gloves"  };
		[6] = { itemID = 28858, desc = "=q3=High Warlord's Satin Leggings"  };
		[8] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep705_2#", desc = "=ec1=#c5#" };
		[9] = { itemID = 31626, desc = "=q3=High Warlord's Mooncloth Cowl"  };
		[10] = { itemID = 31628, desc = "=q3=High Warlord's Mooncloth Shoulderpads"  };
		[11] = { itemID = 31629, desc = "=q3=High Warlord's Mooncloth Vestments"  };
		[12] = { itemID = 31621, desc = "=q3=High Warlord's Mooncloth Mitts"  };
		[13] = { itemID = 31627, desc = "=q3=High Warlord's Mooncloth Legguards"  };
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep703#", desc = "=ec1=#c3#" };
		[17] = { itemID = 28867, desc = "=q3=High Warlord's Silk Cowl"  };
		[18] = { itemID = 28866, desc = "=q3=High Warlord's Silk Amice"  };
		[19] = { itemID = 28869, desc = "=q3=High Warlord's Silk Raiment"  };
		[20] = { itemID = 28868, desc = "=q3=High Warlord's Silk Handguards"  };
		[21] = { itemID = 28870, desc = "=q3=High Warlord's Silk Trousers"  };
		[23] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep708#", desc = "=ec1=#c8#" };
		[24] = { itemID = 28818, desc = "=q3=High Warlord's Dreadweave Hood"  };
		[25] = { itemID = 28820, desc = "=q3=High Warlord's Dreadweave Mantle"  };
		[26] = { itemID = 28821, desc = "=q3=High Warlord's Dreadweave Robe"  };
		[27] = { itemID = 28817, desc = "=q3=High Warlord's Dreadweave Gloves"  };
		[28] = { itemID = 28819, desc = "=q3=High Warlord's Dreadweave Leggings"  };
	};
	{
		Name = BabbleInventory["Leather"] .. " - Horde";
		[1] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep701_1#", desc = "=ec1=#c1#" };
		[2] = { itemID = 28812, desc = "=q3=High Warlord's Dragonhide Helm"  };
		[3] = { itemID = 28814, desc = "=q3=High Warlord's Dragonhide Spaulders"  };
		[4] = { itemID = 28815, desc = "=q3=High Warlord's Dragonhide Robe"  };
		[5] = { itemID = 28811, desc = "=q3=High Warlord's Dragonhide Gloves"  };
		[6] = { itemID = 28813, desc = "=q3=High Warlord's Dragonhide Legguards"  };
		[8] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep701_2#", desc = "=ec1=#c1#" };
		[9] = { itemID = 28872, desc = "=q3=High Warlord's Wyrmhide Helm"  };
		[10] = { itemID = 28874, desc = "=q3=High Warlord's Wyrmhide Spaulders"  };
		[11] = { itemID = 28875, desc = "=q3=High Warlord's Wyrmhide Robe"  };
		[12] = { itemID = 28871, desc = "=q3=High Warlord's Wyrmhide Gloves"  };
		[13] = { itemID = 28873, desc = "=q3=High Warlord's Wyrmhide Legguards"  };
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep701_3#", desc = "=ec1=#c1#" };
		[17] = { itemID = 31585, desc = "=q3=High Warlord's Kodohide Helm"  };
		[18] = { itemID = 31587, desc = "=q3=High Warlord's Kodohide Spaulders"  };
		[19] = { itemID = 31588, desc = "=q3=High Warlord's Kodohide Robe"  };
		[20] = { itemID = 31584, desc = "=q3=High Warlord's Kodohide Gloves"  };
		[21] = { itemID = 31586, desc = "=q3=High Warlord's Kodohide Legguards"  };
		[23] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep706#", desc = "=ec1=#c6#" };
		[24] = { itemID = 28837, desc = "=q3=High Warlord's Leather Helm"  };
		[25] = { itemID = 28839, desc = "=q3=High Warlord's Leather Spaulders"  };
		[26] = { itemID = 28840, desc = "=q3=High Warlord's Leather Tunic"  };
		[27] = { itemID = 28836, desc = "=q3=High Warlord's Leather Gloves"  };
		[28] = { itemID = 28838, desc = "=q3=High Warlord's Leather Legguards"  };
	};
	{
		Name = BabbleInventory["Mail"] .. " - Horde";
		[1] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep707_1#", desc = "=ec1=#c7#" };
		[2] = { itemID = 28843, desc = "=q3=High Warlord's Linked Helm"  };
		[3] = { itemID = 28845, desc = "=q3=High Warlord's Linked Spaulders"  };
		[4] = { itemID = 28841, desc = "=q3=High Warlord's Linked Armor"  };
		[5] = { itemID = 28842, desc = "=q3=High Warlord's Linked Gauntlets"  };
		[6] = { itemID = 28844, desc = "=q3=High Warlord's Linked Leggings"  };
		[8] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep707_2#", desc = "=ec1=#c7#" };
		[9] = { itemID = 28848, desc = "=q3=High Warlord's Mail Helm"  };
		[10] = { itemID = 28850, desc = "=q3=High Warlord's Mail Spaulders"  };
		[11] = { itemID = 28846, desc = "=q3=High Warlord's Mail Armor"  };
		[12] = { itemID = 28847, desc = "=q3=High Warlord's Mail Gauntlets"  };
		[13] = { itemID = 28849, desc = "=q3=High Warlord's Mail Leggings"  };
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep707_3#", desc = "=ec1=#c7#" };
		[17] = { itemID = 31648, desc = "=q3=High Warlord's Ringmail Headpiece"  };
		[18] = { itemID = 31650, desc = "=q3=High Warlord's Ringmail Shoulderpads"  };
		[19] = { itemID = 31646, desc = "=q3=High Warlord's Ringmail Chestguard"  };
		[20] = { itemID = 31647, desc = "=q3=High Warlord's Ringmail Gloves"  };
		[21] = { itemID = 31649, desc = "=q3=High Warlord's Ringmail Legguards"  };
		[23] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep702#", desc = "=ec1=#c2#" };
		[24] = { itemID = 28807, desc = "=q3=High Warlord's Chain Helm"  };
		[25] = { itemID = 28809, desc = "=q3=High Warlord's Chain Spaulders"  };
		[26] = { itemID = 28805, desc = "=q3=High Warlord's Chain Armor"  };
		[27] = { itemID = 28806, desc = "=q3=High Warlord's Chain Gauntlets"  };
		[28] = { itemID = 28808, desc = "=q3=High Warlord's Chain Leggings"  };
	};
	{
		Name = BabbleInventory["Plate"] .. " - Horde";
		[1] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep704_1#", desc = "=ec1=#c4#" };
		[2] = { itemID = 28863, desc = "=q3=High Warlord's Scaled Helm"  };
		[3] = { itemID = 28865, desc = "=q3=High Warlord's Scaled Shoulders"  };
		[4] = { itemID = 28861, desc = "=q3=High Warlord's Scaled Chestpiece"  };
		[5] = { itemID = 28862, desc = "=q3=High Warlord's Scaled Gauntlets"  };
		[6] = { itemID = 28864, desc = "=q3=High Warlord's Scaled Legguards"  };
		[8] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep704_2#", desc = "=ec1=#c4#" };
		[9] = { itemID = 31637, desc = "=q3=High Warlord's Ornamented Headguard"  };
		[10] = { itemID = 31639, desc = "=q3=High Warlord's Ornamented Spaulders"  };
		[11] = { itemID = 31635, desc = "=q3=High Warlord's Ornamented Chestplate"  };
		[12] = { itemID = 31636, desc = "=q3=High Warlord's Ornamented Gloves"  };
		[13] = { itemID = 31638, desc = "=q3=High Warlord's Ornamented Leggings"  };
		[16] = { icon = "INV_BannerPVP_01", name = "=q6=#pvprep709#", desc = "=ec1=#c9#" };
		[17] = { itemID = 28853, desc = "=q3=High Warlord's Plate Helm"  };
		[18] = { itemID = 28855, desc = "=q3=High Warlord's Plate Shoulders"  };
		[19] = { itemID = 28851, desc = "=q3=High Warlord's Plate Chestpiece"  };
		[20] = { itemID = 28852, desc = "=q3=High Warlord's Plate Gauntlets"  };
		[21] = { itemID = 28854, desc = "=q3=High Warlord's Plate Legguards"  };
		[23] = { icon = "INV_BannerPVP_01", name = "=q6=#arenas4_1#", desc = "=ec1=#c4#" };
		[24] = { itemID = 28833, desc = "=q3=High Warlord's Lamellar Helm"  };
		[25] = { itemID = 28835, desc = "=q3=High Warlord's Lamellar Shoulders"  };
		[26] = { itemID = 28831, desc = "=q3=High Warlord's Lamellar Chestpiece"  };
		[27] = { itemID = 28832, desc = "=q3=High Warlord's Lamellar Gauntlets"  };
		[28] = { itemID = 28834, desc = "=q3=High Warlord's Lamellar Legguards"  };
	};
};




----------------------------------
--- PvP Level 70 - Accessories ---
----------------------------------

AtlasLoot_Data["PvP70Accessories"] = {
	Name = "Off Set";
	{
		Name = "PvP Accessories - " .. BabbleFaction["Alliance"];
		[1] = { itemID = 28235, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[2] = { itemID = 28237, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[3] = { itemID = 28238, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[4] = { itemID = 28236, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[5] = { itemID = 30349, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[6] = { itemID = 28234, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[7] = { itemID = 30351, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[8] = { itemID = 30348, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[9] = { itemID = 30350, desc = "=ds=", cost = "8000 #alliance#"  }; --Medallion of the Alliance
		[11] = { itemID = 31853, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[12] = { itemID = 31839, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[13] = { itemID = 31855, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[14] = { itemID = 31841, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[15] = { itemID = 32453, desc = "=ds=", cost = "1 #gold# 8 #faction#"  }; --Star's Tears
		[16] = { itemID = 37864, desc = "=ds=", cost = "40000 #alliance#"  }; --Medallion of the Alliance
		[17] = { itemID = 25829, desc = "=ds=", cost = "23000 #alliance#"  }; --Talisman of the Alliance
		[19] = { itemID = 28120, desc = "=ds=", cost = "6885 #faction#"  }; --Gleaming Ornate Dawnstone
		[20] = { itemID = 28119, desc = "=ds=", cost = "6885 #faction#"  }; --Smooth Ornate Dawnstone
		[21] = { itemID = 28362, desc = "=ds=", cost = "6885 #faction#"  }; --Bold Ornate Ruby
		[22] = { itemID = 28118, desc = "=ds=", cost = "6885 #faction#"  }; --Runed Ornate Ruby
		[23] = { itemID = 28363, desc = "=ds=", cost = "8500 #faction#"  }; --Inscribed Ornate Topaz
		[24] = { itemID = 28123, desc = "=ds=", cost = "8500 #faction#"  }; --Potent Ornate Topaz
		[26] = { itemID = 31838, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[27] = { itemID = 31852, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[28] = { itemID = 31840, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[29] = { itemID = 31854, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
	};
	{
		Name = "PvP Accessories - Horde";
		[1] = { itemID = 28241, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[2] = { itemID = 28243, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[3] = { itemID = 28239, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[4] = { itemID = 28242, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[5] = { itemID = 30346, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[6] = { itemID = 28240, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[7] = { itemID = 30345, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[8] = { itemID = 30343, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[9] = { itemID = 30344, desc = "=ds=", cost = "8000 #horde#"  }; --Medallion of the Horde
		[11] = { itemID = 31853, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[12] = { itemID = 31839, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[13] = { itemID = 31855, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[14] = { itemID = 31841, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[15] = { itemID = 32453, desc = "=ds=", cost = "1 #gold# 8 #faction#"  }; --Star's Tears
		[16] = { itemID = 37865, desc = "=ds=", cost = "40000 #horde#"  }; --Medallion of the Horde
		[17] = { itemID = 24551, desc = "=ds=", cost = "23000 #horde#"  }; --Talisman of the Horde
		[19] = { itemID = 28120, desc = "=ds=", cost = "6885 #faction#"  }; --Gleaming Ornate Dawnstone
		[20] = { itemID = 28119, desc = "=ds=", cost = "6885 #faction#"  }; --Smooth Ornate Dawnstone
		[21] = { itemID = 28362, desc = "=ds=", cost = "6885 #faction#"  }; --Bold Ornate Ruby
		[22] = { itemID = 28118, desc = "=ds=", cost = "6885 #faction#"  }; --Runed Ornate Ruby
		[23] = { itemID = 28363, desc = "=ds=", cost = "8500 #faction#"  }; --Inscribed Ornate Topaz
		[24] = { itemID = 28123, desc = "=ds=", cost = "8500 #faction#"  }; --Potent Ornate Topaz
		[26] = { itemID = 31838, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[27] = { itemID = 31852, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Healing Potion
		[28] = { itemID = 31840, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
		[29] = { itemID = 31854, desc = "=ds=", cost = "200 #faction#"  }; --Major Combat Mana Potion
	};
	{
		Name = "PvP Accessories";
		[1] = { itemID = 28378, desc = "=ds=", cost = "8000 #faction#"  }; --Sergeant's Heavy Cape
		[2] = { itemID = 28377, desc = "=ds=", cost = "8000 #faction#"  }; --Sergeant's Heavy Cloak
		[4] = { itemID = 44431, desc = "=ds=", cost = "21000 #faction#"  }; --Cloak of Certain Reprieve
		[5] = { itemID = 41591, desc = "=ds=", cost = "21000 #faction#"  }; --Sergeant's Reinforced Cape
		[6] = { itemID = 41592, desc = "=ds=", cost = "21000 #faction#"  }; --The Gladiator's Resolution
		[7] = { itemID = 44429, desc = "=ds=", cost = "21000 #faction#"  }; --Volanthius Shroud
		[9] = { itemID = 41588, desc = "=ds=", cost = "36000 #faction#"  }; --Battlemaster's Aggression
		[10] = { itemID = 41587, desc = "=ds=", cost = "36000 #faction#"  }; --Battlemaster's Celerity
		[11] = { itemID = 41590, desc = "=ds=", cost = "36000 #faction#"  }; --Battlemaster's Courage
		[12] = { itemID = 41589, desc = "=ds=", cost = "36000 #faction#"  }; --Battlemaster's Resolve
		[14] = { itemID = 28247, desc = "=ds=", cost = "10000 #alliance#"  }; --Band of Dominance
		[15] = { itemID = 28246, desc = "=ds=", cost = "10000 #alliance#"  }; --Band of Triumph
		[16] = { itemID = 35132, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Conquest
		[17] = { itemID = 35133, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Dominance
		[18] = { itemID = 37929, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Reprieve
		[19] = { itemID = 35134, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Salvation
		[20] = { itemID = 37928, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Subjugation
		[21] = { itemID = 35135, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Pendant of Triumph
		[23] = { itemID = 35129, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Band of Dominance
		[24] = { itemID = 35130, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Band of Salvation
		[25] = { itemID = 37927, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Band of Subjugation
		[26] = { itemID = 35131, desc = "=ds=", cost = "16000 #faction#"  }; --Guardian's Band of Triumph
		[27] = { itemID = 33853, desc = "=ds=", cost = "12000 #faction#"  }; --Vindicator's Band of Dominance
		[28] = { itemID = 33918, desc = "=ds=", cost = "12000 #faction#"  }; --Vindicator's Band of Salvation
		[29] = { itemID = 35320, desc = "=ds=", cost = "12000 #faction#"  }; --Vindicator's Band of Subjugation
		[30] = { itemID = 33919, desc = "=ds=", cost = "12000 #faction#"  }; --Vindicator's Band of Triumph
	};
};

------------------------------------
--- PvP Level 70 - Non Set Epics ---
------------------------------------

AtlasLoot_Data["PvP70NonSet"] = {
	Name = AL["PvP Non-Set Epics"];
	{
		Name = "Page 1";
		[1] = { itemID = 35168, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Dreadweave Cuffs
		[2] = { itemID = 35153, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Dreadweave Belt
		[3] = { itemID = 35138, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Dreadweave Stalkers
		[5] = { itemID = 35174, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Mooncloth Cuffs
		[6] = { itemID = 35159, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Mooncloth Belt
		[7] = { itemID = 35144, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Mooncloth Slippers
		[9] = { itemID = 35179, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Silk Cuffs
		[10] = { itemID = 35164, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Silk Belt
		[11] = { itemID = 35149, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Silk Footguards
		[16] = { itemID = 35167, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Dragonhide Bracers
		[17] = { itemID = 35152, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Dragonhide Belt
		[18] = { itemID = 35137, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Dragonhide Boots
		[20] = { itemID = 35169, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Kodohide Bracers
		[21] = { itemID = 35154, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Kodohide Belt
		[22] = { itemID = 35139, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Kodohide Boots
		[24] = { itemID = 35171, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Leather Bracers
		[25] = { itemID = 35156, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Leather Belt
		[26] = { itemID = 35141, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Leather Boots
		[28] = { itemID = 35180, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Wyrmhide Bracers
		[29] = { itemID = 35165, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Wyrmhide Belt
		[30] = { itemID = 35150, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Wyrmhide Boots
	};
	{
		Name = "Page 2";
		[1] = { itemID = 35166, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Chain Bracers
		[2] = { itemID = 35151, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Chain Girdle
		[3] = { itemID = 35136, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Chain Sabatons
		[5] = { itemID = 35172, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Linked Bracers
		[6] = { itemID = 35157, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Linked Girdle
		[7] = { itemID = 35142, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Linked Sabatons
		[9] = { itemID = 35173, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Mail Bracers
		[10] = { itemID = 35158, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Mail Girdle
		[11] = { itemID = 35143, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Mail Sabatons
		[13] = { itemID = 35177, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Ringmail Bracers
		[14] = { itemID = 35162, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Ringmail Girdle
		[15] = { itemID = 35147, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Ringmail Sabatons
		[16] = { itemID = 35170, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Lamellar Bracers
		[17] = { itemID = 35155, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Lamellar Belt
		[18] = { itemID = 35140, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Lamellar Greaves
		[20] = { itemID = 35175, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Ornamented Bracers
		[21] = { itemID = 35160, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Ornamented Belt
		[22] = { itemID = 35145, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Ornamented Greaves
		[24] = { itemID = 35176, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Plate Bracers
		[25] = { itemID = 35161, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Plate Belt
		[26] = { itemID = 35146, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Plate Greaves
		[28] = { itemID = 35178, desc = "=ds=", cost = "13000 #faction#"  }; --Guardian's Scaled Bracers
		[29] = { itemID = 35163, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Scaled Belt
		[30] = { itemID = 35148, desc = "=ds=", cost = "18000 #faction#"  }; --Guardian's Scaled Greaves
	};
};

--------------------------
--- Arena - Armor Sets ---
--------------------------

AtlasLoot_Data["ArenaDruidTBC"] = {
	Name = AL["Druid"];
	{
		Name = AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#arenas1_1#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 28127, desc = "=ds=#s1#"  }; --Gladiator's Dragonhide Helm
		[3] = { itemID = 28129, desc = "=ds=#s3#"  }; --Gladiator's Dragonhide Spaulders
		[4] = { itemID = 28130, desc = "=ds=#s5#"  }; --Gladiator's Dragonhide Tunic
		[5] = { itemID = 28126, desc = "=ds=#s9#"  }; --Gladiator's Dragonhide Gloves
		[6] = { itemID = 28128, desc = "=ds=#s11#"  }; --Gladiator's Dragonhide Legguards
		[8] = { icon = "Ability_Druid_Maul", name = "=q6=#arenas1_1#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31968, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dragonhide Helm
		[10] = { itemID = 31971, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Dragonhide Spaulders
		[11] = { itemID = 31972, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dragonhide Tunic
		[12] = { itemID = 31967, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Dragonhide Gloves
		[13] = { itemID = 31969, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dragonhide Legguards
		[16] = { icon = "Ability_Druid_Maul", name = "=q6=#arenas1_1#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33672, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Dragonhide Helm
		[18] = { itemID = 33674, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Dragonhide Spaulders
		[19] = { itemID = 33675, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Dragonhide Tunic
		[20] = { itemID = 33671, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Dragonhide Gloves
		[21] = { itemID = 33673, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Dragonhide Legguards
		[23] = { icon = "Ability_Druid_Maul", name = "=q6=#arenas1_1#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 34999, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dragonhide Helm
		[25] = { itemID = 35001, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Dragonhide Spaulders
		[26] = { itemID = 35002, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dragonhide Tunic
		[27] = { itemID = 34998, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Dragonhide Gloves
		[28] = { itemID = 35000, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#arenas1_2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 28137, desc = "=ds=#s1#"  }; --Gladiator's Wyrmhide Helm
		[3] = { itemID = 28139, desc = "=ds=#s3#"  }; --Gladiator's Wyrmhide Spaulders
		[4] = { itemID = 28140, desc = "=ds=#s5#"  }; --Gladiator's Wyrmhide Tunic
		[5] = { itemID = 28136, desc = "=ds=#s9#"  }; --Gladiator's Wyrmhide Gloves
		[6] = { itemID = 28138, desc = "=ds=#s11#"  }; --Gladiator's Wyrmhide Legguards
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#arenas1_2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32057, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Wyrmhide Helm
		[10] = { itemID = 32059, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 32060, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Wyrmhide Tunic
		[12] = { itemID = 32056, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Wyrmhide Gloves
		[13] = { itemID = 32058, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Wyrmhide Legguards
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#arenas1_2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33768, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Wyrmhide Helm
		[18] = { itemID = 33770, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 33771, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Wyrmhide Tunic
		[20] = { itemID = 33767, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Wyrmhide Gloves
		[21] = { itemID = 33769, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Wyrmhide Legguards
		[23] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#arenas1_2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35112, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Wyrmhide Helm
		[25] = { itemID = 35114, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Wyrmhide Spaulders
		[26] = { itemID = 35115, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Wyrmhide Tunic
		[27] = { itemID = 35111, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Wyrmhide Gloves
		[28] = { itemID = 35113, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#arenas1_3#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 31376, desc = "=ds=#s1#"  }; --Gladiator's Kodohide Helm
		[3] = { itemID = 31378, desc = "=ds=#s3#"  }; --Gladiator's Kodohide Spaulders
		[4] = { itemID = 31379, desc = "=ds=#s5#"  }; --Gladiator's Kodohide Tunic
		[5] = { itemID = 31375, desc = "=ds=#s9#"  }; --Gladiator's Kodohide Gloves
		[6] = { itemID = 31377, desc = "=ds=#s11#"  }; --Gladiator's Kodohide Legguards
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6=#arenas1_3#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31988, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Kodohide Helm
		[10] = { itemID = 31990, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Kodohide Spaulders
		[11] = { itemID = 31991, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Kodohide Tunic
		[12] = { itemID = 31987, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Kodohide Gloves
		[13] = { itemID = 31989, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Kodohide Legguards
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6=#arenas1_3#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33691, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Kodohide Helm
		[18] = { itemID = 33693, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Kodohide Spaulders
		[19] = { itemID = 33694, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Kodohide Tunic
		[20] = { itemID = 33690, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Kodohide Gloves
		[21] = { itemID = 33692, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Kodohide Legguards
		[23] = { icon = "Spell_Nature_Regeneration", name = "=q6=#arenas1_3#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35023, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Kodohide Helm
		[25] = { itemID = 35025, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Kodohide Spaulders
		[26] = { itemID = 35026, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Kodohide Tunic
		[27] = { itemID = 35022, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Kodohide Gloves
		[28] = { itemID = 35024, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Kodohide Legguards
	};
};

AtlasLoot_Data["ArenaHunterTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#arenas2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 28331, desc = "=ds=#s1#"  }; --Gladiator's Chain Helm
		[3] = { itemID = 28333, desc = "=ds=#s3#"  }; --Gladiator's Chain Spaulders
		[4] = { itemID = 28334, desc = "=ds=#s5#"  }; --Gladiator's Chain Armor
		[5] = { itemID = 28335, desc = "=ds=#s9#"  }; --Gladiator's Chain Gauntlets
		[6] = { itemID = 28332, desc = "=ds=#s11#"  }; --Gladiator's Chain Leggings
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#arenas2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31962, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Chain Helm
		[10] = { itemID = 31964, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Chain Spaulders
		[11] = { itemID = 31960, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Chain Armor
		[12] = { itemID = 31961, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Chain Gauntlets
		[13] = { itemID = 31963, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Chain Leggings
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#arenas2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33666, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Chain Helm
		[18] = { itemID = 33668, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Chain Spaulders
		[19] = { itemID = 33664, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Chain Armor
		[20] = { itemID = 33665, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Chain Gauntlets
		[21] = { itemID = 33667, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Chain Leggings
		[23] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#arenas2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 34992, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Chain Helm
		[25] = { itemID = 34994, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Chain Spaulders
		[26] = { itemID = 34990, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Chain Armor
		[27] = { itemID = 34991, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Chain Gauntlets
		[28] = { itemID = 34993, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Chain Leggings
	};
};


AtlasLoot_Data["ArenaMageTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#arenas3#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 25855, desc = "=ds=#s1#"  }; --Gladiator's Silk Cowl
		[3] = { itemID = 25854, desc = "=ds=#s3#"  }; --Gladiator's Silk Amice
		[4] = { itemID = 25856, desc = "=ds=#s5#"  }; --Gladiator's Silk Raiment
		[5] = { itemID = 25857, desc = "=ds=#s9#"  }; --Gladiator's Silk Handguards
		[6] = { itemID = 25858, desc = "=ds=#s11#"  }; --Gladiator's Silk Trousers
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6=#arenas3#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32048, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Silk Cowl
		[10] = { itemID = 32047, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Silk Amice
		[11] = { itemID = 32050, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Silk Raiment
		[12] = { itemID = 32049, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Silk Handguards
		[13] = { itemID = 32051, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Silk Trousers
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6=#arenas3#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33758, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Silk Cowl
		[18] = { itemID = 33757, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Silk Amice
		[19] = { itemID = 33760, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Silk Raiment
		[20] = { itemID = 33759, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Silk Handguards
		[21] = { itemID = 33761, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Silk Trousers
		[23] = { icon = "Spell_Frost_IceStorm", name = "=q6=#arenas3#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35097, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Silk Cowl
		[25] = { itemID = 35096, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Silk Amice
		[26] = { itemID = 35099, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Silk Raiment
		[27] = { itemID = 35098, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Silk Handguards
		[28] = { itemID = 35100, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Silk Trousers
	};
};


AtlasLoot_Data["ArenaPaladinTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#arenas4_1#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 27704, desc = "=ds=#s1#"  }; --Gladiator's Lamellar Helm
		[3] = { itemID = 27706, desc = "=ds=#s3#"  }; --Gladiator's Lamellar Shoulders
		[4] = { itemID = 27702, desc = "=ds=#s5#"  }; --Gladiator's Lamellar Chestpiece
		[5] = { itemID = 27703, desc = "=ds=#s9#"  }; --Gladiator's Lamellar Gauntlets
		[6] = { itemID = 27705, desc = "=ds=#s11#"  }; --Gladiator's Lamellar Legguards
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#arenas4_1#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31997, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Lamellar Helm
		[10] = { itemID = 31996, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Lamellar Shoulders
		[11] = { itemID = 31992, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Lamellar Chestpiece
		[12] = { itemID = 31993, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Lamellar Gauntlets
		[13] = { itemID = 31995, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Lamellar Legguards
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#arenas4_1#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33697, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Lamellar Helm
		[18] = { itemID = 33699, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Lamellar Shoulders
		[19] = { itemID = 33695, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Lamellar Chestpiece
		[20] = { itemID = 33696, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Lamellar Gauntlets
		[21] = { itemID = 33698, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Lamellar Legguards
		[23] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#arenas4_1#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35029, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Lamellar Helm
		[25] = { itemID = 35031, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Lamellar Shoulders
		[26] = { itemID = 35027, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Lamellar Chestpiece
		[27] = { itemID = 35028, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Lamellar Gauntlets
		[28] = { itemID = 35030, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Lamellar Legguards
	};
	{
		Name = AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#arenas4_2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 27881, desc = "=ds=#s1#"  }; --Gladiator's Scaled Helm
		[3] = { itemID = 27883, desc = "=ds=#s3#"  }; --Gladiator's Scaled Shoulders
		[4] = { itemID = 27879, desc = "=ds=#s5#"  }; --Gladiator's Scaled Chestpiece
		[5] = { itemID = 27880, desc = "=ds=#s9#"  }; --Gladiator's Scaled Gauntlets
		[6] = { itemID = 27882, desc = "=ds=#s11#"  }; --Gladiator's Scaled Legguards
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#arenas4_2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32041, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Scaled Helm
		[10] = { itemID = 32043, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Scaled Shoulders
		[11] = { itemID = 32039, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Scaled Chestpiece
		[12] = { itemID = 32040, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Scaled Gauntlets
		[13] = { itemID = 32042, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Scaled Legguards
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#arenas4_2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33751, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Scaled Helm
		[18] = { itemID = 33753, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Scaled Shoulders
		[19] = { itemID = 33749, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Scaled Chestpiece
		[20] = { itemID = 33750, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Scaled Gauntlets
		[21] = { itemID = 33752, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Scaled Legguards
		[23] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#arenas4_2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35090, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Scaled Helm
		[25] = { itemID = 35092, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Scaled Shoulders
		[26] = { itemID = 35088, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Scaled Chestpiece
		[27] = { itemID = 35089, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Scaled Gauntlets
		[28] = { itemID = 35091, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Scaled Legguards
	};
	{
		Name = AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#arenas4_3#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 31616, desc = "=ds=#s1#"  }; --Gladiator's Ornamented Headcover
		[3] = { itemID = 31619, desc = "=ds=#s3#"  }; --Gladiator's Ornamented Spaulders
		[4] = { itemID = 31613, desc = "=ds=#s5#"  }; --Gladiator's Ornamented Chestguard
		[5] = { itemID = 31614, desc = "=ds=#s9#"  }; --Gladiator's Ornamented Gloves
		[6] = { itemID = 31618, desc = "=ds=#s11#"  }; --Gladiator's Ornamented Legplates
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#arenas4_3#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32022, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ornamented Headcover
		[10] = { itemID = 32024, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Ornamented Spaulders
		[11] = { itemID = 32020, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ornamented Chestguard
		[12] = { itemID = 32021, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Ornamented Gloves
		[13] = { itemID = 32023, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ornamented Legplates
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#arenas4_3#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33724, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Ornamented Headcover
		[18] = { itemID = 33726, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Ornamented Spaulders
		[19] = { itemID = 33722, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Ornamented Chestguard
		[20] = { itemID = 33723, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Ornamented Gloves
		[21] = { itemID = 33725, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Ornamented Legplates
		[23] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#arenas4_3#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35061, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ornamented Headcover
		[25] = { itemID = 35063, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Ornamented Spaulders
		[26] = { itemID = 35059, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ornamented Chestguard
		[27] = { itemID = 35060, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Ornamented Gloves
		[28] = { itemID = 35062, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ornamented Legplates
	};
};

AtlasLoot_Data["ArenaPriestTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#arenas5_1#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 27708, desc = "=ds=#s1#"  }; --Gladiator's Satin Hood
		[3] = { itemID = 27710, desc = "=ds=#s3#"  }; --Gladiator's Satin Mantle
		[4] = { itemID = 27711, desc = "=ds=#s5#"  }; --Gladiator's Satin Robe
		[5] = { itemID = 27707, desc = "=ds=#s9#"  }; --Gladiator's Satin Gloves
		[6] = { itemID = 27709, desc = "=ds=#s11#"  }; --Gladiator's Satin Leggings
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#arenas5_1#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32035, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Satin Hood
		[10] = { itemID = 32037, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Satin Mantle
		[11] = { itemID = 32038, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Satin Robe
		[12] = { itemID = 32034, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Satin Gloves
		[13] = { itemID = 32036, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Satin Leggings
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#arenas5_1#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33745, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Satin Hood
		[18] = { itemID = 33747, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Satin Mantle
		[19] = { itemID = 33748, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Satin Robe
		[20] = { itemID = 33744, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Satin Gloves
		[21] = { itemID = 33746, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Satin Leggings
		[23] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#arenas5_1#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35084, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Satin Hood
		[25] = { itemID = 35086, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Satin Mantle
		[26] = { itemID = 35087, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Satin Robe
		[27] = { itemID = 35083, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Satin Gloves
		[28] = { itemID = 35085, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Satin Leggings
	};
	{
		Name = AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#arenas5_2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 31410, desc = "=ds=#s1#"  }; --Gladiator's Mooncloth Hood
		[3] = { itemID = 31412, desc = "=ds=#s3#"  }; --Gladiator's Mooncloth Mantle
		[4] = { itemID = 31413, desc = "=ds=#s5#"  }; --Gladiator's Mooncloth Robe
		[5] = { itemID = 31409, desc = "=ds=#s9#"  }; --Gladiator's Mooncloth Gloves
		[6] = { itemID = 31411, desc = "=ds=#s11#"  }; --Gladiator's Mooncloth Leggings
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#arenas5_2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32016, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Mooncloth Hood
		[10] = { itemID = 32018, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Mooncloth Mantle
		[11] = { itemID = 32019, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Mooncloth Robe
		[12] = { itemID = 32015, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Mooncloth Gloves
		[13] = { itemID = 32017, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Mooncloth Leggings
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#arenas5_2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33718, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Mooncloth Hood
		[18] = { itemID = 33720, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Mooncloth Mantle
		[19] = { itemID = 33721, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Mooncloth Robe
		[20] = { itemID = 33717, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Mooncloth Gloves
		[21] = { itemID = 33719, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Mooncloth Leggings
		[23] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#arenas5_2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35054, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mooncloth Hood
		[25] = { itemID = 35056, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Mooncloth Mantle
		[26] = { itemID = 35057, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mooncloth Robe
		[27] = { itemID = 35053, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Mooncloth Gloves
		[28] = { itemID = 35055, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mooncloth Leggings
	};
};

AtlasLoot_Data["ArenaRogueTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#arenas6#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 25830, desc = "=ds=#s1#"  }; --Gladiator's Leather Helm
		[3] = { itemID = 25832, desc = "=ds=#s3#"  }; --Gladiator's Leather Spaulders
		[4] = { itemID = 25831, desc = "=ds=#s5#"  }; --Gladiator's Leather Tunic
		[5] = { itemID = 25834, desc = "=ds=#s9#"  }; --Gladiator's Leather Gloves
		[6] = { itemID = 25833, desc = "=ds=#s11#"  }; --Gladiator's Leather Legguards
		[8] = { icon = "Ability_BackStab", name = "=q6=#arenas6#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31999, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Leather Helm
		[10] = { itemID = 32001, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Leather Spaulders
		[11] = { itemID = 32002, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Leather Tunic
		[12] = { itemID = 31998, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Leather Gloves
		[13] = { itemID = 32000, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Leather Legguards
		[16] = { icon = "Ability_BackStab", name = "=q6=#arenas6#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33701, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Leather Helm
		[18] = { itemID = 33703, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Leather Spaulders
		[19] = { itemID = 33704, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Leather Tunic
		[20] = { itemID = 33700, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Leather Gloves
		[21] = { itemID = 33702, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Leather Legguards
		[23] = { icon = "Ability_BackStab", name = "=q6=#arenas6#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35033, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Leather Helm
		[25] = { itemID = 35035, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Leather Spaulders
		[26] = { itemID = 35036, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Leather Tunic
		[27] = { itemID = 35032, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Leather Gloves
		[28] = { itemID = 35034, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Leather Legguards
	};
};

AtlasLoot_Data["ArenaWarlockTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Demonology"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_1#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 24553, desc = "=ds=#s1#"  }; --Gladiator's Dreadweave Hood
		[3] = { itemID = 24554, desc = "=ds=#s3#"  }; --Gladiator's Dreadweave Mantle
		[4] = { itemID = 24552, desc = "=ds=#s5#"  }; --Gladiator's Dreadweave Robe
		[5] = { itemID = 24556, desc = "=ds=#s9#"  }; --Gladiator's Dreadweave Gloves
		[6] = { itemID = 24555, desc = "=ds=#s11#"  }; --Gladiator's Dreadweave Leggings
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_1#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31974, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dreadweave Hood
		[10] = { itemID = 31976, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Dreadweave Mantle
		[11] = { itemID = 31977, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dreadweave Robe
		[12] = { itemID = 31973, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Dreadweave Gloves
		[13] = { itemID = 31975, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Dreadweave Leggings
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_1#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33677, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Dreadweave Hood
		[18] = { itemID = 33679, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Dreadweave Mantle
		[19] = { itemID = 33680, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Dreadweave Robe
		[20] = { itemID = 33676, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Dreadweave Gloves
		[21] = { itemID = 33678, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Dreadweave Leggings
		[23] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_1#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35004, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dreadweave Hood
		[25] = { itemID = 35006, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Dreadweave Mantle
		[26] = { itemID = 35007, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dreadweave Robe
		[27] = { itemID = 35003, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Dreadweave Gloves
		[28] = { itemID = 35005, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Dreadweave Leggings
	};
	{
		Name = AL["Destruction"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 30187, desc = "=ds=#s1#"  }; --Gladiator's Felweave Cowl
		[3] = { itemID = 30186, desc = "=ds=#s3#"  }; --Gladiator's Felweave Amice
		[4] = { itemID = 30200, desc = "=ds=#s5#"  }; --Gladiator's Felweave Raiment
		[5] = { itemID = 30188, desc = "=ds=#s9#"  }; --Gladiator's Felweave Handguards
		[6] = { itemID = 30201, desc = "=ds=#s11#"  }; --Gladiator's Felweave Trousers
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 31980, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Felweave Cowl
		[10] = { itemID = 31979, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Felweave Amice
		[11] = { itemID = 31982, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Felweave Raiment
		[12] = { itemID = 31981, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Felweave Handguards
		[13] = { itemID = 31983, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Felweave Trousers
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33683, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Felweave Cowl
		[18] = { itemID = 33682, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Felweave Amice
		[19] = { itemID = 33685, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Felweave Raiment
		[20] = { itemID = 33684, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Felweave Handguards
		[21] = { itemID = 33686, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Felweave Trousers
		[23] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#arenas8_2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35010, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Felweave Cowl
		[25] = { itemID = 35009, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Felweave Amice
		[26] = { itemID = 35012, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Felweave Raiment
		[27] = { itemID = 35011, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Felweave Handguards
		[28] = { itemID = 35013, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Felweave Trousers
	};
};


AtlasLoot_Data["ArenaShamanTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#arenas7_1#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 25998, desc = "=ds=#s1#"  }; --Gladiator's Linked Helm
		[3] = { itemID = 25999, desc = "=ds=#s3#"  }; --Gladiator's Linked Spaulders
		[4] = { itemID = 25997, desc = "=ds=#s5#"  }; --Gladiator's Linked Armor
		[5] = { itemID = 26000, desc = "=ds=#s9#"  }; --Gladiator's Linked Gauntlets
		[6] = { itemID = 26001, desc = "=ds=#s11#"  }; --Gladiator's Linked Leggings
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#arenas7_1#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32006, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Linked Helm
		[10] = { itemID = 32008, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Linked Spaulders
		[11] = { itemID = 32004, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Linked Armor
		[12] = { itemID = 32005, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Linked Gauntlets
		[13] = { itemID = 32007, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Linked Leggings
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#arenas7_1#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33708, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Linked Helm
		[18] = { itemID = 33710, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Linked Spaulders
		[19] = { itemID = 33706, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Linked Armor
		[20] = { itemID = 33707, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Linked Gauntlets
		[21] = { itemID = 33709, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Linked Leggings
		[23] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#arenas7_1#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35044, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Linked Helm
		[25] = { itemID = 35046, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Linked Spaulders
		[26] = { itemID = 35042, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Linked Armor
		[27] = { itemID = 35043, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Linked Gauntlets
		[28] = { itemID = 35045, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Linked Leggings
	};
	{
		Name = AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#arenas7_2#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 27471, desc = "=ds=#s1#"  }; --Gladiator's Mail Helm
		[3] = { itemID = 27473, desc = "=ds=#s3#"  }; --Gladiator's Mail Spaulders
		[4] = { itemID = 27469, desc = "=ds=#s5#"  }; --Gladiator's Mail Armor
		[5] = { itemID = 27470, desc = "=ds=#s9#"  }; --Gladiator's Mail Gauntlets
		[6] = { itemID = 27472, desc = "=ds=#s11#"  }; --Gladiator's Mail Leggings
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6=#arenas7_2#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32011, desc = "=ds=#s1#"  }; --Merciless Gladiator's Mail Helm
		[10] = { itemID = 32013, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Mail Spaulders
		[11] = { itemID = 32009, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Mail Armor
		[12] = { itemID = 32010, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Mail Gauntlets
		[13] = { itemID = 32012, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Mail Leggings
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6=#arenas7_2#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33713, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Mail Helm
		[18] = { itemID = 33715, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Mail Spaulders
		[19] = { itemID = 33711, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Mail Armor
		[20] = { itemID = 33712, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Mail Gauntlets
		[21] = { itemID = 33714, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Mail Leggings
		[23] = { icon = "Spell_Nature_Lightning", name = "=q6=#arenas7_2#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35050, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mail Helm
		[25] = { itemID = 35052, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Mail Spaulders
		[26] = { itemID = 35048, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mail Armor
		[27] = { itemID = 35049, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Mail Gauntlets
		[28] = { itemID = 35051, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Mail Leggings
	};
	{
		Name = AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#arenas7_3#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 31400, desc = "=ds=#s1#"  }; --Gladiator's Ringmail Helm
		[3] = { itemID = 31407, desc = "=ds=#s3#"  }; --Gladiator's Ringmail Spaulders
		[4] = { itemID = 31396, desc = "=ds=#s5#"  }; --Gladiator's Ringmail Armor
		[5] = { itemID = 31397, desc = "=ds=#s9#"  }; --Gladiator's Ringmail Gauntlets
		[6] = { itemID = 31406, desc = "=ds=#s11#"  }; --Gladiator's Ringmail Leggings
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#arenas7_3#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 32031, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ringmail Helm
		[10] = { itemID = 32033, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Ringmail Spaulders
		[11] = { itemID = 32029, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ringmail Armor
		[12] = { itemID = 32030, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Ringmail Gauntlets
		[13] = { itemID = 32032, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Ringmail Leggings
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#arenas7_3#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33740, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Ringmail Helm
		[18] = { itemID = 33742, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Ringmail Spaulders
		[19] = { itemID = 33738, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Ringmail Armor
		[20] = { itemID = 33739, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Ringmail Gauntlets
		[21] = { itemID = 33741, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Ringmail Leggings
		[23] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#arenas7_3#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35079, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ringmail Helm
		[25] = { itemID = 35081, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Ringmail Spaulders
		[26] = { itemID = 35077, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ringmail Armor
		[27] = { itemID = 35078, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Ringmail Gauntlets
		[28] = { itemID = 35080, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Ringmail Leggings
	};
};

AtlasLoot_Data["ArenaWarriorTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#arenas9#", desc = "=q1=#arenas1L#" };
		[2] = { itemID = 24545, desc = "=ds=#s1#"  }; --Gladiator's Plate Helm
		[3] = { itemID = 24546, desc = "=ds=#s3#"  }; --Gladiator's Plate Shoulders
		[4] = { itemID = 24544, desc = "=ds=#s5#"  }; --Gladiator's Plate Chestpiece
		[5] = { itemID = 24549, desc = "=ds=#s9#"  }; --Gladiator's Plate Gauntlets
		[6] = { itemID = 24547, desc = "=ds=#s11#"  }; --Gladiator's Plate Legguards
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#arenas9#", desc = "=q1=#arenas3L#" };
		[9] = { itemID = 30488, desc = "=ds=#s1#", cost = "15000 #faction#"  }; --Merciless Gladiator's Plate Helm
		[10] = { itemID = 30490, desc = "=ds=#s3#", cost = "13000 #faction#"  }; --Merciless Gladiator's Plate Shoulders
		[11] = { itemID = 30486, desc = "=ds=#s5#", cost = "15000 #faction#"  }; --Merciless Gladiator's Plate Chestpiece
		[12] = { itemID = 30487, desc = "=ds=#s9#", cost = "12000 #faction#"  }; --Merciless Gladiator's Plate Gauntlets
		[13] = { itemID = 30489, desc = "=ds=#s11#", cost = "15000 #faction#"  }; --Merciless Gladiator's Plate Legguards
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#arenas9#", desc = "=q1=#arenas2L#" };
		[17] = { itemID = 33730, desc = "=ds=#s1#"  }; --Vengeful Gladiator's Plate Helm
		[18] = { itemID = 33732, desc = "=ds=#s3#"  }; --Vengeful Gladiator's Plate Shoulders
		[19] = { itemID = 33728, desc = "=ds=#s5#"  }; --Vengeful Gladiator's Plate Chestpiece
		[20] = { itemID = 33729, desc = "=ds=#s9#"  }; --Vengeful Gladiator's Plate Gauntlets
		[21] = { itemID = 33731, desc = "=ds=#s11#"  }; --Vengeful Gladiator's Plate Legguards
		[23] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#arenas9#", desc = "=q1=#arenas4L#" };
		[24] = { itemID = 35068, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Plate Helm
		[25] = { itemID = 35070, desc = "=ds=", cost = "1500 #arena#"  }; --Brutal Gladiator's Plate Shoulders
		[26] = { itemID = 35066, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Plate Chestpiece
		[27] = { itemID = 35067, desc = "=ds=", cost = "1125 #arena#"  }; --Brutal Gladiator's Plate Gauntlets
		[28] = { itemID = 35069, desc = "=ds=", cost = "1875 #arena#"  }; --Brutal Gladiator's Plate Legguards
	};
};

--------------------------------
--- Arena Seasons - Weapons ---
--------------------------------
AtlasLoot_Data["WeaponsTBC"] = {
	Name = "Arena " .. AL["Weapons"];
	{
		Name = "Alliance";
		[1] = { itemID = 28953, desc = "=q3=Grand Marshal's Right Ripper"  };
		[2] = { itemID = 28947, desc = "=q3=Grand Marshal's Left Ripper"  };
		[3] = { itemID = 28957, desc = "=q3=Grand Marshal's Spellblade"  };
		[4] = { itemID = 28954, desc = "=q3=Grand Marshal's Shanker"  };
		[5] = { itemID = 28955, desc = "=q3=Grand Marshal's Shiv"  };
		[6] = { itemID = 28956, desc = "=q3=Grand Marshal's Slicer"  };
		[7] = { itemID = 28952, desc = "=q3=Grand Marshal's Quickblade"  };
		[8] = { itemID = 28943, desc = "=q3=Grand Marshal's Warblade"  };
		[9] = { itemID = 28944, desc = "=q3=Grand Marshal's Cleaver"  };
		[10] = { itemID = 28946, desc = "=q3=Grand Marshal's Hacker"  };
		[11] = { itemID = 28945, desc = "=q3=Grand Marshal's Decapitator"  };
		[12] = { itemID = 28951, desc = "=q3=Grand Marshal's Pummeler"  };
		[13] = { itemID = 28950, desc = "=q3=Grand Marshal's Bonecracker"  };
		[14] = { itemID = 28942, desc = "=q3=Grand Marshal's Bonegrinder"  };
		[15] = { itemID = 28948, desc = "=q3=Grand Marshal's Maul"  };
		[16] = { itemID = 28949, desc = "=q3=Grand Marshal's Painsaw"  };
		[17] = { itemID = 28959, desc = "=q3=Grand Marshal's War Staff"  };
		[18] = { itemID = 28940, desc = "=q3=Grand Marshal's Barricade"  };
		[19] = { itemID = 28960, desc = "=q3=Grand Marshal's Heavy Crossbow"  };
		[20] = { itemID = 28941, desc = "=q3=Grand Marshal's Battletome"  };
	};
	{
		Name = "Horde";
		[1] = { itemID = 28928, desc = "=q3=High Warlord's Right Ripper"  };
		[2] = { itemID = 28922, desc = "=q3=High Warlord's Left Ripper"  };
		[3] = { itemID = 28931, desc = "=q3=High Warlord's Spellblade"  };
		[4] = { itemID = 28929, desc = "=q3=High Warlord's Shanker"  };
		[5] = { itemID = 28930, desc = "=q3=High Warlord's Shiv"  };
		[6] = { itemID = 28937, desc = "=q3=High Warlord's Slicer"  };
		[7] = { itemID = 28926, desc = "=q3=High Warlord's Quickblade"  };
		[8] = { itemID = 28293, desc = "=q3=High Warlord's Claymore"  };
		[9] = { itemID = 28920, desc = "=q3=High Warlord's Cleaver"  };
		[10] = { itemID = 28921, desc = "=q3=High Warlord's Hacker"  };
		[11] = { itemID = 28918, desc = "=q3=High Warlord's Decapitator"  };
		[12] = { itemID = 28925, desc = "=q3=High Warlord's Pummeler"  };
		[13] = { itemID = 28924, desc = "=q3=High Warlord's Bonecracker"  };
		[14] = { itemID = 28917, desc = "=q3=High Warlord's Bonegrinder"  };
		[15] = { itemID = 28919, desc = "=q3=High Warlord's Maul"  };
		[16] = { itemID = 28923, desc = "=q3=High Warlord's Painsaw"  };
		[17] = { itemID = 28935, desc = "=q3=High Warlord's War Staff"  };
		[18] = { itemID = 28939, desc = "=q3=High Warlord's Barricade"  };
		[19] = { itemID = 28933, desc = "=q3=High Warlord's Heavy Crossbow"  };
		[20] = { itemID = 28938, desc = "=q3=High Warlord's Battletome"  };
	};
	{
		Name = "Weapons Season 1";
		[1] = { itemID = 28313, desc = "=ds=", cost = "2625 #arena#"  }; --Gladiator's Right Ripper
		[2] = { itemID = 28314, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Left Ripper
		[3] = { itemID = 28297, desc = "=ds=", cost = "3150 #arena#"  }; --Gladiator's Spellblade
		[4] = { itemID = 28312, desc = "=ds=", cost = "2625 #arena#"  }; --Gladiator's Shanker
		[5] = { itemID = 28310, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Shiv
		[6] = { itemID = 28295, desc = "=ds=", cost = "2625 #arena#"  }; --Gladiator's Slicer
		[7] = { itemID = 28307, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Quickblade
		[8] = { itemID = 24550, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Greatsword
		[9] = { itemID = 28308, desc = "=ds=", cost = "2625 #arena#"  }; --Gladiator's Cleaver
		[10] = { itemID = 28309, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Hacker
		[11] = { itemID = 28298, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Decapitator
		[12] = { itemID = 28305, desc = "=ds=", cost = "2625 #arena#"  }; --Gladiator's Pummeler
		[13] = { itemID = 28302, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Bonecracker
		[14] = { itemID = 28299, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Bonegrinder
		[15] = { itemID = 28476, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Maul
		[16] = { itemID = 28300, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Painsaw
		[17] = { itemID = 24557, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's War Staff
		[18] = { itemID = 28358, desc = "=ds=", cost = "1875 #arena#"  }; --Gladiator's Shield Wall
		[19] = { itemID = 28319, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's War Edge
		[20] = { itemID = 28294, desc = "=ds=", cost = "3750 #arena#"  }; --Gladiator's Heavy Crossbow
		[21] = { itemID = 28320, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Touch of Defeat
		[22] = { itemID = 28346, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Endgame
		[23] = { itemID = 32452, desc = "=ds=", cost = "1125 #arena#"  }; --Gladiator's Reprieve
	};
	{
		Name = "Weapons Season 1";
		[1] = { itemID = 33945, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Idol of Resolve
		[2] = { itemID = 33942, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Idol of Steadfastness
		[3] = { itemID = 28355, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Idol of Tenacity
		[4] = { itemID = 33936, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Libram of Fortitude
		[5] = { itemID = 28356, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Libram of Justice
		[6] = { itemID = 33948, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Libram of Vengeance
		[7] = { itemID = 33939, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Totem of Indomitability
		[8] = { itemID = 33951, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Totem of Survival
		[9] = { itemID = 28357, desc = "=ds=", cost = "1000 #arena#"  }; --Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 2";
		[1] = { itemID = 33737, desc = "=ds=", cost = "2100 #arena#"  }; --Vengeful Gladiator's Right Ripper
		[2] = { itemID = 33705, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Left Ripper
		[3] = { itemID = 34016, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Left Render
		[4] = { itemID = 33763, desc = "=ds=", cost = "2520 #arena#"  }; --Vengeful Gladiator's Spellblade
		[5] = { itemID = 33754, desc = "=ds=", cost = "2100 #arena#"  }; --Vengeful Gladiator's Shanker
		[6] = { itemID = 33801, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Mutilator
		[7] = { itemID = 33756, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Shiv
		[8] = { itemID = 33762, desc = "=ds=", cost = "2100 #arena#"  }; --Vengeful Gladiator's Slicer
		[9] = { itemID = 33734, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Quickblade
		[10] = { itemID = 33688, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Greatsword
		[11] = { itemID = 33669, desc = "=ds=", cost = "2100 #arena#"  }; --Vengeful Gladiator's Cleaver
		[12] = { itemID = 34015, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Chopper
		[13] = { itemID = 33689, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Hacker
		[14] = { itemID = 33670, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Decapitator
		[15] = { itemID = 34014, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Waraxe
		[16] = { itemID = 33687, desc = "=ds=", cost = "2520 #arena#"  }; --Vengeful Gladiator's Gavel
		[17] = { itemID = 33743, desc = "=ds=", cost = "2520 #arena#"  }; --Vengeful Gladiator's Salvation
		[18] = { itemID = 33733, desc = "=ds=", cost = "2100 #arena#"  }; --Vengeful Gladiator's Pummeler
		[19] = { itemID = 33662, desc = "=ds=", cost = "2520 #arena#"  }; --Vengeful Gladiator's Bonecracker
		[20] = { itemID = 33663, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Bonegrinder
		[21] = { itemID = 33727, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Painsaw
		[22] = { itemID = 34540, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Battle Staff
		[23] = { itemID = 33716, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Staff
		[24] = { itemID = 33766, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's War Staff
	};
	{
		Name = "Weapons Season 2";
		[1] = { itemID = 33661, desc = "=ds=", cost = "1500 #arena#"  }; --Vengeful Gladiator's Barrier
		[2] = { itemID = 33735, desc = "=ds=", cost = "1500 #arena#"  }; --Vengeful Gladiator's Redoubt
		[3] = { itemID = 33755, desc = "=ds=", cost = "1500 #arena#"  }; --Vengeful Gladiator's Shield Wall
		[4] = { itemID = 33765, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's War Edge
		[5] = { itemID = 34529, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Longbow
		[6] = { itemID = 33006, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Heavy Crossbow
		[7] = { itemID = 34530, desc = "=ds=", cost = "3000 #arena#"  }; --Vengeful Gladiator's Rifle
		[8] = { itemID = 34059, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Baton of Light
		[9] = { itemID = 34066, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Piercing Touch
		[10] = { itemID = 33764, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Touch of Defeat
		[11] = { itemID = 33681, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Endgame
		[12] = { itemID = 34033, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Grimoire
		[13] = { itemID = 33736, desc = "=ds=", cost = "900 #arena#"  }; --Vengeful Gladiator's Reprieve
		[16] = { itemID = 33947, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Idol of Resolve
		[17] = { itemID = 33944, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Idol of Steadfastness
		[18] = { itemID = 33841, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Idol of Tenacity
		[19] = { itemID = 33938, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Libram of Fortitude
		[20] = { itemID = 33842, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Libram of Justice
		[21] = { itemID = 33950, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Libram of Vengeance
		[22] = { itemID = 33941, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Totem of Indomitability
		[23] = { itemID = 33953, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Totem of Survival
		[24] = { itemID = 33843, desc = "=ds=", cost = "800 #arena#"  }; --Vengeful Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 3";
		[1] = { itemID = 32028, desc = "=ds=", cost = "18000 #arena#"  }; --Merciless Gladiator's Right Ripper
		[2] = { itemID = 32003, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Left Ripper
		[3] = { itemID = 32053, desc = "=ds=", cost = "25200 #arena#"  }; --Merciless Gladiator's Spellblade
		[4] = { itemID = 32044, desc = "=ds=", cost = "18000 #arena#"  }; --Merciless Gladiator's Shanker
		[5] = { itemID = 32046, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Shiv
		[6] = { itemID = 32052, desc = "=ds=", cost = "18000 #arena#"  }; --Merciless Gladiator's Slicer
		[7] = { itemID = 32027, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Quickblade
		[8] = { itemID = 31984, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Greatsword
		[9] = { itemID = 31965, desc = "=ds=", cost = "18000 #arena#"  }; --Merciless Gladiator's Cleaver
		[10] = { itemID = 31985, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Hacker
		[11] = { itemID = 31966, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Decapitator
		[12] = { itemID = 32963, desc = "=ds=", cost = "25200 #arena#"  }; --Merciless Gladiator's Gavel
		[13] = { itemID = 32964, desc = "=ds=", cost = "25200 #arena#"  }; --Merciless Gladiator's Salvation
		[14] = { itemID = 32026, desc = "=ds=", cost = "18000 #arena#"  }; --Merciless Gladiator's Pummeler
		[15] = { itemID = 31958, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Bonecracker
		[16] = { itemID = 31959, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Bonegrinder
		[17] = { itemID = 32014, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Maul
		[18] = { itemID = 32025, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Painsaw
		[19] = { itemID = 32055, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's War Staff
		[20] = { itemID = 33313, desc = "=ds=", cost = "15000 #arena#"  }; --Merciless Gladiator's Barrier
		[21] = { itemID = 33309, desc = "=ds=", cost = "15000 #arena#"  }; --Merciless Gladiator's Redoubt
		[22] = { itemID = 32045, desc = "=ds=", cost = "15000 #arena#"  }; --Merciless Gladiator's Shield Wall
		[23] = { itemID = 32054, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's War Edge
		[24] = { itemID = 31986, desc = "=ds=", cost = "27000 #arena#"  }; --Merciless Gladiator's Crossbow of the Phoenix
		[25] = { itemID = 32962, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Touch of Defeat
		[26] = { itemID = 31978, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Endgame
		[27] = { itemID = 32961, desc = "=ds=", cost = "9000 #arena#"  }; --Merciless Gladiator's Reprieve
	};
	{
		Name = "Weapons Season 3";
		[1] = { itemID = 33946, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Idol of Resolve
		[2] = { itemID = 33943, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Idol of Steadfastness
		[3] = { itemID = 33076, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Idol of Tenacity
		[4] = { itemID = 33937, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Libram of Fortitude
		[5] = { itemID = 33077, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Libram of Justice
		[6] = { itemID = 33949, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Libram of Vengeance
		[7] = { itemID = 33940, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Totem of Indomitability
		[8] = { itemID = 33952, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Totem of Survival
		[9] = { itemID = 33078, desc = "=ds=", cost = "8000 #arena#"  }; --Merciless Gladiator's Totem of the Third Wind
	};
	{
		Name = "Weapons Season 4";
		[1] = { itemID = 35076, desc = "=ds=#h3#, #w13#", cost = "2625 #arena#"  }; --Brutal Gladiator's Right Ripper
		[2] = { itemID = 35038, desc = "=ds=#h4#, #w13#", cost = "1125 #arena#"  }; --Brutal Gladiator's Left Ripper
		[3] = { itemID = 35037, desc = "=ds=#h4#, #w13#", cost = "1125 #arena#"  }; --Brutal Gladiator's Left Render
		[4] = { itemID = 35102, desc = "=ds=#h3#, #w4#", cost = "3150 #arena#"  }; --Brutal Gladiator's Spellblade
		[5] = { itemID = 37739, desc = "=ds=#h3#, #w4#", cost = "3150 #arena#"  }; --Brutal Gladiator's Blade of Alacrity
		[6] = { itemID = 35093, desc = "=ds=#h1#, #w4#", cost = "2625 #arena#"  }; --Brutal Gladiator's Shanker
		[7] = { itemID = 35058, desc = "=ds=#h4#, #w4#", cost = "1125 #arena#"  }; --Brutal Gladiator's Mutilator
		[8] = { itemID = 35095, desc = "=ds=#h4#, #w4#", cost = "1125 #arena#"  }; --Brutal Gladiator's Shiv
		[9] = { itemID = 35101, desc = "=ds=#h1#, #w10#", cost = "2625 #arena#"  }; --Brutal Gladiator's Slicer
		[10] = { itemID = 35072, desc = "=ds=#h4#, #w10#", cost = "1125 #arena#"  }; --Brutal Gladiator's Quickblade
		[11] = { itemID = 35015, desc = "=ds=#h2#, #w10#", cost = "3750 #arena#"  }; --Brutal Gladiator's Greatsword
		[12] = { itemID = 34996, desc = "=ds=#h1#, #w1#", cost = "2625 #arena#"  }; --Brutal Gladiator's Cleaver
		[13] = { itemID = 34995, desc = "=ds=#h4#, #w1#", cost = "1125 #arena#"  }; --Brutal Gladiator's Chopper
		[14] = { itemID = 36737, desc = "=ds=#h4#, #w1#", cost = "650 #arena#"  }; --Brutal Gladiator's Hatchet
		[15] = { itemID = 35017, desc = "=ds=#h4#, #w1#", cost = "1125 #arena#"  }; --Brutal Gladiator's Hacker
		[16] = { itemID = 34997, desc = "=ds=#h2#, #w1#", cost = "3750 #arena#"  }; --Brutal Gladiator's Decapitator
		[17] = { itemID = 35110, desc = "=ds=#h3#, #w1#", cost = "650 #arena#"  }; --Brutal Gladiator's Waraxe
		[18] = { itemID = 35014, desc = "=ds=#h3#, #w6#", cost = "3150 #arena#"  }; --Brutal Gladiator's Gavel
		[19] = { itemID = 35082, desc = "=ds=#h3#, #w6#", cost = "3150 #arena#"  }; --Brutal Gladiator's Salvation
		[20] = { itemID = 37740, desc = "=ds=#h3#, #w6#", cost = "3150 #arena#"  }; --Brutal Gladiator's Swift Judgement
		[21] = { itemID = 35071, desc = "=ds=#h1#, #w6#", cost = "2625 #arena#"  }; --Brutal Gladiator's Pummeler
		[22] = { itemID = 34988, desc = "=ds=#h4#, #w6#", cost = "3150 #arena#"  }; --Brutal Gladiator's Bonecracker
		[23] = { itemID = 34989, desc = "=ds=#h2#, #w6#", cost = "3750 #arena#"  }; --Brutal Gladiator's Bonegrinder
		[24] = { itemID = 35064, desc = "=ds=#w7#", cost = "3750 #arena#"  }; --Brutal Gladiator's Painsaw
		[25] = { itemID = 34987, desc = "=ds=#h2#, #w9#", cost = "3750 #arena#"  }; --Brutal Gladiator's Battle Staff
		[26] = { itemID = 35103, desc = "=ds=#h2#, #w9#", cost = "3750 #arena#"  }; --Brutal Gladiator's Staff
		[27] = { itemID = 35109, desc = "=ds=#h2#, #w9#", cost = "3750 #arena#"  }; --Brutal Gladiator's War Staff
	};
	{
		Name = "Weapons Season 4";
		[1] = { itemID = 34986, desc = "=ds=#w8#", cost = "1875 #arena#"  }; --Brutal Gladiator's Barrier
		[2] = { itemID = 35073, desc = "=ds=#w8#", cost = "1875 #arena#"  }; --Brutal Gladiator's Redoubt
		[3] = { itemID = 35094, desc = "=ds=#w8#", cost = "1875 #arena#"  }; --Brutal Gladiator's Shield Wall
		[4] = { itemID = 35108, desc = "=ds=#w11#", cost = "1000 #arena#"  }; --Brutal Gladiator's War Edge
		[5] = { itemID = 35047, desc = "=ds=#w2#", cost = "3750 #arena#"  }; --Brutal Gladiator's Longbow
		[6] = { itemID = 35018, desc = "=ds=#w3#", cost = "3750 #arena#"  }; --Brutal Gladiator's Heavy Crossbow
		[7] = { itemID = 35075, desc = "=ds=#w5#", cost = "3750 #arena#"  }; --Brutal Gladiator's Rifle
		[8] = { itemID = 34985, desc = "=ds=#w12#", cost = "1000 #arena#"  }; --Brutal Gladiator's Baton of Light
		[9] = { itemID = 35065, desc = "=ds=#w12#", cost = "1000 #arena#"  }; --Brutal Gladiator's Piercing Touch
		[10] = { itemID = 35107, desc = "=ds=#w12#", cost = "1000 #arena#"  }; --Brutal Gladiator's Touch of Defeat
		[11] = { itemID = 35008, desc = "=ds=#s15#", cost = "1125 #arena#"  }; --Brutal Gladiator's Endgame
		[12] = { itemID = 35016, desc = "=ds=#s15#", cost = "1125 #arena#"  }; --Brutal Gladiator's Grimoire
		[13] = { itemID = 35074, desc = "=ds=#s15#", cost = "1125 #arena#"  }; --Brutal Gladiator's Reprieve
		[16] = { itemID = 35019, desc = "=ds=#w14#", cost = "1000 #arena#"  }; --Brutal Gladiator's Idol of Resolve
		[17] = { itemID = 35020, desc = "=ds=", cost = "1000 #arena#"  }; --Brutal Gladiator's Idol of Steadfastness#w14#
		[18] = { itemID = 35021, desc = "=ds=#w14#", cost = "1000 #arena#"  }; --Brutal Gladiator's Idol of Tenacity
		[19] = { itemID = 35039, desc = "=ds=#w16#", cost = "1000 #arena#"  }; --Brutal Gladiator's Libram of Fortitude
		[20] = { itemID = 35040, desc = "=ds=#w16#", cost = "1000 #arena#"  }; --Brutal Gladiator's Libram of Justice
		[21] = { itemID = 35041, desc = "=ds=#w16#", cost = "1000 #arena#"  }; --Brutal Gladiator's Libram of Vengeance
		[22] = { itemID = 35104, desc = "=ds=#w15#", cost = "1000 #arena#"  }; --Brutal Gladiator's Totem of Indomitability
		[23] = { itemID = 35105, desc = "=ds=#w15#", cost = "1000 #arena#"  }; --Brutal Gladiator's Totem of Survival
		[24] = { itemID = 35106, desc = "=ds=#w15#", cost = "1000 #arena#"  }; --Brutal Gladiator's Totem of the Third Wind
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

---------------------------
--- Dungeon 3 Sets (D3) ---
---------------------------

	AtlasLoot_Data["DS3"] = {
			Name = AL["Dungeon 3 Sets"];
			Type = "BCDungeon";
		{
			Name = AL["Hallowed Raiment"];
			[1] = { itemID = 28413, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Hallowed Crown
			[2] = { itemID = 27775, desc = "=ds=" ..BabbleBoss["Grandmaster Vorpil"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Hallowed Pauldrons
			[3] = { itemID = 28230, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Hallowed Garments
			[4] = { itemID = 27536, desc = "=ds=" ..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Hallowed Handwraps
			[5] = { itemID = 27875, desc = "=ds=" ..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")" }; --Hallowed Trousers
		};
		{
			Name = AL["Mana-Etched Regalia"];
			[1] = { itemID = 28193, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Mana-Etched Crown
			[2] = { itemID = 27796, desc = "=ds=" ..BabbleBoss["Quagmirran"].." (#j3#)" }; --Mana-Etched Spaulders
			[3] = { itemID = 28191, desc = "=ds=" ..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)" }; --Mana-Etched Vestments
			[4] = { itemID = 27465, desc = "=ds=" ..BabbleBoss["Omor the Unscarred"].." ("..BabbleZone["Hellfire Ramparts"]..") (#j3#)" }; --Mana-Etched Gloves
			[5] = { itemID = 27907, desc = "=ds=" ..BabbleBoss["The Black Stalker"].." (#j3#)" }; --Mana-Etched Pantaloons
		};
		{
			Name = AL["Incanter's Regalia"];
			[1] = { itemID = 28278, desc = "=ds=" ..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")" }; --Incanter's Cowl
			[2] = { itemID = 27738, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Incanter's Pauldrons
			[3] = { itemID = 28229, desc = "=ds=" ..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")" }; --Incanter's Robe
			[4] = { itemID = 27508, desc = "=ds=" ..BabbleBoss["Hydromancer Thespia"].." ("..BabbleZone["The Steamvault"]..")" };  --Incanter's Gloves
			[5] = { itemID = 27838, desc = "=ds=" ..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")" }; --Incanter's Trousers
		};
		{
			Name = AL["Oblivion Raiment"];
			[1] = { itemID = 28415, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Hood of Oblivion
			[2] = { itemID = 27778, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Spaulders of Oblivion
			[3] = { itemID = 28232, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Robe of Oblivion
			[4] = { itemID = 27537, desc = "=ds=" ..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Gloves of Oblivion
			[5] = { itemID = 27948, desc = "=ds=" ..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")" }; --Trousers of Oblivion
		};
		{
			Name = AL["Assassination Armor"];
			[1] = { itemID = 28414, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Helm of Assassination
			[2] = { itemID = 27776, desc = "=ds=" ..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")" }; --Shoulderpads of Assassination
			[3] = { itemID = 28204, desc = "=ds=" ..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")" }; --Tunic of Assassination
			[4] = { itemID = 27509, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Handgrips of Assassination
			[5] = { itemID = 27908, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Leggings of Assassination
		};
		{
			Name = AL["Wastewalker Armor"];
			[1] = { itemID = 28224, desc = "=ds=" ..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)" }; --Wastewalker Helm
			[2] = { itemID = 27797, desc = "=ds=" ..AL["Avatar"].." ("..BabbleZone["Auchenai Crypts"]..") (#j3#)" }; --Wastewalker Shoulderpads
			[3] = { itemID = 28264, desc = "=ds=" ..BabbleBoss["Keli'dan the Breaker"].." ("..BabbleZone["The Blood Furnace"]..") (#j3#)" }; --Wastewalker Tunic
			[4] = { itemID = 27531, desc = "=ds=" ..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Wastewalker Gloves
			[5] = { itemID = 27837, desc = "=ds=" ..BabbleBoss["Nexus-Prince Shaffar"].." ("..BabbleZone["Mana-Tombs"]..") (#j3#)" }; --Wastewalker Leggings
		};
		{
			Name = AL["Moonglade Raiment"];
			[1] = { itemID = 28348, desc = "=ds=" ..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")" }; --Moonglade Cowl
			[2] = { itemID = 27737, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Moonglade Shoulders
			[3] = { itemID = 28202, desc = "=ds=" ..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")" }; --Moonglade Robe
			[4] = { itemID = 27468, desc = "=ds=" ..BabbleBoss["Blackheart the Inciter"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Moonglade Handwraps
			[5] = { itemID = 27873, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Moonglade Pants
		};
		{
			Name = AL["Beast Lord Armor"];
			[1] = { itemID = 28275, desc = "=ds=" ..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")" }; --Beast Lord Helm
			[2] = { itemID = 27801, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Beast Lord Mantle
			[3] = { itemID = 28228, desc = "=ds=" ..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")" }; --Beast Lord Curiass
			[4] = { itemID = 27474, desc = "=ds=" ..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Beast Lord Handguards
			[5] = { itemID = 27874, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Beast Lord Leggings
		};
		{
			Name = AL["Tidefury Raiment"];
			[1] = { itemID = 28349, desc = "=ds=" ..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")" }; --Tidefury Helm
			[2] = { itemID = 27802, desc = "=ds=" ..BabbleBoss["Warbringer O'mrogg"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Tidefury Shoulderguards
			[3] = { itemID = 28231, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Tidefury Chestpiece
			[4] = { itemID = 27510, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Tidefury Gauntlets
			[5] = { itemID = 27909, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Tidefury Kilt
		};
		{
			Name = AL["Desolation Battlegear"];
			[1] = { itemID = 28192, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Helm of Desolation
			[2] = { itemID = 27713, desc = "=ds=" ..BabbleBoss["Quagmirran"].." (#j3#)" }; --Pauldrons of Desolation
			[3] = { itemID = 28401, desc = "=ds=" ..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)" }; --Hauberk of Desolation
			[4] = { itemID = 27528, desc = "=ds=" ..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Gauntlets of Desolation
			[5] = { itemID = 27936, desc = "=ds=" ..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")" }; --Greaves of Desolation
		};
		{
			Name = AL["Bold Armor"];
			[1] = { itemID = 28350, desc = "=ds=" ..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")" }; --Warhelm of the Bold
			[2] = { itemID = 27803, desc = "=ds=" ..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")" }; --Shoulderguards of the Bold
			[3] = { itemID = 28205, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Breastplate of the Bold
			[4] = { itemID = 27475, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Gauntlets of the Bold
			[5] = { itemID = 27977, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Legplates of the Bold
		};
		{
			Name = AL["Righteous Armor"];
			[1] = { itemID = 28285, desc = "=ds=" ..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")" }; --Helm of the Righteous
			[2] = { itemID = 27739, desc = "=ds=" ..BabbleBoss["Laj"].." ("..BabbleZone["The Botanica"]..")" }; --Spaulders of the Righteous
			[3] = { itemID = 28203, desc = "=ds=" ..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")" }; --Breastplate of the Righteous
			[4] = { itemID = 27535, desc = "=ds=" ..BabbleBoss["Warbringer O'mrogg"].." ("..BabbleZone["The Shattered Halls"]..")" }; --Gauntlets of the Righteous
			[5] = { itemID = 27839, desc = "=ds=" ..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")" }; --Legplates of the Righteous
		};
		{
			Name = AL["Doomplate Battlegear"];
			[1] = { itemID = 28225, desc = "=ds=" ..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)" }; --Doomplate Warhelm
			[2] = { itemID = 27771, desc = "=ds=" ..BabbleBoss["The Black Stalker"].." (#j3#)" }; --Doomplate Shouldergards
			[3] = { itemID = 28403, desc = "=ds=" ..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")" }; --Doomplate Chestguard
			[4] = { itemID = 27497, desc = "=ds=" ..BabbleBoss["Keli'dan the Breaker"].." ("..BabbleZone["The Blood Furnace"]..") (#j3#)" }; --Doomplate Gauntlets
			[5] = { itemID = 27870, desc = "=ds=" ..BabbleBoss["Exarch Maladaar"].." ("..BabbleZone["Auchenai Crypts"]..") (#j3#)" }; --Doomplate Legguards
		};
	};

--------------
--- Tier 4 ---
--------------

	AtlasLoot_Data["T4"] = {
		Name = "Tier 4";
		Type = "BCRaid";
		{
			Name = "Druid".." - "..AL["Feral"];
			[1] = { itemID = 29098, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Stag-Helm of Malorne
			[2] = { itemID = 29100, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Mantle of Malorne
			[3] = { itemID = 29096, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Breastplate of Malorne
			[4] = { itemID = 29097, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Gauntlets of Malorne
			[5] = { itemID = 29099, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Greaves of Malorne
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			[1] = { itemID = 29086, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Crown of Malorne
			[2] = { itemID = 29089, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Shoulderguards of Malorne
			[3] = { itemID = 29087, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Chestguard of Malorne
			[4] = { itemID = 29090, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Handguards of Malorne
			[5] = { itemID = 29088, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Legguards of Malorne
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			[1] = { itemID = 29093, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Antlers of Malorne
			[2] = { itemID = 29095, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Pauldrons of Malorne
			[3] = { itemID = 29091, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Chestpiece of Malorne
			[4] = { itemID = 29092, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Gloves of Malorne
			[5] = { itemID = 29094, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Britches of Malorne
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 29081, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Demon Stalker Greathelm
			[2] = { itemID = 29084, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Demon Stalker Shoulderguards
			[3] = { itemID = 29082, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Demon Stalker Harness
			[4] = { itemID = 29085, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Demon Stalker Gauntlets
			[5] = { itemID = 29083, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Demon Stalker Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 29076, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Collar of the Aldor
			[2] = { itemID = 29079, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Pauldrons of the Aldor
			[3] = { itemID = 29077, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Vestments of the Aldor
			[4] = { itemID = 29080, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Gloves of the Aldor
			[5] = { itemID = 29078, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Legwraps of the Aldor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			[1] = { itemID = 29068, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Faceguard
			[2] = { itemID = 29070, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Justicar Shoulderguards
			[3] = { itemID = 29066, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Justicar Chestguard
			[4] = { itemID = 29067, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Handguards
			[5] = { itemID = 29069, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Justicar Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			[1] = { itemID = 29073, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Crown
			[2] = { itemID = 29075, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Justicar Shoulderplates
			[3] = { itemID = 29071, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Justicar Breastplate
			[4] = { itemID = 29072, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Gauntlets
			[5] = { itemID = 29074, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Justicar Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			[1] = { itemID = 29061, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Diadem
			[2] = { itemID = 29064, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Justicar Pauldrons
			[3] = { itemID = 29062, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Justicar Chestpiece
			[4] = { itemID = 29065, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Justicar Gloves
			[5] = { itemID = 29063, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Justicar Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			[1] = { itemID = 29049, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Light-Collar of the Incarnate
			[2] = { itemID = 29054, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Light-Mantle of the Incarnate
			[3] = { itemID = 29050, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Robes of the Incarnate
			[4] = { itemID = 29055, desc = "The Curator (" ..BabbleZone["Karazhan"]..")" }; --Handwraps of the Incarnate
			[5] = { itemID = 29053, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Trousers of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			[1] = { itemID = 29058, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Soul-Collar of the Incarnate
			[2] = { itemID = 29060, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Soul-Mantle of the Incarnate
			[3] = { itemID = 29056, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Shroud of the Incarnate
			[4] = { itemID = 29057, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Gloves of the Incarnate
			[5] = { itemID = 29059, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Leggings of the Incarnate
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 29044, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Netherblade Facemask
			[2] = { itemID = 29047, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Netherblade Shoulderpads
			[3] = { itemID = 29045, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Netherblade Chestpiece
			[4] = { itemID = 29048, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Netherblade Gloves
			[5] = { itemID = 29046, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Netherblade Breeches
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			[1] = { itemID = 29040, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Helm
			[2] = { itemID = 29043, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Cyclone Shoulderplates
			[3] = { itemID = 29038, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Cyclone Breastplate
			[4] = { itemID = 29039, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Gauntlets
			[5] = { itemID = 29042, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Cyclone War-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];	
			[1] = { itemID = 29028, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Headdress
			[2] = { itemID = 29031, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Cyclone Shoulderpads
			[3] = { itemID = 29029, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Cyclone Hauberk
			[4] = { itemID = 29032, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Gloves
			[5] = { itemID = 29030, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Cyclone Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			[1] = { itemID = 29035, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Faceguard
			[2] = { itemID = 29037, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Cyclone Shoulderguards
			[3] = { itemID = 29033, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Cyclone Chestguard
			[4] = { itemID = 29034, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Cyclone Handguards
			[5] = { itemID = 29036, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Cyclone Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 28963, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Voidheart Crown
			[2] = { itemID = 28967, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Voidheart Mantle
			[3] = { itemID = 28964, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Voidheart Robe
			[4] = { itemID = 28968, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Voidheart Gloves
			[5] = { itemID = 28966, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Voidheart Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			[1] = { itemID = 29011, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Greathelm
			[2] = { itemID = 29016, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Warbringer Shoulderguards
			[3] = { itemID = 29012, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Warbringer Chestguard
			[4] = { itemID = 29017, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Handguards
			[5] = { itemID = 29015, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Warbringer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			[1] = { itemID = 14984, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Helmet
			[2] = { itemID = 14988, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Warbringer Pauldrons
			[3] = { itemID = 14985, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Warbringer Hauberk
			[4] = { itemID = 14989, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Gloves
			[5] = { itemID = 14987, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Warbringer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			[1] = { itemID = 29021, desc = "=ds=" ..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Battle-Helm
			[2] = { itemID = 29023, desc = "=ds=" ..BabbleBoss["High King Maulgar"] }; --Warbringer Shoulderplates
			[3] = { itemID = 29019, desc = "=ds=" ..BabbleBoss["Magtheridon"] }; --Warbringer Breastplate
			[4] = { itemID = 29020, desc = "=ds=" ..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")" }; --Warbringer Gauntlets
			[5] = { itemID = 29022, desc = "=ds=" ..BabbleBoss["Gruul the Dragonkiller"] }; --Warbringer Greaves
		}
	};

--------------
--- Tier 5 ---
--------------

AtlasLoot_Data["T5"] = {
		Name = "Tier 5";
		Type = "BCRaid";
		{
			Name = "Druid".." - "..AL["Feral"];
			[1] = { itemID = 30228, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Headdress
			[2] = { itemID = 30230, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Feral-Mantle
			[3] = { itemID = 30222, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Chestplate
			[4] = { itemID = 30223, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Handgrips
			[5] = { itemID = 30229, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Feral-Kilt
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			[1] = { itemID = 30219, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Headguard
			[2] = { itemID = 30221, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Life-Mantle
			[3] = { itemID = 30216, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Chestguard
			[4] = { itemID = 30217, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Gloves
			[5] = { itemID = 30220, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Life-Kilt
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			[1] = { itemID = 30233, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Headpiece
			[2] = { itemID = 30235, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Wrath-Mantle
			[3] = { itemID = 30231, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Nordrassil Chestpiece
			[4] = { itemID = 30232, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Gauntlets
			[5] = { itemID = 30234, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Nordrassil Wrath-Kilt
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 30141, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Rift Stalker Helm
			[2] = { itemID = 30143, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Rift Stalker Mantle
			[3] = { itemID = 30139, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Rift Stalker Hauberk
			[4] = { itemID = 30140, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Rift Stalker Gauntlets
			[5] = { itemID = 30142, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Rift Stalker Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 30206, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cowl of Tirisfal
			[2] = { itemID = 30210, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Mantle of Tirisfal
			[3] = { itemID = 30196, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Robes of Tirisfal
			[4] = { itemID = 30205, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Gloves of Tirisfal
			[5] = { itemID = 30207, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Leggings of Tirisfal
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			[1] = { itemID = 30125, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Faceguard
			[2] = { itemID = 30127, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Shoulderguards
			[3] = { itemID = 30123, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Chestguard
			[4] = { itemID = 30124, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Handguards
			[5] = { itemID = 30126, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			[1] = { itemID = 30131, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge War-Helm
			[2] = { itemID = 30133, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Shoulderbraces
			[3] = { itemID = 30129, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Breastplate
			[4] = { itemID = 30130, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Gauntlets
			[5] = { itemID = 30132, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			[1] = { itemID = 30136, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Greathelm
			[2] = { itemID = 30138, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Pauldrons
			[3] = { itemID = 30134, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Crystalforge Chestpiece
			[4] = { itemID = 30135, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Gloves
			[5] = { itemID = 30137, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Crystalforge Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			[1] = { itemID = 30152, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cowl of the Avatar
			[2] = { itemID = 30154, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Mantle of the Avatar
			[3] = { itemID = 30150, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Vestments of the Avatar
			[4] = { itemID = 30151, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Gloves of the Avatar
			[5] = { itemID = 30153, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Breeches of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			[1] = { itemID = 30161, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Hood of the Avatar
			[2] = { itemID = 30163, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Wings of the Avatar
			[3] = { itemID = 30159, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Shroud of the Avatar
			[4] = { itemID = 30160, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Handguards of the Avatar
			[5] = { itemID = 30162, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Leggings of the Avatar
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 30146, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Deathmantle Helm
			[2] = { itemID = 30149, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Deathmantle Shoulderpads
			[3] = { itemID = 30144, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Deathmantle Chestguard
			[4] = { itemID = 30145, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Deathmantle Handguards
			[5] = { itemID = 30148, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Deathmantle Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			[1] = { itemID = 30190, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Helm
			[2] = { itemID = 30194, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Shoulderplates
			[3] = { itemID = 30185, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Chestplate
			[4] = { itemID = 30189, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Gauntlets
			[5] = { itemID = 30192, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Legplates
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
			[1] = { itemID = 30166, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Headguard
			[2] = { itemID = 30168, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Shoulderguards
			[3] = { itemID = 30164, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Chestguard
			[4] = { itemID = 30165, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Gloves
			[5] = { itemID = 30167, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			[1] = { itemID = 30171, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Headpiece
			[2] = { itemID = 30173, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Shoulderpads
			[3] = { itemID = 30169, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Cataclysm Chestpiece
			[4] = { itemID = 30170, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Handgrips
			[5] = { itemID = 30172, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Cataclysm Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 30212, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Hood of the Corruptor
			[2] = { itemID = 30215, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Mantle of the Corruptor
			[3] = { itemID = 30214, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Robe of the Corruptor
			[4] = { itemID = 30211, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Gloves of the Corruptor
			[5] = { itemID = 30213, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Leggings of the Corruptor
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			[1] = { itemID = 30115, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Greathelm
			[2] = { itemID = 30117, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Shoulderguards
			[3] = { itemID = 30113, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Chestguard
			[4] = { itemID = 30114, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Handguards
			[5] = { itemID = 30116, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Legguards
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			[1] = { itemID = 14992, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Helmet
			[2] = { itemID = 14994, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Pauldrons
			[3] = { itemID = 14990, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Hauberk
			[4] = { itemID = 14991, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Gloves
			[5] = { itemID = 14993, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Leggings
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			[1] = { itemID = 30120, desc = "=ds=" ..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Battle-Helm
			[2] = { itemID = 30122, desc = "=ds=" ..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Shoulderblades
			[3] = { itemID = 30118, desc = "=ds=" ..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")" }; --Destroyer Breastplate
			[4] = { itemID = 30119, desc = "=ds=" ..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Gauntlets
			[5] = { itemID = 30121, desc = "=ds=" ..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")" }; --Destroyer Greaves
		};
	};

--------------
--- Tier 6 ---
--------------

	AtlasLoot_Data["T6"] = {
			Name = "Tier 6";
			Type = "BCRaid";
		{
			Name = "Druid".." - "..AL["Feral"];
			[1] = { itemID = 31039, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Cover
			[2] = { itemID = 31048, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Pauldrons
			[3] = { itemID = 31042, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Chestguard
			[4] = { itemID = 34444, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Wristguards
			[5] = { itemID = 31034, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Gauntlets
			[6] = { itemID = 34556, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Waistguard
			[7] = { itemID = 31044, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Leggings
			[8] = { itemID = 34573, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Treads
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			[1] = { itemID = 31037, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Helmet
			[2] = { itemID = 31047, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Spaulders
			[3] = { itemID = 31041, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Tunic
			[4] = { itemID = 34445, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Bracers
			[5] = { itemID = 31032, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Gloves
			[6] = { itemID = 34554, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Belt
			[7] = { itemID = 31045, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Legguards
			[8] = { itemID = 34571, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Boots
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			[1] = { itemID = 31040, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Headguard
			[2] = { itemID = 31049, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Shoulderpads
			[3] = { itemID = 31043, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Vest
			[4] = { itemID = 34446, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Bands
			[5] = { itemID = 31035, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Thunderheart Handguards
			[6] = { itemID = 34555, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Cord
			[7] = { itemID = 31046, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Thunderheart Pants
			[8] = { itemID = 34572, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Thunderheart Footwraps
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			[1] = { itemID = 31003, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Gronnstalker's Helmet
			[2] = { itemID = 31006, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Gronnstalker's Spaulders
			[3] = { itemID = 31004, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Gronnstalker's Chestguard
			[4] = { itemID = 34443, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Gronnstalker's Bracers
			[5] = { itemID = 31001, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Gronnstalker's Gloves
			[6] = { itemID = 34549, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Gronnstalker's Belt
			[7] = { itemID = 31005, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Gronnstalker's Leggings
			[8] = { itemID = 34570, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Gronnstalker's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			[1] = { itemID = 31056, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Cowl of the Tempest
			[2] = { itemID = 31059, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Mantle of the Tempest
			[3] = { itemID = 31057, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Robes of the Tempest
			[4] = { itemID = 34447, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Bracers of the Tempest
			[5] = { itemID = 31055, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Gloves of the Tempest
			[6] = { itemID = 34557, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Belt of the Tempest
			[7] = { itemID = 31058, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Leggings of the Tempest
			[8] = { itemID = 34574, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Boots of the Tempest
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			[1] = { itemID = 30987, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer Faceguard
			[2] = { itemID = 30998, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Shoulderguards
			[3] = { itemID = 30991, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Chestguard
			[4] = { itemID = 34433, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Wristguards
			[5] = { itemID = 30985, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer Handguards
			[6] = { itemID = 34488, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Waistguard
			[7] = { itemID = 30995, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Legguards
			[8] = { itemID = 34560, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			[1] = { itemID = 30989, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer War-Helm
			[2] = { itemID = 30997, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Shoulderbraces
			[3] = { itemID = 30990, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Breastplate
			[4] = { itemID = 34431, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Bands
			[5] = { itemID = 30982, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer Gauntlets
			[6] = { itemID = 34485, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Girdle
			[7] = { itemID = 30993, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Greaves
			[8] = { itemID = 34561, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			[1] = { itemID = 30988, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer Greathelm
			[2] = { itemID = 30996, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Pauldrons
			[3] = { itemID = 30992, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Chestpiece
			[4] = { itemID = 34432, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Bracers
			[5] = { itemID = 30983, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Lightbringer Gloves
			[6] = { itemID = 34487, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Belt
			[7] = { itemID = 30994, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Lightbringer Leggings
			[8] = { itemID = 34559, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Lightbringer Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			[1] = { itemID = 31063, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Cowl of Absolution
			[2] = { itemID = 31069, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Mantle of Absolution
			[3] = { itemID = 31066, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Vestments of Absolution
			[4] = { itemID = 34435, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Cuffs of Absolution
			[5] = { itemID = 31060, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Gloves of Absolution
			[6] = { itemID = 34527, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Belt of Absolution
			[7] = { itemID = 31068, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Breeches of Absolution
			[8] = { itemID = 34562, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Boots of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			[1] = { itemID = 31064, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Hood of Absolution
			[2] = { itemID = 31070, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Shoulderpads of Absolution
			[3] = { itemID = 31065, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Shroud of Absolution
			[4] = { itemID = 34434, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Bracers of Absolution
			[5] = { itemID = 31061, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Handguards of Absolution
			[6] = { itemID = 34528, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Cord of Absolution
			[7] = { itemID = 31067, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Leggings of Absolution
			[8] = { itemID = 34563, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Treads of Absolution
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			[1] = { itemID = 31027, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Slayer's Helm
			[2] = { itemID = 31030, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Slayer's Shoulderpads
			[3] = { itemID = 31028, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Slayer's Chestguard
			[4] = { itemID = 34448, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Slayer's Bracers
			[5] = { itemID = 31026, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Slayer's Handguards
			[6] = { itemID = 34558, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Slayer's Belt
			[7] = { itemID = 31029, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Slayer's Legguards
			[8] = { itemID = 34575, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Slayer's Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			[1] = { itemID = 31015, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Cover
			[2] = { itemID = 31024, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Pauldrons
			[3] = { itemID = 31018, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Tunic
			[4] = { itemID = 34439, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Wristguards
			[5] = { itemID = 31011, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Grips
			[6] = { itemID = 34545, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Girdle
			[7] = { itemID = 31021, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Pants
			[8] = { itemID = 34567, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Greaves
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
			[1] = { itemID = 31012, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Helmet
			[2] = { itemID = 31022, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Shoulderpads
			[3] = { itemID = 31016, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Chestguard
			[4] = { itemID = 34438, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Bracers
			[5] = { itemID = 31007, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Gloves
			[6] = { itemID = 34543, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Belt
			[7] = { itemID = 31019, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Leggings
			[8] = { itemID = 34565, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			[1] = { itemID = 31014, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Headguard
			[2] = { itemID = 31023, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Mantle
			[3] = { itemID = 31017, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Breastplate
			[4] = { itemID = 34437, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Bands
			[5] = { itemID = 31008, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Skyshatter Gauntlets
			[6] = { itemID = 34542, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Cord
			[7] = { itemID = 31020, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Skyshatter Legguards
			[8] = { itemID = 34566, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Skyshatter Treads
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			[1] = { itemID = 31051, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Hood of the Malefic
			[2] = { itemID = 31054, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Mantle of the Malefic
			[3] = { itemID = 31052, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Robe of the Malefic
			[4] = { itemID = 34436, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Bracers of the Malefic
			[5] = { itemID = 31050, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Gloves of the Malefic
			[6] = { itemID = 34541, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Belt of the Malefic
			[7] = { itemID = 31053, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Leggings of the Malefic
			[8] = { itemID = 34564, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Boots of the Malefic
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			[1] = { itemID = 30974, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Onslaught Greathelm
			[2] = { itemID = 30980, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Shoulderguards
			[3] = { itemID = 30976, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Chestguard
			[4] = { itemID = 34442, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Wristguards
			[5] = { itemID = 30970, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Onslaught Handguards
			[6] = { itemID = 34547, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Waistguard
			[7] = { itemID = 30978, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Legguards
			[8] = { itemID = 34568, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Boots
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			[1] = { itemID = 30972, desc = "=ds=" ..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Onslaught Battle-Helm
			[2] = { itemID = 30979, desc = "=ds=" ..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Shoulderblades
			[3] = { itemID = 30975, desc = "=ds=" ..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Breastplate
			[4] = { itemID = 34441, desc = "=ds=" ..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Bracers
			[5] = { itemID = 30969, desc = "=ds=" ..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")" }; --Onslaught Gauntlets
			[6] = { itemID = 34546, desc = "=ds=" ..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Belt
			[7] = { itemID = 30977, desc = "=ds=" ..BabbleBoss["The Illidari Council"].." ("..BabbleZone["Black Temple"]..")" }; --Onslaught Greaves
			[8] = { itemID = 34569, desc = "=ds=" ..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")" }; --Onslaught Treads
		};
	};


--------------------------------
--- The Burning Crusade Sets ---
--------------------------------

AtlasLoot_Data["TBCSets"] = {
	Name = AL["Burning Crusade Sets"];
	{
		Name = AL["Latro's Flurry"];
		[1] = { itemID = 34703, desc = "=ds=#h1#, #w10#, =q2=#n138# (#z30#)"  }; --Latro's Dancing Blade
		[2] = { itemID = 28189, desc = "=ds=#h1#, #w10#, =q2=#n139# (#z33#)"  }; --Latro's Shifting Sword
	};
	{
		Name = AL["The Twin Stars"];
		[1] = { itemID = 31338, desc = "=ds=#s2#", droprate = ".01%" }; --Charlotte's Ivy
		[2] = { itemID = 31339, desc = "=ds=#s13#", droprate = ".01%" }; --Lola's Eve
	};
	{
		Name = AL["The Fists of Fury"];
		[1] = { itemID = 32946, desc = "=ds=#h3#, #w13#"  }; --Claw of Molten Fury
		[2] = { itemID = 32945, desc = "=ds=#h4#, #w13#"  }; --Fist of Molten Fury
	};
	{
		Name = AL["The Twin Blades of Azzinoth"];
		[1] = { itemID = 32837, desc = "=ds=#h3#, #w10#, =q1=#m1# =ds=#c9#, #c6#"  }; --Warglaive of Azzinoth
		[2] = { itemID = 32838, desc = "=ds=#h4#, #w10#, =q1=#m1# =ds=#c9#, #c6#"  }; --Warglaive of Azzinoth
	};
};

--------------------------------
--- Badge of Justice Rewards ---
--------------------------------

AtlasLoot_Data["BadgeShatt"] = {
	Name = BabbleZone["Shattrath City"];
	{
		Name = BabbleInventory["Cloth"];
		[1] = { itemID = 32090, desc = "=ds=#s1#", cost = "50 #heroic#"  }; --Cowl of Naaru Blessings
		[2] = { itemID = 32089, desc = "=ds=#s1#", cost = "50 #heroic#"  }; --Mana-Binders Cowl
		[3] = { itemID = 33588, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Runed Spell-cuffs
		[4] = { itemID = 33589, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Wristguards of Tranquil Thought
		[5] = { itemID = 33587, desc = "=ds=#s9#", cost = "60 #heroic#"  }; --Light-Blessed Bonds
		[6] = { itemID = 33586, desc = "=ds=#s9#", cost = "60 #heroic#"  }; --Studious Wraps
		[7] = { itemID = 33291, desc = "=ds=#s10#", cost = "60 #heroic#"  }; --Voodoo-woven Belt
		[8] = { itemID = 33585, desc = "=ds=#s11#", cost = "75 #heroic#"  }; --Achromic Trousers of the Naaru
		[9] = { itemID = 33584, desc = "=ds=#s11#", cost = "75 #heroic#"  }; --Pantaloons of Arcane Annihilation
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = { itemID = 32088, desc = "=ds=#s1#", cost = "50 #heroic#"  }; --Cowl of Beastly Rage
		[2] = { itemID = 33972, desc = "=ds=#s1#", cost = "75 #heroic#"  }; --Mask of Primal Power
		[3] = { itemID = 32087, desc = "=ds=#s1#", cost = "50 #heroic#"  }; --Mask of the Deceiver
		[4] = { itemID = 33287, desc = "=ds=#s3#", cost = "60 #heroic#"  }; --Gnarled Ironwood Pauldrons
		[5] = { itemID = 33973, desc = "=ds=#s3#", cost = "60 #heroic#"  }; --Pauldrons of Tribal Fury
		[6] = { itemID = 33566, desc = "=ds=#s5#", cost = "75 #heroic#"  }; --Blessed Elunite Coverings
		[7] = { itemID = 33579, desc = "=ds=#s5#", cost = "75 #heroic#"  }; --Vestments of Hibernation
		[8] = { itemID = 33578, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Armwraps of the Kaldorei Protector
		[9] = { itemID = 33580, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Band of the Swift Paw
		[10] = { itemID = 33557, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Gargon's Bracers Peaceful Slumber
		[11] = { itemID = 33540, desc = "=ds=#s8#", cost = "35 #heroic#"  }; --Master Assassin Wristwraps
		[12] = { itemID = 33974, desc = "=ds=#s9#", cost = "60 #heroic#"  }; --Grasp of the Moonkin
		[13] = { itemID = 33539, desc = "=ds=#s9#", cost = "60 #heroic#"  }; --Trickster's Stickyfingers
		[14] = { itemID = 33559, desc = "=ds=#s10#", cost = "60 #heroic#"  }; --Starfire Waistband
		[15] = { itemID = 33583, desc = "=ds=#s10#", cost = "60 #heroic#"  }; --Waistguard of the Great Beast
		[16] = { itemID = 33552, desc = "=ds=#s11#", cost = "75 #heroic#"  }; --Pants of Splendid Recovery
		[17] = { itemID = 33538, desc = "=ds=#s11#", cost = "75 #heroic#"  }; --Shallow-grave Trousers
		[18] = { itemID = 33582, desc = "=ds=#s12#", cost = "60 #heroic#"  }; --Footwraps of Wild Encroachment
		[19] = { itemID = 33577, desc = "=ds=#s12#", cost = "60 #heroic#"  }; --Moon-walkers
		[20] = { itemID = 33222, desc = "=ds=#s12#", cost = "60 #heroic#"  }; --Nyn'jah's Tabi Boots
	};
	{
		Name = BabbleInventory["Mail"];
		[1] = { itemID = 32086, desc = "=ds=#s1#, #a3#", cost = "50 #heroic#"  }; --Storm Master's Helmet
		[2] = { itemID = 32085, desc = "=ds=#s1#, #a3#", cost = "50 #heroic#"  }; --Warpstalker Helm
		[3] = { itemID = 33970, desc = "=ds=#s3#, #a3#", cost = "60 #heroic#"  }; --Pauldrons of the Furious Elements
		[4] = { itemID = 33965, desc = "=ds=#s5#, #a3#", cost = "75 #heroic#"  }; --Hauberk of the Furious Elements
		[5] = { itemID = 33535, desc = "=ds=#s8#, #a3#", cost = "35 #heroic#"  }; --Earthquake Bracers
		[6] = { itemID = 33532, desc = "=ds=#s8#, #a3#", cost = "35 #heroic#"  }; --Gleaming Earthen Bracers
		[7] = { itemID = 33529, desc = "=ds=#s8#, #a3#", cost = "35 #heroic#"  }; --Steadying Bracers
		[8] = { itemID = 33528, desc = "=ds=#s9#, #a3#", cost = "60 #heroic#"  }; --Gauntlets of Sniping
		[9] = { itemID = 33534, desc = "=ds=#s9#, #a3#", cost = "60 #heroic#"  }; --Grips of Nature's Wrath
		[10] = { itemID = 33531, desc = "=ds=#s9#, #a3#", cost = "60 #heroic#"  }; --Polished Waterscale Gloves
		[11] = { itemID = 33386, desc = "=ds=#s10#, #a3#", cost = "60 #heroic#"  }; --Man'kin'do's Belt
		[12] = { itemID = 33536, desc = "=ds=#s10#, #a3#", cost = "60 #heroic#"  }; --Stormwrap
		[13] = { itemID = 33280, desc = "=ds=#s10#, #a3#", cost = "60 #heroic#"  }; --War-Feathered Loop
		[14] = { itemID = 33530, desc = "=ds=#s11#, #a3#", cost = "75 #heroic#"  }; --Natural Life Leggings
		[15] = { itemID = 33527, desc = "=ds=#s11#, #a3#", cost = "75 #heroic#"  }; --Shifting Camouflage Pants
		[16] = { itemID = 33537, desc = "=ds=#s12#, #a3#", cost = "60 #heroic#"  }; --Treads of Booming Thunder
		[17] = { itemID = 33324, desc = "=ds=#s12#, #a3#", cost = "60 #heroic#"  }; --Treads of Life Path
	};
	{
		Name = BabbleInventory["Plate"];
		[1] = { itemID = 33810, desc = "=ds=#s1#, #a4#", cost = "75 #heroic#"  }; --Amani Mask of Death
		[2] = { itemID = 32083, desc = "=ds=#s1#, #a4#", cost = "50 #heroic#"  }; --Faceguard of Determination
		[3] = { itemID = 32084, desc = "=ds=#s1#, #a4#", cost = "50 #heroic#"  }; --Helmet of the Steadfast Champion
		[4] = { itemID = 33514, desc = "=ds=#s3#, #a4#", cost = "60 #heroic#"  }; --Pauldrons of Gruesome Fate
		[5] = { itemID = 33522, desc = "=ds=#s5#, #a4#", cost = "75 #heroic#"  }; --Chestguard of the Stoic Guardian
		[6] = { itemID = 33516, desc = "=ds=#s8#, #a4#", cost = "35 #heroic#"  }; --Bracers of the Ancient Phalanx
		[7] = { itemID = 33513, desc = "=ds=#s8#, #a4#", cost = "35 #heroic#"  }; --Eternium Rage-shackles
		[8] = { itemID = 33520, desc = "=ds=#s8#, #a4#", cost = "35 #heroic#"  }; --Vambraces of the Naaru
		[9] = { itemID = 33517, desc = "=ds=#s9#, #a4#", cost = "60 #heroic#"  }; --Bonefist Gauntlets
		[10] = { itemID = 33512, desc = "=ds=#s9#, #a4#", cost = "60 #heroic#"  }; --Furious Deathgrips
		[11] = { itemID = 33519, desc = "=ds=#s9#, #a4#", cost = "60 #heroic#"  }; --Handguards of the Templar
		[12] = { itemID = 33331, desc = "=ds=#s10#, #a4#", cost = "60 #heroic#"  }; --Chain of Unleashed Rage
		[13] = { itemID = 33524, desc = "=ds=#s10#, #a4#", cost = "60 #heroic#"  }; --Girdle of the Protector
		[14] = { itemID = 33279, desc = "=ds=#s10#, #a4#", cost = "60 #heroic#"  }; --Iron-tusk Girdle
		[16] = { itemID = 33501, desc = "=ds=#s11#, #a4#", cost = "75 #heroic#"  }; --Bloodthirster's Greaves
		[17] = { itemID = 33518, desc = "=ds=#s11#, #a4#", cost = "75 #heroic#"  }; --High Justicar's Legplates
		[18] = { itemID = 33515, desc = "=ds=#s11#, #a4#", cost = "75 #heroic#"  }; --Unwavering Legguards
		[19] = { itemID = 33207, desc = "=ds=#s12#, #a4#", cost = "60 #heroic#"  }; --Implacable Guardian Sabatons
		[20] = { itemID = 33523, desc = "=ds=#s12#, #a4#", cost = "60 #heroic#"  }; --Sabatons of the Righteous Defender
	};
	{
		Name = BabbleInventory["Back"];
		[1] = { itemID = 29375, desc = "=ds=#s4#", cost = "25 #heroic#"  }; --Bishop's Cloak
		[2] = { itemID = 29382, desc = "=ds=#s4#", cost = "25 #heroic#"  }; --Blood Knight War Cloak
		[3] = { itemID = 35321, desc = "=ds=#s4#", cost = "60 #heroic#"  }; --Cloak of Arcane Alacrity
		[4] = { itemID = 33304, desc = "=ds=#s4#", cost = "60 #heroic#"  }; --Cloak of Subjugated Power
		[5] = { itemID = 35324, desc = "=ds=#s4#", cost = "60 #heroic#"  }; --Cloak of Swift Reprieve
		[6] = { itemID = 33484, desc = "=ds=#s4#", cost = "60 #heroic#"  }; --Dory's Embrace
		[7] = { itemID = 29385, desc = "=ds=#s4#", cost = "25 #heroic#"  }; --Farstrider Defender's Cloak
		[8] = { itemID = 33333, desc = "=ds=#s4#", cost = "60 #heroic#"  }; --Kharmaa's Shroud of Hope
		[9] = { itemID = 29369, desc = "=ds=#s4#", cost = "25 #heroic#"  }; --Shawl of Shifting Probabilities
		[10] = { itemID = 33593, desc = "=ds=#s4#", cost = "35 #heroic#"  }; --Slikk's Cloak of Placation
	};
	{
		Name = BabbleInventory["Totem"] .. "s - " .. BabbleInventory["Idol"] .. "s - " .. BabbleInventory["Libram"] .. "s";
		[1] = { itemID = 29390, cost = "15 #heroic#"  }; --Everbloom Idol
		[2] = { itemID = 33508, cost = "20 #heroic#"  }; --Idol of Budding Life
		[3] = { itemID = 33509, cost = "20 #heroic#"  }; --Idol of Terror
		[4] = { itemID = 33510, cost = "20 #heroic#"  }; --Idol of the Unseen Moon
		[5] = { itemID = 33506, cost = "20 #heroic#"  }; --Skycall Totem
		[6] = { itemID = 33507, cost = "20 #heroic#"  }; --Stonebreaker's Totem
		[7] = { itemID = 33505, cost = "20 #heroic#"  }; --Totem of Living Water
		[8] = { itemID = 29389, cost = "15 #heroic#"  }; --Totem of the Pulsing Earth
		[9] = { itemID = 33503, cost = "20 #heroic#"  }; --Libram of Divine Judgement
		[10] = { itemID = 33504, cost = "20 #heroic#"  }; --Libram of Divine Purpose
		[11] = { itemID = 33502, cost = "20 #heroic#"  }; --Libram of Mending
		[12] = { itemID = 29388, cost = "15 #heroic#"  }; --Libram of Repentance
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 29275, desc = "=ds=#h4#, #w4#", cost = "50 #heroic#"  }; --Searing Sunblade
		[2] = { itemID = 33192, desc = "=ds=#w12#", cost = "25 #heroic#"  }; --Carved Witch Doctor's Stick
		[3] = { itemID = 29266, desc = "=ds=#w8#", cost = "33 #heroic#"  }; --Azure-Shield of Coldarra
		[4] = { itemID = 29267, desc = "=ds=#w8#", cost = "33 #heroic#"  }; --Light-Bearer's Faith Shield
		[5] = { itemID = 29268, desc = "=ds=#w8#", cost = "33 #heroic#"  }; --Mazthoril Honor Shield
		[6] = { itemID = 33334, desc = "=ds=#s15#", cost = "35 #heroic#"  }; --Fetish of the Primal Gods
		[7] = { itemID = 29270, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Flametounge Seal
		[8] = { itemID = 29273, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Khadgar's Knapsack
		[9] = { itemID = 29272, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Orb of the Soul-Eater
		[10] = { itemID = 29269, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Sapphiron's Wing Bone
		[11] = { itemID = 29271, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Talisman of Kalecgos
		[12] = { itemID = 29274, desc = "=ds=#s15#", cost = "25 #heroic#"  }; --Tears of Heaven
		[13] = { itemID = 33325, desc = "=ds=#s15#", cost = "35 #heroic#"  }; --Voodoo Shaker
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 33296, desc = "=ds=#s2#", cost = "35 #heroic#"  }; --Brooch of Deftness
		[2] = { itemID = 29381, desc = "=ds=#s2#", cost = "25 #heroic#"  }; --Choker of Vile Intent
		[3] = { itemID = 29374, desc = "=ds=#s2#", cost = "25 #heroic#"  }; --Necklace of Eternal Hope
		[4] = { itemID = 29368, desc = "=ds=#s2#", cost = "25 #heroic#"  }; --Manasurge Pendant
		[5] = { itemID = 29386, desc = "=ds=#s2#", cost = "25 #heroic#"  }; --Necklace of the Juggernaut
		[6] = { itemID = 29373, desc = "=ds=#s13#", cost = "25 #heroic#"  }; --Band of Halos
		[7] = { itemID = 29379, desc = "=ds=#s13#", cost = "25 #heroic#"  }; --Ring of Arathi Warlords
		[8] = { itemID = 29367, desc = "=ds=#s13#", cost = "25 #heroic#"  }; --Ring of Cryptic Dreams
		[9] = { itemID = 29384, desc = "=ds=#s13#", cost = "25 #heroic#"  }; --Ring of Unyielding Force
		[10] = { itemID = 23572, desc = "=ds=#e8#", cost = "10 #heroic#"  }; --Primal Nether
		[11] = { itemID = 32227, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Crimson Spinel
		[12] = { itemID = 32229, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Lionseye
		[13] = { itemID = 32249, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Seaspray Emerald
		[14] = { itemID = 35326, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Alacrity
		[15] = { itemID = 34049, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Audacity
		[16] = { itemID = 34163, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Cruelty
		[17] = { itemID = 34162, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Depravity
		[18] = { itemID = 33832, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Determination
		[19] = { itemID = 34050, desc = "=ds=#s14#", cost = "75 #heroic#"  }; --Battlemaster's Perseverance
		[20] = { itemID = 29383, desc = "=ds=#s14#", cost = "41 #heroic#"  }; --Bloodlust Brooch
		[21] = { itemID = 29376, desc = "=ds=#s14#", cost = "41 #heroic#"  }; --Essence of the Martyr
		[22] = { itemID = 29387, desc = "=ds=#s14#", cost = "41 #heroic#"  }; --Gnomeregan Auto-Blocker 600
		[23] = { itemID = 29370, desc = "=ds=#s14#", cost = "41 #heroic#"  }; --Icon of the Silver Crescent
		[24] = { itemID = 30183, desc = "=ds=#e8#", cost = "15 #heroic#"  }; --Nether Vortex
		[25] = { itemID = 32228, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Empyrean Sapphire
		[26] = { itemID = 32231, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Pyrestone
		[27] = { itemID = 32230, desc = "=ds=#e7#", cost = "15 #heroic#"  }; --Shadowsong Amethyst
	};
	{
		Name = AL["Fire Resistance Gear"];
		[1] = { icon = "INV_Box_01", name = "=q6=#a1#" };
		[2] = { itemID = 30762, desc = "=ds=#a1#, #s5#", cost = "30 #heroic#"  }; --Infernoweave Robe
		[3] = { itemID = 30764, desc = "=ds=#a1#, #s9#", cost = "20 #heroic#"  }; --Infernoweave Gloves
		[4] = { itemID = 30761, desc = "=ds=#a1#, #s11#", cost = "30 #heroic#"  }; --Infernoweave Leggings
		[5] = { itemID = 30763, desc = "=ds=#a1#, #s12#", cost = "20 #heroic#"  }; --Infernoweave Boots
		[7] = { icon = "INV_Box_01", name = "=q6=#a2#" };
		[8] = { itemID = 30776, desc = "=ds=#a2#, #s5#", cost = "30 #heroic#"  }; --Inferno Hardened Chestguard
		[9] = { itemID = 30780, desc = "=ds=#a2#, #s9#", cost = "20 #heroic#"  }; --Inferno Hardened Gloves
		[10] = { itemID = 30778, desc = "=ds=#a2#, #s11#", cost = "30 #heroic#"  }; --Inferno Hardened Leggings
		[11] = { itemID = 30779, desc = "=ds=#a2#, #s12#", cost = "20 #heroic#"  }; --Inferno Hardened Boots
		[13] = { itemID = 29434, desc = "=ds=#m17#"  }; --Badge of Justice
		[16] = { icon = "INV_Box_01", name = "=q6=#a3#" };
		[17] = { itemID = 30773, desc = "=ds=#a3#, #s5#", cost = "30 #heroic#"  }; --Inferno Forged Hauberk
		[18] = { itemID = 30774, desc = "=ds=#a3#, #s9#", cost = "20 #heroic#"  }; --Inferno Forged Gloves
		[19] = { itemID = 30772, desc = "=ds=#a3#, #s11#", cost = "30 #heroic#"  }; --Inferno Forged Leggings
		[20] = { itemID = 30770, desc = "=ds=#a3#, #s12#", cost = "20 #heroic#"  }; --Inferno Forged Boots
		[22] = { icon = "INV_Box_01", name = "=q6=#a4#" };
		[23] = { itemID = 30769, desc = "=ds=#a4#, #s5#", cost = "30 #heroic#"  }; --Inferno Tempered Chestguard
		[24] = { itemID = 30767, desc = "=ds=#a4#, #s9#", cost = "20 #heroic#"  }; --Inferno Tempered Gauntlets
		[25] = { itemID = 30766, desc = "=ds=#a4#, #s11#", cost = "30 #heroic#"  }; --Inferno Tempered Leggings
		[26] = { itemID = 30768, desc = "=ds=#a4#, #s12#", cost = "20 #heroic#"  }; --Inferno Tempered Boots
	};
};

AtlasLoot_Data["BadgeSunwell"] = {
	Name = AL["Sunwell Isle"];
	{
		Name = BabbleInventory["Cloth"];
		[1] = { itemID = 34924, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Gown of Spiritual Wonder
		[2] = { itemID = 34917, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Shroud of the Lore`nial
		[3] = { itemID = 34936, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Tormented Demonsoul Robes
		[4] = { itemID = 34938, desc = "=ds=#s9#", cost = "75 #heroic#"  }; --Enslaved Doomguard Soulgrips
		[5] = { itemID = 34925, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Adorned Supernal Legwraps
		[6] = { itemID = 34937, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Corrupted Soulcloth Pantaloons
		[7] = { itemID = 34918, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Legwraps of Sweltering Flame
		[8] = { itemID = 34919, desc = "=ds=#s12#", cost = "75 #heroic#"  }; --Boots of Incantations
		[9] = { itemID = 34926, desc = "=ds=#s12#", cost = "75 #heroic#"  }; --Slippers of Dutiful Mending
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = { itemID = 34906, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Embrace of Everlasting Prowess
		[2] = { itemID = 34903, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Embrace of Starlight
		[3] = { itemID = 34900, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Shroud of Nature's Harmony
		[4] = { itemID = 34927, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Tunic of the Dark Hour
		[5] = { itemID = 34904, desc = "=ds=#s9#", cost = "75 #heroic#"  }; --Barbed Gloves of the Sage
		[6] = { itemID = 34911, desc = "=ds=#s9#", cost = "75 #heroic#"  }; --Handwraps of the Aggressor
		[7] = { itemID = 34902, desc = "=ds=#s9#", cost = "75 #heroic#"  }; --Oakleaf-Spun Handguards
		[8] = { itemID = 34929, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Belt of the Silent Path
		[9] = { itemID = 34905, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Crystalwind Leggings
		[10] = { itemID = 34901, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Grovewalker's Leggings
		[11] = { itemID = 34910, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Tameless Breeches
		[12] = { itemID = 34928, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Trousers of the Scryers' Retainer
	};
	{
		Name = BabbleInventory["Mail"];
		[1] = { itemID = 34933, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Hauberk of Whirling Fury
		[2] = { itemID = 34912, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Scaled Drakeskin Chestguard
		[3] = { itemID = 34930, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Wave of Life Chestguard
		[4] = { itemID = 34916, desc = "=ds=#s9#", cost = "75 #heroic#"  }; --Gauntlets of Rapidity
		[5] = { itemID = 34935, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Aftershock Waistguard
		[6] = { itemID = 34932, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Clutch of the Soothing Breeze
		[7] = { itemID = 34914, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Leggings of the Pursuit
		[8] = { itemID = 34931, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Runed Scales of Antiquity
		[9] = { itemID = 34934, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Rushing Storm Kilt
	};
	{
		Name = BabbleInventory["Plate"];
		[1] = { itemID = 34942, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Breastplate of Ire
		[2] = { itemID = 34939, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Chestplate of Stoicism
		[3] = { itemID = 34921, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Ecclesiastical Cuirass
		[4] = { itemID = 34945, desc = "=ds=#s5#", cost = "100 #heroic#"  }; --Shattrath Protectorate's Breastplate
		[5] = { itemID = 34944, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Girdle of Seething Rage
		[6] = { itemID = 34941, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Girdle of the Fearless
		[7] = { itemID = 34923, desc = "=ds=#s10#", cost = "75 #heroic#"  }; --Waistguard of Reparation
		[8] = { itemID = 34922, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Greaves of Pacification
		[9] = { itemID = 34946, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Inscribed Legplates of the Aldor
		[10] = { itemID = 34943, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Legplates of Unending Fury
		[11] = { itemID = 34940, desc = "=ds=#s11#", cost = "100 #heroic#"  }; --Sunguard Legplates
		[12] = { itemID = 34947, desc = "=ds=#s12#", cost = "75 #heroic#"  }; --Blue's Greaves of the Righteous Guardian
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 34893, desc = "=ds=#h3#, #w13#", cost = "105 #heroic#"  }; --Vanir's Right Fist of Brutality
		[2] = { itemID = 34951, desc = "=ds=#h4#, #w13#", cost = "45 #heroic#"  }; --Vanir's Left Fist of Brutality
		[3] = { itemID = 34950, desc = "=ds=#h4#, #w13#", cost = "45 #heroic#"  }; --Vanir's Left Fist of Savagery
		[4] = { itemID = 34895, desc = "=ds=#h3#, #w4#", cost = "150 #heroic#"  }; --Scryer's Blade of Focus
		[5] = { itemID = 34894, desc = "=ds=#h1#, #w4#", cost = "105 #heroic#"  }; --Blade of Serration
		[6] = { itemID = 34949, desc = "=ds=#h4#, #w4#", cost = "45 #heroic#"  }; --Swift Blade of Uncertainty
		[7] = { itemID = 34952, desc = "=ds=#h4#, #w4#", cost = "45 #heroic#"  }; --The Mutilator
		[8] = { itemID = 34891, desc = "=ds=#h2#, #w1#", cost = "150 #heroic#"  }; --The Blade of Harbingers
		[9] = { itemID = 34896, desc = "=ds=#h3#, #w6#", cost = "150 #heroic#"  }; --Gavel of Naaru Blessings
		[10] = { itemID = 34898, desc = "=ds=#h2#, #w9#", cost = "150 #heroic#"  }; --Staff of the Forest Lord
		[11] = { itemID = 34892, desc = "=ds=#w3#", cost = "150 #heroic#"  }; --Crossbow of Relentless Strikes
	};
	{
		Name = AL["Accessories"];
		[1] = { itemID = 34887, desc = "=ds=#s13#", cost = "60 #heroic#"  }; --Angelista's Revenge
		[2] = { itemID = 34890, desc = "=ds=#s13#", cost = "60 #heroic#"  }; --Anveena's Touch
		[3] = { itemID = 34889, desc = "=ds=#s13#", cost = "60 #heroic#"  }; --Fused Nethergon Band
		[4] = { itemID = 34888, desc = "=ds=#s13#", cost = "60 #heroic#"  }; --Ring of the Stalwart Protector
	};
};


AtlasLoot_Data["HardModeArena"] = {
			Name = "Hardmode arena";
		{
			Name = "Hardmode arena";
			[1] = { itemID = 32811, desc = "=ds=#s8#, #a1#", cost = "25 #heroic#"  }; --Veteran's Dreadweave Cuffs
			[2] = { itemID = 32799, desc = "=ds=#s10#, #a1#", cost = "40 #heroic#"  }; --Veteran's Dreadweave Belt
			[3] = { itemID = 32787, desc = "=ds=#s12#, #a1#", cost = "40 #heroic#"  }; --Veteran's Dreadweave Stalkers
			[5] = { itemID = 32980, desc = "=ds=#s8#, #a1#", cost = "25 #heroic#"  }; --Veteran's Mooncloth Cuffs
			[6] = { itemID = 32979, desc = "=ds=#s10#, #a1#", cost = "40 #heroic#"  }; --Veteran's Mooncloth Belt
			[7] = { itemID = 32981, desc = "=ds=#s12#, #a1#", cost = "40 #heroic#"  }; --Veteran's Mooncloth Slippers
			[9] = { itemID = 32820, desc = "=ds=#s8#, #a1#", cost = "25 #heroic#"  }; --Veteran's Silk Cuffs
			[10] = { itemID = 32807, desc = "=ds=#s10#, #a1#", cost = "40 #heroic#"  }; --Veteran's Silk Belt
			[11] = { itemID = 32795, desc = "=ds=#s12#, #a1#", cost = "40 #heroic#"  }; --Veteran's Silk Footguards
			[16] = { itemID = 32810, desc = "=ds=#s8#, #a2#", cost = "25 #heroic#"  }; --Veteran's Dragonhide Bracers
			[17] = { itemID = 32798, desc = "=ds=#s10#, #a2#", cost = "40 #heroic#"  }; --Veteran's Dragonhide Belt
			[18] = { itemID = 32786, desc = "=ds=#s12#, #a2#", cost = "40 #heroic#"  }; --Veteran's Dragonhide Boots
			[20] = { itemID = 32812, desc = "=ds=#s8#, #a2#", cost = "25 #heroic#"  }; --Veteran's Kodohide Bracers
			[21] = { itemID = 32800, desc = "=ds=#s10#, #a2#", cost = "40 #heroic#"  }; --Veteran's Kodohide Belt
			[22] = { itemID = 32788, desc = "=ds=#s12#, #a2#", cost = "40 #heroic#"  }; --Veteran's Kodohide Boots
			[24] = { itemID = 32814, desc = "=ds=#s8#, #a2#", cost = "25 #heroic#"  }; --Veteran's Leather Bracers
			[25] = { itemID = 32802, desc = "=ds=#s10#, #a2#", cost = "40 #heroic#"  }; --Veteran's Leather Belt
			[26] = { itemID = 32790, desc = "=ds=#s12#, #a2#", cost = "40 #heroic#"  }; --Veteran's Leather Boots
			[28] = { itemID = 32821, desc = "=ds=#s8#, #a2#", cost = "25 #heroic#"  }; --Veteran's Wyrmhide Bracers
			[29] = { itemID = 32808, desc = "=ds=#s10#, #a2#", cost = "40 #heroic#"  }; --Veteran's Wyrmhide Belt
			[30] = { itemID = 32796, desc = "=ds=#s12#, #a2#", cost = "40 #heroic#"  }; --Veteran's Wyrmhide Boots
		};
	};

AtlasLoot_Data["HardModeArena2"] = {
	Name = "Hardmode arena2";
	{
		Name = "Hardmode arena2";
		[1] = { itemID = 32809, desc = "=ds=#s8#, #a3#", cost = "25 #heroic#"  }; --Veteran's Chain Bracers
		[2] = { itemID = 32797, desc = "=ds=#s10#, #a3#", cost = "40 #heroic#"  }; --Veteran's Chain Girdle
		[3] = { itemID = 32785, desc = "=ds=#s12#, #a3#", cost = "40 #heroic#"  }; --Veteran's Chain Sabatons
		[5] = { itemID = 32816, desc = "=ds=#s8#, #a3#", cost = "25 #heroic#"  }; --Veteran's Linked Bracers
		[6] = { itemID = 32803, desc = "=ds=#s10#, #a3#", cost = "40 #heroic#"  }; --Veteran's Linked Girdle
		[7] = { itemID = 32791, desc = "=ds=#s12#, #a3#", cost = "40 #heroic#"  }; --Veteran's Linked Sabatons
		[9] = { itemID = 32817, desc = "=ds=#s8#, #a3#", cost = "25 #heroic#"  }; --Veteran's Mail Bracers
		[10] = { itemID = 32804, desc = "=ds=#s10#, #a3#", cost = "40 #heroic#"  }; --Veteran's Mail Girdle
		[11] = { itemID = 32792, desc = "=ds=#s12#, #a3#", cost = "40 #heroic#"  }; --Veteran's Mail Sabatons
		[13] = { itemID = 32997, desc = "=ds=#s8#, #a3#", cost = "25 #heroic#"  }; --Veteran's Ringmail Bracers
		[14] = { itemID = 32998, desc = "=ds=#s10#, #a3#", cost = "40 #heroic#"  }; --Veteran's Ringmail Girdle
		[15] = { itemID = 32999, desc = "=ds=#s12#, #a3#", cost = "40 #heroic#"  }; --Veteran's Ringmail Sabatons
		[16] = { itemID = 32813, desc = "=ds=#s8#, #a4#", cost = "25 #heroic#"  }; --Veteran's Lamellar Bracers
		[17] = { itemID = 32801, desc = "=ds=#s10#, #a4#", cost = "40 #heroic#"  }; --Veteran's Lamellar Belt
		[18] = { itemID = 32789, desc = "=ds=#s12#, #a4#", cost = "40 #heroic#"  }; --Veteran's Lamellar Greaves
		[20] = { itemID = 32989, desc = "=ds=#s8#, #a4#", cost = "25 #heroic#"  }; --Veteran's Ornamented Bracers
		[21] = { itemID = 32988, desc = "=ds=#s10#, #a4#", cost = "40 #heroic#"  }; --Veteran's Ornamented Belt
		[22] = { itemID = 32990, desc = "=ds=#s12#, #a4#", cost = "40 #heroic#"  }; --Veteran's Ornamented Greaves
		[24] = { itemID = 32818, desc = "=ds=#s8#, #a4#", cost = "25 #heroic#"  }; --Veteran's Plate Bracers
		[25] = { itemID = 32805, desc = "=ds=#s10#, #a4#", cost = "40 #heroic#"  }; --Veteran's Plate Belt
		[26] = { itemID = 32793, desc = "=ds=#s12#, #a4#", cost = "40 #heroic#"  }; --Veteran's Plate Greaves
		[28] = { itemID = 32819, desc = "=ds=#s8#, #a4#", cost = "25 #heroic#"  }; --Veteran's Scaled Bracers
		[29] = { itemID = 32806, desc = "=ds=#s10#, #a4#", cost = "40 #heroic#"  }; --Veteran's Scaled Belt
		[30] = { itemID = 32794, desc = "=ds=#s12#, #a4#", cost = "40 #heroic#"  }; --Veteran's Scaled Greaves
	};
};

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsTBC"] = {
	Name = AL["BoE World Epics"];
	Type = "BCDungeon";
	{
		Name = AL["BoE World Epics"];
		[1] = { itemID = 31329, desc = "=ds=#s4#"  }; --Lifegiving Cloak
		[2] = { itemID = 31340, desc = "=ds=#s5#, #a1#"  }; --Will of Edward the Odd
		[3] = { itemID = 31343, desc = "=ds=#s11#, #a1#"  }; --Kamaei's Cerulean Skirt
		[4] = { itemID = 31333, desc = "=ds=#s1#, #a2#"  }; --The Night Watchman
		[5] = { itemID = 31335, desc = "=ds=#s11#, #a2#"  }; --Pants of Living Growth
		[6] = { itemID = 31330, desc = "=ds=#s1#, #a3#"  }; --Lightning Crown
		[7] = { itemID = 31328, desc = "=ds=#s11#, #a3#"  }; --Leggings of Beast Mastery
		[8] = { itemID = 31320, desc = "=ds=#s5#, #a4#"  }; --Chestguard of Exile
		[9] = { itemID = 31338, desc = "=ds=#s2#"  }; --Charlotte's Ivy
		[10] = { itemID = 31321, desc = "=ds=#s2#"  }; --Choker of Repentance
		[11] = { itemID = 31319, desc = "=ds=#s13#"  }; --Band of Impenetrable Defenses
		[12] = { itemID = 31339, desc = "=ds=#s13#"  }; --Lola's Eve
		[13] = { itemID = 31326, desc = "=ds=#s13#"  }; --Truestrike Ring
		[16] = { itemID = 31331, desc = "=ds=#h1#, #w4#"  }; --The Night Blade
		[17] = { itemID = 31336, desc = "=ds=#h3#, #w10#"  }; --Blade of Wizardry
		[18] = { itemID = 31332, desc = "=ds=#h1#, #w10#"  }; --Blinkstrike
		[19] = { itemID = 31318, desc = "=ds=#h2#, #w1#"  }; --Singing Crystal Axe
		[20] = { itemID = 31342, desc = "=ds=#h3#, #w6#"  }; --The Ancient Scepter of Sue-Min
		[21] = { itemID = 31322, desc = "=ds=#h2#, #w6#"  }; --The Hammer of Destiny
		[22] = { itemID = 31334, desc = "=ds=#h2#, #w9#"  }; --Staff of Natural Fury
		[23] = { itemID = 34622, desc = "=ds=#w11#"  }; --Spinesever
		[24] = { itemID = 31323, desc = "=ds=#w5#"  }; --Don Santos' Famous Hunting Rifle
	};
};

------------------------
--- World Bosses TBC ---
------------------------

AtlasLoot_Data["WorldBossesTBC"] = {
	Name = AL["World Bosses"];
	Type = "BCRaid";
	{
		Name = BabbleBoss["Doom Lord Kazzak"];
		[1] = { itemID = 30735, desc = "=ds=#s4#", droprate = "6.5%" }; --Ancient Spellcloak of the Highborne
		[2] = { itemID = 30734, desc = "=ds=#s11#, #a1#", droprate = "7.0%" }; --Leggings of the Seventh Circle
		[3] = { itemID = 30737, desc = "=ds=#s12#, #a2#", droprate = "1.1%" }; --Gold-Leaf Wildboots
		[4] = { itemID = 30739, desc = "=ds=#s11#, #a3#", droprate = "4.0%" }; --Scaled Greaves of the Marksman
		[5] = { itemID = 30740, desc = "=ds=#s3#, #a4#", droprate = "6.1%" }; --Ripfiend Shoulderplates
		[6] = { itemID = 30741, desc = "=ds=#s9#, #a4#", droprate = "7.0%" }; --Topaz-Studded Battlegrips
		[7] = { itemID = 30736, desc = "=ds=#s13#", droprate = "5.8%" }; --Ring of Flowing Light
		[8] = { itemID = 30738, desc = "=ds=#s13#", droprate = "3.4%" }; --Ring of Reciprocity
		[9] = { itemID = 30733, desc = "=ds=#h1#, #w10#", droprate = "6.7%" }; --Hope Ender
		[10] = { itemID = 30732, desc = "=ds=#h2#, #w9#", droprate = "7.1%" }; --Exodar Life-Staff
	};
	{
		Name = BabbleBoss["Doomwalker"];
		[1] = { itemID = 30729, desc = "=ds=#s4#", droprate = "9.6%" }; --Black-Iron Battlecloak
		[2] = { itemID = 30725, desc = "=ds=#s9#, #a1#", droprate = "7.9%" }; --Anger-Spark Gloves
		[3] = { itemID = 30727, desc = "=ds=#s11#, #a1#", droprate = "8.1%" }; --Gilded Trousers of Benediction
		[4] = { itemID = 30730, desc = "=ds=#s5#, #a2#", droprate = "8.8%" }; --Terrorweave Tunic
		[5] = { itemID = 30728, desc = "=ds=#s1#, #a3#", droprate = "6.2%" }; --Fathom-Helm of the Deeps
		[6] = { itemID = 30731, desc = "=ds=#s1#, #a4#", droprate = "8.1%" }; --Faceguard of the Endless Watch
		[7] = { itemID = 30726, desc = "=ds=#s2#", droprate = "0.9%" }; --Archaic Charm of Presence
		[8] = { itemID = 30723, desc = "=ds=#h3#, #w4#", droprate = "5.4%" }; --Talon of the Tempest
		[9] = { itemID = 30722, desc = "=ds=#h2#, #w1#", droprate = "6.0%" }; --Ethereum Nexus-Reaver
		[10] = { itemID = 30724, desc = "=ds=#w5#", droprate = "0.0%" }; --Barrel-Blade Longrifle
	}
};
