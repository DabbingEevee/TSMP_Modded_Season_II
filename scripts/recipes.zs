print("---===Initalizing Custom Scripts===---");
print("    -Removing Recipes");






print("    -Adding Recipes");
val base = <minecraft:flint_and_steel>;
val damagedBase = base.withDamage(64);
val flintandstone = damagedBase.withTag({display: {Name: "§rFlint and Stone"}});
recipes.addShapeless(flintandstone, [<minecraft:flint>, <ore:cobblestone>]);

mods.aether_legacy.Enchanter.registerEnchantment(<techguns:itemshared:98>, <tconmaterial:ingotradium>, 40);
mods.aether_legacy.Enchanter.registerEnchantment(<mekanism:ingot:1>, <tconmaterial:ingotfusionite>, 40);
mods.aether_legacy.Enchanter.registerEnchantment(<metallurgy:osmium_ingot:*>, <tconmaterial:ingotfusionite>, 40);
mods.aether_legacy.Enchanter.registerEnchantment(<aether_legacy:zanite_gemstone>, <tconmaterial:gemvoidspar>, 40);
mods.aether_legacy.Enchanter.registerEnchantment(<quark:biotite_ore>, <tconmaterial:gemenderal>, 40);

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



print("    -Editing Recipes");
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>,
 [[<ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <fhantoncore:framewood>]]);
  
recipes.remove(<futuremc:netherite_ingot>)
recipes.addShapeless(<futuremc:netherite_ingot>, [<ore:ingotArdite> * 4, <ore:ingotAncientDebris> * 4, <ore:blockGold>])

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>,
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <fhantoncore:framestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
 print("---===Initalization Complete===---");

