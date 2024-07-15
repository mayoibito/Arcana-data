#ICD進行
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_None.ICD=1..}] system_entity.element_effect_None.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Fire.ICD=1..}] system_entity.element_effect_Fire.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Water.ICD=1..}] system_entity.element_effect_Water.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Ice.ICD=1..}] system_entity.element_effect_Ice.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Elect.ICD=1..}] system_entity.element_effect_Elect.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Light.ICD=1..}] system_entity.element_effect_Light.ICD 1
    scoreboard players remove @e[tag=Entity,scores={system_entity.element_effect_Night.ICD=1..}] system_entity.element_effect_Night.ICD 1
#ICD&EGGチェック（属性によってICDとEGGは調整）
    #タグ付け（EGGはここで調整）
    tag @e[tag=Entity,scores={system_entity.element_effect_None.ICD=0,system_entity.element_effect_None.EGG=100..}] add Element_Effect.None
    tag @e[tag=Entity,scores={system_entity.element_effect_Fire.ICD=0,system_entity.element_effect_Fire.EGG=100..}] add Element_Effect.Fire
    tag @e[tag=Entity,scores={system_entity.element_effect_Water.ICD=0,system_entity.element_effect_Water.EGG=100..}] add Element_Effect.Water
    tag @e[tag=Entity,scores={system_entity.element_effect_Ice.ICD=0,system_entity.element_effect_Ice.EGG=100..}] add Element_Effect.Ice
    tag @e[tag=Entity,scores={system_entity.element_effect_Elect.ICD=0,system_entity.element_effect_Elect.EGG=100..}] add Element_Effect.Elect
    tag @e[tag=Entity,scores={system_entity.element_effect_Light.ICD=0,system_entity.element_effect_Light.EGG=100..}] add Element_Effect.Light
    tag @e[tag=Entity,scores={system_entity.element_effect_Night.ICD=0,system_entity.element_effect_Night.EGG=100..}] add Element_Effect.Night
    #ICD設定（ICDはここで調整）
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_None.ICD=0,system_entity.element_effect_None.EGG=100..}] system_entity.element_effect_None.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Fire.ICD=0,system_entity.element_effect_Fire.EGG=100..}] system_entity.element_effect_Fire.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Water.ICD=0,system_entity.element_effect_Water.EGG=100..}] system_entity.element_effect_Water.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Ice.ICD=0,system_entity.element_effect_Ice.EGG=100..}] system_entity.element_effect_Ice.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Elect.ICD=0,system_entity.element_effect_Elect.EGG=100..}] system_entity.element_effect_Elect.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Light.ICD=0,system_entity.element_effect_Light.EGG=100..}] system_entity.element_effect_Light.ICD 200
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Night.ICD=0,system_entity.element_effect_Night.EGG=100..}] system_entity.element_effect_Night.ICD 200
    #ICDが残っている&EGGが上限に到達
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_None.ICD=1..,system_entity.element_effect_None.EGG=100..}] system_entity.element_effect_None.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Fire.ICD=1..,system_entity.element_effect_Fire.EGG=100..}] system_entity.element_effect_Fire.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Water.ICD=1..,system_entity.element_effect_Water.EGG=100..}] system_entity.element_effect_Water.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Ice.ICD=1..,system_entity.element_effect_Ice.EGG=100..}] system_entity.element_effect_Ice.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Elect.ICD=1..,system_entity.element_effect_Elect.EGG=100..}] system_entity.element_effect_Elect.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Light.ICD=1..,system_entity.element_effect_Light.EGG=100..}] system_entity.element_effect_Light.EGG 99
    scoreboard players set @e[tag=Entity,scores={system_entity.element_effect_Night.ICD=1..,system_entity.element_effect_Night.EGG=100..}] system_entity.element_effect_Night.EGG 99
#END

#属性デバフ
    #execute as @e[tag=Entity] at @s run function entity:element_effect/None
    execute as @e[tag=Entity] at @s run function entity:element_effect/fire
    #execute as @e[tag=Entity] at @s run function entity:element_effect/Water
    #execute as @e[tag=Entity] at @s run function entity:element_effect/Ice
    #execute as @e[tag=Entity] at @s run function entity:element_effect/Elect
    #execute as @e[tag=Entity] at @s run function entity:element_effect/Light
    #execute as @e[tag=Entity] at @s run function entity:element_effect/Night
#END
