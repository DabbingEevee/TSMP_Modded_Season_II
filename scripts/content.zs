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