# increment timer
schedule function luckyblock:outputs/negative/rd_jar 1t
scoreboard players add tick lb_timer 1
# location assignment
execute if score tick lb_timer matches 1 as @e[tag=lb_breaklocation] at @p run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["rdjar_spawn"]}
execute as @e[tag=lb_breaklocation] if score tick lb_timer matches 1 run kill @s
execute if score tick lb_timer matches 1 at @e[tag=rdjar_spawn] run setblock ~ ~3 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:-2,mode:"LOAD",posY:-4,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"luckyblock:bottle",sizeY:8,sizeZ:5}
execute if score tick lb_timer matches 1 at @e[tag=rdjar_spawn] run setblock ~ ~4 ~ minecraft:redstone_block
execute if score tick lb_timer matches 2 at @e[tag=rdjar_spawn] run setblock ~ ~3 ~ minecraft:air
execute if score tick lb_timer matches 2 at @e[tag=rdjar_spawn] run setblock ~ ~4 ~ minecraft:air
# main script here
execute if score tick lb_timer matches 20 at @e[tag=rdjar_spawn] run fill ~-1 ~ ~-1 ~1 ~ ~1 water
execute if score tick lb_timer matches 40 at @e[tag=rdjar_spawn] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 water
execute if score tick lb_timer matches 60 at @e[tag=rdjar_spawn] run fill ~-1 ~2 ~-1 ~1 ~2 ~1 water
execute if score tick lb_timer matches 80 at @e[tag=rdjar_spawn] run setblock ~ ~3 ~ water
execute if score tick lb_timer matches 100 at @e[tag=rdjar_spawn] run setblock ~ ~4 ~ water
execute if score tick lb_timer matches 120 at @e[tag=rdjar_spawn] run setblock ~ ~5 ~ water
# cleanup
execute if score tick lb_timer matches 121.. run schedule clear luckyblock:outputs/negative/rd_jar
execute as @e[tag=rdjar_spawn] if score tick lb_timer matches 121.. run kill @s
execute if score tick lb_timer matches 121.. run scoreboard players set tick lb_timer 0