#packmode NormalLand
#priority -100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;
    print("Initializing vanilla.zs");
    furnace.setFuel(<contenttweaker:easyfuel>,6400);
    val plak = <ore:plankWood>;
    for iplan in plak.items {
        recipes.remove(iplan);
    }
    recipes.remove(<minecraft:stick>);
    recipes.addShapeless("handerwood",<minecraft:planks>,[<minecraft:log>.anyDamage()]);
    recipes.addShapeless("woodaxewood",<minecraft:planks>*2,[<minecraft:log>.anyDamage(),<minecraft:wooden_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("stoneaxewood",<minecraft:planks>*3,[<minecraft:log>.anyDamage(),<minecraft:stone_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("ironaxewood",<minecraft:planks>*4,[<minecraft:log>.anyDamage(),<minecraft:iron_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("autowood",<minecraft:planks>*4,[<minecraft:log>.anyDamage(),<contenttweaker:astral_essence>.reuse()]);recipes.addShapeless("handwood",<minecraft:planks>,[<minecraft:log>.anyDamage()]);
    recipes.addShapeless("handstick",<minecraft:stick>,[<minecraft:planks>.anyDamage(),<minecraft:planks>.anyDamage()]);
    recipes.addShapeless("woodaxestick",<minecraft:stick>*2,[<minecraft:planks>.anyDamage(),<minecraft:planks>.anyDamage(),<minecraft:wooden_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("stoneaxestick",<minecraft:stick>*3,[<minecraft:planks>.anyDamage(),<minecraft:planks>.anyDamage(),<minecraft:stone_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("ironaxestick",<minecraft:stick>*4,[<minecraft:planks>.anyDamage(),<minecraft:planks>.anyDamage(),<minecraft:iron_axe>.anyDamage().transformDamage()]);
    recipes.addShapeless("autostick",<minecraft:stick>*4,[<minecraft:planks>.anyDamage(),<minecraft:planks>.anyDamage(),<contenttweaker:astral_essence>.reuse()]);
    <contenttweaker:astral_essence>.addTooltip("Won't consumed in woodCutting");
/*    recipes.addShapeless("survalistplank",<minecraft:planks>, [<minecraft:log>.anyDamage()],
    function(out, ins, cInfo){
        if (cInfo.player.xp>=15){
            return out*2;
        }
        if (cInfo.player.xp>=30){
            return out*4;
        }
        return out;
    },null);
    recipes.addShaped("survaliststick",<minecraft:stick>,[[<minecraft:planks>.anyDamage(),null,null],[<minecraft:planks>.anyDamage(),null,null],[null,null,null]],
    function(out, ins, cInfo){
        if (cInfo.player.xp>=5){
            return <minecraft:stick>*2;
        }
        if (cInfo.player.xp>=20){
            return <minecraft:stick>*4;
        }
        return out;
    },null);
*/



    print("Initialized vanilla.zs");