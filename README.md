# テーブル設計

## user table

| column      | types  | options                   |
| ----------- | ------ | ------------------------- |
| email       | string | null: false, unique: true |
| password    | string | null: false               |
| username    | string | null: false, unique: true |
| name        | string | null: false               |
| phonenumber | string | null: false               |
| dateofbirth | date   | null: false               |

### association

has_many :fosters
has_many :dogruns
has_many :recommends
has_many :posts
has_many :trainings

## foster table

| column        | types      | options           |
| ------------- | ---------- | ----------------- |
| title         | string     | null: false       |
| detail        | text       | null: false       |
| image         |            |                   |
| prefecture_id | integer    | null: false       |
| gender_id     | integer    | null: false       |
| age_id        | integer    | null: false       |
| month_id      | integer    | null: false       |
| vaccine_id    | integer    | null: false       |
| castration_id | integer    | null: false       |
| user          | references | foreign_key: true |

### association

belongs_to :user
belongs_to :inquiry

## inquiry table

| column  | types      | options           |
| ------- | ---------- | ----------------- |
| text    | text       | null: false       |
| email   | string     | null: false       |
| inquiry | references | foreign_key :true |
| user    | references | foreign_key: true |

### association

has_many :fosters

## recommend table

| column | types      | options           |
| ------ | ---------- | ----------------- |
| title  | string     | null: false       |
| detail | text       |                   |
| image  |            |                   |
| amazon |            |                   |
| user   | references | foreign_key: true |

### association

belongs_to :user

## dogrun table

| column     | types      | options           |
| ---------- | ---------- | ----------------- |
| title      | string     | null: false       |
| detail     | text       |                   |
| image      |            |                   |
| google map |            |                   |
| user       | references | foreign_key: true |

### association

belongs_to :user
belongs_to :addreview

## addreview table

| column | types      | options           |
| ------ | ---------- | ----------------- |
| text   | text       | null: false       |
| user   | references | foreign_key: true |
| dogrun | references | foreign_key: true |

### association

has_many :dogruns

## training table

| column  | types      | options           |
| ------- | ---------- | ----------------- |
| title   | string     | null: false       |
| detail  | text       | null: false       |
| youtube |            |                   |
| image   |            |                   |
| user    | references | foreign_key: true |

### association

belongs_to :user

## post table

| column | types      | options           |
| ------ | ---------- | ----------------- |
| title  | string     | null: false       |
| detail | text       | null: false       |
| image  |            |                   |
| user   | references | foreign_key: true |

### association

belongs_to :user