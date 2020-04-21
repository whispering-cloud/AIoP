#priority 3000
#loader contenttweaker

    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Fluid;    
    import mods.contenttweaker.Color;
    print("Initializing fluid.zs");
    val fluidName = [
        "titaniumTetrachloride",
        "liquid_sunshiner",
        "void_liquid"
    ] as string[];
    
    val fluidColor = [
        "FFF8DC",
        "99CCFF",
        "4F4F4F"
    ] as string[];



    for i in 0 to fluidName.length {
        var zsfluid = VanillaFactory.createFluid(fluidName[i],Color.fromHex(fluidColor[i]));
        zsfluid.register();
    }



    //astralf
    val astralfname = [
        "astralfmk1",
        "astralfmk2",
        "astralfmk3",
        "astralfmk4",
        "astralfmk5",
        "astralfmk6"
    ] as string[];
    val astralfcolor = [
        "CCCCFF",
        "CCFFFF",
        "66CCFF",
        "6699CC",
        "99CCCC",
        "FFDEAD"
    ] as string[];
    val astralfk = [
        600,
        1000,
        2000,
        4000,
        6000,
        8000
    ] as int[];
    for i in 0 .. 6 {
        var astralfl = VanillaFactory.createFluid(astralfname[i],Color.fromHex(astralfcolor[i]));
        astralfl.luminosity = i;
        astralfl.temperature = astralfk[i];
        astralfl.register();
    }

    print("Initialized fluid.zs");