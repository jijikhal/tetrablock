#as at spawn
execute unless score @s current_block matches 1..7 as @s run function tetrablock:game/choose_next_piece



execute if score $next_piece sign matches 1 run fill ~ ~-11 ~-7 ~ ~-13 ~-10 air
execute if score $next_piece sign matches 1 as @s at @s positioned ~ ~-12 ~-9 run function tetrablock:render/next_piece_render


execute if score @s current_block matches 1 run function tetrablock:spawn/t
execute if score @s current_block matches 2 run function tetrablock:spawn/l
execute if score @s current_block matches 3 run function tetrablock:spawn/j
execute if score @s current_block matches 4 run function tetrablock:spawn/i
execute if score @s current_block matches 5 run function tetrablock:spawn/s
execute if score @s current_block matches 6 run function tetrablock:spawn/z
execute if score @s current_block matches 7 run function tetrablock:spawn/o



