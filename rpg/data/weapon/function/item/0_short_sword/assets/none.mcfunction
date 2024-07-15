particle crit ^ ^1 ^1.5 0.2 0.2 0.2 0.5 10
scoreboard players operation @s cal.num = @s stat_player.Final_AT_Max
#属性特攻計算
scoreboard players operation @s cal.num *= @s stat_player.Final_None_Break
scoreboard players set $100 cal.num 100
scoreboard players operation @s cal.num /= $100 cal.num
#会心計算
function weapon:item/0_short_sword/assets/crit
execute as @s[tag=Attack_Crit] at @s run scoreboard players operation @s cal.num *= @s stat_player.Final_Crit_Damage
execute as @s[tag=Attack_Crit] at @s run scoreboard players set $100 cal.num 100
execute as @s[tag=Attack_Crit] at @s run scoreboard players operation @s cal.num /= $100 cal.num
#デバッグ
scoreboard players operation @e[tag=Hit,distance=..10] cal.Damage_In_Ph_None += @s cal.num
tag @e[tag=Hit,distance=..10] remove Hit
tellraw @s[tag=c_test,tag=attacked_1,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.1=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_2,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.2=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_3,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.3=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_4,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.4=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_5,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.5=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_6,tag=!Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.6=> "},{"score":{"name":"@s","objective":"cal.num"}}]
#会心
tellraw @s[tag=c_test,tag=attacked_1,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.1-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_2,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.2-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_3,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.3-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_4,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.4-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_5,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.5-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
tellraw @s[tag=c_test,tag=attacked_6,tag=Attack_Crit] [{"text":"[短剣] 物理無属性攻撃LV.6-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
#タグ削除
tag @s remove Attack_Crit