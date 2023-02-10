summon minecraft:marker ~ ~ ~ {Tags:["lightning_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["lightning_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["lightning_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["lightning_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["lightning_marker"]}

spreadplayers ~ ~ 2 2 false @e[type=minecraft:marker,tag=lightning_marker]

execute as @e[type=minecraft:marker,tag=lightning_marker] at @s run summon lightning_bolt
execute as @e[type=minecraft:marker,tag=lightning_marker] at @s run kill @s

