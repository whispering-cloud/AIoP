#priority 3000
#loader contenttweaker

    import mods.contenttweaker.VanillaFactory;
    import mods.contenttweaker.Fluid;    
    import mods.contenttweaker.Color;
    print("Initializing fluid.zs");
    //流体名列表
    val fluidName = [
        "titaniumTetrachloride",//TiCl4
        "liquid_sunshiner",
        "void_liquid",
        "nature_gas",//天然气
        "lpg",//LPG
        "lng",//LNG
        "H2S",//硫化氢
        "hydrozized_oil",//脱硫石油
        "processed_oil",//处理原油(1/2)
        "naptha",//石脑油
        "cracking_gas",//裂解气
        "diesel_oil",//柴油
        "mineral_oil",//矿物油
        //CnH2n+2
        "ch4",
        "c2h6",
        "c3h8",
        "c4h10",
        //CnH2n
        "c2h4",
        "c3h6",
        "c4h8",
        //end
        "syngas",//水煤气/合成气
        "pyrolysis_gasoline",//裂解汽油
        "co",//一氧化碳
        "phosgene",//光气
        "c6h6",//苯
        "c7h9",//甲苯
        "hno3",//硝酸
        "c7h6n2o4",//二硝基甲苯
        "k2s2o8",//过硫酸钾
        "ch3o",//甲醛
        "ech",//ECH for expoxy resin
        "tdi",//TDI for PUplastic
        "acetone_phenol",//Acetone - phenol mixture 丙酮 - 苯酚
        "acetone_bisphenola",//Acetone - bisphenolA mixture 丙酮 - 双酚A
        "phenol",//苯酚
        "bisphenola",//双酚A
        "carbonate",//碳酸酯
        "cahpo4",//磷酸氢钙
        "nh4no3",//硝酸铵
        "hcn",//氢氰酸
        "naoh",//氢氧化钠
        "acetone_cyanohydrin",//product for PMMA
        "ch3oh",//甲醇
        "pmm",//PMM for PMMA's single
        //metallurgy
        "al2o3",//Al2O3 liquidfy
        "ccl4",//四氯化碳
        "nh4oh",//氨水
        "na2co3",//碳酸钠
        "h2wo4",//钨酸
        "cacl2",//氯化钙
        "sboh2"//氢氧化锑

    ] as string[];
    //流体颜色列表
    val fluidColor = [
        "FFF8DC",//TiCl4
        "99CCFF",
        "4F4F4F",
        "669999",//天然气
        "CCFF99",//LPG
        "009999",//LNG
        "66FF33",//硫化氢
        "4F4F4F",//脱硫石油
        "4F4F4F",//处理原油(1/2)
        "556B2F",//石脑油
        "CDCD00",//裂解气
        "FFFACD",
        "FFE1FF",
        "FFE1FF",
        "FFE1FF",
        "FFE1FF",
        "EED2EE",
        "EED2EE",
        "EED2EE",
        "B0E2FF",//color for all no color's gas syngas
        "FF4040",
        "B0E2FF",//color for all no color's gas co
        "B0E2FF",//光气
        "B0E2FF",//苯
        "B0E2FF",//甲苯
        "EEC900",//硝酸
        "B0E2FF",//二硝基甲苯
        "B0E2FF",//过硫酸钾
        "B0E2FF",//甲醛
        "B0E2FF",//ECH for expoxy resin
        "B0E2FF",//TDI for PUplastic
        "FF6A6A",//Acetone - phenol mixture 丙酮 - 苯酚
        "EE6363",//Acetone - bisphenolA mixture 丙酮 - 双酚A
        "FF6A6A",//苯酚
        "EE6363",//双酚A
        "006400",//碳酸酯
        "FFF68F",//磷酸氢钙
        "B0E2FF",
        "00FFFF",
        "B0E2FF",
        "B0E0E6",
        "4169E1",
        "2F4F4F",
        //metallurgy
        "00F5FF",
        "4F4F4E",
        "97FFFF",
        "E6E6FA",
        "FAEBD7",
        "FFDEAD",
        "5F9EA0"
    ] as string[];


    //根据流体名及流体颜色注册
    for i in 0 to fluidName.length {
        var zsfluid = VanillaFactory.createFluid(fluidName[i],Color.fromHex(fluidColor[i]));
        zsfluid.register();
    }



    //astralf流体注册
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