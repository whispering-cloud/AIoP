#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
    print("Initializing randomT.zs");
    recipes.remove(<randomthings:slimecube>);
    recipes.addShaped(<randomthings:slimecube>, [[<ore:blockSlimeGreen>, <ore:blockSlimeCongealed>, <ore:blockSlimeGreen>], [<ore:blockSlimeCongealed>, <ore:blockSlimeGreen>, <ore:blockSlimeCongealed>], [<ore:blockSlimeGreen>, <ore:blockSlimeCongealed>, <ore:blockSlimeGreen>]]);
    recipes.remove(<randomthings:timeinabottle>);
    recipes.addShaped(<randomthings:timeinabottle>, [[<thaumcraft:matrix_speed>, <mekanism:controlcircuit:3>, <thaumcraft:matrix_speed>], [<mekanism:controlcircuit:3>, <draconicevolution:awakened_core>, <mekanism:controlcircuit:3>], [<thaumcraft:matrix_speed>, <mekanism:controlcircuit:3>, <thaumcraft:matrix_speed>]]);




    print("Initialized randomT.zs");