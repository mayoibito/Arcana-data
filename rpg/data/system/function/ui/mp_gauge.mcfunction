#まっしゅさんの経験値バーを自由に操作するコマンドをマルチ対応させた物を使っています。
#参考動画 https://www.youtube.com/watch?v=Dtn_FQcDF8E

# レベル129 はポイントが 0~1002
    xp set @s 129 levels
    execute store result score @s XP_Points run xp query @s points
# MPの割合(0~1000%)との違いを用いて「経験値」に代入する値を求める
    scoreboard players operation @s XP_Diff = @s stat_player.MP
    scoreboard players operation @s XP_Diff *= #1000 XPBar
    scoreboard players operation @s XP_Diff /= @s stat_player.Max_MP
    scoreboard players operation @s XP_Diff -= @s XP_Points
    scoreboard players operation @s XP_Diff /= #6 XPBar
    scoreboard players operation @s XP_Points += @s XP_Diff
# スコアの値を「経験値」に代入
    xp set @s 0 points
    execute if score @s XP_Points matches 512.. run xp add @s 512 points
    execute if score @s XP_Points matches 512.. run scoreboard players remove @s XP_Points 512
    execute if score @s XP_Points matches 256.. run xp add @s 256 points
    execute if score @s XP_Points matches 256.. run scoreboard players remove @s XP_Points 256
    execute if score @s XP_Points matches 128.. run xp add @s 128 points
    execute if score @s XP_Points matches 128.. run scoreboard players remove @s XP_Points 128
    execute if score @s XP_Points matches 64.. run xp add @s 64 points
    execute if score @s XP_Points matches 64.. run scoreboard players remove @s XP_Points 64
    execute if score @s XP_Points matches 32.. run xp add @s 32 points
    execute if score @s XP_Points matches 32.. run scoreboard players remove @s XP_Points 32
    execute if score @s XP_Points matches 16.. run xp add @s 16 points
    execute if score @s XP_Points matches 16.. run scoreboard players remove @s XP_Points 16
    execute if score @s XP_Points matches 8.. run xp add @s 8 points
    execute if score @s XP_Points matches 8.. run scoreboard players remove @s XP_Points 8
    execute if score @s XP_Points matches 4.. run xp add @s 4 points
    execute if score @s XP_Points matches 4.. run scoreboard players remove @s XP_Points 4
    execute if score @s XP_Points matches 2.. run xp add @s 2 points
    execute if score @s XP_Points matches 2.. run scoreboard players remove @s XP_Points 2
    execute if score @s XP_Points matches 1.. run xp add @s 1 points
    execute if score @s XP_Points matches 1.. run scoreboard players remove @s XP_Points 1
# スコアの値を「レベルの値」に代入
    xp set @s 0 levels
    scoreboard players operation @s XP_Levels = @s stat_player.MP
    execute if score @s XP_Levels matches 8192.. run xp add @s 8192 levels
    execute if score @s XP_Levels matches 8192.. run scoreboard players remove @s XP_Levels 8192
    execute if score @s XP_Levels matches 4096.. run xp add @s 4096 levels
    execute if score @s XP_Levels matches 4096.. run scoreboard players remove @s XP_Levels 4096
    execute if score @s XP_Levels matches 2048.. run xp add @s 2048 levels
    execute if score @s XP_Levels matches 2048.. run scoreboard players remove @s XP_Levels 2048
    execute if score @s XP_Levels matches 1024.. run xp add @s 1024 levels
    execute if score @s XP_Levels matches 1024.. run scoreboard players remove @s XP_Levels 1024
    execute if score @s XP_Levels matches 512.. run xp add @s 512 levels
    execute if score @s XP_Levels matches 512.. run scoreboard players remove @s XP_Levels 512
    execute if score @s XP_Levels matches 256.. run xp add @s 256 levels
    execute if score @s XP_Levels matches 256.. run scoreboard players remove @s XP_Levels 256
    execute if score @s XP_Levels matches 128.. run xp add @s 128 levels
    execute if score @s XP_Levels matches 128.. run scoreboard players remove @s XP_Levels 128
    execute if score @s XP_Levels matches 64.. run xp add @s 64 levels
    execute if score @s XP_Levels matches 64.. run scoreboard players remove @s XP_Levels 64
    execute if score @s XP_Levels matches 32.. run xp add @s 32 levels
    execute if score @s XP_Levels matches 32.. run scoreboard players remove @s XP_Levels 32
    execute if score @s XP_Levels matches 16.. run xp add @s 16 levels
    execute if score @s XP_Levels matches 16.. run scoreboard players remove @s XP_Levels 16
    execute if score @s XP_Levels matches 8.. run xp add @s 8 levels
    execute if score @s XP_Levels matches 8.. run scoreboard players remove @s XP_Levels 8
    execute if score @s XP_Levels matches 4.. run xp add @s 4 levels
    execute if score @s XP_Levels matches 4.. run scoreboard players remove @s XP_Levels 4
    execute if score @s XP_Levels matches 2.. run xp add @s 2 levels
    execute if score @s XP_Levels matches 2.. run scoreboard players remove @s XP_Levels 2
    execute if score @s XP_Levels matches 1.. run xp add @s 1 levels
    execute if score @s XP_Levels matches 1.. run scoreboard players remove @s XP_Levels 1
# リセット
    scoreboard players reset @s XP_Levels
# 騒音対策
    stopsound @s player entity.player.levelup