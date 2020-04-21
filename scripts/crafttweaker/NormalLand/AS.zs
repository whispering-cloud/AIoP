#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mods.astralsorcery.Altar;
import mods.contenttweaker.Color;
import mods.astralsorcery.Lightwell;
    print("Initializing AS.zs");
    //getting started -1 - 0
    recipes.remove(<item:astralsorcery:blockaltar>);
    recipes.remove(<astralsorcery:itemwand>);
//    mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:itemwand>, 0);
    recipes.addShaped(<astralsorcery:blockaltar>, [[<ore:stoneMarble>, <astralsorcery:blockmarble>, <ore:stoneMarble>], [<astralsorcery:blockmarble>, <minecraft:crafting_table>, <astralsorcery:blockmarble>]]);
    recipes.addShaped(<astralsorcery:itemwand>, [[null, <ore:materialStoneTool>, null], [<ore:materialStoneTool>, <ore:stickWood>, <ore:materialStoneTool>], [null, <ore:stickWood>, null]]);
    //stone chisel
    
    recipes.remove(<chisel:chisel_iron>);
    val chi = <item:chisel:chisel_iron> as IItemStack;
    chi.displayName = "Stone Chisel";
    chi.maxDamage = 64;
    recipes.addShaped(chi, [[null, <item:minecraft:cobblestone>,null], [<ore:stickWood>, null,null],[null,null,null]]);
    //砂轮
    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/grindstone");
//    mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockmachine:1>,0);
    //altar tier 2
    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
//    mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar:1>,0);
    //flint and steel
    recipes.remove(<minecraft:flint_and_steel>);
    <minecraft:flint_and_steel>.displayName = "Astral Flint";
    //"null"means null constellation
    scripts.crafttweaker.NormalLand.MM.utilsreciper.allaltar("astralflint",1,[<minecraft:flint>,null,null,null,<minecraft:flint>,null,<minecraft:cobblestone>,null,<astralsorcery:itemusabledust>],<minecraft:flint_and_steel>,"null");
    
    //dust astral
    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
   // mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:itemusabledust>, 0);
    <astralsorcery:itemusabledust>.displayName = "Astral dust";
    scripts.crafttweaker.NormalLand.MM.utilsreciper.allaltar("astraldust",1,[<minecraft:sapling>,<mekanism:salt>,<minecraft:sapling>,<mekanism:salt>,<minecraft:yellow_flower>,<mekanism:salt>,<minecraft:sapling>,<mekanism:salt>,<minecraft:sapling>],<astralsorcery:itemusabledust>*2,"null");
    //later dust
    scripts.crafttweaker.NormalLand.MM.utilsreciper.allaltar("laterdust",1,[<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:glowstone_dust>,<mekanism:salt>,<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:redstone>],<astralsorcery:itemusabledust>*8,"null");
    scripts.crafttweaker.NormalLand.MM.utilsreciper.altarr("laterdustauto",1,[<minecraft:redstone>*4,<minecraft:glowstone_dust>*4,<mekanism:salt>],<astralsorcery:itemusabledust>*8);
    //dust magic
    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
    <astralsorcery:itemusabledust:1>.displayName = "Mystical Dust";

    //tutorial astralf mk1
    mods.astralsorcery.Lightwell.addLiquefaction(<ore:stoneMarble>.firstItem, <fluid:astralfmk1>, 1.0, 1.0, Color.fromHex("CCCCFF").getIntColor());
    //star liquification
    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
    scripts.crafttweaker.NormalLand.MM.utilsreciper.allaltar("welllight",1,[<astralsorcery:blockmarbleslab>,null,<astralsorcery:blockmarbleslab>,<astralsorcery:blockmarble:1>,<botania:altar>,<astralsorcery:blockmarble:1>,null,<astralsorcery:blockmarble:2>,null],<astralsorcery:blockwell>,"null");
    //botania altar
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe("botaltarlevel1",<botania:altar>,100,100,[<minecraft:stone_slab:3>,null,<minecraft:stone_slab:3>,<astralsorcery:blockmarble:6>,<botania:petal>.anyDamage(),<astralsorcery:blockmarble:6>,null,<astralsorcery:blockmarble:6>,null]);
    //MM controller
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mmcontroller",<modularmachinery:blockcontroller>,100,100,[<astralsorcery:blockinfusedwood>,<astralsorcery:blockmarble>,<astralsorcery:blockinfusedwood>,<astralsorcery:blockmarble>,<minecraft:dye:11>,<astralsorcery:blockmarble>,<astralsorcery:blockinfusedwood>,<astralsorcery:blockmarble>,<astralsorcery:blockinfusedwood>]);
    


    //stage 1
    print("Initialized AS.zs");