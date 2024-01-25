# README

This README would normally document whatever steps are necessary to get the
application up and running.

## テーブル概要

### usersテーブル

| Column              | Type    | Options  | Example  |
| ------------------  | ------- | -------  | -------  |
| email               | string  | NOT NULL |          |
| encrypted_password  | string  | NOT NULL |          |
| name                | string  | NOT NULL |          |
| profile             | text    | NOT NULL |          |
| position            | text    |          | ex, NO TONIL |
| occupation          | text    |          |          |

### prototypesテーブル

| Column        | Type        | Options  |
| ----------    | -------     | -------  |
| title         | string      |NOT NULL  |
| catch_copy    | text        |NOT NULL  |
| concept       | text        |NOT NULL  |
| user          | references  |NOT NULL  |

- ※imageはActivestorageで実装するため含まない

### commentsテーブル

| Column        | Type        | Options   | Ex  |
| ----------    | -------     | -------   | ----|
| content       | text        | NOT NULL  |     |
| prototype     | references  | NOT NULL  |外部キー (prototypesテーブル参照) |
| user          | references  | NOT NULL  | 外部キー (usersテーブル参照) |

## テーブル関連性

- **usersテーブル**: prototypesテーブルと1対多の関係を持ちます。1人のユーザーが複数のプロトタイプを持つことができます。
- **prototypesテーブル**: usersテーブルと多対1の関係を持ちます。1つのプロトタイプは1人のユーザーによって作成されます。
- **commentsテーブル**: usersテーブルとprototypesテーブルの両方と多対多の関係を持ちます。複数のユーザーが複数のプロトタイプにコメントを残すことができます。
