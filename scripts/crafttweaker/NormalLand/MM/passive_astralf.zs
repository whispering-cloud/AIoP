#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;
    print("Initializing passive_astralf.zs");



    function astralfbuild(recipername as string,machineName as string,foutput as ILiquidStack,iinput as IItemStack){
        val rp = mods.modularmachinery.RecipeBuilder.newBuilder(recipername, machineName, 1);
        rp.addFluidOutput(foutput);
        rp.addItemInput(iinput).setChance(0);
        rp.build();
    }


    astralfbuild("collectastralfmk11","passive_astralfluid_collectormk1",<fluid:astralfmk1>*2,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk21","passive_astralfluid_collectormk2",<fluid:astralfmk1>*4,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk31","passive_astralfluid_collectormk3",<fluid:astralfmk1>*8,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk41","passive_astralfluid_collectormk4",<fluid:astralfmk1>*16,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk51","passive_astralfluid_collectormk5",<fluid:astralfmk1>*32,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk61","passive_astralfluid_collectormk6",<fluid:astralfmk1>*64,<astralsorcery:blockmarble>);
    astralfbuild("collectastralfmk22","passive_astralfluid_collectormk2",<fluid:astralfmk2>*2,<botania:rune:8>);
    astralfbuild("collectastralfmk32","passive_astralfluid_collectormk3",<fluid:astralfmk2>*4,<botania:rune:8>);
    astralfbuild("collectastralfmk42","passive_astralfluid_collectormk4",<fluid:astralfmk2>*8,<botania:rune:8>);
    astralfbuild("collectastralfmk52","passive_astralfluid_collectormk5",<fluid:astralfmk2>*16,<botania:rune:8>);
    astralfbuild("collectastralfmk62","passive_astralfluid_collectormk6",<fluid:astralfmk2>*32,<botania:rune:8>);
    astralfbuild("collectastralfmk33","passive_astralfluid_collectormk3",<fluid:astralfmk3>*2,<actuallyadditions:item_crystal:2>);
    astralfbuild("collectastralfmk43","passive_astralfluid_collectormk4",<fluid:astralfmk3>*4,<actuallyadditions:item_crystal:2>);
    astralfbuild("collectastralfmk53","passive_astralfluid_collectormk5",<fluid:astralfmk3>*8,<actuallyadditions:item_crystal:2>);
    astralfbuild("collectastralfmk63","passive_astralfluid_collectormk6",<fluid:astralfmk3>*16,<actuallyadditions:item_crystal:2>);
    astralfbuild("collectastralfmk44","passive_astralfluid_collectormk4",<fluid:astralfmk4>*2,<psi:material>);
    astralfbuild("collectastralfmk54","passive_astralfluid_collectormk5",<fluid:astralfmk4>*4,<psi:material>);
    astralfbuild("collectastralfmk64","passive_astralfluid_collectormk6",<fluid:astralfmk4>*8,<psi:material>);
    astralfbuild("collectastralfmk55","passive_astralfluid_collectormk5",<fluid:astralfmk5>*2,<appliedenergistics2:material:52>);
    astralfbuild("collectastralfmk65","passive_astralfluid_collectormk6",<fluid:astralfmk5>*4,<appliedenergistics2:material:52>);
    astralfbuild("collectastralfmk66","passive_astralfluid_collectormk6",<fluid:astralfmk6>*2,<environmentaltech:aethium>);


    print("Initialized passive_astralf.zs");