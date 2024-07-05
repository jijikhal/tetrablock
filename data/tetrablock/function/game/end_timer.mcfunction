scoreboard players remove $end_timer sign 1
execute store result bossbar end_timer value run scoreboard players get $end_timer sign
execute if score $end_timer sign matches ..0 run function tetrablock:game/game_end