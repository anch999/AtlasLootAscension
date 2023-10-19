local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local WHITE = "|cffFFFFFF";

local ALCHEMY = GetSpellInfo(2259);
local BLACKSMITHING = GetSpellInfo(2018);
local ARMORSMITH = GetSpellInfo(9788);
local WEAPONSMITH = GetSpellInfo(9787);
local AXESMITH = GetSpellInfo(17041);
local HAMMERSMITH = GetSpellInfo(17040);
local SWORDSMITH = GetSpellInfo(17039);
local COOKING = GetSpellInfo(2550);
local ENCHANTING = GetSpellInfo(7411);
local ENGINEERING = GetSpellInfo(4036);
local GNOMISH = GetSpellInfo(20220);
local GOBLIN = GetSpellInfo(20221);
local FIRSTAID = GetSpellInfo(3273);
local FISHING = GetSpellInfo(63275);
local INSCRIPTION = GetSpellInfo(45357);
local JEWELCRAFTING = GetSpellInfo(25229);
local LEATHERWORKING = GetSpellInfo(2108);
local DRAGONSCALE = GetSpellInfo(10656);
local ELEMENTAL = GetSpellInfo(10658);
local TRIBAL = GetSpellInfo(10660);
local MINING = GetSpellInfo(2575);
local TAILORING = GetSpellInfo(3908);
local MOONCLOTH = GetSpellInfo(26798);
local SHADOWEAVE = GetSpellInfo(26801);
local SPELLFIRE = GetSpellInfo(26797);

