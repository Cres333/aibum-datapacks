# 溺れたときの処理
## TODO: 前回のセーブポイントへTP

## リセット
scoreboard players operation $drawn PRM = $drawn:base PRM
execute store result bossbar drawn value run scoreboard players get $drawn PRM
bossbar set drawn visible false
execute if score $drawn PRM matches ..20 run bossbar set drawn color red
execute if score $drawn PRM matches 21..40 run bossbar set drawn color yellow
execute if score $drawn PRM matches 41.. run bossbar set drawn color green
