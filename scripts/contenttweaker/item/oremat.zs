#priority 3000
#loader contenttweaker
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;
    import mods.contenttweaker.PartType; 
    import mods.contenttweaker.Part;
    import mods.contenttweaker.RegisterMaterialPart;

//schee metallurgy
	var metallister as string[string] = {
        "monazite" : "",//独居石
        "galena" : "",//方铅矿
        "chromite" : "",//铬铁矿
        "ferronickel" : "",//镍黄铁
        "zinc" : "",//锌
        "vanadinite" : "",//钒铅矿
        "pitchblende" : "",//沥青铀矿
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
    for i in part_names {
        mods.contenttweaker.MaterialSystem.getPartBuilder().setName(i).setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName(i).build();
    }
	for keyer in metallister {
        var metar = MaterialSystem.getMaterialBuilder().setName(keyer).setColor(Color.fromHex("CC3299").getIntColor()).build();
		metar.registerParts(part_names);
		var oreData = metar.registerPart("ore").getData();
		oreData.addDataValue("hardness", "3");
		oreData.addDataValue("resistance", "30");
		oreData.addDataValue("harvestTool", "pickaxe");
		oreData.addDataValue("harvestLevel", "1");
	}
