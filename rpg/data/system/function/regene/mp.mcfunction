##MP自然回復

##タイマーが4000を超えると1MP回復
    scoreboard players operation @s stat_player.MP_regene_Timer += @s stat_player.Final_Regene_MP
    scoreboard players add @s[scores={stat_player.MP_regene_Timer=4000..}] stat_player.MP 1
    execute as @s[scores={stat_player.MP_regene_Timer=4000..}] at @s if score @s stat_player.MP > @s stat_player.Max_MP run scoreboard players operation @s stat_player.MP = @s stat_player.Max_MP
    scoreboard players remove @s[scores={stat_player.MP_regene_Timer=4000..}] stat_player.MP_regene_Timer 4000