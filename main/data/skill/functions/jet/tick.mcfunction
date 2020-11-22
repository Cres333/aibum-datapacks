# カウンティング
## オフハンドに持っていたら加算
execute if entity @a[team=!,predicate=skill:has-jet] if score $jet SKILL < $jet:limit SKILL run scoreboard players add $jet SKILL 1

## LIMITまで使ったら一定時間クールダウン
execute if score $jet:limit SKILL <= $jet SKILL run function skill:jet/cool

## オフハンドに持っていて、LIMIT前だったら効果発動
execute if entity @a[team=!,predicate=skill:has-jet] unless score $jet:limit SKILL <= $jet SKILL run effect give @a[team=!] levitation 1 1 true

## オフハンドに持っていなくて、LIMIT前だったら即時上限に変更
execute if entity @a[team=!,predicate=!skill:has-jet] if score $jet:cool SKILL matches ..0 if score $jet SKILL matches 1.. run scoreboard players operation $jet SKILL = $jet:limit SKILL
