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
    "Adamantium",
    "FSharpAlloy"
    ] as string[];
    
var createoredict = [
    "nuggetWavic",
    "dustNetherite",
    "nuggetNetherite",
    "dustWavic",
    "nuggetWavicAwakened",
    "nuggetDamast",
    "nuggetDamastGlowing",
    "blockDamast",
    "blockDamastGlowing",
    "dustWavicAwakened",
    "nuggetPureEvil",
    "dustPureEvil",
    "nuggetKoinos",
    "dustKoinos",
    "nuggetTromero",
    "dustTromero",
    "dustUnstable",
    "gemPulsaton",
    "blockWavic",
    "blockAwakened",
    "blockUnstable",
    "blockPulsaton",
    "oreFSharpAlloy",
    "oreMegaAlloy"
    ] as string[];
    

for item in createfullset {
    createoredict += ("block" + item);
    createoredict += ("nugget" + item);
    createoredict += ("ingot" + item);
    createoredict += ("dust" + item);
}

for ore in createoredict {

	oreDict.get(ore).add(itemUtils.getItem("contenttweaker:" + ore.toLowerCase));

}

oreDict.get("stickWood").add(<harvestcraft:fishsticksitem>);

oreDict.get("plateTritanium").add(<matteroverdrive:tritanium_plate>);

oreDict.get("ingotQuicksilver").add(<thaumcraft:quicksilver>);
oreDict.get("quicksilver").add(<metallurgy:quicksilver_ingot>);

oreDict.get("ingotSteeleaf").add(<twilightforest:steeleaf_ingot>);
oreDict.get("dustSteeleaf").add(<tconmaterial:duststeeleaf>);

oreDict.get("dustIronwood").add(<tconmaterial:dustironwood>);
oreDict.get("ingotIronwood").add(<twilightforest:ironwood_ingot>);

oreDict.get("ingotModularium").add(<modularmachinery:itemmodularium>);
oreDict.get("blockModularium").add(<modularmachinery:blockcasing:0>);

oreDict.get("oreGold").add(<waveymod:nethergoldore>);
oreDict.get("oreDiamond").add(<waveymod:netherdiamondore>);

oreDict.get("ingotDamast").add(<mo_swords:damastbarren>);
oreDict.get("ingotDamastGlowing").add(<mo_swords:damastbarrenglowing>);
oreDict.get("oreWavic").add(<waveymod:wavicore>);
oreDict.get("oreEmerald").add(<waveymod:wavicemeraldore>);
oreDict.get("oreTromero").add(<waveymod:tromerosore>);
oreDict.get("orePureEvil").add(<waveymod:netherpureevilore>);
oreDict.get("oreDiamond").add(<waveymod:wavicdiamondore>);
oreDict.get("oreIron").add(<waveymod:netherironore>);
oreDict.get("oreIron").add(<waveymod:wavicironore>);
oreDict.get("oreWavicStellar").add(<waveymod:stellarore>);
oreDict.get("orePureEvil").add(<waveymod:pure_evilore>);
oreDict.get("oreKoinos").add(<waveymod:koinosore>);

oreDict.get("blockKoinos").add(<waveymod:koinosoreblock>);
oreDict.get("blockWavicAwakened").add(<contenttweaker:blockawakened>);
oreDict.get("blockWavic").add(<contenttweaker:blockwavic>);
oreDict.get("blockPureEvil").add(<waveymod:pure_eviloreblock>);
oreDict.get("blockTromero").add(<waveymod:tromerosoreblock>);

oreDict.get("oreWavicAwakened").add(<waveymod:awakenedendstone>);
oreDict.get("nuggetNetherite").add(<contenttweaker:nuggetnetherite>);
oreDict.get("dustNetherite").add(<contenttweaker:dustnetherite>);
oreDict.get("ingotNetherite").add(<netherbackport:netheriteingot>);
oreDict.get("ingotNetherite").add(<netherbackport:netheriteingot>);
oreDict.get("gemWavicStellar").add(<waveymod:stellarshard>);
oreDict.get("ingotKoinos").add(<waveymod:koinosingot>);
oreDict.get("ingotTromero").add(<waveymod:tromerosingot>);
oreDict.get("ingotWavicAwakened").add(<waveymod:awakenedingot>);
oreDict.get("ingotWavic").add(<waveymod:wavyingot>);
oreDict.get("ingotPureEvil").add(<waveymod:pure_evilingot>);

oreDict.get("oreNetheriteScrap").add(<netherbackport:ancientdebris>);
oreDict.get("dustNetheriteScrap").add(<contenttweaker:dirty_netherite_scrap>);
oreDict.get("ingotNetheriteScrap").add(<netherbackport:netheritescrap>);

mods.mekanism.enrichment.addRecipe(<netherbackport:ancientdebris>, <contenttweaker:dirty_netherite_scrap> * 3);

