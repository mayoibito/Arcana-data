##MP基礎値設定

##計算用スコア設定
    scoreboard players set $2 cal.num 2
    scoreboard players set $100 cal.num 100
##基礎値設定（98+[LV]×2）（LVが1の時のみ100固定）
    scoreboard players operation @s stat_player.Max_MP = @s stat_player.LV
    scoreboard players operation @s stat_player.Max_MP *= $2 cal.num
    scoreboard players operation @s stat_player.Max_MP += $100 cal.num
##最大値設定
    scoreboard players set @s[scores={stat_player.Max_MP=5001..}] stat_player.Max_MP 5000
    scoreboard players set @s[scores={stat_player.LV=..1}] stat_player.Max_MP 100
#

##自然回復量
    scoreboard players set @s stat_player.Base_Regene_MP 100