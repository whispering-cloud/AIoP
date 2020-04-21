#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;
    print("Initializing liquid_sun_collector.zs");
//    scripts.crafttweaker.NormalLand.MM.utilsreciper.recipeBuilds("collectsunshine","liquid_sun_collector",1,0,0,null,[<fluid:liquid_sunshiner>*2],null,null);
    mods.modularmachinery.RecipeBuilder.newBuilder("collectsunshine", "liquid_sun_collector", 1).addFluidOutput(<fluid:liquid_sunshiner>*2).build();

    print("Initialized liquid_sun_collector.zs");