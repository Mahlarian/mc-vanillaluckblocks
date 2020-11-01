execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["explode_spawn"]}
execute at @e[tag=explode_spawn] run summon creeper ~ ~ ~ {powered:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Lucky Block","color":"yellow"}'}
execute as @e[tag=explode_spawn] run kill @s