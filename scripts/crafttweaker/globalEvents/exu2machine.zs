#priority 3000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineSlot;

    print("Initializing exu2machine.zs");
    var time_machine = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("time_machine", 1000*1024, 1000*1024,
	    [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("input_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("input_fluid", 32000, true, null)],
    	[extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("output_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("output_fluid", 32000, true, null)],
	    "contenttweaker:blocks/time_machine",
    	"contenttweaker:blocks/time_machine_active"
    );
    var chemical_reactor = extrautilities2.Tweaker.IMachineRegistry.createNewMachine("chemical_reactor", 1000*1024, 1000*1024,
	    [extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("input_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("input_fluid", 32000, true, null),extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("input_item2", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("input_fluid2", 32000, true, null), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("input_fluid3", 32000, true, null)],
    	[extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("output_item", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("output_fluid", 32000, true, null),extrautilities2.Tweaker.IMachineSlot.newItemStackSlot("output_item2", true, 64), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("output_fluid2", 32000, true, null), extrautilities2.Tweaker.IMachineSlot.newFluidSlot("output_fluid3", 32000, true, null)],
	    "contenttweaker:blocks/chemical_reactor",
    	"contenttweaker:blocks/chemical_reactor_active"
    );




    print("Initialized exu2machine.zs");