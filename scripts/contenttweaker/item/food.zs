#priority 3000
#loader contenttweaker

    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Item;    
    import mods.contenttweaker.ItemFood; 

    print("Initializing food.zs");
    val itemName = [
        "astral_essence"
    ] as string[];
    for i in itemName {
        var fooder = VanillaFactory.createItemFood(i, 19);
        fooder.saturation = 0.8;
        fooder.register();
    }

    print("Initialized food.zs");