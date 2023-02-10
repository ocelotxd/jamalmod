execute as @e[tag=mining_tnt] at @s if entity @e[type=tnt,distance=..1] run function cs_tnts:mining/explosion_plan

execute as @e[tag=new_mining_tnt] at @s align xyz run function cs_tnts:mining/placed
execute as @e[tag=mining_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Mining TNT","italic":false}'},CustomModelData:2004,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_mining_tnt"]}}}}
execute as @e[tag=mining_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1,sort=nearest]
execute as @e[tag=mining_tnt,tag=!fuse] at @s unless block ~ ~ ~ tnt run kill @s

execute as @e[tag=mining_tnt,scores={cs-tnttimer=0}] at @s run function cs_tnts:mining/explosion
execute as @e[tag=mining_tnt,scores={cs-tnttimer=0}] at @s run kill @s