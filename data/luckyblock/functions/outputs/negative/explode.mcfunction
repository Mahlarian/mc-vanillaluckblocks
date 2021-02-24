# Location assignment
execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["explode_spawn"]}
# Main script
execute at @e[tag=explode_spawn] run summon creeper ~ ~ ~ {powered:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Lucky Block","color":"yellow"}'}
# Cleanup
execute as @e[tag=explode_spawn] run kill @s