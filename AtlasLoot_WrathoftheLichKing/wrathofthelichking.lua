local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


-- Index
--- Dungeons & Raids
---- Keys
---- Utgarde Keep
---- The Nexus
---- Azjol-Nerub
---- Ahn'kahet: The Old Kingdom
---- Drak'Tharon Keep
---- The Violet Hold
---- Gundrak
---- Halls of Stone
---- Halls of Lightning
---- Caverns of Time: Old Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Vault of Archavon
---- Naxxramas
----- Construct Quarter
----- Arachnid Quarter
----- Military Quarter
----- Plague Quarter
----- Frostwyrm Lair
---- Obsidian Sanctum
---- The Eye of Eternity
---- Ulduar
---- Trial of the Champion
---- Trial of the Crusader
---- Trial of the Grand Crusader
---- Onyxia (Level 80)
---- The Forge of Souls
---- Pit of Saron
---- Halls of Reflection
---- Icecrown Citadel
----- Lower Spire
----- The Plagueworks
----- The Crimson Hall
----- Frostwing Halls
----- The Frozen Throne
---- Icecrown Citadel HEROIC
---- Ruby Sanctum
--- Factions
---- Alliance Vanguard
---- Argent Crusade
---- Frenzyheart Tribe
---- Horde Expedition
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- Winterfin Retreat
---- The Wyrmrest Accord
---- The Ashen Verdict
--- PvP
---- Armor Sets
---- Level 80 Epic Non-Sets
---- Wrathful Gladiator Weapons
---- PvP Class Items
---- PvP Miscellaneous
---- World PvP - Wintergrasp
---- World PvP - Grizzly Hills: Venture Bay
--- Sets & Collections
---- Naxx Sets (T7)/Ulduar Sets (T8)
---- Tier 9 Sets (T9)
---- Tier 10 Sets (T10)
---- Wrath Of The Lich King Sets
---- Blizzard Collectables
---- Legendaries
---- Tabards
---- Card Game Items
---- Vanity Pets
---- Mounts
---- BoE World Epics
---- Heirloom Items
---- Emblem of Heroism Items
---- Emblem of Valor Items
---- Emblem of Conquest Items
---- Emblem of Triumph Items
---- Emblem of Frost Items

------------------------
--- Dungeons & Raids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["WrathKeys"] = {
	Name = "Keys";
	{
		Name = "Keys";
		[1] = { itemID = 44582, "=ds=#e9#" }; --Key to the Focusing Iris
		[2] = { itemID = 44581, "=ds=#e9#" }; --Heroic Key to the Focusing Iris
		[3] = { itemID = 45796, "=ds=#e9#" }; --Celestial Planetarium Key
		[4] = { itemID = 45798, "=ds=#e9#" }; --Heroic Celestial Planetarium Key
		[5] = { itemID = 42482, "=ds=#e9#" }; --The Violet Hold Key
	};
};
--------------------
--- Utgarde Keep ---
--------------------

AtlasLoot_Data["UtgardeKeep"] = {
	Name = BabbleZone["Utgarde Keep"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Prince Keleseth"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35572, droprate = "8%" }; --Reinforced Velvet Helm
		[3] = { itemID = 35571, droprate = "1%" }; --Dragon Stabler's Gauntlets
		[4] = { itemID = 35570, droprate = "8%" }; --Keleseth's Blade of Evocation
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37180, droprate = "1%" }; --Battlemap Hide Helm
		[19] = { itemID = 37178, droprate = "2%" }; --Strategist's Belt
		[20] = { itemID = 37179, droprate = "1%" }; --Infantry Assault Blade
		[21] = { itemID = 37177, droprate = "1%" }; --Wand of the San'layn
	};
	{
		Name = BabbleBoss["Skarvald the Constructor"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35575, droprate = "1%" }; --Skarvald's Dragonskin Habergeon
		[3] = { itemID = 35574, droprate = "8%" }; --Chestplate of the Northern Lights
		[4] = { itemID = 35573, droprate = "0%" }; --Arm Blade of Augelmir
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37183, droprate = "1%" }; --Bindings of the Tunneler
		[19] = { itemID = 37184, droprate = "1%" }; --Dalronn's Jerkin
		[20] = { itemID = 37182, droprate = "1%" }; --Helmet of the Constructor
		[21] = { itemID = 37181, droprate = "1%" }; --Dagger of Betrayal
	};
	{
		Name = BabbleBoss["Ingvar the Plunderer"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35577, droprate = "8%" }; --Holistic Patchwork Breeches
		[3] = { itemID = 35578, droprate = "6%" }; --Overlaid Chain Spaulders
		[4] = { itemID = 35576, droprate = "7%" }; --Ingvar's Monolithic Cleaver
		[5] = { itemID = 33330, "=ds=#m3#" }; --Ingvar's Head
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37194, droprate = "0%" }; --Sharp-Barbed Leather Belt
		[19] = { itemID = 37193, droprate = "8%" }; --Staggering Legplates
		[20] = { itemID = 37192, droprate = "8%" }; --Annhylde's Ring
		[21] = { itemID = 37191, droprate = "9%" }; --Drake-Mounted Crossbow
		[22] = { itemID = 37189, droprate = "9%" }; --Breeches of the Caller
		[23] = { itemID = 37188, droprate = "0%" }; --Plunderer's Helmet
		[24] = { itemID = 37186, droprate = "0%" }; --Unsmashable Heavy Band
		[25] = { itemID = 37190, droprate = "0%" }; --Enraged Feral Staff
		[26] = { itemID = 41793, desc = "=ds=#p12# (390)", droprate = "%" }; --Design: Fierce Monarch Topaz
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35580, droprate = "%" }; --Skein Woven Mantle
		[3] = { itemID = 35579, droprate = "%" }; --Vrykul Shackles
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37197, droprate = "%" }; --Tattered Castle Drape
		[18] = { itemID = 37196, droprate = "%" }; --Runecaster's Mantle
	};
}

-----------------
--- The Nexus ---
-----------------

AtlasLoot_Data["TheNexus"] = {
	Name = BabbleZone["The Nexus"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Grand Magus Telestra"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35602, droprate = "0%" }; --Chiseled Stalagmite Pauldrons
		[3] = { itemID = 35603, droprate = "2%" }; --Greaves of the Blue Flight
		[4] = { itemID = 35601, droprate = "3%" }; --Drakonid Arm Blade
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37153, droprate = "1%" }; --Gloves of the Crystal Gardener
		[19] = { itemID = 37155, droprate = "2%" }; --Frozen Forest Kilt
		[20] = { itemID = 37152, droprate = "2%" }; --Girdle of Ice
		[21] = { itemID = 37151, droprate = "2%" }; --Band of Frosted Thorns
	};
	{
		Name = BabbleBoss["Anomalus"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35599, droprate = "1%" }; --Gauntlets of Serpent Scales
		[3] = { itemID = 35600, droprate = "9%" }; --Cleated Ice Boots
		[4] = { itemID = 35598, droprate = "9%" }; --Tome of the Lore Keepers
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37149, droprate = "1%" }; --Helm of Anomalus
		[19] = { itemID = 37144, droprate = "2%" }; --Hauberk of the Arcane Wraith
		[20] = { itemID = 37150, droprate = "2%" }; --Rift Striders
		[21] = { itemID = 37141, droprate = "1%" }; --Amulet of Dazzling Light
	};
	{
		Name = BabbleBoss["Ormorok the Tree-Shaper"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35605, droprate = "9%" }; --Belt of Draconic Runes
		[3] = { itemID = 35604, droprate = "9%" }; --Insulating Bindings
		[4] = { itemID = 35617, droprate = "8%" }; --Wand of Shimmering Scales
		[6] = { itemID = 21524, "=ds=#s1# =q2=#m28#" }; --Red Winter Hat
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37139, droprate = "1%" }; --Spaulders of the Careless Thief
		[19] = { itemID = 37138, droprate = "1%" }; --Bands of Channeled Energy
		[20] = { itemID = 37135, droprate = "1%" }; --Arcane-Shielded Helm
		[21] = { itemID = 37134, droprate = "0%" }; --Telestra's Journal
		[23] = { itemID = 21524, "=ds=#s1# =q2=#m28#" }; --Red Winter Hat
	};
	{
		Name = BabbleBoss["Commander Kolurg"];
		[1] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[2] = { itemID = 37728, droprate = "0%" }; --Cloak of the Enemy
		[3] = { itemID = 37731, droprate = "0%" }; --Opposed Stasis Leggings
		[4] = { itemID = 37730, droprate = "9%" }; --Cleric's Linen Shoes
		[5] = { itemID = 37729, droprate = "0%" }; --Grips of Sculptured Icicles
	};
	{
		Name = BabbleBoss["Keristrasza"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35596, droprate = "9%" }; --Attuned Crystalline Boots
		[3] = { itemID = 35595, droprate = "0%" }; --Glacier Sharpened Vileblade
		[4] = { itemID = 35597, droprate = "0%" }; --Band of Glittering Permafrost
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37172, droprate = "9%" }; --Gloves of Glistening Runes
		[19] = { itemID = 37170, droprate = "0%" }; --Interwoven Scale Bracers
		[20] = { itemID = 37171, droprate = "9%" }; --Flame-Bathed Steel Girdle
		[21] = { itemID = 37169, droprate = "8%" }; --War Mace of Unrequited Love
		[22] = { itemID = 37165, droprate = "0%" }; --Crystal-Infused Tunic
		[23] = { itemID = 37167, droprate = "0%" }; --Dragon Slayer's Sabatons
		[24] = { itemID = 37166, droprate = "0%" }; --Sphere of Red Dragon's Blood
		[25] = { itemID = 37162, droprate = "0%" }; --Bulwark of the Noble Protector
		[26] = { itemID = 41794, desc = "=ds=#p12# (390)", droprate = "%" }; --Design: Deadly Monarch Topaz
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
}

-------------------
--- Azjol-Nerub ---
-------------------

AtlasLoot_Data["AzjolNerub"] = {
	Name = BabbleZone["Azjol-Nerub"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Krik'thir the Gatewatcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35657, droprate = "0%" }; --Exquisite Spider-Silk Footwraps
		[3] = { itemID = 35656, droprate = "2%" }; --Aura Focused Gauntlets
		[4] = { itemID = 35655, droprate = "0%" }; --Cobweb Machete
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37218, droprate = "1%" }; --Stone-Worn Footwraps
		[19] = { itemID = 37219, droprate = "1%" }; --Custodian's Chestpiece
		[20] = { itemID = 37217, droprate = "2%" }; --Golden Limb Bands
		[21] = { itemID = 37216, droprate = "2%" }; --Facade Shield of Glyphs
	};
	{
		Name = BabbleBoss["Hadronox"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35660, droprate = "0%" }; --Spinneret Epaulets
		[3] = { itemID = 35659, droprate = "0%" }; --Treads of Aspiring Heights
		[4] = { itemID = 35658, droprate = "9%" }; --Life-Staff of the Web Lair
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37222, droprate = "1%" }; --Egg Sac Robes
		[19] = { itemID = 37230, droprate = "1%" }; --Grotto Mist Gloves
		[20] = { itemID = 37221, droprate = "0%" }; --Hollowed Mandible Legplates
		[21] = { itemID = 37220, droprate = "0%" }; --Essence of Gossamer
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35663, droprate = "9%" }; --Charmed Silken Cord
		[3] = { itemID = 35662, droprate = "9%" }; --Wing Cover Girdle
		[4] = { itemID = 35661, droprate = "8%" }; --Signet of Arachnathid Command
		[6] = { itemID = 43411, "=ds=#m3#" }; --Anub'arak's Broken Husk
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37242, droprate = "9%" }; --Sash of the Servant
		[19] = { itemID = 37240, droprate = "9%" }; --Flamebeard's Bracers
		[20] = { itemID = 37241, droprate = "9%" }; --Ancient Aligned Girdle
		[21] = { itemID = 37238, droprate = "9%" }; --Rod of the Fallen Monarch
		[22] = { itemID = 37236, droprate = "0%" }; --Insect Vestments
		[23] = { itemID = 37237, droprate = "0%" }; --Chitin Shell Greathelm
		[24] = { itemID = 37232, droprate = "9%" }; --Ring of the Traitor King
		[25] = { itemID = 37235, droprate = "1%" }; --Crypt Lord's Deft Blade
		[26] = { itemID = 41796, desc = "=ds=#p12# (390)", droprate = "2%" }; --Design: Infused Twilight Opal
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[2] = { itemID = 37243, droprate = "%" }; --Treasure Seeker's Belt
		[3] = { itemID = 37625, droprate = "%" }; --Web Winder Gloves
		[4] = { itemID = 37624, droprate = "%" }; --Stained-Glass Shard Ring
	};
}

----------------------------------
--- Ahn'kahet: The Old Kingdom ---
----------------------------------

AtlasLoot_Data["Ahnkahet"] = {
	Name = BabbleZone["Ahn'kahet: The Old Kingdom"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Elder Nadox"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35607, droprate = "0%" }; --Ahn'kahar Handwraps
		[3] = { itemID = 35608, droprate = "9%" }; --Crawler-Emblem Belt
		[4] = { itemID = 35606, droprate = "1%" }; --Blade of Nadox
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37594, droprate = "2%" }; --Elder Headpiece
		[19] = { itemID = 37593, droprate = "3%" }; --Sprinting Shoulderpads
		[20] = { itemID = 37592, droprate = "2%" }; --Brood Plague Helmet
		[21] = { itemID = 37591, droprate = "2%" }; --Nerubian Shield Ring
	};
	{
		Name = BabbleBoss["Prince Taldaram"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35611, droprate = "0%" }; --Gloves of the Blood Prince
		[3] = { itemID = 35610, droprate = "1%" }; --Slasher's Amulet
		[4] = { itemID = 35609, droprate = "9%" }; --Talisman of Scourge Command
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37613, droprate = "1%" }; --Flame Sphere Bindings
		[19] = { itemID = 37614, droprate = "1%" }; --Gauntlets of the Plundering Geist
		[20] = { itemID = 37612, droprate = "0%" }; --Bonegrinder Breastplate
		[21] = { itemID = 37595, droprate = "1%" }; --Necklace of Taldaram
	};
	{
		Name = BabbleBoss["Amanitar"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[2] = { itemID = 43287, droprate = "1%" }; --Silken Bridge Handwraps
		[3] = { itemID = 43286, droprate = "3%" }; --Legguards of Swarming Attacks
		[4] = { itemID = 43285, droprate = "2%" }; --Amulet of the Spell Flinger
		[5] = { itemID = 43284, droprate = "2%" }; --Amanitar Skullbow
	};
	{
		Name = BabbleBoss["Jedoga Shadowseeker"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 43278, droprate = "0%" }; --Cloak of the Darkcaster
		[3] = { itemID = 43279, droprate = "9%" }; --Battlechest of the Twilight Cult
		[4] = { itemID = 43277, droprate = "8%" }; --Jedoga's Greatring
		[6] = { itemID = 21524, "=ds=#s1# =q2=#m28#" }; --Red Winter Hat
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 43283, droprate = "1%" }; --Subterranean Waterfall Shroud
		[19] = { itemID = 43280, droprate = "1%" }; --Faceguard of the Hammer Clan
		[20] = { itemID = 43282, droprate = "2%" }; --Shadowseeker's Pendant
		[21] = { itemID = 43281, droprate = "2%" }; --Edge of Oblivion
		[23] = { itemID = 21524, "=ds=#s1# =q2=#m28#" }; --Red Winter Hat
	};
	{
		Name = BabbleBoss["Herald Volazj"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35612, droprate = "9%" }; --Mantle of Echoing Bats
		[3] = { itemID = 35613, droprate = "1%" }; --Pyramid Embossed Belt
		[4] = { itemID = 35614, droprate = "1%" }; --Volazj's Sabatons
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37622, droprate = "9%" }; --Skirt of the Old Kingdom
		[19] = { itemID = 37623, droprate = "9%" }; --Fiery Obelisk Handguards
		[20] = { itemID = 37620, droprate = "8%" }; --Bracers of the Herald
		[21] = { itemID = 37619, droprate = "8%" }; --Wand of Ahnkahet
		[22] = { itemID = 37616, droprate = "9%" }; --Kilt of the Forgotten One
		[23] = { itemID = 37618, droprate = "0%" }; --Greaves of Ancient Evil
		[24] = { itemID = 37617, droprate = "9%" }; --Staff of Sinister Claws
		[25] = { itemID = 37615, droprate = "9%" }; --Titanium Compound Bow
		[26] = { itemID = 41790, desc = "=ds=#p12# (390)", droprate = "7%" }; --Design: Precise Scarlet Ruby
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35616, droprate = "%" }; --Spored Tendrils Spaulders
		[3] = { itemID = 35615, droprate = "%" }; --Glowworm Cavern Bindings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37625, droprate = "%" }; --Web Winder Gloves
		[18] = { itemID = 37624, droprate = "%" }; --Stained-Glass Shard Ring
	};
}

------------------------
--- Drak'Tharon Keep ---
------------------------

AtlasLoot_Data["DrakTharonKeep"] = {
	Name = BabbleZone["Drak'Tharon Keep"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Trollgore"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35620, droprate = "3%" }; --Berserker's Horns
		[3] = { itemID = 35619, droprate = "8%" }; --Infection Resistant Legguards
		[4] = { itemID = 35618, droprate = "0%" }; --Troll Butcherer
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37715, droprate = "1%" }; --Cowl of the Dire Troll
		[19] = { itemID = 37714, droprate = "2%" }; --Batrider's Cord
		[20] = { itemID = 37717, droprate = "2%" }; --Legs of Physical Regeneration
		[21] = { itemID = 37712, droprate = "2%" }; --Terrace Defence Boots
	};
	{
		Name = BabbleBoss["Novos the Summoner"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35632, droprate = "2%" }; --Robes of Novos
		[3] = { itemID = 35631, droprate = "8%" }; --Crystal Pendant of Warding
		[4] = { itemID = 35630, droprate = "0%" }; --Summoner's Stone Gavel
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37722, droprate = "2%" }; --Breastplate of Undeath
		[19] = { itemID = 37718, droprate = "1%" }; --Temple Crystal Fragment
		[20] = { itemID = 37721, droprate = "2%" }; --Cursed Lich Blade
	};
	{
		Name = BabbleBoss["King Dred"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35635, droprate = "8%" }; --Stable Master's Breeches
		[3] = { itemID = 35634, droprate = "8%" }; --Scabrous-Hide Helm
		[4] = { itemID = 35633, droprate = "1%" }; --Staff of the Great Reptile
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37725, droprate = "1%" }; --Savage Wound Wrap
		[19] = { itemID = 37724, droprate = "1%" }; --Handler's Arm Strap
		[20] = { itemID = 37726, droprate = "1%" }; --King Dred's Helm
		[21] = { itemID = 37723, droprate = "1%" }; --Incisor Fragment
	};
	{
		Name = BabbleBoss["The Prophet Tharon'ja"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35638, droprate = "3%" }; --Helmet of Living Flesh
		[3] = { itemID = 35637, droprate = "8%" }; --Muradin's Lost Greaves
		[4] = { itemID = 35636, droprate = "0%" }; --Tharon'ja's Aegis
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37798, droprate = "9%" }; --Overlook Handguards
		[19] = { itemID = 37791, droprate = "0%" }; --Leggings of the Winged Serpent
		[20] = { itemID = 37788, droprate = "1%" }; --Limb Regeneration Bracers
		[21] = { itemID = 37784, droprate = "9%" }; --Keystone Great-Ring
		[22] = { itemID = 37735, droprate = "1%" }; --Ziggurat Imprinted Chestguard
		[23] = { itemID = 37732, droprate = "0%" }; --Spectral Seal of the Prophet
		[24] = { itemID = 37734, droprate = "1%" }; --Talisman of Troll Divinity
		[25] = { itemID = 37733, droprate = "1%" }; --Mojo Masked Crusher
		[26] = { itemID = 41795, desc = "=ds=#p12# (390)", droprate = "4%" }; --Design: Timeless Forest Emerald
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35641, droprate = "%" }; --Scytheclaw Boots
		[3] = { itemID = 35640, droprate = "%" }; --Darkweb Bindings
		[4] = { itemID = 35639, droprate = "%" }; --Brighthelm of Guarding
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37799, droprate = "%" }; --Reanimator's Cloak
		[18] = { itemID = 37800, droprate = "%" }; --Aviary Guardsman's Hauberk
		[19] = { itemID = 37801, droprate = "%" }; --Waistguard of the Risen Knight
	};
}

-----------------------
--- The Violet Hold ---
-----------------------

AtlasLoot_Data["TheVioletHold"] = {
	Name = BabbleZone["The Violet Hold"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Erekem"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 43363, droprate = "3%" }; --Screeching Cape
		[3] = { itemID = 43375, droprate = "5%" }; --Trousers of the Arakkoa
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 43406, droprate = "9%" }; --Cloak of the Gushing Wound
		[19] = { itemID = 43405, droprate = "9%" }; --Sabatons of Erekem
		[20] = { itemID = 43407, droprate = "0%" }; --Stormstrike Mace
	};
	{
		Name = BabbleBoss["Zuramat the Obliterator"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 43353, droprate = "4%" }; --Void Sentry Legplates
		[3] = { itemID = 43358, droprate = "1%" }; --Pendant of Shadow Beams
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 43403, droprate = "8%" }; --Shroud of Darkness
		[19] = { itemID = 43402, droprate = "8%" }; --The Obliterator Greaves
		[20] = { itemID = 43404, droprate = "8%" }; --Zuramat's Necklace
	};
	{
		Name = BabbleBoss["Xevozz"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35644, droprate = "3%" }; --Xevozz's Belt
		[3] = { itemID = 35642, droprate = "2%" }; --Riot Shield
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37867, droprate = "9%" }; --Footwraps of Teleportation
		[19] = { itemID = 37868, droprate = "9%" }; --Girdle of the Ethereal
		[20] = { itemID = 37861, droprate = "9%" }; --Necklace of Arcane Spheres
	};
	{
		Name = BabbleBoss["Ichoron"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35647, droprate = "4%" }; --Handguards of Rapid Pursuit
		[3] = { itemID = 35643, droprate = "0%" }; --Spaulders of Ichoron
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 43401, droprate = "8%" }; --Water-Drenched Robe
		[19] = { itemID = 37862, droprate = "8%" }; --Gauntlets of the Water Revenant
		[20] = { itemID = 37869, droprate = "8%" }; --Globule Signet
	};
	{
		Name = BabbleBoss["Moragg"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 43387, droprate = "3%" }; --Shoulderplates of the Beholder
		[3] = { itemID = 43382, droprate = "3%" }; --Band of Eyes
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 43410, droprate = "9%" }; --Moragg's Chestguard
		[19] = { itemID = 43408, droprate = "9%" }; --Solitare of Reflecting Beams
		[20] = { itemID = 43409, desc = "=ds=#w7#", droprate = "0%" }; --Saliva Corroded Pike
	};
	{
		Name = BabbleBoss["Lavanthor"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35646, droprate = "4%" }; --Lava Burn Gloves
		[3] = { itemID = 35645, desc = "=ds=#w5#", droprate = "5%" }; --Prison Warden's Shotgun
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37870, droprate = "0%" }; --Twin-Headed Boots
		[19] = { itemID = 37872, droprate = "0%" }; --Lavanthor's Talisman
		[20] = { itemID = 37871, droprate = "9%" }; --The Key
	};
	{
		Name = BabbleBoss["Cyanigosa"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35650, droprate = "1%" }; --Boots of the Portal Guardian
		[3] = { itemID = 35651, droprate = "1%" }; --Plate Claws of the Dragon
		[4] = { itemID = 35649, droprate = "1%" }; --Jailer's Baton
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37884, droprate = "0%" }; --Azure Cloth Bindings
		[19] = { itemID = 37886, droprate = "1%" }; --Handgrips of the Savage Emissary
		[20] = { itemID = 43500, droprate = "0%" }; --Bolstered Legplates
		[21] = { itemID = 37883, droprate = "1%" }; --Staff of Trickery
		[22] = { itemID = 37876, droprate = "2%" }; --Cyanigosa's Leggings
		[23] = { itemID = 37875, droprate = "1%" }; --Spaulders of the Violet Hold
		[24] = { itemID = 37874, droprate = "1%" }; --Gauntlets of Capture
		[25] = { itemID = 37873, droprate = "0%" }; --Mark of the War Prisoner
		[26] = { itemID = 41791, desc = "=ds=#p12# (390)", droprate = "%" }; --Design: Thick Autumn's Glow
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35654, droprate = "%" }; --Bindings of the Bastille
		[3] = { itemID = 35653, droprate = "%" }; --Dungeon Girdle
		[4] = { itemID = 35652, droprate = "%" }; --Incessant Torch
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 35654, droprate = "%" }; --Bindings of the Bastille
		[18] = { itemID = 37890, droprate = "%" }; --Chain Gang Legguards
		[19] = { itemID = 37891, droprate = "%" }; --Cast Iron Shackles
		[20] = { itemID = 35653, droprate = "%" }; --Dungeon Girdle
		[21] = { itemID = 37889, droprate = "%" }; --Prison Manifest
		[22] = { itemID = 35652, droprate = "%" }; --Incessant Torch
	};
}

---------------
--- Gundrak ---
---------------

AtlasLoot_Data["Gundrak"] = {
	Name = BabbleZone["Gundrak"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Slad'ran"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35584, droprate = "8%" }; --Embroidered Gown of Zul'drak
		[3] = { itemID = 35585, droprate = "9%" }; --Cannibal's Legguards
		[4] = { itemID = 35583, droprate = "8%" }; --Witch Doctor's Wildstaff
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37629, droprate = "1%" }; --Slithering Slippers
		[19] = { itemID = 37628, droprate = "0%" }; --Slad'ran's Coiled Cord
		[20] = { itemID = 37627, droprate = "0%" }; --Snake Den Spaulders
		[21] = { itemID = 37626, droprate = "0%" }; --Wand of Sseratus
	};
	{
		Name = BabbleBoss["Drakkari Colossus"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35591, droprate = "5%" }; --Shoulderguards of the Ice Troll
		[3] = { itemID = 35592, droprate = "6%" }; --Hauberk of Totemic Mastery
		[4] = { itemID = 35590, droprate = "6%" }; --Drakkari Hunting Bow
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37637, droprate = "0%" }; --Living Mojo Belt
		[19] = { itemID = 37636, droprate = "1%" }; --Helm of Cheated Fate
		[20] = { itemID = 37634, droprate = "0%" }; --Bracers of the Divine Elemental
		[21] = { itemID = 37635, droprate = "0%" }; --Pauldrons of the Colossus
	};
	{
		Name = BabbleBoss["Moorabi"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35588, droprate = "9%" }; --Forlorn Breastplate of War
		[3] = { itemID = 35589, droprate = "9%" }; --Arcane Focal Signet
		[4] = { itemID = 35587, droprate = "0%" }; --Frozen Scepter of Necromancy
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37630, droprate = "1%" }; --Shroud of Moorabi
		[19] = { itemID = 37633, droprate = "2%" }; --Ground Tremor Helm
		[20] = { itemID = 37632, droprate = "2%" }; --Mojo Frenzy Greaves
		[21] = { itemID = 37631, droprate = "2%" }; --Fist of the Deity
	};
	{
		Name = BabbleBoss["Eck the Ferocious"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[2] = { itemID = 43313, droprate = "3%" }; --Leggings of the Ruins Dweller
		[3] = { itemID = 43312, droprate = "3%" }; --Gorloc Muddy Footwraps
		[4] = { itemID = 43311, droprate = "2%" }; --Helmet of the Shrine
		[5] = { itemID = 43310, droprate = "3%" }; --Engraved Chestplate of Eck
	};
	{
		Name = BabbleBoss["Gal'darah"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 43305, droprate = "8%" }; --Shroud of Akali
		[3] = { itemID = 43309, droprate = "1%" }; --Amulet of the Stampede
		[4] = { itemID = 43306, droprate = "0%" }; --Gal'darah's Signet
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37643, droprate = "9%" }; --Sash of Blood Removal
		[19] = { itemID = 37644, droprate = "9%" }; --Gored Hide Legguards
		[20] = { itemID = 37645, droprate = "9%" }; --Horn-Tipped Gauntlets
		[21] = { itemID = 37642, droprate = "8%" }; --Hemorrhaging Circle
		[22] = { itemID = 37641, droprate = "9%" }; --Arcane Flame Altar-Garb
		[23] = { itemID = 37640, droprate = "0%" }; --Boots of Transformation
		[24] = { itemID = 37639, droprate = "0%" }; --Grips of the Beast God
		[25] = { itemID = 37638, droprate = "0%" }; --Offering of Sacrifice
		[26] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35594, droprate = "%" }; --Snowmelt Silken Cinch
		[3] = { itemID = 35593, droprate = "%" }; --Steel Bear Trap Bracers
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37647, droprate = "%" }; --Cloak of Bloodied Waters
		[18] = { itemID = 37648, droprate = "%" }; --Belt of Tasseled Lanterns
		[19] = { itemID = 37646, droprate = "%" }; --Burning Skull Pendant
	};
}

----------------------
--- Halls of Stone ---
----------------------

AtlasLoot_Data["HallsofStone"] = {
	Name = BabbleZone["Halls of Stone"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Maiden of Grief"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 38614, droprate = "8%" }; --Embrace of Sorrow
		[3] = { itemID = 38613, droprate = "9%" }; --Chain of Fiery Orbs
		[4] = { itemID = 38611, droprate = "9%" }; --Ringlet of Repose
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 38616, droprate = "1%" }; --Maiden's Girdle
		[19] = { itemID = 38615, droprate = "1%" }; --Lightning-Charged Gloves
		[20] = { itemID = 38617, droprate = "2%" }; --Woeful Band
		[21] = { itemID = 38618, droprate = "2%" }; --Hammer of Grief
	};
	{
		Name = BabbleBoss["Krystallus"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35673, droprate = "9%" }; --Leggings of Burning Gleam
		[3] = { itemID = 35672, droprate = "0%" }; --Hollow Geode Helm
		[4] = { itemID = 35670, droprate = "6%" }; --Brann's Lost Mining Helmet
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37652, droprate = "8%" }; --Spaulders of Krystallus
		[19] = { itemID = 37650, droprate = "7%" }; --Shardling Legguards
		[20] = { itemID = 37651, droprate = "7%" }; --The Prospector's Prize
	};
	{
		Name = BabbleBoss["The Tribunal of Ages"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35677, droprate = "5%" }; --Cosmos Vestments
		[3] = { itemID = 35676, droprate = "6%" }; --Constellation Leggings
		[4] = { itemID = 35675, droprate = "4%" }; --Linked Armor of the Sphere
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37655, droprate = "6%" }; --Mantle of the Tribunal
		[19] = { itemID = 37656, droprate = "6%" }; --Raging Construct Bands
		[20] = { itemID = 37654, droprate = "4%" }; --Sabatons of the Ages
		[21] = { itemID = 37653, droprate = "6%" }; --Sword of Justice
	};
	{
		Name = BabbleBoss["Sjonnir The Ironshaper"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35679, droprate = "8%" }; --Static Cowl
		[3] = { itemID = 35678, droprate = "8%" }; --Ironshaper's Legplates
		[4] = { itemID = 35680, droprate = "9%" }; --Amulet of Wills
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37669, droprate = "8%" }; --Leggings of the Stone Halls
		[19] = { itemID = 37668, droprate = "8%" }; --Bands of the Stoneforge
		[20] = { itemID = 37670, droprate = "8%" }; --Sjonnir's Girdle
		[21] = { itemID = 37667, droprate = "8%" }; --The Fleshshaper
		[22] = { itemID = 37666, droprate = "9%" }; --Boots of the Whirling Mist
		[23] = { itemID = 37658, droprate = "9%" }; --Sun-Emblazoned Chestplate
		[24] = { itemID = 37657, droprate = "9%" }; --Spark of Life
		[25] = { itemID = 37660, droprate = "8%" }; --Forge Ember
		[26] = { itemID = 41792, desc = "=ds=#p12# (390)", droprate = "5%" }; --Design: Deft Monarch Topaz
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 35682, droprate = ".44%" }; --Rune Giant Bindings
		[3] = { itemID = 35683, droprate = ".46%" }; --Palladium Ring
		[4] = { itemID = 35681, droprate = ".41%" }; --Unrelenting Blade
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37673, droprate = "%" }; --Dark Runic Mantle
		[18] = { itemID = 37672, droprate = "%" }; --Patina-Coated Breastplate
		[19] = { itemID = 37671, droprate = "%" }; --Refined Ore Gloves
	};
}

--------------------------
--- Halls of Lightning ---
--------------------------

AtlasLoot_Data["HallsofLightning"] = {
	Name = BabbleZone["Halls of Lightning"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["General Bjarngrim"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36982, droprate = "2%" }; --Mantle of Electrical Charges
		[3] = { itemID = 36979, droprate = "2%" }; --Bjarngrim Family Signet
		[4] = { itemID = 36980, droprate = "2%" }; --Hewn Sparring Quarterstaff
		[5] = { itemID = 36981, droprate = "3%" }; --Hardened Vrykul Throwing Axe
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37825, droprate = "1%" }; --Traditionally Dyed Handguards
		[19] = { itemID = 37818, droprate = "1%" }; --Patroller's War-Kilt
		[20] = { itemID = 37814, droprate = "1%" }; --Iron Dwarf Smith Pauldrons
		[21] = { itemID = 37826, droprate = "2%" }; --The General's Steel Girdle
	};
	{
		Name = BabbleBoss["Volkhan"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36983, droprate = "2%" }; --Cape of Seething Steam
		[3] = { itemID = 36985, droprate = "3%" }; --Volkhan's Hood
		[4] = { itemID = 36986, droprate = "2%" }; --Kilt of Molten Golems
		[5] = { itemID = 36984, droprate = "2%" }; --Eternally Folded Blade
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37840, droprate = "1%" }; --Shroud of Reverberation
		[19] = { itemID = 37843, droprate = "1%" }; --Giant-Hair Woven Gloves
		[20] = { itemID = 37842, droprate = "1%" }; --Belt of Vivacity
		[21] = { itemID = 37841, droprate = "1%" }; --Slag Footguards
	};
	{
		Name = BabbleBoss["Ionar"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 39536, droprate = "2%" }; --Thundercloud Grasps
		[3] = { itemID = 39657, droprate = "1%" }; --Tornado Cuffs
		[4] = { itemID = 39534, droprate = "1%" }; --Pauldrons of the Lightning Revenant
		[5] = { itemID = 39535, droprate = "1%" }; --Ionar's Girdle
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37846, droprate = "0%" }; --Charged-Bolt Grips
		[19] = { itemID = 37845, droprate = "1%" }; --Cord of Swirling Winds
		[20] = { itemID = 37826, droprate = "2%" }; --The General's Steel Girdle
		[21] = { itemID = 37844, droprate = "1%" }; --Winged Talisman
	};
	{
		Name = BabbleBoss["Loken"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36991, droprate = "2%" }; --Raiments of the Titans
		[3] = { itemID = 36996, droprate = "2%" }; --Hood of the Furtive Assassin
		[4] = { itemID = 36992, droprate = "2%" }; --Leather-Braced Chain Leggings
		[5] = { itemID = 36995, droprate = "2%" }; --Fists of Loken
		[6] = { itemID = 36988, droprate = "2%" }; --Chaotic Spiral Amulet
		[7] = { itemID = 36993, droprate = "8%" }; --Seal of the Pantheon
		[8] = { itemID = 36994, desc = "=ds=#w5#", droprate = "1%" }; --Projectile Activator
		[9] = { itemID = 36989, droprate = "1%" }; --Ancient Measuring Rod
		[10] = { itemID = 41799, desc = "=ds=#p12# (420)", droprate = "1%" }; --Design: Eternal Earthsiege Diamond
		[12] = { itemID = 43151, "=ds=#m3#" }; --Loken's Tongue
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37854, droprate = "8%" }; --Woven Bracae Leggings
		[19] = { itemID = 37853, droprate = "8%" }; --Advanced Tooled-Leather Bands
		[20] = { itemID = 37855, droprate = "9%" }; --Mail Girdle of the Audient Earth
		[21] = { itemID = 37852, droprate = "8%" }; --Colossal Skull-Clad Cleaver
		[22] = { itemID = 37851, droprate = "9%" }; --Ornate Woolen Stola
		[23] = { itemID = 37850, droprate = "9%" }; --Flowing Sash of Order
		[24] = { itemID = 37849, droprate = "9%" }; --Planetary Helm
		[25] = { itemID = 37848, droprate = "8%" }; --Lightning Giant Staff
		[26] = { itemID = 41799, desc = "=ds=#p12# (420)", droprate = "1%" }; --Design: Eternal Earthsiege Diamond
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36997, droprate = "%" }; --Sash of the Hardened Watcher
		[3] = { itemID = 37000, droprate = "%" }; --Storming Vortex Bracers
		[4] = { itemID = 36999, droprate = "%" }; --Boots of the Terrestrial Guardian
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37858, droprate = "%" }; --Awakened Handguards
		[18] = { itemID = 37857, droprate = "%" }; --Helm of the Lightning Halls
		[19] = { itemID = 37856, droprate = "%" }; --Librarian's Paper Cutter
	};
}

---------------------------------------
--- Caverns of Time: Old Stratholme ---
---------------------------------------

AtlasLoot_Data["CoTStratholme"] = {
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["The Culling of Stratholme"];
	DisplayName = BabbleZone["The Culling of Stratholme"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Meathook"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37083, droprate = "3%" }; --Kilt of Sewn Flesh
		[3] = { itemID = 37082, droprate = "2%" }; --Slaughterhouse Sabatons
		[4] = { itemID = 37079, droprate = "3%" }; --Enchanted Wire Stitching
		[5] = { itemID = 37081, droprate = "2%" }; --Meathook's Slicer
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37680, droprate = "2%" }; --Belt of Unified Souls
		[19] = { itemID = 37678, droprate = "2%" }; --Bile-Cured Gloves
		[20] = { itemID = 37679, droprate = "1%" }; --Spaulders of the Abomination
		[21] = { itemID = 37675, droprate = "3%" }; --Legplates of Steel Implants
	};
	{
		Name = BabbleBoss["Salramm the Fleshcrafter"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37084, droprate = "2%" }; --Flowing Cloak of Command
		[3] = { itemID = 37095, droprate = "3%" }; --Waistband of the Thuzadin
		[4] = { itemID = 37088, droprate = "2%" }; --Spiked Metal Cilice
		[5] = { itemID = 37086, droprate = "3%" }; --Tome of Salramm
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37684, droprate = "2%" }; --Forgotten Shadow Hood
		[19] = { itemID = 37682, droprate = "2%" }; --Bindings of Dark Will
		[20] = { itemID = 37683, droprate = "2%" }; --Necromancer's Amulet
		[21] = { itemID = 37681, droprate = "2%" }; --Gavel of the Fleshcrafter
	};
	{
		Name = BabbleBoss["Chrono-Lord Epoch"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37106, droprate = "3%" }; --Ouroboros Belt
		[3] = { itemID = 37105, droprate = "4%" }; --Treads of Altered History
		[4] = { itemID = 37096, droprate = "2%" }; --Necklace of the Chrono-Lord
		[5] = { itemID = 37099, droprate = "2%" }; --Sempiternal Staff
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37687, droprate = "3%" }; --Gloves of Distorted Time
		[19] = { itemID = 37686, droprate = "3%" }; --Cracked Epoch Grasps
		[20] = { itemID = 37688, droprate = "3%" }; --Legplates of the Infinite Drakonid
		[21] = { itemID = 37685, droprate = "3%" }; --Mobius Band
	};
	{
		Name = BabbleBoss["Infinite Corruptor"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[2] = { itemID = 43951, desc = "=ds=#e12#", droprate = "00%" }; --Reins of the Bronze Drake
	};
	{
		Name = BabbleBoss["Mal'Ganis"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37113, droprate = "6%" }; --Demonic Fabric Bands
		[3] = { itemID = 37114, droprate = "9%" }; --Gloves of Northern Lordaeron
		[4] = { itemID = 37110, droprate = "8%" }; --Gauntlets of Dark Conversion
		[5] = { itemID = 37109, droprate = "8%" }; --Discarded Silver Hand Spaulders
		[6] = { itemID = 37111, droprate = "4%" }; --Soul Preserver
		[7] = { itemID = 37108, droprate = "6%" }; --Dreadlord's Blade
		[8] = { itemID = 37112, droprate = "9%" }; --Beguiling Scepter
		[9] = { itemID = 37107, droprate = "8%" }; --Leeka's Shield
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37696, droprate = "1%" }; --Plague-Infected Bracers
		[19] = { itemID = 37695, droprate = "1%" }; --Legguards of Nature's Power
		[20] = { itemID = 37694, droprate = "1%" }; --Band of Guile
		[21] = { itemID = 37693, droprate = "1%" }; --Greed
		[22] = { itemID = 43085, droprate = "0%" }; --Royal Crest of Lordaeron
		[23] = { itemID = 37691, droprate = "4%" }; --Mantle of Deceit
		[24] = { itemID = 37690, droprate = "4%" }; --Pauldrons of Destiny
		[25] = { itemID = 37689, droprate = "4%" }; --Pendant of the Nathrezim
		[26] = { itemID = 37692, desc = "=ds=#w5#", droprate = "4%" }; --Pierce's Pistol
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 37117, droprate = "%" }; --King's Square Bracers
		[2] = { itemID = 37116, droprate = "%" }; --Epaulets of Market Row
		[3] = { itemID = 37115, droprate = "%" }; --Crusader's Square Pauldrons
	};
}

------------------------
--- Utgarde Pinnacle ---
------------------------

AtlasLoot_Data["UtgardePinnacle"] = {
	Name = BabbleZone["Utgarde Pinnacle"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Skadi the Ruthless"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37043, droprate = "4%" }; --Tear-Linked Gauntlets
		[3] = { itemID = 37040, droprate = "3%" }; --Svala's Bloodied Shackles
		[4] = { itemID = 37037, droprate = "2%" }; --Ritualistic Athame
		[5] = { itemID = 37038, droprate = "1%" }; --Brazier Igniter
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37370, droprate = "1%" }; --Cuffs of the Trussed Hall
		[19] = { itemID = 37369, droprate = "2%" }; --Sorrowgrave's Breeches
		[20] = { itemID = 37368, droprate = "2%" }; --Silent Spectator Shoulderpads
		[21] = { itemID = 37367, droprate = "2%" }; --Echoing Stompers
	};
	{
		Name = BabbleBoss["King Ymiron"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37048, droprate = "4%" }; --Shroud of Resurrection
		[3] = { itemID = 37052, droprate = "1%" }; --Reanimated Armor
		[4] = { itemID = 37051, droprate = "1%" }; --Seal of Valgarde
		[5] = { itemID = 37050, droprate = "4%" }; --Trophy Gatherer
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37374, droprate = "2%" }; --Ravenous Leggings of the Furbolg
		[19] = { itemID = 37373, droprate = "1%" }; --Massive Spaulders of the Jormungar
		[20] = { itemID = 37376, droprate = "1%" }; --Ferocious Pauldrons of the Rhino
		[21] = { itemID = 37371, droprate = "2%" }; --Ring of the Frenzied Wolvar
	};
	{
		Name = BabbleBoss["Svala Sorrowgrave"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37055, droprate = "3%" }; --Silken Amice of the Ymirjar
		[3] = { itemID = 37057, droprate = "3%" }; --Drake Rider's Tunic
		[4] = { itemID = 37056, droprate = "2%" }; --Harpooner's Striders
		[5] = { itemID = 37053, droprate = "0%" }; --Amulet of Deflected Blows
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 44151, desc = "=ds=#e12#", droprate = "%" }; --Reins of the Blue Proto-Drake
		[19] = { itemID = 37389, droprate = "1%" }; --Crenelation Leggings
		[20] = { itemID = 37379, droprate = "2%" }; --Skadi's Iron Belt
		[21] = { itemID = 37377, droprate = "1%" }; --Netherbreath Spellblade
		[22] = { itemID = 37384, droprate = "1%" }; --Staff of Wayward Principles
	};
	{
		Name = BabbleBoss["Gortok Palehoof"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37067, droprate = "9%" }; --Ceremonial Pyre Mantle
		[3] = { itemID = 37062, droprate = "1%" }; --Crown of Forgotten Kings
		[4] = { itemID = 37066, droprate = "3%" }; --Ancient Royal Legguards
		[5] = { itemID = 37058, droprate = "2%" }; --Signet of Ranulf
		[6] = { itemID = 37064, droprate = "4%" }; --Vestige of Haldor
		[7] = { itemID = 37060, droprate = "0%" }; --Jeweled Coronation Sword
		[8] = { itemID = 37065, droprate = "0%" }; --Ymiron's Blade
		[9] = { itemID = 37061, droprate = "3%" }; --Tor's Crest
		[10] = { itemID = 41797, desc = "=ds=#p12# (420)", droprate = "0%" }; --Design: Austere Earthsiege Diamond
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37408, droprate = "9%" }; --Girdle of Bane
		[19] = { itemID = 37409, droprate = "9%" }; --Gilt-Edged Leather Gauntlets
		[20] = { itemID = 37407, droprate = "0%" }; --Sovereign's Belt
		[21] = { itemID = 37401, droprate = "8%" }; --Red Sword of Courage
		[22] = { itemID = 37398, droprate = "0%" }; --Mantle of Discarded Ways
		[23] = { itemID = 37395, droprate = "0%" }; --Ornamented Plate Regalia
		[24] = { itemID = 37397, droprate = "0%" }; --Gold Amulet of Kings
		[25] = { itemID = 37390, droprate = "0%" }; --Meteorite Whetstone
		[26] = { itemID = 41797, desc = "=ds=#p12# (420)", droprate = "0%" }; --Design: Austere Earthsiege Diamond
		[27] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 37070, droprate = "%" }; --Tundra Wolf Boots
		[3] = { itemID = 37069, droprate = "%" }; --Dragonflayer Seer's Bindings
		[4] = { itemID = 37068, droprate = "%" }; --Berserker's Sabatons
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37587, droprate = "%" }; --Ymirjar Physician's Robe
		[18] = { itemID = 37590, droprate = "%" }; --Bands of Fading Light
		[19] = { itemID = 37410, droprate = "%" }; --Tracker's Balanced Knives
	};
}

------------------
--- The Oculus ---
------------------

AtlasLoot_Data["TheOculus"] = {
	Name = BabbleZone["The Oculus"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Drakos the Interrogator"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36945, droprate = "1%" }; --Verdisa's Cuffs of Dreaming
		[3] = { itemID = 36946, droprate = "3%" }; --Runic Cage Chestpiece
		[4] = { itemID = 36943, droprate = "1%" }; --Timeless Beads of Eternos
		[5] = { itemID = 36944, droprate = "5%" }; --Lifeblade of Belgaristrasz
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37258, droprate = "2%" }; --Drakewing Raiments
		[19] = { itemID = 37256, droprate = "3%" }; --Scaled Armor of Drakos
		[20] = { itemID = 37257, droprate = "3%" }; --Band of Torture
		[21] = { itemID = 37255, droprate = "3%" }; --The Interrogator
	};
	{
		Name = BabbleBoss["Mage-Lord Urom"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36947, droprate = "1%" }; --Centrifuge Core Cloak
		[3] = { itemID = 36949, droprate = "1%" }; --Gloves of the Azure-Lord
		[4] = { itemID = 36948, droprate = "2%" }; --Horned Helm of Varos
		[5] = { itemID = 36950, droprate = "3%" }; --Wing Commander's Breastplate
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37261, droprate = "2%" }; --Gloves of Radiant Light
		[19] = { itemID = 37262, droprate = "1%" }; --Azure Ringmail Leggings
		[20] = { itemID = 37263, droprate = "1%" }; --Legplates of the Oculus Guardian
		[21] = { itemID = 37260, droprate = "1%" }; --Cloudstrider's Waraxe
	};
	{
		Name = BabbleBoss["Varos Cloudstrider"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36954, droprate = "1%" }; --The Conjurer's Slippers
		[3] = { itemID = 36951, droprate = "0%" }; --Sidestepping Handguards
		[4] = { itemID = 36953, droprate = "1%" }; --Spaulders of Skillful Maneuvers
		[5] = { itemID = 36952, droprate = "8%" }; --Girdle of Obscuring
		[7] = { itemID = 21525, "=ds=#s1# =q2=#m28#" }; --Green Winter Hat
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37289, droprate = "8%" }; --Sash of Phantasmal Images
		[19] = { itemID = 37288, droprate = "8%" }; --Catalytic Bands
		[20] = { itemID = 37195, droprate = "0%" }; --Band of Enchanted Growth
		[21] = { itemID = 37264, droprate = "0%" }; --Pendulum of Telluric Currents
		[23] = { itemID = 21525, "=ds=#s1# =q2=#m28#" }; --Green Winter Hat
	};
	{
		Name = BabbleBoss["Ley-Guardian Eregos"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36973, droprate = "8%" }; --Vestments of the Scholar
		[3] = { itemID = 36971, droprate = "7%" }; --Headguard of Westrift
		[4] = { itemID = 36969, droprate = "4%" }; --Helm of the Ley-Guardian
		[5] = { itemID = 36974, droprate = "8%" }; --Eredormu's Ornamented Chestguard
		[6] = { itemID = 36961, droprate = "7%" }; --Dragonflight Great-Ring
		[7] = { itemID = 36972, droprate = "5%" }; --Tome of Arcane Phenomena
		[8] = { itemID = 36962, droprate = "7%" }; --Wyrmclaw Battleaxe
		[9] = { itemID = 36975, droprate = "7%" }; --Malygos's Favor
		[10] = { itemID = 41798, desc = "=ds=#p12# (420)", droprate = "%" }; --Design: Bracing Earthsiege Diamond
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 37361, droprate = "4%" }; --Cuffs of Winged Levitation
		[19] = { itemID = 37363, droprate = "3%" }; --Gauntlets of Dragon Wrath
		[20] = { itemID = 37362, droprate = "3%" }; --Leggings of Protective Auras
		[21] = { itemID = 37360, droprate = "4%" }; --Staff of Draconic Combat
		[22] = { itemID = 37291, droprate = "4%" }; --Ancient Dragon Spirit Cape
		[23] = { itemID = 37294, droprate = "4%" }; --Crown of Unbridled Magic
		[24] = { itemID = 37293, droprate = "5%" }; --Mask of the Watcher
		[25] = { itemID = 37292, droprate = "5%" }; --Ley-Guardian's Legguards
		[26] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
		[28] = { itemID = 52676, "=ds=" .. AL["Random Heroic Reward"] }; --Cache of the Ley-Guardian
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 36978, droprate = ".45%" }; --Ley-Whelphide Belt
		[3] = { itemID = 36977, droprate = "%" }; --Bindings of the Construct
		[4] = { itemID = 36976, droprate = "%" }; --Ring-Lord's Leggings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 37366, droprate = "%" }; --Drake-Champion's Bracers
		[18] = { itemID = 37365, droprate = "%" }; --Bands of the Sky Ring
		[19] = { itemID = 37290, droprate = "%" }; --Dragon Prow Amulet
		[20] = { itemID = 37364, droprate = "%" }; --Frostbridge Orb
	};
};

--------------------------
--- The Forge of Souls ---
--------------------------

AtlasLoot_Data["ForgeofSouls"] = {
	Name = BabbleZone["The Forge of Souls"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Bronjahm"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49788, "=ds=#s9#" }; --Cold Sweat Grips
		[3] = { itemID = 49785, "=ds=#s3#" }; --Bewildering Shoulderpads
		[4] = { itemID = 49786, "=ds=#s5#" }; --Robes of the Cheating Heart
		[5] = { itemID = 49787, "=ds=#s8#" }; --Seven Stormy Mornings
		[6] = { itemID = 49784, "=ds=#s11#" }; --Minister's Number One Legplates
		[7] = { itemID = 49783, "=ds=#h1#" }; --Lucky Old Sun
		[9] = { itemID = 50317, "=ds=#e1#" }; --Papa's New Bag
		[10] = { itemID = 50316, "=ds=#e1#" }; --Papa's Brand New Bag
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50193, "=ds=#s3#" }; --Very Fashionable Shoulders
		[18] = { itemID = 50197, "=ds=#s1#" }; --Eyes of Bewilderment
		[19] = { itemID = 50194, "=ds=#s9#" }; --Weeping Gauntlets
		[20] = { itemID = 50196, "=ds=#s2#" }; --Love's Prisoner
		[21] = { itemID = 50191, "=ds=#h1#" }; --Nighttime
		[22] = { itemID = 50169, "=ds=#w11#" }; --Papa's Brand New Knife
		[24] = { itemID = 50317, "=ds=#e1#" }; --Papa's New Bag
		[25] = { itemID = 50316, "=ds=#e1#" }; --Papa's Brand New Bag
	};
	{
		Name = BabbleBoss["Devourer of Souls"];
		[1] = { itemID = 49792, "=ds=#s4#" }; --Accursed Crawling Cape
		[2] = { itemID = 49796, "=ds=#s10#" }; --Essence of Anger
		[3] = { itemID = 49798, "=ds=#s12#" }; --Soul Screaming Boots
		[4] = { itemID = 49791, "=ds=#s5#" }; --Lost Reliquary Chestguard
		[5] = { itemID = 49797, "=ds=#s8#" }; --Brace Guards of the Starless Night
		[6] = { itemID = 49794, "=ds=#s11#" }; --Legplates of Frozen Granite
		[7] = { itemID = 49795, "=ds=#s12#" }; --Sollerets of Suffering
		[16] = { itemID = 49799, "=ds=#s2#" }; --Coil of Missing Gems
		[17] = { itemID = 49800, "=ds=#s13#" }; --Spiteful Signet
		[19] = { itemID = 49789, "=ds=#h1#" }; --Heartshiver
		[20] = { itemID = 49790, "=ds=#w9#" }; --Blood Boil Lancet
		[21] = { itemID = 49793, "=ds=#w9#" }; --Tower of the Mouldering Corpse
	};
	{
		Name = BabbleBoss["Devourer of Souls"];
		[1] = { itemID = 50213, "=ds=#s5#" }; --Mord'rethar Robes
		[2] = { itemID = 50206, "=ds=#s1#" }; --Frayed Scoundrel's Cap
		[3] = { itemID = 50212, "=ds=#s9#" }; --Essence of Desire
		[4] = { itemID = 50214, "=ds=#s1#" }; --Helm of the Spirit Shock
		[5] = { itemID = 50209, "=ds=#s8#" }; --Essence of Suffering
		[6] = { itemID = 50208, "=ds=#s3#" }; --Pauldrons of the Devourer
		[7] = { itemID = 50207, "=ds=#s12#" }; --Black Spire Sabatons
		[8] = { itemID = 50215, "=ds=#s12#" }; --Recovered Reliquary Boots
		[16] = { itemID = 50211, "=ds=#s2#" }; --Arcane Loops of Anger
		[17] = { itemID = 50198, "=ds=#s14#" }; --Needle-Encrusted Scorpion
		[19] = { itemID = 50203, "=ds=#h1#" }; --Blood Weeper
		[20] = { itemID = 50210, "=ds=#h3#" }; --Seethe
	};
}

--------------------
--- Pit of Saron ---
--------------------

AtlasLoot_Data["PitofSaron"] = {
	Name = BabbleZone["Pit of Saron"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Forgemaster Garfrost"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49805, "=ds=#s12#" }; --Ice-Steeped Sandals
		[3] = { itemID = 49806, "=ds=#s10#" }; --Flayer's Black Belt
		[4] = { itemID = 49804, "=ds=#s1#" }; --Polished Mirror Helm
		[5] = { itemID = 49803, "=ds=#s13#" }; --Ring of Carnelian and Bone
		[6] = { itemID = 49802, "=ds=#h2#" }; --Garfrost's Two-Ton Hammer
		[7] = { itemID = 49801, "=ds=#w9#" }; --Unspeakable Secret
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50233, "=ds=#s3#" }; --Spurned Val'kyr Shoulderguards
		[18] = { itemID = 50234, "=ds=#s3#" }; --Shoulderplates of Frozen Blood
		[19] = { itemID = 50230, "=ds=#s8#" }; --Malykriss Vambraces
		[20] = { itemID = 50229, "=ds=#s11#" }; --Legguards of the Frosty Depths
		[21] = { itemID = 50228, "=ds=#s2#" }; --Barbed Ymirheim Choker
		[22] = { itemID = 50227, "=ds=#h3#" }; --Surgeon's Needle
	};
	{
		Name = AL["Krick and Ick"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49809, "=ds=#s8#" }; --Wristguards of Subterranean Moss
		[3] = { itemID = 49810, "=ds=#s10#" }; --Scabrous Zombie Leather Belt
		[4] = { itemID = 49811, "=ds=#s11#" }; --Black Dragonskin Breeches
		[5] = { itemID = 49808, "=ds=#s10#" }; --Bent Gold Belt
		[6] = { itemID = 49812, "=ds=#s13#" }; --Purloined Wedding Ring
		[7] = { itemID = 49807, "=ds=#h1#" }; --Krick's Beetle Stabber
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50266, "=ds=#s5#" }; --Ancient Polar Bear Hide
		[18] = { itemID = 50263, "=ds=#s10#" }; --Braid of Salt and Fire
		[19] = { itemID = 50264, "=ds=#s8#" }; --Chewed Leather Wristguards
		[20] = { itemID = 50265, "=ds=#s11#" }; --Blackened Ghoul Skin Leggings
		[21] = { itemID = 50235, "=ds=#s14#" }; --Ick's Rotting Thumb
		[22] = { itemID = 50262, "=ds=#w3#" }; --Felglacier Bolter
	};
	{
		Name = BabbleBoss["Scourgelord Tyrannus"];
		[1] = { itemID = 49823, "=ds=#s4#" }; --Cloak of the Fallen Cardinal
		[2] = { itemID = 49825, "=ds=#s5#" }; --Palebone Robes
		[3] = { itemID = 49822, "=ds=#s11#" }; --Rimewoven Silks
		[4] = { itemID = 49817, "=ds=#s11#" }; --Shaggy Wyrmleather Leggings
		[5] = { itemID = 49824, "=ds=#s1#" }; --Horns of the Spurned Val'kyr
		[6] = { itemID = 49826, "=ds=#s5#" }; --Shroud of Rime
		[7] = { itemID = 49820, "=ds=#s8#" }; --Gondria's Spectral Bracer
		[8] = { itemID = 49819, "=ds=#s1#" }; --Skeleton Lord's Cranium
		[9] = { itemID = 49816, "=ds=#s5#" }; --Scourgelord's Frigid Chestplate
		[16] = { itemID = 49818, "=ds=#s2#" }; --Painfully Sharp Choker
		[18] = { itemID = 49821, "=ds=#w8#" }; --Protector of Frigid Souls
		[19] = { itemID = 49813, "=ds=#w5#" }; --Rimebane Rifle
	};
	{
		Name = BabbleBoss["Scourgelord Tyrannus"];
		[1] = { itemID = 50286, "=ds=#s12#" }; --Prelate's Snowshoes
		[2] = { itemID = 50269, "=ds=#s11#" }; --Fleshwerk Leggings
		[3] = { itemID = 50270, "=ds=#s10#" }; --Belt of Rotted Fingernails
		[4] = { itemID = 50283, "=ds=#s12#" }; --Mudslide Boots
		[5] = { itemID = 50272, "=ds=#s5#" }; --Frost Wyrm Ribcage
		[6] = { itemID = 50285, "=ds=#s5#" }; --Icebound Bronze Cuirass
		[7] = { itemID = 50284, "=ds=#s9#" }; --Rusty Frozen Fingerguards
		[16] = { itemID = 50271, "=ds=#s13#" }; --Band of Stained Souls
		[17] = { itemID = 50259, "=ds=#s14#" }; --Nevermelting Ice Crystal
		[19] = { itemID = 50268, "=ds=#h1#" }; --Rimefang's Claw
		[20] = { itemID = 50267, "=ds=#h2#" }; --Tyrannical Beheader
		[21] = { itemID = 50273, "=ds=#w9#" }; --Engraved Gargoyle Femur
	};
}

---------------------------
--- Halls of Reflection ---
---------------------------

AtlasLoot_Data["HallsofReflection"] = {
	Name = BabbleZone["Halls of Reflection"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Falric"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49832, "=ds=#s4#" }; --Eerie Runeblade Polisher
		[3] = { itemID = 49828, "=ds=#s9#" }; --Marwyn's Macabre Fingertips
		[4] = { itemID = 49830, "=ds=#s1#" }; --Fallen Sentry's Hood
		[5] = { itemID = 49831, "=ds=#s12#" }; --Muddied Boots of Brill
		[6] = { itemID = 49829, "=ds=#s3#" }; --Valonforth's Tarnished Pauldrons
		[7] = { itemID = 49827, "=ds=#h1#" }; --Ghoulslicer
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50292, "=ds=#s8#" }; --Bracer of Worn Molars
		[18] = { itemID = 50293, "=ds=#s3#" }; --Spaulders of Black Betrayal
		[19] = { itemID = 50295, "=ds=#s12#" }; --Spiked Toestompers
		[20] = { itemID = 50294, "=ds=#s5#" }; --Chestpiece of High Treason
		[21] = { itemID = 50290, "=ds=#h1#" }; --Falric's Wrist-Chopper
		[22] = { itemID = 50291, "=ds=#w12#" }; --Soulsplinter
	};
	{
		Name = BabbleBoss["Marwyn"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49834, "=ds=#s3#" }; --Frayed Abomination Stitching Shoulders
		[3] = { itemID = 49838, "=ds=#s9#" }; --Carpal Tunnelers
		[4] = { itemID = 49837, "=ds=#s9#" }; --Mitts of Burning Hail
		[5] = { itemID = 49836, "=ds=#s11#" }; --Frostsworn Bone Leggings
		[6] = { itemID = 49833, "=ds=#h3#" }; --Splintered Icecrown Parapet
		[7] = { itemID = 49835, "=ds=#w8#" }; --Splintered Door of the Citadel
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50298, "=ds=#s1#" }; --Sightless Crown of Ulmaas
		[18] = { itemID = 50299, "=ds=#s9#" }; --Suspiciously Soft Gloves
		[19] = { itemID = 50300, "=ds=#s5#" }; --Choking Hauberk
		[20] = { itemID = 50297, "=ds=#s5#" }; --Frostsworn Bone Chestpiece
		[21] = { itemID = 50260, "=ds=#s14#" }; --Ephemeral Snowflake
		[22] = { itemID = 50296, "=ds=#w7#" }; --Orca-Hunter's Harpoon
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 49842, "=ds=#s4#" }; --Tapestry of the Frozen Throne
		[2] = { itemID = 49849, "=ds=#s1#" }; --Tattered Glacial-Woven Hood
		[3] = { itemID = 49848, "=ds=#s3#" }; --Grim Lasher Shoulderguards
		[4] = { itemID = 49841, "=ds=#s5#" }; --Blackened Geist Ribs
		[5] = { itemID = 49847, "=ds=#s11#" }; --Legguards of Untimely Demise
		[6] = { itemID = 49851, "=ds=#s1#" }; --Greathelm of the Silver Hand
		[7] = { itemID = 49843, "=ds=#s9#" }; --Crystalline Citadel Gauntlets
		[16] = { itemID = 49846, "=ds=#h3#" }; --Chilled Heart of the Glacier
		[17] = { itemID = 49839, "=ds=#h2#" }; --Mourning Malice
		[18] = { itemID = 49840, "=ds=#h1#" }; --Hate-Forged Cleaver
		[19] = { itemID = 49845, "=ds=#h3#" }; --Bone Golem Scapula
		[20] = { itemID = 49844, "=ds=#w2#" }; --Crypt Fiend Slayer
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 50314, "=ds=#s10#" }; --Strip of Remorse
		[2] = { itemID = 50312, "=ds=#s5#" }; --Chestguard of Broken Branches
		[3] = { itemID = 50308, "=ds=#s12#" }; --Blighted Leather Footpads
		[4] = { itemID = 50304, "=ds=#s9#" }; --Hoarfrost Gauntlets
		[5] = { itemID = 50311, "=ds=#s1#" }; --Second Helm of the Executioner
		[6] = { itemID = 50305, "=ds=#s12#" }; --Grinning Skull Boots
		[8] = { itemID = 50310, "=ds=#s2#" }; --Fossilized Ammonite Choker
		[9] = { itemID = 50313, "=ds=#s13#" }; --Oath of Empress Zoe
		[10] = { itemID = 50306, "=ds=#s13#" }; --The Lady's Promise
		[11] = { itemID = 50309, "=ds=#s15#" }; --Shriveled Heart
		[16] = { itemID = 50302, "=ds=#h1#" }; --Liar's Tongue
		[17] = { itemID = 50303, "=ds=#h1#" }; --Black Icicle
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 49854, "=ds=#s3#" }; --Mantle of Tattered Feathers
		[3] = { itemID = 49855, "=ds=#s9#" }; --Plated Grips of Korth'azz
		[4] = { itemID = 49853, "=ds=#s10#" }; --Titanium Links of Lore
		[5] = { itemID = 49852, "=ds=#w12#" }; --Coffin Nail
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 50318, "=ds=#s8#" }; --Ghostly Wristwraps
		[18] = { itemID = 50315, "=ds=#h3#" }; --Seven-Fingered Claws
		[19] = { itemID = 50319, "=ds=#h1#" }; --Unsharpened Ice Razor
		[21] = { itemID = 50380, "=ds=#m2#" }; --Battered Hilt
		[22] = { itemID = 50379, "=ds=#m2#" }; --Battered Hilt
		[23] = { itemID = 50047, "=q1=#m4#: =ds=#h3#" }; --Quel'Delar, Lens of the Mind
		[24] = { itemID = 50046, "=q1=#m4#: =ds=#h1#" }; --Quel'Delar, Cunning of the Shadows
		[25] = { itemID = 50049, "=q1=#m4#: =ds=#h2#" }; --Quel'Delar, Ferocity of the Scorned
		[26] = { itemID = 50048, "=q1=#m4#: =ds=#h2#" }; --Quel'Delar, Might of the Faithful
		[27] = { itemID = 50051, "=q1=#m4#: =ds=#h3#" }; --Hammer of Purified Flame
		[28] = { itemID = 50050, "=q1=#m4#: =ds=#h1#" }; --Cudgel of Furious Justice
		[29] = { itemID = 50052, "=q1=#m4#: =ds=#h2#" }; --Lightborn Spire
	};
}


-----------------------------
--- Trial of the Champion ---
-----------------------------

AtlasLoot_Data["TrialoftheChampion"] = {
	Name = BabbleZone["Trial of the Champion"];
	Type = "WrathDungeon";
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 47173, "=ds=#s8#" }; --Bindings of the Wicked
		[3] = { itemID = 47170, "=ds=#s10#" }; --Belt of Fierce Competition
		[4] = { itemID = 47174, "=ds=#s10#" }; --Binding of the Tranquil Glade
		[5] = { itemID = 47175, "=ds=#s12#" }; --Scale Boots of the Outlander
		[6] = { itemID = 47172, "=ds=#s1#" }; --Helm of the Bested Gallant
		[7] = { itemID = 47171, "=ds=#s11#" }; --Legguards of Abandoned Fealty
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 47249, "=ds=#s11#" }; --Leggings of the Snowy Bramble
		[19] = { itemID = 47248, "=ds=#s12#" }; --Treads of Dismal Fortune
		[20] = { itemID = 47250, "=ds=#s3#" }; --Pauldrons of the Deafening Gale
		[21] = { itemID = 47244, "=ds=#s5#" }; --Chestguard of the Ravenous Fiend
		[22] = { itemID = 47243, "=ds=#s13#" }; --Mark of the Relentless
		[23] = { itemID = 47493, "=ds=#h2#" }; --Edge of Ruin
		[24] = { itemID = 44990, desc = "=ds=#e15#", droprate = "00%" }; --Champion's Seal
	};
	{
		Name = BabbleBoss["Argent Confessor Paletress"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 47181, "=ds=#s10#" }; --Belt of the Churning Blaze
		[3] = { itemID = 47218, "=ds=#s10#" }; --The Confessor's Binding
		[4] = { itemID = 47185, "=ds=#s11#" }; --Leggings of the Haggard Apprentice
		[5] = { itemID = 47217, "=ds=#s1#" }; --Gaze of the Somber Keeper
		[6] = { itemID = 47177, "=ds=#s9#" }; --Gloves of the Argent Fanatic
		[7] = { itemID = 47178, "=ds=#s5#" }; --Carapace of Grim Visions
		[8] = { itemID = 47211, "=ds=#s8#" }; --Wristguards of Ceaseless Regret
		[9] = { itemID = 47176, "=ds=#s5#" }; --Breastplate of the Imperial Joust
		[10] = { itemID = 47212, "=ds=#s9#" }; --Mercy's Hold
		[11] = { itemID = 47219, "=ds=#s2#" }; --Brilliant Hailstone Amulet
		[12] = { itemID = 47213, "=ds=#s14#" }; --Abyssal Rune
		[13] = { itemID = 47214, "=ds=#s14#" }; --Banner of Victory
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 47498, "=ds=#s9#" }; --Gloves of Dismal Fortune
		[19] = { itemID = 47496, "=ds=#s8#" }; --Armbands of the Wary Lookout
		[20] = { itemID = 47245, "=ds=#s3#" }; --Pauldrons of Concealed Loathing
		[21] = { itemID = 47497, "=ds=#s1#" }; --Helm of the Crestfallen Challenger
		[22] = { itemID = 47514, "=ds=#s3#" }; --Regal Aurous Shoulderplates
		[23] = { itemID = 47510, "=ds=#s10#" }; --Trueheart Girdle
		[24] = { itemID = 47495, "=ds=#s11#" }; --Legplates of Relentless Onslaught
		[25] = { itemID = 47511, "=ds=#s12#" }; --Plated Greaves of Providence
		[26] = { itemID = 47494, "=ds=#s2#" }; --Ancient Pendant of Arathor
		[27] = { itemID = 47512, "=ds=#s13#" }; --Sinner's Confession
		[28] = { itemID = 47500, "=ds=#h1#" }; --Peacekeeper Blade
		[29] = { itemID = 47522, "=ds=#w7#" }; --Marrowstrike
		[30] = { itemID = 44990, desc = "=ds=#e15#", droprate = "00%" }; --Champion's Seal
	};
	{
		Name = BabbleBoss["Eadric the Pure"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j1#" };
		[2] = { itemID = 47181, "=ds=#s10#" }; --Belt of the Churning Blaze
		[3] = { itemID = 47185, "=ds=#s11#" }; --Leggings of the Haggard Apprentice
		[4] = { itemID = 47210, "=ds=#s3#" }; --Mantle of Gnarled Overgrowth
		[5] = { itemID = 47177, "=ds=#s9#" }; --Gloves of the Argent Fanatic
		[6] = { itemID = 47202, "=ds=#s11#" }; --Leggings of Brazen Trespass
		[7] = { itemID = 47178, "=ds=#s5#" }; --Carapace of Grim Visions
		[8] = { itemID = 47176, "=ds=#s5#" }; --Breastplate of the Imperial Joust
		[9] = { itemID = 47197, "=ds=#s9#" }; --Gauntlets of the Stouthearted Crusader
		[10] = { itemID = 47201, "=ds=#s12#" }; --Boots of Heartfelt Repentance
		[11] = { itemID = 47199, "=ds=#s12#" }; --Greaves of the Grand Paladin
		[12] = { itemID = 47200, "=ds=#s13#" }; --Signet of Purity
		[13] = { itemID = 47213, "=ds=#s14#" }; --Abyssal Rune
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j3#" };
		[17] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[18] = { itemID = 47501, "=ds=#s4#" }; --Kurisu's Indecision
		[19] = { itemID = 47496, "=ds=#s8#" }; --Armbands of the Wary Lookout
		[20] = { itemID = 47498, "=ds=#s9#" }; --Gloves of Dismal Fortune
		[21] = { itemID = 47504, "=ds=#s12#" }; --Barkhide Treads
		[22] = { itemID = 47497, "=ds=#s1#" }; --Helm of the Crestfallen Challenger
		[23] = { itemID = 47502, "=ds=#s3#" }; --Majestic Silversmith Shoulderplates
		[24] = { itemID = 47495, "=ds=#s11#" }; --Legplates of Relentless Onslaught
		[25] = { itemID = 47503, "=ds=#s11#" }; --Legplates of the Argent Armistice
		[26] = { itemID = 47494, "=ds=#s2#" }; --Ancient Pendant of Arathor
		[27] = { itemID = 47500, "=ds=#h1#" }; --Peacekeeper Blade
		[28] = { itemID = 47509, "=ds=#h3#" }; --Mariel's Sorrow
		[29] = { itemID = 47508, "=ds=#h1#" }; --Aledar's Battlestar
		[30] = { itemID = 44990, desc = "=ds=#e15#", droprate = "00%" }; --Champion's Seal
	};
	{
		Name = BabbleBoss["The Black Knight"];
		[1] = { itemID = 47232, "=ds=#s4#" }; --Drape of the Undefeated
		[2] = { itemID = 47226, "=ds=#s3#" }; --Mantle of Inconsolable Fear
		[3] = { itemID = 47230, "=ds=#s9#" }; --Handwraps of Surrendered Hope
		[4] = { itemID = 47221, "=ds=#s3#" }; --Shoulderpads of the Infamous Knave
		[5] = { itemID = 47231, "=ds=#s10#" }; --Belt of Merciless Cruelty
		[6] = { itemID = 47228, "=ds=#s11#" }; --Leggings of the Bloodless Knight
		[7] = { itemID = 47220, "=ds=#s1#" }; --Helm of the Violent Fray
		[8] = { itemID = 47229, "=ds=#s10#" }; --Girdle of Arrogant Downfall
		[9] = { itemID = 47227, "=ds=#s10#" }; --Girdle of the Pallid Knight
		[16] = { itemID = 47222, "=ds=#s13#" }; --Uruka's Band of Zeal
		[17] = { itemID = 47215, "=ds=#s14#" }; --Tears of the Vanquished
		[18] = { itemID = 47216, "=ds=#s14#" }; --The Black Heart
	};
	{
		Name = BabbleBoss["The Black Knight"] .. " (" .. AL["Heroic"] .. ")";
		[1] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[2] = { itemID = 47564, "=ds=#s1#" }; --Gaze of the Unknown
		[3] = { itemID = 47527, "=ds=#s5#" }; --Embrace of Madness
		[4] = { itemID = 47560, "=ds=#s12#" }; --Boots of the Crackling Flame
		[5] = { itemID = 47529, "=ds=#s1#" }; --Mask of Distant Memory
		[6] = { itemID = 47561, "=ds=#s9#" }; --Gloves of the Dark Exile
		[7] = { itemID = 47563, "=ds=#s10#" }; --Girdle of the Dauntless Conqueror
		[8] = { itemID = 47565, "=ds=#s8#" }; --Vambraces of Unholy Command
		[9] = { itemID = 47567, "=ds=#s9#" }; --Gauntlets of Revelation
		[10] = { itemID = 47562, "=ds=#s2#" }; --Symbol of Redemption
		[11] = { itemID = 47566, "=ds=#s2#" }; --The Warlord's Depravity
		[16] = { itemID = 47569, "=ds=#h3#" }; --Spectral Kris
		[17] = { itemID = 49682, "=ds=#h1#" }; --Black Knight's Rondel
		[18] = { itemID = 47568, "=ds=#w5#" }; --True-aim Long Rifle
		[20] = { itemID = 43102, desc = "=ds=#e6#", droprate = "00%" }; --Frozen Orb
		[22] = { itemID = 44990, desc = "=ds=#e15#", droprate = "00%" }; --Champion's Seal
	};
};

-------------------------
--- Vault of Archavon ---
-------------------------

AtlasLoot_Data["VaultofArchavon"] = {
	Name = BabbleZone["Vault of Archavon"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 39492, "=ds=#s5#" }; --Heroes' Frostfire Robe
		[3] = { itemID = 39495, "=ds=#s9#" }; --Heroes' Frostfire Gloves
		[4] = { itemID = 39493, "=ds=#s11#" }; --Heroes' Frostfire Leggings
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[7] = { itemID = 39515, "=ds=#s5#" }; --Heroes' Robe of Faith
		[8] = { itemID = 39519, "=ds=#s9#" }; --Heroes' Gloves of Faith
		[9] = { itemID = 39517, "=ds=#s11#" }; --Heroes' Leggings of Faith
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[12] = { itemID = 39523, "=ds=#s5#" }; --Heroes' Raiments of Faith
		[13] = { itemID = 39530, "=ds=#s9#" }; --Heroes' Handwraps of Faith
		[14] = { itemID = 39528, "=ds=#s11#" }; --Heroes' Pants of Faith
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41950, "=ds=#s5#" }; --Hateful Gladiator's Silk Raiment
		[18] = { itemID = 41969, "=ds=#s9#" }; --Hateful Gladiator's Silk Handguards
		[19] = { itemID = 41957, "=ds=#s11#" }; --Hateful Gladiator's Silk Trousers
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[22] = { itemID = 41857, "=ds=#s5#" }; --Hateful Gladiator's Mooncloth Robe
		[23] = { itemID = 41872, "=ds=#s9#" }; --Hateful Gladiator's Mooncloth Gloves
		[24] = { itemID = 41862, "=ds=#s11#" }; --Hateful Gladiator's Mooncloth Leggings
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[27] = { itemID = 41919, "=ds=#s5#" }; --Hateful Gladiator's Satin Robe
		[28] = { itemID = 41938, "=ds=#s9#" }; --Hateful Gladiator's Satin Gloves
		[29] = { itemID = 41925, "=ds=#s11#" }; --Hateful Gladiator's Satin Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[2] = { itemID = 39497, "=ds=#s5#" }; --Heroes' Plagueheart Robe
		[3] = { itemID = 39500, "=ds=#s9#" }; --Heroes' Plagueheart Gloves
		[4] = { itemID = 39498, "=ds=#s11#" }; --Heroes' Plagueheart Leggings
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[7] = { itemID = 39547, "=ds=#s5#" }; --Heroes' Dreamwalker Vestments
		[8] = { itemID = 39544, "=ds=#s9#" }; --Heroes' Dreamwalker Gloves
		[9] = { itemID = 39546, "=ds=#s11#" }; --Heroes' Dreamwalker Trousers
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[12] = { itemID = 39554, "=ds=#s5#" }; --Heroes' Dreamwalker Raiments
		[13] = { itemID = 39557, "=ds=#s9#" }; --Heroes' Dreamwalker Handgrips
		[14] = { itemID = 39555, "=ds=#s11#" }; --Heroes' Dreamwalker Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[17] = { itemID = 42001, "=ds=#s5#" }; --Hateful Gladiator's Felweave Raiment
		[18] = { itemID = 42015, "=ds=#s9#" }; --Hateful Gladiator's Felweave Handguards
		[19] = { itemID = 42003, "=ds=#s11#" }; --Hateful Gladiator's Felweave Trousers
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[22] = { itemID = 41314, "=ds=#s5#" }; --Hateful Gladiator's Wyrmhide Robes
		[23] = { itemID = 41291, "=ds=#s9#" }; --Hateful Gladiator's Wyrmhide Gloves
		[24] = { itemID = 41302, "=ds=#s11#" }; --Hateful Gladiator's Wyrmhide Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[27] = { itemID = 41659, "=ds=#s5#" }; --Hateful Gladiator's Dragonhide Robes
		[28] = { itemID = 41771, "=ds=#s9#" }; --Hateful Gladiator's Dragonhide Gloves
		[29] = { itemID = 41665, "=ds=#s11#" }; --Hateful Gladiator's Dragonhide Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[2] = { itemID = 39538, "=ds=#s5#" }; --Heroes' Dreamwalker Robe
		[3] = { itemID = 39543, "=ds=#s9#" }; --Heroes' Dreamwalker Handguards
		[4] = { itemID = 39539, "=ds=#s11#" }; --Heroes' Dreamwalker Leggings
		[6] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[7] = { itemID = 39558, "=ds=#s5#" }; --Heroes' Bonescythe Breastplate
		[8] = { itemID = 39560, "=ds=#s9#" }; --Heroes' Bonescythe Gauntlets
		[9] = { itemID = 39564, "=ds=#s11#" }; --Heroes' Bonescythe Legplates
		[11] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[12] = { itemID = 39579, "=ds=#s5#" }; --Heroes' Crypstalker Tunic
		[13] = { itemID = 39582, "=ds=#s9#" }; --Heroes' Crypstalker Handguards
		[14] = { itemID = 39580, "=ds=#s11#" }; --Heroes' Crypstalker Legguards
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[17] = { itemID = 41308, "=ds=#s5#" }; --Hateful Gladiator's Kodohide Robes
		[18] = { itemID = 41284, "=ds=#s9#" }; --Hateful Gladiator's Kodohide Gloves
		[19] = { itemID = 41296, "=ds=#s11#" }; --Hateful Gladiator's Kodohide Legguards
		[21] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[22] = { itemID = 41648, "=ds=#s5#" }; --Hateful Gladiator's Leather Tunic
		[23] = { itemID = 41765, "=ds=#s9#" }; --Hateful Gladiator's Leather Gloves
		[24] = { itemID = 41653, "=ds=#s11#" }; --Hateful Gladiator's Leather Legguards
		[26] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[27] = { itemID = 41085, "=ds=#s5#" }; --Hateful Gladiator's Chain Armor
		[28] = { itemID = 41141, "=ds=#s9#" }; --Hateful Gladiator's Chain Gauntlets
		[29] = { itemID = 41203, "=ds=#s11#" }; --Hateful Gladiator's Chain Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[2] = { itemID = 39592, "=ds=#s5#" }; --Heroes' Earthshatter Hauberk
		[3] = { itemID = 39593, "=ds=#s9#" }; --Heroes' Earthshatter Gloves
		[4] = { itemID = 39595, "=ds=#s11#" }; --Heroes' Earthshatter Kilt
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[7] = { itemID = 39597, "=ds=#s5#" }; --Heroes' Earthshatter Chestguard
		[8] = { itemID = 39601, "=ds=#s9#" }; --Heroes' Earthshatter Grips
		[9] = { itemID = 39603, "=ds=#s11#" }; --Heroes' Earthshatter War-Kilt
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[12] = { itemID = 39588, "=ds=#s5#" }; --Heroes' Earthshatter Tunic
		[13] = { itemID = 39591, "=ds=#s9#" }; --Heroes' Earthshatter Handguards
		[14] = { itemID = 39589, "=ds=#s11#" }; --Heroes' Earthshatter Legguards
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[17] = { itemID = 40989, "=ds=#s5#" }; --Hateful Gladiator's Mail Armor
		[18] = { itemID = 41005, "=ds=#s9#" }; --Hateful Gladiator's Mail Gauntlets
		[19] = { itemID = 41031, "=ds=#s11#" }; --Hateful Gladiator's Mail Leggings
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[22] = { itemID = 41079, "=ds=#s5#" }; --Hateful Gladiator's Linked Armor
		[23] = { itemID = 41135, "=ds=#s9#" }; --Hateful Gladiator's Linked Gauntlets
		[24] = { itemID = 41162, "=ds=#s11#" }; --Hateful Gladiator's Linked Leggings
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[27] = { itemID = 40988, "=ds=#s5#" }; --Hateful Gladiator's Ringmail Armor
		[28] = { itemID = 40999, "=ds=#s9#" }; --Hateful Gladiator's Ringmail Gauntlets
		[29] = { itemID = 41025, "=ds=#s11#" }; --Hateful Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 39617, "=ds=#s5#" }; --Heroes' Scourgeborne Battleplate
		[3] = { itemID = 39618, "=ds=#s9#" }; --Heroes' Scourgeborne Gauntlets
		[4] = { itemID = 39620, "=ds=#s11#" }; --Heroes' Scourgeborne Legplates
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[7] = { itemID = 39623, "=ds=#s5#" }; --Heroes' Scourgeborne Chestguard
		[8] = { itemID = 39624, "=ds=#s9#" }; --Heroes' Scourgeborne Handguards
		[9] = { itemID = 39626, "=ds=#s11#" }; --Heroes' Scourgeborne Legguards
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[12] = { itemID = 39629, "=ds=#s5#" }; --Heroes' Redemption Tunic
		[13] = { itemID = 39632, "=ds=#s9#" }; --Heroes' Redemption Gloves
		[14] = { itemID = 39630, "=ds=#s11#" }; --Heroes' Redemption Greaves
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40781, "=ds=#s5#" }; --Hateful Gladiator's Dreadplate Chestpiece
		[18] = { itemID = 40803, "=ds=#s9#" }; --Hateful Gladiator's Dreadplate Gauntlets
		[19] = { itemID = 40841, "=ds=#s11#" }; --Hateful Gladiator's Dreadplate Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[27] = { itemID = 40904, "=ds=#s5#" }; --Hateful Gladiator's Ornamented Chestguard
		[28] = { itemID = 40925, "=ds=#s9#" }; --Hateful Gladiator's Ornamented Gloves
		[29] = { itemID = 40937, "=ds=#s11#" }; --Hateful Gladiator's Ornamented Legplates
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[2] = { itemID = 39633, "=ds=#s5#" }; --Heroes' Redemption Chestpiece
		[3] = { itemID = 39634, "=ds=#s9#" }; --Heroes' Redemption Gauntlets
		[4] = { itemID = 39636, "=ds=#s11#" }; --Heroes' Redemption Legplates
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[7] = { itemID = 39638, "=ds=#s5#" }; --Heroes' Redemption Breastplate
		[8] = { itemID = 39639, "=ds=#s9#" }; --Heroes' Redemption Handguards
		[9] = { itemID = 39641, "=ds=#s11#" }; --Heroes' Redemption Legguards
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[12] = { itemID = 39606, "=ds=#s5#" }; --Heroes' Dreadnaught Battleplate
		[13] = { itemID = 39609, "=ds=#s9#" }; --Heroes' Dreadnaught Gauntlets
		[14] = { itemID = 39607, "=ds=#s11#" }; --Heroes' Dreadnaught Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[17] = { itemID = 40782, "=ds=#s5#" }; --Hateful Gladiator's Scaled Chestpiece
		[18] = { itemID = 40802, "=ds=#s11#" }; --Hateful Gladiator's Scaled Gauntlets
		[19] = { itemID = 40842, "=ds=#s11#" }; --Hateful Gladiator's Scaled Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[27] = { itemID = 40783, "=ds=#s5#" }; --Hateful Gladiator's Plate Chestpiece
		[28] = { itemID = 40801, "=ds=#s9#" }; --Hateful Gladiator's Plate Gauntlets
		[29] = { itemID = 40840, "=ds=#s11#" }; --Hateful Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 39611, "=ds=#s5#" }; --Heroes' Dreadnaught Breastplate
		[3] = { itemID = 39622, "=ds=#s9#" }; --Heroes' Dreadnaught Handguards
		[4] = { itemID = 39612, "=ds=#s11#" }; --Heroes' Dreadnaught Legguards
		[6] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[7] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[8] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 40418, "=ds=#s5#" }; --Valorous Frostfire Robe
		[3] = { itemID = 40415, "=ds=#s9#" }; --Valorous Frostfire Gloves
		[4] = { itemID = 40417, "=ds=#s11#" }; --Valorous Frostfire Leggings
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[7] = { itemID = 40449, "=ds=#s5#" }; --Valorous Robe of Faith
		[8] = { itemID = 40445, "=ds=#s9#" }; --Valorous Gloves of Faith
		[9] = { itemID = 40448, "=ds=#s11#" }; --Valorous Leggings of Faith
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[12] = { itemID = 40458, "=ds=#s5#" }; --Valorous Raiments of Faith
		[13] = { itemID = 40454, "=ds=#s9#" }; --Valorous Handwraps of Faith
		[14] = { itemID = 40457, "=ds=#s11#" }; --Valorous Pants of Faith
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41951, "=ds=#s5#" }; --Deadly Gladiator's Silk Raiment
		[18] = { itemID = 41970, "=ds=#s9#" }; --Deadly Gladiator's Silk Handguards
		[19] = { itemID = 41958, "=ds=#s11#" }; --Deadly Gladiator's Silk Trousers
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[22] = { itemID = 41858, "=ds=#s5#" }; --Deadly Gladiator's Mooncloth Robe
		[23] = { itemID = 41873, "=ds=#s9#" }; --Deadly Gladiator's Mooncloth Gloves
		[24] = { itemID = 41863, "=ds=#s11#" }; --Deadly Gladiator's Mooncloth Leggings
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[27] = { itemID = 41920, "=ds=#s5#" }; --Deadly Gladiator's Satin Robe
		[28] = { itemID = 41939, "=ds=#s9#" }; --Deadly Gladiator's Satin Gloves
		[29] = { itemID = 41926, "=ds=#s11#" }; --Deadly Gladiator's Satin Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[2] = { itemID = 40423, "=ds=#s5#" }; --Valorous Plagueheart Robe
		[3] = { itemID = 40420, "=ds=#s9#" }; --Valorous Plagueheart Gloves
		[4] = { itemID = 40422, "=ds=#s11#" }; --Valorous Plagueheart Leggings
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[7] = { itemID = 40469, "=ds=#s5#" }; --Valorous Dreamwalker Vestments
		[8] = { itemID = 40466, "=ds=#s9#" }; --Valorous Dreamwalker Gloves
		[9] = { itemID = 40468, "=ds=#s11#" }; --Valorous Dreamwalker Trousers
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[12] = { itemID = 40471, "=ds=#s5#" }; --Valorous Dreamwalker Raiments
		[13] = { itemID = 40472, "=ds=#s9#" }; --Valorous Dreamwalker Handgrips
		[14] = { itemID = 40493, "=ds=#s11#" }; --Valorous Dreamwalker Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[17] = { itemID = 41997, "=ds=#s5#" }; --Deadly Gladiator's Felweave Raiment
		[18] = { itemID = 42016, "=ds=#s9#" }; --Deadly Gladiator's Felweave Handguards
		[19] = { itemID = 42004, "=ds=#s11#" }; --Deadly Gladiator's Felweave Trousers
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[22] = { itemID = 41315, "=ds=#s5#" }; --Deadly Gladiator's Wyrmhide Robes
		[23] = { itemID = 41292, "=ds=#s9#" }; --Deadly Gladiator's Wyrmhide Gloves
		[24] = { itemID = 41303, "=ds=#s11#" }; --Deadly Gladiator's Wyrmhide Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[27] = { itemID = 41660, "=ds=#s5#" }; --Deadly Gladiator's Dragonhide Robes
		[28] = { itemID = 41772, "=ds=#s9#" }; --Deadly Gladiator's Dragonhide Gloves
		[29] = { itemID = 41666, "=ds=#s11#" }; --Deadly Gladiator's Dragonhide Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[2] = { itemID = 40463, "=ds=#s5#" }; --Valorous Dreamwalker Robe
		[3] = { itemID = 40460, "=ds=#s9#" }; --Valorous Dreamwalker Handguards
		[4] = { itemID = 40462, "=ds=#s11#" }; --Valorous Dreamwalker Leggings
		[6] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[7] = { itemID = 40495, "=ds=#s5#" }; --Valorous Bonescythe Breastplate
		[8] = { itemID = 40496, "=ds=#s9#" }; --Valorous Bonescythe Gauntlets
		[9] = { itemID = 40500, "=ds=#s11#" }; --Valorous Bonescythe Legplates
		[11] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[12] = { itemID = 40503, "=ds=#s5#" }; --Valorous Crypstalker Tunic
		[13] = { itemID = 40504, "=ds=#s9#" }; --Valorous Crypstalker Handguards
		[14] = { itemID = 40506, "=ds=#s11#" }; --Valorous Crypstalker Legguards
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[17] = { itemID = 41309, "=ds=#s5#" }; --Deadly Gladiator's Kodohide Robes
		[18] = { itemID = 41286, "=ds=#s9#" }; --Deadly Gladiator's Kodohide Gloves
		[19] = { itemID = 41297, "=ds=#s11#" }; --Deadly Gladiator's Kodohide Legguards
		[21] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[22] = { itemID = 41649, "=ds=#s5#" }; --Deadly Gladiator's Leather Tunic
		[23] = { itemID = 41766, "=ds=#s9#" }; --Deadly Gladiator's Leather Gloves
		[24] = { itemID = 41654, "=ds=#s11#" }; --Deadly Gladiator's Leather Legguards
		[26] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[27] = { itemID = 41086, "=ds=#s5#" }; --Deadly Gladiator's Chain Armor
		[28] = { itemID = 41142, "=ds=#s9#" }; --Deadly Gladiator's Chain Gauntlets
		[29] = { itemID = 41204, "=ds=#s11#" }; --Deadly Gladiator's Chain Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[2] = { itemID = 40514, "=ds=#s5#" }; --Valorous Earthshatter Hauberk
		[3] = { itemID = 40515, "=ds=#s9#" }; --Valorous Earthshatter Gloves
		[4] = { itemID = 40517, "=ds=#s11#" }; --Valorous Earthshatter Kilt
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[7] = { itemID = 40523, "=ds=#s5#" }; --Valorous Earthshatter Chestguard
		[8] = { itemID = 40520, "=ds=#s9#" }; --Valorous Earthshatter Grips
		[9] = { itemID = 40522, "=ds=#s11#" }; --Valorous Earthshatter War-Kilt
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[12] = { itemID = 40508, "=ds=#s5#" }; --Valorous Earthshatter Tunic
		[13] = { itemID = 40509, "=ds=#s9#" }; --Valorous Earthshatter Handguards
		[14] = { itemID = 40512, "=ds=#s11#" }; --Valorous Earthshatter Legguards
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[17] = { itemID = 40991, "=ds=#s5#" }; --Deadly Gladiator's Mail Armor
		[18] = { itemID = 41006, "=ds=#s9#" }; --Deadly Gladiator's Mail Gauntlets
		[19] = { itemID = 41032, "=ds=#s11#" }; --Deadly Gladiator's Mail Leggings
		[21] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[22] = { itemID = 41080, "=ds=#s5#" }; --Deadly Gladiator's Linked Armor
		[23] = { itemID = 41136, "=ds=#s9#" }; --Deadly Gladiator's Linked Gauntlets
		[24] = { itemID = 41198, "=ds=#s11#" }; --Deadly Gladiator's Linked Leggings
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[27] = { itemID = 40990, "=ds=#s5#" }; --Deadly Gladiator's Ringmail Armor
		[28] = { itemID = 41000, "=ds=#s9#" }; --Deadly Gladiator's Ringmail Gauntlets
		[29] = { itemID = 41026, "=ds=#s11#" }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 40550, "=ds=#s5#" }; --Valorous Scourgeborne Battleplate
		[3] = { itemID = 40552, "=ds=#s9#" }; --Valorous Scourgeborne Gauntlets
		[4] = { itemID = 40556, "=ds=#s11#" }; --Valorous Scourgeborne Legplates
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[7] = { itemID = 40559, "=ds=#s5#" }; --Valorous Scourgeborne Chestguard
		[8] = { itemID = 40563, "=ds=#s9#" }; --Valorous Scourgeborne Handguards
		[9] = { itemID = 40567, "=ds=#s11#" }; --Valorous Scourgeborne Legguards
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[12] = { itemID = 40569, "=ds=#s5#" }; --Valorous Redemption Tunic
		[13] = { itemID = 40570, "=ds=#s9#" }; --Valorous Redemption Gloves
		[14] = { itemID = 40572, "=ds=#s11#" }; --Valorous Redemption Greaves
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40784, "=ds=#s5#" }; --Deadly Gladiator's Dreadplate Chestpiece
		[18] = { itemID = 40806, "=ds=#s9#" }; --Deadly Gladiator's Dreadplate Gauntlets
		[19] = { itemID = 40845, "=ds=#s11#" }; --Deadly Gladiator's Dreadplate Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[27] = { itemID = 40905, "=ds=#s5#" }; --Deadly Gladiator's Ornamented Chestguard
		[28] = { itemID = 40926, "=ds=#s9#" }; --Deadly Gladiator's Ornamented Gloves
		[29] = { itemID = 40938, "=ds=#s11#" }; --Deadly Gladiator's Ornamented Legplates
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[2] = { itemID = 40574, "=ds=#s5#" }; --Valorous Redemption Chestpiece
		[3] = { itemID = 40575, "=ds=#s9#" }; --Valorous Redemption Gauntlets
		[4] = { itemID = 40577, "=ds=#s11#" }; --Valorous Redemption Legplates
		[6] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[7] = { itemID = 40579, "=ds=#s5#" }; --Valorous Redemption Breastplate
		[8] = { itemID = 40580, "=ds=#s9#" }; --Valorous Redemption Handguards
		[9] = { itemID = 40583, "=ds=#s11#" }; --Valorous Redemption Legguards
		[11] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[12] = { itemID = 40525, "=ds=#s5#" }; --Valorous Dreadnaught Battleplate
		[13] = { itemID = 40527, "=ds=#s9#" }; --Valorous Dreadnaught Gauntlets
		[14] = { itemID = 40529, "=ds=#s11#" }; --Valorous Dreadnaught Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[17] = { itemID = 40785, "=ds=#s5#" }; --Deadly Gladiator's Scaled Chestpiece
		[18] = { itemID = 40805, "=ds=#s9#" }; --Deadly Gladiator's Scaled Gauntlets
		[19] = { itemID = 40846, "=ds=#s11#" }; --Deadly Gladiator's Scaled Legguards
		[26] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[27] = { itemID = 40786, "=ds=#s5#" }; --Deadly Gladiator's Plate Chestpiece
		[28] = { itemID = 40804, "=ds=#s9#" }; --Deadly Gladiator's Plate Gauntlets
		[29] = { itemID = 40844, "=ds=#s11#" }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 40544, "=ds=#s5#" }; --Valorous Dreadnaught Breastplate
		[3] = { itemID = 40545, "=ds=#s9#" }; --Valorous Dreadnaught Handguards
		[4] = { itemID = 40547, "=ds=#s11#" }; --Valorous Dreadnaught Legguards
		[6] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[7] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[8] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 46131, "=ds=#s9#" }; --Valorous Kirin'dor Gauntlets
		[3] = { itemID = 45367, "=ds=#s11#" }; --Valorous Kirin'dor Leggings
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 45387, "=ds=#s9#" }; --Valorous Gloves of Sanctification
		[7] = { itemID = 45388, "=ds=#s11#" }; --Valorous Leggings of Sanctification
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 45392, "=ds=#s9#" }; --Valorous Handwraps of Sanctification
		[11] = { itemID = 45394, "=ds=#s11#" }; --Valorous Pants of Sanctification
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 45419, "=ds=#s9#" }; --Valorous Deathbringer Gloves
		[15] = { itemID = 45420, "=ds=#s11#" }; --Valorous Deathbringer Leggings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41970, "=ds=#s9#" }; --Deadly Gladiator's Silk Handguards
		[18] = { itemID = 41958, "=ds=#s11#" }; --Deadly Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41873, "=ds=#s9#" }; --Deadly Gladiator's Mooncloth Gloves
		[22] = { itemID = 41863, "=ds=#s11#" }; --Deadly Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41939, "=ds=#s9#" }; --Deadly Gladiator's Satin Gloves
		[26] = { itemID = 41926, "=ds=#s11#" }; --Deadly Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42016, "=ds=#s9#" }; --Deadly Gladiator's Felweave Handguards
		[30] = { itemID = 42004, "=ds=#s11#" }; --Deadly Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 45351, "=ds=#s9#" }; --Valorous Nightsong Gloves
		[3] = { itemID = 45353, "=ds=#s11#" }; --Valorous Nightsong Trousers
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 45355, "=ds=#s9#" }; --Valorous Nightsong Handgrips
		[7] = { itemID = 45357, "=ds=#s11#" }; --Valorous Nightsong Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 45345, "=ds=#s9#" }; --Valorous Nightsong Handguards
		[11] = { itemID = 45347, "=ds=#s11#" }; --Valorous Nightsong Leggings
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 45397, "=ds=#s9#" }; --Valorous Terrorblade Gauntlets
		[15] = { itemID = 45399, "=ds=#s11#" }; --Valorous Terrorblade Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41292, "=ds=#s9#" }; --Deadly Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41303, "=ds=#s11#" }; --Deadly Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41772, "=ds=#s9#" }; --Deadly Gladiator's Dragonhide Gloves
		[22] = { itemID = 41666, "=ds=#s11#" }; --Deadly Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41286, "=ds=#s9#" }; --Deadly Gladiator's Kodohide Gloves
		[26] = { itemID = 41297, "=ds=#s11#" }; --Deadly Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41766, "=ds=#s9#" }; --Deadly Gladiator's Leather Gloves
		[30] = { itemID = 41654, "=ds=#s11#" }; --Deadly Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 45360, "=ds=#s9#" }; --Valorous Scourgestalker Handguards
		[3] = { itemID = 45362, "=ds=#s11#" }; --Valorous Scourgestalker Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 45406, "=ds=#s9#" }; --Valorous Worldbreaker Gloves
		[7] = { itemID = 45409, "=ds=#s11#" }; --Valorous Worldbreaker Kilt
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 45414, "=ds=#s9#" }; --Valorous Worldbreaker Grips
		[11] = { itemID = 45416, "=ds=#s11#" }; --Valorous Worldbreaker War-Kilt
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 45401, "=ds=#s9#" }; --Valorous Worldbreaker Handguards
		[15] = { itemID = 45403, "=ds=#s11#" }; --Valorous Worldbreaker Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41142, "=ds=#s9#" }; --Deadly Gladiator's Chain Gauntlets
		[18] = { itemID = 41204, "=ds=#s11#" }; --Deadly Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41006, "=ds=#s9#" }; --Deadly Gladiator's Mail Gauntlets
		[22] = { itemID = 41032, "=ds=#s11#" }; --Deadly Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41136, "=ds=#s9#" }; --Deadly Gladiator's Linked Gauntlets
		[26] = { itemID = 41198, "=ds=#s11#" }; --Deadly Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41000, "=ds=#s9#" }; --Deadly Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41026, "=ds=#s11#" }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 45341, "=ds=#s9#" }; --Valorous Darkruned Gauntlets
		[3] = { itemID = 45343, "=ds=#s11#" }; --Valorous Darkruned Legplates
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 45337, "=ds=#s9#" }; --Valorous Darkruned Handguards
		[7] = { itemID = 45338, "=ds=#s11#" }; --Valorous Darkruned Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 45370, "=ds=#s9#" }; --Valorous Aegis Gloves
		[11] = { itemID = 45371, "=ds=#s11#" }; --Valorous Aegis Greaves
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 45376, "=ds=#s9#" }; --Valorous Aegis Gauntlets
		[15] = { itemID = 45379, "=ds=#s11#" }; --Valorous Aegis Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40806, "=ds=#s9#" }; --Deadly Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40845, "=ds=#s11#" }; --Deadly Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40926, "=ds=#s9#" }; --Deadly Gladiator's Ornamented Gloves
		[26] = { itemID = 40938, "=ds=#s11#" }; --Deadly Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40805, "=ds=#s9#" }; --Deadly Gladiator's Scaled Gauntlets
		[30] = { itemID = 40846, "=ds=#s11#" }; --Deadly Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 45383, "=ds=#s9#" }; --Valorous Aegis Handguards
		[3] = { itemID = 45384, "=ds=#s11#" }; --Valorous Aegis Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 45430, "=ds=#s9#" }; --Valorous Siegebreaker Gauntlets
		[7] = { itemID = 45432, "=ds=#s11#" }; --Valorous Siegebreaker Legplates
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 45426, "=ds=#s9#" }; --Valorous Siegebreaker Handguards
		[11] = { itemID = 45427, "=ds=#s11#" }; --Valorous Siegebreaker Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40804, "=ds=#s9#" }; --Deadly Gladiator's Plate Gauntlets
		[22] = { itemID = 40844, "=ds=#s11#" }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41908, "=ds=#s8#" }; --Deadly Gladiator's Cuffs of Dominance
		[3] = { itemID = 41897, "=ds=#s10#" }; --Deadly Gladiator's Cord of Dominance
		[4] = { itemID = 41902, "=ds=#s12#" }; --Deadly Gladiator's Treads of Dominance
		[6] = { itemID = 41892, "=ds=#s8#" }; --Deadly Gladiator's Cuffs of Salvation
		[7] = { itemID = 41880, "=ds=#s10#" }; --Deadly Gladiator's Cord of Salvation
		[8] = { itemID = 41884, "=ds=#s12#" }; --Deadly Gladiator's Treads of Salvation
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41639, "=ds=#s8#" }; --Deadly Gladiator's Armwraps of Dominance
		[18] = { itemID = 41629, "=ds=#s10#" }; --Deadly Gladiator's Belt of Dominance
		[19] = { itemID = 41634, "=ds=#s12#" }; --Deadly Gladiator's Boots of Dominance
		[21] = { itemID = 41624, "=ds=#s8#" }; --Deadly Gladiator's Armwraps of Salvation
		[22] = { itemID = 41616, "=ds=#s10#" }; --Deadly Gladiator's Belt of Salvation
		[23] = { itemID = 41620, "=ds=#s12#" }; --Deadly Gladiator's Boots of Salvation
		[25] = { itemID = 41839, "=ds=#s8#" }; --Deadly Gladiator's Armwraps of Triumph
		[26] = { itemID = 41831, "=ds=#s10#" }; --Deadly Gladiator's Belt of Triumph
		[27] = { itemID = 41835, "=ds=#s12#" }; --Deadly Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41064, "=ds=#s8#" }; --Deadly Gladiator's Wristguards of Dominance
		[3] = { itemID = 41069, "=ds=#s10#" }; --Deadly Gladiator's Waistguard of Dominance
		[4] = { itemID = 41074, "=ds=#s12#" }; --Deadly Gladiator's Sabatons of Dominance
		[6] = { itemID = 41059, "=ds=#s8#" }; --Deadly Gladiator's Wristguards of Salvation
		[7] = { itemID = 41048, "=ds=#s10#" }; --Deadly Gladiator's Waistguard of Salvation
		[8] = { itemID = 41054, "=ds=#s12#" }; --Deadly Gladiator's Sabatons of Salvation
		[10] = { itemID = 41224, "=ds=#s8#" }; --Deadly Gladiator's Wristguards of Triumph
		[11] = { itemID = 41234, "=ds=#s10#" }; --Deadly Gladiator's Waistguard of Triumph
		[12] = { itemID = 41229, "=ds=#s12#" }; --Deadly Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40982, "=ds=#s8#" }; --Deadly Gladiator's Bracers of Salvation
		[18] = { itemID = 40974, "=ds=#s10#" }; --Deadly Gladiator's Girdle of Salvation
		[19] = { itemID = 40975, "=ds=#s12#" }; --Deadly Gladiator's Greaves of Salvation
		[21] = { itemID = 40888, "=ds=#s8#" }; --Deadly Gladiator's Bracers of Triumph
		[22] = { itemID = 40879, "=ds=#s10#" }; --Deadly Gladiator's Girdle of Triumph
		[23] = { itemID = 40880, "=ds=#s12#" }; --Deadly Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42064, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42066, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Deliverance
		[4] = { itemID = 42062, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Dominance
		[5] = { itemID = 42065, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Salvation
		[6] = { itemID = 42063, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Subjugation
		[7] = { itemID = 42067, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Triumph
		[8] = { itemID = 42068, "=ds=#s4#" }; --Deadly Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42030, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42032, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Deliverance
		[19] = { itemID = 42029, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Dominance
		[20] = { itemID = 42033, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Salvation
		[21] = { itemID = 42031, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Subjugation
		[22] = { itemID = 42027, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Triumph
		[23] = { itemID = 42028, "=ds=#s2#" }; --Deadly Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42114, "=ds=#s13#" }; --Deadly Gladiator's Band of Ascendancy
		[28] = { itemID = 42115, "=ds=#s13#" }; --Deadly Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 46132, "=ds=#s9#" }; --Conqueror's Kirin'dor Gauntlets
		[3] = { itemID = 46133, "=ds=#s11#" }; --Conqueror's Kirin'dor Leggings
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 46188, "=ds=#s9#" }; --Conqueror's Gloves of Sanctification
		[7] = { itemID = 46195, "=ds=#s11#" }; --Conqueror's Leggings of Sanctification
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 46163, "=ds=#s9#" }; --Conqueror's Handwraps of Sanctification
		[11] = { itemID = 46170, "=ds=#s11#" }; --Conqueror's Pants of Sanctification
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 46135, "=ds=#s9#" }; --Conqueror's Deathbringer Gloves
		[15] = { itemID = 46139, "=ds=#s11#" }; --Conqueror's Deathbringer Leggings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971, "=ds=#s9#" }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959, "=ds=#s11#" }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874, "=ds=#s9#" }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864, "=ds=#s11#" }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940, "=ds=#s9#" }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927, "=ds=#s11#" }; --Furious Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017, "=ds=#s9#" }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005, "=ds=#s11#" }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 46189, "=ds=#s9#" }; --Conqueror's Nightsong Gloves
		[3] = { itemID = 46192, "=ds=#s11#" }; --Conqueror's Nightsong Trousers
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 46158, "=ds=#s9#" }; --Conqueror's Nightsong Handgrips
		[7] = { itemID = 46160, "=ds=#s11#" }; --Conqueror's Nightsong Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 46183, "=ds=#s9#" }; --Conqueror's Nightsong Handguards
		[11] = { itemID = 46185, "=ds=#s11#" }; --Conqueror's Nightsong Leggings
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 46124, "=ds=#s9#" }; --Conqueror's Terrorblade Gauntlets
		[15] = { itemID = 46126, "=ds=#s11#" }; --Conqueror's Terrorblade Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293, "=ds=#s9#" }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304, "=ds=#s11#" }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773, "=ds=#s9#" }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667, "=ds=#s11#" }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287, "=ds=#s9#" }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298, "=ds=#s11#" }; --Furious Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767, "=ds=#s9#" }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655, "=ds=#s11#" }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 46142, "=ds=#s9#" }; --Conqueror's Scourgestalker Handguards
		[3] = { itemID = 46144, "=ds=#s11#" }; --Conqueror's Scourgestalker Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 46207, "=ds=#s9#" }; --Conqueror's Worldbreaker Gloves
		[7] = { itemID = 46210, "=ds=#s11#" }; --Conqueror's Worldbreaker Kilt
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 46200, "=ds=#s9#" }; --Conqueror's Worldbreaker Grips
		[11] = { itemID = 46208, "=ds=#s11#" }; --Conqueror's Worldbreaker War-Kilt
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 46199, "=ds=#s9#" }; --Conqueror's Worldbreaker Handguards
		[15] = { itemID = 46202, "=ds=#s11#" }; --Conqueror's Worldbreaker Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143, "=ds=#s9#" }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205, "=ds=#s11#" }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007, "=ds=#s9#" }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033, "=ds=#s11#" }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137, "=ds=#s9#" }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199, "=ds=#s11#" }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001, "=ds=#s9#" }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027, "=ds=#s11#" }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 46113, "=ds=#s9#" }; --Conqueror's Darkruned Gauntlets
		[3] = { itemID = 46116, "=ds=#s11#" }; --Conqueror's Darkruned Legplates
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 46119, "=ds=#s9#" }; --Conqueror's Darkruned Handguards
		[7] = { itemID = 46121, "=ds=#s11#" }; --Conqueror's Darkruned Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 46179, "=ds=#s9#" }; --Conqueror's Aegis Gloves
		[11] = { itemID = 46181, "=ds=#s11#" }; --Conqueror's Aegis Greaves
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 46155, "=ds=#s9#" }; --Conqueror's Aegis Gauntlets
		[15] = { itemID = 46153, "=ds=#s11#" }; --Conqueror's Aegis Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809, "=ds=#s9#" }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848, "=ds=#s11#" }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927, "=ds=#s9#" }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939, "=ds=#s11#" }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808, "=ds=#s9#" }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849, "=ds=#s11#" }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 46174, "=ds=#s9#" }; --Conqueror's Aegis Handguards
		[3] = { itemID = 46176, "=ds=#s11#" }; --Conqueror's Aegis Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 46148, "=ds=#s9#" }; --Conqueror's Siegebreaker Gauntlets
		[7] = { itemID = 46150, "=ds=#s11#" }; --Conqueror's Siegebreaker Legplates
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 46164, "=ds=#s9#" }; --Conqueror's Siegebreaker Handguards
		[11] = { itemID = 46169, "=ds=#s11#" }; --Conqueror's Siegebreaker Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807, "=ds=#s9#" }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847, "=ds=#s11#" }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41909, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Dominance
		[3] = { itemID = 41898, "=ds=#s10#" }; --Furious Gladiator's Cord of Dominance
		[4] = { itemID = 41903, "=ds=#s12#" }; --Furious Gladiator's Slippers of Dominance
		[6] = { itemID = 41893, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Salvation
		[7] = { itemID = 41881, "=ds=#s10#" }; --Furious Gladiator's Cord of Salvation
		[8] = { itemID = 41885, "=ds=#s12#" }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630, "=ds=#s10#" }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635, "=ds=#s12#" }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617, "=ds=#s10#" }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621, "=ds=#s12#" }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832, "=ds=#s10#" }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836, "=ds=#s12#" }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41065, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Dominance
		[3] = { itemID = 41070, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Dominance
		[4] = { itemID = 41075, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Dominance
		[6] = { itemID = 41060, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Salvation
		[7] = { itemID = 41051, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Salvation
		[8] = { itemID = 41055, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983, "=ds=#s8#" }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976, "=ds=#s10#" }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977, "=ds=#s12#" }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889, "=ds=#s8#" }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881, "=ds=#s10#" }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882, "=ds=#s12#" }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42071, "=ds=#s4#" }; --Furious Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42073, "=ds=#s4#" }; --Furious Gladiator's Cloak of Deliverance
		[4] = { itemID = 42069, "=ds=#s4#" }; --Furious Gladiator's Cloak of Dominance
		[5] = { itemID = 42072, "=ds=#s4#" }; --Furious Gladiator's Cloak of Salvation
		[6] = { itemID = 42070, "=ds=#s4#" }; --Furious Gladiator's Cloak of Subjugation
		[7] = { itemID = 42074, "=ds=#s4#" }; --Furious Gladiator's Cloak of Triumph
		[8] = { itemID = 42075, "=ds=#s4#" }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037, "=ds=#s2#" }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039, "=ds=#s2#" }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036, "=ds=#s2#" }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040, "=ds=#s2#" }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038, "=ds=#s2#" }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373, "=ds=#s2#" }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034, "=ds=#s2#" }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035, "=ds=#s2#" }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116, "=ds=#s13#" }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117, "=ds=#s13#" }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 47752, "=ds=#s9#" }; --Khadgar's Gauntlets of Conquest
		[3] = { itemID = 47750, "=ds=#s11#" }; --Khadgar's Leggings of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 47982, "=ds=#s9#" }; --Velen's Gloves of Conquest
		[7] = { itemID = 47980, "=ds=#s11#" }; --Velen's Leggings of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48072, "=ds=#s9#" }; --Velen's Handwraps of Conquest
		[11] = { itemID = 48074, "=ds=#s11#" }; --Velen's Pants of Conquest
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47783, "=ds=#s9#" }; --Kel'Thuzad's Gloves of Conquest
		[15] = { itemID = 47785, "=ds=#s11#" }; --Kel'Thuzad's Leggings of Conquest
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971, "=ds=#s9#" }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959, "=ds=#s11#" }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874, "=ds=#s9#" }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864, "=ds=#s11#" }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940, "=ds=#s9#" }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927, "=ds=#s11#" }; --Furious Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017, "=ds=#s9#" }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005, "=ds=#s11#" }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 48162, "=ds=#s9#" }; --Stormrage's Gloves of Conquest
		[3] = { itemID = 48160, "=ds=#s11#" }; --Stormrage's Trousers of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 48213, "=ds=#s9#" }; --Stormrage's Handgrips of Conquest
		[7] = { itemID = 48215, "=ds=#s11#" }; --Stormrage's Legguards of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48132, "=ds=#s9#" }; --Stormrage's Handguards of Conquest
		[11] = { itemID = 48130, "=ds=#s11#" }; --Stormrage's Leggings of Conquest
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48222, "=ds=#s9#" }; --VanCleef's Gauntlets of Conquest
		[15] = { itemID = 48220, "=ds=#s11#" }; --VanCleef's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293, "=ds=#s9#" }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304, "=ds=#s11#" }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773, "=ds=#s9#" }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667, "=ds=#s11#" }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287, "=ds=#s9#" }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298, "=ds=#s11#" }; --Furious Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767, "=ds=#s9#" }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655, "=ds=#s11#" }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 48254, "=ds=#s9#" }; --Windrunner's Handguards of Conquest
		[3] = { itemID = 48252, "=ds=#s11#" }; --Windrunner's Legguards of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 48312, "=ds=#s9#" }; --Nobundo's Gloves of Conquest
		[7] = { itemID = 48314, "=ds=#s11#" }; --Nobundo's Kilt of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48342, "=ds=#s9#" }; --Nobundo's Grips of Conquest
		[11] = { itemID = 48344, "=ds=#s11#" }; --Nobundo's War-Kilt of Conquest
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48284, "=ds=#s9#" }; --Nobundo's Handguards of Conquest
		[15] = { itemID = 48282, "=ds=#s11#" }; --Nobundo's Legguards of Conquest
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143, "=ds=#s9#" }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205, "=ds=#s11#" }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007, "=ds=#s9#" }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033, "=ds=#s11#" }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137, "=ds=#s9#" }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199, "=ds=#s11#" }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001, "=ds=#s9#" }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027, "=ds=#s11#" }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 48480, "=ds=#s9#" }; --Thassarian's Gauntlets of Conquest
		[3] = { itemID = 48476, "=ds=#s11#" }; --Thassarian's Legplates of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 48537, "=ds=#s9#" }; --Thassarian's Handguards of Conquest
		[7] = { itemID = 48533, "=ds=#s11#" }; --Thassarian's Legguards of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48574, "=ds=#s9#" }; --Turalyon's Gloves of Conquest
		[11] = { itemID = 48568, "=ds=#s11#" }; --Turalyon's Greaves of Conquest
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48603, "=ds=#s9#" }; --Turalyon's Gauntlets of Conquest
		[15] = { itemID = 48605, "=ds=#s11#" }; --Turalyon's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809, "=ds=#s9#" }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848, "=ds=#s11#" }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927, "=ds=#s9#" }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939, "=ds=#s11#" }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808, "=ds=#s9#" }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849, "=ds=#s11#" }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 48633, "=ds=#s9#" }; --Turalyon's Handguards of Conquest
		[3] = { itemID = 48635, "=ds=#s11#" }; --Turalyon's Legguards of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 48375, "=ds=#s9#" }; --Wrynn's Gauntlets of Conquest
		[7] = { itemID = 48373, "=ds=#s11#" }; --Wrynn's Legplates of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48449, "=ds=#s9#" }; --Wrynn's Handguards of Conquest
		[11] = { itemID = 48445, "=ds=#s11#" }; --Wrynn's Legguards of Conquest
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807, "=ds=#s9#" }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847, "=ds=#s11#" }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41909, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Dominance
		[3] = { itemID = 41898, "=ds=#s10#" }; --Furious Gladiator's Cord of Dominance
		[4] = { itemID = 41903, "=ds=#s12#" }; --Furious Gladiator's Slippers of Dominance
		[6] = { itemID = 41893, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Salvation
		[7] = { itemID = 41881, "=ds=#s10#" }; --Furious Gladiator's Cord of Salvation
		[8] = { itemID = 41885, "=ds=#s12#" }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630, "=ds=#s10#" }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635, "=ds=#s12#" }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617, "=ds=#s10#" }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621, "=ds=#s12#" }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832, "=ds=#s10#" }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836, "=ds=#s12#" }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41065, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Dominance
		[3] = { itemID = 41070, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Dominance
		[4] = { itemID = 41075, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Dominance
		[6] = { itemID = 41060, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Salvation
		[7] = { itemID = 41051, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Salvation
		[8] = { itemID = 41055, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983, "=ds=#s8#" }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976, "=ds=#s10#" }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977, "=ds=#s12#" }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889, "=ds=#s8#" }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881, "=ds=#s10#" }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882, "=ds=#s12#" }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42071, "=ds=#s4#" }; --Furious Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42073, "=ds=#s4#" }; --Furious Gladiator's Cloak of Deliverance
		[4] = { itemID = 42069, "=ds=#s4#" }; --Furious Gladiator's Cloak of Dominance
		[5] = { itemID = 42072, "=ds=#s4#" }; --Furious Gladiator's Cloak of Salvation
		[6] = { itemID = 42070, "=ds=#s4#" }; --Furious Gladiator's Cloak of Subjugation
		[7] = { itemID = 42074, "=ds=#s4#" }; --Furious Gladiator's Cloak of Triumph
		[8] = { itemID = 42075, "=ds=#s4#" }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037, "=ds=#s2#" }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039, "=ds=#s2#" }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036, "=ds=#s2#" }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040, "=ds=#s2#" }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038, "=ds=#s2#" }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373, "=ds=#s2#" }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034, "=ds=#s2#" }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035, "=ds=#s2#" }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116, "=ds=#s13#" }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117, "=ds=#s13#" }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 47753, "=ds=#s9#" }; --Khadgar's Gauntlets of Triumph
		[3] = { itemID = 47755, "=ds=#s11#" }; --Khadgar's Leggings of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 47983, "=ds=#s9#" }; --Velen's Gloves of Triumph
		[7] = { itemID = 47985, "=ds=#s11#" }; --Velen's Leggings of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48077, "=ds=#s9#" }; --Velen's Handwraps of Triumph
		[11] = { itemID = 48079, "=ds=#s11#" }; --Velen's Pants of Triumph
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47782, "=ds=#s9#" }; --Kel'Thuzad's Gloves of Triumph
		[15] = { itemID = 47780, "=ds=#s11#" }; --Kel'Thuzad's Leggings of Triumph
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972, "=ds=#s9#" }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960, "=ds=#s11#" }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875, "=ds=#s9#" }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865, "=ds=#s11#" }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941, "=ds=#s9#" }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928, "=ds=#s11#" }; --Relentless Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018, "=ds=#s9#" }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006, "=ds=#s11#" }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 48163, "=ds=#s9#" }; --Stormrage's Gloves of Triumph
		[3] = { itemID = 48165, "=ds=#s11#" }; --Stormrage's Trousers of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 48212, "=ds=#s9#" }; --Stormrage's Handgrips of Triumph
		[7] = { itemID = 48210, "=ds=#s11#" }; --Stormrage's Legguards of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48133, "=ds=#s9#" }; --Stormrage's Handguards of Triumph
		[11] = { itemID = 48135, "=ds=#s11#" }; --Stormrage's Leggings of Triumph
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48224, "=ds=#s9#" }; --VanCleef's Gauntlets of Triumph
		[15] = { itemID = 48226, "=ds=#s11#" }; --VanCleef's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294, "=ds=#s9#" }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305, "=ds=#s11#" }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774, "=ds=#s9#" }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668, "=ds=#s11#" }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288, "=ds=#s9#" }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299, "=ds=#s11#" }; --Relentless Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768, "=ds=#s9#" }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656, "=ds=#s11#" }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 48256, "=ds=#s9#" }; --Windrunner's Handguards of Triumph
		[3] = { itemID = 48258, "=ds=#s11#" }; --Windrunner's Legguards of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 48317, "=ds=#s9#" }; --Nobundo's Gloves of Triumph
		[7] = { itemID = 48319, "=ds=#s11#" }; --Nobundo's Kilt of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48347, "=ds=#s9#" }; --Nobundo's Grips of Triumph
		[11] = { itemID = 48349, "=ds=#s11#" }; --Nobundo's War-Kilt of Triumph
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48286, "=ds=#s9#" }; --Nobundo's Handguards of Triumph
		[15] = { itemID = 48288, "=ds=#s11#" }; --Nobundo's Legguards of Triumph
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144, "=ds=#s9#" }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206, "=ds=#s11#" }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008, "=ds=#s9#" }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034, "=ds=#s11#" }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138, "=ds=#s9#" }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200, "=ds=#s11#" }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002, "=ds=#s9#" }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028, "=ds=#s11#" }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 48482, "=ds=#s9#" }; --Thassarian's Gauntlets of Triumph
		[3] = { itemID = 48484, "=ds=#s11#" }; --Thassarian's Legplates of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 48539, "=ds=#s9#" }; --Thassarian's Handguards of Triumph
		[7] = { itemID = 48541, "=ds=#s11#" }; --Thassarian's Legguards of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48576, "=ds=#s9#" }; --Turalyon's Gloves of Triumph
		[11] = { itemID = 48578, "=ds=#s11#" }; --Turalyon's Greaves of Triumph
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48608, "=ds=#s9#" }; --Turalyon's Gauntlets of Triumph
		[15] = { itemID = 48610, "=ds=#s11#" }; --Turalyon's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811, "=ds=#s9#" }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851, "=ds=#s11#" }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928, "=ds=#s9#" }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940, "=ds=#s11#" }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812, "=ds=#s9#" }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852, "=ds=#s11#" }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 48640, "=ds=#s9#" }; --Turalyon's Handguards of Triumph
		[3] = { itemID = 48638, "=ds=#s11#" }; --Turalyon's Legguards of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 48377, "=ds=#s9#" }; --Wrynn's Gauntlets of Triumph
		[7] = { itemID = 48379, "=ds=#s11#" }; --Wrynn's Legplates of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48452, "=ds=#s9#" }; --Wrynn's Handguards of Triumph
		[11] = { itemID = 48446, "=ds=#s11#" }; --Wrynn's Legguards of Triumph
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810, "=ds=#s9#" }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850, "=ds=#s11#" }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41910, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Dominance
		[3] = { itemID = 41899, "=ds=#s10#" }; --Relentless Gladiator's Cord of Dominance
		[4] = { itemID = 41904, "=ds=#s12#" }; --Relentless Gladiator's Treads of Dominance
		[6] = { itemID = 41894, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Salvation
		[7] = { itemID = 41882, "=ds=#s10#" }; --Relentless Gladiator's Cord of Salvation
		[8] = { itemID = 41886, "=ds=#s12#" }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179, "=ds=#s10#" }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183, "=ds=#s12#" }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631, "=ds=#s10#" }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636, "=ds=#s12#" }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618, "=ds=#s10#" }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622, "=ds=#s12#" }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833, "=ds=#s10#" }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837, "=ds=#s12#" }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41066, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Dominance
		[3] = { itemID = 41071, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Dominance
		[4] = { itemID = 41076, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Dominance
		[6] = { itemID = 41061, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Salvation
		[7] = { itemID = 41052, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Salvation
		[8] = { itemID = 41056, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42078, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42080, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Deliverance
		[4] = { itemID = 42076, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Dominance
		[5] = { itemID = 42079, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Salvation
		[6] = { itemID = 42077, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Subjugation
		[7] = { itemID = 42081, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Triumph
		[8] = { itemID = 42082, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118, "=ds=#s13#" }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119, "=ds=#s13#" }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 47773, "=ds=#s9#" }; --Sunstrider's Gauntlets of Conquest
		[3] = { itemID = 47775, "=ds=#s11#" }; --Sunstrider's Leggings of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 48067, "=ds=#s9#" }; --Zabra's Gloves of Conquest
		[7] = { itemID = 48069, "=ds=#s11#" }; --Zabra's Leggings of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48097, "=ds=#s9#" }; --Zabra's Handwraps of Conquest
		[11] = { itemID = 48099, "=ds=#s11#" }; --Zabra's Pants of Conquest
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47802, "=ds=#s9#" }; --Gul'dan's Gloves of Conquest
		[15] = { itemID = 47800, "=ds=#s11#" }; --Gul'dan's Leggings of Conquest
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971, "=ds=#s9#" }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959, "=ds=#s11#" }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874, "=ds=#s9#" }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864, "=ds=#s11#" }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940, "=ds=#s9#" }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927, "=ds=#s11#" }; --Furious Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017, "=ds=#s9#" }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005, "=ds=#s11#" }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 48183, "=ds=#s9#" }; --Runetotem's Gloves of Conquest
		[3] = { itemID = 48185, "=ds=#s11#" }; --Runetotem's Trousers of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 48192, "=ds=#s9#" }; --Runetotem's Handgrips of Conquest
		[7] = { itemID = 48190, "=ds=#s11#" }; --Runetotem's Legguards of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48153, "=ds=#s9#" }; --Runetotem's Handguards of Conquest
		[11] = { itemID = 48155, "=ds=#s11#" }; --Runetotem's Leggings of Conquest
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48244, "=ds=#s9#" }; --Garona's Gauntlets of Conquest
		[15] = { itemID = 48246, "=ds=#s11#" }; --Garona's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293, "=ds=#s9#" }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304, "=ds=#s11#" }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773, "=ds=#s9#" }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667, "=ds=#s11#" }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287, "=ds=#s9#" }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298, "=ds=#s11#" }; --Furious Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767, "=ds=#s9#" }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655, "=ds=#s11#" }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 48276, "=ds=#s9#" }; --Windrunner's Handguards of Conquest
		[3] = { itemID = 48278, "=ds=#s11#" }; --Windrunner's Legguards of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 48337, "=ds=#s9#" }; --Thrall's Gloves of Conquest
		[7] = { itemID = 48339, "=ds=#s11#" }; --Thrall's Kilt of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48367, "=ds=#s9#" }; --Thrall's Grips of Conquest
		[11] = { itemID = 48369, "=ds=#s11#" }; --Thrall's War-Kilt of Conquest
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48296, "=ds=#s9#" }; --Thrall's Handguards of Conquest
		[15] = { itemID = 48298, "=ds=#s11#" }; --Thrall's Legguards of Conquest
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143, "=ds=#s9#" }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205, "=ds=#s11#" }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007, "=ds=#s9#" }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033, "=ds=#s11#" }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137, "=ds=#s9#" }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199, "=ds=#s11#" }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001, "=ds=#s9#" }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027, "=ds=#s11#" }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 48502, "=ds=#s9#" }; --Koltira's Gauntlets of Conquest
		[3] = { itemID = 48504, "=ds=#s11#" }; --Koltira's Legplates of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 48559, "=ds=#s9#" }; --Koltira's Handguards of Conquest
		[7] = { itemID = 48561, "=ds=#s11#" }; --Koltira's Legguards of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48598, "=ds=#s9#" }; --Liadrin's Gloves of Conquest
		[11] = { itemID = 48596, "=ds=#s11#" }; --Liadrin's Greaves of Conquest
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48630, "=ds=#s9#" }; --Liadrin's Gauntlets of Conquest
		[15] = { itemID = 48628, "=ds=#s11#" }; --Liadrin's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809, "=ds=#s9#" }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848, "=ds=#s11#" }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927, "=ds=#s9#" }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939, "=ds=#s11#" }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808, "=ds=#s9#" }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849, "=ds=#s11#" }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 48653, "=ds=#s9#" }; --Liadrin's Handguards of Conquest
		[3] = { itemID = 48655, "=ds=#s11#" }; --Liadrin's Legguards of Conquest
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 48387, "=ds=#s9#" }; --Hellscream's Gauntlets of Conquest
		[7] = { itemID = 48389, "=ds=#s11#" }; --Hellscream's Legplates of Conquest
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48457, "=ds=#s9#" }; --Hellscream's Handguards of Conquest
		[11] = { itemID = 48459, "=ds=#s11#" }; --Hellscream's Legguards of Conquest
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807, "=ds=#s9#" }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847, "=ds=#s11#" }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41909, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Dominance
		[3] = { itemID = 41898, "=ds=#s10#" }; --Furious Gladiator's Cord of Dominance
		[4] = { itemID = 41903, "=ds=#s12#" }; --Furious Gladiator's Slippers of Dominance
		[6] = { itemID = 41893, "=ds=#s8#" }; --Furious Gladiator's Cuffs of Salvation
		[7] = { itemID = 41881, "=ds=#s10#" }; --Furious Gladiator's Cord of Salvation
		[8] = { itemID = 41885, "=ds=#s12#" }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630, "=ds=#s10#" }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635, "=ds=#s12#" }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617, "=ds=#s10#" }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621, "=ds=#s12#" }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840, "=ds=#s8#" }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832, "=ds=#s10#" }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836, "=ds=#s12#" }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41065, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Dominance
		[3] = { itemID = 41070, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Dominance
		[4] = { itemID = 41075, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Dominance
		[6] = { itemID = 41060, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Salvation
		[7] = { itemID = 41051, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Salvation
		[8] = { itemID = 41055, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225, "=ds=#s8#" }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235, "=ds=#s10#" }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230, "=ds=#s12#" }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983, "=ds=#s8#" }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976, "=ds=#s10#" }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977, "=ds=#s12#" }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889, "=ds=#s8#" }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881, "=ds=#s10#" }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882, "=ds=#s12#" }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42071, "=ds=#s4#" }; --Furious Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42073, "=ds=#s4#" }; --Furious Gladiator's Cloak of Deliverance
		[4] = { itemID = 42069, "=ds=#s4#" }; --Furious Gladiator's Cloak of Dominance
		[5] = { itemID = 42072, "=ds=#s4#" }; --Furious Gladiator's Cloak of Salvation
		[6] = { itemID = 42070, "=ds=#s4#" }; --Furious Gladiator's Cloak of Subjugation
		[7] = { itemID = 42074, "=ds=#s4#" }; --Furious Gladiator's Cloak of Triumph
		[8] = { itemID = 42075, "=ds=#s4#" }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037, "=ds=#s2#" }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039, "=ds=#s2#" }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036, "=ds=#s2#" }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040, "=ds=#s2#" }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038, "=ds=#s2#" }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373, "=ds=#s2#" }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034, "=ds=#s2#" }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035, "=ds=#s2#" }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116, "=ds=#s13#" }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117, "=ds=#s13#" }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 47772, "=ds=#s9#" }; --Sunstrider's Gauntlets of Triumph
		[3] = { itemID = 47770, "=ds=#s11#" }; --Sunstrider's Leggings of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 48066, "=ds=#s9#" }; --Zabra's Gloves of Triumph
		[7] = { itemID = 48064, "=ds=#s11#" }; --Zabra's Leggings of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48096, "=ds=#s9#" }; --Zabra's Handwraps of Triumph
		[11] = { itemID = 48094, "=ds=#s11#" }; --Zabra's Pants of Triumph
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47803, "=ds=#s9#" }; --Gul'dan's Gloves of Triumph
		[15] = { itemID = 47805, "=ds=#s11#" }; --Gul'dan's Leggings of Triumph
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972, "=ds=#s9#" }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960, "=ds=#s11#" }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875, "=ds=#s9#" }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865, "=ds=#s11#" }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941, "=ds=#s9#" }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928, "=ds=#s11#" }; --Relentless Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018, "=ds=#s9#" }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006, "=ds=#s11#" }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 48182, "=ds=#s9#" }; --Runetotem's Gloves of Triumph
		[3] = { itemID = 48180, "=ds=#s11#" }; --Runetotem's Trousers of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 48193, "=ds=#s9#" }; --Runetotem's Handgrips of Triumph
		[7] = { itemID = 48195, "=ds=#s11#" }; --Runetotem's Legguards of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48152, "=ds=#s9#" }; --Runetotem's Handguards of Triumph
		[11] = { itemID = 48150, "=ds=#s11#" }; --Runetotem's Leggings of Triumph
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48241, "=ds=#s9#" }; --Garona's Gauntlets of Triumph
		[15] = { itemID = 48239, "=ds=#s11#" }; --Garona's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294, "=ds=#s9#" }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305, "=ds=#s11#" }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774, "=ds=#s9#" }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668, "=ds=#s11#" }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288, "=ds=#s9#" }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299, "=ds=#s11#" }; --Relentless Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768, "=ds=#s9#" }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656, "=ds=#s11#" }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 48273, "=ds=#s9#" }; --Windrunner's Handguards of Triumph
		[3] = { itemID = 48271, "=ds=#s11#" }; --Windrunner's Legguards of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 48334, "=ds=#s9#" }; --Thrall's Gloves of Triumph
		[7] = { itemID = 48332, "=ds=#s11#" }; --Thrall's Kilt of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48364, "=ds=#s9#" }; --Thrall's Grips of Triumph
		[11] = { itemID = 48362, "=ds=#s11#" }; --Thrall's War-Kilt of Triumph
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48301, "=ds=#s9#" }; --Thrall's Handguards of Triumph
		[15] = { itemID = 48303, "=ds=#s11#" }; --Thrall's Legguards of Triumph
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144, "=ds=#s9#" }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206, "=ds=#s11#" }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008, "=ds=#s9#" }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034, "=ds=#s11#" }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138, "=ds=#s9#" }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200, "=ds=#s11#" }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002, "=ds=#s9#" }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028, "=ds=#s11#" }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 48499, "=ds=#s9#" }; --Koltira's Gauntlets of Triumph
		[3] = { itemID = 48497, "=ds=#s11#" }; --Koltira's Legplates of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 48556, "=ds=#s9#" }; --Koltira's Handguards of Triumph
		[7] = { itemID = 48554, "=ds=#s11#" }; --Koltira's Legguards of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48593, "=ds=#s9#" }; --Liadrin's Gloves of Triumph
		[11] = { itemID = 48591, "=ds=#s11#" }; --Liadrin's Greaves of Triumph
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48625, "=ds=#s9#" }; --Liadrin's Gauntlets of Triumph
		[15] = { itemID = 48623, "=ds=#s11#" }; --Liadrin's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811, "=ds=#s9#" }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851, "=ds=#s11#" }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928, "=ds=#s9#" }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940, "=ds=#s11#" }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812, "=ds=#s9#" }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852, "=ds=#s11#" }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 48658, "=ds=#s9#" }; --Liadrin's Handguards of Triumph
		[3] = { itemID = 48660, "=ds=#s11#" }; --Liadrin's Legguards of Triumph
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 48392, "=ds=#s9#" }; --Hellscream's Gauntlets of Triumph
		[7] = { itemID = 48394, "=ds=#s11#" }; --Hellscream's Legplates of Triumph
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48462, "=ds=#s9#" }; --Hellscream's Handguards of Triumph
		[11] = { itemID = 48464, "=ds=#s11#" }; --Hellscream's Legguards of Triumph
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810, "=ds=#s9#" }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850, "=ds=#s11#" }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41910, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Dominance
		[3] = { itemID = 41899, "=ds=#s19#" }; --Relentless Gladiator's Cord of Dominance
		[4] = { itemID = 41904, "=ds=#s12#" }; --Relentless Gladiator's Treads of Dominance
		[6] = { itemID = 41894, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Salvation
		[7] = { itemID = 41882, "=ds=#s10#" }; --Relentless Gladiator's Cord of Salvation
		[8] = { itemID = 41886, "=ds=#s12#" }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179, "=ds=#s10#" }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183, "=ds=#s12#" }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631, "=ds=#s10#" }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636, "=ds=#s12#" }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618, "=ds=#s10#" }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622, "=ds=#s12#" }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833, "=ds=#s10#" }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837, "=ds=#s12#" }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41066, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Dominance
		[3] = { itemID = 41071, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Dominance
		[4] = { itemID = 41076, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Dominance
		[6] = { itemID = 41061, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Salvation
		[7] = { itemID = 41052, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Salvation
		[8] = { itemID = 41056, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42078, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42080, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Deliverance
		[4] = { itemID = 42076, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Dominance
		[5] = { itemID = 42079, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Salvation
		[6] = { itemID = 42077, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Subjugation
		[7] = { itemID = 42081, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Triumph
		[8] = { itemID = 42082, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 47241, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Triumph
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118, "=ds=#s13#" }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119, "=ds=#s13#" }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 50275, "=ds=#s9#" }; --Bloodmage Gloves
		[3] = { itemID = 50277, "=ds=#s11#" }; --Bloodmage Leggings
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 50766, "=ds=#s9#" }; --Crimson Acolyte Gloves
		[7] = { itemID = 50769, "=ds=#s11#" }; --Crimson Acolyte Leggings
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 50391, "=ds=#s9#" }; --Crimson Acolyte Handwraps
		[11] = { itemID = 50393, "=ds=#s11#" }; --Crimson Acolyte Pants
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 50240, "=ds=#s9#" }; --Dark Coven Gloves
		[15] = { itemID = 50242, "=ds=#s11#" }; --Dark Coven Leggings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972, "=ds=#s9#" }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960, "=ds=#s11#" }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875, "=ds=#s9#" }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865, "=ds=#s11#" }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941, "=ds=#s9#" }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928, "=ds=#s11#" }; --Relentless Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018, "=ds=#s9#" }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006, "=ds=#s11#" }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 50822, "=ds=#s9#" }; --Lasherweave's Gloves
		[3] = { itemID = 50820, "=ds=#s11#" }; --Lasherweave's Trousers
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 50827, "=ds=#s9#" }; --Lasherweave's Handgrips
		[7] = { itemID = 50825, "=ds=#s11#" }; --Lasherweave's Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 50107, "=ds=#s9#" }; --Lasherweave's Gauntlets
		[11] = { itemID = 50109, "=ds=#s11#" }; --Lasherweave's Legplates
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 50088, "=ds=#s9#" }; --Shadowblade Gauntlets
		[15] = { itemID = 50090, "=ds=#s11#" }; --Shadowblade Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294, "=ds=#s9#" }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305, "=ds=#s11#" }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774, "=ds=#s9#" }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668, "=ds=#s11#" }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288, "=ds=#s9#" }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299, "=ds=#s11#" }; --Relentless Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768, "=ds=#s9#" }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656, "=ds=#s11#" }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 50114, "=ds=#s9#" }; --Ahn'Kahar Blood Hunter's Handguards
		[3] = { itemID = 50116, "=ds=#s11#" }; --Ahn'Kahar Blood Hunter's Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 50842, "=ds=#s9#" }; --Frost Witch's Gloves
		[7] = { itemID = 50844, "=ds=#s11#" }; --Frost Witch's Kilt
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 50831, "=ds=#s9#" }; --Frost Witch's Grips
		[11] = { itemID = 50833, "=ds=#s11#" }; --Frost Witch's War-Kilt
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 50836, "=ds=#s9#" }; --Frost Witch's Handguards
		[15] = { itemID = 50838, "=ds=#s11#" }; --Frost Witch's Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144, "=ds=#s9#" }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206, "=ds=#s11#" }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008, "=ds=#s9#" }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034, "=ds=#s11#" }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138, "=ds=#s9#" }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200, "=ds=#s11#" }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002, "=ds=#s9#" }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028, "=ds=#s11#" }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 50095, "=ds=#s9#" }; --Scourgelord Gauntlets
		[3] = { itemID = 50097, "=ds=#s11#" }; --Scourgelord Legplates
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 50856, "=ds=#s9#" }; --Scourgelord Handguards
		[7] = { itemID = 50854, "=ds=#s11#" }; --Scourgelord Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 50868, "=ds=#s9#" }; --Lightsworn Gloves
		[11] = { itemID = 50866, "=ds=#s11#" }; --Lightsworn Greaves
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 50327, "=ds=#s9#" }; --Lightsworn Gauntlets
		[15] = { itemID = 50325, "=ds=#s11#" }; --Lightsworn Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811, "=ds=#s9#" }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851, "=ds=#s11#" }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928, "=ds=#s9#" }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940, "=ds=#s11#" }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812, "=ds=#s9#" }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852, "=ds=#s11#" }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 50863, "=ds=#s9#" }; --Lightsworn Handguards
		[3] = { itemID = 50861, "=ds=#s11#" }; --Lightsworn Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 50079, "=ds=#s9#" }; --Ymirjar Lord's Gauntlets
		[7] = { itemID = 50081, "=ds=#s11#" }; --Ymirjar Lord's Legplates
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 50849, "=ds=#s9#" }; --Ymirjar Lord's Handguards
		[11] = { itemID = 50847, "=ds=#s11#" }; --Ymirjar Lord's Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810, "=ds=#s9#" }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850, "=ds=#s11#" }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 41910, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Dominance
		[3] = { itemID = 41899, "=ds=#s10#" }; --Relentless Gladiator's Cord of Dominance
		[4] = { itemID = 41904, "=ds=#s12#" }; --Relentless Gladiator's Treads of Dominance
		[6] = { itemID = 41894, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Salvation
		[7] = { itemID = 41882, "=ds=#s10#" }; --Relentless Gladiator's Cord of Salvation
		[8] = { itemID = 41886, "=ds=#s12#" }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181, "=ds=#s8#" }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179, "=ds=#s10#" }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183, "=ds=#s12#" }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631, "=ds=#s10#" }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636, "=ds=#s12#" }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618, "=ds=#s10#" }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622, "=ds=#s12#" }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841, "=ds=#s8#" }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833, "=ds=#s10#" }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837, "=ds=#s12#" }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 41066, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Dominance
		[3] = { itemID = 41071, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Dominance
		[4] = { itemID = 41076, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Dominance
		[6] = { itemID = 41061, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Salvation
		[7] = { itemID = 41052, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Salvation
		[8] = { itemID = 41056, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226, "=ds=#s8#" }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236, "=ds=#s10#" }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231, "=ds=#s12#" }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890, "=ds=#s8#" }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883, "=ds=#s10#" }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884, "=ds=#s12#" }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 42078, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Ascendancy
		[3] = { itemID = 42080, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Deliverance
		[4] = { itemID = 42076, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Dominance
		[5] = { itemID = 42079, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Salvation
		[6] = { itemID = 42077, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Subjugation
		[7] = { itemID = 42081, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Triumph
		[8] = { itemID = 42082, "=ds=#s4#" }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 49426, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Frost
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042, "=ds=#s2#" }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118, "=ds=#s13#" }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119, "=ds=#s13#" }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[2] = { itemID = 51159, "=ds=#s9#" }; --Sanctified Bloodmage Gloves
		[3] = { itemID = 51157, "=ds=#s11#" }; --Sanctified Bloodmage Leggings
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[6] = { itemID = 51179, "=ds=#s9#" }; --Sanctified Crimson Acolyte Gloves
		[7] = { itemID = 51177, "=ds=#s11#" }; --Sanctified Crimson Acolyte Leggings
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 51183, "=ds=#s9#" }; --Sanctified Crimson Acolyte Handwraps
		[11] = { itemID = 51181, "=ds=#s11#" }; --Sanctified Crimson Acolyte Pants
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 51209, "=ds=#s9#" }; --Sanctified Dark Coven Gloves
		[15] = { itemID = 51207, "=ds=#s11#" }; --Sanctified Dark Coven Leggings
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 51464, "=ds=#s9#" }; --Wrathful Gladiator's Silk Handguards
		[18] = { itemID = 51466, "=ds=#s11#" }; --Wrathful Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 51483, "=ds=#s9#" }; --Wrathful Gladiator's Mooncloth Gloves
		[22] = { itemID = 51485, "=ds=#s11#" }; --Wrathful Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 51488, "=ds=#s9#" }; --Wrathful Gladiator's Satin Gloves
		[26] = { itemID = 51490, "=ds=#s11#" }; --Wrathful Gladiator's Satin Leggings
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 51537, "=ds=#s9#" }; --Wrathful Gladiator's Felweave Handguards
		[30] = { itemID = 51539, "=ds=#s11#" }; --Wrathful Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[2] = { itemID = 51148, "=ds=#s9#" }; --Sanctified Lasherweave's Gloves
		[3] = { itemID = 51146, "=ds=#s11#" }; --Sanctified Lasherweave's Trousers
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[6] = { itemID = 51144, "=ds=#s9#" }; --Sanctified Lasherweave's Handgrips
		[7] = { itemID = 51142, "=ds=#s11#" }; --Sanctified Lasherweave's Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 51138, "=ds=#s9#" }; --Sanctified Lasherweave's Gauntlets
		[11] = { itemID = 51136, "=ds=#s11#" }; --Sanctified Lasherweave's Legplates
		[13] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 51188, "=ds=#s9#" }; --Sanctified Shadowblade Gauntlets
		[15] = { itemID = 51186, "=ds=#s11#" }; --Sanctified Shadowblade Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 51434, "=ds=#s9#" }; --Wrathful Gladiator's Wyrmhide Gloves
		[18] = { itemID = 51436, "=ds=#s11#" }; --Wrathful Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 51426, "=ds=#s9#" }; --Wrathful Gladiator's Dragonhide Gloves
		[22] = { itemID = 51428, "=ds=#s11#" }; --Wrathful Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 51420, "=ds=#s9#" }; --Wrathful Gladiator's Kodohide Gloves
		[26] = { itemID = 51422, "=ds=#s11#" }; --Wrathful Gladiator's Kodohide Legguards
		[28] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 51493, "=ds=#s9#" }; --Wrathful Gladiator's Leather Gloves
		[30] = { itemID = 51495, "=ds=#s11#" }; --Wrathful Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[2] = { itemID = 51154, "=ds=#s9#" }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[3] = { itemID = 51152, "=ds=#s11#" }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[6] = { itemID = 51201, "=ds=#s9#" }; --Sanctified Frost Witch's Gloves
		[7] = { itemID = 51203, "=ds=#s11#" }; --Sanctified Frost Witch's Kilt
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 51196, "=ds=#s9#" }; --Sanctified Frost Witch's Grips
		[11] = { itemID = 51198, "=ds=#s11#" }; --Sanctified Frost Witch's War-Kilt
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 51191, "=ds=#s9#" }; --Sanctified Frost Witch's Handguards
		[15] = { itemID = 51193, "=ds=#s11#" }; --Sanctified Frost Witch's Legguards
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 51459, "=ds=#s9#" }; --Wrathful Gladiator's Chain Gauntlets
		[18] = { itemID = 51461, "=ds=#s11#" }; --Wrathful Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 51510, "=ds=#s9#" }; --Wrathful Gladiator's Mail Gauntlets
		[22] = { itemID = 51512, "=ds=#s11#" }; --Wrathful Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 51504, "=ds=#s9#" }; --Wrathful Gladiator's Linked Gauntlets
		[26] = { itemID = 51506, "=ds=#s11#" }; --Wrathful Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 51498, "=ds=#s9#" }; --Wrathful Gladiator's Ringmail Gauntlets
		[30] = { itemID = 51500, "=ds=#s11#" }; --Wrathful Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[2] = { itemID = 51128, "=ds=#s9#" }; --Sanctified Scourgelord Gauntlets
		[3] = { itemID = 51126, "=ds=#s11#" }; --Sanctified Scourgelord Legplates
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[6] = { itemID = 51132, "=ds=#s9#" }; --Sanctified Scourgelord Handguards
		[7] = { itemID = 51131, "=ds=#s11#" }; --Sanctified Scourgelord Legguards
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 51169, "=ds=#s9#" }; --Sanctified Lightsworn Gloves
		[11] = { itemID = 51168, "=ds=#s11#" }; --Sanctified Lightsworn Greaves
		[13] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 51163, "=ds=#s9#" }; --Sanctified Lightsworn Gauntlets
		[15] = { itemID = 51161, "=ds=#s11#" }; --Sanctified Lightsworn Legplates
		[16] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 51414, "=ds=#s9#" }; --Wrathful Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 51416, "=ds=#s11#" }; --Wrathful Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 51469, "=ds=#s9#" }; --Wrathful Gladiator's Ornamented Gloves
		[26] = { itemID = 51471, "=ds=#s11#" }; --Wrathful Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 51475, "=ds=#s9#" }; --Wrathful Gladiator's Scaled Gauntlets
		[30] = { itemID = 51477, "=ds=#s11#" }; --Wrathful Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[2] = { itemID = 51172, "=ds=#s9#" }; --Sanctified Lightsworn Handguards
		[3] = { itemID = 51171, "=ds=#s11#" }; --Sanctified Lightsworn Legguards
		[5] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[6] = { itemID = 51213, "=ds=#s9#" }; --Ymirjar Lord's Gauntlets
		[7] = { itemID = 51211, "=ds=#s11#" }; --Ymirjar Lord's Legplates
		[9] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 51217, "=ds=#s9#" }; --Ymirjar Lord's Handguards
		[11] = { itemID = 51216, "=ds=#s11#" }; --Ymirjar Lord's Legguards
		[20] = { icon = "INV_Box_01", name = "=q6=" .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 51542, "=ds=#s9#" }; --Wrathful Gladiator's Plate Gauntlets
		[22] = { itemID = 51544, "=ds=#s11#" }; --Wrathful Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[2] = { itemID = 51329, "=ds=#s8#" }; --Wrathful Gladiator's Cuffs of Dominance
		[3] = { itemID = 51327, "=ds=#s10#" }; --Wrathful Gladiator's Cord of Dominance
		[4] = { itemID = 51328, "=ds=#s12#" }; --Wrathful Gladiator's Treads of Dominance
		[6] = { itemID = 51367, "=ds=#s8#" }; --Wrathful Gladiator's Cuffs of Salvation
		[7] = { itemID = 51365, "=ds=#s10#" }; --Wrathful Gladiator's Cord of Salvation
		[8] = { itemID = 51366, "=ds=#s12#" }; --Wrathful Gladiator's Treads of Salvation
		[10] = { itemID = 51339, "=ds=#s8#" }; --Wrathful Gladiator's Cuffs of Alacrity
		[11] = { itemID = 51337, "=ds=#s10#" }; --Wrathful Gladiator's Cord of Alacrity
		[12] = { itemID = 51338, "=ds=#s12#" }; --Wrathful Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 51345, "=ds=#s8#" }; --Wrathful Gladiator's Armwraps of Dominance
		[18] = { itemID = 51343, "=ds=#s10#" }; --Wrathful Gladiator's Belt of Dominance
		[19] = { itemID = 51344, "=ds=#s12#" }; --Wrathful Gladiator's Boots of Dominance
		[21] = { itemID = 51342, "=ds=#s8#" }; --Wrathful Gladiator's Armwraps of Salvation
		[22] = { itemID = 51340, "=ds=#s10#" }; --Wrathful Gladiator's Belt of Salvation
		[23] = { itemID = 51341, "=ds=#s12#" }; --Wrathful Gladiator's Boots of Salvation
		[25] = { itemID = 51370, "=ds=#s8#" }; --Wrathful Gladiator's Armwraps of Triumph
		[26] = { itemID = 51368, "=ds=#s10#" }; --Wrathful Gladiator's Belt of Triumph
		[27] = { itemID = 51369, "=ds=#s12#" }; --Wrathful Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[2] = { itemID = 51376, "=ds=#s8#" }; --Wrathful Gladiator's Wristguards of Dominance
		[3] = { itemID = 51374, "=ds=#s10#" }; --Wrathful Gladiator's Waistguard of Dominance
		[4] = { itemID = 51375, "=ds=#s12#" }; --Wrathful Gladiator's Sabatons of Dominance
		[6] = { itemID = 51373, "=ds=#s8#" }; --Wrathful Gladiator's Wristguards of Salvation
		[7] = { itemID = 51371, "=ds=#s10#" }; --Wrathful Gladiator's Waistguard of Salvation
		[8] = { itemID = 51372, "=ds=#s12#" }; --Wrathful Gladiator's Sabatons of Salvation
		[10] = { itemID = 51352, "=ds=#s8#" }; --Wrathful Gladiator's Wristguards of Triumph
		[11] = { itemID = 51350, "=ds=#s10#" }; --Wrathful Gladiator's Waistguard of Triumph
		[12] = { itemID = 51351, "=ds=#s12#" }; --Wrathful Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 51361, "=ds=#s8#" }; --Wrathful Gladiator's Bracers of Salvation
		[18] = { itemID = 51359, "=ds=#s10#" }; --Wrathful Gladiator's Girdle of Salvation
		[19] = { itemID = 51360, "=ds=#s12#" }; --Wrathful Gladiator's Greaves of Salvation
		[21] = { itemID = 51364, "=ds=#s8#" }; --Wrathful Gladiator's Bracers of Triumph
		[22] = { itemID = 51362, "=ds=#s10#" }; --Wrathful Gladiator's Girdle of Triumph
		[23] = { itemID = 51363, "=ds=#s12#" }; --Wrathful Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[2] = { itemID = 51334, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Ascendancy
		[3] = { itemID = 51348, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Deliverance
		[4] = { itemID = 51330, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Dominance
		[5] = { itemID = 51346, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Salvation
		[6] = { itemID = 51332, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Subjugation
		[7] = { itemID = 51354, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Triumph
		[8] = { itemID = 51356, "=ds=#s4#" }; --Wrathful Gladiator's Cloak of Victory
		[11] = { itemID = 49426, desc = "=ds=#e15#", droprate = "00%" }; --Emblem of Frost
		[12] = { itemID = 43959, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 51335, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Ascendancy
		[18] = { itemID = 51349, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Deliverance
		[19] = { itemID = 51331, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Dominance
		[20] = { itemID = 51347, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Salvation
		[21] = { itemID = 51333, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Subjugation
		[22] = { itemID = 51353, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Sundering
		[23] = { itemID = 51355, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Triumph
		[24] = { itemID = 51357, "=ds=#s2#" }; --Wrathful Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = "=q6=" .. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 51336, "=ds=#s13#" }; --Wrathful Gladiator's Band of Dominance
		[28] = { itemID = 51358, "=ds=#s13#" }; --Wrathful Gladiator's Band of Triumph
	};
};

-----------------
--- Naxxramas ---
-----------------

-------------------------
--- Construct Quarter ---
-------------------------

AtlasLoot_Data["Naxxramas80"] = {
	Name = BabbleZone["Naxxramas"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Patchwerk"];
		[1] = { itemID = 39272, droprate = "0%" }; --Drape of Surgery
		[2] = { itemID = 39273, droprate = "0%" }; --Sullen Cloth Boots
		[3] = { itemID = 39275, droprate = "0%" }; --Contagion Gloves
		[4] = { itemID = 39274, droprate = "0%" }; --Retcher's Shoulderpads
		[5] = { itemID = 39267, droprate = "3%" }; --Abomination Shoulderblades
		[6] = { itemID = 39262, droprate = "4%" }; --Gauntlets of Combined Strength
		[7] = { itemID = 39261, droprate = "3%" }; --Tainted Girdle of Mending
		[8] = { itemID = 39271, droprate = "0%" }; --Blade of Dormant Memories
		[9] = { itemID = 39270, droprate = "3%" }; --Hatestrike
	};
	{
		Name = BabbleBoss["Patchwerk"];
		[1] = { itemID = 40271, droprate = "9%" }; --Sash of Solitude
		[2] = { itemID = 40269, droprate = "%" }; --Boots of Persuasion
		[3] = { itemID = 40260, droprate = "%" }; --Belt of the Tortured
		[4] = { itemID = 40270, droprate = "%" }; --Boots of Septic Wounds
		[5] = { itemID = 40262, droprate = "%" }; --Gloves of Calculated Risk
		[6] = { itemID = 40272, droprate = "%" }; --Girdle of the Gambit
		[7] = { itemID = 40261, droprate = "%" }; --Crude Discolored Battlegrips
		[8] = { itemID = 40263, desc = "=ds=#s10#. #a4#", droprate = "9%" }; --Fleshless Girdle
		[9] = { itemID = 40259, droprate = "%" }; --Waistguard of Divine Grace
		[10] = { itemID = 40071, droprate = "1%" }; --Chains of Adoration
		[11] = { itemID = 40065, droprate = "1%" }; --Fool's Trial
		[12] = { itemID = 40069, droprate = "1%" }; --Heritage
		[13] = { itemID = 40064, droprate = "1%" }; --Thunderstorm Amulet
		[14] = { itemID = 40080, droprate = "1%" }; --Lost Jewel
		[15] = { itemID = 40075, droprate = "1%" }; --Ruthlessness
		[16] = { itemID = 40107, droprate = "1%" }; --Sand-Worn Band
		[17] = { itemID = 40074, droprate = "2%" }; --Strong-Handed Ring
		[18] = { itemID = 40273, droprate = "%" }; --Surplus Limb
		[19] = { itemID = 40267, desc = "=ds=#s16#", droprate = "%" }; --Totem of Hex
		[20] = { itemID = 40268, desc = "=ds=#s16#", droprate = "9%" }; --Libram of Tolerance
		[21] = { itemID = 40264, droprate = "%" }; --Split Greathammer
		[22] = { itemID = 40266, droprate = "%" }; --Hero's Surrender
		[23] = { itemID = 40265, droprate = "9%" }; --Arrowsong
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[1] = { itemID = 39284, droprate = "8%" }; --Miasma Mantle
		[2] = { itemID = 39285, droprate = "0%" }; --Handgrips of Turmoil
		[3] = { itemID = 39283, droprate = "0%" }; --Putrescent Bands
		[4] = { itemID = 39279, droprate = "%" }; --Blistered Belt of Decay
		[5] = { itemID = 39278, droprate = "%" }; --Bands of Anxiety
		[6] = { itemID = 39280, droprate = "0%" }; --Leggings of Innumerable Barbs
		[7] = { itemID = 39282, droprate = "0%" }; --Bone-Linked Amulet
		[8] = { itemID = 39277, droprate = "%" }; --Sealing Ring of Grobbulus
		[9] = { itemID = 39281, droprate = "9%" }; --Infection Repulser
		[10] = { itemID = 39276, droprate = "%" }; --The Skull of Ruin
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[1] = { itemID = 40250, droprate = "1%" }; --Aged Winter Cloak
		[2] = { itemID = 40254, droprate = "1%" }; --Cloak of Averted Crisis
		[3] = { itemID = 40252, droprate = "1%" }; --Cloak of the Shadowed Sun
		[4] = { itemID = 40253, droprate = "1%" }; --Shawl of the Old Maid
		[5] = { itemID = 40251, droprate = "1%" }; --Shroud of Luminosity
		[6] = { itemID = 40287, droprate = "9%" }; --Cowl of Vanity
		[7] = { itemID = 40286, droprate = "%" }; --Mantle of the Corrupted
		[8] = { itemID = 40351, droprate = "9%" }; --Mantle of the Fatigued Sage
		[9] = { itemID = 40289, droprate = "%" }; --Sympathetic Amice
		[10] = { itemID = 40277, droprate = "8%" }; --Tunic of Indulgence
		[11] = { itemID = 40285, droprate = "%" }; --Desecrated Past
		[12] = { itemID = 40288, droprate = "9%" }; --Spaulders of Incoherence
		[13] = { itemID = 40283, droprate = "%" }; --Fallout Impervious Tunic
		[14] = { itemID = 40282, droprate = "%" }; --Slime Stream Bands
		[15] = { itemID = 40275, droprate = "%" }; --Depraved Linked Belt
		[16] = { itemID = 40279, droprate = "%" }; --Chestguard of the Exhausted
		[17] = { itemID = 40274, droprate = "8%" }; --Bracers of Liberation
		[18] = { itemID = 40278, droprate = "%" }; --Girdle of Chivalry
		[19] = { itemID = 40257, droprate = "1%" }; --Defender's Code
		[20] = { itemID = 40255, droprate = "1%" }; --Dying Curse
		[21] = { itemID = 40258, droprate = "1%" }; --Forethought Talisman
		[22] = { itemID = 40256, droprate = "1%" }; --Grim Toll
		[23] = { itemID = 40281, droprate = "9%" }; --Twilight Mist
		[24] = { itemID = 40280, droprate = "%" }; --Origin of Nightmares
		[25] = { itemID = 40284, droprate = "%" }; --Plague Igniter
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 39272, droprate = "0%" }; --Drape of Surgery
		[2] = { itemID = 39284, droprate = "8%" }; --Miasma Mantle
		[3] = { itemID = 39396, droprate = ".43%" }; --Gown of Blaumeux
		[4] = { itemID = 39309, droprate = "0%" }; --Leggings of the Instructor
		[5] = { itemID = 39237, droprate = "0%" }; --Spaulders of Resumed Battle
		[6] = { itemID = 39279, droprate = "%" }; --Blistered Belt of Decay
		[7] = { itemID = 39191, droprate = "1%" }; --Splint-Bound Leggings
		[8] = { itemID = 39215, droprate = "1%" }; --Boots of the Follower
		[9] = { itemID = 39294, droprate = "%" }; --Arc-Scorched Helmet
		[10] = { itemID = 39248, droprate = "0%" }; --Tunic of the Lost Pack
		[11] = { itemID = 39194, droprate = "0%" }; --Rusted-Link Spiked Gauntlets
		[12] = { itemID = 39251, droprate = "0%" }; --Necrogenic Belt
		[13] = { itemID = 39379, droprate = "0%" }; --Spectral Rider's Girdle
		[14] = { itemID = 39188, droprate = "0%" }; --Chivalric Chestguard
		[15] = { itemID = 39345, droprate = "0%" }; --Girdle of the Ascended Phantom
		[16] = { itemID = 39146, droprate = "0%" }; --Collar of Dissolution
		[17] = { itemID = 39232, droprate = "0%" }; --Pendant of Lost Vocations
		[18] = { itemID = 39193, droprate = "1%" }; --Band of Neglected Pleas
		[19] = { itemID = 39388, droprate = "0%" }; --Spirit-World Glass
		[20] = { itemID = 39200, droprate = "1%" }; --Grieving Spellblade
		[21] = { itemID = 39344, droprate = "0%" }; --Slayer of the Lifeless
		[22] = { itemID = 39281, droprate = "9%" }; --Infection Repulser
		[23] = { itemID = 39394, droprate = ".44%" }; --Charmed Cierge
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 40622, desc = "=ds=#e15#", droprate = "9%" }; --Spaulders of the Lost Conqueror
		[2] = { itemID = 40623, desc = "=ds=#e15#", droprate = "0%" }; --Spaulders of the Lost Protector
		[3] = { itemID = 40624, desc = "=ds=#e15#", droprate = "8%" }; --Spaulders of the Lost Vanquisher
		[4] = { itemID = 40610, desc = "=ds=#e15#", droprate = "%" }; --Chestguard of the Lost Conqueror
		[5] = { itemID = 40611, desc = "=ds=#e15#", droprate = "%" }; --Chestguard of the Lost Protector
		[6] = { itemID = 40612, desc = "=ds=#e15#", droprate = "2%" }; --Chestguard of the Lost Vanquisher
		[7] = { itemID = 40619, desc = "=ds=#e15#", droprate = "7%" }; --Leggings of the Lost Conqueror
		[8] = { itemID = 40620, desc = "=ds=#e15#", droprate = "8%" }; --Leggings of the Lost Protector
		[9] = { itemID = 40621, desc = "=ds=#e15#", droprate = "6%" }; --Leggings of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 40247, droprate = "%" }; --Cowl of Innocent Delight
		[2] = { itemID = 40289, droprate = "%" }; --Sympathetic Amice
		[3] = { itemID = 40602, droprate = "9%" }; --Robes of Mutation
		[4] = { itemID = 39733, droprate = "9%" }; --Gloves of Token Respect
		[5] = { itemID = 40303, droprate = "%" }; --Wraps of the Persecuted
		[6] = { itemID = 40326, droprate = "0%" }; --Boots of Forlorn Wishes
		[7] = { itemID = 40296, droprate = "%" }; --Cover of Silence
		[8] = { itemID = 39768, droprate = "%" }; --Cowl of the Perished
		[9] = { itemID = 40319, droprate = "%" }; --Chestpiece of Suspicion
		[10] = { itemID = 40260, droprate = "%" }; --Belt of the Tortured
		[11] = { itemID = 40205, droprate = "%" }; --Stalk-Skin Belt
		[12] = { itemID = 40270, droprate = "%" }; --Boots of Septic Wounds
		[13] = { itemID = 40193, droprate = "0%" }; --Tunic of Masked Suffering
		[14] = { itemID = 40209, droprate = "%" }; --Bindings of the Decrepit
		[15] = { itemID = 40302, droprate = "%" }; --Benefactor's Gauntlets
		[16] = { itemID = 39718, droprate = "%" }; --Corpse Scarab Handguards
		[17] = { itemID = 40242, droprate = "9%" }; --Grotesque Handgrips
		[18] = { itemID = 39760, droprate = "8%" }; --Helm of Diminished Pride
		[19] = { itemID = 40185, droprate = "%" }; --Shoulderguards of Opportunity
		[20] = { itemID = 40203, droprate = "8%" }; --Breastplate of Tormented Rage
		[21] = { itemID = 40332, droprate = "9%" }; --Abetment Bracers
		[22] = { itemID = 40188, droprate = "%" }; --Gauntlets of the Disobediant
		[23] = { itemID = 40259, droprate = "%" }; --Waistguard of Divine Grace
		[24] = { itemID = 40204, droprate = "%" }; --Legguards of the Apostle
		[25] = { itemID = 39717, droprate = "3%" }; --Inexorable Sabatons
		[26] = { itemID = 40206, droprate = "%" }; --Iron-Spring Jumpers
		[27] = { itemID = 40297, droprate = "7%" }; --Sabatons of Endurance
		[28] = { itemID = 40350, droprate = "%" }; --Urn of Lost Memories
		[29] = { itemID = 40191, desc = "=ds=#s16#", droprate = "%" }; --Libram of Radiance
	};
	{
		Name = BabbleBoss["Gluth"];
		[1] = { itemID = 40281, droprate = "9%" }; --Twilight Mist
		[2] = { itemID = 39714, droprate = "4%" }; --Webbed Death
		[3] = { itemID = 39730, droprate = "%" }; --Widow's Fury
		[4] = { itemID = 40343, droprate = "%" }; --Armageddon
		[5] = { itemID = 40239, droprate = "9%" }; --The Hand of Nerub
		[6] = { itemID = 40280, droprate = "%" }; --Origin of Nightmares
		[7] = { itemID = 39716, droprate = "4%" }; --Shield of Assimilation
		[8] = { itemID = 40265, droprate = "9%" }; --Arrowsong
		[9] = { itemID = 40346, droprate = "%" }; --Final Voyage
		[16] = { itemID = 40637, desc = "=ds=#e15#", droprate = "7%" }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638, desc = "=ds=#e15#", droprate = "8%" }; --Mantle of the Lost Protector
		[18] = { itemID = 40639, desc = "=ds=#e15#", droprate = "6%" }; --Mantle of the Lost Vanquisher
		[19] = { itemID = 40625, desc = "=ds=#e15#", droprate = "7%" }; --Breastplate of the Lost Conqueror
		[20] = { itemID = 40626, desc = "=ds=#e15#", droprate = "9%" }; --Breastplate of the Lost Protector
		[21] = { itemID = 40627, desc = "=ds=#e15#", droprate = "4%" }; --Breastplate of the Lost Vanquisher
		[22] = { itemID = 40634, desc = "=ds=#e15#", droprate = "6%" }; --Legplates of the Lost Conqueror
		[23] = { itemID = 40635, desc = "=ds=#e15#", droprate = "8%" }; --Legplates of the Lost Protector
		[24] = { itemID = 40636, desc = "=ds=#e15#", droprate = "6%" }; --Legplates of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Thaddius"];
		[1] = { itemID = 39295, droprate = "%" }; --Cowl of Sheet Lightning
		[2] = { itemID = 39294, droprate = "%" }; --Arc-Scorched Helmet
		[3] = { itemID = 39293, droprate = "%" }; --Blackened Legplates of Feugen
		[4] = { itemID = 39292, droprate = "%" }; --Repelling Charge
		[5] = { itemID = 39291, droprate = "%" }; --Torment of the Banished
		[16] = { itemID = 40619, desc = "=ds=#e15#", droprate = "7%" }; --Leggings of the Lost Conqueror
		[17] = { itemID = 40620, desc = "=ds=#e15#", droprate = "8%" }; --Leggings of the Lost Protector
		[18] = { itemID = 40621, desc = "=ds=#e15#", droprate = "6%" }; --Leggings of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Thaddius"];
		[1] = { itemID = 40303, droprate = "%" }; --Wraps of the Persecuted
		[2] = { itemID = 40301, droprate = "%" }; --Cincture of Polarity
		[3] = { itemID = 40296, droprate = "%" }; --Cover of Silence
		[4] = { itemID = 40304, droprate = "%" }; --Headpiece of Fungal Bloom
		[5] = { itemID = 40299, droprate = "%" }; --Pauldrons of the Abandoned
		[6] = { itemID = 40302, droprate = "%" }; --Benefactor's Gauntlets
		[7] = { itemID = 40298, droprate = "%" }; --Faceguard of the Succumbed
		[8] = { itemID = 40294, droprate = "%" }; --Riveted Abomination Leggings
		[9] = { itemID = 40297, droprate = "7%" }; --Sabatons of Endurance
		[10] = { itemID = 40300, droprate = "%" }; --Spire of Sunset
		[16] = { itemID = 40634, desc = "=ds=#e15#", droprate = "6%" }; --Legplates of the Lost Conqueror
		[17] = { itemID = 40635, desc = "=ds=#e15#", droprate = "8%" }; --Legplates of the Lost Protector
		[18] = { itemID = 40636, desc = "=ds=#e15#", droprate = "6%" }; --Legplates of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[1] = { itemID = 39192, droprate = "0%" }; --Gloves of Dark Gestures
		[2] = { itemID = 39190, droprate = "0%" }; --Agonal Sash
		[3] = { itemID = 39191, droprate = "1%" }; --Splint-Bound Leggings
		[4] = { itemID = 39189, droprate = "0%" }; --Boots of Persistence
		[5] = { itemID = 39188, droprate = "0%" }; --Chivalric Chestguard
		[6] = { itemID = 39139, droprate = "1%" }; --Ravaging Sabatons
		[7] = { itemID = 39146, droprate = "0%" }; --Collar of Dissolution
		[8] = { itemID = 39193, droprate = "1%" }; --Band of Neglected Pleas
		[9] = { itemID = 39141, droprate = "0%" }; --Deflection Band
		[10] = { itemID = 39140, droprate = "1%" }; --Knife of Incision
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[1] = { itemID = 39719, droprate = "%" }; --Mantle of the Locusts
		[2] = { itemID = 39721, droprate = "9%" }; --Sash of the Parlor
		[3] = { itemID = 39720, droprate = "%" }; --Leggings of Atrophy
		[4] = { itemID = 39722, droprate = "%" }; --Swarm Bindings
		[5] = { itemID = 39701, droprate = "9%" }; --Dawnwalkers
		[6] = { itemID = 39702, droprate = "%" }; --Arachnoid Gold Band
		[7] = { itemID = 39718, droprate = "%" }; --Corpse Scarab Handguards
		[8] = { itemID = 39704, droprate = "9%" }; --Pauldrons of Unnatural Death
		[9] = { itemID = 39703, droprate = "9%" }; --Rescinding Grips
		[10] = { itemID = 39717, droprate = "3%" }; --Inexorable Sabatons
		[11] = { itemID = 39706, droprate = "%" }; --Sabatons of Sudden Reprisal
		[12] = { itemID = 40071, droprate = "1%" }; --Chains of Adoration
		[13] = { itemID = 40065, droprate = "1%" }; --Fool's Trial
		[14] = { itemID = 40069, droprate = "1%" }; --Heritage
		[15] = { itemID = 40064, droprate = "1%" }; --Thunderstorm Amulet
		[16] = { itemID = 40080, droprate = "1%" }; --Lost Jewel
		[17] = { itemID = 40075, droprate = "1%" }; --Ruthlessness
		[18] = { itemID = 40107, droprate = "1%" }; --Sand-Worn Band
		[19] = { itemID = 40074, droprate = "2%" }; --Strong-Handed Ring
		[20] = { itemID = 39714, droprate = "4%" }; --Webbed Death
		[21] = { itemID = 40208, desc = "=ds=#w7#", droprate = "0%" }; --Cryptfiend's Bite
		[22] = { itemID = 39716, droprate = "4%" }; --Shield of Assimilation
		[23] = { itemID = 39712, droprate = "4%" }; --Gemmed Wand of the Nerubians
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[1] = { itemID = 39216, droprate = "0%" }; --Sash of Mortal Desire
		[2] = { itemID = 39215, droprate = "1%" }; --Boots of the Follower
		[3] = { itemID = 39196, droprate = "1%" }; --Boots of the Worshiper
		[4] = { itemID = 39217, droprate = "1%" }; --Avenging Combat Leggings
		[5] = { itemID = 39194, droprate = "0%" }; --Rusted-Link Spiked Gauntlets
		[6] = { itemID = 39198, droprate = "0%" }; --Frostblight Pauldrons
		[7] = { itemID = 39195, droprate = "1%" }; --Bracers of Lost Sentiments
		[8] = { itemID = 39197, droprate = "0%" }; --Gauntlets of the Master
		[9] = { itemID = 39199, droprate = "1%" }; --Watchful Eye
		[10] = { itemID = 39200, droprate = "1%" }; --Grieving Spellblade
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[1] = { itemID = 39732, droprate = "%" }; --Faerlina's Madness
		[2] = { itemID = 39731, droprate = "%" }; --Punctilious Bindings
		[3] = { itemID = 39733, droprate = "9%" }; --Gloves of Token Respect
		[4] = { itemID = 39735, droprate = "%" }; --Belt of False Dignity
		[5] = { itemID = 39756, droprate = "9%" }; --Tunic of Prejudice
		[6] = { itemID = 39727, droprate = "0%" }; --Dislocating Handguards
		[7] = { itemID = 39724, "=ds=#s5#" }; --Cult's Chestguard
		[8] = { itemID = 39734, droprate = "%" }; --Atonement Greaves
		[9] = { itemID = 39723, droprate = "3%" }; --Fire-Scorched Greathelm
		[10] = { itemID = 39725, droprate = "1%" }; --Epaulets of the Grieving Servant
		[11] = { itemID = 39729, droprate = "%" }; --Bracers of the Tyrant
		[12] = { itemID = 39726, droprate = "4%" }; --Callous-Hearted Gauntlets
		[13] = { itemID = 40071, droprate = "1%" }; --Chains of Adoration
		[14] = { itemID = 40065, droprate = "1%" }; --Fool's Trial
		[15] = { itemID = 40069, droprate = "1%" }; --Heritage
		[16] = { itemID = 40064, droprate = "1%" }; --Thunderstorm Amulet
		[17] = { itemID = 40080, droprate = "1%" }; --Lost Jewel
		[18] = { itemID = 40075, droprate = "1%" }; --Ruthlessness
		[19] = { itemID = 40107, droprate = "1%" }; --Sand-Worn Band
		[20] = { itemID = 40108, droprate = "1%" }; --Seized Beauty
		[21] = { itemID = 40074, droprate = "2%" }; --Strong-Handed Ring
		[22] = { itemID = 39757, desc = "=ds=#s16#", droprate = "%" }; --Idol of Worship
		[23] = { itemID = 39728, desc = "=ds=#s16#", droprate = "%" }; --Totem of Misery
		[24] = { itemID = 39730, droprate = "%" }; --Widow's Fury
	};
	{
		Name = BabbleBoss["Maexxna"];
		[1] = { itemID = 39225, droprate = "0%" }; --Cloak of Armed Strife
		[2] = { itemID = 39230, droprate = "1%" }; --Spaulders of the Monstrosity
		[3] = { itemID = 39224, droprate = "0%" }; --Leggings of Discord
		[4] = { itemID = 39228, droprate = "0%" }; --Web Cocoon Grips
		[5] = { itemID = 39232, droprate = "0%" }; --Pendant of Lost Vocations
		[6] = { itemID = 39231, droprate = "0%" }; --Timeworn Silken Band
		[7] = { itemID = 39229, droprate = "1%" }; --Embrace of the Spider
		[8] = { itemID = 39226, droprate = "0%" }; --Maexxna's Femur
		[9] = { itemID = 39221, desc = "=ds=#w7#", droprate = "0%" }; --Wraith Spear
		[10] = { itemID = 39233, droprate = "0%" }; --Aegis of Damnation
	};
	{
		Name = BabbleBoss["Maexxna"];
		[1] = { itemID = 40250, desc = "-q4-Aged Winter Cloak", "=ds=#s4#", droprate = "1%" };
		[2] = { itemID = 40254, droprate = "1%" }; --Cloak of Averted Crisis
		[3] = { itemID = 40252, droprate = "1%" }; --Cloak of the Shadowed Sun
		[4] = { itemID = 40253, droprate = "1%" }; --Shawl of the Old Maid
		[5] = { itemID = 40251, droprate = "1%" }; --Shroud of Luminosity
		[6] = { itemID = 40062, droprate = "%" }; --Digested Silken Robes
		[7] = { itemID = 40060, droprate = "%" }; --Distorted Limbs
		[8] = { itemID = 39768, droprate = "%" }; --Cowl of the Perished
		[9] = { itemID = 40063, droprate = "%" }; --Mantle of Shattered Kinship
		[10] = { itemID = 39765, droprate = "9%" }; --Sinner's Bindings
		[11] = { itemID = 39761, droprate = "%" }; --Infectious Skitterer Leggings
		[12] = { itemID = 40061, droprate = "9%" }; --Quivering Tunic
		[13] = { itemID = 39762, droprate = "%" }; --Torn Web Wrapping
		[14] = { itemID = 39760, droprate = "8%" }; --Helm of Diminished Pride
		[15] = { itemID = 39767, droprate = "%" }; --Undiminished Battleplate
		[16] = { itemID = 39764, droprate = "%" }; --Bindings of the Hapless Prey
		[17] = { itemID = 39759, droprate = "%" }; --Ablative Chitin Girdle
		[18] = { itemID = 40257, droprate = "1%" }; --Defender's Code
		[19] = { itemID = 40255, droprate = "1%" }; --Dying Curse
		[20] = { itemID = 40258, droprate = "1%" }; --Forethought Talisman
		[21] = { itemID = 40256, droprate = "1%" }; --Grim Toll
		[22] = { itemID = 39766, droprate = "9%" }; --Matriarch's Spawn
		[23] = { itemID = 39763, droprate = "%" }; --Wraith Strike
		[24] = { itemID = 39758, droprate = "%" }; --The Jawbone
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[1] = { itemID = 39297, droprate = "0%" }; --Cloak of Darkening
		[2] = { itemID = 39310, droprate = "0%" }; --Mantle of the Extensive Mind
		[3] = { itemID = 39309, droprate = "0%" }; --Leggings of the Instructor
		[4] = { itemID = 39299, droprate = "0%" }; --Rapid Attack Gloves
		[5] = { itemID = 39308, droprate = "0%" }; --Girdle of Lenience
		[6] = { itemID = 39307, droprate = "0%" }; --Iron Rings of Endurance
		[7] = { itemID = 39306, droprate = "0%" }; --Plated Gloves of Relief
		[8] = { itemID = 39298, droprate = "0%" }; --Waistguard of the Tutor
		[9] = { itemID = 39311, droprate = "0%" }; --Scepter of Murmuring Spirits
		[10] = { itemID = 39296, droprate = "0%" }; --Accursed Bow of the Elite
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[1] = { itemID = 40325, droprate = "%" }; --Bindings of the Expansive Mind
		[2] = { itemID = 40326, droprate = "0%" }; --Boots of Forlorn Wishes
		[3] = { itemID = 40305, droprate = "%" }; --Spaulders of Egotism
		[4] = { itemID = 40319, droprate = "%" }; --Chestpiece of Suspicion
		[5] = { itemID = 40323, droprate = "%" }; --Esteemed Bindings
		[6] = { itemID = 40315, droprate = "%" }; --Shoulderpads of Secret Arts
		[7] = { itemID = 40324, droprate = "%" }; --Bands of Mutual Respect
		[8] = { itemID = 40327, droprate = "%" }; --Girdle of Recuperation
		[9] = { itemID = 40306, droprate = "%" }; --Bracers of the Unholy Knight
		[10] = { itemID = 40316, droprate = "%" }; --Gauntlets of Guiding Touch
		[11] = { itemID = 40317, droprate = "%" }; --Girdle of Razuvious
		[12] = { itemID = 40318, droprate = "%" }; --Legplates of Double Strikes
		[13] = { itemID = 40320, droprate = "%" }; --Faithful Steel Sabatons
		[14] = { itemID = 40071, droprate = "1%" }; --Chains of Adoration
		[15] = { itemID = 40065, droprate = "1%" }; --Fool's Trial
		[16] = { itemID = 40069, droprate = "1%" }; --Heritage
		[17] = { itemID = 40064, droprate = "1%" }; --Thunderstorm Amulet
		[18] = { itemID = 40080, droprate = "1%" }; --Lost Jewel
		[19] = { itemID = 40075, droprate = "1%" }; --Ruthlessness
		[20] = { itemID = 40107, droprate = "1%" }; --Sand-Worn Band
		[21] = { itemID = 40074, droprate = "2%" }; --Strong-Handed Ring
		[22] = { itemID = 40321, desc = "=ds=#s16#", droprate = "%" }; --Idol of the Shooting Star
		[23] = { itemID = 40322, desc = "=ds=#s16#", droprate = "%" }; --Totem of Dueling
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[1] = { itemID = 39390, droprate = "0%" }; --Resurgent Phantom Bindings
		[2] = { itemID = 39386, droprate = "9%" }; --Tunic of Dislocation
		[3] = { itemID = 39391, droprate = "1%" }; --Heinous Mail Chestguard
		[4] = { itemID = 39379, droprate = "0%" }; --Spectral Rider's Girdle
		[5] = { itemID = 39345, droprate = "0%" }; --Girdle of the Ascended Phantom
		[6] = { itemID = 39369, droprate = "0%" }; --Sabatons of Deathlike Gloom
		[7] = { itemID = 39392, droprate = "0%" }; --Veiled Amulet of Life
		[8] = { itemID = 39389, droprate = "0%" }; --Signet of the Malevolent
		[9] = { itemID = 39388, droprate = "0%" }; --Spirit-World Glass
		[10] = { itemID = 39344, droprate = "0%" }; --Slayer of the Lifeless
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[1] = { itemID = 40250, desc = "-q4-Aged Winter Cloak", "=ds=#s4#", droprate = "1%" };
		[2] = { itemID = 40254, droprate = "1%" }; --Cloak of Averted Crisis
		[3] = { itemID = 40252, droprate = "1%" }; --Cloak of the Shadowed Sun
		[4] = { itemID = 40253, droprate = "1%" }; --Shawl of the Old Maid
		[5] = { itemID = 40251, droprate = "1%" }; --Shroud of Luminosity
		[6] = { itemID = 40339, droprate = "9%" }; --Gothik's Cowl
		[7] = { itemID = 40338, droprate = "9%" }; --Bindings of Yearning
		[8] = { itemID = 40329, droprate = "%" }; --Hood of the Exodus
		[9] = { itemID = 40341, droprate = "%" }; --Shackled Cinch
		[10] = { itemID = 40333, droprate = "%" }; --Leggings of Fleeting Moments
		[11] = { itemID = 40340, droprate = "%" }; --Helm of Unleashed Energy
		[12] = { itemID = 40331, droprate = "%" }; --Leggings of Failed Escape
		[13] = { itemID = 40328, droprate = "%" }; --Helm of Vital Protection
		[14] = { itemID = 40334, droprate = "%" }; --Burdened Shoulderplates
		[15] = { itemID = 40332, droprate = "9%" }; --Abetment Bracers
		[16] = { itemID = 40330, droprate = "%" }; --Bracers of Unrelenting Attack
		[17] = { itemID = 40257, droprate = "1%" }; --Defender's Code
		[18] = { itemID = 40255, droprate = "1%" }; --Dying Curse
		[19] = { itemID = 40258, droprate = "1%" }; --Forethought Talisman
		[20] = { itemID = 40256, droprate = "1%" }; --Grim Toll
		[21] = { itemID = 40342, desc = "=ds=#s16#", droprate = "%" }; --Idol of Awakening
		[22] = { itemID = 40337, desc = "=ds=#s16#", droprate = "9%" }; --Libram of Resurgence
		[23] = { itemID = 40336, droprate = "9%" }; --Life and Death
		[24] = { itemID = 40335, droprate = "%" }; --Touch of Horror
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[1] = { itemID = 39396, droprate = "2%" }; --Gown of Blaumeux
		[2] = { itemID = 39397, droprate = "2%" }; --Pauldrons of Havoc
		[3] = { itemID = 39395, droprate = "2%" }; --Thane's Tainted Greathelm
		[4] = { itemID = 39393, droprate = "2%" }; --Claymore of Ancient Power
		[5] = { itemID = 39394, droprate = "2%" }; --Charmed Cierge
		[16] = { itemID = 40610, desc = "=ds=#e15#", droprate = "8%" }; --Chestguard of the Lost Conqueror
		[17] = { itemID = 40611, desc = "=ds=#e15#", droprate = "9%" }; --Chestguard of the Lost Protector
		[18] = { itemID = 40612, desc = "=ds=#e15#", droprate = "5%" }; --Chestguard of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[1] = { itemID = 40349, droprate = "1%" }; --Gloves of Peaceful Death
		[2] = { itemID = 40344, droprate = "0%" }; --Helm of the Grave
		[3] = { itemID = 40352, droprate = "0%" }; --Leggings of Voracious Shadows
		[4] = { itemID = 40347, droprate = "%" }; --Zeliek's Gauntlets
		[5] = { itemID = 40350, droprate = "0%" }; --Urn of Lost Memories
		[6] = { itemID = 40345, droprate = "0%" }; --Broken Promise
		[8] = { itemID = 40343, droprate = "%" }; --Armageddon
		[7] = { itemID = 40348, droprate = "0%" }; --Damnation
		[9] = { itemID = 40346, droprate = "0%" }; --Final Voyage
		[16] = { itemID = 40625, desc = "=ds=#e15#", droprate = "0%" }; --Breastplate of the Lost Conqueror
		[17] = { itemID = 40626, desc = "=ds=#e15#", droprate = "0%" }; --Breastplate of the Lost Protector
		[18] = { itemID = 40627, desc = "=ds=#e15#", droprate = "0%" }; --Breastplate of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[1] = { itemID = 39241, droprate = "0%" }; --Dark Shroud of the Scourge
		[2] = { itemID = 39242, droprate = "0%" }; --Robes of Hoarse Breaths
		[3] = { itemID = 39240, droprate = "0%" }; --Noth's Curse
		[4] = { itemID = 39237, droprate = "0%" }; --Spaulders of Resumed Battle
		[5] = { itemID = 39243, droprate = "0%" }; --Handgrips of the Foredoomed
		[6] = { itemID = 39236, droprate = "0%" }; --Trespasser's Boots
		[7] = { itemID = 39239, droprate = "0%" }; --Chestplate of the Risen Soldier
		[8] = { itemID = 39235, droprate = "0%" }; --Bone-Framed Bracers
		[9] = { itemID = 39234, droprate = "0%" }; --Plague-Impervious Boots
		[10] = { itemID = 39244, droprate = "0%" }; --Ring of the Fated
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[1] = { itemID = 40602, droprate = "9%" }; --Robes of Mutation
		[2] = { itemID = 40198, droprate = "%" }; --Bands of Impurity
		[3] = { itemID = 40197, droprate = "%" }; --Gloves of the Fallen Wizard
		[4] = { itemID = 40186, droprate = "%" }; --Thrusting Bands
		[5] = { itemID = 40200, droprate = "%" }; --Belt of Potent Chanting
		[6] = { itemID = 40193, droprate = "0%" }; --Tunic of Masked Suffering
		[7] = { itemID = 40196, droprate = "%" }; --Legguards of the Undisturbed
		[8] = { itemID = 40184, droprate = "%" }; --Crippled Treads
		[9] = { itemID = 40185, droprate = "%" }; --Shoulderguards of Opportunity
		[10] = { itemID = 40188, droprate = "%" }; --Gauntlets of the Disobediant
		[11] = { itemID = 40187, droprate = "%" }; --Poignant Sabatons
		[12] = { itemID = 40071, droprate = "1%" }; --Chains of Adoration
		[13] = { itemID = 40065, droprate = "1%" }; --Fool's Trial
		[14] = { itemID = 40069, droprate = "1%" }; --Heritage
		[15] = { itemID = 40064, droprate = "1%" }; --Thunderstorm Amulet
		[16] = { itemID = 40080, droprate = "1%" }; --Lost Jewel
		[17] = { itemID = 40075, droprate = "1%" }; --Ruthlessness
		[18] = { itemID = 40107, droprate = "1%" }; --Sand-Worn Band
		[29] = { itemID = 40074, droprate = "2%" }; --Strong-Handed Ring
		[20] = { itemID = 40192, droprate = "%" }; --Accursed Spine
		[21] = { itemID = 40191, desc = "=ds=#s16#", droprate = "%" }; --Libram of Radiance
		[22] = { itemID = 40189, droprate = "9%" }; --Angry Dread
		[23] = { itemID = 40190, droprate = "%" }; --Spinning Fate
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[1] = { itemID = 39252, droprate = "%" }; --Preceptor's Bindings
		[2] = { itemID = 39254, droprate = "0%" }; --Saltarello Shoes
		[3] = { itemID = 39247, droprate = "%" }; --Cuffs of Dark Shadows
		[4] = { itemID = 39248, droprate = "0%" }; --Tunic of the Lost Pack
		[5] = { itemID = 39251, droprate = "0%" }; --Necrogenic Belt
		[6] = { itemID = 39249, droprate = "%" }; --Shoulderplates of Bloodshed
		[7] = { itemID = 39246, droprate = "%" }; --Amulet of Autopsy
		[8] = { itemID = 39250, droprate = "0%" }; --Ring of Holy Cleansing
		[9] = { itemID = 39245, droprate = "%" }; --Demise
		[10] = { itemID = 39255, droprate = "%" }; --Staff of the Plague Beast
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[1] = { itemID = 40250, droprate = "1%" }; --Aged Winter Cloak
		[2] = { itemID = 40254, droprate = "1%" }; --Cloak of Averted Crisis
		[3] = { itemID = 40252, droprate = "1%" }; --Cloak of the Shadowed Sun
		[4] = { itemID = 40253, droprate = "1%" }; --Shawl of the Old Maid
		[5] = { itemID = 40251, droprate = "1%" }; --Shroud of Luminosity
		[6] = { itemID = 40234, droprate = "%" }; --Heigan's Putrid Vestments
		[7] = { itemID = 40236, droprate = "9%" }; --Serene Echoes
		[8] = { itemID = 40238, droprate = "%" }; --Gloves of the Dancing Bear
		[9] = { itemID = 40205, droprate = "%" }; --Stalk-Skin Belt
		[10] = { itemID = 40235, droprate = "0%" }; --Helm of Pilgrimage
		[11] = { itemID = 40209, droprate = "%" }; --Bindings of the Decrepit
		[12] = { itemID = 40201, droprate = "%" }; --Leggings of Colossal Strides
		[13] = { itemID = 40237, droprate = "0%" }; --Eruption-Scared Boots
		[14] = { itemID = 40203, droprate = "8%" }; --Breastplate of Tormented Rage
		[15] = { itemID = 40210, droprate = "%" }; --Chestguard of Bitter Charms
		[16] = { itemID = 40204, droprate = "%" }; --Legguards of the Apostle
		[17] = { itemID = 40206, droprate = "%" }; --Iron-Spring Jumpers
		[18] = { itemID = 40257, droprate = "1%" }; --Defender's Code
		[19] = { itemID = 40255, droprate = "1%" }; --Dying Curse
		[20] = { itemID = 40258, droprate = "1%" }; --Forethought Talisman
		[21] = { itemID = 40256, droprate = "1%" }; --Grim Toll
		[22] = { itemID = 40207, desc = "=ds=#s16#, #w21#", droprate = "%" }; --Sigil of Awareness
		[23] = { itemID = 40208, desc = "=ds=#w7#", droprate = "0%" }; --Cryptfiend's Bite
		[24] = { itemID = 40233, droprate = "%" }; --The Undeath Carrier
	};
	{
		Name = BabbleBoss["Loatheb"];
		[1] = { itemID = 39259, droprate = "0%" }; --Fungi-Stained Coverings
		[2] = { itemID = 39260, droprate = "0%" }; --Helm of the Corrupted Mind
		[3] = { itemID = 39258, droprate = "0%" }; --Legplates of Inescapable Death
		[4] = { itemID = 39257, droprate = "0%" }; --Loatheb's Shadow
		[5] = { itemID = 39256, droprate = "0%" }; --Sulfur Stave
		[16] = { itemID = 40622, desc = "=ds=#e15#", droprate = "9%" }; --Spaulders of the Lost Conqueror
		[17] = { itemID = 40623, desc = "=ds=#e15#", droprate = "0%" }; --Spaulders of the Lost Protector
		[18] = { itemID = 40624, desc = "=ds=#e15#", droprate = "8%" }; --Spaulders of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Loatheb"];
		[1] = { itemID = 40247, droprate = "%" }; --Cowl of Innocent Delight
		[2] = { itemID = 40246, droprate = "%" }; --Boots of Impetuous Ideals
		[3] = { itemID = 40249, droprate = "0%" }; --Vest of Vitality
		[4] = { itemID = 40243, droprate = "0%" }; --Footwraps of Vile Deceit
		[5] = { itemID = 40242, droprate = "9%" }; --Grotesque Handgrips
		[6] = { itemID = 40241, droprate = "0%" }; --Girdle of Unity
		[7] = { itemID = 40240, droprate = "%" }; --Greaves of Turbulence
		[8] = { itemID = 40244, droprate = "0%" }; --The Impossible Dream
		[9] = { itemID = 40239, droprate = "9%" }; --The Hand of Nerub
		[10] = { itemID = 40245, droprate = "0%" }; --Fading Glow
		[16] = { itemID = 40637, desc = "=ds=#e15#", droprate = "7%" }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638, desc = "=ds=#e15#", droprate = "8%" }; --Mantle of the Lost Protector
		[18] = { itemID = 40639, desc = "=ds=#e15#", droprate = "6%" }; --Mantle of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[1] = { itemID = 39415, droprate = "9%" }; --Shroud of the Citadel
		[2] = { itemID = 39404, droprate = "8%" }; --Cloak of Mastery
		[3] = { itemID = 39409, droprate = "8%" }; --Cowl of Winged Fear
		[4] = { itemID = 39408, droprate = "9%" }; --Leggings of Sapphiron
		[5] = { itemID = 39399, droprate = "7%" }; --Helm of the Vast Legions
		[6] = { itemID = 39405, droprate = "8%" }; --Helmet of the Inner Sanctum
		[7] = { itemID = 39403, droprate = "7%" }; --Helm of the Unsubmissive
		[8] = { itemID = 39398, droprate = "9%" }; --Massive Skeletal Ribcage
		[9] = { itemID = 39401, droprate = "9%" }; --Circle of Death
		[10] = { itemID = 39407, droprate = "8%" }; --Circle of Life
		[11] = { itemID = 44569, desc = "=ds=#m2#", droprate = "1%" }; --Key to the Focusing Iris
		[12] = { itemID = 44582, "=q1=#m4#: =ds=#e9#" }; --Key to the Focusing Iris
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[1] = { itemID = 40381, droprate = "9%" }; --Sympathy
		[2] = { itemID = 40380, droprate = "8%" }; --Gloves of Grandeur
		[3] = { itemID = 40376, droprate = "9%" }; --Legwraps of the Defeated Dragon
		[4] = { itemID = 40362, droprate = "7%" }; --Gloves of Fast Reactions
		[5] = { itemID = 40379, droprate = "9%" }; --Legguards of the Boneyard
		[6] = { itemID = 40367, droprate = "8%" }; --Boots of the Great Construct
		[7] = { itemID = 40366, droprate = "8%" }; --Platehelm of the Great Wyrm
		[8] = { itemID = 40377, droprate = "8%" }; --Noble Birthright Pauldrons
		[9] = { itemID = 40365, droprate = "9%" }; --Breastplate of Frozen Pain
		[10] = { itemID = 40363, droprate = "8%" }; -- Bone-Inlaid Legguards
		[11] = { itemID = 40378, droprate = "9%" }; --Ceaseless Pity
		[12] = { itemID = 40374, droprate = "9%" }; --Cosmic Lights
		[13] = { itemID = 40369, droprate = "8%" }; --Icy Blast Amulet
		[14] = { itemID = 40370, droprate = "8%" }; --Gatekeeper
		[15] = { itemID = 40375, droprate = "0%" }; --Ring of Decaying Beauty
		[16] = { itemID = 40371, droprate = "8%" }; --Bandit's Insignia
		[17] = { itemID = 40373, droprate = "8%" }; --Extract of Necromatic Power
		[18] = { itemID = 40372, droprate = "9%" }; --Rune of Repulsion
		[19] = { itemID = 40382, droprate = "0%" }; --Soul of the Dead
		[20] = { itemID = 40368, droprate = "9%" }; --Murder
		[22] = { itemID = 44577, desc = "=ds=#m2#", droprate = "2%" }; --Heroic Key to the Focusing Iris
		[23] = { itemID = 44581, "=q1=#m4#: =ds=#e9#" }; --Heroic Key to the Focusing Iris
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[1] = { itemID = 39425, droprate = "9%" }; --Cloak of the Dying
		[2] = { itemID = 39421, droprate = "9%" }; --Gem of Imprisoned Vassals
		[3] = { itemID = 39416, droprate = "8%" }; --Kel'Thuzad's Reach
		[4] = { itemID = 39424, droprate = "9%" }; --The Soulblade
		[5] = { itemID = 39420, droprate = "8%" }; --Anarchy
		[6] = { itemID = 39417, droprate = "8%" }; --Death's Bite
		[7] = { itemID = 39423, droprate = "8%" }; --Hammer of the Astral Plane
		[8] = { itemID = 39422, droprate = "9%" }; --Staff of the Plaguehound
		[9] = { itemID = 39426, droprate = "9%" }; --Wand of the Archlich
		[10] = { itemID = 39419, desc = "=ds=#w5#", droprate = "9%" }; --Nerubian Conquerer
		[16] = { itemID = 40616, desc = "=ds=#e15#", droprate = "8%" }; --Helm of the Lost Conqueror
		[17] = { itemID = 40617, desc = "=ds=#e15#", droprate = "8%" }; --Helm of the Lost Protector
		[18] = { itemID = 40618, desc = "=ds=#e15#", droprate = "8%" }; --Helm of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[1] = { itemID = 40405, droprate = "8%" }; --Cape of the Unworthy Wizard
		[2] = { itemID = 40403, droprate = "8%" }; --Drape of the Deadly Foe
		[3] = { itemID = 40398, droprate = "8%" }; --Leggings of Mortal Arrogance
		[4] = { itemID = 40387, droprate = "8%" }; --Boundless Ambition
		[5] = { itemID = 40399, droprate = "7%" }; --Signet of Manifested Pain
		[6] = { itemID = 40383, droprate = "8%" }; --Calamity's Grasp
		[7] = { itemID = 40386, droprate = "7%" }; --Sinister Revenge
		[8] = { itemID = 40396, droprate = "8%" }; --The Turning Tide
		[9] = { itemID = 40402, droprate = "8%" }; --Last Laugh
		[10] = { itemID = 40384, droprate = "7%" }; --Betrayer of Humanity
		[11] = { itemID = 40395, droprate = "8%" }; --Torch of Holy Fire
		[12] = { itemID = 40388, droprate = "8%" }; --Journey's End
		[13] = { itemID = 40401, droprate = "7%" }; --Voice of Reason
		[14] = { itemID = 40400, droprate = "8%" }; --Wall of Terror
		[15] = { itemID = 40385, desc = "=ds=#w5#", droprate = "7%" }; --Envoy of Mortality
		[16] = { itemID = 40631, desc = "=ds=#e15#", droprate = "4%" }; --Crown of the Lost Conqueror
		[17] = { itemID = 40632, desc = "=ds=#e15#", droprate = "7%" }; --Crown of the Lost Protector
		[18] = { itemID = 40633, desc = "=ds=#e15#", droprate = "3%" }; --Crown of the Lost Vanquisher
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 39467, droprate = "%" }; --Minion Bracers
		[2] = { itemID = 39472, droprate = "%" }; --Chain of Latent Energies
		[3] = { itemID = 39470, droprate = "%" }; --Medallion of the Disgraced
		[4] = { itemID = 39427, droprate = "%" }; --Omen of Ruin
		[5] = { itemID = 39468, droprate = "%" }; --The Stray
		[6] = { itemID = 39473, droprate = "%" }; --Contortion
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 40410, droprate = "%" }; --Shadow of the Ghoul
		[2] = { itemID = 40409, droprate = "%" }; --Boots of the Escaped Captive
		[3] = { itemID = 40414, droprate = "%" }; --Shoulderguards of the Undaunted
		[4] = { itemID = 40412, droprate = "%" }; --Ousted Bead Necklace
		[5] = { itemID = 40408, droprate = "%" }; --Haunting Call
		[6] = { itemID = 40407, droprate = "%" }; --Silent Crusader
		[7] = { itemID = 40406, droprate = "%" }; --Inevitable Defeat
	};
};

------------------------
--- Obsidian Sanctum ---
------------------------

AtlasLoot_Data["Sartharion"] = {
	Name = BabbleZone["The Obsidian Sanctum"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Sartharion"];
		[1] = { itemID = 40428, droprate = "8%" }; --Titan's Outlook
		[2] = { itemID = 40427, droprate = "8%" }; --Circle of Arcane Streams
		[3] = { itemID = 40426, droprate = "9%" }; --Signet of the Accord
		[4] = { itemID = 40433, droprate = "%" }; --Wyrmrest Band
		[5] = { itemID = 40430, droprate = "8%" }; --Majestic Dragon Figurine
		[6] = { itemID = 40429, droprate = "8%" }; --Crimson Steel
		[7] = { itemID = 43345, desc = "=ds=#e1#", droprate = "00%" }; --Dragon Hide Bag
		[8] = { itemID = 43347, droprate = "00%" }; --Satchel of Spoils
		[10] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["One Drake Left"] };
		[11] = { itemID = 43988, droprate = "%" }; --Gale-Proof Cloak
		[12] = { itemID = 43990, droprate = "%" }; --Blade-Scarred Tunic
		[13] = { itemID = 43991, droprate = "%" }; --Legguards of Composure
		[14] = { itemID = 43989, droprate = "%" }; --Remembrance Girdle
		[15] = { itemID = 43992, droprate = "%" }; --Volitant Amulet
		[16] = { itemID = 40613, desc = "=ds=#e15#", droprate = "8%" }; --Gloves of the Lost Conqueror
		[17] = { itemID = 40614, desc = "=ds=#e15#", droprate = "9%" }; --Gloves of the Lost Protector
		[18] = { itemID = 40615, desc = "=ds=#e15#", droprate = "7%" }; --Gloves of the Lost Vanquisher
		[20] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Two Drakes Left"] };
		[21] = { itemID = 43995, droprate = ".00%" }; --Enamored Cowl
		[22] = { itemID = 43998, "=ds=#s5#" }; --Chestguard of Flagrant Prowess
		[23] = { itemID = 43996, "=ds=#s12#" }; --Sabatons of Firmament
		[24] = { itemID = 43994, "=ds=#s11#" }; --Belabored Legplates
		[25] = { itemID = 43993, "=ds=#s13#" }; --Greatring of Collision
		[27] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Three Drakes Left"] };
		[28] = { itemID = 43986, desc = "=ds=#e12#", droprate = "00%" }; --Reins of the Black Drake
	};
	{
		Name = BabbleBoss["Sartharion"];
		[1] = { itemID = 40437, droprate = "6%" }; --Concealment Shoulderpads
		[2] = { itemID = 40439, droprate = "9%" }; --Mantle of the Eternal Sentinel
		[3] = { itemID = 40451, droprate = "6%" }; --Hyaline Helm of the Sniper
		[4] = { itemID = 40438, droprate = "9%" }; --Council Chamber Epaulets
		[5] = { itemID = 40453, droprate = "7%" }; --Chestplate of the Great Aspects
		[6] = { itemID = 40446, droprate = "7%" }; --Dragon Brood Legguards
		[7] = { itemID = 40433, droprate = "%" }; --Wyrmrest Band
		[8] = { itemID = 40431, droprate = "7%" }; --Fury of the Five Flights
		[9] = { itemID = 40432, droprate = "9%" }; --Illustration of the Dragon Soul
		[10] = { itemID = 40455, droprate = "9%" }; --Staff of Restraint
		[11] = { itemID = 43345, desc = "=ds=#e1#", droprate = "00%" }; --Dragon Hide Bag
		[12] = { itemID = 43346, droprate = "00%" }; --Large Satchel of Spoils
		[13] = { itemID = 40628, desc = "=ds=#e15#", droprate = "1%" }; --Gauntlets of the Lost Conqueror
		[14] = { itemID = 40629, desc = "=ds=#e15#", droprate = "3%" }; --Gauntlets of the Lost Protector
		[15] = { itemID = 40630, desc = "=ds=#e15#", droprate = "7%" }; --Gauntlets of the Lost Vanquisher
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["One Drake Left"] };
		[17] = { itemID = 44002, droprate = "%" }; --The Sanctum's Flowing Vestments
		[18] = { itemID = 44003, droprate = "%" }; --Upstanding Spaulders
		[19] = { itemID = 44004, droprate = "%" }; --Bountiful Gauntlets
		[20] = { itemID = 44000, droprate = "%" }; --Dragonstorm Breastplate
		[22] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Two Drakes Left"] };
		[23] = { itemID = 44005, droprate = "%" }; --Pennant Cloak
		[24] = { itemID = 44008, droprate = "%" }; --Unsullied Cuffs
		[25] = { itemID = 44007, droprate = "%" }; --Headpiece of Reconciliation
		[26] = { itemID = 44011, droprate = "%" }; --Leggings of the Honored
		[27] = { itemID = 44006, droprate = "%" }; --Obsidian Greathelm
		[29] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Three Drakes Left"] };
		[30] = { itemID = 43954, desc = "=ds=#e12#", droprate = "00%" }; --Reins of the Twilight Drake
	};
};
---------------------------
--- The Eye of Eternity ---
---------------------------

AtlasLoot_Data["Malygos"] = {
	Name = BabbleZone["The Eye of Eternity"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Malygos"];
		[1] = { itemID = 40526, droprate = "2%" }; --Gown of the Spell-Weaver
		[2] = { itemID = 40519, droprate = "2%" }; --Footsteps of Malygos
		[3] = { itemID = 40511, droprate = "3%" }; --Focusing Energy Epaulets
		[4] = { itemID = 40486, droprate = "2%" }; --Necklace of the Glittering Chamber
		[5] = { itemID = 40474, droprate = "0%" }; --Surge Needle Ring
		[6] = { itemID = 40491, droprate = "1%" }; --Hailstorm
		[7] = { itemID = 40488, droprate = "2%" }; --Ice Spire Scepter
		[8] = { itemID = 40489, droprate = "2%" }; --Greatstaff of the Nexus
		[9] = { itemID = 40497, desc = "=ds=#w7#", droprate = "0%" }; --Black Ice
		[10] = { itemID = 40475, droprate = "1%" }; --Barricade of Eternity
		[11] = { itemID = 43952, desc = "=ds=#e12#", droprate = "%" }; --Reins of the Azure Drake
		[13] = { itemID = 44569, desc = "=ds=#m3#", droprate = "1%" }; --Key to the Focusing Iris
		[16] = { itemID = 44650, desc = "=ds=#m3#", droprate = "00%" }; --Heart of Magic
		[17] = { itemID = 44658, "=q1=#m4#: =ds=#s2#" }; --Chain of the Ancient Wyrm
		[18] = { itemID = 44660, "=q1=#m4#: =ds=#s2#" }; --Drakescale Collar
		[19] = { itemID = 44659, "=q1=#m4#: =ds=#s2#" }; --Pendant of the Dragonsworn
		[20] = { itemID = 44657, "=q1=#m4#: =ds=#s2#" }; --Torque of the Red Dragonflight
	};
	{
		Name = BabbleBoss["Malygos"];
		[1] = { itemID = 40562, droprate = "%" }; --Hood of Rationality
		[2] = { itemID = 40555, droprate = "%" }; --Mantle of Dissemination
		[3] = { itemID = 40194, droprate = "%" }; --Blanketing Robes of Snow
		[4] = { itemID = 40561, droprate = "%" }; --Leash of Heedless Magic
		[5] = { itemID = 40560, droprate = "0%" }; --Leggings of the Wanton Spellcaster
		[6] = { itemID = 40558, droprate = "%" }; --Arcanic Tramplers
		[7] = { itemID = 40594, droprate = "0%" }; --Spaulders of Catatonia
		[8] = { itemID = 40539, droprate = "%" }; --Chestguard of the Recluse
		[9] = { itemID = 40541, droprate = "%" }; --Frosted Adroit Handguards
		[10] = { itemID = 40566, droprate = "1%" }; --Unravelling Strands of Sanity
		[11] = { itemID = 40543, droprate = "%" }; --Blue Aspect Helm
		[12] = { itemID = 40588, droprate = "%" }; --Tunic of the Artifact Guardian
		[13] = { itemID = 40564, droprate = "%" }; --Winter Spectacle Gloves
		[14] = { itemID = 40549, droprate = "%" }; --Boots of the Renewed Flight
		[15] = { itemID = 40590, droprate = "%" }; --Elevated Lair Pauldrons
		[16] = { itemID = 40589, droprate = "%" }; --Legplates of Sovereignty
		[17] = { itemID = 40592, droprate = "0%" }; --Boots of Healing Energies
		[18] = { itemID = 40591, droprate = "%" }; --Melancholy Sabatons
		[19] = { itemID = 40532, droprate = "%" }; --Living Ice Crystals
		[20] = { itemID = 40531, droprate = "%" }; --Mark of Norgannon
		[21] = { itemID = 43952, desc = "=ds=#e12#", droprate = "%" }; --Reins of the Azure Drake
		[23] = { itemID = 44577, desc = "=ds=#m3#", droprate = "2%" }; --Heroic Key to the Focusing Iris
		[25] = { itemID = 44650, desc = "=ds=#m3#", droprate = "00%" }; --Heart of Magic
		[26] = { itemID = 44664, "=q1=#m4#: =ds=#s2#" }; --Favor of the Dragon Queen
		[27] = { itemID = 44662, "=q1=#m4#: =ds=#s2#" }; --Life-Binder's Locket
		[28] = { itemID = 44665, "=q1=#m4#: =ds=#s2#" }; --Nexus War Champion Beads
		[29] = { itemID = 44661, "=q1=#m4#: =ds=#s2#" }; --Wyrmrest Necklace of Power
	};
};
--------------
--- Ulduar ---
--------------

AtlasLoot_Data["Ulduar"] = {
	Name = BabbleZone["Ulduar"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Flame Leviathan"];
		[1] = { itemID = 45289, droprate = "2%" }; --Lifespark Visage
		[2] = { itemID = 45291, droprate = "7%" }; --Combustion Bracers
		[3] = { itemID = 45288, droprate = "2%" }; --Firestrider Chestguard
		[4] = { itemID = 45283, droprate = "9%" }; --Flamewatch Armguards
		[5] = { itemID = 45285, droprate = "8%" }; --Might of the Leviathan
		[6] = { itemID = 45292, droprate = "8%" }; --Energy Siphon
		[7] = { itemID = 45286, droprate = "7%" }; --Pyrite Infuser
		[8] = { itemID = 45284, droprate = "9%" }; --Kinetic Ripper
		[9] = { itemID = 45287, droprate = "7%" }; --Firesoul
		[10] = { itemID = 45282, droprate = "9%" }; --Ironsoul
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45293, droprate = ".18%" }; --Handguards of Potent Cures
		[18] = { itemID = 45300, "=ds=#s3#" }; --Mantle of Fiery Vengeance
		[19] = { itemID = 45295, droprate = ".25%" }; --Gilded Steel Legplates
		[20] = { itemID = 45297, droprate = ".11%" }; --Shimmering Seal
		[21] = { itemID = 45296, droprate = ".36%" }; --Twirling Blades
	};
	{
		Name = BabbleBoss["Flame Leviathan"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45117, droprate = "9%" }; --Constructor's Handwraps
		[5] = { itemID = 45119, droprate = "0%" }; --Embrace of the Leviathan
		[6] = { itemID = 45108, droprate = "9%" }; --Mechanist's Bindings
		[7] = { itemID = 45118, droprate = "0%" }; --Steamworker's Goggles
		[8] = { itemID = 45109, droprate = "8%" }; --Gloves of the Fiery Behemoth
		[9] = { itemID = 45107, droprate = "7%" }; --Iron Riveted War Helm
		[10] = { itemID = 45111, droprate = "8%" }; --Mimiron's Inferno Couplings
		[11] = { itemID = 45116, droprate = "9%" }; --Freya's Choker of Warding
		[12] = { itemID = 45113, droprate = "9%" }; --Glowing Ring of Reclamation
		[13] = { itemID = 45106, droprate = "6%" }; --Strength of the Automaton
		[14] = { itemID = 45112, droprate = "9%" }; --The Leviathan's Coil
		[15] = { itemID = 45115, droprate = "8%" }; --Overcharged Fuel Rod
		[16] = { itemID = 45114, desc = "=ds=#s16#", droprate = "8%" }; --Steamcaller's Totem
		[17] = { itemID = 45110, droprate = "8%" }; --Titanguard
		[18] = { itemID = 45086, droprate = "8%" }; --Rising Sun
		[20] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[21] = { itemID = 45135, droprate = ".27%" }; --Boots of Fiery Resolution
		[22] = { itemID = 45136, "=ds=#s3#" }; --Shoulderpads of Dormant Energies
		[23] = { itemID = 45134, "=ds=#s11#" }; --Plated Leggings of Ruination
		[24] = { itemID = 45133, "=ds=#s2#" }; --Pendant of Fiery Havoc
		[25] = { itemID = 45132, droprate = ".11%" }; --Golden Saronite Dragon
	};
	{
		Name = BabbleBoss["Razorscale"];
		[1] = { itemID = 45306, droprate = "0%" }; --Binding of the Dragon Matriarch
		[2] = { itemID = 45302, droprate = "9%" }; --Treads of the Invader
		[3] = { itemID = 45301, droprate = "0%" }; --Bracers of the Smothering Inferno
		[4] = { itemID = 45307, droprate = "0%" }; --Ironscale Leggings
		[5] = { itemID = 45299, droprate = "9%" }; --Dragonsteel Faceplate
		[6] = { itemID = 45305, droprate = "9%" }; --Breastplate of the Afterlife
		[7] = { itemID = 45304, droprate = "9%" }; --Stormtempered Girdle
		[8] = { itemID = 45303, droprate = "0%" }; --Band of Draconic Guile
		[9] = { itemID = 45308, droprate = "1%" }; --Eye of the Broodmother
		[10] = { itemID = 45298, droprate = "0%" }; --Razorscale Talon
	};
	{
		Name = BabbleBoss["Razorscale"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45138, droprate = "0%" }; --Drape of the Drakerider
		[5] = { itemID = 45150, droprate = "0%" }; --Collar of the Wyrmhunter
		[6] = { itemID = 45146, droprate = "0%" }; --Shackles of the Odalisque
		[7] = { itemID = 45149, droprate = "1%" }; --Bracers of the Broodmother
		[8] = { itemID = 45141, droprate = "9%" }; --Proto-hide Leggings
		[9] = { itemID = 45151, droprate = "9%" }; --Belt of the Fallen Wyrm
		[10] = { itemID = 45143, droprate = "0%" }; --Saronite Mesh Legguards
		[11] = { itemID = 45140, droprate = "9%" }; --Razorscale Shoulderguards
		[12] = { itemID = 45139, droprate = "9%" }; --Dragonslayer's Brace
		[13] = { itemID = 45148, droprate = "9%" }; --Living Flame
		[14] = { itemID = 45510, desc = "=ds=#s16#", droprate = "9%" }; --Libram of Discord
		[15] = { itemID = 45144, desc = "=ds=#s16#, #w21#", droprate = "9%" }; --Sigil of Deflection
		[16] = { itemID = 45142, droprate = "9%" }; --Remorse
		[17] = { itemID = 45147, droprate = "9%" }; --Guiding Star
		[18] = { itemID = 45137, desc = "=ds=#w5#", droprate = "8%" }; --Veranus' Bane
	};
	{
		Name = BabbleBoss["Ignis the Furnace Master"];
		[1] = { itemID = 45317, droprate = "0%" }; --Shawl of the Caretaker
		[2] = { itemID = 45318, droprate = "9%" }; --Drape of Fuming Anger
		[3] = { itemID = 45312, droprate = "0%" }; --Gloves of Smoldering Touch
		[4] = { itemID = 45316, droprate = "9%" }; --Armbraces of the Vibrant Flame
		[5] = { itemID = 45321, droprate = "1%" }; --Pauldrons of Tempered Will
		[6] = { itemID = 45310, droprate = "0%" }; --Gauntlets of the Iron Furnace
		[7] = { itemID = 45313, droprate = "9%" }; --Furnace Stone
		[8] = { itemID = 45314, droprate = "9%" }; --Igniter Rod
		[9] = { itemID = 45311, desc = "=ds=#w7#", droprate = "0%" }; --Relentless Edge
		[10] = { itemID = 45309, desc = "=ds=#w5#", droprate = "9%" }; --Rifle of the Platinum Guard
	};
	{
		Name = BabbleBoss["Ignis the Furnace Master"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45186, droprate = "8%" }; --Soot-Covered Mantle
		[5] = { itemID = 45185, droprate = "0%" }; --Flamewrought Cinch
		[6] = { itemID = 45162, droprate = "8%" }; --Flamestalker Boots
		[7] = { itemID = 45164, droprate = "9%" }; --Helm of the Furnace Master
		[8] = { itemID = 45187, droprate = "9%" }; --Wristguards of the Firetender
		[9] = { itemID = 45167, droprate = "9%" }; --Lifeforge Breastplate
		[10] = { itemID = 45161, droprate = "9%" }; --Girdle of Embers
		[11] = { itemID = 45166, droprate = "0%" }; --Charred Saronite Greaves
		[12] = { itemID = 45157, droprate = "0%" }; --Cindershard Ring
		[13] = { itemID = 45168, droprate = "0%" }; --Pyrelight Circle
		[14] = { itemID = 45158, droprate = "9%" }; --Heart of Iron
		[15] = { itemID = 45169, desc = "=ds=#s16#", droprate = "1%" }; --Totem of the Dancing Flame
		[16] = { itemID = 45165, droprate = "9%" }; --Worldcarver
		[17] = { itemID = 45171, droprate = "0%" }; --Intensity
		[18] = { itemID = 45170, droprate = "1%" }; --Scepter of Creation
	};
	{
		Name = BabbleBoss["XT-002 Deconstructor"];
		[1] = { itemID = 45694, droprate = "1%" }; --Conductive Cord
		[2] = { itemID = 45677, droprate = "9%" }; --Treacherous Shoulderpads
		[3] = { itemID = 45686, droprate = "1%" }; --Vest of the Glowing Crescent
		[4] = { itemID = 45687, droprate = "1%" }; --Helm of Veiled Energies
		[5] = { itemID = 45679, droprate = "9%" }; --Gloves of Taut Grip
		[6] = { itemID = 45676, droprate = "9%" }; --Chestplate of Vicious Potency
		[7] = { itemID = 45680, droprate = "8%" }; --Armbands of the Construct
		[8] = { itemID = 45675, droprate = "0%" }; --Power Enhancing Loop
		[9] = { itemID = 45685, droprate = "2%" }; --Plasma Foil
		[10] = { itemID = 45682, droprate = "4%" }; --Pulsing Spellshield
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45869, droprate = "%" }; --Fluxing Energy Coils
		[18] = { itemID = 45867, droprate = "%" }; --Breastplate of the Stoneshaper
		[19] = { itemID = 45871, droprate = "%" }; --Seal of Ulduar
		[20] = { itemID = 45868, droprate = "%" }; --Aesir's Edge
		[21] = { itemID = 45870, desc = "=ds=#w5#", droprate = "%" }; --Magnetized Projectile Emitter
	};
	{
		Name = BabbleBoss["XT-002 Deconstructor"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45253, droprate = "9%" }; --Mantle of Wavering Calm
		[5] = { itemID = 45258, droprate = "9%" }; --Sandals of Rash Temperament
		[6] = { itemID = 45260, droprate = "1%" }; --Boots of Hasty Revival
		[7] = { itemID = 45259, droprate = "8%" }; --Quartz-studded Harness
		[8] = { itemID = 45249, droprate = "8%" }; --Brass-lined Boots
		[9] = { itemID = 45251, droprate = "8%" }; --Shoulderplates of the Deconstructor
		[10] = { itemID = 45252, droprate = "9%" }; --Horologist's Wristguards
		[11] = { itemID = 45248, droprate = "9%" }; --Clockwork Legplates
		[12] = { itemID = 45250, droprate = "8%" }; --Crazed Construct Ring
		[13] = { itemID = 45247, droprate = "0%" }; --Signet of the Earthshaker
		[14] = { itemID = 45254, desc = "=ds=#s16#, #w21#", droprate = "0%" }; --Sigil of the Vengeful Heart
		[15] = { itemID = 45255, desc = "=ds=#s16#", droprate = "0%" }; --Thunderfall Totem
		[16] = { itemID = 45246, droprate = "9%" }; --Golem-Shard Sticker
		[17] = { itemID = 45256, droprate = "9%" }; --Twisted Visage
		[18] = { itemID = 45257, droprate = "0%" }; --Quartz Crystal Wand
		[20] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[21] = { itemID = 45446, droprate = ".16%" }; --Grasps of Reason
		[22] = { itemID = 45444, droprate = ".29%" }; --Gloves of the Steady Hand
		[23] = { itemID = 45445, droprate = ".16%" }; --Breastplate of the Devoted
		[24] = { itemID = 45443, droprate = ".15%" }; --Charm of Meticulous Timing
		[25] = { itemID = 45442, droprate = ".28%" }; --Sorthalis, Hammer of the Watchers
	};
	{
		Name = BabbleBoss["The Iron Council"];
		[1] = { itemID = 45322, droprate = "8%" }; --Cloak of the Iron Council
		[2] = { itemID = 45423, droprate = "4%" }; --Runetouch Handwraps
		[3] = { itemID = 45324, droprate = "9%" }; --Leggings of Swift Reflexes
		[4] = { itemID = 45378, droprate = "7%" }; --Boots of the Petrified Forest
		[5] = { itemID = 45329, droprate = "9%" }; --Circlet of True Sight
		[6] = { itemID = 45333, droprate = "2%" }; --Belt of the Iron Servant
		[7] = { itemID = 45330, droprate = "3%" }; --Greaves of Iron Intensity
		[8] = { itemID = 45418, droprate = "1%" }; --Lady Maye's Sapphire Ring
		[9] = { itemID = 45332, droprate = "3%" }; --Stormtip
		[10] = { itemID = 45331, droprate = "9%" }; --Rune-Etched Nightblade
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45455, droprate = "9%" }; --Belt of the Crystal Tree
		[18] = { itemID = 45447, droprate = "8%" }; --Watchful Eye
		[19] = { itemID = 45456, droprate = "6%" }; --Loop of the Agile
		[20] = { itemID = 45449, droprate = "8%" }; --The Masticator
		[21] = { itemID = 45448, droprate = "7%" }; --Perilous Bite
		[22] = { itemID = 45506, desc = "=ds=#m2#", droprate = "1%" }; --Archivum Data Disc
	};
	{
		Name = BabbleBoss["The Iron Council"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45224, droprate = "9%" }; --Drape of the Lithe
		[5] = { itemID = 45240, droprate = "4%" }; --Raiments of the Iron Council
		[6] = { itemID = 45238, droprate = "0%" }; --Overload Legwraps
		[7] = { itemID = 45237, droprate = "3%" }; --Phaelia's Vestments of the Sprouting Seed
		[8] = { itemID = 45232, droprate = "2%" }; --Runed Ironhide Boots
		[9] = { itemID = 45227, droprate = "2%" }; --Iron-studded Mantle
		[10] = { itemID = 45239, droprate = "0%" }; --Runeshaper's Gloves
		[11] = { itemID = 45226, droprate = "0%" }; --Ancient Iron Heaume
		[12] = { itemID = 45225, droprate = "9%" }; --Steelbreaker's Embrace
		[13] = { itemID = 45228, droprate = "1%" }; --Handguards of the Enclave
		[14] = { itemID = 45193, droprate = "9%" }; --Insurmountable Fervor
		[15] = { itemID = 45236, droprate = "9%" }; --Unblinking Eye
		[16] = { itemID = 45235, droprate = "0%" }; --Radiant Seal
		[17] = { itemID = 45233, droprate = "0%" }; --Rune Edge
		[18] = { itemID = 45234, droprate = "9%" }; --Rapture
		[20] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[21] = { itemID = 45242, droprate = "1%" }; --Drape of Mortal Downfall
		[22] = { itemID = 45245, droprate = "4%" }; --Shoulderpads of the Intruder
		[23] = { itemID = 45244, droprate = "%" }; --Greaves of Swift Vengeance
		[24] = { itemID = 45241, droprate = "5%" }; --Belt of Colossal Rage
		[25] = { itemID = 45243, droprate = "0%" }; --Sapphire Amulet of Renewal
		[26] = { itemID = 45607, droprate = "8%" }; --Fang of Oblivion
		[27] = { itemID = 45857, desc = "=ds=#m2#", droprate = "4%" }; --Archivum Data Disc
	};
	{
		Name = BabbleBoss["Kologarn"];
		[1] = { itemID = 45704, droprate = "9%" }; --Shawl of the Shattered Giant
		[2] = { itemID = 45701, droprate = "1%" }; --Greaves of the Earthbinder
		[3] = { itemID = 45697, droprate = "8%" }; --Shoulderguards of the Solemn Watch
		[4] = { itemID = 45698, droprate = "8%" }; --Sabatons of the Iron Watcher
		[5] = { itemID = 45696, droprate = "9%" }; --Mark of the Unyielding
		[6] = { itemID = 45699, droprate = "7%" }; --Pendant of the Piercing Glare
		[7] = { itemID = 45702, droprate = "8%" }; --Emerald Signet Ring
		[8] = { itemID = 45703, droprate = "7%" }; --Spark of Hope
		[9] = { itemID = 45700, droprate = "9%" }; --Stoneguard
		[10] = { itemID = 45695, droprate = "1%" }; --Spire of Withering Dreams
	};
	{
		Name = BabbleBoss["Kologarn"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45272, droprate = "0%" }; --Robes of the Umbral Brute
		[5] = { itemID = 45275, droprate = "8%" }; --Bracers of Unleashed Magic
		[6] = { itemID = 45273, droprate = "8%" }; --Handwraps of Plentiful Recovery
		[7] = { itemID = 45265, droprate = "6%" }; --Shoulderpads of the Monolith
		[8] = { itemID = 45274, droprate = "4%" }; --Leggings of the Stoneweaver
		[9] = { itemID = 45264, droprate = "6%" }; --Decimator's Armguards
		[10] = { itemID = 45269, droprate = "6%" }; --Unfaltering Armguards
		[11] = { itemID = 45268, droprate = "8%" }; --Gloves of the Pythonic Guardian
		[12] = { itemID = 45267, droprate = "8%" }; --Saronite Plated Legguards
		[13] = { itemID = 45262, droprate = "8%" }; --Necklace of Unerring Mettle
		[14] = { itemID = 45263, droprate = "8%" }; --Wrathstone
		[15] = { itemID = 45271, droprate = "7%" }; --Ironmender
		[16] = { itemID = 45270, desc = "=ds=#s16#", droprate = "7%" }; --Idol of the Crying Wind
		[17] = { itemID = 45266, droprate = "8%" }; --Malice
		[18] = { itemID = 45261, desc = "=ds=#w5#", droprate = "6%" }; --Giant's Bane
	};
	{
		Name = BabbleBoss["Algalon the Observer"];
		[1] = { itemID = 46042, "=ds=#s4#" }; --Drape of the Messenger
		[2] = { itemID = 46045, droprate = "0%" }; --Pulsar Gloves
		[3] = { itemID = 46050, "=ds=#s12#" }; --Starlight Treads
		[4] = { itemID = 46043, "=ds=#s9#" }; --Gloves of the Endless Dark
		[5] = { itemID = 46049, "=ds=#s11#" }; --Zodiac Leggings
		[6] = { itemID = 46044, "=ds=#s3#" }; --Observer's Mantle
		[7] = { itemID = 46037, "=ds=#s3#" }; --Shoulderplates of the Celestial Watch
		[8] = { itemID = 46039, "=ds=#s5#" }; --Breastplate of the Timeless
		[9] = { itemID = 46041, "=ds=#s10#" }; --Starfall Girdle
		[10] = { itemID = 46047, "=ds=#s2#" }; --Pendant of the Somber Witness
		[11] = { itemID = 46040, droprate = "0%" }; --Strength of the Heavens
		[12] = { itemID = 46048, "=ds=#s13#" }; --Band of Lights
		[13] = { itemID = 46046, "=ds=#s13#" }; --Nebula Band
		[14] = { itemID = 46038, "=ds=#s14#" }; --Dark Matter
		[15] = { itemID = 46051, droprate = "0%" }; --Meteorite Crystal
		[16] = { itemID = 46052, desc = "=ds=#m2#", droprate = "00%" }; --Reply-Code Alpha
		[17] = { itemID = 46320, "=q1=#m4#: =ds=#s4#" }; --Drape of the Skyherald
		[18] = { itemID = 46321, "=q1=#m4#: =ds=#s4#" }; --Sunglimmer Drape
		[19] = { itemID = 46322, "=q1=#m4#: =ds=#s13#" }; --Brann's Sealing Ring
		[20] = { itemID = 46323, "=q1=#m4#: =ds=#s13#" }; --Starshine Signet
	};
	{
		Name = BabbleBoss["Algalon the Observer"];
		[1] = { itemID = 45665, droprate = "0%" }; --Pharos Gloves
		[2] = { itemID = 45619, "=ds=#s10#" }; --Starwatcher's Binding
		[3] = { itemID = 45611, droprate = "0%" }; --Solar Bindings
		[4] = { itemID = 45616, "=ds=#s10#" }; --Star-beaded Clutch
		[5] = { itemID = 45610, "=ds=#s1#" }; --Boundless Gaze
		[6] = { itemID = 45615, "=ds=#s12#" }; --Planewalker Treads
		[7] = { itemID = 45594, droprate = "0%" }; --Legplates of the Endless Void
		[8] = { itemID = 45599, "=ds=#s12#" }; --Sabatons of Lifeless Night
		[9] = { itemID = 45617, "=ds=#s15#" }; --Cosmos
		[10] = { itemID = 45620, "=ds=#h3#" }; --Starshard Edge
		[11] = { itemID = 45607, droprate = "8%" }; --Fang of Oblivion
		[12] = { itemID = 45612, droprate = "1%" }; --Constellus
		[13] = { itemID = 45613, droprate = "%" }; --Dreambinder
		[14] = { itemID = 45587, "=ds=#w8#" }; --Bulwark of Algalon
		[15] = { itemID = 45570, droprate = "%" }; --Skyforge Crossbow
		[16] = { itemID = 45609, "=ds=#s14#" }; --Comet's Trail
		[18] = { itemID = 46053, desc = "=ds=#m2#", droprate = "00%" }; --Reply-Code Alpha
		[19] = { itemID = 45588, "=q1=#m4#: =ds=#s4#" }; --Drape of the Skyborn
		[20] = { itemID = 45618, "=q1=#m4#: =ds=#s4#" }; --Sunglimmer Cloak
		[21] = { itemID = 45608, "=q1=#m4#: =ds=#s13#" }; --Brann's Signet Ring
		[22] = { itemID = 45614, "=q1=#m4#: =ds=#s13#" }; --Starshine Circle
	};
	{
		Name = BabbleBoss["Auriaya"];
		[1] = { itemID = 45832, droprate = "9%" }; --Mantle of the Preserver
		[2] = { itemID = 45865, droprate = "0%" }; --Raiments of the Corrupted
		[3] = { itemID = 45864, droprate = "0%" }; --Cover of the Keepers
		[4] = { itemID = 45709, droprate = "9%" }; --Nimble Climber's Belt
		[5] = { itemID = 45711, droprate = "9%" }; --Ironaya's Discarded Mantle
		[6] = { itemID = 45712, droprate = "0%" }; --Chestplate of Titanic Fury
		[7] = { itemID = 45708, droprate = "0%" }; --Archaedas' Lost Legplates
		[8] = { itemID = 45866, droprate = "9%" }; --Elemental Focus Stone
		[9] = { itemID = 45707, droprate = "9%" }; --Shieldwall of the Breaker
		[10] = { itemID = 45713, droprate = "1%" }; --Nurturing Touch
	};
	{
		Name = BabbleBoss["Auriaya"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45319, droprate = "9%" }; --Cloak of the Makers
		[5] = { itemID = 45435, droprate = "9%" }; --Cowl of the Absolute
		[6] = { itemID = 45441, droprate = "0%" }; --Sandals of the Ancient Keeper
		[7] = { itemID = 45439, droprate = "0%" }; --Unwavering Stare
		[8] = { itemID = 45325, droprate = "0%" }; --Gloves of the Stonereaper
		[9] = { itemID = 45440, droprate = "0%" }; --Amice of the Stoic Watch
		[10] = { itemID = 45320, droprate = "0%" }; --Shoulderplates of the Eternal
		[11] = { itemID = 45334, droprate = "8%" }; --Unbreakable Chestguard
		[12] = { itemID = 45434, droprate = "0%" }; --Greaves of the Rockmender
		[13] = { itemID = 45326, droprate = "9%" }; --Platinum Band of the Aesir
		[14] = { itemID = 45438, droprate = "9%" }; --Ring of the Faithful Servant
		[15] = { itemID = 45436, desc = "=ds=#s16#", droprate = "0%" }; --Libram of the Resolute
		[16] = { itemID = 45437, droprate = "0%" }; --Runescribed Blade
		[17] = { itemID = 45315, droprate = "9%" }; --Stonerender
		[18] = { itemID = 45327, droprate = "0%" }; --Siren's Cry
	};
	{
		Name = BabbleBoss["Hodir"];
		[1] = { itemID = 45873, droprate = "5%" }; --Winter's Frigid Embrace
		[2] = { itemID = 45464, droprate = "0%" }; --Cowl of Icy Breaths
		[3] = { itemID = 45874, droprate = "6%" }; --Signet of Winter
		[4] = { itemID = 45458, droprate = "7%" }; --Stormedge
		[5] = { itemID = 45872, droprate = "2%" }; --Avalanche
		[7] = { itemID = 45650, desc = "=ds=#e15#", droprate = "9%" }; --Leggings of the Wayward Conqueror
		[8] = { itemID = 45651, desc = "=ds=#e15#", droprate = "9%" }; --Leggings of the Wayward Protector
		[9] = { itemID = 45652, desc = "=ds=#e15#", droprate = "4%" }; --Leggings of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45888, droprate = "8%" }; --Bitter Cold Armguards
		[18] = { itemID = 45876, droprate = "6%" }; --Shiver
		[19] = { itemID = 45886, droprate = "0%" }; --Icecore Staff
		[20] = { itemID = 45887, droprate = "8%" }; --Ice Layered Barrier
		[21] = { itemID = 45877, droprate = "7%" }; --The Boreal Guard
		[23] = { itemID = 45786, desc = "=ds=#m3#", droprate = "3%" }; --Hodir's Sigil
	};
	{
		Name = BabbleBoss["Hodir"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45453, droprate = "6%" }; --Winter's Icy Embrace
		[5] = { itemID = 45454, droprate = "8%" }; --Frost-bound Chain Bracers
		[6] = { itemID = 45452, droprate = "6%" }; --Frostplate Greaves
		[7] = { itemID = 45451, droprate = "5%" }; --Frozen Loop
		[8] = { itemID = 45450, droprate = "9%" }; --Northern Barrier
		[10] = { itemID = 45632, desc = "=ds=#e15#", droprate = "2%" }; --Breastplate of the Wayward Conqueror
		[11] = { itemID = 45633, desc = "=ds=#e15#", droprate = "0%" }; --Breastplate of the Wayward Protector
		[12] = { itemID = 45634, desc = "=ds=#e15#", droprate = "1%" }; --Breastplate of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45461, droprate = "9%" }; --Drape of Icy Intent
		[18] = { itemID = 45462, droprate = "0%" }; --Gloves of the Frozen Glade
		[19] = { itemID = 45460, droprate = "2%" }; --Bindings of Winter Gale
		[20] = { itemID = 45459, droprate = "3%" }; --Frigid Strength of Hodir
		[21] = { itemID = 45612, droprate = "1%" }; --Constellus
		[22] = { itemID = 45457, droprate = "9%" }; --Staff of Endless Winter
		[24] = { itemID = 45815, desc = "=ds=#m3#", droprate = "1%" }; --Hodir's Sigil
	};
	{
		Name = BabbleBoss["Thorim"];
		[1] = { itemID = 45893, droprate = "9%" }; --Guise of the Midgard Serpent
		[2] = { itemID = 45927, droprate = "7%" }; --Handwraps of Resonance
		[3] = { itemID = 45894, droprate = "7%" }; --Leggings of Unstable Discharge
		[4] = { itemID = 45895, droprate = "8%" }; --Belt of the Blood Pit
		[5] = { itemID = 45892, desc = "=ds=#h1# #w6#", droprate = "8%" }; --Legacy of Thunder
		[7] = { itemID = 45659, desc = "=ds=#e15#", droprate = "5%" }; --Spaulders of the Wayward Conqueror
		[8] = { itemID = 45660, desc = "=ds=#e15#", droprate = "8%" }; --Spaulders of the Wayward Protector
		[9] = { itemID = 45661, desc = "=ds=#e15#", droprate = "4%" }; --Spaulders of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45928, droprate = "%" }; --Gauntlets of the Thunder God
		[18] = { itemID = 45933, droprate = "%" }; --Pendant of the Shallow Grave
		[19] = { itemID = 45931, droprate = "%" }; --Mjolnir Runestone
		[20] = { itemID = 45929, droprate = "%" }; --Sif's Remembrance
		[21] = { itemID = 45930, desc = "=ds=#h1# #w4#", droprate = "%" }; --Combatant's Bootblade
		[23] = { itemID = 45784, desc = "=ds=#m3#", droprate = "%" }; --Thorim's Sigil
	};
	{
		Name = BabbleBoss["Thorim"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45468, droprate = "7%" }; --Leggings of Lost Love
		[5] = { itemID = 45467, droprate = "7%" }; --Belt of the Betrayed
		[6] = { itemID = 45469, droprate = "4%" }; --Sif's Promise
		[7] = { itemID = 45466, droprate = "7%" }; --Scale of Fates
		[8] = { itemID = 45463, desc = "=ds=#h1# #w6#", droprate = "8%" }; --Vulmir, the Northern Tempest
		[10] = { itemID = 45638, desc = "=ds=#e15#", droprate = "0%" }; --Crown of the Wayward Conqueror
		[11] = { itemID = 45639, desc = "=ds=#e15#", droprate = "7%" }; --Crown of the Wayward Protector
		[12] = { itemID = 45640, desc = "=ds=#e15#", droprate = "1%" }; --Crown of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45473, droprate = "%" }; --Embrace of the Gladiator
		[18] = { itemID = 45474, droprate = "%" }; --Pauldrons of the Combatant
		[19] = { itemID = 45472, droprate = "%" }; --Warhelm of the Champion
		[20] = { itemID = 45471, droprate = "%" }; --Fate's Clutch
		[21] = { itemID = 45570, droprate = "%" }; --Skyforge Crossbow
		[22] = { itemID = 45470, droprate = "%" }; --Wisdom's Hold
		[24] = { itemID = 45817, desc = "=ds=#m3#", droprate = "%" }; --Thorim's Sigil
	};
	{
		Name = BabbleBoss["Freya"];
		[1] = { itemID = 45940, droprate = "5%" }; --Tunic of the Limber Stalker
		[2] = { itemID = 45941, droprate = "5%" }; --Chestguard of the Lasher
		[3] = { itemID = 45935, droprate = "7%" }; --Ironbark Faceguard
		[4] = { itemID = 45936, droprate = "5%" }; --Legplates of Flourishing Resolve
		[5] = { itemID = 45934, droprate = "8%" }; --Unraveling Reach
		[7] = { itemID = 45644, desc = "=ds=#e15#", droprate = "5%" }; --Gloves of the Wayward Conqueror
		[8] = { itemID = 45645, desc = "=ds=#e15#", droprate = "3%" }; --Gloves of the Wayward Protector
		[9] = { itemID = 45646, desc = "=ds=#e15#", droprate = "0%" }; --Gloves of the Wayward Vanquisher
		[11] = { itemID = 46110, desc = "=ds=#p1# (425)", droprate = "6%" }; --Alchemist's Cache
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45943, droprate = "%" }; --Gloves of Whispering Winds
		[18] = { itemID = 45945, droprate = "%" }; --Seed of Budding Carnage
		[19] = { itemID = 45946, droprate = "%" }; --Fire Orchid Signet
		[20] = { itemID = 45947, desc = "=ds=#h1# #w10#", droprate = "%" }; --Serilas, Blood Blade of Invar One-Arm
		[21] = { itemID = 45294, droprate = "%" }; --Petrified Ivy Sprig
		[23] = { itemID = 45788, desc = "=ds=#m3#", droprate = "%" }; --Freya's Sigil
	};
	{
		Name = BabbleBoss["Freya"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45483, droprate = "5%" }; --Boots of the Servant
		[5] = { itemID = 45482, droprate = "7%" }; --Leggings of the Lifetender
		[6] = { itemID = 45481, droprate = "6%" }; --Gauntlets of Ruthless Reprisal
		[7] = { itemID = 45480, droprate = "3%" }; --Nymph Heart Charm
		[8] = { itemID = 45479, droprate = "9%" }; --The Lifebinder
		[10] = { itemID = 45653, desc = "=ds=#e15#", droprate = "3%" }; --Legplates of the Wayward Conqueror
		[11] = { itemID = 45654, desc = "=ds=#e15#", droprate = "2%" }; --Legplates of the Wayward Protector
		[12] = { itemID = 45655, desc = "=ds=#e15#", droprate = "9%" }; --Legplates of the Wayward Vanquisher
		[14] = { itemID = 46110, desc = "=ds=#p1# (425)", droprate = "6%" }; --Alchemist's Cache
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45486, "=ds=#s4#" }; --Drape of the Sullen Goddess
		[18] = { itemID = 45488, droprate = ".13%" }; --Leggings of the Enslaved Idol
		[19] = { itemID = 45487, droprate = ".34%" }; --Handguards of Revitalization
		[20] = { itemID = 45485, "=ds=#s2#" }; --Bronze Pendant of the Vanir
		[21] = { itemID = 45484, droprate = ".27%" }; --Bladetwister
		[22] = { itemID = 45613, droprate = "%" }; --Dreambinder
		[24] = { itemID = 45814, desc = "=ds=#m3#", droprate = ".27%" }; --Freya's Sigil
	};
	{
		Name = BabbleBoss["Mimiron"];
		[1] = { itemID = 45973, droprate = "9%" }; --Stylish Power Cape
		[2] = { itemID = 45976, droprate = "0%" }; --Static Charge Handwraps
		[3] = { itemID = 45974, droprate = "5%" }; --Shoulderguards of Assimilation
		[4] = { itemID = 45975, droprate = "1%" }; --Cable of the Metrognome
		[5] = { itemID = 45972, droprate = ".13%" }; --Pulse Baton
		[7] = { itemID = 45647, desc = "=ds=#e15#", droprate = "8%" }; --Helm of the Wayward Conqueror
		[8] = { itemID = 45648, desc = "=ds=#e15#", droprate = "5%" }; --Helm of the Wayward Protector
		[9] = { itemID = 45649, desc = "=ds=#e15#", droprate = "7%" }; --Helm of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45993, droprate = "%" }; --Mimiron's Flight Goggles
		[18] = { itemID = 45989, droprate = ".34%" }; --Tempered Mercury Greaves
		[19] = { itemID = 45982, droprate = ".34%" }; --Fused Alloy Legplates
		[20] = { itemID = 45988, "=ds=#s12#" }; --Greaves of the Iron Army
		[21] = { itemID = 45990, droprate = ".13%" }; --Fusion Blade
		[23] = { itemID = 45787, desc = "=ds=#m3#", droprate = "%" }; --Mimiron's Sigil
	};
	{
		Name = BabbleBoss["Mimiron"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45493, droprate = "1%" }; --Asimov's Drape
		[5] = { itemID = 45492, droprate = "5%" }; --Malleable Steelweave Mantle
		[6] = { itemID = 45491, droprate = "7%" }; --Waistguard of the Creator
		[7] = { itemID = 45490, droprate = "7%" }; --Pandora's Plea
		[8] = { itemID = 45489, droprate = "5%" }; --Insanity's Grip
		[10] = { itemID = 45641, desc = "=ds=#e15#", droprate = "5%" }; --Gauntlets of the Wayward Conqueror
		[11] = { itemID = 45642, desc = "=ds=#e15#", droprate = "0%" }; --Gauntlets of the Wayward Protector
		[12] = { itemID = 45643, desc = "=ds=#e15#", droprate = "8%" }; --Gauntlets of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 45496, droprate = ".33%" }; --Titanskin Cloak
		[18] = { itemID = 45497, "=ds=#s1#" }; --Crown of Luminescence
		[19] = { itemID = 45663, "=ds=#s8#" }; --Armbands of Bedlam
		[20] = { itemID = 45495, "=ds=#s13#" }; --Conductive Seal
		[21] = { itemID = 45494, "=ds=#h4#" }; --Delirium's Touch
		[22] = { itemID = 45620, "=ds=#h3#" }; --Starshard Edge
		[24] = { itemID = 45816, desc = "=ds=#m3#", droprate = ".16%" }; --Mimiron's Sigil
	};
	{
		Name = BabbleBoss["General Vezax"];
		[1] = { itemID = 46014, droprate = "2%" }; --Saronite Animus Cloak
		[2] = { itemID = 46013, droprate = "0%" }; --Underworld Mantle
		[3] = { itemID = 46012, droprate = "0%" }; --Vestments of the Piercing Light
		[4] = { itemID = 46009, droprate = "7%" }; --Bindings of the Depths
		[5] = { itemID = 46346, droprate = "%" }; --Boots of Unsettled Prey
		[6] = { itemID = 45997, droprate = "7%" }; --Gauntlets of the Wretched
		[7] = { itemID = 46008, droprate = "8%" }; --Choker of the Abyss
		[8] = { itemID = 46015, droprate = "8%" }; --Pendant of Endless Despair
		[9] = { itemID = 46010, droprate = "1%" }; --Darkstone Ring
		[10] = { itemID = 46011, droprate = "9%" }; --Shadowbite
		[11] = { itemID = 45996, desc = "=ds=#w7#", droprate = "2%" }; --Hoperender
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 46032, droprate = "%" }; --Drape of the Faceless General
		[18] = { itemID = 46034, droprate = "%" }; --Leggings of Profound Darkness
		[19] = { itemID = 46036, droprate = "%" }; --Void Sabre
		[20] = { itemID = 46035, droprate = "%" }; --Aesuga, Hand of the Ardent Champion
		[21] = { itemID = 46033, droprate = "%" }; --Tortured Earth
	};
	{
		Name = BabbleBoss["General Vezax"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45514, droprate = "0%" }; --Mantle of the Unknowing
		[5] = { itemID = 45508, droprate = "1%" }; --Belt of the Darkspeaker
		[6] = { itemID = 45512, droprate = "9%" }; --Grips of the Unbroken
		[7] = { itemID = 45504, droprate = "8%" }; --Darkcore Leggings
		[8] = { itemID = 45513, droprate = "8%" }; --Boots of the Forgotten Depths
		[9] = { itemID = 45502, droprate = "9%" }; --Helm of the Faceless
		[10] = { itemID = 45505, droprate = "9%" }; --Belt of Clinging Hope
		[11] = { itemID = 45501, droprate = "7%" }; --Boots of the Underdweller
		[12] = { itemID = 45503, droprate = "0%" }; --Metallic Loop of the Sufferer
		[13] = { itemID = 45515, droprate = "1%" }; --Ring of the Vacant Eye
		[14] = { itemID = 45507, droprate = "0%" }; --The General's Heart
		[15] = { itemID = 45509, desc = "=ds=#s16#", droprate = "7%" }; --Idol of the Corruptor
		[16] = { itemID = 45145, desc = "=ds=#s16#", droprate = "9%" }; --Libram of the Sacred Shield
		[17] = { itemID = 45498, desc = "=ds=#w7#", droprate = "0%" }; --Lotrafen, Spear of the Damned
		[18] = { itemID = 45511, droprate = "9%" }; --Scepter of Lost Souls
		[20] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[21] = { itemID = 45520, droprate = ".32%" }; --Handwraps of the Vigilant
		[22] = { itemID = 45519, droprate = ".32%" }; --Vestments of the Blind Denizen
		[23] = { itemID = 45517, droprate = ".36%" }; --Pendulum of Infinity
		[24] = { itemID = 45518, "=ds=#s14#" }; --Flare of the Heavens
		[25] = { itemID = 45516, "=ds=#h2#" }; --Voldrethar, Dark Blade of Oblivion
	};
	{
		Name = BabbleBoss["Yogg-Saron"];
		[1] = { itemID = 46030, droprate = "7%" }; --Treads of the Dragon Council
		[2] = { itemID = 46019, droprate = "2%" }; --Leggings of the Insatiable
		[3] = { itemID = 46028, droprate = "7%" }; --Faceguard of the Eyeless Horror
		[4] = { itemID = 46022, droprate = "%" }; --Pendant of a Thousand Maws
		[5] = { itemID = 46021, droprate = "2%" }; --Royal Seal of King Llane
		[6] = { itemID = 46024, droprate = "0%" }; --Kingsbane
		[7] = { itemID = 46016, droprate = "7%" }; --Abaddon
		[8] = { itemID = 46031, droprate = "5%" }; --Touch of Madness
		[9] = { itemID = 46025, droprate = "3%" }; --Devotion
		[10] = { itemID = 46018, droprate = "5%" }; --Deliverance
		[12] = { itemID = 45635, desc = "=ds=#e15#", droprate = "2%" }; --Chestguard of the Wayward Conqueror
		[13] = { itemID = 45636, desc = "=ds=#e15#", droprate = "0%" }; --Chestguard of the Wayward Protector
		[14] = { itemID = 45637, desc = "=ds=#e15#", droprate = "7%" }; --Chestguard of the Wayward Vanquisher
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[17] = { itemID = 46068, "=ds=#s3#" }; --Amice of Inconceivable Horror
		[18] = { itemID = 46095, "=ds=#s10#" }; --Soul-Devouring Cinch
		[19] = { itemID = 46096, "=ds=#s13#" }; --Signet of Soft Lament
		[20] = { itemID = 46097, "=ds=#h1#" }; --Caress of Insanity
		[21] = { itemID = 46067, "=ds=#h2#" }; --Hammer of Crushing Whispers
		[23] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Alone in the Darkness"] };
		[24] = { itemID = 46312, droprate = "00%" }; --Vanquished Clutches of Yogg-Saron
	};
	{
		Name = BabbleBoss["Yogg-Saron"];
		[1] = { itemID = 45038, desc = "=ds=#m3#", droprate = "0%" }; --Fragment of Val'anyr
		[2] = { itemID = 46017, "=q1=#m4#: =ds=#h1#" }; --Val'anyr, Hammer of Ancient Kings
		[4] = { itemID = 45529, droprate = "5%" }; --Shawl of Haunted Memories
		[5] = { itemID = 45532, droprate = "7%" }; --Cowl of Dark Whispers
		[6] = { itemID = 45523, droprate = "8%" }; --Garona's Guise
		[7] = { itemID = 45524, droprate = "3%" }; --Chestguard of Insidious Intent
		[8] = { itemID = 45531, droprate = "6%" }; --Chestguard of the Fallen God
		[9] = { itemID = 45525, droprate = "1%" }; --Godbane Signet
		[10] = { itemID = 45530, droprate = "8%" }; --Sanity's Bond
		[11] = { itemID = 45522, droprate = "0%" }; --Blood of the Old God
		[12] = { itemID = 45527, droprate = "%" }; --Soulscribe
		[13] = { itemID = 45521, droprate = "5%" }; --Earthshaper
		[16] = { itemID = 45656, desc = "=ds=#e15#", droprate = "9%" }; --Mantle of the Wayward Conqueror
		[17] = { itemID = 45657, desc = "=ds=#e15#", droprate = "4%" }; --Mantle of the Wayward Protector
		[18] = { itemID = 45658, desc = "=ds=#e15#", droprate = "6%" }; --Mantle of the Wayward Vanquisher
		[20] = { itemID = 0,  desc = "INV_Box_01", "=q6=#j53#" };
		[21] = { itemID = 45537, droprate = "%" }; --Treads of the False Oracle
		[22] = { itemID = 45536, droprate = "%" }; --Legguards of Cunning Deception
		[23] = { itemID = 45534, "=ds=#s13#" }; --Seal of the Betrayed King
		[24] = { itemID = 45535, "=ds=#s14#" }; --Show of Faith
		[25] = { itemID = 45533, droprate = "%" }; --Dark Edge of Depravity
		[27] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Alone in the Darkness"] };
		[28] = { itemID = 45693, desc = "=ds=#e12#", droprate = "00%" }; --Mimiron's Head
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 46341, droprate = "%" }; --Drape of the Spellweaver
		[2] = { itemID = 46347, droprate = "%" }; --Cloak of the Dormant Blaze
		[3] = { itemID = 46344, droprate = "%" }; --Iceshear Mantle
		[4] = { itemID = 46346, droprate = "%" }; --Boots of Unsettled Prey
		[5] = { itemID = 46345, droprate = "%" }; --Bracers of Righteous Reformation
		[6] = { itemID = 46340, droprate = "%" }; --Adamant Handguards
		[7] = { itemID = 46343, droprate = "%" }; --Fervor of the Protectorate
		[8] = { itemID = 46339, desc = "=ds=#w5#", droprate = "%" }; --Mimiron's Repeater
		[9] = { itemID = 46351, desc = "=ds=#h1# #w6#", droprate = "%" }; --Bloodcrush Cudgel
		[10] = { itemID = 46350, droprate = "%" }; --Pillar of Fortitude
		[11] = { itemID = 46342, droprate = "%" }; --Golemheart Longbow
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 45541, droprate = "%" }; --Shroud of Alteration
		[2] = { itemID = 45549, droprate = "%" }; --Grips of Chaos
		[3] = { itemID = 45547, droprate = "%" }; --Relic Hunter's Cord
		[4] = { itemID = 45548, droprate = "%" }; --Belt of the Sleeper
		[5] = { itemID = 45543, droprate = "%" }; --Shoulders of Misfortune
		[6] = { itemID = 45544, droprate = "%" }; --Leggings of the Tortured Earth
		[7] = { itemID = 45542, droprate = "%" }; --Greaves of the Stonewarder
		[8] = { itemID = 45540, droprate = "%" }; --Bladebearer's Signet
		[9] = { itemID = 45539, droprate = "%" }; --Pendant of Focused Energies
		[10] = { itemID = 45538, droprate = "%" }; --Titanstone Pendant
		[11] = { itemID = 46138, desc = "=ds=#s16#", droprate = "%" }; --Idol of the Flourishing Life
		[12] = { itemID = 45605, desc = "=ds=#h1# #w4#", droprate = "%" }; --Daschal's Bite
	};
	{
		Name = AL["Ulduar Formula/Patterns/Plans"];
		[1] = { itemID = 45089, "=ds=#p2# (450)" }; --Plans: Battlelord's Plate Boots
		[2] = { itemID = 45088, "=ds=#p2# (450)" }; --Plans: Belt of the Titans
		[3] = { itemID = 45092, "=ds=#p2# (450)" }; --Plans: Indestructible Plate Girdle
		[4] = { itemID = 45090, "=ds=#p2# (450)" }; --Plans: Plate Girdle of Righteousness
		[5] = { itemID = 45093, "=ds=#p2# (450)" }; --Plans: Spiked Deathdealers
		[6] = { itemID = 46027, "=ds=#p4# (450)" }; --Formula: Enchant Weapon - Blade Ward
		[7] = { itemID = 46348, "=ds=#p4# (450)" }; --Formula: Enchant Weapon - Blood Draining
		[8] = { itemID = 45100, "=ds=#p7# (450)" }; --Pattern: Belt of Arctic Life
		[9] = { itemID = 45094, "=ds=#p7# (450)" }; --Pattern: Belt of Dragons
		[10] = { itemID = 45096, "=ds=#p7# (450)" }; --Pattern: Blue Belt of Chaos
		[11] = { itemID = 45095, "=ds=#p7# (450)" }; --Pattern: Boots of Living Scale
		[12] = { itemID = 45101, "=ds=#p7# (450)" }; --Pattern: Boots of Wintry Endurance
		[13] = { itemID = 45098, "=ds=#p7# (450)" }; --Pattern: Death-warmed Belt
		[14] = { itemID = 45099, "=ds=#p7# (450)" }; --Pattern: Footpads of Silence
		[15] = { itemID = 45097, "=ds=#p7# (450)" }; --Pattern: Lightning Grounded Boots
		[16] = { itemID = 45104, "=ds=#p8# (450)" }; --Pattern: Cord of the White Dawn
		[17] = { itemID = 45102, "=ds=#p8# (450)" }; --Pattern: Sash of Ancient Power
		[18] = { itemID = 45105, "=ds=#p8# (450)" }; --Pattern: Savior's Slippers
		[19] = { itemID = 45103, "=ds=#p8# (450)" }; --Pattern: Spellslinger's Slippers
		[30] = { itemID = 45087, "=ds=#e8#" }; --Runed Orb
	};
};
-----------------------------
--- Trial of the Crusader ---
-----------------------------

AtlasLoot_Data["TrialoftheCrusader"] = {
	Name = BabbleZone["Trial of the Crusader"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47617, "=ds=#s10#" }; --Icehowl Cinch
		[2] = { itemID = 47613, "=ds=#s3#" }; --Shoulderpads of the Glacial Wilds
		[3] = { itemID = 47608, "=ds=#s12#" }; --Acidmaw Boots
		[4] = { itemID = 47616, "=ds=#s3#" }; --Shoulderguards of the Spirit Walker
		[5] = { itemID = 47610, "=ds=#s8#" }; --Armbands of the Northern Stalker
		[6] = { itemID = 47611, "=ds=#s8#" }; --Dreadscale Armguards
		[7] = { itemID = 47609, "=ds=#s9#" }; --Gauntlets of Rising Anger
		[8] = { itemID = 47615, "=ds=#s10#" }; --Belt of the Frozen Reach
		[9] = { itemID = 47614, "=ds=#s10#" }; --Girdle of the Impaler
		[16] = { itemID = 47607, "=ds=#s2#" }; --Collar of Ceaseless Torment
		[17] = { itemID = 47578, "=ds=#s13#" }; --Carnivorous Band
		[19] = { itemID = 47612, "=ds=#w12#" }; --Rod of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47855, "=ds=#s10#" }; --Icehowl Binding
		[2] = { itemID = 47857, "=ds=#s3#" }; --Pauldrons of the Glacial Wilds
		[3] = { itemID = 47853, "=ds=#s12#" }; --Acidmaw Treads
		[4] = { itemID = 47860, "=ds=#s3#" }; --Pauldrons of the Spirit Walker
		[5] = { itemID = 47850, "=ds=#s8#" }; --Bracers of the Northern Stalker
		[6] = { itemID = 47852, "=ds=#s8#" }; --Dreadscale Bracers
		[7] = { itemID = 47851, "=ds=#s9#" }; --Gauntlets of Mounting Anger
		[8] = { itemID = 47859, "=ds=#s10#" }; --Belt of the Impaler
		[9] = { itemID = 47858, "=ds=#s10#" }; --Girdle of the Frozen Reach
		[16] = { itemID = 47849, "=ds=#s2#" }; --Collar of Unending Torment
		[17] = { itemID = 47854, "=ds=#s13#" }; --Gormok's Band
		[19] = { itemID = 47856, "=ds=#w12#" }; --Scepter of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 46970, "=ds=#s4#" }; --Drape of the Untamed Predator
		[2] = { itemID = 46976, "=ds=#s4#" }; --Shawl of the Refreshing Winds
		[3] = { itemID = 46992, "=ds=#s5#" }; --Flowing Vestments of Ascent
		[4] = { itemID = 46972, "=ds=#s10#" }; --Cord of the Tenebrous Mist
		[5] = { itemID = 46974, "=ds=#s11#" }; --Leggings of the Broken Beast
		[6] = { itemID = 46988, "=ds=#s12#" }; --Boots of the Unrelenting Storm
		[7] = { itemID = 46960, "=ds=#s5#" }; --Breastplate of Cruel Intent
		[8] = { itemID = 46990, "=ds=#s10#" }; --Belt of the Ice Burrower
		[9] = { itemID = 46962, "=ds=#s5#" }; --Chestplate of the Towering Monstrosity
		[10] = { itemID = 46961, "=ds=#s8#" }; --Boneshatter Armplates
		[11] = { itemID = 46985, "=ds=#s12#" }; --Boots of the Courageous
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 46959, "=ds=#s13#" }; --Band of the Violent Temperment
		[20] = { itemID = 46979, "=ds=#h3#" }; --Blade of Tarasque
		[21] = { itemID = 46958, "=ds=#h1#" }; --Steel Bladebreaker
		[22] = { itemID = 46963, "=ds=#w8#" }; --Crystal Plated Vanguard
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47257, "=ds=#s4#" }; --Cloak of the Untamed Predator
		[2] = { itemID = 47256, "=ds=#s4#" }; --Drape of the Refreshing Winds
		[3] = { itemID = 47264, "=ds=#s5#" }; --Flowing Robes of Ascent
		[4] = { itemID = 47258, "=ds=#s10#" }; --Belt of the Tenebrous Mist
		[5] = { itemID = 47259, "=ds=#s11#" }; --Legwraps of the Broken Beast
		[6] = { itemID = 47262, "=ds=#s12#" }; --Boots of the Harsh Winter
		[7] = { itemID = 47251, "=ds=#s5#" }; --Cuirass of Cruel Intent
		[8] = { itemID = 47265, "=ds=#s10#" }; --Binding of the Ice Burrower
		[9] = { itemID = 47254, "=ds=#s5#" }; --Hauberk of the Towering Monstrosity
		[10] = { itemID = 47253, "=ds=#s8#" }; --Boneshatter Vambraces
		[11] = { itemID = 47263, "=ds=#s12#" }; --Sabatons of the Courageous
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47252, "=ds=#s13#" }; --Ring of the Violent Temperament
		[20] = { itemID = 47261, "=ds=#h3#" }; --Barb of Tarasque
		[21] = { itemID = 47255, "=ds=#h1#" }; --Stygian Bladebreaker
		[22] = { itemID = 47260, "=ds=#w8#" }; --Forlorn Barrier
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47663, "=ds=#s8#" }; --Felspark Bindings
		[2] = { itemID = 47620, "=ds=#s11#" }; --Leggings of the Demonic Messenger
		[3] = { itemID = 47669, "=ds=#s10#" }; --Belt of the Winter Solstice
		[4] = { itemID = 47621, "=ds=#s10#" }; --Girdle of the Farseer
		[5] = { itemID = 49235, "=ds=#s12#" }; --Boots of Tortured Space
		[6] = { itemID = 47683, "=ds=#s12#" }; --Sentinel Scouting Greaves
		[7] = { itemID = 47680, "=ds=#s8#" }; --Armguards of the Nether Lord
		[8] = { itemID = 47711, "=ds=#s10#" }; --Girdle of the Nether Champion
		[16] = { itemID = 47619, "=ds=#s2#" }; --Amulet of Binding Elements
		[17] = { itemID = 47679, "=ds=#s2#" }; --Endurance of the Infernal
		[18] = { itemID = 47618, "=ds=#s13#" }; --Firestorm Ring
		[19] = { itemID = 47703, "=ds=#s13#" }; --Planestalker Signet
		[21] = { itemID = 47676, "=ds=#h1#" }; --Dirk of the Night Watch
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47861, "=ds=#s8#" }; --Felspark Bracers
		[2] = { itemID = 47865, "=ds=#s11#" }; --Legwraps of the Demonic Messenger
		[3] = { itemID = 47863, "=ds=#s10#" }; --Belt of the Bloodhoof Emissary
		[4] = { itemID = 47866, "=ds=#s10#" }; --Darkspear Ritual Binding
		[5] = { itemID = 49236, "=ds=#s12#" }; --Sabatons of Tortured Space
		[6] = { itemID = 47867, "=ds=#s12#" }; --Warsong Poacher's Greaves
		[7] = { itemID = 47869, "=ds=#s8#" }; --Armplates of the Nether Lord
		[8] = { itemID = 47870, "=ds=#s10#" }; --Belt of the Nether Champion
		[16] = { itemID = 47872, "=ds=#s2#" }; --Fortitude of the Infernal
		[17] = { itemID = 47864, "=ds=#s2#" }; --Pendant of Binding Elements
		[18] = { itemID = 47862, "=ds=#s13#" }; --Firestorm Band
		[19] = { itemID = 47868, "=ds=#s13#" }; --Planestalker Band
		[21] = { itemID = 47871, "=ds=#h1#" }; --Orcish Deathblade
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47042, "=ds=#s4#" }; --Pride of the Eredar
		[2] = { itemID = 47051, "=ds=#s11#" }; --Leggings of the Soothing Touch
		[3] = { itemID = 47000, "=ds=#s5#" }; --Cuirass of Calamitous Fate
		[4] = { itemID = 47055, "=ds=#s8#" }; --Bracers of the Autumn Willow
		[5] = { itemID = 47056, "=ds=#s8#" }; --Bracers of Cloudy Omen
		[6] = { itemID = 46999, "=ds=#s10#" }; --Bloodbath Belt
		[7] = { itemID = 47057, "=ds=#s11#" }; --Legplates of Failing Light
		[8] = { itemID = 47052, "=ds=#s11#" }; --Legguards of Feverish Dedication
		[9] = { itemID = 46997, "=ds=#s12#" }; --Dawnbreaker Greaves
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47043, "=ds=#s2#" }; --Charge of the Demon Lord
		[19] = { itemID = 47223, "=ds=#s13#" }; --Ring of the Darkmender
		[20] = { itemID = 47041, "=ds=#s14#" }; --Solace of the Defeated
		[21] = { itemID = 47053, "=ds=#s15#" }; --Symbol of Transgression
		[23] = { itemID = 46996, "=ds=#h1#" }; --Lionhead Slasher
		[24] = { itemID = 46994, "=ds=#w3#" }; --Talonstrike
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47275, "=ds=#s4#" }; --Pride of the Demon Lord
		[2] = { itemID = 47274, "=ds=#s11#" }; --Pants of the Soothing Touch
		[3] = { itemID = 47270, "=ds=#s5#" }; --Vest of Calamitous Fate
		[4] = { itemID = 47277, "=ds=#s8#" }; --Bindings of the Autumn Willow
		[5] = { itemID = 47280, "=ds=#s8#" }; --Wristwraps of Cloudy Omen
		[6] = { itemID = 47268, "=ds=#s10#" }; --Bloodbath Girdle
		[7] = { itemID = 47279, "=ds=#s11#" }; --Leggings of Failing Light
		[8] = { itemID = 47273, "=ds=#s11#" }; --Legplates of Feverish Dedication
		[9] = { itemID = 47269, "=ds=#s12#" }; --Dawnbreaker Sabatons
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47272, "=ds=#s2#" }; --Charge of the Eredar
		[19] = { itemID = 47278, "=ds=#s13#" }; --Circle of the Darkmender
		[20] = { itemID = 47271, "=ds=#s14#" }; --Solace of the Fallen
		[21] = { itemID = 47276, "=ds=#s15#" }; --Talisman of Heedless Sins
		[23] = { itemID = 47266, "=ds=#h1#" }; --Blood Fury
		[24] = { itemID = 47267, "=ds=#w3#" }; --Death's Head Crossbow
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47721, "=ds=#s12#" }; --Sandals of the Silver Magus
		[2] = { itemID = 47719, "=ds=#s9#" }; --Gloves of the Silver Assassin
		[3] = { itemID = 47718, "=ds=#s1#" }; --Helm of the Silver Ranger
		[4] = { itemID = 47717, "=ds=#s1#" }; --Faceplate of the Silver Champion
		[5] = { itemID = 47720, "=ds=#s3#" }; --Pauldrons of the Silver Defender
		[7] = { itemID = 47728, "=ds=#s14#" }; --Binding Light
		[8] = { itemID = 47727, "=ds=#s14#" }; --Fervor of the Frostborn
		[9] = { itemID = 47726, "=ds=#s14#" }; --Talisman of Volatile Power
		[10] = { itemID = 47725, "=ds=#s14#" }; --Victor's Call
		[16] = { itemID = 47724, "=ds=#h1#" }; --Blade of the Silver Disciple
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47873, "=ds=#s12#" }; --Sunreaver Magus' Sandals
		[2] = { itemID = 47878, "=ds=#s9#" }; --Sunreaver Assassin's Gloves
		[3] = { itemID = 47875, "=ds=#s1#" }; --Sunreaver Ranger's Helm
		[4] = { itemID = 47876, "=ds=#s1#" }; --Sunreaver Champion's Faceplate
		[5] = { itemID = 47877, "=ds=#s3#" }; --Sunreaver Defender's Pauldrons
		[7] = { itemID = 47880, "=ds=#s14#" }; --Binding Stone
		[8] = { itemID = 47882, "=ds=#s14#" }; --Eitrigg's Oath
		[9] = { itemID = 47879, "=ds=#s14#" }; --Fetish of Volatile Power
		[10] = { itemID = 47881, "=ds=#s14#" }; --Vengeance of the Forsaken
		[16] = { itemID = 47874, "=ds=#h1#" }; --Sunreaver Disciple's Blade
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47089, "=ds=#s4#" }; --Cloak of Displacement
		[2] = { itemID = 47081, "=ds=#s10#" }; --Cord of Biting Cold
		[3] = { itemID = 47092, "=ds=#s12#" }; --Boots of the Mourning Widow
		[4] = { itemID = 47094, "=ds=#s5#" }; --Vestments of the Shattered Fellowship
		[5] = { itemID = 47071, "=ds=#s12#" }; --Treads of the Icewalker
		[6] = { itemID = 47073, "=ds=#s8#" }; --Bracers of the Untold Massacre
		[7] = { itemID = 47083, "=ds=#s11#" }; --Legguards of Concealed Hatred
		[8] = { itemID = 47090, "=ds=#s12#" }; --Boots of Tremoring Earth
		[9] = { itemID = 47082, "=ds=#s5#" }; --Chestplate of the Frostborn Hero
		[10] = { itemID = 47093, "=ds=#s8#" }; --Vambraces of the Broken Bond
		[11] = { itemID = 47072, "=ds=#s10#" }; --Girdle of Bloodied Scars
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47070, "=ds=#s13#" }; --Ring of Callous Aggression
		[19] = { itemID = 47080, "=ds=#s14#" }; --Satrina's Impeding Scarab
		[21] = { itemID = 47069, "=ds=#h2#" }; --Justicebringer
		[22] = { itemID = 47079, "=ds=#w8#" }; --Bastion of Purity
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47291, "=ds=#s4#" }; --Shroud of Displacement
		[2] = { itemID = 47286, "=ds=#s10#" }; --Belt of Biting Cold
		[3] = { itemID = 47293, "=ds=#s12#" }; --Sandals of the Mourning Widow
		[4] = { itemID = 47292, "=ds=#s5#" }; --Robes of the Shattered Fellowship
		[5] = { itemID = 47284, "=ds=#s12#" }; --Icewalker Treads
		[6] = { itemID = 47281, "=ds=#s8#" }; --Bracers of the Silent Massacre
		[7] = { itemID = 47289, "=ds=#s11#" }; --Leggings of Concealed Hatred
		[8] = { itemID = 47295, "=ds=#s12#" }; --Sabatons of Tremoring Earth
		[9] = { itemID = 47288, "=ds=#s5#" }; --Chestplate of the Frostwolf Hero
		[10] = { itemID = 47294, "=ds=#s8#" }; --Bracers of the Broken Bond
		[11] = { itemID = 47283, "=ds=#s10#" }; --Belt of Bloodied Scars
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47282, "=ds=#s13#" }; --Band of Callous Aggression
		[19] = { itemID = 47290, "=ds=#s14#" }; --Juggernaut's Vitality
		[21] = { itemID = 47285, "=ds=#h2#" }; --Dual-blade Butcher
		[22] = { itemID = 47287, "=ds=#w8#" }; --Bastion of Resolve
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47745, "=ds=#s9#" }; --Gloves of Looming Shadow
		[2] = { itemID = 49231, "=ds=#s12#" }; --Boots of the Grieving Soul
		[3] = { itemID = 47746, "=ds=#s1#" }; --Helm of the Snowy Grotto
		[4] = { itemID = 47739, "=ds=#s5#" }; --Armor of Shifting Shadows
		[5] = { itemID = 47744, "=ds=#s9#" }; --Gloves of the Azure Prophet
		[6] = { itemID = 47738, "=ds=#s12#" }; --Sabatons of the Lingering Vortex
		[8] = { itemID = 47747, "=ds=#s2#" }; --Darkbane Pendant
		[9] = { itemID = 47700, "=ds=#s13#" }; --Loop of the Twin Val'kyr
		[10] = { itemID = 47742, "=ds=#s15#" }; --Chalice of Benedictus
		[16] = { itemID = 47736, "=ds=#h1#" }; --Icefall Blade
		[17] = { itemID = 47737, "=ds=#h2#" }; --Reckoning
		[18] = { itemID = 47743, "=ds=#w9#" }; --Enlightenment
		[19] = { itemID = 47740, "=ds=#w5#" }; --The Diplomat
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47889, "=ds=#s9#" }; --Looming Shadow Wraps
		[2] = { itemID = 49232, "=ds=#s12#" }; --Sandals of the Grieving Soul
		[3] = { itemID = 47891, "=ds=#s1#" }; --Helm of the High Mesa
		[4] = { itemID = 47887, "=ds=#s5#" }; --Vest of Shifting Shadows
		[5] = { itemID = 47893, "=ds=#s9#" }; --Sen'jin Ritualist Gloves
		[6] = { itemID = 47885, "=ds=#s12#" }; --Greaves of the Lingering Vortex
		[8] = { itemID = 47890, "=ds=#s2#" }; --Darkbane Amulet
		[9] = { itemID = 47888, "=ds=#s13#" }; --Band of the Twin Val'kyr
		[10] = { itemID = 47913, "=ds=#s15#" }; --Lightbane Focus
		[16] = { itemID = 47886, "=ds=#h1#" }; --Nemesis Blade
		[17] = { itemID = 47884, "=ds=#h2#" }; --Edge of Agony
		[18] = { itemID = 47892, "=ds=#w9#" }; --Illumination
		[19] = { itemID = 47883, "=ds=#w5#" }; --Widebarrel Flintlock
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47126, "=ds=#s5#" }; --Skyweaver Robes
		[2] = { itemID = 47141, "=ds=#s8#" }; --Bindings of Dark Essence
		[3] = { itemID = 47107, "=ds=#s10#" }; --Belt of the Merciless Killer
		[4] = { itemID = 47140, "=ds=#s10#" }; --Cord of Pale Thorns
		[5] = { itemID = 47106, "=ds=#s12#" }; --Sabatons of Ruthless Judgment
		[6] = { itemID = 47142, "=ds=#s5#" }; --Breastplate of the Frozen Lake
		[7] = { itemID = 47108, "=ds=#s8#" }; --Bracers of the Shieldmaiden
		[8] = { itemID = 47121, "=ds=#s11#" }; --Legguards of Ascension
		[10] = { itemID = 47116, "=ds=#s2#" }; --The Arbiter's Muse
		[11] = { itemID = 47105, "=ds=#s2#" }; --The Executioner's Malice
		[12] = { itemID = 47139, "=ds=#s2#" }; --Wail of the Val'kyr
		[13] = { itemID = 47115, "=ds=#s14#" }; --Death's Verdict
		[14] = { itemID = 47138, "=ds=#s15#" }; --Chalice of Searing Light
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47104, "=ds=#h1#" }; --Twin Spike
		[19] = { itemID = 47114, "=ds=#w9#" }; --Lupine Longstaff
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47301, "=ds=#s5#" }; --Skyweaver Vestments
		[2] = { itemID = 47306, "=ds=#s8#" }; --Dark Essence Bindings
		[3] = { itemID = 47308, "=ds=#s10#" }; --Belt of Pale Thorns
		[4] = { itemID = 47299, "=ds=#s10#" }; --Belt of the Pitiless Killer
		[5] = { itemID = 47296, "=ds=#s12#" }; --Greaves of Ruthless Judgment
		[6] = { itemID = 47310, "=ds=#s5#" }; --Chestplate of the Frozen Lake
		[7] = { itemID = 47298, "=ds=#s8#" }; --Armguards of the Shieldmaiden
		[8] = { itemID = 47304, "=ds=#s11#" }; --Legplates of Ascension
		[10] = { itemID = 47307, "=ds=#s2#" }; --Cry of the Val'kyr
		[11] = { itemID = 47305, "=ds=#s2#" }; --Legionnaire's Gorget
		[12] = { itemID = 47297, "=ds=#s2#" }; --The Executioner's Vice
		[13] = { itemID = 47303, "=ds=#s14#" }; --Death's Choice
		[14] = { itemID = 47309, "=ds=#s15#" }; --Mystifying Charm
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47300, "=ds=#h1#" }; --Gouge of the Frigid Heart
		[19] = { itemID = 47302, "=ds=#w9#" }; --Twin's Pact
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47838, "=ds=#s5#" }; --Vestments of the Sleepless
		[2] = { itemID = 47837, "=ds=#s10#" }; --Cinch of the Undying
		[3] = { itemID = 47832, "=ds=#s3#" }; --Spaulders of the Snow Bandit
		[4] = { itemID = 47813, "=ds=#s1#" }; --Helmet of the Crypt Lord
		[5] = { itemID = 47829, "=ds=#s3#" }; --Pauldrons of the Timeless Hunter
		[6] = { itemID = 47811, "=ds=#s5#" }; --Chestguard of the Warden
		[7] = { itemID = 47836, "=ds=#s11#" }; --Legplates of the Immortal Spider
		[8] = { itemID = 47830, "=ds=#s11#" }; --Legplates of the Silver Hand
		[10] = { itemID = 47810, "=ds=#h1#" }; --Crusader's Glory
		[11] = { itemID = 47814, "=ds=#h1#" }; --Westfall Saber
		[12] = { itemID = 47808, "=ds=#h1#" }; --The Lion's Maw
		[13] = { itemID = 47809, "=ds=#h3#" }; --Argent Resolve
		[14] = { itemID = 47816, "=ds=#h1#" }; --The Grinder
		[16] = { itemID = 47834, "=ds=#w7#" }; --Fordragon Blades
		[17] = { itemID = 47815, "=ds=#w9#" }; --Cold Convergence
		[18] = { itemID = 47835, "=ds=#w8#" }; --Bulwark of the Royal Guard
		[19] = { itemID = 47812, "=ds=#w8#" }; --Vigilant Ward
		[20] = { itemID = 47741, "=ds=#w3#" }; --Baelgun's Heavy Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47906, "=ds=#s5#" }; --Robes of the Sleepless
		[2] = { itemID = 47909, "=ds=#s10#" }; --Belt of the Eternal
		[3] = { itemID = 47904, "=ds=#s3#" }; --Shoulderpads of the Snow Bandit
		[4] = { itemID = 47897, "=ds=#s1#" }; --Helm of the Crypt Lord
		[5] = { itemID = 47901, "=ds=#s3#" }; --Pauldrons of the Shadow Hunter
		[6] = { itemID = 47896, "=ds=#s5#" }; --Stoneskin Chestplate
		[7] = { itemID = 47902, "=ds=#s11#" }; --Legplates of Redeemed Blood
		[8] = { itemID = 47908, "=ds=#s11#" }; --Sunwalker Legguards
		[10] = { itemID = 47899, "=ds=#h1#" }; --Ardent Guard
		[11] = { itemID = 47903, "=ds=#h1#" }; --Forsaken Bonecarver
		[12] = { itemID = 47898, "=ds=#h1#" }; --Frostblade Hatchet
		[13] = { itemID = 47894, "=ds=#h3#" }; --Mace of the Earthborn Chieftain
		[14] = { itemID = 47905, "=ds=#h1#" }; --Blackhorn Bludgeon
		[16] = { itemID = 47911, "=ds=#w7#" }; --Anguish
		[17] = { itemID = 47900, "=ds=#w9#" }; --Perdition
		[18] = { itemID = 47910, "=ds=#w8#" }; --Aegis of the Coliseum
		[19] = { itemID = 47895, "=ds=#w8#" }; --Pride of the Kor'kron
		[20] = { itemID = 47907, "=ds=#w3#" }; --Darkmaw Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47225, "=ds=#s4#" }; --Maiden's Favor
		[2] = { itemID = 47183, "=ds=#s4#" }; --Strength of the Nerub
		[3] = { itemID = 47203, "=ds=#s8#" }; --Armbands of the Ashen Saint
		[4] = { itemID = 47235, "=ds=#s9#" }; --Gloves of the Lifeless Touch
		[5] = { itemID = 47187, "=ds=#s11#" }; --Leggings of the Deepening Void
		[6] = { itemID = 47194, "=ds=#s12#" }; --Footpads of the Icy Floe
		[7] = { itemID = 47151, "=ds=#s8#" }; --Bracers of Dark Determination
		[8] = { itemID = 47186, "=ds=#s11#" }; --Legwraps of the Awakening
		[9] = { itemID = 47204, "=ds=#s5#" }; --Chestguard of Flowing Elements
		[10] = { itemID = 47152, "=ds=#s10#" }; --Belt of Deathly Dominion
		[11] = { itemID = 47184, "=ds=#s11#" }; --Legguards of the Lurking Threat
		[12] = { itemID = 47234, "=ds=#s9#" }; --Gloves of Bitter Reprisal
		[13] = { itemID = 47195, "=ds=#s10#" }; --Belt of the Forgotten Martyr
		[14] = { itemID = 47150, "=ds=#s12#" }; --Greaves of the 7th Legion
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47054, "=ds=#s13#" }; --Band of Deplorable Violence
		[19] = { itemID = 47149, "=ds=#s13#" }; --Signet of the Traitor King
		[20] = { itemID = 47182, "=ds=#s14#" }; --Reign of the Unliving
		[22] = { itemID = 47148, "=ds=#h1#" }; --Stormpike Cleaver
		[23] = { itemID = 47193, "=ds=#h3#" }; --Misery's End
		[24] = { itemID = 47233, "=ds=#w7#" }; --Archon Glaive
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47328, "=ds=#s4#" }; --Maiden's Adoration
		[2] = { itemID = 47320, "=ds=#s4#" }; --Might of the Nerub
		[3] = { itemID = 47324, "=ds=#s8#" }; --Bindings of the Ashen Saint
		[4] = { itemID = 47326, "=ds=#s9#" }; --Handwraps of the Lifeless Touch
		[5] = { itemID = 47317, "=ds=#s11#" }; --Breeches of the Deepening Void
		[6] = { itemID = 47321, "=ds=#s12#" }; --Boots of the Icy Floe
		[7] = { itemID = 47313, "=ds=#s8#" }; --Armbands of Dark Determination
		[8] = { itemID = 47318, "=ds=#s11#" }; --Leggings of the Awakening
		[9] = { itemID = 47325, "=ds=#s5#" }; --Cuirass of Flowing Elements
		[10] = { itemID = 47311, "=ds=#s10#" }; --Waistguard of Deathly Dominion
		[11] = { itemID = 47319, "=ds=#s11#" }; --Leggings of the Lurking Threat
		[12] = { itemID = 47330, "=ds=#s9#" }; --Gauntlets of Bitter Reprisal
		[13] = { itemID = 47323, "=ds=#s10#" }; --Girdle of the Forgotten Martyr
		[14] = { itemID = 47312, "=ds=#s12#" }; --Greaves of the Saronite Citadel
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47315, "=ds=#s13#" }; --Band of the Traitor King
		[19] = { itemID = 47327, "=ds=#s13#" }; --Lurid Manifestation
		[20] = { itemID = 47316, "=ds=#s14#" }; --Reign of the Dead
		[22] = { itemID = 47314, "=ds=#h1#" }; --Hellscream Slicer
		[23] = { itemID = 47322, "=ds=#h3#" }; --Suffering's End
		[24] = { itemID = 47329, "=ds=#w7#" }; --Hellion Glaive
	};
	{
		Name = AL["Trial of the Crusader Patterns/Plans"];
		[1] = { itemID = 47622, "=ds=#p2# (450)" }; --Plans: Breastplate of the White Knight
		[2] = { itemID = 47623, "=ds=#p2# (450)" }; --Plans: Saronite Swordbreakers
		[3] = { itemID = 47627, "=ds=#p2# (450)" }; --Plans: Sunforged Bracers
		[4] = { itemID = 47626, "=ds=#p2# (450)" }; --Plans: Sunforged Breastplate
		[5] = { itemID = 47624, "=ds=#p2# (450)" }; --Plans: Titanium Razorplate
		[6] = { itemID = 47625, "=ds=#p2# (450)" }; --Plans: Titanium Spikeguards
		[7] = { itemID = 47629, "=ds=#p7# (450)" }; --Pattern: Black Chitin Bracers
		[8] = { itemID = 47635, "=ds=#p7# (450)" }; --Pattern: Bracers of Swift Death
		[9] = { itemID = 47631, "=ds=#p7# (450)" }; --Pattern: Crusader's Dragonscale Bracers
		[10] = { itemID = 47630, "=ds=#p7# (450)" }; --Pattern: Crusader's Dragonscale Breastplate
		[11] = { itemID = 47628, "=ds=#p7# (450)" }; --Pattern: Ensorcelled Nerubian Breastplate
		[12] = { itemID = 47634, "=ds=#p7# (450)" }; --Pattern: Knightbane Carapace
		[13] = { itemID = 47632, "=ds=#p7# (450)" }; --Pattern: Lunar Eclipse Chestguard
		[14] = { itemID = 47633, "=ds=#p7# (450)" }; --Pattern: Moonshadow Armguards
		[16] = { itemID = 47654, "=ds=#p8# (450)" }; --Pattern: Bejeweled Wizard's Bracers
		[17] = { itemID = 47655, "=ds=#p8# (450)" }; --Pattern: Merlin's Robe
		[18] = { itemID = 47656, "=ds=#p8# (450)" }; --Pattern: Royal Moonshroud Bracers
		[19] = { itemID = 47657, "=ds=#p8# (450)" }; --Pattern: Royal Moonshroud Robe
		[30] = { itemID = 47556, "=ds=#e8#" }; --Crusader Orb
	};
	{
		Name = AL["Trial of the Crusader Patterns/Plans"];
		[1] = { itemID = 47640, "=ds=#p2# (450)" }; --Plans: Breastplate of the White Knight
		[2] = { itemID = 47641, "=ds=#p2# (450)" }; --Plans: Saronite Swordbreakers
		[3] = { itemID = 47642, "=ds=#p2# (450)" }; --Plans: Sunforged Bracers
		[4] = { itemID = 47643, "=ds=#p2# (450)" }; --Plans: Sunforged Breastplate
		[5] = { itemID = 47644, "=ds=#p2# (450)" }; --Plans: Titanium Razorplate
		[6] = { itemID = 47645, "=ds=#p2# (450)" }; --Plans: Titanium Spikeguards
		[7] = { itemID = 47646, "=ds=#p7# (450)" }; --Pattern: Black Chitin Bracers
		[8] = { itemID = 47647, "=ds=#p7# (450)" }; --Pattern: Bracers of Swift Death
		[9] = { itemID = 47648, "=ds=#p7# (450)" }; --Pattern: Crusader's Dragonscale Bracers
		[10] = { itemID = 47649, "=ds=#p7# (450)" }; --Pattern: Crusader's Dragonscale Breastplate
		[11] = { itemID = 47650, "=ds=#p7# (450)" }; --Pattern: Ensorcelled Nerubian Breastplate
		[12] = { itemID = 47651, "=ds=#p7# (450)" }; --Pattern: Knightbane Carapace
		[13] = { itemID = 47652, "=ds=#p7# (450)" }; --Pattern: Lunar Eclipse Chestguard
		[14] = { itemID = 47653, "=ds=#p7# (450)" }; --Pattern: Moonshadow Armguards
		[16] = { itemID = 47639, "=ds=#p8# (450)" }; --Pattern: Bejeweled Wizard's Bracers
		[17] = { itemID = 47638, "=ds=#p8# (450)" }; --Pattern: Merlin's Robe
		[18] = { itemID = 47637, "=ds=#p8# (450)" }; --Pattern: Royal Moonshroud Bracers
		[19] = { itemID = 47636, "=ds=#p8# (450)" }; --Pattern: Royal Moonshroud Robe
		[30] = { itemID = 47556, "=ds=#e8#" }; --Crusader Orb
	};
};

-----------------------------------
--- Trial of the Grand Crusader ---
-----------------------------------

AtlasLoot_Data["TrialoftheCrusader2"] = {
	Name = BabbleZone["Trial of the Crusader"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47921, "=ds=#s10#" }; --Icehowl Cinch
		[2] = { itemID = 47923, "=ds=#s3#" }; --Shoulderpads of the Glacial Wilds
		[3] = { itemID = 47919, "=ds=#s12#" }; --Acidmaw Boots
		[4] = { itemID = 47926, "=ds=#s3#" }; --Shoulderguards of the Spirit Walker
		[5] = { itemID = 47916, "=ds=#s8#" }; --Armbands of the Northern Stalker
		[6] = { itemID = 47918, "=ds=#s8#" }; --Dreadscale Armguards
		[7] = { itemID = 47917, "=ds=#s9#" }; --Gauntlets of Rising Anger
		[8] = { itemID = 47924, "=ds=#s10#" }; --Belt of the Frozen Reach
		[9] = { itemID = 47925, "=ds=#s10#" }; --Girdle of the Impaler
		[16] = { itemID = 47915, "=ds=#s2#" }; --Collar of Ceaseless Torment
		[17] = { itemID = 47920, "=ds=#s13#" }; --Gormok's Band
		[19] = { itemID = 47922, "=ds=#w12#" }; --Rod of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47994, "=ds=#s10#" }; --Icehowl Binding
		[2] = { itemID = 47996, "=ds=#s3#" }; --Pauldrons of the Glacial Wilds
		[3] = { itemID = 47992, "=ds=#s12#" }; --Acidmaw Treads
		[4] = { itemID = 47999, "=ds=#s3#" }; --Pauldrons of the Spirit Walker
		[5] = { itemID = 47989, "=ds=#s8#" }; --Bracers of the Northern Stalker
		[6] = { itemID = 47991, "=ds=#s8#" }; --Dreadscale Bracers
		[7] = { itemID = 47990, "=ds=#s9#" }; --Gauntlets of Mounting Anger
		[8] = { itemID = 47998, "=ds=#s10#" }; --Belt of the Impaler
		[9] = { itemID = 47997, "=ds=#s10#" }; --Girdle of the Frozen Reach
		[16] = { itemID = 47988, "=ds=#s2#" }; --Collar of Unending Torment
		[17] = { itemID = 47993, "=ds=#s13#" }; --Carnivorous Band
		[19] = { itemID = 47995, "=ds=#w12#" }; --Scepter of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 46971, "=ds=#s4#" }; --Drape of the Untamed Predator
		[2] = { itemID = 46977, "=ds=#s4#" }; --Shawl of the Refreshing Winds
		[3] = { itemID = 46993, "=ds=#s5#" }; --Flowing Vestments of Ascent
		[4] = { itemID = 46973, "=ds=#s10#" }; --Cord of the Tenebrous Mist
		[5] = { itemID = 46975, "=ds=#s11#" }; --Leggings of the Broken Beast
		[6] = { itemID = 46989, "=ds=#s12#" }; --Boots of the Unrelenting Storm
		[7] = { itemID = 46965, "=ds=#s5#" }; --Breastplate of Cruel Intent
		[8] = { itemID = 46991, "=ds=#s10#" }; --Belt of the Ice Burrower
		[9] = { itemID = 46968, "=ds=#s5#" }; --Chestplate of the Towering Monstrosity
		[10] = { itemID = 46967, "=ds=#s8#" }; --Boneshatter Armplates
		[11] = { itemID = 46986, "=ds=#s12#" }; --Boots of the Courageous
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 46966, "=ds=#s13#" }; --Band of the Violent Temperment
		[20] = { itemID = 46980, "=ds=#h3#" }; --Blade of Tarasque
		[21] = { itemID = 46969, "=ds=#h1#" }; --Steel Bladebreaker
		[22] = { itemID = 46964, "=ds=#w8#" }; --Crystal Plated Vanguard
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[1] = { itemID = 47418, "=ds=#s4#" }; --Cloak of the Untamed Predator
		[2] = { itemID = 47417, "=ds=#s4#" }; --Drape of the Refreshing Winds
		[3] = { itemID = 47425, "=ds=#s5#" }; --Flowing Robes of Ascent
		[4] = { itemID = 47419, "=ds=#s10#" }; --Belt of the Tenebrous Mist
		[5] = { itemID = 47420, "=ds=#s11#" }; --Legwraps of the Broken Beast
		[6] = { itemID = 47423, "=ds=#s12#" }; --Boots of the Harsh Winter
		[7] = { itemID = 47412, "=ds=#s5#" }; --Cuirass of Cruel Intent
		[8] = { itemID = 47426, "=ds=#s10#" }; --Binding of the Ice Burrower
		[9] = { itemID = 47415, "=ds=#s5#" }; --Hauberk of the Towering Monstrosity
		[10] = { itemID = 47414, "=ds=#s8#" }; --Boneshatter Vambraces
		[11] = { itemID = 47424, "=ds=#s12#" }; --Sabatons of the Courageous
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47413, "=ds=#s13#" }; --Ring of the Violent Temperament
		[20] = { itemID = 47422, "=ds=#h3#" }; --Barb of Tarasque
		[21] = { itemID = 47416, "=ds=#h1#" }; --Stygian Bladebreaker
		[22] = { itemID = 47421, "=ds=#w8#" }; --Forlorn Barrier
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47927, "=ds=#s8#" }; --Felspark Bindings
		[2] = { itemID = 47931, "=ds=#s11#" }; --Leggings of the Demonic Messenger
		[3] = { itemID = 47929, "=ds=#s10#" }; --Belt of the Winter Solstice
		[4] = { itemID = 47932, "=ds=#s10#" }; --Girdle of the Farseer
		[5] = { itemID = 49238, "=ds=#s12#" }; --Boots of Tortured Space
		[6] = { itemID = 47933, "=ds=#s12#" }; --Sentinel Scouting Greaves
		[7] = { itemID = 47935, "=ds=#s8#" }; --Armguards of the Nether Lord
		[8] = { itemID = 47937, "=ds=#s10#" }; --Girdle of the Nether Champion
		[16] = { itemID = 47930, "=ds=#s2#" }; --Amulet of Binding Elements
		[17] = { itemID = 47939, "=ds=#s2#" }; --Endurance of the Infernal
		[18] = { itemID = 47928, "=ds=#s13#" }; --Firestorm Ring
		[19] = { itemID = 47934, "=ds=#s13#" }; --Planestalker Signet
		[21] = { itemID = 47938, "=ds=#h1#" }; --Dirk of the Night Watch
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 48000, "=ds=#s8#" }; --Felspark Bracers
		[2] = { itemID = 48004, "=ds=#s11#" }; --Legwraps of the Demonic Messenger
		[3] = { itemID = 48002, "=ds=#s10#" }; --Belt of the Bloodhoof Emissary
		[4] = { itemID = 48005, "=ds=#s10#" }; --Darkspear Ritual Binding
		[5] = { itemID = 49237, "=ds=#s12#" }; --Sabatons of Tortured Space
		[6] = { itemID = 48006, "=ds=#s12#" }; --Warsong Poacher's Greaves
		[7] = { itemID = 48008, "=ds=#s8#" }; --Armplates of the Nether Lord
		[8] = { itemID = 48009, "=ds=#s10#" }; --Belt of the Nether Champion
		[16] = { itemID = 48011, "=ds=#s2#" }; --Fortitude of the Infernal
		[17] = { itemID = 48003, "=ds=#s2#" }; --Pendant of Binding Elements
		[18] = { itemID = 48001, "=ds=#s13#" }; --Firestorm Band
		[19] = { itemID = 48007, "=ds=#s13#" }; --Planestalker Band
		[21] = { itemID = 48010, "=ds=#h1#" }; --Orcish Deathblade
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47063, "=ds=#s4#" }; --Pride of the Eredar
		[2] = { itemID = 47062, "=ds=#s11#" }; --Leggings of the Soothing Touch
		[3] = { itemID = 47004, "=ds=#s5#" }; --Cuirass of Calamitous Fate
		[4] = { itemID = 47066, "=ds=#s8#" }; --Bracers of the Autumn Willow
		[5] = { itemID = 47068, "=ds=#s8#" }; --Bracers of Cloudy Omen
		[6] = { itemID = 47002, "=ds=#s10#" }; --Bloodbath Belt
		[7] = { itemID = 47067, "=ds=#s11#" }; --Legplates of Failing Light
		[8] = { itemID = 47061, "=ds=#s11#" }; --Legguards of Feverish Dedication
		[9] = { itemID = 47003, "=ds=#s12#" }; --Dawnbreaker Greaves
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47060, "=ds=#s2#" }; --Charge of the Demon Lord
		[19] = { itemID = 47224, "=ds=#s13#" }; --Ring of the Darkmender
		[20] = { itemID = 47059, "=ds=#s14#" }; --Solace of the Defeated
		[21] = { itemID = 47064, "=ds=#s15#" }; --Symbol of Transgression
		[23] = { itemID = 47001, "=ds=#h1#" }; --Lionhead Slasher
		[24] = { itemID = 46995, "=ds=#w3#" }; --Talonstrike
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[1] = { itemID = 47436, "=ds=#s4#" }; --Pride of the Demon Lord
		[2] = { itemID = 47435, "=ds=#s11#" }; --Pants of the Soothing Touch
		[3] = { itemID = 47431, "=ds=#s5#" }; --Vest of Calamitous Fate
		[4] = { itemID = 47438, "=ds=#s8#" }; --Bindings of the Autumn Willow
		[5] = { itemID = 47441, "=ds=#s8#" }; --Wristwraps of Cloudy Omen
		[6] = { itemID = 47429, "=ds=#s10#" }; --Bloodbath Girdle
		[7] = { itemID = 47440, "=ds=#s11#" }; --Leggings of Failing Light
		[8] = { itemID = 47434, "=ds=#s11#" }; --Legplates of Feverish Dedication
		[9] = { itemID = 47430, "=ds=#s12#" }; --Dawnbreaker Sabatons
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47433, "=ds=#s2#" }; --Charge of the Eredar
		[19] = { itemID = 47439, "=ds=#s13#" }; --Circle of the Darkmender
		[20] = { itemID = 47432, "=ds=#s14#" }; --Solace of the Fallen
		[21] = { itemID = 47437, "=ds=#s15#" }; --Talisman of Heedless Sins
		[23] = { itemID = 47427, "=ds=#h1#" }; --Blood Fury
		[24] = { itemID = 47428, "=ds=#w3#" }; --Death's Head Crossbow
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47940, "=ds=#s12#" }; --Sandals of the Silver Magus
		[2] = { itemID = 47945, "=ds=#s9#" }; --Gloves of the Silver Assassin
		[3] = { itemID = 47942, "=ds=#s1#" }; --Helm of the Silver Ranger
		[4] = { itemID = 47943, "=ds=#s1#" }; --Faceplate of the Silver Champion
		[5] = { itemID = 47944, "=ds=#s3#" }; --Pauldrons of the Silver Defender
		[7] = { itemID = 47947, "=ds=#s14#" }; --Binding Light
		[8] = { itemID = 47949, "=ds=#s14#" }; --Fervor of the Frostborn
		[9] = { itemID = 47946, "=ds=#s14#" }; --Talisman of Volatile Power
		[10] = { itemID = 47948, "=ds=#s14#" }; --Victor's Call
		[16] = { itemID = 47941, "=ds=#h1#" }; --Blade of the Silver Disciple
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 48012, "=ds=#s12#" }; --Sunreaver Magus' Sandals
		[2] = { itemID = 48017, "=ds=#s9#" }; --Sunreaver Assassin's Gloves
		[3] = { itemID = 48014, "=ds=#s1#" }; --Sunreaver Ranger's Helm
		[4] = { itemID = 48015, "=ds=#s1#" }; --Sunreaver Champion's Faceplate
		[5] = { itemID = 48016, "=ds=#s3#" }; --Sunreaver Defender's Pauldrons
		[7] = { itemID = 48019, "=ds=#s14#" }; --Binding Stone
		[8] = { itemID = 48021, "=ds=#s14#" }; --Eitrigg's Oath
		[9] = { itemID = 48018, "=ds=#s14#" }; --Fetish of Volatile Power
		[10] = { itemID = 48020, "=ds=#s14#" }; --Vengeance of the Forsaken
		[16] = { itemID = 48013, "=ds=#h1#" }; --Sunreaver Disciple's Blade
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47095, "=ds=#s4#" }; --Cloak of Displacement
		[2] = { itemID = 47084, "=ds=#s10#" }; --Cord of Biting Cold
		[3] = { itemID = 47097, "=ds=#s12#" }; --Boots of the Mourning Widow
		[4] = { itemID = 47096, "=ds=#s5#" }; --Vestments of the Shattered Fellowship
		[5] = { itemID = 47077, "=ds=#s12#" }; --Treads of the Icewalker
		[6] = { itemID = 47074, "=ds=#s8#" }; --Bracers of the Untold Massacre
		[7] = { itemID = 47087, "=ds=#s11#" }; --Legguards of Concealed Hatred
		[8] = { itemID = 47099, "=ds=#s12#" }; --Boots of Tremoring Earth
		[9] = { itemID = 47086, "=ds=#s5#" }; --Chestplate of the Frostborn Hero
		[10] = { itemID = 47098, "=ds=#s8#" }; --Vambraces of the Broken Bond
		[11] = { itemID = 47076, "=ds=#s10#" }; --Girdle of Bloodied Scars
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47075, "=ds=#s13#" }; --Ring of Callous Aggression
		[19] = { itemID = 47088, "=ds=#s14#" }; --Satrina's Impeding Scarab
		[21] = { itemID = 47078, "=ds=#h2#" }; --Justicebringer
		[22] = { itemID = 47085, "=ds=#w8#" }; --Bastion of Purity
	};
	{
		Name = AL["Faction Champions"];
		[1] = { itemID = 47452, "=ds=#s4#" }; --Shroud of Displacement
		[2] = { itemID = 47447, "=ds=#s10#" }; --Belt of Biting Cold
		[3] = { itemID = 47454, "=ds=#s12#" }; --Sandals of the Mourning Widow
		[4] = { itemID = 47453, "=ds=#s5#" }; --Robes of the Shattered Fellowship
		[5] = { itemID = 47445, "=ds=#s12#" }; --Icewalker Treads
		[6] = { itemID = 47442, "=ds=#s8#" }; --Bracers of the Silent Massacre
		[7] = { itemID = 47450, "=ds=#s11#" }; --Leggings of Concealed Hatred
		[8] = { itemID = 47456, "=ds=#s12#" }; --Sabatons of Tremoring Earth
		[9] = { itemID = 47449, "=ds=#s5#" }; --Chestplate of the Frostwolf Hero
		[10] = { itemID = 47455, "=ds=#s8#" }; --Bracers of the Broken Bond
		[11] = { itemID = 47444, "=ds=#s10#" }; --Belt of Bloodied Scars
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47443, "=ds=#s13#" }; --Band of Callous Aggression
		[19] = { itemID = 47451, "=ds=#s14#" }; --Juggernaut's Vitality
		[21] = { itemID = 47446, "=ds=#h2#" }; --Dual-blade Butcher
		[22] = { itemID = 47448, "=ds=#w8#" }; --Bastion of Resolve
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47956, "=ds=#s9#" }; --Gloves of Looming Shadow
		[2] = { itemID = 49234, "=ds=#s12#" }; --Boots of the Grieving Soul
		[3] = { itemID = 47959, "=ds=#s1#" }; --Helm of the Snowy Grotto
		[4] = { itemID = 47954, "=ds=#s5#" }; --Armor of Shifting Shadows
		[5] = { itemID = 47961, "=ds=#s9#" }; --Gloves of the Azure Prophet
		[6] = { itemID = 47952, "=ds=#s12#" }; --Sabatons of the Lingering Vortex
		[8] = { itemID = 47957, "=ds=#s2#" }; --Darkbane Pendant
		[9] = { itemID = 47955, "=ds=#s13#" }; --Loop of the Twin Val'kyr
		[10] = { itemID = 47958, "=ds=#s15#" }; --Chalice of Benedictus
		[16] = { itemID = 47953, "=ds=#h1#" }; --Icefall Blade
		[17] = { itemID = 47951, "=ds=#h2#" }; --Reckoning
		[18] = { itemID = 47960, "=ds=#w9#" }; --Enlightenment
		[19] = { itemID = 47950, "=ds=#w5#" }; --The Diplomat
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 48028, "=ds=#s9#" }; --Looming Shadow Wraps
		[2] = { itemID = 49233, "=ds=#s12#" }; --Sandals of the Grieving Soul
		[3] = { itemID = 48034, "=ds=#s1#" }; --Helm of the High Mesa
		[4] = { itemID = 48026, "=ds=#s5#" }; --Vest of Shifting Shadows
		[5] = { itemID = 48038, "=ds=#s9#" }; --Sen'jin Ritualist Gloves
		[6] = { itemID = 48024, "=ds=#s12#" }; --Greaves of the Lingering Vortex
		[8] = { itemID = 48030, "=ds=#s2#" }; --Darkbane Amulet
		[9] = { itemID = 48027, "=ds=#s13#" }; --Band of the Twin Val'kyr
		[10] = { itemID = 48032, "=ds=#s15#" }; --Lightbane Focus
		[16] = { itemID = 48025, "=ds=#h1#" }; --Nemesis Blade
		[17] = { itemID = 48023, "=ds=#h2#" }; --Edge of Agony
		[18] = { itemID = 48036, "=ds=#w9#" }; --Illumination
		[19] = { itemID = 48022, "=ds=#w5#" }; --Widebarrel Flintlock
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47129, "=ds=#s5#" }; --Skyweaver Robes
		[2] = { itemID = 47143, "=ds=#s8#" }; --Bindings of Dark Essence
		[3] = { itemID = 47112, "=ds=#s10#" }; --Belt of the Merciless Killer
		[4] = { itemID = 47145, "=ds=#s10#" }; --Cord of Pale Thorns
		[5] = { itemID = 47109, "=ds=#s12#" }; --Sabatons of Ruthless Judgment
		[6] = { itemID = 47147, "=ds=#s5#" }; --Breastplate of the Frozen Lake
		[7] = { itemID = 47111, "=ds=#s8#" }; --Bracers of the Shieldmaiden
		[8] = { itemID = 47132, "=ds=#s11#" }; --Legguards of Ascension
		[10] = { itemID = 47133, "=ds=#s2#" }; --The Arbiter's Muse
		[11] = { itemID = 47110, "=ds=#s2#" }; --The Executioner's Malice
		[12] = { itemID = 47144, "=ds=#s2#" }; --Wail of the Val'kyr
		[13] = { itemID = 47131, "=ds=#s14#" }; --Death's Verdict
		[14] = { itemID = 47146, "=ds=#s15#" }; --Chalice of Searing Light
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47113, "=ds=#h1#" }; --Twin Spike
		[19] = { itemID = 47130, "=ds=#w9#" }; --Lupine Longstaff
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[1] = { itemID = 47462, "=ds=#s5#" }; --Skyweaver Vestments
		[2] = { itemID = 47467, "=ds=#s8#" }; --Dark Essence Bindings
		[3] = { itemID = 47469, "=ds=#s10#" }; --Belt of Pale Thorns
		[4] = { itemID = 47460, "=ds=#s10#" }; --Belt of the Pitiless Killer
		[5] = { itemID = 47457, "=ds=#s12#" }; --Greaves of Ruthless Judgment
		[6] = { itemID = 47471, "=ds=#s5#" }; --Chestplate of the Frozen Lake
		[7] = { itemID = 47459, "=ds=#s8#" }; --Armguards of the Shieldmaiden
		[8] = { itemID = 47465, "=ds=#s11#" }; --Legplates of Ascension
		[10] = { itemID = 47468, "=ds=#s2#" }; --Cry of the Val'kyr
		[11] = { itemID = 47466, "=ds=#s2#" }; --Legionnaire's Gorget
		[12] = { itemID = 47458, "=ds=#s2#" }; --The Executioner's Vice
		[13] = { itemID = 47464, "=ds=#s14#" }; --Death's Choice
		[14] = { itemID = 47470, "=ds=#s15#" }; --Mystifying Charm
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47461, "=ds=#h1#" }; --Gouge of the Frigid Heart
		[19] = { itemID = 47463, "=ds=#w9#" }; --Twin's Pact
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47974, "=ds=#s5#" }; --Vestments of the Sleepless
		[2] = { itemID = 47977, "=ds=#s10#" }; --Cinch of the Undying
		[3] = { itemID = 47972, "=ds=#s3#" }; --Spaulders of the Snow Bandit
		[4] = { itemID = 47965, "=ds=#s1#" }; --Headpiece of the Crypt Lord
		[5] = { itemID = 47969, "=ds=#s3#" }; --Pauldrons of the Timeless Hunter
		[6] = { itemID = 47964, "=ds=#s5#" }; --Chestguard of the Warden
		[7] = { itemID = 47976, "=ds=#s11#" }; --Legplates of the Immortal Spider
		[8] = { itemID = 47970, "=ds=#s11#" }; --Legplates of the Silver Hand
		[10] = { itemID = 47967, "=ds=#h1#" }; --Crusader's Glory
		[11] = { itemID = 47971, "=ds=#h1#" }; --Westfall Saber
		[12] = { itemID = 47966, "=ds=#h1#" }; --The Lion's Maw
		[13] = { itemID = 47962, "=ds=#h3#" }; --Argent Resolve
		[14] = { itemID = 47973, "=ds=#h1#" }; --The Grinder
		[16] = { itemID = 47979, "=ds=#w7#" }; --Fordragon Blades
		[17] = { itemID = 47968, "=ds=#w9#" }; --Cold Convergence
		[18] = { itemID = 47978, "=ds=#w8#" }; --Bulwark of the Royal Guard
		[19] = { itemID = 47963, "=ds=#w8#" }; --Vigilant Ward
		[20] = { itemID = 47975, "=ds=#w3#" }; --Baelgun's Heavy Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 48051, "=ds=#s5#" }; --Robes of the Sleepless
		[2] = { itemID = 48054, "=ds=#s10#" }; --Belt of the Eternal
		[3] = { itemID = 48049, "=ds=#s3#" }; --Shoulderpads of the Snow Bandit
		[4] = { itemID = 48042, "=ds=#s1#" }; --Helm of the Crypt Lord
		[5] = { itemID = 48046, "=ds=#s3#" }; --Pauldrons of the Shadow Hunter
		[6] = { itemID = 48041, "=ds=#s5#" }; --Stoneskin Chestplate
		[7] = { itemID = 48047, "=ds=#s11#" }; --Legplates of the Redeemed Blood Knight
		[8] = { itemID = 48053, "=ds=#s11#" }; --Sunwalker Legguards
		[10] = { itemID = 48044, "=ds=#h1#" }; --Ardent Guard
		[11] = { itemID = 48048, "=ds=#h1#" }; --Forsaken Bonecarver
		[12] = { itemID = 48043, "=ds=#h1#" }; --Frostblade Hatchet
		[13] = { itemID = 48039, "=ds=#h3#" }; --Mace of the Earthborn Chieftain
		[14] = { itemID = 48050, "=ds=#h1#" }; --Blackhorn Bludgeon
		[16] = { itemID = 48056, "=ds=#w7#" }; --Anguish
		[17] = { itemID = 48045, "=ds=#w9#" }; --Perdition
		[18] = { itemID = 48055, "=ds=#w8#" }; --Aegis of the Coliseum
		[19] = { itemID = 48040, "=ds=#w8#" }; --Pride of the Kor'kron
		[20] = { itemID = 48052, "=ds=#w3#" }; --Darkmaw Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47238, "=ds=#s4#" }; --Maiden's Favor
		[2] = { itemID = 47192, "=ds=#s4#" }; --Strength of the Nerub
		[3] = { itemID = 47208, "=ds=#s8#" }; --Armbands of the Ashen Saint
		[4] = { itemID = 47236, "=ds=#s9#" }; --Gloves of the Lifeless Touch
		[5] = { itemID = 47189, "=ds=#s11#" }; --Leggings of the Deepening Void
		[6] = { itemID = 47205, "=ds=#s12#" }; --Footpads of the Icy Floe
		[7] = { itemID = 47155, "=ds=#s8#" }; --Bracers of Dark Determination
		[8] = { itemID = 47190, "=ds=#s11#" }; --Legwraps of the Awakening
		[9] = { itemID = 47209, "=ds=#s5#" }; --Chestguard of Flowing Elements
		[10] = { itemID = 47153, "=ds=#s10#" }; --Belt of Deathly Dominion
		[11] = { itemID = 47191, "=ds=#s11#" }; --Legguards of the Lurking Threat
		[12] = { itemID = 47240, "=ds=#s9#" }; --Gloves of Bitter Reprisal
		[13] = { itemID = 47207, "=ds=#s10#" }; --Belt of the Forgotten Martyr
		[14] = { itemID = 47154, "=ds=#s12#" }; --Greaves of the 7th Legion
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47237, "=ds=#s13#" }; --Band of Deplorable Violence
		[19] = { itemID = 47157, "=ds=#s13#" }; --Signet of the Traitor King
		[20] = { itemID = 47188, "=ds=#s14#" }; --Reign of the Unliving
		[22] = { itemID = 47156, "=ds=#h1#" }; --Stormpike Cleaver
		[23] = { itemID = 47206, "=ds=#h3#" }; --Misery's End
		[24] = { itemID = 47239, "=ds=#w7#" }; --Archon Glaive
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[1] = { itemID = 47490, "=ds=#s4#" }; --Maiden's Adoration
		[2] = { itemID = 47481, "=ds=#s4#" }; --Might of the Nerub
		[3] = { itemID = 47485, "=ds=#s8#" }; --Bindings of the Ashen Saint
		[4] = { itemID = 47487, "=ds=#s9#" }; --Handwraps of the Lifeless Touch
		[5] = { itemID = 47478, "=ds=#s11#" }; --Breeches of the Deepening Void
		[6] = { itemID = 47482, "=ds=#s12#" }; --Boots of the Icy Floe
		[7] = { itemID = 47474, "=ds=#s8#" }; --Armbands of Dark Determination
		[8] = { itemID = 47479, "=ds=#s11#" }; --Leggings of the Awakening
		[9] = { itemID = 47486, "=ds=#s5#" }; --Cuirass of Flowing Elements
		[10] = { itemID = 47472, "=ds=#s10#" }; --Waistguard of Deathly Dominion
		[11] = { itemID = 47480, "=ds=#s11#" }; --Leggings of the Lurking Threat
		[12] = { itemID = 47492, "=ds=#s9#" }; --Gauntlets of Bitter Reprisal
		[13] = { itemID = 47484, "=ds=#s10#" }; --Girdle of the Forgotten Martyr
		[14] = { itemID = 47473, "=ds=#s12#" }; --Greaves of the Saronite Citadel
		[16] = { itemID = 47242, "=ds=#e15#" }; --Trophy of the Crusade
		[18] = { itemID = 47476, "=ds=#s13#" }; --Band of the Traitor King
		[19] = { itemID = 47489, "=ds=#s13#" }; --Lurid Manifestation
		[20] = { itemID = 47477, "=ds=#s14#" }; --Reign of the Dead
		[22] = { itemID = 47475, "=ds=#h1#" }; --Hellscream Slicer
		[23] = { itemID = 47483, "=ds=#h3#" }; --Suffering's End
		[24] = { itemID = 47491, "=ds=#w7#" }; --Hellion Glaive
	};
	{
		Name = AL["Tribute Run"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Call of the Grand Crusade"] };
		[2] = { itemID = 47242, "=ds=2x #e15#" }; --Trophy of the Crusade
		[4] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Skill (25)"] };
		[5] = { itemID = 48712, "=ds=#h3#" }; --The Spinebreaker
		[6] = { itemID = 48708, "=ds=#h3#" }; --Spellstorm Blade
		[7] = { itemID = 48713, "=ds=#h2#" }; --Lothar's Edge
		[8] = { itemID = 48709, "=ds=#h3#" }; --Heartcrusher
		[9] = { itemID = 48714, "=ds=#h1#" }; --Honor of the Fallen
		[10] = { itemID = 48710, "=ds=#w9#" }; --Paragon's Breadth
		[11] = { itemID = 48711, "=ds=#w2#" }; --Rhok'shalla, the Shadow's Bane
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Mad Skill (45)"] };
		[17] = { itemID = 47242, "=ds=2x #e15#" }; --Trophy of the Crusade
		[19] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Insanity (50)"] };
		[20] = { itemID = 48673, "=ds=#s4#" }; --Cloak of the Silver Covenant
		[21] = { itemID = 48675, "=ds=#s4#" }; --Cloak of the Unmoving Guardian
		[22] = { itemID = 48674, "=ds=#s4#" }; --Cloak of the Victorious Combatant
		[23] = { itemID = 48671, "=ds=#s4#" }; --Drape of Bitter Incantation
		[24] = { itemID = 48672, "=ds=#s4#" }; --Shawl of the Fervent Crusader
		[25] = { itemID = 49044, "=ds=#e12# =ec1=#m7#" }; --Swift Alliance Steed
	};
	{
		Name = AL["Tribute Run"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Call of the Grand Crusade"] };
		[2] = { itemID = 47242, "=ds=2x #e15#" }; --Trophy of the Crusade
		[4] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Skill (25)"] };
		[5] = { itemID = 48703, "=ds=#h3#" }; --The Facebreaker
		[6] = { itemID = 48701, "=ds=#h3#" }; --Spellharvest
		[7] = { itemID = 48695, "=ds=#h2#" }; --Mor'kosh, the Bloodreaver
		[8] = { itemID = 48693, "=ds=#h3#" }; --Heartsmasher
		[9] = { itemID = 48699, "=ds=#h1#" }; --Blood and Glory
		[10] = { itemID = 48705, "=ds=#w9#" }; --Attrition
		[11] = { itemID = 48697, "=ds=#w2#" }; --Frenzystrike Longbow
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Mad Skill (45)"] };
		[17] = { itemID = 47242, "=ds=2x #e15#" }; --Trophy of the Crusade
		[19] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Insanity (50)"] };
		[20] = { itemID = 48668, "=ds=#s4#" }; --Cloak of Serrated Blades
		[21] = { itemID = 48669, "=ds=#s4#" }; --Cloak of the Triumphant Combatant
		[22] = { itemID = 48670, "=ds=#s4#" }; --Cloak of the Unflinching Guardian
		[23] = { itemID = 48666, "=ds=#s4#" }; --Drape of the Sunreavers
		[24] = { itemID = 48667, "=ds=#s4#" }; --Shawl of the Devout Crusader
		[25] = { itemID = 49046, "=ds=#e12# =ec1=#m6#" }; --Swift Horde Wolf
	};
	{
		Name = AL["Tribute Run"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Call of the Grand Crusade"] };
		[2] = { itemID = 47557, "=ds=#e15#" }; --Regalia of the Grand Conqueror
		[3] = { itemID = 47558, "=ds=#e15#" }; --Regalia of the Grand Protector
		[4] = { itemID = 47559, "=ds=#e15#" }; --Regalia of the Grand Vanquisher
		[6] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Skill (25)"] };
		[7] = { itemID = 47517, "=ds=#h3#" }; --Blade of the Unbroken Covenant
		[8] = { itemID = 47506, "=ds=#h1#" }; --Silverwing Defender
		[9] = { itemID = 47515, "=ds=#h2#" }; --Decimation
		[10] = { itemID = 47526, "=ds=#h1#" }; --Remorseless
		[11] = { itemID = 47519, "=ds=#h2#" }; --Catastrophe
		[12] = { itemID = 47524, "=ds=#w9#" }; --Clemency
		[13] = { itemID = 47521, "=ds=#w5#" }; --BRK-1000
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Mad Skill (45)"] };
		[17] = { itemID = 47557, "=ds=#e15#" }; --Regalia of the Grand Conqueror
		[18] = { itemID = 47558, "=ds=#e15#" }; --Regalia of the Grand Protector
		[19] = { itemID = 47559, "=ds=#e15#" }; --Regalia of the Grand Vanquisher
		[21] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Insanity (50)"] };
		[22] = { itemID = 47553, "=ds=#s4#" }; --Bolvar's Devotion
		[23] = { itemID = 47552, "=ds=#s4#" }; --Jaina's Radiance
		[24] = { itemID = 47549, "=ds=#s4#" }; --Magni's Resolution
		[25] = { itemID = 47545, "=ds=#s4#" }; --Vereesa's Dexterity
		[26] = { itemID = 47547, "=ds=#s4#" }; --Varian's Furor
	};
	{
		Name = AL["Tribute Run"];
		[1] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["Call of the Grand Crusade"] };
		[2] = { itemID = 47557, "=ds=#e15#" }; --Regalia of the Grand Conqueror
		[3] = { itemID = 47558, "=ds=#e15#" }; --Regalia of the Grand Protector
		[4] = { itemID = 47559, "=ds=#e15#" }; --Regalia of the Grand Vanquisher
		[6] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Skill (25)"] };
		[7] = { itemID = 47518, "=ds=#h3#" }; --Mortalis
		[8] = { itemID = 47513, "=ds=#h1#" }; --Ogrim's Deflector
		[9] = { itemID = 47516, "=ds=#h2#" }; --Fleshrender
		[10] = { itemID = 47528, "=ds=#h1#" }; --Cudgel of the Damned
		[11] = { itemID = 47520, "=ds=#h2#" }; --Grievance
		[12] = { itemID = 47525, "=ds=#w9#" }; --Sufferance
		[13] = { itemID = 47523, "=ds=#w5#" }; --Fezzik's Autocannon
		[16] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Mad Skill (45)"] };
		[17] = { itemID = 47557, "=ds=#e15#" }; --Regalia of the Grand Conqueror
		[18] = { itemID = 47558, "=ds=#e15#" }; --Regalia of the Grand Protector
		[19] = { itemID = 47559, "=ds=#e15#" }; --Regalia of the Grand Vanquisher
		[21] = { icon = "INV_Box_01", name = "=q6=" .. AL["Bonus Loot"], desc = "=q5=" .. AL["A Tribute to Insanity (50)"] };
		[22] = { itemID = 47551, "=ds=#s4#" }; --Aethas' Intensity
		[23] = { itemID = 47550, "=ds=#s4#" }; --Cairne's Endurance
		[24] = { itemID = 47548, "=ds=#s4#" }; --Garrosh's Rage
		[25] = { itemID = 47554, "=ds=#s4#" }; --Lady Liadrin's Conviction
		[26] = { itemID = 47546, "=ds=#s4#" }; --Sylvanas' Cunning
	};
};

-------------------------
--- Onyxia (Level 80) ---
-------------------------

AtlasLoot_Data["Onyxia80"] = {
	Name = BabbleZone["Onyxia's Lair"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Onyxia"];
		[1] = { itemID = 49307, "=ds=#s4#" }; --Fluttering Sapphiron Drape
		[2] = { itemID = 49316, "=ds=#s1#" }; --Circlet of Transcendence
		[3] = { itemID = 49317, "=ds=#s1#" }; --Coronet of Transcendence
		[4] = { itemID = 49315, "=ds=#s1#" }; --Nemesis Skullcover
		[5] = { itemID = 49318, "=ds=#s1#" }; --Netherwind Hood
		[6] = { itemID = 49322, "=ds=#s1#" }; --Bloodfang Mask
		[7] = { itemID = 49327, "=ds=#s1#" }; --Stormrage Antlers
		[8] = { itemID = 49328, "=ds=#s1#" }; --Stormrage Helm
		[9] = { itemID = 49326, "=ds=#s1#" }; --Stormrage Hood
		[10] = { itemID = 49331, "=ds=#s1#" }; --Coif of Ten Storms
		[11] = { itemID = 49330, "=ds=#s1#" }; --Cowl of Ten Storms
		[12] = { itemID = 49329, "=ds=#s1#" }; --Gaze of Ten Storms
		[13] = { itemID = 49319, "=ds=#s1#" }; --Dragonstalker's Helmet
		[14] = { itemID = 49320, "=ds=#s1#" }; --Faceguard of Wrath
		[15] = { itemID = 49321, "=ds=#s1#" }; --Greathelm of Wrath
		[16] = { itemID = 49333, "=ds=#s1#" }; --Frostforged Helmet
		[17] = { itemID = 49332, "=ds=#s1#" }; --Frostforged Ringhelm
		[18] = { itemID = 49323, "=ds=#s1#" }; --Judgement Cover
		[19] = { itemID = 49325, "=ds=#s1#" }; --Judgement Helm
		[20] = { itemID = 49324, "=ds=#s1#" }; --Judgement Helmet
		[21] = { itemID = 49306, "=ds=#s2#" }; --Eskhandar's Choker
		[22] = { itemID = 49309, "=ds=#s13#" }; --Runed Ring of Binding
		[23] = { itemID = 49463, "=ds=#s14#" }; --Purified Shard of the Flame
		[24] = { itemID = 49310, "=ds=#s14#" }; --Purified Shard of the Scale
		[25] = { itemID = 49308, "=ds=#s15#" }; --Antique Cornerstone Grimoire
	};
	{
		Name = BabbleBoss["Onyxia"];
		[1] = { itemID = 49304, "=ds=#h3#" }; --Sharpened Fang of the Mystics
		[2] = { itemID = 49437, "=ds=#h1#" }; --Rusted Gutgore Ripper
		[3] = { itemID = 49298, "=ds=#h3#" }; --Glinting Azuresong Mageblade
		[4] = { itemID = 49303, "=ds=#h1#" }; --Gleaming Quel'Serrar
		[5] = { itemID = 49296, "=ds=#h1#" }; --Singed Vis'kag the Bloodletter
		[6] = { itemID = 49299, "=ds=#h2#" }; --Keen Obsidian Edged Blade
		[7] = { itemID = 49297, "=ds=#h1#" }; --Empowered Deathbringer
		[8] = { itemID = 49302, "=ds=#w7#" }; --Reclaimed Shadowstrike
		[9] = { itemID = 49301, "=ds=#w7#" }; --Reclaimed Thunderstrike
		[10] = { itemID = 49305, "=ds=#w5#" }; --Snub-Nose Blastershot Launcher
		[16] = { itemID = 49644, "=ds=#m3#" }; --Head of Onyxia
		[17] = { itemID = 49485, }; --#m4#: =ds=#s2# --Sparkling Onyxia Tooth Pendant
		[18] = { itemID = 49486, }; --#m4#: =ds=#s13# --Polished Dragonslayer's Signet
		[19] = { itemID = 49487, }; --#m4#: =ds=#s14# --Purified Onyxia Blood Talisman
		[21] = { itemID = 49295, "=ds=#e1#" }; --Enlarged Onyxia Hide Backpack
		[22] = { itemID = 49294, "=ds=#e7# #e1#" }; --Ashen Sack of Gems
		[24] = { itemID = 49636, "=ds=#e12#" }; --Reins of the Onyxian Drake
	};
	{
		Name = BabbleBoss["Onyxia"];
		[1] = { itemID = 49491, "=ds=#s4#" }; --Flowing Sapphiron Drape
		[2] = { itemID = 49482, "=ds=#s1#" }; --Aurora of Transcendence
		[3] = { itemID = 49483, "=ds=#s1#" }; --Halo of Transcendence
		[4] = { itemID = 49484, "=ds=#s1#" }; --Nemesis Skullcap
		[5] = { itemID = 49481, "=ds=#s1#" }; --Netherwind Crown
		[6] = { itemID = 49477, "=ds=#s1#" }; --Bloodfang Hood
		[7] = { itemID = 49472, "=ds=#s1#" }; --Stormrage Crown
		[8] = { itemID = 49473, "=ds=#s1#" }; --Stormrage Cover
		[9] = { itemID = 49471, "=ds=#s1#" }; --Stormrage Coverlet
		[10] = { itemID = 49469, "=ds=#s1#" }; --Crown of Ten Storms
		[11] = { itemID = 49468, "=ds=#s1#" }; --Helm of Ten Storms
		[12] = { itemID = 49470, "=ds=#s1#" }; --Helmet of Ten Storms
		[13] = { itemID = 49480, "=ds=#s1#" }; --Dragonstalker's Helm
		[14] = { itemID = 49479, "=ds=#s1#" }; --Helm of Wrath
		[15] = { itemID = 49478, "=ds=#s1#" }; --Helmet of Wrath
		[16] = { itemID = 49467, "=ds=#s1#" }; --Frostforged Greathelm
		[17] = { itemID = 49466, "=ds=#s1#" }; --Frostforged Helm
		[18] = { itemID = 49476, "=ds=#s1#" }; --Judgement Crown
		[19] = { itemID = 49475, "=ds=#s1#" }; --Judgement Heaume
		[20] = { itemID = 49474, "=ds=#s1#" }; --Judgement Hood
		[21] = { itemID = 49492, "=ds=#s2#" }; --Eskhandar's Links
		[22] = { itemID = 49489, "=ds=#s13#" }; --Signified Ring of Binding
		[23] = { itemID = 49464, "=ds=#s14#" }; --Shiny Shard of the Flame
		[24] = { itemID = 49488, "=ds=#s14#" }; --Shiny Shard of the Scale
		[25] = { itemID = 49490, "=ds=#s15#" }; --Antediluvian Cornerstone Grimoire
	};
	{
		Name = BabbleBoss["Onyxia"];
		[1] = { itemID = 49494, "=ds=#h3# #w4#" }; --Honed Fang of the Mystics
		[2] = { itemID = 49465, "=ds=#h1# #w4#" }; --Tarnished Gutgore Ripper
		[3] = { itemID = 49499, "=ds=#h3# #w10#" }; --Polished Azuresong Mageblade
		[4] = { itemID = 49495, "=ds=#h1# #w10#" }; --Burnished Quel'Serrar
		[5] = { itemID = 49501, "=ds=#h1# #w10#" }; --Tempered Vis'kag the Bloodletter
		[6] = { itemID = 49498, "=ds=#h2# #w10#" }; --Sharpened Obsidian Edged Blade
		[7] = { itemID = 49500, "=ds=#h1# #w1#" }; --Raging Deathbringer
		[8] = { itemID = 49496, "=ds=#w7#" }; --Reinforced Shadowstrike
		[9] = { itemID = 49497, "=ds=#w7#" }; --Reinforced Thunderstrike
		[10] = { itemID = 49493, "=ds=#w5#" }; --Rifled Blastershot Launcher
		[16] = { itemID = 49644, "=ds=#m3#" }; --Head of Onyxia
		[17] = { itemID = 49485, }; --#m4#: =ds=#s2# --Sparkling Onyxia Tooth Pendant
		[18] = { itemID = 49486, }; --#m4#: =ds=#s13# --Polished Dragonslayer's Signet
		[19] = { itemID = 49487, }; --#m4#: =ds=#s14# --Purified Onyxia Blood Talisman
		[21] = { itemID = 49295, "=ds=#e1#" }; --Enlarged Onyxia Hide Backpack
		[22] = { itemID = 49294, "=ds=#e7# #e1#" }; --Ashen Sack of Gems
		[24] = { itemID = 49636, "=ds=#e12#" }; --Reins of the Onyxian Drake
	};
};

------------------------
--- Icecrown Citadel ---
------------------------

-------------------
--- Lower Spire ---
-------------------

AtlasLoot_Data["IcecrownCitadel"] = {
	Name = BabbleZone["Icecrown Citadel"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[1] = { itemID = 50764, "=ds=#s4#" }; --Shawl of Nerubian Silk
		[2] = { itemID = 50773, "=ds=#s10#" }; --Cord of the Patronizing Practitioner
		[3] = { itemID = 50774, "=ds=#s8#" }; --Coldwraith Bracers
		[4] = { itemID = 50762, "=ds=#s10#" }; --Linked Scourge Vertebrae
		[5] = { itemID = 50775, "=ds=#s11#" }; --Corrupted Silverplate Leggings
		[6] = { itemID = 50772, "=ds=#s12#" }; --Ancient Skeletal Boots
		[8] = { itemID = 50763, "=ds=#s2#" }; --Marrowgar's Scratching Choker
		[9] = { itemID = 50339, "=ds=#s14#" }; --Sliver of Pure Ice
		[16] = { itemID = 50771, "=ds=#h3#" }; --Frost Needle
		[17] = { itemID = 50761, "=ds=#h2#" }; --Citadel Enforcer's Claymore
		[18] = { itemID = 50759, "=ds=#h1#" }; --Bone Warden's Splitter
		[19] = { itemID = 50760, "=ds=#h1#" }; --Bonebreaker Scepter
	};
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[1] = { itemID = 49978, "=ds=#s10#" }; --Crushing Coldwraith Belt
		[2] = { itemID = 49979, "=ds=#s9#" }; --Handguards of Winter's Respite
		[3] = { itemID = 49950, "=ds=#s12#" }; --Frostbitten Fur Boots
		[4] = { itemID = 49952, "=ds=#s1#" }; --Snowserpent Mail Helm
		[5] = { itemID = 49980, "=ds=#s3#" }; --Rusted Bonespike Pauldrons
		[6] = { itemID = 49951, "=ds=#s5#" }; --Gendarme's Cuirass
		[7] = { itemID = 49960, "=ds=#s8#" }; --Bracers of Dark Reckoning
		[8] = { itemID = 49964, "=ds=#s11#" }; --Legguards of Lost Hope
		[10] = { itemID = 49975, "=ds=#s2#" }; --Bone Sentinel's Amulet
		[11] = { itemID = 49949, "=ds=#s13#" }; --Band of the Bone Colossus
		[12] = { itemID = 49977, "=ds=#s13#" }; --Loop of the Endless Labyrinth
		[13] = { itemID = 49967, "=ds=#s13#" }; --Marrowgar's Frigid Eye
		[16] = { itemID = 49968, "=ds=#h3#" }; --Frozen Bonespike
		[17] = { itemID = 50415, "=ds=#h2#" }; --Bryntroll, the Bone Arbiter
		[18] = { itemID = 49976, "=ds=#w8#" }; --Bulwark of Smouldering Steel
		[20] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[21] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[1] = { itemID = 50785, "=ds=#s8#" }; --Bracers of Dark Blessings
		[2] = { itemID = 50782, "=ds=#s9#" }; --Sister's Handshrouds
		[3] = { itemID = 50780, "=ds=#s5#" }; --Chestguard of the Frigid Noose
		[4] = { itemID = 50778, "=ds=#s10#" }; --Soulthief's Braided Belt
		[5] = { itemID = 50783, "=ds=#s12#" }; --Boots of the Frozen Seed
		[6] = { itemID = 50777, "=ds=#s9#" }; --Handgrips of Frost and Sleet
		[7] = { itemID = 50784, "=ds=#s10#" }; --Deathspeaker Disciple's Belt
		[8] = { itemID = 50779, "=ds=#s1#" }; --Deathspeaker Zealot's Helm
		[9] = { itemID = 50786, "=ds=#s5#" }; --Ghoul Commander's Cuirass
		[16] = { itemID = 50342, "=ds=#s14#" }; --Whispering Fanged Skull
		[17] = { itemID = 50781, "=ds=#s15#" }; --Scourgelord's Baton
		[19] = { itemID = 50776, "=ds=#w2#" }; --Njordnar Bone Bow
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[1] = { itemID = 49991, "=ds=#s3#" }; --Shoulders of Mercy Killing
		[2] = { itemID = 49994, "=ds=#s8#" }; --The Lady's Brittle Bracers
		[3] = { itemID = 49987, "=ds=#s3#" }; --Cultist's Bloodsoaked Spaulders
		[4] = { itemID = 49996, "=ds=#s5#" }; --Deathwhisper Chestpiece
		[5] = { itemID = 49988, "=ds=#s11#" }; --Leggings of Northern Lights
		[6] = { itemID = 49993, "=ds=#s12#" }; --Necrophotic Greaves
		[7] = { itemID = 49986, "=ds=#s1#" }; --Broken Ram Skull Helm
		[8] = { itemID = 49995, "=ds=#s9#" }; --Fallen Lord's Handguards
		[9] = { itemID = 49983, "=ds=#s12#" }; --Blood-Soaked Saronite Stompers
		[11] = { itemID = 49989, "=ds=#s2#" }; --Ahn'kahar Onyx Neckguard
		[12] = { itemID = 49985, "=ds=#s13#" }; --Juggernaut Band
		[13] = { itemID = 49990, "=ds=#s13#" }; --Ring of Maddening Whispers
		[16] = { itemID = 49982, "=ds=#h1#" }; --Heartpierce
		[17] = { itemID = 49992, "=ds=#w9#" }; --Nibelung
		[18] = { itemID = 50034, "=ds=#w2#" }; --Zod's Repeating Longbow
		[20] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[21] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[1] = { itemID = 50791, "=ds=#s4#" }; --Saronite Gargoyle Cloak
		[2] = { itemID = 50795, "=ds=#s10#" }; --Cord of Dark Suffering
		[3] = { itemID = 50797, "=ds=#s1#" }; --Ice-Reinforced Vrykul Helm
		[4] = { itemID = 50792, "=ds=#s3#" }; --Pauldrons of Lost Hope
		[5] = { itemID = 50789, "=ds=#s8#" }; --Icecrown Rampart Bracers
		[6] = { itemID = 50796, "=ds=#s8#" }; --Bracers of Pale Illumination
		[7] = { itemID = 50788, "=ds=#s12#" }; --Bone Drake's Enameled Boots
		[9] = { itemID = 50790, "=ds=#s13#" }; --Abomination's Bloody Ring
		[10] = { itemID = 50340, "=ds=#s14#" }; --Muradin's Spyglass
		[16] = { itemID = 50793, "=ds=#h3#" }; --Midnight Sun
		[17] = { itemID = 50787, "=ds=#h1#" }; --Frost Giant's Cleaver
		[18] = { itemID = 50794, "=ds=#w8#" }; --Neverending Winter
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[1] = { itemID = 49998, "=ds=#s4#" }; --Shadowvault Slayer's Cloak
		[2] = { itemID = 50006, "=ds=#s1#" }; --Corp'rethar Ceremonial Crown
		[3] = { itemID = 50011, "=ds=#s9#" }; --Gunship Captain's Mittens
		[4] = { itemID = 50001, "=ds=#s5#" }; --Ikfirus's Sack of Wonder
		[5] = { itemID = 50009, "=ds=#s12#" }; --Boots of Unnatural Growth
		[6] = { itemID = 50000, "=ds=#s8#" }; --Scourge Hunter's Vambraces
		[7] = { itemID = 50003, "=ds=#s3#" }; --Boneguard Commander's Pauldrons
		[8] = { itemID = 50002, "=ds=#s8#" }; --Polar Bear Claw Bracers
		[9] = { itemID = 50010, "=ds=#s10#" }; --Waistband of Righteous Fury
		[11] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[12] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 50005, "=ds=#s2#" }; --Amulet of the Silent Eulogy
		[17] = { itemID = 50008, "=ds=#s13#" }; --Ring of Rapid Ascent
		[18] = { itemID = 49999, "=ds=#s13#" }; --Skeleton Lord's Circle
		[19] = { itemID = 50359, "=ds=#s14#" }; --Althor's Abacus
		[20] = { itemID = 50352, "=ds=#s14#" }; --Corpse Tongue Coin
		[22] = { itemID = 50411, "=ds=#h1#" }; --Scourgeborne Waraxe
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[1] = { itemID = 50807, "=ds=#s1#" }; --Thaumaturge's Crackling Cowl
		[2] = { itemID = 50804, "=ds=#s12#" }; --Icecrown Spire Sandals
		[3] = { itemID = 50799, "=ds=#s9#" }; --Scourge Stranglers
		[4] = { itemID = 50806, "=ds=#s11#" }; --Leggings of Unrelenting Blood
		[5] = { itemID = 50800, "=ds=#s5#" }; --Hauberk of a Thousand Cuts
		[6] = { itemID = 50801, "=ds=#s5#" }; --Blade-Scored Carapace
		[7] = { itemID = 50802, "=ds=#s8#" }; --Gargoyle Spit Bracers
		[8] = { itemID = 50808, "=ds=#s11#" }; --Deathforged Legplates
		[16] = { itemID = 50809, "=ds=#s2#" }; --Soulcleave Pendant
		[17] = { itemID = 50803, "=ds=#s13#" }; --Saurfang's Cold-Forged Band
		[19] = { itemID = 50798, "=ds=#h2#" }; --Ramaladni's Blade of Culling
		[20] = { itemID = 50805, "=ds=#w9#" }; --Mag'hari Chieftain's Staff
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[1] = { itemID = 50014, "=ds=#s4#" }; --Greatcloak of the Turned Champion
		[2] = { itemID = 50333, "=ds=#s8#" }; --Toskk's Maximized Wristguards
		[3] = { itemID = 50015, "=ds=#s10#" }; --Belt of the Blood Nova
		[4] = { itemID = 50362, "=ds=#s14#" }; --Deathbringer's Will
		[5] = { itemID = 50412, "=ds=#h1#" }; --Bloodvenom Blade
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Festergut"];
		[1] = { itemID = 50859, "=ds=#s4#" }; --Cloak of Many Skins
		[2] = { itemID = 50988, "=ds=#s3#" }; --Bloodstained Surgeon's Shoulderguards
		[3] = { itemID = 50990, "=ds=#s11#" }; --Kilt of Untreated Wounds
		[4] = { itemID = 50985, "=ds=#s8#" }; --Wrists of Septic Shock
		[5] = { itemID = 50858, "=ds=#s11#" }; --Plague-Soaked Leather Leggings
		[6] = { itemID = 50812, "=ds=#s12#" }; --Taldron's Long Neglected Boots
		[7] = { itemID = 50967, "=ds=#s9#" }; --Festergut's Gaseous Gloves
		[8] = { itemID = 50811, "=ds=#s9#" }; --Festering Fingerguards
		[16] = { itemID = 50852, "=ds=#s2#" }; --Precious's Putrid Collar
		[17] = { itemID = 50986, "=ds=#s13#" }; --Signet of Putrefaction
		[19] = { itemID = 50810, "=ds=#h1#" }; --Gutbuster
		[20] = { itemID = 50966, "=ds=#w9#" }; --Abracadaver
	};
	{
		Name = BabbleBoss["Festergut"];
		[1] = { itemID = 50063, "=ds=#s10#" }; --Lingering Illness
		[2] = { itemID = 50056, "=ds=#s11#" }; --Plaguebringer's Stained Pants
		[3] = { itemID = 50062, "=ds=#s12#" }; --Plague Scientist's Boots
		[4] = { itemID = 50042, "=ds=#s11#" }; --Gangrenous Leggings
		[5] = { itemID = 50041, "=ds=#s11#" }; --Leather of Stitched Scourge Parts
		[6] = { itemID = 50059, "=ds=#s3#" }; --Horrific Flesh Epaulets
		[7] = { itemID = 50038, "=ds=#s5#" }; --Carapace of Forgotten Kings
		[8] = { itemID = 50064, "=ds=#s9#" }; --Unclean Surgical Gloves
		[9] = { itemID = 50413, "=ds=#s10#" }; --Nerub'ar Stalker's Cord
		[10] = { itemID = 50060, "=ds=#s1#" }; --Faceplate of the Forgotten
		[11] = { itemID = 50037, "=ds=#s9#" }; --Fleshrending Gauntlets
		[12] = { itemID = 50036, "=ds=#s10#" }; --Belt of Broken Bones
		[16] = { itemID = 50061, "=ds=#s2#" }; --Holiday's Grace
		[17] = { itemID = 50414, "=ds=#s13#" }; --Might of Blight
		[19] = { itemID = 50035, "=ds=#h3#" }; --Black Bruise
		[20] = { itemID = 50040, "=ds=#w9#" }; --Distant Land
		[22] = { itemID = 50226, "=ds=#m3#" }; --Festergut's Acidic Blood
		[24] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[25] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Rotface"];
		[1] = { itemID = 51007, "=ds=#s8#" }; --Ether-Soaked Bracers
		[2] = { itemID = 51005, "=ds=#s9#" }; --Gloves of Broken Fingers
		[3] = { itemID = 51009, "=ds=#s5#" }; --Chestguard of the Failed Experiment
		[4] = { itemID = 51002, "=ds=#s1#" }; --Taldron's Short-Sighted Helm
		[5] = { itemID = 51006, "=ds=#s12#" }; --Shuffling Shoes
		[6] = { itemID = 51000, "=ds=#s10#" }; --Flesh-Shaper's Gurney Strap
		[8] = { itemID = 51008, "=ds=#s2#" }; --Choker of Filthy Diamonds
		[9] = { itemID = 51001, "=ds=#s13#" }; --Rotface's Rupturing Ring
		[16] = { itemID = 51003, "=ds=#h3#" }; --Abomination Knuckles
		[17] = { itemID = 51004, "=ds=#h3#" }; --Lockjaw
		[18] = { itemID = 50998, "=ds=#w9#" }; --Shaft of Glacial Ice
		[19] = { itemID = 50999, "=ds=#w11#" }; --Gluth's Fetching Knife
	};
	{
		Name = BabbleBoss["Rotface"];
		[1] = { itemID = 50019, "=ds=#s4#" }; --Winding Sheet
		[2] = { itemID = 50032, "=ds=#s8#" }; --Death Surgeon's Sleeves
		[3] = { itemID = 50026, "=ds=#s1#" }; --Helm of the Elder Moon
		[4] = { itemID = 50021, "=ds=#s9#" }; --Aldriana's Gloves of Secrecy
		[5] = { itemID = 50022, "=ds=#s3#" }; --Dual-Bladed Pauldrons
		[6] = { itemID = 50030, "=ds=#s8#" }; --Bloodsunder's Bracers
		[7] = { itemID = 50020, "=ds=#s3#" }; --Raging Behemoth's Shoulderplates
		[8] = { itemID = 50024, "=ds=#s5#" }; --Blightborne Warplate
		[9] = { itemID = 50027, "=ds=#s5#" }; --Rot-Resistant Breastplate
		[11] = { itemID = 50023, "=ds=#s2#" }; --Bile-Encrusted Medallion
		[12] = { itemID = 50025, "=ds=#s13#" }; --Seal of Many Mouths
		[13] = { itemID = 50353, "=ds=#s14#" }; --Dislodged Foreign Object
		[16] = { itemID = 50028, "=ds=#h3#" }; --Trauma
		[17] = { itemID = 50016, "=ds=#h1#" }; --Rib Spreader
		[18] = { itemID = 50033, "=ds=#w12#" }; --Corpse-Impaling Spike
		[20] = { itemID = 50231, "=ds=#m3#" }; --Rotface's Acidic Blood
		[22] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[23] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[1] = { itemID = 51020, "=ds=#s3#" }; --Shoulders of Ruinous Senility
		[2] = { itemID = 51017, "=ds=#s10#" }; --Cauterized Cord
		[3] = { itemID = 51013, "=ds=#s1#" }; --Discarded Bag of Entrails
		[4] = { itemID = 51015, "=ds=#s3#" }; --Shoulderpads of the Morbid Ritual
		[5] = { itemID = 51019, "=ds=#s11#" }; --Rippling Flesh Kilt
		[6] = { itemID = 51014, "=ds=#s3#" }; --Scalpel-Sharpening Shoulderguards
		[7] = { itemID = 51018, "=ds=#s5#" }; --Chestplate of Septic Stitches
		[16] = { itemID = 51012, "=ds=#s2#" }; --Infected Choker
		[17] = { itemID = 51016, "=ds=#s2#" }; --Pendant of Split Veins
		[18] = { itemID = 50341, "=ds=#s14#" }; --Unidentifiable Organ
		[20] = { itemID = 51011, "=ds=#h1#" }; --Flesh-Carving Scalpel
		[21] = { itemID = 51010, "=ds=#h1#" }; --The Facelifter
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[1] = { itemID = 50067, "=ds=#s10#" }; --Astrylian's Sutured Cinch
		[2] = { itemID = 50069, "=ds=#s10#" }; --Professor's Bloodied Smock
		[3] = { itemID = 50351, "=ds=#s14#" }; --Tiny Abomination in a Jar
		[4] = { itemID = 50179, "=ds=#h1#" }; --Last Word
		[5] = { itemID = 50068, "=ds=#h1#" }; --Rigormortis
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[1] = { itemID = 51382, "=ds=#s4#" }; --Heartsick Mender's Cape
		[2] = { itemID = 51379, "=ds=#s5#" }; --Bloodsoul Raiment
		[3] = { itemID = 51380, "=ds=#s12#" }; --Pale Corpse Boots
		[4] = { itemID = 51023, "=ds=#s12#" }; --Taldaram's Soft Slippers
		[5] = { itemID = 51325, "=ds=#s10#" }; --Blood-Drinker's Girdle
		[6] = { itemID = 51383, "=ds=#s3#" }; --Spaulders of the Blood Princes
		[7] = { itemID = 51025, "=ds=#s11#" }; --Battle-Maiden's Legguards
		[9] = { itemID = 51381, "=ds=#s13#" }; --Cerise Coiled Ring
		[10] = { itemID = 51024, "=ds=#s13#" }; --Thrice Fanged Signet
		[16] = { itemID = 51021, "=ds=#h1#" }; --Soulbreaker
		[17] = { itemID = 51022, "=ds=#w7#" }; --Hersir's Greatspear
		[18] = { itemID = 51326, "=ds=#w12#" }; --Wand of Ruby Claret
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[1] = { itemID = 50074, "=ds=#s4#" }; --Royal Crimson Cloak
		[2] = { itemID = 50172, "=ds=#s5#" }; --Sanguine Silk Robes
		[3] = { itemID = 50176, "=ds=#s9#" }; --San'layn Ritualist Gloves
		[4] = { itemID = 50073, "=ds=#s1#" }; --Geistlord's Punishment Sack
		[5] = { itemID = 50171, "=ds=#s3#" }; --Shoulders of Frost-Tipped Thorns
		[6] = { itemID = 50177, "=ds=#s5#" }; --Mail of Crimson Coins
		[7] = { itemID = 50071, "=ds=#s12#" }; --Treads of the Wasteland
		[8] = { itemID = 50072, "=ds=#s1#" }; --Landsoul's Horned Greathelm
		[9] = { itemID = 50175, "=ds=#s8#" }; --Crypt Keeper's Bracers
		[10] = { itemID = 50075, "=ds=#s9#" }; --Taldaram's Plated Fists
		[16] = { itemID = 50174, "=ds=#s13#" }; --Incarnadine Band of Mending
		[17] = { itemID = 50170, "=ds=#s13#" }; --Valanar's Other Signet Ring
		[18] = { itemID = 50173, "=ds=#s15#" }; --Shadow Silk Spindle
		[20] = { itemID = 50184, "=ds=#h4#" }; --Keleseth's Seducer
		[21] = { itemID = 49919, "=ds=#h2#" }; --Cryptmaker
		[23] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[24] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[1] = { itemID = 51554, "=ds=#s1#" }; --Cowl of Malefic Repose
		[2] = { itemID = 51552, "=ds=#s3#" }; --Shoulderpads of the Searing Kiss
		[3] = { itemID = 51550, "=ds=#s11#" }; --Ivory-Inlaid Leggings
		[4] = { itemID = 51551, "=ds=#s5#" }; --Chestguard of Siphoned Elements
		[5] = { itemID = 51386, "=ds=#s9#" }; --Throatrender Handguards
		[6] = { itemID = 51556, "=ds=#s9#" }; --Veincrusher Gauntlets
		[7] = { itemID = 51555, "=ds=#s10#" }; --Tightening Waistband
		[16] = { itemID = 51548, "=ds=#s2#" }; --Collar of Haughty Disdain
		[17] = { itemID = 51387, "=ds=#s13#" }; --Seal of the Twilight Queen
		[19] = { itemID = 51384, "=ds=#h1#" }; --Bloodsipper
		[20] = { itemID = 51385, "=ds=#w5#" }; --Stakethrower
		[21] = { itemID = 51553, "=ds=#w12#" }; --Lana'thel's Bloody Nail
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[1] = { itemID = 50182, "=ds=#s2#" }; --Blood Queen's Crimson Choker
		[2] = { itemID = 50180, "=ds=#s2#" }; --Lana'thel's Chain of Flagellation
		[3] = { itemID = 50354, "=ds=#s14#" }; --Bauble of True Blood
		[4] = { itemID = 50178, "=ds=#w7#" }; --Bloodfall
		[5] = { itemID = 50181, "=ds=#w9#" }; --Dying Light
		[6] = { itemID = 50065, "=ds=#w8#" }; --Icecrown Glacial Wall
		[8] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[9] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[1] = { itemID = 51584, "=ds=#s4#" }; --Lich Wrappings
		[2] = { itemID = 51777, "=ds=#s11#" }; --Leggings of the Refracted Mind
		[3] = { itemID = 51585, "=ds=#s1#" }; --Sister Svalna's Spangenhelm
		[4] = { itemID = 51565, "=ds=#s3#" }; --Skinned Whelp Shoulders
		[5] = { itemID = 51583, "=ds=#s9#" }; --Stormbringer Gloves
		[6] = { itemID = 51566, "=ds=#s11#" }; --Legguards of the Twisted Dream
		[7] = { itemID = 51586, "=ds=#s3#" }; --Emerald Saint's Spaulders
		[8] = { itemID = 51563, "=ds=#s8#" }; --Taiga Bindings
		[9] = { itemID = 51564, "=ds=#s10#" }; --Ironrope Belt of Ymirjar
		[16] = { itemID = 51562, "=ds=#h2#" }; --Oxheart
		[17] = { itemID = 51582, "=ds=#w9#" }; --Sister Svalna's Aether Staff
		[18] = { itemID = 51561, "=ds=#w5#" }; --Dreamhunter's Carbine
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[1] = { itemID = 50205, "=ds=#s4#" }; --Frostbinder's Shredded Cape
		[2] = { itemID = 50418, "=ds=#s5#" }; --Robe of the Waking Nightmare
		[3] = { itemID = 50417, "=ds=#s8#" }; --Bracers of Eternal Dreaming
		[4] = { itemID = 50202, "=ds=#s1#" }; --Snowstorm Helm
		[5] = { itemID = 50188, "=ds=#s9#" }; --Anub'ar Stalker's Gloves
		[6] = { itemID = 50187, "=ds=#s10#" }; --Coldwraith Links
		[7] = { itemID = 50199, "=ds=#s11#" }; --Leggings of Dying Candles
		[8] = { itemID = 50192, "=ds=#s11#" }; --Scourge Reaver's Legplates
		[9] = { itemID = 50416, "=ds=#s12#" }; --Boots of the Funeral March
		[10] = { itemID = 50190, "=ds=#s12#" }; --Grinning Skull Greatboots
		[16] = { itemID = 50195, "=ds=#s2#" }; --Noose of Malachite
		[17] = { itemID = 50185, "=ds=#s13#" }; --Devium's Eternally Cold Ring
		[18] = { itemID = 50186, "=ds=#s13#" }; --Frostbrood Sapphire Ring
		[20] = { itemID = 50183, "=ds=#h1#" }; --Lungbreaker
		[21] = { itemID = 50472, "=ds=#w12#" }; --Nightmare Ender
		[23] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[24] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[1] = { itemID = 51790, "=ds=#s5#" }; --Robes of Azure Downfall
		[2] = { itemID = 51783, "=ds=#s8#" }; --Vambraces of the Frost Wyrm Queen
		[3] = { itemID = 51789, "=ds=#s9#" }; --Icicle Shapers
		[4] = { itemID = 51792, "=ds=#s3#" }; --Shoulderguards of Crystalline Bone
		[5] = { itemID = 51785, "=ds=#s12#" }; --Wyrmwing Treads
		[6] = { itemID = 51782, "=ds=#s10#" }; --Etched Dragonbone Girdle
		[7] = { itemID = 51786, "=ds=#s11#" }; --Legplates of Aetheric Strife
		[8] = { itemID = 51787, "=ds=#s12#" }; --Scourge Fanged Stompers
		[10] = { itemID = 51026, "=ds=#m3#" }; --Crystalline Essence of Sindragosa
		[16] = { itemID = 51779, "=ds=#s2#" }; --Rimetooth Pendant
		[18] = { itemID = 51784, "=ds=#h4#" }; --Splintershard
		[19] = { itemID = 51788, "=ds=#h3#" }; --Bleak Coldarra Carver
		[20] = { itemID = 51791, "=ds=#w8#" }; --Lost Pavise of the Blue Flight
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[1] = { itemID = 50421, "=ds=#s2#" }; --Sindragosa's Cruel Claw
		[2] = { itemID = 50424, "=ds=#s13#" }; --Memory of Malygos
		[3] = { itemID = 50360, "=ds=#s14#" }; --Phylactery of the Nameless Lich
		[4] = { itemID = 50361, "=ds=#s14#" }; --Sindragosa's Flawless Fang
		[5] = { itemID = 50423, "=ds=#s15#" }; --Sundial of Eternal Dusk
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[9] = { itemID = 51026, "=ds=#m3#" }; --Crystalline Essence of Sindragosa
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 51801, "=ds=#h3#" }; --Pugius, Fist of Defiance
		[2] = { itemID = 51803, "=ds=#h3#" }; --Tel'thas, Dagger of the Blood King
		[3] = { itemID = 51800, "=ds=#h1#" }; --Stormfury, Black Blade of the Betrayer
		[4] = { itemID = 51795, "=ds=#h1#" }; --Troggbane, Axe of the Frostborne King
		[5] = { itemID = 51798, "=ds=#h3#" }; --Valius, Gavel of the Lightbringer
		[6] = { itemID = 51796, "=ds=#h2#" }; --Warmace of Menethil
		[7] = { itemID = 51799, "=ds=#w9#" }; --Halion, Staff of Forgotten Love
		[8] = { itemID = 51797, "=ds=#w9#" }; --Tainted Twig of Nordrassil
		[9] = { itemID = 51802, "=ds=#w3#" }; --Windrunner's Heartseeker
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 50426, "=ds=#h1#" }; --Heaven's Fall, Kryss of a Thousand Lies
		[2] = { itemID = 50427, "=ds=#h3#" }; --Bloodsurge, Kel'Thuzad's Blade of Agony
		[3] = { itemID = 50070, "=ds=#h2#" }; --Glorenzelg, High-Blade of the Silver Hand
		[4] = { itemID = 50012, "=ds=#h1#" }; --Havoc's Call, Blade of Lordaeron Kings
		[5] = { itemID = 50428, "=ds=#h3#" }; --Royal Scepter of Terenas II
		[6] = { itemID = 49997, "=ds=#h1#" }; --Mithrios, Bronzebeard's Legacy
		[7] = { itemID = 50425, "=ds=#w7#" }; --Oathbinder, Charge of the Ranger-General
		[8] = { itemID = 50429, "=ds=#w9#" }; --Archus, Greatstaff of Antonidas
		[9] = { itemID = 49981, "=ds=#w3#" }; --Fal'inrush, Defender of Quel'thalas
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[21] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = AL["Trash Mobs"];
		[1] = { itemID = 50449, "=ds=#s3#" }; --Stiffened Corpse Shoulderpads
		[2] = { itemID = 50450, "=ds=#s11#" }; --Leggings of Dubious Charms
		[3] = { itemID = 50451, "=ds=#s10#" }; --Belt of the Lonely Noble
		[4] = { itemID = 50452, "=ds=#s2#" }; --Wodin's Lucky Necklace
		[5] = { itemID = 50447, "=ds=#s13#" }; --Harbinger's Bone Band
		[6] = { itemID = 50453, "=ds=#s13#" }; --Ring of Rotting Sinew
		[7] = { itemID = 50444, "=ds=#w5#" }; --Rowan's Rifle of Silver Bullets
	};
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[1] = { itemID = 51933, "=ds=#s4#" }; --Shawl of Nerubian Silk
		[2] = { itemID = 51930, "=ds=#s10#" }; --Cord of the Patronizing Practitioner
		[3] = { itemID = 51929, "=ds=#s8#" }; --Coldwraith Bracers
		[4] = { itemID = 51935, "=ds=#s10#" }; --Linked Scourge Vertebrae
		[5] = { itemID = 51928, "=ds=#s11#" }; --Corrupted Silverplate Leggings
		[6] = { itemID = 51931, "=ds=#s12#" }; --Ancient Skeletal Boots
		[8] = { itemID = 51934, "=ds=#s2#" }; --Marrowgar's Scratching Choker
		[9] = { itemID = 50346, "=ds=#s14#" }; --Sliver of Pure Ice
		[16] = { itemID = 51932, "=ds=#h3#" }; --Frost Needle
		[17] = { itemID = 51936, "=ds=#h2#" }; --Citadel Enforcer's Claymore
		[18] = { itemID = 51938, "=ds=#h1#" }; --Bone Warden's Splitter
		[19] = { itemID = 51937, "=ds=#h1#" }; --Bonebreaker Scepter
	};
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[1] = { itemID = 50613, "=ds=#s10#" }; --Crushing Coldwraith Belt
		[2] = { itemID = 50615, "=ds=#s9#" }; --Handguards of Winter's Respite
		[3] = { itemID = 50607, "=ds=#s12#" }; --Frostbitten Fur Boots
		[4] = { itemID = 50605, "=ds=#s1#" }; --Snowserpent Mail Helm
		[5] = { itemID = 50617, "=ds=#s3#" }; --Rusted Bonespike Pauldrons
		[6] = { itemID = 50606, "=ds=#s5#" }; --Gendarme's Cuirass
		[7] = { itemID = 50611, "=ds=#s8#" }; --Bracers of Dark Reckoning
		[8] = { itemID = 50612, "=ds=#s11#" }; --Legguards of Lost Hope
		[10] = { itemID = 50609, "=ds=#s2#" }; --Bone Sentinel's Amulet
		[11] = { itemID = 50604, "=ds=#s13#" }; --Band of the Bone Colossus
		[12] = { itemID = 50614, "=ds=#s13#" }; --Loop of the Endless Labyrinth
		[13] = { itemID = 50610, "=ds=#s13#" }; --Marrowgar's Frigid Eye
		[16] = { itemID = 50608, "=ds=#h3#" }; --Frozen Bonespike
		[17] = { itemID = 50709, "=ds=#h2#" }; --Bryntroll, the Bone Arbiter
		[18] = { itemID = 50616, "=ds=#w8#" }; --Bulwark of Smouldering Steel
		[20] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[21] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[1] = { itemID = 51918, "=ds=#s8#" }; --Bracers of Dark Blessings
		[2] = { itemID = 51921, "=ds=#s9#" }; --Sister's Handshrouds
		[3] = { itemID = 51923, "=ds=#s5#" }; --Chestguard of the Frigid Noose
		[4] = { itemID = 51925, "=ds=#s10#" }; --Soulthief's Braided Belt
		[5] = { itemID = 51920, "=ds=#s12#" }; --Boots of the Frozen Seed
		[6] = { itemID = 51926, "=ds=#s9#" }; --Handgrips of Frost and Sleet
		[7] = { itemID = 51919, "=ds=#s10#" }; --Deathspeaker Disciple's Belt
		[8] = { itemID = 51924, "=ds=#s1#" }; --Deathspeaker Zealot's Helm
		[9] = { itemID = 51917, "=ds=#s5#" }; --Ghoul Commander's Cuirass
		[16] = { itemID = 50343, "=ds=#s14#" }; --Whispering Fanged Skull
		[17] = { itemID = 51922, "=ds=#s15#" }; --Scourgelord's Baton
		[19] = { itemID = 51927, "=ds=#w2#" }; --Njordnar Bone Bow
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[1] = { itemID = 50643, "=ds=#s3#" }; --Shoulders of Mercy Killing
		[2] = { itemID = 50651, "=ds=#s8#" }; --The Lady's Brittle Bracers
		[3] = { itemID = 50646, "=ds=#s3#" }; --Cultist's Bloodsoaked Spaulders
		[4] = { itemID = 50649, "=ds=#s5#" }; --Deathwhisper Chestpiece
		[5] = { itemID = 50645, "=ds=#s11#" }; --Leggings of Northern Lights
		[6] = { itemID = 50652, "=ds=#s12#" }; --Necrophotic Greaves
		[7] = { itemID = 50640, "=ds=#s1#" }; --Broken Ram Skull Helm
		[8] = { itemID = 50650, "=ds=#s9#" }; --Fallen Lord's Handguards
		[9] = { itemID = 50639, "=ds=#s12#" }; --Blood-Soaked Saronite Stompers
		[11] = { itemID = 50647, "=ds=#s2#" }; --Ahn'kahar Onyx Neckguard
		[12] = { itemID = 50642, "=ds=#s13#" }; --Juggernaut Band
		[13] = { itemID = 50644, "=ds=#s13#" }; --Ring of Maddening Whispers
		[16] = { itemID = 50641, "=ds=#h1#" }; --Heartpierce
		[17] = { itemID = 50648, "=ds=#w9#" }; --Nibelung
		[18] = { itemID = 50638, "=ds=#w2#" }; --Zod's Repeating Longbow
		[20] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[21] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[1] = { itemID = 51912, "=ds=#s4#" }; --Saronite Gargoyle Cloak
		[2] = { itemID = 51908, "=ds=#s10#" }; --Cord of Dark Suffering
		[3] = { itemID = 51906, "=ds=#s1#" }; --Ice-Reinforced Vrykul Helm
		[4] = { itemID = 51911, "=ds=#s3#" }; --Pauldrons of Lost Hope
		[5] = { itemID = 51914, "=ds=#s8#" }; --Icecrown Rampart Bracers
		[6] = { itemID = 51907, "=ds=#s8#" }; --Bracers of Pale Illumination
		[7] = { itemID = 51915, "=ds=#s12#" }; --Bone Drake's Enameled Boots
		[9] = { itemID = 51913, "=ds=#s13#" }; --Abomination's Bloody Ring
		[10] = { itemID = 50345, "=ds=#s14#" }; --Muradin's Spyglass
		[16] = { itemID = 51910, "=ds=#h3#" }; --Midnight Sun
		[17] = { itemID = 51916, "=ds=#h1#" }; --Frost Giant's Cleaver
		[18] = { itemID = 51909, "=ds=#w8#" }; --Neverending Winter
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[1] = { itemID = 50653, "=ds=#s4#" }; --Shadowvault Slayer's Cloak
		[2] = { itemID = 50661, "=ds=#s1#" }; --Corp'rethar Ceremonial Crown
		[3] = { itemID = 50663, "=ds=#s9#" }; --Gunship Captain's Mittens
		[4] = { itemID = 50656, "=ds=#s5#" }; --Ikfirus's Sack of Wonder
		[5] = { itemID = 50665, "=ds=#s12#" }; --Boots of Unnatural Growth
		[6] = { itemID = 50655, "=ds=#s8#" }; --Scourge Hunter's Vambraces
		[7] = { itemID = 50660, "=ds=#s3#" }; --Boneguard Commander's Pauldrons
		[8] = { itemID = 50659, "=ds=#s8#" }; --Polar Bear Claw Bracers
		[9] = { itemID = 50667, "=ds=#s10#" }; --Waistband of Righteous Fury
		[11] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[12] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 50658, "=ds=#s2#" }; --Amulet of the Silent Eulogy
		[17] = { itemID = 50664, "=ds=#s13#" }; --Ring of Rapid Ascent
		[18] = { itemID = 50657, "=ds=#s13#" }; --Skeleton Lord's Circle
		[19] = { itemID = 50366, "=ds=#s14#" }; --Althor's Abacus
		[20] = { itemID = 50349, "=ds=#s14#" }; --Corpse Tongue Coin
		[22] = { itemID = 50654, "=ds=#h1#" }; --Scourgeborne Waraxe
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[1] = { itemID = 51896, "=ds=#s1#" }; --Thaumaturge's Crackling Cowl
		[2] = { itemID = 51899, "=ds=#s12#" }; --Icecrown Spire Sandals
		[3] = { itemID = 51904, "=ds=#s9#" }; --Scourge Stranglers
		[4] = { itemID = 51897, "=ds=#s11#" }; --Leggings of Unrelenting Blood
		[5] = { itemID = 51903, "=ds=#s5#" }; --Hauberk of a Thousand Cuts
		[6] = { itemID = 51902, "=ds=#s5#" }; --Blade-Scored Carapace
		[7] = { itemID = 51901, "=ds=#s8#" }; --Gargoyle Spit Bracers
		[8] = { itemID = 51895, "=ds=#s11#" }; --Deathforged Legplates
		[10] = { itemID = 51894, "=ds=#s2#" }; --Soulcleave Pendant
		[11] = { itemID = 51900, "=ds=#s13#" }; --Saurfang's Cold-Forged Band
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 51905, "=ds=#h2#" }; --Ramaladni's Blade of Culling
		[21] = { itemID = 51898, "=ds=#w9#" }; --Mag'hari Chieftain's Staff
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[1] = { itemID = 50668, "=ds=#s4#" }; --Greatcloak of the Turned Champion
		[2] = { itemID = 50670, "=ds=#s8#" }; --Toskk's Maximized Wristguards
		[3] = { itemID = 50671, "=ds=#s10#" }; --Belt of the Blood Nova
		[4] = { itemID = 50363, "=ds=#s14#" }; --Deathbringer's Will
		[5] = { itemID = 50672, "=ds=#h1#" }; --Bloodvenom Blade
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52030, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52029, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52028, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[21] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[22] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Festergut"];
		[1] = { itemID = 51888, "=ds=#s4#" }; --Cloak of Many Skins
		[2] = { itemID = 51883, "=ds=#s3#" }; --Bloodstained Surgeon's Shoulderguards
		[3] = { itemID = 51882, "=ds=#s11#" }; --Kilt of Untreated Wounds
		[4] = { itemID = 51885, "=ds=#s8#" }; --Wrists of Septic Shock
		[5] = { itemID = 51889, "=ds=#s11#" }; --Plague-Soaked Leather Leggings
		[6] = { itemID = 51891, "=ds=#s12#" }; --Taldron's Long Neglected Boots
		[7] = { itemID = 51886, "=ds=#s9#" }; --Festergut's Gaseous Gloves
		[8] = { itemID = 51892, "=ds=#s9#" }; --Festering Fingerguards
		[16] = { itemID = 51890, "=ds=#s2#" }; --Precious's Putrid Collar
		[17] = { itemID = 51884, "=ds=#s13#" }; --Signet of Putrefaction
		[19] = { itemID = 51893, "=ds=#h1#" }; --Gutbuster
		[20] = { itemID = 51887, "=ds=#w9#" }; --Abracadaver
	};
	{
		Name = BabbleBoss["Festergut"];
		[1] = { itemID = 50702, "=ds=#s10#" }; --Lingering Illness
		[2] = { itemID = 50694, "=ds=#s11#" }; --Plaguebringer's Stained Pants
		[3] = { itemID = 50699, "=ds=#s12#" }; --Plague Scientist's Boots
		[4] = { itemID = 50697, "=ds=#s11#" }; --Gangrenous Leggings
		[5] = { itemID = 50696, "=ds=#s11#" }; --Leather of Stitched Scourge Parts
		[6] = { itemID = 50698, "=ds=#s3#" }; --Horrific Flesh Epaulets
		[7] = { itemID = 50689, "=ds=#s5#" }; --Carapace of Forgotten Kings
		[8] = { itemID = 50703, "=ds=#s9#" }; --Unclean Surgical Gloves
		[9] = { itemID = 50688, "=ds=#s10#" }; --Nerub'ar Stalker's Cord
		[10] = { itemID = 50701, "=ds=#s1#" }; --Faceplate of the Forgotten
		[11] = { itemID = 50690, "=ds=#s9#" }; --Fleshrending Gauntlets
		[12] = { itemID = 50691, "=ds=#s10#" }; --Belt of Broken Bones
		[16] = { itemID = 50700, "=ds=#s2#" }; --Holiday's Grace
		[17] = { itemID = 50693, "=ds=#s13#" }; --Might of Blight
		[19] = { itemID = 50692, "=ds=#h3#" }; --Black Bruise
		[20] = { itemID = 50695, "=ds=#w9#" }; --Distant Land
		[22] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[23] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Rotface"];
		[1] = { itemID = 51872, "=ds=#s8#" }; --Ether-Soaked Bracers
		[2] = { itemID = 51874, "=ds=#s9#" }; --Gloves of Broken Fingers
		[3] = { itemID = 51870, "=ds=#s5#" }; --Chestguard of the Failed Experiment
		[4] = { itemID = 51877, "=ds=#s1#" }; --Taldron's Short-Sighted Helm
		[5] = { itemID = 51873, "=ds=#s12#" }; --Shuffling Shoes
		[6] = { itemID = 51879, "=ds=#s10#" }; --Flesh-Shaper's Gurney Strap
		[8] = { itemID = 51871, "=ds=#s2#" }; --Choker of Filthy Diamonds
		[9] = { itemID = 51878, "=ds=#s13#" }; --Rotface's Rupturing Ring
		[16] = { itemID = 51876, "=ds=#h3#" }; --Abomination Knuckles
		[17] = { itemID = 51875, "=ds=#h3#" }; --Lockjaw
		[18] = { itemID = 51881, "=ds=#w9#" }; --Shaft of Glacial Ice
		[19] = { itemID = 51880, "=ds=#w11#" }; --Gluth's Fetching Knife
	};
	{
		Name = BabbleBoss["Rotface"];
		[1] = { itemID = 50677, "=ds=#s4#" }; --Winding Sheet
		[2] = { itemID = 50686, "=ds=#s8#" }; --Death Surgeon's Sleeves
		[3] = { itemID = 50679, "=ds=#s1#" }; --Helm of the Elder Moon
		[4] = { itemID = 50675, "=ds=#s9#" }; --Aldriana's Gloves of Secrecy
		[5] = { itemID = 50673, "=ds=#s3#" }; --Dual-Bladed Pauldrons
		[6] = { itemID = 50687, "=ds=#s8#" }; --Bloodsunder's Bracers
		[7] = { itemID = 50674, "=ds=#s3#" }; --Raging Behemoth's Shoulderplates
		[8] = { itemID = 50681, "=ds=#s5#" }; --Blightborne Warplate
		[9] = { itemID = 50680, "=ds=#s5#" }; --Rot-Resistant Breastplate
		[11] = { itemID = 50682, "=ds=#s2#" }; --Bile-Encrusted Medallion
		[12] = { itemID = 50678, "=ds=#s13#" }; --Seal of Many Mouths
		[13] = { itemID = 50348, "=ds=#s14#" }; --Dislodged Foreign Object
		[16] = { itemID = 50685, "=ds=#h3#" }; --Trauma
		[17] = { itemID = 50676, "=ds=#h1#" }; --Rib Spreader
		[18] = { itemID = 50684, "=ds=#w12#" }; --Corpse-Impaling Spike
		[20] = { itemID = 50231, "=ds=#m3#" }; --Rotface's Acidic Blood
		[22] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[23] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[1] = { itemID = 51859, "=ds=#s3#" }; --Shoulders of Ruinous Senility
		[2] = { itemID = 51862, "=ds=#s10#" }; --Cauterized Cord
		[3] = { itemID = 51866, "=ds=#s1#" }; --Discarded Bag of Entrails
		[4] = { itemID = 51864, "=ds=#s3#" }; --Shoulderpads of the Morbid Ritual
		[5] = { itemID = 51860, "=ds=#s11#" }; --Rippling Flesh Kilt
		[6] = { itemID = 51865, "=ds=#s3#" }; --Scalpel-Sharpening Shoulderguards
		[7] = { itemID = 51861, "=ds=#s5#" }; --Chestplate of Septic Stitches
		[9] = { itemID = 51867, "=ds=#s2#" }; --Infected Choker
		[10] = { itemID = 51863, "=ds=#s2#" }; --Pendant of Split Veins
		[11] = { itemID = 50344, "=ds=#s14#" }; --Unidentifiable Organ
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 51868, "=ds=#h1#" }; --Flesh-Carving Scalpel
		[21] = { itemID = 51869, "=ds=#h1#" }; --The Facelifter
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[1] = { itemID = 50707, "=ds=#s10#" }; --Astrylian's Sutured Cinch
		[2] = { itemID = 50705, "=ds=#s10#" }; --Professor's Bloodied Smock
		[3] = { itemID = 50706, "=ds=#s14#" }; --Tiny Abomination in a Jar
		[4] = { itemID = 50708, "=ds=#h1#" }; --Last Word
		[5] = { itemID = 50704, "=ds=#h1#" }; --Rigormortis
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52030, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52029, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52028, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[21] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[22] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[1] = { itemID = 51848, "=ds=#s4#" }; --Heartsick Mender's Cape
		[2] = { itemID = 51851, "=ds=#s5#" }; --Bloodsoul Raiment
		[3] = { itemID = 51850, "=ds=#s12#" }; --Pale Corpse Boots
		[4] = { itemID = 51856, "=ds=#s12#" }; --Taldaram's Soft Slippers
		[5] = { itemID = 51853, "=ds=#s10#" }; --Blood-Drinker's Girdle
		[6] = { itemID = 51847, "=ds=#s3#" }; --Spaulders of the Blood Princes
		[7] = { itemID = 51854, "=ds=#s11#" }; --Battle-Maiden's Legguards
		[9] = { itemID = 51849, "=ds=#s13#" }; --Cerise Coiled Ring
		[10] = { itemID = 51855, "=ds=#s13#" }; --Thrice Fanged Signet
		[16] = { itemID = 51858, "=ds=#h1#" }; --Soulbreaker
		[17] = { itemID = 51857, "=ds=#w7#" }; --Hersir's Greatspear
		[18] = { itemID = 51852, "=ds=#w12#" }; --Wand of Ruby Claret
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[1] = { itemID = 50718, "=ds=#s4#" }; --Royal Crimson Cloak
		[2] = { itemID = 50717, "=ds=#s5#" }; --Sanguine Silk Robes
		[3] = { itemID = 50722, "=ds=#s9#" }; --San'layn Ritualist Gloves
		[4] = { itemID = 50713, "=ds=#s1#" }; --Geistlord's Punishment Sack
		[5] = { itemID = 50715, "=ds=#s3#" }; --Shoulders of Frost-Tipped Thorns
		[6] = { itemID = 50723, "=ds=#s5#" }; --Mail of Crimson Coins
		[7] = { itemID = 50711, "=ds=#s12#" }; --Treads of the Wasteland
		[8] = { itemID = 50712, "=ds=#s1#" }; --Landsoul's Horned Greathelm
		[9] = { itemID = 50716, "=ds=#s9#" }; --Taldaram's Plated Fists
		[10] = { itemID = 50721, "=ds=#s8#" }; --Crypt Keeper's Bracers
		[16] = { itemID = 50720, "=ds=#s13#" }; --Incarnadine Band of Mending
		[17] = { itemID = 50714, "=ds=#s13#" }; --Valanar's Other Signet Ring
		[18] = { itemID = 50719, "=ds=#s15#" }; --Shadow Silk Spindle
		[20] = { itemID = 50710, "=ds=#h4#" }; --Keleseth's Seducer
		[21] = { itemID = 50603, "=ds=#h2#" }; --Cryptmaker
		[23] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[24] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[1] = { itemID = 51837, "=ds=#s1#" }; --Cowl of Malefic Repose
		[2] = { itemID = 51839, "=ds=#s3#" }; --Shoulderpads of the Searing Kiss
		[3] = { itemID = 51841, "=ds=#s11#" }; --Ivory-Inlaid Leggings
		[4] = { itemID = 51840, "=ds=#s5#" }; --Chestguard of Siphoned Elements
		[5] = { itemID = 51844, "=ds=#s9#" }; --Throatrender Handguards
		[6] = { itemID = 51835, "=ds=#s9#" }; --Veincrusher Gauntlets
		[7] = { itemID = 51836, "=ds=#s10#" }; --Tightening Waistband
		[9] = { itemID = 51842, "=ds=#s2#" }; --Collar of Haughty Disdain
		[10] = { itemID = 51843, "=ds=#s13#" }; --Seal of the Twilight Queen
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 51846, "=ds=#h1#" }; --Bloodsipper
		[21] = { itemID = 51845, "=ds=#w5#" }; --Stakethrower
		[22] = { itemID = 51838, "=ds=#w12#" }; --Lana'thel's Bloody Nail
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[1] = { itemID = 50724, "=ds=#s2#" }; --Blood Queen's Crimson Choker
		[2] = { itemID = 50728, "=ds=#s2#" }; --Lana'thel's Chain of Flagellation
		[3] = { itemID = 50726, "=ds=#s14#" }; --Bauble of True Blood
		[4] = { itemID = 50727, "=ds=#w7#" }; --Bloodfall
		[5] = { itemID = 50725, "=ds=#w9#" }; --Dying Light
		[6] = { itemID = 50729, "=ds=#w8#" }; --Icecrown Glacial Wall
		[8] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[9] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52030, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52029, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52028, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[21] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[22] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[1] = { itemID = 51826, "=ds=#s4#" }; --Lich Wrappings
		[2] = { itemID = 51823, "=ds=#s11#" }; --Leggings of the Refracted Mind
		[3] = { itemID = 51825, "=ds=#s1#" }; --Sister Svalna's Spangenhelm
		[4] = { itemID = 51830, "=ds=#s3#" }; --Skinned Whelp Shoulders
		[5] = { itemID = 51827, "=ds=#s9#" }; --Stormbringer Gloves
		[6] = { itemID = 51829, "=ds=#s11#" }; --Legguards of the Twisted Dream
		[7] = { itemID = 51824, "=ds=#s3#" }; --Emerald Saint's Spaulders
		[8] = { itemID = 51832, "=ds=#s8#" }; --Taiga Bindings
		[9] = { itemID = 51831, "=ds=#s10#" }; --Ironrope Belt of Ymirjar
		[16] = { itemID = 51833, "=ds=#h2#" }; --Oxheart
		[17] = { itemID = 51828, "=ds=#w9#" }; --Sister Svalna's Aether Staff
		[18] = { itemID = 51834, "=ds=#w5#" }; --Dreamhunter's Carbine
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[1] = { itemID = 50628, "=ds=#s4#" }; --Frostbinder's Shredded Cape
		[2] = { itemID = 50629, "=ds=#s5#" }; --Robe of the Waking Nightmare
		[3] = { itemID = 50630, "=ds=#s8#" }; --Bracers of Eternal Dreaming
		[4] = { itemID = 50626, "=ds=#s1#" }; --Snowstorm Helm
		[5] = { itemID = 50619, "=ds=#s9#" }; --Anub'ar Stalker's Gloves
		[6] = { itemID = 50620, "=ds=#s10#" }; --Coldwraith Links
		[7] = { itemID = 50623, "=ds=#s11#" }; --Leggings of Dying Candles
		[8] = { itemID = 50624, "=ds=#s11#" }; --Scourge Reaver's Legplates
		[9] = { itemID = 50632, "=ds=#s12#" }; --Boots of the Funeral March
		[10] = { itemID = 50625, "=ds=#s12#" }; --Grinning Skull Greatboots
		[16] = { itemID = 50627, "=ds=#s2#" }; --Noose of Malachite
		[17] = { itemID = 50622, "=ds=#s13#" }; --Devium's Eternally Cold Ring
		[18] = { itemID = 50618, "=ds=#s13#" }; --Frostbrood Sapphire Ring
		[20] = { itemID = 50621, "=ds=#h1#" }; --Lungbreaker
		[21] = { itemID = 50631, "=ds=#w9#" }; --Nightmare Ender
		[23] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[24] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[1] = { itemID = 51813, "=ds=#s5#" }; --Robes of Azure Downfall
		[2] = { itemID = 51820, "=ds=#s8#" }; --Vambraces of the Frost Wyrm Queen
		[3] = { itemID = 51814, "=ds=#s9#" }; --Icicle Shapers
		[4] = { itemID = 51811, "=ds=#s3#" }; --Shoulderguards of Crystalline Bone
		[5] = { itemID = 51818, "=ds=#s12#" }; --Wyrmwing Treads
		[6] = { itemID = 51821, "=ds=#s10#" }; --Etched Dragonbone Girdle
		[7] = { itemID = 51817, "=ds=#s11#" }; --Legplates of Aetheric Strife
		[8] = { itemID = 51816, "=ds=#s12#" }; --Scourge Fanged Stompers
		[10] = { itemID = 51822, "=ds=#s2#" }; --Rimetooth Pendant
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 51819, "=ds=#h4#" }; --Splintershard
		[21] = { itemID = 51815, "=ds=#h3#" }; --Bleak Coldarra Carver
		[22] = { itemID = 51812, "=ds=#w8#" }; --Lost Pavise of the Blue Flight
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[1] = { itemID = 50633, "=ds=#s2#" }; --Sindragosa's Cruel Claw
		[2] = { itemID = 50636, "=ds=#s13#" }; --Memory of Malygos
		[3] = { itemID = 50365, "=ds=#s14#" }; --Phylactery of the Nameless Lich
		[4] = { itemID = 50364, "=ds=#s14#" }; --Sindragosa's Flawless Fang
		[5] = { itemID = 50635, "=ds=#s15#" }; --Sundial of Eternal Dusk
		[7] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[8] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[9] = { itemID = 51026, "=ds=#m3#" }; --Crystalline Essence of Sindragosa
		[16] = { itemID = 52030, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52029, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52028, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[21] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[22] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 51941, "=ds=#h3#" }; --Pugius, Fist of Defiance
		[2] = { itemID = 51939, "=ds=#h3#" }; --Tel'thas, Dagger of the Blood King
		[3] = { itemID = 51942, "=ds=#h1#" }; --Stormfury, Black Blade of the Betrayer
		[4] = { itemID = 51947, "=ds=#h1#" }; --Troggbane, Axe of the Frostborne King
		[5] = { itemID = 51944, "=ds=#h3#" }; --Valius, Gavel of the Lightbringer
		[6] = { itemID = 51946, "=ds=#h2#" }; --Warmace of Menethil
		[7] = { itemID = 51943, "=ds=#w9#" }; --Halion, Staff of Forgotten Love
		[8] = { itemID = 51945, "=ds=#w9#" }; --Tainted Twig of Nordrassil
		[9] = { itemID = 51940, "=ds=#w3#" }; --Windrunner's Heartseeker
		[16] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["The Lich King"];
		[1] = { itemID = 50736, "=ds=#h1#" }; --Heaven's Fall, Kryss of a Thousand Lies
		[2] = { itemID = 50732, "=ds=#h3#" }; --Bloodsurge, Kel'Thuzad's Blade of Agony
		[3] = { itemID = 50730, "=ds=#h2#" }; --Glorenzelg, High-Blade of the Silver Hand
		[4] = { itemID = 50737, "=ds=#h1#" }; --Havoc's Call, Blade of Lordaeron Kings
		[5] = { itemID = 50734, "=ds=#h3#" }; --Royal Scepter of Terenas II
		[6] = { itemID = 50738, "=ds=#h1#" }; --Mithrios, Bronzebeard's Legacy
		[7] = { itemID = 50735, "=ds=#w7#" }; --Oathbinder, Charge of the Ranger-General
		[8] = { itemID = 50731, "=ds=#w9#" }; --Archus, Greatstaff of Antonidas
		[9] = { itemID = 50733, "=ds=#w3#" }; --Fal'inrush, Defender of Quel'thalas
		[10] = { itemID = 50818, "=ds=#e12#" }; --Invincible's Reins
		[12] = { itemID = 50274, "=ds=#m3#" }; --Shadowfrost Shard
		[13] = { itemID = 49908, "=ds=#e8#" }; --Primordial Saronite
		[16] = { itemID = 52030, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52029, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[18] = { itemID = 52028, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 52027, "=ds=#e15#" }; --Conqueror's Mark of Sanctification
		[21] = { itemID = 52026, "=ds=#e15#" }; --Protector's Mark of Sanctification
		[22] = { itemID = 52025, "=ds=#e15#" }; --Vanquisher's Mark of Sanctification
	};
};

--------------------
--- Ruby Sanctum ---
--------------------

AtlasLoot_Data["Halion"] = {
	Name = BabbleZone["The Ruby Sanctum"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Halion"];
		[1] = { itemID = 53115, "=ds=#s4#" }; --Abduction's Cover
		[2] = { itemID = 53118, "=ds=#s10#" }; --Misbegotten Belt
		[3] = { itemID = 53114, "=ds=#s5#" }; --Gloaming Sark
		[4] = { itemID = 53117, "=ds=#s9#" }; --Changeling Gloves
		[5] = { itemID = 53113, "=ds=#s3#" }; --Twilight Scale Shoulders
		[6] = { itemID = 53119, "=ds=#s12#" }; --Boots of Divided Being
		[7] = { itemID = 53112, "=ds=#s8#" }; --Bracers of the Heir
		[8] = { itemID = 53121, "=ds=#s10#" }; --Surrogate Belt
		[9] = { itemID = 53111, "=ds=#s12#" }; --Scion's Treads
		[16] = { itemID = 53103, "=ds=#s2#" }; --Baltharus' Gift
		[17] = { itemID = 53116, "=ds=#s13#" }; --Saviana's Tribute
		[18] = { itemID = 53110, "=ds=#s13#" }; --Zarithrian's Offering
	};
	{
		Name = BabbleBoss["Halion"];
		[1] = { itemID = 53489, "=ds=#s4#" }; --Cloak of Burning Dusk
		[2] = { itemID = 53486, "=ds=#s8#" }; --Bracers of Fiery Night
		[3] = { itemID = 53134, "=ds=#s8#" }; --Phaseshifter's Bracers
		[4] = { itemID = 53126, "=ds=#s10#" }; --Umbrage Armbands
		[5] = { itemID = 53488, "=ds=#s10#" }; --Split Shape Belt
		[6] = { itemID = 53127, "=ds=#s12#" }; --Returning Footfalls
		[7] = { itemID = 53125, "=ds=#s12#" }; --Apocalypse's Advance
		[8] = { itemID = 53487, "=ds=#s12#" }; --Foreshadow Steps
		[9] = { itemID = 53129, "=ds=#s12#" }; --Treads of Impending Resurrection
		[16] = { itemID = 53132, "=ds=#s2#" }; --Penumbra Pendant
		[17] = { itemID = 53490, "=ds=#s13#" }; --Ring of Phased Regeneration
		[18] = { itemID = 53133, "=ds=#s13#" }; --Signet of Twilight
		[19] = { itemID = 54572, "=ds=#s14#" }; --Charred Twilight Scale
		[20] = { itemID = 54573, "=ds=#s14#" }; --Glowing Twilight Scale
		[21] = { itemID = 54571, "=ds=#s14#" }; --Petrified Twilight Scale
		[22] = { itemID = 54569, "=ds=#s14#" }; --Sharpened Twilight Scale
	};
	{
		Name = BabbleBoss["Halion"];
		[1] = { itemID = 54556, "=ds=#s4#" }; --Abduction's Cover
		[2] = { itemID = 54562, "=ds=#s10#" }; --Misbegotten Belt
		[3] = { itemID = 54561, "=ds=#s5#" }; --Gloaming Sark
		[4] = { itemID = 54560, "=ds=#s9#" }; --Changeling Gloves
		[5] = { itemID = 54566, "=ds=#s3#" }; --Twilight Scale Shoulders
		[6] = { itemID = 54558, "=ds=#s12#" }; --Boots of Divided Being
		[7] = { itemID = 54559, "=ds=#s8#" }; --Bracers of the Heir
		[8] = { itemID = 54565, "=ds=#s10#" }; --Surrogate Belt
		[9] = { itemID = 54564, "=ds=#s12#" }; --Scion's Treads
		[16] = { itemID = 54557, "=ds=#s2#" }; --Baltharus' Gift
		[17] = { itemID = 54563, "=ds=#s13#" }; --Saviana's Tribute
		[18] = { itemID = 54567, "=ds=#s13#" }; --Zarithrian's Offering
	};
	{
		Name = BabbleBoss["Halion"];
		[1] = { itemID = 54583, "=ds=#s4#" }; --Cloak of Burning Dusk
		[2] = { itemID = 54582, "=ds=#s8#" }; --Bracers of Fiery Night
		[3] = { itemID = 54584, "=ds=#s8#" }; --Phaseshifter's Bracers
		[4] = { itemID = 54580, "=ds=#s10#" }; --Umbrage Armbands
		[5] = { itemID = 54587, "=ds=#s10#" }; --Split Shape Belt
		[6] = { itemID = 54577, "=ds=#s12#" }; --Returning Footfalls
		[7] = { itemID = 54578, "=ds=#s12#" }; --Apocalypse's Advance
		[8] = { itemID = 54586, "=ds=#s12#" }; --Foreshadow Steps
		[9] = { itemID = 54579, "=ds=#s12#" }; --Treads of Impending Resurrection
		[16] = { itemID = 54581, "=ds=#s2#" }; --Penumbra Pendant
		[17] = { itemID = 54585, "=ds=#s13#" }; --Ring of Phased Regeneration
		[18] = { itemID = 54576, "=ds=#s13#" }; --Signet of Twilight
		[19] = { itemID = 54588, "=ds=#s14#" }; --Charred Twilight Scale
		[20] = { itemID = 54589, "=ds=#s14#" }; --Glowing Twilight Scale
		[21] = { itemID = 54591, "=ds=#s14#" }; --Petrified Twilight Scale
		[22] = { itemID = 54590, "=ds=#s14#" }; --Sharpened Twilight Scale
	};
};
----------------
--- Factions ---
----------------

-------------------------
--- Alliance Vanguard ---
-------------------------

AtlasLoot_Data["AllianceVanguard"] = {
	Name = BabbleFaction["Alliance Vanguard"];
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 38459, "=ds=#s15#" }; --Orb of the Eastern Kingdoms
		[2] = { itemID = 38465, "=ds=#h1#" }; --Vanguard Soldier's Dagger
		[3] = { itemID = 38455, "=ds=#h1#" }; --Hammer of the Alliance Vanguard
		[4] = { itemID = 38463, "=ds=#w8#" }; --Lordaeron's Resolve
		[5] = { itemID = 38453, "=ds=#w8#" }; --Shield of the Lion-hearted
		[6] = { itemID = 38457, "=ds=#w5#" }; --Sawed-off Hand Cannon
		[7] = { itemID = 38464, "=ds=#w12#" }; --Gnomish Magician's Quill
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44503, "=ds=#p5# (450)" }; --Schematic: Mekgineer's Chopper
		[2] = { itemID = 44937, "=ds=#p2# (450)" }; --Plans: Titanium Plating
		[3] = { itemID = 44701, desc = "=q7=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#" };
	};
};
----------------------
--- Argent Crusade ---
----------------------

AtlasLoot_Data["ArgentCrusade"] = {
	Name = BabbleFaction["Argent Crusade"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 43154, "=ds=#s7#" }; --Tabard of the Argent Crusade
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44216, "=ds=#s4#" }; --Cloak of Holy Extermination
		[2] = { itemID = 44240, "=ds=#s11#" }; --Special Issue Legplates
		[3] = { itemID = 44239, "=ds=#s11#" }; --Standard Issue Legguards
		[4] = { itemID = 44139, desc = "=q7=Arcanum of the Fleeing Shadow", "=ds=#s1# #e17#" };
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44248, "=ds=#s1#" }; --Battle Mender's Helm
		[2] = { itemID = 44247, "=ds=#s1#" }; --Fang-Deflecting Faceguard
		[3] = { itemID = 44244, "=ds=#h2#" }; --Argent Skeleton Crusher
		[4] = { itemID = 44245, "=ds=#w5#" }; --Zombie Sweeper Shotgun
		[5] = { itemID = 44214, "=ds=#w12#" }; --Purifying Torch
		[6] = { itemID = 41726, "=ds=#p12# (390)" }; --Design: Guardian's Twilight Opal
		[7] = { itemID = 44150, "=ds=#s1# #e17#" }; --Arcanum of the Stalwart Protector
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44297, "=ds=#s12#" }; --Boots of the Neverending Path
		[2] = { itemID = 44295, "=ds=#s5#" }; --Polished Regimental Hauberk
		[3] = { itemID = 44296, "=ds=#s1#" }; --Helm of Purified Thoughts
		[4] = { itemID = 44283, "=ds=#s13#" }; --Signet of Hopeful Light
		[5] = { itemID = 42187, "=ds=#p8# (430)" }; --Pattern: Brilliant Spellthread
	};
};

-------------------------
--- Frenzyheart Tribe ---
-------------------------

AtlasLoot_Data["FrenzyheartTribe"] = {
	Name = BabbleFaction["Frenzyheart Tribe"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 41561, "=ds=#p12# 350" }; --Design: Reckless Huge Citrine
		[2] = { itemID = 44064, "=ds=" }; --Nepeta Leaf
		[3] = { itemID = 44072, "=ds=#e3#" }; --Roasted Mystery Beast
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44719, "=ds=" }; --Frenzyheart Brew
		[2] = { itemID = 39671, "=ds=#e2#" }; --Resurgent Healing Potion
		[3] = { itemID = 40067, "=ds=#e2#" }; --Icy Mana Potion
		[4] = { itemID = 40087, "=ds=#e2#" }; --Powerful Rejuvenation Potion
		[5] = { itemID = 44716, "=ds=#e4#" }; --Mysterious Fermented Liquid
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44116, "=ds=#s9#" }; --Muddied Crimson Gloves
		[2] = { itemID = 44117, "=ds=#s11#" }; --Azure Strappy Pants
		[3] = { itemID = 44122, "=ds=#s11#" }; --Scavenged Feathery Leggings
		[4] = { itemID = 44120, "=ds=#s9#" }; --Giant-Sized Gauntlets
		[5] = { itemID = 44121, "=ds=#s9#" }; --Sparkly Shiny Gloves
		[6] = { itemID = 44123, "=ds=#s11#" }; --Discarded Titanium Legplates
		[7] = { itemID = 44118, "=ds=#w11#" }; --Stolen Vrykul Harpoon
		[8] = { itemID = 41723, "=ds=#p12# 390" }; --Design: Jagged Forest Emerald
		[9] = { itemID = 44717, "=ds=" }; --Disgusting Jar
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44073, "=ds=#s14#" }; --Frenzyheart Insignia of Fury
	};
};

----------------------------
--- The Horde Expedition ---
----------------------------

AtlasLoot_Data["HordeExpedition"] = {
	Name = BabbleFaction["Horde Expedition"];
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 38458, "=ds=#s15#" }; --Darkspear Orb
		[2] = { itemID = 38461, "=ds=#h1#" }; --Warsong Shanker
		[3] = { itemID = 38454, "=ds=#h1#" }; --Warsong Punisher
		[4] = { itemID = 38452, "=ds=#w8#" }; --Bulwark of the Warchief
		[5] = { itemID = 38462, "=ds=#w8#" }; --Warsong Stormshield
		[6] = { itemID = 38456, "=ds=#w2#" }; --Sin'dorei Recurve Bow
		[7] = { itemID = 38460, "=ds=#w12#" }; --Charged Wand of the Cleft
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44502, "=ds=#p5# (450)" }; --Schematic: Mechano-hog
		[2] = { itemID = 44938, "=ds=#p2# (450)" }; --Plans: Titanium Plating
		[3] = { itemID = 44702, desc = "=q7=Arcanum of the Savage Gladiator", "=ds=#s1# #e17#" };
	};
};

-----------------
--- Kirin Tor ---
-----------------

AtlasLoot_Data["KirinTor"] = {
	Name = BabbleFaction["Kirin Tor"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 43157, "=ds=#s7#" }; --Tabard of the Kirin Tor
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44167, "=ds=#s4#" }; --Shroud of Dedicated Research
		[2] = { itemID = 44170, "=ds=#s1#" }; --Helm of the Majestic Stag
		[3] = { itemID = 44171, "=ds=#s3#" }; --Spaulders of Grounded Lightning
		[4] = { itemID = 44166, "=ds=#h1#" }; --Lightblade Rivener
		[5] = { itemID = 44141, "=ds=#s1# #e17#" }; --Arcanum of the Flame's Soul
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44179, "=ds=#s11#" }; --Mind-Expanding Leggings
		[2] = { itemID = 44176, "=ds=#s10#" }; --Girdle of the Warrior Magi
		[3] = { itemID = 44173, "=ds=#h3#" }; --Flameheart Spell Scalpel
		[4] = { itemID = 44174, "=ds=#w9#" }; --Stave of Shrouded Mysteries
		[5] = { itemID = 44159, desc = "=q7=Arcanum of Burning Mysteries", "=ds=#s1# #e17#" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44180, "=ds=#s5#" }; --Robes of Crackling Flame
		[2] = { itemID = 44181, "=ds=#s10#" }; --Ghostflicker Waistband
		[3] = { itemID = 44182, "=ds=#s12#" }; --Boots of Twinkling Stars
		[4] = { itemID = 44183, "=ds=#s9#" }; --Fireproven Gauntlets
		[5] = { itemID = 41718, "=ds=#p12# (390)" }; --Design: Runed Scarlet Ruby
		[6] = { itemID = 42188, "=ds=#p8# (430)" }; --Pattern: Sapphire Spellthread
	};
};

---------------------------------
--- Knights of the Ebon Blade ---
---------------------------------

AtlasLoot_Data["KnightsoftheEbonBlade"] = {
	Name = BabbleFaction["Knights of the Ebon Blade"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 41562, "=ds=#p12# (350)" }; --Design: Deadly Huge Citrine
		[2] = { itemID = 43155, "=ds=#s7#" }; --Tabard of the Ebon Blade
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44242, "=ds=#s4#" }; --Dark Soldier Cape
		[2] = { itemID = 44243, "=ds=#s12#" }; --Toxin-Tempered Sabatons
		[3] = { itemID = 44241, "=ds=#h4#" }; --Unholy Persuader
		[4] = { itemID = 44512, "=ds=#p7# (415)" }; --Pattern: Nerubian Reinforced Quiver
		[5] = { itemID = 44138, "=ds=#s1# #e17#" }; --Arcanum of Toxic Warding
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44256, "=ds=#s9#" }; --Sterile Flesh-Handling Gloves
		[2] = { itemID = 44258, "=ds=#s8#" }; --Wound-Binder's Wristguards
		[3] = { itemID = 44257, "=ds=#s3#" }; --Spaulders of the Black Arrow
		[4] = { itemID = 44250, "=ds=#h1#" }; --Reaper of Dark Souls
		[5] = { itemID = 44249, "=ds=#h2#" }; --Runeblade of Demonstrable Power
		[6] = { itemID = 41721, "=ds=#p12# (390)" }; --Design: Wicked Monarch Topaz
		[7] = { itemID = 44149, desc = "=q7=Arcanum of Torment", "=ds=#s1# #e17#" };
		[8] = { itemID = 42183, "=ds=#p8# (435)" }; --Pattern: Abyssal Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44302, "=ds=#s10#" }; --Belt of Dark Mending
		[2] = { itemID = 44303, "=ds=#s5#" }; --Darkheart Chestguard
		[3] = { itemID = 44305, "=ds=#s11#" }; --Kilt of Dark Mercy
		[4] = { itemID = 44306, "=ds=#s12#" }; --Death-Inured Sabatons
		[5] = { itemID = 41725, "=ds=#p12# (390)" }; --Design: Glowing Twilight Opal
	};
};

-------------------
--- The Kalu'ak ---
-------------------

AtlasLoot_Data["TheKaluak"] = {
	Name = BabbleFaction["The Kalu'ak"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 41568, "=ds=#p12# (350)" }; --Design: Seer's Dark Jade
		[2] = { itemID = 44049, "=ds=#e3#" }; --Freshly-Speared Emperor Salmon
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44061, "=ds=#s5#" }; --Pigment-Stained Robes
		[2] = { itemID = 44062, "=ds=#s5#" }; --Turtle-Minders Robe
		[3] = { itemID = 44054, "=ds=#s5#" }; --Whale-Skin Breastplate
		[4] = { itemID = 44055, "=ds=#s5#" }; --Whale-Skin Vest
		[5] = { itemID = 44059, "=ds=#s5#" }; --Cuttlefish Scale Breastplate
		[6] = { itemID = 44060, "=ds=#s5#" }; --Cuttlefish Tooth Ringmail
		[7] = { itemID = 44057, "=ds=#s5#" }; --Ivory-Reinforced Chestguard
		[8] = { itemID = 44058, "=ds=#s5#" }; --Whalebone Carapace
		[9] = { itemID = 44511, "=ds=#p7# (415)" }; --Pattern: Dragonscale Ammo Pouch
		[10] = { itemID = 41574, "=ds=#p12# (350)" }; --Design: Defender's Shadow Crystal
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44051, "=ds=#h1#" }; --Traditional Flensing Knife
		[2] = { itemID = 44052, "=ds=#h3#" }; --Totemic Purification Rod
		[3] = { itemID = 44053, "=ds=#w7#" }; --Whale-Stick Harpoon
		[4] = { itemID = 44509, "=ds=#p7# (415)" }; --Pattern: Trapper's Traveling Pack
		[5] = { itemID = 45774, "=ds=#p8# (435)" }; --Pattern: Emerald Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44050, "=ds=#e20#" }; --Mastercraft Kalu'ak Fishing Pole
		[2] = { itemID = 44723, "=ds=#e13#" }; --Nurtured Penguin Egg
	};
};

-------------------
--- The Oracles ---
-------------------

AtlasLoot_Data["TheOracles"] = {
	Name = BabbleFaction["The Oracles"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 41567, "=ds=#p12# (350)" }; --Design: Vivid Dark Jade
		[2] = { itemID = 44065, "=ds=#e2#" }; --Oracle Secret Solution
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44071, "=ds=#e3#" }; --Slow-Roasted Eel
		[2] = { itemID = 0,  desc = "INV_Egg_02", "=q6=" .. AL["Cracked Egg"] };
		[3] = { itemID = 44707, "=ds=#e12#" }; --Reins of the Green Proto-Drake
		[4] = { itemID = 39898, "=ds=#e13#" }; --Cobra Hatchling
		[5] = { itemID = 44721, "=ds=#e13#" }; --Proto-Drake Whelp
		[6] = { itemID = 39896, "=ds=#e13#" }; --Tickbird Hatchling
		[7] = { itemID = 39899, "=ds=#e13#" }; --White Tickbird Hatchling
		[8] = { itemID = 44722, "=ds=#e3#" }; --Aged Yolk
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44104, "=ds=#s10#" }; --Fishy Cinch
		[2] = { itemID = 44106, "=ds=#s10#" }; --Glitterscale Wrap
		[3] = { itemID = 44110, "=ds=#s1#" }; --Sharkjaw Cap
		[4] = { itemID = 44109, "=ds=#s1#" }; --Toothslice Helm
		[5] = { itemID = 44112, "=ds=#s3#" }; --Glimmershell Shoulder Protectors
		[6] = { itemID = 44111, "=ds=#s3#" }; --Gold Star Spaulders
		[7] = { itemID = 44108, "=ds=#w12#" }; --Shinygem Rod
		[8] = { itemID = 41724, "=ds=#p12# (390)" }; --Design: Sundered Forest Emerald
		[9] = { itemID = 39878, "=ds=" }; --Mysterious Egg
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44074, "=ds=#s14#" }; --Oracle Talisman of Ablution

	};
};

-------------------------
--- The Sons of Hodir ---
-------------------------

AtlasLoot_Data["TheSonsofHodir"] = {
	Name = BabbleFaction["The Sons of Hodir"];
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44190, "=ds=#s3#" }; --Spaulders of Frozen Knives
		[2] = { itemID = 44189, "=ds=#s10#" }; --Giant Ring Belt
		[3] = { itemID = 44510, "=ds=#p7# (415)" }; --Pattern: Mammoth Mining Bag
		[4] = { itemID = 44137, "=ds=#s1# #e17#" }; --Arcanum of the Frosty Soul
		[5] = { itemID = 44131, "=ds=#s3# #e17#" }; --Lesser Inscription of the Axe
		[6] = { itemID = 44130, "=ds=#s3# #e17#" }; --Lesser Inscription of the Crag
		[7] = { itemID = 44132, "=ds=#s3# #e17#" }; --Lesser Inscription of the Pinnacle
		[8] = { itemID = 44129, "=ds=#s3# #e17#" }; --Lesser Inscription of the Storm 
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 43958, "=ds=#e12# =ec1=#m7#" }; --Reins of the Ice Mammoth
		[2] = { itemID = 44080, "=ds=#e12# =ec1=#m6#" }; --Reins of the Ice Mammoth
		[3] = { itemID = 44194, "=ds=#s11#" }; --Giant-Friend Kilt
		[4] = { itemID = 44195, "=ds=#s3#" }; --Spaulders of the Giant Lords
		[5] = { itemID = 44193, "=ds=#h1#" }; --Broken Stalactite
		[6] = { itemID = 44192, "=ds=#h1#" }; --Stalactite Chopper
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 43961, "=ds=#e12# =ec1=#m7#" }; --Reins of the Grand Ice Mammoth
		[2] = { itemID = 44086, "=ds=#e12# =ec1=#m6#" }; --Reins of the Grand Ice Mammoth
		[3] = { itemID = 44133, desc = "=q7=Greater Inscription of the Axe", "=ds=#s3# #e17#" };
		[4] = { itemID = 44134, desc = "=q7=Greater Inscription of the Crag", "=ds=#s3# #e17#" };
		[5] = { itemID = 44136, desc = "=q7=Greater Inscription of the Pinnacle", "=ds=#s3# #e17#" };
		[6] = { itemID = 44135, desc = "=q7=Greater Inscription of the Storm ", "=ds=#s3# #e17#" };
		[7] = { itemID = 41720, "=ds=#p12# (390)" }; --Design: Smooth Autumn's Glow
		[8] = { itemID = 42184, "=ds=#p8# (445)" }; --Pattern: Glacial Bag
	};
};

-------------------------
--- Winterfin Retreat ---
-------------------------

AtlasLoot_Data["WinterfinRetreat"] = {
	Name = BabbleFaction["Winterfin Retreat"];
	{
		Name = BabbleFaction["Winterfin Retreat"];
		[1] = { itemID = 36784, "100 #winterfinclam#" }; --Siren's Tear
		[2] = { itemID = 37462, "30 #winterfinclam#" }; --Sea King's Crown
		[3] = { itemID = 37463, "30 #winterfinclam#" }; --Winterfin Patch of Honor
		[4] = { itemID = 37461, desc = "=ds=#w7#", "50 #winterfinclam#" }; --Tidebreaker Trident
		[5] = { itemID = 36783, "30 #winterfinclam#" }; --Northsea Pearl
		[6] = { itemID = 37464, desc = "=ds=#e22#", "5 #winterfinclam#" }; --Winterfin Horn of Distress
		[7] = { itemID = 37449, "5 #winterfinclam#" }; --Breath of Murloc
		[8] = { itemID = 38351, "2 #winterfinclam#" }; --Murliver Oil
		[9] = { itemID = 38350, desc = "=ds=#e4#", "1 #winterfinclam#" }; --Winterfin \"Depth Charge\"
		[10] = { itemID = 34597, "=ds=#m17#" }; --Winterfin Clam
	};
};

---------------------------
--- The Wyrmrest Accord ---
---------------------------

AtlasLoot_Data["TheWyrmrestAccord"] = {
	Name = BabbleFaction["The Wyrmrest Accord"];
	{
		Name = BabbleFaction["Friendly"];
		[1] = { itemID = 43156, "=ds=#s7#" }; --Tabard of the Wyrmrest Accord
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 44188, "=ds=#s4#" }; --Cloak of Peaceful Resolutions
		[2] = { itemID = 44196, "=ds=#s10#" }; --Sash of the Wizened Wyrm
		[3] = { itemID = 44197, "=ds=#s8#" }; --Bracers of Accorded Courtesy
		[4] = { itemID = 44187, "=ds=#h1#" }; --Fang of Truth
		[5] = { itemID = 44140, "=ds=#s1# #e17#" }; --Arcanum of the Eclipsed Moon
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 44200, "=ds=#s8#" }; --Ancestral Sinew Wristguards
		[2] = { itemID = 44198, "=ds=#s5#" }; --Breastplate of the Solemn Council
		[3] = { itemID = 44201, "=ds=#s12#" }; --Sabatons of Draconic Vigor
		[4] = { itemID = 44199, "=ds=#h3#" }; --Gavel of the Brewing Storm
		[5] = { itemID = 44152, desc = "=q7=Arcanum of Blissful Mending", "=ds=#s1# #e17#" };
		[6] = { itemID = 42185, "=ds=#p8# (440)" }; --Pattern: Mysterious Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[1] = { itemID = 44202, "=ds=#s12#" }; --Sandals of Crimson Fury
		[2] = { itemID = 44203, "=ds=#s8#" }; --Dragonfriend Bracers
		[3] = { itemID = 44204, "=ds=#s9#" }; --Grips of Fierce Pronouncements
		[4] = { itemID = 44205, "=ds=#s11#" }; --Legplates of Bloody Reprisal
		[5] = { itemID = 43955, "=ds=#e12#" }; --Reins of the Red Drake
		[6] = { itemID = 41722, "=ds=#p12# (390)" }; --Design: Glimmering Monarch Topaz
	};
};

-------------------------
--- The Ashen Verdict ---
-------------------------

AtlasLoot_Data["AshenVerdict"] = {
	Name = BabbleFaction["The Ashen Verdict"];
	{
		Name = "Rings";
		[1] = { itemID = 50375, "=ds=#s13#, =q1=#r2#" }; --Ashen Band of Courage
		[2] = { itemID = 50388, "=ds=#s13#, =q1=#r3#" }; --Ashen Band of Greater Courage
		[3] = { itemID = 50403, "=ds=#s13#, =q1=#r4#" }; --Ashen Band of Unmatched Courage
		[4] = { itemID = 50404, "=ds=#s13#, =q1=#r5#" }; --Ashen Band of Endless Courage
		[6] = { itemID = 50377, "=ds=#s13#, =q1=#r2#" }; --Ashen Band of Destruction
		[7] = { itemID = 50384, "=ds=#s13#, =q1=#r3#" }; --Ashen Band of Greater Destruction
		[8] = { itemID = 50397, "=ds=#s13#, =q1=#r4#" }; --Ashen Band of Unmatched Destruction
		[9] = { itemID = 50398, "=ds=#s13#, =q1=#r5#" }; --Ashen Band of Endless Destruction
		[11] = { itemID = 52569, "=ds=#s13#, =q1=#r2#" }; --Ashen Band of Might
		[12] = { itemID = 52570, "=ds=#s13#, =q1=#r3#" }; --Ashen Band of Greater Might
		[13] = { itemID = 52571, "=ds=#s13#, =q1=#r4#" }; --Ashen Band of Unmatched Might
		[14] = { itemID = 52572, "=ds=#s13#, =q1=#r5#" }; --Ashen Band of Endless Might
		[16] = { itemID = 50376, "=ds=#s13#, =q1=#r2#" }; --Ashen Band of Vengeance
		[17] = { itemID = 50387, "=ds=#s13#, =q1=#r3#" }; --Ashen Band of Greater Vengeance
		[18] = { itemID = 50401, "=ds=#s13#, =q1=#r4#" }; --Ashen Band of Unmatched Vengeance
		[19] = { itemID = 50402, "=ds=#s13#, =q1=#r5#" }; --Ashen Band of Endless Vengeance
		[21] = { itemID = 50378, "=ds=#s13#, =q1=#r2#" }; --Ashen Band of Wisdom
		[22] = { itemID = 50386, "=ds=#s13#, =q1=#r3#" }; --Ashen Band of Greater Wisdom
		[23] = { itemID = 50399, "=ds=#s13#, =q1=#r4#" }; --Ashen Band of Unmatched Wisdom
		[24] = { itemID = 50400, "=ds=#s13#, =q1=#r5#" }; --Ashen Band of Endless Wisdom
	};
	{
		Name = BabbleFaction["Honored"];
		[1] = { itemID = 49974, "=ds=#p2# (450)" }; --Plans: Boots of Kingly Upheaval
		[2] = { itemID = 49972, "=ds=#p2# (450)" }; --Plans: Hellfrozen Bonegrinders
		[3] = { itemID = 49970, "=ds=#p2# (450)" }; --Plans: Protectors of Life
		[4] = { itemID = 49958, "=ds=#p7# (450)" }; --Pattern: Blessed Cenarion Boots
		[5] = { itemID = 49963, "=ds=#p7# (450)" }; --Pattern: Earthsoul Boots
		[6] = { itemID = 49961, "=ds=#p7# (450)" }; --Pattern: Footpads of Impending Death
		[7] = { itemID = 49966, "=ds=#p7# (450)" }; --Pattern: Rock-Steady Treads
		[8] = { itemID = 49954, "=ds=#p8# (450)" }; --Pattern: Deathfrost Boots
		[9] = { itemID = 49956, "=ds=#p8# (450)" }; --Pattern: Sandals of Consecration
		[10] = { itemID = 52023, "=ds=#p17# (450)" }; --Plans: Evil Arrow
		[11] = { itemID = 52022, "=ds=#p18# (450)" }; --Plans: Shatter Rounds
	};
	{
		Name = BabbleFaction["Revered"];
		[1] = { itemID = 49971, "=ds=#p2# (450)" }; --Plans: Legplates of Painful Death
		[2] = { itemID = 49973, "=ds=#p2# (450)" }; --Plans: Pillars of Might
		[3] = { itemID = 49969, "=ds=#p2# (450)" }; --Plans: Puresteel Legplates
		[4] = { itemID = 49959, "=ds=#p7# (450)" }; --Pattern: Bladeborn Leggings
		[5] = { itemID = 49965, "=ds=#p7# (450)" }; --Pattern: Draconic Bonesplinter Legguards
		[6] = { itemID = 49957, "=ds=#p7# (450)" }; --Pattern: Legwraps of Unleashed Nature
		[7] = { itemID = 49962, "=ds=#p7# (450)" }; --Pattern: Lightning-Infused Leggings
		[8] = { itemID = 49953, "=ds=#p8# (450)" }; --Pattern: Leggings of Woven Death
		[9] = { itemID = 49955, "=ds=#p8# (450)" }; --Pattern: Lightweave Leggings
	};
};

-----------
--- PvP ---
-----------

------------------
--- Armor Sets ---
------------------

AtlasLoot_Data["ArenaDeathKnightWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[2] = { itemID = 51415, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Dreadplate Helm
		[3] = { itemID = 51418, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Dreadplate Shoulders
		[4] = { itemID = 51413, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Dreadplate Chestpiece
		[5] = { itemID = 51414, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Dreadplate Gauntlets
		[6] = { itemID = 51416, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Dreadplate Legguards
		[8] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[9] = { itemID = 40830, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Helm
		[10] = { itemID = 40871, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dreadplate Shoulders
		[11] = { itemID = 40791, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Chestpiece
		[12] = { itemID = 40811, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dreadplate Gauntlets
		[13] = { itemID = 40851, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Legguards
		[16] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[17] = { itemID = 40827, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Helm
		[18] = { itemID = 40868, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dreadplate Shoulders
		[19] = { itemID = 40787, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Chestpiece
		[20] = { itemID = 40809, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dreadplate Gauntlets
		[21] = { itemID = 40848, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Legguards
		[23] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[24] = { itemID = 40824, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Helm
		[25] = { itemID = 40863, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Dreadplate Shoulders
		[26] = { itemID = 40784, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Chestpiece
		[27] = { itemID = 40806, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Dreadplate Gauntlets
		[28] = { itemID = 40845, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Legguards
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[2] = { itemID = 40820, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Helm
		[3] = { itemID = 40860, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Dreadplate Shoulders
		[4] = { itemID = 40781, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Chestpiece
		[5] = { itemID = 40803, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Dreadplate Gauntlets
		[6] = { itemID = 40841, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Legguards
		[8] = { itemID = 0,  desc = "Spell_Deathknight_DeathStrike", "=q6=#arenas10#" };
		[9] = { itemID = 40817, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Helm
		[10] = { itemID = 40857, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Dreadplate Shoulders
		[11] = { itemID = 40779, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Chestpiece
		[12] = { itemID = 40799, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Dreadplate Gauntlets
		[13] = { itemID = 40837, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Legguards
	};
};
AtlasLoot_Data["ArenaDruidWRATH"] = {
	Name = AL["Druid"];
	{
		Name = AL["Balance"] .. " Page 1";
		[1] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[2] = { itemID = 51435, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Wyrmhide Helm
		[3] = { itemID = 51438, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Wyrmhide Spaulders
		[4] = { itemID = 51433, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Wyrmhide Robes
		[5] = { itemID = 51434, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Wyrmhide Gloves
		[6] = { itemID = 51436, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Wyrmhide Legguards
		[8] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[9] = { itemID = 41328, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Helm
		[10] = { itemID = 41282, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 41317, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Robes
		[12] = { itemID = 41294, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Gloves
		[13] = { itemID = 41305, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Legguards
		[16] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[17] = { itemID = 41327, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Helm
		[18] = { itemID = 41281, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 41316, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Robes
		[20] = { itemID = 41293, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Gloves
		[21] = { itemID = 41304, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Legguards
		[23] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[24] = { itemID = 41326, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Helm
		[25] = { itemID = 41280, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Spaulders
		[26] = { itemID = 41315, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Robes
		[27] = { itemID = 41292, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Gloves
		[28] = { itemID = 41303, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Balance"] .. " Page 2";
		[1] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[2] = { itemID = 41325, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Helm
		[3] = { itemID = 41279, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Spaulders
		[4] = { itemID = 41314, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Robes
		[5] = { itemID = 41291, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Gloves
		[6] = { itemID = 41302, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Legguards
		[8] = { itemID = 0,  desc = "Spell_Nature_InsectSwarm", "=q6=#arenas1_2#" };
		[9] = { itemID = 41324, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Helm
		[10] = { itemID = 41278, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 41313, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Robes
		[12] = { itemID = 41290, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Wyrmhide Gloves
		[13] = { itemID = 41301, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Feral"] .. " Page 1";
		[1] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[2] = { itemID = 51427, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Dragonhide Helm
		[3] = { itemID = 51430, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Dragonhide Spaulders
		[4] = { itemID = 51425, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Dragonhide Robes
		[5] = { itemID = 51426, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Dragonhide Gloves
		[6] = { itemID = 51428, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Dragonhide Legguards
		[8] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[9] = { itemID = 41679, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Helm
		[10] = { itemID = 41716, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dragonhide Spaulders
		[11] = { itemID = 41662, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Robes
		[12] = { itemID = 41774, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dragonhide Gloves
		[13] = { itemID = 41668, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Legguards
		[16] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[17] = { itemID = 41678, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Helm
		[18] = { itemID = 41715, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dragonhide Spaulders
		[19] = { itemID = 41661, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Robes
		[20] = { itemID = 41773, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dragonhide Gloves
		[21] = { itemID = 41667, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Legguards
		[23] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[24] = { itemID = 41677, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Helm
		[25] = { itemID = 41714, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Dragonhide Spaulders
		[26] = { itemID = 41660, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Robes
		[27] = { itemID = 41772, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Dragonhide Gloves
		[28] = { itemID = 41666, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Feral"] .. " Page 2";
		[1] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[2] = { itemID = 41676, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Helm
		[3] = { itemID = 41713, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Dragonhide Spaulders
		[4] = { itemID = 41659, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Robes
		[5] = { itemID = 41771, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Dragonhide Gloves
		[6] = { itemID = 41665, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Legguards
		[8] = { itemID = 0,  desc = "Ability_Druid_Maul", "=q6=#arenas1_1#" };
		[9] = { itemID = 41675, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Helm
		[10] = { itemID = 41712, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Dragonhide Spaulders
		[11] = { itemID = 41658, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Robes
		[12] = { itemID = 41770, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Dragonhide Gloves
		[13] = { itemID = 41664, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Restoration"] .. " Page 1";
		[1] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[2] = { itemID = 51421, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Kodohide Helm
		[3] = { itemID = 51424, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Kodohide Spaulders
		[4] = { itemID = 51419, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Kodohide Robes
		[5] = { itemID = 51420, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Kodohide Gloves
		[6] = { itemID = 51422, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Kodohide Legguards
		[8] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[9] = { itemID = 41322, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Helm
		[10] = { itemID = 41276, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Kodohide Spaulders
		[11] = { itemID = 41311, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Robes
		[12] = { itemID = 41288, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Kodohide Gloves
		[13] = { itemID = 41299, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Legguards
		[16] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[17] = { itemID = 41321, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Helm
		[18] = { itemID = 41275, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Kodohide Spaulders
		[19] = { itemID = 41310, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Robes
		[20] = { itemID = 41287, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Kodohide Gloves
		[21] = { itemID = 41298, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Legguards
		[23] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[24] = { itemID = 41320, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Helm
		[25] = { itemID = 41274, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Kodohide Spaulders
		[26] = { itemID = 41309, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Robes
		[27] = { itemID = 41286, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Kodohide Gloves
		[28] = { itemID = 41297, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Legguards
	};
	{
		Name = AL["Restoration"] .. " Page 2";
		[1] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[2] = { itemID = 41319, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Helm
		[3] = { itemID = 41273, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Kodohide Spaulders
		[4] = { itemID = 41308, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Robes
		[5] = { itemID = 41284, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Kodohide Gloves
		[6] = { itemID = 41296, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Legguards
		[8] = { itemID = 0,  desc = "Spell_Nature_Regeneration", "=q6=#arenas1_3#" };
		[9] = { itemID = 41269, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Kodohide Helm
		[10] = { itemID = 41271, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Kodohide Spaulders
		[11] = { itemID = 41272, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Kodohide Robes
		[12] = { itemID = 41268, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Kodohide Gloves
		[13] = { itemID = 41270, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Kodohide Legguards
	};
};

AtlasLoot_Data["ArenaHunterWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[2] = { itemID = 51460, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Chain Helm
		[3] = { itemID = 51462, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Chain Spaulders
		[4] = { itemID = 51458, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Chain Armor
		[5] = { itemID = 51459, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Chain Gauntlets
		[6] = { itemID = 51461, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Chain Leggings
		[8] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[9] = { itemID = 41158, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Helm
		[10] = { itemID = 41218, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Chain Spaulders
		[11] = { itemID = 41088, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Armor
		[12] = { itemID = 41144, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Chain Gauntlets
		[13] = { itemID = 41206, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Leggings
		[16] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[17] = { itemID = 41157, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Helm
		[18] = { itemID = 41217, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Chain Spaulders
		[19] = { itemID = 41087, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Armor
		[20] = { itemID = 41143, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Chain Gauntlets
		[21] = { itemID = 41205, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Leggings
		[23] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[24] = { itemID = 41156, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Chain Helm
		[25] = { itemID = 41216, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Chain Spaulders
		[26] = { itemID = 41086, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Chain Armor
		[27] = { itemID = 41142, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Chain Gauntlets
		[28] = { itemID = 41204, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Chain Leggings
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[2] = { itemID = 41155, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Chain Helm
		[3] = { itemID = 41215, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Chain Spaulders
		[4] = { itemID = 41085, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Chain Armor
		[5] = { itemID = 41141, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Chain Gauntlets
		[6] = { itemID = 41203, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Chain Leggings
		[8] = { itemID = 0,  desc = "Ability_Hunter_RunningShot", "=q6=#arenas2#" };
		[9] = { itemID = 41154, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Chain Helm
		[10] = { itemID = 41214, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Chain Spaulders
		[11] = { itemID = 41084, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Chain Armor
		[12] = { itemID = 41140, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Chain Gauntlets
		[13] = { itemID = 41202, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Chain Leggings
	};
};

AtlasLoot_Data["ArenaMageWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[2] = { itemID = 51465, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Silk Cowl
		[3] = { itemID = 51467, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Silk Amice
		[4] = { itemID = 51463, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Silk Raiment
		[5] = { itemID = 51464, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Silk Handguards
		[6] = { itemID = 51466, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Silk Trousers
		[8] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[9] = { itemID = 41947, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Cowl
		[10] = { itemID = 41966, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Silk Amice
		[11] = { itemID = 41954, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Raiment
		[12] = { itemID = 41972, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Silk Handguards
		[13] = { itemID = 41960, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Trousers
		[16] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[17] = { itemID = 41946, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Cowl
		[18] = { itemID = 41965, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Silk Amice
		[19] = { itemID = 41953, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Raiment
		[20] = { itemID = 41971, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Silk Handguards
		[21] = { itemID = 41959, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Trousers
		[23] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[24] = { itemID = 41945, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Silk Cowl
		[25] = { itemID = 41964, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Silk Amice
		[26] = { itemID = 41951, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Silk Raiment
		[27] = { itemID = 41970, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Silk Handguards
		[28] = { itemID = 41958, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Silk Trousers
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[2] = { itemID = 41944, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Silk Cowl
		[3] = { itemID = 41963, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Silk Amice
		[4] = { itemID = 41950, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Silk Raiment
		[5] = { itemID = 41969, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Silk Handguards
		[6] = { itemID = 41957, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Silk Trousers
		[8] = { itemID = 0,  desc = "Spell_Frost_IceStorm", "=q6=#arenas3#" };
		[9] = { itemID = 41943, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Silk Cowl
		[10] = { itemID = 41962, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Silk Amice
		[11] = { itemID = 41949, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Silk Raiment
		[12] = { itemID = 41968, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Silk Handguards
		[13] = { itemID = 41956, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Silk
	};
};

AtlasLoot_Data["ArenaPaladinWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Retribution"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[2] = { itemID = 51476, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Scaled Helm
		[3] = { itemID = 51479, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Scaled Shoulders
		[4] = { itemID = 51474, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Scaled Chestpiece
		[5] = { itemID = 51475, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Scaled Gauntlets
		[6] = { itemID = 51477, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Scaled Legguards
		[8] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[9] = { itemID = 40831, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Helm
		[10] = { itemID = 40872, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Scaled Shoulders
		[11] = { itemID = 40792, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Chestpiece
		[12] = { itemID = 40812, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Scaled Gauntlets
		[13] = { itemID = 40852, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Legguards
		[16] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[17] = { itemID = 40828, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Helm
		[18] = { itemID = 40869, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Scaled Shoulders
		[19] = { itemID = 40788, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Chestpiece
		[20] = { itemID = 40808, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Scaled Gauntlets
		[21] = { itemID = 40849, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Legguards
		[23] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[24] = { itemID = 40825, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Scaled Helm
		[25] = { itemID = 40864, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Scaled Shoulders
		[26] = { itemID = 40785, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Scaled Chestpiece
		[27] = { itemID = 40805, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Scaled Gauntlets
		[28] = { itemID = 40846, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Scaled Legguards
	};
	{
		Name = AL["Retribution"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[2] = { itemID = 40821, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Scaled Helm
		[3] = { itemID = 40861, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Scaled Shoulders
		[4] = { itemID = 40782, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Scaled Chestpiece
		[5] = { itemID = 40802, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Scaled Gauntlets
		[6] = { itemID = 40842, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Scaled Legguards
		[8] = { itemID = 0,  desc = "Spell_Holy_AuraOfLight", "=q6=#arenas4_2#" };
		[9] = { itemID = 40818, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Scaled Helm
		[10] = { itemID = 40858, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Scaled Shoulders
		[11] = { itemID = 40780, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Scaled Chestpiece
		[12] = { itemID = 40798, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Scaled Gauntlets
		[13] = { itemID = 40838, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Scaled Legguards
	};
	{
		Name = AL["Holy"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[2] = { itemID = 51470, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Ornamented Headcover
		[3] = { itemID = 51473, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Ornamented Spaulders
		[4] = { itemID = 51468, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Ornamented Chestguard
		[5] = { itemID = 51469, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Ornamented Gloves
		[6] = { itemID = 51471, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Ornamented Legplates
		[8] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[9] = { itemID = 40934, desc = "=ds=", --Relentless Gladiator's Ornamented Headcover
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[10] = { itemID = 40964, desc = "=ds=", --Relentless Gladiator's Ornamented Spaulders
			"10550 #faction# 600 #arena# / 60 #eoffrost#" };
		[11] = { itemID = 40910, desc = "=ds=", --Relentless Gladiator's Ornamented Chestguard
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[12] = { itemID = 40928, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ornamented Gloves
		[13] = { itemID = 40940, desc = "=ds=", --Relentless Gladiator's Ornamented Legplates
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[16] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[17] = { itemID = 40933, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Headcover
		[18] = { itemID = 40963, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ornamented Spaulders
		[19] = { itemID = 40907, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Chestguard
		[20] = { itemID = 40927, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ornamented Gloves
		[21] = { itemID = 40939, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Legplates
		[23] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[24] = { itemID = 40932, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Headcover
		[25] = { itemID = 40962, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Ornamented Spaulders
		[26] = { itemID = 40905, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Chestguard
		[27] = { itemID = 40926, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Ornamented Gloves
		[28] = { itemID = 40938, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Legplates
	};
	{
		Name = AL["Holy"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[2] = { itemID = 40931, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Headcover
		[3] = { itemID = 40961, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Ornamented Spaulders
		[4] = { itemID = 40904, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Gloves
		[5] = { itemID = 40925, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Ornamented Chestguard
		[6] = { itemID = 40937, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Legplates
		[8] = { itemID = 0,  desc = "Spell_Holy_HolyBolt", "=q6=#arenas4_3#" };
		[9] = { itemID = 40930, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ornamented Headcover
		[10] = { itemID = 40960, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Ornamented Spaulders
		[11] = { itemID = 40898, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ornamented Chestguard
		[12] = { itemID = 40918, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Ornamented Gloves
		[13] = { itemID = 40936, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ornamented Legplates
	};
};

AtlasLoot_Data["ArenaPriestWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Shadow"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[2] = { itemID = 51489, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Satin Hood
		[3] = { itemID = 51491, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Satin Mantle
		[4] = { itemID = 51487, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Satin Robe
		[5] = { itemID = 51488, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Satin Gloves
		[6] = { itemID = 51490, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Satin Leggings
		[8] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[9] = { itemID = 41916, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Hood
		[10] = { itemID = 41935, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Satin Mantle
		[11] = { itemID = 41922, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Robe
		[12] = { itemID = 41941, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Satin Gloves
		[13] = { itemID = 41928, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Leggings
		[16] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[17] = { itemID = 41915, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Hood
		[18] = { itemID = 41934, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Satin Mantle
		[19] = { itemID = 41921, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Robe
		[20] = { itemID = 41940, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Satin Gloves
		[21] = { itemID = 41927, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Leggings
		[23] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[24] = { itemID = 41914, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Satin Hood
		[25] = { itemID = 41933, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Satin Mantle
		[26] = { itemID = 41920, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Satin Robe
		[27] = { itemID = 41939, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Satin Gloves
		[28] = { itemID = 41926, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Satin Leggings
	};
	{
		Name = AL["Shadow"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[2] = { itemID = 41913, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Satin Hood
		[3] = { itemID = 41931, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Satin Mantle
		[4] = { itemID = 41919, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Satin Robe
		[5] = { itemID = 41938, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Satin Gloves
		[6] = { itemID = 41925, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Satin Leggings
		[8] = { itemID = 0,  desc = "Spell_Shadow_AntiShadow", "=q6=#arenas5_1#" };
		[9] = { itemID = 41912, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Satin Hood
		[10] = { itemID = 41930, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Satin Mantle
		[11] = { itemID = 41918, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Satin Robe
		[12] = { itemID = 41937, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Satin Gloves
		[13] = { itemID = 41924, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Satin Leggings
	};
	{
		Name = AL["Holy"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[2] = { itemID = 51484, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Mooncloth Hood
		[3] = { itemID = 51486, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Mooncloth Mantle
		[4] = { itemID = 51482, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Mooncloth Robe
		[5] = { itemID = 51483, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Mooncloth Gloves
		[6] = { itemID = 51485, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Mooncloth Leggings
		[8] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[9] = { itemID = 41855, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Hood
		[10] = { itemID = 41870, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mooncloth Mantle
		[11] = { itemID = 41860, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Robe
		[12] = { itemID = 41875, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mooncloth Gloves
		[13] = { itemID = 41865, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Leggings
		[16] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[17] = { itemID = 41854, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Hood
		[18] = { itemID = 41869, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mooncloth Mantle
		[19] = { itemID = 41859, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Robe
		[20] = { itemID = 41874, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mooncloth Gloves
		[21] = { itemID = 41864, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Leggings
		[23] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[24] = { itemID = 41853, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Hood
		[25] = { itemID = 41868, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Mooncloth Mantle
		[26] = { itemID = 41858, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Robe
		[27] = { itemID = 41873, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Mooncloth Gloves
		[28] = { itemID = 41863, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Leggings
	};
	{
		Name = AL["Holy"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[2] = { itemID = 41852, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Hood
		[3] = { itemID = 41867, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Mooncloth Mantle
		[4] = { itemID = 41857, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Robe
		[5] = { itemID = 41872, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Mooncloth Gloves
		[6] = { itemID = 41862, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Leggings
		[8] = { itemID = 0,  desc = "Spell_Holy_PowerWordShield", "=q6=#arenas5_2#" };
		[9] = { itemID = 41848, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Hood
		[10] = { itemID = 41850, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Mooncloth Mantle
		[11] = { itemID = 41851, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Robe
		[12] = { itemID = 41847, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Mooncloth Gloves
		[13] = { itemID = 41849, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Leggings
	};
};


AtlasLoot_Data["ArenaRogueWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[2] = { itemID = 51494, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Leather Helm
		[3] = { itemID = 51496, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Leather Spaulders
		[4] = { itemID = 51492, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Leather Tunic
		[5] = { itemID = 51493, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Leather Gloves
		[6] = { itemID = 51495, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Leather Legguards
		[8] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[9] = { itemID = 41673, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Helm
		[10] = { itemID = 41684, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Leather Spaulders
		[11] = { itemID = 41651, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Tunic
		[12] = { itemID = 41768, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Leather Gloves
		[13] = { itemID = 41656, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Legguards
		[16] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[17] = { itemID = 41672, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Helm
		[18] = { itemID = 41683, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Leather Spaulders
		[19] = { itemID = 41650, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Tunic
		[20] = { itemID = 41767, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Leather Gloves
		[21] = { itemID = 41655, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Legguards
		[23] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[24] = { itemID = 41671, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Leather Helm
		[25] = { itemID = 41682, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Leather Spaulders
		[26] = { itemID = 41649, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Leather Tunic
		[27] = { itemID = 41766, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Leather Gloves
		[28] = { itemID = 41654, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Leather Legguards
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[2] = { itemID = 41670, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Leather Helm
		[3] = { itemID = 41681, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Leather Spaulders
		[4] = { itemID = 41648, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Leather Tunic
		[5] = { itemID = 41765, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Leather Gloves
		[6] = { itemID = 41653, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Leather Legguards
		[8] = { itemID = 0,  desc = "Ability_BackStab", "=q6=#arenas6#" };
		[9] = { itemID = 41644, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Leather Helm
		[10] = { itemID = 41646, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Leather Spaulders
		[11] = { itemID = 41647, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Leather Tunic
		[12] = { itemID = 41643, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Leather Gloves
		[13] = { itemID = 41645, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Leather Legguards
	};
};

AtlasLoot_Data["ArenaShamanWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Elemental"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[2] = { itemID = 51511, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Mail Helm
		[3] = { itemID = 51514, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Mail Spaulders
		[4] = { itemID = 51509, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Mail Armor
		[5] = { itemID = 51510, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Mail Gauntlets
		[6] = { itemID = 51512, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Mail Leggings
		[8] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[9] = { itemID = 41020, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Helm
		[10] = { itemID = 41045, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mail Spaulders
		[11] = { itemID = 40995, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Armor
		[12] = { itemID = 41008, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mail Gauntlets
		[13] = { itemID = 41034, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Leggings
		[16] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[17] = { itemID = 41019, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Helm
		[18] = { itemID = 41044, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mail Spaulders
		[19] = { itemID = 40993, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Armor
		[20] = { itemID = 41007, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mail Gauntlets
		[21] = { itemID = 41033, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Leggings
		[23] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[24] = { itemID = 41018, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mail Helm
		[25] = { itemID = 41043, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Mail Spaulders
		[26] = { itemID = 40991, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mail Armor
		[27] = { itemID = 41006, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Mail Gauntlets
		[28] = { itemID = 41032, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Mail Leggings
	};
	{
		Name = AL["Elemental"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[2] = { itemID = 41017, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mail Helm
		[3] = { itemID = 41042, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Mail Spaulders
		[4] = { itemID = 40989, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mail Armor
		[5] = { itemID = 41005, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Mail Gauntlets
		[6] = { itemID = 41031, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Mail Leggings
		[8] = { itemID = 0,  desc = "Spell_Nature_Lightning", "=q6=#arenas7_2#" };
		[9] = { itemID = 41016, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mail Helm
		[10] = { itemID = 41041, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Mail Spaulders
		[11] = { itemID = 40987, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mail Armor
		[12] = { itemID = 41004, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Mail Gauntlets
		[13] = { itemID = 41030, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Mail Leggings
	};
	{
		Name = AL["Enhancement"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[2] = { itemID = 51505, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Linked Helm
		[3] = { itemID = 51508, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Linked Spaulders
		[4] = { itemID = 51503, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Linked Armor
		[5] = { itemID = 51504, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Linked Gauntlets
		[6] = { itemID = 51506, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Linked Leggings
		[8] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[9] = { itemID = 41152, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Helm
		[10] = { itemID = 41212, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Linked Spaulders
		[11] = { itemID = 41082, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Armor
		[12] = { itemID = 41138, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Linked Gauntlets
		[13] = { itemID = 41200, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Leggings
		[16] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[17] = { itemID = 41151, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Helm
		[18] = { itemID = 41211, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Linked Spaulders
		[19] = { itemID = 41081, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Armor
		[20] = { itemID = 41137, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Linked Gauntlets
		[21] = { itemID = 41199, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Leggings
		[23] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[24] = { itemID = 41150, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Linked Helm
		[25] = { itemID = 41210, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Linked Spaulders
		[26] = { itemID = 41080, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Linked Armor
		[27] = { itemID = 41136, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Linked Gauntlets
		[28] = { itemID = 41198, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Linked Leggings
	};
	{
		Name = AL["Enhancement"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[2] = { itemID = 41149, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Linked Helm
		[3] = { itemID = 41209, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Linked Spaulders
		[4] = { itemID = 41079, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Linked Armor
		[5] = { itemID = 41135, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Linked Gauntlets
		[6] = { itemID = 41162, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Linked Leggings
		[8] = { itemID = 0,  desc = "Spell_FireResistanceTotem_01", "=q6=#arenas7_1#" };
		[9] = { itemID = 41148, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Linked Helm
		[10] = { itemID = 41208, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Linked Spaulders
		[11] = { itemID = 41078, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Linked Armor
		[12] = { itemID = 41134, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Linked Gauntlets
		[13] = { itemID = 41160, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Linked Leggings
	};
	{
		Name = AL["Restoration"] .. "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[2] = { itemID = 51499, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Ringmail Helm
		[3] = { itemID = 51502, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Ringmail Spaulders
		[4] = { itemID = 51497, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Ringmail Armor
		[5] = { itemID = 51498, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Ringmail Gauntlets
		[6] = { itemID = 51500, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Ringmail Leggings
		[8] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[9] = { itemID = 41014, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Helm
		[10] = { itemID = 41039, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ringmail Spaulders
		[11] = { itemID = 40994, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Armor
		[12] = { itemID = 41002, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ringmail Gauntlets
		[13] = { itemID = 41028, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Leggings
		[16] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[17] = { itemID = 41013, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Helm
		[18] = { itemID = 41038, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ringmail Spaulders
		[19] = { itemID = 40992, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Armor
		[20] = { itemID = 41001, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ringmail Gauntlets
		[21] = { itemID = 41027, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Leggings
		[23] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[24] = { itemID = 41012, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Helm
		[25] = { itemID = 41037, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Ringmail Spaulders
		[26] = { itemID = 40990, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Armor
		[27] = { itemID = 41000, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Ringmail Gauntlets
		[28] = { itemID = 41026, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = AL["Restoration"] .. "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[2] = { itemID = 41011, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Helm
		[3] = { itemID = 41036, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Ringmail Spaulders
		[4] = { itemID = 40988, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Armor
		[5] = { itemID = 40999, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Ringmail Gauntlets
		[6] = { itemID = 41025, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Leggings
		[8] = { itemID = 0,  desc = "Spell_Nature_HealingWaveGreater", "=q6=#arenas7_3#" };
		[9] = { itemID = 41010, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ringmail Helm
		[10] = { itemID = 41024, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Ringmail Spaulders
		[11] = { itemID = 40986, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ringmail Armor
		[12] = { itemID = 40998, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Ringmail Gauntlets
		[13] = { itemID = 41023, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Ringmail Leggings
	};
};


AtlasLoot_Data["ArenaWarlockWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[2] = { itemID = 51538, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Felweave Cowl
		[3] = { itemID = 51540, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Felweave Amice
		[4] = { itemID = 51536, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Felweave Raiment
		[5] = { itemID = 51537, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Felweave Handguards
		[6] = { itemID = 51539, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Felweave Trousers
		[8] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[9] = { itemID = 41994, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Cowl
		[10] = { itemID = 42012, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Felweave Amice
		[11] = { itemID = 41999, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Raiment
		[12] = { itemID = 42018, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Felweave Handguards
		[13] = { itemID = 42006, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Trousers
		[16] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[17] = { itemID = 41993, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Cowl
		[18] = { itemID = 42011, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Felweave Amice
		[19] = { itemID = 41998, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Raiment
		[20] = { itemID = 42017, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Felweave Handguards
		[21] = { itemID = 42005, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Trousers
		[23] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[24] = { itemID = 41992, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Felweave Cowl
		[25] = { itemID = 42010, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Felweave Amice
		[26] = { itemID = 41997, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Felweave Raiment
		[27] = { itemID = 42016, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Felweave Handguards
		[28] = { itemID = 42004, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Felweave Trousers

	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[2] = { itemID = 41991, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Felweave Cowl
		[3] = { itemID = 42009, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Felweave Amice
		[4] = { itemID = 42001, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Felweave Raiment
		[5] = { itemID = 42015, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Felweave Handguards
		[6] = { itemID = 42003, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Felweave Trousers
		[8] = { itemID = 0,  desc = "Spell_Shadow_CurseOfTounges", "=q6=#arenas8_2#" };
		[9] = { itemID = 41990, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Felweave Cowl
		[10] = { itemID = 42008, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Felweave Amice
		[11] = { itemID = 41996, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Felweave Raiment
		[12] = { itemID = 42014, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Felweave Handguards
		[13] = { itemID = 42002, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Felweave Trousers
	};
};

AtlasLoot_Data["ArenaWarriorWRATH"] = {
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[2] = { itemID = 51543, desc = "=ds=", "2370 #arena# #reqrating# 1950" }; --Wrathful Gladiator's Plate Helm
		[3] = { itemID = 51545, desc = "=ds=", "1930 #arena# #reqrating# 2000" }; --Wrathful Gladiator's Plate Shoulders
		[4] = { itemID = 51541, desc = "=ds=", "2370 #arena# #reqrating# 1600" }; --Wrathful Gladiator's Plate Chestpiece
		[5] = { itemID = 51542, desc = "=ds=", "1430 #arena# #reqrating# 1400" }; --Wrathful Gladiator's Plate Gauntlets
		[6] = { itemID = 51544, desc = "=ds=", "2370 #arena# #reqrating# 1500" }; --Wrathful Gladiator's Plate Legguards
		[8] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[9] = { itemID = 40829, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Helm
		[10] = { itemID = 40870, desc = "=ds=", "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Plate Shoulders
		[11] = { itemID = 40790, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Chestpiece
		[12] = { itemID = 40810, desc = "=ds=", "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Plate Gauntlets
		[13] = { itemID = 40850, desc = "=ds=", "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Legguards
		[16] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[17] = { itemID = 40826, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Helm
		[18] = { itemID = 40866, desc = "=ds=", "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Plate Shoulders
		[19] = { itemID = 40789, desc = "=ds=", "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Chestpiece
		[20] = { itemID = 40807, desc = "=ds=", "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Plate Gauntlets
		[21] = { itemID = 40847, desc = "=ds=", "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Legguards
		[23] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[24] = { itemID = 40823, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Plate Helm
		[25] = { itemID = 40862, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Plate Shoulders
		[26] = { itemID = 40786, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Plate Chestpiece
		[27] = { itemID = 40804, desc = "=ds=", "46 #eofconquest#" }; --Deadly Gladiator's Plate Gauntlets
		[28] = { itemID = 40844, desc = "=ds=", "58 #eofconquest#" }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[2] = { itemID = 40819, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Plate Helm
		[3] = { itemID = 40859, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Plate Shoulders
		[4] = { itemID = 40783, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Plate Chestpiece
		[5] = { itemID = 40801, desc = "=ds=", "30 #eofvalor#" }; --Hateful Gladiator's Plate Gauntlets
		[6] = { itemID = 40840, desc = "=ds=", "45 #eofvalor#" }; --Hateful Gladiator's Plate Legguards
		[8] = { itemID = 0,  desc = "Ability_Warrior_BattleShout", "=q6=#arenas9#" };
		[9] = { itemID = 40816, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Plate Helm
		[10] = { itemID = 40856, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Plate Shoulders
		[11] = { itemID = 40778, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Plate Chestpiece
		[12] = { itemID = 40797, desc = "=ds=", "30 #eofheroism#" }; --Savage Gladiator's Plate Gauntlets
		[13] = { itemID = 40836, desc = "=ds=", "45 #eofheroism#" }; --Savage Gladiator's Plate Legguards
	};
};
------------------------------
--- Level 80 Epic Non-Sets ---
------------------------------

AtlasLoot_Data["PvP80NonSet"] = {
	Name = AL["PvP Non-Set Epics"];
	{
		Name = "Page 1";
	[1] = { itemID = 51334, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Ascendancy
	[2] = { itemID = 51348, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Deliverance
	[3] = { itemID = 51330, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Dominance
	[4] = { itemID = 51346, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Salvation
	[5] = { itemID = 51332, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Subjugation
	[6] = { itemID = 51354, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Triumph
	[7] = { itemID = 51356, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Cloak of Victory
	[9] = { itemID = 51336, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Band of Dominance
	[10] = { itemID = 51358, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Band of Triumph
	[12] = { itemID = 51377, desc = "=ds=", "68200 #faction#" }; --Medallion of the Alliance
	[13] = { itemID = 51378, desc = "=ds=", "68200 #faction#" }; --Medallion of the Horde
	[16] = { itemID = 51335, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Ascendancy
	[17] = { itemID = 51349, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Deliverance
	[18] = { itemID = 51331, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Dominance
	[19] = { itemID = 51347, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Salvation
	[20] = { itemID = 51333, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Subjugation
	[21] = { itemID = 51353, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Sundering
	[22] = { itemID = 51355, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Triumph
	[23] = { itemID = 51357, desc = "=ds=", "52200 #faction#" }; --Wrathful Gladiator's Pendant of Victory
	[25] = { itemID = 42133, desc = "=ds=", "34100 #faction#" }; --Battlemaster's Fury
	[26] = { itemID = 42134, desc = "=ds=", "34100 #faction#" }; --Battlemaster's Precision
	[27] = { itemID = 42136, desc = "=ds=", "34100 #faction#" }; --Battlemaster's Rage
	[28] = { itemID = 42137, desc = "=ds=", "34100 #faction#" }; --Battlemaster's Ruination
	[29] = { itemID = 42135, desc = "=ds=", "34100 #faction#" }; --Battlemaster's Vivacity
};
{
	Name = "Page 2";
	[1] = { itemID = 42078, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Ascendancy
	[2] = { itemID = 42080, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Deliverance
	[3] = { itemID = 42076, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Dominance
	[4] = { itemID = 42079, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Salvation
	[5] = { itemID = 42077, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Subjugation
	[6] = { itemID = 42081, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Triumph
	[7] = { itemID = 42082, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Cloak of Victory
	[9] = { itemID = 42118, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Band of Ascendancy
	[10] = { itemID = 42119, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Band of Victory
	[16] = { itemID = 42044, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Ascendancy
	[17] = { itemID = 42046, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Deliverance
	[18] = { itemID = 42043, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Dominance
	[19] = { itemID = 42047, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Salvation
	[20] = { itemID = 42045, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Subjugation
	[21] = { itemID = 46374, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Sundering
	[22] = { itemID = 42041, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Triumph
	[23] = { itemID = 42042, desc = "=ds=", "26100 #faction#" }; --Relentless Gladiator's Pendant of Victory
};
{
	Name = "Cloth";
	[1] = { itemID = 51329, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Dominance
	[2] = { itemID = 51327, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Cord of Dominance
	[3] = { itemID = 51328, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Treads of Dominance
	[5] = { itemID = 51367, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Salvation
	[6] = { itemID = 51365, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Cord of Salvation
	[7] = { itemID = 51366, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Treads of Salvation
	[9] = { itemID = 51339, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Alacrity
	[10] = { itemID = 51337, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Cord of Alacrity
	[11] = { itemID = 51338, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Treads of Alacrity
	[16] = { itemID = 41910, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Cuffs of Dominance
	[17] = { itemID = 41899, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Cord of Dominance
	[18] = { itemID = 41904, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Treads of Dominance
	[20] = { itemID = 41894, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Cuffs of Salvation
	[21] = { itemID = 41882, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Cord of Salvation
	[22] = { itemID = 41886, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Treads of Salvation
	[24] = { itemID = 49181, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Cuffs of Alacrity
	[25] = { itemID = 49179, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Cord of Alacrity
	[26] = { itemID = 49183, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Treads of Alacrity
};
{
	Name = "Leather";
	[1] = { itemID = 51345, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Dominance
	[2] = { itemID = 51343, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Belt of Dominance
	[3] = { itemID = 51344, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Boots of Dominance
	[5] = { itemID = 51342, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Salvation
	[6] = { itemID = 51340, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Belt of Salvation
	[7] = { itemID = 51341, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Boots of Salvation
	[9] = { itemID = 51370, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Triumph
	[10] = { itemID = 51368, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Belt of Triumph
	[11] = { itemID = 51369, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Boots of Triumph
	[16] = { itemID = 41641, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Armwraps of Dominance
	[17] = { itemID = 41631, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Belt of Dominance
	[18] = { itemID = 41636, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Boots of Dominance
	[20] = { itemID = 41626, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Armwraps of Salvation
	[21] = { itemID = 41618, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Belt of Salvation
	[22] = { itemID = 41622, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Boots of Salvation
	[24] = { itemID = 41841, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Armwraps of Triumph
	[25] = { itemID = 41833, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Belt of Triumph
	[26] = { itemID = 41837, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Boots of Triumph
};
{
	Name = "Mail";
	[1] = { itemID = 51376, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Dominance
	[2] = { itemID = 51374, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Waistguard of Dominance
	[3] = { itemID = 51375, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Sabatons of Dominance
	[5] = { itemID = 51373, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Salvation
	[6] = { itemID = 51371, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Waistguard of Salvation
	[7] = { itemID = 51372, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Sabatons of Salvation
	[9] = { itemID = 51352, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Triumph
	[10] = { itemID = 51350, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Waistguard of Triumph
	[11] = { itemID = 51351, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Sabatons of Triumph
	[16] = { itemID = 41066, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Wristguards of Dominance
	[17] = { itemID = 41071, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Waistguard of Dominance
	[18] = { itemID = 41076, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Sabatons of Dominance
	[20] = { itemID = 41061, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Wristguards of Salvation
	[21] = { itemID = 41052, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Waistguard of Salvation
	[22] = { itemID = 41056, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Sabatons of Salvation
	[24] = { itemID = 41226, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Wristguards of Triumph
	[25] = { itemID = 41236, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Waistguard of Triumph
	[26] = { itemID = 41231, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Sabatons of Triumph
};
{
	Name = "Plate";
	[1] = { itemID = 51361, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Bracers of Salvation
	[2] = { itemID = 51359, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Girdle of Salvation
	[3] = { itemID = 51360, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Greaves of Salvation
	[5] = { itemID = 51364, desc = "=ds=", "43400 #faction#" }; --Wrathful Gladiator's Bracers of Triumph
	[6] = { itemID = 51362, desc = "=ds=", "68200 #faction# #reqrating# 1300" }; --Wrathful Gladiator's Girdle of Triumph
	[7] = { itemID = 51363, desc = "=ds=", "68200 #faction# #reqrating# 1400" }; --Wrathful Gladiator's Greaves of Triumph
	[16] = { itemID = 40984, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Bracers of Salvation
	[17] = { itemID = 40978, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Girdle of Salvation
	[18] = { itemID = 40979, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Greaves of Salvation
	[20] = { itemID = 40890, desc = "=ds=", "21700 #faction#" }; --Relentless Gladiator's Bracers of Triumph
	[21] = { itemID = 40883, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Girdle of Triumph
	[22] = { itemID = 40884, desc = "=ds=", "34100 #faction#" }; --Relentless Gladiator's Greaves of Triumph
};
};

------------------------------------
--- Wrathful Gladiator Weapons ---
------------------------------------
AtlasLoot_Data["WeaponsWRATH"] = {
	Name = "Arena " .. AL["Weapons"];
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. AL["Low Level"] };
		[2] = { itemID = 51523, "=ds=#h3#","38500 #faction# 1090 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Right Ripper
		[3] = { itemID = 51530, "=ds=#h4#","16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Left Render
		[4] = { itemID = 51443, "=ds=#h4#","15000 #faction# 1100 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Left Ripper
		[5] = { itemID = 51406, "=ds=#h3#","38500 #faction# 1300 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Blade of Alacrity
		[6] = { itemID = 51397, "=ds=#h3#","38500 #faction# 1300 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Spellblade
		[7] = { itemID = 51517, "38500 #faction# 1090 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Shanker
		[8] = { itemID = 51527, "16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Mutilator
		[9] = { itemID = 51441, "16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Shiv
		[10] = { itemID = 51521, "38500 #faction# 1090 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Slicer
		[11] = { itemID = 51447, "=ds=#h4#","16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Quickblade
		[12] = { itemID = 51392, "=ds=#h2#","55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Greatsword
		[13] = { itemID = 51515, "38500 #faction# 1090 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Cleaver
		[14] = { itemID = 51525, "16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Chopper
		[15] = { itemID = 51439, "16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Hacker
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. AL["High Level"] };
		[17] = { itemID = 51524, "3300 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Grasp
		[18] = { itemID = 51529, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Left Claw
		[19] = { itemID = 51444, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Left Razor
		[20] = { itemID = 51398, "3950 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Blade of Celerity
		[21] = { itemID = 51399, "3950 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Mageblade
		[22] = { itemID = 51518, "3300 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Spike
		[23] = { itemID = 51442, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Dirk
		[24] = { itemID = 51528, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Eviscerator
		[25] = { itemID = 51522, "3300 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Longblade
		[26] = { itemID = 51448, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Swiftblade
		[27] = { itemID = 51393, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Claymore
		[28] = { itemID = 51516, "3300 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Handaxe
		[29] = { itemID = 51440, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Dicer
		[30] = { itemID = 51526, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Splitter
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. AL["Low Level"] };
		[2] = { itemID = 51388, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Decapitator
		[3] = { itemID = 51453, "38500 #faction# 1300 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Gavel
		[4] = { itemID = 51519, "38500 #faction# 1090 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Pummeler
		[5] = { itemID = 51445, "16500 #faction# 450 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Bonecracker
		[6] = { itemID = 51390, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Bonegrinder
		[7] = { itemID = 51480, desc = "=ds=#w7#", "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Pike
		[8] = { itemID = 51404, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Battle Staff
		[9] = { itemID = 51456, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Energy Staff
		[10] = { itemID = 51402, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Focus Staff
		[11] = { itemID = 51431, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Staff
		[12] = { itemID = 51400, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's War Staff
		[13] = { itemID = 51394, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Longbow
		[14] = { itemID = 51411, "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Heavy Crossbow
		[15] = { itemID = 51449, desc = "=ds=#w5#", "55000 #faction# 1540 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Rifle
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. AL["High Level"] };
		[17] = { itemID = 51389, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Sunderer
		[18] = { itemID = 51454, "3950 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Salvation
		[19] = { itemID = 51520, "3300 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Truncheon
		[20] = { itemID = 51446, "1370 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Punisher
		[21] = { itemID = 51391, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Crusher
		[22] = { itemID = 51481, desc = "=ds=#w7#", "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Halberd
		[23] = { itemID = 51403, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Acute Staff
		[24] = { itemID = 51401, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Combat Staff
		[25] = { itemID = 51432, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Greatstaff
		[26] = { itemID = 51457, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Light Staff
		[27] = { itemID = 51405, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Skirmish Staff
		[28] = { itemID = 51395, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Recurve
		[29] = { itemID = 51412, "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Repeater
		[30] = { itemID = 51450, desc = "=ds=#w5#", "4670 #arena# #reqrating# 2200" }; --Wrathful Gladiator's Shotgun
	};
	{
		Name = "Page 3";
		[1] = { itemID = 51452, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Barrier
		[2] = { itemID = 51455, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Redoubt
		[3] = { itemID = 51533, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Shield Wall
		[4] = { itemID = 51535, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's War Edge
		[5] = { itemID = 51532, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Baton of Light
		[6] = { itemID = 51531, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Piercing Touch
		[7] = { itemID = 51410, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Touch of Defeat
		[8] = { itemID = 51451, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Wand of Alacrity
		[9] = { itemID = 51407, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Compendium
		[10] = { itemID = 51396, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Endgame
		[11] = { itemID = 51408, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Grimoire
		[12] = { itemID = 51409, "350 #arena# #reqrating# 1800" }; --Wrathful Gladiator's Reprieve
	};
};

-----------------------
--- PvP Class Items ---
-----------------------

AtlasLoot_Data["PVPidolWRATH"] = {
	Name = "Idols/Librams/Sigils/Totems";
	{
		Name = "Page 1";
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. BabbleInventory["Idols"] };
		[2] = { itemID = 51429, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Idol of Resolve
		[3] = { itemID = 51437, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Idol of Steadfastness
		[4] = { itemID = 51423, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Idol of Tenacity
		[6] = { itemID = 42591, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Idol of Resolve
		[7] = { itemID = 42585, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Idol of Steadfastness
		[8] = { itemID = 42580, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Idol of Tenacity
		[10] = { itemID = 42589, "12000 #faction#" }; --Furious Gladiator's Idol of Resolve
		[11] = { itemID = 42584, "12000 #faction#" }; --Furious Gladiator's Idol of Steadfastness
		[12] = { itemID = 42579, "12000 #faction#" }; --Furious Gladiator's Idol of Tenacity
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. BabbleInventory["Librams"] };
		[17] = { itemID = 51478, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Libram of Fortitude
		[18] = { itemID = 51472, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Libram of Justice
		[20] = { itemID = 42854, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Libram of Fortitude
		[21] = { itemID = 42616, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Libram of Justice
		[23] = { itemID = 42853, "12000 #faction#" }; --Furious Gladiator's Libram of Fortitude
		[24] = { itemID = 42615, "12000 #faction#" }; --Furious Gladiator's Libram of Justice
	};
	{
		Name = "Page 2";
		[1] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. BabbleInventory["Sigils"] };
		[2] = { itemID = 51417, desc = "=ds=#w21#", "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Sigil of Strife
		[4] = { itemID = 42622, desc = "=ds=#w21#", "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Sigil of Strife
		[6] = { itemID = 42621, "12000 #faction#" }; --Furious Gladiator's Sigil of Strife
		[16] = { itemID = 0,  desc = "INV_Box_01", "=q6=" .. BabbleInventory["Totems"] };
		[17] = { itemID = 51507, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Totem of Indomitability
		[18] = { itemID = 51513, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Totem of Survival
		[19] = { itemID = 51501, "1260 #arena# #reqrating# 1700" }; --Wrathful Gladiator's Totem of the Third Wind
		[21] = { itemID = 42609, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Totem of Indomitability
		[22] = { itemID = 42604, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Totem of Survival
		[23] = { itemID = 42599, "6400 #faction# 350 #arena# #reqrating# 700" }; --Relentless Gladiator's Totem of the Third Wind
		[25] = { itemID = 42608, "12000 #faction#" }; --Furious Gladiator's Totem of Indomitability
		[26] = { itemID = 42603, "12000 #faction#" }; --Furious Gladiator's Totem of Survival
	};
};
-------------------------
--- PvP Miscellaneous ---
-------------------------

AtlasLoot_Data["PvP80Misc"] = {
	Name = AL["PvP Misc"];
	{
		Name = AL["PvP Misc"];
		[1] = { itemID = 51534, "550 #arena# #reqrating# 2300" }; --Wrathful Gladiator's Tabard
		[2] = { itemID = 44957, desc = "=ds=#s3# #e17#", "10000 #faction#" }; --Greater Inscription of the Gladiator
		[3] = { itemID = 45706, desc = "=ds=", "100 #arena#" }; --Commendation of Bravery
		[5] = { itemID = 36931, "10000 #faction#" }; --Ametrine
		[6] = { itemID = 36919, "10000 #faction#" }; --Cardinal Ruby
		[7] = { itemID = 36928, "10000 #faction#" }; --Dreadstone
		[8] = { itemID = 36934, "10000 #faction#" }; --Eye of Zul
		[9] = { itemID = 36922, "10000 #faction#" }; --King's Amber
		[10] = { itemID = 36925, "10000 #faction#" }; --Majestic Zircon
		[16] = { itemID = 41563, "1250 #faction#" }; --Design: Durable Huge Citrine
		[17] = { itemID = 41564, "1250 #faction#" }; --Design: Empowered Huge Citrine
		[18] = { itemID = 41565, "1250 #faction#" }; --Design: Lucent Huge Citrine
		[19] = { itemID = 41575, "1250 #faction#" }; --Design: Mysterious Shadow Crystal
		[20] = { itemID = 41559, "1250 #faction#" }; --Design: Mystic Sun Crystal
		[21] = { itemID = 41573, "1250 #faction#" }; --Design: Opaque Dark Jade
		[22] = { itemID = 41566, "1250 #faction#" }; --Design: Resplendent Huge Citrine
		[23] = { itemID = 41569, "1250 #faction#" }; --Design: Shattered Dark Jade
		[24] = { itemID = 41572, "1250 #faction#" }; --Design: Steady Dark Jade
		[25] = { itemID = 41560, "1250 #faction#" }; --Design: Stormy Chalcedony
		[26] = { itemID = 41570, "1250 #faction#" }; --Design: Tense Dark Jade
		[27] = { itemID = 41571, "1250 #faction#" }; --Design: Turbid Dark Jade
	};
};

--------------------------------
--- World PvP - Wintergrasp  ---
--------------------------------

AtlasLoot_Data["LakeWintergrasp"] = {
	Name = "Wintergrasp";
	{
		Name = "Page 1";
		[1] = { itemID = 51570, "25 #wintergraspmark#" }; --Titan-Forged Cloak of Ascendancy
		[2] = { itemID = 51571, "25 #wintergraspmark#" }; --Titan-Forged Cloak of Victory
		[4] = { itemID = 46083, "25 #wintergraspmark#" }; --Titan-Forged Rune of Accuracy
		[5] = { itemID = 46085, "25 #wintergraspmark#" }; --Titan-Forged Rune of Alacrity
		[6] = { itemID = 46081, "25 #wintergraspmark#" }; --Titan-Forged Rune of Audacity
		[7] = { itemID = 46084, "25 #wintergraspmark#" }; --Titan-Forged Rune of Cruelty
		[9] = { itemID = 46082, "25 #wintergraspmark#" }; --Titan-Forged Rune of Determination
		[10] = { itemID = 43956, desc = "=ds=#e12#", "300 #wintergrasp#" }; --Reins of the Black War Mammoth
		[11] = { itemID = 44077, desc = "=ds=#e12#", "300 #wintergrasp#" }; --Reins of the Black War Mammoth
		[16] = { itemID = 51568, "25 #wintergraspmark#" }; --Titan-Forged Pendant of Ascendancy
		[17] = { itemID = 51569, "25 #wintergraspmark#" }; --Titan-Forged Pendant of Victory
		[19] = { itemID = 44914, "25 #wintergraspmark#" }; --Anvil of Titans
		[20] = { itemID = 44912, "25 #wintergraspmark#" }; --Flow of Knowledge
		[21] = { itemID = 46086, "25 #wintergraspmark#" }; --Platinum Disks of Battle
		[22] = { itemID = 46088, "25 #wintergraspmark#" }; --Platinum Disks of Swiftness
		[23] = { itemID = 46087, "25 #wintergraspmark#" }; --Platinum Disks of Sorcery
		[25] = { itemID = 48999, "15 #wintergraspmark#" }; --Titan-Forged Band of Ascendancy
		[26] = { itemID = 49000, "15 #wintergraspmark#" }; --Titan-Forged Band of Victory
	};
	{
		Name = "Page 2";
		[2] = { itemID = 44910, "40 #wintergraspmark#" }; --Titan-Forged Hood of Dominance
		[3] = { itemID = 51573, "40 #wintergraspmark#" }; --Titan-Forged Shoulderpads of Domination
		[4] = { itemID = 46065, "40 #wintergraspmark#" }; --Titan-Forged Raiment of Dominance
		[6] = { itemID = 46079, "15 #wintergraspmark#" }; --Titan-Forged Cord of Dominance
		[7] = { itemID = 48997, "40 #wintergraspmark#" }; --Titan-Forged Cloth Trousers of Domination
		[8] = { itemID = 44899, "15 #wintergraspmark#" }; --Titan-Forged Slippers of Dominance
		[17] = { itemID = 44909, "40 #wintergraspmark#" }; --Titan-Forged Hood of Salvation
		[18] = { itemID = 51572, "40 #wintergraspmark#" }; --Titan-Forged Shoulderpads of Salvation
		[19] = { itemID = 46066, "40 #wintergraspmark#" }; --Titan-Forged Raiment of Salvation
		[20] = { itemID = 48979, "15 #wintergraspmark#" }; --Titan-Forged Cuffs of Salvation
		[21] = { itemID = 46080, "15 #wintergraspmark#" }; --Titan-Forged Cord of Salvation
		[22] = { itemID = 48991, "40 #wintergraspmark#" }; --Titan-Forged Cloth Leggings of Salvation
		[23] = { itemID = 44900, "15 #wintergraspmark#" }; --Titan-Forged Slippers of Salvation
	};
	{
		Name = "Page 3";
		[1] = { itemID = 44907, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Dominance
		[2] = { itemID = 51574, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Dominance
		[3] = { itemID = 46064, "40 #wintergraspmark#" }; --Titan-Forged Leather Chestguard of Dominance
		[4] = { itemID = 48974, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Dominance
		[5] = { itemID = 46076, "15 #wintergraspmark#" }; --Titan-Forged Belt of Dominance
		[6] = { itemID = 48998, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Dominance
		[7] = { itemID = 44891, "15 #wintergraspmark#" }; --Titan-Forged Boots of Dominance
		[9] = { itemID = 44906, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Salvation
		[10] = { itemID = 51575, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Salvation
		[11] = { itemID = 46063, "40 #wintergraspmark#" }; --Titan-Forged Leather Chestguard of Salvation
		[12] = { itemID = 48975, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Salvation
		[13] = { itemID = 46077, "15 #wintergraspmark#" }; --Titan-Forged Belt of Salvation
		[14] = { itemID = 48987, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Salvation
		[15] = { itemID = 44892, "15 #wintergraspmark#" }; --Titan-Forged Boots of Salvation
		[16] = { itemID = 44908, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Triumph
		[17] = { itemID = 51576, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Triumph
		[18] = { itemID = 46062, "40 #wintergraspmark#" }; --Titan-Forged Leather Tunic of Triumph
		[19] = { itemID = 48976, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Triumph
		[20] = { itemID = 46078, "15 #wintergraspmark#" }; --Titan-Forged Belt of Triumph
		[21] = { itemID = 48988, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Triumph
		[22] = { itemID = 44893, "15 #wintergraspmark#" }; --Titan-Forged Boots of Triumph
	};
	{
		Name = "Page 4";
		[1] = { itemID = 44904, "40 #wintergraspmark#" }; --Titan-Forged Mail Helm of Dominance
		[2] = { itemID = 51578, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Dominance
		[3] = { itemID = 46061, "40 #wintergraspmark#" }; --Titan-Forged Mail Armor of Domination
		[4] = { itemID = 48980, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Dominance
		[5] = { itemID = 46073, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Dominance
		[6] = { itemID = 48990, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Dominance
		[7] = { itemID = 44896, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Dominance
		[9] = { itemID = 44905, "40 #wintergraspmark#" }; --Titan-Forged Ringmail Helm of Salvation
		[10] = { itemID = 51579, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Salvation
		[11] = { itemID = 46060, "40 #wintergraspmark#" }; --Titan-Forged Ringmail of Salvation
		[12] = { itemID = 48981, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Salvation
		[13] = { itemID = 46074, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Salvation
		[14] = { itemID = 48994, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Salvation
		[15] = { itemID = 44897, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Salvation
		[16] = { itemID = 44903, "40 #wintergraspmark#" }; --Titan-Forged Chain Helm of Triumph
		[17] = { itemID = 51577, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Triumph
		[18] = { itemID = 46059, "40 #wintergraspmark#" }; --Titan-Forged Chain Armor of Triumph
		[19] = { itemID = 48982, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Triumph
		[20] = { itemID = 46075, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Triumph
		[21] = { itemID = 48983, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Triumph
		[22] = { itemID = 44898, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Triumph
	};
	{
		Name = "Page 5";
		[2] = { itemID = 44901, "40 #wintergraspmark#" }; --Titan-Forged Plate Headcover of Salvation
		[3] = { itemID = 51581, "40 #wintergraspmark#" }; --Titan-Forged Shoulderplates of Salvation
		[4] = { itemID = 46057, "40 #wintergraspmark#" }; --Titan-Forged Chestguard of Salvation
		[5] = { itemID = 48977, "15 #wintergraspmark#" }; --Titan-Forged Bracers of Salvation
		[6] = { itemID = 46071, "15 #wintergraspmark#" }; --Titan-Forged Girdle of Salvation
		[7] = { itemID = 48992, "40 #wintergraspmark#" }; --Titan-Forged Plate Legplates of Salvation
		[8] = { itemID = 44894, "15 #wintergraspmark#" }; --Titan-Forged Greaves of Salvation
		[17] = { itemID = 44902, "40 #wintergraspmark#" }; --Titan-Forged Plate Helm of Triumph
		[18] = { itemID = 51580, "40 #wintergraspmark#" }; --Titan-Forged Plate Shoulderplates of Triumph
		[19] = { itemID = 46058, "40 #wintergraspmark#" }; --Titan-Forged Breastplate of Triumph
		[20] = { itemID = 48978, "15 #wintergraspmark#" }; --Titan-Forged Bracers of Triumph
		[21] = { itemID = 46072, "15 #wintergraspmark#" }; --Titan-Forged Girdle of Triumph
		[22] = { itemID = 48993, "40 #wintergraspmark#" }; --Titan-Forged Plate Legguards of Triumph
		[23] = { itemID = 44895, "15 #wintergraspmark#" }; --Titan-Forged Greaves of Triumph
	};
	{
		Name = "Page 6";
		[1] = { itemID = 44066, "20 #wintergrasp#" }; --Kharmaa's Grace
		[2] = { itemID = 44081, "15 #wintergrasp#" }; --Enigmatic Starflare Diamond
		[3] = { itemID = 44084, "15 #wintergrasp#" }; --Forlorn Starflare Diamond
		[4] = { itemID = 44082, "15 #wintergrasp#" }; --Impassive Starflare Diamond
		[5] = { itemID = 44076, "15 #wintergrasp#" }; --Swift Starflare Diamond
		[6] = { itemID = 44078, "15 #wintergrasp#" }; --Swift Starflare Diamond
		[7] = { itemID = 44087, "15 #wintergrasp#" }; --Persistent Earthshatter Diamond
		[8] = { itemID = 44088, "15 #wintergrasp#" }; --Powerful Earthshatter Diamond
		[9] = { itemID = 44089, "15 #wintergrasp#" }; --Trenchant Earthshatter Diamond
		[11] = { itemID = 44075, desc = "=ds=#s1# #e17#", "40 #wintergrasp#" }; --Arcanum of Dominance
		[12] = { itemID = 44069, desc = "=ds=#s1# #e17#", "40 #wintergrasp#" }; --Arcanum of Triumph
		[13] = { itemID = 44068, desc = "=ds=#s3# #e17#", "30 #wintergrasp#" }; --Inscription of Dominance
		[14] = { itemID = 44067, desc = "=ds=#s3# #e17#", "30 #wintergrasp#" }; --Inscription of Triumph
		[16] = { itemID = 41730, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Durable Monarch Topaz
		[17] = { itemID = 41732, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Empowered Monarch Topaz
		[18] = { itemID = 41733, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Lucent Monarch Topaz
		[19] = { itemID = 41735, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Shattered Forest Emerald
		[20] = { itemID = 41739, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Opaque Forest Emerald
		[21] = { itemID = 41736, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Tense Forest Emerald
		[22] = { itemID = 41737, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Turbid Forest Emerald
		[23] = { itemID = 41738, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Steady Forest Emerald
		[24] = { itemID = 41734, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Resplendent Monarch Topaz
		[25] = { itemID = 41727, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Mystic Autumn's Glow
		[26] = { itemID = 41740, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Mysterious Twilight Opal
		[27] = { itemID = 41728, desc = "=ds=#p12# (390)", "12 #wintergrasp#" }; --Design: Stormy Sky Sapphire
		[28] = { itemID = 41742, desc = "=ds=#p12# (420)", "24 #wintergrasp#" }; --Design: Enigmatic Skyflare Diamond
		[29] = { itemID = 41743, desc = "=ds=#p12# (420)", "24 #wintergrasp#" }; --Design: Forlorn Skyflare Diamond
		[30] = { itemID = 41744, desc = "=ds=#p12# (420)", "24 #wintergrasp#" }; --Design: Impassive Skyflare Diamond
	};
	{
		Name = "Page 7";
		[1] = { itemID = 44107, desc = "=q7=Exquisite Sunderseer Mantle", "=ds=#s3#", "200 #wintergrasp#" };
		[2] = { itemID = 44103, desc = "=q7=Exceptional Stormshroud Shoulders", "=ds=#s3#", "200 #wintergrasp#" };
		[3] = { itemID = 44105, desc = "=q7=Lasting Feralheart Spaulders", "=ds=#s3#", "200 #wintergrasp#" };
		[4] = { itemID = 44102, desc = "=q7=Aged Pauldrons of The Five Thunders", "=ds=#s3#", "200 #wintergrasp#" };
		[5] = { itemID = 44101, desc = "=q7=Prized Beastmaster's Mantle", "=ds=#s3#", "200 #wintergrasp#" };
		[6] = { itemID = 44100, desc = "=q7=Pristine Lightforge Spaulders", "=ds=#s3#", "200 #wintergrasp#" };
		[7] = { itemID = 44099, desc = "=q7=Strengthened Stockade Pauldrons", "=ds=#s3#", "200 #wintergrasp#" };
		[9] = { itemID = 44098, desc = "=q7=Inherited Insignia of the Alliance", "=ds=#s14#", "250 #wintergrasp#" };
		[10] = { itemID = 44097, desc = "=q7=Inherited Insignia of the Horde", "=ds=#s14#", "250 #wintergrasp#" };
		[12] = { itemID = 44115, desc = "=q7=Wintergrasp Commendation", "=ds=", "30 #wintergrasp# / 9 #wintergraspmark#" };
		[16] = { itemID = 44091, desc = "=q7=Sharpened Scarlet Kris", "=ds=#h1#", "200 #wintergrasp#" };
		[17] = { itemID = 44096, desc = "=q7=Battleworn Thrash Blade", "=ds=#h1#", "200 #wintergrasp#" };
		[18] = { itemID = 44092, desc = "=q7=Reforged Truesilver Champion", "=ds=#h2#", "325 #wintergrasp#" };
		[19] = { itemID = 44094, desc = "=q7=The Blessed Hammer of Grace", "=ds=#h3#", "250 #wintergrasp#" };
		[20] = { itemID = 44095, desc = "=q7=Grand Staff of Jordan", "=ds=#w9#", "325 #wintergrasp#" };
		[21] = { itemID = 44093, desc = "=q7=Upgraded Dwarven Hand Cannon", "=ds=#w5#", "325 #wintergrasp#" };
	};
};

-----------------------------------------------
--- World PvP - Grizzly Hills: Venture Bay  ---
-----------------------------------------------

AtlasLoot_Data["VentureBay"] = {
	Name = "Venture Bay";
	{
		Name = "Venture Bay";
		[1] = { itemID = 38354, "50 #venturecoin#" }; --Oil-Stained Tarp
		[2] = { itemID = 38355, "50 #venturecoin#" }; --Thick Goblin Back Protector 
		[3] = { itemID = 38353, "50 #venturecoin#" }; --Venture Bay Buccaneer's Cape
		[4] = { itemID = 38358, "70 #venturecoin#" }; --Arcane Revitalizer
		[5] = { itemID = 38359, "70 #venturecoin#" }; --Goblin Repetition Reducer
		[6] = { itemID = 38357, "30 #venturecoin#" }; --Sharpened Throwing Gizmo
		[7] = { itemID = 38356, "30 #venturecoin#" }; --Venture Battle Wand
		[8] = { itemID = 38360, "30 #venturecoin#" }; --Idol of Arcane Terror
		[9] = { itemID = 38365, "30 #venturecoin#" }; --Idol of Perspicacious Attacks
		[10] = { itemID = 38366, "30 #venturecoin#" }; --Idol of Pure Thoughts
		[11] = { itemID = 38364, "30 #venturecoin#" }; --Venture Co. Libram of Mostly Holy Deeds
		[12] = { itemID = 38363, "30 #venturecoin#" }; --Venture Co. Libram of Protection
		[13] = { itemID = 38362, "30 #venturecoin#" }; --Venture Co. Libram of Retribution
		[16] = { itemID = 38368, "30 #venturecoin#" }; --Totem of the Bay
		[17] = { itemID = 38367, "30 #venturecoin#" }; --Venture Co. Flame Slicer
		[18] = { itemID = 38361, "30 #venturecoin#" }; --Venture Co. Lightning Rod
		[19] = { itemID = 40875, desc = "=ds=#w21#", "30 #venturecoin#" }; --Sigil of Arthritic Binding
		[20] = { itemID = 40822, desc = "=ds=#w21#", "30 #venturecoin#" }; --Sigil of the Frozen Conscience
		[21] = { itemID = 40867, desc = "=ds=#w21#", "30 #venturecoin#" }; --Sigil of the Wild Buck
		[23] = { itemID = 37836, "=ds=#m17#" }; --Venture Coin
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

---------------------------------------
---------- Naxx Sets (T7) -------------
---------------------------------------

AtlasLoot_Data["T7"] = {
	Name = "Tier 7";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t7s10_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39619, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Scourgeborne Helmet
		[3] = { itemID = 39621, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Scourgeborne Shoulderplates
		[4] = { itemID = 39617, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Scourgeborne Battleplate
		[5] = { itemID = 39618, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Scourgeborne Gauntlets
		[6] = { itemID = 39620, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Scourgeborne Legplates
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t7s10_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40554, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Scourgeborne Helmet
		[10] = { itemID = 40557, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Scourgeborne Shoulderplates
		[11] = { itemID = 40550, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Scourgeborne Battleplate
		[12] = { itemID = 40552, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Scourgeborne Gauntlets
		[13] = { itemID = 40556, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Scourgeborne Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t7s10_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39625, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Scourgeborne Faceguard
		[3] = { itemID = 39627, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Scourgeborne Pauldrons
		[4] = { itemID = 39623, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Scourgeborne Chestguard
		[5] = { itemID = 39624, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Scourgeborne Handguards
		[6] = { itemID = 39626, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Scourgeborne Legguards
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t7s10_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40565, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Scourgeborne Faceguard
		[10] = { itemID = 40568, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Scourgeborne Pauldrons
		[11] = { itemID = 40559, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Scourgeborne Chestguard
		[12] = { itemID = 40563, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Scourgeborne Handguards
		[13] = { itemID = 40567, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Scourgeborne Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#t7s1_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39553, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Headguard
		[3] = { itemID = 39556, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Shoulderpads
		[4] = { itemID = 39554, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Raiments
		[5] = { itemID = 39557, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Handgrips
		[6] = { itemID = 39555, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Legguards
		[8] = { icon = "Ability_Druid_Maul", name = "=q6=#t7s1_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40473, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Headguard
		[10] = { itemID = 40494, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Shoulderpads
		[11] = { itemID = 40471, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Raiments
		[12] = { itemID = 40472, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Handgrips
		[13] = { itemID = 40493, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t7s1_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39531, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Headpiece
		[3] = { itemID = 39542, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Spaulders
		[4] = { itemID = 39538, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Robe
		[5] = { itemID = 39543, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Handguards
		[6] = { itemID = 39539, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Leggings
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t7s1_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40461, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Headpiece
		[10] = { itemID = 40465, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Spaulders
		[11] = { itemID = 40463, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Robe
		[12] = { itemID = 40460, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Handguards
		[13] = { itemID = 40462, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Leggings
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t7s1_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39545, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Cover
		[3] = { itemID = 39548, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Mantle
		[4] = { itemID = 39547, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Vestments
		[5] = { itemID = 39544, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Gloves
		[6] = { itemID = 39546, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Trousers
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t7s1_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40467, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Cover
		[10] = { itemID = 40470, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Mantle
		[11] = { itemID = 40469, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Vestments
		[12] = { itemID = 40466, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Gloves
		[13] = { itemID = 40468, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t7s2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39578, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Cryptstalker Headpiece
		[3] = { itemID = 39581, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Cryptstalker Spaulders
		[4] = { itemID = 39579, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Cryptstalker Tunic
		[5] = { itemID = 39582, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Cryptstalker Handguards
		[6] = { itemID = 39580, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Cryptstalker Legguards
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t7s2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40505, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Crypstalker Headpiece
		[10] = { itemID = 40507, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Crypstalker Spaulders
		[11] = { itemID = 40503, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Crypstalker Tunic
		[12] = { itemID = 40504, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Crypstalker Handguards
		[13] = { itemID = 40506, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Crypstalker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t7s3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39491, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Frostfire Circlet
		[3] = { itemID = 39494, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Frostfire Shoulderpads
		[4] = { itemID = 39492, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Frostfire Robe
		[5] = { itemID = 39495, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Frostfire Gloves
		[6] = { itemID = 39493, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Frostfire Leggings
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t7s3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40416, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Frostfire Circlet
		[10] = { itemID = 40419, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Frostfire Shoulderpads
		[11] = { itemID = 40418, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Frostfire Robe
		[12] = { itemID = 40415, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Frostfire Gloves
		[13] = { itemID = 40417, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Frostfire Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t7s4_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39628, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Headpiece
		[3] = { itemID = 39631, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Spaulders
		[4] = { itemID = 39629, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Tunic
		[5] = { itemID = 39632, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Gloves
		[6] = { itemID = 39630, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Greaves
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t7s4_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40571, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Headpiece
		[10] = { itemID = 40573, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Spaulders
		[11] = { itemID = 40569, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Tunic
		[12] = { itemID = 40570, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Gloves
		[13] = { itemID = 40572, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t7s4_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39635, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Helm
		[3] = { itemID = 39637, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Shoulderplates
		[4] = { itemID = 39633, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Chestpiece
		[5] = { itemID = 39634, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Gauntlets
		[6] = { itemID = 39636, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Legplates
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t7s4_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40576, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Helm
		[10] = { itemID = 40578, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Shoulderplates
		[11] = { itemID = 40574, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Chestpiece
		[12] = { itemID = 40575, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Gauntlets
		[13] = { itemID = 40577, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t7s4_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39640, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Faceguard
		[3] = { itemID = 39642, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Shouldergards
		[4] = { itemID = 39638, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Breastplate
		[5] = { itemID = 39639, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Handguards
		[6] = { itemID = 39641, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Legguards
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t7s4_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40581, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Faceguard
		[10] = { itemID = 40584, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Shouldergards
		[11] = { itemID = 40579, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Breastplate
		[12] = { itemID = 40580, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Handguards
		[13] = { itemID = 40583, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t7s5_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39521, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Circlet of Faith
		[3] = { itemID = 39529, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Mantle of Faith
		[4] = { itemID = 39523, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Raiments of Faith
		[5] = { itemID = 39530, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Handwraps of Faith
		[6] = { itemID = 39528, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Pants of Faith
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t7s5_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40456, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Circlet of Faith
		[10] = { itemID = 40459, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Mantle of Faith
		[11] = { itemID = 40458, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Raiments of Faith
		[12] = { itemID = 40454, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Handwraps of Faith
		[13] = { itemID = 40457, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Pants of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t7s5_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39514, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Crown of Faith
		[3] = { itemID = 39518, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Shoulderpads of Faith
		[4] = { itemID = 39515, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Robe of Faith
		[5] = { itemID = 39519, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Gloves of Faith
		[6] = { itemID = 39517, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Leggings of Faith
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t7s5_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40447, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Crown of Faith
		[10] = { itemID = 40450, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Shoulderpads of Faith
		[11] = { itemID = 40449, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Robe of Faith
		[12] = { itemID = 40445, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Gloves of Faith
		[13] = { itemID = 40448, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Leggings of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t7s6#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39561, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Bonescythe Helmet
		[3] = { itemID = 39565, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Bonescythe Pauldrons
		[4] = { itemID = 39558, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Bonescythe Breastplate
		[5] = { itemID = 39560, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Bonescythe Gauntlets
		[6] = { itemID = 39564, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Bonescythe Legplates
		[8] = { icon = "Ability_BackStab", name = "=q6=#t7s6#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40499, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Bonescythe Helmet
		[10] = { itemID = 40502, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Bonescythe Pauldrons
		[11] = { itemID = 40495, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Bonescythe Breastplate
		[12] = { itemID = 40496, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Bonescythe Gauntlets
		[13] = { itemID = 40500, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Bonescythe Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t7s7_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39583, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Headpiece
		[3] = { itemID = 39590, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Spaulders
		[4] = { itemID = 39588, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Tunic
		[5] = { itemID = 39591, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Handguards
		[6] = { itemID = 39589, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter Legguards
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t7s7_3#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40510, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Headpiece
		[10] = { itemID = 40513, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Spaulders
		[11] = { itemID = 40508, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Tunic
		[12] = { itemID = 40509, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Handguards
		[13] = { itemID = 40512, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t7s7_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39602, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Faceguard
		[3] = { itemID = 39604, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Shoulderguards
		[4] = { itemID = 39597, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Chestguard
		[5] = { itemID = 39601, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Grips
		[6] = { itemID = 39603, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter War-Kilt
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t7s7_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40521, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Faceguard
		[10] = { itemID = 40524, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Shoulderguards
		[11] = { itemID = 40523, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Chestguard
		[12] = { itemID = 40520, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Grips
		[13] = { itemID = 40522, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#t7s7_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39594, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Helm
		[3] = { itemID = 39596, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Shoulderpads
		[4] = { itemID = 39592, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Hauberk
		[5] = { itemID = 39593, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Gloves
		[6] = { itemID = 39595, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter Kilt
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6=#t7s7_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40516, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Helm
		[10] = { itemID = 40518, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Shoulderpads
		[11] = { itemID = 40514, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Hauberk
		[12] = { itemID = 40515, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Gloves
		[13] = { itemID = 40517, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t7s8#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39496, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Plagueheart Circlet
		[3] = { itemID = 39499, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Plagueheart Shoulderpads
		[4] = { itemID = 39497, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Plagueheart Robe
		[5] = { itemID = 39500, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Plagueheart Gloves
		[6] = { itemID = 39498, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Plagueheart Leggings
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t7s8#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40421, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Plagueheart Circlet
		[10] = { itemID = 40424, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Plagueheart Shoulderpads
		[11] = { itemID = 40423, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Plagueheart Robe
		[12] = { itemID = 40420, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Plagueheart Gloves
		[13] = { itemID = 40422, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Plagueheart Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t7s9_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39605, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreadnaught Helmet
		[3] = { itemID = 39608, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreadnaught Shoulderplates
		[4] = { itemID = 39606, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreadnaught Battleplate
		[5] = { itemID = 39609, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreadnaught Gauntlets
		[6] = { itemID = 39607, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreadnaught Legplates
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t7s9_1#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40528, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreadnaught Helmet
		[10] = { itemID = 40530, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreadnaught Shoulderplates
		[11] = { itemID = 40525, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreadnaught Battleplate
		[12] = { itemID = 40527, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreadnaught Gauntlets
		[13] = { itemID = 40529, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreadnaught Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t7s9_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 39610, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreadnaught Greathelm
		[3] = { itemID = 39613, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreadnaught Pauldrons
		[4] = { itemID = 39611, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreadnaught Breastplate
		[5] = { itemID = 39622, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreadnaught Handguards
		[6] = { itemID = 39612, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreadnaught Legguards
		[8] = { icon = "INV_Shield_05", name = "=q6=#t7s9_2#", desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[9] = { itemID = 40546, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreadnaught Greathelm
		[10] = { itemID = 40548, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreadnaught Pauldrons
		[11] = { itemID = 40544, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreadnaught Breastplate
		[12] = { itemID = 40545, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreadnaught Handguards
		[13] = { itemID = 40547, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreadnaught Legguards
	};
};


---------------------------------------
---------- Ulduar Sets (T8) -----------
---------------------------------------

AtlasLoot_Data["T8"] = {
	Name = "Tier 8";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t8s10_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45342, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Darkruned Helmet
		[3] = { itemID = 45344, "=ds=" .. BabbleBoss.Thorim }; --Valorous Darkruned Shoulderplates
		[4] = { itemID = 45340, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Darkruned Battleplate
		[5] = { itemID = 45341, "=ds=" .. BabbleBoss.Freya }; --Valorous Darkruned Gauntlets
		[6] = { itemID = 45343, "=ds=" .. BabbleBoss.Hodir }; --Valorous Darkruned Legplates
		[7] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t8s10_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46115, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Darkruned Helmet
		[9] = { itemID = 46117, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Darkruned Shoulderplates
		[10] = { itemID = 46111, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Darkruned Battleplate
		[11] = { itemID = 46113, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Darkruned Gauntlets
		[12] = { itemID = 46116, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Darkruned Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t8s10_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45336, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Darkruned Faceguard
		[3] = { itemID = 45339, "=ds=" .. BabbleBoss.Thorim }; --Valorous Darkruned Pauldrons
		[4] = { itemID = 45335, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Darkruned Chestguard
		[5] = { itemID = 45337, "=ds=" .. BabbleBoss.Freya }; --Valorous Darkruned Handguards
		[6] = { itemID = 45338, "=ds=" .. BabbleBoss.Hodir }; --Valorous Darkruned Legguards
		[7] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t8s10_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46120, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Darkruned Faceguard
		[9] = { itemID = 46122, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Darkruned Pauldrons
		[10] = { itemID = 46118, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Darkruned Chestguard
		[11] = { itemID = 46119, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Darkruned Handguards
		[12] = { itemID = 46121, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Darkruned Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#t8s1_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45356, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Headguard
		[3] = { itemID = 45359, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Shoulderpads
		[4] = { itemID = 45358, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Raiments
		[5] = { itemID = 45355, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Handgrips
		[6] = { itemID = 45357, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Legguards
		[7] = { icon = "Ability_Druid_Maul", name = "=q6=#t8s1_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46161, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Headguard
		[9] = { itemID = 46157, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Shoulderpads
		[10] = { itemID = 46159, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Raiments
		[11] = { itemID = 46158, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Handgrips
		[12] = { itemID = 46160, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t8s1_3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45346, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Headpiece
		[3] = { itemID = 45349, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Spaulders
		[4] = { itemID = 45348, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Robe
		[5] = { itemID = 45345, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Handguards
		[6] = { itemID = 45347, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Leggings
		[7] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t8s1_3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46184, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Headpiece
		[9] = { itemID = 46187, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Spaulders
		[10] = { itemID = 46186, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Robe
		[11] = { itemID = 46183, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Handguards
		[12] = { itemID = 46185, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Leggings
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t8s1_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 46313, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Cover
		[3] = { itemID = 45352, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Mantle
		[4] = { itemID = 45354, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Vestments
		[5] = { itemID = 45351, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Gloves
		[6] = { itemID = 45353, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Trousers
		[7] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t8s1_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46191, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Cover
		[9] = { itemID = 46196, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Mantle
		[10] = { itemID = 46194, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Vestments
		[11] = { itemID = 46189, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Gloves
		[12] = { itemID = 46192, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t8s2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45361, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Scourgestalker Headpiece
		[3] = { itemID = 45363, "=ds=" .. BabbleBoss.Thorim }; --Valorous Scourgestalker Spaulders
		[4] = { itemID = 45364, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Scourgestalker Tunic
		[5] = { itemID = 45360, "=ds=" .. BabbleBoss.Freya }; --Valorous Scourgestalker Handguards
		[6] = { itemID = 45362, "=ds=" .. BabbleBoss.Hodir }; --Valorous Scourgestalker Legguards
		[7] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t8s2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46143, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Scourgestalker Headpiece
		[9] = { itemID = 46145, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Scourgestalker Spaulders
		[10] = { itemID = 46141, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Scourgestalker Tunic
		[11] = { itemID = 46142, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Scourgestalker Handguards
		[12] = { itemID = 46144, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Scourgestalker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t8s3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45365, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Kirin Tor Hood
		[3] = { itemID = 45369, "=ds=" .. BabbleBoss.Thorim }; --Valorous Kirin Tor Shoulderpads
		[4] = { itemID = 45368, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Kirin Tor Tunic
		[5] = { itemID = 46131, "=ds=" .. BabbleBoss.Freya }; --Valorous Kirin Tor Gauntlets
		[6] = { itemID = 45367, "=ds=" .. BabbleBoss.Hodir }; --Valorous Kirin Tor Leggings
		[7] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t8s3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46129, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Kirin Tor Hood
		[9] = { itemID = 46134, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Kirin Tor Shoulderpads
		[10] = { itemID = 46130, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Kirin Tor Tunic
		[11] = { itemID = 46132, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Kirin Tor Gauntlets
		[12] = { itemID = 46133, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Kirin Tor Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t8s4_1#", desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45372, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Headpiece
		[3] = { itemID = 45373, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Spaulders
		[4] = { itemID = 45374, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Tunic
		[5] = { itemID = 45370, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Gloves
		[6] = { itemID = 45371, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Greaves
		[7] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t8s4_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46180, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Headpiece
		[9] = { itemID = 46182, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Spaulders
		[10] = { itemID = 46178, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Tunic
		[11] = { itemID = 46179, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Gloves
		[12] = { itemID = 46181, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t8s4_2#", desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45377, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Helm
		[3] = { itemID = 45380, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Shoulderplates
		[4] = { itemID = 45375, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Battleplate
		[5] = { itemID = 45376, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Gauntlets
		[6] = { itemID = 45379, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Legplates
		[7] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t8s4_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46156, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Helm
		[9] = { itemID = 46152, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Shoulderplates
		[10] = { itemID = 46154, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Battleplate
		[11] = { itemID = 46155, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Gauntlets
		[12] = { itemID = 46153, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t8s4_3#", desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45382, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Faceguard
		[3] = { itemID = 45385, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Shouldergards
		[4] = { itemID = 45381, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Breastplate
		[5] = { itemID = 45383, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Handguards
		[6] = { itemID = 45384, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Legguards
		[7] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t8s4_3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46175, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Faceguard
		[9] = { itemID = 46177, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Shouldergards
		[10] = { itemID = 46173, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Breastplate
		[11] = { itemID = 46174, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Handguards
		[12] = { itemID = 46176, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t8s5_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45391, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Circlet of Sanctification
		[3] = { itemID = 45393, "=ds=" .. BabbleBoss.Thorim }; --Valorous Mantle of Sanctification
		[4] = { itemID = 45395, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Raiments of Sanctification
		[5] = { itemID = 45392, "=ds=" .. BabbleBoss.Freya }; --Valorous Handwraps of Sanctification
		[6] = { itemID = 45394, "=ds=" .. BabbleBoss.Hodir }; --Valorous Pants of Sanctification
		[7] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t8s5_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46172, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Circlet of Sanctification
		[9] = { itemID = 46165, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Mantle of Sanctification
		[10] = { itemID = 46168, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Raiments of Sanctification
		[11] = { itemID = 46163, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Handwraps of Sanctification
		[12] = { itemID = 46170, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Pants of Sanctification
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t8s5_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45386, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Cowl of Sanctification
		[3] = { itemID = 45390, "=ds=" .. BabbleBoss.Thorim }; --Valorous Shoulderpads of Sanctification
		[4] = { itemID = 45389, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Robe of Sanctification
		[5] = { itemID = 45387, "=ds=" .. BabbleBoss.Freya }; --Valorous Gloves of Sanctification
		[6] = { itemID = 45388, "=ds=" .. BabbleBoss.Hodir }; --Valorous Leggings of Sanctification
		[7] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t8s5_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46197, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Cowl of Sanctification
		[9] = { itemID = 46190, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Shoulderpads of Sanctification
		[10] = { itemID = 46193, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Robe of Sanctification
		[11] = { itemID = 46188, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Gloves of Sanctification
		[12] = { itemID = 46195, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Leggings of Sanctification
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t8s6#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45398, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Terrorblade Helmet
		[3] = { itemID = 45400, "=ds=" .. BabbleBoss.Thorim }; --Valorous Terrorblade Pauldrons
		[4] = { itemID = 45396, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Terrorblade Breastplate
		[5] = { itemID = 45397, "=ds=" .. BabbleBoss.Freya }; --Valorous Terrorblade Gauntlets
		[6] = { itemID = 45399, "=ds=" .. BabbleBoss.Hodir }; --Valorous Terrorblade Legplates
		[7] = { icon = "Ability_BackStab", name = "=q6=#t8s6#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46125, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Terrorblade Helmet
		[9] = { itemID = 46127, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Terrorblade Pauldrons
		[10] = { itemID = 46123, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Terrorblade Breastplate
		[11] = { itemID = 46124, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Terrorblade Gauntlets
		[12] = { itemID = 46126, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Terrorblade Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t8s7_3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45402, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Headpiece
		[3] = { itemID = 45404, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Spaulders
		[4] = { itemID = 45405, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Tunic
		[5] = { itemID = 45401, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Handguards
		[6] = { itemID = 45403, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker Legguards
		[7] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t8s7_3#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46201, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Headpiece
		[9] = { itemID = 46204, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Spaulders
		[10] = { itemID = 46198, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Tunic
		[11] = { itemID = 46199, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Handguards
		[12] = { itemID = 46202, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t8s7_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45412, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Faceguard
		[3] = { itemID = 45415, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Shoulderguards
		[4] = { itemID = 45413, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Chestguard
		[5] = { itemID = 45414, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Grips
		[6] = { itemID = 45416, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker War-Kilt
		[7] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t8s7_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46212, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Faceguard
		[9] = { itemID = 46203, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Shoulderguards
		[10] = { itemID = 46205, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Chestguard
		[11] = { itemID = 46200, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Grips
		[12] = { itemID = 46208, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#t8s7_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45408, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Helm
		[3] = { itemID = 45410, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Shoulderpads
		[4] = { itemID = 45411, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Hauberk
		[5] = { itemID = 45406, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Gloves
		[6] = { itemID = 45409, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker Kilt
		[7] = { icon = "Spell_Nature_Lightning", name = "=q6=#t8s7_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46209, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Helm
		[9] = { itemID = 46211, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Shoulderpads
		[10] = { itemID = 46206, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Hauberk
		[11] = { itemID = 46207, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Gloves
		[12] = { itemID = 46210, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t8s8#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45417, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Deathbringer Hood
		[3] = { itemID = 45422, "=ds=" .. BabbleBoss.Thorim }; --Valorous Deathbringer Shoulderpads
		[4] = { itemID = 45421, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Deathbringer Robe
		[5] = { itemID = 45419, "=ds=" .. BabbleBoss.Freya }; --Valorous Deathbringer Gloves
		[6] = { itemID = 45420, "=ds=" .. BabbleBoss.Hodir }; --Valorous Deathbringer Leggings
		[7] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t8s8#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46140, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Deathbringer Hood
		[9] = { itemID = 46136, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Deathbringer Shoulderpads
		[10] = { itemID = 46137, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Deathbringer Robe
		[11] = { itemID = 46135, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Deathbringer Gloves
		[12] = { itemID = 46139, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Deathbringer Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t8s9_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45431, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Siegebreaker Helmet
		[3] = { itemID = 45433, "=ds=" .. BabbleBoss.Thorim }; --Valorous Siegebreaker Shoulderplates
		[4] = { itemID = 45429, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Siegebreaker Battleplate
		[5] = { itemID = 45430, "=ds=" .. BabbleBoss.Freya }; --Valorous Siegebreaker Gauntlets
		[6] = { itemID = 45432, "=ds=" .. BabbleBoss.Hodir }; --Valorous Siegebreaker Legplates
		[7] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t8s9_1#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46151, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Siegebreaker Helmet
		[9] = { itemID = 46149, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Siegebreaker Shoulderplates
		[10] = { itemID = 46146, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Siegebreaker Battleplate
		[11] = { itemID = 46148, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Siegebreaker Gauntlets
		[12] = { itemID = 46150, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Siegebreaker Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t8s9_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[2] = { itemID = 45425, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Siegebreaker Greathelm
		[3] = { itemID = 45428, "=ds=" .. BabbleBoss.Thorim }; --Valorous Siegebreaker Pauldrons
		[4] = { itemID = 45424, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Siegebreaker Breastplate
		[5] = { itemID = 45426, "=ds=" .. BabbleBoss.Freya }; --Valorous Siegebreaker Handguards
		[6] = { itemID = 45427, "=ds=" .. BabbleBoss.Hodir }; --Valorous Siegebreaker Legguards
		[7] = { icon = "INV_Shield_05", name = "=q6=#t8s9_2#", desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[8] = { itemID = 46166, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Siegebreaker Greathelm
		[9] = { itemID = 46167, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Siegebreaker Pauldrons
		[10] = { itemID = 46162, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Siegebreaker Breastplate
		[11] = { itemID = 46164, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Siegebreaker Handguards
		[12] = { itemID = 46169, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Siegebreaker Legguards
	};
};
------------------------
--- Tier 9 Sets (T9) ---
------------------------
AtlasLoot_Data["T9"] = {
	Name = "Tier 9";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48472, "50 #eoftriumph#" }; --Thassarian's Helmet of Conquest
		[3] = { itemID = 48478, "30 #eoftriumph#" }; --Thassarian's Shoulderplates of Conquest
		[4] = { itemID = 48474, "50 #eoftriumph#" }; --Thassarian's Battleplate of Conquest
		[5] = { itemID = 48480, "30 #eoftriumph#" }; --Thassarian's Gauntlets of Conquest
		[6] = { itemID = 48476, "50 #eoftriumph#" }; --Thassarian's Legplates of Conquest
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48483, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Helmet of Triumph
		[10] = { itemID = 48485, "=ds=#s3#","45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Shoulderplates of Triumph
		[11] = { itemID = 48481, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Battleplate of Triumph
		[12] = { itemID = 48482, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Gauntlets of Triumph
		[13] = { itemID = 48484, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Legplates of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48488, "=ds=" }; --Thassarian's Helmet of Triumph
		[18] = { itemID = 48486, "=ds=" }; --Thassarian's Shoulderplates of Triumph
		[19] = { itemID = 48490, "=ds=" }; --Thassarian's Battleplate of Triumph
		[20] = { itemID = 48489, "=ds=" }; --Thassarian's Gauntlets of Triumph
		[21] = { itemID = 48487, "=ds=" }; --Thassarian's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48503, "50 #eoftriumph#" }; --Koltira's Helmet of Conquest
		[3] = { itemID = 48505, "30 #eoftriumph#" }; --Koltira's Shoulderplates of Conquest
		[4] = { itemID = 48501, "50 #eoftriumph#" }; --Koltira's Battleplate of Conquest
		[5] = { itemID = 48502, "30 #eoftriumph#" }; --Koltira's Gauntlets of Conquest
		[6] = { itemID = 48504, "50 #eoftriumph#" }; --Koltira's Legplates of Conquest
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48498, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Helmet of Triumph
		[10] = { itemID = 48496, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Shoulderplates of Triumph
		[11] = { itemID = 48500, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Battleplate of Triumph
		[12] = { itemID = 48499, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Gauntlets of Triumph
		[13] = { itemID = 48497, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Legplates of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48493, "=ds=" }; --Koltira's Helmet of Triumph
		[18] = { itemID = 48495, "=ds=" }; --Koltira's Shoulderplates of Triumph
		[19] = { itemID = 48491, "=ds=" }; --Koltira's Battleplate of Triumph
		[20] = { itemID = 48492, "=ds=" }; --Koltira's Gauntlets of Triumph
		[21] = { itemID = 48494, "=ds=" }; --Koltira's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48529, "50 #eoftriumph#" }; --Thassarian's Faceguard of Conquest
		[3] = { itemID = 48535, "30 #eoftriumph#" }; --Thassarian's Pauldrons of Conquest
		[4] = { itemID = 48531, "50 #eoftriumph#" }; --Thassarian's Chestguard of Conquest
		[5] = { itemID = 48537, "30 #eoftriumph#" }; --Thassarian's Handguards of Conquest
		[6] = { itemID = 48533, "50 #eoftriumph#" }; --Thassarian's Legguards of Conquest
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48540, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Faceguard of Triumph
		[10] = { itemID = 48542, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Pauldrons of Triumph
		[11] = { itemID = 48538, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Chestguard of Triumph
		[12] = { itemID = 48539, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Handguards of Triumph
		[13] = { itemID = 48541, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Legguards of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48545, "=ds=" }; --Thassarian's Faceguard of Triumph
		[18] = { itemID = 48543, "=ds=" }; --Thassarian's Pauldrons of Triumph
		[19] = { itemID = 48547, "=ds=" }; --Thassarian's Chestguard of Triumph
		[20] = { itemID = 48546, "=ds=" }; --Thassarian's Handguards of Triumph
		[21] = { itemID = 48544, "=ds=" }; --Thassarian's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48560, "50 #eoftriumph#" }; --Koltira's Faceguard of Conquest
		[3] = { itemID = 48562, "30 #eoftriumph#" }; --Koltira's Pauldrons of Conquest
		[4] = { itemID = 48558, "50 #eoftriumph#" }; --Koltira's Chestguard of Conquest
		[5] = { itemID = 48559, "30 #eoftriumph#" }; --Koltira's Handguards of Conquest
		[6] = { itemID = 48561, "50 #eoftriumph#" }; --Koltira's Legguards of Conquest
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48555, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Faceguard of Triumph
		[10] = { itemID = 48553, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Pauldrons of Triumph
		[11] = { itemID = 48557, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Chestguard of Triumph
		[12] = { itemID = 48556, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Handguards of Triumph
		[13] = { itemID = 48554, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Legguards of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t9s10_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48550, "=ds=" }; --Koltira's Faceguard of Triumph
		[18] = { itemID = 48552, "=ds=" }; --Koltira's Pauldrons of Triumph
		[19] = { itemID = 48548, "=ds=" }; --Koltira's Chestguard of Triumph
		[20] = { itemID = 48549, "=ds=" }; --Koltira's Handguards of Triumph
		[21] = { itemID = 48551, "=ds=" }; --Koltira's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48102, "50 #eoftriumph#" }; --Malfurion's Headpiece of Conquest
		[3] = { itemID = 48131, "30 #eoftriumph#" }; --Malfurion's Spaulders of Conquest
		[4] = { itemID = 48129, "50 #eoftriumph#" }; --Malfurion's Robe of Conquest
		[5] = { itemID = 48132, "30 #eoftriumph#" }; --Malfurion's Handguards of Conquest
		[6] = { itemID = 48130, "50 #eoftriumph#" }; --Malfurion's Leggings of Conquest
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48134, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Headpiece of Triumph
		[10] = { itemID = 48137, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Spaulders of Triumph
		[11] = { itemID = 48136, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Robe of Triumph
		[12] = { itemID = 48133, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Handguards of Triumph
		[13] = { itemID = 48135, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Leggings of Triumph
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48141, "=ds=" }; --Malfurion's Headpiece of Triumph
		[18] = { itemID = 48138, "=ds=" }; --Malfurion's Spaulders of Triumph
		[19] = { itemID = 48139, "=ds=" }; --Malfurion's Robe of Triumph
		[20] = { itemID = 48142, "=ds=" }; --Malfurion's Handguards of Triumph
		[21] = { itemID = 48140, "=ds=" }; --Malfurion's Leggings of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48154, "50 #eoftriumph#" }; --Runetotem's Headpiece of Conquest
		[3] = { itemID = 48157, "30 #eoftriumph#" }; --Runetotem's Spaulders of Conquest
		[4] = { itemID = 48156, "50 #eoftriumph#" }; --Runetotem's Robe of Conquest
		[5] = { itemID = 48153, "30 #eoftriumph#" }; --Runetotem's Handguards of Conquest
		[6] = { itemID = 48155, "50 #eoftriumph#" }; --Runetotem's Leggings of Conquest
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48151, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Headpiece of Triumph
		[10] = { itemID = 48148, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Spaulders of Triumph
		[11] = { itemID = 48149, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Robe of Triumph
		[12] = { itemID = 48152, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Handguards of Triumph
		[13] = { itemID = 48150, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Leggings of Triumph
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t9s1_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48144, "=ds=" }; --Runetotem's Headpiece of Triumph
		[18] = { itemID = 48147, "=ds=" }; --Runetotem's Spaulders of Triumph
		[19] = { itemID = 48146, "=ds=" }; --Runetotem's Robe of Triumph
		[20] = { itemID = 48143, "=ds=" }; --Runetotem's Handguards of Triumph
		[21] = { itemID = 48145, "=ds=" }; --Runetotem's Leggings of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48214, "50 #eoftriumph#" }; --Malfurion's Headguard of Conquest
		[3] = { itemID = 48217, "30 #eoftriumph#" }; --Malfurion's Shoulderpads of Conquest
		[4] = { itemID = 48216, "50 #eoftriumph#" }; --Malfurion's Raiments of Conquest
		[5] = { itemID = 48213, "30 #eoftriumph#" }; --Malfurion's Handgrips of Conquest
		[6] = { itemID = 48215, "50 #eoftriumph#" }; --Malfurion's Legguards of Conquest
		[8] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48211, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Headguard of Triumph
		[10] = { itemID = 48208, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Shoulderpads of Triumph
		[11] = { itemID = 48209, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Raiments of Triumph
		[12] = { itemID = 48212, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Handgrips of Triumph
		[13] = { itemID = 48210, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Legguards of Triumph
		[16] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48204, "=ds=" }; --Malfurion's Headguard of Triumph
		[18] = { itemID = 48207, "=ds=" }; --Malfurion's Shoulderpads of Triumph
		[19] = { itemID = 48206, "=ds=" }; --Malfurion's Raiments of Triumph
		[20] = { itemID = 48203, "=ds=" }; --Malfurion's Handgrips of Triumph
		[21] = { itemID = 48205, "=ds=" }; --Malfurion's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48188, "50 #eoftriumph#" }; --Runetotem's Headguard of Conquest
		[3] = { itemID = 48191, "30 #eoftriumph#" }; --Runetotem's Shoulderpads of Conquest
		[4] = { itemID = 48189, "50 #eoftriumph#" }; --Runetotem's Raiments of Conquest
		[5] = { itemID = 48192, "30 #eoftriumph#" }; --Runetotem's Handgrips of Conquest
		[6] = { itemID = 48190, "50 #eoftriumph#" }; --Runetotem's Legguards of Conquest
		[8] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48194, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Headguard of Triumph
		[10] = { itemID = 48197, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Shoulderpads of Triumph
		[11] = { itemID = 48196, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Raiments of Triumph
		[12] = { itemID = 48193, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Handgrips of Triumph
		[13] = { itemID = 48195, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Legguards of Triumph
		[16] = { icon = "Ability_Druid_Maul", name = "=q6=#t9s1_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48201, "=ds=" }; --Runetotem's Headguard of Triumph
		[18] = { itemID = 48198, "=ds=" }; --Runetotem's Shoulderpads of Triumph
		[19] = { itemID = 48199, "=ds=" }; --Runetotem's Raiments of Triumph
		[20] = { itemID = 48202, "=ds=" }; --Runetotem's Handgrips of Triumph
		[21] = { itemID = 48200, "=ds=" }; --Runetotem's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48158, "50 #eoftriumph#" }; --Malfurion's Cover of Conquest
		[3] = { itemID = 48161, "30 #eoftriumph#" }; --Malfurion's Mantle of Conquest
		[4] = { itemID = 48159, "50 #eoftriumph#" }; --Malfurion's Vestments of Conquest
		[5] = { itemID = 48162, "30 #eoftriumph#" }; --Malfurion's Gloves of Conquest
		[6] = { itemID = 48160, "50 #eoftriumph#" }; --Malfurion's Trousers of Conquest
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48164, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Cover of Triumph
		[10] = { itemID = 48167, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Mantle of Triumph
		[11] = { itemID = 48166, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Vestments of Triumph
		[12] = { itemID = 48163, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Gloves of Triumph
		[13] = { itemID = 48165, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Trousers of Triumph
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48171, "=ds=" }; --Malfurion's Cover of Triumph
		[18] = { itemID = 48168, "=ds=" }; --Malfurion's Mantle of Triumph
		[19] = { itemID = 48169, "=ds=" }; --Malfurion's Vestments of Triumph
		[20] = { itemID = 48172, "=ds=" }; --Malfurion's Gloves of Triumph
		[21] = { itemID = 48170, "=ds=" }; --Malfurion's Trousers of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48184, "50 #eoftriumph#" }; --Runetotem's Cover of Conquest
		[3] = { itemID = 48187, "30 #eoftriumph#" }; --Runetotem's Mantle of Conquest
		[4] = { itemID = 48186, "50 #eoftriumph#" }; --Runetotem's Vestments of Conquest
		[5] = { itemID = 48183, "30 #eoftriumph#" }; --Runetotem's Gloves of Conquest
		[6] = { itemID = 48185, "50 #eoftriumph#" }; --Runetotem's Trousers of Conquest
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48181, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Cover of Triumph
		[10] = { itemID = 48178, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Mantle of Triumph
		[11] = { itemID = 48179, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Vestments of Triumph
		[12] = { itemID = 48182, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Gloves of Triumph
		[13] = { itemID = 48180, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Trousers of Triumph
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t9s1_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48174, "=ds=" }; --Runetotem's Cover of Triumph
		[18] = { itemID = 48177, "=ds=" }; --Runetotem's Mantle of Triumph
		[19] = { itemID = 48176, "=ds=" }; --Runetotem's Vestments of Triumph
		[20] = { itemID = 48173, "=ds=" }; --Runetotem's Gloves of Triumph
		[21] = { itemID = 48175, "=ds=" }; --Runetotem's Trousers of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48250, "50 #eoftriumph#" }; --Windrunner's Headpiece of Conquest
		[3] = { itemID = 48253, "30 #eoftriumph#" }; --Windrunner's Spaulders of Conquest
		[4] = { itemID = 48251, "50 #eoftriumph#" }; --Windrunner's Tunic of Conquest
		[5] = { itemID = 48254, "30 #eoftriumph#" }; --Windrunner's Handguards of Conquest
		[6] = { itemID = 48252, "50 #eoftriumph#" }; --Windrunner's Legguards of Conquest
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48257, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Headpiece of Triumph
		[10] = { itemID = 48259, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Spaulders of Triumph
		[11] = { itemID = 48255, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Tunic of Triumph
		[12] = { itemID = 48256, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Handguards of Triumph
		[13] = { itemID = 48258, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Legguards of Triumph
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48262, "=ds=#s1#" }; --Windrunner's Headpiece of Triumph
		[18] = { itemID = 48260, "=ds=#s3#" }; --Windrunner's Spaulders of Triumph
		[19] = { itemID = 48264, "=ds=#s5#" }; --Windrunner's Tunic of Triumph
		[20] = { itemID = 48263, "=ds=#s9#" }; --Windrunner's Handguards of Triumph
		[21] = { itemID = 48261, "=ds=#s11#" }; --Windrunner's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48277, "50 #eoftriumph#" }; --Windrunner's Headpiece of Conquest
		[3] = { itemID = 48279, "30 #eoftriumph#" }; --Windrunner's Spaulders of Conquest
		[4] = { itemID = 48275, "50 #eoftriumph#" }; --Windrunner's Tunic of Conquest
		[5] = { itemID = 48276, "30 #eoftriumph#" }; --Windrunner's Handguards of Conquest
		[6] = { itemID = 48278, "50 #eoftriumph#" }; --Windrunner's Legguards of Conquest
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48272, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Headpiece of Triumph
		[10] = { itemID = 48270, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Spaulders of Triumph
		[11] = { itemID = 48274, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Tunic of Triumph
		[12] = { itemID = 48273, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Handguards of Triumph
		[13] = { itemID = 48271, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Legguards of Triumph
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t9s2_h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48267, "=ds=#s1#" }; --Windrunner's Headpiece of Triumph
		[18] = { itemID = 48269, "=ds=#s3#" }; --Windrunner's Spaulders of Triumph
		[19] = { itemID = 48265, "=ds=#s5#" }; --Windrunner's Tunic of Triumph
		[20] = { itemID = 48266, "=ds=#s9#" }; --Windrunner's Handguards of Triumph
		[21] = { itemID = 48268, "=ds=#s11#" }; --Windrunner's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 47748, "50 #eoftriumph#" }; --Khadgar's Hood of Conquest
		[3] = { itemID = 47751, "30 #eoftriumph#" }; --Khadgar's Shoulderpads of Conquest
		[4] = { itemID = 47749, "50 #eoftriumph#" }; --Khadgar's Robe of Conquest
		[5] = { itemID = 47752, "30 #eoftriumph#" }; --Khadgar's Gauntlets of Conquest
		[6] = { itemID = 47750, "50 #eoftriumph#" }; --Khadgar's Leggings of Conquest
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 47754, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Hood of Triumph
		[10] = { itemID = 47757, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Shoulderpads of Triumph
		[11] = { itemID = 47756, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Robe of Triumph
		[12] = { itemID = 47753, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Gauntlets of Triumph
		[13] = { itemID = 47755, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Leggings of Triumph
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47761, "=ds=#s1#" }; --Khadgar's Hood of Triumph
		[18] = { itemID = 47758, "=ds=#s3#" }; --Khadgar's Shoulderpads of Triumph
		[19] = { itemID = 47759, "=ds=#s5#" }; --Khadgar's Robe of Triumph
		[20] = { itemID = 47762, "=ds=#s9#" }; --Khadgar's Gauntlets of Triumph
		[21] = { itemID = 47760, "=ds=#s11#" }; --Khadgar's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 47774, "50 #eoftriumph#" }; --Sunstrider's Hood of Conquest
		[3] = { itemID = 47777, "30 #eoftriumph#" }; --Sunstrider's Shoulderpads of Conquest
		[4] = { itemID = 47776, "50 #eoftriumph#" }; --Sunstrider's Robe of Conquest
		[5] = { itemID = 47773, "30 #eoftriumph#" }; --Sunstrider's Gauntlets of Conquest
		[6] = { itemID = 47775, "50 #eoftriumph#" }; --Sunstrider's Leggings of Conquest
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 47771, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Hood of Triumph
		[10] = { itemID = 47768, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Shoulderpads of Triumph
		[11] = { itemID = 47769, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Robe of Triumph
		[12] = { itemID = 47772, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Gauntlets of Triumph
		[13] = { itemID = 47770, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Leggings of Triumph
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t9s3_h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47764, "=ds=#s1#" }; --Sunstrider's Hood of Triumph
		[18] = { itemID = 47767, "=ds=#s3#" }; --Sunstrider's Shoulderpads of Triumph
		[19] = { itemID = 47766, "=ds=#s5#" }; --Sunstrider's Robe of Triumph
		[20] = { itemID = 47763, "=ds=#s9#" }; --Sunstrider's Gauntlets of Triumph
		[21] = { itemID = 47765, "=ds=#s11#" }; --Sunstrider's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48564, "50 #eoftriumph#" }; --Turalyon's Headpiece of Conquest
		[3] = { itemID = 48572, "30 #eoftriumph#" }; --Turalyon's Spaulders of Conquest
		[4] = { itemID = 48566, "50 #eoftriumph#" }; --Turalyon's Tunic of Conquest
		[5] = { itemID = 48574, "30 #eoftriumph#" }; --Turalyon's Gloves of Conquest
		[6] = { itemID = 48568, "50 #eoftriumph#" }; --Turalyon's Greaves of Conquest
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48577, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Headpiece of Triumph
		[10] = { itemID = 48579, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Spaulders of Triumph
		[11] = { itemID = 48575, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Tunic of Triumph
		[12] = { itemID = 48576, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Gloves of Triumph
		[13] = { itemID = 48578, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Greaves of Triumph
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48582, "=ds=#s1#" }; --Turalyon's Headpiece of Triumph
		[18] = { itemID = 48580, "=ds=#s3#" }; --Turalyon's Spaulders of Triumph
		[19] = { itemID = 48584, "=ds=#s5#" }; --Turalyon's Tunic of Triumph
		[20] = { itemID = 48583, "=ds=#s9#" }; --Turalyon's Gloves of Triumph
		[21] = { itemID = 48581, "=ds=#s11#" }; --Turalyon's Greaves of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48597, "50 #eoftriumph#" }; --Liadrin's Headpiece of Conquest
		[3] = { itemID = 48595, "30 #eoftriumph#" }; --Liadrin's Spaulders of Conquest
		[4] = { itemID = 48599, "50 #eoftriumph#" }; --Liadrin's Tunic of Conquest
		[5] = { itemID = 48598, "30 #eoftriumph#" }; --Liadrin's Gloves of Conquest
		[6] = { itemID = 48596, "50 #eoftriumph#" }; --Liadrin's Greaves of Conquest
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48592, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Headpiece of Triumph
		[10] = { itemID = 48590, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Spaulders of Triumph
		[11] = { itemID = 48594, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Tunic of Triumph
		[12] = { itemID = 48593, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Gloves of Triumph
		[13] = { itemID = 48591, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Greaves of Triumph
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t9s4_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48587, "=ds=#s1#" }; --Liadrin's Headpiece of Triumph
		[18] = { itemID = 48585, "=ds=#s3#" }; --Liadrin's Spaulders of Triumph
		[19] = { itemID = 48589, "=ds=#s5#" }; --Liadrin's Tunic of Triumph
		[20] = { itemID = 48588, "=ds=#s9#" }; --Liadrin's Gloves of Triumph
		[21] = { itemID = 48586, "=ds=#s11#" }; --Liadrin's Greaves of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48604, "50 #eoftriumph#" }; --Turalyon's Helm of Conquest
		[3] = { itemID = 48606, "30 #eoftriumph#" }; --Turalyon's Shoulderplates of Conquest
		[4] = { itemID = 48602, "50 #eoftriumph#" }; --Turalyon's Battleplate of Conquest
		[5] = { itemID = 48603, "30 #eoftriumph#" }; --Turalyon's Gauntlets of Conquest
		[6] = { itemID = 48605, "50 #eoftriumph#" }; --Turalyon's Legplates of Conquest
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48609, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Helm of Triumph
		[10] = { itemID = 48611, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Shoulderplates of Triumph
		[11] = { itemID = 48607, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Battleplate of Triumph
		[12] = { itemID = 48608, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Gauntlets of Triumph
		[13] = { itemID = 48610, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Legplates of Triumph
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48614, "=ds=#s1#" }; --Turalyon's Helm of Triumph
		[18] = { itemID = 48612, "=ds=#s3#" }; --Turalyon's Shoulderplates of Triumph
		[19] = { itemID = 48616, "=ds=#s5#" }; --Turalyon's Battleplate of Triumph
		[20] = { itemID = 48615, "=ds=#s9#" }; --Turalyon's Gauntlets of Triumph
		[21] = { itemID = 48613, "=ds=#s11#" }; --Turalyon's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48629, "50 #eoftriumph#" }; --Liadrin's Helm of Conquest
		[3] = { itemID = 48627, "30 #eoftriumph#" }; --Liadrin's Shoulderplates of Conquest
		[4] = { itemID = 48631, "50 #eoftriumph#" }; --Liadrin's Battleplate of Conquest
		[5] = { itemID = 48630, "30 #eoftriumph#" }; --Liadrin's Gauntlets of Conquest
		[6] = { itemID = 48628, "50 #eoftriumph#" }; --Liadrin's Legplates of Conquest
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48624, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Helm of Triumph
		[10] = { itemID = 48622, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Shoulderplates of Triumph
		[11] = { itemID = 48626, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Battleplate of Triumph
		[12] = { itemID = 48625, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Gauntlets of Triumph
		[13] = { itemID = 48623, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Legplates of Triumph
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t9s4_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48619, "=ds=#s1#" }; --Liadrin's Helm of Triumph
		[18] = { itemID = 48621, "=ds=#s3#" }; --Liadrin's Shoulderplates of Triumph
		[19] = { itemID = 48617, "=ds=#s5#" }; --Liadrin's Battleplate of Triumph
		[20] = { itemID = 48618, "=ds=#s9#" }; --Liadrin's Gauntlets of Triumph
		[21] = { itemID = 48620, "=ds=#s11#" }; --Liadrin's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48634, "50 #eoftriumph#" }; --Turalyon's Faceguard of Conquest
		[3] = { itemID = 48636, "30 #eoftriumph#" }; --Turalyon's Shoulderguards of Conquest
		[4] = { itemID = 48632, "50 #eoftriumph#" }; --Turalyon's Breastplate of Conquest
		[5] = { itemID = 48633, "30 #eoftriumph#" }; --Turalyon's Handguards of Conquest
		[6] = { itemID = 48635, "50 #eoftriumph#" }; --Turalyon's Legguards of Conquest
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48639, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Faceguard of Triumph
		[10] = { itemID = 48637, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Shoulderguards of Triumph
		[11] = { itemID = 48641, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Breastplate of Triumph
		[12] = { itemID = 48640, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Handguards of Triumph
		[13] = { itemID = 48638, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Legguards of Triumph
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48644, "=ds=#s1#" }; --Turalyon's Faceguard of Triumph
		[18] = { itemID = 48646, "=ds=#s3#" }; --Turalyon's Shoulderguards of Triumph
		[19] = { itemID = 48642, "=ds=#s5#" }; --Turalyon's Breastplate of Triumph
		[20] = { itemID = 48643, "=ds=#s9#" }; --Turalyon's Handguards of Triumph
		[21] = { itemID = 48645, "=ds=#s11#" }; --Turalyon's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48654, "50 #eoftriumph#" }; --Liadrin's Faceguard of Conquest
		[3] = { itemID = 48656, "30 #eoftriumph#" }; --Liadrin's Shoulderguards of Conquest
		[4] = { itemID = 48652, "50 #eoftriumph#" }; --Liadrin's Breastplate of Conquest
		[5] = { itemID = 48653, "30 #eoftriumph#" }; --Liadrin's Handguards of Conquest
		[6] = { itemID = 48655, "50 #eoftriumph#" }; --Liadrin's Legguards of Conquest
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48659, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Faceguard of Triumph
		[10] = { itemID = 48661, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Shoulderguards of Triumph
		[11] = { itemID = 48657, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Breastplate of Triumph
		[12] = { itemID = 48658, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Handguards of Triumph
		[13] = { itemID = 48660, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Legguards of Triumph
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t9s4_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48649, "=ds=#s1#" }; --Liadrin's Faceguard of Triumph
		[18] = { itemID = 48647, "=ds=#s3#" }; --Liadrin's Shoulderguards of Triumph
		[19] = { itemID = 48651, "=ds=#s5#" }; --Liadrin's Breastplate of Triumph
		[20] = { itemID = 48650, "=ds=#s9#" }; --Liadrin's Handguards of Triumph
		[21] = { itemID = 48648, "=ds=#s11#" }; --Liadrin's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48073, "50 #eoftriumph#" }; --Velen's Circlet of Conquest
		[3] = { itemID = 48076, "30 #eoftriumph#" }; --Velen's Mantle of Conquest
		[4] = { itemID = 48075, "50 #eoftriumph#" }; --Velen's Raiments of Conquest
		[5] = { itemID = 48072, "30 #eoftriumph#" }; --Velen's Handwraps of Conquest
		[6] = { itemID = 48074, "50 #eoftriumph#" }; --Velen's Pants of Conquest
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48078, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Circlet of Triumph
		[10] = { itemID = 48081, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Mantle of Triumph
		[11] = { itemID = 48080, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Raiments of Triumph
		[12] = { itemID = 48077, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Handwraps of Triumph
		[13] = { itemID = 48079, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Pants of Triumph
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48085, "=ds=#s1#" }; --Velen's Circlet of Triumph
		[18] = { itemID = 48082, "=ds=#s3#" }; --Velen's Mantle of Triumph
		[19] = { itemID = 48083, "=ds=#s5#" }; --Velen's Raiments of Triumph
		[20] = { itemID = 48086, "=ds=#s9#" }; --Velen's Handwraps of Triumph
		[21] = { itemID = 48084, "=ds=#s11#" }; --Velen's Pants of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48098, "50 #eoftriumph#" }; --Zabra's Circlet of Conquest
		[3] = { itemID = 48101, "30 #eoftriumph#" }; --Zabra's Mantle of Conquest
		[4] = { itemID = 48100, "50 #eoftriumph#" }; --Zabra's Raiments of Conquest
		[5] = { itemID = 48097, "30 #eoftriumph#" }; --Zabra's Handwraps of Conquest
		[6] = { itemID = 48099, "50 #eoftriumph#" }; --Zabra's Pants of Conquest
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48095, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Circlet of Triumph
		[10] = { itemID = 48092, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Mantle of Triumph
		[11] = { itemID = 48093, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Raiments of Triumph
		[12] = { itemID = 48096, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Handwraps of Triumph
		[13] = { itemID = 48094, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Pants of Triumph
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t9s5_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48088, "=ds=#s1#" }; --Zabra's Circlet of Triumph
		[18] = { itemID = 48091, "=ds=#s3#" }; --Zabra's Mantle of Triumph
		[19] = { itemID = 48090, "=ds=#s5#" }; --Zabra's Raiments of Triumph
		[20] = { itemID = 48087, "=ds=#s9#" }; --Zabra's Handwraps of Triumph
		[21] = { itemID = 48089, "=ds=#s11#" }; --Zabra's Pants of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 47914, "50 #eoftriumph#" }; --Velen's Cowl of Conquest
		[3] = { itemID = 47981, "30 #eoftriumph#" }; --Velen's Shoulderpads of Conquest
		[4] = { itemID = 47936, "50 #eoftriumph#" }; --Velen's Robe of Conquest
		[5] = { itemID = 47982, "30 #eoftriumph#" }; --Velen's Gloves of Conquest
		[6] = { itemID = 47980, "50 #eoftriumph#" }; --Velen's Leggings of Conquest
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 47984, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Cowl of Triumph
		[10] = { itemID = 47987, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Shoulderpads of Triumph
		[11] = { itemID = 47986, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Robe of Triumph
		[12] = { itemID = 47983, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Gloves of Triumph
		[13] = { itemID = 47985, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Leggings of Triumph
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48035, "=ds=#s1#" }; --Velen's Cowl of Triumph
		[18] = { itemID = 48029, "=ds=#s3#" }; --Velen's Shoulderpads of Triumph
		[19] = { itemID = 48031, "=ds=#s5#" }; --Velen's Robe of Triumph
		[20] = { itemID = 48037, "=ds=#s9#" }; --Velen's Gloves of Triumph
		[21] = { itemID = 48033, "=ds=#s11#" }; --Velen's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48068, "50 #eoftriumph#" }; --Zabra's Cowl of Conquest
		[3] = { itemID = 48071, "30 #eoftriumph#" }; --Zabra's Shoulderpads of Conquest
		[4] = { itemID = 48070, "50 #eoftriumph#" }; --Zabra's Robe of Conquest
		[5] = { itemID = 48067, "30 #eoftriumph#" }; --Zabra's Gloves of Conquest
		[6] = { itemID = 48069, "50 #eoftriumph#" }; --Zabra's Leggings of Conquest
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48065, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Cowl of Triumph
		[10] = { itemID = 48062, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Shoulderpads of Triumph
		[11] = { itemID = 48063, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Robe of Triumph
		[12] = { itemID = 48066, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Gloves of Triumph
		[13] = { itemID = 48064, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Leggings of Triumph
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t9s5_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48058, "=ds=#s1#" }; --Zabra's Cowl of Triumph
		[18] = { itemID = 48061, "=ds=#s3#" }; --Zabra's Shoulderpads of Triumph
		[19] = { itemID = 48060, "=ds=#s5#" }; --Zabra's Robe of Triumph
		[20] = { itemID = 48057, "=ds=#s9#" }; --Zabra's Gloves of Triumph
		[21] = { itemID = 48059, "=ds=#s11#" }; --Zabra's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t9s6_a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48218, "50 #eoftriumph#" }; --VanCleef's Helmet of Conquest
		[3] = { itemID = 48221, "30 #eoftriumph#" }; --VanCleef's Pauldrons of Conquest
		[4] = { itemID = 48219, "50 #eoftriumph#" }; --VanCleef's Breastplate of Conquest
		[5] = { itemID = 48222, "30 #eoftriumph#" }; --VanCleef's Gauntlets of Conquest
		[6] = { itemID = 48220, "50 #eoftriumph#" }; --VanCleef's Legplates of Conquest
		[8] = { icon = "Ability_BackStab", name = "=q6=#t9s6_a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48225, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Helmet of Triumph
		[10] = { itemID = 48227, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Pauldrons of Triumph
		[11] = { itemID = 48223, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Breastplate of Triumph
		[12] = { itemID = 48224, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Gauntlets of Triumph
		[13] = { itemID = 48226, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Legplates of Triumph
		[16] = { icon = "Ability_BackStab", name = "=q6=#t9s6_a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48230, "=ds=#s1#" }; --VanCleef's Helmet of Triumph
		[18] = { itemID = 48228, "=ds=#s3#" }; --VanCleef's Pauldrons of Triumph
		[19] = { itemID = 48232, "=ds=#s5#" }; --VanCleef's Breastplate of Triumph
		[20] = { itemID = 48231, "=ds=#s9#" }; --VanCleef's Gauntlets of Triumph
		[21] = { itemID = 48229, "=ds=#s11#" }; --VanCleef's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t9s6_h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48245, "50 #eoftriumph#" }; --Garona's Helmet of Conquest
		[3] = { itemID = 48247, "30 #eoftriumph#" }; --Garona's Pauldrons of Conquest
		[4] = { itemID = 48243, "50 #eoftriumph#" }; --Garona's Breastplate of Conquest
		[5] = { itemID = 48244, "30 #eoftriumph#" }; --Garona's Gauntlets of Conquest
		[6] = { itemID = 48246, "50 #eoftriumph#" }; --Garona's Legplates of Conquest
		[8] = { icon = "Ability_BackStab", name = "=q6=#t9s6_h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48240, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Helmet of Triumph
		[10] = { itemID = 48238, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Pauldrons of Triumph
		[11] = { itemID = 48242, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Breastplate of Triumph
		[12] = { itemID = 48241, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Gauntlets of Triumph
		[13] = { itemID = 48239, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Legplates of Triumph
		[16] = { icon = "Ability_BackStab", name = "=q6=#t9s6_h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48235, "=ds=#s1#" }; --Garona's Helmet of Triumph
		[18] = { itemID = 48237, "=ds=#s3#" }; --Garona's Pauldrons of Triumph
		[19] = { itemID = 48233, "=ds=#s5#" }; --Garona's Breastplate of Triumph
		[20] = { itemID = 48234, "=ds=#s9#" }; --Garona's Gauntlets of Triumph
		[21] = { itemID = 48236, "=ds=#s11#" }; --Garona's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48313, "50 #eoftriumph#" }; --Nobundo's Helm of Conquest
		[3] = { itemID = 48315, "30 #eoftriumph#" }; --Nobundo's Shoulderpads of Conquest
		[4] = { itemID = 48310, "50 #eoftriumph#" }; --Nobundo's Hauberk of Conquest
		[5] = { itemID = 48312, "30 #eoftriumph#" }; --Nobundo's Gloves of Conquest
		[6] = { itemID = 48314, "50 #eoftriumph#" }; --Nobundo's Kilt of Conquest
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48318, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Helm of Triumph
		[10] = { itemID = 48320, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Shoulderpads of Triumph
		[11] = { itemID = 48316, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Hauberk of Triumph
		[12] = { itemID = 48317, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Gloves of Triumph
		[13] = { itemID = 48319, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Kilt of Triumph
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48323, "=ds=#s1#" }; --Nobundo's Helm of Triumph
		[18] = { itemID = 48321, "=ds=#s3#" }; --Nobundo's Shoulderpads of Triumph
		[19] = { itemID = 48325, "=ds=#s5#" }; --Nobundo's Hauberk of Triumph
		[20] = { itemID = 48324, "=ds=#s9#" }; --Nobundo's Gloves of Triumph
		[21] = { itemID = 48322, "=ds=#s11#" }; --Nobundo's Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48338, "50 #eoftriumph#" }; --Thrall's Helm of Conquest
		[3] = { itemID = 48340, "30 #eoftriumph#" }; --Thrall's Shoulderpads of Conquest
		[4] = { itemID = 48336, "50 #eoftriumph#" }; --Thrall's Hauberk of Conquest
		[5] = { itemID = 48337, "30 #eoftriumph#" }; --Thrall's Gloves of Conquest
		[6] = { itemID = 48339, "50 #eoftriumph#" }; --Thrall's Kilt of Conquest
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48333, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Helm of Triumph
		[10] = { itemID = 48331, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Shoulderpads of Triumph
		[11] = { itemID = 48335, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Hauberk of Triumph
		[12] = { itemID = 48334, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Gloves of Triumph
		[13] = { itemID = 48332, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Kilt of Triumph
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6=#t9s7_3h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48328, "=ds=#s1#" }; --Thrall's Helm of Triumph
		[18] = { itemID = 48330, "=ds=#s3#" }; --Thrall's Shoulderpads of Triumph
		[19] = { itemID = 48326, "=ds=#s5#" }; --Thrall's Hauberk of Triumph
		[20] = { itemID = 48327, "=ds=#s9#" }; --Thrall's Gloves of Triumph
		[21] = { itemID = 48329, "=ds=#s11#" }; --Thrall's Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48343, "50 #eoftriumph#" }; --Nobundo's Faceguard of Conquest
		[3] = { itemID = 48345, "30 #eoftriumph#" }; --Nobundo's Shoulderguards of Conquest
		[4] = { itemID = 48341, "50 #eoftriumph#" }; --Nobundo's Chestguard of Conquest
		[5] = { itemID = 48342, "30 #eoftriumph#" }; --Nobundo's Grips of Conquest
		[6] = { itemID = 48344, "50 #eoftriumph#" }; --Nobundo's War-Kilt of Conquest
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48348, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Faceguard of Triumph
		[10] = { itemID = 48350, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Shoulderguards of Triumph
		[11] = { itemID = 48346, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Chestguard of Triumph
		[12] = { itemID = 48347, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Grips of Triumph
		[13] = { itemID = 48349, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's War-Kilt of Triumph
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48353, "=ds=#s1#" }; --Nobundo's Faceguard of Triumph
		[18] = { itemID = 48351, "=ds=#s3#" }; --Nobundo's Shoulderguards of Triumph
		[19] = { itemID = 48355, "=ds=#s5#" }; --Nobundo's Chestguard of Triumph
		[20] = { itemID = 48354, "=ds=#s9#" }; --Nobundo's Grips of Triumph
		[21] = { itemID = 48352, "=ds=#s11#" }; --Nobundo's War-Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48368, "50 #eoftriumph#" }; --Thrall's Faceguard of Conquest
		[3] = { itemID = 48370, "30 #eoftriumph#" }; --Thrall's Shoulderguards of Conquest
		[4] = { itemID = 48366, "50 #eoftriumph#" }; --Thrall's Chestguard of Conquest
		[5] = { itemID = 48367, "30 #eoftriumph#" }; --Thrall's Grips of Conquest
		[6] = { itemID = 48369, "50 #eoftriumph#" }; --Thrall's War-Kilt of Conquest
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48363, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Faceguard of Triumph
		[10] = { itemID = 48361, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Shoulderguards of Triumph
		[11] = { itemID = 48365, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Chestguard of Triumph
		[12] = { itemID = 48364, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Grips of Triumph
		[13] = { itemID = 48362, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's War-Kilt of Triumph
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t9s7_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48358, "=ds=#s1#" }; --Thrall's Faceguard of Triumph
		[18] = { itemID = 48360, "=ds=#s3#" }; --Thrall's Shoulderguards of Triumph
		[19] = { itemID = 48356, "=ds=#s5#" }; --Thrall's Chestguard of Triumph
		[20] = { itemID = 48357, "=ds=#s9#" }; --Thrall's Grips of Triumph
		[21] = { itemID = 48359, "=ds=#s11#" }; --Thrall's War-Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48280, "50 #eoftriumph#" }; --Nobundo's Headpiece of Conquest
		[3] = { itemID = 48283, "30 #eoftriumph#" }; --Nobundo's Spaulders of Conquest
		[4] = { itemID = 48281, "50 #eoftriumph#" }; --Nobundo's Tunic of Conquest
		[5] = { itemID = 48284, "30 #eoftriumph#" }; --Nobundo's Handguards of Conquest
		[6] = { itemID = 48282, "50 #eoftriumph#" }; --Nobundo's Legguards of Conquest
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48287, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Headpiece of Triumph
		[10] = { itemID = 48289, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Spaulders of Triumph
		[11] = { itemID = 48285, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Tunic of Triumph
		[12] = { itemID = 48286, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Handguards of Triumph
		[13] = { itemID = 48288, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Legguards of Triumph
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48292, "=ds=#s1#" }; --Nobundo's Headpiece of Triumph
		[18] = { itemID = 48290, "=ds=#s3#" }; --Nobundo's Spaulders of Triumph
		[19] = { itemID = 48294, "=ds=#s5#" }; --Nobundo's Tunic of Triumph
		[20] = { itemID = 48293, "=ds=#s9#" }; --Nobundo's Handguards of Triumph
		[21] = { itemID = 48291, "=ds=#s11#" }; --Nobundo's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48297, "50 #eoftriumph#" }; --Thrall's Headpiece of Conquest
		[3] = { itemID = 48299, "30 #eoftriumph#" }; --Thrall's Spaulders of Conquest
		[4] = { itemID = 48295, "50 #eoftriumph#" }; --Thrall's Tunic of Conquest
		[5] = { itemID = 48296, "30 #eoftriumph#" }; --Thrall's Handguards of Conquest
		[6] = { itemID = 48298, "50 #eoftriumph#" }; --Thrall's Legguards of Conquest
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48302, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Headpiece of Triumph
		[10] = { itemID = 48304, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Spaulders of Triumph
		[11] = { itemID = 48300, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Tunic of Triumph
		[12] = { itemID = 48301, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Handguards of Triumph
		[13] = { itemID = 48303, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Legguards of Triumph
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t9s7_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48307, "=ds=#s1#" }; --Thrall's Headpiece of Triumph
		[18] = { itemID = 48309, "=ds=#s3#" }; --Thrall's Spaulders of Triumph
		[19] = { itemID = 48305, "=ds=#s5#" }; --Thrall's Tunic of Triumph
		[20] = { itemID = 48306, "=ds=#s9#" }; --Thrall's Handguards of Triumph
		[21] = { itemID = 48308, "=ds=#s11#" }; --Thrall's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 47784, "50 #eoftriumph#" }; --Kel'Thuzad's Hood of Conquest
		[3] = { itemID = 47787, "30 #eoftriumph#" }; --Kel'Thuzad's Shoulderpads of Conquest
		[4] = { itemID = 47786, "50 #eoftriumph#" }; --Kel'Thuzad's Robe of Conquest
		[5] = { itemID = 47783, "30 #eoftriumph#" }; --Kel'Thuzad's Gloves of Conquest
		[6] = { itemID = 47785, "50 #eoftriumph#" }; --Kel'Thuzad's Leggings of Conquest
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 47778, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Hood of Triumph
		[10] = { itemID = 47781, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Shoulderpads of Triumph
		[11] = { itemID = 47779, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Robe of Triumph
		[12] = { itemID = 47782, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Gloves of Triumph
		[13] = { itemID = 47780, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Leggings of Triumph
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47789, "=ds=#s1#" }; --Kel'Thuzad's Hood of Triumph
		[18] = { itemID = 47792, "=ds=#s3#" }; --Kel'Thuzad's Shoulderpads of Triumph
		[19] = { itemID = 47791, "=ds=#s5#" }; --Kel'Thuzad's Robe of Triumph
		[20] = { itemID = 47788, "=ds=#s9#" }; --Kel'Thuzad's Gloves of Triumph
		[21] = { itemID = 47790, "=ds=#s11#" }; --Kel'Thuzad's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 47801, "50 #eoftriumph#" }; --Gul'dan's Hood of Conquest
		[3] = { itemID = 47798, "30 #eoftriumph#" }; --Gul'dan's Shoulderpads of Conquest
		[4] = { itemID = 47799, "50 #eoftriumph#" }; --Gul'dan's Robe of Conquest
		[5] = { itemID = 47802, "30 #eoftriumph#" }; --Gul'dan's Gloves of Conquest
		[6] = { itemID = 47800, "50 #eoftriumph#" }; --Gul'dan's Leggings of Conquest
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 47804, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Hood of Triumph
		[10] = { itemID = 47807, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Shoulderpads of Triumph
		[11] = { itemID = 47806, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Robe of Triumph
		[12] = { itemID = 47803, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Gloves of Triumph
		[13] = { itemID = 47805, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Leggings of Triumph
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t9s8_h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47796, "=ds=#s1#" }; --Gul'dan's Hood of Triumph
		[18] = { itemID = 47793, "=ds=#s3#" }; --Gul'dan's Shoulderpads of Triumph
		[19] = { itemID = 47794, "=ds=#s5#" }; --Gul'dan's Robe of Triumph
		[20] = { itemID = 47797, "=ds=#s9#" }; --Gul'dan's Gloves of Triumph
		[21] = { itemID = 47795, "=ds=#s11#" }; --Gul'dan's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48371, "50 #eoftriumph#" }; --Wrynn's Helmet of Conquest
		[3] = { itemID = 48374, "30 #eoftriumph#" }; --Wrynn's Shoulderplates of Conquest
		[4] = { itemID = 48372, "50 #eoftriumph#" }; --Wrynn's Battleplate of Conquest
		[5] = { itemID = 48375, "30 #eoftriumph#" }; --Wrynn's Gauntlets of Conquest
		[6] = { itemID = 48373, "50 #eoftriumph#" }; --Wrynn's Legplates of Conquest
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48378, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Helmet of Triumph
		[10] = { itemID = 48380, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Shoulderplates of Triumph
		[11] = { itemID = 48376, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Battleplate of Triumph
		[12] = { itemID = 48377, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Gauntlets of Triumph
		[13] = { itemID = 48379, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Legplates of Triumph
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48383, "=ds=#s1#" }; --Wrynn's Helmet of Triumph
		[18] = { itemID = 48381, "=ds=#s3#" }; --Wrynn's Shoulderplates of Triumph
		[19] = { itemID = 48385, "=ds=#s5#" }; --Wrynn's Battleplate of Triumph
		[20] = { itemID = 48384, "=ds=#s9#" }; --Wrynn's Gauntlets of Triumph
		[21] = { itemID = 48382, "=ds=#s11#" }; --Wrynn's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48388, "50 #eoftriumph#" }; --Hellscream's Helmet of Conquest
		[3] = { itemID = 48390, "30 #eoftriumph#" }; --Hellscream's Shoulderplates of Conquest
		[4] = { itemID = 48386, "50 #eoftriumph#" }; --Hellscream's Battleplate of Conquest
		[5] = { itemID = 48387, "30 #eoftriumph#" }; --Hellscream's Gauntlets of Conquest
		[6] = { itemID = 48389, "50 #eoftriumph#" }; --Hellscream's Legplates of Conquest
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48393, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Helmet of Triumph
		[10] = { itemID = 48395, --Hellscream's Shoulderplates of Triumph
			"45 #eoftriumph# 1 #trophyofthecrusade#" };
		[11] = { itemID = 48391, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Battleplate of Triumph
		[12] = { itemID = 48392, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Gauntlets of Triumph
		[13] = { itemID = 48394, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Legplates of Triumph
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t9s9_1h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48398, "=ds=#s1#" }; --Hellscream's Helmet of Triumph
		[18] = { itemID = 48400, "=ds=#s3#" }; --Hellscream's Shoulderplates of Triumph
		[19] = { itemID = 48396, "=ds=#s5#" }; --Hellscream's Battleplate of Triumph
		[20] = { itemID = 48397, "=ds=#s9#" }; --Hellscream's Gauntlets of Triumph
		[21] = { itemID = 48399, "=ds=#s11#" }; --Hellscream's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48429, "50 #eoftriumph#" }; --Wrynn's Greathelm of Conquest
		[3] = { itemID = 48448, "30 #eoftriumph#" }; --Wrynn's Pauldrons of Conquest
		[4] = { itemID = 48436, "50 #eoftriumph#" }; --Wrynn's Breastplate of Conquest
		[5] = { itemID = 48449, "30 #eoftriumph#" }; --Wrynn's Handguards of Conquest
		[6] = { itemID = 48445, "50 #eoftriumph#" }; --Wrynn's Legguards of Conquest
		[8] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48430, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Greathelm of Triumph
		[10] = { itemID = 48454, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Pauldrons of Triumph
		[11] = { itemID = 48450, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Breastplate of Triumph
		[12] = { itemID = 48452, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Handguards of Triumph
		[13] = { itemID = 48446, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Legguards of Triumph
		[16] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2a#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48433, "=ds=#s1#" }; --Wrynn's Greathelm of Triumph
		[18] = { itemID = 48455, "=ds=#s3#" }; --Wrynn's Pauldrons of Triumph
		[19] = { itemID = 48451, "=ds=#s5#" }; --Wrynn's Breastplate of Triumph
		[20] = { itemID = 48453, "=ds=#s9#" }; --Wrynn's Handguards of Triumph
		[21] = { itemID = 48447, "=ds=#s11#" }; --Wrynn's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[2] = { itemID = 48458, "50 #eoftriumph#" }; --Hellscream's Greathelm of Conquest
		[3] = { itemID = 48460, "30 #eoftriumph#" }; --Hellscream's Pauldrons of Conquest
		[4] = { itemID = 48456, "50 #eoftriumph#" }; --Hellscream's Breastplate of Conquest
		[5] = { itemID = 48457, "30 #eoftriumph#" }; --Hellscream's Handguards of Conquest
		[6] = { itemID = 48459, "50 #eoftriumph#" }; --Hellscream's Legguards of Conquest
		[8] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[9] = { itemID = 48463, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Greathelm of Triumph
		[10] = { itemID = 48465, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Pauldrons of Triumph
		[11] = { itemID = 48461, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Breastplate of Triumph
		[12] = { itemID = 48462, "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Handguards of Triumph
		[13] = { itemID = 48464, "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Legguards of Triumph
		[16] = { icon = "INV_Shield_05", name = "=q6=#t9s9_2h#", desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48468, "=ds=#s1#" }; --Hellscream's Greathelm of Triumph
		[18] = { itemID = 48470, "=ds=#s3#" }; --Hellscream's Pauldrons of Triumph
		[19] = { itemID = 48466, "=ds=#s5#" }; --Hellscream's Breastplate of Triumph
		[20] = { itemID = 48467, "=ds=#s9#" }; --Hellscream's Handguards of Triumph
		[21] = { itemID = 48469, "=ds=#s11#" }; --Hellscream's Legguards of Triumph
	};
};

--------------------------
--- Tier 10 Sets (T10) ---
--------------------------
AtlasLoot_Data["T10"] = {
	Name = "Tier 10";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50096, "95 #eoffrost#" }; --Scourgelord Helmet
		[3] = { itemID = 50098, "60 #eoffrost#" }; --Scourgelord Shoulderplates
		[4] = { itemID = 50094, "95 #eoffrost#" }; --Scourgelord Battleplate
		[5] = { itemID = 50095, "60 #eoffrost#" }; --Scourgelord Gauntlets
		[6] = { itemID = 50097, "95 #eoffrost#" }; --Scourgelord Legplates
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51127, "=ds=#s1#" }; --Sanctified Scourgelord Helmet
		[10] = { itemID = 51125, "=ds=#s3#" }; --Sanctified Scourgelord Shoulderplates
		[11] = { itemID = 51129, "=ds=#s5#" }; --Sanctified Scourgelord Battleplate
		[12] = { itemID = 51128, "=ds=#s9#" }; --Sanctified Scourgelord Gauntlets
		[13] = { itemID = 51126, "=ds=#s11#" }; --Sanctified Scourgelord Legplates
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51312, "=ds=" }; --Sanctified Scourgelord Helmet
		[18] = { itemID = 51314, "=ds=" }; --Sanctified Scourgelord Shoulderplates
		[19] = { itemID = 51310, "=ds=" }; --Sanctified Scourgelord Battleplate
		[20] = { itemID = 51311, "=ds=" }; --Sanctified Scourgelord Gauntlets
		[21] = { itemID = 51313, "=ds=" }; --Sanctified Scourgelord Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[1] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50855, "95 #eoffrost#" }; --Scourgelord Faceguard
		[3] = { itemID = 50853, "60 #eoffrost#" }; --Scourgelord Pauldrons
		[4] = { itemID = 50857, "95 #eoffrost#" }; --Scourgelord Chestguard
		[5] = { itemID = 50856, "60 #eoffrost#" }; --Scourgelord Handguards
		[6] = { itemID = 50854, "95 #eoffrost#" }; --Scourgelord Legguards
		[8] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51133, "=ds=#s1#" }; --Sanctified Scourgelord Faceguard
		[10] = { itemID = 51130, "=ds=#s3#" }; --Sanctified Scourgelord Pauldrons
		[11] = { itemID = 51134, "=ds=#s5#" }; --Sanctified Scourgelord Chestguard
		[12] = { itemID = 51132, "=ds=#s9#" }; --Sanctified Scourgelord Handguards
		[13] = { itemID = 51131, "=ds=#s11#" }; --Sanctified Scourgelord Legguards
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6=#t10s10_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51306, "=ds=" }; --Sanctified Scourgelord Faceguard
		[18] = { itemID = 51309, "=ds=" }; --Sanctified Scourgelord Pauldrons
		[19] = { itemID = 51305, "=ds=" }; --Sanctified Scourgelord Chestguard
		[20] = { itemID = 51307, "=ds=" }; --Sanctified Scourgelord Handguards
		[21] = { itemID = 51308, "=ds=" }; --Sanctified Scourgelord Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t10s1_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50108, "95 #eoffrost#" }; --Lasherweave's Helmet  
		[3] = { itemID = 50113, "60 #eoffrost#" }; --Lasherweave's Pauldrons
		[4] = { itemID = 50106, "95 #eoffrost#" }; --Lasherweave's Robes
		[5] = { itemID = 50107, "60 #eoffrost#" }; --Lasherweave's Gauntlets
		[6] = { itemID = 50109, "95 #eoffrost#" }; --Lasherweave's Legplates
		[8] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t10s1_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51137, "=ds=#s1#" }; --Sanctified Lasherweave's Helmet
		[10] = { itemID = 51135, "=ds=#s3#" }; --Sanctified Lasherweave's Pauldrons
		[11] = { itemID = 51139, "=ds=#s5#" }; --Sanctified Lasherweave's Robes
		[12] = { itemID = 51138, "=ds=#s9#" }; --Sanctified Lasherweave's Gauntlets
		[13] = { itemID = 51136, "=ds=#s11#" }; --Sanctified Lasherweave's Legplates
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6=#t10s1_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51302, "=ds=" }; --Sanctified Lasherweave's Helmet
		[18] = { itemID = 51304, "=ds=" }; --Sanctified Lasherweave's Pauldrons
		[19] = { itemID = 51300, "=ds=" }; --Sanctified Lasherweave's Robes
		[20] = { itemID = 51301, "=ds=" }; --Sanctified Lasherweave's Gauntlets
		[21] = { itemID = 51303, "=ds=" }; --Sanctified Lasherweave's Legplates
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[1] = { icon = "Ability_Druid_Maul", name = "=q6=#t10s1_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50826, "95 #eoffrost#" }; --Lasherweave's Headguard
		[3] = { itemID = 50824, "60 #eoffrost#" }; --Lasherweave's Shoulderpads
		[4] = { itemID = 50828, "95 #eoffrost#" }; --Lasherweave's Raiment
		[5] = { itemID = 50827, "60 #eoffrost#" }; --Lasherweave's Handgrips
		[6] = { itemID = 50825, "95 #eoffrost#" }; --Lasherweave's Legguards
		[8] = { icon = "Ability_Druid_Maul", name = "=q6=#t10s1_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51143, "=ds=#s1#" }; --Sanctified Lasherweave's Headguard
		[10] = { itemID = 51140, "=ds=#s3#" }; --Sanctified Lasherweave's Shoulderpads
		[11] = { itemID = 51141, "=ds=#s5#" }; --Sanctified Lasherweave's Raiment
		[12] = { itemID = 51144, "=ds=#s9#" }; --Sanctified Lasherweave's Handgrips
		[13] = { itemID = 51142, "=ds=#s11#" }; --Sanctified Lasherweave's Legguards
		[16] = { icon = "Ability_Druid_Maul", name = "=q6=#t10s1_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51296, "=ds=" }; --Sanctified Lasherweave's Headguard
		[18] = { itemID = 51299, "=ds=" }; --Sanctified Lasherweave's Shoulderpads
		[19] = { itemID = 51298, "=ds=" }; --Sanctified Lasherweave's Raiment
		[20] = { itemID = 51295, "=ds=" }; --Sanctified Lasherweave's Handgrips
		[21] = { itemID = 51297, "=ds=" }; --Sanctified Lasherweave's Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[1] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t10s1_3#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50821, "95 #eoffrost#" }; --Lasherweave's Cover
		[3] = { itemID = 50819, "60 #eoffrost#" }; --Lasherweave's Mantle
		[4] = { itemID = 50823, "95 #eoffrost#" }; --Lasherweave's Vestment
		[5] = { itemID = 50822, "60 #eoffrost#" }; --Lasherweave's Gloves
		[6] = { itemID = 50820, "95 #eoffrost#" }; --Lasherweave's Trousers
		[8] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t10s1_3#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51149, "=ds=#s1#" }; --Sanctified Lasherweave's Cover
		[10] = { itemID = 51147, "=ds=#s3#" }; --Sanctified Lasherweave's Mantle
		[11] = { itemID = 51145, "=ds=#s5#" }; --Sanctified Lasherweave's Vestment
		[12] = { itemID = 51148, "=ds=#s9#" }; --Sanctified Lasherweave's Gloves
		[13] = { itemID = 51146, "=ds=#s11#" }; --Sanctified Lasherweave's Trousers
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6=#t10s1_3#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51290, "=ds=" }; --Sanctified Lasherweave's Cover
		[18] = { itemID = 51292, "=ds=" }; --Sanctified Lasherweave's Mantle
		[19] = { itemID = 51294, "=ds=" }; --Sanctified Lasherweave's Vestment
		[20] = { itemID = 51291, "=ds=" }; --Sanctified Lasherweave's Gloves
		[21] = { itemID = 51293, "=ds=" }; --Sanctified Lasherweave's Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[1] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t10s2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50115, "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Headpiece
		[3] = { itemID = 50117, "60 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Spaulders
		[4] = { itemID = 50118, "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Tunic
		[5] = { itemID = 50114, "60 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Handguards
		[6] = { itemID = 50116, "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Legguards
		[8] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t10s2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51153, "=ds=#s1#" }; --Sanctified Ahn'Kahar Blood Hunter's Headpiece
		[10] = { itemID = 51151, "=ds=#s3#" }; --Sanctified Ahn'Kahar Blood Hunter's Spaulders
		[11] = { itemID = 51150, "=ds=#s5#" }; --Sanctified Ahn'Kahar Blood Hunter's Tunic
		[12] = { itemID = 51154, "=ds=#s9#" }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[13] = { itemID = 51152, "=ds=#s11#" }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6=#t10s2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51286, "=ds=#s1#" }; --Sanctified Ahn'Kahar Blood Hunter's Headpiece
		[18] = { itemID = 51288, "=ds=#s3#" }; --Sanctified Ahn'Kahar Blood Hunter's Spaulders
		[19] = { itemID = 51289, "=ds=#s5#" }; --Sanctified Ahn'Kahar Blood Hunter's Tunic
		[20] = { itemID = 51285, "=ds=#s9#" }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[21] = { itemID = 51287, "=ds=#s11#" }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[1] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t10s3#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50276, "95 #eoffrost#" }; --Bloodmage Hood
		[3] = { itemID = 50279, "60 #eoffrost#" }; --Bloodmage Shoulderpads
		[4] = { itemID = 50278, "95 #eoffrost#" }; --Bloodmage Robe
		[5] = { itemID = 50275, "60 #eoffrost#" }; --Bloodmage Gloves
		[6] = { itemID = 50277, "95 #eoffrost#" }; --Bloodmage Leggings
		[8] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t10s3#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51158, "=ds=#s1#" }; --Sanctified Bloodmage Hood
		[10] = { itemID = 51155, "=ds=#s3#" }; --Sanctified Bloodmage Shoulderpads
		[11] = { itemID = 51156, "=ds=#s5#" }; --Sanctified Bloodmage Robe
		[12] = { itemID = 51159, "=ds=#s9#" }; --Sanctified Bloodmage Gloves
		[13] = { itemID = 51157, "=ds=#s11#" }; --Sanctified Bloodmage Leggings
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6=#t10s3#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51281, "=ds=#s1#" }; --Sanctified Bloodmage Hood
		[18] = { itemID = 51284, "=ds=#s3#" }; --Sanctified Bloodmage Shoulderpads
		[19] = { itemID = 51283, "=ds=#s5#" }; --Sanctified Bloodmage Robe
		[20] = { itemID = 51280, "=ds=#s9#" }; --Sanctified Bloodmage Gauntlets
		[21] = { itemID = 51282, "=ds=#s11#" }; --Sanctified Bloodmage Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t10s4_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50867, "95 #eoffrost#" }; --Lightsworn Headpiece
		[3] = { itemID = 50865, "60 #eoffrost#" }; --Lightsworn Spaulders
		[4] = { itemID = 50869, "95 #eoffrost#" }; --Lightsworn Tunic
		[5] = { itemID = 50868, "60 #eoffrost#" }; --Lightsworn Gloves
		[6] = { itemID = 50866, "95 #eoffrost#" }; --Lightsworn Greaves
		[8] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t10s4_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51167, "=ds=#s1#" }; --Sanctified Lightsworn Headpiece
		[10] = { itemID = 51166, "=ds=#s3#" }; --Sanctified Lightsworn Spaulders
		[11] = { itemID = 51165, "=ds=#s5#" }; --Sanctified Lightsworn Tunic
		[12] = { itemID = 51169, "=ds=#s9#" }; --Sanctified Lightsworn Gloves
		[13] = { itemID = 51168, "=ds=#s11#" }; --Sanctified Lightsworn Greaves
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6=#t10s4_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51272, "=ds=#s1#" }; --Sanctified Lightsworn Headpiece
		[18] = { itemID = 51273, "=ds=#s3#" }; --Sanctified Lightsworn Spaulders
		[19] = { itemID = 51274, "=ds=#s5#" }; --Sanctified Lightsworn Tunic
		[20] = { itemID = 51270, "=ds=#s9#" }; --Sanctified Lightsworn Gloves
		[21] = { itemID = 51271, "=ds=#s11#" }; --Sanctified Lightsworn Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[1] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t10s4_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50326, "95 #eoffrost#" }; --Lightsworn Helmet
		[3] = { itemID = 50324, "60 #eoffrost#" }; --Lightsworn Shoulderplates
		[4] = { itemID = 50328, "95 #eoffrost#" }; --Lightsworn Battleplate
		[5] = { itemID = 50327, "60 #eoffrost#" }; --Lightsworn Gauntlets
		[6] = { itemID = 50325, "95 #eoffrost#" }; --Lightsworn Legplates
		[8] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t10s4_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51162, "=ds=#s1#" }; --Sanctified Lightsworn Helmet
		[10] = { itemID = 51160, "=ds=#s3#" }; --Sanctified Lightsworn Shoulderplates
		[11] = { itemID = 51164, "=ds=#s5#" }; --Sanctified Lightsworn Battleplate
		[12] = { itemID = 51163, "=ds=#s9#" }; --Sanctified Lightsworn Gauntlets
		[13] = { itemID = 51161, "=ds=#s11#" }; --Sanctified Lightsworn Legplates
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6=#t10s4_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51277, "=ds=#s1#" }; --Sanctified Lightsworn Helmet
		[18] = { itemID = 51279, "=ds=#s3#" }; --Sanctified Lightsworn Shoulderplates
		[19] = { itemID = 51275, "=ds=#s5#" }; --Sanctified Lightsworn Battleplate
		[20] = { itemID = 51276, "=ds=#s9#" }; --Sanctified Lightsworn Gauntlets
		[21] = { itemID = 51278, "=ds=#s11#" }; --Sanctified Lightsworn Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[1] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t10s4_3#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50862, "95 #eoffrost#" }; --Lightsworn Faceguard
		[3] = { itemID = 50860, "60 #eoffrost#" }; --Lightsworn Shoulderguards
		[4] = { itemID = 50864, "95 #eoffrost#" }; --Lightsworn Chestguard
		[5] = { itemID = 50863, "60 #eoffrost#" }; --Lightsworn Handguards
		[6] = { itemID = 50861, "95 #eoffrost#" }; --Lightsworn Legguards
		[8] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t10s4_3#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51173, "=ds=#s1#" }; --Sanctified Lightsworn Faceguard
		[10] = { itemID = 51170, "=ds=#s3#" }; --Sanctified Lightsworn Shoulderguards
		[11] = { itemID = 51174, "=ds=#s5#" }; --Sanctified Lightsworn Chestguard
		[12] = { itemID = 51172, "=ds=#s9#" }; --Sanctified Lightsworn Handguards
		[13] = { itemID = 51171, "=ds=#s11#" }; --Sanctified Lightsworn Legguards
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6=#t10s4_3#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51266, "=ds=#s1#" }; --Sanctified Lightsworn Faceguard
		[18] = { itemID = 51269, "=ds=#s3#" }; --Sanctified Lightsworn Shoulderguards
		[19] = { itemID = 51265, "=ds=#s5#" }; --Sanctified Lightsworn Chestguard
		[20] = { itemID = 51267, "=ds=#s9#" }; --Sanctified Lightsworn Handguards
		[21] = { itemID = 51268, "=ds=#s11#" }; --Sanctified Lightsworn Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[1] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t10s5_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50392, "95 #eoffrost#" }; --Crimson Acolyte Cowl
		[3] = { itemID = 50396, "60 #eoffrost#" }; --Crimson Acolyte Mantle
		[4] = { itemID = 50394, "95 #eoffrost#" }; --Crimson Acolyte Raiments
		[5] = { itemID = 50391, "60 #eoffrost#" }; --Crimson Acolyte Handwraps
		[6] = { itemID = 50393, "95 #eoffrost#" }; --Crimson Acolyte Pants
		[8] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t10s5_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51184, "=ds=#s1#" }; --Sanctified Crimson Acolyte Cowl
		[10] = { itemID = 51182, "=ds=#s3#" }; --Sanctified Crimson Acolyte Mantle
		[11] = { itemID = 51180, "=ds=#s5#" }; --Sanctified Crimson Acolyte Raiments
		[12] = { itemID = 51183, "=ds=#s9#" }; --Sanctified Crimson Acolyte Handwraps
		[13] = { itemID = 51181, "=ds=#s11#" }; --Sanctified Crimson Acolyte Pants
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6=#t10s5_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51255, "=ds=#s1#" }; --Sanctified Crimson Acolyte Cowl
		[18] = { itemID = 51257, "=ds=#s3#" }; --Sanctified Crimson Acolyte Mantle
		[19] = { itemID = 51259, "=ds=#s5#" }; --Sanctified Crimson Acolyte Raiments
		[20] = { itemID = 51256, "=ds=#s9#" }; --Sanctified Crimson Acolyte Handwraps
		[21] = { itemID = 51258, "=ds=#s11#" }; --Sanctified Crimson Acolyte Pants
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[1] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t10s5_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50765, "95 #eoffrost#" }; --Crimson Acolyte Hood
		[3] = { itemID = 50767, "60 #eoffrost#" }; --Crimson Acolyte Shoulderpads
		[4] = { itemID = 50768, "95 #eoffrost#" }; --Crimson Acolyte Robe
		[5] = { itemID = 50766, "60 #eoffrost#" }; --Crimson Acolyte Gloves
		[6] = { itemID = 50769, "95 #eoffrost#" }; --Crimson Acolyte Leggings
		[8] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t10s5_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51178, "=ds=#s1#" }; --Sanctified Crimson Acolyte Hood
		[10] = { itemID = 51175, "=ds=#s3#" }; --Sanctified Crimson Acolyte Shoulderpads
		[11] = { itemID = 51176, "=ds=#s5#" }; --Sanctified Crimson Acolyte Robe
		[12] = { itemID = 51179, "=ds=#s9#" }; --Sanctified Crimson Acolyte Gloves
		[13] = { itemID = 51177, "=ds=#s11#" }; --Sanctified Crimson Acolyte Leggings
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6=#t10s5_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51261, "=ds=#s1#" }; --Sanctified Crimson Acolyte Hood
		[18] = { itemID = 51264, "=ds=#s3#" }; --Sanctified Crimson Acolyte Shoulderpads
		[19] = { itemID = 51263, "=ds=#s5#" }; --Sanctified Crimson Acolyte Robe
		[20] = { itemID = 51260, "=ds=#s9#" }; --Sanctified Crimson Acolyte Gloves
		[21] = { itemID = 51262, "=ds=#s11#" }; --Sanctified Crimson Acolyte Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[1] = { icon = "Ability_BackStab", name = "=q6=#t10s6#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50089, "95 #eoffrost#" }; --Shadowblade Helmet
		[3] = { itemID = 50105, "60 #eoffrost#" }; --Shadowblade Pauldrons
		[4] = { itemID = 50087, "95 #eoffrost#" }; --Shadowblade Breastplate
		[5] = { itemID = 50088, "60 #eoffrost#" }; --Shadowblade Gauntlets
		[6] = { itemID = 50090, "95 #eoffrost#" }; --Shadowblade Legplates
		[8] = { icon = "Ability_BackStab", name = "=q6=#t10s6#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51187, "=ds=#s1#" }; --Sanctified Shadowblade Helmet
		[10] = { itemID = 51185, "=ds=#s3#" }; --Sanctified Shadowblade Pauldrons
		[11] = { itemID = 51189, "=ds=#s5#" }; --Sanctified Shadowblade Breastplate
		[12] = { itemID = 51188, "=ds=#s9#" }; --Sanctified Shadowblade Gauntlets
		[13] = { itemID = 51186, "=ds=#s11#" }; --Sanctified Shadowblade Legplates
		[16] = { icon = "Ability_BackStab", name = "=q6=#t10s6#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51252, "=ds=#s1#" }; --Sanctified Shadowblade Helmet
		[18] = { itemID = 51254, "=ds=#s3#" }; --Sanctified Shadowblade Pauldrons
		[19] = { itemID = 51250, "=ds=#s5#" }; --Sanctified Shadowblade Breastplate
		[20] = { itemID = 51251, "=ds=#s9#" }; --Sanctified Shadowblade Gauntlets
		[21] = { itemID = 51253, "=ds=#s11#" }; --Sanctified Shadowblade Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[1] = { icon = "Spell_Nature_Lightning", name = "=q6=#t10s7_3#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50843, "95 #eoffrost#" }; --Frost Witch's Helm
		[3] = { itemID = 50845, "60 #eoffrost#" }; --Frost Witch's Shoulderpads
		[4] = { itemID = 50841, "95 #eoffrost#" }; --Frost Witch's Hauberk
		[5] = { itemID = 50842, "60 #eoffrost#" }; --Frost Witch's Gloves
		[6] = { itemID = 50844, "95 #eoffrost#" }; --Frost Witch's Kilt
		[8] = { icon = "Spell_Nature_Lightning", name = "=q6=#t10s7_3#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51202, "=ds=#s1#" }; --Sanctified Frost Witch's Helm
		[10] = { itemID = 51204, "=ds=#s3#" }; --Sanctified Frost Witch's Shoulderpads
		[11] = { itemID = 51200, "=ds=#s5#" }; --Sanctified Frost Witch's Hauberk
		[12] = { itemID = 51201, "=ds=#s9#" }; --Sanctified Frost Witch's Gloves
		[13] = { itemID = 51203, "=ds=#s11#" }; --Sanctified Frost Witch's Kilt
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6=#t10s7_3#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51237, "=ds=#s1#" }; --Sanctified Frost Witch's Helm
		[18] = { itemID = 51235, "=ds=#s3#" }; --Sanctified Frost Witch's Shoulderpads
		[19] = { itemID = 51239, "=ds=#s5#" }; --Sanctified Frost Witch's Hauberk
		[20] = { itemID = 51238, "=ds=#s9#" }; --Sanctified Frost Witch's Gloves
		[21] = { itemID = 51236, "=ds=#s11#" }; --Sanctified Frost Witch's Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[1] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t10s7_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50832, "95 #eoffrost#" }; --Frost Witch's Faceguard
		[3] = { itemID = 50834, "60 #eoffrost#" }; --Frost Witch's Shoulderguards
		[4] = { itemID = 50830, "95 #eoffrost#" }; --Frost Witch's Chestguard
		[5] = { itemID = 50831, "60 #eoffrost#" }; --Frost Witch's Grips
		[6] = { itemID = 50833, "95 #eoffrost#" }; --Frost Witch's War-Kilt
		[8] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t10s7_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51197, "=ds=#s1#" }; --Sanctified Frost Witch's Faceguard
		[10] = { itemID = 51199, "=ds=#s3#" }; --Sanctified Frost Witch's Shoulderguards
		[11] = { itemID = 51195, "=ds=#s5#" }; --Sanctified Frost Witch's Chestguard
		[12] = { itemID = 51196, "=ds=#s9#" }; --Sanctified Frost Witch's Grips
		[13] = { itemID = 51198, "=ds=#s11#" }; --Sanctified Frost Witch's War-Kilt
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6=#t10s7_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51242, "=ds=#s1#" }; --Sanctified Frost Witch's Faceguard
		[18] = { itemID = 51240, "=ds=#s3#" }; --Sanctified Frost Witch's Shoulderguards
		[19] = { itemID = 51244, "=ds=#s5#" }; --Sanctified Frost Witch's Chestguard
		[20] = { itemID = 51243, "=ds=#s9#" }; --Sanctified Frost Witch's Grips
		[21] = { itemID = 51241, "=ds=#s11#" }; --Sanctified Frost Witch's War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[1] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t10s7_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50837, "95 #eoffrost#" }; --Frost Witch's Headpiece
		[3] = { itemID = 50839, "60 #eoffrost#" }; --Frost Witch's Spaulders
		[4] = { itemID = 50835, "95 #eoffrost#" }; --Frost Witch's Tunic
		[5] = { itemID = 50836, "60 #eoffrost#" }; --Frost Witch's Handguards
		[6] = { itemID = 50838, "95 #eoffrost#" }; --Frost Witch's Legguards
		[8] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t10s7_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51192, "=ds=#s1#" }; --Sanctified Frost Witch's Headpiece
		[10] = { itemID = 51194, "=ds=#s3#" }; --Sanctified Frost Witch's Spaulders
		[11] = { itemID = 51190, "=ds=#s5#" }; --Sanctified Frost Witch's Tunic
		[12] = { itemID = 51191, "=ds=#s9#" }; --Sanctified Frost Witch's Handguards
		[13] = { itemID = 51193, "=ds=#s11#" }; --Sanctified Frost Witch's Legguards
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6=#t10s7_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51247, "=ds=#s1#" }; --Sanctified Frost Witch's Headpiece
		[18] = { itemID = 51245, "=ds=#s3#" }; --Sanctified Frost Witch's Spaulders
		[19] = { itemID = 51249, "=ds=#s5#" }; --Sanctified Frost Witch's Tunic
		[20] = { itemID = 51248, "=ds=#s9#" }; --Sanctified Frost Witch's Handguards
		[21] = { itemID = 51246, "=ds=#s11#" }; --Sanctified Frost Witch's Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[1] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t10s8#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50241, "95 #eoffrost#" }; --Dark Coven Hood
		[3] = { itemID = 50244, "60 #eoffrost#" }; --Dark Coven Shoulderpads
		[4] = { itemID = 50243, "95 #eoffrost#" }; --Dark Coven Robe
		[5] = { itemID = 50240, "60 #eoffrost#" }; --Dark Coven Gloves
		[6] = { itemID = 50242, "95 #eoffrost#" }; --Dark Coven Leggings
		[8] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t10s8#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51208, "=ds=#s1#" }; --Sanctified Dark Coven Hood
		[10] = { itemID = 51205, "=ds=#s3#" }; --Sanctified Dark Coven Shoulderpads
		[11] = { itemID = 51206, "=ds=#s5#" }; --Sanctified Dark Coven Robe
		[12] = { itemID = 51209, "=ds=#s9#" }; --Sanctified Dark Coven Gloves
		[13] = { itemID = 51207, "=ds=#s11#" }; --Sanctified Dark Coven Leggings
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6=#t10s8#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51231, "=ds=#s1#" }; --Sanctified Dark Coven Hood
		[18] = { itemID = 51234, "=ds=#s3#" }; --Sanctified Dark Coven Shoulderpads
		[19] = { itemID = 51233, "=ds=#s5#" }; --Sanctified Dark Coven Robe
		[20] = { itemID = 51230, "=ds=#s9#" }; --Sanctified Dark Coven Gloves
		[21] = { itemID = 51232, "=ds=#s11#" }; --Sanctified Dark Coven Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[1] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t10s9_1#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50080, "95 #eoffrost#" }; --Ymirjar Lord's Helmet
		[3] = { itemID = 50082, "60 #eoffrost#" }; --Ymirjar Lord's Shoulderplates
		[4] = { itemID = 50078, "95 #eoffrost#" }; --Ymirjar Lord's Battleplate
		[5] = { itemID = 50079, "60 #eoffrost#" }; --Ymirjar Lord's Gauntlets
		[6] = { itemID = 50081, "95 #eoffrost#" }; --Ymirjar Lord's Legplates
		[8] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t10s9_1#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51212, "=ds=#s1#" }; --Ymirjar Lord's Helmet
		[10] = { itemID = 51210, "=ds=#s3#" }; --Ymirjar Lord's Shoulderplates
		[11] = { itemID = 51214, "=ds=#s5#" }; --Ymirjar Lord's Battleplate
		[12] = { itemID = 51213, "=ds=#s9#" }; --Ymirjar Lord's Gauntlets
		[13] = { itemID = 51211, "=ds=#s11#" }; --Ymirjar Lord's Legplates
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6=#t10s9_1#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51227, "=ds=#s1#" }; --Ymirjar Lord's Helmet
		[18] = { itemID = 51229, "=ds=#s3#" }; --Ymirjar Lord's Shoulderplates
		[19] = { itemID = 51225, "=ds=#s5#" }; --Ymirjar Lord's Battleplate
		[20] = { itemID = 51226, "=ds=#s9#" }; --Ymirjar Lord's Gauntlets
		[21] = { itemID = 51228, "=ds=#s11#" }; --Ymirjar Lord's Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[1] = { icon = "INV_Shield_05", name = "=q6=#t10s9_2#", desc = "=q5=" .. AL["Tier 10"] };
		[2] = { itemID = 50848, "95 #eoffrost#" }; --Ymirjar Lord's Greathelm
		[3] = { itemID = 50846, "60 #eoffrost#" }; --Ymirjar Lord's Pauldrons
		[4] = { itemID = 50850, "95 #eoffrost#" }; --Ymirjar Lord's Breastplate
		[5] = { itemID = 50849, "60 #eoffrost#" }; --Ymirjar Lord's Handguards
		[6] = { itemID = 50847, "95 #eoffrost#" }; --Ymirjar Lord's Legguards
		[8] = { icon = "INV_Shield_05", name = "=q6=#t10s9_2#", desc = "=q5=" .. AL["Tier 10"] };
		[9] = { itemID = 51218, "=ds=#s1#" }; --Ymirjar Lord's Greathelm
		[10] = { itemID = 51215, "=ds=#s3#" }; --Ymirjar Lord's Pauldrons
		[11] = { itemID = 51219, "=ds=#s5#" }; --Ymirjar Lord's Breastplate
		[12] = { itemID = 51217, "=ds=#s9#" }; --Ymirjar Lord's Handguards
		[13] = { itemID = 51216, "=ds=#s11#" }; --Ymirjar Lord's Legguards
		[16] = { icon = "INV_Shield_05", name = "=q6=#t10s9_2#", desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51221, "=ds=#s1#" }; --Ymirjar Lord's Greathelm
		[18] = { itemID = 51224, "=ds=#s3#" }; --Ymirjar Lord's Pauldrons
		[19] = { itemID = 51220, "=ds=#s5#" }; --Ymirjar Lord's Breastplate
		[20] = { itemID = 51222, "=ds=#s9#" }; --Ymirjar Lord's Handguards
		[21] = { itemID = 51223, "=ds=#s11#" }; --Ymirjar Lord's Legguards
	};
};

-------------------
--- Legendaries ---
-------------------

AtlasLoot_Data["Legendaries"] = {
	Name = AL["Legendary Items"];
	Type = "WrathRaid";
	{
		Name = AL["Legendary Items"];
		[1] = { itemID = 34334, "=ds=#w2#" }; --Thori'dal, the Stars' Fury
		[3] = { itemID = 32837, "=ds=#h3#, =q1=#m1# =ds=#c9#, #c6#" }; --Warglaive of Azzinoth
		[4] = { itemID = 32838, "=ds=#h4#, =q1=#m1# =ds=#c9#, #c6#" }; --Warglaive of Azzinoth
		[6] = { itemID = 30312, "=q1=#m26#: =ds=#h1#" }; --Infinity Blade
		[7] = { itemID = 30311, "=q1=#m26#: =ds=#h1#" }; --Warp Slicer
		[8] = { itemID = 30317, "=q1=#m26#: =ds=#h3#" }; --Cosmic Infuser
		[9] = { itemID = 30316, "=q1=#m26#: =ds=#h2#" }; --Devastation
		[10] = { itemID = 30313, "=q1=#m26#: =ds=#w9#" }; --Staff of Disintegration
		[11] = { itemID = 30314, "=q1=#m26#: =ds=#w8#" }; --Phaseshift Bulwark
		[12] = { itemID = 30318, "=q1=#m26#: =ds=#w2#, =q1=#m1# =ds=#c2#" }; --Netherstrand Longbow
		[13] = { itemID = 30319, "=q1=#m26#: =ds=#w17#" }; --Nether Spike
		[16] = { itemID = 22736, "=q1=#m26#: =ds=#h3#" }; --Andonisus, Reaper of Souls
		[17] = { itemID = 19019, "=ds=#h1#" }; --Thunderfury, Blessed Blade of the Windseeker
		[18] = { itemID = 17182, "=ds=#h2#" }; --Sulfuras, Hand of Ragnaros
		[19] = { itemID = 21176, "=ds=#e12#" }; --Black Qiraji Resonating Crystal
		[21] = { itemID = 22632, "=ds=#m4#, =q1=#m1# =ds=#c1#" }, --Atiesh, Greatstaff of the Guardian
		[22] = { itemID = 22589, "=ds=#m4#, =q1=#m1# =ds=#c3#" }, --Atiesh, Greatstaff of the Guardian
		[23] = { itemID = 22631, "=ds=#m4#, =q1=#m1# =ds=#c5#" }, --Atiesh, Greatstaff of the Guardian
		[24] = { itemID = 22630, "=ds=#m4#, =q1=#m1# =ds=#c8#" }, --Atiesh, Greatstaff of the Guardian
		[26] = { itemID = 49623, "=ds=#h2# #w1#" }; --Shadowmourne
		[27] = { itemID = 46017, "=ds=#h3# #w6#" }; --Val'anyr, Hammer of Ancient Kings
	};
};

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsWrath"] = {
	Name = "World Epics";
	Type = "WrathDungeon";
	{
		Name = "World Epics";
		[1] = { itemID = 44309, "=ds=#s10#" }; --Sash of Jordan
		[2] = { itemID = 44312, "=ds=#s3#" }; --Wapach's Spaulders of Solidarity
		[3] = { itemID = 44308, "=ds=#s13#" }; --Signet of Edward the Odd
		[4] = { itemID = 37835, "=ds=#s14#" }; --Je'Tze's Bell
		[5] = { itemID = 37254, "=ds=#s14#" }; --Super Simian Sphere
		[16] = { itemID = 44310, "=ds=#h1#" }; --Namlak's Supernumerary Sticker
		[17] = { itemID = 43613, "=ds=#h1#" }; --The Dusk Blade
		[18] = { itemID = 44311, "=ds=#h1#" }; --Avool's Sword of Jin
		[19] = { itemID = 43611, "=ds=#h1#" }; --Krol Cleaver
		[20] = { itemID = 44313, "=ds=#w8#" }; --Zom's Crackling Bulwark
		[21] = { itemID = 43612, "=ds=#w11#" }; --Spineslicer
	};
};


-------------------------------
--- Emblem of Heroism Items ---
-------------------------------

AtlasLoot_Data["EmblemofHeroism"] = {
	Name = AL["Emblem of Heroism Rewards"];
	{
		Name = "Page 1";
		[1] = { itemID = 40697, "40 #eofheroism#" }; --Elegant Temple Gardens' Girdle
		[2] = { itemID = 40696, "40 #eofheroism#" }; --Plush Sash of Guzbah
		[3] = { itemID = 40694, "40 #eofheroism#" }; --Jorach's Crocolisk Skin Belt
		[4] = { itemID = 40695, "40 #eofheroism#" }; --Vine Belt of the Woodland Dryad
		[5] = { itemID = 40693, "40 #eofheroism#" }; --Beadwork Belt of Shamanic Vision
		[6] = { itemID = 40692, "40 #eofheroism#" }; --Vereesa's Silver Chain Belt
		[7] = { itemID = 40691, "40 #eofheroism#" }; --Magroth's Meditative Cincture
		[8] = { itemID = 40688, "40 #eofheroism#" }; --Verdungo's Barbarian Cord
		[9] = { itemID = 40689, "40 #eofheroism#" }; --Waistguard of Living Iron
		[16] = { itemID = 40704, desc = "=ds=#w13#, #h4#", "50 #eofheroism#" }; --Pride
		[17] = { itemID = 40702, desc = "=ds=#w4#, #h4#", "50 #eofheroism#" }; --Rolfsen's Ripper
		[18] = { itemID = 40703, desc = "=ds=#w10#, #h4#", "50 #eofheroism#" }; --Grasscutter
		[19] = { itemID = 40716, "15 #eofheroism#" }; --Lillehoff's Winged Blades
		[20] = { itemID = 40701, "35 #eofheroism#" }; --Crygil's Discarded Plate Panel
		[21] = { itemID = 40700, "35 #eofheroism#" }; --Protective Barricade of the Light
		[22] = { itemID = 40699, "25 #eofheroism#" }; --Handbook of Obscure Remedies
		[23] = { itemID = 40698, "25 #eofheroism#" }; --Ward of the Violet Citadel
	};
	{
		Name = "Page 2";
		[1] = { itemID = 40711, "15 #eofheroism#" }; --Idol of Lush Moss
		[2] = { itemID = 40712, "15 #eofheroism#" }; --Idol of Steadfast Renewal
		[3] = { itemID = 40713, "15 #eofheroism#" }; --Idol of the Ravenous Beast
		[4] = { itemID = 40707, "15 #eofheroism#" }; --Libram of Obstruction
		[5] = { itemID = 40706, "15 #eofheroism#" }; --Libram of Reciprocation
		[6] = { itemID = 40705, "15 #eofheroism#" }; --Libram of Renewal
		[7] = { itemID = 40715, desc = "=ds=#w21#", "15 #eofheroism#" }; --Sigil of Haunted Dreams
		[8] = { itemID = 40714, desc = "=ds=#w21#", "15 #eofheroism#" }; --Sigil of the Unfaltering Knight
		[9] = { itemID = 40709, "15 #eofheroism#" }; --Totem of Forest Growth
		[10] = { itemID = 40710, "15 #eofheroism#" }; --Totem of Splintering
		[11] = { itemID = 40708, "15 #eofheroism#" }; --Totem of the Elemental Plane
		[16] = { itemID = 40679, "25 #eofheroism#" }; --Chained Military Gorget
		[17] = { itemID = 40680, "25 #eofheroism#" }; --Encircling Burnished Gold Chains
		[18] = { itemID = 40681, "25 #eofheroism#" }; --Lattice Choker of Light
		[19] = { itemID = 40678, "25 #eofheroism#" }; --Pendant of the Outcast Hero
		[20] = { itemID = 40684, "40 #eofheroism#" }; --Mirror of Truth
		[21] = { itemID = 40682, "40 #eofheroism#" }; --Sundial of the Exiled
		[22] = { itemID = 40685, "40 #eofheroism#" }; --The Egg of Mortal Essence
		[23] = { itemID = 40683, "40 #eofheroism#" }; --Valor Medal of the First War
	};
	{
		Name = "Page 3";
		[1] = { itemID = 40610, desc = "=ds=#e15#", "80 #eofheroism#" }; --Chestguard of the Lost Conqueror
		[2] = { itemID = 40611, desc = "=ds=#e15#", "80 #eofheroism#" }; --Chestguard of the Lost Protector
		[3] = { itemID = 40612, desc = "=ds=#e15#", "80 #eofheroism#" }; --Chestguard of the Lost Vanquisher
		[5] = { itemID = 40613, desc = "=ds=#e15#", "60 #eofheroism#" }; --Gloves of the Lost Conqueror
		[6] = { itemID = 40614, desc = "=ds=#e15#", "60 #eofheroism#" }; --Gloves of the Lost Protector
		[7] = { itemID = 40615, desc = "=ds=#e15#", "60 #eofheroism#" }; --Gloves of the Lost Vanquisher
		[9] = { itemID = 44230, desc = "=ds=#e12# =ec1=#m7#", "200 #eofheroism#" }; --Reins of the Wooly Mammoth
		[10] = { itemID = 44231, desc = "=ds=#e12# =ec1=#m6#", "200 #eofheroism#" }; --Reins of the Wooly Mammoth
		[16] = { itemID = 36919, "20 #eofheroism#" }; --Cardinal Ruby
		[17] = { itemID = 36922, "20 #eofheroism#" }; --King's Amber
		[18] = { itemID = 36925, "20 #eofheroism#" }; --Majestic Zircon
		[19] = { itemID = 36931, "10 #eofheroism#" }; --Ametrine
		[20] = { itemID = 36928, "10 #eofheroism#" }; --Dreadstone
		[21] = { itemID = 36934, "10 #eofheroism#" }; --Eye of Zul
		[23] = { itemID = 43102, desc = "=ds=#e6#", "10 #eofheroism#" }; --Frozen Orb
	};
	{
		Name = "Page 4";
		[1] = { itemID = 42985, desc = "=q7=Tattered Dreadmist Mantle", "=ds=#s3#", "40 #eofheroism#" };
		[2] = { itemID = 42984, desc = "=q7=Preened Ironfeather Shoulders", "=ds=#s3#", "40 #eofheroism#" };
		[3] = { itemID = 42952, desc = "=q7=Stained Shadowcraft Spaulders", "=ds=#s3#", "40 #eofheroism#" };
		[4] = { itemID = 42950, desc = "=q7=Champion Herod's Shoulder", "=ds=#s3#", "40 #eofheroism#" };
		[5] = { itemID = 42951, desc = "=q7=Mystical Pauldrons of Elements", "=ds=#s3#", "40 #eofheroism#" };
		[6] = { itemID = 42949, desc = "=q7=Polished Spaulders of Valor", "=ds=#s3#", "40 #eofheroism#" };
		[8] = { itemID = 48691, desc = "=q7=Tattered Dreadmist Robe", "=ds=#s5#", "40 #eofheroism#" };
		[9] = { itemID = 48687, desc = "=q7=Preened Ironfeather Breastplate", "=ds=#s5#", "40 #eofheroism#" };
		[10] = { itemID = 48689, desc = "=q7=Stained Shadowcraft Tunic", "=ds=#s5#", "40 #eofheroism#" };
		[11] = { itemID = 48677, desc = "=q7=Champion's Deathdealer Breastplate", "=ds=#s5#", "40 #eofheroism#" };
		[12] = { itemID = 48683, desc = "=q7=Mystical Vest of Elements", "=ds=#s5#", "40 #eofheroism#" };
		[13] = { itemID = 48685, desc = "=q7=Polished Breastplate of Valor", "=ds=#s5#", "40 #eofheroism#" };
		[16] = { itemID = 42992, desc = "=q7=Discerning Eye of the Beast", "=ds=#s14#", "50 #eofheroism#" };
		[17] = { itemID = 42991, desc = "=q7=Swift Hand of Justice", "=ds=#s14#", "50 #eofheroism#" };
		[19] = { itemID = 42944, desc = "=q7=Balanced Heartseeker", "=ds=#w4#, #h1#", "40 #eofheroism#" };
		[20] = { itemID = 42945, desc = "=q7=Venerable Dal'Rend's Sacred Charge", "=ds=#w10#, #h3#", "40 #eofheroism#" };
		[21] = { itemID = 42943, desc = "=q7=Bloodied Arcanite Reaper", "=ds=#w1#, #h2#", "65 #eofheroism#" };
		[22] = { itemID = 42948, desc = "=q7=Devout Aurastone Hammer", "=ds=#w6#, #h3#", "50 #eofheroism#" };
		[23] = { itemID = 48716, desc = "=q7=Venerable Mass of McGowan", "=ds=#w6#, #h1#", "40 #eofheroism#" };
		[24] = { itemID = 48718, desc = "=q7=Repurposed Lava Dredger", "=ds=#w6#, #h2#", "65 #eofheroism#" };
		[25] = { itemID = 42947, desc = "=q7=Dignified Headmaster's Charge", "=ds=#w9#", "65 #eofheroism#" };
		[26] = { itemID = 42946, desc = "=q7=Charmed Ancient Bone Bow", "=ds=#w2#", "65 #eofheroism#" };
	};
};

-----------------------------
--- Emblem of Valor Items ---
-----------------------------

AtlasLoot_Data["EmblemofValor"] = {
	Name = AL["Emblem of Valor Rewards"];
	{
		Name = "Page 1";
		[1] = { itemID = 40724, "25 #eofvalor#" }; --Cloak of Kea Feathers
		[2] = { itemID = 40723, "25 #eofvalor#" }; --Disguise of the Kumiho
		[3] = { itemID = 40722, "25 #eofvalor#" }; --Platinum Mesh Cloak
		[4] = { itemID = 40721, "25 #eofvalor#" }; --Hammerhead Sharkskin Cloak
		[6] = { itemID = 40741, "60 #eofvalor#" }; --Cuffs of the Shadow Ascendant
		[7] = { itemID = 40740, "60 #eofvalor#" }; --Wraps of the Astral Traveler
		[8] = { itemID = 40751, "40 #eofvalor#" }; --Slippers of the Holy Light
		[9] = { itemID = 40750, "40 #eofvalor#" }; --Xintor's Expeditionary Boots
		[11] = { itemID = 40739, "60 #eofvalor#" }; --Bands of the Great Tree
		[12] = { itemID = 40738, "60 #eofvalor#" }; --Wristwraps of the Cutthroat
		[13] = { itemID = 40748, "40 #eofvalor#" }; --Boots of Captain Ellis
		[14] = { itemID = 40749, "40 #eofvalor#" }; --Rainey's Chewed Boots
		[16] = { itemID = 40736, "60 #eofvalor#" }; --Armguard of the Tower Archer
		[17] = { itemID = 40737, "60 #eofvalor#" }; --Pigmented Clan Bindings
		[18] = { itemID = 40746, "40 #eofvalor#" }; --Pack-Ice Striders
		[19] = { itemID = 40747, "40 #eofvalor#" }; --Treads of Coastal Wandering
		[21] = { itemID = 40734, "60 #eofvalor#" }; --Bracers of Dalaran's Parapets
		[22] = { itemID = 40733, "60 #eofvalor#" }; --Wristbands of the Sentinel Huntress
		[23] = { itemID = 40735, "60 #eofvalor#" }; --Zartson's Jungle Vambraces
		[24] = { itemID = 40742, "40 #eofvalor#" }; --Bladed Steelboots
		[25] = { itemID = 40743, "40 #eofvalor#" }; --Kyzoc's Ground Stompers
		[26] = { itemID = 40745, "40 #eofvalor#" }; --Sabatons of Rapid Recovery
	};
	{
		Name = "Page 2";
		[1] = { itemID = 40719, "25 #eofvalor#" }; --Band of Channeled Magic
		[2] = { itemID = 40720, "25 #eofvalor#" }; --Renewal of Life
		[3] = { itemID = 40717, "25 #eofvalor#" }; --Ring of Invincibility
		[4] = { itemID = 40718, "25 #eofvalor#" }; --Signet of the Impregnable Fortress
		[6] = { itemID = 40342, desc = "=ds=#s16#", "25 #eofvalor#" }; --Idol of Awakening
		[7] = { itemID = 40321, desc = "=ds=#s16#", "25 #eofvalor#" }; --Idol of the Shooting Star
		[8] = { itemID = 39757, desc = "=ds=#s16#", "25 #eofvalor#" }; --Idol of Worship
		[9] = { itemID = 40191, desc = "=ds=#s16#", "25 #eofvalor#" }; --Libram of Radiance
		[10] = { itemID = 40337, desc = "=ds=#s16#", "25 #eofvalor#" }; --Libram of Resurgence
		[11] = { itemID = 40268, desc = "=ds=#s16#", "25 #eofvalor#" }; --Libram of Tolerance
		[12] = { itemID = 40207, desc = "=ds=#s16#, #w21#", "25 #eofvalor#" }; --Sigil of Awareness
		[13] = { itemID = 40322, desc = "=ds=#s16#", "25 #eofvalor#" }; --Totem of Dueling
		[14] = { itemID = 40267, desc = "=ds=#s16#", "25 #eofvalor#" }; --Totem of Hex
		[15] = { itemID = 39728, desc = "=ds=#s16#", "25 #eofvalor#" }; --Totem of Misery
		[16] = { itemID = 40637, desc = "=ds=#e15#", "60 #eofvalor#" }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638, desc = "=ds=#e15#", "60 #eofvalor#" }; --Mantle of the Lost Protector
		[18] = { itemID = 40639, desc = "=ds=#e15#", "60 #eofvalor#" }; --Mantle of the Lost Vanquisher
		[20] = { itemID = 40634, desc = "=ds=#e15#", "75 #eofvalor#" }; --Legplates of the Lost Conqueror
		[21] = { itemID = 40635, desc = "=ds=#e15#", "75 #eofvalor#" }; --Legplates of the Lost Protector
		[22] = { itemID = 40636, desc = "=ds=#e15#", "75 #eofvalor#" }; --Legplates of the Lost Vanquisher
		[24] = { itemID = 40752, desc = "=ds=#m17#", "1 #eofvalor#" }; --Emblem of Heroism
	};
};

--------------------------------
--- Emblem of Conquest Items ---
--------------------------------

AtlasLoot_Data["EmblemofConquest"] = {
	Name = AL["Emblem of Conquest Rewards"];
	{
		Name = "Page 1";
		[1] = { itemID = 45840, "28 #eofconquest#" }; --Touch of the Occult
		[2] = { itemID = 45831, "28 #eofconquest#" }; --Sash of Potent Incantations
		[3] = { itemID = 45848, "39 #eofconquest#" }; --Legwraps of the Master Conjurer
		[5] = { itemID = 45833, "28 #eofconquest#" }; --Bladebreaker Gauntlets
		[6] = { itemID = 45835, "28 #eofconquest#" }; --Gauntlets of Serene Blessing
		[7] = { itemID = 45834, "28 #eofconquest#" }; --Gauntlets of the Royal Watch
		[8] = { itemID = 45824, "28 #eofconquest#" }; --Belt of the Singing Blade
		[9] = { itemID = 45826, "28 #eofconquest#" }; --Girdle of Unyielding Trust
		[10] = { itemID = 45825, "28 #eofconquest#" }; --Shieldwarder Girdle
		[11] = { itemID = 45843, "39 #eofconquest#" }; --Legguards of the Peaceful Covenant
		[12] = { itemID = 45841, "39 #eofconquest#" }; --Legplates of the Violet Champion
		[13] = { itemID = 45842, "39 #eofconquest#" }; --Wyrmguard Legplates
		[16] = { itemID = 45838, "28 #eofconquest#" }; --Gloves of the Blind Stalker
		[17] = { itemID = 45839, "28 #eofconquest#" }; --Grips of the Secret Grove
		[18] = { itemID = 45830, "28 #eofconquest#" }; --Belt of the Living Thicket
		[19] = { itemID = 45829, "28 #eofconquest#" }; --Belt of the Twilight Assassin
		[20] = { itemID = 45846, "39 #eofconquest#" }; --Leggings of Wavering Shadow
		[21] = { itemID = 45847, "39 #eofconquest#" }; --Wildstrider Legguards
		[23] = { itemID = 45837, "28 #eofconquest#" }; --Gloves of Augury
		[24] = { itemID = 45836, "28 #eofconquest#" }; --Gloves of Unerring Aim
		[25] = { itemID = 45827, "28 #eofconquest#" }; --Belt of the Ardent Marksman
		[26] = { itemID = 45828, "28 #eofconquest#" }; --Windchill Binding
		[27] = { itemID = 45844, "39 #eofconquest#" }; --Leggings of the Tireless Sentry
		[28] = { itemID = 45845, "39 #eofconquest#" }; --Leggings of the Weary Mystic
	};
	{
		Name = "Page 2";
		[1] = { itemID = 45820, "19 #eofconquest#" }; --Broach of the Wailing Night
		[2] = { itemID = 45822, "19 #eofconquest#" }; --Evoker's Charm
		[3] = { itemID = 45823, "19 #eofconquest#" }; --Frozen Tear of Elune
		[4] = { itemID = 45821, "19 #eofconquest#" }; --Shard of the Crystal Forest
		[5] = { itemID = 45819, "19 #eofconquest#" }; --Spiked Battleguard Choker
		[7] = { itemID = 45638, desc = "=ds=", "58 #eofconquest#" }; --Crown of the Wayward Conqueror
		[8] = { itemID = 45639, desc = "=ds=", "58 #eofconquest#" }; --Crown of the Wayward Protector
		[9] = { itemID = 45640, desc = "=ds=", "58 #eofconquest#" }; --Crown of the Wayward Vanquisher
		[11] = { itemID = 45632, desc = "=ds=", "58 #eofconquest#" }; --Breastplate of the Wayward Conqueror
		[12] = { itemID = 45633, desc = "=ds=", "58 #eofconquest#" }; --Breastplate of the Wayward Protector
		[13] = { itemID = 45634, desc = "=ds=", "58 #eofconquest#" }; --Breastplate of the Wayward Vanquisher
		[16] = { itemID = 45509, desc = "=ds=#s16#", "19 #eofconquest#" }; --Idol of the Corruptor
		[17] = { itemID = 45270, desc = "=ds=#s16#", "19 #eofconquest#" }; --Idol of the Crying Wind
		[18] = { itemID = 46138, desc = "=ds=#s16#", "19 #eofconquest#" }; --Idol of the Flourishing Life
		[19] = { itemID = 45510, desc = "=ds=#s16#", "19 #eofconquest#" }; --Libram of Discord
		[20] = { itemID = 45436, desc = "=ds=#s16#", "19 #eofconquest#" }; --Libram of the Resolute
		[21] = { itemID = 45145, desc = "=ds=#s16#", "19 #eofconquest#" }; --Libram of the Sacred Shield
		[22] = { itemID = 45144, desc = "=ds=#s16#, #w21#", "19 #eofconquest#" }; --Sigil of Deflection
		[23] = { itemID = 45254, desc = "=ds=#s16#, #w21#", "19 #eofconquest#" }; --Sigil of the Vengeful Heart
		[24] = { itemID = 45114, desc = "=ds=#s16#", "19 #eofconquest#" }; --Steamcaller's Totem
		[25] = { itemID = 45255, desc = "=ds=#s16#", "19 #eofconquest#" }; --Thunderfall Totem
		[26] = { itemID = 45169, desc = "=ds=#s16#", "19 #eofconquest#" }; --Totem of the Dancing Flame
		[28] = { itemID = 40753, desc = "=ds=#m17#", "1 #eofconquest#" }; --Emblem of Valor
		[29] = { itemID = 45087, desc = "=ds=#e6#", "18 #eofconquest#" }; --Runed Orb
	};
};

-------------------------------
--- Emblem of Triumph Items ---
-------------------------------

AtlasLoot_Data["EmblemofTriumph"] = {
	Name = AL["Emblem of Triumph Rewards"];
	{
		Name = "Page 1";
		[2] = { itemID = 47694, "75 #eoftriumph#" }; --Helm of Clouded Sight
		[3] = { itemID = 47693, "75 #eoftriumph#" }; --Hood of Fiery Aftermath
		[4] = { itemID = 47713, "45 #eoftriumph#" }; --Mantle of Catastrophic Emanation
		[5] = { itemID = 47715, "45 #eoftriumph#" }; --Pauldrons of Revered Mortality
		[7] = { itemID = 47690, "75 #eoftriumph#" }; --Helm of Abundant Growth
		[8] = { itemID = 47689, "75 #eoftriumph#" }; --Hood of Lethal Intent
		[9] = { itemID = 47708, "45 #eoftriumph#" }; --Duskstalker Shoulderpads
		[10] = { itemID = 47712, "45 #eoftriumph#" }; --Shoulders of the Fateful Accord
		[17] = { itemID = 47686, "75 #eoftriumph#" }; --Helm of Inner Warmth
		[18] = { itemID = 47685, "75 #eoftriumph#" }; --Helm of the Brooding Dragon
		[19] = { itemID = 47704, "45 #eoftriumph#" }; --Epaulets of the Devourer
		[20] = { itemID = 47707, "45 #eoftriumph#" }; --Mantle of the Groundbreaker
		[22] = { itemID = 47677, "75 #eoftriumph#" }; --Faceplate of the Honorbound
		[23] = { itemID = 47681, "75 #eoftriumph#" }; --Heaume of the Restless Watch
		[24] = { itemID = 47674, "75 #eoftriumph#" }; --Helm of Thunderous Rampage
		[25] = { itemID = 47702, "45 #eoftriumph#" }; --Pauldrons of the Cavalier
		[26] = { itemID = 47697, "45 #eoftriumph#" }; --Pauldrons of Trembling Rage
		[27] = { itemID = 47698, "45 #eoftriumph#" }; --Shoulderplates of Enduring Order
	};
	{
		Name = "Page 2";
		[2] = { itemID = 47695, "75 #eoftriumph#" }; --Hood of Clouded Sight
		[3] = { itemID = 47692, "75 #eoftriumph#" }; --Hood of Smoldering Aftermath
		[4] = { itemID = 47714, "45 #eoftriumph#" }; --Pauldrons of Catastrophic Emanation
		[5] = { itemID = 47716, "45 #eoftriumph#" }; --Mantle of Revered Mortality
		[7] = { itemID = 47691, "75 #eoftriumph#" }; --Mask of Abundant Growth
		[8] = { itemID = 47688, "75 #eoftriumph#" }; --Mask of Lethal Intent
		[9] = { itemID = 47709, "45 #eoftriumph#" }; --Duskstalker Pauldrons
		[10] = { itemID = 47710, "45 #eoftriumph#" }; --Epaulets of the Fateful Accord
		[17] = { itemID = 47687, "75 #eoftriumph#" }; --Headguard of Inner Warmth
		[18] = { itemID = 47684, "75 #eoftriumph#" }; --Coif of the Brooding Dragon
		[19] = { itemID = 47705, "45 #eoftriumph#" }; --Pauldrons of the Devourer
		[20] = { itemID = 47706, "45 #eoftriumph#" }; --Shoulders of the Groundbreaker
		[22] = { itemID = 47678, "75 #eoftriumph#" }; --Headplate of the Honorbound
		[23] = { itemID = 47682, "75 #eoftriumph#" }; --Helm of the Restless Watch
		[24] = { itemID = 47675, "75 #eoftriumph#" }; --Faceplate of Thunderous Rampage
		[25] = { itemID = 47701, "45 #eoftriumph#" }; --Shoulderplates of the Cavalier
		[26] = { itemID = 47696, "45 #eoftriumph#" }; --Shoulderplates of Trembling Rage
		[27] = { itemID = 47699, "45 #eoftriumph#" }; --Shoulderguards of Enduring Order
	};
	{
		Name = "Page 3";
		[1] = { itemID = 47732, "35 #eoftriumph#" }; --Band of the Invoker
		[2] = { itemID = 47729, "35 #eoftriumph#" }; --Bloodshed Band
		[3] = { itemID = 47731, "35 #eoftriumph#" }; --Clutch of Fortification
		[4] = { itemID = 47730, "35 #eoftriumph#" }; --Dexterous Brightstone Ring
		[5] = { itemID = 47733, "35 #eoftriumph#" }; --Heartmender Circle
		[7] = { itemID = 47735, "50 #eoftriumph#" }; --Glyph of Indomitability
		[8] = { itemID = 47734, "50 #eoftriumph#" }; --Mark of Supremacy
		[9] = { itemID = 48722, "50 #eoftriumph#" }; --Shard of the Crystal Heart
		[10] = { itemID = 48724, "50 #eoftriumph#" }; --Talisman of Resurgence
		[12] = { itemID = 47556, desc = "=ds=#e6#", "15 #eoftriumph#" }; --Crusader Orb
		[16] = { itemID = 47671, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Idol of Flaring Growth
		[17] = { itemID = 47670, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Idol of Lunar Fury
		[18] = { itemID = 47668, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Idol of Mutilation
		[19] = { itemID = 47664, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Libram of Defiance
		[20] = { itemID = 47661, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Libram of Valiance
		[21] = { itemID = 47662, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Libram of Veracity
		[22] = { itemID = 47672, desc = "=ds=#s16#, #w21#", "25 #eoftriumph#" }; --Sigil of Insolence
		[23] = { itemID = 47673, desc = "=ds=#s16#, #w21#", "25 #eoftriumph#" }; --Sigil of Virulence
		[24] = { itemID = 47665, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Totem of Calming Tides
		[25] = { itemID = 47666, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Totem of Electrifying Wind
		[26] = { itemID = 47667, desc = "=ds=#s16#", "25 #eoftriumph#" }; --Totem of Quaking Earth
		[28] = { itemID = 47659, "25 #eoftriumph#" }; --Crimson Star
		[29] = { itemID = 47660, "25 #eoftriumph#" }; --Blades of the Sable Cross
		[30] = { itemID = 47658, "25 #eoftriumph#" }; --Brimstone Igniter
	};
};

-----------------------------
--- Emblem of Frost Items ---
-----------------------------

AtlasLoot_Data["EmblemofFrost"] = {
	Name = AL["Emblem of Frost Rewards"];
	{
		Name = "Page 1";
		[1] = { itemID = 50975, "95 #eoffrost#" }; --Ermine Coronation Robes
		[2] = { itemID = 50974, "95 #eoffrost#" }; --Meteor Chaser's Raiment
		[3] = { itemID = 50984, "60 #eoffrost#" }; --Gloves of Ambivalence
		[4] = { itemID = 50983, "60 #eoffrost#" }; --Gloves of False Gestures
		[5] = { itemID = 50996, "60 #eoffrost#" }; --Belt of Omission
		[6] = { itemID = 50997, "60 #eoffrost#" }; --Circle of Ossus
		[8] = { itemID = 50972, "95 #eoffrost#" }; --Shadow Seeker's Tunic
		[9] = { itemID = 50973, "95 #eoffrost#" }; --Vestments of Spruce and Fir
		[10] = { itemID = 50982, "60 #eoffrost#" }; --Cat Burglar's Grips
		[11] = { itemID = 50981, "60 #eoffrost#" }; --Gloves of the Great Horned Owl
		[12] = { itemID = 50994, "60 #eoffrost#" }; --Belt of Petrified Ivy
		[13] = { itemID = 50995, "60 #eoffrost#" }; --Vengeful Noose
		[16] = { itemID = 50970, "95 #eoffrost#" }; --Longstrider's Vest
		[17] = { itemID = 50971, "95 #eoffrost#" }; --Mail of the Geyser
		[18] = { itemID = 50980, "60 #eoffrost#" }; --Blizzard Keeper's Mitts
		[19] = { itemID = 50979, "60 #eoffrost#" }; --Logsplitters
		[20] = { itemID = 50993, "60 #eoffrost#" }; --Band of the Night Raven
		[21] = { itemID = 50992, "60 #eoffrost#" }; --Waistband of Despair
		[22] = { itemID = 50965, "95 #eoffrost#" }; --Castle Breaker's Battleplate
		[23] = { itemID = 50969, "95 #eoffrost#" }; --Chestplate of Unspoken Truths
		[24] = { itemID = 50968, "95 #eoffrost#" }; --Cataclysmic Chestguard
		[25] = { itemID = 50977, "60 #eoffrost#" }; --Gatecrasher's Gauntlets
		[26] = { itemID = 50976, "60 #eoffrost#" }; --Gauntlets of Overexposure
		[27] = { itemID = 50978, "60 #eoffrost#" }; --Gauntlets of the Kraken
		[28] = { itemID = 50989, "60 #eoffrost#" }; --Lich Killer's Lanyard
		[29] = { itemID = 50987, "60 #eoffrost#" }; --Malevolant Girdle
		[30] = { itemID = 50991, "60 #eoffrost#" }; --Verdigris Chain Belt
	};
	{
		Name = "Page 2";
		[1] = { itemID = 50468, "50 #eoffrost#" }; --Drape of the Violet Tower
		[2] = { itemID = 50467, "50 #eoffrost#" }; --Might of the Ocean Serpent
		[3] = { itemID = 50470, "50 #eoffrost#" }; --Recovered Scarlet Onslaught Cape
		[4] = { itemID = 50466, "50 #eoffrost#" }; --Sentinel's Winter Cloak
		[5] = { itemID = 50469, "50 #eoffrost#" }; --Volde's Cloak of the Night Sky
		[7] = { itemID = 50356, "60 #eoffrost#" }; --Corroded Skeleton Key
		[8] = { itemID = 50355, "60 #eoffrost#" }; --Herkuml War Token
		[9] = { itemID = 50357, "60 #eoffrost#" }; --Maghia's Misguided Quill
		[10] = { itemID = 50358, "60 #eoffrost#" }; --Purified Lunar Dust
		[12] = { itemID = 49908, desc = "=ds=#e6#", "23 #eoffrost#" }; --Primordial Saronite
		[14] = { itemID = 47241, desc = "=ds=#m17#", "1 #eoffrost#" }; --Emblem of Triumph
		[16] = { itemID = 50456, desc = "=ds=#s16#", "30 #eoffrost#" }; --Idol of the Crying Moon
		[17] = { itemID = 50457, desc = "=ds=#s16#", "30 #eoffrost#" }; --Idol of the Lunar Eclipse
		[18] = { itemID = 50454, desc = "=ds=#s16#", "30 #eoffrost#" }; --Idol of the Black Willow
		[19] = { itemID = 50460, desc = "=ds=#s16#", "30 #eoffrost#" }; --Libram of Blinding Light
		[20] = { itemID = 50461, desc = "=ds=#s16#", "30 #eoffrost#" }; --Libram of the Eternal Tower
		[21] = { itemID = 50455, desc = "=ds=#s16#", "30 #eoffrost#" }; --Libram of Three Truths
		[22] = { itemID = 50462, desc = "=ds=#s16#, #w21#", "30 #eoffrost#" }; --Sigil of the Bone Gryphon
		[23] = { itemID = 50459, desc = "=ds=#s16#, #w21#", "30 #eoffrost#" }; --Sigil of the Hanged Man
		[24] = { itemID = 50458, desc = "=ds=#s16#", "30 #eoffrost#" }; --Bizuri's Totem of Shattered Ice
		[25] = { itemID = 50463, desc = "=ds=#s16#", "30 #eoffrost#" }; --Totem of the Avalanche
		[26] = { itemID = 50464, desc = "=ds=#s16#", "30 #eoffrost#" }; --Totem of the Surging Sea
		[28] = { itemID = 50474, "30 #eoffrost#" }; --Shrapnel Star
	};
};
