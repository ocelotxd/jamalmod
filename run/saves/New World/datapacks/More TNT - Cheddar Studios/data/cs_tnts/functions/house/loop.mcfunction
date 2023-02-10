execute as @e[tag=house_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:house/explosion_plan

execute as @e[tag=new_house_tnt] at @s align xyz run function cs_tnts:house/placed
execute as @e[tag=house_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"House TNT","italic":false}'},CustomModelData:2007,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_house_tnt"]}}}}
execute as @e[tag=house_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=house_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=house_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:house/explosion
execute as @e[tag=house_tnt,scores={cs-tnttimer=0}] at @s run kill @s