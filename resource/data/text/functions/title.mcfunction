# Title表示用
## 初期化
data merge storage text {title: {}}

## メインタイトル
data modify storage text title.main.title set value {translate: "%s", with: [{text: "Aibum"}]}
data modify storage text title.main.sub set value {translate: "      %s", with: [{text: "- LOST ISLAND -"}]}
