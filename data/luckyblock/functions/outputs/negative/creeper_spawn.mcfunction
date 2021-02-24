# Location assignment
execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["creeperbehind_spawn"]}
# Main script
execute at @e[tag=creeperbehind_spawn] at @p run summon creeper ^ ^ ^-2 {ignited:1b}
# Cleanup
execute as @e[tag=creeperbehind_spawn] run kill @s