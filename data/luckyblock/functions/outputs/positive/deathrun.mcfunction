# Timer initialization
schedule function luckyblock:outputs/positive/deathrun 1t
scoreboard players add deathrun_t lb_timer 1
# Location assignment
execute if score deathrun_t lb_timer matches 1 as @e[tag=lb_breaklocation] at @p run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["dr_locator"]}
execute if score deathrun_t lb_timer matches 1 as @e[tag=lb_breaklocation] run kill @s
# Main script
execute if score deathrun_t lb_timer matches 40..1024 as @a[tag=dr_player] at @s if block ~ ~ ~ water run kill @s
execute if score deathrun_t lb_timer matches 40..1024 as @a[scores={lb_deathcount=1..},gamemode=adventure,tag=dr_player] run gamemode survival @s
execute if score deathrun_t lb_timer matches 40..1024 as @a[tag=dr_player,scores={lb_deathcount=1..}] run tag @s remove dr_player 
execute if score deathrun_t lb_timer matches 40..1024 as @e[tag=dr_locator] at @s unless entity @a[tag=dr_player,distance=..25] run scoreboard players set deathrun_t lb_timer 1024
execute if score deathrun_t lb_timer matches 1 run scoreboard players set min RNG_77 0
execute if score deathrun_t lb_timer matches 1 run scoreboard players set max RNG_77 3
execute if score deathrun_t lb_timer matches 1 run scoreboard objectives add lb_deathcount deathCount
execute if score deathrun_t lb_timer matches 2 run function fafik77:rng/rand
execute if score deathrun_t lb_timer matches 3 if score number RNG_77 matches 0 as @e[tag=dr_locator] at @s run setblock ~ ~3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:-3,sizeX:11,posZ:-5,integrity:1.0f,showair:0b,name:"luckyblock:deathrun_b",sizeY:18,sizeZ:11}
execute if score deathrun_t lb_timer matches 3 if score number RNG_77 matches 1 as @e[tag=dr_locator] at @s run setblock ~ ~3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:-3,sizeX:11,posZ:-5,integrity:1.0f,showair:0b,name:"luckyblock:deathrun_r",sizeY:18,sizeZ:11}
execute if score deathrun_t lb_timer matches 3 if score number RNG_77 matches 2 as @e[tag=dr_locator] at @s run setblock ~ ~3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:-3,sizeX:11,posZ:-5,integrity:1.0f,showair:0b,name:"luckyblock:deathrun_y",sizeY:18,sizeZ:11}
execute if score deathrun_t lb_timer matches 3 if score number RNG_77 matches 3 as @e[tag=dr_locator] at @s run setblock ~ ~3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:-3,sizeX:11,posZ:-5,integrity:1.0f,showair:0b,name:"luckyblock:deathrun_g",sizeY:18,sizeZ:11} 
execute if score deathrun_t lb_timer matches 3 as @e[tag=dr_locator] at @s run setblock ~ ~4 ~ redstone_block
execute if score deathrun_t lb_timer matches 4 as @e[tag=dr_locator] at @s run setblock ~ ~4 ~ air
execute if score deathrun_t lb_timer matches 4 as @e[tag=dr_locator] at @s run setblock ~ ~3 ~ air
execute if score deathrun_t lb_timer matches 4 as @e[tag=dr_locator] at @s run tag @a[distance=..25] add dr_player
execute if score deathrun_t lb_timer matches 4 as @e[tag=dr_locator] at @s run tp @a[tag=dr_player] ~ ~1 ~
execute if score deathrun_t lb_timer matches 4 as @e[tag=dr_locator] at @s run gamemode adventure @a[gamemode=survival,tag=dr_player]
execute if score deathrun_t lb_timer matches 4 run tellraw @a[tag=dr_player] {"text":"Warning: Water is lethal","color":"red"}
execute if score deathrun_t lb_timer matches 84 run playsound block.note_block.pling master @a[tag=dr_player] ~ ~ ~ 1000 0.5
execute if score deathrun_t lb_timer matches 84 run tellraw @a[tag=dr_player] {"text":"Water levels are rising!","color":"red"}
execute if score deathrun_t lb_timer matches 104 as @e[tag=dr_locator] at @s run fill ~4 ~ ~4 ~-4 ~ ~-4 water replace air
execute if score deathrun_t lb_timer matches 164 as @e[tag=dr_locator] at @s run fill ~4 ~1 ~4 ~-4 ~1 ~-4 water replace air
execute if score deathrun_t lb_timer matches 224 as @e[tag=dr_locator] at @s run fill ~4 ~2 ~4 ~-4 ~2 ~-4 water replace air
execute if score deathrun_t lb_timer matches 284 as @e[tag=dr_locator] at @s run fill ~4 ~3 ~4 ~-4 ~3 ~-4 water replace air
execute if score deathrun_t lb_timer matches 344 as @e[tag=dr_locator] at @s run fill ~4 ~4 ~4 ~-4 ~4 ~-4 water replace air
execute if score deathrun_t lb_timer matches 404 as @e[tag=dr_locator] at @s run fill ~4 ~5 ~4 ~-4 ~5 ~-4 water replace air
execute if score deathrun_t lb_timer matches 464 as @e[tag=dr_locator] at @s run fill ~4 ~6 ~4 ~-4 ~6 ~-4 water replace air
execute if score deathrun_t lb_timer matches 524 as @e[tag=dr_locator] at @s run fill ~4 ~7 ~4 ~-4 ~7 ~-4 water replace air
execute if score deathrun_t lb_timer matches 584 as @e[tag=dr_locator] at @s run fill ~4 ~8 ~4 ~-4 ~8 ~-4 water replace air
execute if score deathrun_t lb_timer matches 644 as @e[tag=dr_locator] at @s run fill ~4 ~9 ~4 ~-4 ~9 ~-4 water replace air
execute if score deathrun_t lb_timer matches 704 as @e[tag=dr_locator] at @s run fill ~4 ~10 ~4 ~-4 ~10 ~-4 water replace air
execute if score deathrun_t lb_timer matches 764 as @e[tag=dr_locator] at @s run fill ~4 ~11 ~4 ~-4 ~11 ~-4 water replace air
execute if score deathrun_t lb_timer matches 824 as @e[tag=dr_locator] at @s run fill ~4 ~12 ~4 ~-4 ~12 ~-4 water replace air
execute if score deathrun_t lb_timer matches 904 as @e[tag=dr_locator] at @s run fill ~4 ~13 ~4 ~-4 ~13 ~-4 water replace air
execute if score deathrun_t lb_timer matches 964 as @e[tag=dr_locator] at @s run fill ~4 ~14 ~4 ~-4 ~14 ~-4 water replace air
# Cleanup
execute if score deathrun_t lb_timer matches 1024 as @e[tag=dr_locator] at @s run fill ~-5 ~ ~-5 ~5 ~17 ~5 air
execute if score deathrun_t lb_timer matches 1024 as @e[tag=dr_locator] at @s run kill @e[distance=..25,type=item]
execute if score deathrun_t lb_timer matches 1024 as @a[tag=dr_player,gamemode=adventure] run gamemode survival @s
execute if score deathrun_t lb_timer matches 1024 run tag @a[tag=dr_player] remove dr_player
execute if score deathrun_t lb_timer matches 1024 run scoreboard objectives remove lb_deathcount
execute if score deathrun_t lb_timer matches 1024.. run schedule clear luckyblock:outputs/positive/deathrun
execute as @e[tag=dr_locator] if score deathrun_t lb_timer matches 1024.. run kill @s
execute if score deathrun_t lb_timer matches 1024.. run scoreboard players reset deathrun_t lb_timer