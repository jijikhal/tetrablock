






execute store result score @s zpos run data get entity @s Pos[2] 1000
#execute if score @s zpos matches ..0 run scoreboard players operation @s zpos *= $n1 number
scoreboard players operation @s zpos /= $10 number
scoreboard players operation @s zpos %= $100 number


scoreboard players add @s still 1
execute if score @s walk matches 1.. run scoreboard players set @s still 0
execute unless score @s still matches 2.. run scoreboard players add @s das_counter 1
execute if score @s still matches 2.. run scoreboard players set @s das_counter 0
execute if score @s still matches 2.. run scoreboard players set @s arr_counter 0
scoreboard players set @s walk 0

execute if score @s das_counter matches 1 if score @s zpos matches ..49 unless score @s ice_timer matches 1.. run function tetrablock:moving/move_right
execute if score @s das_counter matches 1 if score @s zpos matches 51.. unless score @s ice_timer matches 1.. run function tetrablock:moving/move_left
execute if score @s das_counter > @s DAS run scoreboard players add @s arr_counter 1
execute if score @s arr_counter > @s ARR if score @s zpos matches ..49 unless score @s ice_timer matches 1.. run function tetrablock:moving/move_right
execute if score @s arr_counter > @s ARR if score @s zpos matches 51.. unless score @s ice_timer matches 1.. run function tetrablock:moving/move_left
execute if score @s arr_counter > @s ARR if score @s zpos matches ..49 run scoreboard players set @s arr_counter 0
execute if score @s arr_counter > @s ARR if score @s zpos matches 51.. run scoreboard players set @s arr_counter 0
#tellraw @s {"score": {"objective": "zpos","name": "@s"}}

execute if score @s still matches 2 align z run tp @s ~ ~ ~0.5
execute unless score @s zpos matches 50 align z run tp @s ~ ~ ~0.5
