execute if score $tut_control sign matches 1.. run scoreboard players add $tut_timer sign 1
execute if score $tut_control sign matches 1 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text":"To move the pieces left and right use "},{"keybind": "key.left","bold": true},{"text": " and ","bold": false},{"keybind": "key.right","bold": true}]
execute if score $tut_control sign matches 2 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "You can also ","bold": false},{"text": "right-click","bold": true},{"text": " the corresponding items in your hotbar","bold": false}]
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 1 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 1 run clone 90 96 -43 90 97 -41 90 103 -43
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 21 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 21 run clone 90 96 -43 90 97 -41 90 103 -42
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 41 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 41 run clone 90 96 -43 90 97 -41 90 103 -43
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 61 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 61 run clone 90 96 -43 90 97 -41 90 103 -44
execute if score $tut_control sign matches 1..2 if score $tut_timer sign matches 81 run scoreboard players reset $tut_timer sign

execute if score $tut_control sign matches 3 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "","bold": false},{"text": "Right-click","bold": true},{"text": " the corresponding items in your hotbar to rotate the piece","bold": false}]
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 1 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 1 run clone 90 96 -43 90 97 -41 90 103 -43
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 21 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 21 run clone 90 98 -39 90 96 -38 90 102 -42
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 41 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 41 run clone 90 97 -36 90 96 -34 90 102 -43
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 61 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 61 run clone 90 98 -32 90 96 -31 90 102 -43
execute if score $tut_control sign matches 3 if score $tut_timer sign matches 81 run scoreboard players reset $tut_timer sign

execute if score $tut_control sign matches 4 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "The pieces move down automatically but you can make them fall faster with ","bold": false},{"keybind": "key.sneak","bold": true},{"text": "","bold": false}]
execute if score $tut_control sign matches 5 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "Once the piece hits the ground, it gets darker and you can no longer move it","bold": false}]
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 1 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 1 run clone 90 96 -43 90 97 -41 90 104 -42
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 21 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 21 run clone 90 96 -43 90 97 -41 90 103 -42
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 41 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 41 run clone 90 96 -43 90 97 -41 90 102 -42
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 61 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 61 run clone 90 96 -43 90 97 -41 90 101 -42
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 81 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 81 run clone 89 96 -43 89 97 -41 90 101 -42
execute if score $tut_control sign matches 4..5 if score $tut_timer sign matches 101 run scoreboard players reset $tut_timer sign

execute if score $tut_control sign matches 6 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "When you fill in an entire row, it will disappear and you will get rewarded with points","bold": false}]
execute if score $tut_control sign matches 7 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "If you get a piece that you don't like, you can save it for later with ","bold": false},{"keybind": "key.jump","bold": true }]
execute if score $tut_control sign matches 8 positioned 90 100 -42 run title @a[distance=..8,y_rotation=-180..0] actionbar [{"text": "You can get it back by pressing ","bold": false},{"keybind": "key.jump","bold": true },{"text": " again later","bold": false}]
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 1 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 1 run clone 89 96 -43 89 97 -41 90 101 -42
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 1 run clone 90 96 -46 90 97 -44 90 104 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 21 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 21 run clone 89 96 -43 89 97 -41 90 101 -42
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 21 run clone 90 96 -46 90 97 -44 90 103 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 41 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 41 run clone 100 96 -53 100 98 -49 90 101 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 61 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 61 run clone 99 96 -53 99 98 -49 90 101 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 81 run fill 90 105 -44 90 101 -40 air
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 81 run clone 98 96 -53 98 98 -49 90 101 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 85 run fill 90 101 -44 90 101 -40 air destroy
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 87 run clone 97 96 -53 97 97 -49 90 101 -44
execute if score $tut_control sign matches 6..8 if score $tut_timer sign matches 107 run scoreboard players reset $tut_timer sign

execute if score $tut_control sign matches 9 if score $tut_timer sign matches 1 run scoreboard players set $tut_control sign 1



