##魔法火属性 被ダメージ計算

## 計算
    #[(受けたダメージ)×500]÷(魔法攻撃耐性)÷500
    scoreboard players set $500 cal.num 500
    scoreboard players operation @s stat_entity.Magic_DF += $500 cal.num
    scoreboard players operation @s cal.Damage_In_Mg_Fire *= $500 cal.num
    scoreboard players operation @s cal.Damage_In_Mg_Fire /= @s stat_entity.Magic_DF
    #(受けたダメージ)*(火属性耐性[%])
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s cal.num = $100 cal.num
    scoreboard players operation @s cal.num -= @s stat_entity.Fire_DF
    scoreboard players operation @s cal.Damage_In_Mg_Fire *= @s cal.num
    scoreboard players operation @s cal.Damage_In_Mg_Fire /= $100 cal.num
    #(受けたダメージ)が-に行ってないかをチェック
    scoreboard players set @s[scores={cal.Damage_In_Mg_Fire=..0}] cal.Damage_In_Mg_Fire 0
    #(受けたダメージ)を(発生ダメージ)に代入
    scoreboard players operation @s cal.Damage_Out_Mg_Fire = @s cal.Damage_In_Mg_Fire
    scoreboard players set @s cal.Damage_In_Mg_Fire 0

##ダメージ表示
    #(発生ダメージ)をStorageに代入
    execute as @s at @s store result storage damage_mg_in_fire score int 1 run scoreboard players get @s cal.Damage_Out_Mg_Fire
    #(発生ダメージ)を(ダメージ表示Function)に代入して実行
    function entity:damage/show/fire with storage damage_mg_in_fire

##被ダメージ
    scoreboard players operation @s stat_entity.HP -= @s cal.Damage_Out_Mg_Fire
    damage @s[tag=!No_Knockback,scores={stat_entity.HP=1..}] 1 entity:physical by @p
    damage @s[tag=No_Knockback,scores={stat_entity.HP=1..}] 0 entity:physical by @p
    function entity:stat/entity_hp_main
    tag @s remove No_Knockback
##デバフ
    scoreboard players add @s system_entity.element_effect_Fire.EGG 10
#END