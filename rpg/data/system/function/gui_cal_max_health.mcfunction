##桁数計算(Health)
    #計算用スコアリセット
    tag @s remove stat.Health_Mem_end_1
    scoreboard players set @s stat.Health_Cal 0
    #計算(5桁)
    scoreboard players set $10000 cal.num 10000
    scoreboard players operation @s stat.Health_Cal = @s stat_player.Max_HP
    scoreboard players operation @s stat.Health_Cal /= $10000 cal.num
    scoreboard players add @s[tag=!stat.Health_Mem_end_1,scores={stat.Health_Cal=1..}] stat.Health_Mem_1 5
    tag @s[scores={stat.Health_Cal=1..}] add stat.Health_Mem_end_1
    #計算(4桁)
    scoreboard players set $1000 cal.num 1000
    scoreboard players operation @s stat.Health_Cal = @s stat_player.Max_HP
    scoreboard players operation @s stat.Health_Cal /= $1000 cal.num
    scoreboard players add @s[tag=!stat.Health_Mem_end_1,scores={stat.Health_Cal=1..}] stat.Health_Mem_1 4
    tag @s[scores={stat.Health_Cal=1..}] add stat.Health_Mem_end_1
    #計算(3桁)
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s stat.Health_Cal = @s stat_player.Max_HP
    scoreboard players operation @s stat.Health_Cal /= $100 cal.num
    scoreboard players add @s[tag=!stat.Health_Mem_end_1,scores={stat.Health_Cal=1..}] stat.Health_Mem_1 3
    tag @s[scores={stat.Health_Cal=1..}] add stat.Health_Mem_end_1
    #計算(2桁)
    scoreboard players set $10 cal.num 10
    scoreboard players operation @s stat.Health_Cal = @s stat_player.Max_HP
    scoreboard players operation @s stat.Health_Cal /= $10 cal.num
    scoreboard players add @s[tag=!stat.Health_Mem_end_1,scores={stat.Health_Cal=1..}] stat.Health_Mem_1 2
    tag @s[scores={stat.Health_Cal=1..}] add stat.Health_Mem_end_1
    #計算(1桁)
    scoreboard players set $1 cal.num 1
    scoreboard players operation @s stat.Health_Cal = @s stat_player.Max_HP
    scoreboard players operation @s stat.Health_Cal /= $1 cal.num
    scoreboard players add @s[tag=!stat.Health_Mem_end_1,scores={stat.Health_Cal=1..}] stat.Health_Mem_1 1
    tag @s[scores={stat.Health_Cal=1..}] add stat.Health_Mem_end_1
#END