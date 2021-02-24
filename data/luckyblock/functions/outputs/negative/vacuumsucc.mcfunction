# Timer initialization
schedule function luckyblock:outputs/negative/vacuumsucc 1t
scoreboard players add vacuum_t lb_timer 1
# Location assignment
execute if score vacuum_t lb_timer matches 1 as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["vacuum_entity"]}
# Main script
execute if score vacuum_t lb_timer matches 2..200 at @e[tag=vacuum_entity] as @e[distance=..25,type=!area_effect_cloud,type=!player,type=!item_frame] at @s run tp @s ^ ^ ^0.1 facing entity @e[sort=nearest,limit=1,tag=vacuum_entity]
execute if score vacuum_t lb_timer matches 2..200 at @e[tag=vacuum_entity] as @e[distance=5..25,type=player] at @s run tp @s ^ ^0.1 ^0.2 facing entity @e[sort=nearest,limit=1,tag=vacuum_entity]
# Cleanup
execute if score vacuum_t lb_timer matches 200.. run schedule clear luckyblock:outputs/negative/vacuumsucc
execute as @e[tag=vacuum_entity] if score vacuum_t lb_timer matches 200.. run kill @s
execute if score vacuum_t lb_timer matches 200.. run scoreboard players set vacuum_t lb_timer 0