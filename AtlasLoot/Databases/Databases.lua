local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--Table holding all loot tables is initialised here as it loads early
AtlasLoot_Data = {}
AtlasLoot_MapData = {}
AtlasLoot_ExtraData = {}
AtlasLoot_CraftingData = {}

----------------------
--- Heirloom Items ---
----------------------
AtlasLoot_Data["Heirloom"] = {
	Name = AL["Heirloom"],
	{
		Name = "Chests";
		[1] = { itemID = 48691, price = "1200 #tokenofprestige#"  }; --Tattered Dreadmist Robe
		[2] = { itemID = 48687, price = "1200 #tokenofprestige#"  }; --Preened Ironfeather Breastplate
		[3] = { itemID = 48689, price = "1200 #tokenofprestige#"  }; --Stained Shadowcraft Tunic
		[4] = { itemID = 48677, price = "1200 #tokenofprestige#"  }; --Champion's Deathdealer Breastplate
		[5] = { itemID = 48683, price = "1200 #tokenofprestige#"  }; --Mystical Vest of Elements
		[6] = { itemID = 48685, price = "1200 #tokenofprestige#"  }; --Polished Breastplate of Valor
		[7] = { itemID = 1548685, price = "1200 #tokenofprestige#"  }; --Polished Breastplate of Might

	},
	{
		Name = "Shoulders";
		[1] = { itemID = 42985, price = "800 #tokenofprestige#"  }; --Tattered Dreadmist Mantle
		[2] = { itemID = 42984, price = "800 #tokenofprestige#"  }; --Preened Ironfeather Shoulders
		[3] = { itemID = 42952, price = "800 #tokenofprestige#"  }; --Stained Shadowcraft Spaulders
		[4] = { itemID = 42950, price = "800 #tokenofprestige#"  }; --Champion Herod's Shoulder
		[5] = { itemID = 42951, price = "800 #tokenofprestige#"  }; --Mystical Pauldrons of Elements
		[6] = { itemID = 42949, price = "800 #tokenofprestige#"  }; --Polished Spaulders of Valor
		[7] = { itemID = 1542949, price = "800 #tokenofprestige#"  }; --Polished Spaulders of Might
		[16] = { itemID = 44107, price = "800 #tokenofprestige#"  }; --Exquisite Sunderseer Mantle
		[17] = { itemID = 44103, price = "800 #tokenofprestige#"  }; --Exceptional Stormshroud Shoulders
		[18] = { itemID = 44105, price = "800 #tokenofprestige#"  }; --Lasting Feralheart Spaulders
		[19] = { itemID = 44102, price = "800 #tokenofprestige#"  }; --Aged Pauldrons of The Five Thunders
		[20] = { itemID = 44101, price = "800 #tokenofprestige#"  }; --Prized Beastmaster's Mantle
		[21] = { itemID = 44100, price = "800 #tokenofprestige#"  }; --Pristine Lightforge Spaulders
		[22] = { itemID = 44099, price = "800 #tokenofprestige#"  }; --Strengthened Stockade Pauldrons
	},
	{
		Name = "Trinkets/Rings";
		[1] = { itemID = 42992, price = "500 #tokenofprestige#"  }; --Discerning Eye of the Beast
		[2] = { itemID = 42991, price = "500 #tokenofprestige#"  }; --Swift Hand of Justice
		[3] = { itemID = 44098, price = "500 #tokenofprestige#"  }; --Inherited Insignia of the Alliance
		[4] = { itemID = 44097, price = "500 #tokenofprestige#"  }; --Inherited Insignia of the Horde
		[5] = { itemID = 50255 }; --Dread Pirate Ring
	},
	{
		Name = "Weapons";
		[1] = { itemID = 42944, price = "600 #tokenofprestige#"  }; --Balanced Heartseeker
		[2] = { itemID = 42945, price = "600 #tokenofprestige#"  }; --Venerable Dal'Rend's Sacred Charge
		[3] = { itemID = 42948, price = "600 #tokenofprestige#"  }; --Devout Aurastone Hammer
		[4] = { itemID = 48716, price = "600 #tokenofprestige#"  }; --Venerable Mass of McGowan
		[5] = { itemID = 44091, price = "600 #tokenofprestige#"  }; --Sharpened Scarlet Kris
		[6] = { itemID = 44096, price = "600 #tokenofprestige#"  }; --Battleworn Thrash Blade
		[7] = { itemID = 44094, price = "600 #tokenofprestige#"  }; --The Blessed Hammer of Grace
		[9] = { itemID = 1540350, price = "600 #tokenofprestige#"  }; --Urn of Aspiring Light
		[10] = { itemID = 1548335, price = "600 #tokenofprestige#"  }; --Polished Observer's Shield
		[16] = { itemID = 42943, price = "1000 #tokenofprestige#"  }; --Bloodied Arcanite Reaper
		[17] = { itemID = 1542943, price = "1000 #tokenofprestige#"  }; --Sturdied Arcanite Spear
		[18] = { itemID = 48718, price = "1000 #tokenofprestige#"  }; --Repurposed Lava Dredger
		[19] = { itemID = 42947, price = "1000 #tokenofprestige#"  }; --Dignified Headmaster's Charge
		[20] = { itemID = 44092, price = "1000 #tokenofprestige#"  }; --Reforged Truesilver Champion
		[21] = { itemID = 44095, price = "1000 #tokenofprestige#"  }; --Grand Staff of Jordan
		[23] = { itemID = 42946, price = "1000 #tokenofprestige#"  }; --Charmed Ancient Bone Bow
		[24] = { itemID = 44093, price = "1000 #tokenofprestige#"  }; --Upgraded Dwarven Hand Cannon
	},
}