execute as @e[tag=blackhole_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:blackhole/explosion_plan

execute as @e[tag=new_blackhole_tnt] at @s align xyz run function cs_tnts:blackhole/placed
execute as @e[tag=blackhole_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Black Hole TNT","italic":false}'},CustomModelData:2001,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_blackhole_tnt"]}}}}
execute as @e[tag=blackhole_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=blackhole_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=blackhole_tnt,tag=fuse] at @s run execute as @e[distance=..16,type=!tnt,type=!armor_stand] at @s facing entity @e[tag=blackhole_tnt] eyes run tp ^ ^ ^0.05

execute as @e[tag=blackhole_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:blackhole/explosion
execute as @e[tag=blackhole_tnt,scores={cs-tnttimer=0}] at @s run kill @s