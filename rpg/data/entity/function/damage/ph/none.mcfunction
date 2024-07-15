##物理無属性 被ダメージ計算

## 計算
    #[(受けたダメージ)×500]÷(物理攻撃耐性)÷500
    scoreboard players set $500 cal.num 500
    scoreboard players operation @s stat_entity.Physical_DF += $500 cal.num
    scoreboard players operation @s cal.Damage_In_Ph_None *= $500 cal.num
    scoreboard players operation @s cal.Damage_In_Ph_None /= @s stat_entity.Physical_DF
    #(受けたダメージ)*(無属性耐性[%])
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s cal.num = $100 cal.num
    scoreboard players operation @s cal.num -= @s stat_entity.None_DF
    scoreboard players operation @s cal.Damage_In_Ph_None *= @s cal.num
    scoreboard players operation @s cal.Damage_In_Ph_None /= $100 cal.num
    #(受けたダメージ)が-に行ってないかをチェック
    scoreboard players set @s[scores={cal.Damage_In_Ph_None=..0}] cal.Damage_In_Ph_None 0
    #(受けたダメージ)を(発生ダメージ)に代入
    scoreboard players operation @s cal.Damage_Out_Ph_None = @s cal.Damage_In_Ph_None
    scoreboard players set @s cal.Damage_In_Ph_None 0

##ダメージ表示
    #(発生ダメージ)をStorageに代入
    execute as @s at @s store result storage damage_ph_in_none score int 1 run scoreboard players get @s cal.Damage_Out_Ph_None
    #(発生ダメージ)を(ダメージ表示Function)に代入して実行
    function entity:damage/show/none with storage damage_ph_in_none

##被ダメージ
    scoreboard players operation @s stat_entity.HP -= @s cal.Damage_Out_Ph_None
    damage @s[tag=!No_Knockback_Ph_None,scores={stat_entity.HP=1..}] 1 entity:physical by @p
    #damage @s[tag=No_Knockback_Ph_None,scores={stat_entity.HP=1..}] 0 entity:physical by @p
    function entity:stat/entity_hp_main
    tag @s remove No_Knockback_Ph_None
#END