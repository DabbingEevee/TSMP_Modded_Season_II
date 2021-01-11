import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;



<contenttweaker:neutron_sponge>.addTooltip("Fill with a liquid in a casting basin - Step 0");

<contenttweaker:mega_alloy_neutron_sponge_1>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_1>.addTooltip("Mega Alloy - Step 1");

<contenttweaker:mega_alloy_neutron_sponge_2>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_2>.addTooltip("Mega Alloy - Step 2");

<contenttweaker:mega_alloy_neutron_sponge_3>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_3>.addTooltip("Mega Alloy - Step 3");

<contenttweaker:mega_alloy_neutron_sponge_completed>.addTooltip("Mega Alloy - Completed");


mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_1>, <contenttweaker:neutron_sponge>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_2>, <contenttweaker:mega_alloy_neutron_sponge_1>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_3>, <contenttweaker:mega_alloy_neutron_sponge_2>, <liquid:dawnstone>, 1296, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_completed>, <contenttweaker:mega_alloy_neutron_sponge_3>, <liquid:dawnstone>, 1296, true, 200);


JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_1>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_2>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_3>);