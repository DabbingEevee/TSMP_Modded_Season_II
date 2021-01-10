import crafttweaker.item.IItemStack;


<ore:oreMegaAlloy>.add(<contenttweaker:mega_alloy_neutron_sponge_completed>);
<ore:ingotMegaAlloy>.add(<contenttweaker:mega_alloy_nugget>);
<ore:nuggetMegaAlloy>.add(<contenttweaker:mega_alloy_ingot>);
<ore:blockMegaAlloy>.add(<contenttweaker:mega_alloy_block>);

var createninexninerecipe = [
        [<contenttweaker:mega_alloy_block>, <contenttweaker:mega_alloy_ingot>],
        [<contenttweaker:mega_alloy_ingot>, <contenttweaker:mega_alloy_nugget>]

    ] as IItemStack[][];

for i, item in createninexninerecipe {

        recipes.addShaped("hmmmm_" + i, item[0],
        [[item[1],item[1],item[1]],
         [item[1],item[1],item[1]],
         [item[1],item[1],item[1]]]);
} 


var createdecompactrecipe = [
        [<contenttweaker:mega_alloy_ingot>, <contenttweaker:mega_alloy_block>],
        [<contenttweaker:mega_alloy_nugget>, <contenttweaker:mega_alloy_ingot>]

    ] as IItemStack[][];

for i, item in createdecompactrecipe {

        recipes.addShapeless("hmmmmmm_" + i, item[0] * 9,[item[1]])
} 

