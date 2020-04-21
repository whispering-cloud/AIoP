#priority 3000
#loader contenttweaker

    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Item;    
    import mods.contenttweaker.IItemRightClick;
    print("Initializing item.zs");
    val itemName = [
        "last_saplings",
        "Titaniumsponge",
        "Yellowcake",
        "Vanadiumredcake",
        "vanadiumpentoxide",
        "Trinitrotoluene",
        "easyfuel"
    ] as string[];
    for i in itemName {
        var zsItem = VanillaFactory.createItem(i);
        zsItem.maxStackSize = 64;
        zsItem.rarity = "rare";
        zsItem.register();
    }


    print("Initialized item.zs");