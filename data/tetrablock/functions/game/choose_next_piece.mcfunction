#as at spawn
execute if score $random sign matches 1 run execute store result score @s current_block run scoreboard players get @s next_block_1
execute if score $random sign matches 1 run execute store result score @s next_block_1 run loot spawn ~ ~ ~ loot tetrablock:random

execute if score $random sign matches 2 unless score @s next_block_2 matches -1000..1000 run function tetrablock:game/pseudorandom
execute if score $random sign matches 2 if score @s next_block_2 matches 99 run function tetrablock:game/pseudorandom
execute if score $random sign matches 2 store result score @s current_block run scoreboard players get @s next_block_1
execute if score $random sign matches 2 store result score @s next_block_1 run scoreboard players get @s next_block_2
execute if score $random sign matches 2 store result score @s next_block_2 run scoreboard players get @s next_block_3
execute if score $random sign matches 2 store result score @s next_block_3 run scoreboard players get @s next_block_4
execute if score $random sign matches 2 store result score @s next_block_4 run scoreboard players get @s next_block_5
execute if score $random sign matches 2 store result score @s next_block_5 run scoreboard players get @s next_block_6
execute if score $random sign matches 2 store result score @s next_block_6 run scoreboard players get @s next_block_7
execute if score $random sign matches 2 store result score @s next_block_7 run scoreboard players get @s next_block_8
execute if score $random sign matches 2 store result score @s next_block_8 run scoreboard players get @s next_block_9
