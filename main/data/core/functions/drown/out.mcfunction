# 水の中にいない
## バーを非表示に
bossbar set drawn visible false

## ゲージが減っていたら回復
scoreboard players add $drawn PRM 1

## バーの色を変更
execute if score $drawn PRM matches ..20 run bossbar set drawn color red
execute if score $drawn PRM matches 21..40 run bossbar set drawn color yellow
execute if score $drawn PRM matches 41.. run bossbar set drawn color green
