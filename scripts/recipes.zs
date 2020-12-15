print("---===Initalizing Custom Scripts===---");
print("    -Removing Recipes");






print("    -Adding Recipes");
val base = <minecraft:flint_and_steel>;
val damagedBase = base.withDamage(64);
val flintandstone = damagedBase.withTag({display: {Name: "§rFlint and Stone"}});
recipes.addShapeless(flintandstone, [<minecraft:flint>, <ore:cobblestone>]);

recipes.addShaped(<fhantoncore:framewood>,
 [[<ore:stickWood>, <ore:stickWood>],
  [<ore:stickWood>, <ore:stickWood>]]);

recipes.addShaped(<fhantoncore:poppingcatblock>,
 [[<minecraft:note_block>, <ore:string>],
  [<ore:string>, <minecraft:note_block>]]);

recipes.addShaped(<fhantoncore:framestone>,
 [[<ore:stickStone>, <ore:stickStone>],
  [<ore:stickStone>, <ore:stickStone>]]);

recipes.addShaped(<fhantoncore:frameiron>,
 [[<ore:nuggetIron>, <ore:nuggetIron>],
  [<ore:nuggetIron>, <ore:nuggetIron>]]);





print("    -Editing Recipes");
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>,
 [[<ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <fhantoncore:framewood>]]);
  
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>,
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <fhantoncore:framestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
 

print("    -Registering Unidentified Ores");
mods.orestages.OreStages.addNonDefaultingReplacement("stone_age", <ore:oreCoal>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("stone_age", <ore:oreCopper>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <ore:oreTin>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <ore:oreAluminium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <waveymod:koinosore:*>, <fhantoncore:unidentifiedore>);
 
mods.orestages.OreStages.addNonDefaultingReplacement("bronze_age", <ore:oreIron>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("bronze_age", <waveymod:netherironore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <ore:oreDiamond>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <ore:oreEmerald>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <waveymod:netheremeraldore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <waveymod:netherdiamondore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <waveymod:tromerosore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <ore:oreNetherrite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <ore:oreGold>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <waveymod:nethergoldore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:ambrosium_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:zanite_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:gravitite_ore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:wavicore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:stellarore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:pure_evilore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:netherpureevilore:*>, <fhantoncore:unidentifiedore>);
print("---===Initalization Complete===---");

