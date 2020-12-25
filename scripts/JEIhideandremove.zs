import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val removeArray = [<waveymod:deebugtestweaponshootawakenswordbolt>, <baubles:ring>, <waveymod:testsprite>, <waveymod:ingotcast>, <metallurgy:copper_chestplate>, <metallurgy:copper_leggings>, <metallurgy:copper_boots>, <embers:shovel_copper>, <metallurgy:copper_axe>, <metallurgy:copper_sword>, <metallurgy:copper_hoe>, <metallurgy:copper_pickaxe>, <metallurgy:copper_shovel>, <embers:axe_copper>, <embers:sword_copper>, <embers:pickaxe_copper>, <embers:hoe_copper>, <termat:copper_axe>, <metallurgy:copper_helmet>, <mysticalworld:copper_shovel>, <mysticalworld:copper_axe>, <mysticalworld:copper_pickaxe>, <mysticalworld:copper_sword>, <termat:copper_shortsword>, <thermalfoundation:tool.hoe_tin>, <thermalfoundation:tool.sword_tin>, <thermalfoundation:tool.axe_tin>, <thermalfoundation:tool.pickaxe_tin>, <thermalfoundation:tool.shovel_tin>, <mekanismtools:bronzehelmet>, <mekanismtools:bronzechestplate>, <mekanismtools:bronzeleggings>, <mekanismtools:bronzeboots>, <metallurgy:bronze_axe>, <metallurgy:bronze_hoe>, <metallurgy:bronze_pickaxe>, <metallurgy:bronze_shovel>, <mekanismtools:bronzeshovel>, <mekanismtools:bronzehoe>, <mekanismtools:bronzeshovel>, <mekanismtools:bronzesword>, <metallurgy:bronze_sword>, <ic2:bronze_shovel>, <ic2:bronze_sword>, <mekanismtools:bronzepickaxe>, <mekanismtools:bronzeaxe>, <embers:hoe_bronze>, <ic2:bronze_axe>, <ic2:bronze_hoe>, <ic2:bronze_pickaxe>, <embers:pickaxe_bronze>, <embers:axe_bronze>, <embers:shovel_bronze>, <embers:sword_bronze>, <armorplus:blaze_trophy>, <lucraftcore:tri_polymer_cyan>, <armorplus:demonic_dragon_trophy>, <armorplus:dev_tool>, <armorplus:coal_sword_display>, <armorplus:emerald_sword_display>, <armorplus:ender_dragon_sword_display>, <armorplus:guardian_sword_display>, <armorplus:infused_lava_sword_display>, <armorplus:lapis_sword_display>, <armorplus:obsidian_sword_display>, <armorplus:redstone_sword_display>, <armorplus:super_star_sword_display>, <armorplus:elder_guardian_trophy>, <libvulpes:elitemotor>, <armorplus:empty_sword_display>, <armorplus:ender_dragon_trophy>, <armorplus:enderman_trophy>, <armorplus:endermite_trophy>, <reccomplex:inventory_generation_tag>, <reccomplex:inventory_generation_single_tag>, <libvulpes:advstructuremachine>, <libvulpes:advancedmotor>, <lucraftcore:instruction>, <galaxyspace:assembly_machine>, <armorplus:bat_trophy>, <lucraftcore:tri_polymer_black>, <armorplus:creeper_trophy>, <libvulpes:enhancedmotor>, <armorplus:evoker_trophy>, <reccomplex:block_selector_floating>, <libvulpes:hatch:2>, <libvulpes:hatch:3>, <armorplus:dawn>, <armorplus:dusk>, <armorplus:midnight>, <armorplus:noon>, <armorplus:ghast_trophy>, <lucraftcore:tri_polymer_gray>, <lucraftcore:tri_polymer_green>, <armorplus:guardian_overlord_trophy>, <armorplus:guardian_trophy>, <libvulpes:holoprojector>, <armorplus:horse_trophy>, <armorplus:husk_trophy>, <libvulpes:ic2plug>, <reccomplex:block_selector>, <lucraftcore:tri_polymer_blue>, <lucraftcore:tri_polymer_brown>, <armorplus:cave_spider_trophy>, <armorplus:chicken_trophy>, <lucraftcore:construction_table>, <armorplus:cow_trophy>, <libvulpes:creativepowerbattery>, <lucraftcore:infinity_gauntlet>, <mo_swords:knife>, <avaritia:singularity:7>, <lucraftcore:tri_polymer_light_blue>, <lucraftcore:tri_polymer_lime>, <libvulpes:linker>, <libvulpes:structuremachine>, <lucraftcore:tri_polymer_magenta>, <armorplus:magma_cube_trophy>, <armorplus:map>, <armorplus:map_of_arena>, <armorplus:map_device>, <armorplus:map_of_overworld>, <armorplus:map_of_sacrifice>, <libvulpes:battery>, <armorplus:map_of_the_elder>, <armorplus:map_of_the_end>, <armorplus:map_of_the_nether>, <armorplus:map_of_the_realm>, <lucraftcore:infinity_generator>, <lucraftcore:injection>, <libvulpes:hatch>, <reccomplex:inspector>, <avaritia:singularity>, <libvulpes:battery:1>, <galacticraftcore:rocket_workbench>, <armorplus:ocelot_trophy>, <lucraftcore:tri_polymer_orange>, <libvulpes:hatch:1>, <galaxyspace:oxygen_storage_module_1>, <galacticraftcore:machine2:8>, <armorplus:parrot_trophy>, <armorplus:pig_trophy>, <lucraftcore:tri_polymer_pink>, <armorplus:polar_bear_trophy>, <libvulpes:forgepowerinput>, <libvulpes:forgepoweroutput>, <lucraftcore:tri_polymer_purple>, <armorplus:rabbit_trophy>, <lucraftcore:tri_polymer_red>, <galaxyspace:rocket_assembler>, <armorplus:sheep_trophy>, <armorplus:shulker_trophy>, <lucraftcore:tri_polymer_silver>, <armorplus:map_of_the_shaper>, <galaxyspace:mars_rover>, <extraplanets:mars_rover:1>, <extraplanets:mars_rover:2>, <metallurgy:wiki>, <mowziesmobs:mob_remover>, <armorplus:trophy>, <libvulpes:motor>, <reccomplex:generic_solid:13>, <reccomplex:generic_solid:14>, <reccomplex:generic_solid:15>, <reccomplex:generic_solid:2>, <reccomplex:generic_solid:3>, <reccomplex:generic_solid:4>, <reccomplex:generic_solid:5>, <reccomplex:generic_solid:7>, <reccomplex:generic_solid:9>, <reccomplex:generic_space>, <reccomplex:generic_space:1>, <reccomplex:generic_space:10>, <reccomplex:generic_space:11>, <reccomplex:generic_space:12>, <reccomplex:generic_space:13>, <reccomplex:generic_space:14>, <reccomplex:generic_space:15>, <reccomplex:generic_space:2>, <armorplus:silverfish_trophy>, <armorplus:skeletal_king_trophy>, <armorplus:skeleton_trophy>, <armorplus:slime_trophy>, <reccomplex:generic_solid>, <reccomplex:generic_solid:12>, <reccomplex:generic_solid:1>, <reccomplex:generic_solid:10>, <reccomplex:generic_solid:11>, <galaxyspace:rocket_tier_6>, <galaxyspace:rocket_tier_6:1>, <galaxyspace:rocket_tier_6:2>, <galaxyspace:rocket_tier_6:3>, <galaxyspace:rocket_tier_6:4>, <extraplanets:item_tier6_rocket:1>, <extraplanets:item_tier6_rocket:2>, <extraplanets:item_tier7_rocket:1>, <extraplanets:item_tier7_rocket:2>, <extraplanets:item_tier8_rocket:1>, <extraplanets:item_tier8_rocket:2>, <extraplanets:item_tier9_rocket:1>, <extraplanets:item_tier9_rocket:2>, <extraplanets:venus_rover:1>, <extraplanets:venus_rover:2>, <armorplus:vex_trophy>, <armorplus:vindicator_trophy>, <lucraftcore:tri_polymer_white>, <galacticraftcore:buggy:2>, <galaxyspace:rocket_tier_5>, <galaxyspace:rocket_tier_5:1>, <galaxyspace:rocket_tier_5:2>, <galaxyspace:rocket_tier_5:3>, <galaxyspace:rocket_tier_5:4>, <extraplanets:item_tier5_rocket:1>, <extraplanets:item_tier5_rocket:2>, <galaxyspace:rocket_tier_6>, <armorplus:zombie_villager_trophy>, <moreplanets:creative_space_kit>, <moreplanets:dark_energy_receiver>, <galacticraftcore:buggy:1>, <armorplus:witch_trophy>, <armorplus:wither_boss_trophy>, <armorplus:wither_skeleton_trophy>, <armorplus:wolf_trophy>, <lucraftcore:tri_polymer_yellow>, <armorplus:zombie_pigman_trophy>, <armorplus:zombie_trophy>, <termat:cobalt_helmet>, <termat:cobalt_axe>, <zollerngalaxy:cobalt_shovel>, <armorplus:manyullyn_boots>, <armorplus:manyullyn_leggings>, <armorplus:manyullyn_chestplate>, <armorplus:manyullyn_helmet>, <armorplus:cobalt_leggings>, <armorplus:cobalt_boots>, <termat:cobalt_chestplate>, <termat:cobalt_pickaxe>, <termat:cobalt_shovel>, <termat:cobalt_leggins>, <zollerngalaxy:cobalt_axe>, <thermalfoundation:armor.boots_platinum>, <thermalfoundation:tool.axe_platinum>, <metallurgy:silver_chestplate>, <embers:sword_nickel>, <metallurgy:silver_shovel>, <thermalfoundation:armor.legs_electrum>, <thermalfoundation:tool.axe_electrum>, <metallurgy:silver_axe>, <mysticalworld:silver_sword>, <mysticalworld:silver_shovel>, <mysticalworld:silver_pickaxe>, <mysticalworld:silver_hoe>, <mysticalworld:silver_axe>, <metallurgy:silver_boots>, <metallurgy:silver_leggings>, <thermalfoundation:armor.legs_platinum>, <thermalfoundation:tool.pickaxe_platinum>, <metallurgy:silver_helmet>, <embers:shovel_nickel>, <metallurgy:silver_pickaxe>, <armorplus:cobalt_helmet>, <thermalfoundation:tool.pickaxe_electrum>, <embers:sword_silver>, <zollerngalaxy:cobalt_pickaxe>, <zollerngalaxy:cobalt_sword>, <termat:cobalt_sword>, <termat:cobalt_hoe>, <termat:cobalt_boots>, <zollerngalaxy:cobalt_hoe>, <armorplus:cobalt_chestplate>, <embers:hoe_silver>, <embers:axe_silver>, <thermalfoundation:armor.helmet_platinum>, <thermalfoundation:tool.sword_platinum>, <thermalfoundation:tool.hoe_platinum>, <embers:pickaxe_nickel>, <embers:hoe_nickel>, <thermalfoundation:armor.helmet_electrum>, <thermalfoundation:tool.sword_electrum>, <thermalfoundation:tool.hoe_electrum>, <embers:pickaxe_silver>, <embers:shovel_silver>, <thermalfoundation:armor.plate_platinum>, <thermalfoundation:tool.shovel_platinum>, <metallurgy:silver_sword>, <embers:axe_nickel>, <metallurgy:silver_hoe>, <thermalfoundation:armor.plate_electrum>, <thermalfoundation:tool.shovel_electrum>, <ic2:bronze_helmet>, <ic2:bronze_chestplate>, <ic2:bronze_leggings>, <ic2:bronze_boots>] as IItemStack[];

val catRemoveArray = ["galaxyspace.assembler", "galaxyspace.rocket_assembler", "galaxyspace.nose_cone", "galaxyspace.body", "galaxyspace.engine", "galaxyspace.booster", "galaxyspace.stabiliser", "galaxyspace.ox_tank", "galaxyspace.rocket_tier_2", "moreplanets.black_hole_storage_recipes", "galacticraft.astroMiner", "galacticraft.rocketT1", "galacticraft.cargoRocket", "extraplanets.rocketT10Electric", "extraplanets.rocketT4", "extraplanets.rocketT5", "extraplanets.rocketT6", "extraplanets.rocketT7", "extraplanets.rocketT8", "extraplanets.rocketT9", "extraplanets.rocketT10", "extraplanets.marsRover", "extraplanets.venusRover"] as string[];











for item in removeArray {
	JEI.removeAndHide(item);
}
for item in catRemoveArray {
	JEI.hideCategory(item);
}