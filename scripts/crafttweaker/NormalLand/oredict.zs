#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

    print("Initializing oredict.zs");
    val marbchisel = <ore:stoneMarble>;
    for i in marbchisel.items {
        if (!(<ore:blockMarble> in i)){
            <ore:blockMarble>.add(i);
        }
    }



    print("Initialized oredict.zs");