#as at players
execute if block ~ ~ ~ glass_pane run scoreboard players set @s controler 1
execute if block ~ ~ ~ pink_stained_glass_pane run scoreboard players set @s controler 2
execute if block ~ ~ ~ air run scoreboard players set @s controler 0
execute if block ~ ~ ~ pink_stained_glass_pane if score @s controler matches 1.. positioned ~ ~ ~1 align z positioned ~ ~ ~0.5 run tp @s ~ ~ ~
execute if block ~ ~ ~ glass_pane if score @s controler matches 1.. positioned ~ ~ ~-1 align z positioned ~ ~ ~0.5 run tp @s ~ ~ ~


