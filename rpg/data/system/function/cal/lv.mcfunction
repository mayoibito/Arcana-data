##LV計算

#数値設定
    scoreboard players set $1 cal.num 1
    scoreboard players set $10 cal.num 10

##必要経験値計算（{LV^2}*10）
    scoreboard players operation @s stat_player.Req_XP = @s stat_player.LV
    scoreboard players operation @s stat_player.Req_XP *= @s stat_player.LV
    scoreboard players operation @s stat_player.Req_XP *= $10 cal.num
    scoreboard players operation @s stat_player.Job_Req_XP = @s stat_player.Job_LV
    scoreboard players operation @s stat_player.Job_Req_XP *= @s stat_player.Job_LV
    scoreboard players operation @s stat_player.Job_Req_XP *= $10 cal.num
##レベルアップ計算
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run scoreboard players add @s stat_player.LV 1
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run scoreboard players operation @s cal.num = @s stat_player.LV
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run scoreboard players operation @s cal.num -= $1 cal.num
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run tellraw @s [{"text":"レベルアップ!! (Lv.","bold":false},{"score":{"name":"@s","objective":"cal.num"},"bold":false},{"text":"=>Lv.","bold":false},{"score":{"name":"@s","objective":"stat_player.LV"},"bold":false},{"text":")","bold":false}]
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 1 1.5 0
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run particle end_rod ~ ~1 ~ 0.6 0.6 0.6 0.75 25
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run effect give @s instant_health 2 120 true
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run effect give @s regeneration 2 120 false
    execute if score @s stat_player.XP >= @s stat_player.Req_XP run scoreboard players operation @s stat_player.XP -= @s stat_player.Req_XP
##ジョブレベルアップ計算
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run scoreboard players add @s stat_player.Job_LV 1
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run scoreboard players operation @s cal.num = @s stat_player.Job_LV
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run scoreboard players operation @s cal.num -= $1 cal.num
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run tellraw @s [{"text":"ジョブレベルアップ!! (Lv.","bold":false},{"score":{"name":"@s","objective":"cal.num"},"bold":false},{"text":"=>Lv.","bold":false},{"score":{"name":"@s","objective":"stat_player.Job_LV"},"bold":false},{"text":")","bold":false}]
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 1 2 0
    execute if score @s stat_player.Job_XP >= @s stat_player.Job_Req_XP run scoreboard players operation @s stat_player.Job_XP -= @s stat_player.Job_Req_XP
##レベルチェック(Null値対策)
    execute unless score @s stat_player.LV matches 1.. run scoreboard players set @s stat_player.LV 1
    execute unless score @s stat_player.XP matches 0.. run scoreboard players set @s stat_player.XP 0
    execute unless score @s stat_player.Req_XP matches 0.. run scoreboard players set @s stat_player.Req_XP 0
##ジョブレベルチェック(Null値対策)
    execute unless score @s stat_player.Job_LV matches 1.. run scoreboard players set @s stat_player.Job_LV 1
    execute unless score @s stat_player.Job_XP matches 0.. run scoreboard players set @s stat_player.Job_XP 0
    execute unless score @s stat_player.Job_Req_XP matches 0.. run scoreboard players set @s stat_player.Job_Req_XP 0