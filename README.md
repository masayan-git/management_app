# ManagementApp

## 概要
マンションの管理運営ができるアプリです。

## テスト用アカウント
master(管理者用)
- email: master@gmail.com
- pass : 11111111

apartment(入居者用)
- email: apartment@gmail.com
- pass : 11111111

residence(入居者用)
- email: residence@gmail.com
- pass : 11111111


## 利用方法
masterアカウントでログインすると全ての機能が利用できます。
マンション毎に表示内容が異なるよう作成しましたので、入居者用アカウントでログインして頂くとその内容が確認できます。

## 目指した課題解決
### ペルソナ設定
- マンションを２棟所有しているオーナー
- 所有しているマンションを自分で管理したいと考えている
- 退去率を下げたいと考えている
### 課題
マンションを所有しているオーナーの中にはマンション経営以外にも仕事をしている場合が多く、管理に時間をかけれません。
入居者の居室設備に不備があった場合、状況を把握するためにオーナーが現地を訪問する必要があります。
その他、消防設備点検等の点検がある場合は入居者へ周知するために現地訪問が必要です。
マンション管理で一番時間を取るのは現地に訪問する作業であるため、訪問回数を少なくしつつ入居者の利便性が向上できるアプリが必要と考えました。
退去率についてはアプリを通じて入居者に付加価値を提供する必要があると考えました。

### 要件定義
#### 管理者、マンション毎のユーザー管理機能
入居者が退去した時は管理者がユーザー情報削除し、新規入居した時はユーザー情報を入力しアカウントを修正するため。
#### お知らせ投稿機能
お知らせは通常管理者が実際に現地に訪問して文書の配布などを行うが、アプリで通知することによって現地訪問の時間を無くすことができる。
#### お知らせ タグ付け機能
お知らせは定期点検等を想定。マンション毎に日にち等が異なるため分ける必要がある。また、全体に周知したい内容も稀にあるため全体への周知も可能。
#### チャット機能
マンション入居から居室の設備に不備があった場合、通常管理者が入居者宅へ訪問し現状を把握する必要があるが、チャット機能を利用すれば現地訪問することなく現状把握ができる。
#### チャット 画像 動画投稿機能
画像、動画を投稿できることで管理者が詳細に状況を把握できる。
例）不良設備の型式、修理できそうな不備なのか、取り替えが必要な不備なのか等。
#### コラム記事投稿機能
- マンション運営の円滑化
入居者の理解を得なければ実施できない工事、点検などを円滑に進めるため。
その工事、点検がなぜ必要なのかをコラムで投稿することで理解を求める。
※お知らせに記載することもできるが限界があるためコラムで詳しく説明できる。
- 入居者へ付加価値の提供
管理者が生活に役に立つ情報を投稿することで実現
- 収益化
管理者は入居者の個人情報を持っておりマーケティングが容易なためここで収益化も可能。
（例 火災保険の必要性を発信しアフィリエイトで収益化など）
#### 今後の実装予定
- 家賃管理機能
家賃の滞納状況、支払い状況を把握できる機能
- 本アプリからクレジットカードでの家賃支払い機能
クレジットカード支払いを可能とすることで滞納率を下げるため
- チャットポッド
本アプリにチャットポッドを実装し入居者からのよくある質問に対応。
例）家賃の振り込み先及び支払い方法、粗大ゴミの出し方、退去に関する手続き方法など。

### ER図
![オリジナルアプリ修正後](https://user-images.githubusercontent.com/68589347/92707410-3a77ee80-f390-11ea-8105-a25b78d605c2.png)



## masters(管理者)

| Column   |Type    | Options     |
| -------- |------- | ----------- |
| name     |string  | null: false |
| email    |string  | null: false |
| password |integer | null: false |

### Association
- has_many : chatroom_residences
- has_many : chatroom_apartments
- has_many : articles
- has_many : notices

## residences(user 入居者)

| Column       |Type      | Options                       |
| ------------ |--------- | ----------------------------- |
| name         | string   | null: false                   |
| email        | string   | null: false                   |
| password     | integer  | null: false                   |
| room_num     | integer  | null: false, uniqueness: true |
| phone_number | string   | null: false                   |

### Association
- has_one  : chatroom_residences
- has_one  : residence_messages


## chatroom_residences(管理者とresidence入居者 １対１のチャットルーム)

| Column       |Type        | Options                        |
| ------------ |----------- | ------------------------------ |
| name         | string     | null: false                    |

### Association
has_many : residence_messages


## residence_messages
| Column             | Type       | Options                        |
| ------------------ |----------- | ------------------------------ |
| residence          | references |              foreign_key: true |
| master             | references |              foreign_key: true |
| chatroom_residence | references | null: false, foreign_key: true |
| message            | text       |                                |
| image              | string     |                                |
| move               | string     |                                |

### Association
belongs_to : master
belongs_to : residence
belongs_to : chatroom_residence

## apartments(user 入居者)

| Column       |Type      | Options                       |
| ------------ |--------- | ----------------------------- |
| name         | string   | null: false                   |
| email        | string   | null: false                   |
| password     | integer  | null: false                   |
| room_num     | integer  | null: false, uniqueness: true |
| phone_number | string   | null: false                   |

### Association
- has_one  : chatroom_apartment
- has_one  : apartment_messages

## chatroom_apartments(管理者とresidence入居者 １対１のチャットルーム)

| Column       |Type        | Options                        |
| ------------ |----------- | ------------------------------ |
| name         | string     | null: false                    |

### Association
has_many : apartment_messages


## apartment_messages
| Column             | Type       | Options                        |
| ------------------ |----------- | ------------------------------ |
| apartment          | references |              foreign_key: true |
| master             | references |              foreign_key: true |
| chatroom_apartment | references | null: false, foreign_key: true |
| message            | text       |                                |
| image              | string     |                                |
| move               | string     |                                |

### Association
- belongs_to : master
- belongs_to : apartment
- belongs_to : chatroom_apartment


## articles（コラム記事）

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| content      | text       | null: false                    |
| master       | references | null: false, foreign_key: true | 

### Association
- belongs_to : master

## notices（お知らせ）

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| title        | string      | null: false                    |
| content      | text        | null: false                    |
| master       | references  | null: false, foreign_key: true |

### Association
- belongs_to : master
- has_many : notice_tags
- has_many : tags, through: :notice_tags

## tags(お知らせのタグ)

| Column       | Type      | Options                       |
| ------------ | --------- | ----------------------------- |
| name         | string    | null: false, uniqueness: true |

### Association
- has_many : notice_tags
- has_many : notices, through: :notice_tags



## notice_tags（中間テーブル）

| Column  | Type       | Options                        |
| ------- | ---------  | -----------------------------  |
| notice  | references | null: false, foreign_key: true |
| tag     | references | null: false, foreign_key: true |

### Association
belongs_to : notice
belongs_to : tag


