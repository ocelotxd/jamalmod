recipe take @s cs_tnts:house_recipe

advancement revoke @s only cs_tnts:house_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"House TNT","italic":false}'},CustomModelData:2007,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_house_tnt"]}} 4