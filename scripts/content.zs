#loader contenttweaker

#var bluestone = mods.contenttweaker.VanillaFactory.createBlock("bluestone", #<blockmaterial:rock>);
#bluestone.setBlockHardness(1.0);
#bluestone.setBlockResistance(2.5);
#bluestone.setToolClass("pickaxe");
#bluestone.setToolLevel(1);
#bluestone.setBlockSoundType(<soundtype:stone>);
#bluestone.register();

import crafttweaker.oredict.IOreDict;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.tconstruct.Material;


#var gems_metals = VanillaFactory.createCreativeTab("gems_metals", <minecraft:diamond>);
#gems_metals.register();

#var ore_sponge = VanillaFactory.createCreativeTab("ore_sponge", <minecraft:iron_ore>);
#ore_sponge.register();

#var singularities = VanillaFactory.createCreativeTab("singularities", <minecraft:tnt>);
#singularities.register();

var oredict = [] as string[];

var createfullset = [
	"Uru",
	"MegaAlloy",
	"DwarfStarAlloy",
	"MetallicRedMatter",
	"GildedNetherite",
	"GoldTitaniumAlloy",
	"Intertium",
	"Vibranium",
	"Adamantium"
    ] as string[];


var createitem = [
        "nuggetWavic", 
        "dustWavic", 
        "nuggetWavicAwakened",
        "dustWavicAwakened",
        "nuggetPureEvil",
        "dustPureEvil",
        "nuggetKoinos",
        "dustKoinos",
        "nuggetTromero",
        "dustTromero",
        "dustUnstable",
        #"mega_alloy_nugget",
        #"mega_alloy_dust",
        #"mega_alloy_ingot",
        "inactive_infinity_catalyst",
        "fluxed_electrum_singularity",
        "glowing_iron_singularity",
        "gemPulsaton",
        "fiery_singularity"
    ] as string[];

var createore = [
        "neutron_sponge",
        "mega_alloy_neutron_sponge_1",
        "mega_alloy_neutron_sponge_2",
        "mega_alloy_neutron_sponge_3",
        "oreMegaAlloy",



    ] as string[];

var createblockofore = [
        #"mega_alloy_block",
        "blockWavic",
        "blockAwakened",
        "blockUnstable",
        "blockPulsaton"


    ] as string[];

for item in createfullset {
	createblockofore += ("block" + item);
	createitem += ("nugget" + item);
	createitem += ("ingot" + item);
	createitem += ("dust" + item);
}

var i = 0; 

while i < 10 {
	createitem += "singularity_matrix_" + (i+1); 
	i += 1;
} 

for item in createitem {

	var item_a = VanillaFactory.createItem(item.toLowerCase());
        item_a.maxStackSize = 64;
        #item.creativeTab = gems_metals;
        item_a.register();
	if (item.startsWith("ingot") || item.startsWith("nugget") || item.startsWith("dust")) {
		oredict += item;
	}

}

for block in createblockofore {
        var block_a = VanillaFactory.createBlock(block.toLowerCase(), <blockmaterial:iron>);
        block_a.setBlockHardness(1.0);
        block_a.setBlockResistance(2.5);
        block_a.setToolClass("pickaxe");
        block_a.setToolLevel(3);
        #block.creativeTab = gems_metals;
        block_a.setBlockSoundType(<soundtype:metal>);
        block_a.register();
	if (block.startsWith("block")) {
		oredict += block;
	}

}

for block in createore {
        var block_a = VanillaFactory.createBlock(block.toLowerCase(), <blockmaterial:iron>);
        block_a.setBlockHardness(1.0);
        block_a.setBlockResistance(2.5);
        block_a.setToolClass("pickaxe");
        block_a.setToolLevel(3);
        #block.creativeTab = ore_sponge;
        block_a.setBlockSoundType(<soundtype:metal>);
        block_a.register();
	if (block.startsWith("ore")) {
		oredict += block;
	}

}

#val nuggetArray = ["wavic", "awakened"] as string[];
#val blockArray = ["wavic", "awakened", "unstable"] as string[];

static oredictglobal = oredict as string[];

