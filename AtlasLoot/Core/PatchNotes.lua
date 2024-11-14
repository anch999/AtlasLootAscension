
local patchNotes = {
    {"Version 7.4.4", "15th November, 2024"},
    "Rebuilt the TBC PVP rewards module",
    {"Version 7.4.3", "11th November, 2024"},
    "Added mark of triumph vendor to classic collections",
    "Added shared boss loot section to classic raid/dungeon category",
    "Updated classic faction loot",
    "Recipes in Dungeons and Raid loot tables will now show green/blue known icon heighlights",
    "Moved the All Dungeon Loot page to the top of the dungeons section of the dungeon/raid categorys",
    "Bug fixs",
    {"Version 7.4.2", "7th November, 2024"},
    "Updated Karazhan/Gruul's Lair and Magtheridon's Lairs loot tables",
    {"Version 7.4.1", "7th November, 2024"},
    "Added a News/Patch notes frame",
    {"Version 7.4", "6th November, 2024"},
	"Added loot tables for blackrock caverns and karazhan crypts both classic and tbc",
    "Added manastorm frozen reach loot for both classic and tbc",
    "Improved item source tooltips",
    "Moved/Changed some crafting recipes that were in the wrong place or had the wrong id",
    {"Version 7.3.23", "26th September, 2024"},
	"Added option to show source in item tooltips",
    {"Version 7.3.20", "15th September, 2024"},
    "Added Sunmote Vendor",
    "Updated Sunwell Loot table",
    "Sunwell and Sunmote vendor now have popups showing there item exchanges",
}

function AtlasLoot:PatchNotes()
    self:NewsInitialize(self.db.profile, patchNotes)
end