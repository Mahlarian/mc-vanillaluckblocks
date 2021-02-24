# Idea by Evil
#
# Timer initialization
schedule function luckyblock:outputs/positive/salmon_fly 1t
scoreboard players add salmonfly_t lb_timer 1
# Location assignment
execute as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["salmon_locator"]}
# Main script
execute if score salmonfly_t lb_timer matches 1 as @e[tag=salmon_locator] at @s run summon salmon ~ ~ ~ {Tags:["salmonfly"],Invulnerable:1b,ActiveEffects:[{Id:25b,Amplifier:1b,Duration:400,ShowParticles:0b}]}
execute if score salmonfly_t lb_timer matches 1 as @e[tag=salmon_locator] at @s run playsound music_disc.blocks master @a ~ ~ ~ 10 1
execute if score salmonfly_t lb_timer matches 399 as @e[tag=salmonfly] at @s run particle cloud ~ ~ ~ 3 3 3 0.2 200 force
execute if score salmonfly_t lb_timer matches 399 as @e[tag=salmonfly] at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 10 1
execute if score salmonfly_t lb_timer matches 399 as @e[tag=salmonfly] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 10 1
execute if score salmonfly_t lb_timer matches 399 as @e[tag=salmonfly] at @s run stopsound @a[distance=..40] master music_disc.blocks
execute if score salmonfly_t lb_timer matches 399 as @e[tag=salmonfly] run kill @s
# Cleanup
execute if score salmonfly_t lb_timer matches 400.. run schedule clear luckyblock:outputs/positive/salmon_fly
execute as @e[tag=salmon_locator] if score salmonfly_t lb_timer matches 400.. run kill @s
execute if score salmonfly_t lb_timer matches 400.. run scoreboard players reset salmonfly_t lb_timer