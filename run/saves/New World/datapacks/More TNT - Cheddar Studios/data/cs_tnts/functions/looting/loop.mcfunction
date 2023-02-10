execute as @e[tag=looting_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:looting/explosion_plan

execute as @e[tag=new_looting_tnt] at @s align xyz run function cs_tnts:looting/placed
execute as @e[tag=looting_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Looting TNT","italic":false}'},CustomModelData:2014,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_looting_tnt"]}}}}
execute as @e[tag=looting_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=looting_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=looting_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:looting/explosion
execute as @e[tag=looting_tnt,scores={cs-tnttimer=0}] at @s run kill @s