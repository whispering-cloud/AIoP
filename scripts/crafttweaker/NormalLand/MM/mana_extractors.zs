#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

    print("Initializing mana_extractor.zs");
    //passive extractor
    //terra steel 1
    mods.modularmachinery.RecipeBuilder.newBuilder("terrapassive1", "passive_aura_extractor", 6000).addItemOutput(<botania:manaresource:4>).addItemInput(<botania:manaresource>).addItemInput(<astralsorcery:itemusabledust:1>*8).addBiomeRequirement([116]);
    //raw mana generator
    mods.modularmachinery.RecipeBuilder.newBuilder("manapassive1", "passive_aura_extractor", 10).addManaOutput(100).addItemInput(<astralsorcery:itemusabledust:1>).setChance(0.05).addItemInput(<botania:quartz:1>).setChance(0).addItemOutput(<astralsorcery:itemusabledust>).setChance(0.05);
    


    print("Initialized mana_extractor.zs");