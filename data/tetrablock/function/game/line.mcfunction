fill ~ ~ ~ ~ ~ ~9 air destroy
function tetrablock:game/move_lines
execute as @e[tag=spawn,limit=1,sort=nearest] at @s run function tetrablock:game/check_lines

scoreboard players add @p[team=player] lines 1