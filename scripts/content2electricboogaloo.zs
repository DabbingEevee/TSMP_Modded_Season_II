import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;

var createfullset = [
    "Uru",
    "MegaAlloy",
    "DwarfStarAlloy",
    "MetallicRedMatter",
    "GildedNetherite",
    "GoldTitaniumAlloy",
    "Intertium",
    "Vibranium",
    "Adamantium"
    ] as string[];
    
var createoredict = [
    "oreMegaAlloy",
    "blockWavic",
    "blockAwakened",
    "blockUnstable",
    "blockPulsaton"
    
    ] as string[];
    

for item in createfullset {
    createoredict += ("block" + item);
    createoredict += ("nugget" + item);
    createoredict += ("ingot" + item);
    createoredict += ("dust" + item);
}

for ore in createfullset {

	oreDict.get(ore).add(itemUtils.getItem("contenttweaker:" + ore.toLowerCase));

}

<contenttweaker:neutron_sponge>.addTooltip("Fill with a liquid in a casting basin - Step 0");

<contenttweaker:mega_alloy_neutron_sponge_1>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_1>.addTooltip("Mega Alloy - Step 1");

<contenttweaker:mega_alloy_neutron_sponge_2>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_2>.addTooltip("Mega Alloy - Step 2");

<contenttweaker:mega_alloy_neutron_sponge_3>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_3>.addTooltip("Mega Alloy - Step 3");

<contenttweaker:oremegaalloy>.addTooltip("Mega Alloy - Completed");


mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_1>, <contenttweaker:neutron_sponge>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_2>, <contenttweaker:mega_alloy_neutron_sponge_1>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_3>, <contenttweaker:mega_alloy_neutron_sponge_2>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:oremegaalloy>, <contenttweaker:mega_alloy_neutron_sponge_3>, <liquid:dawnstone>, 1296, true, 200);


JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_1>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_2>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_3>);


furnace.addRecipe(<contenttweaker:ingotmegaalloy>, <contenttweaker:oremegaalloy>);
furnace.addRecipe(<contenttweaker:ingotmegaalloy>, <contenttweaker:dustmegaalloy>);


var createninexninerecipe = [
        [<contenttweaker:blockmegaalloy>, <contenttweaker:ingotmegaalloy>],
        [<contenttweaker:ingotmegaalloy>, <contenttweaker:nuggetmegaalloy>]

    ] as IItemStack[][];

var createdecompactrecipe = [
        [<contenttweaker:ingotmegaalloy>, <contenttweaker:blockmegaalloy>],
        [<contenttweaker:nuggetmegaalloy>, <contenttweaker:ingotmegaalloy>]

    ] as IItemStack[][];







for i, item in createninexninerecipe {

        recipes.addShaped("hmmmm_" + i, item[0],
        [[item[1],item[1],item[1]],
         [item[1],item[1],item[1]],
         [item[1],item[1],item[1]]]);
} 




for i, item in createdecompactrecipe {

        recipes.addShapeless("hmmmmmm_" + i, item[0] * 9,[item[1]]);
} 


