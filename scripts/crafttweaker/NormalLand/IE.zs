#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.BlastFurnace;
import crafttweaker.oredict.IOreDictEntry;

    print("Initializing IE.zs");
    //焦炉砖
    recipes.remove(<immersiveengineering:stone_decoration>);
    recipes.addShapedMirrored("cokeBri",<immersiveengineering:stone_decoration>*3,[[<tconstruct:materials>,<minecraft:brick>,<tconstruct:materials>],[<minecraft:brick>,<mekanism:salt>,<minecraft:brick>],[<tconstruct:materials>,<minecraft:brick>,<tconstruct:materials>]]);
    //hammer
    recipes.remove(<immersiveengineering:tool>);
    recipes.addShaped("iehammer",<immersiveengineering:tool>, [[null, <ore:ingotIron>, <ore:stoneMarble>], [null, <ore:stoneMarble>, <ore:ingotIron>], [<ore:stoneMarble>, null, null]]);
    //alloying
    recipes.remove(<immersiveengineering:stone_decoration:10>);
    //steel
    mods.immersiveengineering.BlastFurnace.removeRecipe(<thermalfoundation:material:160>);
    mods.immersiveengineering.BlastFurnace.removeRecipe(<thermalfoundation:storage_alloy>);
    mods.immersiveengineering.BlastFurnace.addRecipe(<ore:ingotSteel>.firstItem, <botania:manaresource>, 200, <astralsorcery:itemusabledust:1>);
    mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <botania:storage>, 1800, <astralsorcery:itemusabledust:1>*9);


    print("Initialized IE.zs");