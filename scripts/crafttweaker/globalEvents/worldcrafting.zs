#priority -150
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.ExplosionCrafting;
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);
//FluidToFluid.transform(ILiquidStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);
//FireCrafting.addRecipe(IItemStack output, IIngredient inputItem, @Optional int ticks);
//ExplosionCrafting.explodeItemRecipe(IItemStack output, IIngredient inputItem, @Optional int survicechance);
//ExplosionCrafting.explodeBlockRecipe(IItemStack output, IItemStack blockStack, @Optional int itemSpawnChance);


    print("Initializing worldcrafting.zs");
    val allsapling = <ore:treeSapling>;
    for isap in allsapling.items {
        ExplosionCrafting.explodeBlockRecipe(<contenttweaker:last_saplings>, isap, 1);
    }
    <contenttweaker:last_saplings>.addTooltip("crafted by explode the saplings");
    val allwood = <ore:logWood>;
    for iwod in allwood.items {
        ExplosionCrafting.explodeBlockRecipe(<contenttweaker:material_part:68>, iwod, 75);
    }
    <contenttweaker:material_part:68>.addTooltip("crafted by explode the woods");
    //inf dust
    FluidToItem.transform(<enderio:block_infinity_fog>, <fluid:cryotheum>, [<advancedrocketry:moonturf>],false);
    //tic brick
    FluidToItem.transform(<tconstruct:materials>, <fluid:astralfmk1>, [<tconstruct:soil>],false);
    <tconstruct:materials>.addTooltip("crafted by throwing the soil into the Astral Fluid MK1");
    //infused wood
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk1>, [<ore:logWood>],false);
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk2>, [<ore:logWood>],false);
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk3>, [<ore:logWood>],false);
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk4>, [<ore:logWood>],false);
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk5>, [<ore:logWood>],false);
    FluidToItem.transform(<astralsorcery:blockinfusedwood>, <fluid:astralfmk6>, [<ore:logWood>],false);
    //mm ingot
    FluidToItem.transform(<modularmachinery:itemmodularium>, <fluid:astralfmk1>, [<ore:ingotIron>],false);

    print("Initialized worldcrafting.zs");