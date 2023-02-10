execute as @e[tag=void_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:void/explosion_plan

execute as @e[tag=new_void_tnt] at @s align xyz run function cs_tnts:void/placed
execute as @e[tag=void_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Void TNT","italic":false}'},CustomModelData:2009,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_void_tnt"]}}}}
execute as @e[tag=void_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=void_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=void_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:void/explosion
execute as @e[tag=void_tnt,scores={cs-tnttimer=0}] at @s run kill @s