execute as @e[tag=block] at @s run function tetrablock:render/clear

execute as @a[team=player,tag=!loser] run scoreboard players add @s drop_timer 1
execute as @a[team=player,tag=!loser] run scoreboard players reset @s[predicate=tetrablock:not_sneaking] no_shift_period
execute as @a[team=player,tag=!loser] run scoreboard players reset @s[scores={no_shift_on=0}] no_shift_period
execute as @e[team=player,tag=!loser,scores={down=1..}] at @s unless score @s no_shift_period matches 1 run function tetrablock:moving/move_piece
execute if score $save sign matches 1 as @a[team=player,tag=!loser,scores={jump=1..}] at @s unless score @s ice_timer matches 1.. unless score @e[tag=spawn,limit=1,sort=nearest] saved_this_r matches 1.. as @e[tag=spawn,limit=1,sort=nearest] at @s run function tetrablock:game/save_piece
execute as @e[team=player,tag=!loser,scores={lvl=1}] at @s if score @s drop_timer matches 20.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=2}] at @s if score @s drop_timer matches 19.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=3}] at @s if score @s drop_timer matches 18.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=4}] at @s if score @s drop_timer matches 17.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=5}] at @s if score @s drop_timer matches 16.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=6}] at @s if score @s drop_timer matches 15.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=7}] at @s if score @s drop_timer matches 14.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=8}] at @s if score @s drop_timer matches 13.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=9}] at @s if score @s drop_timer matches 12.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=10}] at @s if score @s drop_timer matches 11.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=11}] at @s if score @s drop_timer matches 10.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=12}] at @s if score @s drop_timer matches 9.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=13}] at @s if score @s drop_timer matches 8.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=14}] at @s if score @s drop_timer matches 7.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=15}] at @s if score @s drop_timer matches 6.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=16}] at @s if score @s drop_timer matches 5.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=17}] at @s if score @s drop_timer matches 4.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=18}] at @s if score @s drop_timer matches 3.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=19}] at @s if score @s drop_timer matches 2.. run function tetrablock:moving/move_piece
execute as @e[team=player,tag=!loser,scores={lvl=20}] at @s if score @s drop_timer matches 1.. run function tetrablock:moving/move_piece

execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player1] run execute as @e[tag=block1] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player2] run execute as @e[tag=block2] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player3] run execute as @e[tag=block3] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player4] run execute as @e[tag=block4] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player5] run execute as @e[tag=block5] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player6] run execute as @e[tag=block6] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player7] run execute as @e[tag=block7] at @s run function tetrablock:moving/rotate_clock
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:6}] unless score @s ice_timer matches 1.. if entity @s[tag=player8] run execute as @e[tag=block8] at @s run function tetrablock:moving/rotate_clock

execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player1] run execute as @e[tag=block1] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player2] run execute as @e[tag=block2] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player3] run execute as @e[tag=block3] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player4] run execute as @e[tag=block4] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player5] run execute as @e[tag=block5] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player6] run execute as @e[tag=block6] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player7] run execute as @e[tag=block7] at @s run function tetrablock:moving/rotate_counter
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:2}] unless score @s ice_timer matches 1.. if entity @s[tag=player8] run execute as @e[tag=block8] at @s run function tetrablock:moving/rotate_counter

execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:4}] at @s unless score @s ice_timer matches 1.. run function tetrablock:moving/hard_drop


execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:3}] unless score @s ice_timer matches 1.. run function tetrablock:moving/move_left
execute as @e[team=player,tag=!loser,scores={control=1..},nbt={SelectedItemSlot:5}] unless score @s ice_timer matches 1.. run function tetrablock:moving/move_right

execute as @a[team=player,tag=!loser] at @s run function tetrablock:game/das


execute as @e[tag=block] at @s run function tetrablock:render/render

execute unless score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.0 with air
execute unless score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.1 with air
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.2 with carrot_on_a_stick[custom_model_data=4, item_name='{"text":"Rotate counterclockwise"}']
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.3 with carrot_on_a_stick[custom_model_data=2, item_name='{"text":"Move left"}']
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.4 with carrot_on_a_stick[custom_model_data=5, item_name='{"text":"Hard drop"}']
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.5 with carrot_on_a_stick[custom_model_data=1, item_name='{"text":"Move right"}']
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.6 with carrot_on_a_stick[custom_model_data=3, item_name='{"text":"Rotate clockwise"}']
execute unless score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.7 with air
execute unless score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.8 with air
execute if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] weapon.offhand with air

execute if score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.0 with ice[item_name='[{"text": "Freeze opponents", "color":"aqua"},{"text":" – 10 lines", "color": "white"}]', lore=['[{"text":"Press ","color":"gray"},{"keybind": "key.drop","color":"gray"},{"text": " to use","color":"gray"}]']]
execute if score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.1 with gray_concrete[item_name='[{"text":"Move all opponents\' pieces up","color":"gray","italic":false},{"text":" – 10 lines","color":"white"}]', lore=['[{"text":"Press ","color":"gray"},{"keybind": "key.drop","color":"gray"},{"text": " to use","color":"gray"}]']]
execute if score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.7 with tnt[item_name='[{"text":"Clear playing field","color":"red","italic":false},{"text":" – 50 lines","color":"white"}]', lore=['[{"text":"Press ","color":"gray"},{"keybind": "key.drop","color":"gray"},{"text": " to use","color":"gray"}]']]
execute if score $mode sign matches 2 if score $game_in_progress sign matches 1 run item replace entity @a[team=player,tag=!loser] hotbar.8 with black_dye[item_name='[{"text":"Blind opponents","color":"black","italic":false},{"text":" – 5 lines","color":"white"}]', lore=['[{"text":"Press ","color":"gray"},{"keybind": "key.drop","color":"gray"},{"text": " to use","color":"gray"}]']]

execute if score $mode sign matches 2 run tag @a[scores={leave=1..}] add loser
scoreboard players set @a[scores={leave=1..}] leave 0
execute as @a[team=player,tag=!loser,scores={lines=1..}] at @s run function tetrablock:game/score

execute if score $mode sign matches 2 run function tetrablock:game/items

execute if score $game_in_progress sign matches 1 as @a[tag=loser,team=player,tag=!dead] at @s run function tetrablock:game/when_you_die


execute if score $game_in_progress sign matches 1 unless entity @a[tag=!loser,team=player] run function tetrablock:game/game_end
scoreboard players reset @a players_rem
execute as @a[tag=!loser,team=player] run scoreboard players add @a players_rem 1
execute if score $game_in_progress sign matches 1 if score $mode sign matches 2 if entity @a[tag=!loser,team=player,scores={players_rem=1}] run function tetrablock:game/game_end

execute if score $game_in_progress sign matches 1 if score $music sign matches 1 run function tetrablock:game/music

scoreboard players reset $players_remaining sign
execute as @a[team=player,tag=!loser] run scoreboard players add $players_remaining sign 1
execute if score $end sign matches 2..4 run function tetrablock:game/end_timer

scoreboard players reset @a control

