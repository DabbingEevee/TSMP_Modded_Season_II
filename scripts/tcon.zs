mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 16, <embers:nugget_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);
mods.tconstruct.Alloy.addRecipe(<liquid:dawnstone> * 8, [<liquid:gold> * 4, <liquid:copper> * 4]);

mods.tconstruct.Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom:0>, <liquid:dawnstone>, 144, false, 200);

mods.tconstruct.Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296, false, 200);

mods.tconstruct.Alloy.removeRecipe(<liquid:rosegold>);
mods.tconstruct.Alloy.addRecipe(<liquid:rosegold> * 2, [<liquid:gravitite> * 1, <liquid:gold> * 1]);

