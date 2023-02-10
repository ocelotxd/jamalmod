playsound minecraft:entity.tnt.primed master @a ~ ~ ~
tp @e[type=tnt,distance=..1,limit=1,sort=nearest]
kill @e[type=tnt,distance=..1,limit=1]
scoreboard players set @s cs-tnttimer 80
tag @s add fuse
data merge entity @s {Marker:0b,HasVisualFire:0b}