<aether_legacy:obsidian_helmet>.displayName = "Skyforged Obsidian Helmet";
<aether_legacy:obsidian_chestplate>.displayName = "Skyforged Obsidian Chestplate";
<aether_legacy:obsidian_leggings>.displayName = "Skyforged Obsidian Leggings";
<aether_legacy:obsidian_boots>.displayName = "Skyforged Obsidian Boots";


<modularmachinery:itemmodularium>.displayName = "Modularium Ingot";
<modularmachinery:blockcasing:0>.displayName = "Block of Modularium";

<mo_swords:dtklinge>.displayName = "Dragonkiller Blade";

<waveymod:donutlmfao>.displayName = "SpaceTime Donut";

<contenttweaker:neutron_sponge>.addTooltip("Fill with a liquid in a casting basin - Step 0");


<contenttweaker:mega_alloy_neutron_sponge_1>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_1>.addTooltip("Mega Alloy - Step 1");

<contenttweaker:mega_alloy_neutron_sponge_2>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_2>.addTooltip("Mega Alloy - Step 2");

<contenttweaker:mega_alloy_neutron_sponge_3>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:mega_alloy_neutron_sponge_3>.addTooltip("Mega Alloy - Step 3");

<contenttweaker:oremegaalloy>.addTooltip("Mega Alloy - Completed");

<contenttweaker:fsharp_alloy_neutron_sponge_1>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:fsharp_alloy_neutron_sponge_1>.addTooltip("FSharp Alloy - Step 1");

<contenttweaker:fsharp_alloy_neutron_sponge_2>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:fsharp_alloy_neutron_sponge_2>.addTooltip("FSharp Alloy - Step 2");

<contenttweaker:fsharp_alloy_neutron_sponge_3>.displayName = "Partially Filled Neutron Sponge";
<contenttweaker:fsharp_alloy_neutron_sponge_3>.addTooltip("FSharp Alloy - Step 3");

<contenttweaker:orefsharpalloy>.addTooltip("FSharp Alloy - Completed");

<quark:enderdragon_scale>.displayName = "Sharp Dragon Scale";

mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_1>, <contenttweaker:neutron_sponge>, <liquid:steel>, 41472, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_2>, <contenttweaker:mega_alloy_neutron_sponge_1>, <liquid:bronze>, 82944, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:mega_alloy_neutron_sponge_3>, <contenttweaker:mega_alloy_neutron_sponge_2>, <liquid:manyullyn>, 10368, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:oremegaalloy>, <contenttweaker:mega_alloy_neutron_sponge_3>, <liquid:electrum>, 5184, true, 200);

mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:fsharp_alloy_neutron_sponge_1>, <contenttweaker:neutron_sponge>, <liquid:dragonsteel_ice>, 10368, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:fsharp_alloy_neutron_sponge_2>, <contenttweaker:fsharp_alloy_neutron_sponge_1>, <liquid:enderium>, 82944, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:fsharp_alloy_neutron_sponge_3>, <contenttweaker:fsharp_alloy_neutron_sponge_2>, <liquid:cyanite>, 10368, true, 200);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:orefsharpalloy>, <contenttweaker:fsharp_alloy_neutron_sponge_3>, <liquid:blueslime>, 10368, true, 200);


JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_1>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_2>);
JEI.removeAndHide(<contenttweaker:mega_alloy_neutron_sponge_3>);

JEI.removeAndHide(<contenttweaker:fsharp_alloy_neutron_sponge_1>);
JEI.removeAndHide(<contenttweaker:fsharp_alloy_neutron_sponge_2>);
JEI.removeAndHide(<contenttweaker:fsharp_alloy_neutron_sponge_3>);

furnace.addRecipe(<contenttweaker:ingotmegaalloy>, <contenttweaker:oremegaalloy>);
furnace.addRecipe(<contenttweaker:ingotmegaalloy>, <contenttweaker:dustmegaalloy>);
furnace.addRecipe(<contenttweaker:ingotfsharpalloy>, <contenttweaker:orefsharpalloy>);
furnace.addRecipe(<contenttweaker:ingotfsharpalloy>, <contenttweaker:dustfsharpalloy>);
furnace.addRecipe(<extrautils2:unstableingots:2>, <contenttweaker:dustunstable>);
furnace.addRecipe(<waveymod:awakenedingot>, <contenttweaker:dustwavicawakened>);
furnace.addRecipe(<waveymod:koinosingot>, <contenttweaker:dustkoinos>);
furnace.addRecipe(<waveymod:pure_evilingot>, <contenttweaker:dustpureevil>);
furnace.addRecipe(<waveymod:tromerosingot>, <contenttweaker:dusttromero>);
furnace.addRecipe(<waveymod:wavyingot>, <contenttweaker:dustwavic>);
furnace.addRecipe(<contenttweaker:ingotgoldtitaniumalloy>, <contenttweaker:dustgoldtitaniumalloy>);
furnace.addRecipe(<contenttweaker:ingotvibranium>, <contenttweaker:dustvibranium>);
furnace.addRecipe(<contenttweaker:ingotmetallicredmatter>, <contenttweaker:dustmetallicredmatter>);
furnace.addRecipe(<contenttweaker:ingotgildednetherite>, <contenttweaker:dustgildednetherite>);
furnace.addRecipe(<contenttweaker:ingoturu>, <contenttweaker:dusturu>);
furnace.addRecipe(<contenttweaker:ingotadamantium>, <contenttweaker:dustadamantium>);
furnace.addRecipe(<contenttweaker:ingotintertium>, <contenttweaker:dustintertium>);
furnace.addRecipe(<netherbackport:netheriteingot>, <contenttweaker:dustnetherite>);
furnace.addRecipe(<contenttweaker:ingotdwarfstaralloy>, <contenttweaker:dustdwarfstaralloy>);




