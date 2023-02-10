fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:farmland destroy
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:wheat[age=7] destroy
fill ~-2 ~ ~2 ~1 ~ ~0 minecraft:potatoes[age=7] replace
fill ~2 ~ ~1 ~1 ~ ~-1 minecraft:carrots[age=7] replace


playsound minecraft:entity.generic.explode master @a ~ ~ ~
particle minecraft:explosion_emitter