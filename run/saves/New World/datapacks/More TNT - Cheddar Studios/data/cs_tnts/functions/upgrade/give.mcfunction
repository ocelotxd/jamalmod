recipe take @s cs_tnts:upgrade_recipe

advancement revoke @s only cs_tnts:upgrade_crafted

clear @s minecraft:knowledge_book

give @p item_frame{display:{Name:'{"text":"Ore Upgrade TNT","italic":false}'},CustomModelData:2011,EntityTag:{Silent:1b,Invisible:1b,Tags:["new_upgrade_tnt"]}} 4