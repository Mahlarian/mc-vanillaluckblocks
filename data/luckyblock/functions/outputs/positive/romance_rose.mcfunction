execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["itemrose_spawn"]}
execute at @e[tag=itemrose_spawn] run summon item ~ ~ ~ {Item:{id:"minecraft:poppy",Count:1b,tag:{display:{Name:'{"text":"Romantic Rose","color":"red","italic":false}',Lore:['{"text":"My heart melts for you!","color":"white","italic":true}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:10s}]}}}
execute as @e[tag=itemrose_spawn] run kill @s