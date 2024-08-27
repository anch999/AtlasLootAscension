local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

		AtlasLoot_SubMenus["CollectionsCLASSIC"] = {
			Module = "AtlasLootOriginalWoW",
			{ "", "Heirloom"},
			{ "", "ClassicSets"},
			{ "", "WorldEpicsCLASSIC"},
			{ "All Dungeon Items", "ClassicDungeonExt", OnDamand = "ClassicDungeonExt"},
			{ "", "ZGSets"},
			{ "", "AQ20Sets"},
			{ "", "T0"},
			{ "", "T0.5"},
			{ "", "T1"},
			{ "", "T2"},
			{ "", "T2.5"},
			{ "", "T3"},
		}

		AtlasLoot_SubMenus["CollectionsTBC"] = {
			Module = "AtlasLootBurningCrusade",
			{ "", "Heirloom"},
			{ "", "DS3"},
			{ "", "WorldRaresTBC"},
			{ "", "WorldEpicsTBC"},
			{ "All Dungeon Items", "BCDungeon", OnDamand = "BCDungeon"},
			{ "", "TBCSets"},
			{ AL["Badge of Justice Rewards"], "BadgeShatt", "Header"},
			{ "", "BadgeShatt"},
			{ "", "BadgeSunwell"},
			{ "", "SunmoteSunwell"},
			{ "Tier Sets", "T4", "Header"},
			{ "", "T4"},
			{ "", "T5"},
			{ "", "T6"},
		}

		AtlasLoot_SubMenus["CollectionsWRATH"] = {
			Module = "AtlasLootWotLK",
			{ "", "Heirloom"},
			{ "", "WorldEpicsWrath"},
			{ "All Dungeon Items", "WrathDungeon", OnDamand = "WrathDungeon"},
			{ "", "Legendaries"},
			{ "Badge Rewards", "EmblemofHeroism", "Header"},
			{ "", "EmblemofHeroism"},
			{ "", "EmblemofValor"},
			{ "", "EmblemofConquest"},
			{ "", "EmblemofTriumph"},
			{ "", "EmblemofFrost"},
			{ "Tier Sets", "T7", "Header"},
			{ "", "T7"},
			{ "", "T8"},
			{ "", "T9"},
			{ "", "T10"},
		}

		AtlasLoot_SubMenus["VanityCLASSIC"] = {
			Module = "AtlasLootVanity",
			{ "", "Tabards"},
			{ "", "VanityPets"},
			{ "", "Mounts"},
		}
		
		AtlasLoot_SubMenus["VanityTBC"] = AtlasLoot_SubMenus["VanityCLASSIC"]
		AtlasLoot_SubMenus["VanityWRATH"] = AtlasLoot_SubMenus["VanityCLASSIC"]





