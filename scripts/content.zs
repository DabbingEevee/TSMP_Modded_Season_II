#loader contenttweaker

#var bluestone = mods.contenttweaker.VanillaFactory.createBlock("bluestone", #<blockmaterial:rock>);
#bluestone.setBlockHardness(1.0);
#bluestone.setBlockResistance(2.5);
#bluestone.setToolClass("pickaxe");
#bluestone.setToolLevel(1);
#bluestone.setBlockSoundType(<soundtype:stone>);
#bluestone.register();

var pulsatingGem = mods.contenttweaker.VanillaFactory.createItem("");
pulsatingGem.maxStackSize = 64;
pulsatingGem.register();

var pulsatingBlock = mods.contenttweaker.VanillaFactory.createBlock("pulsating_block", <blockmaterial:iron>);
pulsatingBlock.setBlockHardness(1.0);
pulsatingBlock.setBlockResistance(2.5);
pulsatingBlock.setToolClass("pickaxe");
pulsatingBlock.setToolLevel(3);
pulsatingBlock.setBlockSoundType(<soundtype:metal>);
pulsatingBlock.register();

var fierySingularity = mods.contenttweaker.VanillaFactory.createItem("");
fierySingularity.maxStackSize = 64;
fierySingularity.register();

var glowingIronSingularity = mods.contenttweaker.VanillaFactory.createItem("");
glowingIronSingularity.maxStackSize = 64;
glowingIronSingularity.register();

var fluxedSingularity = mods.contenttweaker.VanillaFactory.createItem("");
fluxedSingularity.maxStackSize = 64;
fluxedSingularity.register();

var catalyst = mods.contenttweaker.VanillaFactory.createItem("");
catalyst.maxStackSize = 64;
catalyst.register();

#var singularityMatrix = mods.contenttweaker.VanillaFactory.createItem("");
#singularityMatrix.maxStackSize = 64;
#singularityMatrix.register();


val createitem = [
        "singularity_matrix",
        "inactive_infinity_catalyst",
        "fluxed_electrum_singularity",
        "glowing_iron_singularity",
        "pulsating_gem",
        "fiery_singularity",

        "wavic_nugget", 
        "awakened_nugget",
        "pure_evil_nugget",
        "awakened_nugget",
        "koinos_nugget",
        "tromero_nugget"
    ] as string[];

val createblockofore = [
        "wavic_block",
        "awakened_block"
        "unstable_block"


    ] as string[];

for item in createitem {

	var item = mods.contenttweaker.VanillaFactory.createItem(item);
        item.maxStackSize = 64;
        item.register();

}

for block in createblockofore {
        var block = mods.contenttweaker.VanillaFactory.createBlock("pulsating_block", <blockmaterial:iron>);
        block.setBlockHardness(1.0);
        block.setBlockResistance(2.5);
        block.setToolClass("pickaxe");
        block.setToolLevel(3);
        block.setBlockSoundType(<soundtype:metal>);
        block.register();

}

#val nuggetArray = ["wavic", "awakened"] as string[];
#val blockArray = ["wavic", "awakened", "unstable"] as string[];


