# generate random number, then reset min/max values
function fafik77:rng/rand
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 0
# redirect to function based on returned outut
execute if score number RNG_77 matches 0 run function luckyblock:outputs/positive/xp_fountain
execute if score number RNG_77 matches 1 run function luckyblock:outputs/negative/explode
execute if score number RNG_77 matches 2 run function luckyblock:outputs/negative/anvil_crush
execute if score number RNG_77 matches 3 run function luckyblock:outputs/positive/romance_rose
execute if score number RNG_77 matches 4 run function luckyblock:outputs/negative/creeper_spawn
execute if score number RNG_77 matches 5 run function luckyblock:outputs/negative/rd_jar
execute if score number RNG_77 matches 6 run function luckyblock:outputs/positive/ore_tower