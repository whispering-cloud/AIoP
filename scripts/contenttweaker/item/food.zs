#priority 3000
#loader contenttweaker

    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Item;    
    import mods.contenttweaker.ItemFood; 
    import mods.contenttweaker.IItemFoodEaten; 

    print("Initializing food.zs");
    val itemName = [
        "astral_essence"
    ] as string[];
    for i in itemName {
        var fooder = VanillaFactory.createItemFood(i, 19);
        fooder.saturation = 0.8;
        fooder.onItemFoodEaten = function(stack, world, player) {
            if (!world.isRemote()) {
                player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(1200, 1));
            }
        };
        fooder.register();
    }

    print("Initialized food.zs");