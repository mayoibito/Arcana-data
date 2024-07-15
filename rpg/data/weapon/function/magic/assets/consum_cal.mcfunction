##MP消費軽減量計算
    scoreboard players operation @s stat_player.Final_Consum_MP = @s stat_player.Base_Consum_MP
    scoreboard players operation @s stat_player.Final_Consum_MP *= @s stat_player.Final_Cover_MP
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s stat_player.Final_Consum_MP /= $100 cal.num