##会心計算
    execute store result score @s cal.num_2 run random value 1..100
    execute if score @s cal.num_2 <= @s stat_player.Final_Crit_Rate run tag @s add Attack_Crit
