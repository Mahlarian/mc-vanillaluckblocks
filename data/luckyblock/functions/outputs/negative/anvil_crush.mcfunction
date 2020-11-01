execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["anvil_spawn"]}
execute at @e[tag=anvil_spawn] at @p run summon falling_block ~ ~25 ~ {BlockState:{Name:"minecraft:anvil"},Time:1}
execute as @e[tag=anvil_spawn] run kill @s