recipe take @s cs_tnts:foraging_recipe

advancement revoke @s only cs_tnts:foraging_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Foraging TNT","italic":false}'},CustomModelData:2006,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_foraging_tnt"]}} 4