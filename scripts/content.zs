#loader contenttweaker

#var bluestone = mods.contenttweaker.VanillaFactory.createBlock("bluestone", #<blockmaterial:rock>);
#bluestone.setBlockHardness(1.0);
#bluestone.setBlockResistance(2.5);
#bluestone.setToolClass("pickaxe");
#bluestone.setToolLevel(1);
#bluestone.setBlockSoundType(<soundtype:stone>);
#bluestone.register();

val createitem = [
#        "singularity_matrix",
        "inactive_infinity_catalyst",
        "fluxed_electrum_singularity",
        "glowing_iron_singularity",
        "pulsating_gem",
        "fiery_singularity",

        "wavic_nugget", 
        "awakened_nugget",
        "pure_evil_nugget",
        "koinos_nugget",
        "tromero_nugget"
    ] as string[];

val createblockofore = [
        "wavic_block",
        "awakened_block",
        "unstable_block",
        "pulsating_block"


    ] as string[];

var i = 0; 

while i < 10 {
	createitem += "singularity_matrix_" + (i+1); 
	i += 1;
} 



for item in createitem {

	var item = mods.contenttweaker.VanillaFactory.createItem(item);
        item.maxStackSize = 64;
        item.register();

}

for block in createblockofore {
        var block = mods.contenttweaker.VanillaFactory.createBlock(block, <blockmaterial:iron>);
        block.setBlockHardness(1.0);
        block.setBlockResistance(2.5);
        block.setToolClass("pickaxe");
        block.setToolLevel(3);
        block.setBlockSoundType(<soundtype:metal>);
        block.register();

}

#val nuggetArray = ["wavic", "awakened"] as string[];
#val blockArray = ["wavic", "awakened", "unstable"] as string[];


