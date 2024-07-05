execute unless score $game_in_progress sign matches 1 run scoreboard players add @a stand_lobby 1
execute unless score $game_in_progress sign matches 1 as @a if score @s walk_lobby matches 1.. run scoreboard players set @s stand_lobby 0
execute unless score $game_in_progress sign matches 1 as @a if score @s stand_lobby matches ..10 run effect give @s speed 1 4 true
execute unless score $game_in_progress sign matches 1 as @a if score @s[nbt={OnGround:1b}] stand_lobby matches 10.. run effect clear @s speed
scoreboard players set @a walk_lobby 0

#starting lvl selection
execute unless block 55 100 -56 oak_wall_sign run setblock 55 100 -56 minecraft:acacia_wall_sign[facing=north,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 1"},"text":""}','{"text":""}','{"bold":true,"text":"              <<"}','{"text":""}']}}
execute unless block 54 100 -56 oak_wall_sign run setblock 54 100 -56 minecraft:birch_wall_sign[facing=north,waterlogged=false]
execute unless block 53 100 -56 oak_wall_sign run setblock 53 100 -56 minecraft:crimson_wall_sign[facing=north,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 5"},"text":""}','{"text":""}','{"bold":true,"text":">>                  "}','{"text":""}']}}
scoreboard players enable @a sign
execute if entity @a[scores={sign=1}] run scoreboard players remove $start_lvl sign 1
execute if entity @a[scores={sign=5}] run scoreboard players add $start_lvl sign 1
execute if score $start_lvl sign matches 21.. run scoreboard players set $start_lvl sign 20
execute if score $start_lvl sign matches ..0 run scoreboard players set $start_lvl sign 1
execute if entity @a[scores={sign=1}] run function tetrablock:lobby_scoreboard
execute if entity @a[scores={sign=5}] run function tetrablock:lobby_scoreboard
data merge block 54 100 -56 {front_text:{messages:['{"text":""}','{"text":"Start at level:","bold":true}','{"score":{"name":"$start_lvl","objective":"sign"},"bold":true}','{"text":""}']}}
execute unless block 54 100 -64 oak_wall_sign run setblock 54 100 -64 minecraft:oak_wall_sign[facing=south,waterlogged=false]

#gamemode
execute if score $game_in_progress sign matches 1 as @a[scores={sign=9}] run scoreboard players reset @s sign
execute if entity @a[scores={sign=9}] run scoreboard players add $mode sign 1
execute if score $mode sign matches 5 run scoreboard players set $mode sign 1
execute if entity @a[scores={sign=9}] run function tetrablock:lobby_scoreboard
execute if score $mode sign matches 1 run data merge block 54 100 -64 {front_text:{messages:['{"text":"Game mode:","clickEvent":{"action":"run_command","value":"trigger sign set 9"},"bold":true}','{"text":"Highscore","bold":true,"color":"yellow"}','{"text":"1-8 players","bold":false}','{"text":"(Right-click)","bold":false,"italic":true,"color":"#555555"}']}}
execute if score $mode sign matches 2 run data merge block 54 100 -64 {front_text:{messages:['{"text":"Game mode:","clickEvent":{"action":"run_command","value":"trigger sign set 9"},"bold":true}','{"text":"Battle","bold":true,"color":"red"}','{"text":"2-8 players","bold":false}','{"text":"(Right-click)","bold":false,"italic":true,"color":"#555555"}']}}
execute if score $mode sign matches 3 run data merge block 54 100 -64 {front_text:{messages:['{"text":"Game mode:","clickEvent":{"action":"run_command","value":"trigger sign set 9"},"bold":true}','{"text":"Most Lines","bold":true,"color":"aqua"}','{"text":"1-8 players","bold":false}','{"text":"(Right-click)","bold":false,"italic":true,"color":"#555555"}']}}
execute if score $mode sign matches 4 run data merge block 54 100 -64 {front_text:{messages:['{"text":"Game mode:","clickEvent":{"action":"run_command","value":"trigger sign set 9"},"bold":true}','{"text":"Most Pieces","bold":true,"color":"green"}','{"text":"1-8 players","bold":false}','{"text":"(Right-click)","bold":false,"italic":true,"color":"#555555"}']}}
#show next piece option
execute if score $game_in_progress sign matches 1 if score $next_piece sign matches 1 if block 78 100 -89 lever[powered=false] run setblock 78 100 -89 minecraft:lever[face=wall,facing=south,powered=true]
execute if score $game_in_progress sign matches 1 if score $next_piece sign matches 0 if block 78 100 -89 lever[powered=true] run setblock 78 100 -89 minecraft:lever[face=wall,facing=south,powered=false]
execute unless block 78 101 -89 oak_wall_sign run setblock 78 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 25"},"text":""}','{"bold":true,"color":"black","text":"Show next"}','{"bold":true,"color":"black","text":"piece"}','{"text":""}']}}
execute if block 78 100 -89 lever[powered=true] unless block 78 100 -90 lime_concrete run setblock 78 100 -90 lime_concrete
execute if block 78 100 -89 lever[powered=false] unless block 78 100 -90 red_concrete run setblock 78 100 -90 red_concrete
execute if block 78 100 -89 lever[powered=false] unless score $next_piece sign matches 0 run scoreboard players set $next_piece sign 0
execute if block 78 100 -89 lever[powered=true] unless score $next_piece sign matches 1 run scoreboard players set $next_piece sign 1
execute as @a[scores={sign=25}] run tellraw @s [{"text":"When this option is switched on, you will get a preview of the next piece you'll get"}]
#saving pieces option
execute if score $game_in_progress sign matches 1 if score $save sign matches 1 if block 80 100 -89 lever[powered=false] run setblock 80 100 -89 minecraft:lever[face=wall,facing=south,powered=true]
execute if score $game_in_progress sign matches 1 if score $save sign matches 0 if block 80 100 -89 lever[powered=true] run setblock 80 100 -89 minecraft:lever[face=wall,facing=south,powered=false]
execute unless block 80 101 -89 oak_wall_sign run setblock 80 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 26"},"text":""}','{"bold":true,"color":"black","text":"Allow saving"}','{"bold":true,"color":"black","text":"pieces"}','{"text":""}']}}
execute if block 80 100 -89 lever[powered=true] unless block 80 100 -90 lime_concrete run setblock 80 100 -90 lime_concrete
execute if block 80 100 -89 lever[powered=false] unless block 80 100 -90 red_concrete run setblock 80 100 -90 red_concrete
execute if block 80 100 -89 lever[powered=false] unless score $save sign matches 0 run scoreboard players set $save sign 0
execute if block 80 100 -89 lever[powered=true] unless score $save sign matches 1 run scoreboard players set $save sign 1
execute as @a[scores={sign=26}] run tellraw @s [{"text":"When this option is switched on, pressing the "},{"keybind":"key.jump","bold":true},{"bold":false,"text":" button will hold the current piece for later use. Pressing it again (after landing at least 1 piece) will give you the piece you saved before and hold the current one."}]
#randomness option
execute if score $game_in_progress sign matches 1 if block 81 96 -90 stone_button[powered=true] run setblock 81 96 -90 stone_button[powered=false,face=wall,facing=south]
execute unless block 81 97 -90 oak_wall_sign run setblock 81 97 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 29"},"text":"Type of","bold":true}','{"bold":true,"color":"black","text":"random piece"}','{"bold":true,"color":"black","text":"generation"}','{"text":""}']}}
execute if block 81 96 -90 stone_button[powered=true] run scoreboard players add $random sign 1
execute as @a[scores={sign=29}] run tellraw @s [{"text": "Random","bold": true,"color":"red"},{"text": " will generate pieces completly randomly. This means that it is technically possible (even though very unlikely) to get just one type of piece many times in a row or not get a certain piece at all.","bold": false,"color":"white"},{"text": "\n7 bag","bold": true,"color":"green"},{"text": " will generate random groups of all seven types of pieces. This means that you can't get a piece more than two times in a row and you will never wait for a certain piece for a long time. With this option it's more about skill than luck.","bold": false,"color":"white"}]
execute if block 81 96 -90 stone_button[powered=true] if score $random sign matches 3 run scoreboard players set $random sign 1
execute if block 81 96 -90 stone_button[powered=true] if score $random sign matches 1 run data merge block 81 97 -90 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 29"},"text":"Type of","bold":true}','{"bold":true,"color":"black","text":"random piece"}','{"bold":true,"color":"black","text":"generation"}','{"text":"Random","color":"red","bold":true}']}}
execute if block 81 96 -90 stone_button[powered=true] if score $random sign matches 2 run data merge block 81 97 -90 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 29"},"text":"Type of","bold":true}','{"bold":true,"color":"black","text":"random piece"}','{"bold":true,"color":"black","text":"generation"}','{"text":"7 bag","color":"dark_green","bold":true}']}}
execute if block 81 96 -90 stone_button[powered=true] run setblock 81 96 -90 stone_button[powered=false,face=wall,facing=south]
#time of day option
execute if score $game_in_progress sign matches 1 if block 86 100 -89 stone_button[powered=true] run setblock 86 100 -89 stone_button[powered=false,face=wall,facing=south]
execute unless block 86 101 -89 oak_wall_sign run setblock 86 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 27"},"text":""}','{"bold":true,"color":"black","text":"Time of day"}','{"bold":true,"color":"black","text":""}','{"text":""}']}}
execute if block 86 100 -89 stone_button[powered=true] run scoreboard players add $time_of_day sign 1
execute as @a[scores={sign=27}] run tellraw @s [{"text":"The time of day"}]
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 5 run scoreboard players set $time_of_day sign 1
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 1 run time set 6000
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 2 run time set 12000
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 3 run time set 18600
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 4 run time set 0
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 1 run data merge block 86 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 27"},"text":""}','{"bold":true,"color":"black","text":"Time of day"}','{"bold":true,"color":"yellow","text":"Day"}','{"text":""}']}}
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 2 run data merge block 86 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 27"},"text":""}','{"bold":true,"color":"black","text":"Time of day"}','{"bold":true,"color":"#e49112","text":"Dusk"}','{"text":""}']}}
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 3 run data merge block 86 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 27"},"text":""}','{"bold":true,"color":"black","text":"Time of day"}','{"bold":true,"color":"#3b362e","text":"Night"}','{"text":""}']}}
execute if block 86 100 -89 stone_button[powered=true] if score $time_of_day sign matches 4 run data merge block 86 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 27"},"text":""}','{"bold":true,"color":"black","text":"Time of day"}','{"bold":true,"color":"#794b05","text":"Dawn"}','{"text":""}']}}
execute if block 86 100 -89 stone_button[powered=true] run setblock 86 100 -89 stone_button[powered=false,face=wall,facing=south]

#sounds option
execute if score $game_in_progress sign matches 1 if score $sounds sign matches 1 if block 82 100 -89 lever[powered=false] run setblock 82 100 -89 minecraft:lever[face=wall,facing=south,powered=true]
execute if score $game_in_progress sign matches 1 if score $sounds sign matches 0 if block 82 100 -89 lever[powered=true] run setblock 82 100 -89 minecraft:lever[face=wall,facing=south,powered=false]
execute unless block 82 101 -89 oak_wall_sign run setblock 82 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 28"},"text":""}','{"bold":true,"color":"black","text":""}','{"bold":true,"color":"black","text":"Sounds"}','{"text":""}']}}
execute if block 82 100 -89 lever[powered=true] unless block 82 100 -90 lime_concrete run setblock 82 100 -90 lime_concrete
execute if block 82 100 -89 lever[powered=false] unless block 82 100 -90 red_concrete run setblock 82 100 -90 red_concrete
execute if block 82 100 -89 lever[powered=false] unless score $sounds sign matches 0 run scoreboard players set $sounds sign 0
execute if block 82 100 -89 lever[powered=true] unless score $sounds sign matches 1 run scoreboard players set $sounds sign 1
execute as @a[scores={sign=28}] run tellraw @s [{"text":"When this option is switched on, you will hear sound effects during the game"}]
#music option
execute if score $game_in_progress sign matches 1 if score $music sign matches 1 if block 84 100 -89 lever[powered=false] run setblock 84 100 -89 minecraft:lever[face=wall,facing=south,powered=true]
execute if score $game_in_progress sign matches 1 if score $music sign matches 0 if block 84 100 -89 lever[powered=true] run setblock 84 100 -89 minecraft:lever[face=wall,facing=south,powered=false]
execute unless block 84 101 -89 oak_wall_sign run setblock 84 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 30"},"text":""}','{"bold":true,"color":"black","text":""}','{"bold":true,"color":"black","text":"Music"}','{"text":""}']}} destroy
execute if block 84 100 -89 lever[powered=true] unless block 84 100 -90 lime_concrete run setblock 84 100 -90 lime_concrete
execute if block 84 100 -89 lever[powered=false] unless block 84 100 -90 red_concrete run setblock 84 100 -90 red_concrete
execute if block 84 100 -89 lever[powered=false] unless score $music sign matches 0 run scoreboard players set $music sign 0
execute if block 84 100 -89 lever[powered=true] unless score $music sign matches 1 run scoreboard players set $music sign 1
execute as @a[scores={sign=30}] run tellraw @s [{"text":"When this option is switched on, you will hear music during the game"}]
#weather option
execute if score $game_in_progress sign matches 1 if block 88 100 -89 stone_button[powered=true] run setblock 88 100 -89 stone_button[powered=false,face=wall,facing=south]
execute unless block 88 101 -89 oak_wall_sign run setblock 88 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 31"},"text":""}','{"bold":true,"color":"black","text":"Weather"}','{"bold":true,"color":"black","text":""}','{"text":""}']}}
execute if block 88 100 -89 stone_button[powered=true] run scoreboard players add $weather sign 1
execute as @a[scores={sign=31}] run tellraw @s [{"text":"The weather"}]
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 4 run scoreboard players set $weather sign 1
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 1 run weather clear
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 2 run weather rain
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 3 run weather thunder
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 1 run data merge block 88 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 31"},"text":""}','{"bold":true,"color":"black","text":"Weather"}','{"bold":true,"color":"aqua","text":"Sunny"}','{"text":""}']}}
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 2 run data merge block 88 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 31"},"text":""}','{"bold":true,"color":"black","text":"Weather"}','{"bold":true,"color":"blue","text":"Rain"}','{"text":""}']}}
execute if block 88 100 -89 stone_button[powered=true] if score $weather sign matches 3 run data merge block 88 101 -89 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 31"},"text":""}','{"bold":true,"color":"black","text":"Weather"}','{"bold":true,"color":"dark_gray","text":"Thunder"}','{"text":""}']}}
execute if block 88 100 -89 stone_button[powered=true] run setblock 88 100 -89 stone_button[powered=false,face=wall,facing=south]
#end_option
execute if score $game_in_progress sign matches 1 if block 90 100 -89 stone_button[powered=true] run setblock 90 100 -89 stone_button[powered=false,face=wall,facing=south]
execute unless block 90 101 -89 oak_wall_sign run setblock 90 101 -89 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"bold":true,"text":"Game ends"}','{"bold":true,"color":"black","text":"after"}','{"bold":true,"color":"black","text":""}','{"clickEvent":{"action":"run_command","value":"trigger sign set 32"},"text":""}']}}
execute if block 90 100 -89 stone_button[powered=true] run scoreboard players add $end sign 1
execute as @a[scores={sign=32}] run tellraw @s [{"text":"When will the game end?"}]
execute if block 90 100 -89 stone_button[powered=true] if score $end sign matches 5 run scoreboard players set $end sign 1
execute if block 90 100 -89 stone_button[powered=true] if score $end sign matches 1 run data merge block 90 101 -89 {front_text:{messages:['{"bold":true,"text":"Game ends"}','{"bold":true,"color":"black","text":"after"}','{"bold":true,"color":"dark_red","text":"Everyone is "}','{"bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"trigger sign set 32"},"text":"eliminated"}']}}
execute if block 90 100 -89 stone_button[powered=true] if score $end sign matches 2 run data merge block 90 101 -89 {front_text:{messages:['{"bold":true,"text":"Game ends"}','{"bold":true,"color":"black","text":"after"}','{"bold":true,"color":"gold","text":"1 minute"}','{"bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"trigger sign set 32"},"text":""}']}}
execute if block 90 100 -89 stone_button[powered=true] if score $end sign matches 3 run data merge block 90 101 -89 {front_text:{messages:['{"bold":true,"text":"Game ends"}','{"bold":true,"color":"black","text":"after"}','{"bold":true,"color":"yellow","text":"5 minutes"}','{"bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"trigger sign set 32"},"text":""}']}}
execute if block 90 100 -89 stone_button[powered=true] if score $end sign matches 4 run data merge block 90 101 -89 {front_text:{messages:['{"bold":true,"text":"Game ends"}','{"bold":true,"color":"black","text":"after"}','{"bold":true,"color":"green","text":"10 minutes"}','{"bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"trigger sign set 32"},"text":""}']}}
execute if block 90 100 -89 stone_button[powered=true] run setblock 90 100 -89 stone_button[powered=false,face=wall,facing=south]
#DAS option
scoreboard players enable @a DAS
execute unless block 83 97 -90 oak_wall_sign run setblock 83 97 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"Delayed","bold":true}','{"bold":true,"color":"black","text":"Auto"}','{"bold":true,"color":"black","text":"Shift"}']}}
execute unless block 83 96 -90 warped_wall_sign run setblock 83 96 -90 minecraft:warped_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"","bold":true,"clickEvent":{"action":"run_command","value":"trigger sign set 24"}}','{"bold":true,"color":"black","text":""}','{"bold":true,"color":"black","text":""}']}}
execute as @a[scores={sign=24}] run tellraw @s [{"text":"\nDelayed Auto Shift","bold": true},{"text": " or ","bold": false},{"text": "DAS","bold": true},{"text": " is the ammount of time (in ticks, 1t = 0.05s) you need to hold your move key for before the piece starts moving rapidly and repeatedly to that side. By default this is set to 6. To change ","bold": false},{"text": "DAS","bold": true},{"text": " use the following command: \n\n/trigger DAS set <your number> \n\n(Click on the command for it to be automatically written)","bold": false,"clickEvent":{"action":"suggest_command","value":"/trigger DAS set 6"}},{"text":"\n\nPlease note, that this feature only works well on singleplayer or with very low ping.","bold": false}]
execute as @a[scores={sign=24}] run playsound block.stone_button.click_on block @s 83 96 -90 0.3 0.6

