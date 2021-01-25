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



#var gems_metals = VanillaFactory.createCreativeTab("gems_metals", <minecraft:diamond>);
#gems_metals.register();

#var ore_sponge = VanillaFactory.createCreativeTab("ore_sponge", <minecraft:iron_ore>);
#ore_sponge.register();

#var singularities = VanillaFactory.createCreativeTab("singularities", <minecraft:tnt>);
#singularities.register();

var createfullset = [
	"uru",
	"megaAlloy",
	"dwarfStarAlloy",
	"metallicRedMatter",
	"gildedNetherite",
	"goldTitaniumAlloy",
	"intertium",
	"vibranium",
	"adamantium"
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
        "mega_alloy_neutron_sponge_completed",



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
	createitem += ("nugget" + capitalize(item));
	createitem += ("ingot" + capitalize(item));
	createitem += ("dust" + capitalize(item));
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
		oreDict.get(item).add(itemUtils.getItem("contenttweaker:" + item.toLowerCase))
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

}

#val nuggetArray = ["wavic", "awakened"] as string[];
#val blockArray = ["wavic", "awakened", "unstable"] as string[];

function add(a as int,b as int) as int{
	//returns the sum of a and b
	return a+b;
}

function capitalize(a as string) as string{
	val str1 = a.substring(0, 1);
	val str2 = a.substring(1, name.length());
	str1 = str1.toUpperCase();
	return string1 + string2;
}