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

------------------------
--- Dungeons & BCRaids ---
------------------------

-- The scale of the sand rep rings
local scaleOfSandsRings = {
	Name = "Rings";
	{ 1, 29298, "", "Band of Eternity" };
	{ 2, 29299, "", "Band of Eternity" };
	{ 3, 29300, "", "Band of Eternity" };
	{ 4, 29301, "", "Band of the Eternal Champion" };
	{ 6, 29294, "", "Band of Eternity" };
	{ 7, 29295, "", "Band of Eternity" };
	{ 8, 29296, "", "Band of Eternity" };
	{ 9, 29297, "", "Band of the Eternal Defender" };
	{ 11, 15037, "", "Band of Eternity" };
	{ 12, 15038, "", "Band of Eternity" };
	{ 13, 15039, "", "Band of Eternity" };
	{ 14, 15040, "", "Flawless Band of the Eternal Assassin" };
	{ 16, 29302, "", "Band of Eternity" };
	{ 17, 29303, "", "Band of Eternity" };
	{ 18, 29304, "", "Band of Eternity" };
	{ 19, 29305, "", "Band of the Eternal Sage" };
	{ 21, 29307, "", "Band of Eternity" };
	{ 22, 29306, "", "Band of Eternity" };
	{ 23, 29308, "", "Band of Eternity" };
	{ 24, 29309, "", "Band of the Eternal Restorer" };
};

------------
--- Keys ---
------------

AtlasLoot_Data["BCKeys"] = {
	Name = "BCKeys";
	{
		Name = "BCKeys";
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 27991, "", "Shadow Labyrinth Key" };
		{ 3, 28395, "", "Shattered Halls Key" };
		{ 4, 31084, "", "Key to the Arcatraz" };
		{ 6, 0, "INV_Box_01", "#j27#" };
		{ 7, 30622, "", "Flamewrought Key" };
		{ 8, 30637, "", "Flamewrought Key" };
		{ 9, 30623, "", "Reservoir Key" };
		{ 10, 30633, "", "Auchenai Key" };
		{ 11, 30635, "", "Key of Time" };
		{ 12, 30634, "", "Warpforged Key" };
		{ 16, 0, "INV_Box_01", "=q6=#j2#" };
		{ 17, 24490, "", "The Master's Key" };
		{ 19, 0, "INV_Box_01", "=q6=#m20#" };
		{ 20, 32092, "", "The Eye of Haramad" };
		{ 21, 32449, "", "Essence-Infused Moonstone" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 27410, "", "Collar of Command", droprate = "13%" };
		{ 3, 27409, "", "Raven-Heart Headdress", droprate = "11%" };
		{ 4, 27408, "", "Hope Bearer Helm", droprate = "15%" };
		{ 5, 26055, "", "Oculus of the Hidden Eye", droprate = "15%" };
		{ 6, 25964, "", "Shaarde the Lesser", droprate = "11%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30587, "", "Champion's Fire Opal", droprate = "11%" };
		{ 19, 30588, "", "Potent Fire Opal", droprate = "1%" };
		{ 20, 30586, "", "Seer's Chrysoprase", droprate = "11%" };
		{ 22, 27866, "", "Scintillating Headdress of Second Sight", droprate = "15%" };
		{ 23, 27493, "", "Gloves of the Deadwatcher", droprate = "10%" };
		{ 24, 27865, "", "Bracers of Shirrak", droprate = "21%" };
		{ 25, 27845, "", "Magma Plume Boots", droprate = "23%" };
		{ 26, 27847, "", "Fanblade Pauldrons", droprate = "6%" };
		{ 27, 27846, "", "Claw of the Watcher", droprate = "6%" };
	};
	{
		Name = BabbleBoss["Exarch Maladaar"];
		{ 1, 0, "INV_Box_01", "#j27#" };
		{ 2, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 3, 29354, "", "Light-Touched Stole of Altruism", droprate = "6%" };
		{ 4, 29257, "", "Sash of Arcane Visions", droprate = "6%" };
		{ 5, 29244, "", "Wave-Song Girdle", droprate = "20%" };
		{ 7, 27867, "", "Boots of the Unjust", droprate = "3%" };
		{ 8, 27871, "", "Maladaar's Blessed Chaplet", droprate = "18%" };
		{ 9, 27869, "", "Soulpriest's Ring of Resolve", droprate = "18%" };
		{ 10, 27523, "", "Exarch's Diamond Band", droprate = "13%" };
		{ 11, 27872, "", "The Harvester of Souls", droprate = "11%" };
		{ 13, 33836, "", "The Exarch's Soul Gem", droprate = "100%" };
		{ 16, 30587, "", "Champion's Fire Opal", droprate = "11%" };
		{ 17, 30588, "", "Potent Fire Opal", droprate = "1%" };
		{ 18, 30586, "", "Seer's Chrysoprase", droprate = "11%" };
		{ 20, 427870, "", "Doomplate Legguards", droprate = "3%" };
		{ 22, 0, "INV_Box_01", "=q6=#j1#" };
		{ 23, 27411, "", "Slippers of Serenity", "8.14%" };
		{ 24, 27415, "", "Darkguard Face Mask", droprate = "11%" };
		{ 25, 27414, "", "Mok'Nathal Beast-Mask", droprate = "11%" };
		{ 26, 27413, "", "Ring of the Exarchs", droprate = "10%" };
		{ 27, 27416, "", "Fetish of the Fallen", droprate = "12%" };
		{ 28, 27412, "", "Ironstaff of Regeneration", droprate = "11%" };
	};
	{
		Name = AL["Avatar of the Martyred"];
		{ 1, 27878, "", "Auchenai Death Shroud", droprate = "4%" };
		{ 2, 28268, "", "Natural Mender's Wraps", droprate = "3%" };
		{ 3, 27876, "", "Will of the Fallen Exarch", droprate = "5%" };
		{ 4, 27937, "", "Sky Breaker", droprate = "3%" };
		{ 5, 27877, "", "Draenic Wildstaff", droprate = "4%" };
		{ 7, 27797, "", "Wastewalker Shoulderpads", droprate = "3%" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 25941, "", "Boots of the Outlander", droprate = "10%" };
		{ 3, 25942, "", "Faith Bearer's Gauntlets", droprate = "11%" };
		{ 4, 25940, "", "Idol of the Claw", droprate = "12%" };
		{ 5, 25943, "", "Creepjacker", droprate = "14%" };
		{ 6, 28166, "", "Shield of the Void", droprate = "10%" };
		{ 7, 25939, "", "Voidfire Wand", droprate = "13%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30584, "", "Enscribed Fire Opal", droprate = "0.08%" };
		{ 19, 30585, "", "Glistening Fire Opal", droprate = "6%" };
		{ 20, 30583, "", "Timeless Chrysoprase", droprate = "9%" };
		{ 22, 27816, "", "Mindrage Pauldrons", droprate = "13%" };
		{ 23, 27818, "", "Starry Robes of the Crescent", droprate = "11%" };
		{ 24, 27813, "", "Boots of the Colossus", droprate = "13%" };
		{ 25, 27815, "", "Totem of the Astral Winds", droprate = "2%" };
		{ 26, 27814, "", "Twinblade of Mastery", droprate = "6%" };
		{ 27, 27817, "", "Starbolt Longbow", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Tavarok"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 25945, "", "Cloak of Revival", droprate = "8%" };
		{ 3, 25946, "", "Nethershade Boots", droprate = "11%" };
		{ 4, 25947, "", "Lightning-Rod Pauldrons", droprate = "11%" };
		{ 5, 25952, "", "Scimitar of the Nexus-Stalkers", droprate = "12%" };
		{ 6, 25944, "", "Shaarde the Greater", droprate = "9%" };
		{ 7, 25950, "", "Staff of Polarities", droprate = "9%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30584, "", "Enscribed Fire Opal", droprate = "0.08%" };
		{ 19, 30585, "", "Glistening Fire Opal", droprate = "6%" };
		{ 20, 30583, "", "Timeless Chrysoprase", droprate = "9%" };
		{ 22, 27824, "", "Robe of the Great Dark Beyond", droprate = "9%" };
		{ 23, 27821, "", "Extravagant Boots of Malice", droprate = "9%" };
		{ 24, 27825, "", "Predatory Gloves", droprate = "15%" };
		{ 25, 27826, "", "Mantle of the Sea Wolf", droprate = "3%" };
		{ 26, 27823, "", "Shard Encrusted Breastplate", droprate = "15%" };
		{ 27, 27822, "", "Crystal Band of Valor", droprate = "15%" };
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"];
		{ 1, 25957, "", "Ethereal Boots of the Skystrider", droprate = "11%" };
		{ 2, 25955, "", "Mask of the Howling Storm", droprate = "12%" };
		{ 3, 25956, "", "Nexus-Bracers of Vigor", droprate = "10%" };
		{ 4, 25954, "", "Sigil of Shaffar", droprate = "12%" };
		{ 5, 25962, "", "Longstrider's Loop", droprate = "12%" };
		{ 6, 25953, "", "Ethereal Warp-Bow", droprate = "14%" };
		{ 8, 22921, "", "Recipe: Major Frost Protection Potion", "0.85%" };
		{ 10, 28490, "", "Shaffar's Wrappings", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Nexus-Prince Shaffar"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 29240, "", "Bands of Negation", droprate = "3%" };
		{ 3, 30535, "", "Forestwalker Kilt", droprate = "27%" };
		{ 4, 29352, "", "Cobalt Band of Tyrigosa", droprate = "0.21%" };
		{ 5, 32082, "", "The Fel Barrier" };
		{ 7, 27831, "", "Mantle of the Unforgiven", droprate = "9%" };
		{ 8, 27843, "", "Glyph-Lined Sash", droprate = "10.%" };
		{ 9, 27827, "", "Lucid Dream Bracers" };
		{ 10, 27835, "", "Stillwater Girdle", droprate = "6%" };
		{ 11, 27844, "", "Pauldrons of Swift Retribution", droprate = "8%" };
		{ 12, 27798, "", "Gauntlets of Vindication", droprate = "11.%" };
		{ 14, 33835, "", "Shaffar's Wondrous Amulet", droprate = "100%" };
		{ 15, 28490, "", "Shaffar's Wrappings", droprate = "100%" };
		{ 16, 30584, "", "Enscribed Fire Opal", droprate = "0.08%" };
		{ 17, 30585, "", "Glistening Fire Opal", droprate = "6%" };
		{ 18, 30583, "", "Timeless Chrysoprase", droprate = "9%" };
		{ 20, 27837, "", "Wastewalker Leggings", droprate = "3%" };
		{ 22, 27828, "", "Warp-Scarab Brooch", droprate = "30%" };
		{ 23, 28400, "", "Warp-Storm Warblade" };
		{ 24, 27829, "", "Axe of the Nexus-Kings", droprate = "9%" };
		{ 25, 27840, "", "Scepter of Sha'tar" };
		{ 26, 27842, "", "Grand Scepter of the Nexus-Kings", droprate = "9%" };
		{ 28, 22921, "", "Recipe: Major Frost Protection Potion", droprate = "2%" };
	};
	{
		Name = AL["Yor"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 31919, "", "Nexus-Prince's Ring of Balance" };
		{ 3, 31920, "", "Shaffar's Band of Brutality" };
		{ 4, 31921, "", "Yor's Collapsing Band" };
		{ 5, 31922, "", "Ring of Conflict Survival" };
		{ 6, 31923, "", "Band of the Crystalline Void" };
		{ 7, 31924, "", "Yor's Revenge" };
		{ 9, 31554, "", "Windchanneller's Tunic" };
		{ 10, 31562, "", "Skystalker's Tunic" };
		{ 11, 31570, "", "Mistshroud Tunic" };
		{ 12, 31578, "", "Slatesteel Breastplate" };
		{ 16, 30584, "", "Enscribed Fire Opal", droprate = "0.08%" };
		{ 17, 30585, "", "Glistening Fire Opal", droprate = "6%" };
		{ 18, 30583, "", "Timeless Chrysoprase", droprate = "9%" };
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
		{ 1, 27919, "", "Light-Woven Slippers", droprate = "13%" };
		{ 2, 27914, "", "Moonstrider Boots", droprate = "12%" };
		{ 3, 27915, "", "Sky-Hunter Swift Boots", droprate = "11%" };
		{ 4, 27918, "", "Bands of Syth", droprate = "11%" };
		{ 5, 27917, "", "Libram of the Eternal Rest", droprate = "14%" };
		{ 6, 27916, "", "Sethekk Feather-Darts", droprate = "11%" };
		{ 8, 24160, "", "Design: Khorium Inferno Band", droprate = "0.29%" };
		{ 10, 27633, "", "Terokk's Mask", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30553, "", "Pristine Fire Opal", droprate = "15%" };
		{ 19, 30554, "", "Stalwart Fire Opal", droprate = "10%" };
		{ 20, 30552, "", "Blessed Tanzanite", droprate = "0.18%" };
		{ 22, 25461, "", "Book of Forgotten Names", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Anzu"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 32768, "", "Reins of the Raven Lord" };
		{ 3, 30553, "", "Pristine Fire Opal", droprate = "15%" };
		{ 4, 30554, "", "Stalwart Fire Opal", droprate = "10%" };
		{ 5, 30552, "", "Blessed Tanzanite", droprate = "0.18%" };
		{ 7, 32769, "", "Belt of the Raven Lord" };
		{ 8, 32778, "", "Boots of Righteous Fortitude" };
		{ 9, 32779, "", "Band of Frigid Elements" };
		{ 10, 32781, "", "Talon of Anzu" };
		{ 11, 32780, "", "The Boomstick" };
	};
	{
		Name = BabbleBoss["Talon King Ikiss"];
		{ 1, 27948, "", "Trousers of Oblivion", droprate = "8%" };
		{ 2, 27838, "", "Incanter's Trousers", droprate = "9%" };
		{ 3, 27875, "", "Hallowed Trousers", droprate = "10%" };
		{ 4, 27776, "", "Shoulderpads of Assassination", droprate = "10%" };
		{ 5, 27936, "", "Greaves of Desolation", droprate = "12%" };
		{ 7, 27946, "", "Avian Cloak of Feathers", droprate = "10%" };
		{ 8, 27981, "", "Sethekk Oracle Cloak", droprate = "10%" };
		{ 9, 27985, "", "Deathforge Girdle", droprate = "9%" };
		{ 10, 27925, "", "Ravenclaw Band", droprate = "12%" };
		{ 11, 27980, "", "Terokk's Nightmace", droprate = "11%" };
		{ 12, 27986, "", "Crow Wing Reaper", droprate = "8%" };
		{ 14, 27632, "", "Terokk's Quill", droprate = "100%" };
		{ 15, 27991, "", "Shadow Labyrinth Key", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30553, "", "Pristine Fire Opal", droprate = "15%" };
		{ 19, 30554, "", "Stalwart Fire Opal", droprate = "10%" };
		{ 20, 30552, "", "Blessed Tanzanite", droprate = "0.18%" };
		{ 22, 29249, "", "Bands of the Benevolent", droprate = "4%" };
		{ 23, 29259, "", "Bracers of the Hunt", droprate = "7%" };
		{ 24, 32073, "", "Spaulders of Dementia" };
		{ 25, 29355, "", "Terokk's Shadowstaff", droprate = "0.16%" };
		{ 27, 33834, "", "The Headfeathers of Ikiss", droprate = "100%" };
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
		{ 1, 27889, "", "Jaedenfire Gloves of Annihilation", droprate = "13%" };
		{ 2, 27888, "", "Dream-Wing Helm", droprate = "11%" };
		{ 3, 27884, "", "Ornate Boots of the Sanctified", droprate = "13%" };
		{ 4, 27886, "", "Idol of the Emerald Queen", droprate = "12%" };
		{ 5, 27887, "", "Platinum Shield of the Valorous", droprate = "10%" };
		{ 6, 27885, "", "Soul-Wand of the Aldor", droprate = "13%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30563, "", "Regal Tanzanite", droprate = "16%" };
		{ 19, 30559, "", "Etched Fire Opal", droprate = "17%" };
		{ 20, 30560, "", "Rune Covered Chrysoprase", droprate = "15%" };
	};
	{
		Name = BabbleBoss["Blackheart the Inciter"];
		{ 1, 27468, "", "Moonglade Handwraps", droprate = "6%" };
		{ 3, 27892, "", "Cloak of the Inciter", droprate = "16%" };
		{ 4, 27893, "", "Ornate Leggings of the Venerated", droprate = "13%" };
		{ 5, 28134, "", "Brooch of Hightened Potential", droprate = "10%" };
		{ 6, 27891, "", "Adamantine Figurine", droprate = "10%" };
		{ 7, 27890, "", "Wand of the Netherwing", droprate = "10%" };
		{ 9, 25728, "", "Pattern: Stylin' Purple Hat", droprate = "0.94%" };
		{ 11, 30808, "", "Book of Fel Names", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30563, "", "Regal Tanzanite", droprate = "16%" };
		{ 19, 30559, "", "Etched Fire Opal", droprate = "17%" };
		{ 20, 30560, "", "Rune Covered Chrysoprase", droprate = "15%" };
	};
	{
		Name = BabbleBoss["Grandmaster Vorpil"];
		{ 1, 27775, "", "Hallowed Pauldrons", droprate = "16%" };
		{ 3, 27897, "", "Breastplate of Many Graces", droprate = "12%" };
		{ 4, 27900, "", "Jewel of Charismatic Mystique", droprate = "16%" };
		{ 5, 27901, "", "Blackout Truncheon", droprate = "14%" };
		{ 6, 27898, "", "Wrathfire Hand-Cannon", droprate = "14%" };
		{ 8, 30827, "", "Lexicon Demonica", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30563, "", "Regal Tanzanite", droprate = "16%" };
		{ 19, 30559, "", "Etched Fire Opal", droprate = "17%" };
		{ 20, 30560, "", "Rune Covered Chrysoprase", droprate = "15%" };
	};
	{
		Name = BabbleBoss["Murmur"];
		{ 1, 24309, "", "Pattern: Spellstrike Pants", droprate = "0.37%" };
		{ 3, 27902, "", "Silent Slippers of Meditation", droprate = "12%" };
		{ 4, 27912, "", "Harness of the Deep Currents", droprate = "13%" };
		{ 5, 27913, "", "Whispering Blade of Slaying", droprate = "9%" };
		{ 6, 27905, "", "Greatsword of Horrid Dreams", droprate = "9%" };
		{ 7, 27903, "", "Sonic Spear", droprate = "11%" };
		{ 8, 27910, "", "Silvermoon Crest Shield", droprate = "12%" };
		{ 10, 27778, "", "Spaulders of Oblivion", droprate = "12%" };
		{ 11, 28232, "", "Robe of Oblivion", droprate = "10%" };
		{ 12, 28230, "", "Hallowed Garments", droprate = "11%" };
		{ 13, 27908, "", "Leggings of Assassination", droprate = "8%" };
		{ 14, 27909, "", "Tidefury Kilt", droprate = "13%" };
		{ 15, 27803, "", "Shoulderguards of the Bold", droprate = "9%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30563, "", "Regal Tanzanite", droprate = "16%" };
		{ 19, 30559, "", "Etched Fire Opal", droprate = "17%" };
		{ 20, 30560, "", "Rune Covered Chrysoprase", droprate = "15%" };
		{ 22, 30532, "", "Kirin Tor Master's Trousers", droprate = "11%" };
		{ 23, 29357, "", "Master Thief's Gloves" };
		{ 24, 29261, "", "Girdle of Ferocity", droprate = "3%"  };
		{ 25, 29353, "", "Shockwave Truncheon", droprate = "10%" };
		{ 27, 31722, "", "Murmur's Essence", droprate = "100%" };
		{ 28, 33840, "", "Murmur's Whisper", droprate = "100%" };
		Prev = "AuchShadowGrandmaster";

	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["Mana-Tombs"] };
		{ 2, 23615, "", "Plans: Swiftsteel Gloves", droprate = "0.52%" };
		{ 3, 22543, "", "Formula: Enchant Boots - Fortitude", droprate = "0.52%" };
		{ 5, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["Sethekk Halls"] };
		{ 6, 25731, "", "Pattern: Stylin' Crimson Hat", droprate = "0.46%" };
		{ 7, 29669, "", "Pattern: Shadow Armor Kit", droprate = "0.39%" };
		{ 9, 0, "INV_Box_01", "=q6=" .. AL["The Saga of Terokk"], "" .. BabbleZone["Sethekk Halls"] };
		{ 10, 27634, "", "The Saga of Terokk" };
		{ 16, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["Auchenai Crypts"] };
		{ 17, 23605, "", "Plans: Felsteel Gloves", droprate = "0.69%" };
		{ 18, 22544, "", "Formula: Enchant Boots - Dexterity", droprate = "0%" };
		{ 20, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["Shadow Labyrinth"] };
		{ 21, 23607, "", "Plans: Felsteel Helm", droprate = "0.61%" };
		{ 23, 0, "INV_Box_01", "=q6=" .. AL["First Fragment Guardian"], "" .. BabbleZone["Shadow Labyrinth"] };
		{ 24, 24514, "", "First Key Fragment", droprate = "100%" };
	};
};




--------------------
--- Black Temple ---
--------------------

AtlasLoot_Data["BlackTemple"] = {
	Name = BabbleZone["Black Temple"];
	Type = "BCRaid";
	Map = "BlackTemple";
	{
		Name = BabbleBoss["High Warlord Naj'entus"];
		{ 1, 32239, "", "Slippers of the Seacaller", droprate = "15%" };
		{ 2, 32240, "", "Guise of the Tidal Lurker", droprate = "16%" };
		{ 3, 32377, "", "Mantle of Darkness", droprate = "15%" };
		{ 4, 32241, "", "Helm of Soothing Currents", droprate = "10%" };
		{ 5, 32234, "", "Fists of Mukoa", droprate = "16%" };
		{ 6, 32242, "", "Boots of Oceanic Fury", droprate = "6%" };
		{ 7, 32232, "", "Eternium Shell Bracers", droprate = "16%" };
		{ 8, 32243, "", "Pearl Inlaid Boots", droprate = "10%" };
		{ 9, 32245, "", "Tide-stomper's Greaves", droprate = "7%" };
		{ 16, 32238, "", "Ring of Calming Waves", droprate = "16%" };
		{ 17, 32247, "", "Ring of Captured Storms", droprate = "16%" };
		{ 18, 32237, "", "The Maelstrom's Fury", droprate = "15%" };
		{ 19, 32236, "", "Rising Tide", droprate = "16%" };
		{ 20, 32248, "", "Halberd of Desolation", droprate = "16%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Supremus"];
		{ 1, 32256, "", "Waistwrap of Infinity", droprate = "16%" };
		{ 2, 32252, "", "Nether Shadow Tunic", droprate = "14%" };
		{ 3, 32259, "", "Bands of the Coming Storm", droprate = "6%" };
		{ 4, 32251, "", "Wraps of Precise Flight", droprate = "15%" };
		{ 5, 32258, "", "Naturalist's Preserving Cinch", droprate = "9%" };
		{ 6, 32250, "", "Pauldrons of Abyssal Fury", droprate = "16%" };
		{ 8, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 32260, "", "Choker of Endless Nightmares", droprate = "17%" };
		{ 17, 32261, "", "Band of the Abyssal Lord", droprate = "14%" };
		{ 18, 32257, "", "Idol of the White Stag", droprate = "15%" };
		{ 19, 32254, "", "The Brutalizer", droprate = "15%" };
		{ 20, 32262, "", "Syphon of the Nathrezim", droprate = "16%" };
		{ 21, 32255, "", "Felstone Bulwark", droprate = "15%" };
		{ 22, 32253, "", "Legionkiller", droprate = "16%" };
	};
	{
		Name = BabbleBoss["Shade of Akama"];
		{ 1, 32273, "", "Amice of Brilliant Light", droprate = "16%" };
		{ 2, 32270, "", "Focused Mana Bindings", droprate = "15%" };
		{ 3, 32513, "", "Wristbands of Divine Influence", droprate = "16%" };
		{ 4, 32265, "", "Shadow-walker's Cord", droprate = "16%" };
		{ 5, 32271, "", "Kilt of Immortal Nature", droprate = "14%" };
		{ 6, 32264, "", "Shoulders of the Hidden Predator", droprate = "16%" };
		{ 7, 32275, "", "Spiritwalker Gauntlets", droprate = "9%" };
		{ 8, 32276, "", "Flashfire Girdle", droprate = "5%" };
		{ 9, 32279, "", "The Seeker's Wristguards", droprate = "8%" };
		{ 10, 32278, "", "Grips of Silent Justice", droprate = "15%" };
		{ 11, 32263, "", "Praetorian's Legguards", droprate = "14%" };
		{ 12, 32268, "", "Myrmidon's Treads", droprate = "16%" };
		{ 16, 32266, "", "Ring of Deceitful Intent", droprate = "16%" };
		{ 17, 32361, "", "Blind-Seers Icon", droprate = "15%" };
		{ 19, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Teron Gorefiend"];
		{ 1, 32323, "", "Shadowmoon Destroyer's Drape", droprate = "17%" };
		{ 2, 32329, "", "Cowl of Benevolence", droprate = "17%" };
		{ 3, 32327, "", "Robe of the Shadow Council", droprate = "15%" };
		{ 4, 32324, "", "Insidious Bands", droprate = "17%" };
		{ 5, 32328, "", "Botanist's Gloves of Growth", droprate = "17%" };
		{ 6, 32510, "", "Softstep Boots of Tracking", droprate = "15%" };
		{ 7, 32280, "", "Gauntlets of Enforcement", droprate = "15%" };
		{ 8, 32512, "", "Girdle of Lordaeron's Fallen", droprate = "19%" };
		{ 16, 32330, "", "Totem of Ancestral Guidance", droprate = "13%" };
		{ 17, 32348, "", "Soul Cleaver", droprate = "19%" };
		{ 18, 32326, "", "Twisted Blades of Zarak", droprate = "11%" };
		{ 19, 32325, "", "Rifle of the Stoic Guardian", droprate = "14%" };
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Gurtogg Bloodboil"];
		{ 1, 32337, "", "Shroud of Forgiveness", droprate = "16%" };
		{ 2, 32338, "", "Blood-cursed Shoulderpads", droprate = "15%" };
		{ 3, 32340, "", "Garments of Temperance", droprate = "15%" };
		{ 4, 32339, "", "Belt of Primal Majesty", droprate = "14%" };
		{ 5, 32334, "", "Vest of Mounting Assault", droprate = "15%" };
		{ 6, 32342, "", "Girdle of Mighty Resolve", droprate = "8%" };
		{ 7, 32333, "", "Girdle of Stability", droprate = "16%" };
		{ 8, 32341, "", "Leggings of Divine Retribution", droprate = "14%" };
		{ 16, 32335, "", "Unstoppable Aggressor's Ring", droprate = "16%" };
		{ 17, 32501, "", "Shadowmoon Insignia", droprate = "15%" };
		{ 18, 32269, "", "Messenger of Fate", droprate = "16%" };
		{ 19, 32344, "", "Staff of Immaculate Recovery", droprate = "15%" };
		{ 20, 32343, "", "Wand of Prismatic Focus", droprate = "14%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = "Essence of Souls";
		{ 1, 32353, "", "Gloves of Unfailing Faith", droprate = "17%" };
		{ 2, 32351, "", "Elunite Empowered Bracers", droprate = "8%" };
		{ 3, 32347, "", "Grips of Damnation", droprate = "16%" };
		{ 4, 32352, "", "Naturewarden's Treads", droprate = "9%" };
		{ 5, 32517, "", "The Wavemender's Mantle", droprate = "17%" };
		{ 6, 32346, "", "Boneweave Girdle", droprate = "16%" };
		{ 7, 32354, "", "Crown of Empowered Fate", droprate = "16%" };
		{ 8, 32345, "", "Dreadboots of the Legion", droprate = "15%" };
		{ 16, 32349, "", "Translucent Spellthread Necklace", droprate = "16%" };
		{ 17, 32362, "", "Pendant of Titans", droprate = "15%" };
		{ 18, 32350, "", "Touch of Inspiration", droprate = "16%" };
		{ 19, 32332, "", "Torch of the Damned", droprate = "17%" };
		{ 20, 32363, "", "Naaru-Blessed Life Rod", droprate = "14%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Mother Shahraz"];
		{ 1, 32367, "", "Leggings of Devastation", droprate = "16%" };
		{ 2, 32366, "", "Shadowmaster's Boots", droprate = "15%" };
		{ 3, 32365, "", "Heartshatter Breastplate", droprate = "15%" };
		{ 4, 32370, "", "Nadina's Pendant of Purity", droprate = "15%" };
		{ 5, 32368, "", "Tome of the Lightbringer", droprate = "15%" };
		{ 6, 32369, "", "Blade of Savagery", droprate = "15%" };
		{ 16, 31101, "", "Pauldrons of the Forgotten Conqueror", droprate = "76%" };
		{ 17, 31103, "", "Pauldrons of the Forgotten Protector", droprate = "80%" };
		{ 18, 31102, "", "Pauldrons of the Forgotten Vanquisher", droprate = "77%" };
		{ 20, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["The Illidari Council"];
		{ 1, 32331, "", "Cloak of the Illidari Council", droprate = "16%" };
		{ 2, 32519, "", "Belt of Divine Guidance", droprate = "16%" };
		{ 3, 32518, "", "Veil of Turning Leaves", droprate = "12%" };
		{ 4, 32376, "", "Forest Prowler's Helm", droprate = "17%" };
		{ 5, 32373, "", "Helm of the Illidari Shatterer", droprate = "17%" };
		{ 6, 32505, "", "Madness of the Betrayer", droprate = "16%" };
		{ 16, 31098, "", "Leggings of the Forgotten Conqueror", droprate = "34%" };
		{ 17, 31100, "", "Leggings of the Forgotten Protector", droprate = "33%" };
		{ 18, 31099, "", "Leggings of the Forgotten Vanquisher", droprate = "34%" };
		{ 20, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Illidan Stormrage"];
		{ 1, 32524, "", "Shroud of the Highborne", droprate = "16%" };
		{ 2, 32525, "", "Cowl of the Illidari High Lord", droprate = "15%" };
		{ 3, 32235, "", "Cursed Vision of Sargeras", droprate = "16%" };
		{ 4, 32521, "", "Faceplate of the Impenetrable", droprate = "14%" };
		{ 5, 32497, "", "Stormrage Signet Ring", droprate = "15%" };
		{ 6, 32483, "", "The Skull of Gul'dan", droprate = "16%" };
		{ 7, 32496, "", "Memento of Tyrande", droprate = "15%" };
		{ 9, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 11, 32837, "", "Warglaive of Azzinoth", droprate = "4%" };
		{ 12, 32838, "", "Warglaive of Azzinoth", droprate = "4%" };
		{ 16, 31089, "", "Chestguard of the Forgotten Conqueror", droprate = "78%" };
		{ 17, 31091, "", "Chestguard of the Forgotten Protector", droprate = "79%" };
		{ 18, 31090, "", "Chestguard of the Forgotten Vanquisher", droprate = "78%" };
		{ 20, 32471, "", "Shard of Azzinoth", droprate = "16%" };
		{ 21, 32500, "", "Crystal Spire of Karabor", droprate = "15%" };
		{ 22, 32374, "", "Zhar'doom, Greatstaff of the Devourer", droprate = "14%" };
		{ 23, 32375, "", "Bulwark of Azzinoth", droprate = "14%" };
		{ 24, 32336, "", "Black Bow of the Betrayer", droprate = "16%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 32590, "", "Nethervoid Cloak", droprate = "1%" };
		{ 2, 34012, "", "Shroud of the Final Stand", droprate = "1%" };
		{ 3, 32609, "", "Boots of the Divine Light", droprate = "1%" };
		{ 4, 32593, "", "Treads of the Den Mother", droprate = "1%" };
		{ 5, 32592, "", "Chestguard of Relentless Storms", droprate = "1%" };
		{ 6, 32608, "", "Pillager's Gauntlets", droprate = "1%" };
		{ 7, 32606, "", "Girdle of the Lightbearer", droprate = "1%" };
		{ 8, 32591, "", "Choker of Serrated Blades", droprate = "1%" };
		{ 9, 32589, "", "Hellfire-Encased Pendant", droprate = "1%" };
		{ 10, 32526, "", "Band of Devastation", droprate = "1%" };
		{ 11, 32528, "", "Blessed Band of Karabor", droprate = "1%" };
		{ 12, 32527, "", "Ring of Ancient Knowledge", droprate = "2%" };
		{ 16, 34009, "", "Hammer of Judgement", droprate = "1%" };
		{ 17, 32943, "", "Swiftsteel Bludgeon", droprate = "2%" };
		{ 18, 34011, "", "Illidari Runeshield", droprate = "1%" };
		{ 20, 32228, "", "Empyrean Sapphire", droprate = "12%" };
		{ 21, 32231, "", "Pyrestone", droprate = "8%" };
		{ 22, 32229, "", "Lionseye", droprate = "6%" };
		{ 23, 32249, "", "Seaspray Emerald", droprate = "9%" };
		{ 24, 32230, "", "Shadowsong Amethyst", droprate = "6%" };
		{ 25, 32227, "", "Crimson Spinel", droprate = "8%" };
		{ 27, 32428, "", "Heart of Darkness", droprate = "16%" };
		{ 28, 32897, "", "Mark of the Illidari", droprate = "27%" };
	};
	{
		Name = "BT Patterns/Plans";
		{ 1, 32738, "", "Plans: Dawnsteel Bracers" };
		{ 2, 32739, "", "Plans: Dawnsteel Shoulders" };
		{ 3, 32736, "", "Plans: Swiftsteel Bracers" };
		{ 4, 32737, "", "Plans: Swiftsteel Shoulders" };
		{ 5, 32748, "", "Pattern: Bindings of Lightning Reflexes" };
		{ 6, 32744, "", "Pattern: Bracers of Renewed Life" };
		{ 7, 32750, "", "Pattern: Living Earth Bindings" };
		{ 8, 32751, "", "Pattern: Living Earth Shoulders" };
		{ 9, 32749, "", "Pattern: Shoulders of Lightning Reflexes" };
		{ 10, 32745, "", "Pattern: Shoulderpads of Renewed Life" };
		{ 11, 32746, "", "Pattern: Swiftstrike Bracers" };
		{ 12, 32747, "", "Pattern: Swiftstrike Shoulders" };
		{ 16, 32754, "", "Pattern: Bracers of Nimble Thought" };
		{ 17, 32755, "", "Pattern: Mantle of Nimble Thought" };
		{ 18, 32753, "", "Pattern: Swiftheal Mantle" };
		{ 19, 32752, "", "Pattern: Swiftheal Wraps" };
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
		{ 1, 27423, "", "Cloak of Impulsiveness", droprate = "19%" };
		{ 2, 27418, "", "Stormreaver Shadow-Kilt", droprate = "18%" };
		{ 3, 27417, "", "Ravenwing Pauldrons", droprate = "18%" };
		{ 4, 27420, "", "Uther's Ceremonial Warboots", droprate = "17%" };
		{ 5, 27436, "", "Iron Band of the Unbreakable", droprate = "15%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30589, "", "Dazzling Chrysoprase", droprate = "0.66%" };
		{ 19, 30591, "", "Empowered Fire Opal", droprate = "0.24%" };
		{ 20, 30590, "", "Enduring Chrysoprase", droprate = "0.10%" };
		{ 22, 28212, "", "Aran's Sorcerous Slacks", droprate = "11%" };
		{ 23, 28214, "", "Grips of the Lunar Eclipse", droprate = "2%" };
		{ 24, 28215, "", "Mok'Nathal Mask of Battle", droprate = "11%" };
		{ 25, 28211, "", "Lieutenant's Signet of Lordaeron", droprate = "5%" };
		{ 26, 28213, "", "Lordaeron Medical Guide", droprate = "8%" };
		{ 27, 28210, "", "Bloodskull Destroyer", droprate = "5%" };
	};
	{
		Name = BabbleBoss["Captain Skarloc"];
		{ 1, 27428, "", "Stormfront Gauntlets", droprate = "19%" };
		{ 2, 27430, "", "Scaled Greaves of Patience", droprate = "19%" };
		{ 3, 27427, "", "Durotan's Battle Harness", droprate = "14%" };
		{ 4, 27424, "", "Amani Venom-Axe", droprate = "18%" };
		{ 5, 27426, "", "Northshire Battlemace", droprate = "15%" };
		{ 7, 22927, "", "Recipe: Ironshield Potion", droprate = "1%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30589, "", "Dazzling Chrysoprase", droprate = "0.66%" };
		{ 19, 30591, "", "Empowered Fire Opal", droprate = "0.24%" };
		{ 20, 30590, "", "Enduring Chrysoprase", droprate = "0.10%" };
		{ 22, 28218, "", "Pontiff's Pantaloons of Prophecy", droprate = "18%" };
		{ 23, 28220, "", "Moon-Crown Antlers", droprate = "0.14%" };
		{ 24, 28219, "", "Emerald-Scale Greaves", droprate = "3%" };
		{ 25, 28221, "", "Boots of the Watchful Heart", droprate = "0.52%" };
		{ 26, 28217, "", "Tarren Mill Vitality Locket", droprate = "9%" };
		{ 27, 28216, "", "Dathrohan's Ceremonial Hammer", droprate = "6%" };
	};
	{
		Name = BabbleBoss["Epoch Hunter"];
		{ 1, 27433, "", "Pauldrons of Sufferance", droprate = "19%" };
		{ 2, 27434, "", "Mantle of Perenolde", droprate = "16%" };
		{ 3, 27440, "", "Diamond Prism of Recurrence", droprate = "16%" };
		{ 4, 27432, "", "Broxigar's Ring of Valor", droprate = "16%" };
		{ 5, 27431, "", "Time-Shifted Dagger", droprate = "14%" };
		{ 6, 0, "INV_Box_01", "#j27#" };
		{ 7, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 8, 29250, "", "Cord of Sanctification" };
		{ 9, 29246, "", "Nightfall Wristguards" };
		{ 10, 29357, "", "Master Thief's Gloves", droprate = "10%" };
		{ 11, 30534, "", "Wyrmscale Greaves" };
		{ 12, 30536, "", "Greaves of the Martyr", droprate = "15%" };
		{ 13, 27911, "", "Epoch's Whispering Cinch", droprate = "10%" };
		{ 14, 28344, "", "Wyrmfury Pauldrons", droprate = "0.24%" };
		{ 15, 28233, "", "Necklace of Resplendent Hope", droprate = "15%" };
		{ 16, 27904, "", "Resounding Ring of Glory", droprate = "0.17%" };
		{ 17, 28227, "", "Sparking Arcanite Ring", droprate = "0.24%" };
		{ 18, 28223, "", "Arcanist's Stone", droprate = "10%" };
		{ 19, 28226, "", "Timeslicer", droprate = "5%" };
		{ 20, 28222, "", "Reaver of the Infinites", droprate = "0%" };
		{ 21, 30589, "", "Dazzling Chrysoprase", droprate = "0.66%" };
		{ 22, 30591, "", "Empowered Fire Opal", droprate = "0.24%" };
		{ 23, 30590, "", "Enduring Chrysoprase", droprate = "0.10%" };
		{ 24, 24173, "", "Design: Circlet of Arcane Might", droprate = "0.10%" };
		{ 25, 28191, "", "Mana-Etched Vestments", droprate = "0.24%" };
		{ 26, 28224, "", "Wastewalker Helm", droprate = "0.24%" };
		{ 27, 28401, "", "Hauberk of Desolation", droprate = "0.14%" };
		{ 28, 28225, "", "Doomplate Warhelm", droprate = "0.14%" };
		{ 30, 33847, "", "Epoch Hunter's Head", droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["Old Hillsbrad Foothills"] };
		{ 2, 25729, "", "Pattern: Stylin' Adventure Hat", droprate = "0.25%" };
		{ 4, 0, "INV_Box_01", "=q6=" .. AL["Don Carlos"], "" .. BabbleZone["Old Hillsbrad Foothills"] };
		{ 5, 38506, "", "Don Carlos' Famous Hat" };
		{ 6, 38329, "", "Don Carlos' Hat" };
		{ 7, 38276, "", "Haliscan Brimmed Hat" };
		{ 9, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["The Black Morass"] };
		{ 10, 25730, "", "Pattern: Stylin' Jungle Hat", droprate = "0.29%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. AL["Thomas Yance"], "" .. BabbleZone["Old Hillsbrad Foothills"] };
		{ 17, 25725, "", "Pattern: Riding Crop" };
		{ 19, 0, "INV_Box_01", "=q6=" .. AL["Aged Dalaran Wizard"], "" .. BabbleZone["Old Hillsbrad Foothills"] };
		{ 20, 22539, "", "Formula: Enchant Shield - Intellect" };
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
		{ 1, 27988, "", "Burnoose of Shifting Ages", droprate = "13%" };
		{ 2, 27994, "", "Mantle of Three Terrors", droprate = "12%" };
		{ 3, 27995, "", "Sun-Gilded Shouldercaps", droprate = "13%" };
		{ 4, 27993, "", "Mask of Inner Fire", droprate = "13%" };
		{ 5, 27996, "", "Ring of Spiritual Precision", droprate = "14%" };
		{ 6, 27987, "", "Melmorta's Twilight Longbow", droprate = "11%" };
		{ 8, 29675, "", "Pattern: Arcane Armor Kit", droprate = "0.35%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30558, "", "Glimmering Fire Opal" };
		{ 19, 30556, "", "Glinting Fire Opal" };
		{ 20, 30555, "", "Glowing Tanzanite" };
	};
	{
		Name = BabbleBoss["Temporus"];
		{ 1, 28185, "", "Khadgar's Kilt of Abjuration", droprate = "14%" };
		{ 2, 28186, "", "Laughing Skull Battle-Harness", droprate = "13%" };
		{ 3, 28034, "", "Hourglass of the Unraveller", droprate = "13%" };
		{ 4, 28187, "", "Star-Heart Lamp", droprate = "11%" };
		{ 5, 28184, "", "Millennium Blade", droprate = "11%" };
		{ 6, 28033, "", "Epoch-Mender", droprate = "13.%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30558, "", "Glimmering Fire Opal" };
		{ 19, 30556, "", "Glinting Fire Opal" };
		{ 20, 30555, "", "Glowing Tanzanite" };
	};
	{
		Name = BabbleBoss["Aeonus"];
		{ 1, 28193, "", "Mana-Etched Crown", droprate = "11%" };
		{ 2, 27509, "", "Handgrips of Assassination", droprate = "12%" };
		{ 3, 27873, "", "Moonglade Pants", droprate = "11%" };
		{ 4, 28192, "", "Helm of Desolation", droprate = "12%" };
		{ 5, 27977, "", "Legplates of the Bold", droprate = "9%" };
		{ 6, 27839, "", "Legplates of the Righteous", droprate = "12%" };
		{ 8, 28206, "", "Cowl of the Guiltless", droprate = "12%" };
		{ 9, 28194, "", "Primal Surge Bracers", droprate = "13%" };
		{ 10, 28207, "", "Pauldrons of the Crimson Flight", droprate = "11%" };
		{ 11, 28190, "", "Scarab of the Infinite Cycle", droprate = "11%" };
		{ 12, 28189, "", "Latro's Shifting Sword", droprate = "9%" };
		{ 13, 28188, "", "Bloodfire Greatstaff", droprate = "10%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30558, "", "Glimmering Fire Opal" };
		{ 19, 30556, "", "Glinting Fire Opal" };
		{ 20, 30555, "", "Glowing Tanzanite" };
		{ 22, 30531, "", "Breeches of the Occultist", droprate = "1%" };
		{ 23, 29247, "", "Girdle of the Deathdealer" };
		{ 24, 29253, "", "Girdle of Valorous Deeds" };
		{ 25, 29356, "", "Quantum Blade" };
		{ 27, 33858, "", "Aeonus's Hourglass", droprate = "100%" };
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
		{ 1, 30871, "", "Bracers of Martyrdom" };
		{ 2, 30870, "", "Cuffs of Devastation" };
		{ 3, 30863, "", "Deadly Cuffs" };
		{ 4, 30868, "", "Rejuvenating Bracers" };
		{ 5, 30864, "", "Bracers of the Pathfinder" };
		{ 6, 30869, "", "Howling Wind Bracers" };
		{ 7, 30873, "", "Stillwater Boots" };
		{ 8, 30866, "", "Blood-stained Pauldrons" };
		{ 9, 30862, "", "Blessed Adamantite Bracers" };
		{ 10, 30861, "", "Furious Shackles" };
		{ 16, 30865, "", "Tracker's Blade" };
		{ 17, 30872, "", "Chronicle of Dark Secrets" };
		{ 18, 30891 , "", "Black Featherlight Boots",""};
		{ 19, 30914 , "", "Belt of the Crescent Moon",""};
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 22, 98570, "", "Mystic Orbs", droprate = "100%" };
		{ 24, 32459, "", "Time-Phased Phylactery", droprate = "8%" };
		{ 26, 61196, "", "Sigil of Winterchill", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Anetheron"];
		{ 1, 30884, "", "Hatefury Mantle", ""};
		{ 2, 30888, "", "Anetheron's Noose", ""};
		{ 3, 30885, "", "Archbishop's Slippers", ""};
		{ 4, 30879, "", "Don Alejandro's Money Belt", ""};
		{ 5, 30886, "", "Enchanted Leather Sandals", ""};
		{ 6, 30887, "", "Golden Links of Restoration", ""};
		{ 7, 30880, "", "Quickstrider Moccasins", ""};
		{ 8, 30878, "", "Glimmering Steel Mantle", ""};
		{ 16, 30874, "", "The Unbreakable Will", ""};
		{ 17, 30881, "", "Blade of Infamy", ""};
		{ 18, 30883, "", "Pillar of Ferocity", ""};
		{ 19, 30882, "", "Bastion of Light", ""};
		{ 20, 30916, "", "Leggings of Channeled Elements", ""};
		{ 21, 30919, "", "Valestalker Girdle", ""};
		{ 23, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 24, 98570, "", "Mystic Orbs", droprate = "100%" };
		{ 26, 61287, "", "Sigil of Anetheron", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Kaz'rogal"];
		{ 1, 30889, "", "Kaz\'rogal\'s Hardened Heart" };
		{ 2, 30893, "", "Sun-touched Chain Leggings" };
		{ 3, 30894, "", "Blue Suede Shoes" };
		{ 4, 30895, "", "Angelista\'s Sash" };
		{ 5, 30898, "", "Shady Dealer\'s Pantaloons" };
		{ 6, 30900, "", "Bow-stitched Leggings" };
		{ 7, 30915, "", "Belt of Seething Fury" };
		{ 8, 30918, "", "Hammer of Atonement" };
		{ 16, 31092, "", "Gloves of the Forgotten Conqueror", droprate = "100%", lootTable = {"T6HAND","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 98570, "", "Mystic Orbs", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Azgalor"];
		{ 1, 30892, "", "Beast-tamer\'s Shoulders" };
		{ 2, 30896, "", "Glory of the Defender" };
		{ 3, 30897, "", "Girdle of Hope" };
		{ 4, 30899, "", "Don Rodrigo\'s Poncho" };
		{ 5, 30901, "", "Boundless Agony" };
		{ 6, 30917, "", "Razorfury Mantle" };
		{ 16, 31098, "", "Leggings of the Forgotten Conqueror", droprate = "100%", lootTable = {"T6LEGS","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 98570, "", "Mystic Orbs", droprate = "100%" };
		{ 21, 61289, "", "Sigil of Azgalor", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Archimonde"];
		{ 1, 30913, "", "Robes of Rhonin", droprate = "15%" };
		{ 2, 30912, "", "Leggings of Eternity", droprate = "15%" };
		{ 3, 30905, "", "Midnight Chestguard", droprate = "14%" };
		{ 4, 30907, "", "Mail of Fevered Pursuit", droprate = "15%" };
		{ 5, 30904, "", "Savior's Grasp", droprate = "14%" };
		{ 6, 30903, "", "Legguards of Endless Rage", droprate = "15%" };
		{ 7, 30911, "", "Scepter of Purification", droprate = "15%" };
		{ 9, 30910, "", "Tempest of Chaos", droprate = "14%" };
		{ 10, 30902, "", "Cataclysm's Edge", droprate = "15%" };
		{ 11, 30908, "", "Apostle of Argus", droprate = "15%" };
		{ 12, 30909, "", "Antonidas's Aegis of Rapt Concentration", droprate = "15%" };
		{ 13, 30906, "", "Bristleblitz Striker", droprate = "16%" };
		{ 16, 31097, "", "Helm of the Forgotten Conqueror", droprate = "100%", lootTable = {"T6HEAD","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 98570, "", "Mystic Orbs", droprate = "100%" };
		{ 21, 61557, "", "Sigil of Archimonde", droprate = "1%" };
		{ 23, 1001620, "", "Annihilator Mount", droprate = "1%"};
	};
	scaleOfSandsRings;
	{
		Name = AL["Trash Mobs"].." - Items";
		{ 1, 32590, "", "Nethervoid Cloak", droprate = "1%" };
		{ 2, 34010, "", "Pepe's Shroud of Pacification" };
		{ 3, 32609, "", "Boots of the Divine Light" };
		{ 4, 32592, "", "Chestguard of Relentless Storms" };
		{ 5, 32591, "", "Choker of Serrated Blades" };
		{ 6, 32589, "", "Hellfire-Encased Pendant" };
		{ 7, 34009, "", "Hammer of Judgement" };
		{ 8, 32946, "", "Claw of Molten Fury" };
		{ 9, 32945, "", "Fist of Molten Fury" };
		{ 1, 14986, "", "The Pulverizer" };
		{ 11, 32428, "", "Heart of Darkness" };
		{ 12, 32897, "", "Mark of the Illidari" };
		{ 16, 32227, "", "Crimson Spinel" };
		{ 17, 32228, "", "Empyrean Sapphire" };
		{ 18, 32229, "", "Lionseye" };
		{ 19, 32230, "", "Shadowsong Amethyst" };
		{ 20, 32231, "", "Pyrestone" };
		{ 21, 32249, "", "Seaspray Emerald" };
	};
	{
		Name = "Crafting Recipe Drops";
		{ 1, 15315, "", "Design: Purified Shadowsong Amethyst" };
		{ 2, 32274, "", "Design: Bold Crimson Spinel" };
		{ 3, 32277, "", "Design: Delicate Crimson Spinel" };
		{ 4, 32281, "", "Design: Teardrop Crimson Spinel" };
		{ 5, 32282, "", "Design: Runed Crimson Spinel" };
		{ 6, 32283, "", "Design: Bright Crimson Spinel" };
		{ 7, 32284, "", "Design: Subtle Crimson Spinel" };
		{ 8, 32285, "", "Design: Flashing Crimson Spinel" };
		{ 9, 32286, "", "Design: Solid Empyrean Sapphire" };
		{ 10, 32287, "", "Design: Sparkling Empyrean Sapphire" };
		{ 11, 32288, "", "Design: Lustrous Empyrean Sapphire" };
		{ 12, 32289, "", "Design: Stormy Empyrean Sapphire" };
		{ 13, 32290, "", "Design: Brilliant Lionseye" };
		{ 14, 32291, "", "Design: Smooth Lionseye" };
		{ 15, 32292, "", "Design: Rigid Lionseye" };
		{ 16, 32293, "", "Design: Gleaming Lionseye" };
		{ 17, 32294, "", "Design: Thick Lionseye" };
		{ 18, 32295, "", "Design: Mystic Lionseye" };
		{ 19, 32296, "", "Design: Great Lionseye" };
		{ 20, 32297, "", "Design: Sovereign Shadowsong Amethyst" };
		{ 21, 32298, "", "Design: Shifting Shadowsong Amethyst" };
		{ 22, 32299, "", "Design: Balanced Shadowsong Amethyst" };
		{ 23, 32300, "", "Design: Infused Shadowsong Amethyst" };
		{ 24, 32301, "", "Design: Glowing Shadowsong Amethyst" };
		{ 25, 32302, "", "Design: Royal Shadowsong Amethyst" };
		{ 26, 32303, "", "Design: Inscribed Pyrestone" };
		{ 27, 32304, "", "Design: Potent Pyrestone" };
		{ 28, 32305, "", "Design: Luminous Pyrestone" };
		{ 29, 32306, "", "Design: Glinting Pyrestone" };
		{ 30, 32307, "", "Design: Veiled Pyrestone" };
		{ 1, 32308, "", "Design: Wicked Pyrestone" };
		{ 2, 32309, "", "Design: Enduring Seaspray Emerald" };
		{ 3, 32310, "", "Design: Radiant Seaspray Emerald" };
		{ 4, 32311, "", "Design: Dazzling Seaspray Emerald" };
		{ 5, 32312, "", "Design: Jagged Seaspray Emerald" };
		{ 6, 35762, "", "Design: Reckless Pyrestone" };
		{ 7, 35763, "", "Design: Quick Lionseye" };
		{ 8, 35764, "", "Design: Steady Seaspray Emerald" };
		{ 9, 35765, "", "Design: Forceful Seaspray Emerald" };
		{ 10, 884039,"","Design: Fractured Crimson Spinel" };
		{ 16, 32736, "", "Plans: Swiftsteel Bracers" };
		{ 17, 32739, "", "Plans: Dawnsteel Shoulders" };
		{ 18, 32745, "", "Pattern: Shoulderpads of Renewed Life" };
		{ 19, 32746, "", "Pattern: Swiftstrike Bracers" };
		{ 20, 32748, "", "Pattern: Bindings of Lightning Reflexes" };
		{ 21, 32751, "", "Pattern: Living Earth Shoulders" };
		{ 22, 32752, "", "Pattern: Swiftheal Wraps" };
		{ 23, 32755, "", "Pattern: Mantle of Nimble Thought" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24359, "", "Princely Reign Leggings", droprate = "10%" };
		{ 3, 24357, "", "Vest of Living Lightning", droprate = "11%" };
		{ 4, 24360, "", "Tracker's Belt", droprate = "11%" };
		{ 5, 24356, "", "Wastewalker Shiv", droprate = "12%" };
		{ 6, 24361, "", "Spellfire Longsword", droprate = "11%" };
		{ 8, 29674, "", "Pattern: Nature Armor Kit", droprate = "0.80%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30604, "", "Resplendent Fire Opal", droprate = "22%" };
		{ 19, 30605, "", "Vivid Chrysoprase", droprate = "9%" };
		{ 20, 30603, "", "Royal Tanzanite", droprate = "10%" };
		{ 22, 27542, "", "Cord of Belief", droprate = "16%" };
		{ 23, 27545, "", "Mennu's Scaled Leggings", droprate = "8%" };
		{ 24, 27541, "", "Archery Belt of the Broken", droprate = "12%" };
		{ 25, 27546, "", "Traitor's Noose", droprate = "13%" };
		{ 26, 27544, "", "Totem of Spontaneous Regrowth", droprate = "12%" };
		{ 27, 27543, "", "Starlight Dagger", droprate = "20%" };
		{ 29, 29674, "", "Pattern: Nature Armor Kit", droprate = "0.80%" };

	};
	{
		Name = BabbleBoss["Rokmar the Crackler"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24379, "", "Bogstrok Scale Cloak", droprate = "10%" };
		{ 3, 24376, "", "Runed Fungalcap", droprate = "11%" };
		{ 4, 24378, "", "Coilfang Hammer of Renewal", droprate = "9%" };
		{ 5, 24380, "", "Calming Spore Reed", droprate = "10%" };
		{ 6, 24381, "", "Coilfang Needler", droprate = "10%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30604, "", "Resplendent Fire Opal", droprate = "22%" };
		{ 19, 30605, "", "Vivid Chrysoprase", droprate = "9%" };
		{ 20, 30603, "", "Royal Tanzanite", droprate = "10%" };
		{ 22, 27550, "", "Ironscale War Cloak", droprate = "11%" };
		{ 23, 27547, "", "Coldwhisper Cord", droprate = "14%" };
		{ 24, 28124, "", "Liar's Cord", droprate = "8%" };
		{ 25, 27549, "", "Wavefury Boots", droprate = "9.%" };
		{ 26, 27548, "", "Girdle of Many Blessings", droprate = "14%" };
		{ 27, 27551, "", "Skeletal Necklace of Battlerage", droprate = "16%" };
	};
	{
		Name = BabbleBoss["Quagmirran"];
		{ 1, 27796, "", "Mana-Etched Spaulders", droprate = "5%" };
		{ 2, 27713, "", "Pauldrons of Desolation", droprate = "10%" };
		{ 4, 27742, "", "Mage-Fury Girdle", droprate = "12%" };
		{ 5, 27712, "", "Shackles of Quagmirran" };
		{ 6, 27800, "", "Earthsoul Britches", droprate = "13%" };
		{ 7, 28337, "", "Breastplate of Righteous Fury", droprate = "8%" };
		{ 8, 27672, "", "Girdle of the Immovable", droprate = "7%" };
		{ 9, 27740, "", "Band of Ursol", droprate = "12%" };
		{ 10, 27683, "", "Quagmirran's Eye", droprate = "7%" };
		{ 11, 27714, "", "Swamplight Lantern", droprate = "10%" };
		{ 12, 27673, "", "Phosphorescent Blade" };
		{ 13, 27741, "", "Bleeding Hollow Warhammer", droprate = "9%" };
		{ 15, 33821, "", "The Heart of Quagmirran", droprate = "100%" };
		{ 16, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 17, 30604, "", "Resplendent Fire Opal", droprate = "22%" };
		{ 18, 30605, "", "Vivid Chrysoprase", droprate = "9%" };
		{ 19, 30603, "", "Royal Tanzanite", droprate = "10%" };
		{ 20, 29242, "", "Boots of Blasphemy", droprate = "10%" };
		{ 21, 30538, "", "Midnight Legguards", droprate = "8%" };
		{ 22, 32078, "", "Pauldrons of Wild Magic" };
		{ 23, 29349, "", "Adamantine Chain of the Unbroken", droprate = "1%" };
		{ 25, 0, "INV_Box_01", "=q6=#j1#" };
		{ 26, 24362, "", "Spore-Soaked Vaneer", droprate = "10%" };
		{ 27, 24365, "", "Deft Handguards", droprate = "10%" };
		{ 28, 24366, "", "Scorpid-Sting Mantle", droprate = "11%" };
		{ 29, 24363, "", "Unscarred Breastplate", droprate = "9%" };
		{ 30, 24364, "", "Azureplate Greaves", droprate = "9%" };
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
		{ 1, 27508, "", "Incanter's Gloves", droprate = "17%" };
		{ 3, 27789, "", "Cloak of Whispering Shells", droprate = "14%" };
		{ 4, 27787, "", "Chestguard of No Remorse", droprate = "17%" };
		{ 5, 27783, "", "Moonrage Girdle", droprate = "18%" };
		{ 6, 27784, "", "Scintillating Coral Band", droprate = "16%" };
		{ 8, 29673, "", "Pattern: Frost Armor Kit", droprate = "0%" };
		{ 10, 30828, "", "Vial of Underworld Loam", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30550, "", "Sundered Chrysoprase", droprate = "8%" };
		{ 19, 30551, "", "Infused Fire Opal", droprate = "6%" };
		{ 20, 30549, "", "Shifting Tanzanite", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Mekgineer Steamrigger"];
		{ 1, 27793, "", "Earth Mantle Handwraps", droprate = "16%" };
		{ 2, 27790, "", "Mask of Penance", droprate = "16%" };
		{ 3, 27792, "", "Steam-Hinge Chain of Valor", droprate = "14%" };
		{ 4, 27791, "", "Serpentcrest Life-Staff", droprate = "17%" };
		{ 5, 27794, "", "Recoilless Rocket Ripper X-54", droprate = "15%" };
		{ 7, 23887, "", "Schematic: Rocket Boots Xtreme", droprate = "0.52%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30550, "", "Sundered Chrysoprase", droprate = "8%" };
		{ 19, 30551, "", "Infused Fire Opal", droprate = "6%" };
		{ 20, 30549, "", "Shifting Tanzanite", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Warlord Kalithresh"];
		{ 1, 24313, "", "Pattern: Battlecast Hood", droprate = "0.20%" };
		{ 3, 27738, "", "Incanter's Pauldrons", droprate = "12%" };
		{ 4, 27737, "", "Moonglade Shoulders", droprate = "12%" };
		{ 5, 27801, "", "Beast Lord Mantle", droprate = "10%" };
		{ 6, 27510, "", "Tidefury Gauntlets", droprate = "12%" };
		{ 7, 27874, "", "Beast Lord Leggings", droprate = "9%" };
		{ 8, 28203, "", "Breastplate of the Righteous", droprate = "10%" };
		{ 9, 27475, "", "Gauntlets of the Bold", droprate = "10%" };
		{ 11, 27804, "", "Devilshark Cape", droprate = "12%" };
		{ 12, 27799, "", "Vermillion Robes of the Dominant", droprate = "12%" };
		{ 13, 27795, "", "Sash of Serpentra", droprate = "11%" };
		{ 14, 27806, "", "Fathomheart Gauntlets", droprate = "14%" };
		{ 15, 27805, "", "Ring of the Silver Hand", droprate = "13%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30550, "", "Sundered Chrysoprase", droprate = "8%" };
		{ 19, 30551, "", "Infused Fire Opal", droprate = "6%" };
		{ 20, 30549, "", "Shifting Tanzanite", droprate = "1%" };
		{ 21, 30543, "", "Pontifex Kilt", droprate = "7%" };
		{ 22, 29243, "", "Wave-Fury Vambraces", droprate = "17%" };
		{ 23, 29463, "", "Amber Bands of the Aggressor", droprate = "2%" };
		{ 24, 29351, "", "Wrathtide Longbow", droprate = "3%" };
		{ 26, 31721, "", "Kalithresh's Trident", droprate = "100%" };
		{ 27, 33827, "", "The Warlord's Treatise", droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 24159, "", "Design: Khorium Band of Frost", droprate = "0.14%" };
		{ 3, 22533, "", "Formula: Enchant Bracer - Fortitude", droprate = "0.40%" };
		{ 5, 24367, "", "Orders from Lady Vashj" };
		{ 6, 24368, "", "Coilfang Armaments", droprate = "12%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. AL["Second Fragment Guardian"], "" .. BabbleZone["The Steamvault"] };
		{ 17, 24487, "", "Second Key Fragment", droprate = "100%" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24450, "", "Manaspark Gloves", droprate = "11%" };
		{ 3, 24452, "", "Starlight Gauntlets", droprate = "12%" };
		{ 4, 24451, "", "Lykul Bloodbands", droprate = "11%" };
		{ 5, 24413, "", "Totem of the Thunderhead", droprate = "12%" };
		{ 6, 27631, "", "Needle Shrike", droprate = "11%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30606, "", "Lambent Chrysoprase", droprate = "17%" };
		{ 19, 30607, "", "Splendid Fire Opal", droprate = "6%" };
		{ 20, 30608, "", "Radiant Chrysoprase", droprate = "9%" };
		{ 22, 27746, "", "Arcanium Signet Bands", droprate = "8%" };
		{ 23, 27745, "", "Hungarhide Gauntlets", droprate = "13%" };
		{ 24, 27743, "", "Girdle of Living Flame", droprate = "13%" };
		{ 25, 27748, "", "Cassock of the Loyal", droprate = "7%" };
		{ 26, 27744, "", "Idol of Ursoc", droprate = "16%" };
		{ 27, 27747, "", "Boggspine Knuckles", droprate = "12%" };
	};
	{
		Name = BabbleBoss["Ghaz'an"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24459, "", "Cloak of Healing Rays", droprate = "14%" };
		{ 3, 24458, "", "Studded Girdle of Virtue", droprate = "14%" };
		{ 4, 24460, "", "Talisman of Tenacity", droprate = "12%" };
		{ 5, 24462, "", "Luminous Pearls of Insight", droprate = "12%" };
		{ 6, 24461, "", "Hatebringer", droprate = "14%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30606, "", "Lambent Chrysoprase", droprate = "17%" };
		{ 19, 30607, "", "Splendid Fire Opal", droprate = "6%" };
		{ 20, 30608, "", "Radiant Chrysoprase", droprate = "9%" };
		{ 22, 27760, "", "Dunewind Sash", droprate = "14%" };
		{ 23, 27759, "", "Headdress of the Tides", droprate = "13%" };
		{ 24, 27755, "", "Girdle of Gallantry", droprate = "7%" };
		{ 25, 27758, "", "Hydra-fang Necklace", droprate = "12%" };
		{ 26, 27761, "", "Ring of the Shadow Deeps", droprate = "18%" };
		{ 27, 27757, "", "Greatstaff of the Leviathan", droprate = "16%" };
	};
	{
		Name = BabbleBoss["Swamplord Musel'ek"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24454, "", "Cloak of Enduring Swiftness", droprate = "17%" };
		{ 3, 24455, "", "Tunic of the Nightwatcher", droprate = "14%" };
		{ 4, 24457, "", "Truth Bearer Shoulderguards", droprate = "14%" };
		{ 5, 24456, "", "Greaves of the Iron Guardian", droprate = "12%" };
		{ 6, 24453, "", "Zangartooth Shortblade", droprate = "15%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30606, "", "Lambent Chrysoprase", droprate = "17%" };
		{ 19, 30607, "", "Splendid Fire Opal", droprate = "6%" };
		{ 20, 30608, "", "Radiant Chrysoprase", droprate = "9%" };
		{ 22, 27764, "", "Hands of the Sun", droprate = "12%" };
		{ 23, 27763, "", "Crown of the Forest Lord", droprate = "20%" };
		{ 24, 27765, "", "Armwraps of Disdain", droprate = "9%" };
		{ 25, 27766, "", "Swampstone Necklace", droprate = "17%" };
		{ 26, 27762, "", "Weathered Band of the Swamplord" };
		{ 27, 27767, "", "Bogreaver", droprate = "9%" };
	};
	{
		Name = BabbleBoss["The Black Stalker"];
		{ 1, 24481, "", "Robes of the Augurer", droprate = "10%" };
		{ 2, 24466, "", "Skulldugger's Leggings", droprate = "13%" };
		{ 3, 24465, "", "Shamblehide Chestguard", droprate = "10%" };
		{ 4, 24463, "", "Pauldrons of Brute Force", droprate = "11%" };
		{ 5, 24464, "", "The Stalker's Fangs", droprate = "14%" };
		{ 7, 24248, "", "Brain of the Black Stalker", droprate = "100%" };
	};
	{ --only heroic
		Name = BabbleBoss["The Black Stalker"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 29265, "", "Barkchip Boots", droprate = "8%" };
		{ 3, 30541, "", "Stormsong Kilt", droprate = "6%" };
		{ 4, 32081, "", "Eye of the Stalker" };
		{ 5, 29350, "", "The Black Stalk", droprate = "4%" };
		{ 7, 27781, "", "Demonfang Ritual Helm", droprate = "8%" };
		{ 8, 27768, "", "Oracle Belt of Timeless Mystery", droprate = "14%" };
		{ 9, 27938, "", "Savage Mask of the Lynx Lord", droprate = "1%" };
		{ 10, 27773, "", "Barbaric Legstraps", droprate = "9%" };
		{ 11, 27779, "", "Bone Chain Necklace", droprate = "14%" };
		{ 12, 27780, "", "Ring of Fabled Hope", droprate = "9%" };
		{ 13, 27896, "", "Alembic of Infernal Power", droprate = "12%" };
		{ 14, 27770, "", "Argussian Compass", droprate = "3%" };
		{ 16, 30606, "", "Lambent Chrysoprase", droprate = "17%" };
		{ 17, 30607, "", "Splendid Fire Opal", droprate = "6%" };
		{ 18, 30608, "", "Radiant Chrysoprase", droprate = "9%" };
		{ 20, 27907, "", "Mana-Etched Pantaloons", droprate = "4%" };
		{ 21, 27771, "", "Doomplate Shoulderguards", droprate = "6%" };
		{ 23, 27769, "", "Endbringer", droprate = "9%" };
		{ 24, 27772, "", "Stormshield of Renewal", droprate = "13%" };
		{ 26, 24248, "", "Brain of the Black Stalker", droprate = "100%" };
		{ 27, 33826, "", "Black Stalker Egg", droprate = "100%" };
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
		{ 1, 30056, "", "Robe of Hateful Echoes", droprate = "18%" };
		{ 2, 32516, "", "Wraps of Purification", droprate = "18%" };
		{ 3, 30050, "", "Boots of the Shifting Nightmare", droprate = "17%" };
		{ 4, 30055, "", "Shoulderpads of the Stranger", droprate = "16%" };
		{ 5, 30047, "", "Blackfathom Warbands", droprate = "19%" };
		{ 6, 30054, "", "Ranger-General's Chestguard", droprate = "18%" };
		{ 7, 30048, "", "Brighthelm of Justice", droprate = "21%" };
		{ 8, 30053, "", "Pauldrons of the Wardancer", droprate = "16%" };
		{ 16, 30052, "", "Ring of Lethality", droprate = "20%" };
		{ 17, 33055, "", "Band of Vile Aggression", droprate = "14%" };
		{ 18, 30664, "", "Living Root of the Wildheart", droprate = "18%" };
		{ 19, 30629, "", "Scarab of Displacement", droprate = "21%" };
		{ 20, 30049, "", "Fathomstone", droprate = "19%" };
		{ 21, 30051, "", "Idol of the Crescent Goddess", droprate = "11%" };
		{ 23, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 24, 816254, "", "Formula: Enchant Cloak - Crushing Wave", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = BabbleBoss["The Lurker Below"];
		{ 1, 30064, "", "Cord of Screaming Terrors", droprate = "17%" };
		{ 2, 30067, "", "Velvet Boots of the Guardian", droprate = "17%" };
		{ 3, 30062, "", "Grove-Bands of Remulos", droprate = "21%" };
		{ 4, 30060, "", "Boots of Effortless Striking", droprate = "21%" };
		{ 5, 30066, "", "Tempest-Strider Boots", droprate = "21%" };
		{ 6, 30065, "", "Glowing Breastplate of Truth", droprate = "20%" };
		{ 7, 30057, "", "Bracers of Eradication", droprate = "19%" };
		{ 9, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 30059, "", "Choker of Animalistic Fury", droprate = "21%" };
		{ 17, 30061, "", "Ancestral Ring of Conquest", droprate = "20%" };
		{ 18, 33054, "", "The Seal of Danzalar", droprate = "14%" };
		{ 19, 30665, "", "Earring of Soulful Meditation", droprate = "18%" };
		{ 20, 30063, "", "Libram of Absolute Truth", droprate = "17%" };
		{ 21, 30058, "", "Mallet of the Tides", droprate = "20%" };
	};
	{
		Name = BabbleBoss["Leotheras the Blind"];
		{ 1, 30092, "", "Orca-Hide Boots", droprate = "13%" };
		{ 2, 30097, "", "Coral-Barbed Shoulderpads", droprate = "15%" };
		{ 3, 30091, "", "True-Aim Stalker Bands", droprate = "17%" };
		{ 4, 30096, "", "Girdle of the Invulnerable", droprate = "14%" };
		{ 5, 30627, "", "Tsunami Talisman", droprate = "15%" };
		{ 6, 30095, "", "Fang of the Leviathan", droprate = "14%" };
		{ 16, 30240, "", "Gloves of the Vanquished Defender", droprate = "100%", lootTable = {"T5HAND","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Fathom-Lord Karathress"];
		{ 1, 30100, "", "Soul-Strider Boots", droprate = "15%" };
		{ 2, 30101, "", "Bloodsea Brigand's Vest", droprate = "15%" };
		{ 3, 30099, "", "Frayed Tether of the Drowned", droprate = "15%" };
		{ 4, 30663, "", "Fathom-Brooch of the Tidewalker", droprate = "15%" };
		{ 5, 30626, "", "Sextant of Unstable Currents", droprate = "14%" };
		{ 6, 30090, "", "World Breaker", droprate = "15%" };
		{ 16, 30246, "", "Leggings of the Vanquished Defender", droprate = "100%", lootTable = {"T5LEGS","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Morogrim Tidewalker"];
		{ 1, 30098, "", "Razor-Scale Battlecloak", droprate = "22%" };
		{ 2, 30079, "", "Illidari Shoulderpads", droprate = "15%" };
		{ 3, 30075, "", "Gnarled Chestpiece of the Ancients", droprate = "19%" };
		{ 4, 30085, "", "Mantle of the Tireless Tracker", droprate = "20%" };
		{ 5, 30068, "", "Girdle of the Tidal Call", droprate = "17%" };
		{ 6, 30084, "", "Pauldrons of the Argent Sentinel", droprate = "21%" };
		{ 7, 30081, "", "Warboots of Obliteration", droprate = "21%" };
		{ 9, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 30008, "", "Pendant of the Lost Ages", droprate = "18%" };
		{ 17, 30083, "", "Ring of Sundered Souls", droprate = "21%" };
		{ 18, 33058, "", "Band of the Vigilant", droprate = "19%" };
		{ 19, 30720, "", "Serpent-Coil Braid", droprate = "20%" };
		{ 20, 30082, "", "Talon of Azshara", droprate = "20%" };
		{ 21, 30080, "", "Luminescent Rod of the Naaru", droprate = "15%" };
	};
	{
		Name = BabbleBoss["Lady Vashj"];
		{ 1, 30107, "", "Vestments of the Sea-Witch", droprate = "13%" };
		{ 2, 30111, "", "Runetotem's Mantle", droprate = "14%" };
		{ 3, 30106, "", "Belt of One-Hundred Deaths", droprate = "12%" };
		{ 4, 30104, "", "Cobra-Lash Boots", droprate = "13%" };
		{ 5, 30102, "", "Krakken-Heart Breastplate", droprate = "15%" };
		{ 6, 30112, "", "Glorious Gauntlets of Crestfall", droprate = "14%" };
		{ 7, 30109, "", "Ring of Endless Coils", droprate = "13%" };
		{ 8, 30110, "", "Coral Band of the Revived", droprate = "16%" };
		{ 9, 30621, "", "Prism of Inner Calm", droprate = "13%" };
		{ 10, 30103, "", "Fang of Vashj", droprate = "14%" };
		{ 11, 30108, "", "Lightfathom Scepter", droprate = "14%" };
		{ 12, 30105, "", "Serpent Spine Longbow", droprate = "13%" };
		{ 16, 30243, "", "Helm of the Vanquished Defender", droprate = "100%", lootTable = {"T5HEAD","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 29906, "", "Vashj's Vial Remnant", droprate = "35%" };
		{ 21, 450000, "", "Intact Vial of Lady Vashj", droprate = "5%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 30027, "", "Boots of Courage Unending", droprate = "3%" };
		{ 2, 30022, "", "Pendant of the Perilous", droprate = "3%" };
		{ 3, 30620, "", "Spyglass of the Hidden Fleet", droprate = "4%" };
		{ 4, 30023, "", "Totem of the Maelstrom", droprate = "3%" };
		{ 5, 30021, "", "Wildfury Greatstaff", droprate = "3%" };
		{ 6, 30025, "", "Serpentshrine Shuriken", droprate = "3%" };
		{ 7, 44831, "", "Mmrgrg glm Nuubs", droprate = "3%" };
		{ 9, 30324, "", "Plans: Red Havoc Boots", droprate = "1%" };
		{ 10, 30322, "", "Plans: Red Belt of Battle", droprate = "2%" };
		{ 11, 30323, "", "Plans: Boots of the Protector", droprate = "2%" };
		{ 12, 30321, "", "Plans: Belt of the Guardian", droprate = "2%" };
		{ 13, 30280, "", "Pattern: Belt of Blasting", droprate = "1%" };
		{ 14, 30282, "", "Pattern: Boots of Blasting", droprate = "1%" };
		{ 15, 30283, "", "Pattern: Boots of the Long Road", droprate = "2%" };
		{ 16, 30281, "", "Pattern: Belt of the Long Road", droprate = "1%" };
		{ 17, 30308, "", "Pattern: Hurricane Boots", droprate = "1%" };
		{ 18, 30304, "", "Pattern: Monsoon Belt", droprate = "1%" };
		{ 19, 30305, "", "Pattern: Boots of Natural Grace", droprate = "2%" };
		{ 20, 30307, "", "Pattern: Boots of the Crimson Hawk", droprate = "1%" };
		{ 21, 30306, "", "Pattern: Boots of Utter Darkness", droprate = "2%" };
		{ 22, 30301, "", "Pattern: Belt of Natural Power", droprate = "1%" };
		{ 23, 30303, "", "Pattern: Belt of the Black Eagle", droprate = "1%" };
		{ 24, 30302, "", "Pattern: Belt of Deep Shadow", droprate = "1%" };
		{ 26, 30183, "", "Nether Vortex", droprate = "75%" };
		{ 28, 32897, "", "Mark of the Illidari", droprate = "27%" };
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
		{ 1, 28797, "", "Brute Cloak of the Ogre-Magi", droprate = "8%" };
		{ 2, 28799, "", "Belt of Divine Inspiration", droprate = "9%" };
		{ 3, 28796, "", "Malefic Mask of the Shadows", droprate = "12%" };
		{ 4, 28801, "", "Maulgar's Warhelm", droprate = "21%" };
		{ 5, 28795, "", "Bladespire Warbands", droprate = "12%" };
		{ 6, 28800, "", "Hammer of the Naaru", droprate = "15%" };
		{ 16, 29764, "", "Pauldrons of the Fallen Defender", droprate = "100%", lootTable = {"T4SHOULDER","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 816252, "", "Formula: Enchant Weapon - Undaunted Might", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = BabbleBoss["Gruul the Dragonkiller"];
		{ 1, 28804, "", "Collar of Cho'gall", droprate = "14%" };
		{ 2, 28803, "", "Cowl of Nature's Breath", droprate = "14%" };
		{ 3, 28828, "", "Gronn-Stitched Girdle", droprate = "11%" };
		{ 4, 28827, "", "Gauntlets of the Dragonslayer", droprate = "7%" };
		{ 5, 28810, "", "Windshear Boots", droprate = "10%" };
		{ 6, 28824, "", "Gauntlets of Martial Perfection", droprate = "12%" };
		{ 7, 28822, "", "Teeth of Gruul", droprate = "11%" };
		{ 8, 28823, "", "Eye of Gruul", droprate = "6%" };
		{ 9, 28830, "", "Dragonspine Trophy", droprate = "11%" };
		{ 11, 31750, "", "Earthen Signet", droprate = "100%" };
		{ 16, 29767, "", "Leggings of the Fallen Defender", droprate = "100%", lootTable = {"T4LEGS","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 20, 28802, "", "Bloodmaw Magus-Blade", droprate = "9%" };
		{ 21, 28794, "", "Axe of the Gronn Lords", droprate = "6%" };
		{ 22, 28825, "", "Aldori Legacy Defender", droprate = "2%" };
		{ 23, 28826, "", "Shuriken of Negation", droprate = "16%" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24024, "", "Pauldrons of Arcane Rage", droprate = "14%" };
		{ 3, 24023, "", "Bracers of Finesse", droprate = "13%" };
		{ 4, 24022, "", "Scale Leggings of the Skirmisher", droprate = "14%" };
		{ 5, 24021, "", "Light-Touched Breastplate", droprate = "13%" };
		{ 6, 24020, "", "Shadowrend Longblade", droprate = "13%" };
		{ 8, 23881, "", "Gargolmar's Hand", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30593, "", "Iridescent Fire Opal", droprate = "11%" };
		{ 19, 30594, "", "Effulgent Chrysoprase", droprate = "12%" };
		{ 20, 30592, "", "Steady Chrysoprase", droprate = "8%" };
		{ 22, 27448, "", "Cloak of the Everliving", droprate = "28%" };
		{ 23, 27451, "", "Boots of the Darkwalker", droprate = "16%" };
		{ 24, 27450, "", "Wild Stalker Boots", droprate = "14%" };
		{ 25, 27447, "", "Bracers of Just Rewards", droprate = "13%" };
		{ 26, 27449, "", "Blood Knight Defender", droprate = "13%" };
		{ 28, 23881, "", "Gargolmar's Hand", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Omor the Unscarred"];
		{ 1, 0, "INV_Box_01", "#j27#" };
		{ 2, 27465, "", "Mana-Etched Gloves", droprate = "11%" };
		{ 3, 27466, "", "Headdress of Alacrity", droprate = "12%" };
		{ 4, 27462, "", "Crimson Bracers of Gloom", droprate = "7%" };
		{ 5, 27467, "", "Silent-Strider Kneeboots", droprate = "16%" };
		{ 6, 27478, "", "Girdle of the Blasted Reaches", droprate = "14%" };
		{ 7, 27539, "", "Justice Bearer's Pauldrons", droprate = "8%" };
		{ 8, 27906, "", "Crimsonforge Breastplate",  droprate = "12%" };
		{ 9, 27464, "", "Omor's Unyielding Will", droprate = "13%" };
		{ 10, 27895, "", "Band of Many Prisms", droprate = "11%" };
		{ 11, 27477, "", "Faol's Signet of Cleansing", droprate = "10%" };
		{ 12, 27463, "", "Terror Flame Dagger", droprate = "8%" };
		{ 13, 27476, "", "Truncheon of Five Hells", droprate = "9%" };
		{ 16, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 17, 30593, "", "Iridescent Fire Opal", droprate = "11%" };
		{ 18, 30594, "", "Effulgent Chrysoprase", droprate = "12%" };
		{ 19, 30592, "", "Steady Chrysoprase", droprate = "8%" };
		{ 21, 0, "INV_Box_01", "=q6=#j1#" };
		{ 22, 24090, "", "Bloodstained Ravager Gauntlets", droprate = "12%" };
		{ 23, 24091, "", "Tenacious Defender", droprate = "12%" };
		{ 24, 24073, "", "Garotte-String Necklace", droprate = "11%" };
		{ 25, 24096, "", "Heartblood Prayer Beads", droprate = "11%" };
		{ 26, 24094, "", "Heart Fire Warhammer", droprate = "14%" };
		{ 27, 24069, "", "Crystalfire Staff", droprate = "12%" };
		{ 29, 23886, "", "Omor's Hoof", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Vazruden"];
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Reinforced Fel Iron Chest"] };
		{ 2, 24150, "", "Mok'Nathal Wildercloak", droprate = "15%" };
		{ 3, 24083, "", "Lifegiver Britches", droprate = "17%" };
		{ 4, 24063, "", "Shifting Sash of Midnight", droprate = "17%" };
		{ 5, 24046, "", "Kilt of Rolling Thunders", droprate = "15%" };
		{ 6, 24064, "", "Ironsole Clompers", droprate = "13.%" };
		{ 7, 24045, "", "Band of Renewal", droprate = "14%" };
		{ 8, 24154, "", "Witching Band", droprate = "13%" };
		{ 9, 24151, "", "Mok'Nathal Clan Ring", droprate = "15%" };
		{ 10, 24044, "", "Hellreaver", droprate = "13%" };
		{ 11, 24155, "", "Ursol's Claw", droprate = "16%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Vazruden"] };
		{ 17, 23892, "", "Ominous Letter", droprate = "100%" };
		{ 19, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Nazan"] };
		{ 20, 23901, "", "Nazan's Head", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Vazruden"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29264, "", "Tree-Mender's Belt", droprate = "16%" };
		{ 2, 32077, "", "Wrath Infused Gauntlets" };
		{ 3, 29238, "", "Lion's Heart Girdle", droprate = "14%" };
		{ 4, 29346, "", "Feltooth Eviscerator", droprate = "5%" };
		{ 6, 27452, "", "Light Scribe Bands", droprate = "11%" };
		{ 7, 27461, "", "Chestguard of the Prowler", droprate = "11%" };
		{ 8, 27456, "", "Raiments of Nature's Breath", droprate = "19%" };
		{ 9, 27454, "", "Volcanic Pauldrons", droprate = "16%" };
		{ 10, 27458, "", "Oceansong Kilt", droprate = "10%" };
		{ 11, 27455, "", "Irondrake Faceguard", droprate = "11%" };
		{ 12, 27459, "", "Vambraces of Daring", droprate = "10%" };
		{ 13, 27457, "", "Life Bearer's Gauntlets", droprate = "8%" };
		{ 16, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 17, 30593, "", "Iridescent Fire Opal", droprate = "11%" };
		{ 18, 30594, "", "Effulgent Chrysoprase", droprate = "12%" };
		{ 19, 30592, "", "Steady Chrysoprase", droprate = "8%" };
		{ 21, 27453, "", "Averinn's Ring of Slaying", droprate = "14%" };
		{ 22, 27460, "", "Reavers' Ring", droprate = "17%" };
		{ 24, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Vazruden"] };
		{ 25, 23892, "", "Ominous Letter", droprate = "100%" };
		{ 27, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Nazan"] };
		{ 28, 23901, "", "Nazan's Head", droprate = "100%" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24388, "", "Girdle of the Gale Storm", droprate = "15%" };
		{ 3, 24387, "", "Ironblade Gauntlets", droprate = "13%" };
		{ 4, 24385, "", "Pendant of Battle-Lust", droprate = "15%" };
		{ 5, 24386, "", "Libram of Saints Departed", droprate = "14%" };
		{ 6, 24384, "", "Diamond-Core Sledgemace", droprate = "12%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30601, "", "Beaming Fire Opal", droprate = "18%" };
		{ 19, 30600, "", "Fluorescent Tanzanite", droprate = "9%" };
		{ 20, 30602, "", "Jagged Chrysoprase", droprate = "12%" };
		{ 22, 27485, "", "Embroidered Cape of Mysteries", droprate = "13%" };
		{ 23, 27488, "", "Mage-Collar of the Firestorm", droprate = "16%" };
		{ 24, 27483, "", "Moon-Touched Bands", droprate = "25%" };
		{ 25, 27487, "", "Bloodlord Legplates", droprate = "9%" };
		{ 26, 27484, "", "Libram of Avengement", droprate = "14%" };
	};
	{
		Name = BabbleBoss["Broggok"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 24392, "", "Arcing Bracers", droprate = "14%" };
		{ 3, 24393, "", "Bloody Surgeon's Mitts", droprate = "17%" };
		{ 4, 24391, "", "Kilt of the Night Strider", droprate = "16%" };
		{ 5, 24390, "", "Auslese's Light Channeler", droprate = "11%" };
		{ 6, 24389, "", "Legion Blunderbuss", droprate = "17%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30601, "", "Beaming Fire Opal", droprate = "18%" };
		{ 19, 30600, "", "Fluorescent Tanzanite", droprate = "9%" };
		{ 20, 30602, "", "Jagged Chrysoprase", droprate = "12%" };
		{ 22, 27848, "", "Embroidered Spellpyre Boots", droprate = "8%" };
		{ 23, 27492, "", "Moonchild Leggings", droprate = "13%" };
		{ 24, 27489, "", "Virtue Bearer's Vambraces", droprate = "22%" };
		{ 25, 27491, "", "Signet of Repose", droprate = "30%" };
		{ 26, 27490, "", "Firebrand Battleaxe", droprate = "9%" };
	};
	{
		Name = BabbleBoss["Keli'dan the Breaker"];
		{ 1, 28264, "", "Wastewalker Tunic", droprate = "6%" };
		{ 2, 27497, "", "Doomplate Gauntlets", droprate = "9%" };
		{ 4, 27506, "", "Robe of Effervescent Light", droprate = "17%" };
		{ 5, 27514, "", "Leggings of the Unrepentant", droprate = "13%" };
		{ 6, 27522, "", "World's End Bracers", droprate = "25%" };
		{ 7, 27494, "", "Emerald Eye Bracer", droprate = "11%" };
		{ 8, 27505, "", "Ruby Helm of the Just", droprate = "11%" };
		{ 9, 27788, "", "Bloodsworn Warboots" };
		{ 10, 27495, "", "Soldier's Dog Tags", droprate = "9%" };
		{ 11, 28121, "", "Icon of Unyielding Courage", droprate = "8%" };
		{ 12, 27512, "", "The Willbreaker", droprate = "6%" };
		{ 13, 27507, "", "Adamantine Repeater", droprate = "6%" };
		{ 15, 33814, "", "Keli'dan's Feathered Stave", droprate = "100%" };
		{ 16, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 17, 30601, "", "Beaming Fire Opal", droprate = "18%" };
		{ 18, 30600, "", "Fluorescent Tanzanite", droprate = "9%" };
		{ 19, 30602, "", "Jagged Chrysoprase", droprate = "12%" };
		{ 20, 32080, "", "Mantle of Shadowy Embrace" };
		{ 21, 29245, "", "Wave-Crest Striders", droprate = "3%" };
		{ 22, 29239, "", "Eaglecrest Warboots", droprate = "6%" };
		{ 23, 29347, "", "Talisman of the Breaker", droprate = "7%" };
		{ 25, 0, "INV_Box_01", "=q6=#j1#" };
		{ 26, 24397, "", "Raiments of Divine Authority", droprate = "16%" };
		{ 27, 24395, "", "Mindfire Waistband", droprate = "16%" };
		{ 28, 24398, "", "Mantle of the Dusk-Dweller", droprate = "14%" };
		{ 29, 24396, "", "Vest of Vengeance", droprate = "15%" };
		{ 30, 24394, "", "Warsong Howling Axe", droprate = "15%" };
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
		{ 1, 24312, "", "Pattern: Spellstrike Hood", droprate = "0%" };
		{ 3, 27519, "", "Cloak of Malice", droprate = "17%" };
		{ 4, 27517, "", "Bands of Nethekurse", droprate = "17%" };
		{ 5, 27521, "", "Telaari Hunting Girdle", droprate = "16%" };
		{ 6, 27520, "", "Greathelm of the Unbreakable", droprate = "16%" };
		{ 7, 27518, "", "Ivory Idol of the Moongoddess", droprate = "17%" };
		{ 9, 23735, "", "Grand Warlock's Amulet", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 24312, "", "Pattern: Spellstrike Hood", droprate = "0.47%" };
		{ 19, 30548, "", "Polished Chrysoprase", droprate = "0.16%" };
		{ 20, 30547, "", "Luminous Fire Opal", droprate = "0.19%" };
		{ 21, 30546, "", "Sovereign Tanzanite", droprate = "3%" };
		{ 23, 25462, "", "Tome of Dusk", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Blood Guard Porung"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 30548, "", "Polished Chrysoprase", droprate = "0.16%" };
		{ 3, 30547, "", "Luminous Fire Opal", droprate = "0.19%" };
		{ 4, 30546, "", "Sovereign Tanzanite", droprate = "3%" };
		{ 6, 30709, "", "Pantaloons of Flaming Wrath", droprate = "14%" };
		{ 7, 30707, "", "Nimble-foot Treads", droprate = "10%" };
		{ 8, 30708, "", "Belt of Flowing Thought", droprate = "12%" };
		{ 9, 30705, "", "Spaulders of Slaughter", droprate = "21%" };
		{ 10, 30710, "", "Blood Guard's Necklace of Ferocity", droprate = "10%" };
	};
	{
		Name = BabbleBoss["Warbringer O'mrogg"];
		{ 1, 27802, "", "Tidefury Shoulderguards", droprate = "17%" };
		{ 3, 27525, "", "Jeweled Boots of Sanctification", droprate = "18%" };
		{ 4, 27868, "", "Runesong Dagger", droprate = "15%" };
		{ 5, 27524, "", "Firemaul of Destruction", droprate = "17%" };
		{ 6, 27526, "", "Skyfire Hawk-Bow", droprate = "17%" };
		{ 8, 30829, "", "Tear of the Earthmother", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30548, "", "Polished Chrysoprase", droprate = "0.16%" };
		{ 19, 30547, "", "Luminous Fire Opal", droprate = "0.19%" };
		{ 20, 30546, "", "Sovereign Tanzanite", droprate = "3%" };
	};
	{
		Name = BabbleBoss["Warchief Kargath Bladefist"];
		{ 1, 27536, "", "Hallowed Handwraps", droprate = "12%" };
		{ 2, 27537, "", "Gloves of Oblivion", droprate = "12%" };
		{ 3, 27531, "", "Wastewalker Gloves", droprate = "11%" };
		{ 4, 27474, "", "Beast Lord Handguards", droprate = "10%" };
		{ 5, 27528, "", "Gauntlets of Desolation", droprate = "13%" };
		{ 6, 27535, "", "Gauntlets of the Righteous", droprate = "11%" };
		{ 8, 27527, "", "Greaves of the Shatterer", droprate = "12%" };
		{ 9, 27529, "", "Figurine of the Colossus", droprate = "10%" };
		{ 10, 27534, "", "Hortus' Seal of Brilliance", droprate = "12%" };
		{ 11, 27533, "", "Demonblood Eviscerator", droprate = "12%" };
		{ 12, 27538, "", "Lightsworn Hammer", droprate = "10.6%" };
		{ 13, 27540, "", "Nexus Torch", droprate = "13%" };
		{ 15, 23723, "", "Warchief Kargath's Fist", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30548, "", "Polished Chrysoprase", droprate = "0.16%" };
		{ 19, 30547, "", "Luminous Fire Opal", droprate = "0.19%" };
		{ 20, 30546, "", "Sovereign Tanzanite", droprate = "3%" };
		{ 22, 29255, "", "Bands of Rarefied Magic", droprate = "0.58%" };
		{ 23, 29263, "", "Forestheart Bracers", droprate = "0.28%" };
		{ 24, 29254, "", "Boots of the Righteous Path" };
		{ 25, 29348, "", "The Bladefist", droprate = "3%" };
		{ 27, 33815, "", "Bladefist's Seal", droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 22554, "", "Formula: Enchant 2H Weapon - Savagery", "=ds=#p4# (350) #n88#", "", droprate = "1%" };
		{ 3, 0, "INV_Box_01", "=q6=" .. AL["Shattered Hand Executioner"] };
		{ 4, 31716, "", "Unused Axe of the Executioner", droprate = "100%" };
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
		{ 1, 28777, "", "Cloak of the Pit Stalker" };
		{ 2, 28780, "", "Soul-Eater's Handwraps" };
		{ 3, 28776, "", "Liar's Tongue Gloves" };
		{ 4, 28778, "", "Terror Pit Girdle" };
		{ 5, 28775, "", "Thundering Greathelm" };
		{ 6, 28779, "", "Girdle of the Endless Pit" };
		{ 7, 28789, "", "Eye of Magtheridon" };
		{ 8, 28781, "", "Karaborian Talisman" };
		{ 9, 28774, "", "Glaive of the Pit" };
		{ 10, 28782, "", "Crystalheart Pulse-Staff" };
		{ 11, 29458, "", "Aegis of the Vindicator" };
		{ 12, 28783, "", "Eredar Wand of Obliteration" };
		{ 14, 34845, "", "Pit Lord's Satchel" };
		{ 15, 34846, "", "Black Sack of Gems" };
		{ 16, 29753, "", "Chestguard of the Fallen Defender", droprate = "100%", lootTable = {"T4CHEST","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 19, 32385, "", "Magtheridon's Head", droprate = "100%" };
		{ 20, 28791, "", "Ring of the Recalcitrant" };
		{ 21, 28790, "", "Naaru Lightwarden's Band" };
		{ 22, 28793, "", "Band of Crimson Fury" };
		{ 23, 28792, "", "A'dal's Signet of Defense" };
		{ 25, 428775, "", "Bor -o G'urth, the Hand of Death", "", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Mythic };
		{ 26, 428776, "", "Lebed -o G'urth, the Finger of Death", "", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Mythic };
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
		{ 1, 24152, "INV_Misc_Bone_10" };
	};
	{
		Name = "Servant's Quarter Animal Bosses";
		{ 1, 0, "Ability_Hunter_Pet_Spider", "=q6=" .. BabbleBoss["Hyakiss the Lurker"], "" .. AL["Spider"] };
		{ 2, 30675, "", "Lurker's Cord", droprate = "32%" };
		{ 3, 30676, "", "Lurker's Grasp", droprate = "9%" };
		{ 4, 30677, "", "Lurker's Belt", droprate = "23%" };
		{ 5, 30678, "", "Lurker's Girdle", droprate = "15%" };
		{ 7, 0, "Ability_Hunter_Pet_Hyena", "=q6=" .. BabbleBoss["Rokad the Ravager"], "" .. AL["Darkhound"] };
		{ 8, 30684, "", "Ravager's Cuffs", droprate = "27%" };
		{ 9, 30685, "", "Ravager's Wrist-Wraps", droprate = "11%" };
		{ 10, 30686, "", "Ravager's Bands", droprate = "23%" };
		{ 11, 30687, "", "Ravager's Bracers", droprate = "8%" };
		{ 16, 0, "Ability_Hunter_Pet_Bat", "=q6=" .. BabbleBoss["Shadikith the Glider"], "" .. AL["Bat"] };
		{ 17, 30680, "", "Glider's Foot-Wraps", droprate = "9%" };
		{ 18, 30681, "", "Glider's Boots", droprate = "22%" };
		{ 19, 30682, "", "Glider's Sabatons", droprate = "9%" };
		{ 20, 30683, "", "Glider's Greaves", droprate = "8%" };
	};
	{
		Name = BabbleBoss["Attumen the Huntsman"];
		{ 1, 28477, "", "Harbinger Bands", droprate = "14%" };
		{ 2, 28507, "", "Handwraps of Flowing Thought", droprate = "12%" };
		{ 3, 28508, "", "Gloves of Saintly Blessings", droprate = "11%" };
		{ 4, 28453, "", "Bracers of the White Stag", droprate = "12%" };
		{ 5, 28506, "", "Gloves of Dexterous Manipulation", droprate = "14%" };
		{ 6, 28503, "", "Whirlwind Bracers", droprate = "9%" };
		{ 7, 28454, "", "Stalker's War Bands", droprate = "16%" };
		{ 8, 28502, "", "Vambraces of Courage", droprate = "10%" };
		{ 9, 28505, "", "Gauntlets of Renewed Hope", droprate = "10%" };
		{ 16, 28509, "", "Worgen Claw Necklace", droprate = "17%" };
		{ 17, 28510, "", "Spectral Band of Innervation", droprate = "10%" };
		{ 18, 28504, "", "Steelhawk Crossbow", droprate = "12%" };
		{ 19, 30480, "", "Fiery Warhorse's Reins", droprate = "0%" };
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 23, 23809, "", "Schematic: Stabilized Eternium Scope", droprate = "1%" };
	};
	{
		Name = BabbleBoss["Moroes"];
		{ 1, 28529, "", "Royal Cloak of Arathi Kings", droprate = "15%" };
		{ 2, 28570, "", "Shadow-Cloak of Dalaran", droprate = "12%" };
		{ 3, 28565, "", "Nethershard Girdle", droprate = "14%" };
		{ 4, 28545, "", "Edgewalker Longboots", droprate = "11%" };
		{ 5, 28567, "", "Belt of Gale Force", droprate = "12%" };
		{ 6, 28566, "", "Crimson Girdle of the Indomitable", droprate = "10%" };
		{ 7, 28569, "", "Boots of Valiance", droprate = "11%" };
		{ 9, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 28530, "", "Brooch of Unquenchable Fury", droprate = "12%" };
		{ 17, 28528, "", "Moroes' Lucky Pocket Watch", droprate = "12%" };
		{ 18, 28525, "", "Signet of Unshakable Faith", droprate = "14%" };
		{ 19, 28568, "", "Idol of the Avian Heart", droprate = "14%" };
		{ 20, 28524, "", "Emerald Ripper", droprate = "12%" };
		{ 22, 22559, "", "Formula: Enchant Weapon - Mongoose", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = "Keanna's Log (" .. AL["Quest Item"] .. ")";
		{ 1, 24492, "", "Keanna's Log" };
	};
	{
		Name = BabbleBoss["Maiden of Virtue"];
		{ 1, 28511, "", "Bands of Indwelling", droprate = "12%" };
		{ 2, 28515, "", "Bands of Nefarious Deeds", droprate = "13%" };
		{ 3, 28517, "", "Boots of Foretelling", droprate = "16%" };
		{ 4, 28514, "", "Bracers of Maliciousness", droprate = "15%" };
		{ 5, 28521, "", "Mitts of the Treemender", droprate = "13%" };
		{ 6, 28520, "", "Gloves of Centering", droprate = "13%" };
		{ 7, 28519, "", "Gloves of Quickening", droprate = "14%" };
		{ 8, 28512, "", "Bracers of Justice", droprate = "15%" };
		{ 9, 28518, "", "Iron Gauntlets of the Maiden", droprate = "12%" };
		{ 16, 28516, "", "Barbed Choker of Discipline", droprate = "11%" };
		{ 17, 28523, "", "Totem of Healing Rains", droprate = "14%" };
		{ 18, 28522, "", "Shard of the Virtuous", droprate = "10%" };
		{ 20, 229739, "", "Tome of Untold Secrets", droprate = "100%" };
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 22, 816253, "", "Formula: Enchant Weapon - Faith", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = "Opera Event";
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Shared Drops"] };
		{ 2, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 3, 28594, "", "Trial-FireTrousers", droprate = "15%" };
		{ 4, 28591, "", "Earthsoul Leggings", droprate = "12%" };
		{ 5, 28589, "", "Beastmaw Pauldrons", droprate = "12%" };
		{ 6, 28593, "", "Eternium Greathelm", droprate = "11%" };
		{ 7, 28590, "", "Ribbon of Sacrifice", droprate = "18%" };
		{ 8, 28592, "", "Libram of Souls Redeemed", droprate = "8%" };
		{ 10, 0, "INV_Box_01", "=q6=" .. BabbleBoss["The Crone"], "" .. AL["Wizard of Oz"] };
		{ 11, 28586, "", "Wicked Witch's Hat", droprate = "20%" };
		{ 12, 28585, "", "Ruby Slippers", droprate = "25%" };
		{ 13, 28587, "", "Legacy", droprate = "20%" };
		{ 14, 28588, "", "Blue Diamond Witchwand", droprate = "17%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Romulo & Julianne"], "" .. AL["Romulo & Julianne"] };
		{ 17, 28578, "", "Masquerade Gown", droprate = "22%" };
		{ 18, 28579, "", "Romulo's Poison Vial", droprate = "29%" };
		{ 19, 28572, "", "Blade of the Unrequited", droprate = "13%" };
		{ 20, 28573, "", "Despair", droprate = "30%" };
		{ 24, 0, "INV_Box_01", "=q6=" .. BabbleBoss["The Big Bad Wolf"], "" .. AL["Red Riding Hood"] };
		{ 25, 28582, "", "Red Riding Hood's Cloak", droprate = "12%" };
		{ 26, 28583, "", "Big Bad Wolf's Head", droprate = "16%" };
		{ 27, 28584, "", "Big Bad Wolf's Paw", droprate = "16%" };
		{ 28, 28581, "", "Wolfslayer Sniper Rifle", droprate = "22%" };
	};
	{
		Name = BabbleBoss["Nightbane"];
		{ 1, 28602, "", "Robe of the Elder Scribes", droprate = "17%" };
		{ 2, 28600, "", "Stonebough Jerkin", droprate = "13%" };
		{ 3, 28601, "", "Chestguard of the Conniver", droprate = "10%" };
		{ 4, 28599, "", "Scaled Breastplate of Carnage", droprate = "11%" };
		{ 5, 28610, "", "Ferocious Swift-Kickers", droprate = "15%" };
		{ 6, 28597, "", "Panzar'Thar Breastplate", droprate = "10%" };
		{ 7, 28608, "", "Ironstriders of Urgency", droprate = "9%" };
		{ 9, 31751, "", "Blazing Signet", droprate = "100%" };
		{ 10, 24139, "", "Faint Arcane Essence", droprate = "100%" };
		{ 16, 28609, "", "Emberspur Talisman", droprate = "13%" };
		{ 17, 28603, "", "Talisman of Nightbane", droprate = "12%" };
		{ 18, 28604, "", "Nightstaff of the Everliving", droprate = "16%" };
		{ 19, 28611, "", "Dragonheart Flameshield", droprate = "13%" };
		{ 20, 28606, "", "Shield of Impenetrable Darkness", droprate = "12%" };
		{ 22, 229739, "", "Tome of Untold Secrets", droprate = "100%" };
		{ 23, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["The Curator"];
		{ 1, 28612, "", "Pauldrons of the Solace-Giver", droprate = "15%" };
		{ 2, 28647, "", "Forest Wind Shoulderpads", droprate = "10%" };
		{ 3, 28631, "", "Dragon-Quake Shoulderguards", droprate = "13%" };
		{ 4, 28621, "", "Wrynn Dynasty Greaves", droprate = "11%" };
		{ 5, 28649, "", "Garona's Signet Ring", droprate = "12%" };
		{ 6, 28633, "", "Staff of Infinite Mysteries", droprate = "12%" };
		{ 8, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 29758, "", "Gloves of the Fallen Defender", droprate = "100%", lootTable = {"T4HAND","Token"} };
	};
	{
		Name = BabbleBoss["Terestian Illhoof"];
		{ 1, 28660, "", "Gilded Thorium Cloak", droprate = "14%" };
		{ 2, 28653, "", "Shadowvine Cloak of Infusion", droprate = "10%" };
		{ 3, 28652, "", "Cincture of Will", droprate = "10%" };
		{ 4, 28654, "", "Malefic Girdle", droprate = "11%" };
		{ 5, 28655, "", "Cord of Nature's Sustenance", droprate = "14%" };
		{ 6, 28656, "", "Girdle of the Prowler", droprate = "17%" };
		{ 7, 28662, "", "Breastplate of the Lightbinder", droprate = "17%" };
		{ 9, 229739, "", "Tome of Untold Secrets", droprate = "100%" };
		{ 10, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 28661, "", "Mender's Heart-Ring", droprate = "11%" };
		{ 17, 28785, "", "The Lightning Capacitor", droprate = "10%" };
		{ 18, 28657, "", "Fool's Bane", droprate = "14%" };
		{ 19, 28658, "", "Terestian's Stranglestaff", droprate = "7%" };
		{ 20, 28659, "", "Xavian Stiletto", droprate = "13%" };
		{ 22, 22561, "", "Formula: Enchant Weapon - Soulfrost", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = BabbleBoss["Shade of Aran"];
		{ 1, 28672, "", "Drape of the Dark Reavers", droprate = "11%" };
		{ 2, 28726, "", "Mantle of the Mind Flayer", droprate = "16%" };
		{ 3, 28670, "", "Boots of the Infernal Coven", droprate = "9%" };
		{ 4, 28663, "", "Boots of the Incorrupt", droprate = "12%" };
		{ 5, 28669, "", "Rapscallion Boots", droprate = "11%" };
		{ 6, 28671, "", "Steelspine Faceguard", droprate = "12%" };
		{ 7, 28666, "", "Pauldrons of the Justice-Seeker", droprate = "11%" };
		{ 9, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 11, 23933, "", "Medivh's Journal", droprate = "100%" };
		{ 16, 28674, "", "Saberclaw Talisman", droprate = "11%" };
		{ 17, 28675, "", "Shermanar Great-Ring", droprate = "10%" };
		{ 18, 28727, "", "Pendant of the Violet Eye", droprate = "15%" };
		{ 19, 28728, "", "Aran's Soothing Sapphire", droprate = "12%" };
		{ 20, 28673, "", "Tirisfal Wand of Ascendancy", droprate = "7%" };
		{ 22, 22560, "", "Formula: Enchant Weapon - Sunfire", droprate = "N:2%/H:5%/A:10%" };
	};
	{
		Name = BabbleBoss["Netherspite"];
		{ 1, 28744, "", "Uni-Mind Headdress", droprate = "12%" };
		{ 2, 28742, "", "Pantaloons of Repentence", droprate = "10%" };
		{ 3, 28732, "", "Cowl of Defiance", droprate = "17%" };
		{ 4, 28741, "", "Skulker's Greaves", droprate = "15%" };
		{ 5, 28735, "", "Earthblood Chestguard", droprate = "15%" };
		{ 6, 28740, "", "Rip-Flayer Leggings", droprate = "10%" };
		{ 7, 28743, "", "Mantle of Abrahmis", droprate = "9%" };
		{ 8, 28733, "", "Girdle of Truth", droprate = "10%" };
		{ 16, 28731, "", "Shining Chain of the Afterworld", droprate = "15%" };
		{ 17, 28730, "", "Mithril Band of the Unscarred", droprate = "10%" };
		{ 18, 28734, "", "Jewel of Infinite Possibilities", droprate = "11%" };
		{ 19, 28729, "", "Spiteblade", droprate = "6%" };
		{ 21, 229739, "", "Tome of Untold Secrets", droprate = "100%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Chess Event"];
		{ 1, 28756, "", "Headdress of the High Potentate", droprate = "17%" };
		{ 2, 28755, "", "Bladed Shoulderpads of the Merciless", droprate = "13%" };
		{ 3, 28750, "", "Girdle of Treachery", droprate = "15%" };
		{ 4, 28752, "", "Forestlord Striders", droprate = "14%" };
		{ 5, 28751, "", "Heart-Flame Leggings", droprate = "12%" };
		{ 6, 28746, "", "Fiend Slayer Boots", droprate = "16%" };
		{ 7, 28748, "", "Legplates of the Innocent", droprate = "13%" };
		{ 8, 28747, "", "Battlescar Boots", droprate = "13%" };
		{ 16, 28745, "", "Mithril Chain of Heroism", droprate = "12%" };
		{ 17, 28753, "", "Ring of Recurrence", droprate = "12%" };
		{ 18, 28749, "", "King's Defender", droprate = "12%" };
		{ 19, 28754, "", "Triptych Shield of the Ancients", droprate = "13%" };
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Prince Malchezaar"];
		{ 1, 28765, "", "Stainless Cloak of the Pure Hearted", droprate = "10%" };
		{ 2, 28766, "", "Ruby Drape of the Mysticant", droprate = "12%" };
		{ 3, 28764, "", "Farstrider Wildercloak", droprate = "15%" };
		{ 4, 28762, "", "Adornment of Stolen Souls", droprate = "9%" };
		{ 5, 28763, "", "Jade Ring of the Everliving", droprate = "11%" };
		{ 6, 28757, "", "Ring of a Thousand Marks", droprate = "12%" };
		{ 8, 28770, "", "Nathrezim Mindblade", droprate = "10%" };
		{ 9, 28768, "", "Malchazeen", droprate = "9%" };
		{ 10, 28767, "", "The Decapitator", droprate = "15%" };
		{ 11, 28773, "", "Gorehowl", droprate = "12%" };
		{ 12, 28771, "", "Light's Justice", droprate = "11%" };
		{ 13, 28772, "", "Sunfury Bow of the Phoenix", droprate = "9%" };
		{ 16, 29761, "", "Helm of the Fallen Defender", droprate = "100%", lootTable = {"T4HEAD","Token"} };
		{ 18, 229739, "", "Tome of Untold Secrets", droprate = "100%" };
		{ 19, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 21, 499438, "", "Smoldering Emberwyrm", "", [AtlasLoot_Difficulty.MIN_DIF] = AtlasLoot_Difficulty.Heroic,"" };
	};
	{ --Trash Mobs
		Name = AL["Trash Mobs"];
		{ 1, 30642, "", "Drape of the Righteous", droprate = "0.22%" };
		{ 2, 30668, "", "Grasp of the Dead", droprate = "0.17%" };
		{ 3, 30673, "", "Inferno Waist Cord", droprate = "0.21%" };
		{ 4, 30644, "", "Grips of the Deftness", droprate = "0.23%" };
		{ 5, 30674, "", "Zierhut's Lost Treads", droprate = "0.17%" };
		{ 6, 30643, "", "Belt of the Tracker", droprate = "0.19%" };
		{ 7, 30641, "", "Boots of Elusion", droprate = "0.13%" };
		{ 9, 23857, "", "Legacy of the Mountain King" };
		{ 10, 23864, "", "Torment of the Worgen" };
		{ 11, 23862, "", "Redemption of the Fallen" };
		{ 12, 23865, "", "Wrath of the Titans" };
		{ 14, 21882, "", "Soul Essence" };
		{ 16, 30666, "", "Ritssyn's Lost Pendant", droprate = "0.18%" };
		{ 17, 30667, "", "Ring of Unrelenting Storms", droprate = "0.17%" };
		{ 19, 21903, "", "Pattern: Soulcloth Shoulders", droprate = "0.74%" };
		{ 20, 21904, "", "Pattern: Soulcloth Vest", droprate = "1%" };
		{ 21, 22545, "", "Formula: Enchant Boots - Surefooted", droprate = "0.66%" };
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
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 434702, "", "Cloak of Swift Mending", droprate = "5%" };
		{ 3, 434697, "", "Bindings of Raging Fire", droprate = "5%" };
		{ 4, 434701, "", "Leggings of the Betrayed", droprate = "5%" };
		{ 5, 434698, "", "Bracers of the Forest Stalker", droprate = "5%" };
		{ 6, 434700, "", "Gauntlets of Divine Blessings", droprate = "5%" };
		{ 7, 434699, "", "Sun-forged Cleaver", droprate = "5%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 434602, "", "Eversong Cuffs", droprate = "20%" };
		{ 19, 434601, "", "Shoulderplates of Everlasting Pain", droprate = "21%" };
		{ 20, 434604, "", "Jaded Crystal Dagger", droprate = "21%" };
		{ 21, 434603, "", "Distracting Blades", droprate = "21%" };
		{ 23, 435275, "", "Orb of the Sin'dorei", droprate = "2%" };
	};
	{
		Name = BabbleBoss["Vexallus"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 434708, "", "Cloak of the Coming Night", droprate = "17%" };
		{ 3, 434705, "", "Bracers of Divine Infusion", droprate = "5%" };
		{ 4, 434707, "", "Boots of Resuscitation", droprate = "16%" };
		{ 5, 434704, "", "Band of Arcane Alacrity", droprate = "18%" };
		{ 6, 434706, "", "Band of Determination", droprate = "5%" };
		{ 7, 434703, "", "Latro's Dancing Blade", droprate = "16%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 434607, "", "Fel-tinged Mantle", droprate = "20%" };
		{ 19, 434605, "", "Breastplate of Fierce Survival", droprate = "19%" };
		{ 20, 434606, "", "Edge of Oppression", droprate = "20%" };
		{ 21, 434608, "", "Rod of the Blazing Light", droprate = "19%" };
		{ 23, 435275, "", "Orb of the Sin'dorei", droprate = "2%" };
	};
	{
		Name = BabbleBoss["Priestess Delrissa"];
		{ 1, 0, "INV_Box_01", "=q6=#j1#" };
		{ 2, 434792, "", "Cloak of the Betrayed", droprate = "17%" };
		{ 3, 434788, "", "Duskhallow Mantle", droprate = "5%" };
		{ 4, 434791, "", "Gauntlets of the Tranquil Waves", droprate = "16%" };
		{ 5, 434789, "", "Bracers of Slaughter", droprate = "17%" };
		{ 6, 434790, "", "Battle-mace of the High Priestess", droprate = "16%" };
		{ 7, 434783, "", "Nightstrike", droprate = "17%" };
		{ 9, 35756, "", "Formula: Enchant Cloak - Steelweave", droprate = "N:2%/H:5%/A:10%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 434473, "", "Commendation of Kael'thas", droprate = "19%" };
		{ 19, 434472, "", "Shard of Contempt", droprate = "19%" };
		{ 20, 434470, "", "Timbal's Focusing Crystal", droprate = "19%" };
		{ 21, 434471, "", "Vial of the Sunwell", droprate = "19%" };
		{ 23, 435275, "", "Orb of the Sin'dorei", droprate = "2%" };
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		{ 1, 434810, "", "Cloak of Blade Turning", droprate = "5%" };
		{ 2, 434808, "", "Gloves of Arcane Acuity", droprate = "5%" };
		{ 3, 434809, "", "Sunrage Treads", droprate = "15%" };
		{ 4, 434799, "", "Hauberk of the War Bringer", droprate = "13%" };
		{ 5, 434807, "", "Sunstrider Warboots", droprate = "5%" };
		{ 6, 434625, "", "Kharmaa's Ring of Fate", droprate = "5%" };
		{ 8, 34157, "", "Head of Kael'thas", droprate = "56%" };
		{ 16, 434793, "", "Cord of Reconstruction", droprate = "5%" };
		{ 17, 434796, "", "Robes of Summer Flame", droprate = "5%" };
		{ 18, 434795, "", "Helm of Sanctification", droprate = "5%" };
		{ 19, 434798, "", "Band of Celerity", droprate = "5%" };
		{ 20, 434794, "", "Axe of Shattered Dreams", droprate = "5%" };
		{ 21, 434797, "", "Sun-infused Focus Staff", droprate = "14%" };
		{ 22, 35504, "", "Phoenix Hatchling", droprate = "7%" };
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 434610, "", "Scarlet Sin'dorei Robes", droprate = "19%" };
		{ 3, 434613, "", "Shoulderpads of the Silvermoon Retainer", droprate = "19%" };
		{ 4, 434614, "", "Tunic of the Ranger Lord", droprate = "18%" };
		{ 5, 434615, "", "Netherforce Chestplate", droprate = "19%" };
		{ 6, 434612, "", "Greaves of the Penitent Knight", droprate = "19%" };
		{ 8, 34160, "", "The Signet Ring of Prince Kael'thas", droprate = "12%" };
		{ 16, 434609, "", "Quickening Blade of the Prince", droprate = "20%" };
		{ 17, 434616, "", "Breeching Comet", droprate = "19%" };
		{ 18, 434611, "", "Cudgel of Consecration", droprate = "19%" };
		{ 19, 35513, "", "Swift White Hawkstrider", droprate = "3%" };
		{ 21, 35504, "", "Phoenix Hatchling", droprate = "7%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 35516, "", "Sun Touched Satchel", droprate = "1%" };
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
		{ 1, 34170, "", "Pantaloons of Calming Strife" };
		{ 2, 34386, "", "Pantaloons of Growing Strife" };
		{ 3, 34169, "", "Breeches of Natural Aggression" };
		{ 4, 34384, "", "Breeches of Natural Splendor" };
		{ 5, 34168, "", "Starstalker Legguards" };
		{ 6, 34167, "", "Legplates of the Holy Juggernaut" };
		{ 7, 34382, "", "Judicator's Legguards" };
		{ 8, 34166, "", "Band of Lucent Beams" };
		{ 9, 34165, "", "Fang of Kalecgos" };
		{ 10, 34164, "", "Dragonscale-Encrusted Longblade" };
		{ 16, 34848, "", "Bracers of the Forgotten Conqueror", droprate = "10%" };
		{ 17, 34851, "", "Bracers of the Forgotten Protector", droprate = "11%" };
		{ 18, 34852, "", "Bracers of the Forgotten Vanquisher", droprate = "12%" };
		{ 20, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Brutallus"];
		{ 1, 34181, "", "Leggings of Calamity", droprate = "15%" };
		{ 2, 34180, "", "Felfury Legplates", droprate = "13%" };
		{ 3, 34381, "", "Felstrength Legplates" };
		{ 4, 34178, "", "Collar of the Pit Lord", droprate = "15%" };
		{ 5, 34177, "", "Clutch of Demise", droprate = "15%" };
		{ 6, 34179, "", "Heart of the Pit", droprate = "13%" };
		{ 7, 34176, "", "Reign of Misery", droprate = "17%" };
		{ 16, 34853, "", "Belt of the Forgotten Conqueror", droprate = "74%" };
		{ 17, 34854, "", "Belt of the Forgotten Protector", droprate = "70%" };
		{ 18, 34855, "", "Belt of the Forgotten Vanquisher", droprate = "75%" };
		{ 20, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Felmyst"];
		{ 1, 34352, "", "Borderland Fortress Grips", droprate = "15%" };
		{ 2, 34188, "", "Leggings of the Immortal Night", droprate = "14%" };
		{ 3, 34385, "", "Leggings of the Immortal Beast" };
		{ 4, 34186, "", "Chain Links of the Tumultuous Storm", droprate = "15%" };
		{ 5, 34383, "", "Kilt of Spiritual Reconstruction" };
		{ 6, 34184, "", "Brooch of the Highborne", droprate = "16%" };
		{ 7, 34185, "", "Sword Breaker's Bulwark", droprate = "16%" };
		{ 8, 34182, "", "Grand Magister's Staff of Torrents", droprate = "17%" };
		{ 16, 34856, "", "Boots of the Forgotten Conqueror", droprate = "79%" };
		{ 17, 34857, "", "Boots of the Forgotten Protector", droprate = "86%" };
		{ 18, 34858, "", "Boots of the Forgotten Vanquisher", droprate = "77%" };
		{ 20, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["The Eredar Twins"];
		{ 1, 34205, "", "Shroud of Redeemed Souls", droprate = "18%" };
		{ 2, 34190, "", "Crimson Paragon's Cover", droprate = "16%" };
		{ 3, 34210, "", "Amice of the Convoker", droprate = "19%" };
		{ 4, 34202, "", "Shawl of Wonderment", droprate = "23%" };
		{ 5, 34393, "", "Shoulderpads of Knowledge's Pursuit" };
		{ 6, 34209, "", "Spaulders of Reclamation", droprate = "20%" };
		{ 7, 34391, "", "Spaulders of Devastation" };
		{ 8, 34195, "", "Shoulderpads of Vehemence", droprate = "17%" };
		{ 9, 34392, "", "Demontooth Shoulderpads" };
		{ 10, 34194, "", "Mantle of the Golden Forest", droprate = "21%" };
		{ 11, 34208, "", "Equilibrium Epaulets", droprate = "19%" };
		{ 12, 34390, "", "Erupting Epaulets" };
		{ 13, 34192, "", "Pauldrons of Perseverance", droprate = "19%" };
		{ 14, 34388, "", "Pauldrons of Berserking" };
		{ 16, 34193, "", "Spaulders of the Thalassian Savior", droprate = "17%" };
		{ 17, 34389, "", "Spaulders of the Thalassian Defender" };
		{ 18, 35290, "", "Sin'dorei Pendant of Conquest", droprate = "33%" };
		{ 19, 35291, "", "Sin'dorei Pendant of Salvation", droprate = "32%" };
		{ 20, 35292, "", "Sin'dorei Pendant of Triumph", droprate = "32%" };
		{ 21, 34204, "", "Amulet of Unfettered Magics", droprate = "20%" };
		{ 22, 34189, "", "Band of Ruinous Delight", droprate = "18%" };
		{ 23, 34206, "", "Book of Highborne Hymns", droprate = "22%" };
		{ 24, 34197, "", "Shiv of Exsanguination", droprate = "23%" };
		{ 25, 34199, "", "Archon's Gavel", droprate = "17%" };
		{ 26, 34203, "", "Grip of Mannoroth", droprate = "20%" };
		{ 27, 34198, "", "Stanchion of Primal Instinct", droprate = "19%" };
		{ 28, 34196, "", "Golden Bow of Quel'Thalas", droprate = "18%" };
		{ 30, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["M'uru"];
		{ 1, 34232, "", "Fel Conquerer Raiments", droprate = "13%" };
		{ 2, 34233, "", "Robes of Faltered Light", droprate = "17%" };
		{ 3, 34399, "", "Robes of Ghostly Hatred" };
		{ 4, 34212, "", "Sunglow Vest", droprate = "14%" };
		{ 5, 34398, "", "Utopian Tunic of Elune" };
		{ 6, 34211, "", "Harness of Carnal Instinct", droprate = "15%" };
		{ 7, 34397, "", "Bladed Chaos Tunic" };
		{ 8, 34234, "", "Shadowed Gauntlets of Paroxysm", droprate = "18%" };
		{ 9, 34408, "", "Gloves of the Forest Drifter" };
		{ 10, 34229, "", "Garments of Serene Shores", droprate = "13%" };
		{ 11, 34396, "", "Garments of Crashing Shores" };
		{ 12, 34228, "", "Vicious Hawkstrider Hauberk", droprate = "15%" };
		{ 13, 34215, "", "Warharness of Reckless Fury", droprate = "16%" };
		{ 14, 34394, "", "Breastplate of Agony's Aversion" };
		{ 15, 34240, "", "Gauntlets of the Soothed Soul", droprate = "15%" };
		{ 16, 34216, "", "Heroic Judicator's Chestguard", droprate = "16%" };
		{ 17, 34395, "", "Noble Judicator's Chestguard" };
		{ 18, 34213, "", "Ring of Hardened Resolve", droprate = "15%" };
		{ 19, 34230, "", "Ring of Omnipotence", droprate = "16%" };
		{ 20, 35282, "", "Sin'dorei Band of Dominance", droprate = "31%" };
		{ 21, 35283, "", "Sin'dorei Band of Salvation", droprate = "31%" };
		{ 22, 35284, "", "Sin'dorei Band of Triumph", droprate = "34%" };
		{ 23, 34427, "", "Blackened Naaru Sliver", droprate = "13%" };
		{ 24, 34430, "", "Glimmering Naaru Sliver", droprate = "16%" };
		{ 25, 34429, "", "Shifting Naaru Sliver", droprate = "15%" };
		{ 26, 34428, "", "Steely Naaru Sliver", droprate = "15%" };
		{ 27, 34214, "", "Muramasa", droprate = "16%" };
		{ 28, 34231, "", "Aegis of Angelic Fortune", droprate = "14%" };
		{ 30, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Kil'jaeden"];
		{ 1, 34241, "", "Cloak of Unforgivable Sin", droprate = "16%" };
		{ 2, 34242, "", "Tattered Cape of Antonidas", droprate = "16%" };
		{ 3, 34339, "", "Cowl of Light's Purity", droprate = "18%" };
		{ 4, 34405, "", "Helm of Arcane Purity" };
		{ 5, 34340, "", "Dark Conjuror's Collar", droprate = "20%" };
		{ 6, 34342, "", "Handguards of the Dawn", droprate = "19%" };
		{ 7, 34406, "", "Gloves of Tyri's Power" };
		{ 8, 34344, "", "Handguards of the Defiled Worlds", droprate = "22%" };
		{ 9, 34244, "", "Duplicitous Guise", droprate = "17%" };
		{ 10, 34404, "", "Mask of the Furry Hunter" };
		{ 11, 34245, "", "Cover of Ursol the Wise", droprate = "14%" };
		{ 12, 34403, "", "Cover of Ursoc the Mighty" };
		{ 13, 34333, "", "Coif of Alleria", droprate = "14%" };
		{ 14, 34332, "", "Cowl of Gul'dan", droprate = "14%" };
		{ 15, 34402, "", "Shroud of Chieftain Ner'zhul" };
		{ 16, 34343, "", "Thalassian Ranger Gauntlets", droprate = "18%" };
		{ 17, 34243, "", "Helm of Burning Righteousness", droprate = "21%" };
		{ 18, 34401, "", "Helm of Uther's Resolve" };
		{ 19, 34345, "", "Crown of Anasterian", droprate = "16%" };
		{ 20, 34400, "", "Crown of Dath'Remar" };
		{ 21, 34341, "", "Borderland Paingrips", droprate = "18%" };
		{ 23, 34334, "", "Thori'dal, the Stars' Fury", droprate = "6%" };
		{ 25, 34329, "", "Crux of the Apocalypse", droprate = "16%" };
		{ 26, 34247, "", "Apolyon, the Soul-Render", droprate = "17%" };
		{ 27, 34335, "", "Hammer of Sanctification", droprate = "20%" };
		{ 28, 34331, "", "Hand of the Deceiver", droprate = "17%" };
		{ 29, 34336, "", "Sunflare", droprate = "18%" };
		{ 30, 34337, "", "Golden Staff of the Sin'dorei", droprate = "14%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 34351, "", "Tranquil Majesty Wraps", droprate = "1%" };
		{ 2, 34407, "", "Tranquil Moonlight Wraps" };
		{ 3, 34350, "", "Gauntlets of the Ancient Shadowmoon", droprate = "2%" };
		{ 4, 34409, "", "Gauntlets of the Ancient Frostwolf" };
		{ 5, 35733, "", "Ring of Harmonic Beauty", droprate = "8%" };
		{ 6, 34183, "", "Shivering Felspine", droprate = "1%" };
		{ 7, 34346, "", "Mounting Vengeance", droprate = "2%" };
		{ 8, 34349, "", "Blade of Life's Inevitability", droprate = "2%" };
		{ 9, 34348, "", "Wand of Cleansing Light", droprate = "4%" };
		{ 10, 34347, "", "Wand of the Demonsoul", droprate = "2%" };
		{ 12, 35273, "", "Study of Advanced Smelting", droprate = "3%" };
		{ 14, 34664, "", "Sunmote", droprate = "66%" };
		{ 16, 32228, "", "Empyrean Sapphire", droprate = "12%" };
		{ 17, 32231, "", "Pyrestone", droprate = "8%" };
		{ 18, 32229, "", "Lionseye", droprate = "6%" };
		{ 19, 32249, "", "Seaspray Emerald", droprate = "9%" };
		{ 20, 32230, "", "Shadowsong Amethyst", droprate = "6%" };
		{ 21, 32227, "", "Crimson Spinel", droprate = "8%" };
		{ 23, 35208, "", "Plans: Sunblessed Gauntlets", droprate = "0.25%" };
		{ 24, 35210, "", "Plans: Sunblessed Breastplate", droprate = "0.25%" };
		{ 25, 35209, "", "Plans: Hard Khorium Battlefists", droprate = "6%" };
		{ 26, 35211, "", "Plans: Hard Khorium Battleplate", droprate = "0.38%" };
	};
	{
		Name = "SP Patterns/Plans";
		{ 1, 35212, "", "Pattern: Leather Gauntlets of the Sun" };
		{ 2, 35216, "", "Pattern: Leather Chestguard of the Sun" };
		{ 3, 35213, "", "Pattern: Fletcher's Gloves of the Phoenix" };
		{ 4, 35217, "", "Pattern: Pattern: Embrace of the Phoenix" };
		{ 5, 35214, "", "Pattern: Gloves of Immortal Dusk" };
		{ 6, 35218, "", "Pattern: Carapace of Sun and Shadow" };
		{ 7, 35215, "", "Pattern: Sun-Drenched Scale Gloves" };
		{ 8, 35219, "", "Pattern: Sun-Drenched Scale Chestguard" };
		{ 9, 35204, "", "Pattern: Sunfire Handwraps" };
		{ 10, 35206, "", "Pattern: Sunfire Robe" };
		{ 11, 35205, "", "Pattern: Hands of Eternal Light" };
		{ 12, 35207, "", "Pattern: Robe of Eternal Light" };
		{ 13, 35198, "", "Design: Loop of Forged Power" };
		{ 14, 35201, "", "Design: Pendant of Sunfire" };
		{ 15, 35199, "", "Design: Ring of Flowing Life" };
		{ 16, 35202, "", "Design: Amulet of Flowing Life" };
		{ 17, 35200, "", "Design: Hard Khorium Band" };
		{ 18, 35203, "", "Design: Hard Khorium Choker" };
		{ 19, 35186, "", "Schematic: Annihilator Holo-Gogs" };
		{ 20, 35187, "", "Schematic: Justicebringer 3000 Specs" };
		{ 21, 35189, "", "Schematic: Powerheal 9000 Lens" };
		{ 22, 35190, "", "Schematic: Hyper-Magnified Moon Specs" };
		{ 23, 35191, "", "Schematic: Wonderheal XT68 Shades" };
		{ 24, 35192, "", "Schematic: Primal-Attuned Goggles" };
		{ 25, 35193, "", "Schematic: Lightning Etched Specs" };
		{ 26, 35194, "", "Schematic: Surestrike Goggles v3.0" };
		{ 27, 35195, "", "Schematic: Mayhem Projection Goggles" };
		{ 28, 35196, "", "Schematic: Hard Khorium Goggles" };
		{ 29, 35197, "", "Schematic: Quad Deathblow X44 Goggles" };
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
		{ 1, 28373, "", "Cloak of Scintillating Auras", droprate = "17%" };
		{ 2, 28374, "", "Mana-Sphere Shoulderguards", droprate = "20%" };
		{ 3, 28384, "", "Outland Striders", droprate = "19%" };
		{ 4, 28375, "", "Rubium War-Girdle", droprate = "14%" };
		{ 5, 28372, "", "Idol of Feral Shadows", droprate = "15.%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30582, "", "Deadly Fire Opal", droprate = "0.18%" };
		{ 19, 30575, "", "Nimble Fire Opal", droprate = "0.18%" };
		{ 20, 30581, "", "Durable Fire Opal", droprate = "0.18%" };
	};
	{
		Name = BabbleBoss["Wrath-Scryer Soccothrates"];
		{ 1, 28396, "", "Gloves of the Unbound", droprate = "17.%" };
		{ 2, 28398, "", "The Sleeper's Cord", droprate = "16%" };
		{ 3, 28394, "", "Ryngo's Band of Ingenuity", droprate = "16%" };
		{ 4, 28393, "", "Warmaul of Infused Light", droprate = "16%" };
		{ 5, 28397, "", "Emberhawk Crossbow", droprate = "17%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30582, "", "Deadly Fire Opal", droprate = "0.18%" };
		{ 19, 30575, "", "Nimble Fire Opal", droprate = "0.18%" };
		{ 20, 30581, "", "Durable Fire Opal", droprate = "0.18%" };
	};
	{
		Name = BabbleBoss["Dalliah the Doomsayer"];
		{ 1, 24308, "", "Pattern: Whitemend Pants", droprate = "0.29%" };
		{ 3, 28391, "", "Worldfire Chestguard", droprate = "18%" };
		{ 4, 28390, "", "Thatia's Self-Correcting Gauntlets", droprate = "14.%" };
		{ 5, 28387, "", "Lamp of Peaceful Repose", droprate = "15%" };
		{ 6, 28392, "", "Reflex Blades", droprate = "18%" };
		{ 7, 28386, "", "Nether Core's Control Rod", droprate = "15%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30582, "", "Deadly Fire Opal", droprate = "0.18%" };
		{ 19, 30575, "", "Nimble Fire Opal", droprate = "0.18%" };
		{ 20, 30581, "", "Durable Fire Opal", droprate = "0.18%" };
	};
	{
		Name = BabbleBoss["Harbinger Skyriss"];
		{ 1, 28415, "", "Hood of Oblivion", droprate = "12%" };
		{ 2, 28413, "", "Hallowed Crown", droprate = "12%" };
		{ 3, 28414, "", "Helm of Assassination", droprate = "11%" };
		{ 4, 28231, "", "Tidefury Chestpiece", droprate = "14%" };
		{ 5, 28403, "", "Doomplate Chestguard", droprate = "13%" };
		{ 6, 28205, "", "Breastplate of the Bold", droprate = "11%" };
		{ 8, 28406, "", "Sigil-Laced Boots", droprate = "12%" };
		{ 9, 28419, "", "Choker of Fluid Thought", droprate = "14%" };
		{ 10, 28407, "", "Elementium Band of the Sentry", droprate = "10%" };
		{ 11, 28418, "", "Shiffar's Nexus-Horn", droprate = "12%" };
		{ 12, 28412, "", "Lamp of Peaceful Radiance", droprate = "13%" };
		{ 13, 28416, "", "Hungering Spineripper", droprate = "12%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30582, "", "Deadly Fire Opal", droprate = "0.18%" };
		{ 19, 30575, "", "Nimble Fire Opal", droprate = "0.18%" };
		{ 20, 30581, "", "Durable Fire Opal", droprate = "0.18%" };
		{ 22, 29241, "", "Belt of Depravity", droprate = "8%" };
		{ 23, 29248, "", "Shadowstep Striders", droprate = "0.61%" };
		{ 24, 29252, "", "Bracers of Dignity", droprate = "3%" };
		{ 25, 29360, "", "Vileblade of the Betrayer", droprate = "0.18%" };
		{ 27, 33861, "", "The Scroll of Skyriss", droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["The Botanica"] };
		{ 2, 24172, "", "Design: Coronet of Verdant Flame", droprate = "0.27%" };
		{ 4, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["The Mechanar"] };
		{ 5, 22920, "", "Recipe: Major Fire Protection Potion", droprate = "0.30%" };
		{ 6, 21906, "", "Pattern: Arcanoweave Boots", droprate = "0.57%" };
		{ 8, 0, "INV_Box_01", "=q6=" .. AL["Overcharged Manacell"], "" .. BabbleZone["The Mechanar"] };
		{ 9, 30824, "", "Overcharged Manacell" };
		{ 16, 0, "INV_Box_01", "=q6=" .. AL["Trash Mobs"], "" .. BabbleZone["The Arcatraz"] };
		{ 17, 23606, "", "Plans: Felsteel Leggings", droprate = "3%" };
		{ 18, 22556, "", "Formula: Enchant 2H Weapon - Major Agility", droprate = "1%" };
		{ 19, 29672, "", "Pattern: Flame Armor Kit", droprate = "1%" };
		{ 20, 21905, "", "Pattern: Arcanoweave Bracers", droprate = "1%" };
		{ 22, 0, "INV_Box_01", "=q6=" .. AL["Third Fragment Guardian"], "" .. BabbleZone["The Arcatraz"] };
		{ 23, 24488, "", "Third Key Fragment", droprate = "100%" };
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
		{ 1, 28301, "", "Syrannis' Mystic Sheen", droprate = "28%" };
		{ 2, 28304, "", "Prismatic Mittens of Mending", droprate = "32%" };
		{ 3, 28306, "", "Towering Mantle of the Hunt", droprate = "30%" };
		{ 4, 28296, "", "Libram of the Lightbringer", droprate = "34%" };
		{ 5, 28311, "", "Revenger", droprate = "26%" };
		{ 7, 28769, "", "The Keystone", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30574, "", "Brutal Tanzanite", droprate = "8%" };
		{ 19, 30572, "", "Imperial Tanzanite", droprate = "8%" };
		{ 20, 30573, "", "Mysterious Fire Opal", droprate = "8%" };
	};
	{
		Name = BabbleBoss["High Botanist Freywinn"];
		{ 1, 28317, "", "Energis Armwraps", droprate = "17%" };
		{ 2, 28318, "", "Obsidian Clodstompers", droprate = "16%" };
		{ 3, 28321, "", "Enchanted Thorium Torque", droprate = "18%" };
		{ 4, 28315, "", "Stormreaver Warblades", droprate = "16%" };
		{ 5, 28316, "", "Aegis of the Sunbird", droprate = "14%" };
		{ 7, 23617, "", "Plans: Earthpeace Breastplate", droprate = "1%" };
		{ 9, 31744, "", "Botanist's Field Guide", droprate = "100%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30574, "", "Brutal Tanzanite", droprate = "8%" };
		{ 19, 30572, "", "Imperial Tanzanite", droprate = "8%" };
		{ 20, 30573, "", "Mysterious Fire Opal", droprate = "8%" };
	};
	{
		Name = BabbleBoss["Thorngrin the Tender"];
		{ 1, 24310, "", "Pattern: Battlecast Pants", "0.44%" };
		{ 3, 28324, "", "Gauntlets of Cruel Intention", droprate = "15%" };
		{ 4, 28327, "", "Arcane Netherband", droprate = "17%" };
		{ 5, 28323, "", "Ring of Umbral Doom", droprate = "16%" };
		{ 6, 28322, "", "Runed Dagger of Solace", droprate = "18%" };
		{ 7, 28325, "", "Dreamer's Dragonstaff", droprate = "15%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30574, "", "Brutal Tanzanite", droprate = "8%" };
		{ 19, 30572, "", "Imperial Tanzanite", droprate = "8%" };
		{ 20, 30573, "", "Mysterious Fire Opal", droprate = "8%" };
	};
	{
		Name = BabbleBoss["Laj"];
		{ 1, 27739, "", "Spaulders of the Righteous", droprate = "18%" };
		{ 3, 28328, "", "Mithril-Bark Cloak", droprate = "20%" };
		{ 4, 28338, "", "Devil-Stitched Leggings", droprate = "18%" };
		{ 5, 28340, "", "Mantle of Autumn", droprate = "17%" };
		{ 6, 28339, "", "Boots of the Shifting Sands", droprate = "19%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30574, "", "Brutal Tanzanite", droprate = "8%" };
		{ 19, 30572, "", "Imperial Tanzanite", droprate = "8%" };
		{ 20, 30573, "", "Mysterious Fire Opal", droprate = "8%" };
	};
	{
		Name = BabbleBoss["Warp Splinter"];
		{ 1, 24311, "", "Pattern: Whitemend Hood", "0.30%" };
		{ 3, 28371, "", "Netherfury Cape", droprate = "13%" };
		{ 4, 28342, "", "Warp Infused Drape", droprate = "10%" };
		{ 5, 28347, "", "Warpscale Leggings", droprate = "11%" };
		{ 6, 28343, "", "Jagged Bark Pendant", droprate = "12%" };
		{ 7, 28370, "", "Bangle of Endless Blessings", droprate = "12%" };
		{ 8, 28345, "", "Warp Splinter's Thorn", droprate = "10%" };
		{ 9, 28367, "", "Greatsword of Forlorn Visions", droprate = "11%" };
		{ 10, 28341, "", "Warpstaff of Arcanum", droprate = "10%" };
		{ 12, 31085, "", "Top Shard of the Arcatraz Key", droprate = "100%" };
		{ 16, 28229, "", "Incanter's Robe", droprate = "8%" };
		{ 17, 28348, "", "Moonglade Cowl", droprate = "11%" };
		{ 18, 28349, "", "Tidefury Helm", droprate = "13%" };
		{ 19, 28228, "", "Beast Lord Curiass", droprate = "9%" };
		{ 20, 28350, "", "Warhelm of the Bold", droprate = "8%" };
	};
	{ -- only heroic
		Name = BabbleBoss["Warp Splinter"] .. " (" .. AL["Heroic"] .. ")";
		{ 1, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 2, 29258, "", "Boots of Ethereal Manipulation" };
		{ 3, 29262, "", "Boots of the Endless Hunt", droprate = "4%" };
		{ 4, 32072, "", "Gauntlets of Dissension" };
		{ 5, 29359, "", "Feral Staff of Lashing" };
		{ 6, 24311, "", "Pattern: Whitemend Hood", "0.30%" };
		{ 8, 28371, "", "Netherfury Cape", droprate = "4%" };
		{ 9, 28342, "", "Warp Infused Drape", droprate = "8%" };
		{ 10, 28347, "", "Warpscale Leggings", droprate = "12%" };
		{ 11, 28343, "", "Jagged Bark Pendant", droprate = "4%" };
		{ 12, 28370, "", "Bangle of Endless Blessings", droprate = "28%" };
		{ 13, 28345, "", "Warp Splinter's Thorn", droprate = "28%" };
		{ 14, 28367, "", "Greatsword of Forlorn Visions", droprate = "8%" };
		{ 15, 28341, "", "Warpstaff of Arcanum", droprate = "4%" };
		{ 16, 30574, "", "Brutal Tanzanite", droprate = "8%" };
		{ 17, 30572, "", "Imperial Tanzanite", droprate = "8%" };
		{ 18, 30573, "", "Mysterious Fire Opal", droprate = "8%" };
		{ 20, 28229, "", "Incanter's Robe", droprate = "4%" };
		{ 21, 28348, "", "Moonglade Cowl", droprate = "12%" };
		{ 22, 28349, "", "Tidefury Helm", droprate = "12%" };
		{ 23, 28228, "", "Beast Lord Curiass", droprate = "20%" };
		{ 24, 28350, "", "Warhelm of the Bold", droprate = "16%" };
		{ 26, 31085, "", "Top Shard of the Arcatraz Key", droprate = "100%" };
		{ 27, 33859, "", "Warp Splinter Clipping", droprate = "100%" };
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
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Cache of the Legion"] };
		{ 2, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 3, 28249, "", "Capacitus' Cloak of Calibration", droprate = "21%" };
		{ 4, 28250, "", "Vestia's Pauldrons of Inner Grace", droprate = "17%" };
		{ 5, 28252, "", "Bloodfyre Robes of Annihilation", droprate = "22%" };
		{ 6, 28251, "", "Boots of the Glade-Keeper", droprate = "18%" };
		{ 7, 28248, "", "Totem of the Void", droprate = "19%" };
		{ 16, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Gatewatcher Gyro-Kill"] };
		{ 17, 30436, "", "Jagged Blue Crystal", droprate = "100%" };
		{ 19, 0, "INV_Box_01", "=q6=" .. BabbleBoss["Gatewatcher Iron-Hand"] };
		{ 20, 30437, "", "Jagged Red Crystal", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Mechano-Lord Capacitus"];
		{ 1, 28256, "", "Thoriumweave Cloak", droprate = "14%" };
		{ 2, 28255, "", "Lunar-Claw Pauldrons", droprate = "16%" };
		{ 3, 28254, "", "Warp Engineer's Prismatic Chain", droprate = "16%" };
		{ 4, 28257, "", "Hammer of the Penitent", droprate = "14%" };
		{ 5, 28253, "", "Plasma Rat's Hyper-Scythe", droprate = "17%" };
		{ 7, 35582, "", "Schematic: Rocket Boots Xtreme Lite" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30565, "", "Assassin's Fire Opal", droprate = "18%" };
		{ 19, 30566, "", "Defender's Tanzanite", droprate = "8%" };
		{ 20, 30564, "", "Shining Fire Opal", droprate = "3%" };
	};
	{
		Name = BabbleBoss["Nethermancer Sepethrea"];
		{ 1, 28262, "", "Jade-Skull Breastplate", droprate = "15%" };
		{ 2, 28259, "", "Cosmic Lifeband", droprate = "18%" };
		{ 3, 28260, "", "Manual of the Nethermancer", droprate = "15%" };
		{ 4, 28263, "", "Stellaris", droprate = "15%" };
		{ 5, 28258, "", "Nethershrike", droprate = "15%" };
		{ 7, 22920, "", "Recipe: Major Fire Protection Potion" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 30565, "", "Assassin's Fire Opal", droprate = "18%" };
		{ 19, 30566, "", "Defender's Tanzanite", droprate = "8%" };
		{ 20, 30564, "", "Shining Fire Opal", droprate = "3%" };
	};
	{
		Name = BabbleBoss["Pathaleon the Calculator"];
		{ 1, 28269, "", "Baba's Cloak of Arcanistry", droprate = "11%" };
		{ 2, 28266, "", "Molten Earth Kilt", droprate = "14%" };
		{ 3, 28265, "", "Dath'Remar's Ring of Defense", droprate = "8%" };
		{ 4, 28288, "", "Abacus of Violent Odds", droprate = "8%" };
		{ 5, 27899, "", "Mana Wrath", droprate = "9%" };
		{ 6, 28267, "", "Edge of the Cosmos", droprate = "11%" };
		{ 7, 28286, "", "Telescopic Sharprifle", droprate = "9%" };
		{ 9, 28278, "", "Incanter's Cowl", droprate = "14%" };
		{ 10, 28202, "", "Moonglade Robe", droprate = "11%" };
		{ 11, 28204, "", "Tunic of Assassination", droprate = "8%" };
		{ 12, 28275, "", "Beast Lord Helm", droprate = "14%" };
		{ 13, 28285, "", "Helm of the Righteous", droprate = "10%" };
		{ 15, 21907, "", "Pattern: Arcanoweave Robe", droprate = "1%" };
		{ 16, 0, "INV_Box_01", "#j27#" };
		{ 17, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 18, 29251, "", "Boots of the Pious", droprate = "7%" };
		{ 19, 32076, "", "Handguards of the Steady" };
		{ 20, 30533, "", "Vanquisher's Legplates", droprate = "6%" };
		{ 21, 29362, "", "The Sun Eater", droprate = "1%" };
		{ 23, 30565, "", "Assassin's Fire Opal", droprate = "18%" };
		{ 24, 30566, "", "Defender's Tanzanite", droprate = "8%" };
		{ 25, 30564, "", "Shining Fire Opal", droprate = "3%" };
		{ 29, 33860, "", "Pathaleon's Projector", droprate = "100%" };
		{ 30, 31086, "", "Bottom Shard of the Arcatraz Key", droprate = "100%" };
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
		{ 1, 29925, "", "Phoenix-Wing Cloak", droprate = "23%" };
		{ 2, 29918, "", "Mindstorm Wristbands", droprate = "22%" };
		{ 3, 29947, "", "Gloves of the Searing Grip", droprate = "23%" };
		{ 4, 29921, "", "Fire Crest Breastplate", droprate = "20%" };
		{ 5, 29922, "", "Band of Al'ar", droprate = "21%" };
		{ 6, 29920, "", "Phoenix-Ring of Rebirth", droprate = "21%" };
		{ 7, 30448, "", "Talon of Al'ar", droprate = "22%" };
		{ 8, 30447, "", "Tome of Fiery Redemption", droprate = "21%" };
		{ 9, 29923, "", "Talisman of the Sun King", droprate = "23%" };
		{ 16, 32944, "", "Talon of the Phoenix", droprate = "12%" };
		{ 17, 29948, "", "Claw of the Phoenix", droprate = "10%" };
		{ 18, 29924, "", "Netherbane", droprate = "21%" };
		{ 19, 29949, "", "Arcanite Steam-Pistol", droprate = "22%" };
		{ 21, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 22, 1816254, "", "Forumla: Enchant Cloak - Phoenix Fire", droprate = "6%" };
	};
	{
		Name = BabbleBoss["Void Reaver"];
		{ 1, 29986, "", "Cowl of the Grand Engineer", droprate = "13%" };
		{ 2, 29984, "", "Girdle of Zaetar", droprate = "13%" };
		{ 3, 29985, "", "Void Reaver Greaves", droprate = "14%" };
		{ 4, 29983, "", "Fel-Steel Warhelm", droprate = "12%" };
		{ 5, 32515, "", "Wristguards of Determination", droprate = "13%" };
		{ 6, 30619, "", "Fel Reaver's Piston", droprate = "13%" };
		{ 7, 30450, "", "Warp-Spring Coil", droprate = "12%" };
		{ 16, 30249, "", "Pauldrons of the Vanquished Defender", droprate = "100%", lootTable = {"T5SHOULDER","Token"} };
		{ 18, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["High Astromancer Solarian"];
		{ 1, 29977, "", "Star-Soul Breeches", droprate = "19%" };
		{ 2, 29972, "", "Trousers of the Astromancer", droprate = "19%" };
		{ 3, 29966, "", "Vambraces of Ending", droprate = "23%" };
		{ 4, 29976, "", "Worldstorm Gauntlets", droprate = "18%" };
		{ 5, 29951, "", "Star-Strider Boots", droprate = "23%" };
		{ 6, 29965, "", "Girdle of the Righteous Path", droprate = "21%" };
		{ 7, 29950, "", "Greaves of the Bloodwarder", droprate = "19%" };
		{ 8, 32267, "", "Boots of the Resilient", droprate = "17%" };
		{ 16, 30446, "", "Solarian's Sapphire", droprate = "21%" };
		{ 17, 30449, "", "Void Star Talisman", droprate = "22%" };
		{ 18, 29962, "", "Heartrazor", droprate = "23%" };
		{ 19, 29981, "", "Ethereum Life-Staff", droprate = "21%" };
		{ 20, 29982, "", "Wand of the Forgotten Star", droprate = "18%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Kael'thas Sunstrider"];
		{ 1, 29992, "", "Royal Cloak of the Sunstriders", droprate = "14%" };
		{ 2, 29989, "", "Sunshower Light Cloak", droprate = "12%" };
		{ 3, 29994, "", "Thalassian Wildercloak", droprate = "14%" };
		{ 4, 29990, "", "Crown of the Sun", droprate = "14%" };
		{ 5, 29987, "", "Gauntlets of the Sun King", droprate = "14%" };
		{ 6, 29995, "", "Leggings of Murderous Intent", droprate = "15%" };
		{ 7, 29991, "", "Sunhawk Leggings", droprate = "13%" };
		{ 8, 29998, "", "Royal Gauntlets of Silvermoon", droprate = "12%" };
		{ 9, 29997, "", "Band of the Ranger-General", droprate = "14%" };
		{ 10, 29993, "", "Twinblade of the Phoenix", droprate = "12%" };
		{ 11, 29996, "", "Rod of the Sun King", droprate = "15%" };
		{ 12, 29988, "", "The Nexus Key", droprate = "14%" };
		{ 14, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 16, 30237, "", "Chestguard of the Vanquished Defender", droprate = "100%", lootTable = {"T5CHEST","Token"} };
		{ 18, 32458, "", "Ashes of Al'ar", droprate = "2%" };
		{ 19, 32405, "", "Verdant Sphere", droprate = "100%" };
		{ 20, 30018, "", "Lord Sanguinar's Claim" };
		{ 21, 30017, "", "Telonicus's Pendant of Mayhem" };
		{ 22, 30007, "", "The Darkener's Grasp" };
		{ 23, 30015, "", "The Sun King's Talisman" };
		{ 25, 29905, "", "Kael's Vial Remnant", droprate = "37%" };
		{ 26, 450001, "", "Intact Vial of Kael'thas Sunstrider", droprate = "5%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 30024, "", "Mantle of the Elven Kings", droprate = "3%" };
		{ 2, 30020, "", "Fire-Cord of the Magus", droprate = "2%" };
		{ 3, 30029, "", "Bark-Gloves of Ancient Wisdom", droprate = "2%" };
		{ 4, 30026, "", "Bands of the Celestial Archer", droprate = "2%" };
		{ 5, 30030, "", "Girdle of Fallen Stars", droprate = "2%" };
		{ 6, 30028, "", "Seventh Ring of the Tirisfalen", droprate = "2%" };
		{ 7, 2032902, "", "Bottled Nethergron Extract", droprate = "2%" };
		{ 9, 30324, "", "Plans: Red Havoc Boots", droprate = "1%" };
		{ 10, 30322, "", "Plans: Red Belt of Battle", droprate = "2%" };
		{ 11, 30323, "", "Plans: Boots of the Protector", droprate = "2%" };
		{ 12, 30321, "", "Plans: Belt of the Guardian", droprate = "2%" };
		{ 13, 30280, "", "Pattern: Belt of Blasting", droprate = "1%" };
		{ 14, 30282, "", "Pattern: Boots of Blasting", droprate = "1%" };
		{ 15, 30283, "", "Pattern: Boots of the Long Road", droprate = "2%" };
		{ 16, 30281, "", "Pattern: Belt of the Long Road", droprate = "1%" };
		{ 17, 30308, "", "Pattern: Hurricane Boots", droprate = "1%" };
		{ 18, 30304, "", "Pattern: Monsoon Belt", droprate = "1%" };
		{ 19, 30305, "", "Pattern: Boots of Natural Grace", droprate = "2%" };
		{ 20, 30307, "", "Pattern: Boots of the Crimson Hawk", droprate = "1%" };
		{ 21, 30306, "", "Pattern: Boots of Utter Darkness", droprate = "2%" };
		{ 22, 30301, "", "Pattern: Belt of Natural Power", droprate = "1%" };
		{ 23, 30303, "", "Pattern: Belt of the Black Eagle", droprate = "1%" };
		{ 24, 30302, "", "Pattern: Belt of Deep Shadow", droprate = "1%" };
		{ 26, 30183, "", "Nether Vortex", droprate = "75%" };
		{ 28, 32897, "", "Mark of the Illidari", droprate = "27%" };
	};
	{
		Name = "Legendary Items for Kael'thas Fight";
		{ 1, 30312, "", "Infinity Blade" };
		{ 2, 30311, "", "Warp Slicer" };
		{ 3, 30317, "", "Cosmic Infuser" };
		{ 4, 30316, "", "Devastation" };
		{ 5, 30313, "", "Staff of Disintegration" };
		{ 6, 30314, "", "Phaseshift Bulwark" };
		{ 7, 30318, "", "Netherstrand Longbow" };
		{ 8, 30319, "", "Nether Spike" };
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
		
		{ 1, 33203, "", "Robes of Heavenly Purpose", droprate = "13%" };
		{ 2, 33285, "", "Fury of the Ursine", droprate = "13%" };
		{ 3, 33211, "", "Bladeangel's Money Belt", droprate = "14%" };
		{ 4, 33206, "", "Pauldrons of Primal Fury", droprate = "13%" };
		{ 5, 33327, "", "Mask of Introspection", droprate = "13%" };
		{ 6, 33191, "", "Jungle Stompers", droprate = "13%" };
		{ 7, 33640, "", "Fury", droprate = "14%" };
		{ 16, 33496, "", "Signet of Primal Wrath", droprate = "23%" };
		{ 17, 33498, "", "Signet of the Quiet Forest", droprate = "21%" };
		{ 18, 33971, "", "Elunite Imbued Leggings", droprate = "10%" };
		{ 19, 33495, "", "Rage", droprate = "12%" };
		{ 20, 33480, "", "Cord of BBCRaided Troll Hair", droprate = "10%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };

	};
	{
		Name = BabbleBoss["Akil'zon"];
		
		{ 1, 33286, "", "Mojo-mender's Mask", droprate = "13%" };
		{ 2, 33215, "", "Bloodstained Elven Battlevest", droprate = "13%" };
		{ 3, 33216, "", "Chestguard of Hidden Purpose", droprate = "13%" };
		{ 4, 33281, "", "Brooch of Nature's Mercy", droprate = "13%" };
		{ 5, 33293, "", "Signet of Ancient Magics", droprate = "13%" };
		{ 6, 33214, "", "Akil'zon's Talonblade", droprate = "13%" };
		{ 7, 33283, "", "Amani Punisher", droprate = "14%" };
		{ 16, 33591, "", "Shadowcaster's Drape", droprate = "11%" };
		{ 17, 33590, "", "Cloak of Fiends", droprate = "10%" };
		{ 18, 33481, "", "Pauldrons of Stone Resolve", droprate = "11%" };
		{ 19, 33492, "", "Trollbane", droprate = "11%" };
		{ 20, 33500, "", "Signet of Eternal Life", droprate = "20%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Jan'alai"];
		{ 1, 33357, "", "Footpads of Madness", droprate = "13%" };
		{ 2, 33356, "", "Helm of Natural Regeneration", droprate = "13%" };
		{ 3, 33329, "", "Shadowtooth Trollskin Cuirass", droprate = "13%" };
		{ 4, 33328, "", "Arrow-fall Chestguard", droprate = "13%" };
		{ 5, 33354, "", "Wub's Cursed Hexblade", droprate = "14%" };
		{ 6, 33326, "", "Bulwark of the Amani Empire", droprate = "13%" };
		{ 7, 33332, "", "Enamelled Disc of Mojo", droprate = "12%" };
		{ 16, 33499, "", "Signet of the Last Defender", droprate = "18%" };
		{ 17, 33805, "", "Shadowhunter's Treads", droprate = "10%" };
		{ 18, 33491, "", "Tuskbreaker", droprate = "12%" };
		{ 19, 33490, "", "Staff of Dark Mending", droprate = "13%" };
		{ 20, 33489, "", "Mantle of Ill Intent", droprate = "11%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Halazzi"];
		
		{ 1, 33317, "", "Robe of Departed Spirits", droprate = "13%" };
		{ 2, 33300, "", "Shoulderpads of Dancing Blades", droprate = "14%" };
		{ 3, 33322, "", "Shimmer-pelt Vest", droprate = "13%" };
		{ 4, 33533, "", "Avalanche Leggings", droprate = "13%" };
		{ 5, 33299, "", "Spaulders of the Advocate", droprate = "13%" };
		{ 6, 33303, "", "Skullshatter Warboots", droprate = "14%" };
		{ 7, 33297, "", "The Savage's Choker", droprate = "13%" };
		{ 16, 33483, "", "Life-step Belt", droprate = "12%" };
		{ 17, 33493, "", "Umbral Shiv", droprate = "12%" };
		{ 18, 33497, "", "Mana Attuned Band", droprate = "18%" };
		{ 19, 33979, "", "Sightless Head" };
		{ 20, 33465, "", "Staff of Primal Fury", droprate = "13%" };
		{ 22, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Hex Lord Malacrass"];
		{ 1, 33592, "", "Cloak of Ancient Rituals", droprate = "13%" };
		{ 2, 33453, "", "Hood of Hexing", droprate = "13%" };
		{ 3, 33463, "", "Hood of the Third Eye", droprate = "13%" };
		{ 4, 33432, "", "Coif of the Jungle Stalker", droprate = "15%" };
		{ 5, 33464, "", "Hex Lord's Voodoo Pauldrons", droprate = "13%" };
		{ 6, 33421, "", "Battleworn Tuskguard", droprate = "15%" };
		{ 7, 33446, "", "Girdle of Stromgarde's Hope", droprate = "15%" };
		{ 9, 2033307, "", "Formula: Enchant Weapon - Witchdoctor", droprate = "N:2%/H:5%/A:10%" };
		{ 16, 34029, "", "Tiny Voodoo Mask", droprate = "25%" };
		{ 17, 33828, "", "Tome of Diabolic Remedy", droprate = "13%" };
		{ 18, 38634, "", "Troll Dice", droprate = "11%" };
		{ 19, 33389, "", "Dagger of Bad Mojo", droprate = "15%" };
		{ 20, 33298, "", "Prowler's Strikeblade", droprate = "14%" };
		{ 21, 33388, "", "Heartless", droprate = "15%" };
		{ 22, 33494, "", "Amani Divining Staff", droprate = "11%" };
		{ 24, 29434, "", "Badge of Justice", droprate = "100%" };
		{ 26, 1333809, "", "Amani Bear", "Time Run", "", droprate = "100%" };
	};
	{
		Name = BabbleBoss["Zul'jin"];
		{ 1, 33471, "", "Two-toed Sandals", droprate = "15%" };
		{ 2, 33479, "", "Grimgin Faceguard", droprate = "15%" };
		{ 3, 33469, "", "Hauberk of the Empire's Champion", droprate = "16%" };
		{ 4, 33473, "", "Chestguard of the Warlord", droprate = "15%" };
		{ 5, 33466, "", "Loop of Cursed Bones", droprate = "14%" };
		{ 6, 33830, "", "Ancient Aqir Artifact", droprate = "14%" };
		{ 7, 33831, "", "Berserker's Call", droprate = "14%" };
		{ 8, 33829, "", "Hex Shrunken Head", droprate = "14%" };
		{ 9, 24537, "", "Waistband of Crushed Skulls", droprate = "14%" };
		{ 11, 33307, "", "Formula: Enchant Weapon - Executioner", droprate = "N:2%/H:5%/A:10%" };
		{ 16, 33467, "", "Blade of Twisted Visions", droprate = "14%" };
		{ 17, 33478, "", "Jin'rohk, The Great Apocalypse", droprate = "14%" };
		{ 18, 33476, "", "Cleaver of the Unforgiving", droprate = "15%" };
		{ 19, 33468, "", "Dark Blessing", droprate = "15%" };
		{ 20, 33474, "", "Ancient Amani Longbow", droprate = "14%" };
		{ 21, 34071, "", "Seething Hate" };
		{ 23, 33102, "", "Blood of Zul'Jin", droprate = "87%" };
		{ 25, 29434, "", "Badge of Justice", droprate = "100%" };
	};
	{
		Name = AL["Trash Mobs"];
		{ 1, 21824, "", "The Krakmon Wand" };
		{ 2, 24574, "", "Massacre Cloak" };
		{ 3, 28354, "", "Throat Crushers" };
		{ 4, 33059, "", "Seal of the Amani'shi Berserker" };
		{ 5, 33983, "", "Staff of Blazing Glory" };
		{ 6, 39755, "", "String of Ears" };
		{ 16, 33865, "", "Amani Hex Stick", droprate = "40%" };
		{ 17, 33930, "", "Amani Charm of the Bloodletter", droprate = "25%" };
		{ 18, 33932, "", "Amani Charm of the Witch Doctor", droprate = "24%" };
		{ 19, 33931, "", "Amani Charm of Mighty Mojo", droprate = "25%" };
		{ 20, 33933, "", "Amani Charm of the Raging Defender", droprate = "25%" };
		{ 22, 33993, "", "Mojo" };
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
		{ 1, 32444, "", "Plans: Shadesteel Girdle" };
		{ 2, 32442, "", "Plans: Shadesteel Bracers" };
		{ 3, 32436, "", "Pattern: Redeemed Soul Cinch" };
		{ 4, 32435, "", "Pattern: Redeemed Soul Legguards" };
		{ 5, 32430, "", "Pattern: Bracers of Shackled Souls" };
		{ 6, 32429, "", "Pattern: Boots of Shackled Souls" };
		{ 7, 32440, "", "Pattern: Soulguard Girdle" };
		{ 8, 32438, "", "Pattern: Soulguard Bracers" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 32443, "", "Plans: Shadesteel Greaves" };
		{ 2, 32441, "", "Plans: Shadesteel Sabots" };
		{ 3, 32433, "", "Pattern: Redeemed Soul Mocassins" };
		{ 4, 32434, "", "Pattern: Redeemed Soul Wristguards" };
		{ 5, 32431, "", "Pattern: Greaves of Shackled Souls" };
		{ 6, 32432, "", "Pattern: Waistguard of Shackled Souls" };
		{ 7, 32447, "", "Pattern: Night's End" };
		{ 8, 32439, "", "Pattern: Soulguard Leggings" };
		{ 9, 32437, "", "Pattern: Soulguard Slippers" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 32486, "", "Ashtongue Talisman of Equilibrium" };
		{ 2, 32487, "", "Ashtongue Talisman of Swiftness" };
		{ 3, 32488, "", "Ashtongue Talisman of Insight" };
		{ 4, 32489, "", "Ashtongue Talisman of Zeal" };
		{ 5, 32490, "", "Ashtongue Talisman of Acumen" };
		{ 6, 32492, "", "Ashtongue Talisman of Lethality" };
		{ 7, 32491, "", "Ashtongue Talisman of Vision" };
		{ 8, 32493, "", "Ashtongue Talisman of Shadows" };
		{ 9, 32485, "", "Ashtongue Talisman of Valor" };
	};
};

----------------------------
---  Cenarion Expedition ---
----------------------------

AtlasLoot_Data["CExpedition"] = {
	Name = BabbleFaction["Cenarion Expedition"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 25737, "", "Pattern: Heavy Clefthoof Boots" };
		{ 2, 24417, "", "Scout's Arrow" };
		{ 3, 23814, "", "Schematic: Green Smoke Flare" };
		{ 4, 24429, "", "Expedition Flare" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 25838, "", "Warden's Hauberk" };
		{ 2, 25836, "", "Preserver's Cudgel" };
		{ 3, 25835, "", "Explorer's Walking Stick" };
		{ 4, 25735, "", "Pattern: Heavy Clefthoof Vest" };
		{ 5, 25736, "", "Pattern: Heavy Clefthoof Leggings" };
		{ 6, 29194, "", "Arcanum of Nature Warding" };
		{ 7, 25869, "", "Recipe: Transmute Earthstorm Diamond" };
		{ 8, 32070, "", "Recipe: Earthen Elixir" };
		{ 9, 23618, "", "Plans: Adamantite Sharpening Stone" };
		{ 10, 28632, "", "Plans: Adamantite Weightstone" };
		{ 11, 25526, "", "Plans: Greater Rune of Warding" };
		{ 12, 29720, "", "Pattern: Clefthide Leg Armor" };
		{ 13, 30623, "", "Reservoir Key" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 31392, "", "Plans: Wildguard Helm" };
		{ 2, 31391, "", "Plans: Wildguard Leggings" };
		{ 3, 29174, "", "Watcher's Cowl" };
		{ 4, 29173, "", "Strength of the Untamed" };
		{ 5, 31949, "", "Warden's Arrow" };
		{ 6, 24183, "", "Design: Nightseye Panther" };
		{ 7, 29192, "", "Arcanum of Ferocity" };
		{ 8, 22918, "", "Recipe: Transmute Primal Water to Air" };
		{ 9, 28271, "", "Formula: Enchant Gloves - Spell Strike" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29170, "", "Windcaller's Orb" };
		{ 2, 29172, "", "Ashyen's Gift" };
		{ 3, 29171, "", "Earthwarden" };
		{ 4, 33999, "", "Cenarion War Hippogryph" };
		{ 5, 31390, "", "Plans: Wildguard Breastplate" };
		{ 6, 31402, "", "Design: The Natural Ward" };
		{ 7, 33149, "", "Formula: Enchant Cloak - Stealth" };
		{ 8, 31356, "", "Recipe: Flask of Distilled Wisdom" };
		{ 9, 22922, "", "Recipe: Major Nature Protection Potion" };
		{ 10, 29721, "", "Pattern: Nethercleft Leg Armor" };
		{ 11, 31804, "", "Cenarion Expedition Tabard" };
	};
};

------------------
--- Honor Hold ---
------------------

AtlasLoot_Data["HonorHold"] = {
	Name = BabbleFaction["Honor Hold"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 29213, "", "Pattern: Felstalker Belt" };
		{ 2, 23142, "", "Design: Enduring Deep Peridot" };
		{ 3, 22531, "", "Formula: Enchant Bracer - Superior Healing" };
		{ 4, 24007, "", "Footman's Waterskin" };
		{ 5, 24008, "", "Dried Mushroom Rations" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 25826, "", "Sage's Band" };
		{ 2, 25825, "", "Footman's Longsword" };
		{ 3, 29214, "", "Pattern: Felstalker Bracers" };
		{ 4, 29215, "", "Pattern: Felstalker Breastplate" };
		{ 5, 29196, "", "Arcanum of Fire Warding" };
		{ 6, 25870, "", "Recipe: Transmute Skyfire Diamond" };
		{ 7, 22905, "", "Recipe: Elixir of Major Agility" };
		{ 8, 29719, "", "Pattern: Cobrahide Leg Armor" };
		{ 9, 30622, "", "Flamewrought Key" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29169, "", "Ring of Convalescence" };
		{ 2, 29166, "", "Hellforged Halberd" };
		{ 3, 32883, "", "Felbane Slugs" };
		{ 4, 24180, "", "Design: Dawnstone Crab" };
		{ 5, 29189, "", "Arcanum of Renewal" };
		{ 6, 22547, "", "Formula: Enchant Chest - Exceptional Stats" };
		{ 7, 34218, "", "Pattern: Netherscale Ammo Pouch" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29153, "", "Blade of the Archmage" };
		{ 2, 29156, "", "Honor's Call" };
		{ 3, 29151, "", "Veteran's Musket" };
		{ 4, 33150, "", "Formula: Enchant Cloak - Subtlety" };
		{ 5, 23619, "", "Plans: Felsteel Shield Spike" };
		{ 6, 29722, "", "Pattern: Nethercobra Leg Armor" };
		{ 7, 23999, "", "Honor Hold Tabard" };
	};
};

-----------------------
--- Keepers of Time ---
-----------------------

AtlasLoot_Data["KeepersofTime"] = {
	Name = BabbleFaction["Keepers of Time"];
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29198, "", "Arcanum of Frost Warding" };
		{ 2, 28272, "", "Formula: Enchant Gloves - Major Spellpower" };
		{ 3, 22536, "", "Formula: Enchant Ring - Spellpower" };
		{ 4, 25910, "", "Design: Enigmatic Skyfire Diamond" };
		{ 5, 33160, "", "Design: Facet of Eternity" };
		{ 6, 29713, "", "Pattern: Drums of Panic" };
		{ 7, 30635, "", "Key of Time" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29184, "", "Timewarden's Leggings" };
		{ 2, 29185, "", "Continuum Blade" };
		{ 3, 24181, "", "Design: Living Ruby Serpent" };
		{ 4, 24174, "", "Design: Pendant of Frozen Flame" };
		{ 5, 29186, "", "Arcanum of the Defender" };
		{ 6, 33158, "", "Design: Stone of Blades" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29183, "", "Bindings of the Timewalker" };
		{ 2, 29181, "", "Timelapse Shard" };
		{ 3, 29182, "", "Riftmaker" };
		{ 4, 33152, "", "Formula: Enchant Gloves - Superior Agility" };
		{ 5, 31355, "", "Recipe: Flask of Supreme Power" };
		{ 6, 31777, "", "Keepers of Time Tabard" };
	};
};

---------------
--- Kurenai ---
---------------

AtlasLoot_Data["Kurenai"] = {
	Name = BabbleFaction["Kurenai"] .. " - " .. BabbleFaction["Alliance"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 29217, "", "Pattern: Netherfury Belt" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29144, "", "Worg Hide Quiver" };
		{ 2, 29219, "", "Pattern: Netherfury Leggings" };
		{ 3, 34175, "", "Pattern: Drums of Restoration" };
		{ 4, 34173, "", "Pattern: Drums of Speed" };
		{ 5, 30444, "", "Pattern: Reinforced Mining Bag" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29148, "", "Blackened Leather Spaulders" };
		{ 2, 29142, "", "Kurenai Kilt" };
		{ 3, 29146, "", "Band of Elemental Spirits" };
		{ 4, 29218, "", "Pattern: Netherfury Boots" };
		{ 5, 30443, "", "Recipe: Transmute Primal Fire to Earth" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29227, "", "Reins of the Cobalt War Talbuk" };
		{ 2, 29229, "", "Reins of the Silver War Talbuk" };
		{ 3, 29230, "", "Reins of the Tan War Talbuk" };
		{ 4, 29231, "", "Reins of the White War Talbuk" };
		{ 5, 31830, "", "Reins of the Cobalt Riding Talbuk" };
		{ 6, 31832, "", "Reins of the Silver Riding Talbuk" };
		{ 7, 31834, "", "Reins of the Tan Riding Talbuk" };
		{ 8, 31836, "", "Reins of the White Riding Talbuk" };
		{ 9, 29140, "", "Cloak of the Ancient Spirits" };
		{ 10, 29136, "", "Far Seer's Helm" };
		{ 11, 29138, "", "Arechron's Gift" };
		{ 12, 31774, "", "Kurenai Tabard" };
	};
};

------------------
--- Lower City ---
------------------

AtlasLoot_Data["LowerCity"] = {
	Name = BabbleFaction["Lower City"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 23138, "", "Design: Potent Flame Spessarite" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 30836, "", "Leggings of the Skettis Exile" };
		{ 2, 30835, "", "Salvager's Hauberk" };
		{ 3, 30841, "", "Lower City Prayerbook" };
		{ 4, 24179, "", "Design: Felsteel Boar" };
		{ 5, 24175, "", "Design: Pendant of Thawing" };
		{ 6, 30846, "", "Arcanum of the Outcast" };
		{ 7, 22910, "", "Recipe: Elixir of Major Shadow Power" };
		{ 8, 33157, "", "Design: Falling Star" };
		{ 9, 34200, "", "Pattern: Quiver of a Thousand Arrows" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29199, "", "Arcanum of Shadow Warding" };
		{ 2, 22538, "", "Formula: Enchant Ring - Stats" };
		{ 3, 30833, "", "Pattern: Cloak of Arcane Evasion" };
		{ 4, 30633, "", "Auchenai Key" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 30834, "", "Shapeshifter's Signet" };
		{ 2, 30832, "", "Gavel of Unearthed Secrets" };
		{ 3, 30830, "", "Trident of the Outcast Tribe" };
		{ 4, 33148, "", "Formula: Enchant Cloak - Dodge" };
		{ 5, 31357, "", "Recipe: Flask of Chromatic Resistance" };
		{ 6, 31778, "", "Lower City Tabard" };
	};
};

------------------
--- Netherwing ---
------------------

AtlasLoot_Data["Netherwing"] = {
	Name = BabbleFaction["Netherwing"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 32694, "", "Overseer's Badge" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 32695, "", "Captain's Badge" };
		{ 2, 32863, "", "Skybreaker Whip" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 32864, "", "Commander's Badge" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 32858, "", "Reins of the Azure Netherwing Drake" };
		{ 2, 32859, "", "Reins of the Cobalt Netherwing Drake" };
		{ 3, 32857, "", "Reins of the Onyx Netherwing Drake" };
		{ 4, 32860, "", "Reins of the Purple Netherwing Drake" };
		{ 5, 32861, "", "Reins of the Veridian Netherwing Drake" };
		{ 6, 32862, "", "Reins of the Violet Netherwing Drake" };
	};
};

---------------
--- Ogri'la ---
---------------

AtlasLoot_Data["Ogrila"] = {
	Name = BabbleFaction["Ogri'la"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 32910, "", "Red Ogre Brew Special" };
		{ 2, 32909, "", "Blue Ogre Brew Special" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 32784, "", "Red Ogre Brew", "", "2 #ogrilashard#" };
		{ 2, 32783, "", "Blue Ogre Brew", "", "3 #ogrilashard#" };
		{ 3, 32572, "", "Apexis Crystal" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 32653, "", "Apexis Cloak", "", "1 #ogrilacrystal# 50 #ogrilashard#" };
		{ 2, 32654, "", "Crystalforged Trinket", "", "1 #ogrilacrystal# 50 #ogrilashard#" };
		{ 3, 32652, "", "Ogri'la Aegis", "", "1 #ogrilacrystal# 50 #ogrilashard#" };
		{ 4, 32650, "", "Cerulean Crystal Rod", "", "1 #ogrilacrystal# 50 #ogrilashard#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 32647, "", "Shard-bound Bracers", "", "4 #ogrilacrystal# 100 #ogrilashard#" };
		{ 2, 32648, "", "Vortex Walking Boots", "", "4 #ogrilacrystal# 100 #ogrilashard#" };
		{ 3, 32651, "", "Crystal Orb of Enlightenment", "", "4 #ogrilacrystal# 100 #ogrilashard#" };
		{ 4, 32645, "", "Crystalline Crossbow", "", "4 #ogrilacrystal# 100 #ogrilashard#" };
		{ 5, 32828, "", "Ogri'la Tabard", "", "10 #ogrilashard#" };
		{ 6, 32569, "", "Apexis Shard" };
	};
};

-------------------------
--- Sha'tari Skyguard ---
-------------------------

AtlasLoot_Data["Skyguard"] = {
	Name = BabbleFaction["Sha'tari Skyguard"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 32722, "", "Enriched Terocone Juice" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 32721, "", "Skyguard Rations" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 32539, "", "Skyguard's Drape" };
		{ 2, 32538, "", "Skywitch's Drape" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 32770, "", "Skyguard Silver Cross" };
		{ 2, 32771, "", "Airman's Ribbon of Gallantry" };
		{ 3, 32319, "", "Blue Riding Nether Ray" };
		{ 4, 32314, "", "Green Riding Nether Ray" };
		{ 5, 32317, "", "Red Riding Nether Ray" };
		{ 6, 32316, "", "Purple Riding Nether Ray" };
		{ 7, 32318, "", "Silver Riding Nether Ray" };
		{ 8, 38628, "", "Nether Ray Fry" };
		{ 9, 32445, "", "Skyguard Tabard" };
	};
};

-------------------------------
--- Shattered Sun Offensive ---
-------------------------------

AtlasLoot_Data["SunOffensive"] = {
	Name = BabbleFaction["Shattered Sun Offensive"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 35244, "", "Design: Bold Crimson Spinel" };
		{ 2, 35245, "", "Design: Bright Crimson Spinel" };
		{ 3, 35255, "", "Design: Brilliant Lionseye" };
		{ 4, 35246, "", "Design: Delicate Crimson Spinel" };
		{ 5, 35256, "", "Design: Gleaming Lionseye" };
		{ 6, 35262, "", "Design: Lustrous Empyrean Sapphire" };
		{ 7, 35248, "", "Design: Runed Crimson Spinel" };
		{ 8, 35260, "", "Design: Smooth Lionseye" };
		{ 9, 35263, "", "Design: Solid Empyrean Sapphire" };
		{ 10, 35264, "", "Design: Sparkling Empyrean Sapphire" };
		{ 11, 35249, "", "Design: Subtle Crimson Spinel" };
		{ 12, 35250, "", "Design: Teardrop Crimson Spinel" };
		{ 13, 35261, "", "Design: Thick Lionseye" };
		{ 14, 34780, "", "Naaru Ration" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 35238, "", "Design: Balanced Shadowsong Amethyst" };
		{ 2, 35251, "", "Design: Dazzling Seaspray Emerald" };
		{ 3, 35266, "", "Design: Glinting Pyrestone" };
		{ 4, 35239, "", "Design: Glowing Shadowsong Amethyst" };
		{ 5, 35240, "", "Design: Infused Shadowsong Amethyst" };
		{ 6, 35253, "", "Design: Jagged Seaspray Emerald" };
		{ 7, 35268, "", "Design: Luminous Pyrestone" };
		{ 8, 35269, "", "Design: Potent Pyrestone" };
		{ 9, 35254, "", "Design: Radiant Seaspray Emerald" };
		{ 10, 34872, "", "Formula: Void Shatter" };
		{ 11, 35500, "", "Formula: Enchant Chest - Defense" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 35769, "", "Design: Forceful Seaspray Emerald" };
		{ 2, 35768, "", "Design: Quick Lionseye" };
		{ 3, 35767, "", "Design: Reckless Pyrestone" };
		{ 4, 35766, "", "Design: Steady Seaspray Emerald" };
		{ 5, 34665, "", "Bombardier's Blade" };
		{ 6, 34667, "", "Archmage's Guile" };
		{ 7, 34672, "", "Inuuro's Blade" };
		{ 8, 34666, "", "The Sunbreaker" };
		{ 9, 34671, "", "K'iru's Presage" };
		{ 10, 34670, "", "Seeker's Gavel" };
		{ 11, 34673, "", "Legionfoe" };
		{ 12, 34674, "", "Truestrike Crossbow" };
		{ 13, 29193, "", "Arcanum of the Gladiator" };
		{ 14, 35252, "", "Design: Enduring Seaspray Emerald" };
		{ 15, 35697, "", "Design: Figurine - Crimson Serpent" };
		{ 16, 35695, "", "Design: Figurine - Empyrean Tortoise" };
		{ 17, 35696, "", "Design: Figurine - Khorium Boar" };
		{ 18, 35699, "", "Design: Figurine - Seaspray Albatross" };
		{ 19, 35698, "", "Design: Figurine - Shadowsong Panther" };
		{ 20, 35259, "", "Design: Rigid Lionseye" };
		{ 21, 35241, "", "Design: Royal Shadowsong Amethyst" };
		{ 22, 35271, "", "Design: Wicked Pyrestone" };
		{ 23, 35505, "", "Design: Ember Skyfire Diamond" };
		{ 24, 35502, "", "Design: Eternal Earthstorm Diamond" };
		{ 25, 35708, "", "Design: Regal Nightseye" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 34678, "", "Shattered Sun Pendant of Acumen" };
		{ 2, 34679, "", "Shattered Sun Pendant of Might" };
		{ 3, 34680, "", "Shattered Sun Pendant of Resolve" };
		{ 4, 34677, "", "Shattered Sun Pendant of Restoration" };
		{ 5, 34676, "", "Dawnforged Defender" };
		{ 6, 34675, "", "Sunward Crest" };
		{ 7, 35325, "", "Design: Forceful Talasite" };
		{ 8, 35322, "", "Design: Quick Dawnstone" };
		{ 9, 35323, "", "Design: Reckless Noble Topaz" };
		{ 10, 35221, "", "Tabard of the Shattered Sun" };
		{ 11, 35247, "", "Design: Flashing Crimson Spinel" };
		{ 12, 35257, "", "Design: Great Lionseye" };
		{ 13, 35267, "", "Design: Inscribed Pyrestone" };
		{ 14, 35258, "", "Design: Mystic Lionseye" };
		{ 15, 37504, "", "Design: Purified Shadowsong Amethyst" };
		{ 16, 35242, "", "Design: Shifting Shadowsong Amethyst" };
		{ 17, 35243, "", "Design: Sovereign Shadowsong Amethyst" };
		{ 18, 35265, "", "Design: Stormy Empyrean Sapphire" };
		{ 19, 35270, "", "Design: Veiled Pyrestone" };
		{ 20, 35755, "", "Recipe: Assassin's Alchemist Stone" };
		{ 21, 35752, "", "Recipe: Guardian's Alchemist Stone" };
		{ 22, 35754, "", "Recipe: Redeemer's Alchemist Stone" };
		{ 23, 35753, "", "Recipe: Sorcerer's Alchemist Stone" };
	};
};

-----------------
--- Sporeggar ---
-----------------

AtlasLoot_Data["Sporeggar"] = {
	Name = BabbleFaction["Sporeggar"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 27689, "", "Recipe: Sporeling Snack", "", "2 #glowcap#" };
		{ 2, 30156, "", "Recipe: Clam Bar", "", "1 #glowcap#" };
		{ 3, 25548, "", "Tallstalk Mushroom", "", "1 #glowcap#" };
		{ 4, 24539, "", "Marsh Lichen", "", "2 #glowcap#" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 25827, "", "Muck-Covered Drape", "", "25 #glowcap#" };
		{ 2, 25828, "", "Petrified Lichen Guard", "", "15 #glowcap#" };
		{ 3, 25550, "", "Redcap Toadstool", "", "1 #glowcap#" };
		{ 4, 24245, "", "Glowcap" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29150, "", "Hardened Stone Shard", "", "45 #glowcap#" };
		{ 2, 29149, "", "Sporeling's Firestick", "", "20 #glowcap#" };
		{ 3, 22916, "", "Recipe: Transmute Primal Earth to Water", "", "25 #glowcap#" };
		{ 4, 38229, "", "Pattern: Mycah's Botanical Bag", "", "25 #glowcap#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 34478, "", "Tiny Sporebat", "", "30 #glowcap#" };
		{ 2, 22906, "", "Recipe: Shrouding Potion", "", "30 #glowcap#" };
		{ 3, 31775, "", "Sporeggar Tabard", "", "10 #glowcap#" };
	};
};

-----------------
--- The Aldor ---
-----------------

AtlasLoot_Data["Aldor"] = {
	Name = BabbleFaction["The Aldor"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 23149, "", "Design: Gleaming Golden Draenite" };
		{ 2, 23601, "", "Plans: Flamebane Bracers" };
		{ 3, 30842, "", "Pattern: Flameheart Bracers" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29129, "", "Anchorite's Robes" };
		{ 2, 28881, "", "Inscription of Discipline" };
		{ 3, 28878, "", "Inscription of Faith" };
		{ 4, 28885, "", "Inscription of Vengeance" };
		{ 5, 28882, "", "Inscription of Warding" };
		{ 6, 23145, "", "Design: Royal Shadow Draenite" };
		{ 7, 23603, "", "Plans: Flamebane Gloves" };
		{ 8, 29704, "", "Pattern: Blastguard Belt" };
		{ 9, 29693, "", "Pattern: Flamescale Belt" };
		{ 10, 30843, "", "Pattern: Flameheart Gloves" };
		{ 11, 24293, "", "Pattern: Silver Spellthread" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29127, "", "Vindicator's Hauberk" };
		{ 2, 29128, "", "Lightwarden's Band" };
		{ 3, 29130, "", "Auchenai Staff" };
		{ 4, 24177, "", "Design: Pendant of Shadow's End" };
		{ 5, 23604, "", "Plans: Flamebane Breastplate" };
		{ 6, 29703, "", "Pattern: Blastguard Boots" };
		{ 7, 29691, "", "Pattern: Flamescale Boots" };
		{ 8, 25721, "", "Pattern: Vindicator's Armor Kit" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29123, "", "Medallion of the Lightbearer" };
		{ 2, 29124, "", "Vindicator's Brand" };
		{ 3, 28886, "", "Greater Inscription of Discipline" };
		{ 4, 28887, "", "Greater Inscription of Faith" };
		{ 5, 28888, "", "Greater Inscription of Vengeance" };
		{ 6, 28889, "", "Greater Inscription of Warding" };
		{ 7, 23602, "", "Plans: Flamebane Helm" };
		{ 8, 29702, "", "Pattern: Blastguard Pants" };
		{ 9, 29689, "", "Pattern: Flamescale Leggings" };
		{ 10, 24295, "", "Pattern: Golden Spellthread" };
		{ 11, 30844, "", "Pattern: Flameheart Vest" };
		{ 12, 31779, "", "Aldor Tabard" };
	};
};

----------------------
--- The Consortium ---
----------------------

AtlasLoot_Data["Consortium"] = {
	Name = BabbleFaction["The Consortium"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 25732, "", "Pattern: Fel Leather Gloves" };
		{ 2, 28274, "", "Formula: Enchant Cloak - Spell Penetration" };
		{ 3, 23146, "", "Design: Shifting Shadow Draenite" };
		{ 4, 23136, "", "Design: Luminous Flame Spessarite" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29457, "", "Nethershard" };
		{ 2, 29456, "", "Gift of the Ethereal" };
		{ 3, 29118, "", "Smuggler's Ammo Pouch" };
		{ 4, 25733, "", "Pattern: Fel Leather Boots" };
		{ 5, 23134, "", "Design: Delicate Blood Garnet" };
		{ 6, 23155, "", "Design: Lustrous Azure Moonstone" };
		{ 7, 23150, "", "Design: Thick Golden Draenite" };
		{ 8, 22552, "", "Formula: Enchant Weapon - Major Striking" };
		{ 9, 25908, "", "Design: Swift Skyfire Diamond" };
		{ 10, 25902, "", "Design: Powerful Earthstorm Diamond" };
		{ 11, 24314, "", "Pattern: Bag of Jewels", "=ds=#p8# (340)" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29117, "", "Stormspire Vest" };
		{ 2, 29116, "", "Nomad's Leggings" };
		{ 3, 29115, "", "Consortium Blaster" };
		{ 4, 24178, "", "Design: Pendant of the Null Rune" };
		{ 5, 25734, "", "Pattern: Fel Leather Leggings" };
		{ 6, 22535, "", "Formula: Enchant Ring - Striking" };
		{ 7, 23874, "", "Schematic: Elemental Seaforium Charge" };
		{ 8, 25903, "", "Design: Bracing Earthstorm Diamond" };
		{ 9, 33156, "", "Design: Crimson Sun" };
		{ 10, 33305, "", "Design: Don Julio's Heart" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29122, "", "Nether Runner's Cowl" };
		{ 2, 29119, "", "Haramad's Bargain" };
		{ 3, 29121, "", "Guile of Khoraazi" };
		{ 4, 33622, "", "Design: Relentless Earthstorm Diamond" };
		{ 5, 31776, "", "Consortium Tabard" };
	};
};

-------------------
--- The Mag'har ---
-------------------

AtlasLoot_Data["Maghar"] = {
	Name = BabbleFaction["The Mag'har"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 25741, "", "Pattern: Netherfury Belt" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29143, "", "Clefthoof Hide Quiver" };
		{ 2, 25742, "", "Pattern: Netherfury Leggings" };
		{ 3, 34174, "", "Pattern: Drums of Restoration" };
		{ 4, 34172, "", "Pattern: Drums of Speed" };
		{ 5, 29664, "", "Pattern: Reinforced Mining Bag" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29147, "", "Talbuk Hide Spaulders" };
		{ 2, 29141, "", "Tempest Leggings" };
		{ 3, 29145, "", "Band of Ancestral Spirits" };
		{ 4, 25743, "", "Pattern: Netherfury Boots" };
		{ 5, 22917, "", "Recipe: Transmute Primal Fire to Earth" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29102, "", "Reins of the Cobalt War Talbuk" };
		{ 2, 29104, "", "Reins of the Silver War Talbuk" };
		{ 3, 29105, "", "Reins of the Tan War Talbuk" };
		{ 4, 29103, "", "Reins of the White War Talbuk" };
		{ 5, 31829, "", "Reins of the Cobalt Riding Talbuk" };
		{ 6, 31831, "", "Reins of the Silver Riding Talbuk" };
		{ 7, 31833, "", "Reins of the Tan Riding Talbuk" };
		{ 8, 31835, "", "Reins of the White Riding Talbuk" };
		{ 9, 29139, "", "Ceremonial Cover" };
		{ 10, 29135, "", "Earthcaller's Headdress" };
		{ 11, 29137, "", "Hellscream's Will" };
		{ 12, 31773, "", "Mag'har Tabard" };
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
		{ 1, 32274, "", "Design: Bold Crimson Spinel" };
		{ 2, 32283, "", "Design: Bright Crimson Spinel" };
		{ 3, 32277, "", "Design: Delicate Crimson Spinel" };
		{ 4, 32282, "", "Design: Runed Crimson Spinel" };
		{ 5, 32284, "", "Design: Subtle Crimson Spinel" };
		{ 6, 32281, "", "Design: Teardrop Crimson Spinel" };
		{ 7, 32288, "", "Design: Lustrous Empyrean Sapphire" };
		{ 8, 32286, "", "Design: Solid Empyrean Sapphire" };
		{ 9, 32287, "", "Design: Sparkling Empyrean Sapphire" };
		{ 10, 32290, "", "Design: Brilliant Lionseye" };
		{ 11, 32293, "", "Design: Gleaming Lionseye" };
		{ 12, 32291, "", "Design: Smooth Lionseye" };
		{ 13, 32294, "", "Design: Thick Lionseye" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 35763, "", "Design: Quick Lionseye" };
		{ 2, 32306, "", "Design: Glinting Pyrestone" };
		{ 3, 32305, "", "Design: Luminous Pyrestone" };
		{ 4, 32304, "", "Design: Potent Pyrestone" };
		{ 5, 35762, "", "Design: Reckless Pyrestone" };
		{ 6, 32299, "", "Design: Balanced Shadowsong Amethyst" };
		{ 7, 32301, "", "Design: Glowing Shadowsong Amethyst" };
		{ 8, 32300, "", "Design: Infused Shadowsong Amethyst" };
		{ 9, 32311, "", "Design: Dazzling Seaspray Emerald" };
		{ 10, 35765, "", "Design: Forceful Seaspray Emerald" };
		{ 11, 32312, "", "Design: Jagged Seaspray Emerald" };
		{ 12, 32310, "", "Design: Radiant Seaspray Emerald" };
		{ 13, 35764, "", "Design: Steady Seaspray Emerald" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 31737, "", "Timeless Arrow" };
		{ 2, 31735, "", "Timeless Shell" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 32292, "", "Design: Rigid Lionseye" };
		{ 2, 32308, "", "Design: Wicked Pyrestone" };
		{ 3, 32309, "", "Design: Enduring Seaspray Emerald" };
		{ 4, 32302, "", "Design: Royal Shadowsong Amethyst" };
	};
};

-------------------
--- The Scryers ---
-------------------

AtlasLoot_Data["Scryer"] = {
	Name = BabbleFaction["The Scryers"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 23133, "", "Design: Runed Blood Garnet" };
		{ 2, 23597, "", "Plans: Enchanted Adamantite Belt" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 28907, "", "Inscription of the Blade" };
		{ 2, 28908, "", "Inscription of the Knight" };
		{ 3, 28904, "", "Inscription of the Oracle" };
		{ 4, 28903, "", "Inscription of the Orb" };
		{ 5, 23143, "", "Design: Dazzling Deep Peridot" };
		{ 6, 23598, "", "Plans: Enchanted Adamantite Boots" };
		{ 7, 29701, "", "Pattern: Enchanted Clefthoof Boots" };
		{ 8, 29682, "", "Pattern: Enchanted Felscale Gloves" };
		{ 9, 24292, "", "Pattern: Mystic Spellthread" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29131, "", "Retainer's Leggings" };
		{ 2, 29134, "", "Gauntlets of the Chosen" };
		{ 3, 29132, "", "Scryer's Bloodgem" };
		{ 4, 29133, "", "Seer's Cane" };
		{ 5, 24176, "", "Design: Pendant of Withering" };
		{ 6, 22908, "", "Recipe: Elixir of Major Firepower" };
		{ 7, 23599, "", "Plans: Enchanted Adamantite Breastplate" };
		{ 8, 29700, "", "Pattern: Enchanted Clefthoof Gloves" };
		{ 9, 29684, "", "Pattern: Enchanted Felscale Boots" };
		{ 10, 25722, "", "Pattern: Magister's Armor Kit" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29126, "", "Seer's Signet" };
		{ 2, 29125, "", "Retainer's Blade" };
		{ 3, 28910, "", "Greater Inscription of the Blade" };
		{ 4, 28911, "", "Greater Inscription of the Knight" };
		{ 5, 28912, "", "Greater Inscription of the Oracle" };
		{ 6, 28909, "", "Greater Inscription of the Orb" };
		{ 7, 23600, "", "Plans: Enchanted Adamantite Leggings" };
		{ 8, 29698, "", "Pattern: Enchanted Clefthoof Leggings" };
		{ 9, 29677, "", "Pattern: Enchanted Felscale Leggings" };
		{ 10, 24294, "", "Pattern: Runic Spellthread" };
		{ 11, 31780, "", "Scryers Tabard" };
	};
};

-------------------
--- The Sha'tar ---
-------------------

AtlasLoot_Data["Shatar"] = {
	Name = BabbleFaction["The Sha'tar"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 25904, "", "Design: Insightful Earthstorm Diamond" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 29180, "", "Blessed Scale Girdle" };
		{ 2, 29179, "", "Xi'ri's Gift" };
		{ 3, 24182, "", "Design: Talasite Owl" };
		{ 4, 29191, "", "Arcanum of Power" };
		{ 5, 22915, "", "Recipe: Transmute Primal Air to Fire" };
		{ 6, 28281, "", "Formula: Enchant Weapon - Major Healing" };
		{ 7, 13517, "", "Recipe: Alchemist's Stone" };
		{ 8, 22537, "", "Formula: Enchant Ring - Healing Power" };
		{ 9, 33159, "", "Design: Blood of Amber" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 30826, "", "Design: Ring of Arcane Shielding" };
		{ 2, 29195, "", "Arcanum of Arcane Warding" };
		{ 3, 28273, "", "Formula: Enchant Gloves - Major Healing" };
		{ 4, 33155, "", "Design: Kailee's Rose" };
		{ 5, 29717, "", "Pattern: Drums of Battle" };
		{ 6, 30634, "", "Warpforged Key" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29177, "", "A'dal's Command" };
		{ 2, 29175, "", "Gavel of Pure Light" };
		{ 3, 29176, "", "Crest of the Sha'tar" };
		{ 4, 33153, "", "Formula: Enchant Gloves - Threat" };
		{ 5, 31354, "", "Recipe: Flask of the Titans" };
		{ 6, 31781, "", "Sha'tar Tabard" };
	};
};

----------------------
--- The Violet Eye ---
----------------------

AtlasLoot_Data["VioletEye"] = {
	Name = BabbleFaction["The Violet Eye"];
	{
		Name = "Rings";
		{ 1, 0, "INV_Jewelry_Ring_62", "=q6=" .. AL["Path of the Violet Assassin"] };
		{ 2, 29280, "", "Violet Signet" };
		{ 3, 29281, "", "Violet Signet" };
		{ 4, 29282, "", "Violet Signet" };
		{ 5, 29283, "", "Violet Signet of the Master Assassin" };
		{ 7, 0, "INV_Jewelry_Ring_62", "=q6=" .. AL["Path of the Violet Mage"] };
		{ 8, 29284, "", "Violet Signet" };
		{ 9, 29285, "", "Violet Signet" };
		{ 10, 29286, "", "Violet Signet" };
		{ 11, 29287, "", "Violet Signet of the Archmage" };
		{ 16, 0, "INV_Jewelry_Ring_62", "=q6=" .. AL["Path of the Violet Restorer"] };
		{ 17, 29288, "", "Violet Signet" };
		{ 18, 29289, "", "Violet Signet" };
		{ 19, 29291, "", "Violet Signet" };
		{ 20, 29290, "", "Violet Signet of the Grand Restorer" };
		{ 22, 0, "INV_Jewelry_Ring_62", "=q6=" .. AL["Path of the Violet Protector"] };
		{ 23, 29276, "", "Violet Signet" };
		{ 24, 29277, "", "Violet Signet" };
		{ 25, 29278, "", "Violet Signet" };
		{ 26, 29279, "", "Violet Signet of the Great Protector" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 31113, "", "Violet Badge" };
		{ 2, 31395, "", "Plans: Iceguard Helm" };
		{ 3, 31393, "", "Plans: Iceguard Breastplate" };
		{ 4, 31401, "", "Design: The Frozen Eye" };
		{ 5, 29187, "", "Inscription of Endurance" };
		{ 6, 33209, "", "Recipe: Flask of Chromatic Wonder" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 34581, "", "Mysterious Arrow" };
		{ 2, 34582, "", "Mysterious Shell" };
		{ 3, 31394, "", "Plans: Iceguard Leggings" };
		{ 4, 33205, "", "Pattern: Shadowprowler's Chestguard" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 33124, "", "Pattern: Cloak of Darkness" };
		{ 2, 33165, "", "Formula: Enchant Weapon - Greater Agility" };
	};
};

-----------------
--- Thrallmar ---
-----------------

AtlasLoot_Data["Thrallmar"] = {
	Name = BabbleFaction["Thrallmar"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 25738, "", "Pattern: Felstalker Belt" };
		{ 2, 31359, "", "Design: Enduring Deep Peridot" };
		{ 3, 24000, "", "Formula: Enchant Bracer - Superior Healing" };
		{ 4, 24006, "", "Grunt's Waterskin" };
		{ 5, 24009, "", "Dried Fruit Rations" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 25824, "", "Farseer's Band" };
		{ 2, 25823, "", "Grunt's Waraxe" };
		{ 3, 25739, "", "Pattern: Felstalker Bracers" };
		{ 4, 25740, "", "Pattern: Felstalker Breastplate" };
		{ 5, 29197, "", "Arcanum of Fire Warding" };
		{ 6, 29232, "", "Recipe: Transmute Skyfire Diamond" };
		{ 7, 24001, "", "Recipe: Elixir of Major Agility" };
		{ 8, 31361, "", "Pattern: Cobrahide Leg Armor" };
		{ 9, 30637, "", "Flamewrought Key" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 29168, "", "Ancestral Band" };
		{ 2, 29167, "", "Blackened Spear" };
		{ 3, 32882, "", "Hellfire Shot" };
		{ 4, 31358, "", "Design: Dawnstone Crab" };
		{ 5, 29190, "", "Arcanum of Renewal" };
		{ 6, 24003, "", "Formula: Enchant Chest - Exceptional Stats" };
		{ 7, 34201, "", "Pattern: Netherscale Ammo Pouch" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 29155, "", "Stormcaller" };
		{ 2, 29165, "", "Warbringer" };
		{ 3, 29152, "", "Marksman's Bow" };
		{ 4, 33151, "", "Formula: Enchant Cloak - Subtlety" };
		{ 5, 24002, "", "Plans: Felsteel Shield Spike" };
		{ 6, 31362, "", "Pattern: Nethercobra Leg Armor" };
		{ 7, 24004, "", "Thrallmar Tabard" };
	};
};

--------------------
--- Tranquillien ---
--------------------

AtlasLoot_Data["Tranquillien"] = {
	Name = BabbleFaction["Tranquillien"] .. " - " .. BabbleFaction["Horde"];
	{
		Name = BabbleFaction["Friendly"];
		{ 1, 22991, "", "Apprentice Boots" };
		{ 2, 22992, "", "Bogwalker Boots" };
		{ 3, 22993, "", "Volunteer's Greaves" };
		{ 4, 28164, "", "Tranquillien Flamberge" };
	};
	{
		Name = BabbleFaction["Honored"];
		{ 1, 28155, "", "Apothecary's Waistband" };
		{ 2, 28158, "", "Batskin Belt" };
		{ 3, 28162, "", "Tranquillien Defender's Girdle" };
	};
	{
		Name = BabbleFaction["Revered"];
		{ 1, 22986, "", "Apothecary's Robe" };
		{ 2, 22987, "", "Deathstalker's Vest" };
		{ 3, 22985, "", "Suncrown Hauberk" };
	};
	{
		Name = BabbleFaction["Exalted"];
		{ 1, 22990, "", "Tranquillien Champion's Cloak" };
	};
};

------------
--- Misc ---
------------

AtlasLoot_Data["ShattrathFlasks"] = {
	Name = "Shattrath Flasks";
	{
		Name = "Shattrath Flasks";
		{ 1, 32898, "", "Shattrath Flask of Fortification" };
		{ 2, 32899, "", "Shattrath Flask of Mighty" };
		{ 3, 32901, "", "Shattrath Flask of Relentless" };
		{ 4, 32900, "", "Shattrath Flask of Supreme Power" };
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
		{ 1, 27833, "", "Band of the Victor", "=ds=15 #markthrallmarhhold#" };
		{ 2, 27786, "", "Barbed Deep Peridot", "=ds=10 #markthrallmarhhold#" };
		{ 3, 28360, "", "Mighty Blood Garnet", "=ds=10 #markthrallmarhhold#" };
		{ 5, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 6, 24520, "", "Honor Hold Favor", "=ds=5 #markhhold#" };
		{ 7, 24579, "", "Mark of Honor Hold" };
		{ 16, 27830, "", "Circlet of the Victor", "=ds=15 #markthrallmarhhold#" };
		{ 17, 27785, "", "Notched Deep Peridot", "=ds=10 #markthrallmarhhold#" };
		{ 18, 27777, "", "Stark Blood Garnet", "=ds=10 #markthrallmarhhold#" };
		{ 20, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 21, 24522, "", "Thrallmar Favor", "=ds=5 #markthrallmar#" };
		{ 22, 24581, "", "Mark of Thrallmar" };
	};
};

AtlasLoot_Data["PVPHalaa"] = {
	Name = BabbleZone["Nagrand"] .. ": " .. AL["Halaa"];
	{
		Name = "Page 1";
		{ 1, 28915, "", "Reins of the Dark Riding Talbuk", "", "70 #halaabattle# 15 #halaaresearch#" };
		{ 2, 27679, "", "Sublime Mystic Dawnstone", "", "100 #halaabattle#" };
		{ 3, 27649, "", "Hierophant's Leggings", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 4, 27648, "", "Dreamstalker Leggings", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 5, 27650, "", "Shadowstalker's Leggings", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 6, 27647, "", "Marksman's Legguards", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 7, 27652, "", "Stormbreaker's Leggings", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 8, 27654, "", "Avenger's Legguards", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 9, 27653, "", "Slayer's Legguards", "", "40 #halaabattle# 2 #halaaresearch#" };
		{ 11, 24208, "", "Design: Mystic Dawnstone" };
		{ 14, 26045, "", "Halaa Battle Token" };
		{ 16, 29228, "", "Reins of the Dark War Talbuk", "", "100 #halaabattle# 20 #halaaresearch#" };
		{ 17, 27680, "", "Halaani Bag", "", "8 #halaaresearch#" };
		{ 18, 27638, "", "Hierophant's Sash", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 19, 27645, "", "Dreamstalker Sash", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 20, 27637, "", "Shadowstalker's Sash", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 21, 27646, "", "Marksman's Belt", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 22, 27643, "", "Stormbreaker's Girdle", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 23, 27644, "", "Avenger's Waistguard", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 24, 27639, "", "Slayer's Waistguard", "", "20 #halaabattle# 1 #halaaresearch#" };
		{ 26, 33783, "", "Design: Steady Talasite", "", "4 #halaaresearch#" };
		{ 27, 32071, "", "Recipe: Elixir of Ironskin", "", "2 #halaaresearch#" };
		{ 29, 26044, "", "Halaa Research Token" };
	};
	{
		Name = "Page 2";
		{ 1, 30611, "", "Halaani Razorshaft" };
		{ 2, 30615, "", "Halaani Whiskey" };
		{ 4, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 5, 30598, "", "Don Amancio's Heart" };
		{ 6, 30597, "", "Halaani Claymore" };
		{ 7, 30599, "", "Avenging Blades" };
		{ 16, 30612, "", "Halaani Grimshot" };
		{ 19, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 20, 30571, "", "Don Rodrigo's Heart" };
		{ 21, 30570, "", "Arkadian Claymore" };
		{ 22, 30568, "", "The Sharp Cookie" };
	};
};

AtlasLoot_Data["PVPSpiritTowers"] = {
	Name = AL["Spirit Towers"];
	{
		Name = BabbleZone["Terokkar Forest"] .. ": " .. AL["Spirit Towers"];
		{ 1, 28553, "", "Band of the Exorcist", "", "50 #spiritshard#" };
		{ 2, 28557, "", "Swift Starfire Diamond", "", "8 #spiritshard#" };
		{ 3, 28759, "", "Exorcist's Dreadweave Hood", "", "18 #spiritshard#" };
		{ 4, 28574, "", "Exorcist's Dragonhide Helm", "", "18 #spiritshard#" };
		{ 5, 28575, "", "Exorcist's Wyrmhide Helm", "", "18 #spiritshard#" };
		{ 6, 28577, "", "Exorcist's Linked Helm", "", "18 #spiritshard#" };
		{ 7, 28560, "", "Exorcist's Lamellar Helm", "", "18 #spiritshard#" };
		{ 8, 28761, "", "Exorcist's Scaled Helm", "", "18 #spiritshard#" };
		{ 10, 32947, "", "Auchenai Healing Potion", "", "2 #spiritshard#" };
		{ 12, 28558, "", "Spirit Shard" };
		{ 16, 28555, "", "Seal of the Exorcist", "", "50 #spiritshard#" };
		{ 17, 28556, "", "Swift Windfire Diamond", "", "8 #spiritshard#" };
		{ 18, 28760, "", "Exorcist's Silk Hood", "", "18 #spiritshard#" };
		{ 19, 28561, "", "Exorcist's Leather Helm", "", "18 #spiritshard#" };
		{ 20, 28576, "", "Exorcist's Chain Helm", "", "18 #spiritshard#" };
		{ 21, 28758, "", "Exorcist's Mail Helm", "", "18 #spiritshard#" };
		{ 22, 28559, "", "Exorcist's Plate Helm", "", "18 #spiritshard#" };
		{ 25, 32948, "", "Auchenai Mana Potion", "", "2 #spiritshard#" };
	};
};

AtlasLoot_Data["PVPTwinSpireRuins"] = {
	Name = AL["Twin Spire Ruins"];
	{
		Name = BabbleZone["Zangarmarsh"] .. ": " .. AL["Twin Spire Ruins"];
		{ 1, 27990, "", "Idol of Savagery", "", "15 #markthrallmarhhold#" };
		{ 2, 27984, "", "Totem of Impact", "", "15 #markthrallmarhhold#" };
		{ 3, 27922, "", "Mark of Defiance", "", "30 #markthrallmarhhold#" };
		{ 4, 27929, "", "Terminal Edge", "", "15 #markthrallmarhhold#" };
		{ 5, 27939, "", "Incendic Rod", "", "15 #markthrallmarhhold#" };
		{ 7, 24579, "", "Mark of Honor Hold" };
		{ 16, 27983, "", "Libram of Zeal", "", "15 #markthrallmarhhold#" };
		{ 17, 27920, "", "Mark of Conquest", "", "30 #markthrallmarhhold#" };
		{ 18, 27927, "", "Mark of Vindication", "", "30 #markthrallmarhhold#" };
		{ 19, 27930, "", "Splintermark", "", "15 #markthrallmarhhold#" };
		{ 22, 24581, "", "Mark of Thrallmar" };
	};
};

-------------------------------------
--- Rep-PvP Level 70 - Armor Sets ---
-------------------------------------

AtlasLoot_Data["PVP70RepGear"] = {
	Name = "Rep PVP Gear";
	{
		Name = BabbleInventory["Cloth"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep705_1#", "=ec1=#c5#" };
		{ 2, 35339, "", "Satin Hood" };
		{ 3, 35341, "", "Satin Mantle" };
		{ 4, 35342, "", "Satin Robe" };
		{ 5, 35338, "", "Satin Gloves" };
		{ 6, 35340, "", "Satin Leggings" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep705_2#", "=ec1=#c5#" };
		{ 9, 35333, "", "Mooncloth Cowl" };
		{ 10, 35336, "", "Mooncloth Shoulderpads" };
		{ 11, 35337, "", "Mooncloth Vestments" };
		{ 12, 35335, "", "Mooncloth Mitts" };
		{ 13, 35334, "", "Mooncloth Legguards" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep703#", "=ec1=#c3#" };
		{ 17, 35344, "", "Evoker's Silk Cowl" };
		{ 18, 35343, "", "Evoker's Silk Amice" };
		{ 19, 35346, "", "Evoker's Silk Raiment" };
		{ 20, 35345, "", "Evoker's Silk Handguards" };
		{ 21, 35347, "", "Evoker's Silk Trousers" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep708#", "=ec1=#c8#" };
		{ 24, 35329, "", "Dreadweave Hood" };
		{ 25, 35331, "", "Dreadweave Mantle" };
		{ 26, 35332, "", "Dreadweave Robe" };
		{ 27, 35328, "", "Dreadweave Gloves" };
		{ 28, 35330, "", "Dreadweave Leggings" };
	};
	{
		Name = BabbleInventory["Leather"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep701_1#", "=ec1=#c1#" };
		{ 2, 35357, "", "Dragonhide Helm" };
		{ 3, 35359, "", "Dragonhide Spaulders" };
		{ 4, 35360, "", "Dragonhide Robe" };
		{ 5, 35356, "", "Dragonhide Gloves" };
		{ 6, 35358, "", "Dragonhide Legguards" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep701_2#", "=ec1=#c1#" };
		{ 9, 35372, "", "Wyrmhide Helm" };
		{ 10, 35374, "", "Wyrmhide Spaulders" };
		{ 11, 35375, "", "Wyrmhide Robe" };
		{ 12, 35371, "", "Wyrmhide Gloves" };
		{ 13, 35373, "", "Wyrmhide Legguards" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep701_3#", "=ec1=#c1#" };
		{ 17, 35362, "", "Kodohide Helm" };
		{ 18, 35364, "", "Kodohide Spaulders" };
		{ 19, 35365, "", "Kodohide Robe" };
		{ 20, 35361, "", "Kodohide Gloves" };
		{ 21, 35363, "", "Kodohide Legguards" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep706#", "=ec1=#c6#" };
		{ 24, 35367, "", "Opportunist's Leather Helm" };
		{ 25, 35369, "", "Opportunist's Leather Spaulders" };
		{ 26, 35370, "", "Opportunist's Leather Tunic" };
		{ 27, 35366, "", "Opportunist's Leather Gloves" };
		{ 28, 35368, "", "Opportunist's Leather Legguards" };
	};
	{
		Name = BabbleInventory["Mail"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep707_1#", "=ec1=#c7#" };
		{ 2, 35383, "", "Seer's Linked Helm" };
		{ 3, 35385, "", "Seer's Linked Spaulders" };
		{ 4, 35381, "", "Seer's Linked Armor" };
		{ 5, 35382, "", "Seer's Linked Gauntlets" };
		{ 6, 35384, "", "Seer's Linked Leggings" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep707_2#", "=ec1=#c7#" };
		{ 9, 35388, "", "Seer's Mail Helm" };
		{ 10, 35390, "", "Seer's Mail Spaulders" };
		{ 11, 35386, "", "Seer's Mail Armor" };
		{ 12, 35387, "", "Seer's Mail Gauntlets" };
		{ 13, 35389, "", "Seer's Mail Leggings" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep707_3#", "=ec1=#c7#" };
		{ 17, 35393, "", "Seer's Ringmail Headpiece" };
		{ 18, 35395, "", "Seer's Ringmail Shoulderpads" };
		{ 19, 35391, "", "Seer's Ringmail Chestguard" };
		{ 20, 35392, "", "Seer's Ringmail Gloves" };
		{ 21, 35394, "", "Seer's Ringmail Legguards" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep702#", "=ec1=#c2#" };
		{ 24, 35378, "", "Stalker's Chain Helm" };
		{ 25, 35380, "", "Stalker's Chain Spaulders" };
		{ 26, 35376, "", "Stalker's Chain Armor" };
		{ 27, 35377, "", "Stalker's Chain Gauntlets" };
		{ 28, 35379, "", "Stalker's Chain Leggings" };
	};
	{
		Name = BabbleInventory["Plate"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep704_1#", "=ec1=#c4#" };
		{ 2, 35414, "", "Crusader's Scaled Helm" };
		{ 3, 35416, "", "Crusader's Scaled Shoulders" };
		{ 4, 35412, "", "Crusader's Scaled Chestpiece" };
		{ 5, 35413, "", "Crusader's Scaled Gauntlets" };
		{ 6, 35415, "", "Crusader's Scaled Legguards" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep704_2#", "=ec1=#c4#" };
		{ 9, 35404, "", "Crusader's Ornamented Headguard" };
		{ 10, 35406, "", "Crusader's Ornamented Spaulders" };
		{ 11, 35402, "", "Crusader's Ornamented Chestplate" };
		{ 12, 35403, "", "Crusader's Ornamented Gloves" };
		{ 13, 35405, "", "Crusader's Ornamented Leggings" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep709#", "=ec1=#c9#" };
		{ 17, 35409, "", "Savage Plate Helm" };
		{ 18, 35411, "", "Savage Plate Shoulders" };
		{ 19, 35407, "", "Savage Plate Chestpiece" };
		{ 20, 35408, "", "Savage Plate Gauntlets" };
		{ 21, 35410, "", "Savage Plate Legguards" };
	};
	{
		Name = BabbleInventory["Cloth"] .. " - " .. BabbleFaction["Alliance"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep705_1#", "=ec1=#c5#" };
		{ 2, 28705, "", "Grand Marshal's Satin Hood" };
		{ 3, 28707, "", "Grand Marshal's Satin Mantle" };
		{ 4, 28708, "", "Grand Marshal's Satin Robe" };
		{ 5, 28704, "", "Grand Marshal's Satin Gloves" };
		{ 6, 28706, "", "Grand Marshal's Satin Leggings" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep705_2#", "=ec1=#c5#" };
		{ 9, 31622, "", "Grand Marshal's Mooncloth Cowl" };
		{ 10, 31624, "", "Grand Marshal's Mooncloth Shoulderpads" };
		{ 11, 31625, "", "Grand Marshal's Mooncloth Vestments" };
		{ 12, 31620, "", "Grand Marshal's Mooncloth Mitts" };
		{ 13, 31623, "", "Grand Marshal's Mooncloth Legguards" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep703#", "=ec1=#c3#" };
		{ 17, 28715, "", "Grand Marshal's Silk Cowl" };
		{ 18, 28714, "", "Grand Marshal's Silk Amice" };
		{ 19, 28717, "", "Grand Marshal's Silk Raiment" };
		{ 20, 28716, "", "Grand Marshal's Silk Handguards" };
		{ 21, 28718, "", "Grand Marshal's Silk Trousers" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep708#", "=ec1=#c8#" };
		{ 24, 28625, "", "Grand Marshal's Dreadweave Hood" };
		{ 25, 28627, "", "Grand Marshal's Dreadweave Mantle" };
		{ 26, 28628, "", "Grand Marshal's Dreadweave Robe" };
		{ 27, 28624, "", "Grand Marshal's Dreadweave Gloves" };
		{ 28, 28626, "", "Grand Marshal's Dreadweave Leggings" };

	};
	{
		Name = BabbleInventory["Leather"] .. " - " .. BabbleFaction["Alliance"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep701_1#", "=ec1=#c1#" };
		{ 2, 28619, "", "Grand Marshal's Dragonhide Helm" };
		{ 3, 28622, "", "Grand Marshal's Dragonhide Spaulders" };
		{ 4, 28623, "", "Grand Marshal's Dragonhide Robe" };
		{ 5, 28618, "", "Grand Marshal's Dragonhide Gloves" };
		{ 6, 28620, "", "Grand Marshal's Dragonhide Legguards" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep701_2#", "=ec1=#c1#" };
		{ 9, 31590, "", "Grand Marshal's Wyrmhide Helm" };
		{ 10, 31592, "", "Grand Marshal's Wyrmhide Spaulders" };
		{ 11, 31593, "", "Grand Marshal's Wyrmhide Robe" };
		{ 12, 31589, "", "Grand Marshal's Wyrmhide Gloves" };
		{ 13, 31591, "", "Grand Marshal's Wyrmhide Legguards" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep701_3#", "=ec1=#c1#" };
		{ 17, 28720, "", "Grand Marshal's Kodohide Helm" };
		{ 18, 28722, "", "Grand Marshal's Kodohide Spaulders" };
		{ 19, 28723, "", "Grand Marshal's Kodohide Robe" };
		{ 20, 28719, "", "Grand Marshal's Kodohide Gloves" };
		{ 21, 28721, "", "Grand Marshal's Kodohide Legguards" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep706#", "=ec1=#c6#" };
		{ 24, 28685, "", "Grand Marshal's Leather Helm" };
		{ 25, 28687, "", "Grand Marshal's Leather Spaulders" };
		{ 26, 28688, "", "Grand Marshal's Leather Tunic" };
		{ 27, 28684, "", "Grand Marshal's Leather Gloves" };
		{ 28, 28686, "", "Grand Marshal's Leather Legguards" };
	};
	{
		Name = BabbleInventory["Mail"] .. " - " .. BabbleFaction["Alliance"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep707_1#", "=ec1=#c7#" };
		{ 2, 28691, "", "Grand Marshal's Linked Helm" };
		{ 3, 28693, "", "Grand Marshal's Linked Spaulders" };
		{ 4, 28689, "", "Grand Marshal's Linked Armor" };
		{ 5, 28690, "", "Grand Marshal's Linked Gauntlets" };
		{ 6, 28692, "", "Grand Marshal's Linked Leggings" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep707_2#", "=ec1=#c7#" };
		{ 9, 28696, "", "Grand Marshal's Mail Helm" };
		{ 10, 28698, "", "Grand Marshal's Mail Spaulders" };
		{ 11, 28694, "", "Grand Marshal's Mail Armor" };
		{ 12, 28695, "", "Grand Marshal's Mail Gauntlets" };
		{ 13, 28697, "", "Grand Marshal's Mail Leggings" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep707_3#", "=ec1=#c7#" };
		{ 17, 31642, "", "Grand Marshal's Ringmail Headpiece" };
		{ 18, 31644, "", "Grand Marshal's Ringmail Shoulderpads" };
		{ 19, 31640, "", "Grand Marshal's Ringmail Chestguard" };
		{ 20, 31641, "", "Grand Marshal's Ringmail Gloves" };
		{ 21, 31643, "", "Grand Marshal's Ringmail Legguards" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#pvprep702#", "=ec1=#c2#" };
		{ 24, 28615, "", "Grand Marshal's Chain Helm" };
		{ 25, 28617, "", "Grand Marshal's Chain Spaulders" };
		{ 26, 28613, "", "Grand Marshal's Chain Armor" };
		{ 27, 28614, "", "Grand Marshal's Chain Gauntlets" };
		{ 28, 28616, "", "Grand Marshal's Chain Leggings" };
	};
	{
		Name = BabbleInventory["Plate"] .. " - " .. BabbleFaction["Alliance"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#pvprep704_1#", "=ec1=#c4#" };
		{ 2, 28711, "", "Grand Marshal's Scaled Helm" };
		{ 3, 28713, "", "Grand Marshal's Scaled Shoulders" };
		{ 4, 28709, "", "Grand Marshal's Scaled Chestpiece" };
		{ 5, 28710, "", "Grand Marshal's Scaled Gauntlets" };
		{ 6, 28712, "", "Grand Marshal's Scaled Legguards" };
		{ 8, 0, "INV_BannerPVP_02", "=q6=#pvprep704_2#", "=ec1=#c4#" };
		{ 9, 31632, "", "Grand Marshal's Ornamented Headguard" };
		{ 10, 31634, "", "Grand Marshal's Ornamented Spaulders" };
		{ 11, 31630, "", "Grand Marshal's Ornamented Chestplate" };
		{ 12, 31631, "", "Grand Marshal's Ornamented Gloves" };
		{ 13, 31633, "", "Grand Marshal's Ornamented Leggings" };
		{ 16, 0, "INV_BannerPVP_02", "=q6=#pvprep709#", "=ec1=#c9#" };
		{ 17, 28701, "", "Grand Marshal's Plate Helm" };
		{ 18, 28703, "", "Grand Marshal's Plate Shoulders" };
		{ 19, 28699, "", "Grand Marshal's Plate Chestpiece" };
		{ 20, 28700, "", "Grand Marshal's Plate Gauntlets" };
		{ 21, 28702, "", "Grand Marshal's Plate Legguards" };
		{ 23, 0, "INV_BannerPVP_02", "=q6=#arenas4_1#", "=ec1=#c4#" };
		{ 24, 28681, "", "Grand Marshal's Lamellar Helm" };
		{ 25, 28683, "", "Grand Marshal's Lamellar Shoulders" };
		{ 26, 28679, "", "Grand Marshal's Lamellar Chestpiece" };
		{ 27, 28680, "", "Grand Marshal's Lamellar Gauntlets" };
		{ 28, 28724, "", "Grand Marshal's Lamellar Legguards" };
	};
	{
		Name = BabbleInventory["Cloth"] .. " - Horde";
		{ 1, 0, "INV_BannerPVP_01", "=q6=#pvprep705_1#", "=ec1=#c5#" };
		{ 2, 28857, "", "High Warlord's Satin Hood" };
		{ 3, 28859, "", "High Warlord's Satin Mantle" };
		{ 4, 28860, "", "High Warlord's Satin Robe" };
		{ 5, 28856, "", "High Warlord's Satin Gloves" };
		{ 6, 28858, "", "High Warlord's Satin Leggings" };
		{ 8, 0, "INV_BannerPVP_01", "=q6=#pvprep705_2#", "=ec1=#c5#" };
		{ 9, 31626, "", "High Warlord's Mooncloth Cowl" };
		{ 10, 31628, "", "High Warlord's Mooncloth Shoulderpads" };
		{ 11, 31629, "", "High Warlord's Mooncloth Vestments" };
		{ 12, 31621, "", "High Warlord's Mooncloth Mitts" };
		{ 13, 31627, "", "High Warlord's Mooncloth Legguards" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#pvprep703#", "=ec1=#c3#" };
		{ 17, 28867, "", "High Warlord's Silk Cowl" };
		{ 18, 28866, "", "High Warlord's Silk Amice" };
		{ 19, 28869, "", "High Warlord's Silk Raiment" };
		{ 20, 28868, "", "High Warlord's Silk Handguards" };
		{ 21, 28870, "", "High Warlord's Silk Trousers" };
		{ 23, 0, "INV_BannerPVP_01", "=q6=#pvprep708#", "=ec1=#c8#" };
		{ 24, 28818, "", "High Warlord's Dreadweave Hood" };
		{ 25, 28820, "", "High Warlord's Dreadweave Mantle" };
		{ 26, 28821, "", "High Warlord's Dreadweave Robe" };
		{ 27, 28817, "", "High Warlord's Dreadweave Gloves" };
		{ 28, 28819, "", "High Warlord's Dreadweave Leggings" };
	};
	{
		Name = BabbleInventory["Leather"] .. " - Horde";
		{ 1, 0, "INV_BannerPVP_01", "=q6=#pvprep701_1#", "=ec1=#c1#" };
		{ 2, 28812, "", "High Warlord's Dragonhide Helm" };
		{ 3, 28814, "", "High Warlord's Dragonhide Spaulders" };
		{ 4, 28815, "", "High Warlord's Dragonhide Robe" };
		{ 5, 28811, "", "High Warlord's Dragonhide Gloves" };
		{ 6, 28813, "", "High Warlord's Dragonhide Legguards" };
		{ 8, 0, "INV_BannerPVP_01", "=q6=#pvprep701_2#", "=ec1=#c1#" };
		{ 9, 28872, "", "High Warlord's Wyrmhide Helm" };
		{ 10, 28874, "", "High Warlord's Wyrmhide Spaulders" };
		{ 11, 28875, "", "High Warlord's Wyrmhide Robe" };
		{ 12, 28871, "", "High Warlord's Wyrmhide Gloves" };
		{ 13, 28873, "", "High Warlord's Wyrmhide Legguards" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#pvprep701_3#", "=ec1=#c1#" };
		{ 17, 31585, "", "High Warlord's Kodohide Helm" };
		{ 18, 31587, "", "High Warlord's Kodohide Spaulders" };
		{ 19, 31588, "", "High Warlord's Kodohide Robe" };
		{ 20, 31584, "", "High Warlord's Kodohide Gloves" };
		{ 21, 31586, "", "High Warlord's Kodohide Legguards" };
		{ 23, 0, "INV_BannerPVP_01", "=q6=#pvprep706#", "=ec1=#c6#" };
		{ 24, 28837, "", "High Warlord's Leather Helm" };
		{ 25, 28839, "", "High Warlord's Leather Spaulders" };
		{ 26, 28840, "", "High Warlord's Leather Tunic" };
		{ 27, 28836, "", "High Warlord's Leather Gloves" };
		{ 28, 28838, "", "High Warlord's Leather Legguards" };
	};
	{
		Name = BabbleInventory["Mail"] .. " - Horde";
		{ 1, 0, "INV_BannerPVP_01", "=q6=#pvprep707_1#", "=ec1=#c7#" };
		{ 2, 28843, "", "High Warlord's Linked Helm" };
		{ 3, 28845, "", "High Warlord's Linked Spaulders" };
		{ 4, 28841, "", "High Warlord's Linked Armor" };
		{ 5, 28842, "", "High Warlord's Linked Gauntlets" };
		{ 6, 28844, "", "High Warlord's Linked Leggings" };
		{ 8, 0, "INV_BannerPVP_01", "=q6=#pvprep707_2#", "=ec1=#c7#" };
		{ 9, 28848, "", "High Warlord's Mail Helm" };
		{ 10, 28850, "", "High Warlord's Mail Spaulders" };
		{ 11, 28846, "", "High Warlord's Mail Armor" };
		{ 12, 28847, "", "High Warlord's Mail Gauntlets" };
		{ 13, 28849, "", "High Warlord's Mail Leggings" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#pvprep707_3#", "=ec1=#c7#" };
		{ 17, 31648, "", "High Warlord's Ringmail Headpiece" };
		{ 18, 31650, "", "High Warlord's Ringmail Shoulderpads" };
		{ 19, 31646, "", "High Warlord's Ringmail Chestguard" };
		{ 20, 31647, "", "High Warlord's Ringmail Gloves" };
		{ 21, 31649, "", "High Warlord's Ringmail Legguards" };
		{ 23, 0, "INV_BannerPVP_01", "=q6=#pvprep702#", "=ec1=#c2#" };
		{ 24, 28807, "", "High Warlord's Chain Helm" };
		{ 25, 28809, "", "High Warlord's Chain Spaulders" };
		{ 26, 28805, "", "High Warlord's Chain Armor" };
		{ 27, 28806, "", "High Warlord's Chain Gauntlets" };
		{ 28, 28808, "", "High Warlord's Chain Leggings" };
	};
	{
		Name = BabbleInventory["Plate"] .. " - Horde";
		{ 1, 0, "INV_BannerPVP_01", "=q6=#pvprep704_1#", "=ec1=#c4#" };
		{ 2, 28863, "", "High Warlord's Scaled Helm" };
		{ 3, 28865, "", "High Warlord's Scaled Shoulders" };
		{ 4, 28861, "", "High Warlord's Scaled Chestpiece" };
		{ 5, 28862, "", "High Warlord's Scaled Gauntlets" };
		{ 6, 28864, "", "High Warlord's Scaled Legguards" };
		{ 8, 0, "INV_BannerPVP_01", "=q6=#pvprep704_2#", "=ec1=#c4#" };
		{ 9, 31637, "", "High Warlord's Ornamented Headguard" };
		{ 10, 31639, "", "High Warlord's Ornamented Spaulders" };
		{ 11, 31635, "", "High Warlord's Ornamented Chestplate" };
		{ 12, 31636, "", "High Warlord's Ornamented Gloves" };
		{ 13, 31638, "", "High Warlord's Ornamented Leggings" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#pvprep709#", "=ec1=#c9#" };
		{ 17, 28853, "", "High Warlord's Plate Helm" };
		{ 18, 28855, "", "High Warlord's Plate Shoulders" };
		{ 19, 28851, "", "High Warlord's Plate Chestpiece" };
		{ 20, 28852, "", "High Warlord's Plate Gauntlets" };
		{ 21, 28854, "", "High Warlord's Plate Legguards" };
		{ 23, 0, "INV_BannerPVP_01", "=q6=#arenas4_1#", "=ec1=#c4#" };
		{ 24, 28833, "", "High Warlord's Lamellar Helm" };
		{ 25, 28835, "", "High Warlord's Lamellar Shoulders" };
		{ 26, 28831, "", "High Warlord's Lamellar Chestpiece" };
		{ 27, 28832, "", "High Warlord's Lamellar Gauntlets" };
		{ 28, 28834, "", "High Warlord's Lamellar Legguards" };
	};
};




----------------------------------
--- PvP Level 70 - Accessories ---
----------------------------------

AtlasLoot_Data["PvP70Accessories"] = {
	Name = "Off Set";
	{
		Name = "PvP Accessories - " .. BabbleFaction["Alliance"];
		{ 1, 28235, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 2, 28237, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 3, 28238, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 4, 28236, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 5, 30349, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 6, 28234, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 7, 30351, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 8, 30348, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 9, 30350, "", "Medallion of the Alliance", "", "8000 #alliance#" };
		{ 11, 31853, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 12, 31839, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 13, 31855, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 14, 31841, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 15, 32453, "", "Star's Tears", "", "1 #gold# 8 #faction#" };
		{ 16, 37864, "", "Medallion of the Alliance", "", "40000 #alliance#" };
		{ 17, 25829, "", "Talisman of the Alliance", "", "23000 #alliance#" };
		{ 19, 28120, "", "Gleaming Ornate Dawnstone", "", "6885 #faction#" };
		{ 20, 28119, "", "Smooth Ornate Dawnstone", "", "6885 #faction#" };
		{ 21, 28362, "", "Bold Ornate Ruby", "", "6885 #faction#" };
		{ 22, 28118, "", "Runed Ornate Ruby", "", "6885 #faction#" };
		{ 23, 28363, "", "Inscribed Ornate Topaz", "", "8500 #faction#" };
		{ 24, 28123, "", "Potent Ornate Topaz", "", "8500 #faction#" };
		{ 26, 31838, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 27, 31852, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 28, 31840, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 29, 31854, "", "Major Combat Mana Potion", "", "200 #faction#" };
	};
	{
		Name = "PvP Accessories - Horde";
		{ 1, 28241, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 2, 28243, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 3, 28239, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 4, 28242, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 5, 30346, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 6, 28240, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 7, 30345, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 8, 30343, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 9, 30344, "", "Medallion of the Horde", "", "8000 #horde#" };
		{ 11, 31853, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 12, 31839, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 13, 31855, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 14, 31841, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 15, 32453, "", "Star's Tears", "", "1 #gold# 8 #faction#" };
		{ 16, 37865, "", "Medallion of the Horde", "", "40000 #horde#" };
		{ 17, 24551, "", "Talisman of the Horde", "", "23000 #horde#" };
		{ 19, 28120, "", "Gleaming Ornate Dawnstone", "", "6885 #faction#" };
		{ 20, 28119, "", "Smooth Ornate Dawnstone", "", "6885 #faction#" };
		{ 21, 28362, "", "Bold Ornate Ruby", "", "6885 #faction#" };
		{ 22, 28118, "", "Runed Ornate Ruby", "", "6885 #faction#" };
		{ 23, 28363, "", "Inscribed Ornate Topaz", "", "8500 #faction#" };
		{ 24, 28123, "", "Potent Ornate Topaz", "", "8500 #faction#" };
		{ 26, 31838, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 27, 31852, "", "Major Combat Healing Potion", "", "200 #faction#" };
		{ 28, 31840, "", "Major Combat Mana Potion", "", "200 #faction#" };
		{ 29, 31854, "", "Major Combat Mana Potion", "", "200 #faction#" };
	};
	{
		Name = "PvP Accessories";
		{ 1, 28378, "", "Sergeant's Heavy Cape", "", "8000 #faction#" };
		{ 2, 28377, "", "Sergeant's Heavy Cloak", "", "8000 #faction#" };
		{ 4, 44431, "", "Cloak of Certain Reprieve", "", "21000 #faction#" };
		{ 5, 41591, "", "Sergeant's Reinforced Cape", "", "21000 #faction#" };
		{ 6, 41592, "", "The Gladiator's Resolution", "", "21000 #faction#" };
		{ 7, 44429, "", "Volanthius Shroud", "", "21000 #faction#" };
		{ 9, 41588, "", "Battlemaster's Aggression", "", "36000 #faction#" };
		{ 10, 41587, "", "Battlemaster's Celerity", "", "36000 #faction#" };
		{ 11, 41590, "", "Battlemaster's Courage", "", "36000 #faction#" };
		{ 12, 41589, "", "Battlemaster's Resolve", "", "36000 #faction#" };
		{ 14, 28247, "", "Band of Dominance", "", "10000 #alliance#" };
		{ 15, 28246, "", "Band of Triumph", "", "10000 #alliance#" };
		{ 16, 35132, "", "Guardian's Pendant of Conquest", "", "16000 #faction#" };
		{ 17, 35133, "", "Guardian's Pendant of Dominance", "", "16000 #faction#" };
		{ 18, 37929, "", "Guardian's Pendant of Reprieve", "", "16000 #faction#" };
		{ 19, 35134, "", "Guardian's Pendant of Salvation", "", "16000 #faction#" };
		{ 20, 37928, "", "Guardian's Pendant of Subjugation", "", "16000 #faction#" };
		{ 21, 35135, "", "Guardian's Pendant of Triumph", "", "16000 #faction#" };
		{ 23, 35129, "", "Guardian's Band of Dominance", "", "16000 #faction#" };
		{ 24, 35130, "", "Guardian's Band of Salvation", "", "16000 #faction#" };
		{ 25, 37927, "", "Guardian's Band of Subjugation", "", "16000 #faction#" };
		{ 26, 35131, "", "Guardian's Band of Triumph", "", "16000 #faction#" };
		{ 27, 33853, "", "Vindicator's Band of Dominance", "", "12000 #faction#" };
		{ 28, 33918, "", "Vindicator's Band of Salvation", "", "12000 #faction#" };
		{ 29, 35320, "", "Vindicator's Band of Subjugation", "", "12000 #faction#" };
		{ 30, 33919, "", "Vindicator's Band of Triumph", "", "12000 #faction#" };
	};
};

------------------------------------
--- PvP Level 70 - Non Set Epics ---
------------------------------------

AtlasLoot_Data["PvP70NonSet"] = {
	Name = AL["PvP Non-Set Epics"];
	{
		Name = "Page 1";
		{ 1, 35168, "", "Guardian's Dreadweave Cuffs", "", "13000 #faction#" };
		{ 2, 35153, "", "Guardian's Dreadweave Belt", "", "18000 #faction#" };
		{ 3, 35138, "", "Guardian's Dreadweave Stalkers", "", "18000 #faction#" };
		{ 5, 35174, "", "Guardian's Mooncloth Cuffs", "", "13000 #faction#" };
		{ 6, 35159, "", "Guardian's Mooncloth Belt", "", "18000 #faction#" };
		{ 7, 35144, "", "Guardian's Mooncloth Slippers", "", "18000 #faction#" };
		{ 9, 35179, "", "Guardian's Silk Cuffs", "", "13000 #faction#" };
		{ 10, 35164, "", "Guardian's Silk Belt", "", "18000 #faction#" };
		{ 11, 35149, "", "Guardian's Silk Footguards", "", "18000 #faction#" };
		{ 16, 35167, "", "Guardian's Dragonhide Bracers", "", "13000 #faction#" };
		{ 17, 35152, "", "Guardian's Dragonhide Belt", "", "18000 #faction#" };
		{ 18, 35137, "", "Guardian's Dragonhide Boots", "", "18000 #faction#" };
		{ 20, 35169, "", "Guardian's Kodohide Bracers", "", "13000 #faction#" };
		{ 21, 35154, "", "Guardian's Kodohide Belt", "", "18000 #faction#" };
		{ 22, 35139, "", "Guardian's Kodohide Boots", "", "18000 #faction#" };
		{ 24, 35171, "", "Guardian's Leather Bracers", "", "13000 #faction#" };
		{ 25, 35156, "", "Guardian's Leather Belt", "", "18000 #faction#" };
		{ 26, 35141, "", "Guardian's Leather Boots", "", "18000 #faction#" };
		{ 28, 35180, "", "Guardian's Wyrmhide Bracers", "", "13000 #faction#" };
		{ 29, 35165, "", "Guardian's Wyrmhide Belt", "", "18000 #faction#" };
		{ 30, 35150, "", "Guardian's Wyrmhide Boots", "", "18000 #faction#" };
	};
	{
		Name = "Page 2";
		{ 1, 35166, "", "Guardian's Chain Bracers", "", "13000 #faction#" };
		{ 2, 35151, "", "Guardian's Chain Girdle", "", "18000 #faction#" };
		{ 3, 35136, "", "Guardian's Chain Sabatons", "", "18000 #faction#" };
		{ 5, 35172, "", "Guardian's Linked Bracers", "", "13000 #faction#" };
		{ 6, 35157, "", "Guardian's Linked Girdle", "", "18000 #faction#" };
		{ 7, 35142, "", "Guardian's Linked Sabatons", "", "18000 #faction#" };
		{ 9, 35173, "", "Guardian's Mail Bracers", "", "13000 #faction#" };
		{ 10, 35158, "", "Guardian's Mail Girdle", "", "18000 #faction#" };
		{ 11, 35143, "", "Guardian's Mail Sabatons", "", "18000 #faction#" };
		{ 13, 35177, "", "Guardian's Ringmail Bracers", "", "13000 #faction#" };
		{ 14, 35162, "", "Guardian's Ringmail Girdle", "", "18000 #faction#" };
		{ 15, 35147, "", "Guardian's Ringmail Sabatons", "", "18000 #faction#" };
		{ 16, 35170, "", "Guardian's Lamellar Bracers", "", "13000 #faction#" };
		{ 17, 35155, "", "Guardian's Lamellar Belt", "", "18000 #faction#" };
		{ 18, 35140, "", "Guardian's Lamellar Greaves", "", "18000 #faction#" };
		{ 20, 35175, "", "Guardian's Ornamented Bracers", "", "13000 #faction#" };
		{ 21, 35160, "", "Guardian's Ornamented Belt", "", "18000 #faction#" };
		{ 22, 35145, "", "Guardian's Ornamented Greaves", "", "18000 #faction#" };
		{ 24, 35176, "", "Guardian's Plate Bracers", "", "13000 #faction#" };
		{ 25, 35161, "", "Guardian's Plate Belt", "", "18000 #faction#" };
		{ 26, 35146, "", "Guardian's Plate Greaves", "", "18000 #faction#" };
		{ 28, 35178, "", "Guardian's Scaled Bracers", "", "13000 #faction#" };
		{ 29, 35163, "", "Guardian's Scaled Belt", "", "18000 #faction#" };
		{ 30, 35148, "", "Guardian's Scaled Greaves", "", "18000 #faction#" };
	};
};

--------------------------
--- Arena - Armor Sets ---
--------------------------

AtlasLoot_Data["ArenaDruidTBC"] = {
	Name = AL["Druid"];
	{
		Name = AL["Feral"];
		{ 1, 0, "Ability_Druid_Maul", "=q6=#arenas1_1#", "#arenas1L#" };
		{ 2, 28127, "", "Gladiator's Dragonhide Helm" };
		{ 3, 28129, "", "Gladiator's Dragonhide Spaulders" };
		{ 4, 28130, "", "Gladiator's Dragonhide Tunic" };
		{ 5, 28126, "", "Gladiator's Dragonhide Gloves" };
		{ 6, 28128, "", "Gladiator's Dragonhide Legguards" };
		{ 8, 0, "Ability_Druid_Maul", "=q6=#arenas1_1#", "#arenas3L#" };
		{ 9, 31968, "", "Merciless Gladiator's Dragonhide Helm", "", "15000 #faction#" };
		{ 10, 31971, "", "Merciless Gladiator's Dragonhide Spaulders", "", "13000 #faction#" };
		{ 11, 31972, "", "Merciless Gladiator's Dragonhide Tunic", "", "15000 #faction#" };
		{ 12, 31967, "", "Merciless Gladiator's Dragonhide Gloves", "", "12000 #faction#" };
		{ 13, 31969, "", "Merciless Gladiator's Dragonhide Legguards", "", "15000 #faction#" };
		{ 16, 0, "Ability_Druid_Maul", "=q6=#arenas1_1#", "#arenas2L#" };
		{ 17, 33672, "", "Vengeful Gladiator's Dragonhide Helm" };
		{ 18, 33674, "", "Vengeful Gladiator's Dragonhide Spaulders" };
		{ 19, 33675, "", "Vengeful Gladiator's Dragonhide Tunic" };
		{ 20, 33671, "", "Vengeful Gladiator's Dragonhide Gloves" };
		{ 21, 33673, "", "Vengeful Gladiator's Dragonhide Legguards" };
		{ 23, 0, "Ability_Druid_Maul", "=q6=#arenas1_1#", "#arenas4L#" };
		{ 24, 34999, "", "Brutal Gladiator's Dragonhide Helm", "", "1875 #arena#" };
		{ 25, 35001, "", "Brutal Gladiator's Dragonhide Spaulders", "", "1500 #arena#" };
		{ 26, 35002, "", "Brutal Gladiator's Dragonhide Tunic", "", "1875 #arena#" };
		{ 27, 34998, "", "Brutal Gladiator's Dragonhide Gloves", "", "1125 #arena#" };
		{ 28, 35000, "", "Brutal Gladiator's Dragonhide Legguards", "", "1875 #arena#" };
	};
	{
		Name = AL["Balance"];
		{ 1, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#", "#arenas1L#" };
		{ 2, 28137, "", "Gladiator's Wyrmhide Helm" };
		{ 3, 28139, "", "Gladiator's Wyrmhide Spaulders" };
		{ 4, 28140, "", "Gladiator's Wyrmhide Tunic" };
		{ 5, 28136, "", "Gladiator's Wyrmhide Gloves" };
		{ 6, 28138, "", "Gladiator's Wyrmhide Legguards" };
		{ 8, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#", "#arenas3L#" };
		{ 9, 32057, "", "Merciless Gladiator's Wyrmhide Helm", "", "15000 #faction#" };
		{ 10, 32059, "", "Merciless Gladiator's Wyrmhide Spaulders", "", "13000 #faction#" };
		{ 11, 32060, "", "Merciless Gladiator's Wyrmhide Tunic", "", "15000 #faction#" };
		{ 12, 32056, "", "Merciless Gladiator's Wyrmhide Gloves", "", "12000 #faction#" };
		{ 13, 32058, "", "Merciless Gladiator's Wyrmhide Legguards", "", "15000 #faction#" };
		{ 16, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#", "#arenas2L#" };
		{ 17, 33768, "", "Vengeful Gladiator's Wyrmhide Helm" };
		{ 18, 33770, "", "Vengeful Gladiator's Wyrmhide Spaulders" };
		{ 19, 33771, "", "Vengeful Gladiator's Wyrmhide Tunic" };
		{ 20, 33767, "", "Vengeful Gladiator's Wyrmhide Gloves" };
		{ 21, 33769, "", "Vengeful Gladiator's Wyrmhide Legguards" };
		{ 23, 0, "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#", "#arenas4L#" };
		{ 24, 35112, "", "Brutal Gladiator's Wyrmhide Helm", "", "1875 #arena#" };
		{ 25, 35114, "", "Brutal Gladiator's Wyrmhide Spaulders", "", "1500 #arena#" };
		{ 26, 35115, "", "Brutal Gladiator's Wyrmhide Tunic", "", "1875 #arena#" };
		{ 27, 35111, "", "Brutal Gladiator's Wyrmhide Gloves", "", "1125 #arena#" };
		{ 28, 35113, "", "Brutal Gladiator's Wyrmhide Legguards", "", "1875 #arena#" };
	};
	{
		Name = AL["Restoration"];
		{ 1, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", "#arenas1L#" };
		{ 2, 31376, "", "Gladiator's Kodohide Helm" };
		{ 3, 31378, "", "Gladiator's Kodohide Spaulders" };
		{ 4, 31379, "", "Gladiator's Kodohide Tunic" };
		{ 5, 31375, "", "Gladiator's Kodohide Gloves" };
		{ 6, 31377, "", "Gladiator's Kodohide Legguards" };
		{ 8, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", "#arenas3L#" };
		{ 9, 31988, "", "Merciless Gladiator's Kodohide Helm", "", "15000 #faction#" };
		{ 10, 31990, "", "Merciless Gladiator's Kodohide Spaulders", "", "13000 #faction#" };
		{ 11, 31991, "", "Merciless Gladiator's Kodohide Tunic", "", "15000 #faction#" };
		{ 12, 31987, "", "Merciless Gladiator's Kodohide Gloves", "", "12000 #faction#" };
		{ 13, 31989, "", "Merciless Gladiator's Kodohide Legguards", "", "15000 #faction#" };
		{ 16, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", "#arenas2L#" };
		{ 17, 33691, "", "Vengeful Gladiator's Kodohide Helm" };
		{ 18, 33693, "", "Vengeful Gladiator's Kodohide Spaulders" };
		{ 19, 33694, "", "Vengeful Gladiator's Kodohide Tunic" };
		{ 20, 33690, "", "Vengeful Gladiator's Kodohide Gloves" };
		{ 21, 33692, "", "Vengeful Gladiator's Kodohide Legguards" };
		{ 23, 0, "Spell_Nature_Regeneration", "=q6=#arenas1_3#", "#arenas4L#" };
		{ 24, 35023, "", "Brutal Gladiator's Kodohide Helm", "", "1875 #arena#" };
		{ 25, 35025, "", "Brutal Gladiator's Kodohide Spaulders", "", "1500 #arena#" };
		{ 26, 35026, "", "Brutal Gladiator's Kodohide Tunic", "", "1875 #arena#" };
		{ 27, 35022, "", "Brutal Gladiator's Kodohide Gloves", "", "1125 #arena#" };
		{ 28, 35024, "", "Brutal Gladiator's Kodohide Legguards", "", "1875 #arena#" };
	};
};

AtlasLoot_Data["ArenaHunterTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		{ 1, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", "#arenas1L#" };
		{ 2, 28331, "", "Gladiator's Chain Helm" };
		{ 3, 28333, "", "Gladiator's Chain Spaulders" };
		{ 4, 28334, "", "Gladiator's Chain Armor" };
		{ 5, 28335, "", "Gladiator's Chain Gauntlets" };
		{ 6, 28332, "", "Gladiator's Chain Leggings" };
		{ 8, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", "#arenas3L#" };
		{ 9, 31962, "", "Merciless Gladiator's Chain Helm", "", "15000 #faction#" };
		{ 10, 31964, "", "Merciless Gladiator's Chain Spaulders", "", "13000 #faction#" };
		{ 11, 31960, "", "Merciless Gladiator's Chain Armor", "", "15000 #faction#" };
		{ 12, 31961, "", "Merciless Gladiator's Chain Gauntlets", "", "12000 #faction#" };
		{ 13, 31963, "", "Merciless Gladiator's Chain Leggings", "", "15000 #faction#" };
		{ 16, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", "#arenas2L#" };
		{ 17, 33666, "", "Vengeful Gladiator's Chain Helm" };
		{ 18, 33668, "", "Vengeful Gladiator's Chain Spaulders" };
		{ 19, 33664, "", "Vengeful Gladiator's Chain Armor" };
		{ 20, 33665, "", "Vengeful Gladiator's Chain Gauntlets" };
		{ 21, 33667, "", "Vengeful Gladiator's Chain Leggings" };
		{ 23, 0, "Ability_Hunter_RunningShot", "=q6=#arenas2#", "#arenas4L#" };
		{ 24, 34992, "", "Brutal Gladiator's Chain Helm", "", "1875 #arena#" };
		{ 25, 34994, "", "Brutal Gladiator's Chain Spaulders", "", "1500 #arena#" };
		{ 26, 34990, "", "Brutal Gladiator's Chain Armor", "", "1875 #arena#" };
		{ 27, 34991, "", "Brutal Gladiator's Chain Gauntlets", "", "1125 #arena#" };
		{ 28, 34993, "", "Brutal Gladiator's Chain Leggings", "", "1875 #arena#" };
	};
};


AtlasLoot_Data["ArenaMageTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		{ 1, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", "#arenas1L#" };
		{ 2, 25855, "", "Gladiator's Silk Cowl" };
		{ 3, 25854, "", "Gladiator's Silk Amice" };
		{ 4, 25856, "", "Gladiator's Silk Raiment" };
		{ 5, 25857, "", "Gladiator's Silk Handguards" };
		{ 6, 25858, "", "Gladiator's Silk Trousers" };
		{ 8, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", "#arenas3L#" };
		{ 9, 32048, "", "Merciless Gladiator's Silk Cowl", "", "15000 #faction#" };
		{ 10, 32047, "", "Merciless Gladiator's Silk Amice", "", "13000 #faction#" };
		{ 11, 32050, "", "Merciless Gladiator's Silk Raiment", "", "15000 #faction#" };
		{ 12, 32049, "", "Merciless Gladiator's Silk Handguards", "", "12000 #faction#" };
		{ 13, 32051, "", "Merciless Gladiator's Silk Trousers", "", "15000 #faction#" };
		{ 16, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", "#arenas2L#" };
		{ 17, 33758, "", "Vengeful Gladiator's Silk Cowl" };
		{ 18, 33757, "", "Vengeful Gladiator's Silk Amice" };
		{ 19, 33760, "", "Vengeful Gladiator's Silk Raiment" };
		{ 20, 33759, "", "Vengeful Gladiator's Silk Handguards" };
		{ 21, 33761, "", "Vengeful Gladiator's Silk Trousers" };
		{ 23, 0, "Spell_Frost_IceStorm", "=q6=#arenas3#", "#arenas4L#" };
		{ 24, 35097, "", "Brutal Gladiator's Silk Cowl", "", "1875 #arena#" };
		{ 25, 35096, "", "Brutal Gladiator's Silk Amice", "", "1500 #arena#" };
		{ 26, 35099, "", "Brutal Gladiator's Silk Raiment", "", "1875 #arena#" };
		{ 27, 35098, "", "Brutal Gladiator's Silk Handguards", "", "1125 #arena#" };
		{ 28, 35100, "", "Brutal Gladiator's Silk Trousers", "", "1875 #arena#" };
	};
};


AtlasLoot_Data["ArenaPaladinTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Protection"];
		{ 1, 0, "Spell_Holy_SealOfMight", "=q6=#arenas4_1#", "#arenas1L#" };
		{ 2, 27704, "", "Gladiator's Lamellar Helm" };
		{ 3, 27706, "", "Gladiator's Lamellar Shoulders" };
		{ 4, 27702, "", "Gladiator's Lamellar Chestpiece" };
		{ 5, 27703, "", "Gladiator's Lamellar Gauntlets" };
		{ 6, 27705, "", "Gladiator's Lamellar Legguards" };
		{ 8, 0, "Spell_Holy_SealOfMight", "=q6=#arenas4_1#", "#arenas3L#" };
		{ 9, 31997, "", "Merciless Gladiator's Lamellar Helm", "", "15000 #faction#" };
		{ 10, 31996, "", "Merciless Gladiator's Lamellar Shoulders", "", "13000 #faction#" };
		{ 11, 31992, "", "Merciless Gladiator's Lamellar Chestpiece", "", "15000 #faction#" };
		{ 12, 31993, "", "Merciless Gladiator's Lamellar Gauntlets", "", "12000 #faction#" };
		{ 13, 31995, "", "Merciless Gladiator's Lamellar Legguards", "", "15000 #faction#" };
		{ 16, 0, "Spell_Holy_SealOfMight", "=q6=#arenas4_1#", "#arenas2L#" };
		{ 17, 33697, "", "Vengeful Gladiator's Lamellar Helm" };
		{ 18, 33699, "", "Vengeful Gladiator's Lamellar Shoulders" };
		{ 19, 33695, "", "Vengeful Gladiator's Lamellar Chestpiece" };
		{ 20, 33696, "", "Vengeful Gladiator's Lamellar Gauntlets" };
		{ 21, 33698, "", "Vengeful Gladiator's Lamellar Legguards" };
		{ 23, 0, "Spell_Holy_SealOfMight", "=q6=#arenas4_1#", "#arenas4L#" };
		{ 24, 35029, "", "Brutal Gladiator's Lamellar Helm", "", "1875 #arena#" };
		{ 25, 35031, "", "Brutal Gladiator's Lamellar Shoulders", "", "1500 #arena#" };
		{ 26, 35027, "", "Brutal Gladiator's Lamellar Chestpiece", "", "1875 #arena#" };
		{ 27, 35028, "", "Brutal Gladiator's Lamellar Gauntlets", "", "1125 #arena#" };
		{ 28, 35030, "", "Brutal Gladiator's Lamellar Legguards", "", "1875 #arena#" };
	};
	{
		Name = AL["Retribution"];
		{ 1, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", "#arenas1L#" };
		{ 2, 27881, "", "Gladiator's Scaled Helm" };
		{ 3, 27883, "", "Gladiator's Scaled Shoulders" };
		{ 4, 27879, "", "Gladiator's Scaled Chestpiece" };
		{ 5, 27880, "", "Gladiator's Scaled Gauntlets" };
		{ 6, 27882, "", "Gladiator's Scaled Legguards" };
		{ 8, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", "#arenas3L#" };
		{ 9, 32041, "", "Merciless Gladiator's Scaled Helm", "", "15000 #faction#" };
		{ 10, 32043, "", "Merciless Gladiator's Scaled Shoulders", "", "13000 #faction#" };
		{ 11, 32039, "", "Merciless Gladiator's Scaled Chestpiece", "", "15000 #faction#" };
		{ 12, 32040, "", "Merciless Gladiator's Scaled Gauntlets", "", "12000 #faction#" };
		{ 13, 32042, "", "Merciless Gladiator's Scaled Legguards", "", "15000 #faction#" };
		{ 16, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", "#arenas2L#" };
		{ 17, 33751, "", "Vengeful Gladiator's Scaled Helm" };
		{ 18, 33753, "", "Vengeful Gladiator's Scaled Shoulders" };
		{ 19, 33749, "", "Vengeful Gladiator's Scaled Chestpiece" };
		{ 20, 33750, "", "Vengeful Gladiator's Scaled Gauntlets" };
		{ 21, 33752, "", "Vengeful Gladiator's Scaled Legguards" };
		{ 23, 0, "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#", "#arenas4L#" };
		{ 24, 35090, "", "Brutal Gladiator's Scaled Helm", "", "1875 #arena#" };
		{ 25, 35092, "", "Brutal Gladiator's Scaled Shoulders", "", "1500 #arena#" };
		{ 26, 35088, "", "Brutal Gladiator's Scaled Chestpiece", "", "1875 #arena#" };
		{ 27, 35089, "", "Brutal Gladiator's Scaled Gauntlets", "", "1125 #arena#" };
		{ 28, 35091, "", "Brutal Gladiator's Scaled Legguards", "", "1875 #arena#" };
	};
	{
		Name = AL["Holy"];
		{ 1, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", "#arenas1L#" };
		{ 2, 31616, "", "Gladiator's Ornamented Headcover" };
		{ 3, 31619, "", "Gladiator's Ornamented Spaulders" };
		{ 4, 31613, "", "Gladiator's Ornamented Chestguard" };
		{ 5, 31614, "", "Gladiator's Ornamented Gloves" };
		{ 6, 31618, "", "Gladiator's Ornamented Legplates" };
		{ 8, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", "#arenas3L#" };
		{ 9, 32022, "", "Merciless Gladiator's Ornamented Headcover", "", "15000 #faction#" };
		{ 10, 32024, "", "Merciless Gladiator's Ornamented Spaulders", "", "13000 #faction#" };
		{ 11, 32020, "", "Merciless Gladiator's Ornamented Chestguard", "", "15000 #faction#" };
		{ 12, 32021, "", "Merciless Gladiator's Ornamented Gloves", "", "12000 #faction#" };
		{ 13, 32023, "", "Merciless Gladiator's Ornamented Legplates", "", "15000 #faction#" };
		{ 16, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", "#arenas2L#" };
		{ 17, 33724, "", "Vengeful Gladiator's Ornamented Headcover" };
		{ 18, 33726, "", "Vengeful Gladiator's Ornamented Spaulders" };
		{ 19, 33722, "", "Vengeful Gladiator's Ornamented Chestguard" };
		{ 20, 33723, "", "Vengeful Gladiator's Ornamented Gloves" };
		{ 21, 33725, "", "Vengeful Gladiator's Ornamented Legplates" };
		{ 23, 0, "Spell_Holy_HolyBolt", "=q6=#arenas4_3#", "#arenas4L#" };
		{ 24, 35061, "", "Brutal Gladiator's Ornamented Headcover", "", "1875 #arena#" };
		{ 25, 35063, "", "Brutal Gladiator's Ornamented Spaulders", "", "1500 #arena#" };
		{ 26, 35059, "", "Brutal Gladiator's Ornamented Chestguard", "", "1875 #arena#" };
		{ 27, 35060, "", "Brutal Gladiator's Ornamented Gloves", "", "1125 #arena#" };
		{ 28, 35062, "", "Brutal Gladiator's Ornamented Legplates", "", "1875 #arena#" };
	};
};

AtlasLoot_Data["ArenaPriestTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Shadow"];
		{ 1, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", "#arenas1L#" };
		{ 2, 27708, "", "Gladiator's Satin Hood" };
		{ 3, 27710, "", "Gladiator's Satin Mantle" };
		{ 4, 27711, "", "Gladiator's Satin Robe" };
		{ 5, 27707, "", "Gladiator's Satin Gloves" };
		{ 6, 27709, "", "Gladiator's Satin Leggings" };
		{ 8, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", "#arenas3L#" };
		{ 9, 32035, "", "Merciless Gladiator's Satin Hood", "", "15000 #faction#" };
		{ 10, 32037, "", "Merciless Gladiator's Satin Mantle", "", "13000 #faction#" };
		{ 11, 32038, "", "Merciless Gladiator's Satin Robe", "", "15000 #faction#" };
		{ 12, 32034, "", "Merciless Gladiator's Satin Gloves", "", "12000 #faction#" };
		{ 13, 32036, "", "Merciless Gladiator's Satin Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", "#arenas2L#" };
		{ 17, 33745, "", "Vengeful Gladiator's Satin Hood" };
		{ 18, 33747, "", "Vengeful Gladiator's Satin Mantle" };
		{ 19, 33748, "", "Vengeful Gladiator's Satin Robe" };
		{ 20, 33744, "", "Vengeful Gladiator's Satin Gloves" };
		{ 21, 33746, "", "Vengeful Gladiator's Satin Leggings" };
		{ 23, 0, "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#", "#arenas4L#" };
		{ 24, 35084, "", "Brutal Gladiator's Satin Hood", "", "1875 #arena#" };
		{ 25, 35086, "", "Brutal Gladiator's Satin Mantle", "", "1500 #arena#" };
		{ 26, 35087, "", "Brutal Gladiator's Satin Robe", "", "1875 #arena#" };
		{ 27, 35083, "", "Brutal Gladiator's Satin Gloves", "", "1125 #arena#" };
		{ 28, 35085, "", "Brutal Gladiator's Satin Leggings", "", "1875 #arena#" };
	};
	{
		Name = AL["Holy"];
		{ 1, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", "#arenas1L#" };
		{ 2, 31410, "", "Gladiator's Mooncloth Hood" };
		{ 3, 31412, "", "Gladiator's Mooncloth Mantle" };
		{ 4, 31413, "", "Gladiator's Mooncloth Robe" };
		{ 5, 31409, "", "Gladiator's Mooncloth Gloves" };
		{ 6, 31411, "", "Gladiator's Mooncloth Leggings" };
		{ 8, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", "#arenas3L#" };
		{ 9, 32016, "", "Merciless Gladiator's Mooncloth Hood", "", "15000 #faction#" };
		{ 10, 32018, "", "Merciless Gladiator's Mooncloth Mantle", "", "13000 #faction#" };
		{ 11, 32019, "", "Merciless Gladiator's Mooncloth Robe", "", "15000 #faction#" };
		{ 12, 32015, "", "Merciless Gladiator's Mooncloth Gloves", "", "12000 #faction#" };
		{ 13, 32017, "", "Merciless Gladiator's Mooncloth Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", "#arenas2L#" };
		{ 17, 33718, "", "Vengeful Gladiator's Mooncloth Hood" };
		{ 18, 33720, "", "Vengeful Gladiator's Mooncloth Mantle" };
		{ 19, 33721, "", "Vengeful Gladiator's Mooncloth Robe" };
		{ 20, 33717, "", "Vengeful Gladiator's Mooncloth Gloves" };
		{ 21, 33719, "", "Vengeful Gladiator's Mooncloth Leggings" };
		{ 23, 0, "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#", "#arenas4L#" };
		{ 24, 35054, "", "Brutal Gladiator's Mooncloth Hood", "", "1875 #arena#" };
		{ 25, 35056, "", "Brutal Gladiator's Mooncloth Mantle", "", "1500 #arena#" };
		{ 26, 35057, "", "Brutal Gladiator's Mooncloth Robe", "", "1875 #arena#" };
		{ 27, 35053, "", "Brutal Gladiator's Mooncloth Gloves", "", "1125 #arena#" };
		{ 28, 35055, "", "Brutal Gladiator's Mooncloth Leggings", "", "1875 #arena#" };
	};
};

AtlasLoot_Data["ArenaRogueTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		{ 1, 0, "Ability_BackStab", "=q6=#arenas6#", "#arenas1L#" };
		{ 2, 25830, "", "Gladiator's Leather Helm" };
		{ 3, 25832, "", "Gladiator's Leather Spaulders" };
		{ 4, 25831, "", "Gladiator's Leather Tunic" };
		{ 5, 25834, "", "Gladiator's Leather Gloves" };
		{ 6, 25833, "", "Gladiator's Leather Legguards" };
		{ 8, 0, "Ability_BackStab", "=q6=#arenas6#", "#arenas3L#" };
		{ 9, 31999, "", "Merciless Gladiator's Leather Helm", "", "15000 #faction#" };
		{ 10, 32001, "", "Merciless Gladiator's Leather Spaulders", "", "13000 #faction#" };
		{ 11, 32002, "", "Merciless Gladiator's Leather Tunic", "", "15000 #faction#" };
		{ 12, 31998, "", "Merciless Gladiator's Leather Gloves", "", "12000 #faction#" };
		{ 13, 32000, "", "Merciless Gladiator's Leather Legguards", "", "15000 #faction#" };
		{ 16, 0, "Ability_BackStab", "=q6=#arenas6#", "#arenas2L#" };
		{ 17, 33701, "", "Vengeful Gladiator's Leather Helm" };
		{ 18, 33703, "", "Vengeful Gladiator's Leather Spaulders" };
		{ 19, 33704, "", "Vengeful Gladiator's Leather Tunic" };
		{ 20, 33700, "", "Vengeful Gladiator's Leather Gloves" };
		{ 21, 33702, "", "Vengeful Gladiator's Leather Legguards" };
		{ 23, 0, "Ability_BackStab", "=q6=#arenas6#", "#arenas4L#" };
		{ 24, 35033, "", "Brutal Gladiator's Leather Helm", "", "1875 #arena#" };
		{ 25, 35035, "", "Brutal Gladiator's Leather Spaulders", "", "1500 #arena#" };
		{ 26, 35036, "", "Brutal Gladiator's Leather Tunic", "", "1875 #arena#" };
		{ 27, 35032, "", "Brutal Gladiator's Leather Gloves", "", "1125 #arena#" };
		{ 28, 35034, "", "Brutal Gladiator's Leather Legguards", "", "1875 #arena#" };
	};
};

AtlasLoot_Data["ArenaWarlockTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Demonology"];
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", "#arenas1L#" };
		{ 2, 24553, "", "Gladiator's Dreadweave Hood" };
		{ 3, 24554, "", "Gladiator's Dreadweave Mantle" };
		{ 4, 24552, "", "Gladiator's Dreadweave Robe" };
		{ 5, 24556, "", "Gladiator's Dreadweave Gloves" };
		{ 6, 24555, "", "Gladiator's Dreadweave Leggings" };
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", "#arenas3L#" };
		{ 9, 31974, "", "Merciless Gladiator's Dreadweave Hood", "", "15000 #faction#" };
		{ 10, 31976, "", "Merciless Gladiator's Dreadweave Mantle", "", "13000 #faction#" };
		{ 11, 31977, "", "Merciless Gladiator's Dreadweave Robe", "", "15000 #faction#" };
		{ 12, 31973, "", "Merciless Gladiator's Dreadweave Gloves", "", "12000 #faction#" };
		{ 13, 31975, "", "Merciless Gladiator's Dreadweave Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", "#arenas2L#" };
		{ 17, 33677, "", "Vengeful Gladiator's Dreadweave Hood" };
		{ 18, 33679, "", "Vengeful Gladiator's Dreadweave Mantle" };
		{ 19, 33680, "", "Vengeful Gladiator's Dreadweave Robe" };
		{ 20, 33676, "", "Vengeful Gladiator's Dreadweave Gloves" };
		{ 21, 33678, "", "Vengeful Gladiator's Dreadweave Leggings" };
		{ 23, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_1#", "#arenas4L#" };
		{ 24, 35004, "", "Brutal Gladiator's Dreadweave Hood", "", "1875 #arena#" };
		{ 25, 35006, "", "Brutal Gladiator's Dreadweave Mantle", "", "1500 #arena#" };
		{ 26, 35007, "", "Brutal Gladiator's Dreadweave Robe", "", "1875 #arena#" };
		{ 27, 35003, "", "Brutal Gladiator's Dreadweave Gloves", "", "1125 #arena#" };
		{ 28, 35005, "", "Brutal Gladiator's Dreadweave Leggings", "", "1875 #arena#" };
	};
	{
		Name = AL["Destruction"];
		{ 1, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#", "#arenas1L#" };
		{ 2, 30187, "", "Gladiator's Felweave Cowl" };
		{ 3, 30186, "", "Gladiator's Felweave Amice" };
		{ 4, 30200, "", "Gladiator's Felweave Raiment" };
		{ 5, 30188, "", "Gladiator's Felweave Handguards" };
		{ 6, 30201, "", "Gladiator's Felweave Trousers" };
		{ 8, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#", "#arenas3L#" };
		{ 9, 31980, "", "Merciless Gladiator's Felweave Cowl", "", "15000 #faction#" };
		{ 10, 31979, "", "Merciless Gladiator's Felweave Amice", "", "13000 #faction#" };
		{ 11, 31982, "", "Merciless Gladiator's Felweave Raiment", "", "15000 #faction#" };
		{ 12, 31981, "", "Merciless Gladiator's Felweave Handguards", "", "12000 #faction#" };
		{ 13, 31983, "", "Merciless Gladiator's Felweave Trousers", "", "15000 #faction#" };
		{ 16, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#", "#arenas2L#" };
		{ 17, 33683, "", "Vengeful Gladiator's Felweave Cowl" };
		{ 18, 33682, "", "Vengeful Gladiator's Felweave Amice" };
		{ 19, 33685, "", "Vengeful Gladiator's Felweave Raiment" };
		{ 20, 33684, "", "Vengeful Gladiator's Felweave Handguards" };
		{ 21, 33686, "", "Vengeful Gladiator's Felweave Trousers" };
		{ 23, 0, "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#", "#arenas4L#" };
		{ 24, 35010, "", "Brutal Gladiator's Felweave Cowl", "", "1875 #arena#" };
		{ 25, 35009, "", "Brutal Gladiator's Felweave Amice", "", "1500 #arena#" };
		{ 26, 35012, "", "Brutal Gladiator's Felweave Raiment", "", "1875 #arena#" };
		{ 27, 35011, "", "Brutal Gladiator's Felweave Handguards", "", "1125 #arena#" };
		{ 28, 35013, "", "Brutal Gladiator's Felweave Trousers", "", "1875 #arena#" };
	};
};


AtlasLoot_Data["ArenaShamanTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Enhancement"];
		{ 1, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", "#arenas1L#" };
		{ 2, 25998, "", "Gladiator's Linked Helm" };
		{ 3, 25999, "", "Gladiator's Linked Spaulders" };
		{ 4, 25997, "", "Gladiator's Linked Armor" };
		{ 5, 26000, "", "Gladiator's Linked Gauntlets" };
		{ 6, 26001, "", "Gladiator's Linked Leggings" };
		{ 8, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", "#arenas3L#" };
		{ 9, 32006, "", "Merciless Gladiator's Linked Helm", "", "15000 #faction#" };
		{ 10, 32008, "", "Merciless Gladiator's Linked Spaulders", "", "13000 #faction#" };
		{ 11, 32004, "", "Merciless Gladiator's Linked Armor", "", "15000 #faction#" };
		{ 12, 32005, "", "Merciless Gladiator's Linked Gauntlets", "", "12000 #faction#" };
		{ 13, 32007, "", "Merciless Gladiator's Linked Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", "#arenas2L#" };
		{ 17, 33708, "", "Vengeful Gladiator's Linked Helm" };
		{ 18, 33710, "", "Vengeful Gladiator's Linked Spaulders" };
		{ 19, 33706, "", "Vengeful Gladiator's Linked Armor" };
		{ 20, 33707, "", "Vengeful Gladiator's Linked Gauntlets" };
		{ 21, 33709, "", "Vengeful Gladiator's Linked Leggings" };
		{ 23, 0, "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#", "#arenas4L#" };
		{ 24, 35044, "", "Brutal Gladiator's Linked Helm", "", "1875 #arena#" };
		{ 25, 35046, "", "Brutal Gladiator's Linked Spaulders", "", "1500 #arena#" };
		{ 26, 35042, "", "Brutal Gladiator's Linked Armor", "", "1875 #arena#" };
		{ 27, 35043, "", "Brutal Gladiator's Linked Gauntlets", "", "1125 #arena#" };
		{ 28, 35045, "", "Brutal Gladiator's Linked Leggings", "", "1875 #arena#" };
	};
	{
		Name = AL["Elemental"];
		{ 1, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", "#arenas1L#" };
		{ 2, 27471, "", "Gladiator's Mail Helm" };
		{ 3, 27473, "", "Gladiator's Mail Spaulders" };
		{ 4, 27469, "", "Gladiator's Mail Armor" };
		{ 5, 27470, "", "Gladiator's Mail Gauntlets" };
		{ 6, 27472, "", "Gladiator's Mail Leggings" };
		{ 8, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", "#arenas3L#" };
		{ 9, 32011, "", "Merciless Gladiator's Mail Helm" };
		{ 10, 32013, "", "Merciless Gladiator's Mail Spaulders", "", "13000 #faction#" };
		{ 11, 32009, "", "Merciless Gladiator's Mail Armor", "", "15000 #faction#" };
		{ 12, 32010, "", "Merciless Gladiator's Mail Gauntlets", "", "12000 #faction#" };
		{ 13, 32012, "", "Merciless Gladiator's Mail Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", "#arenas2L#" };
		{ 17, 33713, "", "Vengeful Gladiator's Mail Helm" };
		{ 18, 33715, "", "Vengeful Gladiator's Mail Spaulders" };
		{ 19, 33711, "", "Vengeful Gladiator's Mail Armor" };
		{ 20, 33712, "", "Vengeful Gladiator's Mail Gauntlets" };
		{ 21, 33714, "", "Vengeful Gladiator's Mail Leggings" };
		{ 23, 0, "Spell_Nature_Lightning", "=q6=#arenas7_2#", "#arenas4L#" };
		{ 24, 35050, "", "Brutal Gladiator's Mail Helm", "", "1875 #arena#" };
		{ 25, 35052, "", "Brutal Gladiator's Mail Spaulders", "", "1500 #arena#" };
		{ 26, 35048, "", "Brutal Gladiator's Mail Armor", "", "1875 #arena#" };
		{ 27, 35049, "", "Brutal Gladiator's Mail Gauntlets", "", "1125 #arena#" };
		{ 28, 35051, "", "Brutal Gladiator's Mail Leggings", "", "1875 #arena#" };
	};
	{
		Name = AL["Restoration"];
		{ 1, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#", "#arenas1L#" };
		{ 2, 31400, "", "Gladiator's Ringmail Helm" };
		{ 3, 31407, "", "Gladiator's Ringmail Spaulders" };
		{ 4, 31396, "", "Gladiator's Ringmail Armor" };
		{ 5, 31397, "", "Gladiator's Ringmail Gauntlets" };
		{ 6, 31406, "", "Gladiator's Ringmail Leggings" };
		{ 8, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#", "#arenas3L#" };
		{ 9, 32031, "", "Merciless Gladiator's Ringmail Helm", "", "15000 #faction#" };
		{ 10, 32033, "", "Merciless Gladiator's Ringmail Spaulders", "", "13000 #faction#" };
		{ 11, 32029, "", "Merciless Gladiator's Ringmail Armor", "", "15000 #faction#" };
		{ 12, 32030, "", "Merciless Gladiator's Ringmail Gauntlets", "", "12000 #faction#" };
		{ 13, 32032, "", "Merciless Gladiator's Ringmail Leggings", "", "15000 #faction#" };
		{ 16, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#", "#arenas2L#" };
		{ 17, 33740, "", "Vengeful Gladiator's Ringmail Helm" };
		{ 18, 33742, "", "Vengeful Gladiator's Ringmail Spaulders" };
		{ 19, 33738, "", "Vengeful Gladiator's Ringmail Armor" };
		{ 20, 33739, "", "Vengeful Gladiator's Ringmail Gauntlets" };
		{ 21, 33741, "", "Vengeful Gladiator's Ringmail Leggings" };
		{ 23, 0, "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#", "#arenas4L#" };
		{ 24, 35079, "", "Brutal Gladiator's Ringmail Helm", "", "1875 #arena#" };
		{ 25, 35081, "", "Brutal Gladiator's Ringmail Spaulders", "", "1500 #arena#" };
		{ 26, 35077, "", "Brutal Gladiator's Ringmail Armor", "", "1875 #arena#" };
		{ 27, 35078, "", "Brutal Gladiator's Ringmail Gauntlets", "", "1125 #arena#" };
		{ 28, 35080, "", "Brutal Gladiator's Ringmail Leggings", "", "1875 #arena#" };
	};
};

AtlasLoot_Data["ArenaWarriorTBC"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		{ 1, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", "#arenas1L#" };
		{ 2, 24545, "", "Gladiator's Plate Helm" };
		{ 3, 24546, "", "Gladiator's Plate Shoulders" };
		{ 4, 24544, "", "Gladiator's Plate Chestpiece" };
		{ 5, 24549, "", "Gladiator's Plate Gauntlets" };
		{ 6, 24547, "", "Gladiator's Plate Legguards" };
		{ 8, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", "#arenas3L#" };
		{ 9, 30488, "", "Merciless Gladiator's Plate Helm", "", "15000 #faction#" };
		{ 10, 30490, "", "Merciless Gladiator's Plate Shoulders", "", "13000 #faction#" };
		{ 11, 30486, "", "Merciless Gladiator's Plate Chestpiece", "", "15000 #faction#" };
		{ 12, 30487, "", "Merciless Gladiator's Plate Gauntlets", "", "12000 #faction#" };
		{ 13, 30489, "", "Merciless Gladiator's Plate Legguards", "", "15000 #faction#" };
		{ 16, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", "#arenas2L#" };
		{ 17, 33730, "", "Vengeful Gladiator's Plate Helm" };
		{ 18, 33732, "", "Vengeful Gladiator's Plate Shoulders" };
		{ 19, 33728, "", "Vengeful Gladiator's Plate Chestpiece" };
		{ 20, 33729, "", "Vengeful Gladiator's Plate Gauntlets" };
		{ 21, 33731, "", "Vengeful Gladiator's Plate Legguards" };
		{ 23, 0, "Ability_Warrior_BattleShout", "=q6=#arenas9#", "#arenas4L#" };
		{ 24, 35068, "", "Brutal Gladiator's Plate Helm", "", "1875 #arena#" };
		{ 25, 35070, "", "Brutal Gladiator's Plate Shoulders", "", "1500 #arena#" };
		{ 26, 35066, "", "Brutal Gladiator's Plate Chestpiece", "", "1875 #arena#" };
		{ 27, 35067, "", "Brutal Gladiator's Plate Gauntlets", "", "1125 #arena#" };
		{ 28, 35069, "", "Brutal Gladiator's Plate Legguards", "", "1875 #arena#" };
	};
};

--------------------------------
--- Arena Seasons - Weapons ---
--------------------------------
AtlasLoot_Data["WeaponsTBC"] = {
	Name = "Arena " .. AL["Weapons"];
	{
		Name = "Alliance";
		{ 1, 28953, "", "Grand Marshal's Right Ripper" };
		{ 2, 28947, "", "Grand Marshal's Left Ripper" };
		{ 3, 28957, "", "Grand Marshal's Spellblade" };
		{ 4, 28954, "", "Grand Marshal's Shanker" };
		{ 5, 28955, "", "Grand Marshal's Shiv" };
		{ 6, 28956, "", "Grand Marshal's Slicer" };
		{ 7, 28952, "", "Grand Marshal's Quickblade" };
		{ 8, 28943, "", "Grand Marshal's Warblade" };
		{ 9, 28944, "", "Grand Marshal's Cleaver" };
		{ 10, 28946, "", "Grand Marshal's Hacker" };
		{ 11, 28945, "", "Grand Marshal's Decapitator" };
		{ 12, 28951, "", "Grand Marshal's Pummeler" };
		{ 13, 28950, "", "Grand Marshal's Bonecracker" };
		{ 14, 28942, "", "Grand Marshal's Bonegrinder" };
		{ 15, 28948, "", "Grand Marshal's Maul" };
		{ 16, 28949, "", "Grand Marshal's Painsaw" };
		{ 17, 28959, "", "Grand Marshal's War Staff" };
		{ 18, 28940, "", "Grand Marshal's Barricade" };
		{ 19, 28960, "", "Grand Marshal's Heavy Crossbow" };
		{ 20, 28941, "", "Grand Marshal's Battletome" };
	};
	{
		Name = "Horde";
		{ 1, 28928, "", "High Warlord's Right Ripper" };
		{ 2, 28922, "", "High Warlord's Left Ripper" };
		{ 3, 28931, "", "High Warlord's Spellblade" };
		{ 4, 28929, "", "High Warlord's Shanker" };
		{ 5, 28930, "", "High Warlord's Shiv" };
		{ 6, 28937, "", "High Warlord's Slicer" };
		{ 7, 28926, "", "High Warlord's Quickblade" };
		{ 8, 28293, "", "High Warlord's Claymore" };
		{ 9, 28920, "", "High Warlord's Cleaver" };
		{ 10, 28921, "", "High Warlord's Hacker" };
		{ 11, 28918, "", "High Warlord's Decapitator" };
		{ 12, 28925, "", "High Warlord's Pummeler" };
		{ 13, 28924, "", "High Warlord's Bonecracker" };
		{ 14, 28917, "", "High Warlord's Bonegrinder" };
		{ 15, 28919, "", "High Warlord's Maul" };
		{ 16, 28923, "", "High Warlord's Painsaw" };
		{ 17, 28935, "", "High Warlord's War Staff" };
		{ 18, 28939, "", "High Warlord's Barricade" };
		{ 19, 28933, "", "High Warlord's Heavy Crossbow" };
		{ 20, 28938, "", "High Warlord's Battletome" };
	};
	{
		Name = "Weapons Season 1";
		{ 1, 28313, "", "Gladiator's Right Ripper", "", "2625 #arena#" };
		{ 2, 28314, "", "Gladiator's Left Ripper", "", "1125 #arena#" };
		{ 3, 28297, "", "Gladiator's Spellblade", "", "3150 #arena#" };
		{ 4, 28312, "", "Gladiator's Shanker", "", "2625 #arena#" };
		{ 5, 28310, "", "Gladiator's Shiv", "", "1125 #arena#" };
		{ 6, 28295, "", "Gladiator's Slicer", "", "2625 #arena#" };
		{ 7, 28307, "", "Gladiator's Quickblade", "", "1125 #arena#" };
		{ 8, 24550, "", "Gladiator's Greatsword", "", "3750 #arena#" };
		{ 9, 28308, "", "Gladiator's Cleaver", "", "2625 #arena#" };
		{ 10, 28309, "", "Gladiator's Hacker", "", "1125 #arena#" };
		{ 11, 28298, "", "Gladiator's Decapitator", "", "3750 #arena#" };
		{ 12, 28305, "", "Gladiator's Pummeler", "", "2625 #arena#" };
		{ 13, 28302, "", "Gladiator's Bonecracker", "", "1125 #arena#" };
		{ 14, 28299, "", "Gladiator's Bonegrinder", "", "3750 #arena#" };
		{ 15, 28476, "", "Gladiator's Maul", "", "3750 #arena#" };
		{ 16, 28300, "", "Gladiator's Painsaw", "", "3750 #arena#" };
		{ 17, 24557, "", "Gladiator's War Staff", "", "3750 #arena#" };
		{ 18, 28358, "", "Gladiator's Shield Wall", "", "1875 #arena#" };
		{ 19, 28319, "", "Gladiator's War Edge", "", "1000 #arena#" };
		{ 20, 28294, "", "Gladiator's Heavy Crossbow", "", "3750 #arena#" };
		{ 21, 28320, "", "Gladiator's Touch of Defeat", "", "1000 #arena#" };
		{ 22, 28346, "", "Gladiator's Endgame", "", "1125 #arena#" };
		{ 23, 32452, "", "Gladiator's Reprieve", "", "1125 #arena#" };
	};
	{
		Name = "Weapons Season 1";
		{ 1, 33945, "", "Gladiator's Idol of Resolve", "", "1000 #arena#" };
		{ 2, 33942, "", "Gladiator's Idol of Steadfastness", "", "1000 #arena#" };
		{ 3, 28355, "", "Gladiator's Idol of Tenacity", "", "1000 #arena#" };
		{ 4, 33936, "", "Gladiator's Libram of Fortitude", "", "1000 #arena#" };
		{ 5, 28356, "", "Gladiator's Libram of Justice", "", "1000 #arena#" };
		{ 6, 33948, "", "Gladiator's Libram of Vengeance", "", "1000 #arena#" };
		{ 7, 33939, "", "Gladiator's Totem of Indomitability", "", "1000 #arena#" };
		{ 8, 33951, "", "Gladiator's Totem of Survival", "", "1000 #arena#" };
		{ 9, 28357, "", "Gladiator's Totem of the Third Wind", "", "1000 #arena#" };
	};
	{
		Name = "Weapons Season 2";
		{ 1, 33737, "", "Vengeful Gladiator's Right Ripper", "", "2100 #arena#" };
		{ 2, 33705, "", "Vengeful Gladiator's Left Ripper", "", "900 #arena#" };
		{ 3, 34016, "", "Vengeful Gladiator's Left Render", "", "900 #arena#" };
		{ 4, 33763, "", "Vengeful Gladiator's Spellblade", "", "2520 #arena#" };
		{ 5, 33754, "", "Vengeful Gladiator's Shanker", "", "2100 #arena#" };
		{ 6, 33801, "", "Vengeful Gladiator's Mutilator", "", "900 #arena#" };
		{ 7, 33756, "", "Vengeful Gladiator's Shiv", "", "900 #arena#" };
		{ 8, 33762, "", "Vengeful Gladiator's Slicer", "", "2100 #arena#" };
		{ 9, 33734, "", "Vengeful Gladiator's Quickblade", "", "900 #arena#" };
		{ 10, 33688, "", "Vengeful Gladiator's Greatsword", "", "3000 #arena#" };
		{ 11, 33669, "", "Vengeful Gladiator's Cleaver", "", "2100 #arena#" };
		{ 12, 34015, "", "Vengeful Gladiator's Chopper", "", "900 #arena#" };
		{ 13, 33689, "", "Vengeful Gladiator's Hacker", "", "900 #arena#" };
		{ 14, 33670, "", "Vengeful Gladiator's Decapitator", "", "3000 #arena#" };
		{ 15, 34014, "", "Vengeful Gladiator's Waraxe", "", "800 #arena#" };
		{ 16, 33687, "", "Vengeful Gladiator's Gavel", "", "2520 #arena#" };
		{ 17, 33743, "", "Vengeful Gladiator's Salvation", "", "2520 #arena#" };
		{ 18, 33733, "", "Vengeful Gladiator's Pummeler", "", "2100 #arena#" };
		{ 19, 33662, "", "Vengeful Gladiator's Bonecracker", "", "2520 #arena#" };
		{ 20, 33663, "", "Vengeful Gladiator's Bonegrinder", "", "3000 #arena#" };
		{ 21, 33727, "", "Vengeful Gladiator's Painsaw", "", "3000 #arena#" };
		{ 22, 34540, "", "Vengeful Gladiator's Battle Staff", "", "3000 #arena#" };
		{ 23, 33716, "", "Vengeful Gladiator's Staff", "", "3000 #arena#" };
		{ 24, 33766, "", "Vengeful Gladiator's War Staff", "", "3000 #arena#" };
	};
	{
		Name = "Weapons Season 2";
		{ 1, 33661, "", "Vengeful Gladiator's Barrier", "", "1500 #arena#" };
		{ 2, 33735, "", "Vengeful Gladiator's Redoubt", "", "1500 #arena#" };
		{ 3, 33755, "", "Vengeful Gladiator's Shield Wall", "", "1500 #arena#" };
		{ 4, 33765, "", "Vengeful Gladiator's War Edge", "", "800 #arena#" };
		{ 5, 34529, "", "Vengeful Gladiator's Longbow", "", "3000 #arena#" };
		{ 6, 33006, "", "Vengeful Gladiator's Heavy Crossbow", "", "3000 #arena#" };
		{ 7, 34530, "", "Vengeful Gladiator's Rifle", "", "3000 #arena#" };
		{ 8, 34059, "", "Vengeful Gladiator's Baton of Light", "", "800 #arena#" };
		{ 9, 34066, "", "Vengeful Gladiator's Piercing Touch", "", "800 #arena#" };
		{ 10, 33764, "", "Vengeful Gladiator's Touch of Defeat", "", "800 #arena#" };
		{ 11, 33681, "", "Vengeful Gladiator's Endgame", "", "900 #arena#" };
		{ 12, 34033, "", "Vengeful Gladiator's Grimoire", "", "900 #arena#" };
		{ 13, 33736, "", "Vengeful Gladiator's Reprieve", "", "900 #arena#" };
		{ 16, 33947, "", "Vengeful Gladiator's Idol of Resolve", "", "800 #arena#" };
		{ 17, 33944, "", "Vengeful Gladiator's Idol of Steadfastness", "", "800 #arena#" };
		{ 18, 33841, "", "Vengeful Gladiator's Idol of Tenacity", "", "800 #arena#" };
		{ 19, 33938, "", "Vengeful Gladiator's Libram of Fortitude", "", "800 #arena#" };
		{ 20, 33842, "", "Vengeful Gladiator's Libram of Justice", "", "800 #arena#" };
		{ 21, 33950, "", "Vengeful Gladiator's Libram of Vengeance", "", "800 #arena#" };
		{ 22, 33941, "", "Vengeful Gladiator's Totem of Indomitability", "", "800 #arena#" };
		{ 23, 33953, "", "Vengeful Gladiator's Totem of Survival", "", "800 #arena#" };
		{ 24, 33843, "", "Vengeful Gladiator's Totem of the Third Wind", "", "800 #arena#" };
	};
	{
		Name = "Weapons Season 3";
		{ 1, 32028, "", "Merciless Gladiator's Right Ripper", "", "18000 #arena#" };
		{ 2, 32003, "", "Merciless Gladiator's Left Ripper", "", "9000 #arena#" };
		{ 3, 32053, "", "Merciless Gladiator's Spellblade", "", "25200 #arena#" };
		{ 4, 32044, "", "Merciless Gladiator's Shanker", "", "18000 #arena#" };
		{ 5, 32046, "", "Merciless Gladiator's Shiv", "", "9000 #arena#" };
		{ 6, 32052, "", "Merciless Gladiator's Slicer", "", "18000 #arena#" };
		{ 7, 32027, "", "Merciless Gladiator's Quickblade", "", "9000 #arena#" };
		{ 8, 31984, "", "Merciless Gladiator's Greatsword", "", "27000 #arena#" };
		{ 9, 31965, "", "Merciless Gladiator's Cleaver", "", "18000 #arena#" };
		{ 10, 31985, "", "Merciless Gladiator's Hacker", "", "9000 #arena#" };
		{ 11, 31966, "", "Merciless Gladiator's Decapitator", "", "27000 #arena#" };
		{ 12, 32963, "", "Merciless Gladiator's Gavel", "", "25200 #arena#" };
		{ 13, 32964, "", "Merciless Gladiator's Salvation", "", "25200 #arena#" };
		{ 14, 32026, "", "Merciless Gladiator's Pummeler", "", "18000 #arena#" };
		{ 15, 31958, "", "Merciless Gladiator's Bonecracker", "", "9000 #arena#" };
		{ 16, 31959, "", "Merciless Gladiator's Bonegrinder", "", "27000 #arena#" };
		{ 17, 32014, "", "Merciless Gladiator's Maul", "", "27000 #arena#" };
		{ 18, 32025, "", "Merciless Gladiator's Painsaw", "", "27000 #arena#" };
		{ 19, 32055, "", "Merciless Gladiator's War Staff", "", "27000 #arena#" };
		{ 20, 33313, "", "Merciless Gladiator's Barrier", "", "15000 #arena#" };
		{ 21, 33309, "", "Merciless Gladiator's Redoubt", "", "15000 #arena#" };
		{ 22, 32045, "", "Merciless Gladiator's Shield Wall", "", "15000 #arena#" };
		{ 23, 32054, "", "Merciless Gladiator's War Edge", "", "8000 #arena#" };
		{ 24, 31986, "", "Merciless Gladiator's Crossbow of the Phoenix", "", "27000 #arena#" };
		{ 25, 32962, "", "Merciless Gladiator's Touch of Defeat", "", "8000 #arena#" };
		{ 26, 31978, "", "Merciless Gladiator's Endgame", "", "9000 #arena#" };
		{ 27, 32961, "", "Merciless Gladiator's Reprieve", "", "9000 #arena#" };
	};
	{
		Name = "Weapons Season 3";
		{ 1, 33946, "", "Merciless Gladiator's Idol of Resolve", "", "8000 #arena#" };
		{ 2, 33943, "", "Merciless Gladiator's Idol of Steadfastness", "", "8000 #arena#" };
		{ 3, 33076, "", "Merciless Gladiator's Idol of Tenacity", "", "8000 #arena#" };
		{ 4, 33937, "", "Merciless Gladiator's Libram of Fortitude", "", "8000 #arena#" };
		{ 5, 33077, "", "Merciless Gladiator's Libram of Justice", "", "8000 #arena#" };
		{ 6, 33949, "", "Merciless Gladiator's Libram of Vengeance", "", "8000 #arena#" };
		{ 7, 33940, "", "Merciless Gladiator's Totem of Indomitability", "", "8000 #arena#" };
		{ 8, 33952, "", "Merciless Gladiator's Totem of Survival", "", "8000 #arena#" };
		{ 9, 33078, "", "Merciless Gladiator's Totem of the Third Wind", "", "8000 #arena#" };
	};
	{
		Name = "Weapons Season 4";
		{ 1, 35076, "", "Brutal Gladiator's Right Ripper", "", "2625 #arena#" };
		{ 2, 35038, "", "Brutal Gladiator's Left Ripper", "", "1125 #arena#" };
		{ 3, 35037, "", "Brutal Gladiator's Left Render", "", "1125 #arena#" };
		{ 4, 35102, "", "Brutal Gladiator's Spellblade", "", "3150 #arena#" };
		{ 5, 37739, "", "Brutal Gladiator's Blade of Alacrity", "", "3150 #arena#" };
		{ 6, 35093, "", "Brutal Gladiator's Shanker", "", "2625 #arena#" };
		{ 7, 35058, "", "Brutal Gladiator's Mutilator", "", "1125 #arena#" };
		{ 8, 35095, "", "Brutal Gladiator's Shiv", "", "1125 #arena#" };
		{ 9, 35101, "", "Brutal Gladiator's Slicer", "", "2625 #arena#" };
		{ 10, 35072, "", "Brutal Gladiator's Quickblade", "=ds=#h4#, #w10#", "1125 #arena#" };
		{ 11, 35015, "", "Brutal Gladiator's Greatsword", "", "3750 #arena#" };
		{ 12, 34996, "", "Brutal Gladiator's Cleaver", "", "2625 #arena#" };
		{ 13, 34995, "", "Brutal Gladiator's Chopper", "=ds=#h4#, #w1#", "1125 #arena#" };
		{ 14, 36737, "", "Brutal Gladiator's Hatchet", "=ds=#h4#, #w1#", "650 #arena#" };
		{ 15, 35017, "", "Brutal Gladiator's Hacker", "=ds=#h4#, #w1#", "1125 #arena#" };
		{ 16, 34997, "", "Brutal Gladiator's Decapitator", "", "3750 #arena#" };
		{ 17, 35110, "", "Brutal Gladiator's Waraxe", "=ds=#h3#, #w1#", "650 #arena#" };
		{ 18, 35014, "", "Brutal Gladiator's Gavel", "", "3150 #arena#" };
		{ 19, 35082, "", "Brutal Gladiator's Salvation", "", "3150 #arena#" };
		{ 20, 37740, "", "Brutal Gladiator's Swift Judgement", "", "3150 #arena#" };
		{ 21, 35071, "", "Brutal Gladiator's Pummeler", "", "2625 #arena#" };
		{ 22, 34988, "", "Brutal Gladiator's Bonecracker", "=ds=#h4#, #w6#", "3150 #arena#" };
		{ 23, 34989, "", "Brutal Gladiator's Bonegrinder", "", "3750 #arena#" };
		{ 24, 35064, "", "Brutal Gladiator's Painsaw", "", "3750 #arena#" };
		{ 25, 34987, "", "Brutal Gladiator's Battle Staff", "", "3750 #arena#" };
		{ 26, 35103, "", "Brutal Gladiator's Staff", "", "3750 #arena#" };
		{ 27, 35109, "", "Brutal Gladiator's War Staff", "", "3750 #arena#" };
	};
	{
		Name = "Weapons Season 4";
		{ 1, 34986, "", "Brutal Gladiator's Barrier", "", "1875 #arena#" };
		{ 2, 35073, "", "Brutal Gladiator's Redoubt", "", "1875 #arena#" };
		{ 3, 35094, "", "Brutal Gladiator's Shield Wall", "", "1875 #arena#" };
		{ 4, 35108, "", "Brutal Gladiator's War Edge", "", "1000 #arena#" };
		{ 5, 35047, "", "Brutal Gladiator's Longbow", "", "3750 #arena#" };
		{ 6, 35018, "", "Brutal Gladiator's Heavy Crossbow", "", "3750 #arena#" };
		{ 7, 35075, "", "Brutal Gladiator's Rifle", "", "3750 #arena#" };
		{ 8, 34985, "", "Brutal Gladiator's Baton of Light", "", "1000 #arena#" };
		{ 9, 35065, "", "Brutal Gladiator's Piercing Touch", "", "1000 #arena#" };
		{ 10, 35107, "", "Brutal Gladiator's Touch of Defeat", "", "1000 #arena#" };
		{ 11, 35008, "", "Brutal Gladiator's Endgame", "", "1125 #arena#" };
		{ 12, 35016, "", "Brutal Gladiator's Grimoire", "", "1125 #arena#" };
		{ 13, 35074, "", "Brutal Gladiator's Reprieve", "", "1125 #arena#" };
		{ 16, 35019, "", "Brutal Gladiator's Idol of Resolve", "", "1000 #arena#" };
		{ 17, 35020, "", "Brutal Gladiator's Idol of Steadfastness#w14#", "", "1000 #arena#" };
		{ 18, 35021, "", "Brutal Gladiator's Idol of Tenacity", "", "1000 #arena#" };
		{ 19, 35039, "", "Brutal Gladiator's Libram of Fortitude", "", "1000 #arena#" };
		{ 20, 35040, "", "Brutal Gladiator's Libram of Justice", "", "1000 #arena#" };
		{ 21, 35041, "", "Brutal Gladiator's Libram of Vengeance", "", "1000 #arena#" };
		{ 22, 35104, "", "Brutal Gladiator's Totem of Indomitability", "", "1000 #arena#" };
		{ 23, 35105, "", "Brutal Gladiator's Totem of Survival", "", "1000 #arena#" };
		{ 24, 35106, "", "Brutal Gladiator's Totem of the Third Wind", "", "1000 #arena#" };
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
			{ 1, 28413, "", "Hallowed Crown", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 2, 27775, "", "Hallowed Pauldrons", ""..BabbleBoss["Grandmaster Vorpil"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 3, 28230, "", "Hallowed Garments", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 4, 27536, "", "Hallowed Handwraps", ""..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27875, "", "Hallowed Trousers", ""..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")"};
		};
		{
			Name = AL["Mana-Etched Regalia"];
			{ 1, 28193, "", "Mana-Etched Crown", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
			{ 2, 27796, "", "Mana-Etched Spaulders", ""..BabbleBoss["Quagmirran"].." (#j3#)"};
			{ 3, 28191, "", "Mana-Etched Vestments", ""..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)"};
			{ 4, 27465, "", "Mana-Etched Gloves", ""..BabbleBoss["Omor the Unscarred"].." ("..BabbleZone["Hellfire Ramparts"]..") (#j3#)"};
			{ 5, 27907, "", "Mana-Etched Pantaloons", ""..BabbleBoss["The Black Stalker"].." (#j3#)"};
		};
		{
			Name = AL["Incanter's Regalia"];
			{ 1, 28278, "", "Incanter's Cowl", ""..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")"};
			{ 2, 27738, "", "Incanter's Pauldrons", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 3, 28229, "", "Incanter's Robe", ""..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")"};
			{ 4, 27508, "", "Incanter's Gloves", ""..BabbleBoss["Hydromancer Thespia"].." ("..BabbleZone["The Steamvault"]..")"}; 
			{ 5, 27838, "", "Incanter's Trousers", ""..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")"};
		};
		{
			Name = AL["Oblivion Raiment"];
			{ 1, 28415, "", "Hood of Oblivion", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 2, 27778, "", "Spaulders of Oblivion", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 3, 28232, "", "Robe of Oblivion", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 4, 27537, "", "Gloves of Oblivion", ""..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27948, "", "Trousers of Oblivion", ""..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")"};
		};
		{
			Name = AL["Assassination Armor"];
			{ 1, 28414, "", "Helm of Assassination", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 2, 27776, "", "Shoulderpads of Assassination", ""..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")"};
			{ 3, 28204, "", "Tunic of Assassination", ""..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")"};
			{ 4, 27509, "", "Handgrips of Assassination", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
			{ 5, 27908, "", "Leggings of Assassination", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
		};
		{
			Name = AL["Wastewalker Armor"];
			{ 1, 28224, "", "Wastewalker Helm", ""..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)"};
			{ 2, 27797, "", "Wastewalker Shoulderpads", ""..AL["Avatar"].." ("..BabbleZone["Auchenai Crypts"]..") (#j3#)"};
			{ 3, 28264, "", "Wastewalker Tunic", ""..BabbleBoss["Keli'dan the Breaker"].." ("..BabbleZone["The Blood Furnace"]..") (#j3#)"};
			{ 4, 27531, "", "Wastewalker Gloves", ""..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27837, "", "Wastewalker Leggings", ""..BabbleBoss["Nexus-Prince Shaffar"].." ("..BabbleZone["Mana-Tombs"]..") (#j3#)"};
		};
		{
			Name = AL["Moonglade Raiment"];
			{ 1, 28348, "", "Moonglade Cowl", ""..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")"};
			{ 2, 27737, "", "Moonglade Shoulders", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 3, 28202, "", "Moonglade Robe", ""..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")"};
			{ 4, 27468, "", "Moonglade Handwraps", ""..BabbleBoss["Blackheart the Inciter"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 5, 27873, "", "Moonglade Pants", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
		};
		{
			Name = AL["Beast Lord Armor"];
			{ 1, 28275, "", "Beast Lord Helm", ""..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")"};
			{ 2, 27801, "", "Beast Lord Mantle", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 3, 28228, "", "Beast Lord Curiass", ""..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")"};
			{ 4, 27474, "", "Beast Lord Handguards", ""..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27874, "", "Beast Lord Leggings", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
		};
		{
			Name = AL["Tidefury Raiment"];
			{ 1, 28349, "", "Tidefury Helm", ""..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")"};
			{ 2, 27802, "", "Tidefury Shoulderguards", ""..BabbleBoss["Warbringer O'mrogg"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 3, 28231, "", "Tidefury Chestpiece", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 4, 27510, "", "Tidefury Gauntlets", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 5, 27909, "", "Tidefury Kilt", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
		};
		{
			Name = AL["Desolation Battlegear"];
			{ 1, 28192, "", "Helm of Desolation", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
			{ 2, 27713, "", "Pauldrons of Desolation", ""..BabbleBoss["Quagmirran"].." (#j3#)"};
			{ 3, 28401, "", "Hauberk of Desolation", ""..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)"};
			{ 4, 27528, "", "Gauntlets of Desolation", ""..BabbleBoss["Warchief Kargath Bladefist"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27936, "", "Greaves of Desolation", ""..BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")"};
		};
		{
			Name = AL["Bold Armor"];
			{ 1, 28350, "", "Warhelm of the Bold", ""..BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")"};
			{ 2, 27803, "", "Shoulderguards of the Bold", ""..BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")"};
			{ 3, 28205, "", "Breastplate of the Bold", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 4, 27475, "", "Gauntlets of the Bold", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 5, 27977, "", "Legplates of the Bold", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
		};
		{
			Name = AL["Righteous Armor"];
			{ 1, 28285, "", "Helm of the Righteous", ""..BabbleBoss["Pathaleon the Calculator"].." ("..BabbleZone["The Mechanar"]..")"};
			{ 2, 27739, "", "Spaulders of the Righteous", ""..BabbleBoss["Laj"].." ("..BabbleZone["The Botanica"]..")"};
			{ 3, 28203, "", "Breastplate of the Righteous", ""..BabbleBoss["Warlord Kalithresh"].." ("..BabbleZone["The Steamvault"]..")"};
			{ 4, 27535, "", "Gauntlets of the Righteous", ""..BabbleBoss["Warbringer O'mrogg"].." ("..BabbleZone["The Shattered Halls"]..")"};
			{ 5, 27839, "", "Legplates of the Righteous", ""..BabbleBoss["Aeonus"].." ("..BabbleZone["The Black Morass"]..")"};
		};
		{
			Name = AL["Doomplate Battlegear"];
			{ 1, 28225, "", "Doomplate Warhelm", ""..BabbleBoss["Epoch Hunter"].." ("..BabbleZone["Old Hillsbrad Foothills"]..") (#j3#)"};
			{ 2, 27771, "", "Doomplate Shouldergards", ""..BabbleBoss["The Black Stalker"].." (#j3#)"};
			{ 3, 28403, "", "Doomplate Chestguard", ""..BabbleBoss["Harbinger Skyriss"].." ("..BabbleZone["The Arcatraz"]..")"};
			{ 4, 27497, "", "Doomplate Gauntlets", ""..BabbleBoss["Keli'dan the Breaker"].." ("..BabbleZone["The Blood Furnace"]..") (#j3#)"};
			{ 5, 27870, "", "Doomplate Legguards", ""..BabbleBoss["Exarch Maladaar"].." ("..BabbleZone["Auchenai Crypts"]..") (#j3#)"};
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
			{ 1, 29098, "", "Stag-Helm of Malorne", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29100, "", "Mantle of Malorne", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29096, "", "Breastplate of Malorne", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29097, "", "Gauntlets of Malorne", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29099, "", "Greaves of Malorne", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			{ 1, 29086, "", "Crown of Malorne", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29089, "", "Shoulderguards of Malorne", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29087, "", "Chestguard of Malorne", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29090, "", "Handguards of Malorne", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29088, "", "Legguards of Malorne", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			{ 1, 29093, "", "Antlers of Malorne", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29095, "", "Pauldrons of Malorne", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29091, "", "Chestpiece of Malorne", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29092, "", "Gloves of Malorne", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29094, "", "Britches of Malorne", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			{ 1, 29081, "", "Demon Stalker Greathelm", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29084, "", "Demon Stalker Shoulderguards", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29082, "", "Demon Stalker Harness", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29085, "", "Demon Stalker Gauntlets", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29083, "", "Demon Stalker Greaves", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			{ 1, 29076, "", "Collar of the Aldor", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29079, "", "Pauldrons of the Aldor", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29077, "", "Vestments of the Aldor", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29080, "", "Gloves of the Aldor", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29078, "", "Legwraps of the Aldor", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			{ 1, 29068, "", "Justicar Faceguard", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29070, "", "Justicar Shoulderguards", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29066, "", "Justicar Chestguard", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29067, "", "Justicar Handguards", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29069, "", "Justicar Legguards", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			{ 1, 29073, "", "Justicar Crown", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29075, "", "Justicar Shoulderplates", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29071, "", "Justicar Breastplate", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29072, "", "Justicar Gauntlets", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29074, "", "Justicar Greaves", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			{ 1, 29061, "", "Justicar Diadem", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29064, "", "Justicar Pauldrons", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29062, "", "Justicar Chestpiece", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29065, "", "Justicar Gloves", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29063, "", "Justicar Leggings", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			{ 1, 29049, "", "Light-Collar of the Incarnate", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29054, "", "Light-Mantle of the Incarnate", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29050, "", "Robes of the Incarnate", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29055, "", "Handwraps of the Incarnate", "The Curator ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29053, "", "Trousers of the Incarnate", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			{ 1, 29058, "", "Soul-Collar of the Incarnate", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29060, "", "Soul-Mantle of the Incarnate", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29056, "", "Shroud of the Incarnate", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29057, "", "Gloves of the Incarnate", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29059, "", "Leggings of the Incarnate", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			{ 1, 29044, "", "Netherblade Facemask", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29047, "", "Netherblade Shoulderpads", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29045, "", "Netherblade Chestpiece", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29048, "", "Netherblade Gloves", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29046, "", "Netherblade Breeches", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			{ 1, 29040, "", "Cyclone Helm", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29043, "", "Cyclone Shoulderplates", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29038, "", "Cyclone Breastplate", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29039, "", "Cyclone Gauntlets", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29042, "", "Cyclone War-Kilt", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];	
			{ 1, 29028, "", "Cyclone Headdress", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29031, "", "Cyclone Shoulderpads", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29029, "", "Cyclone Hauberk", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29032, "", "Cyclone Gloves", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29030, "", "Cyclone Kilt", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			{ 1, 29035, "", "Cyclone Faceguard", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29037, "", "Cyclone Shoulderguards", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29033, "", "Cyclone Chestguard", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29034, "", "Cyclone Handguards", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29036, "", "Cyclone Legguards", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			{ 1, 28963, "", "Voidheart Crown", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 28967, "", "Voidheart Mantle", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 28964, "", "Voidheart Robe", ""..BabbleBoss["Magtheridon"]};
			{ 4, 28968, "", "Voidheart Gloves", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 28966, "", "Voidheart Leggings", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			{ 1, 29011, "", "Warbringer Greathelm", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29016, "", "Warbringer Shoulderguards", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29012, "", "Warbringer Chestguard", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29017, "", "Warbringer Handguards", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29015, "", "Warbringer Legguards", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			{ 1, 14984, "", "Warbringer Helmet", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 14988, "", "Warbringer Pauldrons", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 14985, "", "Warbringer Hauberk", ""..BabbleBoss["Magtheridon"]};
			{ 4, 14989, "", "Warbringer Gloves", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 14987, "", "Warbringer Leggings", ""..BabbleBoss["Gruul the Dragonkiller"]};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			{ 1, 29021, "", "Warbringer Battle-Helm", ""..BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")"};
			{ 2, 29023, "", "Warbringer Shoulderplates", ""..BabbleBoss["High King Maulgar"]};
			{ 3, 29019, "", "Warbringer Breastplate", ""..BabbleBoss["Magtheridon"]};
			{ 4, 29020, "", "Warbringer Gauntlets", ""..BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")"};
			{ 5, 29022, "", "Warbringer Greaves", ""..BabbleBoss["Gruul the Dragonkiller"]};
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
			{ 1, 30228, "", "Nordrassil Headdress", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30230, "", "Nordrassil Feral-Mantle", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30222, "", "Nordrassil Chestplate", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30223, "", "Nordrassil Handgrips", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30229, "", "Nordrassil Feral-Kilt", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			{ 1, 30219, "", "Nordrassil Headguard", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30221, "", "Nordrassil Life-Mantle", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30216, "", "Nordrassil Chestguard", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30217, "", "Nordrassil Gloves", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30220, "", "Nordrassil Life-Kilt", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			{ 1, 30233, "", "Nordrassil Headpiece", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30235, "", "Nordrassil Wrath-Mantle", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30231, "", "Nordrassil Chestpiece", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30232, "", "Nordrassil Gauntlets", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30234, "", "Nordrassil Wrath-Kilt", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			{ 1, 30141, "", "Rift Stalker Helm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30143, "", "Rift Stalker Mantle", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30139, "", "Rift Stalker Hauberk", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30140, "", "Rift Stalker Gauntlets", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30142, "", "Rift Stalker Leggings", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			{ 1, 30206, "", "Cowl of Tirisfal", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30210, "", "Mantle of Tirisfal", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30196, "", "Robes of Tirisfal", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30205, "", "Gloves of Tirisfal", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30207, "", "Leggings of Tirisfal", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			{ 1, 30125, "", "Crystalforge Faceguard", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30127, "", "Crystalforge Shoulderguards", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30123, "", "Crystalforge Chestguard", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30124, "", "Crystalforge Handguards", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30126, "", "Crystalforge Legguards", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			{ 1, 30131, "", "Crystalforge War-Helm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30133, "", "Crystalforge Shoulderbraces", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30129, "", "Crystalforge Breastplate", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30130, "", "Crystalforge Gauntlets", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30132, "", "Crystalforge Greaves", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			{ 1, 30136, "", "Crystalforge Greathelm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30138, "", "Crystalforge Pauldrons", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30134, "", "Crystalforge Chestpiece", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30135, "", "Crystalforge Gloves", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30137, "", "Crystalforge Leggings", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			{ 1, 30152, "", "Cowl of the Avatar", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30154, "", "Mantle of the Avatar", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30150, "", "Vestments of the Avatar", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30151, "", "Gloves of the Avatar", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30153, "", "Breeches of the Avatar", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			{ 1, 30161, "", "Hood of the Avatar", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30163, "", "Wings of the Avatar", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30159, "", "Shroud of the Avatar", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30160, "", "Handguards of the Avatar", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30162, "", "Leggings of the Avatar", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			{ 1, 30146, "", "Deathmantle Helm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30149, "", "Deathmantle Shoulderpads", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30144, "", "Deathmantle Chestguard", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30145, "", "Deathmantle Handguards", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30148, "", "Deathmantle Legguards", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			{ 1, 30190, "", "Cataclysm Helm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30194, "", "Cataclysm Shoulderplates", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30185, "", "Cataclysm Chestplate", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30189, "", "Cataclysm Gauntlets", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30192, "", "Cataclysm Legplates", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
			{ 1, 30166, "", "Cataclysm Headguard", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30168, "", "Cataclysm Shoulderguards", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30164, "", "Cataclysm Chestguard", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30165, "", "Cataclysm Gloves", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30167, "", "Cataclysm Legguards", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			{ 1, 30171, "", "Cataclysm Headpiece", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30173, "", "Cataclysm Shoulderpads", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30169, "", "Cataclysm Chestpiece", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30170, "", "Cataclysm Handgrips", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30172, "", "Cataclysm Leggings", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			{ 1, 30212, "", "Hood of the Corruptor", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30215, "", "Mantle of the Corruptor", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30214, "", "Robe of the Corruptor", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30211, "", "Gloves of the Corruptor", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30213, "", "Leggings of the Corruptor", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			{ 1, 30115, "", "Destroyer Greathelm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30117, "", "Destroyer Shoulderguards", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30113, "", "Destroyer Chestguard", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30114, "", "Destroyer Handguards", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30116, "", "Destroyer Legguards", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			{ 1, 14992, "", "Destroyer Helmet", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 14994, "", "Destroyer Pauldrons", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 14990, "", "Destroyer Hauberk", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 14991, "", "Destroyer Gloves", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 14993, "", "Destroyer Leggings", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			{ 1, 30120, "", "Destroyer Battle-Helm", ""..BabbleBoss["Lady Vashj"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 2, 30122, "", "Destroyer Shoulderblades", ""..BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")"};
			{ 3, 30118, "", "Destroyer Breastplate", ""..BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")"};
			{ 4, 30119, "", "Destroyer Gauntlets", ""..BabbleBoss["Leotheras the Blind"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
			{ 5, 30121, "", "Destroyer Greaves", ""..BabbleBoss["Fathom-Lord Karathress"].." ("..BabbleZone["Serpentshrine Cavern"]..")"};
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
			{ 1, 31039, "", "Thunderheart Cover", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31048, "", "Thunderheart Pauldrons", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31042, "", "Thunderheart Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34444, "", "Thunderheart Wristguards", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31034, "", "Thunderheart Gauntlets", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34556, "", "Thunderheart Waistguard", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31044, "", "Thunderheart Leggings", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34573, "", "Thunderheart Treads", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = "Druid".." - "..AL["Restoration"];
			{ 1, 31037, "", "Thunderheart Helmet", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31047, "", "Thunderheart Spaulders", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31041, "", "Thunderheart Tunic", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34445, "", "Thunderheart Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31032, "", "Thunderheart Gloves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34554, "", "Thunderheart Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31045, "", "Thunderheart Legguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34571, "", "Thunderheart Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = "Druid".." - "..AL["Balance"];
			{ 1, 31040, "", "Thunderheart Headguard", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31049, "", "Thunderheart Shoulderpads", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31043, "", "Thunderheart Vest", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34446, "", "Thunderheart Bands", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31035, "", "Thunderheart Handguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34555, "", "Thunderheart Cord", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31046, "", "Thunderheart Pants", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34572, "", "Thunderheart Footwraps", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
			{ 1, 31003, "", "Gronnstalker's Helmet", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31006, "", "Gronnstalker's Spaulders", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31004, "", "Gronnstalker's Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34443, "", "Gronnstalker's Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31001, "", "Gronnstalker's Gloves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34549, "", "Gronnstalker's Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31005, "", "Gronnstalker's Leggings", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34570, "", "Gronnstalker's Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
			{ 1, 31056, "", "Cowl of the Tempest", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31059, "", "Mantle of the Tempest", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31057, "", "Robes of the Tempest", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34447, "", "Bracers of the Tempest", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31055, "", "Gloves of the Tempest", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34557, "", "Belt of the Tempest", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31058, "", "Leggings of the Tempest", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34574, "", "Boots of the Tempest", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Protection"];
			{ 1, 30987, "", "Lightbringer Faceguard", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 30998, "", "Lightbringer Shoulderguards", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 30991, "", "Lightbringer Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34433, "", "Lightbringer Wristguards", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 30985, "", "Lightbringer Handguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34488, "", "Lightbringer Waistguard", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 30995, "", "Lightbringer Legguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34560, "", "Lightbringer Greaves", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Retribution"];
			{ 1, 30989, "", "Lightbringer War-Helm", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 30997, "", "Lightbringer Shoulderbraces", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 30990, "", "Lightbringer Breastplate", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34431, "", "Lightbringer Bands", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 30982, "", "Lightbringer Gauntlets", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34485, "", "Lightbringer Girdle", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 30993, "", "Lightbringer Greaves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34561, "", "Lightbringer Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"].." - "..AL["Holy"];
			{ 1, 30988, "", "Lightbringer Greathelm", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 30996, "", "Lightbringer Pauldrons", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 30992, "", "Lightbringer Chestpiece", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34432, "", "Lightbringer Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 30983, "", "Lightbringer Gloves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34487, "", "Lightbringer Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 30994, "", "Lightbringer Leggings", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34559, "", "Lightbringer Treads", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Holy"];
			{ 1, 31063, "", "Cowl of Absolution", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31069, "", "Mantle of Absolution", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31066, "", "Vestments of Absolution", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34435, "", "Cuffs of Absolution", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31060, "", "Gloves of Absolution", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34527, "", "Belt of Absolution", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31068, "", "Breeches of Absolution", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34562, "", "Boots of Absolution", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"].." - "..AL["Shadow"];
			{ 1, 31064, "", "Hood of Absolution", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31070, "", "Shoulderpads of Absolution", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31065, "", "Shroud of Absolution", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34434, "", "Bracers of Absolution", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31061, "", "Handguards of Absolution", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34528, "", "Cord of Absolution", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31067, "", "Leggings of Absolution", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34563, "", "Treads of Absolution", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
			{ 1, 31027, "", "Slayer's Helm", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31030, "", "Slayer's Shoulderpads", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31028, "", "Slayer's Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34448, "", "Slayer's Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31026, "", "Slayer's Handguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34558, "", "Slayer's Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31029, "", "Slayer's Legguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34575, "", "Slayer's Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Enhancement"];
			{ 1, 31015, "", "Skyshatter Cover", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31024, "", "Skyshatter Pauldrons", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31018, "", "Skyshatter Tunic", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34439, "", "Skyshatter Wristguards", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31011, "", "Skyshatter Grips", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34545, "", "Skyshatter Girdle", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31021, "", "Skyshatter Pants", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34567, "", "Skyshatter Greaves", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Restoration"];
			{ 1, 31012, "", "Skyshatter Helmet", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31022, "", "Skyshatter Shoulderpads", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31016, "", "Skyshatter Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34438, "", "Skyshatter Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31007, "", "Skyshatter Gloves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34543, "", "Skyshatter Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31019, "", "Skyshatter Leggings", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34565, "", "Skyshatter Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"].." - "..AL["Elemental"];
			{ 1, 31014, "", "Skyshatter Headguard", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31023, "", "Skyshatter Mantle", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31017, "", "Skyshatter Breastplate", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34437, "", "Skyshatter Bands", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31008, "", "Skyshatter Gauntlets", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34542, "", "Skyshatter Cord", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31020, "", "Skyshatter Legguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34566, "", "Skyshatter Treads", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
			{ 1, 31051, "", "Hood of the Malefic", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 31054, "", "Mantle of the Malefic", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 31052, "", "Robe of the Malefic", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34436, "", "Bracers of the Malefic", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 31050, "", "Gloves of the Malefic", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34541, "", "Belt of the Malefic", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 31053, "", "Leggings of the Malefic", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34564, "", "Boots of the Malefic", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Protection"];
			{ 1, 30974, "", "Onslaught Greathelm", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 30980, "", "Onslaught Shoulderguards", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 30976, "", "Onslaught Chestguard", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34442, "", "Onslaught Wristguards", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 30970, "", "Onslaught Handguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34547, "", "Onslaught Waistguard", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 30978, "", "Onslaught Legguards", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34568, "", "Onslaught Boots", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
		{
			Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"].." - "..AL["Fury"];
			{ 1, 30972, "", "Onslaught Battle-Helm", ""..BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 2, 30979, "", "Onslaught Shoulderblades", ""..BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")"};
			{ 3, 30975, "", "Onslaught Breastplate", ""..BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")"};
			{ 4, 34441, "", "Onslaught Bracers", ""..BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 5, 30969, "", "Onslaught Gauntlets", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 6, 34546, "", "Onslaught Belt", ""..BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")"};
			{ 7, 30977, "", "Onslaught Greaves", ""..BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")"};
			{ 8, 34569, "", "Onslaught Treads", ""..BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")"};
		};
	};


--------------------------------
--- The Burning Crusade Sets ---
--------------------------------

AtlasLoot_Data["TBCSets"] = {
	Name = AL["Burning Crusade Sets"];
	{
		Name = AL["Latro's Flurry"];
		{ 1, 34703, "", "Latro's Dancing Blade" };
		{ 2, 28189, "", "Latro's Shifting Sword" };
	};
	{
		Name = AL["The Twin Stars"];
		{ 1, 31338, "", "Charlotte's Ivy", droprate = "0.01%" };
		{ 2, 31339, "", "Lola's Eve", droprate = "0.01%" };
	};
	{
		Name = AL["The Fists of Fury"];
		{ 1, 32946, "", "Claw of Molten Fury" };
		{ 2, 32945, "", "Fist of Molten Fury" };
	};
	{
		Name = AL["The Twin Blades of Azzinoth"];
		{ 1, 32837, "", "Warglaive of Azzinoth" };
		{ 2, 32838, "", "Warglaive of Azzinoth" };
	};
};

--------------------------------
--- Badge of Justice Rewards ---
--------------------------------

AtlasLoot_Data["BadgeShatt"] = {
	Name = BabbleZone["Shattrath City"];
	{
		Name = BabbleInventory["Cloth"];
		{ 1, 32090, "", "Cowl of Naaru Blessings", "", "50 #heroic#" };
		{ 2, 32089, "", "Mana-Binders Cowl", "", "50 #heroic#" };
		{ 3, 33588, "", "Runed Spell-cuffs", "", "35 #heroic#" };
		{ 4, 33589, "", "Wristguards of Tranquil Thought", "", "35 #heroic#" };
		{ 5, 33587, "", "Light-Blessed Bonds", "", "60 #heroic#" };
		{ 6, 33586, "", "Studious Wraps", "", "60 #heroic#" };
		{ 7, 33291, "", "Voodoo-woven Belt", "", "60 #heroic#" };
		{ 8, 33585, "", "Achromic Trousers of the Naaru", "", "75 #heroic#" };
		{ 9, 33584, "", "Pantaloons of Arcane Annihilation", "", "75 #heroic#" };
	};
	{
		Name = BabbleInventory["Leather"];
		{ 1, 32088, "", "Cowl of Beastly Rage", "", "50 #heroic#" };
		{ 2, 33972, "", "Mask of Primal Power", "", "75 #heroic#" };
		{ 3, 32087, "", "Mask of the Deceiver", "", "50 #heroic#" };
		{ 4, 33287, "", "Gnarled Ironwood Pauldrons", "", "60 #heroic#" };
		{ 5, 33973, "", "Pauldrons of Tribal Fury", "", "60 #heroic#" };
		{ 6, 33566, "", "Blessed Elunite Coverings", "", "75 #heroic#" };
		{ 7, 33579, "", "Vestments of Hibernation", "", "75 #heroic#" };
		{ 8, 33578, "", "Armwraps of the Kaldorei Protector", "", "35 #heroic#" };
		{ 9, 33580, "", "Band of the Swift Paw", "", "35 #heroic#" };
		{ 10, 33557, "", "Gargon's Bracers Peaceful Slumber", "", "35 #heroic#" };
		{ 11, 33540, "", "Master Assassin Wristwraps", "", "35 #heroic#" };
		{ 12, 33974, "", "Grasp of the Moonkin", "", "60 #heroic#" };
		{ 13, 33539, "", "Trickster's Stickyfingers", "", "60 #heroic#" };
		{ 14, 33559, "", "Starfire Waistband", "", "60 #heroic#" };
		{ 15, 33583, "", "Waistguard of the Great Beast", "", "60 #heroic#" };
		{ 16, 33552, "", "Pants of Splendid Recovery", "", "75 #heroic#" };
		{ 17, 33538, "", "Shallow-grave Trousers", "", "75 #heroic#" };
		{ 18, 33582, "", "Footwraps of Wild Encroachment", "", "60 #heroic#" };
		{ 19, 33577, "", "Moon-walkers", "", "60 #heroic#" };
		{ 20, 33222, "", "Nyn'jah's Tabi Boots", "", "60 #heroic#" };
	};
	{
		Name = BabbleInventory["Mail"];
		{ 1, 32086, "", "Storm Master's Helmet", "", "50 #heroic#" };
		{ 2, 32085, "", "Warpstalker Helm", "", "50 #heroic#" };
		{ 3, 33970, "", "Pauldrons of the Furious Elements", "", "60 #heroic#" };
		{ 4, 33965, "", "Hauberk of the Furious Elements", "", "75 #heroic#" };
		{ 5, 33535, "", "Earthquake Bracers", "", "35 #heroic#" };
		{ 6, 33532, "", "Gleaming Earthen Bracers", "", "35 #heroic#" };
		{ 7, 33529, "", "Steadying Bracers", "", "35 #heroic#" };
		{ 8, 33528, "", "Gauntlets of Sniping", "", "60 #heroic#" };
		{ 9, 33534, "", "Grips of Nature's Wrath", "", "60 #heroic#" };
		{ 10, 33531, "", "Polished Waterscale Gloves", "", "60 #heroic#" };
		{ 11, 33386, "", "Man'kin'do's Belt", "", "60 #heroic#" };
		{ 12, 33536, "", "Stormwrap", "", "60 #heroic#" };
		{ 13, 33280, "", "War-Feathered Loop", "", "60 #heroic#" };
		{ 14, 33530, "", "Natural Life Leggings", "", "75 #heroic#" };
		{ 15, 33527, "", "Shifting Camouflage Pants", "", "75 #heroic#" };
		{ 16, 33537, "", "Treads of Booming Thunder", "", "60 #heroic#" };
		{ 17, 33324, "", "Treads of Life Path", "", "60 #heroic#" };
	};
	{
		Name = BabbleInventory["Plate"];
		{ 1, 33810, "", "Amani Mask of Death", "", "75 #heroic#" };
		{ 2, 32083, "", "Faceguard of Determination", "", "50 #heroic#" };
		{ 3, 32084, "", "Helmet of the Steadfast Champion", "", "50 #heroic#" };
		{ 4, 33514, "", "Pauldrons of Gruesome Fate", "", "60 #heroic#" };
		{ 5, 33522, "", "Chestguard of the Stoic Guardian", "", "75 #heroic#" };
		{ 6, 33516, "", "Bracers of the Ancient Phalanx", "", "35 #heroic#" };
		{ 7, 33513, "", "Eternium Rage-shackles", "", "35 #heroic#" };
		{ 8, 33520, "", "Vambraces of the Naaru", "", "35 #heroic#" };
		{ 9, 33517, "", "Bonefist Gauntlets", "", "60 #heroic#" };
		{ 10, 33512, "", "Furious Deathgrips", "", "60 #heroic#" };
		{ 11, 33519, "", "Handguards of the Templar", "", "60 #heroic#" };
		{ 12, 33331, "", "Chain of Unleashed Rage", "", "60 #heroic#" };
		{ 13, 33524, "", "Girdle of the Protector", "", "60 #heroic#" };
		{ 14, 33279, "", "Iron-tusk Girdle", "", "60 #heroic#" };
		{ 16, 33501, "", "Bloodthirster's Greaves", "", "75 #heroic#" };
		{ 17, 33518, "", "High Justicar's Legplates", "", "75 #heroic#" };
		{ 18, 33515, "", "Unwavering Legguards", "", "75 #heroic#" };
		{ 19, 33207, "", "Implacable Guardian Sabatons", "", "60 #heroic#" };
		{ 20, 33523, "", "Sabatons of the Righteous Defender", "", "60 #heroic#" };
	};
	{
		Name = BabbleInventory["Back"];
		{ 1, 29375, "", "Bishop's Cloak", "", "25 #heroic#" };
		{ 2, 29382, "", "Blood Knight War Cloak", "", "25 #heroic#" };
		{ 3, 35321, "", "Cloak of Arcane Alacrity", "", "60 #heroic#" };
		{ 4, 33304, "", "Cloak of Subjugated Power", "", "60 #heroic#" };
		{ 5, 35324, "", "Cloak of Swift Reprieve", "", "60 #heroic#" };
		{ 6, 33484, "", "Dory's Embrace", "", "60 #heroic#" };
		{ 7, 29385, "", "Farstrider Defender's Cloak", "", "25 #heroic#" };
		{ 8, 33333, "", "Kharmaa's Shroud of Hope", "", "60 #heroic#" };
		{ 9, 29369, "", "Shawl of Shifting Probabilities", "", "25 #heroic#" };
		{ 10, 33593, "", "Slikk's Cloak of Placation", "", "35 #heroic#" };
	};
	{
		Name = BabbleInventory["Totem"] .. "s - " .. BabbleInventory["Idol"] .. "s - " .. BabbleInventory["Libram"] .. "s";
		{ 1, 29390, "", "Everbloom Idol", "", "15 #heroic#" };
		{ 2, 33508, "", "Idol of Budding Life", "", "20 #heroic#" };
		{ 3, 33509, "", "Idol of Terror", "", "20 #heroic#" };
		{ 4, 33510, "", "Idol of the Unseen Moon", "", "20 #heroic#" };
		{ 5, 33506, "", "Skycall Totem", "", "20 #heroic#" };
		{ 6, 33507, "", "Stonebreaker's Totem", "", "20 #heroic#" };
		{ 7, 33505, "", "Totem of Living Water", "", "20 #heroic#" };
		{ 8, 29389, "", "Totem of the Pulsing Earth", "", "15 #heroic#" };
		{ 9, 33503, "", "Libram of Divine Judgement", "", "20 #heroic#" };
		{ 10, 33504, "", "Libram of Divine Purpose", "", "20 #heroic#" };
		{ 11, 33502, "", "Libram of Mending", "", "20 #heroic#" };
		{ 12, 29388, "", "Libram of Repentance", "", "15 #heroic#" };
	};
	{
		Name = AL["Weapons"];
		{ 1, 29275, "", "Searing Sunblade", "", "50 #heroic#" };
		{ 2, 33192, "", "Carved Witch Doctor's Stick", "", "25 #heroic#" };
		{ 3, 29266, "", "Azure-Shield of Coldarra", "", "33 #heroic#" };
		{ 4, 29267, "", "Light-Bearer's Faith Shield", "", "33 #heroic#" };
		{ 5, 29268, "", "Mazthoril Honor Shield", "", "33 #heroic#" };
		{ 6, 33334, "", "Fetish of the Primal Gods", "", "35 #heroic#" };
		{ 7, 29270, "", "Flametounge Seal", "", "25 #heroic#" };
		{ 8, 29273, "", "Khadgar's Knapsack", "", "25 #heroic#" };
		{ 9, 29272, "", "Orb of the Soul-Eater", "", "25 #heroic#" };
		{ 10, 29269, "", "Sapphiron's Wing Bone", "", "25 #heroic#" };
		{ 11, 29271, "", "Talisman of Kalecgos", "", "25 #heroic#" };
		{ 12, 29274, "", "Tears of Heaven", "", "25 #heroic#" };
		{ 13, 33325, "", "Voodoo Shaker", "", "35 #heroic#" };
	};
	{
		Name = AL["Accessories"];
		{ 1, 33296, "", "Brooch of Deftness", "", "35 #heroic#" };
		{ 2, 29381, "", "Choker of Vile Intent", "", "25 #heroic#" };
		{ 3, 29374, "", "Necklace of Eternal Hope", "", "25 #heroic#" };
		{ 4, 29368, "", "Manasurge Pendant", "", "25 #heroic#" };
		{ 5, 29386, "", "Necklace of the Juggernaut", "", "25 #heroic#" };
		{ 6, 29373, "", "Band of Halos", "", "25 #heroic#" };
		{ 7, 29379, "", "Ring of Arathi Warlords", "", "25 #heroic#" };
		{ 8, 29367, "", "Ring of Cryptic Dreams", "", "25 #heroic#" };
		{ 9, 29384, "", "Ring of Unyielding Force", "", "25 #heroic#" };
		{ 10, 23572, "", "Primal Nether", "", "10 #heroic#" };
		{ 11, 32227, "", "Crimson Spinel", "", "15 #heroic#" };
		{ 12, 32229, "", "Lionseye", "", "15 #heroic#" };
		{ 13, 32249, "", "Seaspray Emerald", "", "15 #heroic#" };
		{ 14, 35326, "", "Battlemaster's Alacrity", "", "75 #heroic#" };
		{ 15, 34049, "", "Battlemaster's Audacity", "", "75 #heroic#" };
		{ 16, 34163, "", "Battlemaster's Cruelty", "", "75 #heroic#" };
		{ 17, 34162, "", "Battlemaster's Depravity", "", "75 #heroic#" };
		{ 18, 33832, "", "Battlemaster's Determination", "", "75 #heroic#" };
		{ 19, 34050, "", "Battlemaster's Perseverance", "", "75 #heroic#" };
		{ 20, 29383, "", "Bloodlust Brooch", "", "41 #heroic#" };
		{ 21, 29376, "", "Essence of the Martyr", "", "41 #heroic#" };
		{ 22, 29387, "", "Gnomeregan Auto-Blocker 600", "", "41 #heroic#" };
		{ 23, 29370, "", "Icon of the Silver Crescent", "", "41 #heroic#" };
		{ 24, 30183, "", "Nether Vortex", "", "15 #heroic#" };
		{ 25, 32228, "", "Empyrean Sapphire", "", "15 #heroic#" };
		{ 26, 32231, "", "Pyrestone", "", "15 #heroic#" };
		{ 27, 32230, "", "Shadowsong Amethyst", "", "15 #heroic#" };
	};
	{
		Name = AL["Fire Resistance Gear"];
		{ 1, 0, "INV_Box_01", "=q6=#a1#" };
		{ 2, 30762, "", "Infernoweave Robe", "", "30 #heroic#" };
		{ 3, 30764, "", "Infernoweave Gloves", "", "20 #heroic#" };
		{ 4, 30761, "", "Infernoweave Leggings", "", "30 #heroic#" };
		{ 5, 30763, "", "Infernoweave Boots", "", "20 #heroic#" };
		{ 7, 0, "INV_Box_01", "=q6=#a2#" };
		{ 8, 30776, "", "Inferno Hardened Chestguard", "", "30 #heroic#" };
		{ 9, 30780, "", "Inferno Hardened Gloves", "", "20 #heroic#" };
		{ 10, 30778, "", "Inferno Hardened Leggings", "", "30 #heroic#" };
		{ 11, 30779, "", "Inferno Hardened Boots", "", "20 #heroic#" };
		{ 13, 29434, "", "Badge of Justice" };
		{ 16, 0, "INV_Box_01", "=q6=#a3#" };
		{ 17, 30773, "", "Inferno Forged Hauberk", "", "30 #heroic#" };
		{ 18, 30774, "", "Inferno Forged Gloves", "", "20 #heroic#" };
		{ 19, 30772, "", "Inferno Forged Leggings", "", "30 #heroic#" };
		{ 20, 30770, "", "Inferno Forged Boots", "", "20 #heroic#" };
		{ 22, 0, "INV_Box_01", "=q6=#a4#" };
		{ 23, 30769, "", "Inferno Tempered Chestguard", "", "30 #heroic#" };
		{ 24, 30767, "", "Inferno Tempered Gauntlets", "", "20 #heroic#" };
		{ 25, 30766, "", "Inferno Tempered Leggings", "", "30 #heroic#" };
		{ 26, 30768, "", "Inferno Tempered Boots", "", "20 #heroic#" };
	};
};

AtlasLoot_Data["BadgeSunwell"] = {
	Name = AL["Sunwell Isle"];
	{
		Name = BabbleInventory["Cloth"];
		{ 1, 34924, "", "Gown of Spiritual Wonder", "", "100 #heroic#" };
		{ 2, 34917, "", "Shroud of the Lore`nial", "", "100 #heroic#" };
		{ 3, 34936, "", "Tormented Demonsoul Robes", "", "100 #heroic#" };
		{ 4, 34938, "", "Enslaved Doomguard Soulgrips", "", "75 #heroic#" };
		{ 5, 34925, "", "Adorned Supernal Legwraps", "", "100 #heroic#" };
		{ 6, 34937, "", "Corrupted Soulcloth Pantaloons", "", "100 #heroic#" };
		{ 7, 34918, "", "Legwraps of Sweltering Flame", "", "100 #heroic#" };
		{ 8, 34919, "", "Boots of Incantations", "", "75 #heroic#" };
		{ 9, 34926, "", "Slippers of Dutiful Mending", "", "75 #heroic#" };
	};
	{
		Name = BabbleInventory["Leather"];
		{ 1, 34906, "", "Embrace of Everlasting Prowess", "", "100 #heroic#" };
		{ 2, 34903, "", "Embrace of Starlight", "", "100 #heroic#" };
		{ 3, 34900, "", "Shroud of Nature's Harmony", "", "100 #heroic#" };
		{ 4, 34927, "", "Tunic of the Dark Hour", "", "100 #heroic#" };
		{ 5, 34904, "", "Barbed Gloves of the Sage", "", "75 #heroic#" };
		{ 6, 34911, "", "Handwraps of the Aggressor", "", "75 #heroic#" };
		{ 7, 34902, "", "Oakleaf-Spun Handguards", "", "75 #heroic#" };
		{ 8, 34929, "", "Belt of the Silent Path", "", "75 #heroic#" };
		{ 9, 34905, "", "Crystalwind Leggings", "", "100 #heroic#" };
		{ 10, 34901, "", "Grovewalker's Leggings", "", "100 #heroic#" };
		{ 11, 34910, "", "Tameless Breeches", "", "100 #heroic#" };
		{ 12, 34928, "", "Trousers of the Scryers' Retainer", "", "100 #heroic#" };
	};
	{
		Name = BabbleInventory["Mail"];
		{ 1, 34933, "", "Hauberk of Whirling Fury", "", "100 #heroic#" };
		{ 2, 34912, "", "Scaled Drakeskin Chestguard", "", "100 #heroic#" };
		{ 3, 34930, "", "Wave of Life Chestguard", "", "100 #heroic#" };
		{ 4, 34916, "", "Gauntlets of Rapidity", "", "75 #heroic#" };
		{ 5, 34935, "", "Aftershock Waistguard", "", "75 #heroic#" };
		{ 6, 34932, "", "Clutch of the Soothing Breeze", "", "75 #heroic#" };
		{ 7, 34914, "", "Leggings of the Pursuit", "", "100 #heroic#" };
		{ 8, 34931, "", "Runed Scales of Antiquity", "", "100 #heroic#" };
		{ 9, 34934, "", "Rushing Storm Kilt", "", "100 #heroic#" };
	};
	{
		Name = BabbleInventory["Plate"];
		{ 1, 34942, "", "Breastplate of Ire", "", "100 #heroic#" };
		{ 2, 34939, "", "Chestplate of Stoicism", "", "100 #heroic#" };
		{ 3, 34921, "", "Ecclesiastical Cuirass", "", "100 #heroic#" };
		{ 4, 34945, "", "Shattrath Protectorate's Breastplate", "", "100 #heroic#" };
		{ 5, 34944, "", "Girdle of Seething Rage", "", "75 #heroic#" };
		{ 6, 34941, "", "Girdle of the Fearless", "", "75 #heroic#" };
		{ 7, 34923, "", "Waistguard of Reparation", "", "75 #heroic#" };
		{ 8, 34922, "", "Greaves of Pacification", "", "100 #heroic#" };
		{ 9, 34946, "", "Inscribed Legplates of the Aldor", "", "100 #heroic#" };
		{ 10, 34943, "", "Legplates of Unending Fury", "", "100 #heroic#" };
		{ 11, 34940, "", "Sunguard Legplates", "", "100 #heroic#" };
		{ 12, 34947, "", "Blue's Greaves of the Righteous Guardian", "", "75 #heroic#" };
	};
	{
		Name = AL["Weapons"];
		{ 1, 34893, "", "Vanir's Right Fist of Brutality", "", "105 #heroic#" };
		{ 2, 34951, "", "Vanir's Left Fist of Brutality", "", "45 #heroic#" };
		{ 3, 34950, "", "Vanir's Left Fist of Savagery", "", "45 #heroic#" };
		{ 4, 34895, "", "Scryer's Blade of Focus", "", "150 #heroic#" };
		{ 5, 34894, "", "Blade of Serration", "", "105 #heroic#" };
		{ 6, 34949, "", "Swift Blade of Uncertainty", "", "45 #heroic#" };
		{ 7, 34952, "", "The Mutilator", "", "45 #heroic#" };
		{ 8, 34891, "", "The Blade of Harbingers", "", "150 #heroic#" };
		{ 9, 34896, "", "Gavel of Naaru Blessings", "", "150 #heroic#" };
		{ 10, 34898, "", "Staff of the Forest Lord", "", "150 #heroic#" };
		{ 11, 34892, "", "Crossbow of Relentless Strikes", "", "150 #heroic#" };
	};
	{
		Name = AL["Accessories"];
		{ 1, 34887, "", "Angelista's Revenge", "", "60 #heroic#" };
		{ 2, 34890, "", "Anveena's Touch", "", "60 #heroic#" };
		{ 3, 34889, "", "Fused Nethergon Band", "", "60 #heroic#" };
		{ 4, 34888, "", "Ring of the Stalwart Protector", "", "60 #heroic#" };
	};
};


AtlasLoot_Data["HardModeArena"] = {
			Name = "Hardmode arena";
		{
			Name = "Hardmode arena";
			{ 1, 32811, "", "Veteran's Dreadweave Cuffs", "", "25 #heroic#", ""};
			{ 2, 32799, "", "Veteran's Dreadweave Belt", "", "40 #heroic#", ""};
			{ 3, 32787, "", "Veteran's Dreadweave Stalkers", "", "40 #heroic#", ""};
			{ 5, 32980, "", "Veteran's Mooncloth Cuffs", "", "25 #heroic#", ""};
			{ 6, 32979, "", "Veteran's Mooncloth Belt", "", "40 #heroic#", ""};
			{ 7, 32981, "", "Veteran's Mooncloth Slippers", "", "40 #heroic#", ""};
			{ 9, 32820, "", "Veteran's Silk Cuffs", "", "25 #heroic#", ""};
			{ 10, 32807, "", "Veteran's Silk Belt", "", "40 #heroic#", ""};
			{ 11, 32795, "", "Veteran's Silk Footguards", "", "40 #heroic#", ""};
			{ 16, 32810, "", "Veteran's Dragonhide Bracers", "", "25 #heroic#", ""};
			{ 17, 32798, "", "Veteran's Dragonhide Belt", "", "40 #heroic#", ""};
			{ 18, 32786, "", "Veteran's Dragonhide Boots", "", "40 #heroic#", ""};
			{ 20, 32812, "", "Veteran's Kodohide Bracers", "", "25 #heroic#", ""};
			{ 21, 32800, "", "Veteran's Kodohide Belt", "", "40 #heroic#", ""};
			{ 22, 32788, "", "Veteran's Kodohide Boots", "", "40 #heroic#", ""};
			{ 24, 32814, "", "Veteran's Leather Bracers", "", "25 #heroic#", ""};
			{ 25, 32802, "", "Veteran's Leather Belt", "", "40 #heroic#", ""};
			{ 26, 32790, "", "Veteran's Leather Boots", "", "40 #heroic#", ""};
			{ 28, 32821, "", "Veteran's Wyrmhide Bracers", "", "25 #heroic#", ""};
			{ 29, 32808, "", "Veteran's Wyrmhide Belt", "", "40 #heroic#", ""};
			{ 30, 32796, "", "Veteran's Wyrmhide Boots", "", "40 #heroic#", ""};
		};
	};

AtlasLoot_Data["HardModeArena2"] = {
	Name = "Hardmode arena2";
	{
		Name = "Hardmode arena2";
		{ 1, 32809, "", "Veteran's Chain Bracers", "", "25 #heroic#" };
		{ 2, 32797, "", "Veteran's Chain Girdle", "", "40 #heroic#" };
		{ 3, 32785, "", "Veteran's Chain Sabatons", "", "40 #heroic#" };
		{ 5, 32816, "", "Veteran's Linked Bracers", "", "25 #heroic#" };
		{ 6, 32803, "", "Veteran's Linked Girdle", "", "40 #heroic#" };
		{ 7, 32791, "", "Veteran's Linked Sabatons", "", "40 #heroic#" };
		{ 9, 32817, "", "Veteran's Mail Bracers", "", "25 #heroic#" };
		{ 10, 32804, "", "Veteran's Mail Girdle", "", "40 #heroic#" };
		{ 11, 32792, "", "Veteran's Mail Sabatons", "", "40 #heroic#" };
		{ 13, 32997, "", "Veteran's Ringmail Bracers", "", "25 #heroic#" };
		{ 14, 32998, "", "Veteran's Ringmail Girdle", "", "40 #heroic#" };
		{ 15, 32999, "", "Veteran's Ringmail Sabatons", "", "40 #heroic#" };
		{ 16, 32813, "", "Veteran's Lamellar Bracers", "", "25 #heroic#" };
		{ 17, 32801, "", "Veteran's Lamellar Belt", "", "40 #heroic#" };
		{ 18, 32789, "", "Veteran's Lamellar Greaves", "", "40 #heroic#" };
		{ 20, 32989, "", "Veteran's Ornamented Bracers", "", "25 #heroic#" };
		{ 21, 32988, "", "Veteran's Ornamented Belt", "", "40 #heroic#" };
		{ 22, 32990, "", "Veteran's Ornamented Greaves", "", "40 #heroic#" };
		{ 24, 32818, "", "Veteran's Plate Bracers", "", "25 #heroic#" };
		{ 25, 32805, "", "Veteran's Plate Belt", "", "40 #heroic#" };
		{ 26, 32793, "", "Veteran's Plate Greaves", "", "40 #heroic#" };
		{ 28, 32819, "", "Veteran's Scaled Bracers", "", "25 #heroic#" };
		{ 29, 32806, "", "Veteran's Scaled Belt", "", "40 #heroic#" };
		{ 30, 32794, "", "Veteran's Scaled Greaves", "", "40 #heroic#" };
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
		{ 1, 31329, "", "Lifegiving Cloak" };
		{ 2, 31340, "", "Will of Edward the Odd" };
		{ 3, 31343, "", "Kamaei's Cerulean Skirt" };
		{ 4, 31333, "", "The Night Watchman" };
		{ 5, 31335, "", "Pants of Living Growth" };
		{ 6, 31330, "", "Lightning Crown" };
		{ 7, 31328, "", "Leggings of Beast Mastery" };
		{ 8, 31320, "", "Chestguard of Exile" };
		{ 9, 31338, "", "Charlotte's Ivy" };
		{ 10, 31321, "", "Choker of Repentance" };
		{ 11, 31319, "", "Band of Impenetrable Defenses" };
		{ 12, 31339, "", "Lola's Eve" };
		{ 13, 31326, "", "Truestrike Ring" };
		{ 16, 31331, "", "The Night Blade" };
		{ 17, 31336, "", "Blade of Wizardry" };
		{ 18, 31332, "", "Blinkstrike" };
		{ 19, 31318, "", "Singing Crystal Axe" };
		{ 20, 31342, "", "The Ancient Scepter of Sue-Min" };
		{ 21, 31322, "", "The Hammer of Destiny" };
		{ 22, 31334, "", "Staff of Natural Fury" };
		{ 23, 34622, "", "Spinesever" };
		{ 24, 31323, "", "Don Santos' Famous Hunting Rifle" };
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
		{ 1, 30735, "", "Ancient Spellcloak of the Highborne", droprate = "16.5%" };
		{ 2, 30734, "", "Leggings of the Seventh Circle", droprate = "17.0%" };
		{ 3, 30737, "", "Gold-Leaf Wildboots", droprate = "21.1%" };
		{ 4, 30739, "", "Scaled Greaves of the Marksman", droprate = "14.0%" };
		{ 5, 30740, "", "Ripfiend Shoulderplates", droprate = "16.1%" };
		{ 6, 30741, "", "Topaz-Studded Battlegrips", droprate = "17.0%" };
		{ 7, 30736, "", "Ring of Flowing Light", droprate = "15.8%" };
		{ 8, 30738, "", "Ring of Reciprocity", droprate = "23.4%" };
		{ 9, 30733, "", "Hope Ender", droprate = "16.7%" };
		{ 10, 30732, "", "Exodar Life-Staff", droprate = "17.1%" };
	};
	{
		Name = BabbleBoss["Doomwalker"];
		{ 1, 30729, "", "Black-Iron Battlecloak", droprate = "19.6%" };
		{ 2, 30725, "", "Anger-Spark Gloves", droprate = "17.9%" };
		{ 3, 30727, "", "Gilded Trousers of Benediction", droprate = "18.1%" };
		{ 4, 30730, "", "Terrorweave Tunic", droprate = "18.8%" };
		{ 5, 30728, "", "Fathom-Helm of the Deeps", droprate = "16.2%" };
		{ 6, 30731, "", "Faceguard of the Endless Watch", droprate = "18.1%" };
		{ 7, 30726, "", "Archaic Charm of Presence", droprate = "20.9%" };
		{ 8, 30723, "", "Talon of the Tempest", droprate = "15.4%" };
		{ 9, 30722, "", "Ethereum Nexus-Reaver", droprate = "16.0%" };
		{ 10, 30724, "", "Barrel-Blade Longrifle", droprate = "20.0%" };
	}
};
