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
 [[<minecraft:noteblock>, <ore:string>],
  [<ore:string>, <minecraft:noteblock>]]);

recipes.addShaped(<fhantoncore:framestone>,
 [[<ore:stickStone>, <ore:stickStone>],
  [<ore:stickStone>, <ore:stickStone>]]);

recipes.addShaped(<fhantoncore:frameiron>,
 [[<ore:nuggetIron>, <ore:nuggetIron>],
  [<ore:nuggetIron>, <ore:nuggetIron>]]);

recipes.addShaped(<backpack:stick>,
 [[<ore:cobblestone>],
  [<ore:cobblestone>]);



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
mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <ore:oreZinc>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <ore:oreAluminium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("copper_age", <waveymod:koinosore:*>, <fhantoncore:unidentifiedore>);
 
mods.orestages.OreStages.addNonDefaultingReplacement("bronze_age", <ore:oreIron>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("bronze_age", <waveymod:netherironore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <waveymod:tromerosore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <ore:oreDiamond>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <ore:oreEmerald>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <waveymod:netheremeraldore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <waveymod:netherdiamondore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("iron_age", <ore:oreSilver>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <netherbackport:ancientdebris:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <ore:oreGold>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <waveymod:nethergoldore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("early_magic_age", <netherbackport:nethergoldore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:ambrosium_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:zanite_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("aetheric_age", <aether_legacy:gravitite_ore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:wavicore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <minecraft:quartz_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:stellarore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:pure_evilore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("wavic_age", <waveymod:netherpureevilore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreTar>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreSulfur>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:orePotash>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <metallurgy:phosphorite_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreAlduorite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:orePlatinum>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:ocanite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreIgnatius>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreAstralSilver>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreLemurite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreEximite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreSanguinite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreShadowIron>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreMithril>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreCarmot>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreCeruclase>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <metallurgy:deep_iron_ore:*>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreManganese>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreKalendrite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:orePrometheum>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreAdamantine>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreAtlarus>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreVyroxeres>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreLutetium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreOureclase>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreMeutoite>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreOrichalcum>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreInfuscolium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreMidasium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreRubracium>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <ore:oreAluminum>, <fhantoncore:unidentifiedore>);
mods.orestages.OreStages.addNonDefaultingReplacement("metallic_age", <mysticalagriculture:inferium_ore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("automation_age", <minecraft:redstone_ore:*>, <fhantoncore:unidentifiedore>);

mods.orestages.OreStages.addNonDefaultingReplacement("electrical_age", <ore:oreOsmium>, <fhantoncore:unidentifiedore>);

print("---===Initalization Complete===---");

