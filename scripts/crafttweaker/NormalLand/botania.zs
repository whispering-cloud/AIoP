#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.botania.ManaInfusion;
import crafttweaker.oredict.IOreDictEntry;
import mods.botania.PureDaisy;

    print("Initializing botania.zs");
    //mana quartz
    mods.botania.ManaInfusion.removeRecipe(<botania:quartz:1>);
    mods.botania.ManaInfusion.addInfusion(<botania:quartztypemana>, <ore:blockMarble>, 100);
    mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>*4, <astralsorcery:itemusabledust:1>, 100);
    <botania:quartztypemana>.addTooltip("Can be crafted using marble");
    <botania:manaresource:23>.addTooltip("can be crafted in many ways");
    //living stone
    mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
    mods.botania.PureDaisy.addRecipe(<ore:stoneMarble>, <botania:livingrock>);
    //living wood
    mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
    mods.botania.PureDaisy.addRecipe(<astralsorcery:blockinfusedwood>, <botania:livingwood>);
    //altar made altar
    for i in <botania:altar>.anyDamage().items {
        recipes.remove(i);
    }
    //pure gyk
    mods.botania.PureDaisy.addRecipe(<avaritiatweaks:gaia_block>, <contenttweaker:pure_gyk>, 12000);
    //

    print("Initialized botania.zs");