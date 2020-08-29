# README

## masters(管理者)

| Column   |Type    | Options     |
| -------- |------- | ----------- |
| name     |string  | null: false |
| email    |string  | null: false |
| password |integer | null: false |

### Association
- has_many : chatroom_residences
- has_many : chatroom_apartment
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


## chatroom_residences(管理者とresidence入居者 １対１のチャットルーム)

| Column       |Type        | Options                        |
| ------------ |----------- | ------------------------------ |
| name         | string     | null: false                    |
| residence    | references | null: false, foreign_key: true |
| master       | references | null: false, foreign_key: true |
| message      | text       |                                |
| image        | string     |                                |
| move         | string     |                                |

### Association
belongs_to : master
belongs_to : residence



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

## chatroom_apartment(管理者とapartment入居者 １対１のチャットルーム)
| Column       |Type        | Options                        |
| ------------ |----------- | ------------------------------ |
| name         | string     | null: false                    |
| apartment    | references | null: false, foreign_key: true |
| master       | references | null: false, foreign_key: true |
| message      | text       |                                |
| image        | string     |                                |
| move         | string     |                                |

### Association
belongs_to : master
belongs_to : apartment


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


