##ステータス適応
    function system:cal/main
##ステータス表示
    tellraw @s [{"text":"------<","bold":true},{"selector":"@s","bold":false},{"text":"のステータス","bold":false},{"text":">------","bold":true}]
    #基礎ステータス
    tellraw @s [{"text":"\uE00BLV:","italic":false},{"score":{"name":"@s","objective":"stat_player.LV"},"color":"#7cfc00"},{"text":" (","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.XP"},"color":"#7cfc00"},{"text":"/","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Req_XP"},"color":"#c0c0c0"},{"text":")","color":"#ffffff"},{"text":"   \uE00B職業LV:","italic":false},{"score":{"name":"@s","objective":"stat_player.Job_LV"},"color":"#fc7e00"},{"text":" (","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Job_XP"},"color":"#fc7e00"},{"text":"/","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Job_Req_XP"},"color":"#c0c0c0"},{"text":")","color":"#ffffff"}]
    tellraw @s [{"text":"\uE009HP: ","italic":false},{"score":{"name":"@s","objective":"stat_player.HP"},"color":"#ea5550"},{"text":"/","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Max_HP"},"color":"#993734"},{"text":"   \uE00A"},{"text":"MP: ","italic":false},{"score":{"name":"@s","objective":"stat_player.MP"},"color":"#00ffff"},{"text":"/","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Max_MP"},"color":"#008080"}]
    ##攻撃力
    tellraw @s [{"text":"\uE007筋力: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_AT"},"color":"#ea5532"},{"text":"   \uE00E技量: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_SK"},"color":"#ea5532"},{"text":"   \uE00F知力: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_ITL"},"color":"#ea5532"}]
    ##会心系
    tellraw @s [{"text":"\uE00C会心率: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_Crit_Rate"},"color":"#ffd700"},{"text":"%"},{"text":"   \uE00D会心ダメージ: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_Crit_Damage"},"color":"#ff3c1a"},{"text":"%"}]
    ##防御力
    tellraw @s [{"text":"\uE007物理防御力: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_Physical_DF"},"color":"#cbd0d3"},{"text":"   \uE008魔法防御力: ","italic":false},{"score":{"name":"@s","objective":"stat_player.Final_Magic_DF"},"color":"#cbd0d3"}]
    ##属性特攻
    tellraw @s [{"text":"\uE000"},{"text":"無属性特攻: ","color":"#ffffff"},{"score":{"name":"@s","objective":"stat_player.Final_None_Break"},"color":"#ffffff"},{"text":"%"}]
    tellraw @s [{"text":"\uE001"},{"text":"火属性特攻: ","color":"#ff4500"},{"score":{"name":"@s","objective":"stat_player.Final_Fire_Break"},"color":"#ffffff"},{"text":"%"},{"text":"   \uE002"},{"text":"水属性特攻: ","color":"#00bfff"},{"score":{"name":"@s","objective":"stat_player.Final_Water_Break"},"color":"#ffffff"},{"text":"%"}]
    tellraw @s [{"text":"\uE003"},{"text":"氷属性特攻: ","color":"#afeeee"},{"score":{"name":"@s","objective":"stat_player.Final_Ice_Break"},"color":"#ffffff"},{"text":"%"},{"text":"   \uE004"},{"text":"雷属性特攻: ","color":"#ffff00"},{"score":{"name":"@s","objective":"stat_player.Final_Elect_Break"},"color":"#ffffff"},{"text":"%"}]
    tellraw @s [{"text":"\uE005"},{"text":"光属性特攻: ","color":"#ffe4b5"},{"score":{"name":"@s","objective":"stat_player.Final_Light_Break"},"color":"#ffffff"},{"text":"%"},{"text":"   \uE006"},{"text":"闇属性特攻: ","color":"#6800b3"},{"score":{"name":"@s","objective":"stat_player.Final_Night_Break"},"color":"#ffffff"},{"text":"%"}]

##終了
    playsound ui.button.click voice @s ~ ~ ~ 1 2 0