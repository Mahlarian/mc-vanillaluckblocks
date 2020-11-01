scoreboard objectives add lb_timer dummy
execute unless score tick lb_timer matches -2147483648..2147483647 run scoreboard players set tick lb_timer 0