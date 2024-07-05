#as at block



function tetrablock:collision/clock_check
execute unless entity @s[tag=on_clock] run function tetrablock:moving/spin_clock


execute unless score @s did_rotate matches 1.. at @s positioned ~ ~ ~1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 1
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~ ~-1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 2
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-1 ~ run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 15
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-1 ~1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 3
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-1 ~-1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 4
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-2 ~ run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 7
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-2 ~1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 9
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~-2 ~-1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 10
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~1 ~ run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 16
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~1 ~1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 5
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~1 ~-1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 6
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~2 ~ run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 8
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~2 ~1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 11
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~2 ~-1 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1..2 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 12
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock


execute unless score @s did_rotate matches 1.. at @s positioned ~ ~ ~2 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 13
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock

execute unless score @s did_rotate matches 1.. at @s positioned ~ ~ ~-2 run function tetrablock:collision/clock_check
execute if score $wall_kicks sign matches 1 run tag @s add on_clock
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run scoreboard players set @s wall_kick 14
execute unless entity @s[tag=on_clock] unless score @s did_rotate matches 1.. run function tetrablock:moving/spin_clock




scoreboard players reset @s did_rotate

tag @e[tag=on_clock] remove on_clock