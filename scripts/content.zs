#loader contenttweaker

#var bluestone = mods.contenttweaker.VanillaFactory.createBlock("bluestone", #<blockmaterial:rock>);
#bluestone.setBlockHardness(1.0);
#bluestone.setBlockResistance(2.5);
#bluestone.setToolClass("pickaxe");
#bluestone.setToolLevel(1);
#bluestone.setBlockSoundType(<soundtype:stone>);
#bluestone.register();

var pulsatingGem = mods.contenttweaker.VanillaFactory.createItem("pulsating_gem");
pulsatingGem.maxStackSize = 64;
pulsatingGem.register();

var pulsatingBlock = mods.contenttweaker.VanillaFactory.createBlock("pulsating_block", <blockmaterial:iron>);
pulsatingBlock.setBlockHardness(1.0);
pulsatingBlock.setBlockResistance(2.5);
pulsatingBlock.setToolClass("pickaxe");
pulsatingBlock.setToolLevel(3);
pulsatingBlock.setBlockSoundType(<soundtype:metal>);
pulsatingBlock.register();

var fierySingularity = mods.contenttweaker.VanillaFactory.createItem("fiery_singularity");
fierySingularity.maxStackSize = 64;
fierySingularity.register();

var glowingIronSingularity = mods.contenttweaker.VanillaFactory.createItem("glowing_iron_singularity");
glowingIronSingularity.maxStackSize = 64;
glowingIronSingularity.register();

var fluxedSingularity = mods.contenttweaker.VanillaFactory.createItem("fluxed_electrum_singularity");
fluxedSingularity.maxStackSize = 64;
fluxedSingularity.register();

var catalyst = mods.contenttweaker.VanillaFactory.createItem("inactive_infinity_catalyst");
catalyst.maxStackSize = 64;
catalyst.register();

var singularityMatrix = mods.contenttweaker.VanillaFactory.createItem("singularity_matrix");
singularityMatrix.maxStackSize = 64;
singularityMatrix.register();