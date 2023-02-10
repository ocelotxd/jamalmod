recipe take @s cs_tnts:mining_recipe

advancement revoke @s only cs_tnts:mining_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Mining TNT","italic":false}'},CustomModelData:2004,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_mining_tnt"]}} 4