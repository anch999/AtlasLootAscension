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
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 45714, "", desc = "=ds=", "1 #champwrit#"  }; --Darnassus Commendation Badge
		[3] = { itemID = 45715, "", desc = "=ds=", "1 #champwrit#"  }; --Exodar Commendation Badge
		[4] = { itemID = 45716, "", desc = "=ds=", "1 #champwrit#"  }; --Gnomeregan Commendation Badge
		[5] = { itemID = 45717, "", desc = "=ds=", "1 #champwrit#"  }; --Ironforge Commendation Badge
		[6] = { itemID = 45718, "", desc = "=ds=", "1 #champwrit#"  }; --Stormwind Commendation Badge
		[15] = { itemID = 46114, "", "=q2=Champion's Writ", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45719, "", desc = "=ds=", "1 #champwrit#"  }; --Orgrimmar Commendation Badge
		[18] = { itemID = 45723, "", desc = "=ds=", "1 #champwrit#"  }; --Undercity Commendation Badge
		[19] = { itemID = 45722, "", desc = "=ds=", "1 #champwrit#"  }; --Thunder Bluff Commendation Badge
		[20] = { itemID = 45720, "", desc = "=ds=", "1 #champwrit#"  }; --Sen'jin Commendation Badge
		[21] = { itemID = 45721, "", desc = "=ds=", "1 #champwrit#"  }; --Silvermoon Commendation Badge
	};
	{
		Name = AL["Tabards"] .. " / " .. AL["Banner"];
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 45021, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Darnassus Banner
		[3] = { itemID = 45020, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Exodar Banner
		[4] = { itemID = 45019, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Gnomeregan Banner
		[5] = { itemID = 45018, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Ironforge Banner
		[6] = { itemID = 45011, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Stormwind Banner
		[7] = { itemID = 45579, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Darnassus Tabard
		[8] = { itemID = 45580, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Exodar Tabard
		[9] = { itemID = 45578, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Gnomeregan Tabard
		[10] = { itemID = 45577, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Ironforge Tabard
		[11] = { itemID = 45574, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Stormwind Tabard
		[12] = { itemID = 46817, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Silver Covenant Tabard
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45014, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Orgrimmar Banner
		[18] = { itemID = 45016, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Undercity Banner
		[19] = { itemID = 45013, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Thunder Bluff Banner
		[20] = { itemID = 45015, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Sen'jin Banner
		[21] = { itemID = 45017, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Silvermoon City Banner
		[22] = { itemID = 45581, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Orgrimmar Tabard
		[23] = { itemID = 45583, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Undercity Tabard
		[24] = { itemID = 45584, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Thunder Bluff Tabard
		[25] = { itemID = 45582, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Sen'jin Tabard
		[26] = { itemID = 45585, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Silvermoon City Tabard
		[27] = { itemID = 46818, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Sunreaver Tabard
		[28] = { itemID = 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"], ""  };
		[29] = { itemID = 46843, "", desc = "=ds=#e14#", "15 #champseal#"  }; --Argent Crusade Banner
		[30] = { itemID = 46874, "", desc = "=ds=#s7#", "50 #champseal#"  }; --Argent Crusader's Tabard
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 45156, "", desc = "=ds=#s10#, #a1#", "10 #champseal#"  }; --Sash of Shattering Hearts
		[3] = { itemID = 45181, "", desc = "=ds=#s10#, #a2#", "10 #champseal#"  }; --Wrap of the Everliving Tree
		[4] = { itemID = 45159, "", desc = "=ds=#s12#, #a2#", "10 #champseal#"  }; --Treads of Nimble Evasion
		[5] = { itemID = 45184, "", desc = "=ds=#s10#, #a3#", "10 #champseal#"  }; --Cinch of Bonded Servitude
		[6] = { itemID = 45183, "", desc = "=ds=#s12#, #a3#", "10 #champseal#"  }; --Treads of the Glorious Spirit
		[7] = { itemID = 45182, "", desc = "=ds=#s9#, #a4#", "10 #champseal#"  }; --Gauntlets of Shattered Pride
		[8] = { itemID = 45160, "", desc = "=ds=#s10#, #a4#", "10 #champseal#"  }; --Girdle of Valorous Defeat
		[9] = { itemID = 45163, "", desc = "=ds=#s12#, #a4#", "10 #champseal#"  }; --Stanchions of Unseatable Furor
		[10] = { itemID = 45153, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Susurrating Shell Necklace
		[11] = { itemID = 45155, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Choker of Spiral Focus
		[12] = { itemID = 45154, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Necklace of Valiant Blood
		[13] = { itemID = 45152, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Pendant of Azure Dreams
		[14] = { itemID = 45131, "", desc = "=ds=#s14#", "10 #champseal#"  }; --Jouster's Fury
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45209, "", desc = "=ds=#s10#, #a1#", "10 #champseal#"  }; --Sash of Trumpted Pride
		[18] = { itemID = 45211, "", desc = "=ds=#s10#, #a2#", "10 #champseal#"  }; --Waistguard of Equine Fury
		[19] = { itemID = 45220, "", desc = "=ds=#s12#, #a2#", "10 #champseal#"  }; --Treads of the Earnest Squire
		[20] = { itemID = 45215, "", desc = "=ds=#s10#, #a3#", "10 #champseal#"  }; --Links of Unquenched Savagery
		[21] = { itemID = 45221, "", desc = "=ds=#s12#, #a3#", "10 #champseal#"  }; --Treads of Whispering Dreams
		[22] = { itemID = 45216, "", desc = "=ds=#s9#, #a4#", "10 #champseal#"  }; --Gauntlets of Mending Touch
		[23] = { itemID = 45217, "", desc = "=ds=#s10#, #a4#", "10 #champseal#"  }; --Clinch of Savage Fury
		[24] = { itemID = 45218, "", desc = "=ds=#s12#, #a4#", "10 #champseal#"  }; --Blood-Caked Stompers
		[25] = { itemID = 45206, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Choker of Feral Fury
		[26] = { itemID = 45207, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Necklace of Stolen Skulls
		[27] = { itemID = 45213, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Pendant of Emerald Crusader
		[28] = { itemID = 45223, "", desc = "=ds=#s2#", "10 #champseal#"  }; --Razor's Edge Pendant
		[29] = { itemID = 45219, "", desc = "=ds=#s14#", "10 #champseal#"  }; --Jouster's Fury
	};
	{
		Name = AL["Weapons"];
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 45078, "", desc = "=ds=#h3#, #w4#", "25 #champseal#"  }; --Dagger of Lunar Purity
		[3] = { itemID = 45077, "", desc = "=ds=#h1#, #w4#", "25 #champseal#"  }; --Dagger of the Rising Moon
		[4] = { itemID = 45129, "", desc = "=ds=#h3#, #w10#", "25 #champseal#"  }; --Gnomeregan Bonechopper
		[5] = { itemID = 45074, "", desc = "=ds=#h2#, #w10#", "25 #champseal#"  }; --Claymore of the Prophet
		[6] = { itemID = 45076, "", desc = "=ds=#h1#, #w1#", "25 #champseal#"  }; --Teldrassil Protector
		[7] = { itemID = 45075, "", desc = "=ds=#h1#, #w6#", "25 #champseal#"  }; --Ironforge Smasher
		[8] = { itemID = 45128, "", desc = "=ds=#w9#", "25 #champseal#"  }; --Silvery Sylvan Stave
		[9] = { itemID = 45130, "", desc = "=ds=#w5#", "25 #champseal#"  }; --Blunderbuss of Khaz Modan
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45214, "", desc = "=ds=#h3#, #w4#", "25 #champseal#"  }; --Scalpel of the Royal Apothecary
		[18] = { itemID = 45222, "", desc = "=ds=#h1#, #w4#", "25 #champseal#"  }; --Spinal Destroyer
		[19] = { itemID = 45208, "", desc = "=ds=#h3#, #w10#", "25 #champseal#"  }; --Blade of the Keening Banshee
		[20] = { itemID = 45205, "", desc = "=ds=#h2#, #w10#", "25 #champseal#"  }; --Greatsword of the Sin'dorei
		[21] = { itemID = 45204, "", desc = "=ds=#h1#, #w1#", "25 #champseal#"  }; --Axe of the Sen'jin Protector
		[22] = { itemID = 45203, "", desc = "=ds=#h1#, #w6#", "25 #champseal#"  }; --Grimhorn Crusher
		[23] = { itemID = 45212, "", desc = "=ds=#w9#", "25 #champseal#"  }; --Staff of Feral Furies
		[24] = { itemID = 45210, "", desc = "=ds=#w5#", "25 #champseal#"  }; --Sen'jin Beakblade Longrifle
	};
	{
		Name = AL["Vanity Pets"];
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 44998, "", "=q3=Argent Squire", "=ds=#m4#"  };
		[4] = { itemID = 44984, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Ammen Vale Lashling
		[5] = { itemID = 44965, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Teldrassil Sproutling
		[6] = { itemID = 44970, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Dun Morogh Cub
		[7] = { itemID = 44974, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Elwynn Lamb
		[8] = { itemID = 45002, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Mechanopeep
		[9] = { itemID = 46820, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Shimmering Wyrmling
		[11] = { itemID = 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"], ""  };
		[12] = { itemID = 47541, "", desc = "=ds=", "150 #champseal#"  }; --Argent Pony Bridle
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45022, "", "=q3=Argent Gruntling", "=ds=#m4#"  };
		[19] = { itemID = 44980, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Mulgore Hatchling
		[20] = { itemID = 45606, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Sen'jin Fetish
		[21] = { itemID = 44971, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Tirisfal Batling
		[22] = { itemID = 44973, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Durotar Scorpion
		[23] = { itemID = 44982, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Enchanted Broom
		[24] = { itemID = 46821, "", desc = "=ds=#e13#", "40 #champseal#"  }; --Shimmering Wyrmling
	};
	{
		Name = AL["Mounts"];
		[1] = { itemID = 0, "INV_BannerPVP_02", "=q6=#m7#", ""  };
		[2] = { itemID = 45591, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Darnassian Nightsaber
		[3] = { itemID = 45590, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Exodar Elekk
		[4] = { itemID = 45589, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Gnomeregan Mechanostrider
		[5] = { itemID = 45586, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Ironforge Ram
		[6] = { itemID = 45125, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Stormwind Steed
		[8] = { itemID = 46745, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Great Red Elekk
		[9] = { itemID = 46752, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Gray Steed
		[10] = { itemID = 46744, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Moonsaber
		[11] = { itemID = 46748, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Violet Ram
		[12] = { itemID = 46747, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Turbostrider
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_BannerPVP_01", "=q6=#m6#", ""  };
		[17] = { itemID = 45593, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Darkspear Raptor
		[18] = { itemID = 45597, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Forsaken Warhorse
		[19] = { itemID = 45595, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Orgrimmar Wolf
		[20] = { itemID = 45596, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Silvermoon Hawkstrider
		[21] = { itemID = 45592, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Thunder Bluff Kodo
		[23] = { itemID = 46750, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Great Golden Kodo
		[24] = { itemID = 46749, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Burgundy Wolf
		[25] = { itemID = 46743, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Purple Raptor
		[26] = { itemID = 46751, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --Swift Red Hawkstrider
		[27] = { itemID = 46746, "", desc = "=ds=#e12#", "500 #gold# 5 #champseal#"  }; --White Skeletal Warhorse
	};
	{
		Name = AL["Mounts"];
		[1] = { itemID = 0, "inv_misc_tabardpvp_01", "=q6=" .. BabbleFaction["The Silver Covenant"], "=ec1=#m7#"  };
		[2] = { itemID = 46815, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Quel'dorei Steed
		[3] = { itemID = 46813, "", desc = "=ds=#e12#", "150 #champseal#"  }; --Silver Covenant Hippogryph
		[5] = { itemID = 0, "INV_Jewelry_Talisman_08", "=q6=" .. BabbleFaction["Argent Crusade"], ""  };
		[6] = { itemID = 47179, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Argent Charger
		[7] = { itemID = 47180, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Argent Warhorse
		[8] = { itemID = 45725, "", desc = "=ds=#e12#", "150 #champseal#"  }; --Argent Hippogryph
		[15] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 0, "inv_misc_tabardpvp_02", "=q6=" .. BabbleFaction["The Sunreavers"], "=ec1=#m6#"  };
		[17] = { itemID = 46816, "", desc = "=ds=#e12#", "100 #champseal#"  }; --Sunreaver Hawkstrider
		[18] = { itemID = 46814, "", desc = "=ds=#e12#", "150 #champseal#"  }; --Sunreaver Dragonhawk
	};
	{
		Name = AL["Heirloom"];
		[1] = { itemID = 42985, "", "=q7=Tattered Dreadmist Mantle", "=ds=#s3#, #a1#", "60 #champseal#"  };
		[2] = { itemID = 42984, "", "=q7=Preened Ironfeather Shoulders", "=ds=#s3#, #a2#", "60 #champseal#"  };
		[3] = { itemID = 42952, "", "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#, #a2#", "60 #champseal#"  };
		[4] = { itemID = 42950, "", "=q7=Champion Herod's Shoulder", "=ds=#s3#, #a3#", "60 #champseal#"  };
		[5] = { itemID = 42951, "", "=q7=Mystical Pauldrons of Elements", "=ds=#s3#, #a3#", "60 #champseal#"  };
		[6] = { itemID = 42949, "", "=q7=Polished Spaulders of Valor", "=ds=#s3#, #a4#", "60 #champseal#"  };
		[8] = { itemID = 42992, "", "=q7=Discerning Eye of the Beast", "=ds=#s14#", "75 #champseal#"  };
		[9] = { itemID = 42991, "", "=q7=Swift Hand of Justice", "=ds=#s14#", "75 #champseal#"  };
		[11] = { itemID = 44990, "", "=q2=Champion's Seal", "=ds=#m17#"  };
		[16] = { itemID = 48691, "", "=q7=Tattered Dreadmist Robe", "=ds=#s5#, #a1#", "60 #champseal#"  };
		[17] = { itemID = 48687, "", "=q7=Preened Ironfeather Breastplate", "=ds=#s5#, #a2#", "60 #champseal#"  };
		[18] = { itemID = 48689, "", "=q7=Stained Shadowcraft Tunic", "=ds=#s5#, #a2#", "60 #champseal#"  };
		[19] = { itemID = 48677, "", "=q7=Champion's Deathdealer Breastplate", "=ds=#s5#, #a3#", "60 #champseal#"  };
		[20] = { itemID = 48683, "", "=q7=Mystical Vest of Elements", "=ds=#s5#, #a3#", "60 #champseal#"  };
		[21] = { itemID = 48685, "", "=q7=Polished Breastplate of Valor", "=ds=#s5#, #a4#", "60 #champseal#"  };
		[23] = { itemID = 42944, "", "=q7=Balanced Heartseeker", "=ds=#h1#, #w4#", "60 #champseal#"  };
		[24] = { itemID = 42945, "", "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#h3#, #w10#", "60 #champseal#"  };
		[25] = { itemID = 42943, "", "=q7=Bloodied Arcanite Reaper", "=ds=#h2#, #w1#", "95 #champseal#"  };
		[26] = { itemID = 42948, "", "=q7=Devout Aurastone Hammer", "=ds=#h3#, #w6#", "75 #champseal#"  };
		[27] = { itemID = 48716, "", "=q7=Venerable Mass of McGowan", "=ds=#h1#, #w6#", "75 #champseal#"  };
		[28] = { itemID = 48718, "", "=q7=Repurposed Lava Dredger", "=ds=#h2#, #w6#", "95 #champseal#"  };
		[29] = { itemID = 42947, "", "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "95 #champseal#"  };
		[30] = { itemID = 42946, "", "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "95 #champseal#"  };
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
	[1] = { itemID = 33047, "", "=q1=Belbi's Eyesight Enhancing Romance Goggles", "=ds=#s1#, 100 #brewfest#"  };
	[2] = { itemID = 34008, "", "=q1=Blix's Eyesight Enhancing Romance Goggles", "=ds=#s1#, 100 #brewfest#"  };
	[3] = { itemID = 33968, "", "=q1=Blue Brewfest Hat", "=ds=#s1#, 50 #brewfest#"  };
	[4] = { itemID = 33864, "", "=q1=Brown Brewfest Hat", "=ds=#s1#, 50 #brewfest#"  };
	[5] = { itemID = 33967, "", "=q1=Green Brewfest Hat", "=ds=#s1#, 50 #brewfest#"  };
	[6] = { itemID = 33969, "", "=q1=Purple Brewfest Hat", "=ds=#s1#, 50 #brewfest#"  };
	[7] = { itemID = 33863, "", "=q1=Brewfest Dress", "=ds=#s5#, 200 #brewfest#"  };
	[8] = { itemID = 33862, "", "=q1=Brewfest Regalia", "=ds=#s5#, 200 #brewfest#"  };
	[9] = { itemID = 33868, "", "=q1=Brewfest Boots", "=ds=#s12#, 100 #brewfest#"  };
	[10] = { itemID = 33966, "", "=q1=Brewfest Slippers", "=ds=#s12#, 100 #brewfest#"  };
	[16] = { itemID = 33927, "", "=q3=Brewfest Pony Keg", "=ds=#m20#, 100 #brewfest#"  };
	[17] = { itemID = 46707, "", "=q3=Pint-Sized Pink Pachyderm", "=ds=#e13#, 100 #brewfest#"  };
	[18] = { itemID = 32233, "", "=q3=Wolpertinger's Tankard", "=ds=#e13#, 40 #silver#"  };
	[19] = { itemID = 37599, "", "=q1=\"Brew of the Month\" Club Membership Form", "=ds=#m2#, 200 #brewfest#"  };
	[21] = { itemID = 37816, "", "=q2=Preserved Brewfest Hops", "=ds=#m20#, 20 #brewfest#"  };
	[22] = { itemID = 37750, "", "=q1=Fresh Brewfest Hops", "=ds=#m20#, 2 #brewfest#"  };
	[23] = { itemID = 39477, "", "=q1=Fresh Dwarven Brewfest Hops", "=ec1=#m6# =ds=#m20#, 5 #brewfest#"  };
	[24] = { itemID = 39476, "", "=q1=Fresh Goblin Brewfest Hops", "=ec1=#m7# =ds=#m20#, 5 #brewfest#"  };
	[27] = { itemID = 37829, "", "=q2=Brewfest Prize Token", "=ds=#m17#"  };
};

brewfest.b = {
	Name = AL["Brewfest"] .. " 2";
	[1] = { itemID = 37892, "", "=q3=Green Brewfest Stein", "=ec1=2009 =q1=#m34#: =ds=#h1#"  };
	[2] = { itemID = 33016, "", "=q3=Blue Brewfest Stein", "=ec1=2008 =q1=#m34#: =ds=#h1#"  };
	[3] = { itemID = 32912, "", "=q3=Yellow Brewfest Stein", "=ec1=2007 =q1=#m34#: =ds=#h3#"  };
	[4] = { itemID = 34140, "", "=q3=Dark Iron Tankard", "=ec1=2007 =q1=#m34#: =ds=#s15#"  };
	[6] = { itemID = 33976, "", "=q3=Brewfest Ram", "=ec1=2007 =q1=#m34#: =ds=#e12#"  };
	[16] = { itemID = 33929, "", "=q1=Brewfest Brew", "=ds=#e4#"  };
	[17] = { itemID = 34063, "", "=q1=Dried Sausage", "=ds=#e3#"  };
	[18] = { itemID = 33024, "", "=q1=Pickled Sausage", "=ds=#e3#"  };
	[19] = { itemID = 38428, "", "=q1=Rock-Salted Pretzel", "=ds=#e3#"  };
	[20] = { itemID = 33023, "", "=q1=Savory Sausage", "=ds=#e3#"  };
	[21] = { itemID = 34065, "", "=q1=Spiced Onion Cheese", "=ds=#e3#"  };
	[22] = { itemID = 33025, "", "=q1=Spicy Smoked Sausage", "=ds=#e3#"  };
	[23] = { itemID = 34064, "", "=q1=Succulent Sausage", "=ds=#e3#"  };
	[24] = { itemID = 33043, "", "=q1=The Essential Brewfest Pretzel", "=ds=#e3#"  };
	[25] = { itemID = 33026, "", "=q1=The Golden Link", "=ds=#e3#"  };
};

brewfest.c = {
	Name = AL["Brewfest"] .. " 3";
	[1] = { itemID = 0, "INV_Cask_04", "=q6=#n131#", ""  };
	[2] = { itemID = 33030, "", "=q1=Barleybrew Clear", "=ds=#e4#"  };
	[3] = { itemID = 33028, "", "=q1=Barleybrew Light", "=ds=#e4#"  };
	[4] = { itemID = 33029, "", "=q1=Barleybrew Dark", "=ds=#e4#"  };
	[6] = { itemID = 0, "INV_Cask_04", "=q6=#n132#", ""  };
	[7] = { itemID = 33031, "", "=q1=Thunder 45", "=ds=#e4#"  };
	[8] = { itemID = 33032, "", "=q1=Thunderbrew Ale", "=ds=#e4#"  };
	[9] = { itemID = 33033, "", "=q1=Thunderbrew Stout", "=ds=#e4#"  };
	[11] = { itemID = 0, "INV_Cask_04", "=q6=#n133#", ""  };
	[12] = { itemID = 33034, "", "=q1=Gordok Grog", "=ds=#e4#"  };
	[13] = { itemID = 33036, "", "=q1=Mudder's Milk", "=ds=#e4#"  };
	[14] = { itemID = 33035, "", "=q1=Ogre Mead", "=ds=#e4#"  };
	[16] = { itemID = 0, "INV_Cask_04", "=q6=#n134#", ""  };
	[17] = { itemID = 34017, "", "=q1=Small Step Brew", "=ds=#e4#"  };
	[18] = { itemID = 34018, "", "=q1=Long Stride Brew", "=ds=#e4#"  };
	[19] = { itemID = 34019, "", "=q1=Path of Brew", "=ds=#e4#"  };
	[21] = { itemID = 0, "INV_Cask_04", "=q6=#n135#", ""  };
	[22] = { itemID = 34020, "", "=q1=Jungle River Water", "=ds=#e4#"  };
	[23] = { itemID = 34021, "", "=q1=Brewdoo Magic", "=ds=#e4#"  };
	[24] = { itemID = 34022, "", "=q1=Stout Shrunken Head", "=ds=#e4#"  };
};

brewfest.d = {
	Name = AL["Brew of the Month Club"];
	[1] = { itemID = 37488, "", "=q1=Wild Winter Pilsner", "=ds=#month1#"  };
	[2] = { itemID = 37489, "", "=q1=Izzard's Ever Flavor", "=ds=#month2#"  };
	[3] = { itemID = 37490, "", "=q1=Aromatic Honey Brew", "=ds=#month3#"  };
	[4] = { itemID = 37491, "", "=q1=Metok's Bubble Bock", "=ds=#month4#"  };
	[5] = { itemID = 37492, "", "=q1=Springtime Stout", "=ds=#month5#"  };
	[6] = { itemID = 37493, "", "=q1=Blackrock Lager", "=ds=#month6#"  };
	[16] = { itemID = 37494, "", "=q1=Stranglethorn Brew", "=ds=#month7#"  };
	[17] = { itemID = 37495, "", "=q1=Draenic Pale Ale", "=ds=#month8#"  };
	[18] = { itemID = 37496, "", "=q1=Binary Brew", "=ds=#month9#"  };
	[19] = { itemID = 37497, "", "=q1=Autumnal Acorn Ale", "=ds=#month10#"  };
	[20] = { itemID = 37498, "", "=q1=Bartlett's Bitter Brew", "=ds=#month11#"  };
	[21] = { itemID = 37499, "", "=q1=Lord of Frost's Private Label", "=ds=#month12#"  };
};

brewfest.corenCLASSIC = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 2037128, "", "=q4=Balebrew Charm", "=ds=#s14#"  };
	[2] = { itemID = 2037127, "", "=q4=Brightbrew Charm", "=ds=#s14#"  };
	[3] = { itemID = 2038289, "", "=q4=Coren's Lucky Coin", "=ds=#s14#"  };
	[4] = { itemID = 2038290, "", "=q4=Dark Iron Smoking Pipe", "=ds=#s14#"  };
	[5] = { itemID = 2038288, "", "=q4=Direbrew Hops", "=ds=#s14#"  };
	[6] = { itemID = 2038287, "", "=q4=Empty Mug Of Direbrew", "=ds=#s14#"  };
	[7] = { itemID = 2037597, "", "=q4=Direbrew's Shanker", "=ds=#h1#, #w4#"  };
	[16] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
	[17] = { itemID = 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#"  };
	[19] = { itemID = 37828, "", "=q4=Great Brewfest Kodo", "=ds=#e12#"  };
	[20] = { itemID = 33977, "", "=q4=Swift Brewfest Ram", "=ds=#e12#"  };
	[21] = { itemID = 37863, "", "=q3=Direbrew's Remote", "=ds="  };
	[22] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
};

brewfest.corenTBC = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 37128, "", "=q4=Balebrew Charm", "=ds=#s14#"  };
	[2] = { itemID = 37127, "", "=q4=Brightbrew Charm", "=ds=#s14#"  };
	[3] = { itemID = 38289, "", "=q4=Coren's Lucky Coin", "=ds=#s14#"  };
	[4] = { itemID = 38290, "", "=q4=Dark Iron Smoking Pipe", "=ds=#s14#"  };
	[5] = { itemID = 38288, "", "=q4=Direbrew Hops", "=ds=#s14#"  };
	[6] = { itemID = 38287, "", "=q4=Empty Mug Of Direbrew", "=ds=#s14#"  };
	[7] = { itemID = 37597, "", "=q4=Direbrew's Shanker", "=ds=#h1#, #w4#"  };
	[16] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
	[17] = { itemID = 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#"  };
	[19] = { itemID = 37828, "", "=q4=Great Brewfest Kodo", "=ds=#e12#"  };
	[20] = { itemID = 33977, "", "=q4=Swift Brewfest Ram", "=ds=#e12#"  };
	[21] = { itemID = 37863, "", "=q3=Direbrew's Remote", "=ds="  };
	[22] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
};

brewfest.corenWRATH = {
	Name = AL["Coren Direbrew"];
	[1] = { itemID = 49078, "", "=q4=Ancient Pickled Egg", "=ds=#s14#"  };
	[2] = { itemID = 49118, "", "=q4=Bubbling Balebrew Charm", "=ds=#s14#"  };
	[3] = { itemID = 49116, "", "=q4=Bitter Brightbrew Charm", "=ds=#s14#"  };
	[4] = { itemID = 49080, "", "=q4=Brawler's Souvenir", "=ds=#s14#"  };
	[5] = { itemID = 49074, "", "=q4=Coren's Chromium Coaster", "=ds=#s14#"  };
	[6] = { itemID = 49076, "", "=q4=Mithril Pocketwatch", "=ds=#s14#"  };
	[7] = { itemID = 49120, "", "=q4=Direbrew's Shanker 2.0", "=ds=#h1#, #w4#"  };
	[8] = { itemID = 48663, "", "=q4=Tankard O' Terror", "=ds=#h1#, #w6#"  };
	[16] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
	[17] = { itemID = 34140, "", "=q3=Dark Iron Tankard", "=q1=#m4#: =ds=#s15#"  };
	[19] = { itemID = 37828, "", "=q4=Great Brewfest Kodo", "=ds=#e12#"  };
	[20] = { itemID = 33977, "", "=q4=Swift Brewfest Ram", "=ds=#e12#"  };
	[21] = { itemID = 37863, "", "=q3=Direbrew's Remote", "=ds="  };
	[22] = { itemID = 38281, "", "=q1=Direbrew's Dire Brew", "=ds=#m2#"  };
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
		[1] = { itemID = 0, "INV_Box_01", "=q6=#z24#", ""  };
		[2] = { itemID = 23007, "", "=q1=Piglet's Collar", "=ds=#e13#"  };
		[3] = { itemID = 23015, "", "=q1=Rat Cage", "=ds=#e13#"  };
		[4] = { itemID = 23002, "", "=q1=Turtle Box", "=ds=#e13#"  };
		[5] = { itemID = 23022, "", "=q1=Curmudgeon's Payoff", "=ds="  };
		[7] = { itemID = 0, "INV_Box_01", "=q6=#z25#", ""  };
		[8] = { itemID = 32616, "", "=q3=Egbert's Egg", "=ds=#e13#"  };
		[9] = { itemID = 32622, "", "=q3=Elekk Training Collar", "=ds=#e13#"  };
		[10] = { itemID = 32617, "", "=q3=Sleepy Willy", "=ds=#e13#"  };
		[16] = { itemID = 0, "INV_Box_01", "=q6=#z40#", ""  };
		[17] = { itemID = 46545, "", "=q3=Curious Oracle Hatchling", "=ds=#e13#"  };
		[18] = { itemID = 46544, "", "=q3=Curious Wolvar Pup", "=ds=#e13#"  };
	};
};

-----------------------
--- Day of the Dead ---
-----------------------

AtlasLoot_Data["DayoftheDead"] = {
	Name = AL["Day of the Dead"];
	{
		Name = AL["Day of the Dead"];
		[1] = { itemID = 46831, "", "=q1=Macabre Marionette", "=q1=#m4#: =ds=#m20#"  };
		[3] = { itemID = 46860, "", "=q1=Whimsical Skull Mask", "=ds=#s1#, 5 #copper#"  };
		[4] = { itemID = 46861, "", "=q1=Bouquet of Orange Marigolds", "=ds=#s15#, 1 #gold#"  };
		[5] = { itemID = 46690, "", "=q1=Candy Skull", "=ds=#m20#, 5 #copper#"  };
		[6] = { itemID = 46711, "", "=q1=Spirit Candle", "=ds=#m20#, 30 #copper#"  };
		[7] = { itemID = 46718, "", "=q1=Orange Marigold", "=ds=#m20#, 10 #copper#"  };
		[9] = { itemID = 46710, "", "=q1=Recipe: Bread of the Dead", "=ds=#p3# (1), 20 #silver#"  };
		[10] = { itemID = 46691, "", "=q1=Bread of the Dead", "=ds=#e3#"  };
	};
};

----------------------------
--- Feast of Winter Veil ---
----------------------------

AtlasLoot_Data["Winterviel"] = {
	Name = AL["Feast of Winter Veil"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 21525, "", "=q2=Green Winter Hat", "=ds=#s1# =q2=#z7#"  };
		[2] = { itemID = 21524, "", "=q2=Red Winter Hat", "=ds=#s1# =q2=#z7#"  };
		[3] = { itemID = 17712, "", "=q1=Winter Veil Disguise Kit", "=q1=#m4#: =ds=#m20#"  };
		[4] = { itemID = 17202, "", "=q1=Snowball", "=ds=#m20#"  };
		[5] = { itemID = 34191, "", "=q1=Handful of Snowflakes", "=ds=#m20#"  };
		[6] = { itemID = 21212, "", "=q1=Fresh Holly", "=ds=#m20#"  };
		[7] = { itemID = 21519, "", "=q1=Mistletoe", "=ds=#m20#"  };
		[9] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#n129#", ""  };
		[10] = { itemID = 34262, "", "=q2=Pattern: Winter Boots", "=ds=#p7# (285)"  };
		[11] = { itemID = 34319, "", "=q2=Pattern: Red Winter Clothes", "=ds=#p8# (250)"  };
		[12] = { itemID = 34261, "", "=q2=Pattern: Green Winter Clothes", "=ds=#p8# (250)"  };
		[13] = { itemID = 34413, "", "=q1=Recipe: Hot Apple Cider", "#p3# (325)"  };
		[14] = { itemID = 17201, "", "=q1=Recipe: Egg Nog", "=ds=#p3# (35)"  };
		[15] = { itemID = 17200, "", "=q1=Recipe: Gingerbread Cookie", "=ds=#p3# (1)"  };
		[16] = { itemID = 17344, "", "=q1=Candy Cane", "=ds=#e3#"  };
		[17] = { itemID = 17406, "", "=q1=Holiday Cheesewheel", "=ds=#e3#"  };
		[18] = { itemID = 17407, "", "=q1=Graccu's Homemade Meat Pie", "=ds=#e3#"  };
		[19] = { itemID = 17408, "", "=q1=Spicy Beefstick", "=ds=#e3#"  };
		[20] = { itemID = 34410, "", "=q1=Honeyed Holiday Ham", "=ds=#e3#"  };
		[21] = { itemID = 17404, "", "=q1=Blended Bean Brew", "=ds=#e4#"  };
		[22] = { itemID = 17405, "", "=q1=Green Garden Tea", "=ds=#e4#"  };
		[23] = { itemID = 34412, "", "=q1=Sparkling Apple Cider", "=ds=#e4#"  };
		[24] = { itemID = 17196, "", "=q1=Holiday Spirits", "=ds=#e4#"  };
		[25] = { itemID = 17403, "", "=q1=Steamwheedle Fizzy Spirits", "=ds=#e4#"  };
		[26] = { itemID = 17402, "", "=q1=Greatfather's Winter Ale", "=ds=#e4#"  };
		[27] = { itemID = 17194, "", "=q1=Holiday Spices", "=ds=#e6#"  };
		[28] = { itemID = 17303, "", "=q1=Blue Ribboned Wrapping Paper", "=ds=#e6#"  };
		[29] = { itemID = 17304, "", "=q1=Green Ribboned Wrapping Paper", "=ds=#e6#"  };
		[30] = { itemID = 17307, "", "=q1=Purple Ribboned Wrapping Paper", "=ds=#e6#"  };
	};
	{
		Name = "Presents";
		[1] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x19#", ""  };
		[2] = { itemID = 21301, "", "=q1=Green Helper Box", "=ds=#e13#"  };
		[3] = { itemID = 21308, "", "=q1=Jingling Bell", "=ds=#e13#"  };
		[4] = { itemID = 21305, "", "=q1=Red Helper Box", "=ds=#e13#"  };
		[5] = { itemID = 21309, "", "=q1=Snowman Kit", "=ds=#e13#"  };
		[7] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x20#", ""  };
		[8] = { itemID = 21328, "", "=q1=Wand of Holiday Cheer", "=ds=#m20#"  };
		[10] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x35#", ""  };
		[11] = { itemID = 34425, "", "=q3=Clockwork Rocket Bot", "=ds=#e13#"  };
		[13] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x22#", ""  };
		[14] = { itemID = 21235, "", "=q1=Winter Veil Roast", "=ds=#e3#"  };
		[15] = { itemID = 21241, "", "=q1=Winter Veil Eggnog", "=ds=#e4#"  };
		[16] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x21#", ""  };
		[17] = { itemID = 21325, "", "=q2=Mechanical Greench", "=ds=#e22#"  };
		[18] = { itemID = 21213, "", "=q2=Preserved Holly", "=ds=#m20#"  };
		[19] = { itemID = 17706, "", "=q2=Plans: Edge of Winter", "=ds=#p2# (190)"  };
		[20] = { itemID = 17725, "", "=q2=Formula: Enchant Weapon - Winter's Might", "=ds=#p4# (190)"  };
		[21] = { itemID = 17720, "", "=q2=Schematic: Snowmaster 9000", "=ds=#p5# (190)"  };
		[22] = { itemID = 17722, "", "=q2=Pattern: Gloves of the Greatfather", "=ds=#p7# (190)"  };
		[23] = { itemID = 17709, "", "=q1=Recipe: Elixir of Frost Power", "=ds=#p1# (190)"  };
		[24] = { itemID = 17724, "", "=q1=Pattern: Green Holiday Shirt", "=ds=#p8# (190)"  };
		[26] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x34#", ""  };
		[27] = { itemID = 21254, "", "=q1=Winter Veil Cookie", "=ds=#e3#"  };
		[29] = { itemID = 0, "INV_Holiday_Christmas_Present_01", "=q6=#x36#", ""  };
		[30] = { itemID = 21215, "", "=q1=Graccu's Mince Meat Fruitcake", "=ds=#e3#"  };
	};
};

--------------------
--- Hallow's End ---
--------------------
local HorsemanCLASSIC = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 2033808, "", desc = "=ds=#s1#, #a4#", ""  }; --The Horseman's Helm
	[2] = { itemID = 2034075, "", desc = "=ds=#s13#", ""  }; --Ring of Ghoulish Delight
	[3] = { itemID = 2034073, "", desc = "=ds=#s13#", ""  }; --The Horseman's Signet Ring
	[4] = { itemID = 2034074, "", desc = "=ds=#s13#", ""  }; --Witching Band
	[5] = { itemID = 2038175, "", "=q4=The Horseman's Blade", "=ds=#h3#, #w10#"  };
	[16] = { itemID = 34068, "", desc = "=ds=#m20#", "", "100%"  }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226, "", "=q1=Tricky Treat", "=ds=#m20#"  };
	[18] = { itemID = 37012, "", "=q4=The Horseman's Reins", "=ds=#e12#"  };
	[19] = { itemID = 37011, "", "=q3=Magic Broom", "=ds=#e12#"  };
	[20] = { itemID = 33292, "", "=q3=Hallowed Helm", "=ds=#s1#, #a1#"  };
	[21] = { itemID = 33154, "", "=q3=Sinister Squashling", "=ds=#e13#"  };
};

local HorsemanTBC = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 33808, "", desc = "=ds=#s1#, #a4#", ""  }; --The Horseman's Helm
	[2] = { itemID = 34075, "", desc = "=ds=#s13#", ""  }; --Ring of Ghoulish Delight
	[3] = { itemID = 34073, "", desc = "=ds=#s13#", ""  }; --The Horseman's Signet Ring
	[4] = { itemID = 34074, "", desc = "=ds=#s13#", ""  }; --Witching Band
	[5] = { itemID = 38175, "", "=q4=The Horseman's Blade", "=ds=#h3#, #w10#"  };
	[16] = { itemID = 34068, "", desc = "=ds=#m20#", "", "100%"  }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226, "", "=q1=Tricky Treat", "=ds=#m20#"  };
	[18] = { itemID = 37012, "", "=q4=The Horseman's Reins", "=ds=#e12#"  };
	[19] = { itemID = 37011, "", "=q3=Magic Broom", "=ds=#e12#"  };
	[20] = { itemID = 33292, "", "=q3=Hallowed Helm", "=ds=#s1#, #a1#"  };
	[21] = { itemID = 33154, "", "=q3=Sinister Squashling", "=ds=#e13#"  };
};

local HorsemanWRATH = {
	Name = AL["Headless Horseman"];
	[1] = { itemID = 49126, "", "=q4=The Horseman's Horrific Helm", "=ds=#s1#, #a4#"  };
	[2] = { itemID = 49121, "", "=q4=Ring of Ghoulish Glee", "=ds=#s13#"  };
	[3] = { itemID = 49123, "", "=q4=The Horseman's Seal", "=ds=#s13#"  };
	[4] = { itemID = 49124, "", "=q4=Wicked Witch's Band", "=ds=#s13#"  };
	[5] = { itemID = 49128, "", "=q4=The Horseman's Baleful Blade", "=ds=#h3#, #w10#"  };
	[16] = { itemID = 34068, "", desc = "=ds=#m20#", "", "100%"  }; --Weighted Jack-o'-Lantern
	[17] = { itemID = 33226, "", "=q1=Tricky Treat", "=ds=#m20#"  };
	[18] = { itemID = 37012, "", "=q4=The Horseman's Reins", "=ds=#e12#"  };
	[19] = { itemID = 37011, "", "=q3=Magic Broom", "=ds=#e12#"  };
	[20] = { itemID = 33292, "", "=q3=Hallowed Helm", "=ds=#s1#, #a1#"  };
	[21] = { itemID = 33154, "", "=q3=Sinister Squashling", "=ds=#e13#"  };
}

local HallowsEnd = {
	Name = AL["Miscellaneous"];
	[1] = { itemID = 33117, "", "=q3=Jack-o'-Lantern", "=ds=#m14# #e1# =q2=#z7#"  };
	[2] = { itemID = 20400, "", "=q2=Pumpkin Bag", "=ds=#m13# #e1# =q2=#z7#"  };
	[4] = { itemID = 33189, "", desc = "=ds=#e12#", "", ""  }; --Rickety Magic Broom
	[6] = { itemID = 18633, "", "=q1=Styleen's Sour Suckerpop", "=ds=#e3#"  };
	[7] = { itemID = 18632, "", "=q1=Moonbrook Riot Taffy", "=ds=#e3#"  };
	[8] = { itemID = 18635, "", "=q1=Bellara's Nutterbar", "=ds=#e3#"  };
	[9] = { itemID = 20557, "", "=q1=Hallow's End Pumpkin Treat", "=ds=#m20#"  };
	[11] = { itemID = 0, "inv_gauntlets_06", "=q6=#x40#", ""  };
	[12] = { itemID = 37585, "", "=q3=Chewy Fel Taffy", "=ds=#m20#"  };
	[13] = { itemID = 37583, "", "=q3=G.N.E.R.D.S.", "=ds=#m20#"  };
	[14] = { itemID = 37582, "", "=q1=Pyroblast Cinnamon Ball", "=ds=#m20#"  };
	[15] = { itemID = 37584, "", "=q1=Soothing Spearmint Candy", "=ds=#m20#"  };
	[16] = { itemID = 0, "INV_Misc_Bag_11", "=q6=#x18#", ""  };
	[17] = { itemID = 33292, "", "=q3=Hallowed Helm", "=ds=#s1#, #a1#"  };
	[18] = { itemID = 33154, "", "=q3=Sinister Squashling", "=ds=#e13#"  };
	[19] = { itemID = 20410, "", "=q1=Hallowed Wand - Bat", "=ds=#m20#"  };
	[20] = { itemID = 20409, "", "=q1=Hallowed Wand - Ghost", "=ds=#m20#"  };
	[21] = { itemID = 20399, "", "=q1=Hallowed Wand - Leper Gnome", "=ds=#m20#"  };
	[22] = { itemID = 20398, "", "=q1=Hallowed Wand - Ninja", "=ds=#m20#"  };
	[23] = { itemID = 20397, "", "=q1=Hallowed Wand - Pirate", "=ds=#m20#"  };
	[24] = { itemID = 20413, "", "=q1=Hallowed Wand - Random", "=ds=#m20#"  };
	[25] = { itemID = 20411, "", "=q1=Hallowed Wand - Skeleton", "=ds=#m20#"  };
	[26] = { itemID = 20414, "", "=q1=Hallowed Wand - Wisp", "=ds=#m20#"  };
	[27] = { itemID = 20389, "", "=q1=Candy Corn", "=ds=#e3#"  };
	[28] = { itemID = 20388, "", "=q1=Lollipop", "=ds=#e3#"  };
	[29] = { itemID = 20390, "", "=q1=Candy Bar", "=ds=#e3#"  };
};

local HallowsEndMasks = {
	Name = "Masks";
	[1] = { itemID = 0, "INV_Misc_Bag_11", "=q6=#x18#", ""  };
	[2] = { itemID = 34003, "", "=q1=Flimsy Male Draenei Mask", "=ds=#s1#"  };
	[3] = { itemID = 20561, "", "=q1=Flimsy Male Dwarf Mask", "=ds=#s1#"  };
	[4] = { itemID = 20391, "", "=q1=Flimsy Male Gnome Mask", "=ds=#s1#"  };
	[5] = { itemID = 20566, "", "=q1=Flimsy Male Human Mask", "=ds=#s1#"  };
	[6] = { itemID = 20564, "", "=q1=Flimsy Male Nightelf Mask", "=ds=#s1#"  };
	[7] = { itemID = 34002, "", "=q1=Flimsy Male Blood Elf Mask", "=ds=#s1#"  };
	[8] = { itemID = 20570, "", "=q1=Flimsy Male Orc Mask", "=ds=#s1#"  };
	[9] = { itemID = 20572, "", "=q1=Flimsy Male Tauren Mask", "=ds=#s1#"  };
	[10] = { itemID = 20568, "", "=q1=Flimsy Male Troll Mask", "=ds=#s1#"  };
	[11] = { itemID = 20573, "", "=q1=Flimsy Male Undead Mask", "=ds=#s1#"  };
	[17] = { itemID = 34001, "", "=q1=Flimsy Female Draenei Mask", "=ds=#s1#"  };
	[18] = { itemID = 20562, "", "=q1=Flimsy Female Dwarf Mask", "=ds=#s1#"  };
	[19] = { itemID = 20392, "", "=q1=Flimsy Female Gnome Mask", "=ds=#s1#"  };
	[20] = { itemID = 20565, "", "=q1=Flimsy Female Human Mask", "=ds=#s1#"  };
	[21] = { itemID = 20563, "", "=q1=Flimsy Female Nightelf Mask", "=ds=#s1#"  };
	[22] = { itemID = 34000, "", "=q1=Flimsy Female Blood Elf Mask", "=ds=#s1#"  };
	[23] = { itemID = 20569, "", "=q1=Flimsy Female Orc Mask", "=ds=#s1#"  };
	[24] = { itemID = 20571, "", "=q1=Flimsy Female Tauren Mask", "=ds=#s1#"  };
	[25] = { itemID = 20567, "", "=q1=Flimsy Female Troll Mask", "=ds=#s1#"  };
	[26] = { itemID = 20574, "", "=q1=Flimsy Female Undead Mask", "=ds=#s1#"  };
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
		[1] = { itemID = 19697, "", "=q1=Bounty of the Harvest", "=q1=#m4#: =ds=#m20#"  };
		[2] = { itemID = 20009, "", "=q1=For the Light!", "=q1=#m4#: =ds=#e10# =ec1=#m7#"  };
		[3] = { itemID = 20010, "", "=q1=The Horde's Hellscream", "=q1=#m4#: =ds=#e10# =ec1=#m6#"  };
		[5] = { itemID = 19995, "", "=q1=Harvest Boar", "=ds=#e3#"  };
		[6] = { itemID = 19996, "", "=q1=Harvest Fish", "=ds=#e3#"  };
		[7] = { itemID = 19994, "", "=q1=Harvest Fruit", "=ds=#e3#"  };
		[8] = { itemID = 19997, "", "=q1=Harvest Nectar", "=ds=#e4#"  };
	};
};

--------------------------
--- Love is in the Air ---
--------------------------

AtlasLoot_Data["Valentineday"] = {
	Name = AL["Love is in the Air"];
	{
		Name = AL["Love is in the Air"] .. " 1";
		[1] = { itemID = 34480, "", "=q3=Romantic Picnic Basket", "=ds=#m20#, 10 #valentineday#"  };
		[2] = { itemID = 21815, "", desc = "=ds=", "=ds=#m20#, 1 #valentineday2#"  }; --Love Token
		[3] = { itemID = 50163, "", desc = "=ds=", "=ds=#m20#, 5 #valentineday#"  }; --Lovely Rose
		[4] = { itemID = 22218, "", "=q1=Handful of Rose Petals", "=ds=#m20#, 2 #valentineday#"  };
		[5] = { itemID = 22200, "", "=q1=Silver Shafted Arrow", "=ds=#e13#, 5 #valentineday#"  };
		[6] = { itemID = 22235, "", "=q1=Truesilver Shafted Arrow", "=ds=#e13#, 40 #valentineday#"  };
		[7] = { itemID = 21813, "", "=q1=Bag of Heart Candies", "=ds=#m20#, 2 #valentineday#"  };
		[8] = { itemID = 21812, "", "=q1=Box of Chocolates", "=ds=#m20#, 10 #valentineday#"  };
		[9] = { itemID = 50160, "", "=q1=Lovely Dress Box", "=ds=#m20#, 20 #valentineday#"  };
		[10] = { itemID = 50161, "", "=q1=Dinner Suit Box", "=ds=#m20#, 20 #valentineday#"  };
		[11] = { itemID = 34258, "", "=q1=Love Rocket", "=ds=#e23#, 5 #valentineday#"  };
		[12] = { itemID = 22261, "", "=q1=Love Fool", "=ds=#e22#, 10 #valentineday#"  };
		[16] = { itemID = 49859, "", "=q1=\"Bravado\" Cologne", "=ds=#m20#, 1 #valentineday#"  };
		[17] = { itemID = 49861, "", "=q1=\"STALWART\" Cologne", "=ds=#m20#, 1 #valentineday#"  };
		[18] = { itemID = 49860, "", "=q1=\"Wizardry\" Cologne", "=ds=#m20#, 1 #valentineday#"  };
		[19] = { itemID = 49856, "", "=q1=\"VICTORY\" Perfume", "=ds=#m20#, 1 #valentineday#"  };
		[20] = { itemID = 49858, "", "=q1=\"Forever\" Perfume", "=ds=#m20#, 1 #valentineday#"  };
		[21] = { itemID = 49857, "", "=q1=\"Enchantress\" Perfume", "=ds=#m20#, 1 #valentineday#"  };
		[23] = { itemID = 21815, "", "=q1=Love Token", "=ds=#m17#"  };
		[24] = { itemID = 49916, "", "=q1=Lovely Charm Bracelet", "=ds=#m17#"  };
	};
	{
		Name = AL["Love is in the Air"] .. " 2";
		[1] = { itemID = 0, "INV_Box_02", "=q6=" .. AL["Lovely Dress Box"], ""  };
		[2] = { itemID = 22279, "", "=q1=Lovely Black Dress", "=ds=#s5#"  };
		[3] = { itemID = 22276, "", "=q1=Lovely Red Dress", "=ds=#s5#"  };
		[4] = { itemID = 22278, "", "=q1=Lovely Blue Dress", "=ds=#s5#"  };
		[5] = { itemID = 22280, "", "=q1=Lovely Purple Dress", "=ds=#s5#"  };
		[7] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Dinner Suit Box"], ""  };
		[8] = { itemID = 22277, "", "=q1=Red Dinner Suit", "=q1=#m4#: =ds=#s5#"  };
		[9] = { itemID = 22281, "", "=q1=Blue Dinner Suit", "=q1=#m4#: =ds=#s5#"  };
		[10] = { itemID = 22282, "", "=q1=Purple Dinner Suit", "=q1=#m4#: =ds=#s5#"  };
		[16] = { itemID = 0, "INV_ValentinesBoxOfChocolates02", "=q6=#x17#", ""  };
		[17] = { itemID = 22237, "", "=q1=Dark Desire", "=ds=#e3#"  };
		[18] = { itemID = 22238, "", "=q1=Very Berry Cream", "=ds=#e3#"  };
		[19] = { itemID = 22236, "", "=q1=Buttermilk Deligh", "=ds=#e3#"  };
		[20] = { itemID = 22239, "", "=q1=Sweet Surprise ", "=ds=#e3#"  };
		[22] = { itemID = 0, "inv_valentinescandysack", "=q6=" .. AL["Bag of Heart Candies"], ""  };
		[23] = { itemID = 21816, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[24] = { itemID = 21817, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[25] = { itemID = 21818, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[26] = { itemID = 21819, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[27] = { itemID = 21820, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[28] = { itemID = 21821, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[29] = { itemID = 21822, "", "=q1=Heart Candy", "=ds=#m20#"  };
		[30] = { itemID = 21823, "", "=q1=Heart Candy", "=ds=#m20#"  };
	};
	{
		Name = AL["Love is in the Air"] .. " 3";
		[1] = { itemID = 51804, "", "=q4=Winking Eye of Love", "=ds=#s2#"  };
		[2] = { itemID = 51805, "", "=q4=Heartbreak Charm", "=ds=#s2#"  };
		[3] = { itemID = 51806, "", "=q4=Shard of Pirouetting Happiness", "=ds=#s2#"  };
		[4] = { itemID = 51807, "", "=q4=Sweet Perfume Broach", "=ds=#s2#"  };
		[5] = { itemID = 51808, "", "=q4=Choker of the Pure Heart", "=ds=#s2#"  };
		[7] = { itemID = 49715, "", "=q3=Forever-Lovely Rose", "=ds=#s1#"  };
		[8] = { itemID = 50741, "", "=q3=Vile Fumigator's Mask", "=ds=#s1#"  };
		[16] = { itemID = 50446, "", "=q3=Toxic Wasteling", "=ds=#e13#"  };
		[17] = { itemID = 50471, "", "=q3=The Heartbreaker", "=ds=#m20#"  };
		[19] = { itemID = 50250, "", "=q4=Big Love Rocket", "=ds=#e12#"  };
	};
};

----------------------
--- Lunar Festival ---
----------------------

AtlasLoot_Data["LunarFestival"] = {
	Name = AL["Lunar Festival"];
	{
		Name = AL["Miscellaneous"];
		[1] = { itemID = 21540, "", "=q2=Elune's Lantern", "=q1=#m4#: =ds=#m20#"  };
		[3] = { itemID = 21157, "", "=q1=Festive Green Dress", "=ds=#s5#"  };
		[4] = { itemID = 21538, "", "=q1=Festive Pink Dress", "=ds=#s5#"  };
		[5] = { itemID = 21539, "", "=q1=Festive Purple Dress", "=ds=#s5#"  };
		[7] = { itemID = 21541, "", "=q1=Festive Black Pant Suit", "=ds=#s5#"  };
		[8] = { itemID = 21544, "", "=q1=Festive Blue Pant Suit", "=ds=#s5#"  };
		[9] = { itemID = 21543, "", "=q1=Festive Teal Pant Suit", "=ds=#s5#"  };
		[11] = { itemID = 21537, "", "=q1=Festival Dumplings", "=ds=#e3#"  };
		[13] = { itemID = 21713, "", "=q1=Elune's Candle", "=ds=#m20#"  };
		[15] = { itemID = 21100, "", "=q1=Coin of Ancestry", "=ds=#m17#"  };
		[16] = { itemID = 0, "INV_Box_02", "=q6=#x24#", "=ds=#e23#"  };
		[17] = { itemID = 21558, "", "=q1=Small Blue Rocket", "=ds=#e23#"  };
		[18] = { itemID = 21559, "", "=q1=Small Green Rocket", "=ds=#e23#"  };
		[19] = { itemID = 21557, "", "=q1=Small Red Rocket", "=ds=#e23#"  };
		[20] = { itemID = 21561, "", "=q1=Small White Rocket", "=ds=#e23#"  };
		[21] = { itemID = 21562, "", "=q1=Small Yellow Rocket", "=ds=#e23#"  };
		[22] = { itemID = 21589, "", "=q1=Large Blue Rocket", "=ds=#e23#"  };
		[23] = { itemID = 21590, "", "=q1=Large Green Rocket", "=ds=#e23#"  };
		[24] = { itemID = 21592, "", "=q1=Large Red Rocket", "=ds=#e23#"  };
		[25] = { itemID = 21593, "", "=q1=Large White Rocket", "=ds=#e23#"  };
		[26] = { itemID = 21595, "", "=q1=Large Yellow Rocket", "=ds=#e23#"  };
		[28] = { itemID = 0, "INV_Misc_LuckyMoneyEnvelope", "=q6=#x25#", ""  };
		[29] = { itemID = 21744, "", "=q1=Lucky Rocket Cluster", "=ds=#e23#"  };
		[30] = { itemID = 21745, "", "=q1=Elder's Moonstone", "=ds=#m20#"  };
	};
	{
		Name = AL["Crafting Patterns"];
		[1] = { itemID = 21738, "", "=q2=Schematic: Firework Launcher ", "=ds=#p5# (225)"  };
		[3] = { itemID = 0, "INV_Scroll_03", "=q6=#x26#", ""  };
		[4] = { itemID = 21724, "", "=q2=Schematic: Small Blue Rocket", "=ds=#p5# (125)"  };
		[5] = { itemID = 21725, "", "=q2=Schematic: Small Green Rocket", "=ds=#p5# (125)"  };
		[6] = { itemID = 21726, "", "=q2=Schematic: Small Red Rocket", "=ds=#p5# (125)"  };
		[8] = { itemID = 0, "INV_Scroll_04", "=q6=#x27#", ""  };
		[9] = { itemID = 21727, "", "=q2=Schematic: Large Blue Rocket", "=ds=#p5# (175)"  };
		[10] = { itemID = 21728, "", "=q2=Schematic: Large Green Rocket", "=ds=#p5# (175)"  };
		[11] = { itemID = 21729, "", "=q2=Schematic: Large Red Rocket", "=ds=#p5# (175)"  };
		[13] = { itemID = 21722, "", "=q2=Pattern: Festival Dress", "=ds=#p8# (250)"  };
		[16] = { itemID = 21737, "", "=q2=Schematic: Cluster Launcher", "=ds=#p5# (275)"  };
		[18] = { itemID = 0, "INV_Scroll_05", "=q6=#x28#", ""  };
		[19] = { itemID = 21730, "", "=q2=Schematic: Blue Rocket Cluster", "=ds=#p5# (225)"  };
		[20] = { itemID = 21731, "", "=q2=Schematic: Green Rocket Cluster", "=ds=#p5# (225)"  };
		[21] = { itemID = 21732, "", "=q2=Schematic: Red Rocket Cluster", "=ds=#p5# (225)"  };
		[23] = { itemID = 0, "INV_Scroll_06", "=q6=#x29#", ""  };
		[24] = { itemID = 21733, "", "=q2=Schematic: Large Blue Rocket Cluster", "=ds=#p5# (275)"  };
		[25] = { itemID = 21734, "", "=q2=Schematic: Large Green Rocket Cluster", "=ds=#p5# (275)"  };
		[26] = { itemID = 21735, "", "=q2=Schematic: Large Red Rocket Cluster", "=ds=#p5# (275)"  };
		[28] = { itemID = 21723, "", "=q2=Pattern: Festival Suit", "=ds=#p8# (250)"  };
	};
};

-------------------------------
--- Midsummer Fire Festival ---
-------------------------------

local lordAhuneTBC = {
	Name = AL["Lord Ahune"];
	[1] = { itemID = 35507, "", "=q4=Amulet of Bitter Hatred", "=ds=#s2#"  };
	[2] = { itemID = 35509, "", "=q4=Amulet of Glacial Tranquility", "=ds=#s2#"  };
	[3] = { itemID = 35508, "", "=q4=Choker of the Arctic Flow", "=ds=#s2#"  };
	[4] = { itemID = 35511, "", "=q4=Hailstone Pendant", "=ds=#s2#"  };
	[6] = { itemID = 35498, "", "=q3=Formula: Enchant Weapon - Deathfrost", "=ds=#p4# (350)"  };
	[7] = { itemID = 34955, "", "=q3=Scorched Stone", "=ds=#e13#"  };
	[9] = { itemID = 35723, "", "=q1=Shards of Ahune", "=ds=#m2#"  };
	[10] = { itemID = 35279, "", "=q3=Tabard of Summer Skies", "=q1=#m4#: =ds=#s7#"  };
	[11] = { itemID = 35280, "", "=q3=Tabard of Summer Flames", "=q1=#m4#: =ds=#s7#"  };
	[16] = { itemID = 35497, "", "=q4=Cloak of the Frigid Winds", "=ds=#s4#"  };
	[17] = { itemID = 35496, "", "=q4=Icebound Cloak", "=ds=#s4#"  };
	[18] = { itemID = 35494, "", "=q4=Shroud of Winter's Chill", "=ds=#s4#"  };
	[19] = { itemID = 35495, "", "=q4=The Frost Lord's War Cloak", "=ds=#s4#"  };
	[20] = { itemID = 35514, "", "=q4=Frostscythe of Lord Ahune", "=ds=#w9#"  };
};

local lordAhuneWRATH = {
	Name = AL["Lord Ahune"];
	[1] = { itemID = 54805, "", "=q4=Cloak of the Frigid Winds", "=ds=#s4#"  };
	[2] = { itemID = 54801, "", "=q4=Icebound Cloak", "=ds=#s4#"  };
	[3] = { itemID = 54804, "", "=q4=Shroud of Winter's Chill", "=ds=#s4#"  };
	[4] = { itemID = 54803, "", "=q4=The Frost Lord's Battle Shroud", "=ds=#s4#"  };
	[5] = { itemID = 54802, "", "=q4=The Frost Lord's War Cloak", "=ds=#s4#"  };
	[7] = { itemID = 35498, "", "=q3=Formula: Enchant Weapon - Deathfrost", "=ds=#p4# (350)"  };
	[9] = { itemID = 35723, "", "=q1=Shards of Ahune", "=ds=#m2#"  };
	[10] = { itemID = 35279, "", "=q3=Tabard of Summer Skies", "=q1=#m4#: =ds=#s7#"  };
	[11] = { itemID = 35280, "", "=q3=Tabard of Summer Flames", "=q1=#m4#: =ds=#s7#"  };
	[16] = { itemID = 54536, "", "=q3=Satchel of Chilled Goods", "=ds="  };
	[17] = { itemID = 54806, "", "=q4=Frostscythe of Lord Ahune", "=ds=#w9#"  };
	[18] = { itemID = 53641, "", "=q3=Ice Chip", "=ds=#e13#"  };
};

local midSummerMain = {
	Name = AL["Midsummer Fire Festival"];
	[1] = { itemID = 34686, "", "=q3=Brazier of Dancing Flames", "350 #fireflower#"  };
	[2] = { itemID = 23083, "", "=q3=Captured Flame", "=ds=#e13#, 350 #fireflower#"  };
	[4] = { itemID = 23379, "", "=q2=Cinder Bracers", "=ds=#e22#"  };
	[6] = { itemID = 23246, "", "=q1=Fiery Festival Brew", "2 #fireflower#"  };
	[7] = { itemID = 23435, "", "=q1=Elderberry Pie", "5 #fireflower#"  };
	[8] = { itemID = 23327, "", "=q1=Fire-toasted Bun", "5 #fireflower#"  };
	[9] = { itemID = 23326, "", "=q1=Midsummer Sausage", "5 #fireflower#"  };
	[10] = { itemID = 23211, "", "=q1=Toasted Smorc", "5 #fireflower#"  };
	[11] = { itemID = 34684, "", "=q1=Handful of Summer Petals", "2 #fireflower#"  };
	[12] = { itemID = 23215, "", "=q1=Bag of Smorc Ingredients", "5 #fireflower#"  };
	[13] = { itemID = 34599, "", "=q1=Juggling Torch", "5 #fireflower#"  };
	[15] = { itemID = 23247, "", "=q1=Burning Blossom", "=ds=#m17#"  };
	[16] = { itemID = 23323, "", "=q1=Crown of the Fire Festival", "=ds=#s1#, #a1#, #m4#"  };
	[17] = { itemID = 23324, "", "=q1=Mantle of the Fire Festival", "=ds=#s3#, 100 #fireflower#"  };
	[18] = { itemID = 34685, "", "=q1=Vestment of Summer", "=ds=#s5#, 100 #fireflower#"  };
	[19] = { itemID = 34683, "", "=q1=Sandals of Summer", "=ds=#s11#, 200 #fireflower#"  };
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
		[2] = { itemID = 44793, "", desc = "=ds=#e10#", "100 #noblegarden#"  }; --Tome of Polymorph: Rabbit
		[3] = { itemID = 44794, "", desc = "=ds=#e13#", "100 #noblegarden#"  }; --Spring Rabbit's Foot
		[4] = { itemID = 44803, "", desc = "=ds=#s1#", "50 #noblegarden#"  }; --Spring Circlet
		[5] = { itemID = 19028, "", desc = "=ds=#s5#", "50 #noblegarden#"  }; --Elegant Dress
		[6] = { itemID = 44800, "", desc = "=ds=#s5#", "50 #noblegarden#"  }; --Spring Robes
		[7] = { itemID = 45073, "", desc = "=ds=#h1#", "50 #noblegarden#"  }; --Spring Flowers
		[8] = { itemID = 6833, "", desc = "=ds=#s6#", "25 #noblegarden#"  }; --White Tuxedo Shirt
		[9] = { itemID = 6835, "", desc = "=ds=#s11#", "25 #noblegarden#"  }; --Black Tuxedo Pants
		[10] = { itemID = 44792, "", desc = "=ds=", "10 #noblegarden#"  }; --Blossoming Branch
		[11] = { itemID = 44818, "", desc = "=ds=", "5 #noblegarden#"  }; --Noblegarden Egg
		[13] = { itemID = 45067, "", "=q1=Egg Basket", "=q1=#m4#: =ds=#s15#"  };
		[14] = { itemID = 44791, "", "=q1=Noblegarden Chocolate", "=ds=#e3#"  };
	};
};
------------------------
--- Pilgrim's Bounty ---
------------------------

AtlasLoot_Data["PilgrimsBounty"] = {
	Name = AL["Pilgrim's Bounty"];
	{
		Name = AL["Pilgrim's Bounty"];
		[1] = { itemID = 46809, "", "=q2=Bountiful Cookbook", "=ds=#p3# #e10# (1)"  };
		[2] = { itemID = 44860, "", "=q1=Recipe: Spice Bread Stuffing", "=ds=#p3# (1)"  };
		[3] = { itemID = 44862, "", "=q1=Recipe: Pumpkin Pie", "=ds=#p3# (100)"  };
		[4] = { itemID = 44858, "", "=q1=Recipe: Cranberry Chutney", "=ds=#p3# (160)"  };
		[5] = { itemID = 44859, "", "=q1=Recipe: Candied Sweet Potato", "=ds=#p3# (220)"  };
		[6] = { itemID = 44861, "", "=q1=Recipe: Slow-Roasted Turkey", "=ds=#p3# (280)"  };
		[7] = { itemID = 46888, "", "=q1=Bountiful Basket", "=ds=#e3#, #p3# (350)"  };
		[8] = { itemID = 44855, "", "=q1=Teldrassil Sweet Potato", "=ds=#e3#"  };
		[9] = { itemID = 44854, "", "=q1=Tangy Wetland Cranberries", "=ds=#e3#"  };
		[10] = { itemID = 46784, "", "=q1=Ripe Elwynn Pumpkin", "=ds=#e3#"  };
		[11] = { itemID = 44835, "", "=q1=Autumnal Herbs", "=ds=#e6#"  };
		[12] = { itemID = 44853, "", "=q1=Honey", "=ds=#e6#"  };
		[16] = { itemID = 44810, "", "=q3=Turkey Cage", "=q1=#m32#: =ds=#e13#"  };
		[17] = { itemID = 46723, "", "=q1=Pilgrim's Hat", "=q1=#m4#: =ds=#s1#"  };
		[18] = { itemID = 46800, "", "=q1=Pilgrim's Attire", "=q1=#m4#: =ds=#s5#"  };
		[19] = { itemID = 44785, "", "=q1=Pilgrim's Dress", "=q1=#m4#: =ds=#s5#"  };
		[20] = { itemID = 46824, "", "=q1=Pilgrim's Robe", "=q1=#m4#: =ds=#s5#"  };
		[21] = { itemID = 44788, "", "=q1=Pilgrim's Boots", "=q1=#m4#: =ds=#s12#"  };
		[22] = { itemID = 44844, "", "=q1=Turkey Caller", "=q1=#m4#: =ds="  };
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
		[1] = { itemID = 0, "INV_Box_01", "=q6=#j16#", "=q1=#n112#"  };
		[2] = { itemID = 32596, "", desc = "=ds=#e2#", "", ""  }; --Unstable Flask of the Elder
		[3] = { itemID = 32600, "", desc = "=ds=#e2#", "", ""  }; --Unstable Flask of the Physician
		[4] = { itemID = 32599, "", desc = "=ds=#e2#", "", ""  }; --Unstable Flask of the Bandit
		[5] = { itemID = 32597, "", desc = "=ds=#e2#", "", ""  }; --Unstable Flask of the Soldier
		[7] = { itemID = 0, "INV_Box_01", "=q6=#j17#", "=q1=#n113#"  };
		[8] = { itemID = 32634, "", desc = "=ds=#e7#", "", ""  }; --Unstable Amethyst
		[9] = { itemID = 32637, "", desc = "=ds=#e7#", "", ""  }; --Unstable Citrine
		[10] = { itemID = 32635, "", desc = "=ds=#e7#", "", ""  }; --Unstable Peridot
		[11] = { itemID = 32636, "", desc = "=ds=#e7#", "", ""  }; --Unstable Sapphire
		[12] = { itemID = 32639, "", desc = "=ds=#e7#", "", ""  }; --Unstable Talasite
		[13] = { itemID = 32638, "", desc = "=ds=#e7#", "", ""  }; --Unstable Topaz
		[16] = { itemID = 0, "INV_Box_01", "=q6=#j18#", "=q1=#n114#"  };
		[17] = { itemID = 32641, "", desc = "=ds=#e7#", "", ""  }; --Imbued Unstable Diamond
		[18] = { itemID = 32640, "", desc = "=ds=#e7#", "", ""  }; --Potent Unstable Diamond
		[19] = { itemID = 32759, "", desc = "=ds=", "", ""  }; --Accelerator Module
		[20] = { itemID = 32630, "", desc = "=ds=", "", ""  }; --Small Gold Metamorphosis Geode
		[21] = { itemID = 32631, "", desc = "=ds=", "", ""  }; --Small Silver Metamorphosis Geode
		[22] = { itemID = 32627, "", desc = "=ds=", "", ""  }; --Small Copper Metamorphosis Geode
		[23] = { itemID = 32625, "", desc = "=ds=", "", ""  }; --Small Iron Metamorphosis Geode
		[24] = { itemID = 32629, "", desc = "=ds=", "", ""  }; --Large Gold Metamorphosis Geode
		[25] = { itemID = 32628, "", desc = "=ds=", "", ""  }; --Large Silver Metamorphosis Geode
		[26] = { itemID = 32626, "", desc = "=ds=", "", ""  }; --Large Copper Metamorphosis Geode
		[27] = { itemID = 32624, "", desc = "=ds=", "", ""  }; --Large Iron Metamorphosis Geode
	};
};
----------------------
--- Darkmoon Faire ---
----------------------

AtlasLoot_Data["Darkmoon"] = {
	Name = BabbleFaction["Darkmoon Faire"];
	{
		Name = AL["Darkmoon Faire Rewards"];
		[1] = { itemID = 19491, "", desc = "=ds=#s2#", "1200 #darkmoon#", ""  }; --Amulet of the Darkmoon
		[2] = { itemID = 19426, "", desc = "=ds=#s2#", "1200 #darkmoon#", ""  }; --Orb of the Darkmoon
		[3] = { itemID = 19296, "", "=q2=Greater Darkmoon Prize", "40 #darkmoon#"  };
		[4] = { itemID = 19297, "", "=q2=Lesser Darkmoon Prize", "12 #darkmoon#"  };
		[5] = { itemID = 19298, "", "=q2=Minor Darkmoon Prize", "5 #darkmoon#"  };
		[6] = { itemID = 19291, "", "=q1=Darkmoon Storage Box", "50 #darkmoon#"  };
		[7] = { itemID = 19293, "", desc = "=ds=#h1#, #w6#", "50 #darkmoon#", ""  }; --Last Year's Mutton
		[8] = { itemID = 22729, "", desc = "=ds=#p5# (275)", "40 #darkmoon#", ""  }; --Schematic: Steam Tonk Controller
		[9] = { itemID = 19292, "", desc = "=ds=#h1#, #w6#", "10 #darkmoon#", ""  }; --Last Month's Mutton
		[10] = { itemID = 19295, "", desc = "=ds=#s15#", "5 #darkmoon#", ""  }; --Darkmoon Flower
		[12] = { itemID = 19182, "", "=q1=Darkmoon Faire Prize Ticket", "=ds=#m17#"  };
		[16] = { itemID = 19302, "", "=q3=Darkmoon Ring", "=ds=#s13#"  };
		[17] = { itemID = 19303, "", "=q2=Darkmoon Necklace", "=ds=#s2#"  };
		[19] = { itemID = 11026, "", "=q1=Tree Frog Box", "=ds=#e13#"  };
		[20] = { itemID = 11027, "", "=q1=Wood Frog Box", "=ds=#e13#"  };
		[21] = { itemID = 19450, "", "=q1=A Jubling's Tiny Home", "=q1=#m4#: =ds=#e13#"  };
	};
	{
		Name = AL["Low Level Decks"];
		[1] = { itemID = 37163, "", "=q2=Rogues Deck", "=ds=#m2#"  };
		[2] = { itemID = 38318, "", "=q2=Darkmoon Robe", "=q1=#m4#: =ds=#s5#, #a1# =q2=#m16#"  };
		[3] = { itemID = 39509, "", "=q2=Darkmoon Vest", "=q1=#m4#: =ds=#s5#, #a2# =q2=#m16#"  };
		[4] = { itemID = 39507, "", "=q2=Darkmoon Chain Shirt", "=q1=#m4#: =ds=#s5#, #a3# =q2=#m16#"  };
		[6] = { itemID = 37164, "", "=q3=Swords Deck", "=ds=#m2#"  };
		[7] = { itemID = 39894, "", "=q3=Darkcloth Shoulders", "=q1=#m4#: =ds=#s3#, #a1# =q2=#m16#"  };
		[8] = { itemID = 39895, "", "=q3=Cloaked Shoulderpads", "=q1=#m4#: =ds=#s3#, #a2# =q2=#m16#"  };
		[9] = { itemID = 39897, "", "=q3=Azure Shoulderguards", "=q1=#m4#: =ds=#s3#, #a3# =q2=#m16#"  };
		[16] = { itemID = 44148, "", "=q3=Mages Deck", "=ds=#m2#"  };
		[17] = { itemID = 44215, "", "=q3=Darkmoon Necklace", "=q1=#m4#: =ds=#s2#"  };
		[18] = { itemID = 44213, "", "=q3=Darkmoon Pendant", "=q1=#m4#: =ds=#s2#"  };
		[21] = { itemID = 44158, "", "=q3=Demons Deck", "=ds=#m2#"  };
		[22] = { itemID = 44217, "", "=q3=Darkmoon Dirk", "=q1=#m4#: =ds=#h1#, #w4#"  };
		[23] = { itemID = 44218, "", "=q3=Darkmoon Executioner", "=q1=#m4#: =ds=#h2#, #w1#"  };
		[24] = { itemID = 44219, "", "=q3=Darkmoon Magestaff", "=q1=#m4#: =ds=#w9#"  };
	};
	{
		Name = AL["Original and BC Trinkets"];
		[1] = { itemID = 19228, "", "=q4=Beasts Deck", "=ds=#m2#"  };
		[2] = { itemID = 19288, "", "=q4=Darkmoon Card: Blue Dragon", "=q1=#m4#: =ds=#s14#"  };
		[4] = { itemID = 19267, "", "=q4=Elementals Deck", "=ds=#m2#"  };
		[5] = { itemID = 19289, "", "=q4=Darkmoon Card: Maelstrom", "=q1=#m4#: =ds=#s14#"  };
		[7] = { itemID = 19277, "", "=q4=Portals Deck", "=ds=#m2#"  };
		[8] = { itemID = 19290, "", "=q4=Darkmoon Card: Twisting Nether", "=q1=#m4#: =ds=#s14#"  };
		[10] = { itemID = 19257, "", "=q4=Warlords Deck", "=ds=#m2#"  };
		[11] = { itemID = 19287, "", "=q4=Darkmoon Card: Heroism", "=q1=#m4#: =ds=#s14#"  };
		[16] = { itemID = 31890, "", "=q4=Blessings Deck", "=ds=#m2#"  };
		[17] = { itemID = 31856, "", "=q4=Darkmoon Card: Crusade", "=q1=#m4#: =ds=#s14#"  };
		[19] = { itemID = 31907, "", "=q4=Furies Deck", "=ds=#m2#"  };
		[20] = { itemID = 31858, "", "=q4=Darkmoon Card: Vengeance", "=q1=#m4#: =ds=#s14#"  };
		[22] = { itemID = 31914, "", "=q4=Lunacy Deck", "=ds=#m2#"  };
		[23] = { itemID = 31859, "", "=q4=Darkmoon Card: Madness", "=q1=#m4#: =ds=#s14#"  };
		[25] = { itemID = 31891, "", "=q4=Storms Deck", "=ds=#m2#"  };
		[26] = { itemID = 31857, "", "=q4=Darkmoon Card: Wrath", "=q1=#m4#: =ds=#s14#"  };
	};
	{
		Name = AL["WotLK Trinkets"];
		[1] = { itemID = 44276, "", "=q4=Chaos Deck", "=ds=#m2#"  };
		[2] = { itemID = 42989, "", "=q4=Darkmoon Card: Berserker!", "=q1=#m4#: =ds=#s14#"  };
		[4] = { itemID = 44259, "", "=q4=Prisms Deck", "=ds=#m2#"  };
		[5] = { itemID = 42988, "", "=q4=Darkmoon Card: Illusion", "=q1=#m4#: =ds=#s14#"  };
		[7] = { itemID = 44294, "", "=q4=Undeath Deck", "=ds=#m2#"  };
		[8] = { itemID = 42990, "", "=q4=Darkmoon Card: Death", "=q1=#m4#: =ds=#s14#"  };
		[16] = { itemID = 44326, "", "=q4=Nobles Deck", "=ds=#m2#"  };
		[17] = { itemID = 44253, "", "=q4=Darkmoon Card: Greatness", "=q1=#m4#: =ds=#s14#"  };
		[18] = { itemID = 42987, "", "=q4=Darkmoon Card: Greatness", "=q1=#m4#: =ds=#s14#"  };
		[19] = { itemID = 44254, "", "=q4=Darkmoon Card: Greatness", "=q1=#m4#: =ds=#s14#"  };
		[20] = { itemID = 44255, "", "=q4=Darkmoon Card: Greatness", "=q1=#m4#: =ds=#s14#"  };
	};
};

--------------------------
--- Elemental Invasion ---
--------------------------

AtlasLoot_Data["ElementalInvasion"] = {
	Name = AL["Elemental Invasion"];
	{
		Name = AL["Elemental Invasion"];
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n108#", "=q1=#j19#, #z20#"  };
		[2] = { itemID = 18671, "", desc = "=ds=#h1#, #w6#", "", "12.18%"  }; --Baron Charr's Sceptre
		[3] = { itemID = 19268, "", desc = "=ds=#e16#", "", "10.14%"  }; --Ace of Elementals
		[4] = { itemID = 18672, "", desc = "=ds=#s15#", "", "53.31%"  }; --Elemental Ember
		[6] = { itemID = 0, "INV_Box_01", "=q6=#n109#", "=q1=#j20#, #z21#"  };
		[7] = { itemID = 18678, "", desc = "=ds=#s2#", "", "12.33%"  }; --Tempestria's Frozen Necklace
		[8] = { itemID = 19268, "", desc = "=ds=#e16#", "", "5.24%"  }; --Ace of Elementals
		[9] = { itemID = 21548, "", desc = "=ds=#p7# (300)", "", "25.00%"  }; --Pattern: Stormshroud Gloves
		[10] = { itemID = 18679, "", desc = "=ds=#s13#", "", "51.01%"  }; --Frigid Ring
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n110#", "=q1=#j22#, #z22#"  };
		[17] = { itemID = 18673, "", desc = "=ds=#w8#", "", "14.56%"  }; --Avalanchion's Stony Hide
		[18] = { itemID = 19268, "", desc = "=ds=#e16#", "", "5.89%"  }; --Ace of Elementals
		[19] = { itemID = 18674, "", desc = "=ds=#s13#", "", "41.50%"  }; --Hardened Stone Band
		[21] = { itemID = 0, "INV_Box_01", "=q6=#n111#", "=q1=#j21#, #z23#"  };
		[22] = { itemID = 18676, "", desc = "=ds=#s10#, #a3#", "", "16.76%"  }; --Sash of the Windreaver
		[23] = { itemID = 19268, "", desc = "=ds=#e16#", "", "9.76%"  }; --Ace of Elementals
		[24] = { itemID = 21548, "", desc = "=ds=#p7# (300)", "", "36.28%"  }; --Pattern: Stormshroud Gloves
		[25] = { itemID = 18677, "", desc = "=ds=#s4#", "", "52.47%"  }; --Zephyr Cloak
	};
};

---------------------------------
--- Gurubashi Arena Booty Run ---
---------------------------------

AtlasLoot_Data["GurubashiArena"] = {
	Name = AL["Gurubashi Arena Booty Run"];
	{
		Name = AL["Gurubashi Arena Booty Run"];
		[1] = { itemID = 18709, "", desc = "=ds=#s8#, #a1#", "", "5.0%"  }; --Arena Wristguards
		[2] = { itemID = 18710, "", desc = "=ds=#s8#, #a2#", "", "6.4%"  }; --Arena Bracers
		[3] = { itemID = 18711, "", desc = "=ds=#s8#, #a3#", "", "6.0%"  }; --Arena Bands
		[4] = { itemID = 18712, "", desc = "=ds=#s8#, #a4#", "", "6.8%"  }; --Arena Vambraces
		[16] = { itemID = 18706, "", desc = "=ds=#s14#, =q1=#m2#", "", "100%"  }; --Arena Master
		[17] = { itemID = 19024, "", "=q3=Arena Grand Master", "=q1=#m4#: =ds=#s14#"  };
	};
};

------------------------------------------
--- Stranglethorn Fishing Extravaganza ---
------------------------------------------

AtlasLoot_Data["FishingExtravaganza"] = {
	Name = "Stranglethorn Fishing";
	{
		Name = AL["Stranglethorn Fishing Extravaganza"];
		[1] = { itemID = 0, "INV_Box_01", "=q6=#j24#", "=q1=#j23#"  };
		[2] = { itemID = 19970, "", "=q3=Arcanite Fishing Pole", "=ds=#e20#"  };
		[3] = { itemID = 19979, "", "=q3=Hook of the Master Angler", "=ds=#s14#"  };
		[5] = { itemID = 0, "INV_Box_01", "=q6=#j26#", ""  };
		[6] = { itemID = 19805, "", desc = "=ds=#e21#", "", ""  }; --Keefer's Angelfish
		[7] = { itemID = 19803, "", desc = "=ds=#e21#", "", ""  }; --Brownell's Blue Striped Racer
		[8] = { itemID = 19806, "", desc = "=ds=#e21#", "", ""  }; --Dezian Queenfish
		[9] = { itemID = 19808, "", desc = "=ds=#h1#, #w6#", "", ""  }; --Rockhide Strongfish
		[20] = { itemID = 0, "INV_Box_01", "=q6=#j25#", ""  };
		[21] = { itemID = 19972, "", "=q2=Lucky Fishing Hat", "=ds=#s1#, #a1#"  };
		[22] = { itemID = 19969, "", "=q2=Nat Pagle's Extreme Anglin' Boots", "=ds=#s12#, #a1#"  };
		[23] = { itemID = 19971, "", "=q2=High Test Eternium Fishing Line", "=ds=#e20# #e17#"  };
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
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n96#", "=q1=#j19#"  };
		[2] = { itemID = 20657, "", desc = "=ds=#h1#, #w4#", "", "2.31%"  }; --Crystal Tipped Stiletto
		[3] = { itemID = 20655, "", desc = "=ds=#s9#, #a1#, =q2=#m16#", "", "13.03%"  }; --Abyssal Cloth Handwraps
		[4] = { itemID = 20656, "", desc = "=ds=#s12#, #a3# =q2=#m16#", "", "12.89%"  }; --Abyssal Mail Sabatons
		[5] = { itemID = 20513, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Crest
		[7] = { itemID = 0, "INV_Box_01", "=q6=#n97#", "=q1=#j20#"  };
		[8] = { itemID = 20654, "", desc = "=ds=#w9#", "", "2.38%"  }; --Amethyst War Staff
		[9] = { itemID = 20652, "", desc = "=ds=#s12#, #a1# =q2=#m16#", "", "12.94%"  }; --Abyssal Cloth Slippers
		[10] = { itemID = 20653, "", desc = "=ds=#s9#, #a4# =q2=#m16#", "", "13.61%"  }; --Abyssal Plate Gauntlets
		[11] = { itemID = 20513, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Crest
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n98#", "=q1=#j21#"  };
		[17] = { itemID = 20660, "", desc = "=ds=#w7#", "", "2.22%"  }; --Stonecutting Glaive
		[18] = { itemID = 20658, "", desc = "=ds=#s12#, #a2# =q2=#m16#", "", "13.16%"  }; --Abyssal Leather Boots
		[19] = { itemID = 20659, "", desc = "=ds=#s9#, #a3# =q2=#m16#", "", "12.64%"  }; --Abyssal Mail Handguards
		[20] = { itemID = 20513, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Crest
		[22] = { itemID = 0, "INV_Box_01", "=q6=#n99#", "=q1=#j22#"  };
		[23] = { itemID = 20663, "", desc = "=ds=#w2#", "", "2.55%"  }; --Deep Strike Bow
		[24] = { itemID = 20661, "", desc = "=ds=#s9#, #a2# =q2=#m16#", "", "13.16%"  }; --Abyssal Leather Gloves
		[25] = { itemID = 20662, "", desc = "=ds=#s12#, #a4# =q2=#m16#", "", "12.93%"  }; --Abyssal Plate Greaves
		[26] = { itemID = 20513, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Crest
	};
	{
		Name = AL["Dukes"];
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n100#", "=q1=#j19#"  };
		[2] = { itemID = 20665, "", desc = "=ds=#s11#, #a2# =q2=#m16#", "", "22.50%"  }; --Abyssal Leather Leggings
		[3] = { itemID = 20666, "", desc = "=ds=#h3#, #w6#", "", "30.47%"  }; --Hardened Steel Warhammer
		[4] = { itemID = 20514, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Signet
		[5] = { itemID = 20664, "", desc = "=ds=#s10#, #a1# =q2=#m16#", "", "27.08%"  }; --Abyssal Cloth Sash
		[6] = { itemID = 21989, "", desc = "=ds=#m3#", "", "100%"  }; --Cinder of Cynders
		[8] = { itemID = 0, "INV_Box_01", "=q6=#n101#", "=q1=#j20#"  };
		[9] = { itemID = 20668, "", desc = "=ds=#s11#, #a3# =q2=#m16#", "", "22.40%"  }; --Abyssal Mail Legguards
		[10] = { itemID = 20669, "", desc = "=ds=#h2#, #w10#", "", "29.62%"  }; --Darkstone Claymore
		[11] = { itemID = 20514, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Signet
		[12] = { itemID = 20667, "", desc = "=ds=#s10#, #a2# =q2=#m16#", "", "29.04%"  }; --Abyssal Leather Belt
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n102#", "=q1=#j21#"  };
		[17] = { itemID = 20674, "", desc = "=ds=#s11#, #a1# =q2=#m16#", "", "21.83%"  }; --Abyssal Cloth Pants
		[18] = { itemID = 20675, "", desc = "=ds=#h1#, #w1#", "", "29.73%"  }; --Soulrender
		[19] = { itemID = 20514, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Signet
		[20] = { itemID = 20673, "", desc = "=ds=#s10#, #a4# =q2=#m16#", "", "27.11%"  }; --Abyssal Plate Girdle
		[23] = { itemID = 0, "INV_Box_01", "=q6=#n103#", "=q1=#j22#"  };
		[24] = { itemID = 20671, "", desc = "=ds=#s11#, #a4# =q2=#m16#", "", "22.63%"  }; --Abyssal Plate Legplates
		[25] = { itemID = 20672, "", desc = "=ds=#w12#", "", "28.90%"  }; --Sparkling Crystal Wand
		[26] = { itemID = 20514, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Signet
		[27] = { itemID = 20670, "", desc = "=ds=#s10#, #a3# =q2=#m16#", "", "28.16%"  }; --Abyssal Mail Clutch
	};
	{
		Name = AL["High Council"];
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n104#", "=q1=#j19#"  };
		[2] = { itemID = 20682, "", desc = "=ds=#s13#", "", "22.83%"  }; --Elemental Focus Band
		[3] = { itemID = 20515, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Scepter
		[4] = { itemID = 20681, "", desc = "=ds=#s8#, #a2# =q2=#m16#", "", "24.70%"  }; --Abyssal Leather Bracers
		[5] = { itemID = 20680, "", desc = "=ds=#s3#, #a3# =q2=#m16#", "", "24.21%"  }; --Abyssal Mail Pauldrons
		[7] = { itemID = 0, "INV_Box_01", "=q6=#n105#", "=q1=#j20#"  };
		[8] = { itemID = 20685, "", desc = "=ds=#s2#", "", "24.48%"  }; --Wavefront Necklace
		[9] = { itemID = 20515, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Scepter
		[10] = { itemID = 20684, "", desc = "=ds=#s8#, #a3# =q2=#m16#", "", "27.68%"  }; --Abyssal Mail Armguards
		[11] = { itemID = 20683, "", desc = "=ds=#s3#, #a4# =q2=#m16#", "", "21.52%"  }; --Abyssal Plate Epaulets
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n106#", "=q1=#j21#"  };
		[17] = { itemID = 20691, "", desc = "=ds=#s4#", "", "22.08%"  }; --Windshear Cape
		[18] = { itemID = 20515, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Scepter
		[19] = { itemID = 20690, "", desc = "=ds=#s8#, #a1# =q2=#m16#", "", "23.60%"  }; --Abyssal Cloth Wristbands
		[20] = { itemID = 20689, "", desc = "=ds=#s3#, #a3# =q2=#m16#", "", "23.40%"  }; --Abyssal Leather Shoulders
		[22] = { itemID = 0, "INV_Box_01", "=q6=#n107#", "=q1=#j22#"  };
		[23] = { itemID = 20688, "", desc = "=ds=#w8#", "", "20.64%"  }; --Earthen Guard
		[24] = { itemID = 20515, "", desc = "=ds=#m3#", "", "100%"  }; --Abyssal Scepter
		[25] = { itemID = 20686, "", desc = "=ds=#s3#, #a1# =q2=#m16#", "", "23.96%"  }; --Abyssal Cloth Amice
		[26] = { itemID = 20687, "", desc = "=ds=#s8#, #a4# =q2=#m16#", "", "23.66%"  }; --Abyssal Plate Vambraces
	};
};

-----------------------
--- Ethereum Prison ---
-----------------------

AtlasLoot_Data["EthereumPrison"] = {
	Name = AL["Ethereum Prison"];
	{
		Name = AL["Armbreaker Huffaz"];
		[1] = { itemID = 31943, "", desc = "=ds=#s13# =q2=#m16#", "", "10.7%"  }; --Ethereum Band
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "1.36%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "0.4%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "0.36%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "1.1%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "0.6%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "0.8%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "0.5%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "1.0%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "1.3%"  }; --Living Band
	};
	{
		Name = AL["Fel Tinkerer Zortan"];
		[1] = { itemID = 31573, "", desc = "=ds=#s12#, #a3# =q2=#m16#", "", "9.7%"  }; --Mistshroud Boots
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "0.94%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "1.0%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "0.94%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "0.4%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "0.7%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "1.0%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "1.3%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "1.2%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "1.0%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "1.2%"  }; --Living Band
	};
	{
		Name = AL["Forgosh"];
		[1] = { itemID = 31565, "", desc = "=ds=#s12#, #a2# =q2=#m16#", "", "8.5%"  }; --Skystalker's Boots
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "2.63%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "0.29%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "0.9%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "0.7%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "1.0%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.9%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "1.9%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "0.5%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "1.0%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Living Band
	};
	{
		Name = AL["Gul'bor"];
		[1] = { itemID = 31940, "", desc = "=ds=#s2# =q2=#m16#", "", "9.5%"  }; --Ethereum Torque
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "0.66%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "0.66%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "1.1%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "1.1%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "0.8%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "0.9%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "0.8%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "0.8%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "2.0%"  }; --Living Band
	};
	{
		Name = AL["Malevus the Mad"];
		[1] = { itemID = 31581, "", desc = "=ds=#s12#, #a4# =q2=#m16#", "", "10.5%"  }; --Slatesteel Boots
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "2.46%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "0.70%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "1.5%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "0.7%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "1.3%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.5%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "0.8%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "1.75%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "0.6%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "1.8%"  }; --Living Band
	};
	{
		Name = AL["Porfus the Gem Gorger"];
		[1] = { itemID = 31557, "", desc = "=ds=#s12#, #a1# =q2=#m16#", "", "7.9%"  }; --Windchanneller's Boots
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "1.89%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "0.81%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "1.0%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "0.7%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "1.1%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "0.6%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "1.8%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "1.0%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "1.1%"  }; --Living Band
	};
	{
		Name = AL["Wrathbringer Laz-tarash"];
		[1] = { itemID = 32520, "", desc = "=ds=#s15# =q2=#m16#", "", "10.4%"  }; --Manaforged Sphere
		[3] = { itemID = 31939, "", desc = "=ds=#s4# =q2=#m16#", "", "1.06%"  }; --Dark Cloak
		[4] = { itemID = 31938, "", desc = "=ds=#s4# =q2=#m16#", "", "1.06%"  }; --Enigmatic Cloak
		[5] = { itemID = 31936, "", desc = "=ds=#s4# =q2=#m16#", "", "0.8%"  }; --Fiery Cloak
		[6] = { itemID = 31935, "", desc = "=ds=#s4# =q2=#m16#", "", "1.5%"  }; --Frigid Cloak
		[7] = { itemID = 31937, "", desc = "=ds=#s4# =q2=#m16#", "", "0.3%"  }; --Living Cloak
		[9] = { itemID = 31957, "", desc = "=ds=#m3#", "", "100%"  }; --Ethereum Prisoner I.D. Tag
		[18] = { itemID = 31928, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Dark Band
		[19] = { itemID = 31929, "", desc = "=ds=#s13# =q2=#m16#", "", "0.7%"  }; --Enigmatic Band
		[20] = { itemID = 31925, "", desc = "=ds=#s13# =q2=#m16#", "", "1.2%"  }; --Fiery Band
		[21] = { itemID = 31926, "", desc = "=ds=#s13# =q2=#m16#", "", "1.1%"  }; --Frigid Band
		[22] = { itemID = 31927, "", desc = "=ds=#s13# =q2=#m16#", "", "1.1%"  }; --Living Band
	};
	{
		Name = AL["Bash'ir Landing Stasis Chambers"];
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n118#", ""  };
		[2] = { itemID = 32522, "", desc = "=ds=#w8# =q2=#m16#", "", ""  }; --Demonic Bulwark
		[3] = { itemID = 31941, "", desc = "=ds=#m3#", "", ""  }; --Mark of the Nexus-King
		[5] = { itemID = 0, "INV_Box_01", "=q6=#n119#", ""  };
		[6] = { itemID = 31577, "", desc = "=ds=#s3#, #a4# =q2=#m16#", "", ""  }; --Slatesteel Shoulders
		[7] = { itemID = 31941, "", desc = "=ds=#m3#", "", ""  }; --Mark of the Nexus-King
		[9] = { itemID = 0, "INV_Box_01", "=q6=#n120#", ""  };
		[10] = { itemID = 31569, "", desc = "=ds=#s3#, #a3# =q2=#m16#", "", ""  }; --Mistshroud Shoulders
		[11] = { itemID = 31941, "", desc = "=ds=#m3#", "", ""  }; --Mark of the Nexus-King
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n121#", ""  };
		[17] = { itemID = 31553, "", desc = "=ds=#s3#, #a1# =q2=#m16#", "", ""  }; --Windchanneller's Mantle
		[18] = { itemID = 31941, "", desc = "=ds=#m3#", "", ""  }; --Mark of the Nexus-King
		[20] = { itemID = 0, "INV_Box_01", "=q6=#n122#", ""  };
		[21] = { itemID = 31561, "", desc = "=ds=#s3#, #a2# =q2=#m16#", "", ""  }; --Skystalker's Shoulders
		[22] = { itemID = 31941, "", desc = "=ds=#m3#", "", ""  }; --Mark of the Nexus-King
	};
};

----------------
--- Shartuul ---
----------------

AtlasLoot_Data["Shartuul"] = {
	Name = AL["Shartuul"];
	{
		Name = AL["Shartuul"];
		[1] = { itemID = 32941, "", desc = "=ds=#s13#", "", "6.0%"  }; --Corruptor's Signet
		[3] = { itemID = 32676, "", desc = "=ds=#m20#", "", "5.0%"  }; --Depleted Cloth Bracers
		[4] = { itemID = 32675, "", desc = "=ds=#m20#", "", "7.0%"  }; --Depleted Mail Gauntlets
		[5] = { itemID = 32677, "", desc = "=ds=#m20#", "", "9.0%"  }; --Depleted Cloak
		[6] = { itemID = 32678, "", desc = "=ds=#m20#", "", "9.0%"  }; --Depleted Ring
		[7] = { itemID = 32672, "", desc = "=ds=#m20#", "", "13.0%"  }; --Depleted Badge
		[8] = { itemID = 32673, "", desc = "=ds=#m20#", "", "6.0%"  }; --Depleted Dagger
		[9] = { itemID = 32674, "", desc = "=ds=#m20#", "", "14.0%"  }; --Depleted Sword
		[10] = { itemID = 32670, "", desc = "=ds=#m20#", "", "0.02%"  }; --Depleted Two-Handed Axe
		[11] = { itemID = 32671, "", desc = "=ds=#m20#", "", "11.0%"  }; --Depleted Mace
		[12] = { itemID = 32679, "", desc = "=ds=#m20#", "", "6.0%"  }; --Depleted Staff
		[16] = { itemID = 32942, "", desc = "=ds=#s13#", "", "1.4%"  }; --Ring of the Overseer
		[18] = { itemID = 32655, "", "=q4=Crystalweave Bracers", "=ds=#s8#, #a1#"  };
		[19] = { itemID = 32656, "", "=q4=Crystalhide Handwraps", "=ds=#s9#, #a3#"  };
		[20] = { itemID = 32665, "", "=q3=Crystalweave Cape", "=ds=#s4#"  };
		[21] = { itemID = 32664, "", "=q3=Dreamcrystal Band", "=ds=#s13#"  };
		[22] = { itemID = 32658, "", "=q3=Badge of Tenacity", "=ds=#s14#"  };
		[23] = { itemID = 32659, "", "=q3=Crystal-Infused Shiv", "=ds=#h1#, #w4#"  };
		[24] = { itemID = 32660, "", "=q3=Crystalforged Sword", "=ds=#h3#, #w10#"  };
		[25] = { itemID = 32663, "", "=q3=Apexis Cleaver", "=ds=#h2#, #w1#"  };
		[26] = { itemID = 32661, "", "=q3=Apexis Crystal Mace", "=ds=#h1#, #w6#"  };
		[27] = { itemID = 32662, "", "=q3=Flaming Quartz Staff", "=ds=#w9#"  };
	};
};

---------------
--- Skettis ---
---------------

AtlasLoot_Data["Skettis"] = {
	Name = AL["Skettis"];
	{
		Name = AL["Darkscreecher Akkarai"];
		[1] = { itemID = 32529, "", desc = "=ds=#s9#, #a4#", "", "17.3%"  }; --Heretic's Gauntlets
		[2] = { itemID = 32715, "", desc = "=ds=#m3#", "", "100%"  }; --Akkarai's Talons
		[4] = { itemID = 31558, "", desc = "=ds=#s8#, #a1# =q2=#m16#", "", "5.3%"  }; --Windchanneller's Bindings
		[5] = { itemID = 31555, "", desc = "=ds=#s10#, #a1# =q2=#m16#", "", "4.3%"  }; --Windchanneller's Ceinture
		[6] = { itemID = 31566, "", desc = "=ds=#s8#, #a2# =q2=#m16#", "", "6.8%"  }; --Skystalker's Bracers
		[7] = { itemID = 31563, "", desc = "=ds=#s10#, #a2# =q2=#m16#", "", "6.2%"  }; --Skystalker's Cord
		[8] = { itemID = 31574, "", desc = "=ds=#s8#, #a3# =q2=#m16#", "", "4.1%"  }; --Mistshroud Bracers
		[9] = { itemID = 31571, "", desc = "=ds=#s10#, #a3# =q2=#m16#", "", "4.5%"  }; --Mistshroud Belt
		[10] = { itemID = 31582, "", desc = "=ds=#s8#, #a4# =q2=#m16#", "", "6.7%"  }; --Slatesteel Bracers
		[11] = { itemID = 31579, "", desc = "=ds=#s10#, #a4# =q2=#m16#", "", "5.5%"  }; --Slatesteel Girdle
		[12] = { itemID = 32514, "", desc = "=ds=#s13# =q2=#m16#", "", "31.5%"  }; --Skettis Band
	};
	{
		Name = AL["Karrog"];
		[1] = { itemID = 32533, "", desc = "=ds=#s15#", "", "15.0%"  }; --Karrog's Shard
		[2] = { itemID = 32717, "", desc = "=ds=#m3#", "", "100%"  }; --Karrog's Spine
		[4] = { itemID = 31558, "", desc = "=ds=#s8#, #a1# =q2=#m16#", "", "5.6%"  }; --Windchanneller's Bindings
		[5] = { itemID = 31555, "", desc = "=ds=#s10#, #a1# =q2=#m16#", "", "6.8%"  }; --Windchanneller's Ceinture
		[6] = { itemID = 31566, "", desc = "=ds=#s8#, #a2# =q2=#m16#", "", "6.0%"  }; --Skystalker's Bracers
		[7] = { itemID = 31563, "", desc = "=ds=#s10#, #a2# =q2=#m16#", "", "8.0%"  }; --Skystalker's Cord
		[8] = { itemID = 31574, "", desc = "=ds=#s8#, #a3# =q2=#m16#", "", "5.6%"  }; --Mistshroud Bracers
		[9] = { itemID = 31571, "", desc = "=ds=#s10#, #a3# =q2=#m16#", "", "3.6%"  }; --Mistshroud Belt
		[10] = { itemID = 31582, "", desc = "=ds=#s8#, #a4# =q2=#m16#", "", "4.3%"  }; --Slatesteel Bracers
		[11] = { itemID = 31579, "", desc = "=ds=#s10#, #a4# =q2=#m16#", "", "5.3%"  }; --Slatesteel Girdle
		[12] = { itemID = 32514, "", desc = "=ds=#s13# =q2=#m16#", "", "24.9%"  }; --Skettis Band
	};
	{
		Name = AL["Gezzarak the Huntress"];
		[1] = { itemID = 32531, "", desc = "=ds=#s2#", "", "16.9%"  }; --Gezzarak's Fang
		[2] = { itemID = 32716, "", desc = "=ds=#m3#", "", "100%"  }; --Gezzarak's Claws
		[4] = { itemID = 31558, "", desc = "=ds=#s8#, #a1# =q2=#m16#", "", "5.2%"  }; --Windchanneller's Bindings
		[5] = { itemID = 31555, "", desc = "=ds=#s10#, #a1# =q2=#m16#", "", "6.9%"  }; --Windchanneller's Ceinture
		[6] = { itemID = 31566, "", desc = "=ds=#s8#, #a2# =q2=#m16#", "", "5.2%"  }; --Skystalker's Bracers
		[7] = { itemID = 31563, "", desc = "=ds=#s10#, #a2# =q2=#m16#", "", "4.9%"  }; --Skystalker's Cord
		[8] = { itemID = 31574, "", desc = "=ds=#s8#, #a3# =q2=#m16#", "", "5.8%"  }; --Mistshroud Bracers
		[9] = { itemID = 31571, "", desc = "=ds=#s10#, #a3# =q2=#m16#", "", "5.4%"  }; --Mistshroud Belt
		[10] = { itemID = 31582, "", desc = "=ds=#s8#, #a4# =q2=#m16#", "", "6.2%"  }; --Slatesteel Bracers
		[11] = { itemID = 31579, "", desc = "=ds=#s10#, #a4# =q2=#m16#", "", "4.6%"  }; --Slatesteel Girdle
		[12] = { itemID = 32514, "", desc = "=ds=#s13# =q2=#m16#", "", "25.7%"  }; --Skettis Band
	};
	{
		Name = AL["Vakkiz the Windrager"];
		[1] = { itemID = 32532, "", desc = "=ds=#s8#, #a3#", "", "18.1%"  }; --Windrager's Coils
		[2] = { itemID = 32718, "", desc = "=ds=#m3#", "", "100%"  }; --Vakkiz's Scale
		[4] = { itemID = 31558, "", desc = "=ds=#s8#, #a1# =q2=#m16#", "", "5.0%"  }; --Windchanneller's Bindings
		[5] = { itemID = 31555, "", desc = "=ds=#s10#, #a1# =q2=#m16#", "", "4.4%"  }; --Windchanneller's Ceinture
		[6] = { itemID = 31566, "", desc = "=ds=#s8#, #a2# =q2=#m16#", "", "4.1%"  }; --Skystalker's Bracers
		[7] = { itemID = 31563, "", desc = "=ds=#s10#, #a2# =q2=#m16#", "", "3.9%"  }; --Skystalker's Cord
		[8] = { itemID = 31574, "", desc = "=ds=#s8#, #a3# =q2=#m16#", "", "5.7%"  }; --Mistshroud Bracers
		[9] = { itemID = 31571, "", desc = "=ds=#s10#, #a3# =q2=#m16#", "", "6.3%"  }; --Mistshroud Belt
		[10] = { itemID = 31582, "", desc = "=ds=#s8#, #a4# =q2=#m16#", "", "5.8%"  }; --Slatesteel Bracers
		[11] = { itemID = 31579, "", desc = "=ds=#s10#, #a4# =q2=#m16#", "", "2.7%"  }; --Slatesteel Girdle
		[12] = { itemID = 32514, "", desc = "=ds=#s13# =q2=#m16#", "", "28.7%"  }; --Skettis Band
	};
	{
		Name = AL["Terokk"];
		[1] = { itemID = 32540, "", desc = "=ds=#s4#", "", "4.6%"  }; --Terokk's Might
		[2] = { itemID = 32541, "", desc = "=ds=#s4#", "", "4.6%"  }; --Terokk's Wisdom
		[3] = { itemID = 31556, "", desc = "=ds=#s11#, #a1# =q2=#m16#", "", "14.3%"  }; --Windchanneller's Leggings
		[4] = { itemID = 31564, "", desc = "=ds=#s11#, #a2# =q2=#m16#", "", "13.9%"  }; --Skystalker's Leggings
		[5] = { itemID = 31572, "", desc = "=ds=#s11#, #a3# =q2=#m16#", "", "10.7%"  }; --Mistshroud Pants
		[6] = { itemID = 31580, "", desc = "=ds=#s11#, #a4# =q2=#m16#", "", "11.6%"  }; --Slatesteel Leggings
		[7] = { itemID = 32535, "", desc = "=ds=#s13#", "", "7.9%"  }; --Gift of the Talonpriests
		[8] = { itemID = 32534, "", desc = "=ds=#s14#", "", "11.2%"  }; --Brooch of the Immortal King
		[9] = { itemID = 32782, "", desc = "=ds=#s14#", "", ""  }; --Time-Lost Figurine
		[10] = { itemID = 32536, "", desc = "=ds=#h1#, #w6# =q2=#m16#", "", "6.7%"  }; --Terokk's Gavel
		[11] = { itemID = 32537, "", desc = "=ds=#h1#, #w6# =q2=#m16#", "", "7.9%"  }; --Terokk's Gavel
	};
	{
		Name = "Talonpriest Ishaal";
		[1] = { itemID = 32523, "", "=q1=Ishaal's Almanac", "=ds=#m2#"  };
	};
	{
		Name = "Hazzik's Package";
		[1] = { itemID = 32687, "", "=q1=Hazzik's Package", "=ds=#m3#"  };
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
		[1] = { itemID = 40601, "", "=q3=Argent Dawn Banner", "=ds=#s14#"  };
		[2] = { itemID = 40593, "", "=q3=Argent Tome", "=ds=#s14#"  };
		[3] = { itemID = 40492, "", "=q3=Argent War Horn", "=ds=#s14#"  };
		[5] = { itemID = 23123, "", "=q2=Blessed Wizard Oil", "=ds=#m20#"  };
		[6] = { itemID = 23122, "", "=q2=Consecrated Sharpening Stone", "=ds=#m20#"  };
		[8] = { itemID = 22999, "", "=q1=Tabard of the Argent Dawn", "=ds=#s7#"  };
		[9] = { itemID = 43531, "", "=q1=Argent Healing Potion", "=ds=#e2#"  };
		[10] = { itemID = 43530, "", "=q1=Argent Mana Potion", "=ds=#e2#"  };
		[12] = { itemID = 22484, "", "=q2=Necrotic Rune", "=ds=#m17#"  };
		[16] = { itemID = 40110, "", "=q1=Haunted Memento", "=ds=#m20#"  };
		[18] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Prince Tenris Mirkblood"], "=q5=" .. BabbleZone["Karazhan"]  };
		[19] = { itemID = 29434, "", desc = "=ds=#e15#", "", "100%"  }; --Badge of Justice
		[20] = { itemID = 39769, "", "=q4=Arcanite Ripper", "=ds=#h3#, #w1#"  };
		[21] = { itemID = 38658, "", "=q3=Vampiric Batling", "=ds=#e13#"  };
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Blessed Regalia of Undead Cleansing"], "=q1=#a1#"  };
		[2] = { itemID = 43074, "", "=q4=Blessed Mantle of Undead Cleansing", "=ds=#s3#, #a1#"  };
		[3] = { itemID = 43072, "", "=q4=Blessed Robe of Undead Cleansing", "=ds=#s5#, #a1#"  };
		[4] = { itemID = 43073, "", "=q4=Blessed Gloves of Undead Cleansing", "=ds=#s9#, #a1#"  };
		[5] = { itemID = 43075, "", "=q4=Blessed Trousers of Undead Cleansing", "=ds=#s11#, #a1#"  };
		[7] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Undead Slayer's Blessed Armor"], "=q1=#a2#"  };
		[8] = { itemID = 43077, "", "=q4=Blessed Shoulderpads of Undead Slaying", "=ds=#s3#, #a1#"  };
		[9] = { itemID = 43076, "", "=q4=Blessed Tunic of Undead Slaying", "=ds=#s5#, #a1#"  };
		[10] = { itemID = 43078, "", "=q4=Blessed Grips of Undead Slaying", "=ds=#s9#, #a1#"  };
		[11] = { itemID = 43079, "", "=q4=Blessed Leggings of Undead Slaying", "=ds=#s11#, #a1#"  };
		[16] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Blessed Garb of the Undead Slayer"], "=q1=#a3#"  };
		[17] = { itemID = 43081, "", "=q4=Blessed Pauldrons of Undead Slaying", "=ds=#s3#, #a1#"  };
		[18] = { itemID = 43080, "", "=q4=Blessed Hauberk of Undead Slaying", "=ds=#s5#, #a1#"  };
		[19] = { itemID = 43082, "", "=q4=Blessed Handguards of Undead Slaying", "=ds=#s9#, #a1#"  };
		[20] = { itemID = 43083, "", "=q4=Blessed Greaves of Undead Slaying", "=ds=#s11#, #a1#"  };
		[22] = { itemID = 0, "INV_Box_01", "=q6=" .. AL["Blessed Battlegear of Undead Slaying"], "=q1=#a4#"  };
		[23] = { itemID = 43068, "", "=q4=Blessed Spaulders of Undead Slaying", "=ds=#s3#, #a1#"  };
		[24] = { itemID = 43069, "", "=q4=Blessed Breastplate of Undead Slaying", "=ds=#s5#, #a1#"  };
		[25] = { itemID = 43070, "", "=q4=Blessed Gauntlets of Undead Slaying", "=ds=#s9#, #a1#"  };
		[26] = { itemID = 43071, "", "=q4=Blessed Legplates of Undead Slaying", "=ds=#s11#, #a1#"  };
	};
	{
		Name = "Page 3";
		[1] = { itemID = 0, "INV_Box_01", "=q6=#n123#", "=q1=#z6#"  };
		[2] = { itemID = 23126, "", desc = "=ds=#s10#, #a1#", "", "27.38%"  }; --Waistband of Balzaphon
		[3] = { itemID = 23125, "", desc = "=ds=#s2#", "", "19.89%"  }; --Chains of the Lich
		[4] = { itemID = 23124, "", desc = "=ds=#w9#", "", "24.74%"  }; --Staff of Balzaphon
		[6] = { itemID = 0, "INV_Box_01", "=q6=#n124#", "=q1=#z5#"  };
		[7] = { itemID = 23156, "", desc = "=ds=#s15#", "", "22.60%"  }; --Blackwood's Thigh
		[8] = { itemID = 23132, "", desc = "=ds=#h1#, #w10#", "", "23.80%"  }; --Lord Blackwood's Blade
		[9] = { itemID = 23139, "", desc = "=ds=#w8#", "", "26.91%"  }; --Lord Blackwood's Buckler
		[11] = { itemID = 0, "INV_Box_01", "=q6=#n125#", "=q1=#z13#"  };
		[12] = { itemID = 23127, "", desc = "=ds=#s4#", "", "23.56%"  }; --Cloak of Revanchion
		[13] = { itemID = 23129, "", desc = "=ds=#s8#, #a1#", "", "22.67%"  }; --Bracers of Mending
		[14] = { itemID = 23128, "", desc = "=ds=#s9#, #a1#", "", "30.67%"  }; --The Shadow's Grasp
		[16] = { itemID = 0, "INV_Box_01", "=q6=#n126#", "=q1=#z3# - #z28#"  };
		[17] = { itemID = 23170, "", desc = "=ds=#s9#, #a3#", "", "28.94%"  }; --The Frozen Clutch
		[18] = { itemID = 23169, "", desc = "=ds=#s2#", "", "30.39%"  }; --Scorn's Icy Choker
		[19] = { itemID = 23168, "", desc = "=ds=#h3#, #w4#", "", "32.56%"  }; --Scorn's Focal Dagger
		[21] = { itemID = 0, "INV_Box_01", "=q6=#n127#", "=q1=#z26#"  };
		[22] = { itemID = 23173, "", desc = "=ds=#s11#, #a1#", "", "43.81%"  }; --Abomination Skin Leggings
		[23] = { itemID = 23171, "", desc = "=ds=#h2#, #w1#", "", "49.31%"  }; --The Axe of Severing
		[26] = { itemID = 0, "INV_Box_01", "=q6=#n128#", "=q1=#z27#"  };
		[27] = { itemID = 23178, "", desc = "=ds=#s4#", "", "39.13%"  }; --Mantle of Lady Falther'ess
		[28] = { itemID = 23177, "", desc = "=ds=#w12#", "", "46.86%"  }; --Lady Falther'ess' Finger
	};
};
