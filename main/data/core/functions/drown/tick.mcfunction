# 溺れる処理
## 水の中にいる
execute as @a[team=!] at @s align xyz if block ~ ~ ~ water run function core:drown/in

## 水の中にいない
execute as @a[team=!] at @s align xyz unless block ~ ~ ~ water if score $drawn PRM < $drawn:base PRM run function core:drown/out
