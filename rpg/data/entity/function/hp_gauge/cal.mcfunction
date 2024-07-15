#ゲージ割合をリセット
scoreboard players set @s system_entity.health_gauge_rate 0

#HPと最大HPをそれぞれ代入
scoreboard players operation @s system_entity.health_gauge_Max_HP = @s stat_entity.Max_HP
scoreboard players operation @s system_entity.health_gauge_HP = @s stat_entity.HP

##計算
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s system_entity.health_gauge_HP *= $100 cal.num
    scoreboard players operation @s system_entity.health_gauge_HP /= @s system_entity.health_gauge_Max_HP
    scoreboard players operation @s system_entity.health_gauge_rate = @s system_entity.health_gauge_HP
#END