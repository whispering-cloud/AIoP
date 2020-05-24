#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands; 
import crafttweaker.event.CommandEvent;

    print("Initializing renamer.zs");
    <thermalfoundation:coin:64>.displayName=game.localize("message.contenttweaker.coin1.name");
    <thermalfoundation:coin:66>.displayName=game.localize("message.contenttweaker.coin5.name");
    <thermalfoundation:coin:69>.displayName=game.localize("message.contenttweaker.coin20.name");
    <thermalfoundation:coin:1>.displayName=game.localize("message.contenttweaker.coin100.name");
    <thermalfoundation:coin:70>.displayName=game.localize("message.contenttweaker.coin500.name");
    <jaopca:item_coinastralstarmetal>.displayName=game.localize("message.contenttweaker.coin2000.name");
    <jaopca:item_coindraconium>.displayName=game.localize("message.contenttweaker.coin10000.name");


    <akashictome:tome>.addTooltip("Can be easily thorw into the eleven gateway when in LexicaBotania form");
    //scripts.crafttweaker.utils.renamer.remover(IItemStack);
    function remover(ite as IItemStack){
        ite.addTooltip("Disabled in AIoP");
        recipes.remove(ite);
        mods.jei.JEI.removeAndHide(ite);
    }

    remover(<thermalexpansion:augment:336>);

    print("Initialized renamer.zs");

