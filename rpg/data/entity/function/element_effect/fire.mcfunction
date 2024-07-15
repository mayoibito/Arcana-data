##火属性デバフ
#system_entity.element_effect_Fire.Count
#system_entity.element_effect_Fire.Timer
#system_entity.element_effect_Fire.EGG
#system_entity.element_effect_Fire.ICD
#TAG:] Element_Effect.Fire
#TAG:] Element_Effect.Fire_Check

##メインsys
    #見た目
    execute if entity @s[tag=Element_Effect.Fire] run effect give @s fire_resistance 2 10 true
    execute if entity @s[tag=!Element_Effect.Fire] run effect clear @s fire_resistance
    execute if entity @s[tag=Element_Effect.Fire] run data merge entity @s {Fire:20s}
    execute if entity @s[tag=!Element_Effect.Fire] run data merge entity @s {Fire:0s}
    #内部処理
    scoreboard players set @s[tag=Element_Effect.Fire,tag=!Element_Effect.Fire_Check] system_entity.element_effect_Fire.Count 5
    scoreboard players set @s[tag=Element_Effect.Fire,tag=!Element_Effect.Fire_Check] system_entity.element_effect_Fire.Timer 10
    tag @s[tag=Element_Effect.Fire] add Element_Effect.Fire_Check
    #タイマー進行
    scoreboard players remove @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=1..}] system_entity.element_effect_Fire.Timer 1
    #ダメージ発生
    execute if entity @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0}] run scoreboard players operation @s cal.Damage_In_Ph_None += @s stat_entity.LV
    tag @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0}] add No_Knockback_Ph_None
    #サウンド&パーティクル
    execute if entity @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0}] run playsound block.fire.extinguish voice @a ~ ~1 ~ 1 1.5 0
    execute if entity @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0}] run particle smoke ~ ~1 ~ 0.6 0.6 0.6 0 10
    #カウント減少&タグ削除
    scoreboard players remove @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0,system_entity.element_effect_Fire.Count=1..}] system_entity.element_effect_Fire.Count 1
    scoreboard players set @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Timer=0}] system_entity.element_effect_Fire.Timer 20
    tag @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Count=0}] remove Element_Effect.Fire_Check
    tag @s[tag=Element_Effect.Fire,scores={system_entity.element_effect_Fire.Count=0}] remove Element_Effect.Fire
#END
