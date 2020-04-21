#priority 3000
#loader contenttweaker
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;

	var cr = MaterialSystem.getMaterialBuilder().setName("Chromium").setColor(Color.fromHex("9F9F5F").getIntColor()).build();
    var wfe = MaterialSystem.getMaterialBuilder().setName("TungstenSteel").setColor(4610158).build();
    var wc = MaterialSystem.getMaterialBuilder().setName("TungstenCarbon").setColor(10198472).build();
    var ri = MaterialSystem.getMaterialBuilder().setName("RefinedIron").setColor(Color.fromHex("CDCDCD").getIntColor()).build();
    var w = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(10664123).build();
    var bs = MaterialSystem.getMaterialBuilder().setName("BlueSteel").setColor(Color.fromHex("236B8E").getIntColor()).build();
    var cs = MaterialSystem.getMaterialBuilder().setName("CoralSteel").setColor(Color.fromHex("FF7F00").getIntColor()).build();
    var og = MaterialSystem.getMaterialBuilder().setName("OldGold").setColor(Color.fromHex("CFB53B").getIntColor()).build();
    var wh = MaterialSystem.getMaterialBuilder().setName("WoodHeart").setColor(Color.fromHex("A68064").getIntColor()).build();
    var bo = MaterialSystem.getMaterialBuilder().setName("BloodSolid").setColor(Color.fromHex("BC1717").getIntColor()).build();
    var fm = MaterialSystem.getMaterialBuilder().setName("Flowerium").setColor(Color.fromHex("CC3299").getIntColor()).build();
    var am = MaterialSystem.getMaterialBuilder().setName("Astralimium").setColor(Color.fromHex("38B0DE").getIntColor()).build();
    var rs = MaterialSystem.getMaterialBuilder().setName("RedSteel").setColor(Color.fromHex("FF0000").getIntColor()).build();
    var aa = MaterialSystem.getMaterialBuilder().setName("Aliasimium").setColor(Color.fromHex("23238E").getIntColor()).build();
	var by = MaterialSystem.getMaterialBuilder().setName("Berylium").setColor(Color.fromHex("979174").getIntColor()).build();
	var li = MaterialSystem.getMaterialBuilder().setName("Lithium").setColor(Color.fromHex("B1B7E1").getIntColor()).build();
	var mg = MaterialSystem.getMaterialBuilder().setName("Magnesium").setColor(Color.fromHex("F5F5F5").getIntColor()).build();

	var metal_list = [cr,w,wfe,wc,ri,bs,cs,og,bo,wh,fm,am,rs,aa,by] as Material[];
	var part_names = ["dust", "gear", "plate", "nugget", "ingot", "rod"] as string[];

	for i, metal in metal_list {
		metal.registerParts(part_names);
		var blockData = metal.registerPart("block").getData();
		blockData.addDataValue("hardness", "5");
		blockData.addDataValue("resistance", "30");
		blockData.addDataValue("harvestTool", "pickaxe");
		blockData.addDataValue("harvestLevel", "2");

		var oreData = metal.registerPart("ore").getData();
		oreData.addDataValue("hardness", "5");
		oreData.addDataValue("resistance", "30");
		oreData.addDataValue("harvestTool", "pickaxe");
		oreData.addDataValue("harvestLevel", "3");
	}
