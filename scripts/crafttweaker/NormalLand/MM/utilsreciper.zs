#packmode NormalLand
#priority -50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.astralsorcery.Altar;
    print("Initializing utilsreciper.zs");
    //recipe builder func
    /*
    function recipeBuilds(recipername as string,machineName as string,processingTickTime as int,energyTick as int,outputEnergy as int,finput as ILiquidStack[],foutput as ILiquidStack[],iinput as IItemStack[],ioutput as IItemStack[]){
        val rp = mods.modularmachinery.RecipeBuilder.newBuilder(recipername, machineName, processingTickTime);
        if (energyTick!=0){
            rp.addEnergyPerTickInput(energyTick);
        }
        if (outputEnergy!=0){
            rp.addEnergyPerTickOutput(outputEnergy);
        }
        for i in finput {
            if (!(i as bool)) {
               rp.addFluidInput(i);
            }
        }
        for i in foutput {
            if (!(i as bool)) {
                rp.addFluidOutput(i);
            }
        }
        for i in iinput {
            if (!(i as bool)) {
                rp.addItemInput(i);
            }
        }
        for i in ioutput {
            if (!(i as bool)) {
                rp.addItemOutput(i);
            }
        }
        rp.build();
    }*/
    
    //auto altar
    //recipeBuilds(recname,"auto_altarmk2",200,0,0,[<fluid:astralfmk2>*3200],[],inputer,[outputer]);
    function altarr(recname as string,levelat as int,inputer as IItemStack[],outputer as IItemStack){
        if (2>=levelat) {
            var rp2 = mods.modularmachinery.RecipeBuilder.newBuilder(recname ~ "auto_altarmk2", "auto_altarmk2",200).addFluidInput(<fluid:astralfmk2>*320);
            for i in inputer {
                rp2.addItemInput(i);
            }
            rp2.addItemOutput(outputer);
        }
        if (3>=levelat) {
            var rp3 = mods.modularmachinery.RecipeBuilder.newBuilder(recname ~ "auto_altarmk3", "auto_altarmk3",100).addFluidInput(<fluid:astralfmk4>*80);
            for i in inputer {
                rp3.addItemInput(i);
            }
            rp3.addItemOutput(outputer);
        }
        if (4>=levelat) {
            var rp4 = mods.modularmachinery.RecipeBuilder.newBuilder(recname ~ "auto_altarmk4", "auto_altarmk4",50).addFluidInput(<fluid:astralfmk2>*20);
            for i in inputer {
                rp4.addItemInput(i);
            }
            rp4.addItemOutput(outputer);
        }
    }
    //all of altar
    function allaltar(recname as string,levelat as int,inputer as IItemStack[],outputer as IItemStack,traitname as string){
        if (1==levelat) mods.astralsorcery.Altar.addDiscoveryAltarRecipe(recname + "level1",outputer,100,100,inputer);
        if (2==levelat) mods.astralsorcery.Altar.addAttunmentAltarRecipe(recname + "level2",outputer,300,100,inputer);
        if (3==levelat) mods.astralsorcery.Altar.addConstellationAltarRecipe(recname + "level3",outputer,600,100,inputer);
        if (4==levelat) {
            if (traitname=="null") mods.astralsorcery.Altar.addTraitAltarRecipe(recname + "level4",outputer,800,100,inputer);
            else mods.astralsorcery.Altar.addTraitAltarRecipe(recname + "level4",outputer,800,100,inputer,traitname);
        }
    }


    print("Initialized utilsreciper.zs");