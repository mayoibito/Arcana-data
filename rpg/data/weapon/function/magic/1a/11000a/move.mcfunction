##フレイム-アマスタ
    #移動
    tp @s ^ ^ ^0.5
    #移動パーティクル
    particle dust{color:[0.9,0.4,0.2],scale:1.5} ~ ~1.4 ~ 0.1 0.1 0.1 0.5 1
    particle dust{color:[1.0,0.4,0.2],scale:1.5} ~ ~1.4 ~ 0.1 0.1 0.1 0.5 1
    particle dust{color:[1.0,0.3,0.1],scale:1.5} ~ ~1.4 ~ 0.1 0.1 0.1 0.5 1
    particle dust{color:[0.0,0.0,0.0],scale:1.0} ~ ~1.4 ~ 0.1 0.1 0.1 0.5 1
    particle flame ~ ~1.4 ~ 0.1 0.1 0.1 0 2

    #移動距離カウント
    scoreboard players add @s stat_armor.move_count 1
    #判定
    execute anchored eyes positioned ^ ^1.25 ^ run function weapon:origin/magic
    execute if entity @e[tag=Entity,tag=Magic_Hit,distance=..5] run tag @s add magic_boom
    execute if entity @s[tag=magic_boom] run scoreboard players operation @e[tag=Entity,tag=Magic_Hit,distance=..5] cal.Damage_In_Mg_Fire += @s stat_armor.damage
    execute if entity @s[tag=magic_boom] run particle lava ~ ~1 ~ 0.5 0.5 0.5 1 15
    execute if entity @s[tag=magic_boom] run particle flame ~ ~1 ~ 0.6 0.6 0.6 0 10
    execute if entity @s[tag=magic_boom] run playsound entity.blaze.shoot voice @a ~ ~ ~ 1 1.25 0
    execute if entity @s[tag=magic_boom] run playsound entity.generic.explode voice @a ~ ~ ~ 0.6 1.5 0
    tag @e[tag=Entity,distance=..5] remove Magic_Hit
    kill @s[tag=magic_boom]
    #距離制限
    kill @s[scores={stat_armor.move_count=30..}]
    #当たり判定
    function weapon:magic/assets/object_check