#ARR option
scoreboard players enable @a ARR
execute unless block 85 97 -90 oak_wall_sign run setblock 85 97 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"Auto","bold":true}','{"bold":true,"color":"black","text":"Repeat"}','{"bold":true,"color":"black","text":"Rate"}']}}
execute unless block 85 96 -90 warped_wall_sign run setblock 85 96 -90 minecraft:warped_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"","bold":true,"clickEvent":{"action":"run_command","value":"trigger sign set 23"}}','{"bold":true,"color":"black","text":""}','{"bold":true,"color":"black","text":""}']}}
execute as @a[scores={sign=23}] run tellraw @s [{"text":"\nAuto Repeat Rate","bold": true},{"text": " or ","bold": false},{"text": "ARR","bold": true},{"text": " is the ammount of time (in ticks, 1t = 0.05s) between each automatic move that happens when ","bold": false},{"text": "Delayed Auto Shift","bold": true},{"text":" is active. By default this is set to 1. To change ","bold": false},{"text": "ARR","bold": true},{"text": " use the following command: \n\n/trigger ARR set <your number> \n\n(Click on the command for it to be automatically written)","bold": false,"clickEvent":{"action":"suggest_command","value":"/trigger ARR set 1"}},{"text":"\n\nPlease note, that this feature only works well on singleplayer or with very low ping.","bold": false}]
execute as @a[scores={sign=23}] run playsound block.stone_button.click_on block @s 85 96 -90 0.3 0.6

