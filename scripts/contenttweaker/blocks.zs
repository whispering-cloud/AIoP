#priority 3000
#loader contenttweaker
    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Item;    
    import mods.contenttweaker.Block;
    print("initializing block.zs");
    val AllblockName = [
        "gt_machine_0",
        "gt_machine_1",
        "gt_machine_2",
        "gt_machine_3",
        "gt_machine_4",
        "gt_fusion_1",
        "gt_fusion_2",
        "pure_gyk",
        "dense_marble"
    ] as string[];

    for i in AllblockName {
        regBlocks(i);
    }
    
    function regBlocks(namelo as string){
        var regBlocka = VanillaFactory.createBlock(namelo,<blockmaterial:rock>);
        regBlocka.setBlockHardness(5.0);
        regBlocka.setBlockResistance(5.0);
        regBlocka.setToolClass("pickaxe");
        regBlocka.setToolLevel(2);
        regBlocka.register();
    }


    print("initialized block.zs");
