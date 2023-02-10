recipe take @s cs_tnts:boulder_recipe

advancement revoke @s only cs_tnts:boulder_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Boulder TNT","italic":false}'},CustomModelData:2000,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_boulder_tnt"]}} 4