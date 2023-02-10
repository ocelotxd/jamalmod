recipe take @s cs_tnts:fireball_recipe

advancement revoke @s only cs_tnts:fireball_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Fireball TNT","italic":false}'},CustomModelData:2003,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_fireball_tnt"]}} 4