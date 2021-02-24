execute at @s unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["lb_breaklocation"]}
execute at @s run stopsound @a[distance=..7] block 
execute at @s run stopsound @a[distance=..7] block
execute at @s run playsound block.stone.break block @a ~ ~ ~ 1 0.8
execute at @s run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:yellow_wool",Count:1b}}]
kill @s[tag=lb_block,type=item_frame]
tellraw @p {"score":{"name":"number","objective":"RNG_77"}}
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run scoreboard players set min RNG_77 8
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run scoreboard players set max RNG_77 8
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run function luckyblock:outputs/directory
execute if entity @p[gamemode=!creative,nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run summon item ~ ~ ~ {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Lucky Block","color":"yellow","italic":false}',Lore:['{"text":"How will luck treat you?","color":"white","italic":true}']},CustomModelData:1,EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,Age:-500,Tags:["lb_placeholder"]}}}}