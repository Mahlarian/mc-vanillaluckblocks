execute at @s run summon area_effect_cloud ~ ~ ~ {Radius:0f,WaitTime:-20,Tags:["lb_breaklocation"]}
kill @s[tag=lb_block,type=item_frame]
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 6
function luckyblock:outputs/directory
say run