-- Index
--- Tradeskill List
---- Alchemy
----- Battle Elixirs
----- Guardian Elixirs
----- Potions
----- Flasks
----- Transmutes
----- Miscellaneous
---- Blacksmithing
----- Armor
----- Weapons
----- Enhancements
----- Miscellaneous
----- Armorsmith
----- Weaponsmith
----- Axesmith
----- Hammersmith
----- Swordsmith
---- Cooking
---- Enchanting
----- Boots
----- Bracers
----- Chest
----- Cloaks
----- Gloves
----- Rings
----- Shields
----- 2 Hand Weapons
----- 1 Hand Weapons
----- Staves
----- Miscellaneous
---- Engineering
---- First Aid
---- Inscription
---- Jewelcrafting
---- Leatherworking
---- Mining
---- Tailoring
--- Profession Sets
---- Blacksmithing Mail Sets
---- Blacksmithing Plate Sets
---- Leatherworking Leather Sets
---- Leatherworking Mail Sets
---- Tailoring Sets
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------
AtlasLoot_Data["AlchemyCLASSIC"] = {
	Name = ALCHEMY;
	Type = "Crafting";
	{
		Name = AL["Battle Elixirs"];
		[1] = {itemID = 13454, spellID = 17573 }; --Greater Arcane Elixir
		[2] = {itemID = 13452, spellID = 17571 }; --Elixir of the Mongoose
		[3] = {itemID = 13453, spellID = 17557 }; --Elixir of Brute Force
		[4] = {itemID = 9224, spellID = 11477 }; --Elixir of Demonslaying
		[5] = {itemID = 21546, spellID = 26277 }; --Elixir of Greater Firepower
		[6] = {itemID = 9264, spellID = 11476 }; --Elixir of Shadow Power
		[7] = {itemID = 9206, spellID = 11472 }; --Elixir of Giants
		[8] = {itemID = 9187, spellID = 11467 }; --Elixir of Greater Agility
		[9] = {itemID = 9155, spellID = 11461 }; --Arcane Elixir
		[10] = {itemID = 17708, spellID = 21923 }; --Elixir of Frost Power
		[11] = {itemID = 8949, spellID = 11449 }; --Elixir of Agility
		[12] = {itemID = 45621, spellID = 63732 }; --Elixir of Minor Accuracy
		[13] = {itemID = 3391, spellID = 3188 }; --Elixir of Ogre's Strength
		[14] = {itemID = 3390, spellID = 2333 }; --Elixir of Lesser Agility
		[15] = {itemID = 6373, spellID = 7845 }; --Elixir of Firepower
		[16] = {itemID = 6662, spellID = 8240 }; --Elixir of Giant Growth
		[17] = {itemID = 2457, spellID = 3230 }; --Elixir of Minor Agility
		[18] = {itemID = 2454, spellID = 2329 }; --Elixir of Lion's Strength
	};
	{
		Name = AL["Guardian Elixirs"];
		[1] = {itemID = 20004, spellID = 24368 }; --Major Troll's Blood Elixir
		[2] = {itemID = 20007, spellID = 24365 }; --Mageblood Elixir
		[3] = {itemID = 13445, spellID = 17554 }; --Elixir of Superior Defense
		[4] = {itemID = 13447, spellID = 17555 }; --Elixir of the Sages
		[5] = {itemID = 9088, spellID = 11466 }; --Gift of Arthas
		[6] = {itemID = 9179, spellID = 11465 }; --Elixir of Greater Intellect
		[7] = {itemID = 8951, spellID = 11450 }; --Elixir of Greater Defense
		[8] = {itemID = 3826, spellID = 3451 }; --Mighty Troll's Blood Elixir
		[9] = {itemID = 3825, spellID = 3450 }; --Elixir of Fortitude
		[10] = {itemID = 3389, spellID = 3177 }; --Elixir of Defense
		[11] = {itemID = 3388, spellID = 3176 }; --Strong Troll's Blood Potion
		[12] = {itemID = 3383, spellID = 3171 }; --Elixir of Wisdom
		[13] = {itemID = 2458, spellID = 2334 }; --Elixir of Minor Fortitude
		[14] = {itemID = 3382, spellID = 3170 }; --Weak Troll's Blood Elixir
		[15] = {itemID = 5997, spellID = 7183 }; --Elixir of Minor Defense
	};
	{
		Name = AL["Potions"] .. " 1";
		[1] = {itemID = 18253, spellID = 22732 }; --Major Rejuvenation Potion
		[2] = {itemID = 13444, spellID = 17580 }; --Major Mana Potion
		[3] = {itemID = 13461, spellID = 17577 }; --Greater Arcane Protection Potion
		[4] = {itemID = 13457, spellID = 17574 }; --Greater Fire Protection Potion
		[5] = {itemID = 13456, spellID = 17575 }; --Greater Frost Protection Potion
		[6] = {itemID = 13458, spellID = 17576 }; --Greater Nature Protection Potion
		[7] = {itemID = 13459, spellID = 17578 }; --Greater Shadow Protection Potion
		[8] = {itemID = 20008, spellID = 24367 }; --Living Action Potion
		[9] = {itemID = 13462, spellID = 17572 }; --Purification Potion
		[10] = {itemID = 13455, spellID = 17570 }; --Greater Stoneshield Potion
		[11] = {itemID = 20002, spellID = 24366 }; --Greater Dreamless Sleep Potion
		[12] = {itemID = 13446, spellID = 17556 }; --Major Healing Potion
		[13] = {itemID = 13443, spellID = 17553 }; --Superior Mana Potion
		[14] = {itemID = 13442, spellID = 17552 }; --Mighty Rage Potion
		[15] = {itemID = 3387, spellID = 3175 }; --Limited Invulnerability Potion
		[16] = {itemID = 9172, spellID = 11464 }; --Invisibility Potion
		[17] = {itemID = 12190, spellID = 15833 }; --Dreamless Sleep Potion
		[18] = {itemID = 9144, spellID = 11458 }; --Wildvine Potion
		[19] = {itemID = 4623, spellID = 4942 }; --Lesser Stoneshield Potion
		[20] = {itemID = 3928, spellID = 11457 }; --Superior Healing Potion
		[21] = {itemID = 9036, spellID = 11453 }; --Magic Resistance Potion
	};
	{
		Name = AL["Potions"] .. " 2";
		[1] = {itemID = 9030, spellID = 11452 }; --Restorative Potion
		[2] = {itemID = 6149, spellID = 11448 }; --Greater Mana Potion
		[3] = {itemID = 6050, spellID = 7258 }; --Frost Protection Potion
		[4] = {itemID = 6052, spellID = 7259 }; --Nature Protection Potion
		[5] = {itemID = 5633, spellID = 6618 }; --Great Rage Potion
		[6] = {itemID = 3823, spellID = 3448 }; --Lesser Invisibility Potion
		[7] = {itemID = 6049, spellID = 7257 }; --Fire Protection Potion
		[8] = {itemID = 3827, spellID = 3452 }; --Mana Potion
		[9] = {itemID = 1710, spellID = 7181 }; --Greater Healing Potion
		[10] = {itemID = 5634, spellID = 6624 }; --Free Action Potion
		[11] = {itemID = 6048, spellID = 7256 }; --Shadow Protection Potion
		[12] = {itemID = 3385, spellID = 3173 }; --Lesser Mana Potion
		[13] = {itemID = 3386, spellID = 3174 }; --Potion of Curing
		[14] = {itemID = 929, spellID = 3447 }; --Healing Potion
		[15] = {itemID = 3384, spellID = 3172 }; --Minor Magic Resistance Potion
		[16] = {itemID = 6051, spellID = 7255 }; --Holy Protection Potion
		[17] = {itemID = 6372, spellID = 7841 }; --Swim Speed Potion
		[18] = {itemID = 5631, spellID = 6617 }; --Rage Potion
		[19] = {itemID = 2459, spellID = 2335 }; --Swiftness Potion
		[20] = {itemID = 858, spellID = 2337 }; --Lesser Healing Potion
		[21] = {itemID = 4596, spellID = 4508 }; --Discolored Healing Potion
		[22] = {itemID = 2456, spellID = 2332 }; --Minor Rejuvenation Potion
		[23] = {itemID = 2455, spellID = 2331 }; --Minor Mana Potion
		[24] = {itemID = 118, spellID = 2330 }; --Minor Healing Potion
	};
	{
		Name = AL["Flasks"];
		[1] = {itemID = 13513, spellID = 17638 }; --Flask of Chromatic Resistance
		[2] = {itemID = 13511, spellID = 17636 }; --Flask of Distilled Wisdom
		[3] = {itemID = 13506, spellID = 17634 }; --Flask of Petrification
		[4] = {itemID = 13512, spellID = 17637 }; --Flask of Supreme Power
		[5] = {itemID = 13510, spellID = 17635 }; --Flask of the Titans
	};
	{
		Name = AL["Transmutes"];
		[1] = {itemID = 3577, spellID = 11479 }; --Transmute: Iron to Gold
		[2] = {itemID = 6037, spellID = 11480 }; --Transmute: Mithril to Truesilver
		[3] = {itemID = 12360, spellID = 17187 }; --Transmute: Arcanite Bar
		[4] = {itemID = 7078, spellID = 17559 }; --Transmute: Air to Fire
		[5] = {itemID = 12803, spellID = 17566 }; --Transmute: Earth to Life
		[6] = {itemID = 7080, spellID = 17561 }; --Transmute: Earth to Water
		[7] = {itemID = 7076, spellID = 17560 }; --Transmute: Fire to Earth
		[8] = {itemID = 7076, spellID = 17565 }; --Transmute: Life to Earth
		[9] = {itemID = 7080, spellID = 17563 }; --Transmute: Undeath to Water
		[10] = {itemID = 7082, spellID = 17562 }; --Transmute: Water to Air
		[11] = {itemID = 12808, spellID = 17564 }; --Transmute: Water to Undeath
		[12] = {itemID = 7068, spellID = 25146 }; --Transmute: Elemental Fire
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 19931, spellID = 24266 }; --Gurubashi Mojo Madness
		[2] = {itemID = 9154, spellID = 11460 }; --Elixir of Detect Undead
		[3] = {itemID = 18294, spellID = 22808 }; --Elixir of Greater Water Breathing
		[4] = {itemID = 9061, spellID = 11456 }; --Goblin Rocket Fuel
		[5] = {itemID = 8956, spellID = 11451 }; --Oil of Immolation
		[6] = {itemID = 10592, spellID = 12609 }; --Catseye Elixir
		[7] = {itemID = 3829, spellID = 3454 }; --Frost Oil
		[8] = {itemID = 9149, spellID = 11459 }; --Philosopher's Stone
		[9] = {itemID = 3828, spellID = 3453 }; --Elixir of Detect Lesser Invisibility
		[10] = {itemID = 3824, spellID = 3449 }; --Shadow Oil
		[11] = {itemID = 6371, spellID = 7837 }; --Fire Oil
		[12] = {itemID = 5996, spellID = 7179 }; --Elixir of Water Breathing
		[13] = {itemID = 6370, spellID = 7836 }; --Blackmouth Oil
	};
};
---------------------
--- Blacksmithing ---
---------------------
AtlasLoot_Data["SmithingCLASSIC"] = {
	Name = BLACKSMITHING;
	Type = "Crafting";
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Chest";
		[1] = {itemID = 22669, spellID = 28242 }; --Icebane Breastplate
		[2] = {itemID = 12641, spellID = 16746 }; --Invulnerable Mail
		[3] = {itemID = 22191, spellID = 27590 }; --Obsidian Mail Tunic
		[4] = {itemID = 22196, spellID = 27587 }; --Thick Obsidian Breastplate
		[5] = {itemID = 19690, spellID = 24136 }; --Bloodsoul Breastplate
		[6] = {itemID = 20550, spellID = 24914 }; --Darkrune Breastplate
		[7] = {itemID = 19693, spellID = 24139 }; --Darksoul Breastplate
		[8] = {itemID = 22762, spellID = 28461 }; --Ironvine Breastplate
		[9] = {itemID = 12618, spellID = 16745 }; --Enchanted Thorium Breastplate
		[10] = {itemID = 12422, spellID = 16663 }; --Imperial Plate Chest
		[11] = {itemID = 12613, spellID = 16731 }; --Runic Breastplate
		[12] = {itemID = 12628, spellID = 16667 }; --Demon Forged Breastplate
		[13] = {itemID = 11604, spellID = 15296 }; --Dark Iron Plate
		[14] = {itemID = 12624, spellID = 16650 }; --Wildthorn Mail
		[15] = {itemID = 12415, spellID = 16648 }; --Radiant Breastplate
		[16] = {itemID = 12405, spellID = 16642 }; --Thorium Armor
		[17] = {itemID = 7930, spellID = 9959 }; --Heavy Mithril Breastplate
		[18] = {itemID = 7939, spellID = 9974 }; --Truesilver Breastplate
		[19] = {itemID = 7963, spellID = 9916 }; --Steel Breastplate
		[20] = {itemID = 3845, spellID = 3511 }; --Golden Scale Cuirass
		[21] = {itemID = 3844, spellID = 3508 }; --Green Iron Hauberk
		[22] = {itemID = 7914, spellID = 9813 }; --Barbaric Iron Breastplate
		[23] = {itemID = 2870, spellID = 2675 }; --Shining Silver Breastplate
		[24] = {itemID = 2869, spellID = 2673 }; --Silvered Bronze Breastplate
		[25] = {itemID = 7935, spellID = 9972 }; --Ornate Mithril Breastplate
		[26] = {itemID = 6731, spellID = 8367 }; --Ironforge Breastplate
		[27] = {itemID = 2866, spellID = 2670 }; --Rough Bronze Cuirass
		[28] = {itemID = 2864, spellID = 2667 }; --Runed Copper Breastplate
		[29] = {itemID = 3471, spellID = 3321 }; --Copper Chain Vest
		[30] = {itemID = 10421, spellID = 12260 }; --Rough Copper Vest
	};
	{ Name = BabbleInventory["Armor"] .. WHITE .. " - Feet";
		[1] = {itemID = 20039, spellID = 24399 }; --Dark Iron Boots
		[2] = {itemID = 19048, spellID = 23629 }; --Heavy Timbermaw Boots
		[3] = {itemID = 12611, spellID = 16665 }; --Runic Plate Boots
		[4] = {itemID = 12426, spellID = 16657 }; --Imperial Plate Boots
		[5] = {itemID = 12419, spellID = 16656 }; --Radiant Boots
		[6] = {itemID = 12409, spellID = 16652 }; --Thorium Boots
		[7] = {itemID = 7936, spellID = 9979 }; --Ornate Mithril Boots
		[8] = {itemID = 7933, spellID = 9968 }; --Heavy Mithril Boots
		[9] = {itemID = 3847, spellID = 3515 }; --Golden Scale Boots
		[10] = {itemID = 3846, spellID = 3513 }; --Polished Steel Boots
		[11] = {itemID = 7916, spellID = 9818 }; --Barbaric Iron Boots
		[12] = {itemID = 3484, spellID = 3334 }; --Green Iron Boots
		[13] = {itemID = 3482, spellID = 3331 }; --Silvered Bronze Boots
		[14] = {itemID = 6350, spellID = 7817 }; --Rough Bronze Boots
		[15] = {itemID = 3469, spellID = 3319 }; --Copper Chain Boots
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Hands";
		[1] = {itemID = 19164, spellID = 23637 }; --Dark Iron Gauntlets
		[2] = {itemID = 22670, spellID = 28243 }; --Icebane Gauntlets
		[3] = {itemID = 12639, spellID = 16741 }; --Stronghold Gauntlets
		[4] = {itemID = 19692, spellID = 24138 }; --Bloodsoul Gauntlets
		[5] = {itemID = 20549, spellID = 24912 }; --Darkrune Gauntlets
		[6] = {itemID = 19057, spellID = 23633 }; --Gloves of the Dawn
		[7] = {itemID = 22763, spellID = 28462 }; --Ironvine Gloves
		[8] = {itemID = 22194, spellID = 27589 }; --Black Grasp of the Destroyer
		[9] = {itemID = 12632, spellID = 16661 }; --Storm Gauntlets
		[10] = {itemID = 12631, spellID = 16655 }; --Fiery Plate Gauntlets
		[11] = {itemID = 7938, spellID = 9954 }; --Truesilver Gauntlets
		[12] = {itemID = 12418, spellID = 16654 }; --Radiant Gloves
		[13] = {itemID = 7927, spellID = 9950 }; --Ornate Mithril Gloves
		[14] = {itemID = 9366, spellID = 11643 }; --Golden Scale Gauntlets
		[15] = {itemID = 7919, spellID = 9928 }; --Heavy Mithril Gauntlet
		[16] = {itemID = 7917, spellID = 9820 }; --Barbaric Iron Gloves
		[17] = {itemID = 3485, spellID = 3336 }; --Green Iron Gauntlets
		[18] = {itemID = 3483, spellID = 3333 }; --Silvered Bronze Gauntlets
		[19] = {itemID = 3474, spellID = 3325 }; --Gemmed Copper Gauntlets
		[20] = {itemID = 3472, spellID = 3323 }; --Runed Copper Gauntlets
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Head";
		[1] = {itemID = 19148, spellID = 23636 }; --Dark Iron Helm
		[2] = {itemID = 12640, spellID = 16729 }; --Lionheart Helm
		[3] = {itemID = 20551, spellID = 24913 }; --Darkrune Helm
		[4] = {itemID = 12620, spellID = 16742 }; --Enchanted Thorium Helm
		[5] = {itemID = 12636, spellID = 16728 }; --Helm of the Great Chief
		[6] = {itemID = 12633, spellID = 16724 }; --Whitesoul Helm
		[7] = {itemID = 12612, spellID = 16726 }; --Runic Plate Helm
		[8] = {itemID = 12427, spellID = 16658 }; --Imperial Plate Helm
		[9] = {itemID = 12417, spellID = 16659 }; --Radiant Circlet
		[10] = {itemID = 12410, spellID = 16653 }; --Thorium Helm
		[11] = {itemID = 11606, spellID = 15293 }; --Dark Iron Mail
		[12] = {itemID = 7937, spellID = 9980 }; --Ornate Mithril Helm
		[13] = {itemID = 7934, spellID = 9970 }; --Heavy Mithril Helm
		[14] = {itemID = 7931, spellID = 9961 }; --Mithril Coif
		[15] = {itemID = 7922, spellID = 9935 }; --Steel Plate Helm
		[16] = {itemID = 3837, spellID = 3503 }; --Golden Scale Coif
		[17] = {itemID = 12612, spellID = 16726 }; --Runic Plate Helm
		[18] = {itemID = 7915, spellID = 9814 }; --Barbaric Iron Helm
		[19] = {itemID = 3836, spellID = 3502 }; --Green Iron Helm
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Legs";
		[1] = {itemID = 17013, spellID = 20876 }; --Dark Iron Leggings
		[3] = {itemID = 12414, spellID = 16662 }; --Thorium Leggings
		[2] = {itemID = 22385, spellID = 27829 }; --Titanic Leggings
		[4] = {itemID = 19694, spellID = 24140 }; --Darksoul Leggings
		[5] = {itemID = 12619, spellID = 16744 }; --Enchanted Thorium Leggings
		[6] = {itemID = 12429, spellID = 16730 }; --Imperial Plate Leggings
		[7] = {itemID = 12420, spellID = 16725 }; --Radiant Leggings
		[8] = {itemID = 12614, spellID = 16732 }; --Runic Plate Leggings
		[9] = {itemID = 30069, spellID = 36122 }; --Earthforged Leggings
		[10] = {itemID = 30070, spellID = 36124 }; --Windforged Leggings
		[11] = {itemID = 7926, spellID = 9945 }; --Ornate Mithril Pants
		[12] = {itemID = 7920, spellID = 9931 }; --Mithril Scale Pants
		[13] = {itemID = 7921, spellID = 9933 }; --Heavy Mithril Pants
		[14] = {itemID = 7929, spellID = 9957 }; --Orcish War Leggings
		[15] = {itemID = 3843, spellID = 3507 }; --Golden Scale Leggings
		[16] = {itemID = 3842, spellID = 3506 }; --Green Iron Leggings
		[17] = {itemID = 10423, spellID = 12259 }; --Silvered Bronze Leggings
		[18] = {itemID = 2865, spellID = 2668 }; --Rough Bronze Leggings
		[19] = {itemID = 3473, spellID = 3324 }; --Runed Copper Pants
		[20] = {itemID = 2852, spellID = 2662 }; --Copper Chain Pants
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Shoulder";
		[1] = {itemID = 16988, spellID = 20873 }; --Fiery Chain Shoulders
		[2] = {itemID = 19691, spellID = 24137 }; --Bloodsoul Shoulders
		[3] = {itemID = 19695, spellID = 24141 }; --Darksoul Shoulders
		[4] = {itemID = 12610, spellID = 16664 }; --Runic Plate Shoulders
		[5] = {itemID = 12625, spellID = 16660 }; --Dawnbringer Shoulders
		[6] = {itemID = 11605, spellID = 15295 }; --Dark Iron Shoulders
		[7] = {itemID = 12428, spellID = 16646 }; --Imperial Plate Shoulders
		[8] = {itemID = 7932, spellID = 9966 }; --Mithril Scale Shoulders
		[9] = {itemID = 7928, spellID = 9952 }; --Ornate Mithril Shoulder
		[10] = {itemID = 7918, spellID = 9926 }; --Heavy Mithril Shoulder
		[11] = {itemID = 3841, spellID = 3505 }; --Golden Scale Shoulders
		[12] = {itemID = 7913, spellID = 9811 }; --Barbaric Iron Shoulders
		[13] = {itemID = 3840, spellID = 3504 }; --Green Iron Shoulders
		[14] = {itemID = 3481, spellID = 3330 }; --Silvered Bronze Shoulders
		[15] = {itemID = 3480, spellID = 3328 }; --Rough Bronze Shoulders
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Waist";
		[1] = {itemID = 22197, spellID = 27585 }; --Heavy Obsidian Belt
		[2] = {itemID = 22764, spellID = 28463 }; --Ironvine Belt
		[3] = {itemID = 22195, spellID = 27588 }; --Light Obsidian Belt
		[4] = {itemID = 16989, spellID = 20872 }; --Fiery Chain Girdle
		[5] = {itemID = 19051, spellID = 23632 }; --Girdle of the Dawn
		[6] = {itemID = 19043, spellID = 23628 }; --Heavy Timbermaw Belt
		[7] = {itemID = 12424, spellID = 16647 }; --Imperial Plate Belt
		[8] = {itemID = 12416, spellID = 16645 }; --Radiant Belt
		[9] = {itemID = 12406, spellID = 16643 }; --Thorium Belt
		[10] = {itemID = 2857, spellID = 2666 }; --Runed Copper Belt
		[11] = {itemID = 2851, spellID = 2661 }; --Copper Chain Belt
	};
	{
		Name = BabbleInventory["Armor"] .. WHITE .. " - Wrist";
		[1] = {itemID = 22671, spellID = 28244 }; --Icebane Bracers
		[2] = {itemID = 17014, spellID = 20874 }; --Dark Iron Bracers
		[3] = {itemID = 12425, spellID = 16649 }; --Imperial Plate Bracers
		[4] = {itemID = 12408, spellID = 16644 }; --Thorium Bracers
		[5] = {itemID = 7924, spellID = 9937 }; --Mithril Scale Bracers
		[6] = {itemID = 6040, spellID = 7223 }; --Golden Scale Bracers
		[7] = {itemID = 3835, spellID = 3501 }; --Green Iron Bracers
		[8] = {itemID = 2868, spellID = 2672 }; --Patterned Bronze Bracers
		[9] = {itemID = 2854, spellID = 2664 }; --Runed Copper Bracers
		[10] = {itemID = 2853, spellID = 2663 }; --Copper Bracers
	};
	{
		Name = "Weapon - One Handed";
		[1] = {itemID = 19166, spellID = 23638 }; --Black Amnesty
		[2] = {itemID = 19168, spellID = 23652 }; --Blackguard
		[3] = {itemID = 19170, spellID = 23650 }; --Ebon Hand
		[4] = {itemID = 22384, spellID = 27830 }; --Persuader
		[5] = {itemID = 22383, spellID = 27832 }; --Sageblade
		[6] = {itemID = 12798, spellID = 16991 }; --Annihilator
		[7] = {itemID = 17016, spellID = 20897 }; --Dark Iron Destroyer
		[8] = {itemID = 17015, spellID = 20890 }; --Dark Iron Reaver
		[9] = {itemID = 12797, spellID = 16992 }; --Frostguard
		[10] = {itemID = 12783, spellID = 16995 }; --Heartseeker
		[11] = {itemID = 12794, spellID = 16993 }; --Masterwork Stormhammer
		[12] = {itemID = 12781, spellID = 16983 }; --Serenity
		[13] = {itemID = 12777, spellID = 16978 }; --Blazing Rapier
		[14] = {itemID = 12774, spellID = 16970 }; --Dawn's Edge
		[15] = {itemID = 30071, spellID = 36125 }; --Light Earthforged Blade
		[16] = {itemID = 30073, spellID = 36128 }; --Light Emberforged Hammer
		[17] = {itemID = 30072, spellID = 36126 }; --Light Skyforged Axe
		[18] = {itemID = 7961, spellID = 10007 }; --Phantom Blade
		[19] = {itemID = 7954, spellID = 10003 }; --The Shatterer
		[20] = {itemID = 12792, spellID = 16984 }; --Volcanic Hammer
		[21] = {itemID = 12773, spellID = 16969 }; --Ornate Thorium Handaxe
		[22] = {itemID = 7947, spellID = 10013 }; --Ebon Shiv
		[23] = {itemID = 7946, spellID = 10009 }; --Runed Mithril Hammer
		[24] = {itemID = 7944, spellID = 10005 }; --Dazzling Mithril Rapier
		[25] = {itemID = 7945, spellID = 10001 }; --Big Black Mace
		[26] = {itemID = 7943, spellID = 9997 }; --Wicked Mithril Blade
		[27] = {itemID = 7942, spellID = 9995 }; --Blue Glittering Axe
		[28] = {itemID = 7941, spellID = 9993 }; --Heavy Mithril Axe
		[29] = {itemID = 12260, spellID = 15973 }; --Searing Golden Blade
		[30] = {itemID = 17704, spellID = 21913 }; --Edge of Winter
	};
	{
		Name = "Weapon - One Handed";
		[1] = {itemID = 12259, spellID = 15972 }; --Glinting Steel Dagger
		[2] = {itemID = 3850, spellID = 3493 }; --Jade Serpentblade
		[3] = {itemID = 3849, spellID = 3492 }; --Hardened Iron Shortsword
		[4] = {itemID = 3492, spellID = 3297 }; --Mighty Iron Hammer
		[5] = {itemID = 5541, spellID = 6518 }; --Iridescent Hammer
		[6] = {itemID = 3491, spellID = 3296 }; --Heavy Bronze Mace
		[7] = {itemID = 3490, spellID = 3295 }; --Deadly Bronze Poniard
		[8] = {itemID = 5540, spellID = 6517 }; --Pearl-handled Dagger
		[9] = {itemID = 3848, spellID = 3491 }; --Big Bronze Knife
		[10] = {itemID = 3489, spellID = 3294 }; --Thick War Axe
		[11] = {itemID = 33791, spellID = 43549 }; --Heavy Copper Longsword
		[12] = {itemID = 2850, spellID = 2742 }; --Bronze Shortsword
		[13] = {itemID = 2849, spellID = 2741 }; --Bronze Axe
		[14] = {itemID = 2848, spellID = 2740 }; --Bronze Mace
		[15] = {itemID = 2845, spellID = 2738 }; --Copper Axe
		[16] = {itemID = 2844, spellID = 2737 }; --Copper Mace
	};
	{
		Name = "Weapon - Two Handed";
		[1] = {itemID = 19167, spellID = 23639 }; --Blackfury
		[2] = {itemID = 19169, spellID = 23653 }; --Nightfall
		[3] = {itemID = 17193, spellID = 21161 }; --Sulfuron Hammer
		[4] = {itemID = 12790, spellID = 16990 }; --Arcanite Champion
		[5] = {itemID = 12784, spellID = 16994 }; --Arcanite Reaper
		[6] = {itemID = 12796, spellID = 16988 }; --Hammer of the Titans
		[7] = {itemID = 12782, spellID = 16985 }; --Corruption
		[8] = {itemID = 12776, spellID = 16973 }; --Enchanted Battlehammer
		[9] = {itemID = 11607, spellID = 15294 }; --Dark Iron Sunderer
		[10] = {itemID = 11608, spellID = 15292 }; --Dark Iron Pulverizer
		[11] = {itemID = 7960, spellID = 10015 }; --Truesilver Champion
		[12] = {itemID = 7959, spellID = 10011 }; --Blight
		[13] = {itemID = 12775, spellID = 16971 }; --Huge Thorium Battleaxe
		[14] = {itemID = 3856, spellID = 3500 }; --Shadow Crescent Axe
		[15] = {itemID = 3854, spellID = 3497 }; --Frost Tiger Blade
		[16] = {itemID = 3855, spellID = 3498 }; --Massive Iron Axe
		[17] = {itemID = 3853, spellID = 3496 }; --Moonsteel Broadsword
		[18] = {itemID = 3852, spellID = 3495 }; --Golden Iron Destroyer
		[19] = {itemID = 3851, spellID = 3494 }; --Solid Iron Maul
		[20] = {itemID = 3487, spellID = 3292 }; --Heavy Copper Broadsword
		[21] = {itemID = 3488, spellID = 3293 }; --Copper Battle Axe
		[22] = {itemID = 7958, spellID = 9987 }; --Bronze Battle Axe
		[23] = {itemID = 7957, spellID = 9986 }; --Bronze Greatsword
		[24] = {itemID = 7956, spellID = 9985 }; --Bronze Warhammer
		[25] = {itemID = 6214, spellID = 7408 }; --Heavy Copper Maul
		[26] = {itemID = 7955, spellID = 9983 }; --Copper Claymore
		[27] = {itemID = 7166, spellID = 8880 }; --Copper Dagger
		[28] = {itemID = 2847, spellID = 2739 }; --Copper Shortsword

	};
	{
		Name = "Weapon " .. WHITE .." - Thrown";
		[1] = {itemID = 29201, spellID = 34979 }; --Thick Bronze Darts
		[2] = {itemID = 29203, spellID = 34982 }; --Enchanted Thorium Blades
		[3] = {itemID = 29202, spellID = 34981 }; --Whirling Steel Axes
	};
	{
		Name = "Shield";
		[1] = {itemID = 22198, spellID = 27586 }; --Jagged Obsidian Shield
	};
	{
		Name = AL["Item Enhancements"];
		[1] = {itemID = 12404, spellID = 16641 }; --Dense Sharpening Stone
		[2] = {itemID = 12643, spellID = 16640 }; --Dense Weightstone
		[3] = {itemID = 7964, spellID = 9918 }; --Solid Sharpening Stone
		[4] = {itemID = 7965, spellID = 9921 }; --Solid Weightstone
		[5] = {itemID = 6041, spellID = 7224 }; --Steel Weapon Chain
		[6] = {itemID = 6043, spellID = 7222 }; --Iron Counterweight
		[7] = {itemID = 6042, spellID = 7221 }; --Iron Shield Spike
		[8] = {itemID = 2871, spellID = 2674 }; --Heavy Sharpening Stone
		[9] = {itemID = 3241, spellID = 3117 }; --Heavy Weightstone
		[10] = {itemID = 2863, spellID = 2665 }; --Coarse Sharpening Stone
		[11] = {itemID = 3240, spellID = 3116 }; --Coarse Weightstone
		[12] = {itemID = 2862, spellID = 2660 }; --Rough Sharpening Stone
		[13] = {itemID = 3239, spellID = 3115 }; --Rough Weightstone
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 43853, spellID = 59406 }; --Titanium Skeleton Key
		[2] = {itemID = 43854, spellID = 59405 }; --Cobalt Skeleton Key
		[3] = {itemID = 15872, spellID = 19669 }; --Arcanite Skeleton Key
		[4] = {itemID = 15871, spellID = 19668 }; --Truesilver Skeleton Key
		[5] = {itemID = 15870, spellID = 19667 }; --Golden Skeleton Key
		[6] = {itemID = 15869, spellID = 19666 }; --Silver Skeleton Key
		[7] = {itemID = 41745, spellID = 55732 }; --Titanium Rod
		[8] = {itemID = 25845, spellID = 32657 }; --Eternium Rod", "=ds=#sr# 360
		[9] = {itemID = 25844, spellID = 32656 }; --Adamantite Rod", "=ds=#sr# 350
		[10] = {itemID = 25843, spellID = 32655 }; --Fel Iron Rod
		[11] = {itemID = 16206, spellID = 20201 }; --Arcanite Rod
		[12] = {itemID = 12644, spellID = 16639 }; --Dense Grinding Stone
		[13] = {itemID = 9060, spellID = 11454 }; --Inlaid Mithril Cylinder
		[14] = {itemID = 11144, spellID = 14380 }; --Truesilver Rod
		[15] = {itemID = 7966, spellID = 9920 }; --Solid Grinding Stone
		[16] = {itemID = 11128, spellID = 14379 }; --Golden Rod
		[17] = {itemID = 7071, spellID = 8768 }; --Iron Buckle
		[18] = {itemID = 3486, spellID = 3337 }; --Heavy Grinding Stone
		[19] = {itemID = 6338, spellID = 7818 }; --Silver Rod
		[20] = {itemID = 3478, spellID = 3326 }; --Coarse Grinding Stone
		[21] = {itemID = 3470, spellID = 3320 }; --Rough Grinding Stone
	};
	{
		Name = ARMORSMITH;
		[1] = {itemID = 30069, spellID = 36122 }; --Earthforged Leggings
		[2] = {itemID = 30070, spellID = 36124 }; --Windforged Leggings
	};
	{
		Name = WEAPONSMITH;
		[1] = {itemID = 30071, spellID = 36125 }; --Light Earthforged Blade
		[2] = {itemID = 30073, spellID = 36128 }; --Light Emberforged Hammer
		[3] = {itemID = 30072, spellID = 36126 }; --Light Skyforged Axe
	};
};
---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingCLASSIC"] = {
	Name = COOKING;
	Type = "Crafting";
	{
		Name = "Page 1";
		[1] = {itemID = 21023, spellID = 25659 }; --Dirge's Kickin' Chimaerok Chops
		[2] = {itemID = 100626, spellID = 966455 }; --Azerothian Schmorgus Boards
		[3] = {itemID = 100609, spellID = 966436 }; --Chilled Lava Eels
		[4] = {itemID = 100608, spellID = 966435 }; --Chillwind Flank Steaks
		[5] = {itemID = 100607, spellID = 966434 }; --Hippogryph Steaks
		[6] = {itemID = 100606, spellID = 966433 }; --Steamed Makrinni Claws
		[7] = {itemID = 100605, spellID = 966432 }; --Rubbed Ravasaur Ribss
		[8] = {itemID = 100604, spellID = 966431 }; --Hearty Stegodon Stews
		[9] = {itemID = 100603, spellID = 966430 }; --Crispy Pterrordax Wings
		[10] = {itemID = 100602, spellID = 966429 }; --Spicy Dino Jerkys
		[11] = {itemID = 100601, spellID = 966428 }; --Dirge's Nevermelt Ice Creams
		[12] = {itemID = 100599, spellID = 966427 }; --Silithid Snacks
		[13] = {itemID = 100598, spellID = 966426 }; --Hydra Scale Soups
		[14] = {itemID = 100597, spellID = 966425 }; --Ghostly Goulashs
		[15] = {itemID = 100583, spellID = 966398 }; --Seared Cunning Carps
	};
	{
		Name = "Page 2";
		[1] = {itemID = 20452, spellID = 24801 }; --Smoked Desert Dumplings
		[2] = {itemID = 13935, spellID = 18247 }; --Baked Salmon
		[3] = {itemID = 13933, spellID = 18245 }; --Lobster Stew
		[4] = {itemID = 13934, spellID = 18246 }; --Mightfish Steak
		[5] = {itemID = 18254, spellID = 22761 }; --Runn Tum Tuber Surprise
		[6] = {itemID = 35563, spellID = 46684 }; --Charred Bear Kabobs
		[7] = {itemID = 35565, spellID = 46688 }; --Juicy Bear Burger
		[8] = {itemID = 13931, spellID = 18243 }; --Nightfin Soup
		[9] = {itemID = 13932, spellID = 18244 }; --Poached Sunscale Salmon
		[10] = {itemID = 13928, spellID = 18240 }; --Grilled Squid
		[11] = {itemID = 13929, spellID = 18242 }; --Hot Smoked Bass
		[12] = {itemID = 33004, spellID = 64054 }; --Clamlette Magnifique
		[13] = {itemID = 13927, spellID = 18239 }; --Cooked Glossy Mightfish
		[14] = {itemID = 13930, spellID = 18241 }; --Filet of Redgill
		[15] = {itemID = 12218, spellID = 15933 }; --Monster Omelet
		[16] = {itemID = 12216, spellID = 15915 }; --Spiced Chili Crab
		[17] = {itemID = 6887, spellID = 18238 }; --Spotted Yellowtail
		[18] = {itemID = 18045, spellID = 22480 }; --Tender Wolf Steak
		[19] = {itemID = 16766, spellID = 20626 }; --Undermine Clam Chowder
		[20] = {itemID = 12217, spellID = 15906 }; --Dragonbreath Chili
		[21] = {itemID = 12215, spellID = 15910 }; --Heavy Kodo Stew
		[22] = {itemID = 17222, spellID = 21175 }; --Spider Sausage
		[23] = {itemID = 4457, spellID = 4094 }; --Barbecued Buzzard Wing
		[24] = {itemID = 12213, spellID = 15863 }; --Carrion Surprise
		[25] = {itemID = 6038, spellID = 7213 }; --Giant Clam Scorcho
		[26] = {itemID = 10841, spellID = 13028 }; --Goldthorn Tea
		[27] = {itemID = 13851, spellID = 15856 }; --Hot Wolf Ribs
	};
	{
		Name = "Page 3";
		[1] = {itemID = 12212, spellID = 15861 }; --Jungle Stew
		[2] = {itemID = 8364, spellID = 20916 }; --Mithril Head Trout
		[3] = {itemID = 12214, spellID = 15865 }; --Mystery Stew
		[4] = {itemID = 12210, spellID = 15855 }; --Roast Raptor
		[5] = {itemID = 4594, spellID = 7828 }; --Rockscale Cod
		[6] = {itemID = 21217, spellID = 25954 }; --Sagefish Delight
		[7] = {itemID = 3729, spellID = 3400 }; --Soothing Turtle Bisque
		[8] = { itemID = 20074, spellID = 24418 }; --Heavy Crocolisk Stew
		[9] = {itemID = 3728, spellID = 3399 }; --Tasty Lion Steak
		[10] = {itemID = 3665, spellID = 3376 }; --Curiously Tasty Omelet
		[11] = {itemID = 5527, spellID = 6500 }; --Goblin Deviled Clams
		[12] = {itemID = 3727, spellID = 3398 }; --Hot Lion Chops
		[13] = {itemID = 12209, spellID = 15853 }; --Lean Wolf Steak
		[14] = {itemID = 3664, spellID = 3373 }; --Crocolisk Gumbo
		[15] = {itemID = 3726, spellID = 3397 }; --Big Bear Steak
		[16] = {itemID = 3666, spellID = 3377 }; --Gooey Spider Cake
		[17] = {itemID = 5480, spellID = 6419 }; --Lean Venison
		[18] = {itemID = 2685, spellID = 2548 }; --Succulent Pork Ribs
		[19] = {itemID = 4593, spellID = 7755 }; --Bristle Whisker Catfish
		[20] = {itemID = 34832, spellID = 45695 }; --Captain Rumsey's Lager
		[21] = {itemID = 5479, spellID = 6418 }; --Crispy Lizard Tail
		[22] = {itemID = 1082, spellID = 2547 }; --Redridge Goulash
		[23] = {itemID = 1017, spellID = 2549 }; --Seasoned Wolf Kabob
		[24] = {itemID = 5526, spellID = 6501 }; --Clam Chowder
		[25] = {itemID = 5478, spellID = 6417 }; --Dig Rat Stew
		[26] = {itemID = 3663, spellID = 3372 }; --Murloc Fin Soup
		[27] = {itemID = 2682, spellID = 2545 }; --Cooked Crab Claw
		[28] = {itemID = 6657, spellID = 8238 }; --Savory Deviate Delight
		[29] = {itemID = 3662, spellID = 3370 }; --Crocolisk Steak
		[30] = {itemID = 6890, spellID = 8607 }; --Smoked Bear Meat
	};
	{
		Name = "Page 4";
		[1] = {itemID = 2687, spellID = 2546 }; --Dry Pork Ribs
		[2] = {itemID = 21072, spellID = 25704 }; --Smoked Sagefish
		[3] = {itemID = 2683, spellID = 2544 }; --Crab Cake
		[4] = {itemID = 44837, spellID = 62050 }; --Cornbread Stuffing
		[5] = {itemID = 733, spellID = 2543 }; --Westfall Stew
		[6] = {itemID = 3220, spellID = 3371 }; --Blood Sausage
		[7] = {itemID = 22645, spellID = 28267 }; --Crunchy Spider Surprise
		[8] = {itemID = 7676, spellID = 9513 }; --Thistle Tea
		[9] = {itemID = 27636, spellID = 33278 }; --Bat Bites
		[10] = {itemID = 5525, spellID = 6499 }; --Boiled Clams
		[11] = {itemID = 2684, spellID = 2541 }; --Coyote Steak
		[12] = {itemID = 5476, spellID = 6415 }; --Fillet of Frenzy
		[13] = {itemID = 724, spellID = 2542 }; --Goretusk Liver Pie
		[14] = {itemID = 6316, spellID = 7754 }; --Loch Frenzy Delight
		[15] = {itemID = 4592, spellID = 7753 }; --Longjaw Mud Snapper
		[16] = {itemID = 5095, spellID = 7827 }; --Rainbow Fin Albacore
		[17] = {itemID = 34112, spellID = 62045 }; --Roasted Turkey
		[18] = {itemID = 5477, spellID = 6416 }; --Strider Stew
		[19] = {itemID = 1645, spellID = 62044 }; --Tasty Cranberries
		[20] = {itemID = 44839, spellID = 62051 }; --Candied Yam
		[21] = {itemID = 17198, spellID = 21144 }; --Egg Nog
		[22] = {itemID = 5474, spellID = 6414 }; --Roasted Kodo Meat
		[23] = {itemID = 44840, spellID = 62049 }; --Cranberry Chutney
		[24] = {itemID = 5473, spellID = 6413 }; --Scorpid Surprise
		[25] = {itemID = 2888, spellID = 2795 }; --Beer Basted Boar Ribs
		[26] = {itemID = 5472, spellID = 6412 }; --Kaldorei Spider Kabob
		[27] = {itemID = 2680, spellID = 2539 }; --Spiced Wolf Meat
		[28] = {itemID = 6290, spellID = 7751 }; --Brilliant Smallfish
		[29] = {itemID = 2679, spellID = 2538 }; --Charred Wolf Meat
		[30] = {itemID = 27635, spellID = 33276 }; --Lynx Steak
	};
	{
		Name = "Page 5";
		[1] = {itemID = 12224, spellID = 15935 }; --Crispy Bat Wing
		[2] = {itemID = 33924, spellID = 43779 }; --Delicious Chocolate Cake
		[3] = {itemID = 17197, spellID = 21143 }; --Gingerbread Cookie
		[4] = {itemID = 6888, spellID = 8604 }; --Herb Baked Egg
		[5] = {itemID = 2681, spellID = 2540 }; --Roasted Boar Meat
		[6] = {itemID = 24105, spellID = 33277 }; --Roasted Moongraze Tenderloin
		[7] = {itemID = 787, spellID = 7752 }; --Slitherskin Mackerel
		[8] = {itemID = 30816, spellID = 37836 }; --Spice Bread
		[9] = {itemID = 46691, spellID = 65454 }; --Bread of the Dead
	};
};

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingCLASSIC"] = {
	Name = ENCHANTING;
	Type = "Crafting";
	{
		Name = AL["Enchant Boots"];
		[1] = {spellID = 20023, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Agility
		[2] = {spellID = 20024, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Spirit
		[3] = {spellID = 20020, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Stamina
		[4] = {spellID = 63746, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Lesser Accuracy
		[5] = {spellID = 13935, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Agility
		[6] = {spellID = 13890, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Minor Speed
		[16] = {spellID = 13836, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Stamina
		[17] = {spellID = 13687, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Lesser Spirit
		[18] = {spellID = 13644, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Lesser Stamina
		[19] = {spellID = 13637, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Lesser Agility
		[20] = {spellID = 7867, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Minor Agility
		[21] = {spellID = 7863, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Minor Stamina
	};
	{
		Name = AL["Enchant Bracer"];
		[1] = {spellID = 23802, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Healing Power
		[2] = {spellID = 20011, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Superior Stamina
		[3] = {spellID = 20010, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Superior Strength
		[4] = {spellID = 23801, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Mana Regeneration
		[5] = {spellID = 20009, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Superior Spirit
		[6] = {spellID = 20008, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Intellect
		[7] = {spellID = 13939, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Strength
		[8] = {spellID = 13945, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Stamina
		[9] = {spellID = 13931, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Deflection
		[10] = {spellID = 13846, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Spirit
		[11] = {spellID = 13822, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Intellect
		[12] = {spellID = 13661, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Strength
		[13] = {spellID = 13646, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Lesser Deflection
		[14] = {spellID = 13648, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Stamina
		[15] = {spellID = 13642, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Spirit
		[16] = {spellID = 13622, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Lesser Intellect
		[17] = {spellID = 13536, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Lesser Strength
		[18] = {spellID = 13501, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Lesser Stamina
		[19] = {spellID = 7859, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Lesser Spirit
		[20] = {spellID = 7779, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Agility
		[21] = {spellID = 7782, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Strength
		[22] = {spellID = 7457, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Stamina
		[23] = {spellID = 7766, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Spirit
		[24] = {spellID = 7418, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Health
		[25] = {spellID = 7428, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Minor Deflection
	};
	{
		Name = AL["Enchant Chest"];
		[1] = {spellID = 20025, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Greater Stats
		[2] = {spellID = 33991, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Restore Mana Prime
		[3] = {spellID = 20028, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Major Mana
		[4] = {spellID = 20026, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Major Health
		[5] = {spellID = 13941, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Stats
		[6] = {spellID = 13917, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Superior Mana
		[7] = {spellID = 13858, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Superior Health
		[8] = {spellID = 13700, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Lesser Stats
		[9] = {spellID = 13663, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Greater Mana
		[10] = {spellID = 13640, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Greater Health
		[11] = {spellID = 13626, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Minor Stats
		[12] = {spellID = 13607, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Mana
		[13] = {spellID = 13538, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Lesser Absorption
		[14] = {spellID = 7857, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Health
		[15] = {spellID = 7776, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Lesser Mana
		[16] = {spellID = 7748, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Lesser Health
		[17] = {spellID = 7443, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Minor Mana
		[18] = {spellID = 7420, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Minor Health
	};
	{
		Name = AL["Enchant Cloak"];
		[1] = {spellID = 25081, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Greater Fire Resistance
		[2] = {spellID = 20015, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Defense
		[3] = {spellID = 20014, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Greater Resistance
		[4] = {spellID = 13882, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Lesser Agility
		[5] = {spellID = 13746, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Greater Defense
		[6] = {spellID = 13794, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Resistance
		[7] = {spellID = 13657, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Fire Resistance
		[8] = {spellID = 13635, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Defense
		[9] = {spellID = 13522, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Lesser Shadow Resistance
		[10] = {spellID = 7861, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Lesser Fire Resistance
		[11] = {spellID = 13419, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Minor Agility
		[12] = {spellID = 13421, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Lesser Protection
		[13] = {spellID = 7771, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Minor Protection
		[14] = {spellID = 7454, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Minor Resistance
		[15] = {spellID = 7426, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Minor Absorption
	};
	{
		Name = AL["Enchant Gloves"];
		[1] = {spellID = 25078, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Fire Power
		[2] = {spellID = 25074, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Frost Power
		[3] = {spellID = 25079, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Healing Power
		[4] = {spellID = 25073, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Shadow Power
		[5] = {spellID = 25080, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Superior Agility
		[6] = {spellID = 25072, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Threat
		[7] = {spellID = 20013, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Greater Strength
		[8] = {spellID = 20012, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Greater Agility
		[9] = {spellID = 13948, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Minor Haste
		[10] = {spellID = 13947, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Riding Skill
		[11] = {spellID = 13868, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Advanced Herbalism
		[12] = {spellID = 13887, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Strength
		[13] = {spellID = 13841, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Advanced Mining
		[14] = {spellID = 13815, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Agility
		[15] = {spellID = 13698, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Skinning
		[16] = {spellID = 13620, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Fishing
		[17] = {spellID = 13617, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Herbalism
		[18] = {spellID = 13612, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Mining
	};
	{
		Name = AL["Enchant Shield"];
		[1] = {spellID = 20016, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Superior Spirit
		[2] = {spellID = 20017, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Greater Stamina
		[3] = {spellID = 13933, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Frost Resistance
		[4] = {spellID = 13905, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Greater Spirit
		[5] = {spellID = 13817, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Stamina
		[6] = {spellID = 13689, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Lesser Block
		[7] = {spellID = 13659, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Spirit
		[8] = {spellID = 13631, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Lesser Stamina
		[9] = {spellID = 13485, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Lesser Spirit
		[10] = {spellID = 13464, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Lesser Protection
		[11] = {spellID = 13378, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Minor Stamina
	};
	{
		Name = AL["Enchant 2H Weapon"];
		[1] = {spellID = 20036, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Major Intellect
		[2] = {spellID = 20035, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Major Spirit
		[3] = {spellID = 20030, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Superior Impact
		[4] = {spellID = 27837, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Agility
		[5] = {spellID = 13937, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Greater Impact
		[6] = {spellID = 13695, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Impact
		[7] = {spellID = 13529, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Lesser Impact
		[8] = {spellID = 13380, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Lesser Spirit
		[9] = {spellID = 7793, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Lesser Intellect
		[10] = {spellID = 7745, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Minor Impact
	};
	{
		Name = AL["Enchant Weapon"];
		[1] = {spellID = 20034, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Crusader
		[2] = {spellID = 22750, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Healing Power
		[3] = {spellID = 20032, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Lifestealing
		[4] = {spellID = 23804, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Mighty Intellect
		[5] = {spellID = 23803, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Mighty Spirit
		[6] = {spellID = 22749, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Spell Power
		[7] = {spellID = 20031, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Superior Striking
		[8] = {spellID = 20033, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Unholy Weapon
		[9] = {spellID = 23800, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Agility
		[10] = {spellID = 23799, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Strength
		[11] = {spellID = 20029, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Icy Chill
		[12] = {spellID = 13898, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Fiery Weapon
		[13] = {spellID = 13943, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Greater Striking
		[14] = {spellID = 13915, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Demonslaying
		[15] = {spellID = 13693, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Striking
		[16] = {spellID = 21931, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Winter's Might
		[17] = {spellID = 13655, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Lesser Elemental Slayer
		[18] = {spellID = 13653, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Lesser Beastslayer
		[19] = {spellID = 13503, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Lesser Striking
		[20] = {spellID = 7786, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Minor Beastslayer
		[21] = {spellID = 7788, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Minor Striking
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 20748, spellID = 25130 }; --Brilliant Mana Oil
		[2] = {itemID = 20749, spellID = 25129 }; --Brilliant Wizard Oil
		[3] = {itemID = 22461, spellID = 32664 }; --Runed Fel Iron Rod
		[4] = {itemID = 16207, spellID = 20051 }; --Runed Arcanite Rod
		[5] = {itemID = 20750, spellID = 25128 }; --Wizard Oil
		[6] = {itemID = 12655, spellID = 17180 }; --Enchanted Thorium
		[7] = {itemID = 20747, spellID = 25127 }; --Lesser Mana Oil
		[8] = {itemID = 12810, spellID = 17181 }; --Enchanted Leather
		[9] = {itemID = 20746, spellID = 25126 }; --Lesser Wizard Oil
		[10] = {itemID = 11145, spellID = 13702 }; --Runed Truesilver Rod
		[11] = {itemID = 20745, spellID = 25125 }; --Minor Mana Oil
		[12] = {itemID = 11130, spellID = 13628 }; --Runed Golden Rod
		[13] = {itemID = 6339, spellID = 7795 }; --Runed Silver Rod
		[14] = {itemID = 20744, spellID = 25124 }; --Minor Wizard Oil
		[15] = {itemID = 6218, spellID = 7421 }; --Runed Copper Rod
		[16] = {itemID = 11290, spellID = 14810 }; --Greater Mystic Wand
		[17] = {itemID = 11289, spellID = 14809 }; --Lesser Mystic Wand
		[18] = {itemID = 11288, spellID = 14807 }; --Greater Magic Wand
		[19] = {itemID = 11287, spellID = 14293 }; --Lesser Magic Wand
	};
};

-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringCLASSIC"] = {
	Name = ENGINEERING;
	Type = "Crafting";
	{
		Name = AL["Ammunition"];
		[1] = {itemID = 18042, desc = "Quest See Tooltip", quest = {14183,14182, text = "Trade Thorium Shells for Arrows"}}; --Thorium Headed Arrow
		[2] = {itemID = 15997, spellID = 19800 }; --Thorium Shells
		[3] = {itemID = 10513, spellID = 12621 }; --Mithril Gyro-Shot
		[4] = {itemID = 10512, spellID = 12596 }; --Hi-Impact Mithril Slugs
		[5] = {itemID = 8069, spellID = 3947 }; --Crafted Solid Shot
		[6] = {itemID = 8068, spellID = 3930 }; --Crafted Heavy Shot
		[7] = {itemID = 8067, spellID = 3920 }; --Crafted Light Shot
	};
	{
		Name = BabbleInventory["Armor"];
		[1] = {itemID = 16022, spellID = 19830 }; --Arcanite Dragonling
		[2] = {itemID = 19999, spellID = 24356 }; --Bloodvine Goggles
		[3] = {itemID = 19998, spellID = 24357 }; --Bloodvine Lens
		[4] = {itemID = 18639, spellID = 23082 }; --Ultra-Flash Shadow Reflector
		[5] = {itemID = 18638, spellID = 23081 }; --Hyper-Radiant Flame Reflector
		[6] = {itemID = 18634, spellID = 23077 }; --Gyrofreeze Ice Reflector
		[7] = {itemID = 10504, spellID = 12622 }; --Green Lens
		[8] = {itemID = 16008, spellID = 19825 }; --Master Engineer's Goggles
		[9] = {itemID = 16009, spellID = 19819 }; --Voice Amplification Modulator
		[10] = {itemID = 18637, spellID = 23079 }; --Major Recombobulator
		[11] = {itemID = 15999, spellID = 19794 }; --Spellpower Goggles Xtreme Plus
		[12] = {itemID = 10576, spellID = 12624 }; --Mithril Mechanical Dragonling
		[13] = {itemID = 10506, spellID = 12617 }; --Deepdive Helmet
		[14] = {itemID = 10503, spellID = 12618 }; --Rose Colored Goggles
		[15] = {itemID = 10518, spellID = 12616 }; --Parachute Cloak
		[16] = {itemID = 10502, spellID = 12615 }; --Spellpower Goggles Xtreme
		[17] = {itemID = 10501, spellID = 12607 }; --Catseye Ultra Goggles
		[18] = {itemID = 10500, spellID = 12594 }; --Fire Goggles
		[19] = {itemID = 4396, spellID = 3969 }; --Mechanical Dragonling
		[20] = {itemID = 4393, spellID = 3966 }; --Craftsman's Monocle
		[21] = {itemID = 10499, spellID = 12587 }; --Bright-Eye Goggles
		[22] = {itemID = 4385, spellID = 3956 }; --Green Tinted Goggles
		[23] = {itemID = 4381, spellID = 3952 }; --Minor Recombobulator
		[24] = {itemID = 4373, spellID = 3940 }; --Shadow Goggles
		[25] = {itemID = 4368, spellID = 3934 }; --Flying Tiger Goggles
	};
	{
		Name = AL["Explosives"];
		[1] = {itemID = 16040, spellID = 19831 }; --Arcane Bomb
		[2] = {itemID = 16005, spellID = 19799 }; --Dark Iron Bomb
		[3] = {itemID = 18594, spellID = 23080 }; --Powerful Seaforium Charge
		[4] = {itemID = 15993, spellID = 19790 }; --Thorium Grenade
		[5] = {itemID = 18641, spellID = 23070 }; --Dense Dynamite
		[6] = {itemID = 10562, spellID = 12619 }; --Hi-Explosive Bomb
		[7] = {itemID = 10586, spellID = 12754 }; --The Big One
		[8] = {itemID = 10514, spellID = 12603 }; --Mithril Frag Bomb
		[9] = {itemID = 10577, spellID = 12716 }; --Goblin Mortar
		[10] = {itemID = 10646, spellID = 12760 }; --Goblin Sapper Charge
		[11] = {itemID = 10577, spellID = 13240 }; --The Mortar: Reloaded
		[12] = {itemID = 18588, spellID = 23069 }; --EZ-Thro Dynamite II
		[13] = {itemID = 4398, spellID = 3972 }; --Large Seaforium Charge
		[14] = {itemID = 4395, spellID = 3968 }; --Goblin Land Mine
		[15] = {itemID = 4394, spellID = 3967 }; --Big Iron Bomb
		[16] = {itemID = 4390, spellID = 3962 }; --Iron Grenade
		[17] = {itemID = 10507, spellID = 12586 }; --Solid Dynamite
		[18] = {itemID = 4403, spellID = 3960 }; --Portable Bronze Mortar
		[19] = {itemID = 4380, spellID = 3950 }; --Big Bronze Bomb
		[20] = {itemID = 4378, spellID = 3946 }; --Heavy Dynamite
		[21] = {itemID = 4374, spellID = 3941 }; --Small Bronze Bomb
		[22] = {itemID = 4370, spellID = 3937 }; --Large Copper Bomb
		[23] = {itemID = 6714, spellID = 8339 }; --EZ-Thro Dynamite
		[24] = {itemID = 4367, spellID = 3933 }; --Small Seaforium Charge
		[25] = {itemID = 4365, spellID = 3931 }; --Coarse Dynamite
		[26] = {itemID = 4360, spellID = 3923 }; --Rough Copper Bomb
		[27] = {itemID = 4358, spellID = 3919 }; --Rough Dynamite
	};
	{
		Name = AL["Item Enhancements"];
		[1] = {itemID = 18283, spellID = 22793 }; --Biznicks 247x128 Accurascope
		[2] = {itemID = 10548, spellID = 12620 }; --Sniper Scope
		[3] = {itemID = 10546, spellID = 12597 }; --Deadly Scope
		[4] = {itemID = 4407, spellID = 3979 }; --Accurate Scope
		[5] = {itemID = 4406, spellID = 3978 }; --Standard Scope
		[6] = {itemID = 4405, spellID = 3977 }; --Crude Scope
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 18232, spellID = 22704 }; --Field Repair Bot 74A
		[2] = {itemID = 23832, spellID = 30573 }; --Gnomish Tonk Controller
		[3] = {itemID = 23831, spellID = 30561 }; --Goblin Tonk Controller
		[4] = {itemID = 21570, spellID = 26443 }; --Firework Cluster Launcher
		[5] = {itemID = 16023, spellID = 19814 }; --Masterwork Target Dummy
		[6] = {itemID = 21714, spellID = 26426 }; --Large Blue Rocket Cluster
		[7] = {itemID = 21716, spellID = 26427 }; --Large Green Rocket Cluster
		[8] = {itemID = 21718, spellID = 26428 }; --Large Red Rocket Cluster
		[9] = {itemID = 18645, spellID = 23096 }; --Alarm-O-Bot
		[10] = {itemID = 18587, spellID = 23078 }; --Goblin Jumper Cables XL
		[11] = {itemID = 15996, spellID = 19793 }; --Lifelike Mechanical Toad
		[12] = {itemID = 15846, spellID = 19567 }; --Salt Shaker
		[13] = {itemID = 21277, spellID = 26011 }; --Tranquil Mechanical Yeti
		[14] = {itemID = 19026, spellID = 23507 }; --Snake Burst Firework
		[15] = {itemID = 21569, spellID = 26442 }; --Firework Launcher
		[16] = {itemID = 21571, spellID = 26423 }; --Blue Rocket Cluster
		[17] = {itemID = 21574, spellID = 26424 }; --Green Rocket Cluster
		[18] = {itemID = 21576, spellID = 26425 }; --Red Rocket Cluster
		[19] = {itemID = 10720, spellID = 12902 }; --Gnomish Net-o-Matic Projector
		[20] = {itemID = 10644, spellID = 12715 }; --Goblin Rocket Fuel Recipe
		[21] = {itemID = 10713, spellID = 12895 }; --Inlaid Mithril Cylinder Plans
		[22] = {itemID = 11826, spellID = 15633 }; --Lil' Smoky
		[23] = {itemID = 11825, spellID = 15628 }; --Pet Bombling
		[24] = {itemID = 11590, spellID = 15255 }; --Mechanical Repair Kit
		[25] = {itemID = 17716, spellID = 21940 }; --Snowmaster 9000
		[26] = {itemID = 4392, spellID = 3965 }; --Advanced Target Dummy
		[27] = {itemID = 4852, spellID = 8243 }; --Flash Bomb
		[28] = {itemID = 21589, spellID = 26420 }; --Large Blue Rocket
		[29] = {itemID = 21590, spellID = 26421 }; --Large Green Rocket
		[30] = {itemID = 21592, spellID = 26422 }; --Large Red Rocket
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 4391, spellID = 3963 }; --Compact Harvest Reaper Kit
		[2] = {itemID = 7148, spellID = 9273 }; --Goblin Jumper Cables
		[3] = {itemID = 4388, spellID = 3959 }; --Discombobulator Ray
		[4] = {itemID = 4386, spellID = 3957 }; --Ice Deflector
		[5] = {itemID = 4384, spellID = 3955 }; --Explosive Sheep
		[6] = {itemID = 6533, spellID = 9271 }; --Aquadynamic Fish Attractor
		[7] = {itemID = 9312, spellID = 23067 }; --Blue Firework
		[8] = {itemID = 9313, spellID = 23068 }; --Green Firework
		[9] = {itemID = 9318, spellID = 23066 }; --Red Firework
		[10] = {itemID = 5507, spellID = 6458 }; --Ornate Spyglass
		[11] = {itemID = 21558, spellID = 26416 }; --Small Blue Rocket
		[12] = {itemID = 21559, spellID = 26417 }; --Small Green Rocket
		[13] = {itemID = 21557, spellID = 26418 }; --Small Red Rocket
		[14] = {itemID = 4376, spellID = 3944 }; --Flame Deflector
		[15] = {itemID = 6712, spellID = 8334 }; --Practice Lock
		[16] = {itemID = 4366, spellID = 3932 }; --Target Dummy
		[17] = {itemID = 4401, spellID = 3928 }; --Mechanical Squirrel
	};
	{
		Name = AL["Reagents"];
		[1] = {itemID = 16006, spellID = 19815 }; --Delicate Arcanite Converter
		[2] = {itemID = 16000, spellID = 19795 }; --Thorium Tube
		[3] = {itemID = 7191, spellID = 39895 }; --Fused Wiring
		[4] = {itemID = 15994, spellID = 19791 }; --Thorium Widget
		[5] = {itemID = 18631, spellID = 23071 }; --Truesilver Transformer
		[6] = {itemID = 15992, spellID = 19788 }; --Dense Blasting Powder
		[7] = {itemID = 10561, spellID = 12599 }; --Mithril Casing
		[8] = {itemID = 10560, spellID = 12591 }; --Unstable Trigger
		[9] = {itemID = 10559, spellID = 12589 }; --Mithril Tube
		[10] = {itemID = 10498, spellID = 12590 }; --Gyromatic Micro-Adjustor
		[11] = {itemID = 10505, spellID = 12585 }; --Solid Blasting Powder
		[12] = {itemID = 4389, spellID = 3961 }; --Gyrochronatom
		[13] = {itemID = 4387, spellID = 3958 }; --Iron Strut
		[14] = {itemID = 10558, spellID = 12584 }; --Gold Power Core
		[15] = {itemID = 4382, spellID = 3953 }; --Bronze Framework
		[16] = {itemID = 4375, spellID = 3942 }; --Whirring Bronze Gizmo
		[17] = {itemID = 4377, spellID = 3945 }; --Heavy Blasting Powder
		[18] = {itemID = 4371, spellID = 3938 }; --Bronze Tube
		[19] = {itemID = 4404, spellID = 3973 }; --Silver Contact
		[20] = {itemID = 4364, spellID = 3929 }; --Coarse Blasting Powder
		[21] = {itemID = 4363, spellID = 3926 }; --Copper Modulator
		[22] = {itemID = 4361, spellID = 3924 }; --Copper Tube
		[23] = {itemID = 4359, spellID = 3922 }; --Handful of Copper Bolts
		[24] = {itemID = 4357, spellID = 3918 }; --Rough Blasting Powder
	};
	{
		Name = BabbleInventory["Weapon"];
		[1] = {itemID = 18282, spellID = 22795 }; --Core Marksman Rifle
		[2] = {itemID = 16007, spellID = 19833 }; --Flawless Arcanite Rifle
		[3] = {itemID = 16004, spellID = 19796 }; --Dark Iron Rifle
		[4] = {itemID = 15995, spellID = 19792 }; --Thorium Rifle
		[5] = {itemID = 10510, spellID = 12614 }; --Mithril Heavy-bore Rifle
		[6] = {itemID = 10508, spellID = 12595 }; --Mithril Blunderbuss
		[7] = {itemID = 4383, spellID = 3954 }; --Moonsight Rifle
		[8] = {itemID = 4379, spellID = 3949 }; --Silver-plated Shotgun
		[9] = {itemID = 4372, spellID = 3939 }; --Lovingly Crafted Boomstick
		[10] = {itemID = 4369, spellID = 3936 }; --Deadly Blunderbuss
		[11] = {itemID = 4362, spellID = 3925 }; --Rough Boomstick
		[12] = {itemID = 6219, spellID = 7430 }; --Arclight Spanner
	};
	{
		Name = GNOMISH;
		[1] = {itemID = 18986, spellID = 23489 }; --Ultrasafe Transporter - Gadgetzan
		[2] = {itemID = 18660, spellID = 23129 }; --World Enlarger
		[3] = {itemID = 10726, spellID = 12907 }; --Gnomish Mind Control Cap
		[4] = {itemID = 10724, spellID = 12905 }; --Gnomish Rocket Boots
		[5] = {itemID = 10721, spellID = 12903 }; --Gnomish Harm Prevention Belt
		[6] = {itemID = 10545, spellID = 12897 }; --Gnomish Goggles
		[7] = {itemID = 23841, spellID = 30568 }; --Gnomish Flame Turret
		[8] = {itemID = 18645, spellID = 23096 }; --Alarm-O-Bot
		[9] = {itemID = 10645, spellID = 12759 }; --Gnomish Death Ray
		[10] = {itemID = 10725, spellID = 12906 }; --Gnomish Battle Chicken
		[11] = {itemID = 10720, spellID = 12902 }; --Gnomish Net-o-Matic Projector
		[12] = {itemID = 10716, spellID = 12899 }; --Gnomish Shrink Ray
		[13] = {itemID = 10713, spellID = 12895 }; --Inlaid Mithril Cylinder Plans
		[14] = {itemID = 4397, spellID = 3971 }; --Gnomish Cloaking Device
		[15] = {itemID = 7506, spellID = 9269 }; --Gnomish Universal Remote
	};
	{
		Name = GOBLIN;
		[1] = {itemID = 18984, spellID = 23486 }; --Dimensional Ripper - Everlook
		[2] = {itemID = 10588, spellID = 12758 }; --Goblin Rocket Helmet
		[3] = {itemID = 7189, spellID = 8895 }; --Goblin Rocket Boots
		[4] = {itemID = 10543, spellID = 12718 }; --Goblin Construction Helmet
		[5] = {itemID = 10542, spellID = 12717 }; --Goblin Mining Helmet
		[6] = {itemID = 23827, spellID = 30560 }; --Super Sapper Charge
		[7] = {itemID = 23826, spellID = 30558 }; --The Bigger One
		[8] = {itemID = 18587, spellID = 23078 }; --Goblin Jumper Cables XL
		[9] = {itemID = 10727, spellID = 12908 }; --Goblin Dragon Gun
		[10] = {itemID = 10586, spellID = 12754 }; --The Big One
		[11] = {itemID = 10587, spellID = 12755 }; --Goblin Bomb Dispenser
		[12] = {itemID = 10577, spellID = 12716 }; --Goblin Mortar
		[13] = {itemID = 10644, spellID = 12715 }; --Goblin Rocket Fuel Recipe
		[14] = {itemID = 10646, spellID = 12760 }; --Goblin Sapper Charge
		[15] = {itemID = 10577, spellID = 13240 }; --The Mortar: Reloaded
	};
};

-----------------
--- First Aid ---
-----------------

AtlasLoot_Data["FirstAidCLASSIC"] = {
	Name = FIRSTAID;
	Type = "Crafting";
	{
		Name = FIRSTAID;
		[1] = {itemID = 19440, spellID = 23787 }; --Powerful Anti-Venom
		[2] = {itemID = 14530, spellID = 18630 }; --Heavy Runecloth Bandage
		[3] = {itemID = 14529, spellID = 18629 }; --Runecloth Bandage
		[4] = {itemID = 8545, spellID = 10841 }; --Heavy Mageweave Bandage
		[5] = {itemID = 8544, spellID = 10840 }; --Mageweave Bandage
		[6] = {itemID = 6451, spellID = 7929 }; --Heavy Silk Bandage
		[7] = {itemID = 6450, spellID = 7928 }; --Silk Bandage
		[8] = {itemID = 6453, spellID = 7935 }; --Strong Anti-Venom
		[9] = {itemID = 3531, spellID = 3278 }; --Heavy Wool Bandage
		[10] = {itemID = 3530, spellID = 3277 }; --Wool Bandage
		[11] = {itemID = 6452, spellID = 7934 }; --Anti-Venom
		[12] = {itemID = 2581, spellID = 3276 }; --Heavy Linen Bandage
		[13] = {itemID = 1251, spellID = 3275 }; --Linen Bandage
	};
};
-------------------
--- Inscription ---
-------------------

AtlasLoot_Data["Inscription"] = {
	Name = INSCRIPTION;
	Type = "Crafting";
	{
		Name = AL["Off-Hand Items"];
		[1] = {itemID = 44210, spellID = 59498 }; --Faces of Doom
		[2] = {itemID = 38322, spellID = 59497 }; --Iron-bound Tome
		[3] = {itemID = 45854, spellID = 64051 }; --Rituals of the New Moon
		[4] = {itemID = 45849, spellID = 64053 }; --Twilight Tome
		[5] = {itemID = 43667, spellID = 59496 }; --Book of Clever Tricks
		[6] = {itemID = 43666, spellID = 59495 }; --Hellfire Tome
		[7] = {itemID = 43664, spellID = 59494 }; --Manual of Clouds
		[8] = {itemID = 43663, spellID = 59493 }; --Stormbound Tome
		[9] = {itemID = 43661, spellID = 59490 }; --Book of Stars
		[10] = {itemID = 43660, spellID = 59489 }; --Fire Eater's Guide
		[11] = {itemID = 43657, spellID = 59486 }; --Royal Guide of Escape Routes
		[12] = {itemID = 43656, spellID = 59484 }; --Tome of Kings
		[13] = {itemID = 43655, spellID = 59478 }; --Book of Survival
		[14] = {itemID = 43654, spellID = 59475 }; --Tome of the Dawn
		[15] = {itemID = 43515, spellID = 58565 }; --Mystic Tome
	};
	{
		Name = AL["Reagents"];
		[1] = {itemID = 43127, spellID = 57716 }; --Snowfall Ink
		[2] = {itemID = 43125, spellID = 57714 }; --Darkflame Ink
		[3] = {itemID = 43123, spellID = 57712 }; --Ink of the Sky
		[4] = {itemID = 43121, spellID = 57710 }; --Fiery Ink
		[5] = {itemID = 43119, spellID = 57708 }; --Royal Ink
		[6] = {itemID = 43117, spellID = 57706 }; --Dawnstar Ink
		[7] = {itemID = 43115, spellID = 57703 }; --Hunter's Ink
		[8] = {itemID = 43126, spellID = 57715 }; --Ink of the Sea
		[9] = {itemID = 43124, spellID = 57713 }; --Ethereal Ink
		[10] = {itemID = 43122, spellID = 57711 }; --Shimmering Ink
		[11] = {itemID = 43120, spellID = 57709 }; --Celestial Ink
		[12] = {itemID = 43118, spellID = 57707 }; --Jadefire Ink
		[13] = {itemID = 43116, spellID = 57704 }; --Lion's Ink
		[14] = {itemID = 39774, spellID = 53462 }; --Midnight Ink
		[15] = {itemID = 39469, spellID = 52843 }; --Moonglow Ink
		[16] = {itemID = 37101, spellID = 52738 }; --Ivory Ink
	};
	{
		Name = AL["Scrolls"];
		[1] = {itemID = 49632, spellID = 69385 }; --Runescroll of Fortitude
		[3] = {itemID = 44315, spellID = 60337 }; --Scroll of Recall III
		[4] = {itemID = 44314, spellID = 60336 }; --Scroll of Recall II
		[5] = {itemID = 37118, spellID = 48248 }; --Scroll of Recall
		[6] = {itemID = 3012, spellID = 58483 }; --Scroll of Agility VIII
		[7] = {itemID = 3012, spellID = 58482 }; --Scroll of Agility VII
		[8] = {itemID = 3012, spellID = 58481 }; --Scroll of Agility VI
		[9] = {itemID = 3012, spellID = 58480 }; --Scroll of Agility V
		[10] = {itemID = 3012, spellID = 58478 }; --Scroll of Agility IV
		[11] = {itemID = 3012, spellID = 58476 }; --Scroll of Agility III
		[12] = {itemID = 3012, spellID = 58473 }; --Scroll of Agility II
		[13] = {itemID = 3012, spellID = 58472 }; --Scroll of Agility
		[14] = {itemID = 955, spellID = 50604 }; --Scroll of Intellect VIII
		[15] = {itemID = 955, spellID = 50603 }; --Scroll of Intellect VII
		[16] = {itemID = 955, spellID = 50602 }; --Scroll of Intellect VI
		[17] = {itemID = 955, spellID = 50601 }; --Scroll of Intellect V
		[18] = {itemID = 955, spellID = 50600 }; --Scroll of Intellect IV
		[19] = {itemID = 955, spellID = 50599 }; --Scroll of Intellect III
		[20] = {itemID = 955, spellID = 50598 }; --Scroll of Intellect II
		[21] = {itemID = 955, spellID = 48114 }; --Scroll of Intellect
		[23] = {itemID = 955, spellID = 50611 }; --Scroll of Spirit VIII
		[24] = {itemID = 955, spellID = 50610 }; --Scroll of Spirit VII
		[25] = {itemID = 955, spellID = 50609 }; --Scroll of Spirit VI
		[26] = {itemID = 955, spellID = 50608 }; --Scroll of Spirit V
		[27] = {itemID = 955, spellID = 50607 }; --Scroll of Spirit IV
		[28] = {itemID = 955, spellID = 50606 }; --Scroll of Spirit III
		[29] = {itemID = 955, spellID = 50605 }; --Scroll of Spirit II
		[30] = {itemID = 955, spellID = 48116 }; --Scroll of Spirit
	};
	{
		Name = AL["Scrolls"];
		[1] = {itemID = 1180, spellID = 50620 }; --Scroll of Stamina VIII
		[2] = {itemID = 1180, spellID = 50619 }; --Scroll of Stamina VII
		[3] = {itemID = 1180, spellID = 50618 }; --Scroll of Stamina VI
		[4] = {itemID = 1180, spellID = 50617 }; --Scroll of Stamina V
		[5] = {itemID = 1180, spellID = 50616 }; --Scroll of Stamina IV
		[6] = {itemID = 1180, spellID = 50614 }; --Scroll of Stamina III
		[7] = {itemID = 1180, spellID = 50612 }; --Scroll of Stamina II
		[8] = {itemID = 1180, spellID = 45382 }; --Scroll of Stamina
		[16] = {itemID = 3012, spellID = 58491 }; --Scroll of Strength VIII
		[17] = {itemID = 3012, spellID = 58490 }; --Scroll of Strength VII
		[18] = {itemID = 3012, spellID = 58489 }; --Scroll of Strength VI
		[19] = {itemID = 3012, spellID = 58488 }; --Scroll of Strength V
		[20] = {itemID = 3012, spellID = 58487 }; --Scroll of Strength IV
		[21] = {itemID = 3012, spellID = 58486 }; --Scroll of Strength III
		[22] = {itemID = 3012, spellID = 58485 }; --Scroll of Strength II
		[23] = {itemID = 3012, spellID = 58484 }; --Scroll of Strength
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {spellID = 59504, icon = "INV_Feather_05" }; --Darkmoon Card of the North
		[2] = {spellID = 59503, icon = "INV_Feather_05" }; --Greater Darkmoon Card
		[3] = {spellID = 59502, icon = "INV_Feather_05" }; --Darkmoon Card
		[4] = {spellID = 59491, icon = "INV_Feather_05" }; --Shadowy Tarot
		[5] = {spellID = 59487, icon = "INV_Feather_05" }; --Arcane Tarot
		[6] = {spellID = 48247, icon = "INV_Feather_05" }; --Mysterious Tarot" .. "
		[7] = {spellID = 59480, icon = "INV_Feather_05" }; --Strange Tarot
		[9] = {spellID = 61117, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Axe
		[10] = {spellID = 61118, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Crag
		[11] = {spellID = 61119, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Pinnacle
		[12] = {spellID = 61120, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Storm
		[14] = {spellID = 52175, icon = "INV_Misc_Book_11" }; --Decipher
		[16] = {itemID = 43145, spellID = 59500 }; --Armor Vellum III
		[17] = {itemID = 37602, spellID = 59499 }; --Armor Vellum II
		[18] = {itemID = 38682, spellID = 52739 }; --Armor Vellum
		[20] = {itemID = 43146, spellID = 59501 }; --Weapon Vellum III
		[21] = {itemID = 39350, spellID = 59488 }; --Weapon Vellum II
		[22] = {itemID = 39349, spellID = 52840 }; --Weapon Vellum
		[24] = {itemID = 43850, spellID = 59387 }; --Certificate of Ownership
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
		[1] = {itemID = 43533, spellID = 57207 }; --Glyph of Anti-Magic Shell
		[2] = {itemID = 43826, spellID = 59339 }; --Glyph of Blood Strike
		[3] = {itemID = 43536, spellID = 57210 }; --Glyph of Bone Shield
		[4] = {itemID = 43537, spellID = 57211 }; --Glyph of Chains of Ice
		[5] = {itemID = 45799, spellID = 64297 }; --Glyph of Dancing Rune Weapon
		[6] = {itemID = 43538, spellID = 57212 }; --Glyph of Dark Command
		[7] = {itemID = 45804, spellID = 64266 }; --Glyph of Dark Death
		[8] = {itemID = 43542, spellID = 57214 }; --Glyph of Death and Decay
		[9] = {itemID = 43541, spellID = 57213 }; --Glyph of Death Grip
		[10] = {itemID = 43827, spellID = 59340 }; --Glyph of Death Strike
		[11] = {itemID = 45805, spellID = 64267 }; --Glyph of Disease
		[12] = {itemID = 43543, spellID = 57216 }; --Glyph of Frost Strike
		[13] = {itemID = 43534, spellID = 57208 }; --Glyph of Heart Strike
		[14] = {itemID = 45806, spellID = 64300 }; --Glyph of Howling Blast
		[15] = {itemID = 45800, spellID = 64298 }; --Glyph of Hungering Cold
		[16] = {itemID = 43545, spellID = 57218 }; --Glyph of Icebound Fortitude
		[17] = {itemID = 43546, spellID = 57219 }; --Glyph of Icy Touch
		[18] = {itemID = 43547, spellID = 57220 }; --Glyph of Obliterate
		[19] = {itemID = 43548, spellID = 57221 }; --Glyph of Plague Strike
		[20] = {itemID = 43550, spellID = 57223 }; --Glyph of Rune Strike
		[21] = {itemID = 43825, spellID = 59338 }; --Glyph of Rune Tap
		[22] = {itemID = 43551, spellID = 57224 }; --Glyph of Scourge Strike
		[23] = {itemID = 43552, spellID = 57225 }; --Glyph of Strangulate
		[24] = {itemID = 43549, spellID = 57222 }; --Glyph of the Ghoul
		[25] = {itemID = 43553, spellID = 57226 }; --Glyph of Unbreakable Armor
		[26] = {itemID = 45803, spellID = 64299 }; --Glyph of Unholy Blight
		[27] = {itemID = 43554, spellID = 57227 }; --Glyph of Vampiric Blood
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
		[1] = {itemID = 43535, spellID = 57209 }; --Glyph of Blood Tap
		[2] = {itemID = 43671, spellID = 57229 }; --Glyph of Corpse Explosion
		[3] = {itemID = 43539, spellID = 57215 }; --Glyph of Death's Embrace
		[4] = {itemID = 43544, spellID = 57217 }; --Glyph of Horn of Winter
		[5] = {itemID = 43672, spellID = 57230 }; --Glyph of Pestilence
		[6] = {itemID = 43673, spellID = 57228 }; --Glyph of Raise Dead
	};
	{
		Name = AL["Major Glyph"] .. " - " .. AL["Druid"];
		[1] = {itemID = 45623, spellID = 64256 }; --Glyph of Barkskin
		[2] = {itemID = 45601, spellID = 64268 }; --Glyph of Berserk
		[3] = {itemID = 48720, spellID = 67600 }; --Glyph of Claw
		[4] = {itemID = 40924, spellID = 48121 }; --Glyph of Entangling Roots
		[5] = {itemID = 44928, spellID = 62162 }; --Glyph of Focus
		[6] = {itemID = 40896, spellID = 56943 }; --Glyph of Frenzied Regeneration
		[7] = {itemID = 40899, spellID = 56944 }; --Glyph of Growl
		[8] = {itemID = 40914, spellID = 56945 }; --Glyph of Healing Touch
		[9] = {itemID = 40920, spellID = 56946 }; --Glyph of Hurricane
		[10] = {itemID = 40908, spellID = 56947 }; --Glyph of Innervate
		[11] = {itemID = 40919, spellID = 56948 }; --Glyph of Insect Swarm
		[12] = {itemID = 40915, spellID = 56949 }; --Glyph of Lifebloom
		[13] = {itemID = 40900, spellID = 56950 }; --Glyph of Mangle
		[14] = {itemID = 40897, spellID = 56961 }; --Glyph of Maul
		[15] = {itemID = 45622, spellID = 64258 }; --Glyph of Monsoon
		[16] = {itemID = 40923, spellID = 56951 }; --Glyph of Moonfire
		[17] = {itemID = 45603, spellID = 64313 }; --Glyph of Nourish
		[18] = {itemID = 40903, spellID = 56952 }; --Glyph of Rake
		[19] = {itemID = 50125, spellID = 71015 }; --Glyph of Rapid Rejuvenation
		[20] = {itemID = 40909, spellID = 56953 }; --Glyph of Rebirth
		[21] = {itemID = 40912, spellID = 56954 }; --Glyph of Regrowth
		[22] = {itemID = 40913, spellID = 56955 }; --Glyph of Rejuvenation
		[23] = {itemID = 40902, spellID = 56956 }; --Glyph of Rip
		[24] = {itemID = 45604, spellID = 64307 }; --Glyph of Savage Roar
		[25] = {itemID = 40901, spellID = 56957 }; --Glyph of Shred
		[26] = {itemID = 40921, spellID = 56958 }; --Glyph of Starfall
		[27] = {itemID = 40916, spellID = 56959 }; --Glyph of Starfire
		[28] = {itemID = 46372, spellID = 65245 }; --Glyph of Survival Instincts
		[29] = {itemID = 40906, spellID = 56960 }; --Glyph of Swiftmend
		[30] = {itemID = 40922, spellID = 56963 }; --Glyph of WRATH
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. AL["Druid"];
		[1] = {itemID = 45602, spellID = 64270 }; --Glyph of Wild Growth
		[2] = {itemID = 43316, spellID = 58286 }; --Glyph of Aquatic Form
		[3] = {itemID = 43334, spellID = 58287 }; --Glyph of Challenging Roar
		[4] = {itemID = 43674, spellID = 59315 }; --Glyph of Dash
		[5] = {itemID = 43335, spellID = 58296 }; --Glyph of the Wild
		[6] = {itemID = 43332, spellID = 58289 }; --Glyph of Thorns
		[7] = {itemID = 44922, spellID = 56965 }; --Glyph of Typhoon
		[8] = {itemID = 43331, spellID = 58288 }; --Glyph of Unburdened Rebirth
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = {itemID = 42897, spellID = 56994 }; --Glyph of Aimed Shot
		[2] = {itemID = 42898, spellID = 56995 }; --Glyph of Arcane Shot
		[3] = {itemID = 42899, spellID = 56996 }; --Glyph of Aspect of the Beast
		[4] = {itemID = 42900, spellID = 56997 }; --Glyph of Aspect of the Monkey
		[5] = {itemID = 42901, spellID = 56998 }; --Glyph of Aspect of the Viper
		[6] = {itemID = 42902, spellID = 56999 }; --Glyph of Beastial WRATH
		[7] = {itemID = 45625, spellID = 64271 }; --Glyph of Chimera Shot
		[8] = {itemID = 42903, spellID = 57000 }; --Glyph of Deterrence
		[9] = {itemID = 42904, spellID = 57001 }; --Glyph of Disengage
		[10] = {itemID = 45731, spellID = 64273 }; --Glyph of Explosive Shot
		[11] = {itemID = 45733, spellID = 64253 }; --Glyph of Explosive Trap
		[12] = {itemID = 42905, spellID = 57002 }; --Glyph of Freezing Trap
		[13] = {itemID = 42906, spellID = 57003 }; --Glyph of Frost Trap
		[14] = {itemID = 42907, spellID = 57004 }; --Glyph of Hunter's Mark
		[15] = {itemID = 42908, spellID = 57005 }; --Glyph of Immolation Trap
		[16] = {itemID = 42909, spellID = 57006 }; --Glyph of Improved Aspect of the Hawk
		[17] = {itemID = 45732, spellID = 64304 }; --Glyph of Kill Shot
		[18] = {itemID = 42910, spellID = 57007 }; --Glyph of Multi-Shot
		[19] = {itemID = 42911, spellID = 57008 }; --Glyph of Rapid Fire
		[20] = {itemID = 45735, spellID = 64246 }; --Glyph of Raptor Strike
		[21] = {itemID = 45734, spellID = 64249 }; --Glyph of Scatter Shot
		[22] = {itemID = 42912, spellID = 57009 }; --Glyph of Serpent Sting
		[23] = {itemID = 42913, spellID = 57010 }; --Glyph of Snake Trap
		[24] = {itemID = 42914, spellID = 57011 }; --Glyph of Steady Shot
		[25] = {itemID = 42915, spellID = 57012 }; --Glyph of Trueshot Aura
		[26] = {itemID = 42916, spellID = 57013 }; --Glyph of Volley
		[27] = {itemID = 42917, spellID = 57014 }; --Glyph of Wyvern Sting
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = {itemID = 43351, spellID = 58302 }; --Glyph of Feign Death
		[2] = {itemID = 43350, spellID = 58301 }; --Glyph of Mend Pet
		[3] = {itemID = 43354, spellID = 58300 }; --Glyph of Possessed Strength
		[4] = {itemID = 43338, spellID = 58299 }; --Glyph of Revive Pet
		[5] = {itemID = 43356, spellID = 58298 }; --Glyph of Scare Beast
		[6] = {itemID = 43355, spellID = 58297 }; --Glyph of the Pack
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = {itemID = 45738, spellID = 64276 }; --Glyph of Arcane Barrage
		[2] = {itemID = 44955, spellID = 56991 }; --Glyph of Arcane Blast
		[3] = {itemID = 42734, spellID = 56968 }; --Glyph of Arcane Explosion
		[4] = {itemID = 42735, spellID = 56971 }; --Glyph of Arcane Missiles
		[5] = {itemID = 42736, spellID = 56972 }; --Glyph of Arcane Power
		[6] = {itemID = 42737, spellID = 56973 }; --Glyph of Blink
		[7] = {itemID = 45736, spellID = 64274 }; --Glyph of Deep Freeze
		[8] = {itemID = 50045, spellID = 71101 }; --Glyph of Eternal Water
		[9] = {itemID = 42738, spellID = 56974 }; --Glyph of Evocation
		[10] = {itemID = 42740, spellID = 57719 }; --Glyph of Fire Blast
		[11] = {itemID = 42739, spellID = 56975 }; --Glyph of Fireball
		[12] = {itemID = 42741, spellID = 56976 }; --Glyph of Frost Nova
		[13] = {itemID = 42742, spellID = 56977 }; --Glyph of Frostbolt
		[14] = {itemID = 44684, spellID = 61677 }; --Glyph of Frostfire
		[15] = {itemID = 42743, spellID = 56978 }; --Glyph of Ice Armor
		[16] = {itemID = 45740, spellID = 64257 }; --Glyph of Ice Barrier
		[17] = {itemID = 42744, spellID = 56979 }; --Glyph of Ice Block
		[18] = {itemID = 42745, spellID = 56980 }; --Glyph of Ice Lance
		[19] = {itemID = 42746, spellID = 56981 }; --Glyph of Icy Veins
		[20] = {itemID = 42747, spellID = 56982 }; --Glyph of Improved Scorch
		[21] = {itemID = 42748, spellID = 56983 }; --Glyph of Invisibility
		[22] = {itemID = 45737, spellID = 64275 }; --Glyph of Living Bomb
		[23] = {itemID = 42749, spellID = 56984 }; --Glyph of Mage Armor
		[24] = {itemID = 42750, spellID = 56985 }; --Glyph of Mana Gem
		[25] = {itemID = 45739, spellID = 64314 }; --Glyph of Mirror Image
		[26] = {itemID = 42751, spellID = 56986 }; --Glyph of Molten Armor
		[27] = {itemID = 42752, spellID = 56987 }; --Glyph of Polymorph
		[28] = {itemID = 42753, spellID = 56988 }; --Glyph of Remove Curse
		[29] = {itemID = 42754, spellID = 56989 }; --Glyph of Water Elemental
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = {itemID = 43339, spellID = 58303 }; --Glyph of Arcane Intellect
		[2] = {itemID = 44920, spellID = 56990 }; --Glyph of Blast Wave
		[3] = {itemID = 43357, spellID = 58305 }; --Glyph of Fire Ward
		[4] = {itemID = 43359, spellID = 58306 }; --Glyph of Frost Armor
		[5] = {itemID = 43360, spellID = 58307 }; --Glyph of Frost Ward
		[6] = {itemID = 43364, spellID = 58308 }; --Glyph of Slow Fall
		[7] = {itemID = 43361, spellID = 58310 }; --Glyph of the Penguin
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = {itemID = 41101, spellID = 57019 }; --Glyph of Avenger's Shield
		[2] = {itemID = 41107, spellID = 57021 }; --Glyph of Avenging WRATH
		[3] = {itemID = 45741, spellID = 64277 }; --Glyph of Beacon of Light
		[4] = {itemID = 41104, spellID = 57020 }; --Glyph of Cleansing
		[5] = {itemID = 41099, spellID = 57023 }; --Glyph of Consecration
		[6] = {itemID = 41098, spellID = 57024 }; --Glyph of Crusader Strike
		[7] = {itemID = 45745, spellID = 64305 }; --Glyph of Divine Plea
		[8] = {itemID = 45743, spellID = 64279 }; --Glyph of Divine Storm
		[9] = {itemID = 41108, spellID = 57031 }; --Glyph of Divinity
		[10] = {itemID = 41103, spellID = 57025 }; --Glyph of Exorcism
		[11] = {itemID = 41105, spellID = 57026 }; --Glyph of Flash of Light
		[12] = {itemID = 41095, spellID = 57027 }; --Glyph of Hammer of Justice
		[13] = {itemID = 45742, spellID = 64278 }; --Glyph of Hammer of the Righteous
		[14] = {itemID = 41097, spellID = 57028 }; --Glyph of Hammer of WRATH
		[15] = {itemID = 41106, spellID = 57029 }; --Glyph of Holy Light
		[16] = {itemID = 45746, spellID = 64254 }; --Glyph of Holy Shock
		[17] = {itemID = 41092, spellID = 57030 }; --Glyph of Judgement
		[18] = {itemID = 41100, spellID = 57032 }; --Glyph of Righteous Defense
		[19] = {itemID = 45747, spellID = 64251 }; --Glyph of Salvation
		[20] = {itemID = 43867, spellID = 59559 }; --Glyph of Seal of Blood
		[21] = {itemID = 41094, spellID = 57033 }; --Glyph of Seal of Command
		[22] = {itemID = 41110, spellID = 57034 }; --Glyph of Seal of Light
		[23] = {itemID = 43868, spellID = 59560 }; --Glyph of Seal of Righteousness
		[24] = {itemID = 43869, spellID = 59561 }; --Glyph of Seal of Vengeance
		[25] = {itemID = 41109, spellID = 57035 }; --Glyph of Seal of Wisdom
		[26] = {itemID = 45744, spellID = 64308 }; --Glyph of Shield of Righteousness
		[27] = {itemID = 41096, spellID = 57022 }; --Glyph of Spiritual Attunement
		[28] = {itemID = 41102, spellID = 57036 }; --Glyph of Turn Evil
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[1] = {itemID = 43365, spellID = 58311 }; --Glyph of Blessing of Kings
		[2] = {itemID = 43340, spellID = 58314 }; --Glyph of Blessing of Might
		[3] = {itemID = 43366, spellID = 58312 }; --Glyph of Blessing of Wisdom
		[4] = {itemID = 43367, spellID = 58313 }; --Glyph of Lay on Hands
		[5] = {itemID = 43368, spellID = 58315 }; --Glyph of Sense Undead
		[6] = {itemID = 43369, spellID = 58316 }; --Glyph of the Wise
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = {itemID = 42396, spellID = 57181 }; --Glyph of Circle of Healing
		[2] = {itemID = 42397, spellID = 57183 }; --Glyph of Dispel Magic
		[3] = {itemID = 45753, spellID = 64280 }; --Glyph of Dispersion
		[4] = {itemID = 42398, spellID = 57184 }; --Glyph of Fade
		[5] = {itemID = 42399, spellID = 57185 }; --Glyph of Fear Ward
		[6] = {itemID = 42400, spellID = 57186 }; --Glyph of Flash Heal
		[7] = {itemID = 45755, spellID = 64281 }; --Glyph of Guardian Spirit
		[8] = {itemID = 42401, spellID = 57187 }; --Glyph of Holy Nova
		[9] = {itemID = 45758, spellID = 64283 }; --Glyph of Hymn of Hope
		[10] = {itemID = 42402, spellID = 57188 }; --Glyph of Inner Fire
		[11] = {itemID = 42403, spellID = 57189 }; --Glyph of Lightwell
		[12] = {itemID = 42404, spellID = 57190 }; --Glyph of Mass Dispel
		[13] = {itemID = 42405, spellID = 57191 }; --Glyph of Mind Control
		[14] = {itemID = 42406, spellID = 57192 }; --Glyph of Mind Flay
		[15] = {itemID = 45757, spellID = 64309 }; --Glyph of Mind Sear
		[16] = {itemID = 45760, spellID = 64259 }; --Glyph of Pain Suppression
		[17] = {itemID = 45756, spellID = 64282 }; --Glyph of Penance
		[18] = {itemID = 42408, spellID = 57194 }; --Glyph of Power Word: Shield
		[19] = {itemID = 42409, spellID = 57195 }; --Glyph of Prayer of Healing
		[20] = {itemID = 42410, spellID = 57196 }; --Glyph of Psychic Scream
		[21] = {itemID = 42411, spellID = 57197 }; --Glyph of Renew
		[22] = {itemID = 42412, spellID = 57198 }; --Glyph of Scourge Imprisonment
		[23] = {itemID = 42407, spellID = 57193 }; --Glyph of Shadow
		[24] = {itemID = 42414, spellID = 57199 }; --Glyph of Shadow Word: Death
		[25] = {itemID = 42415, spellID = 57200 }; --Glyph of Shadow Word: Pain
		[26] = {itemID = 42416, spellID = 57201 }; --Glyph of Smite
		[27] = {itemID = 42417, spellID = 57202 }; --Glyph of Spirit of Redemption
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[1] = {itemID = 43342, spellID = 58317 }; --Glyph of Fading
		[2] = {itemID = 43371, spellID = 58318 }; --Glyph of Fortitude
		[3] = {itemID = 43370, spellID = 58319 }; --Glyph of Levitate
		[4] = {itemID = 43373, spellID = 58320 }; --Glyph of Shackle Undead
		[5] = {itemID = 43372, spellID = 58321 }; --Glyph of Shadow Protection
		[6] = {itemID = 43374, spellID = 58322 }; --Glyph of Shadowfiend
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = {itemID = 42954, spellID = 57112 }; --Glyph of Adrenaline Rush
		[2] = {itemID = 42955, spellID = 57113 }; --Glyph of Ambush
		[3] = {itemID = 42956, spellID = 57114 }; --Glyph of Backstab
		[4] = {itemID = 42957, spellID = 57115 }; --Glyph of Blade Flurry
		[5] = {itemID = 45769, spellID = 64303 }; --Glyph of Cloak of Shadows
		[6] = {itemID = 42958, spellID = 57116 }; --Glyph of Crippling Poison
		[7] = {itemID = 42959, spellID = 57117 }; --Glyph of Deadly Throw
		[8] = {itemID = 42960, spellID = 57119 }; --Glyph of Evasion
		[9] = {itemID = 42961, spellID = 57120 }; --Glyph of Eviscerate
		[10] = {itemID = 42962, spellID = 57121 }; --Glyph of Expose Armor
		[11] = {itemID = 45766, spellID = 64315 }; --Glyph of Fan of Knives
		[12] = {itemID = 42963, spellID = 57122 }; --Glyph of Feint
		[13] = {itemID = 42964, spellID = 57123 }; --Glyph of Garrote
		[14] = {itemID = 42965, spellID = 57124 }; --Glyph of Ghostly Strike
		[15] = {itemID = 42966, spellID = 57125 }; --Glyph of Gouge
		[16] = {itemID = 42967, spellID = 57126 }; --Glyph of Hemorrhage
		[17] = {itemID = 45761, spellID = 64284 }; --Glyph of Hunger for Blood
		[18] = {itemID = 45762, spellID = 64285 }; --Glyph of Killing Spree
		[19] = {itemID = 45768, spellID = 64260 }; --Glyph of Mutilate
		[20] = {itemID = 42968, spellID = 57127 }; --Glyph of Preparation
		[21] = {itemID = 42969, spellID = 57128 }; --Glyph of Rupture
		[22] = {itemID = 42970, spellID = 57129 }; --Glyph of Sap
		[23] = {itemID = 45764, spellID = 64286 }; --Glyph of Shadow Dance
		[24] = {itemID = 42972, spellID = 57131 }; --Glyph of Sinister Strike
		[25] = {itemID = 42973, spellID = 57132 }; --Glyph of Slice and Dice
		[26] = {itemID = 42974, spellID = 57133 }; --Glyph of Sprint
		[27] = {itemID = 45767, spellID = 64310 }; --Glyph of Tricks of the Trade
		[28] = {itemID = 42971, spellID = 57130 }; --Glyph of Vigor
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = {itemID = 43379, spellID = 58323 }; --Glyph of Blurred Speed
		[2] = {itemID = 43376, spellID = 58324 }; --Glyph of Distract
		[3] = {itemID = 43377, spellID = 58325 }; --Glyph of Pick Lock
		[4] = {itemID = 43343, spellID = 58326 }; --Glyph of Pick Pocket
		[5] = {itemID = 43378, spellID = 58327 }; --Glyph of Safe Fall
		[6] = {itemID = 43380, spellID = 58328 }; --Glyph of Vanish
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = {itemID = 41517, spellID = 57232 }; --Glyph of Chain Heal
		[2] = {itemID = 41518, spellID = 57233 }; --Glyph of Chain Lightning
		[3] = {itemID = 45775, spellID = 64261 }; --Glyph of Earth Shield
		[4] = {itemID = 41526, spellID = 57235 }; --Glyph of Earth Shock
		[5] = {itemID = 41527, spellID = 57236 }; --Glyph of Earthliving Weapon
		[6] = {itemID = 41552, spellID = 57250 }; --Glyph of Elemental Mastery
		[7] = {itemID = 45771, spellID = 64288 }; --Glyph of Feral Spirit
		[8] = {itemID = 41529, spellID = 57237 }; --Glyph of Fire Elemental Totem
		[9] = {itemID = 41530, spellID = 57238 }; --Glyph of Fire Nova Totem
		[10] = {itemID = 41531, spellID = 57239 }; --Glyph of Flame Shock
		[11] = {itemID = 41532, spellID = 57240 }; --Glyph of Flametongue Weapon
		[12] = {itemID = 41547, spellID = 57241 }; --Glyph of Frost Shock
		[13] = {itemID = 41533, spellID = 57242 }; --Glyph of Healing Stream Totem
		[14] = {itemID = 41534, spellID = 57243 }; --Glyph of Healing Wave
		[15] = {itemID = 45777, spellID = 64316 }; --Glyph of Hex
		[16] = {itemID = 41524, spellID = 57234 }; --Glyph of Lava
		[17] = {itemID = 41540, spellID = 57249 }; --Glyph of Lava Lash
		[18] = {itemID = 41535, spellID = 57244 }; --Glyph of Lesser Healing Wave
		[19] = {itemID = 41536, spellID = 57245 }; --Glyph of Lightning Bolt
		[20] = {itemID = 41537, spellID = 57246 }; --Glyph of Lightning Shield
		[21] = {itemID = 41538, spellID = 57247 }; --Glyph of Mana Tide Totem
		[22] = {itemID = 45772, spellID = 64289 }; --Glyph of Riptide
		[23] = {itemID = 45778, spellID = 64247 }; --Glyph of Stoneclaw Totem
		[24] = {itemID = 41539, spellID = 57248 }; --Glyph of Stormstrike
		[25] = {itemID = 45770, spellID = 64287 }; --Glyph of Thunder
		[26] = {itemID = 45776, spellID = 64262 }; --Glyph of Totem of WRATH
		[27] = {itemID = 41541, spellID = 57251 }; --Glyph of Water Mastery
		[28] = {itemID = 41542, spellID = 57252 }; --Glyph of Windfury Weapon
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[1] = {itemID = 43381, spellID = 58329 }; --Glyph of Astral Recall
		[2] = {itemID = 43725, spellID = 59326 }; --Glyph of Ghost Wolf
		[3] = {itemID = 43385, spellID = 58330 }; --Glyph of Renewed Life
		[4] = {itemID = 44923, spellID = 57253 }; --Glyph of Thunderstorm
		[5] = {itemID = 43344, spellID = 58331 }; --Glyph of Water Breathing
		[6] = {itemID = 43386, spellID = 58332 }; --Glyph of Water Shield
		[7] = {itemID = 43388, spellID = 58333 }; --Glyph of Water Walking
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = {itemID = 45781, spellID = 64294 }; --Glyph of Chaos Bolt
		[2] = {itemID = 42454, spellID = 57258 }; --Glyph of Conflagrate
		[3] = {itemID = 42455, spellID = 57259 }; --Glyph of Corruption
		[4] = {itemID = 42456, spellID = 57260 }; --Glyph of Curse of Agony
		[5] = {itemID = 42457, spellID = 57261 }; --Glyph of Death Coil
		[6] = {itemID = 45782, spellID = 64317 }; --Glyph of Demonic Circle
		[7] = {itemID = 42458, spellID = 57262 }; --Glyph of Fear
		[8] = {itemID = 42459, spellID = 57263 }; --Glyph of Felguard
		[9] = {itemID = 42460, spellID = 57264 }; --Glyph of Felhunter
		[10] = {itemID = 45779, spellID = 64291 }; --Glyph of Haunt
		[11] = {itemID = 42461, spellID = 57265 }; --Glyph of Health Funnel
		[12] = {itemID = 42462, spellID = 57266 }; --Glyph of Healthstone
		[13] = {itemID = 42463, spellID = 57267 }; --Glyph of Howl of Terror
		[14] = {itemID = 42464, spellID = 57268 }; --Glyph of Immolate
		[15] = {itemID = 42465, spellID = 57269 }; --Glyph of Imp
		[16] = {itemID = 42453, spellID = 57257 }; --Glyph of Incinerate
		[17] = {itemID = 45785, spellID = 64248 }; --Glyph of Life Tap
		[18] = {itemID = 45780, spellID = 64318 }; --Glyph of Metamorphosis
		[19] = {itemID = 50077, spellID = 71102 }; --Glyph of Quick Decay
		[20] = {itemID = 42466, spellID = 57270 }; --Glyph of Searing Pain
		[21] = {itemID = 42467, spellID = 57271 }; --Glyph of Shadow Bolt
		[22] = {itemID = 42468, spellID = 57272 }; --Glyph of Shadowburn
		[23] = {itemID = 45783, spellID = 64311 }; --Glyph of Shadowflame
		[24] = {itemID = 42469, spellID = 57273 }; --Glyph of Siphon Life
		[25] = {itemID = 45789, spellID = 64250 }; --Glyph of Soul Link
		[26] = {itemID = 42470, spellID = 57274 }; --Glyph of Soulstone
		[27] = {itemID = 42471, spellID = 57275 }; --Glyph of Succubus
		[28] = {itemID = 42472, spellID = 57276 }; --Glyph of Unstable Affliction
		[29] = {itemID = 42473, spellID = 57277 }; --Glyph of Voidwalker
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = {itemID = 43392, spellID = 58338 }; --Glyph of Curse of Exhaustion
		[2] = {itemID = 43390, spellID = 58337 }; --Glyph of Drain Soul
		[3] = {itemID = 43393, spellID = 58339 }; --Glyph of Enslave Demon
		[4] = {itemID = 43391, spellID = 58340 }; --Glyph of Kilrogg
		[5] = {itemID = 43394, spellID = 58341 }; --Glyph of Souls
		[6] = {itemID = 43389, spellID = 58336 }; --Glyph of Unending Breath
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[1] = {itemID = 43420, spellID = 57151 }; --Glyph of Barbaric Insults
		[2] = {itemID = 45790, spellID = 64295 }; --Glyph of Bladestorm
		[3] = {itemID = 43425, spellID = 57152 }; --Glyph of Blocking
		[4] = {itemID = 43412, spellID = 57153 }; --Glyph of Bloodthirst
		[5] = {itemID = 43414, spellID = 57154 }; --Glyph of Cleaving
		[6] = {itemID = 43415, spellID = 57155 }; --Glyph of Devastate
		[7] = {itemID = 45794, spellID = 64312 }; --Glyph of Enraged Regeneration
		[8] = {itemID = 43416, spellID = 57156 }; --Glyph of Execution
		[9] = {itemID = 43417, spellID = 57157 }; --Glyph of Hamstring
		[10] = {itemID = 43418, spellID = 57158 }; --Glyph of Heroic Strike
		[11] = {itemID = 43419, spellID = 57159 }; --Glyph of Intervene
		[12] = {itemID = 43426, spellID = 57166 }; --Glyph of Last Stand
		[13] = {itemID = 43421, spellID = 57160 }; --Glyph of Mortal Strike
		[14] = {itemID = 43422, spellID = 57161 }; --Glyph of Overpower
		[15] = {itemID = 43413, spellID = 57162 }; --Glyph of Rapid Charge
		[16] = {itemID = 43423, spellID = 57163 }; --Glyph of Rending
		[17] = {itemID = 43430, spellID = 57164 }; --Glyph of Resonating Power
		[18] = {itemID = 43424, spellID = 57165 }; --Glyph of Revenge
		[19] = {itemID = 45797, spellID = 64252 }; --Glyph of Shield Wall
		[20] = {itemID = 45792, spellID = 64296 }; --Glyph of Shockwave
		[21] = {itemID = 45795, spellID = 64302 }; --Glyph of Spell Reflection
		[22] = {itemID = 43427, spellID = 57167 }; --Glyph of Sunder Armor
		[23] = {itemID = 43428, spellID = 57168 }; --Glyph of Sweeping Strikes
		[24] = {itemID = 43429, spellID = 57169 }; --Glyph of Taunt
		[25] = {itemID = 43431, spellID = 57170 }; --Glyph of Victory Rush
		[26] = {itemID = 45793, spellID = 64255 }; --Glyph of Vigilance
		[27] = {itemID = 43432, spellID = 57172 }; --Glyph of Whirlwind
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[1] = {itemID = 43395, spellID = 58342 }; --Glyph of Battle
		[2] = {itemID = 43396, spellID = 58343 }; --Glyph of Bloodrage
		[3] = {itemID = 43397, spellID = 58344 }; --Glyph of Charge
		[4] = {itemID = 49084, spellID = 68166 }; --Glyph of Command
		[5] = {itemID = 43400, spellID = 58347 }; --Glyph of Enduring Victory
		[6] = {itemID = 43398, spellID = 58345 }; --Glyph of Mocking Blow
		[7] = {itemID = 43399, spellID = 58346 }; --Glyph of Thunder Clap
	};
};

----------------------
--- Leatherworking ---
----------------------

AtlasLoot_Data["LeatherworkingCLASSIC"] = {
	Name = LEATHERWORKING;
	Type = "Crafting";
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Back";
		[1] = {itemID = 18509, spellID = 22926 }; --Chromatic Cloak
		[2] = {itemID = 18511, spellID = 22928 }; --Shifting Cloak
		[3] = {itemID = 18510, spellID = 22927 }; --Hide of the Wild
		[4] = {itemID = 15138, spellID = 19093 }; --Onyxia Scale Cloak
		[5] = {itemID = 8215, spellID = 10574 }; --Wild Leather Cloak
		[6] = {itemID = 8216, spellID = 10562 }; --Big Voodoo Cloak
		[7] = {itemID = 5965, spellID = 7153 }; --Guardian Cloak
		[8] = {itemID = 7377, spellID = 9198 }; --Frost Leather Cloak
		[9] = {itemID = 7283, spellID = 9070 }; --Black Whelp Cloak
		[10] = {itemID = 6466, spellID = 7953 }; --Deviate Scale Cloak
		[11] = {itemID = 2308, spellID = 2159 }; --Fine Leather Cloak
		[12] = {itemID = 3719, spellID = 3760 }; --Hillman's Cloak
		[13] = {itemID = 2316, spellID = 2168 }; --Dark Leather Cloak
		[14] = {itemID = 2310, spellID = 2162 }; --Embossed Leather Cloak
		[15] = {itemID = 7276, spellID = 9058 }; --Handstitched Leather Cloak
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Chest";
		[1] = {itemID = 22661, spellID = 28219 }; --Polar Tunic
		[2] = {itemID = 15059, spellID = 19095 }; --Living Breastplate
		[3] = {itemID = 19685, spellID = 24121 }; --Primal Batskin Jerkin
		[4] = {itemID = 19688, spellID = 24124 }; --Blood Tiger Breastplate
		[5] = {itemID = 15068, spellID = 19104 }; --Frostsaber Tunic
		[6] = {itemID = 15090, spellID = 19102 }; --Runic Leather Armor
		[7] = {itemID = 15085, spellID = 19098 }; --Wicked Leather Armor
		[8] = {itemID = 15075, spellID = 19081 }; --Chimeric Vest
		[9] = {itemID = 15066, spellID = 19086 }; --Ironfeather Breastplate
		[10] = {itemID = 15056, spellID = 19079 }; --Stormshroud Armor
		[11] = {itemID = 15053, spellID = 19076 }; --Volcanic Breastplate
		[12] = {itemID = 15064, spellID = 19068 }; --Warbear Harness
		[13] = {itemID = 8349, spellID = 10647 }; --Feathered Breastplate
		[14] = {itemID = 8346, spellID = 10630 }; --Gauntlets of the Sea
		[15] = {itemID = 8211, spellID = 10544 }; --Wild Leather Vest
		[16] = {itemID = 8200, spellID = 10520 }; --Big Voodoo Robe
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Chest";
		[1] = {itemID = 8175, spellID = 10499 }; --Nightscape Tunic
		[2] = {itemID = 5739, spellID = 6661 }; --Barbaric Harness
		[3] = {itemID = 7374, spellID = 9196 }; --Dusky Leather Armor
		[4] = {itemID = 7375, spellID = 9197 }; --Green Whelp Armor
		[5] = {itemID = 4256, spellID = 3773 }; --Guardian Armor
		[6] = {itemID = 5782, spellID = 6704 }; --Thick Murloc Armor
		[7] = {itemID = 4455, spellID = 4096 }; --Raptor Hide Harness
		[8] = {itemID = 2314, spellID = 2166 }; --Toughened Leather Armor
		[9] = {itemID = 20575, spellID = 24940 }; --Black Whelp Tunic
		[10] = {itemID = 2317, spellID = 2169 }; --Dark Leather Tunic
		[11] = {itemID = 4244, spellID = 3762 }; --Hillman's Leather Vest
		[12] = {itemID = 5781, spellID = 6703 }; --Murloc Scale Breastplate
		[13] = {itemID = 6709, spellID = 8322 }; --Moonglow Vest
		[14] = {itemID = 4243, spellID = 3761 }; --Fine Leather Tunic
		[15] = {itemID = 2300, spellID = 2160 }; --Embossed Leather Vest
		[16] = {itemID = 2311, spellID = 2163 }; --White Leather Jerkin
		[17] = {itemID = 5957, spellID = 7126 }; --Handstitched Leather Vest
	};

	{
		Name = AL["Leather Armor"] .. WHITE .. " - Feet";
		[1] = {itemID = 22760, spellID = 28473 }; --Bramblewood Boots
		[2] = {itemID = 18506, spellID = 22922 }; --Mongoose Boots
		[3] = {itemID = 16982, spellID = 20853 }; --Corehound Boots
		[4] = {itemID = 19052, spellID = 23705 }; --Dawn Treaders
		[5] = {itemID = 34086, spellID = 44953 }; --Winter Boots
		[6] = {itemID = 15073, spellID = 19063 }; --Chimeric Boots
		[7] = {itemID = 15071, spellID = 19066 }; --Frostsaber Boots
		[8] = {itemID = 8213, spellID = 10566 }; --Wild Leather Boots
		[9] = {itemID = 8197, spellID = 10558 }; --Nightscape Boots
		[10] = {itemID = 7390, spellID = 9207 }; --Dusky Boots
		[11] = {itemID = 7391, spellID = 9208 }; --Swift Boots
		[12] = {itemID = 2315, spellID = 2167 }; --Dark Leather Boots
		[13] = {itemID = 2307, spellID = 2158 }; --Fine Leather Boots
		[14] = {itemID = 2309, spellID = 2161 }; --Embossed Leather Boots
		[15] = {itemID = 2302, spellID = 2149 }; --Handstitched Leather Boots
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Hands";
		[1] = {itemID = 22662, spellID = 28220 }; --Polar Gloves
		[2] = {itemID = 19686, spellID = 24122 }; --Primal Batskin Gloves
		[3] = {itemID = 21278, spellID = 26279 }; --Stormshroud Gloves
		[4] = {itemID = 15070, spellID = 19087 }; --Frostsaber Gloves
		[5] = {itemID = 15063, spellID = 19084 }; --Devilsaur Gauntlets
		[6] = {itemID = 15091, spellID = 19055 }; --Runic Leather Gauntlets
		[7] = {itemID = 15074, spellID = 19053 }; --Chimeric Gloves
		[8] = {itemID = 15083, spellID = 19049 }; --Wicked Leather Gauntlets
		[9] = {itemID = 18238, spellID = 22711 }; --Shadowskin Gloves
		[10] = {itemID = 17721, spellID = 21943 }; --Gloves of the Greatfather
		[11] = {itemID = 5966, spellID = 7156 }; --Guardian Gloves
		[12] = {itemID = 4254, spellID = 3771 }; --Barbaric Gloves
		[13] = {itemID = 7359, spellID = 9149 }; --Heavy Earthen Gloves
		[14] = {itemID = 4247, spellID = 3764 }; --Hillman's Leather Gloves
		[15] = {itemID = 7358, spellID = 9148 }; --Pilferer's Gloves
		[16] = {itemID = 4253, spellID = 3770 }; --Toughened Leather Gloves
		[17] = {itemID = 7349, spellID = 9146 }; --Herbalist's Gloves
		[18] = {itemID = 7348, spellID = 9145 }; --Fletcher's Gloves
		[19] = {itemID = 4248, spellID = 3765 }; --Dark Leather Gloves
		[20] = {itemID = 7285, spellID = 9074 }; --Nimble Leather Gloves
		[21] = {itemID = 7284, spellID = 9072 }; --Red Whelp Gloves
		[22] = {itemID = 6467, spellID = 7954 }; --Deviate Scale Gloves
		[23] = {itemID = 2312, spellID = 2164 }; --Fine Leather Gloves
		[24] = {itemID = 4239, spellID = 3756 }; --Embossed Leather Gloves
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Head";
		[1] = {itemID = 16983, spellID = 20854 }; --Molten Helm
		[2] = {itemID = 22759, spellID = 28472 }; --Bramblewood Helm
		[3] = {itemID = 15094, spellID = 19082 }; --Runic Leather Headband
		[4] = {itemID = 15086, spellID = 19071 }; --Wicked Leather Headband
		[5] = {itemID = 8348, spellID = 10632 }; --Helm of Fire
		[6] = {itemID = 8214, spellID = 10546 }; --Wild Leather Helmet
		[7] = {itemID = 8345, spellID = 10621 }; --Wolfshead Helm
		[8] = {itemID = 8201, spellID = 10531 }; --Big Voodoo Mask
		[9] = {itemID = 8176, spellID = 10507 }; --Nightscape Headband
		[10] = {itemID = 8174, spellID = 10490 }; --Comfortable Leather Hat
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Legs";
		[1] = {itemID = 15095, spellID = 19091 }; --Runic Leather Pants
		[2] = {itemID = 15062, spellID = 19097 }; --Devilsaur Leggings
		[3] = {itemID = 15087, spellID = 19083 }; --Wicked Leather Pants
		[4] = {itemID = 15069, spellID = 19074 }; --Frostsaber Leggings
		[5] = {itemID = 15065, spellID = 19080 }; --Warbear Woolies
		[6] = {itemID = 15060, spellID = 19078 }; --Living Leggings
		[7] = {itemID = 15072, spellID = 19073 }; --Chimeric Leggings
		[8] = {itemID = 15057, spellID = 19067 }; --Stormshroud Pants
		[9] = {itemID = 15054, spellID = 19059 }; --Volcanic Leggings
		[10] = {itemID = 29964, spellID = 36074 }; --Blackstorm Leggings
		[11] = {itemID = 29970, spellID = 36075 }; --Wildfeather Leggings
		[12] = {itemID = 8212, spellID = 10572 }; --Wild Leather Leggings
		[13] = {itemID = 8202, spellID = 10560 }; --Big Voodoo Pants
		[14] = {itemID = 8193, spellID = 10548 }; --Nightscape Pants
		[15] = {itemID = 5963, spellID = 7149 }; --Barbaric Leggings
		[16] = {itemID = 7373, spellID = 9195 }; --Dusky Leather Leggings
		[17] = {itemID = 5962, spellID = 7147 }; --Guardian Pants
		[18] = {itemID = 4255, spellID = 3772 }; --Green Leather Armor
		[19] = {itemID = 5958, spellID = 7133 }; --Fine Leather Pants
		[20] = {itemID = 5961, spellID = 7135 }; --Dark Leather Pants
		[21] = {itemID = 7282, spellID = 9068 }; --Light Leather Pants
		[22] = {itemID = 4242, spellID = 3759 }; --Embossed Leather Pants
		[23] = {itemID = 7280, spellID = 9064 }; --Rugged Leather Pants
		[24] = {itemID = 2303, spellID = 2153 }; --Handstitched Leather Pants

	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Shoulder";
		[1] = {itemID = 19049, spellID = 23704 }; --Timbermaw Brawlers
		[2] = {itemID = 19689, spellID = 24125 }; --Blood Tiger Shoulders
		[3] = {itemID = 19058, spellID = 23706 }; --Golden Mantle of the Dawn
		[4] = {itemID = 15096, spellID = 19103 }; --Runic Leather Shoulders
		[5] = {itemID = 15055, spellID = 19101 }; --Volcanic Shoulders
		[6] = {itemID = 15058, spellID = 19090 }; --Stormshroud Shoulders
		[7] = {itemID = 19044, spellID = 23703 }; --Might of the Timbermaw
		[8] = {itemID = 15067, spellID = 19062 }; --Ironfeather Shoulders
		[9] = {itemID = 15061, spellID = 19061 }; --Living Shoulders
		[10] = {itemID = 8210, spellID = 10529 }; --Wild Leather Shoulders
		[11] = {itemID = 8192, spellID = 10516 }; --Nightscape Shoulders
		[12] = {itemID = 5964, spellID = 7151 }; --Barbaric Shoulders
		[13] = {itemID = 4252, spellID = 3769 }; --Dark Leather Shoulders
		[14] = {itemID = 7352, spellID = 9147 }; --Earthen Leather Shoulders
		[15] = {itemID = 4251, spellID = 3768 }; --Hillman's Shoulders
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Waist";
		[1] = {itemID = 19162, spellID = 23709 }; --Corehound Belt
		[2] = {itemID = 19149, spellID = 23707 }; --Lava Belt
		[3] = {itemID = 19163, spellID = 23710 }; --Molten Belt
		[4] = {itemID = 18504, spellID = 22921 }; --Girdle of Insight
		[5] = {itemID = 22761, spellID = 28474 }; --Bramblewood Belt
		[6] = {itemID = 15088, spellID = 19092 }; --Wicked Leather Belt
		[7] = {itemID = 15093, spellID = 19072 }; --Runic Leather Belt
		[8] = {itemID = 4264, spellID = 3779 }; --Barbaric Belt
		[9] = {itemID = 7387, spellID = 9206 }; --Dusky Belt
		[10] = {itemID = 4262, spellID = 3778 }; --Gem-studded Leather Belt
		[11] = {itemID = 4258, spellID = 3775 }; --Guardian Belt
		[12] = {itemID = 4456, spellID = 4097 }; --Raptor Hide Belt
		[13] = {itemID = 4257, spellID = 3774 }; --Green Leather Belt
		[14] = {itemID = 4249, spellID = 3766 }; --Dark Leather Belt
		[15] = {itemID = 4250, spellID = 3767 }; --Hillman's Belt
		[16] = {itemID = 6468, spellID = 7955 }; --Deviate Scale Belt
		[17] = {itemID = 5780, spellID = 6702 }; --Murloc Scale Belt
		[18] = {itemID = 4246, spellID = 3763 }; --Fine Leather Belt
		[19] = {itemID = 4237, spellID = 3753 }; --Handstitched Leather Belt
	};
	{
		Name = AL["Leather Armor"] .. WHITE .. " - Wrist";
		[1] = {itemID = 22663, spellID = 28221 }; --Polar Bracers
		[2] = {itemID = 19687, spellID = 24123 }; --Primal Batskin Bracers
		[3] = {itemID = 15092, spellID = 19065 }; --Runic Leather Bracers
		[4] = {itemID = 15084, spellID = 19052 }; --Wicked Leather Bracers
		[5] = {itemID = 4260, spellID = 3777 }; --Guardian Leather Bracers
		[6] = {itemID = 7386, spellID = 9202 }; --Green Whelp Bracers
		[7] = {itemID = 5783, spellID = 6705 }; --Murloc Scale Bracers
		[8] = {itemID = 7378, spellID = 9201 }; --Dusky Bracers
		[9] = {itemID = 4259, spellID = 3776 }; --Green Leather Bracers
		[10] = {itemID = 18948, spellID = 23399 }; --Barbaric Bracers
		[11] = {itemID = 7281, spellID = 9065 }; --Light Leather Bracers
		[12] = {itemID = 7277, spellID = 9059 }; --Handstitched Leather Bracers
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Chest";
		[1] = {itemID = 22664, spellID = 28222 }; --Icy Scale Breastplate
		[2] = {itemID = 20380, spellID = 24703 }; --Dreamscale Breastplate
		[3] = {itemID = 20478, spellID = 24851 }; --Sandstalker Breastplate
		[4] = {itemID = 20479, spellID = 24848 }; --Spitfire Breastplate
		[5] = {itemID = 15047, spellID = 19054 }; --Red Dragonscale Breastplate
		[6] = {itemID = 15050, spellID = 19085 }; --Black Dragonscale Breastplate
		[7] = {itemID = 15048, spellID = 19077 }; --Blue Dragonscale Breastplate
		[8] = {itemID = 15045, spellID = 19050 }; --Green Dragonscale Breastplate
		[9] = {itemID = 15076, spellID = 19051 }; --Heavy Scorpid Vest
		[10] = {itemID = 8367, spellID = 10650 }; --Dragonscale Breastplate
		[11] = {itemID = 8203, spellID = 10525 }; --Tough Scorpid Breastplate
		[12] = {itemID = 8189, spellID = 10511 }; --Turtle Scale Breastplate
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Feet";
		[1] = {itemID = 16984, spellID = 20855 }; --Black Dragonscale Boots
		[2] = {itemID = 8209, spellID = 10554 }; --Tough Scorpid Boots
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Hands";
		[1] = {itemID = 22666, spellID = 28223 }; --Icy Scale Gauntlets
		[2] = {itemID = 19157, spellID = 23708 }; --Chromatic Gauntlets
		[3] = {itemID = 20477, spellID = 24850 }; --Sandstalker Gauntlets
		[4] = {itemID = 20480, spellID = 24847 }; --Spitfire Gauntlets
		[5] = {itemID = 20296, spellID = 24655 }; --Green Dragonscale Gauntlets
		[6] = {itemID = 15078, spellID = 19064 }; --Heavy Scorpid Gauntlets
		[7] = {itemID = 8347, spellID = 10619 }; --Dragonscale Gauntlets
		[8] = {itemID = 8204, spellID = 10542 }; --Tough Scorpid Gloves
		[9] = {itemID = 8187, spellID = 10509 }; --Turtle Scale Gloves
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Head";
		[1] = {itemID = 15080, spellID = 19088 }; --Heavy Scorpid Helm
		[2] = {itemID = 8208, spellID = 10570 }; --Tough Scorpid Helm
		[3] = {itemID = 8191, spellID = 10552 }; --Turtle Scale Helm
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Legs";
		[1] = {itemID = 20295, spellID = 24654 }; --Blue Dragonscale Leggings
		[2] = {itemID = 15052, spellID = 19107 }; --Black Dragonscale Leggings
		[3] = {itemID = 15079, spellID = 19075 }; --Heavy Scorpid Leggings
		[4] = {itemID = 15046, spellID = 19060 }; --Green Dragonscale Leggings
		[5] = {itemID = 29971, spellID = 36076 }; --Dragonstrike Leggings
		[6] = {itemID = 8206, spellID = 10568 }; --Tough Scorpid Leggings
		[7] = {itemID = 8185, spellID = 10556 }; --Turtle Scale Leggings
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Shoulder";
		[1] = {itemID = 15051, spellID = 19094 }; --Black Dragonscale Shoulders
		[2] = {itemID = 15081, spellID = 19100 }; --Heavy Scorpid Shoulders
		[3] = {itemID = 15049, spellID = 19089 }; --Blue Dragonscale Shoulders
		[4] = {itemID = 8207, spellID = 10564 }; --Tough Scorpid Shoulders

	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Waist";
		[1] = {itemID = 15082, spellID = 19070 }; --Heavy Scorpid Belt
	};
	{
		Name = AL["Mail Armor"] .. WHITE .. " - Wrist";
		[1] = {itemID = 22665, spellID = 28224 }; --Icy Scale Bracers
		[2] = {itemID = 18508, spellID = 22923 }; --Swift Flight Bracers
		[3] = {itemID = 20476, spellID = 24849 }; --Sandstalker Bracers
		[4] = {itemID = 20481, spellID = 24846 }; --Spitfire Bracers
		[5] = {itemID = 15077, spellID = 19048 }; --Heavy Scorpid Bracers
		[6] = {itemID = 8205, spellID = 10533 }; --Tough Scorpid Bracers
		[7] = {itemID = 8198, spellID = 10518 }; --Turtle Scale Bracers
	};
	{
		Name = AL["Item Enhancements"];
		[1] = {itemID = 15564, spellID = 19058 }; --Rugged Armor Kit
		[2] = {itemID = 8173, spellID = 10487 }; --Thick Armor Kit
		[3] = {itemID = 4265, spellID = 3780 }; --Heavy Armor Kit
		[4] = {itemID = 2313, spellID = 2165 }; --Medium Armor Kit
		[5] = {itemID = 2304, spellID = 2152 }; --Light Armor Kit
	};
	{
		Name = AL["Quivers and Ammo Pouches"];
		[1] = {itemID = 8217, spellID = 14930 }; --Quickdraw Quiver
		[2] = {itemID = 8218, spellID = 14932 }; --Thick Leather Ammo Pouch
		[3] = {itemID = 7372, spellID = 9194 }; --Heavy Leather Ammo Pouch
		[4] = {itemID = 7371, spellID = 9193 }; --Heavy Quiver
		[5] = {itemID = 7278, spellID = 9060 }; --Light Leather Quiver
		[6] = {itemID = 7279, spellID = 9062 }; --Small Leather Ammo Pouch
	};
	{
		Name = AL["Drums, Bags and Misc."];
		[1] = {itemID = 18258, spellID = 22815 }; --Gordok Ogre Suit
		[2] = {itemID = 18662, spellID = 23190 }; --Heavy Leather Ball
		[3] = {itemID = 5081, spellID = 5244 }; --Kodo Hide Bag
	};
	{
		Name = BabbleInventory["Leather"];
		[1] = {itemID = 8170, spellID = 22331 }; --Rugged Leather
		[2] = {itemID = 15407, spellID = 19047 }; --Cured Rugged Hide
		[3] = {itemID = 4304, spellID = 20650 }; --Thick Leather
		[4] = {itemID = 8172, spellID = 10482 }; --Cured Thick Hide
		[5] = {itemID = 4234, spellID = 20649 }; --Heavy Leather
		[6] = {itemID = 4236, spellID = 3818 }; --Cured Heavy Hide
		[7] = {itemID = 2319, spellID = 20648 }; --Medium Leather
		[8] = {itemID = 4233, spellID = 3817 }; --Cured Medium Hide
		[9] = {itemID = 4231, spellID = 3816 }; --Cured Light Hide
		[10] = {itemID = 2318, spellID = 2881 }; --Light Leather
	};
	{
		Name = DRAGONSCALE;
		[1] = {itemID = 20295, spellID = 24654 }; --Blue Dragonscale Leggings
		[2] = {itemID = 20296, spellID = 24655 }; --Green Dragonscale Gauntlets
		[3] = {itemID = 29971, spellID = 36076 }; --Dragonstrike Leggings
		[4] = {itemID = 8367, spellID = 10650 }; --Dragonscale Breastplate
		[5] = {itemID = 8347, spellID = 10619 }; --Dragonscale Gauntlets
	};
	{
		Name = ELEMENTAL;
		[3] = {itemID = 8346, spellID = 10630 }; --Gauntlets of the Sea
		[2] = {itemID = 8348, spellID = 10632 }; --Helm of Fire
		[1] = {itemID = 29964, spellID = 36074 }; --Blackstorm Leggings
	};
	{
		Name = TRIBAL;
		[3] = {itemID = 8345, spellID = 10621 }; --Wolfshead Helm
		[2] = {itemID = 8349, spellID = 10647 }; --Feathered Breastplate
		[1] = {itemID = 29970, spellID = 36075 }; --Wildfeather Leggings
	};
};

--------------
--- Mining ---
--------------

AtlasLoot_Data["MiningCLASSIC"] = {
	Name = MINING;
	Type = "Crafting";
	{
		Name = MINING;
		[1] = {itemID = 17771, spellID = 22967 }; --Smelt Elementium
		[2] = {itemID = 12655, spellID = 70524 }; --Enchanted Thorium
		[3] = {itemID = 12359, spellID = 16153 }; --Smelt Thorium
		[4] = {itemID = 11371, spellID = 14891 }; --Smelt Dark Iron
		[5] = {itemID = 6037, spellID = 10098 }; --Smelt Truesilver
		[6] = {itemID = 3860, spellID = 10097 }; --Smelt Mithril
		[7] = {itemID = 3859, spellID = 3569 }; --Smelt Steel
		[8] = {itemID = 3577, spellID = 3308 }; --Smelt Gold
		[9] = {itemID = 3575, spellID = 3307 }; --Smelt Iron
		[10] = {itemID = 2842, spellID = 2658 }; --Smelt Silver
		[11] = {itemID = 2841, spellID = 2659 }; --Smelt Bronze
		[12] = {itemID = 3576, spellID = 3304 }; --Smelt Tin
		[13] = {itemID = 2840, spellID = 2657 }; --Smelt Copper
	};
};

-----------------
--- Tailoring ---
-----------------

AtlasLoot_Data["TailoringCLASSIC"] = {
	Name = TAILORING;
	Type = "Crafting";
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Back";
		[1] = {itemID = 22658, spellID = 28208 }; --Glacial Cloak
		[2] = {itemID = 22660, spellID = 28210 }; --Gaea's Embrace
		[3] = {itemID = 18413, spellID = 22870 }; --Cloak of Warding
		[4] = {itemID = 19047, spellID = 23662 }; --Wisdom of the Timbermaw
		[5] = {itemID = 14134, spellID = 18422 }; --Cloak of Fire
		[6] = {itemID = 13860, spellID = 18409 }; --Runecloth Cloak
		[7] = {itemID = 4327, spellID = 3862 }; --Icy Cloak
		[8] = {itemID = 45626, spellID = 63742 }; --Spidersilk Drape
		[9] = {itemID = 14103, spellID = 18420 }; --Brightcloth Cloak
		[10] = {itemID = 14044, spellID = 18418 }; --Cindercloth Cloak
		[11] = {itemID = 4326, spellID = 3861 }; --Long Silken Cloak
		[12] = {itemID = 7056, spellID = 8789 }; --Crimson Silk Cloak
		[13] = {itemID = 7053, spellID = 8786 }; --Azure Silk Cloak
		[14] = {itemID = 7047, spellID = 8780 }; --Hands of Darkness
		[15] = {itemID = 4311, spellID = 3844 }; --Heavy Woolen Cloak
		[16] = {itemID = 5542, spellID = 6521 }; --Pearl-clasped Cloak
		[17] = {itemID = 2584, spellID = 2402 }; --Woolen Cape
		[18] = {itemID = 2580, spellID = 2397 }; --Reinforced Linen Cape
		[19] = {itemID = 2570, spellID = 2387 }; --Linen Cloak
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Chest 1";
		[1] = {itemID = 19156, spellID = 23666 }; --Flarecore Robe
		[2] = {itemID = 22652, spellID = 28207 }; --Glacial Vest
		[3] = {itemID = 14152, spellID = 18457 }; --Robe of the Archmage
		[4] = {itemID = 14153, spellID = 18458 }; --Robe of the Void
		[5] = {itemID = 14154, spellID = 18456 }; --Truefaith Vestments
		[6] = {itemID = 19682, spellID = 24091 }; --Bloodvine Vest
		[7] = {itemID = 18486, spellID = 22902 }; --Mooncloth Robe
		[8] = {itemID = 14138, spellID = 18447 }; --Mooncloth Vest
		[9] = {itemID = 22756, spellID = 28480 }; --Sylvan Vest
		[10] = {itemID = 14106, spellID = 18451 }; --Felcloth Robe
		[11] = {itemID = 14128, spellID = 18446 }; --Wizardweave Robe
		[12] = {itemID = 14136, spellID = 18436 }; --Robe of Winter Night
		[13] = {itemID = 10021, spellID = 12070 }; --Dreamweave Vest
		[14] = {itemID = 14141, spellID = 18416 }; --Ghostweave Vest
		[15] = {itemID = 18258, spellID = 22813 }; --Gordok Ogre Suit
		[16] = {itemID = 14100, spellID = 18414 }; --Brightcloth Robe
		[17] = {itemID = 14042, spellID = 18408 }; --Cindercloth Vest
		[18] = {itemID = 13858, spellID = 18406 }; --Runecloth Robe
		[19] = {itemID = 13857, spellID = 18407 }; --Runecloth Tunic
		[20] = {itemID = 13868, spellID = 18404 }; --Frostweave Robe
		[21] = {itemID = 13869, spellID = 18403 }; --Frostweave Tunic
		[22] = {itemID = 21542, spellID = 26407 }; --Festive Red Pant Suit
		[23] = {itemID = 21154, spellID = 26403 }; --Festival Dress
		[24] = {itemID = 10036, spellID = 12093 }; --Tuxedo Jacket
		[25] = {itemID = 34087, spellID = 44950 }; --Green Winter Clothes
		[26] = {itemID = 34085, spellID = 44958 }; --Red Winter Clothes
		[27] = {itemID = 10040, spellID = 12091 }; --White Wedding Dress
		[28] = {itemID = 38277, spellID = 50644 }; --Haliscan Jacket
		[29] = {itemID = 10053, spellID = 12077 }; --Simple Black Dress
		[30] = {itemID = 10042, spellID = 12069 }; --Cindercloth Robe
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Chest 2";
		[1] = {itemID = 10007, spellID = 12056 }; --Red Mageweave Vest
		[2] = {itemID = 10004, spellID = 12055 }; --Shadoweave Robe
		[3] = {itemID = 10001, spellID = 12050 }; --Black Mageweave Robe
		[4] = {itemID = 9998, spellID = 12048 }; --Black Mageweave Vest
		[5] = {itemID = 7063, spellID = 8802 }; --Crimson Silk Robe
		[6] = {itemID = 7054, spellID = 8770 }; --Robe of Power
		[7] = {itemID = 7058, spellID = 8791 }; --Crimson Silk Vest
		[8] = {itemID = 7051, spellID = 8764 }; --Earthen Vest
		[9] = {itemID = 7065, spellID = 8784 }; --Green Silk Armor
		[10] = {itemID = 4324, spellID = 3859 }; --Azure Silk Vest
		[11] = {itemID = 5770, spellID = 6692 }; --Robes of Arcana
		[12] = {itemID = 5766, spellID = 6690 }; --Lesser Wizard's Robe
		[13] = {itemID = 6264, spellID = 7643 }; --Greater Adept's Robe
		[14] = {itemID = 6787, spellID = 8467 }; --White Woolen Dress
		[15] = {itemID = 2585, spellID = 2403 }; --Gray Woolen Robe
		[16] = {itemID = 6263, spellID = 7639 }; --Blue Overalls
		[17] = {itemID = 2582, spellID = 2399 }; --Green Woolen Vest
		[18] = {itemID = 2578, spellID = 2395 }; --Barbaric Linen Vest
		[19] = {itemID = 6242, spellID = 7633 }; --Blue Linen Robe
		[20] = {itemID = 6240, spellID = 7630 }; --Blue Linen Vest
		[21] = {itemID = 6239, spellID = 7629 }; --Red Linen Vest
		[22] = {itemID = 6786, spellID = 8465 }; --Simple Dress
		[23] = {itemID = 2572, spellID = 2389 }; --Red Linen Robe
		[24] = {itemID = 6238, spellID = 7623 }; --Brown Linen Robe
		[25] = {itemID = 6241, spellID = 7624 }; --White Linen Robe
		[26] = {itemID = 2568, spellID = 2385 }; --Brown Linen Vest
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Feet";
		[1] = {itemID = 19684, spellID = 24093 }; --Bloodvine Boots
		[2] = {itemID = 20537, spellID = 24903 }; --Runed Stygian Boots
		[3] = {itemID = 15802, spellID = 19435 }; --Mooncloth Boots
		[4] = {itemID = 19056, spellID = 23664 }; --Argent Boots
		[5] = {itemID = 14108, spellID = 18437 }; --Felcloth Boots
		[6] = {itemID = 13864, spellID = 18423 }; --Runecloth Boots
		[7] = {itemID = 10044, spellID = 12088 }; --Cindercloth Boots
		[8] = {itemID = 10031, spellID = 12082 }; --Shadoweave Boots
		[9] = {itemID = 10026, spellID = 12073 }; --Black Mageweave Boots
		[10] = {itemID = 4325, spellID = 3860 }; --Boots of the Enchanter
		[11] = {itemID = 4321, spellID = 3856 }; --Spider Silk Slippers
		[12] = {itemID = 4320, spellID = 3855 }; --Spidersilk Boots
		[13] = {itemID = 4313, spellID = 3847 }; --Red Woolen Boots
		[14] = {itemID = 2583, spellID = 2401 }; --Woolen Boots
		[15] = {itemID = 4312, spellID = 3845 }; --Soft-soled Linen Boots
		[16] = {itemID = 2569, spellID = 2386 }; --Linen Boots
		[17] = {itemID = 10046, spellID = 12045 }; --Simple Linen Boots
		[18] = {itemID = 6836, spellID = 49677 }; --Dress Shoes
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Hands";
		[1] = {itemID = 16979, spellID = 20849 }; --Flarecore Gloves
		[2] = {itemID = 22654, spellID = 28205 }; --Glacial Gloves
		[3] = {itemID = 14146, spellID = 18454 }; --Gloves of Spell Mastery
		[4] = {itemID = 18407, spellID = 22867 }; --Felcloth Gloves
		[5] = {itemID = 18408, spellID = 22868 }; --Inferno Gloves
		[6] = {itemID = 18409, spellID = 22869 }; --Mooncloth Gloves
		[7] = {itemID = 10019, spellID = 12067 }; --Dreamweave Gloves
		[8] = {itemID = 13863, spellID = 18417 }; --Runecloth Gloves
		[9] = {itemID = 14101, spellID = 18415 }; --Brightcloth Gloves
		[10] = {itemID = 14043, spellID = 18412 }; --Cindercloth Gloves
		[11] = {itemID = 14142, spellID = 18413 }; --Ghostweave Gloves
		[12] = {itemID = 13870, spellID = 18411 }; --Frostweave Gloves
		[13] = {itemID = 10018, spellID = 12066 }; --Red Mageweave Gloves
		[14] = {itemID = 10023, spellID = 12071 }; --Shadoweave Gloves
		[15] = {itemID = 10003, spellID = 12053 }; --Black Mageweave Gloves
		[16] = {itemID = 7064, spellID = 8804 }; --Crimson Silk Gloves
		[17] = {itemID = 7049, spellID = 8782 }; --Truefaith Gloves
		[18] = {itemID = 4319, spellID = 3854 }; --Azure Silk Gloves
		[19] = {itemID = 4318, spellID = 3852 }; --Gloves of Meditation
		[20] = {itemID = 4331, spellID = 3868 }; --Phoenix Gloves
		[21] = {itemID = 4310, spellID = 3843 }; --Heavy Woolen Gloves
		[22] = {itemID = 4307, spellID = 3840 }; --Heavy Linen Gloves
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Head";
		[1] = {itemID = 14140, spellID = 18452 }; --Mooncloth Circlet
		[2] = {itemID = 22757, spellID = 28481 }; --Sylvan Crown
		[3] = {itemID = 14130, spellID = 18450 }; --Wizardweave Turban
		[4] = {itemID = 13866, spellID = 18444 }; --Runecloth Headband
		[5] = {itemID = 14111, spellID = 18442 }; --Felcloth Hood
		[6] = {itemID = 10041, spellID = 12092 }; --Dreamweave Circlet
		[7] = {itemID = 10025, spellID = 12086 }; --Shadoweave Mask
		[8] = {itemID = 10030, spellID = 12081 }; --Admiral's Hat
		[9] = {itemID = 10033, spellID = 12084 }; --Red Mageweave Headband
		[10] = {itemID = 10024, spellID = 12072 }; --Black Mageweave Headband
		[11] = {itemID = 10008, spellID = 12059 }; --White Bandit Mask
		[12] = {itemID = 4323, spellID = 3858 }; --Shadow Hood
		[13] = {itemID = 4322, spellID = 3857 }; --Enchanter's Cowl
		[14] = {itemID = 7050, spellID = 8762 }; --Silk Headband
		[15] = {itemID = 7048, spellID = 8760 }; --Azure Silk Hood
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Legs";
		[1] = {itemID = 19165, spellID = 23667 }; --Flarecore Leggings
		[2] = {itemID = 19683, spellID = 24092 }; --Bloodvine Leggings
		[3] = {itemID = 20538, spellID = 24901 }; --Runed Stygian Leggings
		[4] = {itemID = 14137, spellID = 18440 }; --Mooncloth Leggings
		[5] = {itemID = 14104, spellID = 18439 }; --Brightcloth Pants
		[6] = {itemID = 14144, spellID = 18441 }; --Ghostweave Pants
		[7] = {itemID = 13865, spellID = 18438 }; --Runecloth Pants
		[8] = {itemID = 14045, spellID = 18434 }; --Cindercloth Pants
		[9] = {itemID = 13871, spellID = 18424 }; --Frostweave Pants
		[10] = {itemID = 14107, spellID = 18419 }; --Felcloth Pants
		[11] = {itemID = 14132, spellID = 18421 }; --Wizardweave Leggings
		[12] = {itemID = 10035, spellID = 12089 }; --Tuxedo Pants
		[13] = {itemID = 38278, spellID = 50647 }; --Haliscan Pantaloons
		[14] = {itemID = 10009, spellID = 12060 }; --Red Mageweave Pants
		[15] = {itemID = 10002, spellID = 12052 }; --Shadoweave Pants
		[16] = {itemID = 9999, spellID = 12049 }; --Black Mageweave Leggings
		[17] = {itemID = 7046, spellID = 8758 }; --Azure Silk Pants
		[18] = {itemID = 4317, spellID = 3851 }; --Phoenix Pants
		[19] = {itemID = 10048, spellID = 12047 }; --Colorful Kilt
		[20] = {itemID = 4316, spellID = 3850 }; --Heavy Woolen Pants
		[21] = {itemID = 10047, spellID = 12046 }; --Simple Kilt
		[22] = {itemID = 4309, spellID = 3842 }; --Handstitched Linen Britches
		[23] = {itemID = 4343, spellID = 3914 }; --Brown Linen Pants
		[24] = {itemID = 10045, spellID = 12044 }; --Simple Linen Pants
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Shoulder";
		[1] = {itemID = 16980, spellID = 20848 }; --Flarecore Mantle
		[2] = {itemID = 19059, spellID = 23665 }; --Argent Shoulders
		[3] = {itemID = 19050, spellID = 23663 }; --Mantle of the Timbermaw
		[4] = {itemID = 14139, spellID = 18448 }; --Mooncloth Shoulders
		[5] = {itemID = 22758, spellID = 28482 }; --Sylvan Shoulders
		[6] = {itemID = 14112, spellID = 18453 }; --Felcloth Shoulders
		[7] = {itemID = 13867, spellID = 18449 }; --Runecloth Shoulders
		[8] = {itemID = 10029, spellID = 12078 }; --Red Mageweave Shoulders
		[9] = {itemID = 10028, spellID = 12076 }; --Shadoweave Shoulders
		[10] = {itemID = 10027, spellID = 12074 }; --Black Mageweave Shoulders
		[11] = {itemID = 7062, spellID = 8799 }; --Crimson Silk Pantaloons
		[12] = {itemID = 7060, spellID = 8795 }; --Azure Shoulders
		[13] = {itemID = 7059, spellID = 8793 }; --Crimson Silk Shoulders
		[14] = {itemID = 7057, spellID = 8774 }; --Green Silken Shoulders
		[15] = {itemID = 4315, spellID = 3849 }; --Reinforced Woolen Shoulders
		[16] = {itemID = 4314, spellID = 3848 }; --Double-stitched Woolen Shoulders
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Waist";
		[1] = {itemID = 18405, spellID = 22866 }; --Belt of the Archmage
		[2] = {itemID = 20539, spellID = 24902 }; --Runed Stygian Belt
		[3] = {itemID = 14143, spellID = 18410 }; --Ghostweave Belt
		[4] = {itemID = 13856, spellID = 18402 }; --Runecloth Belt
		[5] = {itemID = 4329, spellID = 3864 }; --Star Belt
		[6] = {itemID = 7061, spellID = 8797 }; --Earthen Silk Belt
		[7] = {itemID = 4328, spellID = 3863 }; --Spider Belt
		[8] = {itemID = 7052, spellID = 8766 }; --Azure Silk Belt
		[9] = {itemID = 7055, spellID = 8772 }; --Crimson Silk Belt
		[10] = {itemID = 7026, spellID = 8776 }; --Linen Belt
	};
	{
		Name = AL["Cloth Armor"] .. WHITE .. " - Wrist";
		[1] = {itemID = 18263, spellID = 22759 }; --Flarecore Wraps
		[2] = {itemID = 22655, spellID = 28209 }; --Glacial Wrists
		[3] = {itemID = 4308, spellID = 3841 }; --Green Linen Bracers
	};
	{
		Name = AL["Bags"];
		[1] = {itemID = 21342, spellID = 26087 }; --Core Felcloth Bag
		[2] = {itemID = 14156, spellID = 18455 }; --Bottomless Bag
		[3] = {itemID = 21341, spellID = 26086 }; --Felcloth Bag
		[4] = {itemID = 22249, spellID = 27660 }; --Big Bag of Enchantment
		[5] = {itemID = 14155, spellID = 18445 }; --Mooncloth Bag
		[6] = {itemID = 22252, spellID = 27725 }; --Satchel of Cenarius
		[7] = {itemID = 22248, spellID = 27659 }; --Enchanted Runecloth Bag
		[8] = {itemID = 22251, spellID = 27724 }; --Cenarion Herb Bag
		[9] = {itemID = 21340, spellID = 26085 }; --Soul Pouch
		[10] = {itemID = 22246, spellID = 27658 }; --Enchanted Mageweave Pouch
		[11] = {itemID = 14046, spellID = 18405 }; --Runecloth Bag
		[12] = {itemID = 10051, spellID = 12079 }; --Red Mageweave Bag
		[13] = {itemID = 10050, spellID = 12065 }; --Mageweave Bag
		[14] = {itemID = 5765, spellID = 6695 }; --Black Silk Pack
		[15] = {itemID = 5764, spellID = 6693 }; --Green Silk Pack
		[16] = {itemID = 4245, spellID = 3813 }; --Small Silk Pack
		[17] = {itemID = 5763, spellID = 6688 }; --Red Woolen Bag
		[18] = {itemID = 4241, spellID = 3758 }; --Green Woolen Bag
		[19] = {itemID = 4240, spellID = 3757 }; --Woolen Bag
		[20] = {itemID = 5762, spellID = 6686 }; --Red Linen Bag
		[21] = {itemID = 4238, spellID = 3755 }; --Linen Bag
	};
	{
		Name = AL["Miscellaneous"];
		[1] = {itemID = 14342, spellID = 18560 }; --Mooncloth
		[2] = {itemID = 14048, spellID = 18401 }; --Bolt of Runecloth
		[3] = {itemID = 4339, spellID = 3865 }; --Bolt of Mageweave
		[4] = {itemID = 4305, spellID = 3839 }; --Bolt of Silk Cloth
		[5] = {itemID = 2997, spellID = 2964 }; --Bolt of Woolen Cloth
		[6] = {itemID = 2996, spellID = 2963 }; --Bolt of Linen Cloth
	};
	{
		Name = AL["Shirts"];
		[1] = {itemID = 10034, spellID = 12085 }; --Tuxedo Shirt
		[2] = {itemID = 10055, spellID = 12080 }; --Pink Mageweave Shirt
		[3] = {itemID = 10054, spellID = 12075 }; --Lavender Mageweave Shirt
		[4] = {itemID = 10052, spellID = 12064 }; --Orange Martial Shirt
		[5] = {itemID = 10056, spellID = 12061 }; --Orange Mageweave Shirt
		[6] = {itemID = 4336, spellID = 3873 }; --Black Swashbuckler's Shirt
		[7] = {itemID = 17723, spellID = 21945 }; --Green Holiday Shirt
		[8] = {itemID = 4335, spellID = 3872 }; --Rich Purple Silk Shirt
		[9] = {itemID = 6796, spellID = 8489 }; --Red Swashbuckler's Shirt
		[10] = {itemID = 4334, spellID = 3871 }; --Formal White Shirt
		[11] = {itemID = 6795, spellID = 8483 }; --White Swashbuckler's Shirt
		[12] = {itemID = 4333, spellID = 3870 }; --Dark Silk Shirt
		[13] = {itemID = 4332, spellID = 3869 }; --Bright Yellow Shirt
		[14] = {itemID = 6384, spellID = 7892 }; --Stylish Blue Shirt
		[15] = {itemID = 6385, spellID = 7893 }; --Stylish Green Shirt
		[16] = {itemID = 4330, spellID = 3866 }; --Stylish Red Shirt
		[17] = {itemID = 2587, spellID = 2406 }; --Gray Woolen Shirt
		[18] = {itemID = 2579, spellID = 2396 }; --Green Linen Shirt
		[19] = {itemID = 2577, spellID = 2394 }; --Blue Linen Shirt
		[20] = {itemID = 2575, spellID = 2392 }; --Red Linen Shirt
		[21] = {itemID = 2576, spellID = 2393 }; --White Linen Shirt
		[22] = {itemID = 4344, spellID = 3915 }; --Brown Linen Shirt
	};
};

---------------------
---   High Risk   ---
---------------------

AtlasLoot_Data["AlchemyHighRiskCLASSIC"] = {
	Name = ALCHEMY .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967444, spellID = 968403 }; --Potent Flask of Manifesting Power
		[2] = {itemID = 967447, spellID = 968406 }; --Potent Flask of the Warsong
		[3] = {itemID = 967450, spellID = 968409 }; --Potent Flask of the Kirin Tor
		[4] = {itemID = 967453, spellID = 968412 }; --Potent Flask of Butchery
		[5] = {itemID = 967456, spellID = 968415 }; --Potent Flask of the Unyielding
		[6] = {itemID = 967459, spellID = 968418 }; --Potent Flask of Unrelenting Power
		[7] = {itemID = 967462, spellID = 968421 }; --Potent Flask of Savage Assault
		[8] = {itemID = 967465, spellID = 968424 }; --Potent Flask of Shattering Thunder
		[9] = {itemID = 967468, spellID = 968427 }; --Potent Flask of the Executioner
		[10] = {itemID = 967471, spellID = 968430 }; --Potent Flask of Deep Meditation
		[11] = {itemID = 967474, spellID = 968433 }; --Potent Flask of Adept Striking
	};
	{
		Name = "Epic";
		[1] = {itemID = 967445, spellID = 968404 }; --Distilled Flask of Manifesting Power
		[2] = {itemID = 967448, spellID = 968407 }; --Distilled Flask of the Warsong
		[3] = {itemID = 967451, spellID = 968410 }; --Distilled Flask of the Kirin Tor
		[4] = {itemID = 967454, spellID = 968413 }; --Distilled Flask of Butchery
		[5] = {itemID = 967457, spellID = 968416 }; --Distilled Flask of the Unyielding
		[6] = {itemID = 967460, spellID = 968419 }; --Distilled Flask of Unrelenting Power
		[7] = {itemID = 967463, spellID = 968422 }; --Distilled Flask of Savage Assault
		[8] = {itemID = 967466, spellID = 968425 }; --Distilled Flask of Shattering Thunder
		[9] = {itemID = 967469, spellID = 968428 }; --Distilled Flask of the Executioner
		[10] = {itemID = 967472, spellID = 968431 }; --Distilled Flask of Deep Meditation
		[11] = {itemID = 967475, spellID = 968434 }; --Distilled Flask of Adept Striking
	};
};

AtlasLoot_Data["SmithingHighRiskCLASSIC"] = {
	Name = BLACKSMITHING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967173, spellID = 968019 }; --Sturdy Living Belt Buckle
		[2] = {itemID = 967176, spellID = 968022 }; --Sturdy Deflecting Belt Buckle
		[3] = {itemID = 967179, spellID = 968025 }; --Sturdy Roguish Belt Buckle
		[4] = {itemID = 967182, spellID = 968028 }; --Sturdy Dancing Belt Buckle
		[5] = {itemID = 967185, spellID = 968031 }; --Sturdy Magus Belt Buckle
		[6] = {itemID = 967188, spellID = 968034 }; --Sturdy Cleric's Belt Buckle
		[7] = {itemID = 967191, spellID = 968037 }; --Sturdy Warlord's Belt Buckle
		[8] = {itemID = 967194, spellID = 968040 }; --Sturdy Gaurdian's Belt Buckle
		[10] = {itemID = 967681, spellID = 968481 }; --Homicite Key
	};
	{
		Name = "Epic";
		[1] = {itemID = 967174, spellID = 968020 }; --Mastercraft Living Belt Buckle
		[2] = {itemID = 967177, spellID = 968023 }; --Mastercraft Deflecting Belt Buckle
		[3] = {itemID = 967180, spellID = 968026 }; --Mastercraft Roguish Belt Buckle
		[4] = {itemID = 967183, spellID = 968029 }; --Mastercraft Dancing Belt Buckle
		[5] = {itemID = 967186, spellID = 968032 }; --Mastercraft Magus Belt Buckle
		[6] = {itemID = 967189, spellID = 968035 }; --Mastercraft Cleric's Belt Buckle
		[7] = {itemID = 967192, spellID = 968038 }; --Mastercraft Warlord's Belt Buckle
		[8] = {itemID = 967195, spellID = 968041 }; --Mastercraft Gaurdian's Belt Buckle
		[10] = {itemID = 967682, spellID = 968482 }; --Homicite Key
	};
};

AtlasLoot_Data["LeatherworkingHighRiskCLASSIC"] = {
	Name = LEATHERWORKING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967155, spellID = 968001 }; --Sturdy Yeti Gambeson
		[2] = {itemID = 967158, spellID = 968004 }; --Sturdy Devilsaur Gambeson
		[3] = {itemID = 967161, spellID = 968007 }; --Sturdy Plaguebat Gambeson
		[4] = {itemID = 967164, spellID = 968010 }; --Sturdy Sandworm Gambeson
		[5] = {itemID = 967167, spellID = 968013 }; --Sturdy Black Scale Gambeson
		[6] = {itemID = 967170, spellID = 968016 }; --Sturdy Blue Scale Gambeson
	};
	{
		Name = "Epic";
		[1] = {itemID = 967156, spellID = 968002 }; --Mastercraft Yeti Gambeson
		[2] = {itemID = 967159, spellID = 968005 }; --Mastercraft Devilsaur Gambeson
		[3] = {itemID = 967162, spellID = 968008 }; --Mastercraft Plaguebat Gambeson
		[4] = {itemID = 967165, spellID = 968011 }; --Mastercraft Sandworm Gambeson
		[5] = {itemID = 967168, spellID = 968014 }; --Mastercraft Black Scale Gambeson
		[6] = {itemID = 967171, spellID = 968017 }; --Mastercraft Blue Scale Gambeson
	};
};

AtlasLoot_Data["EngineeringHighRiskCLASSIC"] = {
	Name = ENGINEERING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967197, spellID = 968043 }; --Focused Gnomish Magnifying Lense
		[2] = {itemID = 967200, spellID = 968046 }; --Focused Gnomish Focusing Lense
		[3] = {itemID = 967203, spellID = 968049 }; --Focused Gnomish Prismatic Lense
		[4] = {itemID = 967206, spellID = 968052 }; --Focused Hipfire Scope
		[5] = {itemID = 967209, spellID = 968055 }; --Focused Precision Scope
		[6] = {itemID = 967212, spellID = 968058 }; --Focused Reflex Scope
	};
	{
		Name = "Epic";
		[1] = {itemID = 967198, spellID = 968044 }; --Polished Gnomish Magnifying Lense
		[2] = {itemID = 967201, spellID = 968047 }; --Polished Gnomish Focusing Lense
		[3] = {itemID = 967204, spellID = 968050 }; --Polished Gnomish Prismatic Lense
		[4] = {itemID = 967207, spellID = 968053 }; --Polished Hipfire Scope
		[5] = {itemID = 967210, spellID = 968056 }; --Polished Precision Scope
		[6] = {itemID = 967213, spellID = 968059 }; --Polished Reflex Scope
	};
};

AtlasLoot_Data["EnchantingHighRiskCLASSIC"] = {
	Name = ENCHANTING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {icon = "Spell_Holy_GreaterHeal", spellID = 968677 }; --Enchant Weapon - Unstoppable Assault
		[2] = {icon = "Spell_Holy_GreaterHeal", spellID = 968680 }; --Enchant Weapon - Lucid Assault
		[3] = {icon = "Spell_Holy_GreaterHeal", spellID = 968683 }; --Enchant Weapon - Spellbinder's Rage
		[4] = {icon = "Spell_Holy_GreaterHeal", spellID = 968686 }; --Enchant Weapon - Ninja's Focus
		[5] = {icon = "Spell_Holy_GreaterHeal", spellID = 968689 }; --Enchant Weapon - Grovewarden's Blessing
		[6] = {icon = "Spell_Holy_GreaterHeal", spellID = 968692 }; --Enchant Weapon - Viscious Assault
		[7] = {icon = "Spell_Holy_GreaterHeal", spellID = 968695 }; --Enchant Weapon - Arcane Dexterity
		[8] = {icon = "Spell_Holy_GreaterHeal", spellID = 968698 }; --Enchant Weapon - Arcane Artillery
		[9] = {icon = "Spell_Holy_GreaterHeal", spellID = 968701 }; --Enchant Weapon - Arcane Precision
		[10] = {icon = "Spell_Holy_GreaterHeal", spellID = 968770 }; --Enchant Weapon - Crusader II
	};
	{
		Name = "Epic";
		[1] = {icon = "Spell_Holy_GreaterHeal", spellID = 968678 }; --Enchant Weapon - Greater Unstoppable Assault
		[2] = {icon = "Spell_Holy_GreaterHeal", spellID = 968681 }; --Enchant Weapon - Greater Lucid Assualt
		[3] = {icon = "Spell_Holy_GreaterHeal", spellID = 968684 }; --Enchant Weapon - Greater Spellbinder's Rage
		[4] = {icon = "Spell_Holy_GreaterHeal", spellID = 968687 }; --Enchant Weapon - Greater Ninja's Focus
		[5] = {icon = "Spell_Holy_GreaterHeal", spellID = 968690 }; --Enchant Weapon - Greater Grovewarden's Blessing
		[6] = {icon = "Spell_Holy_GreaterHeal", spellID = 968693 }; --Enchant Weapon - Greater Viscious Assault
		[7] = {icon = "Spell_Holy_GreaterHeal", spellID = 968696 }; --Enchant Weapon - Greater Arcane Dexterity
		[8] = {icon = "Spell_Holy_GreaterHeal", spellID = 968699 }; --Enchant Weapon - Greater Arcane Artillery
		[9] = {icon = "Spell_Holy_GreaterHeal", spellID = 968702 }; --Enchant Weapon - Greater Arcane Precision
		[10] = {icon = "Spell_Holy_GreaterHeal", spellID = 968771 }; --Enchant Weapon - Crusader III
	};
};

AtlasLoot_Data["TailoringHighRiskCLASSIC"] = {
	Name = TAILORING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967215, spellID = 968061 }; --Heavy Dragonweave Cloak Lining
		[2] = {itemID = 967218, spellID = 968064 }; --Heavy Twilight Cloak Lining
		[3] = {itemID = 967221, spellID = 968067 }; --Heavy Scarlet Cloak Lining
		[4] = {itemID = 967224, spellID = 968070 }; --Heavy Rampager's Cloak Lining
		[5] = {itemID = 967227, spellID = 968073 }; --Heavy Deadwind Cloak Lining
		[6] = {itemID = 967230, spellID = 968076 }; --Heavy Slippery Cloak Lining
	};
	{
		Name = "Epic";
		[1] = {itemID = 967216, spellID = 968062 }; --Illustrious Dragonweave Cloak Lining
		[2] = {itemID = 967219, spellID = 968065 }; --Illustrious Twilight Cloak Lining
		[3] = {itemID = 967222, spellID = 968068 }; --Illustrious Scarlet Cloak Lining
		[4] = {itemID = 967225, spellID = 968071 }; --Illustrious Rampager's Cloak Lining
		[5] = {itemID = 967228, spellID = 968074 }; --Illustrious Deadwind Cloak Lining
		[6] = {itemID = 967231, spellID = 968077 }; --Illustrious Slippery Cloak Lining
	};
};

AtlasLoot_Data["CookingHighRiskCLASSIC"] = {
	Name = COOKING .. " High Risk";
	Type = "Crafting";
	{
		Name = "Rare";
		[1] = {itemID = 967510, spellID = 968280 }; --Animated Soup for the Soul
		[2] = {itemID = 967513, spellID = 968283 }; --Volcanic Sandwich
		[3] = {itemID = 967516, spellID = 968286 }; --Winter Wontons
		[4] = {itemID = 967519, spellID = 968289 }; --Storm Steak
		[5] = {itemID = 967522, spellID = 968292 }; --Void Touched Stew
		[6] = {itemID = 967525, spellID = 968295 }; --Spicy Vulture Steak
		[7] = {itemID = 967528, spellID = 968298 }; --Wizard Wontons
		[8] = {itemID = 967531, spellID = 968301 }; --Jurassic Burger
		[9] = {itemID = 967534, spellID = 968304 }; --Rough-alo wings
		[10] = {itemID = 967537, spellID = 968307 }; --The Whooper Sandwich
		[11] = {itemID = 967540, spellID = 968310 }; --Vulture a la King
		[12] = {itemID = 967543, spellID = 968313 }; --Scorching Hot Steak
		[13] = {itemID = 967546, spellID = 968316 }; --Lively Stew
		[14] = {itemID = 967549, spellID = 968319 }; --Crawling Steak
		[15] = {itemID = 967552, spellID = 968322 }; --Breakonator Sandwich
		[16] = {itemID = 967555, spellID = 968325 }; --Master Wontons
		[17] = {itemID = 967558, spellID = 968328 }; --Big Whack Sandwich
		[18] = {itemID = 967561, spellID = 968331 }; --Warping Wontons
		[19] = {itemID = 967564, spellID = 968334 }; --Duck Stew
		[20] = {itemID = 967567, spellID = 968337 }; --Mountainman Stew
		[21] = {itemID = 967570, spellID = 968340 }; --Scorched Stew
		[22] = {itemID = 967573, spellID = 968343 }; --Vulcan Wontons
		[23] = {itemID = 967576, spellID = 968346 }; --Jurassic Soup
		[24] = {itemID = 967579, spellID = 968349 }; --Heightened Wontons
		[25] = {itemID = 967582, spellID = 968352 }; --Hearty Spirit Soup
		[26] = {itemID = 967585, spellID = 968355 }; --Jurassic Steak
		[27] = {itemID = 967588, spellID = 968358 }; --Stormwich Sandwich
		[28] = {itemID = 967591, spellID = 968361 }; --Warding Wontons
		[29] = {itemID = 967594, spellID = 968364 }; --Rolling Meatballs
		[30] = {itemID = 967597, spellID = 968367 }; --Subtle Steak
	};
	{
		Name = "Rare";
		[1] = {itemID = 967600, spellID = 968370 }; --Subtle Sandwich
		[2] = {itemID = 967603, spellID = 968373 }; --Subtle Wontons
		[3] = {itemID = 967606, spellID = 968376 }; --Subtle Sulferous Soup
		[4] = {itemID = 967609, spellID = 968379 }; --Strongman Stew
		[5] = {itemID = 967612, spellID = 968382 }; --Mysterious Void Roast
		[6] = {itemID = 967615, spellID = 968385 }; --Fire Charred Roast
		[7] = {itemID = 967618, spellID = 968388 }; --Storm Fried Roast
		[8] = {itemID = 967621, spellID = 968391 }; --Winter Roast
		[9] = {itemID = 967624, spellID = 968394 }; --Blackened Roast
		[10] = {itemID = 967627, spellID = 968397 }; --Dino Delight
		[11] = {itemID = 967630, spellID = 968400 }; --Slick-fil-A Sandwich
		[13] = {itemID = 967704, spellID = 968647 }; --Alluring Bait
	};
	{
		Name = "Epic";
		[1] = {itemID = 967511, spellID = 968281 }; --Animated Soup for the Soul
		[2] = {itemID = 967514, spellID = 968284 }; --Volcanic Sandwich
		[3] = {itemID = 967517, spellID = 968287 }; --Winter Wontons
		[4] = {itemID = 967520, spellID = 968290 }; --Storm Steak
		[5] = {itemID = 967523, spellID = 968293 }; --Void Touched Stew
		[6] = {itemID = 967526, spellID = 968296 }; --Spicy Vulture Steak
		[7] = {itemID = 967529, spellID = 968299 }; --Wizard Wontons
		[8] = {itemID = 967532, spellID = 968302 }; --Jurassic Burger
		[9] = {itemID = 967535, spellID = 968305 }; --Rough-alo wings
		[10] = {itemID = 967538, spellID = 968308 }; --The Whooper Sandwich
		[11] = {itemID = 967541, spellID = 968311 }; --Vulture a la King
		[12] = {itemID = 967542, spellID = 968314 }; --Scorching Hot Steak
		[13] = {itemID = 967547, spellID = 968317 }; --Lively Stew
		[14] = {itemID = 967550, spellID = 968320 }; --Crawling Steak
		[15] = {itemID = 967553, spellID = 968323 }; --Breakonator Sandwich
		[16] = {itemID = 967556, spellID = 968326 }; --Master Wontons
		[17] = {itemID = 967559, spellID = 968329 }; --Big Whack Sandwich
		[18] = {itemID = 967562, spellID = 968332 }; --Warping Wontons
		[19] = {itemID = 967565, spellID = 968335 }; --Duck Stew
		[20] = {itemID = 967568, spellID = 968338 }; --Mountainman Stew
		[21] = {itemID = 967571, spellID = 968341 }; --Scorched Stew
		[22] = {itemID = 967574, spellID = 968344 }; --Vulcan Wontons
		[23] = {itemID = 967577, spellID = 968347 }; --Jurassic Soup
		[24] = {itemID = 967580, spellID = 968350 }; --Heightened Wontons
		[25] = {itemID = 967583, spellID = 968353 }; --Hearty Spirit Soup
		[26] = {itemID = 967586, spellID = 968356 }; --Jurassic Steak
		[27] = {itemID = 967589, spellID = 968359 }; --Stormwich Sandwich
		[28] = {itemID = 967592, spellID = 968362 }; --Warding Wontons
		[29] = {itemID = 967595, spellID = 968365 }; --Rolling Meatballs
		[30] = {itemID = 967598, spellID = 968368 }; --Subtle Steak
	};
	{
		Name = "Epic";
		[1] = {itemID = 967601, spellID = 968371 }; --Subtle Sandwich
		[2] = {itemID = 967604, spellID = 968374 }; --Subtle Wontons
		[3] = {itemID = 967607, spellID = 968377 }; --Subtle Sulferous Soup
		[4] = {itemID = 967610, spellID = 968380 }; --Strongman Stew
		[5] = {itemID = 967613, spellID = 968383 }; --Mysterious Void Roast
		[6] = {itemID = 967616, spellID = 968386 }; --Fire Charred Roast
		[7] = {itemID = 967619, spellID = 968389 }; --Storm Fried Roast
		[8] = {itemID = 967622, spellID = 968392 }; --Winter Roast
		[9] = {itemID = 967625, spellID = 968395 }; --Blackened Roast
		[10] = {itemID = 967628, spellID = 968398 }; --Dino Delight
		[11] = {itemID = 967631, spellID = 968401 }; --Slick-fil-A Sandwich
		[13] = {itemID = 967705, spellID = 968648 }; --Irresistible Bait
	};
};
