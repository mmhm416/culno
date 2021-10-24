# README

# 概要
一般の家庭菜園

農家が生産している作物の中には、味や品質には変わりないのにサイズ等が規格から外れたもの、形状が独特なもの、傷や汚れがあるものなどが出品できないことを知りました。このため、上記のお店には出せない作物を売買できるwebサービスがあれば農家さんの収入向上および食品ロス削減につながると考え実装を行いました。発表後のさらなる追加の実装として、現在使っていない農機具の貸し借りやユーザ発信機能、いいね機能なども実装できれば、このwebサービスがqiitaのような農家の情報コミュニティに発展する可能性もあると思います。


# アプリケーション情報

アプリケーション概要

現段階では最も重要となる、食品ロス削減と農家の収入向上を目的とした作物の出品機能を実装しました。ユーザーを農家として登録すると商品を出品できるようになる。一般家庭として登録すると購入のみが可能となります。自身が出品した商品は、編集と削除をすることができます。他のユーザーが出品した商品は、クレジットカードを用いて購入することができ個数の指定も可能です。

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