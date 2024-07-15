##長杖 スキル発動時実行内容

##メイン
    function weapon:magic/main





##返り
    execute if entity @s[tag=used_skill] if predicate weapon:check_mg/book run tellraw @s [{"text":"[エラー] 実行可能な魔法がありません","color":"#ff0000"}]
    execute if entity @s[tag=used_skill] unless predicate weapon:check_mg/book run tellraw @s [{"text":"魔法がセットされていないようだ...","color":"#ffffff"}]
    tag @s remove used_skill
#END