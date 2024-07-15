##MP消費量チェック
execute if score @s stat_player.Final_Consum_MP > @s stat_player.Final_MP_Cap run tag @s add consum_mp_over
tellraw @s[tag=consum_mp_over] [{"text":"魔力容量が足りない!!"}]