#wall kicks option
execute if score $game_in_progress sign matches 1 if block 87 96 -90 stone_button[powered=true] run setblock 87 96 -90 stone_button[powered=false,face=wall,facing=south]
execute unless block 87 97 -90 oak_wall_sign run setblock 87 97 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 33"},"text":"","bold":true}','{"bold":true,"color":"black","text":"Wall Kicks"}','{"bold":true,"color":"black","text":""}','{"text":""}']}}
execute if block 87 96 -90 stone_button[powered=true] run scoreboard players add $wall_kicks sign 1
execute as @a[scores={sign=33}] run tellraw @s [{"text": "When you try to rotate a piece but there isn't room for the rotation, the game will try to move the piece into the surrounding spaces and try if the rotation is possible there.\nWhen ","bold": false,"color":"white"},{"text": "None","bold": true,"color":"red"},{"text": " is selected, the game won't attempt this at all. \nWhen ","bold": false,"color":"white"},{"text": "Kicks","color": "gold","bold": true},{"text": " is selected, the game will check only one spot in each direction. \nWhen ","color": "white","bold": false},{"text": "Out of well","color": "green","bold": true},{"text": " is selected, the game will check two spots in each direction. \nTo see the exact order in which the game checks the spots and which spots are checked in each setting, see the "},{"text":"documentation","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://docs.google.com/spreadsheets/d/1HNcwi3YxmQc3RoG9lEAVrdyyk9Rfv2zZ6P16w9GwJJo/edit?usp=sharing"}}]
execute if block 87 96 -90 stone_button[powered=true] if score $wall_kicks sign matches 4 run scoreboard players set $wall_kicks sign 1
execute if block 87 96 -90 stone_button[powered=true] if score $wall_kicks sign matches 1 run data merge block 87 97 -90 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 33"},"text":"","bold":true}','{"bold":true,"color":"black","text":"Wall Kicks"}','{"bold":true,"color":"red","text":"None"}','{"text":""}']}}
execute if block 87 96 -90 stone_button[powered=true] if score $wall_kicks sign matches 2 run data merge block 87 97 -90 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 33"},"text":"","bold":true}','{"bold":true,"color":"black","text":"Wall Kicks"}','{"bold":true,"color":"gold","text":"Kicks"}','{"text":""}']}}
execute if block 87 96 -90 stone_button[powered=true] if score $wall_kicks sign matches 3 run data merge block 87 97 -90 {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 33"},"text":"","bold":true}','{"bold":true,"color":"black","text":"Wall Kicks"}','{"bold":true,"color":"green","text":"Out of well kicks"}','{"text":""}']}}
execute if block 87 96 -90 stone_button[powered=true] run setblock 87 96 -90 stone_button[powered=false,face=wall,facing=south]

#No Shift option
execute unless block 89 97 -90 oak_wall_sign run setblock 89 97 -90 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"No","bold":true,"clickEvent":{"action":"run_command","value":"trigger sign set 21"}}','{"bold":true,"color":"black","text":"Shift"}','{"bold":true,"color":"black","text":"Period"}']}}
execute unless block 89 96 -90 warped_wall_sign run setblock 89 96 -90 minecraft:warped_wall_sign[facing=south,waterlogged=false]{front_text:{messages:['{"text":""}','{"text":"","bold":true,"clickEvent":{"action":"run_command","value":"trigger sign set 22"}}','{"bold":true,"color":"black","text":""}','{"bold":true,"color":"black","text":""}']}}
execute as @a[scores={sign=21}] run tellraw @s [{"text":"\nNo Shift Period","bold": true},{"text": " determines if continually holding down ","bold": false},{"keybind": "key.sneak","bold": true},{"text":" makes droping down pieces continual, or if you have to repress it after each piece. If you turn it ","bold": false},{"text": "ON","color": "green"}, {"text": ", holding crouch will only quickly drop the current piece. This is helpful if you often overshoot.","bold": false}]
execute as @a[scores={sign=22}] run playsound block.stone_button.click_on block @s 89 96 -90 0.3 0.6
execute as @a[scores={sign=22}] run scoreboard players add @s no_shift_on 1
execute as @a[scores={sign=22,no_shift_on=2..}] run scoreboard players set @s no_shift_on 0
execute as @a[scores={sign=22,no_shift_on=1}] run tellraw @s [{"text":"You turned ","bold": false},{"text": "No Shift Period ","bold": true},{"text": "ON","color": "green"}]
execute as @a[scores={sign=22,no_shift_on=0}] run tellraw @s [{"text":"You turned ","bold": false},{"text": "No Shift Period ","bold": true},{"text": "OFF","color": "red"}]
#spectators
execute positioned 59 100 -55 run tellraw @a[distance=..1,team=!spectator,tag=!loser] [{"text":"You joined "},{"text":"Spectators","color":"gray","bold": true}]
execute if score $sounds sign matches 1 run execute positioned 59 100 -55 run playsound entity.experience_orb.pickup ambient @a[distance=..1,team=!spectator,tag=!loser] ~ ~ ~ 1
execute unless score $game_in_progress sign matches 1 run execute positioned 59 100 -55 run team join spectator @a[distance=..1,team=!spectator] 
execute if score $game_in_progress sign matches 1 run execute positioned 59 100 -55 run team join spectator @a[distance=..1,team=!spectator,team=!player] 
execute if score $game_in_progress sign matches 1 run gamemode spectator @a[team=spectator,gamemode=!spectator]
#players
execute unless score $game_in_progress sign matches 1 positioned 59 100 -65 run tellraw @a[distance=..1,team=!player] [{"text":"You joined "},{"text":"Players","color":"red","bold": true}]
execute unless score $game_in_progress sign matches 1 if score $sounds sign matches 1 run execute positioned 59 100 -65 run playsound entity.experience_orb.pickup ambient @a[distance=..1,team=!player] ~ ~ ~ 1
execute unless score $game_in_progress sign matches 1 positioned 59 100 -65 run team join player @a[distance=..1,team=!player]
#spawning texts
execute unless entity @e[tag=spectator_marker] run summon minecraft:armor_stand 59 102 -55 {Tags:["spectator_marker","lobby_a_s"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Join "},{"text":"Spectators","bold":true,"color":"gray"}]'}
execute unless entity @e[tag=player_marker] run summon minecraft:armor_stand 59 102 -65 {Tags:["player_marker","lobby_a_s"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Join "},{"text":"Players","bold":true,"color":"red"}]'}
execute unless entity @e[tag=jijik] run summon minecraft:armor_stand 124 101 -62 {Tags:["jijik","lobby_a_s"],Invisible:1,CustomNameVisible:1,NoGravity:1,CustomName:'[{"text":"jijik_hal"}]',ArmorItems:[{},{},{},{id:"minecraft:lime_glazed_terracotta",Count:1b}],DisabledSlots:4144959,Rotation:[45f,0f]}
execute unless entity @e[tag=olda] run summon minecraft:armor_stand 124 101 -58 {Tags:["olda","lobby_a_s"],Invisible:1,CustomNameVisible:1,NoGravity:1,CustomName:'[{"text":"OldaLP"}]',ArmorItems:[{},{},{},{id:"minecraft:pink_glazed_terracotta",Count:1b}],DisabledSlots:4144959,Rotation:[135f,0f]}
execute unless entity @e[tag=start_marker] run summon minecraft:armor_stand 49 101 -60 {Tags:["start_marker","lobby_a_s"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Start","bold":true}]'}
execute unless entity @e[tag=ice] run summon minecraft:item 78 101 -30 {Tags:["ice","ii"],NoGravity:1,Invulnerable:1,Item:{id:"minecraft:ice",Count:1b},PickupDelay:32767,Age:-32768}
execute unless entity @e[tag=gray] run summon minecraft:item 78 101 -33 {Tags:["gray","ii"],NoGravity:1,Invulnerable:1,Item:{id:"minecraft:gray_concrete",Count:1b},PickupDelay:32767,Age:-32768}
execute unless entity @e[tag=tnt] run summon minecraft:item 78 101 -36 {Tags:["tnt","ii"],NoGravity:1,Invulnerable:1,Item:{id:"minecraft:tnt",Count:1b},PickupDelay:32767,Age:-32768}
execute unless entity @e[tag=dye] run summon minecraft:item 78 101 -39 {Tags:["dye","ii"],NoGravity:1,Invulnerable:1,Item:{id:"minecraft:black_dye",Count:1b},PickupDelay:32767,Age:-32768}
execute unless entity @e[tag=book] run summon minecraft:armor_stand 84 101.3 -29 {Tags:["book","lobby_a_s"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Gamemodes","color":"white"}]'}
execute unless entity @e[tag=option] run summon minecraft:armor_stand 74 101 -90 {Tags:["option","lobby_a_s"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Advanced options","color":"white"}]'}
execute positioned 74 100 -90 run playsound entity.enderman.teleport ambient @a[distance=..1] 89 96 -90 1
execute positioned 74 100 -90 run tp @a[distance=..1] 89 96 -90 90 0
execute positioned 78 96 -90 run playsound entity.enderman.teleport ambient @a[distance=..1] 89 100 -60 100
execute positioned 78 96 -90 run tp @a[distance=..1] 89 100 -60 180 0

execute unless block 123 100 -62 oak_wall_sign run setblock 123 100 -62 minecraft:oak_wall_sign[facing=west,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 34"},"text":"","bold":true}','{"bold":true,"color":"dark_aqua","text":"jijik_hal"}','{"bold":false,"color":"black","text":"Commands"}','{"text":""}']}}
execute as @a[scores={sign=34}] run tellraw @s [{"text": "More here:\n"},{"text":"\uE000"},{"text":" jijik_hal\n","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCko6jfDEsGGQsXYb7BAxoMA"}},{"text":"\uE001"},{"text":" @jijik_hal\n","clickEvent":{"action":"open_url","value":"https://twitter.com/jijik_hal"}},{"text":"\uE002"},{"text":" jijik_hal","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/jijik_hal/"}}]

execute unless block 123 100 -58 oak_wall_sign run setblock 123 100 -58 minecraft:oak_wall_sign[facing=west,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger sign set 35"},"text":"","bold":true}','{"bold":true,"color":"red","text":"OldaLP"}','{"bold":false,"color":"black","text":"Builds"}','{"text":""}']}}
execute as @a[scores={sign=35}] run tellraw @s [{"text": "More here:\n"},{"text":"\uE000"},{"text":" OldaLP","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCZhvzS86515y0Cx1Z9l_kWg"}}]
execute unless block 124 100 -60 oak_wall_sign run setblock 124 100 -60 minecraft:oak_wall_sign[facing=west,waterlogged=false]{front_text:{messages:['{"text":"","bold":true}','{"bold":true,"color":"blue","text":"Freepik"}','{"bold":false,"color":"black","text":"Arrow icons"}','{"text":""}']}}


function tetrablock:tutorial/controls

execute unless block 79 100 -30 minecraft:oak_sign run setblock 79 100 -30 minecraft:oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"bold":true,"color":"aqua","text":"Ice Bomb"}','{"color":"white","text":"Freezes the"}','{"color":"white","text":"current piece"}','{"color":"white","text":"of all opponents"}']}}
execute unless block 79 100 -33 minecraft:oak_sign run setblock 79 100 -33 minecraft:oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"bold":true,"color":"dark_gray","text":"The Destroyer"}','{"color":"white","text":"Moves pieces of"}','{"color":"white","text":"all opponents"}','{"color":"white","text":"one row higher"}']}}
execute unless block 79 100 -36 minecraft:oak_sign run setblock 79 100 -36 minecraft:oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"bold":true,"color":"red","text":"The Cleaner"}','{"color":"white","text":"Clears your"}','{"color":"white","text":"playing field"}','{"text":""}']}}
execute unless block 79 100 -39 minecraft:oak_sign run setblock 79 100 -39 minecraft:oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"bold":true,"color":"black","text":"The Blinder"}','{"color":"white","text":"Blinds all"}','{"color":"white","text":"opponents for"}','{"color":"white","text":"five seconds"}']}}



execute as @a[scores={sign=1..}] run scoreboard players reset @s sign

execute as @a store result score @s mc_version run data get entity @s DataVersion
title @a[scores={mc_version=..2859}] actionbar {"text":"Outdadted minecraft version! Play in 1.18+!"}

execute if score $game_in_progress sign matches 1 run function tetrablock:game/main
scoreboard players reset @a jump


execute unless score $game_in_progress sign matches 1 as @a at @s unless entity @s[x=43,y=92,z=-94,dx=86,dy=28,dz=74] run tp @s 89 100 -60 90 0
execute if score $game_in_progress sign matches 1 as @a at @s unless entity @s[x=-10,y=90,z=-150,dx=170,dy=70,dz=180] run tp @s 89 100 -60 90 0

kill @e[type=item,tag=!ii]

execute unless block 84 100 -29 lectern[has_book=true] run fill 84 100 -29 84 100 -29 minecraft:lectern[facing=north,has_book=true,powered=false]{Book:{id:"minecraft:written_book",count:1b,components:{"written_book_content": {pages:['{"extra":[{"bold":true,"color":"#E6E600","text":"Highscore"},{"text":"\\n"},{"text":"Who can get the most points before losing? Just remember that clearing multiple lines at once gives you more points than clearing them one by one! Also, you get more points on higher levels, so you better start at level 20 if you want to reach that sweet million!"}],"text":""}','{"extra":[{"bold":true,"color":"red","text":"Battle"},{"text":"\\n"},{"text":"Can you eliminate your opponents before they eliminate you? In this gamemode you can buy power-ups for the lines you\'ve cleard. Just select them in your hotbar and press "},{"keybind":"key.drop"},{"text":" to purchase the item. To see all the items and what they do, look right."}],"text":""}','{"extra":[{"bold":true,"color":"aqua","text":"Most Lines"},{"text":"\\n"},{"text":"This gamemode is simple - the person who has cleared the most lines when the game ends, wins. "}],"text":""}','{"extra":[{"bold":true,"color":"green","text":"Most Pieces"},{"text":"\\n"},{"text":"This gamemode is a bit different because you can\'t clear lines. Your goal is simply to fit in as many pieces as possible. The theoretical limit is 50, how close to that can you get?"}],"text":""}'],title:"Gamemodes",author:"jijik_hal",resolved:1b}}},Page:0}
clear @a written_book

advancement grant @a[advancements={tetrablock:root=false}] only tetrablock:root
advancement grant @a[advancements={tetrablock:score_end=false}] only tetrablock:score_end
advancement grant @a[advancements={tetrablock:lines_end=false}] only tetrablock:lines_end
advancement grant @a[advancements={tetrablock:piece_end=false}] only tetrablock:piece_end

function tetrablock:leaderboard/ll

#gamemode adventure @a[gamemode=creative]
#gamemode adventure @a[gamemode=survival]

#execute if score $game_in_progress sign matches 1 run scoreboard 



