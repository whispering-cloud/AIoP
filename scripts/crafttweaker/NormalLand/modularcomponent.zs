#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

    print("Initializing modularcomonent.zs");
    //stage -1 - 0
    //weather
    recipes.addShaped("weathermm",<modulardiversity:blockweatherdetector>, [[<ore:stoneMarble>, <astralsorcery:itemusabledust>, <ore:stoneMarble>], [<astralsorcery:itemusabledust>, <ore:materialStoneTool>, <astralsorcery:itemusabledust>], [<astralsorcery:blockmarble>, <astralsorcery:itemusabledust>, <ore:stoneMarble>]]);
    //controller
    recipes.remove(<modularmachinery:blockcontroller>);
    //mm ingot
    recipes.remove(<modularmachinery:itemmodularium>);



    print("Initialized modularcomonent.zs");