execute as @e[tag=floatation_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:floatation/explosion_plan

execute as @e[tag=new_floatation_tnt] at @s align xyz run function cs_tnts:floatation/placed
execute as @e[tag=floatation_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Floatation TNT","italic":false}'},CustomModelData:2010,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_floatation_tnt"]}}}}
execute as @e[tag=floatation_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=floatation_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=floatation_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:floatation/explosion
execute as @e[tag=floatation_tnt,scores={cs-tnttimer=0}] at @s run kill @s