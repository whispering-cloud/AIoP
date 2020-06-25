#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
    print("Initializing tntbug.zs");
    mods.modularmachinery.RecipeBuilder.newBuilder("tntbugmana", "tnt_easy_bug", 20).addItemInput(<minecraft:sticky_piston>).setChance(0).addItemInput(<minecraft:slime>*8).setChance(0).addItemInput(<botania:hourglass>).setChance(0).addItemInput(<minecraft:activator_rail>*2).setChance(0).addItemInput(<minecraft:minecart>).setChance(0).addItemInput(<minecraft:tnt>).setChance(0).addItemInput(<minecraft:sand>).setChance(0).addManaOutput(6500).build();
    <modularmachinery:itemblueprint>.withTag({dynamicmachine:"modularmachinery:tnt_easy_bug"}).addTooltip("At least 7 eleven mana spreader with speed-strength composite lens can take all the mana out");
    print("Initialized tntbug.zs");