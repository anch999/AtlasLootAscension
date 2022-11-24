local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--		{ #, "MOUNTMENU", "INV_Misc_QirajiCrystal_05", "=ds="..AL["Mounts"], ""};
--		{ #, "PETMENU", "INV_Box_PetCarrier_01", "=ds="..AL["Vanity Pets"], ""};
--		{ #, "Tabards3", "INV_Shirt_GuildTabard_01", "=ds="..AL["Tabards"], ""};
--		{ #, "CardGame1", "INV_Misc_Ticket_Tarot_Madness", "=ds="..AL["Upper Deck Card Game Items"], ""};
--		{ #, "PVPMENU", "INV_Axe_02", "=ds="..AL["PvP Rewards"], ""};

		AtlasLoot_SubMenus["CollectionsCLASSIC"] = {
			Module = "AtlasLootOriginalWoW";
			{ "", "ClassicSets"};
			{ "", "WorldEpicsCLASSIC"};
			{ "", "ZGSets"};
			{ "", "AQ20Sets"};
			{ "", "T0"};
			{ "", "T1"};
			{ "", "T2"};
			{ "", "T2.5"};
			{ "", "T3"};
		};

		AtlasLoot_SubMenus["CollectionsTBC"] = {
			Module = "AtlasLootBurningCrusade";
			{ "", "DS3"};
			{ "", "WorldEpicsTBC"};
			{ "", "TBCSets"};
			{ AL["Badge of Justice Rewards"], "BadgeShatt", "Header"};
			{ "", "BadgeShatt"};
			{ "", "BadgeSunwell"};
			{ "Tier Sets", "T4", "Header"};
			{ "", "T4"};
			{ "", "T5"};
			{ "", "T6"};
		};

		AtlasLoot_SubMenus["CollectionsWRATH"] = {
			Module = "AtlasLootWotLK";
			{ "", "Heirloom"};
			{ "", "WorldEpicsWrath"};
			{ "", "Legendaries"};
			{ "Badge Rewards", "EmblemofHeroism", "Header"};
			{ "", "EmblemofHeroism"};
			{ "", "EmblemofValor"};
			{ "", "EmblemofConquest"};
			{ "", "EmblemofTriumph"};
			{ "", "EmblemofFrost"};
			{ "Tier Sets", "T7", "Header"};
			{ "", "T7"};
			{ "", "T8"};
			{ "", "T9"};
			{ "", "T10"};
		};

		AtlasLoot_SubMenus["VanityCLASSIC"] = {
			Module = "AtlasLootVanity";
			{ "", "Tabards"};
			{ "", "VanityPets"};
			{ "", "Mounts"};
		};
		
		AtlasLoot_SubMenus["VanityTBC"] = AtlasLoot_SubMenus["VanityCLASSIC"];
		AtlasLoot_SubMenus["VanityWRATH"] = AtlasLoot_SubMenus["VanityCLASSIC"];


