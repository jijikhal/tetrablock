#as at blocks
function tetrablock:render/final_render

execute if entity @s[tag=block1] run scoreboard players set @e[tag=spawn1] saved_this_r 0
execute if entity @s[tag=block2] run scoreboard players set @e[tag=spawn2] saved_this_r 0
execute if entity @s[tag=block3] run scoreboard players set @e[tag=spawn3] saved_this_r 0
execute if entity @s[tag=block4] run scoreboard players set @e[tag=spawn4] saved_this_r 0
execute if entity @s[tag=block5] run scoreboard players set @e[tag=spawn5] saved_this_r 0
execute if entity @s[tag=block6] run scoreboard players set @e[tag=spawn6] saved_this_r 0
execute if entity @s[tag=block7] run scoreboard players set @e[tag=spawn7] saved_this_r 0
execute if entity @s[tag=block8] run scoreboard players set @e[tag=spawn8] saved_this_r 0

execute if entity @s[tag=block1] run scoreboard players add @e[tag=player1] total_pieces 1
execute if entity @s[tag=block2] run scoreboard players add @e[tag=player2] total_pieces 1
execute if entity @s[tag=block3] run scoreboard players add @e[tag=player3] total_pieces 1
execute if entity @s[tag=block4] run scoreboard players add @e[tag=player4] total_pieces 1
execute if entity @s[tag=block5] run scoreboard players add @e[tag=player5] total_pieces 1
execute if entity @s[tag=block6] run scoreboard players add @e[tag=player6] total_pieces 1
execute if entity @s[tag=block7] run scoreboard players add @e[tag=player7] total_pieces 1
execute if entity @s[tag=block8] run scoreboard players add @e[tag=player8] total_pieces 1

execute if entity @s[tag=block1] run scoreboard players reset @e[tag=spawn1] current_block
execute if entity @s[tag=block2] run scoreboard players reset @e[tag=spawn2] current_block
execute if entity @s[tag=block3] run scoreboard players reset @e[tag=spawn3] current_block
execute if entity @s[tag=block4] run scoreboard players reset @e[tag=spawn4] current_block
execute if entity @s[tag=block5] run scoreboard players reset @e[tag=spawn5] current_block
execute if entity @s[tag=block6] run scoreboard players reset @e[tag=spawn6] current_block
execute if entity @s[tag=block7] run scoreboard players reset @e[tag=spawn7] current_block
execute if entity @s[tag=block8] run scoreboard players reset @e[tag=spawn8] current_block

execute if entity @s[tag=block1] run scoreboard players set @e[tag=player1] no_shift_period 1
execute if entity @s[tag=block2] run scoreboard players set @e[tag=player2] no_shift_period 1
execute if entity @s[tag=block3] run scoreboard players set @e[tag=player3] no_shift_period 1
execute if entity @s[tag=block4] run scoreboard players set @e[tag=player4] no_shift_period 1
execute if entity @s[tag=block5] run scoreboard players set @e[tag=player5] no_shift_period 1
execute if entity @s[tag=block6] run scoreboard players set @e[tag=player6] no_shift_period 1
execute if entity @s[tag=block7] run scoreboard players set @e[tag=player7] no_shift_period 1
execute if entity @s[tag=block8] run scoreboard players set @e[tag=player8] no_shift_period 1

execute if entity @s[tag=block1] as @e[tag=player1] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block2] as @e[tag=player2] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block3] as @e[tag=player3] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block4] as @e[tag=player4] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block5] as @e[tag=player5] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block6] as @e[tag=player6] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block7] as @e[tag=player7] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1
execute if entity @s[tag=block8] as @e[tag=player8] at @s run scoreboard players remove @s[scores={ice_timer=1..}] ice_timer 1

execute if score $mode sign matches 4 if entity @s[tag=block1] as @e[tag=player1] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block2] as @e[tag=player2] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block3] as @e[tag=player3] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block4] as @e[tag=player4] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block5] as @e[tag=player5] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block6] as @e[tag=player6] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block7] as @e[tag=player7] at @s run function tetrablock:render/render_pieces_count
execute if score $mode sign matches 4 if entity @s[tag=block8] as @e[tag=player8] at @s run function tetrablock:render/render_pieces_count

kill @s

execute unless score $mode sign matches 4 as @e[tag=spawn,limit=1,sort=nearest] at @s run function tetrablock:game/check_lines

