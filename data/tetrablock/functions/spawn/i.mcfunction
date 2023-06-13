#as at spawn
summon armor_stand ~ ~-2 ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["I","new_block","block","tetrablock","center","r1"]}

execute if entity @s[tag=spawn1] run tag @e[tag=new_block] add block1
execute if entity @s[tag=spawn2] run tag @e[tag=new_block] add block2
execute if entity @s[tag=spawn3] run tag @e[tag=new_block] add block3
execute if entity @s[tag=spawn4] run tag @e[tag=new_block] add block4
execute if entity @s[tag=spawn5] run tag @e[tag=new_block] add block5
execute if entity @s[tag=spawn6] run tag @e[tag=new_block] add block6
execute if entity @s[tag=spawn7] run tag @e[tag=new_block] add block7
execute if entity @s[tag=spawn8] run tag @e[tag=new_block] add block8

tag @e[tag=new_block] remove new_block

