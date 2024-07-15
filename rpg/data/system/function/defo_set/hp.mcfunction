##HP基礎値設定

##計算用スコア設定
    scoreboard players set $9 cal.num 9
##基礎値設定（9+[LV]）
    scoreboard players operation @s stat_player.Max_HP = @s stat_player.LV
    scoreboard players operation @s stat_player.Max_HP += $9 cal.num
##最大値設定
    scoreboard players set @s[scores={stat_player.Max_HP=121..}] stat_player.Max_HP 120
#終了