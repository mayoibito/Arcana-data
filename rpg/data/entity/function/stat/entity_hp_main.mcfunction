##HPが0になったとき
    data merge entity @s[scores={stat_entity.HP=..0}] {CustomName:'[{"text":"","color":"red"},{"text":"██████████","color":"dark_gray"}]',CustomNameVisible:true}
    #execute as @s[scores={stat_entity.HP=..0}] at @s run scoreboard players operation @a[distance=..100] stat.XP += @s stat.XP
    #ここにエメラルド付与functionを入れる
    execute as @s[scores={stat_entity.HP=..0}] at @s run tellraw @a[tag=c_test] [{"text":"敵HPが0になりました"}]
    damage @s[scores={stat_entity.HP=..0}] 9999 entity:physical by @p
#END

##HP上限突破対策
    execute if score @s stat_entity.HP > @s stat_entity.Max_HP run scoreboard players operation @s stat_entity.HP = @s stat_entity.Max_HP
#END

##通常攻撃対策
    data merge entity @s[scores={stat_entity.HP=1..}] {Health:1024}
#END