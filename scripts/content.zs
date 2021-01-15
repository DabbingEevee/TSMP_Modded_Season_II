#loader contenttweaker

#var bluestone = mods.contenttweaker.VanillaFactory.createBlock("bluestone", #<blockmaterial:rock>);
#bluestone.setBlockHardness(1.0);
#bluestone.setBlockResistance(2.5);
#bluestone.setToolClass("pickaxe");
#bluestone.setToolLevel(1);
#bluestone.setBlockSoundType(<soundtype:stone>);
#bluestone.register();

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
	"mega_alloy",
	"dwarf_star_alloy",
	"metallic_red_matter",
	"gilded_netherite",
	"gold_titanium_alloy",
	"intertium",
	"vibranium",
	"adamantium"
    ] as string[];


var createitem = [
        "wavic_nugget", 
        "wavic_dust", 
        "awakened_nugget",
        "awakened_dust",
        "pure_evil_nugget",
        "pure_evil_dust",
        "koinos_nugget",
        "koinos_dust",
        "tromero_nugget",
        "tromero_dust",
        "unstable_dust",
        #"mega_alloy_nugget",
        #"mega_alloy_dust",
        #"mega_alloy_ingot",
        "inactive_infinity_catalyst",
        "fluxed_electrum_singularity",
        "glowing_iron_singularity",
        "pulsating_gem",
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
        "wavic_block",
        "awakened_block",
        "unstable_block",
        "pulsating_block"


    ] as string[];

for item in createfullset {
	createblockofore += (item + "_block")
	createitem += (item + "_nugget")
	createitem += (item + "_ingot")
	createitem += (item + "_dust")
}

var i = 0; 

while i < 10 {
	createsingularity += "singularity_matrix_" + (i+1); 
	i += 1;
} 

for item in createitem {

	var item = VanillaFactory.createItem(item);
        item.maxStackSize = 64;
        #item.creativeTab = gems_metals;
        item.register();

}

for block in createblockofore {
        var block = VanillaFactory.createBlock(block, <blockmaterial:iron>);
        block.setBlockHardness(1.0);
        block.setBlockResistance(2.5);
        block.setToolClass("pickaxe");
        block.setToolLevel(3);
        #block.creativeTab = gems_metals;
        block.setBlockSoundType(<soundtype:metal>);
        block.register();

}

for block in createore {
        var block = VanillaFactory.createBlock(block, <blockmaterial:iron>);
        block.setBlockHardness(1.0);
        block.setBlockResistance(2.5);
        block.setToolClass("pickaxe");
        block.setToolLevel(3);
        #block.creativeTab = ore_sponge;
        block.setBlockSoundType(<soundtype:metal>);
        block.register();

}

#val nuggetArray = ["wavic", "awakened"] as string[];
#val blockArray = ["wavic", "awakened", "unstable"] as string[];


