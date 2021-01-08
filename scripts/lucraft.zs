
"lucraftcore:dust_dwarf_star_alloy",
"lucraftcore:dust_gold_titanium_alloy",
"lucraftcore:dust_intertium",
"lucraftcore:dust_adamantium",
"lucraftcore:dust_uru",
"lucraftcore:ore_uru",
"",


val rmcook = [

        <lucraftcore:ingot_vibranium>,
        <lucraftcore:ingot_dwarf_star_alloy>,
        <lucraftcore:ingot_gold_titanium_alloy>,
        <lucraftcore:ingot_intertium>,
        <lucraftcore:ingot_uru>,
        <lucraftcore:ingot_adamantium>

    ] as string[];


for item in rmcook {
        furnace.remove(item);
}

furnace.addRecipe(<lucraftcore:dust_vibranium>, <lucraftcore:ingot_vibranium>);
furnace.addRecipe(<lucraftcore:ore_vibranium>, <lucraftcore:ingot_vibranium>);

furnace.addRecipe(<lucraftcore:ore_dwarf_star_alloy>, <lucraftcore:ingot_dwarf_star_alloy>);
furnace.addRecipe(<lucraftcore:dust_dwarf_star_alloy>, <lucraftcore:ingot_dwarf_star_alloy>);

furnace.addRecipe(<lucraftcore:dust_gold_titanium_alloy>, <lucraftcore:ingot_gold_titanium_alloy>);

furnace.addRecipe(<lucraftcore:dust_intertium>, <lucraftcore:ingot_intertium>);

furnace.addRecipe(<lucraftcore:ore_uru>, <lucraftcore:ingot_uru>);
furnace.addRecipe(<lucraftcore:dust_uru>, <lucraftcore:ingot_uru>);

furnace.addRecipe(<lucraftcore:dust_adamantium>, <lucraftcore:ingot_adamantium>);




