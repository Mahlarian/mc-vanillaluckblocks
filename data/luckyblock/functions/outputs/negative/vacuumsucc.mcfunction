# increment timer
schedule function luckyblock:outputs/negative/vacuumsucc 1t
scoreboard players add tick lb_timer 1
# location assignment
execute if score tick lb_timer matches 1 as @e[tag=lb_breaklocation] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["vacuum_entity"]}
# main script here
execute if score tick lb_timer matches 2..200 at @e[tag=vacuum_entity] as @e[distance=..25,type=!area_effect_cloud,type=!player,type=!item_frame] at @s run tp @s ^ ^ ^0.1 facing entity @e[sort=nearest,limit=1,tag=vacuum_entity]
execute if score tick lb_timer matches 2..200 at @e[tag=vacuum_entity] as @e[distance=5..25,type=player] at @s run tp @s ^ ^0.1 ^0.1 facing entity @e[sort=nearest,limit=1,tag=vacuum_entity]
# cleanup
execute if score tick lb_timer matches 200.. run schedule clear luckyblock:outputs/negative/vacuumsucc
execute as @e[tag=vacuum_entity] if score tick lb_timer matches 200.. run kill @s
execute if score tick lb_timer matches 200.. run scoreboard players set tick lb_timer 0