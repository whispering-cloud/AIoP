#priority 3000
#loader contenttweaker
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;
    import mods.contenttweaker.RegisterMaterialPart;
    import mods.contenttweaker.PartType; 

//schee metallurgy
	// var metal_list_name = ["monazite","galena","chromite",
    // "ferronickel","zinc","vanadinite","pitchblende","iridosmine",
    // "ilmenite","scheelite","coppers","irons","wolframite","bismuthinite",
    // "stibnite","magnesite","cassiterite","gummite","bauxite","lithore",
    // "uraninite"] as string[];
	var metallister as string[string] = {
        "monazite" : "",
        "galena" : "",
        "chromite" : "",
        "ferronickel" : "",
        "zinc" : "",
        "vanadinite" : "",
        "pitchblende" : "",
        "iridosmine" : "",
        "ilmenite" : "",
        "scheelite" : "",
        "coppers" : "",
        "irons" : "",
        "wolframite" : "",
        "bismuthinite" : "",
        "stibnite" : "",
        "magnesite" : "",
        "cassiterite" : "",
        "gummite" : "",
        "bauxite" : "",
        "lithore" : "",
        "uraninite" : ""
    };
    var part_names = ["crush_ore","grinded_ore","sieved_ore","washed_ore","refined_one_ore","wet_ore","concentrated_ore","filtered_ore","refined_ore"] as string[];
    // var ore_color = [""];

    val CurshOre=MaterialSystem.createPartType("crush_ore",function(materialPart){
        //ways of crush ore
    });
    val GrindedOre=MaterialSystem.createPartType("grinded_ore",function(materialPart){
        //ways of grind ore
    });
    val SievedOre=MaterialSystem.createPartType("sieved_ore",function(materialPart){
        //ways of sieve ore
    });
    val WashedOre=MaterialSystem.createPartType("washed_ore",function(materialPart){
        //ways of wash ore
    });
    val refoneOre=MaterialSystem.createPartType("refined_one_ore",function(materialPart){
        //ways of ref1 ore
    });
    val wetOre=MaterialSystem.createPartType("wet_ore",function(materialPart){
        //ways of wet ore
    });
    val concentratedOre=MaterialSystem.createPartType("concentrated_ore",function(materialPart){
        //ways of concentrate ore
    });
    val filteredOre=MaterialSystem.createPartType("filtered_ore",function(materialPart){
        //ways of filter ore
    });
    val refOre=MaterialSystem.createPartType("refined_ore",function(materialPart){
        //ways of dry ore
    });
	for keyer in metallister {
        var metar = MaterialSystem.getMaterialBuilder().setName(keyer).setColor(Color.fromHex("CC3299").getIntColor()).build();
		metar.registerParts(part_names);
		var oreData = metar.registerPart("ore").getData();
		oreData.addDataValue("hardness", "3");
		oreData.addDataValue("resistance", "30");
		oreData.addDataValue("harvestTool", "pickaxe");
		oreData.addDataValue("harvestLevel", "1");
	}
