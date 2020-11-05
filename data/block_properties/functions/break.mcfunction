execute at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,WaitTime:-20,Tags:["lb_breaklocation"]}
execute at @s run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:yellow_wool",Count:1b}}]
kill @s[tag=lb_block,type=item_frame]
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 7
function luckyblock:outputs/directory