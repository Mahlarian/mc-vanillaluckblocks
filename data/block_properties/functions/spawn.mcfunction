execute at @s run setblock ~ ~ ~ yellow_wool
execute at @s run summon item_frame ~ ~1 ~ {Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["lb_block"],Item:{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{CustomModelData:1}}}
kill @s[type=area_effect_cloud,tag=lb_placeholder]