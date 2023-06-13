scoreboard objectives add current_block dummy
scoreboard objectives add next_block_1 dummy
scoreboard objectives add next_block_2 dummy
scoreboard objectives add next_block_3 dummy
scoreboard objectives add next_block_4 dummy
scoreboard objectives add next_block_5 dummy
scoreboard objectives add next_block_6 dummy
scoreboard objectives add next_block_7 dummy
scoreboard objectives add next_block_8 dummy
scoreboard objectives add next_block_9 dummy
scoreboard objectives add players dummy
scoreboard objectives add drop_timer dummy
scoreboard objectives add lvl dummy
scoreboard objectives add control minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add down minecraft.custom:minecraft.sneak_time
scoreboard objectives add lines dummy 
scoreboard objectives add score dummy 
scoreboard objectives add real_score dummy {"text": "Score:","bold": true,"color": "yellow"}
scoreboard objectives add score_buffer dummy
scoreboard objectives add score_buffer2 dummy
scoreboard objectives add total_lines dummy {"text": "Lines:","bold": true,"color": "aqua"}
scoreboard objectives add battle_lines dummy {"text": "Lines:","bold": true,"color": "aqua"}
scoreboard objectives add total_pieces dummy {"text": "Pieces:","bold": true,"color": "green"}
scoreboard objectives add sign trigger
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add saved dummy
scoreboard objectives add saved_this_r dummy
scoreboard objectives add saved_before dummy
scoreboard objectives add mc_version dummy
scoreboard objectives add rank dummy
scoreboard objectives add controler dummy
scoreboard objectives add drop_ice minecraft.dropped:minecraft.ice
scoreboard objectives add drop_tnt minecraft.dropped:minecraft.tnt
scoreboard objectives add drop_dye minecraft.dropped:minecraft.black_dye
scoreboard objectives add drop_gray minecraft.dropped:minecraft.gray_concrete
scoreboard objectives add ice_timer dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add did_rotate dummy
scoreboard objectives add wall_kick dummy
scoreboard objectives add players_rem dummy
scoreboard objectives add zpos dummy
scoreboard objectives add no_shift_period dummy
scoreboard objectives add no_shift_on dummy
scoreboard objectives add number dummy
scoreboard players set $n1 number -1
scoreboard players set $10 number 10
scoreboard players set $100 number 100
scoreboard players set $1000 number 1000
scoreboard players set $10000 number 10000
scoreboard players set $100000 number 100000
scoreboard objectives add das_counter dummy
scoreboard objectives add arr_counter dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walk_lobby minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add stand_lobby dummy
scoreboard objectives add still dummy
scoreboard objectives add DAS trigger
scoreboard objectives add ARR trigger
scoreboard objectives add lobby dummy [{"text": "T","color": "yellow","bold": true},{"text": "E","color": "#FF00FF","bold": true},{"text": "T","color": "aqua","bold": true},{"text": "R","color": "light_purple","bold": true},{"text": "A","color": "dark_blue","bold": true},{"text": "B","color": "red","bold": true},{"text": "L","color": "green","bold": true},{"text": "O","color": "dark_purple","bold": true},{"text": "C","color": "gold","bold": true},{"text": "K","color": "dark_green","bold": true}]
scoreboard objectives add leaderboard dummy
scoreboard objectives add hard_drop dummy

team add player 
team add spectator
team modify player color red
team modify spectator color gray

team add l_1
team add l_2
team add l_3
team add l_4
team add l_5
team modify l_1 prefix {"text": "1. "}
team modify l_2 prefix {"text": "2. "}
team modify l_3 prefix {"text": "3. "}
team modify l_4 prefix {"text": "4. "}
team modify l_5 prefix {"text": "5. "}
team add most
team add starting_at_lvl
difficulty peaceful

kill @e[tag=ll_click]
scoreboard objectives add ll_click minecraft.custom:minecraft.talked_to_villager

bossbar add end_timer [{"text": "Time remaining:","bold": true,"color":"green"}]
bossbar set end_timer style progress 
bossbar set end_timer color green
bossbar set end_timer visible true

schedule function tetrablock:load_reset 5t append