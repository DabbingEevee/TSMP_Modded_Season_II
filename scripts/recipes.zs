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
 
print("---===Initalization Complete===---");

