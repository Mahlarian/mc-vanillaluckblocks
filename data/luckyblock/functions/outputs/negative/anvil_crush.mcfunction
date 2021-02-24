# Location assignment
execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["anvil_spawn"]}
# Main script
execute at @e[tag=anvil_spawn] at @p align xz positioned ~0.5 ~ ~0.5 run summon falling_block ~ ~25 ~ {BlockState:{Name:"minecraft:anvil"},Time:1}
# Cleanup
execute as @e[tag=anvil_spawn] run kill @s