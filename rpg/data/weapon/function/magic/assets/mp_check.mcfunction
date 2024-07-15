##MP消費量チェック
execute if score @s stat_player.Final_Consum_MP > @s stat_player.MP run tag @s add consum_mp_F
tellraw @s[tag=consum_mp_F] [{"text":"MPが足りない!!"}]