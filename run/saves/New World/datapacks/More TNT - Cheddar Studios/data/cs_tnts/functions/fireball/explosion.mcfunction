summon minecraft:marker ~ ~ ~ {Tags:["fireball_marker","tall"]}
summon minecraft:marker ~ ~ ~ {Tags:["fireball_marker","short"]}
summon minecraft:marker ~ ~ ~ {Tags:["fireball_marker","tall"]}

summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}
summon minecraft:marker ~ ~ ~ {Tags:["small_fb_marker"]}

spreadplayers ~ ~ 2 1.5 false @e[type=minecraft:marker,tag=fireball_marker]
spreadplayers ~ ~ 2 4 false @e[type=minecraft:marker,tag=small_fb_marker]

execute as @e[type=minecraft:marker,tag=fireball_marker,tag=short] at @s run summon fireball ~ ~40 ~ {power:[0.0,-0.1,0.0], ExplosionPower:2}
execute as @e[type=minecraft:marker,tag=fireball_marker,tag=tall] at @s run summon fireball ~ ~60 ~ {power:[0.0,-0.1,0.0], ExplosionPower:2}
execute as @e[type=minecraft:marker,tag=small_fb_marker] at @s run summon small_fireball ~ ~100 ~ {power:[0.0,-0.1,0.0]}
execute as @e[type=minecraft:marker,tag=fireball_marker] at @s run kill @s
execute as @e[type=minecraft:marker,tag=small_fb_marker] at @s run kill @s
