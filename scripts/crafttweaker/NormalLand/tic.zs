#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Fuel;
    print("Initializing tic.zs");
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk1>*20, 50);
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk2>*20, 50);
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk3>*20, 50);
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk4>*20, 50);
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk5>*20, 50);
    mods.tconstruct.Fuel.registerFuel(<fluid:astralfmk6>*20, 100);
    recipes.remove(<tconstruct:pattern>);
    recipes.addShaped("ticpattern",<tconstruct:pattern> * 4, [[<ore:materialStoneTool>, <ore:stickWood>, <ore:materialStoneTool>], [<ore:stickWood>, <astralsorcery:blockmarble>, <ore:stickWood>], [<ore:materialStoneTool>, <ore:stickWood>, <ore:materialStoneTool>]]);
    recipes.addShaped("freecast",<tconstruct:ingots:5>*2, [[<ore:stoneMarble>, <minecraft:glass>, <ore:stoneMarble>], [<ore:blockGlassColorless>, <ore:pattern>, <ore:blockGlassColorless>], [<ore:stoneMarble>, <ore:blockGlassColorless>, <ore:stoneMarble>]]);
    <tconstruct:cast_custom>.addTooltip("Craftable by crafting Alubrass ingot");
    <tconstruct:ingots:5>.addTooltip("Craftable");
    //brick seared
    recipes.remove(<tconstruct:soil>);
    recipes.addShaped("ticsoil",<tconstruct:soil> * 16, [[<ore:gravel>, <ore:stoneMarble>, <ore:gravel>], [<ore:sand>, <ore:blockClay>, <ore:sand>], [<minecraft:gravel>, <ore:stoneMarble>, <ore:gravel>]]);
    <tconstruct:soil>.addTooltip("throw into the Astral Fluid MK1 to turn it into seared bricks");
    furnace.remove(<tconstruct:materials>);
    recipes.remove(<tinker_io:ore_crusher>);
    <tinker_io:ore_crusher>.addTooltip("disabled in AIoP");
    //fix tank
    recipes.addShapeless(<tconstruct:seared_tank>, [<tconstruct:seared_tank>]);

    print("Initialized tic.zs");