local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

	AtlasLoot_SubMenus["ReputationsCLASSIC"] = {
		Module = "AtlasLootOriginalWoW";
		{ "", "Argent"};
		{ "", "AQBroodRings"};
		{ "", "AlteracFactions"};
		{ "", "ArathiBasinFactions"};
		{ "", "Timbermaw"};
		{ "", "Zandalar"};
		{ "", "Bloodsail"};
		{ "", "Cenarion"};
		{ "", "Hydraxian"};
		{ "", "DesolaceCentaurClans"};
		{ "", "Thorium"};
		{ "", "Wintersaber"};
	};

	AtlasLoot_SubMenus["ReputationsTBC"] = {
		Module = "AtlasLootBurningCrusade";
		{ "", "Aldor1", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["The Aldor"], ""};
		{ "", "CExpedition1", "INV_Misc_Ammo_Arrow_02", "=ds="..BabbleFaction["Cenarion Expedition"], "=q5="..BabbleZone["Zangarmarsh"]};
		{ "", "HonorHold1", "INV_BannerPVP_02", "=ds="..BabbleFaction["Honor Hold"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Hellfire Peninsula"]};
		{ "", "Kurenai1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["Kurenai"], "=q5="..BabbleFaction["Alliance"].." - "..BabbleZone["Nagrand"]};
		{ "", "Maghar1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Mag'har"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Nagrand"]};
		{ "", "Ogrila1", "inv_misc_apexis_crystal", "=ds="..BabbleFaction["Ogri'la"], "=q5="..BabbleZone["Blade's Edge Mountains"]};
		{ "", "Scryer1", "INV_Misc_Foot_Centaur", "=ds="..BabbleFaction["The Scryers"], ""};
		{ "", "Skyguard1", "INV_Misc_Ribbon_01", "=ds="..BabbleFaction["Sha'tari Skyguard"], "=q5="..BabbleZone["Terokkar Forest"].." / "..BabbleZone["Blade's Edge Mountains"]};
		{ "", "Sporeggar1", "inv_mushroom_11", "=ds="..BabbleFaction["Sporeggar"], "=q5="..BabbleZone["Zangarmarsh"]};
		{ "", "Tranquillien1", "INV_Misc_Bandana_03", "=ds="..BabbleFaction["Tranquillien"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Ghostlands"]};
		{ "", "Ashtongue1", "achievement_reputation_ashtonguedeathsworn", "=ds="..BabbleFaction["Ashtongue Deathsworn"], "=q5="..BabbleZone["Shadowmoon Valley"].." / "..BabbleZone["Black Temple"]};
		{ "", "Consortium1", "INV_Weapon_Shortblade_31", "=ds="..BabbleFaction["The Consortium"], ""};
		{ "", "KeepersofTime1", "Ability_Warrior_VictoryRush", "=ds="..BabbleFaction["Keepers of Time"], "=q5="..BabbleZone["Caverns of Time"]};
		{ "", "LowerCity1", "Spell_Holy_ChampionsBond", "=ds="..BabbleFaction["Lower City"], ""};
		{ "", "Netherwing1", "Ability_Mount_Netherdrakepurple", "=ds="..BabbleFaction["Netherwing"], "=q5="..BabbleZone["Shadowmoon Valley"]};
		{ "", "ScaleSands1", "INV_Misc_MonsterScales_13", "=ds="..BabbleFaction["The Scale of the Sands"], "=q5="..BabbleZone["Hyjal Summit"]};
		{ "", "Shatar1", "Ability_Warrior_ShieldMastery", "=ds="..BabbleFaction["The Sha'tar"], ""};
		{ "", "SunOffensive1", "inv_shield_48", "=ds="..BabbleFaction["Shattered Sun Offensive"], "=q5="..BabbleZone["Isle of Quel'Danas"]};
		{ "", "Thrallmar1", "INV_BannerPVP_01", "=ds="..BabbleFaction["Thrallmar"], "=q5="..BabbleFaction["Horde"].." - "..BabbleZone["Hellfire Peninsula"]};
		{ "", "VioletEye1", "spell_holy_mindsooth", "=ds="..BabbleFaction["The Violet Eye"], "=q5="..BabbleZone["Karazhan"]};
	};

	AtlasLoot_SubMenus["ReputationsWRATH"] = {
		Module = "AtlasLootWotLK";
		{ "", "AllianceVanguard1", "spell_misc_hellifrepvphonorholdfavor", "=ds="..BabbleFaction["Alliance Vanguard"], "=q5="..BabbleFaction["Alliance"]};
		{ "", "WinterfinRetreat", "INV_Misc_Shell_04", "=ds="..BabbleFaction["Winterfin Retreat"], "=q5="..BabbleZone["Borean Tundra"]};
		{ "", "TheWyrmrestAccord", "achievement_reputation_wyrmresttemple", "=ds="..BabbleFaction["The Wyrmrest Accord"], "=q5="..BabbleZone["Dragonblight"]};
		{ "", "KnightsoftheEbonBlade", "achievement_reputation_knightsoftheebonblade", "=ds="..BabbleFaction["Knights of the Ebon Blade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
		{ "", "TheOracles", "inv_misc_head_murloc_01", "=ds="..BabbleFaction["The Oracles"], "=q5="..BabbleZone["Sholazar Basin"]};
		{ "", "TheSonsofHodir1", "Spell_Holy_DivinePurpose", "=ds="..BabbleFaction["The Sons of Hodir"], "=q5="..BabbleZone["The Storm Peaks"]};
		{ "", "HordeExpedition1", "spell_misc_hellifrepvpthrallmarfavor", "=ds="..BabbleFaction["Horde Expedition"], "=q5="..BabbleFaction["Horde"]};
		{ "", "TheKaluak", "INV_Fishingpole_03", "=ds="..BabbleFaction["The Kalu'ak"], "" };
		{ "", "KirinTor", "achievement_reputation_kirintor", "=ds="..BabbleFaction["Kirin Tor"], "=q5="..BabbleZone["Borean Tundra"].." / "..BabbleZone["Dalaran"]};
		{ "", "ArgentCrusade", "INV_Jewelry_Talisman_08", "=ds="..BabbleFaction["Argent Crusade"], "=q5="..BabbleZone["Zul'Drak"].." / "..BabbleZone["Icecrown"]};
		{ "", "FrenzyheartTribe", "ability_mount_whitedirewolf", "=ds="..BabbleFaction["Frenzyheart Tribe"], "=q5="..BabbleZone["Sholazar Basin"]};
		{ "", "AshenVerdict", "INV_Jewelry_Ring_85", "=ds="..BabbleFaction["The Ashen Verdict"], "=q5="..BabbleZone["Icecrown"]};
	};