var createninexninerecipe = [

        [<contenttweaker:blockdamast>, <mo_swords:damastbarren>],
        [<mo_swords:damastbarren>, <contenttweaker:nuggetdamast>],

        [<contenttweaker:blockdamastglowing>, <mo_swords:damastbarrenglowing>],
        [<mo_swords:damastbarrenglowing>, <contenttweaker:nuggetdamastglowing>],

        [<waveymod:koinosoreblock>, <waveymod:koinosingot>],
        [<waveymod:koinosingot>, <contenttweaker:nuggetkoinos>],

        [<contenttweaker:blockawakened>, <waveymod:awakenedingot>],
        [<waveymod:awakenedingot>, <contenttweaker:nuggetwavicawakened>],

        [<contenttweaker:blockwavic>, <waveymod:wavyingot>],
        [<waveymod:wavyingot>, <contenttweaker:nuggetwavic>],

        [<waveymod:pure_eviloreblock>, <waveymod:pure_evilingot>],
        [<waveymod:pure_evilingot>, <contenttweaker:nuggetpureevil>],

        [<waveymod:tromerosoreblock>, <waveymod:tromerosingot>],
        [<waveymod:tromerosingot>, <contenttweaker:nuggettromero>],

        [<contenttweaker:blockuru>, <contenttweaker:ingoturu>],
        [<contenttweaker:ingoturu>, <contenttweaker:nuggeturu>],

        [<contenttweaker:blockdwarfstaralloy>, <contenttweaker:ingotdwarfstaralloy>],
        [<contenttweaker:ingotdwarfstaralloy>, <contenttweaker:nuggetdwarfstaralloy>],
    
        [<contenttweaker:blockmetallicredmatter>, <contenttweaker:ingotmetallicredmatter>],
        [<contenttweaker:ingotmetallicredmatter>, <contenttweaker:nuggetmetallicredmatter>],

        [<contenttweaker:blockgildednetherite>, <contenttweaker:ingotgildednetherite>],
        [<contenttweaker:ingotgildednetherite>, <contenttweaker:nuggetgildednetherite>],

        [<contenttweaker:blockgoldtitaniumalloy>, <contenttweaker:ingotgoldtitaniumalloy>],
        [<contenttweaker:ingotgoldtitaniumalloy>, <contenttweaker:nuggetgoldtitaniumalloy>],

        [<contenttweaker:blockintertium>, <contenttweaker:ingotintertium>],
        [<contenttweaker:ingotintertium>, <contenttweaker:nuggetintertium>],

        [<contenttweaker:blockvibranium>, <contenttweaker:ingotvibranium>],
        [<contenttweaker:ingotvibranium>, <contenttweaker:nuggetvibranium>],

        [<contenttweaker:blockadamantium>, <contenttweaker:ingotadamantium>],
        [<contenttweaker:ingotadamantium>, <contenttweaker:nuggetadamantium>],

        [<contenttweaker:blockmegaalloy>, <contenttweaker:ingotmegaalloy>],
        [<contenttweaker:ingotmegaalloy>, <contenttweaker:nuggetmegaalloy>],
        
        [<contenttweaker:blockfsharpalloy>, <contenttweaker:ingotfsharpalloy>],
        [<contenttweaker:ingotfsharpalloy>, <contenttweaker:nuggetfsharpalloy>]

    ] as IItemStack[][];

//var createdecompactrecipe = [
//        [<contenttweaker:ingotmegaalloy>, <contenttweaker:blockmegaalloy>],
//        [<contenttweaker:nuggetmegaalloy>, <contenttweaker:ingotmegaalloy>],
//        [<contenttweaker:ingotfsharpalloy>, <contenttweaker:blockfsharpalloy>],
//        [<contenttweaker:nuggetfsharpalloy>, <contenttweaker:ingotfsharpalloy>]
//    ] as IItemStack[][];







for i, item in createninexninerecipe {

        recipes.addShaped("hmmmm_" + i, item[0],
        [[item[1],item[1],item[1]],
         [item[1],item[1],item[1]],
         [item[1],item[1],item[1]]]);
} 

for i, item in createninexninerecipe {

        recipes.addShapeless("hmmmmmm_" + i, item[1] * 9,[item[0]]);
}


//for i, item in createdecompactrecipe {
//
//}
