# Timer initialization
schedule function luckyblock:outputs/positive/xp_fountain 1t
scoreboard players add xpfountain_t lb_timer 1
# location assignment
execute if score xpfountain_t lb_timer matches 1 as @e[tag=lb_breaklocation] run data merge entity @s {Tags:["xporb_location"]}
# Main script
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 1 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[-0.2,0.5,0.2]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 5 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[0.0,0.5,0.2]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 10 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[-0.2,0.5,-0.2]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 15 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[0.0,0.5,-0.2]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 20 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[0.2,0.5,-0.0]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 25 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[0.2,0.5,0.2]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 30 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[-0.2,0.5,0.0]}
execute at @e[tag=xporb_location] if score xpfountain_t lb_timer matches 35 run summon experience_orb ~ ~1 ~ {Value:100,Motion:[0.2,0.5,-0.2]}
# Cleanup
execute if score xpfountain_t lb_timer matches 36.. run schedule clear luckyblock:outputs/positive/xp_fountain
execute as @e[tag=xporb_location] if score xpfountain_t lb_timer matches 36.. run kill @s
execute if score xpfountain_t lb_timer matches 36.. run scoreboard players set xpfountain_t lb_timer 0