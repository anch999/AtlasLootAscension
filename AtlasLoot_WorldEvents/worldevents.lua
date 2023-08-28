local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")


-- Index
--- Permanent Events
---- Argent Tournament
--- Seasonal Events
---- Brewfest
---- Children's Week
---- Day of the Dead
---- Feast of Winter Veil
---- Hallow's End
---- Harvest Festival
---- Love is in the Air
---- Lunar Festival
---- Midsummer Fire Festival
---- Noblegarden
---- Pilgrim's Bounty
--- Reaccouring Events
---- Bash'ir Landing Skyguard Raid
---- Darkmoon Faire
---- Elemental Invasion
---- Gurubashi Arena Booty Run
---- Stranglethorn Fishing Extravaganza
--- Triggered Events
---- Abyssal Council
---- Ethereum Prison
---- Shartuul
---- Skettis
--- One Time Events
---- Scourge Invasion

------------------------
--- Permanent Events ---
------------------------

-------------------------
--- Argent Tournament ---
-------------------------

AtlasLoot_Data["ArgentTournament"] = {
	Name = AL["Argent Tournament"];
	{
		Name = BabbleInventory["Miscellaneous"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 45714, "", "=q2=Darnassus Commendation Badge", "", "1 #champwrit#" };
		{ 3, 45715, "", "=q2=Exodar Commendation Badge", "", "1 #champwrit#" };
		{ 4, 45716, "", "=q2=Gnomeregan Commendation Badge", "", "1 #champwrit#" };
		{ 5, 45717, "", "=q2=Ironforge Commendation Badge", "", "1 #champwrit#" };
		{ 6, 45718, "", "=q2=Stormwind Commendation Badge", "", "1 #champwrit#" };
		{ 15, 46114, "", "=q2=Champion's Writ" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45719, "", "=q2=Orgrimmar Commendation Badge", "", "1 #champwrit#" };
		{ 18, 45723, "", "=q2=Undercity Commendation Badge", "", "1 #champwrit#" };
		{ 19, 45722, "", "=q2=Thunder Bluff Commendation Badge", "", "1 #champwrit#" };
		{ 20, 45720, "", "=q2=Sen'jin Commendation Badge", "", "1 #champwrit#" };
		{ 21, 45721, "", "=q2=Silvermoon Commendation Badge", "", "1 #champwrit#" };
	};
	{
		Name = AL["Tabards"] .. " / " .. AL["Banner"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 45021, "", "=q1=Darnassus Banner", "=ds=#e14#", "15 #champseal#" };
		{ 3, 45020, "", "=q1=Exodar Banner", "=ds=#e14#", "15 #champseal#" };
		{ 4, 45019, "", "=q1=Gnomeregan Banner", "=ds=#e14#", "15 #champseal#" };
		{ 5, 45018, "", "=q1=Ironforge Banner", "=ds=#e14#", "15 #champseal#" };
		{ 6, 45011, "", "=q1=Stormwind Banner", "=ds=#e14#", "15 #champseal#" };
		{ 7, 45579, "", "=q1=Darnassus Tabard", "", "50 #champseal#" };
		{ 8, 45580, "", "=q1=Exodar Tabard", "", "50 #champseal#" };
		{ 9, 45578, "", "=q1=Gnomeregan Tabard", "", "50 #champseal#" };
		{ 10, 45577, "", "=q1=Ironforge Tabard", "", "50 #champseal#" };
		{ 11, 45574, "", "=q1=Stormwind Tabard", "", "50 #champseal#" };
		{ 12, 46817, "", "=q1=Silver Covenant Tabard", "", "50 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45014, "", "=q1=Orgrimmar Banner", "=ds=#e14#", "15 #champseal#" };
		{ 18, 45016, "", "=q1=Undercity Banner", "=ds=#e14#", "15 #champseal#" };
		{ 19, 45013, "", "=q1=Thunder Bluff Banner", "=ds=#e14#", "15 #champseal#" };
		{ 20, 45015, "", "=q1=Sen'jin Banner", "=ds=#e14#", "15 #champseal#" };
		{ 21, 45017, "", "=q1=Silvermoon City Banner", "=ds=#e14#", "15 #champseal#" };
		{ 22, 45581, "", "=q1=Orgrimmar Tabard", "", "50 #champseal#" };
		{ 23, 45583, "", "=q1=Undercity Tabard", "", "50 #champseal#" };
		{ 24, 45584, "", "=q1=Thunder Bluff Tabard", "", "50 #champseal#" };
		{ 25, 45582, "", "=q1=Sen'jin Tabard", "", "50 #champseal#" };
		{ 26, 45585, "", "=q1=Silvermoon City Tabard", "", "50 #champseal#" };
		{ 27, 46818, "", "=q1=Sunreaver Tabard", "", "50 #champseal#" };
		{ 28, 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"] };
		{ 29, 46843, "", "=q1=Argent Crusade Banner", "=ds=#e14#", "15 #champseal#" };
		{ 30, 46874, "", "=q2=Argent Crusader's Tabard", "", "50 #champseal#" };
	};
	{
		Name = BabbleInventory["Armor"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 45156, "", "=q3=Sash of Shattering Hearts", "", "10 #champseal#" };
		{ 3, 45181, "", "=q3=Wrap of the Everliving Tree", "", "10 #champseal#" };
		{ 4, 45159, "", "=q3=Treads of Nimble Evasion", "", "10 #champseal#" };
		{ 5, 45184, "", "=q3=Cinch of Bonded Servitude", "", "10 #champseal#" };
		{ 6, 45183, "", "=q3=Treads of the Glorious Spirit", "", "10 #champseal#" };
		{ 7, 45182, "", "=q3=Gauntlets of Shattered Pride", "", "10 #champseal#" };
		{ 8, 45160, "", "=q3=Girdle of Valorous Defeat", "", "10 #champseal#" };
		{ 9, 45163, "", "=q3=Stanchions of Unseatable Furor", "", "10 #champseal#" };
		{ 10, 45153, "", "=q3=Susurrating Shell Necklace", "", "10 #champseal#" };
		{ 11, 45155, "", "=q3=Choker of Spiral Focus", "", "10 #champseal#" };
		{ 12, 45154, "", "=q3=Necklace of Valiant Blood", "", "10 #champseal#" };
		{ 13, 45152, "", "=q3=Pendant of Azure Dreams", "", "10 #champseal#" };
		{ 14, 45131, "", "=q3=Jouster's Fury", "", "10 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45209, "", "=q3=Sash of Trumpted Pride", "", "10 #champseal#" };
		{ 18, 45211, "", "=q3=Waistguard of Equine Fury", "", "10 #champseal#" };
		{ 19, 45220, "", "=q3=Treads of the Earnest Squire", "", "10 #champseal#" };
		{ 20, 45215, "", "=q3=Links of Unquenched Savagery", "", "10 #champseal#" };
		{ 21, 45221, "", "=q3=Treads of Whispering Dreams", "", "10 #champseal#" };
		{ 22, 45216, "", "=q3=Gauntlets of Mending Touch", "", "10 #champseal#" };
		{ 23, 45217, "", "=q3=Clinch of Savage Fury", "", "10 #champseal#" };
		{ 24, 45218, "", "=q3=Blood-Caked Stompers", "", "10 #champseal#" };
		{ 25, 45206, "", "=q3=Choker of Feral Fury", "", "10 #champseal#" };
		{ 26, 45207, "", "=q3=Necklace of Stolen Skulls", "", "10 #champseal#" };
		{ 27, 45213, "", "=q3=Pendant of Emerald Crusader", "", "10 #champseal#" };
		{ 28, 45223, "", "=q3=Razor's Edge Pendant", "", "10 #champseal#" };
		{ 29, 45219, "", "=q3=Jouster's Fury", "", "10 #champseal#" };
	};
	{
		Name = AL["Weapons"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 45078, "", "=q4=Dagger of Lunar Purity", "", "25 #champseal#" };
		{ 3, 45077, "", "=q4=Dagger of the Rising Moon", "", "25 #champseal#" };
		{ 4, 45129, "", "=q4=Gnomeregan Bonechopper", "", "25 #champseal#" };
		{ 5, 45074, "", "=q4=Claymore of the Prophet", "", "25 #champseal#" };
		{ 6, 45076, "", "=q4=Teldrassil Protector", "", "25 #champseal#" };
		{ 7, 45075, "", "=q4=Ironforge Smasher", "", "25 #champseal#" };
		{ 8, 45128, "", "=q4=Silvery Sylvan Stave", "", "25 #champseal#" };
		{ 9, 45130, "", "=q4=Blunderbuss of Khaz Modan", "", "25 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45214, "", "=q4=Scalpel of the Royal Apothecary", "", "25 #champseal#" };
		{ 18, 45222, "", "=q4=Spinal Destroyer", "", "25 #champseal#" };
		{ 19, 45208, "", "=q4=Blade of the Keening Banshee", "", "25 #champseal#" };
		{ 20, 45205, "", "=q4=Greatsword of the Sin'dorei", "", "25 #champseal#" };
		{ 21, 45204, "", "=q4=Axe of the Sen'jin Protector", "", "25 #champseal#" };
		{ 22, 45203, "", "=q4=Grimhorn Crusher", "", "25 #champseal#" };
		{ 23, 45212, "", "=q4=Staff of Feral Furies", "", "25 #champseal#" };
		{ 24, 45210, "", "=q4=Sen'jin Beakblade Longrifle", "", "25 #champseal#" };
	};
	{
		Name = AL["Vanity Pets"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 44998, "", "=q3=Argent Squire", "=ds=#m4#" };
		{ 4, 44984, "", "=q3=Ammen Vale Lashling", "", "40 #champseal#" };
		{ 5, 44965, "", "=q3=Teldrassil Sproutling", "", "40 #champseal#" };
		{ 6, 44970, "", "=q3=Dun Morogh Cub", "", "40 #champseal#" };
		{ 7, 44974, "", "=q3=Elwynn Lamb", "", "40 #champseal#" };
		{ 8, 45002, "", "=q3=Mechanopeep", "", "40 #champseal#" };
		{ 9, 46820, "", "=q3=Shimmering Wyrmling", "", "40 #champseal#" };
		{ 11, 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"] };
		{ 12, 47541, "", "=q3=Argent Pony Bridle", "", "150 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45022, "", "=q3=Argent Gruntling", "=ds=#m4#" };
		{ 19, 44980, "", "=q3=Mulgore Hatchling", "", "40 #champseal#" };
		{ 20, 45606, "", "=q3=Sen'jin Fetish", "", "40 #champseal#" };
		{ 21, 44971, "", "=q3=Tirisfal Batling", "", "40 #champseal#" };
		{ 22, 44973, "", "=q3=Durotar Scorpion", "", "40 #champseal#" };
		{ 23, 44982, "", "=q3=Enchanted Broom", "", "40 #champseal#" };
		{ 24, 46821, "", "=q3=Shimmering Wyrmling", "", "40 #champseal#" };
	};
	{
		Name = AL["Mounts"];
		{ 1, 0, "INV_BannerPVP_02", "=q6=#m7#" };
		{ 2, 45591, "", "=q4=Darnassian Nightsaber", "", "100 #champseal#" };
		{ 3, 45590, "", "=q4=Exodar Elekk", "", "100 #champseal#" };
		{ 4, 45589, "", "=q4=Gnomeregan Mechanostrider", "", "100 #champseal#" };
		{ 5, 45586, "", "=q4=Ironforge Ram", "", "100 #champseal#" };
		{ 6, 45125, "", "=q4=Stormwind Steed", "", "100 #champseal#" };
		{ 8, 46745, "", "=q4=Great Red Elekk", "", "500 #gold# 5 #champseal#" };
		{ 9, 46752, "", "=q4=Swift Gray Steed", "", "500 #gold# 5 #champseal#" };
		{ 10, 46744, "", "=q4=Swift Moonsaber", "", "500 #gold# 5 #champseal#" };
		{ 11, 46748, "", "=q4=Swift Violet Ram", "", "500 #gold# 5 #champseal#" };
		{ 12, 46747, "", "=q4=Turbostrider", "", "500 #gold# 5 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "INV_BannerPVP_01", "=q6=#m6#" };
		{ 17, 45593, "", "=q4=Darkspear Raptor", "", "100 #champseal#" };
		{ 18, 45597, "", "=q4=Forsaken Warhorse", "", "100 #champseal#" };
		{ 19, 45595, "", "=q4=Orgrimmar Wolf", "", "100 #champseal#" };
		{ 20, 45596, "", "=q4=Silvermoon Hawkstrider", "", "100 #champseal#" };
		{ 21, 45592, "", "=q4=Thunder Bluff Kodo", "", "100 #champseal#" };
		{ 23, 46750, "", "=q4=Great Golden Kodo", "", "500 #gold# 5 #champseal#" };
		{ 24, 46749, "", "=q4=Swift Burgundy Wolf", "", "500 #gold# 5 #champseal#" };
		{ 25, 46743, "", "=q4=Swift Purple Raptor", "", "500 #gold# 5 #champseal#" };
		{ 26, 46751, "", "=q4=Swift Red Hawkstrider", "", "500 #gold# 5 #champseal#" };
		{ 27, 46746, "", "=q4=White Skeletal Warhorse", "", "500 #gold# 5 #champseal#" };
	};
	{
		Name = AL["Mounts"];
		{ 1, 0, "inv_misc_tabardpvp_01", "=q6=" .. BabbleFaction["The Silver Covenant"], "=ec1=#m7#" };
		{ 2, 46815, "", "=q4=Quel'dorei Steed", "", "100 #champseal#" };
		{ 3, 46813, "", "=q4=Silver Covenant Hippogryph", "", "150 #champseal#" };
		{ 5, 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"] };
		{ 6, 47179, "", "=q4=Argent Charger", "", "100 #champseal#" };
		{ 7, 47180, "", "=q4=Argent Warhorse", "", "100 #champseal#" };
		{ 8, 45725, "", "=q4=Argent Hippogryph", "", "150 #champseal#" };
		{ 15, 44990, "", "=q2=Champion's Seal" };
		{ 16, 0, "inv_misc_tabardpvp_02", "=q6=" .. BabbleFaction["The Sunreavers"], "=ec1=#m6#" };
		{ 17, 46816, "", "=q4=Sunreaver Hawkstrider", "", "100 #champseal#" };
		{ 18, 46814, "", "=q4=Sunreaver Dragonhawk", "", "150 #champseal#" };
	};
	{
		Name = AL["Heirloom"];
		{ 1, 42985, "", "=q7=Tattered Dreadmist Mantle", "", "60 #champseal#" };
		{ 2, 42984, "", "=q7=Preened Ironfeather Shoulders", "", "60 #champseal#" };
		{ 3, 42952, "", "=q7=Stained Shadowcraft Spaulders", "", "60 #champseal#" };
		{ 4, 42950, "", "=q7=Champion Herod's Shoulder", "", "60 #champseal#" };
		{ 5, 42951, "", "=q7=Mystical Pauldrons of Elements", "", "60 #champseal#" };
		{ 6, 42949, "", "=q7=Polished Spaulders of Valor", "", "60 #champseal#" };
		{ 8, 42992, "", "=q7=Discerning Eye of the Beast", "", "75 #champseal#" };
		{ 9, 42991, "", "=q7=Swift Hand of Justice", "", "75 #champseal#" };
		{ 11, 44990, "", "=q2=Champion's Seal" };
		{ 16, 48691, "", "=q7=Tattered Dreadmist Robe", "", "60 #champseal#" };
		{ 17, 48687, "", "=q7=Preened Ironfeather Breastplate", "", "60 #champseal#" };
		{ 18, 48689, "", "=q7=Stained Shadowcraft Tunic", "", "60 #champseal#" };
		{ 19, 48677, "", "=q7=Champion's Deathdealer Breastplate", "", "60 #champseal#" };
		{ 20, 48683, "", "=q7=Mystical Vest of Elements", "", "60 #champseal#" };
		{ 21, 48685, "", "=q7=Polished Breastplate of Valor", "", "60 #champseal#" };
		{ 23, 42944, "", "=q7=Balanced Heartseeker", "", "60 #champseal#" };
		{ 24, 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "", "60 #champseal#" };
		{ 25, 42943, "", "=q7=Bloodied Arcanite Reaper", "", "95 #champseal#" };
		{ 26, 42948, "", "=q7=Devout Aurastone Hammer", "", "75 #champseal#" };
		{ 27, 48716, "", "=q7=Venerable Mass of McGowan", "", "75 #champseal#" };
		{ 28, 48718, "", "=q7=Repurposed Lava Dredger", "", "95 #champseal#" };
		{ 29, 42947, "", "=q7=Dignified Headmaster's Charge", "", "95 #champseal#" };
		{ 30, 42946, "", "=q7=Charmed Ancient Bone Bow", "", "95 #champseal#" };
	};
};

-----------------------
--- Seasonal Events ---
-----------------------

----------------
--- Brewfest ---
----------------

local brewfest = {};
brewfest.a = {
	Name = AL["Brewfest"] .. " 1";
	{ 1, 33047, "", "=q1=Belbi's Eyesight Enhancing Romance Goggles", "=ds=#s1#, 100 #brewfest#" };
	{ 2, 34008, "", "=q1=Blix's Eyesight Enhancing Romance Goggles", "=ds=#s1#, 100 #brewfest#" };
	{ 3, 33968, "", "=q1=Blue Brewfest Hat", "=ds=#s1#, 50 #brewfest#" };
	{ 4, 33864, "", "=q1=Brown Brewfest Hat", "=ds=#s1#, 50 #brewfest#" };
	{ 5, 33967, "", "=q1=Green Brewfest Hat", "=ds=#s1#, 50 #brewfest#" };
	{ 6, 33969, "", "=q1=Purple Brewfest Hat", "=ds=#s1#, 50 #brewfest#" };
	{ 7, 33863, "", "=q1=Brewfest Dress", "=ds=#s5#, 200 #brewfest#" };
	{ 8, 33862, "", "=q1=Brewfest Regalia", "=ds=#s5#, 200 #brewfest#" };
	{ 9, 33868, "", "=q1=Brewfest Boots", "=ds=#s12#, 100 #brewfest#" };
	{ 10, 33966, "", "=q1=Brewfest Slippers", "=ds=#s12#, 100 #brewfest#" };
	{ 16, 33927, "", "=q3=Brewfest Pony Keg", "=ds=#m20#, 100 #brewfest#" };
	{ 17, 46707, "", "=q3=Pint-Sized Pink Pachyderm", "=ds=#e13#, 100 #brewfest#" };
	{ 18, 32233, "", "=q3=Wolpertinger's Tankard", "=ds=#e13#, 40 #silver#" };
	{ 19, 37599, "", "=q1=\"Brew of the Month\" Club Membership Form", "=ds=#m2#, 200 #brewfest#" };
	{ 21, 37816, "", "=q2=Preserved Brewfest Hops", "=ds=#m20#, 20 #brewfest#" };
	{ 22, 37750, "", "=q1=Fresh Brewfest Hops", "=ds=#m20#, 2 #brewfest#" };
	{ 23, 39477, "", "=q1=Fresh Dwarven Brewfest Hops", "=ec1=#m6# =ds=#m20#, 5 #brewfest#" };
	{ 24, 39476, "", "=q1=Fresh Goblin Brewfest Hops", "=ec1=#m7# =ds=#m20#, 5 #brewfest#" };
	{ 27, 37829, "", "=q2=Brewfest Prize Token" };
};

brewfest.b = {
	Name = AL["Brewfest"] .. " 2";
	{ 1, 37892, "", "=q3=Green Brewfest Stein", "=ec1=2009 =q1=#m34#: =ds=#h1#" };
	{ 2, 33016, "", "=q3=Blue Brewfest Stein", "=ec1=2008 =q1=#m34#: =ds=#h1#" };
	{ 3, 32912, "", "=q3=Yellow Brewfest Stein", "=ec1=2007 =q1=#m34#: =ds=#h3#" };
	{ 4, 34140, "", "=q3=Dark Iron Tankard", "=ec1=2007 =q1=#m34#: =ds=#s15#" };
	{ 6, 33976, "", "=q3=Brewfest Ram", "=ec1=2007 =q1=#m34#: =ds=#e12#" };
	{ 16, 33929, "", "=q1=Brewfest Brew" };
	{ 17, 34063, "", "=q1=Dried Sausage" };
	{ 18, 33024, "", "=q1=Pickled Sausage" };
	{ 19, 38428, "", "=q1=Rock-Salted Pretzel" };
	{ 20, 33023, "", "=q1=Savory Sausage" };
	{ 21, 34065, "", "=q1=Spiced Onion Cheese" };
	{ 22, 33025, "", "=q1=Spicy Smoked Sausage" };
	{ 23, 34064, "", "=q1=Succulent Sausage" };
	{ 24, 33043, "", "=q1=The Essential Brewfest Pretzel" };
	{ 25, 33026, "", "=q1=The Golden Link" };
};

brewfest.c = {
	Name = AL["Brewfest"] .. " 3";
	{ 1, 0, "INV_Cask_04", "=q6=#n131#" };
	{ 2, 33030, "", "=q1=Barleybrew Clear" };
	{ 3, 33028, "", "=q1=Barleybrew Light" };
	{ 4, 33029, "", "=q1=Barleybrew Dark" };
	{ 6, 0, "INV_Cask_04", "=q6=#n132#" };
	{ 7, 33031, "", "=q1=Thunder 45" };
	{ 8, 33032, "", "=q1=Thunderbrew Ale" };
	{ 9, 33033, "", "=q1=Thunderbrew Stout" };
	{ 11, 0, "INV_Cask_04", "=q6=#n133#" };
	{ 12, 33034, "", "=q1=Gordok Grog" };
	{ 13, 33036, "", "=q1=Mudder's Milk" };
	{ 14, 33035, "", "=q1=Ogre Mead" };
	{ 16, 0, "INV_Cask_04", "=q6=#n134#" };
	{ 17, 34017, "", "=q1=Small Step Brew" };
	{ 18, 34018, "", "=q1=Long Stride Brew" };
	{ 19, 34019, "", "=q1=Path of Brew" };
	{ 21, 0, "INV_Cask_04", "=q6=#n135#" };
	{ 22, 34020, "", "=q1=Jungle River Water" };
	{ 23, 34021, "", "=q1=Brewdoo Magic" };
	{ 24, 34022, "", "=q1=Stout Shrunken Head" };
};

brewfest.d = {
	Name = AL["Brew of the Month Club"];
	{ 1, 37488, "", "=q1=Wild Winter Pilsner", "=ds=#month1#" };
	{ 2, 37489, "", "=q1=Izzard's Ever Flavor", "=ds=#month2#" };
	{ 3, 37490, "", "=q1=Aromatic Honey Brew", "=ds=#month3#" };
	{ 4, 37491, "", "=q1=Metok's Bubble Bock", "=ds=#month4#" };
	{ 5, 37492, "", "=q1=Springtime Stout", "=ds=#month5#" };
	{ 6, 37493, "", "=q1=Blackrock Lager", "=ds=#month6#" };
	{ 16, 37494, "", "=q1=Stranglethorn Brew", "=ds=#month7#" };
	{ 17, 37495, "", "=q1=Draenic Pale Ale", "=ds=#month8#" };
	{ 18, 37496, "", "=q1=Binary Brew", "=ds=#month9#" };
	{ 19, 37497, "", "=q1=Autumnal Acorn Ale", "=ds=#month10#" };
	{ 20, 37498, "", "=q1=Bartlett's Bitter Brew", "=ds=#month11#" };
	{ 21, 37499, "", "=q1=Lord of Frost's Private Label", "=ds=#month12#" };
};

brewfest.corenCLASSIC = {
	Name = AL["Coren Direbrew"];
	{ 1, 2037128, "", "=q4=Balebrew Charm" };
	{ 2, 2037127, "", "=q4=Brightbrew Charm" };
	{ 3, 2038289, "", "=q4=Coren's Lucky Coin" };
	{ 4, 2038290, "", "=q4=Dark Iron Smoking Pipe" };
	{ 5, 2038288, "", "=q4=Direbrew Hops" };
	{ 6, 2038287, "", "=q4=Empty Mug Of Direbrew" };
	{ 7, 2037597, "", "=q4=Direbrew's Shanker" };
	{ 16, 38281, "", "=q1=Direbrew's Dire Brew" };
	{ 17, 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#" };
	{ 19, 37828, "", "=q4=Great Brewfest Kodo" };
	{ 20, 33977, "", "=q4=Swift Brewfest Ram" };
	{ 21, 37863, "", "=q3=Direbrew's Remote" };
	{ 22, 38281, "", "=q1=Direbrew's Dire Brew" };
};

brewfest.corenTBC = {
	Name = AL["Coren Direbrew"];
	{ 1, 37128, "", "=q4=Balebrew Charm" };
	{ 2, 37127, "", "=q4=Brightbrew Charm" };
	{ 3, 38289, "", "=q4=Coren's Lucky Coin" };
	{ 4, 38290, "", "=q4=Dark Iron Smoking Pipe" };
	{ 5, 38288, "", "=q4=Direbrew Hops" };
	{ 6, 38287, "", "=q4=Empty Mug Of Direbrew" };
	{ 7, 37597, "", "=q4=Direbrew's Shanker" };
	{ 16, 38281, "", "=q1=Direbrew's Dire Brew" };
	{ 17, 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#" };
	{ 19, 37828, "", "=q4=Great Brewfest Kodo" };
	{ 20, 33977, "", "=q4=Swift Brewfest Ram" };
	{ 21, 37863, "", "=q3=Direbrew's Remote" };
	{ 22, 38281, "", "=q1=Direbrew's Dire Brew" };
};

brewfest.corenWRATH = {
	Name = AL["Coren Direbrew"];
	{ 1, 49078, "", "=q4=Ancient Pickled Egg" };
	{ 2, 49118, "", "=q4=Bubbling Balebrew Charm" };
	{ 3, 49116, "", "=q4=Bitter Brightbrew Charm" };
	{ 4, 49080, "", "=q4=Brawler's Souvenir" };
	{ 5, 49074, "", "=q4=Coren's Chromium Coaster" };
	{ 6, 49076, "", "=q4=Mithril Pocketwatch" };
	{ 7, 49120, "", "=q4=Direbrew's Shanker 2.0" };
	{ 8, 48663, "", "=q4=Tankard O' Terror" };
	{ 16, 38281, "", "=q1=Direbrew's Dire Brew" };
	{ 17, 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#" };
	{ 19, 37828, "", "=q4=Great Brewfest Kodo" };
	{ 20, 33977, "", "=q4=Swift Brewfest Ram" };
	{ 21, 37863, "", "=q3=Direbrew's Remote" };
	{ 22, 38281, "", "=q1=Direbrew's Dire Brew" };
};

AtlasLoot_Data["BrewfestCLASSIC"] = {
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenCLASSIC;
};

AtlasLoot_Data["BrewfestTBC"] = {
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenTBC;
};

AtlasLoot_Data["BrewfestWRATH"] = {
	Name = AL["Brewfest"];
	brewfest.a;
	brewfest.b;
	brewfest.c;
	brewfest.d;
	brewfest.corenWRATH;
};

-----------------------
--- Children's Week ---
-----------------------

AtlasLoot_Data["ChildrensWeek"] = {
	Name = AL["Children's Week"];
	{
		Name = AL["Children's Week"];
		{ 1, 0, "INV_Box_01", "=q6=#z24#" };
		{ 2, 23007, "", "=q1=Piglet's Collar" };
		{ 3, 23015, "", "=q1=Rat Cage" };
		{ 4, 23002, "", "=q1=Turtle Box" };
		{ 5, 23022, "", "=q1=Curmudgeon's Payoff" };
		{ 7, 0, "INV_Box_01", "=q6=#z25#" };
		{ 8, 32616, "", "=q3=Egbert's Egg" };
		{ 9, 32622, "", "=q3=Elekk Training Collar" };
		{ 10, 32617, "", "=q3=Sleepy Willy" };
		{ 16, 0, "INV_Box_01", "=q6=#z40#" };
		{ 17, 46545, "", "=q3=Curious Oracle Hatchling" };
		{ 18, 46544, "", "=q3=Curious Wolvar Pup" };
	};
};

-----------------------
--- Day of the Dead ---
-----------------------

AtlasLoot_Data["DayoftheDead"] = {
	Name = AL["Day of the Dead"];
	{
		Name = AL["Day of the Dead"];
		{ 1, 46831, "", "=q1=Macabre Marionette", "=q1=#m4#: =ds=#m20#" };
		{ 3, 46860, "", "=q1=Whimsical Skull Mask", "=ds=#s1#, 5 #copper#" };
		{ 4, 46861, "", "=q1=Bouquet of Orange Marigolds", "=ds=#s15#, 1 #gold#" };
		{ 5, 46690, "", "=q1=Candy Skull", "=ds=#m20#, 5 #copper#" };
		{ 6, 46711, "", "=q1=Spirit Candle", "=ds=#m20#, 30 #copper#" };
		{ 7, 46718, "", "=q1=Orange Marigold", "=ds=#m20#, 10 #copper#" };
		{ 9, 46710, "", "=q1=Recipe: Bread of the Dead", "=ds=#p3# (1), 20 #silver#" };
		{ 10, 46691, "", "=q1=Bread of the Dead" };
	};
};

----------------------------
--- Feast of Winter Veil ---
----------------------------

AtlasLoot_Data["Winterviel"] = {
	Name = AL["Feast of Winter Veil"];
	{
		Name = AL["Miscellaneous"];
		{ 1, 21525, "", "=q2=Green Winter Hat", "=ds=#s1# =q2=#z7#" };
		{ 2, 21524, "", "=q2=Red Winter Hat", "=ds=#s1# =q2=#z7#" };
		{ 3, 17712, "", "=q1=Winter Veil Disguise Kit", "=q1=#m4#: =ds=#m20#" };
		{ 4, 17202, "", "=q1=Snowball" };
		{ 5, 34191, "", "=q1=Handful of Snowflakes" };
		{ 6, 21212, "", "=q1=Fresh Holly" };
		{ 7, 21519, "", "=q1=Mistletoe" };
		{ 9, 0, "INV_Holiday_Christmas_Present_01", "=q6=#n129#" };
		{ 10, 34262, "", "=q2=Pattern: Winter Boots", "=ds=#p7# (285)" };
		{ 11, 34319, "", "=q2=Pattern: Red Winter Clothes", "=ds=#p8# (250)" };
		{ 12, 34261, "", "=q2=Pattern: Green Winter Clothes", "=ds=#p8# (250)" };
		{ 13, 34413, "", "=q1=Recipe: Hot Apple Cider", "#p3# (325)" };
		{ 14, 17201, "", "=q1=Recipe: Egg Nog", "=ds=#p3# (35)" };
		{ 15, 17200, "", "=q1=Recipe: Gingerbread Cookie", "=ds=#p3# (1)" };
		{ 16, 17344, "", "=q1=Candy Cane" };
		{ 17, 17406, "", "=q1=Holiday Cheesewheel" };
		{ 18, 17407, "", "=q1=Graccu's Homemade Meat Pie" };
		{ 19, 17408, "", "=q1=Spicy Beefstick" };
		{ 20, 34410, "", "=q1=Honeyed Holiday Ham" };
		{ 21, 17404, "", "=q1=Blended Bean Brew" };
		{ 22, 17405, "", "=q1=Green Garden Tea" };
		{ 23, 34412, "", "=q1=Sparkling Apple Cider" };
		{ 24, 17196, "", "=q1=Holiday Spirits" };
		{ 25, 17403, "", "=q1=Steamwheedle Fizzy Spirits" };
		{ 26, 17402, "", "=q1=Greatfather's Winter Ale" };
		{ 27, 17194, "", "=q1=Holiday Spices", "=ds=#e6#" };
		{ 28, 17303, "", "=q1=Blue Ribboned Wrapping Paper", "=ds=#e6#" };
		{ 29, 17304, "", "=q1=Green Ribboned Wrapping Paper", "=ds=#e6#" };
		{ 30, 17307, "", "=q1=Purple Ribboned Wrapping Paper", "=ds=#e6#" };
	};
	{
		Name = "Presents";
		{ 1, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x19#" };
		{ 2, 21301, "", "=q1=Green Helper Box" };
		{ 3, 21308, "", "=q1=Jingling Bell" };
		{ 4, 21305, "", "=q1=Red Helper Box" };
		{ 5, 21309, "", "=q1=Snowman Kit" };
		{ 7, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x20#" };
		{ 8, 21328, "", "=q1=Wand of Holiday Cheer" };
		{ 10, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x35#" };
		{ 11, 34425, "", "=q3=Clockwork Rocket Bot" };
		{ 13, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x22#" };
		{ 14, 21235, "", "=q1=Winter Veil Roast" };
		{ 15, 21241, "", "=q1=Winter Veil Eggnog" };
		{ 16, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x21#" };
		{ 17, 21325, "", "=q2=Mechanical Greench", "=ds=#e22#" };
		{ 18, 21213, "", "=q2=Preserved Holly" };
		{ 19, 17706, "", "=q2=Plans: Edge of Winter", "=ds=#p2# (190)" };
		{ 20, 17725, "", "=q2=Formula: Enchant Weapon - Winter's Might", "=ds=#p4# (190)" };
		{ 21, 17720, "", "=q2=Schematic: Snowmaster 9000", "=ds=#p5# (190)" };
		{ 22, 17722, "", "=q2=Pattern: Gloves of the Greatfather", "=ds=#p7# (190)" };
		{ 23, 17709, "", "=q1=Recipe: Elixir of Frost Power", "=ds=#p1# (190)" };
		{ 24, 17724, "", "=q1=Pattern: Green Holiday Shirt", "=ds=#p8# (190)" };
		{ 26, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x34#" };
		{ 27, 21254, "", "=q1=Winter Veil Cookie" };
		{ 29, 0, "INV_Holiday_Christmas_Present_01", "=q6=#x36#" };
		{ 30, 21215, "", "=q1=Graccu's Mince Meat Fruitcake" };
	};
};

--------------------
--- Hallow's End ---
--------------------
local HorsemanCLASSIC = {
	Name = AL["Headless Horseman"];
	{ 1, 2033808, "", "=q4=The Horseman's Helm" };
	{ 2, 2034075, "", "=q4=Ring of Ghoulish Delight" };
	{ 3, 2034073, "", "=q4=The Horseman's Signet Ring" };
	{ 4, 2034074, "", "=q4=Witching Band" };
	{ 5, 2038175, "", "=q4=The Horseman's Blade" };
	{ 16, 34068, "", "=q1=Weighted Jack-o'-Lantern",  droprate = "100%" };
	{ 17, 33226, "", "=q1=Tricky Treat" };
	{ 18, 37012, "", "=q4=The Horseman's Reins" };
	{ 19, 37011, "", "=q3=Magic Broom" };
	{ 20, 33292, "", "=q3=Hallowed Helm" };
	{ 21, 33154, "", "=q3=Sinister Squashling" };
};

local HorsemanTBC = {
	Name = AL["Headless Horseman"];
	{ 1, 33808, "", "=q4=The Horseman's Helm" };
	{ 2, 34075, "", "=q4=Ring of Ghoulish Delight" };
	{ 3, 34073, "", "=q4=The Horseman's Signet Ring" };
	{ 4, 34074, "", "=q4=Witching Band" };
	{ 5, 38175, "", "=q4=The Horseman's Blade" };
	{ 16, 34068, "", "=q1=Weighted Jack-o'-Lantern",  droprate = "100%" };
	{ 17, 33226, "", "=q1=Tricky Treat" };
	{ 18, 37012, "", "=q4=The Horseman's Reins" };
	{ 19, 37011, "", "=q3=Magic Broom" };
	{ 20, 33292, "", "=q3=Hallowed Helm" };
	{ 21, 33154, "", "=q3=Sinister Squashling" };
};

local HorsemanWRATH = {
	Name = AL["Headless Horseman"];
	{ 1, 49126, "", "=q4=The Horseman's Horrific Helm" };
	{ 2, 49121, "", "=q4=Ring of Ghoulish Glee" };
	{ 3, 49123, "", "=q4=The Horseman's Seal" };
	{ 4, 49124, "", "=q4=Wicked Witch's Band" };
	{ 5, 49128, "", "=q4=The Horseman's Baleful Blade" };
	{ 16, 34068, "", "=q1=Weighted Jack-o'-Lantern",  droprate = "100%" };
	{ 17, 33226, "", "=q1=Tricky Treat" };
	{ 18, 37012, "", "=q4=The Horseman's Reins" };
	{ 19, 37011, "", "=q3=Magic Broom" };
	{ 20, 33292, "", "=q3=Hallowed Helm" };
	{ 21, 33154, "", "=q3=Sinister Squashling" };
}

local HallowsEnd = {
	Name = AL["Miscellaneous"];
	{ 1, 33117, "", "=q3=Jack-o'-Lantern", "=ds=#m14# #e1# =q2=#z7#" };
	{ 2, 20400, "", "=q2=Pumpkin Bag", "=ds=#m13# #e1# =q2=#z7#" };
	{ 4, 33189, "", "=q2=Rickety Magic Broom" };
	{ 6, 18633, "", "=q1=Styleen's Sour Suckerpop" };
	{ 7, 18632, "", "=q1=Moonbrook Riot Taffy" };
	{ 8, 18635, "", "=q1=Bellara's Nutterbar" };
	{ 9, 20557, "", "=q1=Hallow's End Pumpkin Treat" };
	{ 11, 0, "inv_gauntlets_06", "=q6=#x40#" };
	{ 12, 37585, "", "=q3=Chewy Fel Taffy" };
	{ 13, 37583, "", "=q3=G.N.E.R.D.S." };
	{ 14, 37582, "", "=q1=Pyroblast Cinnamon Ball" };
	{ 15, 37584, "", "=q1=Soothing Spearmint Candy" };
	{ 16, 0, "INV_Misc_Bag_11", "=q6=#x18#" };
	{ 17, 33292, "", "=q3=Hallowed Helm" };
	{ 18, 33154, "", "=q3=Sinister Squashling" };
	{ 19, 20410, "", "=q1=Hallowed Wand - Bat" };
	{ 20, 20409, "", "=q1=Hallowed Wand - Ghost" };
	{ 21, 20399, "", "=q1=Hallowed Wand - Leper Gnome" };
	{ 22, 20398, "", "=q1=Hallowed Wand - Ninja" };
	{ 23, 20397, "", "=q1=Hallowed Wand - Pirate" };
	{ 24, 20413, "", "=q1=Hallowed Wand - Random" };
	{ 25, 20411, "", "=q1=Hallowed Wand - Skeleton" };
	{ 26, 20414, "", "=q1=Hallowed Wand - Wisp" };
	{ 27, 20389, "", "=q1=Candy Corn" };
	{ 28, 20388, "", "=q1=Lollipop" };
	{ 29, 20390, "", "=q1=Candy Bar" };
};

local HallowsEndMasks = {
	Name = "Masks";
	{ 1, 0, "INV_Misc_Bag_11", "=q6=#x18#" };
	{ 2, 34003, "", "=q1=Flimsy Male Draenei Mask" };
	{ 3, 20561, "", "=q1=Flimsy Male Dwarf Mask" };
	{ 4, 20391, "", "=q1=Flimsy Male Gnome Mask" };
	{ 5, 20566, "", "=q1=Flimsy Male Human Mask" };
	{ 6, 20564, "", "=q1=Flimsy Male Nightelf Mask" };
	{ 7, 34002, "", "=q1=Flimsy Male Blood Elf Mask" };
	{ 8, 20570, "", "=q1=Flimsy Male Orc Mask" };
	{ 9, 20572, "", "=q1=Flimsy Male Tauren Mask" };
	{ 10, 20568, "", "=q1=Flimsy Male Troll Mask" };
	{ 11, 20573, "", "=q1=Flimsy Male Undead Mask" };
	{ 17, 34001, "", "=q1=Flimsy Female Draenei Mask" };
	{ 18, 20562, "", "=q1=Flimsy Female Dwarf Mask" };
	{ 19, 20392, "", "=q1=Flimsy Female Gnome Mask" };
	{ 20, 20565, "", "=q1=Flimsy Female Human Mask" };
	{ 21, 20563, "", "=q1=Flimsy Female Nightelf Mask" };
	{ 22, 34000, "", "=q1=Flimsy Female Blood Elf Mask" };
	{ 23, 20569, "", "=q1=Flimsy Female Orc Mask" };
	{ 24, 20571, "", "=q1=Flimsy Female Tauren Mask" };
	{ 25, 20567, "", "=q1=Flimsy Female Troll Mask" };
	{ 26, 20574, "", "=q1=Flimsy Female Undead Mask" };
};

AtlasLoot_Data["HalloweenCLASSIC"] = {
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanCLASSIC;
};

AtlasLoot_Data["HalloweenTBC"] = {
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanTBC;
};

AtlasLoot_Data["HalloweenWRATH"] = {
	Name = AL["Hallow's End"];
	HallowsEnd;
	HallowsEndMasks;
	HorsemanWRATH;
};

------------------------
--- Harvest Festival ---
------------------------

AtlasLoot_Data["HarvestFestival"] = {
	Name = AL["Harvest Festival"];
	{
		Name = AL["Harvest Festival"];
		{ 1, 19697, "", "=q1=Bounty of the Harvest", "=q1=#m4#: =ds=#m20#" };
		{ 2, 20009, "", "=q1=For the Light!", "=q1=#m4#: =ds=#e10# =ec1=#m7#" };
		{ 3, 20010, "", "=q1=The Horde's Hellscream", "=q1=#m4#: =ds=#e10# =ec1=#m6#" };
		{ 5, 19995, "", "=q1=Harvest Boar" };
		{ 6, 19996, "", "=q1=Harvest Fish" };
		{ 7, 19994, "", "=q1=Harvest Fruit" };
		{ 8, 19997, "", "=q1=Harvest Nectar" };
	};
};

--------------------------
--- Love is in the Air ---
--------------------------

AtlasLoot_Data["Valentineday"] = {
	Name = AL["Love is in the Air"];
	{
		Name = AL["Love is in the Air"] .. " 1";
		{ 1, 34480, "", "=q3=Romantic Picnic Basket", "=ds=#m20#, 10 #valentineday#" };
		{ 2, 21815, "", "=q1=Love Token", "", "=ds=#m20#, 1 #valentineday2#" };
		{ 3, 50163, "", "=q1=Lovely Rose", "", "=ds=#m20#, 5 #valentineday#" };
		{ 4, 22218, "", "=q1=Handful of Rose Petals", "=ds=#m20#, 2 #valentineday#" };
		{ 5, 22200, "", "=q1=Silver Shafted Arrow", "=ds=#e13#, 5 #valentineday#" };
		{ 6, 22235, "", "=q1=Truesilver Shafted Arrow", "=ds=#e13#, 40 #valentineday#" };
		{ 7, 21813, "", "=q1=Bag of Heart Candies", "=ds=#m20#, 2 #valentineday#" };
		{ 8, 21812, "", "=q1=Box of Chocolates", "=ds=#m20#, 10 #valentineday#" };
		{ 9, 50160, "", "=q1=Lovely Dress Box", "=ds=#m20#, 20 #valentineday#" };
		{ 10, 50161, "", "=q1=Dinner Suit Box", "=ds=#m20#, 20 #valentineday#" };
		{ 11, 34258, "", "=q1=Love Rocket", "=ds=#e23#, 5 #valentineday#" };
		{ 12, 22261, "", "=q1=Love Fool", "=ds=#e22#, 10 #valentineday#" };
		{ 16, 49859, "", "=q1=\"Bravado\" Cologne", "=ds=#m20#, 1 #valentineday#" };
		{ 17, 49861, "", "=q1=\"STALWART\" Cologne", "=ds=#m20#, 1 #valentineday#" };
		{ 18, 49860, "", "=q1=\"Wizardry\" Cologne", "=ds=#m20#, 1 #valentineday#" };
		{ 19, 49856, "", "=q1=\"VICTORY\" Perfume", "=ds=#m20#, 1 #valentineday#" };
		{ 20, 49858, "", "=q1=\"Forever\" Perfume", "=ds=#m20#, 1 #valentineday#" };
		{ 21, 49857, "", "=q1=\"Enchantress\" Perfume", "=ds=#m20#, 1 #valentineday#" };
		{ 23, 21815, "", "=q1=Love Token" };
		{ 24, 49916, "", "=q1=Lovely Charm Bracelet" };
	};
	{
		Name = AL["Love is in the Air"] .. " 2";
		{ 1, 0, "INV_Box_02", "=q6=" .. AL["Lovely Dress Box"] };
		{ 2, 22279, "", "=q1=Lovely Black Dress" };
		{ 3, 22276, "", "=q1=Lovely Red Dress" };
		{ 4, 22278, "", "=q1=Lovely Blue Dress" };
		{ 5, 22280, "", "=q1=Lovely Purple Dress" };
		{ 7, 0, "INV_Box_01", "=q6=" .. AL["Dinner Suit Box"] };
		{ 8, 22277, "", "=q1=Red Dinner Suit", "=q1=#m4#: =ds=#s5#" };
		{ 9, 22281, "", "=q1=Blue Dinner Suit", "=q1=#m4#: =ds=#s5#" };
		{ 10, 22282, "", "=q1=Purple Dinner Suit", "=q1=#m4#: =ds=#s5#" };
		{ 16, 0, "INV_ValentinesBoxOfChocolates02", "=q6=#x17#" };
		{ 17, 22237, "", "=q1=Dark Desire" };
		{ 18, 22238, "", "=q1=Very Berry Cream" };
		{ 19, 22236, "", "=q1=Buttermilk Deligh" };
		{ 20, 22239, "", "=q1=Sweet Surprise " };
		{ 22, 0, "inv_valentinescandysack", "=q6=" .. AL["Bag of Heart Candies"] };
		{ 23, 21816, "", "=q1=Heart Candy" };
		{ 24, 21817, "", "=q1=Heart Candy" };
		{ 25, 21818, "", "=q1=Heart Candy" };
		{ 26, 21819, "", "=q1=Heart Candy" };
		{ 27, 21820, "", "=q1=Heart Candy" };
		{ 28, 21821, "", "=q1=Heart Candy" };
		{ 29, 21822, "", "=q1=Heart Candy" };
		{ 30, 21823, "", "=q1=Heart Candy" };
	};
	{
		Name = AL["Love is in the Air"] .. " 3";
		{ 1, 51804, "", "=q4=Winking Eye of Love" };
		{ 2, 51805, "", "=q4=Heartbreak Charm" };
		{ 3, 51806, "", "=q4=Shard of Pirouetting Happiness" };
		{ 4, 51807, "", "=q4=Sweet Perfume Broach" };
		{ 5, 51808, "", "=q4=Choker of the Pure Heart" };
		{ 7, 49715, "", "=q3=Forever-Lovely Rose" };
		{ 8, 50741, "", "=q3=Vile Fumigator's Mask" };
		{ 16, 50446, "", "=q3=Toxic Wasteling" };
		{ 17, 50471, "", "=q3=The Heartbreaker" };
		{ 19, 50250, "", "=q4=Big Love Rocket" };
	};
};

----------------------
--- Lunar Festival ---
----------------------

AtlasLoot_Data["LunarFestival"] = {
	Name = AL["Lunar Festival"];
	{
		Name = AL["Miscellaneous"];
		{ 1, 21540, "", "=q2=Elune's Lantern", "=q1=#m4#: =ds=#m20#" };
		{ 3, 21157, "", "=q1=Festive Green Dress" };
		{ 4, 21538, "", "=q1=Festive Pink Dress" };
		{ 5, 21539, "", "=q1=Festive Purple Dress" };
		{ 7, 21541, "", "=q1=Festive Black Pant Suit" };
		{ 8, 21544, "", "=q1=Festive Blue Pant Suit" };
		{ 9, 21543, "", "=q1=Festive Teal Pant Suit" };
		{ 11, 21537, "", "=q1=Festival Dumplings" };
		{ 13, 21713, "", "=q1=Elune's Candle" };
		{ 15, 21100, "", "=q1=Coin of Ancestry" };
		{ 16, 0, "INV_Box_02", "=q6=#x24#", "=ds=#e23#" };
		{ 17, 21558, "", "=q1=Small Blue Rocket", "=ds=#e23#" };
		{ 18, 21559, "", "=q1=Small Green Rocket", "=ds=#e23#" };
		{ 19, 21557, "", "=q1=Small Red Rocket", "=ds=#e23#" };
		{ 20, 21561, "", "=q1=Small White Rocket", "=ds=#e23#" };
		{ 21, 21562, "", "=q1=Small Yellow Rocket", "=ds=#e23#" };
		{ 22, 21589, "", "=q1=Large Blue Rocket", "=ds=#e23#" };
		{ 23, 21590, "", "=q1=Large Green Rocket", "=ds=#e23#" };
		{ 24, 21592, "", "=q1=Large Red Rocket", "=ds=#e23#" };
		{ 25, 21593, "", "=q1=Large White Rocket", "=ds=#e23#" };
		{ 26, 21595, "", "=q1=Large Yellow Rocket", "=ds=#e23#" };
		{ 28, 0, "INV_Misc_LuckyMoneyEnvelope", "=q6=#x25#" };
		{ 29, 21744, "", "=q1=Lucky Rocket Cluster", "=ds=#e23#" };
		{ 30, 21745, "", "=q1=Elder's Moonstone" };
	};
	{
		Name = AL["Crafting Patterns"];
		{ 1, 21738, "", "=q2=Schematic: Firework Launcher ", "=ds=#p5# (225)" };
		{ 3, 0, "INV_Scroll_03", "=q6=#x26#" };
		{ 4, 21724, "", "=q2=Schematic: Small Blue Rocket", "=ds=#p5# (125)" };
		{ 5, 21725, "", "=q2=Schematic: Small Green Rocket", "=ds=#p5# (125)" };
		{ 6, 21726, "", "=q2=Schematic: Small Red Rocket", "=ds=#p5# (125)" };
		{ 8, 0, "INV_Scroll_04", "=q6=#x27#" };
		{ 9, 21727, "", "=q2=Schematic: Large Blue Rocket", "=ds=#p5# (175)" };
		{ 10, 21728, "", "=q2=Schematic: Large Green Rocket", "=ds=#p5# (175)" };
		{ 11, 21729, "", "=q2=Schematic: Large Red Rocket", "=ds=#p5# (175)" };
		{ 13, 21722, "", "=q2=Pattern: Festival Dress", "=ds=#p8# (250)" };
		{ 16, 21737, "", "=q2=Schematic: Cluster Launcher", "=ds=#p5# (275)" };
		{ 18, 0, "INV_Scroll_05", "=q6=#x28#" };
		{ 19, 21730, "", "=q2=Schematic: Blue Rocket Cluster", "=ds=#p5# (225)" };
		{ 20, 21731, "", "=q2=Schematic: Green Rocket Cluster", "=ds=#p5# (225)" };
		{ 21, 21732, "", "=q2=Schematic: Red Rocket Cluster", "=ds=#p5# (225)" };
		{ 23, 0, "INV_Scroll_06", "=q6=#x29#" };
		{ 24, 21733, "", "=q2=Schematic: Large Blue Rocket Cluster", "=ds=#p5# (275)" };
		{ 25, 21734, "", "=q2=Schematic: Large Green Rocket Cluster", "=ds=#p5# (275)" };
		{ 26, 21735, "", "=q2=Schematic: Large Red Rocket Cluster", "=ds=#p5# (275)" };
		{ 28, 21723, "", "=q2=Pattern: Festival Suit", "=ds=#p8# (250)" };
	};
};

-------------------------------
--- Midsummer Fire Festival ---
-------------------------------

local lordAhuneTBC = {
	Name = AL["Lord Ahune"];
	{ 1, 35507, "", "=q4=Amulet of Bitter Hatred" };
	{ 2, 35509, "", "=q4=Amulet of Glacial Tranquility" };
	{ 3, 35508, "", "=q4=Choker of the Arctic Flow" };
	{ 4, 35511, "", "=q4=Hailstone Pendant" };
	{ 6, 35498, "", "=q3=Formula: Enchant Weapon - Deathfrost" };
	{ 7, 34955, "", "=q3=Scorched Stone" };
	{ 9, 35723, "", "=q1=Shards of Ahune" };
	{ 10, 35279, "", "=q3=Tabard of Summer Skies", "=q1=#m4#: =ds=#s7#" };
	{ 11, 35280, "", "=q3=Tabard of Summer Flames", "=q1=#m4#: =ds=#s7#" };
	{ 16, 35497, "", "=q4=Cloak of the Frigid Winds" };
	{ 17, 35496, "", "=q4=Icebound Cloak" };
	{ 18, 35494, "", "=q4=Shroud of Winter's Chill" };
	{ 19, 35495, "", "=q4=The Frost Lord's War Cloak" };
	{ 20, 35514, "", "=q4=Frostscythe of Lord Ahune" };
};

local lordAhuneWRATH = {
	Name = AL["Lord Ahune"];
	{ 1, 54805, "", "=q4=Cloak of the Frigid Winds" };
	{ 2, 54801, "", "=q4=Icebound Cloak" };
	{ 3, 54804, "", "=q4=Shroud of Winter's Chill" };
	{ 4, 54803, "", "=q4=The Frost Lord's Battle Shroud" };
	{ 5, 54802, "", "=q4=The Frost Lord's War Cloak" };
	{ 7, 35498, "", "=q3=Formula: Enchant Weapon - Deathfrost" };
	{ 9, 35723, "", "=q1=Shards of Ahune" };
	{ 10, 35279, "", "=q3=Tabard of Summer Skies", "=q1=#m4#: =ds=#s7#" };
	{ 11, 35280, "", "=q3=Tabard of Summer Flames", "=q1=#m4#: =ds=#s7#" };
	{ 16, 54536, "", "=q3=Satchel of Chilled Goods" };
	{ 17, 54806, "", "=q4=Frostscythe of Lord Ahune" };
	{ 18, 53641, "", "=q3=Ice Chip" };
};

local midSummerMain = {
	Name = AL["Midsummer Fire Festival"];
	{ 1, 34686, "", "=q3=Brazier of Dancing Flames", "350 #fireflower#" };
	{ 2, 23083, "", "=q3=Captured Flame", "=ds=#e13#, 350 #fireflower#" };
	{ 4, 23379, "", "=q2=Cinder Bracers", "=ds=#e22#" };
	{ 6, 23246, "", "=q1=Fiery Festival Brew", "2 #fireflower#" };
	{ 7, 23435, "", "=q1=Elderberry Pie", "5 #fireflower#" };
	{ 8, 23327, "", "=q1=Fire-toasted Bun", "5 #fireflower#" };
	{ 9, 23326, "", "=q1=Midsummer Sausage", "5 #fireflower#" };
	{ 10, 23211, "", "=q1=Toasted Smorc", "5 #fireflower#" };
	{ 11, 34684, "", "=q1=Handful of Summer Petals", "2 #fireflower#" };
	{ 12, 23215, "", "=q1=Bag of Smorc Ingredients", "5 #fireflower#" };
	{ 13, 34599, "", "=q1=Juggling Torch", "5 #fireflower#" };
	{ 15, 23247, "", "=q1=Burning Blossom" };
	{ 16, 23323, "", "=q1=Crown of the Fire Festival", "=ds=#s1#, #a1#, #m4#" };
	{ 17, 23324, "", "=q1=Mantle of the Fire Festival", "=ds=#s3#, 100 #fireflower#" };
	{ 18, 34685, "", "=q1=Vestment of Summer", "=ds=#s5#, 100 #fireflower#" };
	{ 19, 34683, "", "=q1=Sandals of Summer", "=ds=#s11#, 200 #fireflower#" };
}

AtlasLoot_Data["MidsummerFestivalCLASSIC"] = {
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
};

AtlasLoot_Data["MidsummerFestivalTBC"] = {
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
	lordAhuneTBC;
};

AtlasLoot_Data["MidsummerFestivalWRATH"] = {
	Name = AL["Midsummer Fire Festival"];
	midSummerMain;
	lordAhuneWRATH;
};

-------------------
--- Noblegarden ---
-------------------

AtlasLoot_Data["Noblegarden"] = {
	Name = AL["Noblegarden"];
	{
		Name = AL["Noblegarden"];
		{ 2, 44793, "", "=q3=Tome of Polymorph: Rabbit", "=ds=#e10#", "100 #noblegarden#" };
		{ 3, 44794, "", "=q3=Spring Rabbit's Foot", "", "100 #noblegarden#" };
		{ 4, 44803, "", "=q1=Spring Circlet", "", "50 #noblegarden#" };
		{ 5, 19028, "", "=q1=Elegant Dress", "", "50 #noblegarden#" };
		{ 6, 44800, "", "=q1=Spring Robes", "", "50 #noblegarden#" };
		{ 7, 45073, "", "=q1=Spring Flowers", "=ds=#h1#", "50 #noblegarden#" };
		{ 8, 6833, "", "=q1=White Tuxedo Shirt", "=ds=#s6#", "25 #noblegarden#" };
		{ 9, 6835, "", "=q1=Black Tuxedo Pants", "", "25 #noblegarden#" };
		{ 10, 44792, "", "=q1=Blossoming Branch", "", "10 #noblegarden#" };
		{ 11, 44818, "", "=q1=Noblegarden Egg", "", "5 #noblegarden#" };
		{ 13, 45067, "", "=q1=Egg Basket", "=q1=#m4#: =ds=#s15#" };
		{ 14, 44791, "", "=q1=Noblegarden Chocolate" };
	};
};
------------------------
--- Pilgrim's Bounty ---
------------------------

AtlasLoot_Data["PilgrimsBounty"] = {
	Name = AL["Pilgrim's Bounty"];
	{
		Name = AL["Pilgrim's Bounty"];
		{ 1, 46809, "", "=q2=Bountiful Cookbook", "=ds=#p3# #e10# (1)" };
		{ 2, 44860, "", "=q1=Recipe: Spice Bread Stuffing", "=ds=#p3# (1)" };
		{ 3, 44862, "", "=q1=Recipe: Pumpkin Pie", "=ds=#p3# (100)" };
		{ 4, 44858, "", "=q1=Recipe: Cranberry Chutney", "=ds=#p3# (160)" };
		{ 5, 44859, "", "=q1=Recipe: Candied Sweet Potato", "=ds=#p3# (220)" };
		{ 6, 44861, "", "=q1=Recipe: Slow-Roasted Turkey", "=ds=#p3# (280)" };
		{ 7, 46888, "", "=q1=Bountiful Basket", "=ds=#e3#, #p3# (350)" };
		{ 8, 44855, "", "=q1=Teldrassil Sweet Potato" };
		{ 9, 44854, "", "=q1=Tangy Wetland Cranberries" };
		{ 10, 46784, "", "=q1=Ripe Elwynn Pumpkin" };
		{ 11, 44835, "", "=q1=Autumnal Herbs", "=ds=#e6#" };
		{ 12, 44853, "", "=q1=Honey", "=ds=#e6#" };
		{ 16, 44810, "", "=q3=Turkey Cage", "=q1=#m32#: =ds=#e13#" };
		{ 17, 46723, "", "=q1=Pilgrim's Hat", "=q1=#m4#: =ds=#s1#" };
		{ 18, 46800, "", "=q1=Pilgrim's Attire", "=q1=#m4#: =ds=#s5#" };
		{ 19, 44785, "", "=q1=Pilgrim's Dress", "=q1=#m4#: =ds=#s5#" };
		{ 20, 46824, "", "=q1=Pilgrim's Robe", "=q1=#m4#: =ds=#s5#" };
		{ 21, 44788, "", "=q1=Pilgrim's Boots", "=q1=#m4#: =ds=#s12#" };
		{ 22, 44844, "", "=q1=Turkey Caller", "=q1=#m4#: =ds=" };
	};
};

--------------------------
--- Reaccouring Events ---
--------------------------

-------------------------------------
--- Bash'ir Landing Skyguard Raid ---
-------------------------------------

AtlasLoot_Data["BashirLanding"] = {
	Name = "Bash'ir Landing Skyguard";
	{
		Name = AL["Bash'ir Landing Skyguard Raid"];
		{ 1, 0, "INV_Box_01", "=q6=#j16#", "=q1=#n112#" };
		{ 2, 32596, "", "=q1=Unstable Flask of the Elder" };
		{ 3, 32600, "", "=q1=Unstable Flask of the Physician" };
		{ 4, 32599, "", "=q1=Unstable Flask of the Bandit" };
		{ 5, 32597, "", "=q1=Unstable Flask of the Soldier" };
		{ 7, 0, "INV_Box_01", "=q6=#j17#", "=q1=#n113#" };
		{ 8, 32634, "", "=q3=Unstable Amethyst" };
		{ 9, 32637, "", "=q3=Unstable Citrine" };
		{ 10, 32635, "", "=q3=Unstable Peridot" };
		{ 11, 32636, "", "=q3=Unstable Sapphire" };
		{ 12, 32639, "", "=q3=Unstable Talasite" };
		{ 13, 32638, "", "=q3=Unstable Topaz" };
		{ 16, 0, "INV_Box_01", "=q6=#j18#", "=q1=#n114#" };
		{ 17, 32641, "", "=q3=Imbued Unstable Diamond" };
		{ 18, 32640, "", "=q3=Potent Unstable Diamond" };
		{ 19, 32759, "", "=q1=Accelerator Module" };
		{ 20, 32630, "", "=q1=Small Gold Metamorphosis Geode" };
		{ 21, 32631, "", "=q1=Small Silver Metamorphosis Geode" };
		{ 22, 32627, "", "=q1=Small Copper Metamorphosis Geode" };
		{ 23, 32625, "", "=q1=Small Iron Metamorphosis Geode" };
		{ 24, 32629, "", "=q1=Large Gold Metamorphosis Geode" };
		{ 25, 32628, "", "=q1=Large Silver Metamorphosis Geode" };
		{ 26, 32626, "", "=q1=Large Copper Metamorphosis Geode" };
		{ 27, 32624, "", "=q1=Large Iron Metamorphosis Geode" };
	};
};
----------------------
--- Darkmoon Faire ---
----------------------

AtlasLoot_Data["Darkmoon"] = {
	Name = BabbleFaction["Darkmoon Faire"];
	{
		Name = AL["Darkmoon Faire Rewards"];
		{ 1, 19491, "", "=q4=Amulet of the Darkmoon", "", "1200 #darkmoon#" };
		{ 2, 19426, "", "=q4=Orb of the Darkmoon", "", "1200 #darkmoon#" };
		{ 3, 19296, "", "=q2=Greater Darkmoon Prize", "40 #darkmoon#" };
		{ 4, 19297, "", "=q2=Lesser Darkmoon Prize", "12 #darkmoon#" };
		{ 5, 19298, "", "=q2=Minor Darkmoon Prize", "5 #darkmoon#" };
		{ 6, 19291, "", "=q1=Darkmoon Storage Box", "50 #darkmoon#" };
		{ 7, 19293, "", "=q1=Last Year's Mutton", "", "50 #darkmoon#" };
		{ 8, 22729, "", "=q1=Schematic: Steam Tonk Controller", "=ds=#p5# (275)", "40 #darkmoon#" };
		{ 9, 19292, "", "=q1=Last Month's Mutton", "", "10 #darkmoon#" };
		{ 10, 19295, "", "=q1=Darkmoon Flower", "", "5 #darkmoon#" };
		{ 12, 19182, "", "=q1=Darkmoon Faire Prize Ticket" };
		{ 16, 19302, "", "=q3=Darkmoon Ring" };
		{ 17, 19303, "", "=q2=Darkmoon Necklace" };
		{ 19, 11026, "", "=q1=Tree Frog Box" };
		{ 20, 11027, "", "=q1=Wood Frog Box" };
		{ 21, 19450, "", "=q1=A Jubling's Tiny Home", "=q1=#m4#: =ds=#e13#" };
	};
	{
		Name = AL["Low Level Decks"];
		{ 1, 37163, "", "=q2=Rogues Deck" };
		{ 2, 38318, "", "=q2=Darkmoon Robe", "=q1=#m4#: =ds=#s5#, #a1# =q2=#m16#" };
		{ 3, 39509, "", "=q2=Darkmoon Vest", "=q1=#m4#: =ds=#s5#, #a2# =q2=#m16#" };
		{ 4, 39507, "", "=q2=Darkmoon Chain Shirt", "=q1=#m4#: =ds=#s5#, #a3# =q2=#m16#" };
		{ 6, 37164, "", "=q3=Swords Deck" };
		{ 7, 39894, "", "=q3=Darkcloth Shoulders", "=q1=#m4#: =ds=#s3#, #a1# =q2=#m16#" };
		{ 8, 39895, "", "=q3=Cloaked Shoulderpads", "=q1=#m4#: =ds=#s3#, #a2# =q2=#m16#" };
		{ 9, 39897, "", "=q3=Azure Shoulderguards", "=q1=#m4#: =ds=#s3#, #a3# =q2=#m16#" };
		{ 16, 44148, "", "=q3=Mages Deck" };
		{ 17, 44215, "", "=q3=Darkmoon Necklace" };
		{ 18, 44213, "", "=q3=Darkmoon Pendant" };
		{ 21, 44158, "", "=q3=Demons Deck" };
		{ 22, 44217, "", "=q3=Darkmoon Dirk", "=q1=#m4#: =ds=#h1#, #w4#" };
		{ 23, 44218, "", "=q3=Darkmoon Executioner", "=q1=#m4#: =ds=#h2#, #w1#" };
		{ 24, 44219, "", "=q3=Darkmoon Magestaff", "=q1=#m4#: =ds=#w9#" };
	};
	{
		Name = AL["Original and BC Trinkets"];
		{ 1, 19228, "", "=q4=Beasts Deck" };
		{ 2, 19288, "", "=q4=Darkmoon Card: Blue Dragon" };
		{ 4, 19267, "", "=q4=Elementals Deck" };
		{ 5, 19289, "", "=q4=Darkmoon Card: Maelstrom" };
		{ 7, 19277, "", "=q4=Portals Deck" };
		{ 8, 19290, "", "=q4=Darkmoon Card: Twisting Nether" };
		{ 10, 19257, "", "=q4=Warlords Deck" };
		{ 11, 19287, "", "=q4=Darkmoon Card: Heroism" };
		{ 16, 31890, "", "=q4=Blessings Deck" };
		{ 17, 31856, "", "=q4=Darkmoon Card: Crusade" };
		{ 19, 31907, "", "=q4=Furies Deck" };
		{ 20, 31858, "", "=q4=Darkmoon Card: Vengeance" };
		{ 22, 31914, "", "=q4=Lunacy Deck" };
		{ 23, 31859, "", "=q4=Darkmoon Card: Madness" };
		{ 25, 31891, "", "=q4=Storms Deck" };
		{ 26, 31857, "", "=q4=Darkmoon Card: Wrath" };
	};
	{
		Name = AL["WotLK Trinkets"];
		{ 1, 44276, "", "=q4=Chaos Deck" };
		{ 2, 42989, "", "=q4=Darkmoon Card: Berserker!" };
		{ 4, 44259, "", "=q4=Prisms Deck" };
		{ 5, 42988, "", "=q4=Darkmoon Card: Illusion" };
		{ 7, 44294, "", "=q4=Undeath Deck" };
		{ 8, 42990, "", "=q4=Darkmoon Card: Death" };
		{ 16, 44326, "", "=q4=Nobles Deck" };
		{ 17, 44253, "", "=q4=Darkmoon Card: Greatness" };
		{ 18, 42987, "", "=q4=Darkmoon Card: Greatness" };
		{ 19, 44254, "", "=q4=Darkmoon Card: Greatness" };
		{ 20, 44255, "", "=q4=Darkmoon Card: Greatness" };
	};
};

--------------------------
--- Elemental Invasion ---
--------------------------

AtlasLoot_Data["ElementalInvasion"] = {
	Name = AL["Elemental Invasion"];
	{
		Name = AL["Elemental Invasion"];
		{ 1, 0, "INV_Box_01", "=q6=#n108#", "=q1=#j19#, #z20#" };
		{ 2, 18671, "", "=q3=Baron Charr's Sceptre",  "12.18%" };
		{ 3, 19268, "", "=q3=Ace of Elementals", "=ds=#e16#", "", droprate = "10%" };
		{ 4, 18672, "", "=q2=Elemental Ember",  droprate = "53%" };
		{ 6, 0, "INV_Box_01", "=q6=#n109#", "=q1=#j20#, #z21#" };
		{ 7, 18678, "", "=q3=Tempestria's Frozen Necklace",  droprate = "12%" };
		{ 8, 19268, "", "=q3=Ace of Elementals", "=ds=#e16#", "", droprate = "5%" };
		{ 9, 21548, "", "=q3=Pattern: Stormshroud Gloves", "=ds=#p7# (300)", "", droprate = "25%" };
		{ 10, 18679, "", "=q2=Frigid Ring",  droprate = "51%" };
		{ 16, 0, "INV_Box_01", "=q6=#n110#", "=q1=#j22#, #z22#" };
		{ 17, 18673, "", "=q3=Avalanchion's Stony Hide",  droprate = "14%" };
		{ 18, 19268, "", "=q3=Ace of Elementals", "=ds=#e16#", "", droprate = "5%" };
		{ 19, 18674, "", "=q2=Hardened Stone Band",  droprate = "41%" };
		{ 21, 0, "INV_Box_01", "=q6=#n111#", "=q1=#j21#, #z23#" };
		{ 22, 18676, "", "=q3=Sash of the Windreaver",  droprate = "16%" };
		{ 23, 19268, "", "=q3=Ace of Elementals", "=ds=#e16#", "", droprate = "9%" };
		{ 24, 21548, "", "=q3=Pattern: Stormshroud Gloves", "=ds=#p7# (300)", "", droprate = "36%" };
		{ 25, 18677, "", "=q2=Zephyr Cloak",  droprate = "52%" };
	};
};

---------------------------------
--- Gurubashi Arena Booty Run ---
---------------------------------

AtlasLoot_Data["GurubashiArena"] = {
	Name = AL["Gurubashi Arena Booty Run"];
	{
		Name = AL["Gurubashi Arena Booty Run"];
		{ 1, 18709, "", "=q3=Arena Wristguards",  "5.0%" };
		{ 2, 18710, "", "=q3=Arena Bracers",  "6.4%" };
		{ 3, 18711, "", "=q3=Arena Bands",  "6.0%" };
		{ 4, 18712, "", "=q3=Arena Vambraces",  "6.8%" };
		{ 16, 18706, "", "=q2=Arena Master", "=ds=#s14#, =q1=#m2#", "", droprate = "100%" };
		{ 17, 19024, "", "=q3=Arena Grand Master" };
	};
};

------------------------------------------
--- Stranglethorn Fishing Extravaganza ---
------------------------------------------

AtlasLoot_Data["FishingExtravaganza"] = {
	Name = "Stranglethorn Fishing";
	{
		Name = AL["Stranglethorn Fishing Extravaganza"];
		{ 1, 0, "INV_Box_01", "=q6=#j24#", "=q1=#j23#" };
		{ 2, 19970, "", "=q3=Arcanite Fishing Pole", "=ds=#e20#" };
		{ 3, 19979, "", "=q3=Hook of the Master Angler" };
		{ 5, 0, "INV_Box_01", "=q6=#j26#" };
		{ 6, 19805, "", "=q2=Keefer's Angelfish", "=ds=#e21#" };
		{ 7, 19803, "", "=q2=Brownell's Blue Striped Racer", "=ds=#e21#" };
		{ 8, 19806, "", "=q2=Dezian Queenfish", "=ds=#e21#" };
		{ 9, 19808, "", "=q2=Rockhide Strongfish" };
		{ 20, 0, "INV_Box_01", "=q6=#j25#" };
		{ 21, 19972, "", "=q2=Lucky Fishing Hat" };
		{ 22, 19969, "", "=q2=Nat Pagle's Extreme Anglin' Boots" };
		{ 23, 19971, "", "=q2=High Test Eternium Fishing Line", "=ds=#e20# #e17#" };
	};
};

------------------------
--- Triggered Events ---
------------------------

-----------------------
--- Abyssal Council ---
-----------------------

AtlasLoot_Data["AbyssalCouncil"] = {
	Name = AL["Abyssal Council"];
	{
		Name = AL["Templars"];
		{ 1, 0, "INV_Box_01", "=q6=#n96#", "=q1=#j19#" };
		{ 2, 20657, "", "=q3=Crystal Tipped Stiletto",  droprate = "2%" };
		{ 3, 20655, "", "=q2=Abyssal Cloth Handwraps", "=ds=#s9#, #a1#, =q2=#m16#", "", droprate = "13%" };
		{ 4, 20656, "", "=q2=Abyssal Mail Sabatons",  droprate = "12%" };
		{ 5, 20513, "", "=q2=Abyssal Crest",  droprate = "100%" };
		{ 7, 0, "INV_Box_01", "=q6=#n97#", "=q1=#j20#" };
		{ 8, 20654, "", "=q3=Amethyst War Staff",  droprate = "2%" };
		{ 9, 20652, "", "=q2=Abyssal Cloth Slippers",  droprate = "12%" };
		{ 10, 20653, "", "=q2=Abyssal Plate Gauntlets", "=ds=#s9#, #a4# =q2=#m16#", "", droprate = "13%" };
		{ 11, 20513, "", "=q2=Abyssal Crest",  droprate = "100%" };
		{ 16, 0, "INV_Box_01", "=q6=#n98#", "=q1=#j21#" };
		{ 17, 20660, "", "=q3=Stonecutting Glaive",  droprate = "2%" };
		{ 18, 20658, "", "=q2=Abyssal Leather Boots",  droprate = "13%" };
		{ 19, 20659, "", "=q2=Abyssal Mail Handguards", "=ds=#s9#, #a3# =q2=#m16#", "", droprate = "12%" };
		{ 20, 20513, "", "=q2=Abyssal Crest",  droprate = "100%" };
		{ 22, 0, "INV_Box_01", "=q6=#n99#", "=q1=#j22#" };
		{ 23, 20663, "", "=q3=Deep Strike Bow",  droprate = "2%" };
		{ 24, 20661, "", "=q2=Abyssal Leather Gloves", "=ds=#s9#, #a2# =q2=#m16#", "", droprate = "13%" };
		{ 25, 20662, "", "=q2=Abyssal Plate Greaves",  droprate = "12%" };
		{ 26, 20513, "", "=q2=Abyssal Crest",  droprate = "100%" };
	};
	{
		Name = AL["Dukes"];
		{ 1, 0, "INV_Box_01", "=q6=#n100#", "=q1=#j19#" };
		{ 2, 20665, "", "=q3=Abyssal Leather Leggings", "=ds=#s11#, #a2# =q2=#m16#", "", droprate = "22%" };
		{ 3, 20666, "", "=q3=Hardened Steel Warhammer",  droprate = "30%" };
		{ 4, 20514, "", "=q3=Abyssal Signet",  droprate = "100%" };
		{ 5, 20664, "", "=q2=Abyssal Cloth Sash",  droprate = "27%" };
		{ 6, 21989, "", "=q1=Cinder of Cynders",  droprate = "100%" };
		{ 8, 0, "INV_Box_01", "=q6=#n101#", "=q1=#j20#" };
		{ 9, 20668, "", "=q3=Abyssal Mail Legguards", "=ds=#s11#, #a3# =q2=#m16#", "", droprate = "22%" };
		{ 10, 20669, "", "=q3=Darkstone Claymore",  droprate = "29%" };
		{ 11, 20514, "", "=q3=Abyssal Signet",  droprate = "100%" };
		{ 12, 20667, "", "=q2=Abyssal Leather Belt",  droprate = "29%" };
		{ 16, 0, "INV_Box_01", "=q6=#n102#", "=q1=#j21#" };
		{ 17, 20674, "", "=q3=Abyssal Cloth Pants", "=ds=#s11#, #a1# =q2=#m16#", "", droprate = "21%" };
		{ 18, 20675, "", "=q3=Soulrender",  droprate = "29%" };
		{ 19, 20514, "", "=q3=Abyssal Signet",  droprate = "100%" };
		{ 20, 20673, "", "=q2=Abyssal Plate Girdle",  droprate = "27%" };
		{ 23, 0, "INV_Box_01", "=q6=#n103#", "=q1=#j22#" };
		{ 24, 20671, "", "=q3=Abyssal Plate Legplates", "=ds=#s11#, #a4# =q2=#m16#", "", droprate = "22%" };
		{ 25, 20672, "", "=q3=Sparkling Crystal Wand",  droprate = "28%" };
		{ 26, 20514, "", "=q3=Abyssal Signet",  droprate = "100%" };
		{ 27, 20670, "", "=q2=Abyssal Mail Clutch",  droprate = "28%" };
	};
	{
		Name = AL["High Council"];
		{ 1, 0, "INV_Box_01", "=q6=#n104#", "=q1=#j19#" };
		{ 2, 20682, "", "=q4=Elemental Focus Band",  droprate = "22%" };
		{ 3, 20515, "", "=q4=Abyssal Scepter",  droprate = "100%" };
		{ 4, 20681, "", "=q3=Abyssal Leather Bracers",  droprate = "24%" };
		{ 5, 20680, "", "=q3=Abyssal Mail Pauldrons", "=ds=#s3#, #a3# =q2=#m16#", "", droprate = "24%" };
		{ 7, 0, "INV_Box_01", "=q6=#n105#", "=q1=#j20#" };
		{ 8, 20685, "", "=q4=Wavefront Necklace",  droprate = "24%" };
		{ 9, 20515, "", "=q4=Abyssal Scepter",  droprate = "100%" };
		{ 10, 20684, "", "=q3=Abyssal Mail Armguards",  droprate = "27%" };
		{ 11, 20683, "", "=q3=Abyssal Plate Epaulets", "=ds=#s3#, #a4# =q2=#m16#", "", droprate = "21%" };
		{ 16, 0, "INV_Box_01", "=q6=#n106#", "=q1=#j21#" };
		{ 17, 20691, "", "=q4=Windshear Cape",  droprate = "22%" };
		{ 18, 20515, "", "=q4=Abyssal Scepter",  droprate = "100%" };
		{ 19, 20690, "", "=q3=Abyssal Cloth Wristbands",  droprate = "23%" };
		{ 20, 20689, "", "=q3=Abyssal Leather Shoulders", "=ds=#s3#, #a3# =q2=#m16#", "", droprate = "23%" };
		{ 22, 0, "INV_Box_01", "=q6=#n107#", "=q1=#j22#" };
		{ 23, 20688, "", "=q4=Earthen Guard",  droprate = "20%" };
		{ 24, 20515, "", "=q4=Abyssal Scepter",  droprate = "100%" };
		{ 25, 20686, "", "=q3=Abyssal Cloth Amice", "=ds=#s3#, #a1# =q2=#m16#", "", droprate = "23%" };
		{ 26, 20687, "", "=q3=Abyssal Plate Vambraces",  droprate = "23%" };
	};
};

-----------------------
--- Ethereum Prison ---
-----------------------

AtlasLoot_Data["EthereumPrison"] = {
	Name = AL["Ethereum Prison"];
	{
		Name = AL["Armbreaker Huffaz"];
		{ 1, 31943, "", "=q3=Ethereum Band", "=ds=#s13# =q2=#m16#", "", "10.7%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "1%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "0.4%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "0.36%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "1.1%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "0.6%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "0.8%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "0.5%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "1.0%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "1.3%" };
	};
	{
		Name = AL["Fel Tinkerer Zortan"];
		{ 1, 31573, "", "=q3=Mistshroud Boots",  "9.7%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", "0.94%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "1.0%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "0.94%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "0.4%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "0.7%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "1.0%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "1.3%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "1.2%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "1.0%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "1.2%" };
	};
	{
		Name = AL["Forgosh"];
		{ 1, 31565, "", "=q3=Skystalker's Boots",  "8.5%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "2%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "0.29%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "0.9%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "0.7%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "1.0%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.9%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "1.9%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "0.5%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "1.0%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
	};
	{
		Name = AL["Gul'bor"];
		{ 1, 31940, "", "=q3=Ethereum Torque", "=ds=#s2# =q2=#m16#", "", "9.5%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", "0.66%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "0.66%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "1.1%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "1.1%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "0.8%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "0.9%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "0.8%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "0.8%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "2.0%" };
	};
	{
		Name = AL["Malevus the Mad"];
		{ 1, 31581, "", "=q3=Slatesteel Boots",  "10.5%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "2%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "0.70%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "1.5%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "0.7%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "1.3%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.5%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "0.8%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", droprate = "1%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "0.6%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "1.8%" };
	};
	{
		Name = AL["Porfus the Gem Gorger"];
		{ 1, 31557, "", "=q3=Windchanneller's Boots",  "7.9%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "1%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", "0.81%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "1.0%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "0.7%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "1.1%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "0.6%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "1.8%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "1.0%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "1.1%" };
	};
	{
		Name = AL["Wrathbringer Laz-tarash"];
		{ 1, 32520, "", "=q3=Manaforged Sphere", "=ds=#s15# =q2=#m16#", "", "10.4%" };
		{ 3, 31939, "", "=q3=Dark Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "1%" };
		{ 4, 31938, "", "=q3=Enigmatic Cloak", "=ds=#s4# =q2=#m16#", "", droprate = "1%" };
		{ 5, 31936, "", "=q3=Fiery Cloak", "=ds=#s4# =q2=#m16#", "", "0.8%" };
		{ 6, 31935, "", "=q3=Frigid Cloak", "=ds=#s4# =q2=#m16#", "", "1.5%" };
		{ 7, 31937, "", "=q3=Living Cloak", "=ds=#s4# =q2=#m16#", "", "0.3%" };
		{ 9, 31957, "", "=q2=Ethereum Prisoner I.D. Tag",  droprate = "100%" };
		{ 18, 31928, "", "=q3=Dark Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
		{ 19, 31929, "", "=q3=Enigmatic Band", "=ds=#s13# =q2=#m16#", "", "0.7%" };
		{ 20, 31925, "", "=q3=Fiery Band", "=ds=#s13# =q2=#m16#", "", "1.2%" };
		{ 21, 31926, "", "=q3=Frigid Band", "=ds=#s13# =q2=#m16#", "", "1.1%" };
		{ 22, 31927, "", "=q3=Living Band", "=ds=#s13# =q2=#m16#", "", "1.1%" };
	};
	{
		Name = AL["Bash'ir Landing Stasis Chambers"];
		{ 1, 0, "INV_Box_01", "=q6=#n118#" };
		{ 2, 32522, "", "=q3=Demonic Bulwark", "=ds=#w8# =q2=#m16#" };
		{ 3, 31941, "", "=q2=Mark of the Nexus-King" };
		{ 5, 0, "INV_Box_01", "=q6=#n119#" };
		{ 6, 31577, "", "=q3=Slatesteel Shoulders", "=ds=#s3#, #a4# =q2=#m16#" };
		{ 7, 31941, "", "=q2=Mark of the Nexus-King" };
		{ 9, 0, "INV_Box_01", "=q6=#n120#" };
		{ 10, 31569, "", "=q3=Mistshroud Shoulders", "=ds=#s3#, #a3# =q2=#m16#" };
		{ 11, 31941, "", "=q2=Mark of the Nexus-King" };
		{ 16, 0, "INV_Box_01", "=q6=#n121#" };
		{ 17, 31553, "", "=q3=Windchanneller's Mantle", "=ds=#s3#, #a1# =q2=#m16#" };
		{ 18, 31941, "", "=q2=Mark of the Nexus-King" };
		{ 20, 0, "INV_Box_01", "=q6=#n122#" };
		{ 21, 31561, "", "=q3=Skystalker's Shoulders", "=ds=#s3#, #a2# =q2=#m16#" };
		{ 22, 31941, "", "=q2=Mark of the Nexus-King" };
	};
};

----------------
--- Shartuul ---
----------------

AtlasLoot_Data["Shartuul"] = {
	Name = AL["Shartuul"];
	{
		Name = AL["Shartuul"];
		{ 1, 32941, "", "=q4=Corruptor's Signet",  "6.0%" };
		{ 3, 32676, "", "=q4=Depleted Cloth Bracers",  "5.0%" };
		{ 4, 32675, "", "=q4=Depleted Mail Gauntlets",  "7.0%" };
		{ 5, 32677, "", "=q3=Depleted Cloak",  "9.0%" };
		{ 6, 32678, "", "=q3=Depleted Ring",  "9.0%" };
		{ 7, 32672, "", "=q3=Depleted Badge",  "13.0%" };
		{ 8, 32673, "", "=q3=Depleted Dagger",  "6.0%" };
		{ 9, 32674, "", "=q3=Depleted Sword",  "14.0%" };
		{ 10, 32670, "", "=q3=Depleted Two-Handed Axe",  droprate = "0.02%" };
		{ 11, 32671, "", "=q3=Depleted Mace",  "11.0%" };
		{ 12, 32679, "", "=q3=Depleted Staff",  "6.0%" };
		{ 16, 32942, "", "=q4=Ring of the Overseer",  "1.4%" };
		{ 18, 32655, "", "=q4=Crystalweave Bracers" };
		{ 19, 32656, "", "=q4=Crystalhide Handwraps" };
		{ 20, 32665, "", "=q3=Crystalweave Cape" };
		{ 21, 32664, "", "=q3=Dreamcrystal Band" };
		{ 22, 32658, "", "=q3=Badge of Tenacity" };
		{ 23, 32659, "", "=q3=Crystal-Infused Shiv" };
		{ 24, 32660, "", "=q3=Crystalforged Sword" };
		{ 25, 32663, "", "=q3=Apexis Cleaver" };
		{ 26, 32661, "", "=q3=Apexis Crystal Mace" };
		{ 27, 32662, "", "=q3=Flaming Quartz Staff" };
	};
};

---------------
--- Skettis ---
---------------

AtlasLoot_Data["Skettis"] = {
	Name = AL["Skettis"];
	{
		Name = AL["Darkscreecher Akkarai"];
		{ 1, 32529, "", "=q3=Heretic's Gauntlets",  "17.3%" };
		{ 2, 32715, "", "=q2=Akkarai's Talons",  droprate = "100%" };
		{ 4, 31558, "", "=q3=Windchanneller's Bindings",  "5.3%" };
		{ 5, 31555, "", "=q3=Windchanneller's Ceinture",  "4.3%" };
		{ 6, 31566, "", "=q3=Skystalker's Bracers",  "6.8%" };
		{ 7, 31563, "", "=q3=Skystalker's Cord",  "6.2%" };
		{ 8, 31574, "", "=q3=Mistshroud Bracers",  "4.1%" };
		{ 9, 31571, "", "=q3=Mistshroud Belt",  "4.5%" };
		{ 10, 31582, "", "=q3=Slatesteel Bracers",  "6.7%" };
		{ 11, 31579, "", "=q3=Slatesteel Girdle",  "5.5%" };
		{ 12, 32514, "", "=q3=Skettis Band", "=ds=#s13# =q2=#m16#", "", "31.5%" };
	};
	{
		Name = AL["Karrog"];
		{ 1, 32533, "", "=q3=Karrog's Shard",  "15.0%" };
		{ 2, 32717, "", "=q2=Karrog's Spine",  droprate = "100%" };
		{ 4, 31558, "", "=q3=Windchanneller's Bindings",  "5.6%" };
		{ 5, 31555, "", "=q3=Windchanneller's Ceinture",  "6.8%" };
		{ 6, 31566, "", "=q3=Skystalker's Bracers",  "6.0%" };
		{ 7, 31563, "", "=q3=Skystalker's Cord",  "8.0%" };
		{ 8, 31574, "", "=q3=Mistshroud Bracers",  "5.6%" };
		{ 9, 31571, "", "=q3=Mistshroud Belt",  "3.6%" };
		{ 10, 31582, "", "=q3=Slatesteel Bracers",  "4.3%" };
		{ 11, 31579, "", "=q3=Slatesteel Girdle",  "5.3%" };
		{ 12, 32514, "", "=q3=Skettis Band", "=ds=#s13# =q2=#m16#", "", "24.9%" };
	};
	{
		Name = AL["Gezzarak the Huntress"];
		{ 1, 32531, "", "=q3=Gezzarak's Fang",  "16.9%" };
		{ 2, 32716, "", "=q2=Gezzarak's Claws",  droprate = "100%" };
		{ 4, 31558, "", "=q3=Windchanneller's Bindings",  "5.2%" };
		{ 5, 31555, "", "=q3=Windchanneller's Ceinture",  "6.9%" };
		{ 6, 31566, "", "=q3=Skystalker's Bracers",  "5.2%" };
		{ 7, 31563, "", "=q3=Skystalker's Cord",  "4.9%" };
		{ 8, 31574, "", "=q3=Mistshroud Bracers",  "5.8%" };
		{ 9, 31571, "", "=q3=Mistshroud Belt",  "5.4%" };
		{ 10, 31582, "", "=q3=Slatesteel Bracers",  "6.2%" };
		{ 11, 31579, "", "=q3=Slatesteel Girdle",  "4.6%" };
		{ 12, 32514, "", "=q3=Skettis Band", "=ds=#s13# =q2=#m16#", "", "25.7%" };
	};
	{
		Name = AL["Vakkiz the Windrager"];
		{ 1, 32532, "", "=q3=Windrager's Coils",  "18.1%" };
		{ 2, 32718, "", "=q2=Vakkiz's Scale",  droprate = "100%" };
		{ 4, 31558, "", "=q3=Windchanneller's Bindings",  "5.0%" };
		{ 5, 31555, "", "=q3=Windchanneller's Ceinture",  "4.4%" };
		{ 6, 31566, "", "=q3=Skystalker's Bracers",  "4.1%" };
		{ 7, 31563, "", "=q3=Skystalker's Cord",  "3.9%" };
		{ 8, 31574, "", "=q3=Mistshroud Bracers",  "5.7%" };
		{ 9, 31571, "", "=q3=Mistshroud Belt",  "6.3%" };
		{ 10, 31582, "", "=q3=Slatesteel Bracers",  "5.8%" };
		{ 11, 31579, "", "=q3=Slatesteel Girdle",  "2.7%" };
		{ 12, 32514, "", "=q3=Skettis Band", "=ds=#s13# =q2=#m16#", "", "28.7%" };
	};
	{
		Name = AL["Terokk"];
		{ 1, 32540, "", "=q4=Terokk's Might",  "4.6%" };
		{ 2, 32541, "", "=q4=Terokk's Wisdom",  "4.6%" };
		{ 3, 31556, "", "=q3=Windchanneller's Leggings", "=ds=#s11#, #a1# =q2=#m16#", "", "14.3%" };
		{ 4, 31564, "", "=q3=Skystalker's Leggings", "=ds=#s11#, #a2# =q2=#m16#", "", "13.9%" };
		{ 5, 31572, "", "=q3=Mistshroud Pants", "=ds=#s11#, #a3# =q2=#m16#", "", "10.7%" };
		{ 6, 31580, "", "=q3=Slatesteel Leggings", "=ds=#s11#, #a4# =q2=#m16#", "", "11.6%" };
		{ 7, 32535, "", "=q3=Gift of the Talonpriests",  "7.9%" };
		{ 8, 32534, "", "=q3=Brooch of the Immortal King",  "11.2%" };
		{ 9, 32782, "", "=q3=Time-Lost Figurine" };
		{ 10, 32536, "", "=q3=Terokk's Gavel", "=ds=#h1#, #w6# =q2=#m16#", "", "6.7%" };
		{ 11, 32537, "", "=q3=Terokk's Gavel", "=ds=#h1#, #w6# =q2=#m16#", "", "7.9%" };
	};
	{
		Name = "Talonpriest Ishaal";
		{ 1, 32523, "", "=q1=Ishaal's Almanac" };
	};
	{
		Name = "Hazzik's Package";
		{ 1, 32687, "", "=q1=Hazzik's Package" };
	};
};

-----------------------
--- One Time Events ---
-----------------------

------------------------
--- Scourge Invasion ---
------------------------

AtlasLoot_Data["ScourgeInvasionEvent"] = {
	Name = AL["Scourge Invasion"];
	{
		Name = "Page 1";
		{ 1, 40601, "", "=q3=Argent Dawn Banner" };
		{ 2, 40593, "", "=q3=Argent Tome" };
		{ 3, 40492, "", "=q3=Argent War Horn" };
		{ 5, 23123, "", "=q2=Blessed Wizard Oil" };
		{ 6, 23122, "", "=q2=Consecrated Sharpening Stone" };
		{ 8, 22999, "", "=q1=Tabard of the Argent Dawn" };
		{ 9, 43531, "", "=q1=Argent Healing Potion" };
		{ 10, 43530, "", "=q1=Argent Mana Potion" };
		{ 12, 22484, "", "=q2=Necrotic Rune" };
		{ 16, 40110, "", "=q1=Haunted Memento" };
		{ 18, 0, "INV_Box_01", "=q6=" .. AL["Prince Tenris Mirkblood"], "=q5=" .. BabbleZone["Karazhan"] };
		{ 19, 29434, "", "=q4=Badge of Justice",  droprate = "100%" };
		{ 20, 39769, "", "=q4=Arcanite Ripper", "=ds=#h3#, #w1#" };
		{ 21, 38658, "", "=q3=Vampiric Batling" };
	};
	{
		Name = "Page 2";
		{ 1, 0, "INV_Box_01", "=q6=" .. AL["Blessed Regalia of Undead Cleansing"], "=q1=#a1#" };
		{ 2, 43074, "", "=q4=Blessed Mantle of Undead Cleansing" };
		{ 3, 43072, "", "=q4=Blessed Robe of Undead Cleansing" };
		{ 4, 43073, "", "=q4=Blessed Gloves of Undead Cleansing" };
		{ 5, 43075, "", "=q4=Blessed Trousers of Undead Cleansing" };
		{ 7, 0, "INV_Box_01", "=q6=" .. AL["Undead Slayer's Blessed Armor"], "=q1=#a2#" };
		{ 8, 43077, "", "=q4=Blessed Shoulderpads of Undead Slaying" };
		{ 9, 43076, "", "=q4=Blessed Tunic of Undead Slaying" };
		{ 10, 43078, "", "=q4=Blessed Grips of Undead Slaying" };
		{ 11, 43079, "", "=q4=Blessed Leggings of Undead Slaying" };
		{ 16, 0, "INV_Box_01", "=q6=" .. AL["Blessed Garb of the Undead Slayer"], "=q1=#a3#" };
		{ 17, 43081, "", "=q4=Blessed Pauldrons of Undead Slaying" };
		{ 18, 43080, "", "=q4=Blessed Hauberk of Undead Slaying" };
		{ 19, 43082, "", "=q4=Blessed Handguards of Undead Slaying" };
		{ 20, 43083, "", "=q4=Blessed Greaves of Undead Slaying" };
		{ 22, 0, "INV_Box_01", "=q6=" .. AL["Blessed Battlegear of Undead Slaying"], "=q1=#a4#" };
		{ 23, 43068, "", "=q4=Blessed Spaulders of Undead Slaying" };
		{ 24, 43069, "", "=q4=Blessed Breastplate of Undead Slaying" };
		{ 25, 43070, "", "=q4=Blessed Gauntlets of Undead Slaying" };
		{ 26, 43071, "", "=q4=Blessed Legplates of Undead Slaying" };
	};
	{
		Name = "Page 3";
		{ 1, 0, "INV_Box_01", "=q6=#n123#", "=q1=#z6#" };
		{ 2, 23126, "", "=q3=Waistband of Balzaphon",  droprate = "27%" };
		{ 3, 23125, "", "=q3=Chains of the Lich",  droprate = "19%" };
		{ 4, 23124, "", "=q3=Staff of Balzaphon",  droprate = "24%" };
		{ 6, 0, "INV_Box_01", "=q6=#n124#", "=q1=#z5#" };
		{ 7, 23156, "", "=q3=Blackwood's Thigh",  droprate = "22%" };
		{ 8, 23132, "", "=q3=Lord Blackwood's Blade",  "23.%" };
		{ 9, 23139, "", "=q3=Lord Blackwood's Buckler",  droprate = "26%" };
		{ 11, 0, "INV_Box_01", "=q6=#n125#", "=q1=#z13#" };
		{ 12, 23127, "", "=q3=Cloak of Revanchion",  droprate = "23%" };
		{ 13, 23129, "", "=q3=Bracers of Mending",  droprate = "22%" };
		{ 14, 23128, "", "=q3=The Shadow's Grasp",  droprate = "30%" };
		{ 16, 0, "INV_Box_01", "=q6=#n126#", "=q1=#z3# - #z28#" };
		{ 17, 23170, "", "=q3=The Frozen Clutch",  droprate = "28%" };
		{ 18, 23169, "", "=q3=Scorn's Icy Choker",  droprate = "30%" };
		{ 19, 23168, "", "=q3=Scorn's Focal Dagger",  droprate = "32%" };
		{ 21, 0, "INV_Box_01", "=q6=#n127#", "=q1=#z26#" };
		{ 22, 23173, "", "=q3=Abomination Skin Leggings",  droprate = "43%" };
		{ 23, 23171, "", "=q3=The Axe of Severing",  droprate = "49%" };
		{ 26, 0, "INV_Box_01", "=q6=#n128#", "=q1=#z27#" };
		{ 27, 23178, "", "=q3=Mantle of Lady Falther'ess",  "39.13%" };
		{ 28, 23177, "", "=q3=Lady Falther'ess' Finger",  droprate = "46%" };
	};
};
