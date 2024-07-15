#共通パーティクル＆サウンド
    particle sweep_attack ^ ^1 ^1.5
    execute as @s[tag=attacked_6] at @s run particle enchanted_hit ^ ^1 ^1.5 0.2 0.2 0.2 0.5 10
    playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.0 0

##攻撃判定
    execute anchored eyes positioned ^ ^ ^ run function weapon:origin/sword
    execute anchored eyes positioned ^0.25 ^ ^ run function weapon:origin/sword
    execute anchored eyes positioned ^-0.25 ^ ^ run function weapon:origin/sword

##攻撃力再計算
    function system:cal/at

##チャージ段階
    scoreboard players set $0 cal.num 0
    scoreboard players set $25 cal.num 25
    scoreboard players set $50 cal.num 50
    scoreboard players set $75 cal.num 75
    scoreboard players set $100 cal.num 100
    scoreboard players set $125 cal.num 125
    execute as @s[tag=attacked_1] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $0 cal.num
    execute as @s[tag=attacked_2] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $25 cal.num
    execute as @s[tag=attacked_3] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $50 cal.num
    execute as @s[tag=attacked_4] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $75 cal.num
    execute as @s[tag=attacked_5] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $100 cal.num
    execute as @s[tag=attacked_6] at @s run scoreboard players operation @s stat_player.Final_AT_Max *= $125 cal.num
    scoreboard players operation @s stat_player.Final_AT_Max /= $100 cal.num

##属性分岐-計算＆攻撃
    #無属性
    execute as @s[scores={stat_player.Attribute=0}] at @s run function weapon:item/1_broad_sword/assets/none

##タグ削除
    tag @s remove attacked
    tag @s remove attacked_1
    tag @s remove attacked_2
    tag @s remove attacked_3
    tag @s remove attacked_4
    tag @s remove attacked_5
    tag @s remove attacked_6
#END