# README

# アプリ名
カルノーカ

# 概要
自身で育てた作物の出品、他ユーザーの作物の購入、および栽培者へのコメント、画像を通じた交流を行うことのできるアプリです。  
ユーザー登録していない状態でも作物の閲覧のみは可能です。登録すれば出品、購入、コメントができます。  
作物の出品および購入はユーザー登録をすれば誰でもできます。ただし、購入を行う際は事前に住所の登録が必要です。  
メッセージは各作物ごとに送ることができます。出品者自身もメッセージ送付ができるので、  
意見交換や作物の育成状態の説明などのユーザー同士の交流も可能です。  


# 制作目的、使用法
一般家庭の方  
自分で育てた作物の出品はもちろん非売品にして作物の育成日記として使用することもできます。
育成日記として使う場合は、コメント欄からテキストや画像を投稿して日々の栽培状況を公開することができます。  
また、それを見た他のユーザから感想やアドバイスをもらうことも期待できます。

農家さん  
市場で出品できない訳あり作物を出品し食品ロスを減らすこと  
および、販売経路の拡大によって利益拡大を狙うことができます。  
さらに、直接消費者の意見を聞くことで、販売商品の改善なども期待できます。  


# 機能説明

トップページ
出品されている作物が表示されておりクリックすると出品詳細ページへ遷移します。  
また、ログイン時は左上にニックネームが表示され,そこをクリックすると,マイページへ遷移します。
検索フォームからは調べたいワードを入力することで、出品作物の検索ができます。

![トップページ](public/c662a02ec5f8854a7c58d1f2a34920f3.png) 

作物詳細ページ
トップページより作物の画像をクリックすると各作物の詳細ページへ遷移します。  
ここでは、出品作物の詳細な説明と4枚の写真があります。  
大きい画像の下にある小さい画像をクリックすると大きい画像の中身が切り替わります。  
自身で出品した作物の場合、"作物の編集""削除"ボタンが存在し、ボタンをクリックで出品情報の編集と作物の削除ができます。  
他ユーザーの出品した作物で、販売品の設定になっている場合は購入ボタンがついています。  
販売品の設定であっても、住所の登録が未完了の場合は購入ボタンは表示されません。  
ページ下部には送付されたメッセージが表示されています。  

メッセージ送付
各作物詳細ページにはコメントや画像を投稿でき、作物の評価や感想、  
栽培途中の様子などの追加の情報やを書き込むことができます。  
出品者も他ユーザーも書き込みができます。  
投稿するにはコメントか投稿画像をフォームに入力する必要があります。  
"編集"、"削除"よりコメントの変更や削除ができます。

![詳細ページ](public/e49e0fb067fb1b3d25d664152ee37749.gif) 

マイページ
トップーページからニックネームをクリックしてマイページに遷移できます。  
"出品作物の確認"より自分の出品した作物の一覧を確認することができます。  
"住所情報の投稿"より住所の新規登録ができます。複数登録が可能です。  
"住所情報の確認"から登録した住所の表示および修正、削除ができます。

ユーザー登録  
ユーザー登録は必要事項を記入して登録をします。パスワードは半角英数字6文字以上必須です。
ログイン時はログインボタンからログイン画面に遷移して、  
ニックネームとパスワードを6文字英数字を入力するとログインできます。  
ログアウトはログアウトボタンをクリックするとできます。 

住所登録
住所登録をしないと作物の購入はできない仕様になっています。  
住所の閲覧は自身のみが可能で他ユーザーは閲覧不可能です。  
住所の登録はニックネームをクリックしてマイページに遷移し、  
"住所の登録"より必要事項を記入して登録します。住所は複数登録可能です。  

作物の一覧
自身の出品した作物の一覧が表示されます。  
販売停止や値段変更、説明文修正などを行いたいときに便利です。  

![マイページ&住所確認ページ](public/c9ea032f60146d3de470e0e6b0e5e194.gif) 

作物出品
中央の"作物を出品する"ボタンより出品画面に遷移します。  
画像は4枚必須です。必要事項を記入し出品ボタンを押すと出品できます。  
"非売、販売の選択"で"非売品/売切れ品"を選択すると、購入できないように、  
"販売品"を選択すると他の方が購入できるようになります。  
必要記入事項のうち値段は半角数字のみの入力で記入すると自動で手数料と合計金額が出表示されます。  
![出品ページ](public/616ebe8b35797cdc73e5b7ed05948356.gif) 

作物購入
住所の登録が完了のしているときは購入ボタンより遷移します。  
複数住所がある場合は住所を選択し、個数、クレジットカード情報を入力して購入します。  
購入する個数に応じて表示される値段が変わります。
![購入ページ](public/1ab9aca0ffff767db91902f670e43be0.gif) 


# 工夫した点
・住所をユーザーごとにあらかじめ登録することで購入時の手間を省くようにした。  
・各作物にメッセージ送付をできるようにすることで、どの作物がどんな評価をされているのかわかりやすくした。  
・また出品者自身も作物にメッセージを送れるようにすることで、購入、評価などをしたユーザーと交流できるようにした。  
・

# 今後実装したい機能

・フォロー機能  
・自動デプロイ機能  
・管理者ページの実装  
・いいね機能  




# 接続先情報

リンク：https://culno.herokuapp.com/  
テスト用アカウント等 購入者用 メールアドレス: test111@gmail.com  
パスワード: test111  
購入用カード情報 番号：4242424242424242  
期限：12/24 セキュリティコード：123  
出品者用 メールアドレス名:test222@gmail.com  
パスワード:test222  
Githubリポジトリ：https://github.com/mmhm416/culno  



# 使用技術(開発環境)

## バックエンド
Ruby, Ruby on Rails

## フロントエンド
Sass, css, HTML, JavaScript, JQuery

## データベース
MySQL, SequelPlo

## インフラ
AWS S3

## ソース管理
GitHub, GitHubDesktop

## テスト
RSpec

## エディタ
VSCode



# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | unique: true, null: false |
| encrypted_password | string  | null: false               |
| birthday           | date    | null: false               |
| level_id           | integer | null: false               |

### Association
- has_many :addresses
- has_many :crops
- has_many :purchases
- has_many :messages

## Address テーブル
| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| first_name       | string     | null: false                     |
| last_name        | string     | null: false                     |
| first_name_kana  | string     | null: false                     |
| last_name_kana   | string     | null: false                     |
| business_name    | string     |                                 |
| zip_code         | string     | null: false                     |
| prefecture_id    | integer    | null: false                     |
| city             | string     | null: false                     |
| adresses         | string     | null: false                     |
| building         | string     |                                 |
| phone_no         | string     | null: false                     |
| user             | references | null: false, foreign_key: true  |

### Association
- belongs_to :user
- has_many :purchases


## Crop テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| item_name         | string     | null: false                    |
| explanation       | text       | null: false                    |
| category_id       | integer    | null: false                    |
| condition_id      | integer    | null: false                    |
| delivery_cost_id  | integer    | null: false                    |
| prefecture_id     | integer    | null: false                    |
| delivery_time_id  | integer    | null: false                    |
| price             | integer    | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :purchases
- has_many :messages
- has_many :messages

## Purchase テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| crop             | references | null: false, foreign_key: true |
| address          | references | null: false, foreign_key: true |
| quantity         | integer    | null: false                    |


### Association
- belongs_to :user
- belongs_to :crop
- belongs_to :address

## Message テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| crop             | references | null: false, foreign_key: true |
| comment          | text       |                                |

### Association
- belongs_to :user
- belongs_to :crop

## ER図

![ER図](/public/c531cdcd5e5aa427365b280163f066e4.png) 
