recipe take @s cs_tnts:food_recipe

advancement revoke @s only cs_tnts:food_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Food TNT","italic":false}'},CustomModelData:2013,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_food_tnt"]}} 4