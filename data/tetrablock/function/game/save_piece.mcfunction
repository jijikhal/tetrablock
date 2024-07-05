#as at spawn


execute if score @s saved_before matches 1 store result score @s score_buffer run scoreboard players get @s saved
execute store result score @s saved run scoreboard players get @s current_block
execute if score @s saved_before matches 1 store result score @s current_block run scoreboard players get @s score_buffer
execute unless score @s saved_before matches 1 run scoreboard players reset @s current_block
scoreboard players set @s saved_this_r 1
scoreboard players set @s saved_before 1



execute positioned ~ ~2 ~2 run function tetrablock:game/saved_piece_render


execute if entity @s[tag=spawn1] run kill @e[tag=block,tag=block1]
execute if entity @s[tag=spawn2] run kill @e[tag=block,tag=block2]
execute if entity @s[tag=spawn3] run kill @e[tag=block,tag=block3]
execute if entity @s[tag=spawn4] run kill @e[tag=block,tag=block4]
execute if entity @s[tag=spawn5] run kill @e[tag=block,tag=block5]
execute if entity @s[tag=spawn6] run kill @e[tag=block,tag=block6]
execute if entity @s[tag=spawn7] run kill @e[tag=block,tag=block7]
execute if entity @s[tag=spawn8] run kill @e[tag=block,tag=block8]