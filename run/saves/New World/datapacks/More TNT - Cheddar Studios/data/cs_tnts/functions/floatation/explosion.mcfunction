summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["float_marker"]}

effect give @e[distance=..7] minecraft:levitation 10 1 true
spreadplayers ~ ~ 4 6 false @e[type=minecraft:marker,tag=float_marker]
execute as @e[type=minecraft:marker,tag=float_marker] at @s align xz run summon falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:stone"},Time:1,Motion:[0.0d,1d,0.0d]}


playsound minecraft:entity.generic.explode master @a ~ ~ ~
particle minecraft:explosion_emitter
kill @e[type=marker,tag=float_marker]
