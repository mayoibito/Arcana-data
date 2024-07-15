##DF基礎値設定

##計算用スコア設定
    scoreboard players set $2 cal.num 2
##基礎値設定（[LV]×2）
    scoreboard players operation @s stat_player.Base_Physical_DF = @s stat_player.LV
    scoreboard players operation @s stat_player.Base_Physical_DF *= $2 cal.num
    scoreboard players operation @s stat_player.Base_Magic_DF = @s stat_player.LV
    scoreboard players operation @s stat_player.Base_Magic_DF *= $2 cal.num
#終了