# Timer Initialization
schedule function luckyblock:outputs/positive/ore_tower 1t
scoreboard players add oretower_t lb_timer 1
# Location assignment
execute if score oretower_t lb_timer matches 1 as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["ore_location"]}
# Main script
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 1 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:iron_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 5 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:iron_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 10 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:iron_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 15 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:gold_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 20 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:gold_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 25 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:gold_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 30 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:diamond_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 35 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:diamond_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 40 run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:emerald_ore"},Time:1}
execute at @e[tag=ore_location] if score oretower_t lb_timer matches 60 run summon lightning_bolt ~ ~10 ~
# Cleanup
execute if score oretower_t lb_timer matches 61.. run schedule clear luckyblock:outputs/positive/ore_tower
execute as @e[tag=ore_location] if score oretower_t lb_timer matches 61.. run kill @s
execute if score oretower_t lb_timer matches 61.. run scoreboard players set oretower_t lb_timer 0