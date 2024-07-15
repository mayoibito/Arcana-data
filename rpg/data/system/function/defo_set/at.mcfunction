##ステータス基礎値設定

##計算用スコア設定
    scoreboard players set $2 cal.num 2
    scoreboard players set $3 cal.num 3
    scoreboard players set $3 cal.num 4
##基礎値設定
    #1.【ソードマスター】参照ステータス「筋力」
    execute if score @s stat_player.Job matches 1 run scoreboard players operation @s stat_player.Base_AT = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 1 run scoreboard players operation @s stat_player.Base_AT /= $2 cal.num
    #2.【サムライ】参照ステータス「筋力＆技量」
    execute if score @s stat_player.Job matches 2 run scoreboard players operation @s stat_player.Base_AT = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 2 run scoreboard players operation @s stat_player.Base_AT /= $2 cal.num
    execute if score @s stat_player.Job matches 2 run scoreboard players operation @s stat_player.Base_SK = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 2 run scoreboard players operation @s stat_player.Base_SK /= $3 cal.num
    #3.【パラディン】参照ステータス「筋力＆知力」
    execute if score @s stat_player.Job matches 3 run scoreboard players operation @s stat_player.Base_AT = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 3 run scoreboard players operation @s stat_player.Base_AT /= $2 cal.num
    execute if score @s stat_player.Job matches 3 run scoreboard players operation @s stat_player.Base_ITL = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 3 run scoreboard players operation @s stat_player.Base_ITL /= $3 cal.num
    #4.【シューター】参照ステータス「技量」
    execute if score @s stat_player.Job matches 4 run scoreboard players operation @s stat_player.Base_SK = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 4 run scoreboard players operation @s stat_player.Base_SK /= $2 cal.num
    #5.【ハンター】参照ステータス「技量＆筋力」
    execute if score @s stat_player.Job matches 5 run scoreboard players operation @s stat_player.Base_SK = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 5 run scoreboard players operation @s stat_player.Base_SK /= $2 cal.num
    execute if score @s stat_player.Job matches 5 run scoreboard players operation @s stat_player.Base_AT = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 5 run scoreboard players operation @s stat_player.Base_AT /= $3 cal.num
    #6.【アーチャー】参照ステータス「技量＆知力」
    execute if score @s stat_player.Job matches 6 run scoreboard players operation @s stat_player.Base_SK = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 6 run scoreboard players operation @s stat_player.Base_SK /= $2 cal.num
    execute if score @s stat_player.Job matches 6 run scoreboard players operation @s stat_player.Base_ITL = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 6 run scoreboard players operation @s stat_player.Base_ITL /= $3 cal.num
    #7.【ウィザード】参照ステータス「知力」
    execute if score @s stat_player.Job matches 7 run scoreboard players operation @s stat_player.Base_ITL = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 7 run scoreboard players operation @s stat_player.Base_ITL /= $2 cal.num
    #8.【エンチャンター】参照ステータス「知力＆筋力」
    execute if score @s stat_player.Job matches 8 run scoreboard players operation @s stat_player.Base_ITL = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 8 run scoreboard players operation @s stat_player.Base_ITL /= $2 cal.num
    execute if score @s stat_player.Job matches 8 run scoreboard players operation @s stat_player.Base_AT = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 8 run scoreboard players operation @s stat_player.Base_AT /= $3 cal.num
    #9.【ハーミット】参照ステータス「知力＆技量」
    execute if score @s stat_player.Job matches 9 run scoreboard players operation @s stat_player.Base_ITL = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 9 run scoreboard players operation @s stat_player.Base_ITL /= $2 cal.num
    execute if score @s stat_player.Job matches 9 run scoreboard players operation @s stat_player.Base_SK = @s stat_player.Job_LV
    execute if score @s stat_player.Job matches 9 run scoreboard players operation @s stat_player.Base_SK /= $3 cal.num
#終了