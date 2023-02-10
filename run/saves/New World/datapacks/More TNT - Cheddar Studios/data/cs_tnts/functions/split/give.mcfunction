recipe take @s cs_tnts:split_recipe

advancement revoke @s only cs_tnts:split_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Split TNT","italic":false}'},CustomModelData:2012,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_split_tnt"]}} 1