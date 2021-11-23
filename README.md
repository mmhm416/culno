# README

# アプリ名
カルノーカ

# 概要

家庭菜園を行う方や農家の方などが自分で作った作物を出品公開、購入および評価メッセージ送付を行うことのできるアプリです。  
一般家庭の方が自分で育てた作物を公開し、評価やアドバイスをもらうこと  
および農家さんが市場で出品できない訳あり作物を出品し食品ロスを減らすことを目的として作っています。  
ユーザー登録していない状態でも出品作物の閲覧、検索、および作物へのメッセージ閲覧はできますが出品と購入、メッセージ作成はできません。  
作物の出品および購入はユーザー登録をすれば誰でもできます。ただし、購入を行う際は事前に住所の登録が必要です。  
メッセージは各作物ごとに送ることができます。出品者自身もメッセージ送付ができるので、  
意見交換や作物の育成状態の説明などのユーザー同士の交流も可能です。  

# 制作目的、使用法
・家庭菜園で栽培、収穫した野菜を通じての交流  
・キズや規格外などで市場で出品できない訳あり作物の販売経路を作ることで食品ロスを減らす  
・安い野菜の購入、まとめ買い。


# 機能説明

トップページ
出品されている作物が表示されておりクリックすると出品詳細ページへ遷移します。  
また、ログイン時は左上にニックネームが表示され,そこをクリックすると,マイページへ遷移します。

マイページ
トップーページからニックネームをクリックしてマイページに遷移できます。  
出品作物の確認より自分の出品した作物の一覧を確認することができます。  
住所情報の投稿より住所の新規登録ができます。複数登録が可能です。  
住所情報の確認から登録した住所の表示および修正、削除ができます。

ユーザー登録  
ユーザー登録は必要事項を記入して登録をします。パスワードは半角英数字6文字以上必須です。
ログイン時はログインボタンからログイン画面に遷移して、  
ニックネームとパスワードを6文字英数字を入力するとログインできます。  
ログアウトはログアウトボタンをクリックするとできます。 

住所登録
住所登録をしないと作物の購入はできない仕様になっています。  
住所の登録はニックネームをクリックしてマイページに遷移し、  
住所の登録より必要事項を記入して登録します。住所は複数登録可能です。  



作物出品
中央の"作物を出品する"ボタンより出品画面に遷移します。  
画像は4枚必須です。必要事項を記入し出品ボタンを押すと出品できます。
必要記入事項のうち値段は半角数字のみの入力で記入すると自動で手数料と合計金額が出表示されます。  



作物購入


メッセージ送付


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
.



# 接続先情報

https://culno.herokuapp.com/
Herokuでデプロイしているため、Herokuの仕様により本番環境にアクセス頂いた際に画像リンクが切れている可能性がございます。

ID/Pass
ID: ​​mmhm416
Pass: mmhm34328

テスト用アカウント等
購入者用
メールアドレス: test111@gmail.com
パスワード: test111
購入用カード情報
番号：4242424242424242
期限：12/24
セキュリティコード：123
出品者用
メールアドレス名: test222@gmail.com
パスワード: test222
Githubリポジトリ
https://github.com/mmhm416/culno



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