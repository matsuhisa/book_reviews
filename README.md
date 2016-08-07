# 本の口コミ投稿アプリケーション

- Rails チュートリアル と Rails Girls の間ぐらいで、ウェブアプリケーションを作ってみたい人

# 概要

- 本の口コミ（感想）が書ける
- 同じ本の口コミを読める

---

# 実行環境

- Ruby 2.2（2.3？）
- Ruby on Rails 4.2（5？）
- 仮）heroku で公開できるようにする（社内向けツールであれば...）
- 仮）CircleCI でテスト実施

---

# 機能概要

## できる事

- 会員（Gmailのアカウントがある人）が下記の事が可能
 - 本の登録
 - 口コミの登録

# 会員登録

- Google OAuth 2.0 を利用
- users テーブルに登録

## 仮）会員の種別

- 本の登録は限定する
- 本の登録をできる人を指定できる人を限定する

## 仮）権限

- 管理者（admin）
- 会員？
- 口コミ投稿のみだけ

# 本

## 本の一覧

## 本の詳細

- タイトル
- 著者
- asin
- 要約

- 口コミ

# 口コミ

## 口コミの一覧

- 読み終わった日順
- 本別

## 口コミの詳細

- 口コミ書いた人
- タイトル
- 読み終わった日
- 読んだ本
- 口コミ本文

# ユーザー

## ユーザー一覧

## ユーザー詳細

- ニックネーム（未設定時どうする？）
- プロフィール
- SNS
- 今までの口コミ

# rails generate scaffold, controller

```
rails generate scaffold Book title:string description:text author:string asin:string
rails generate scaffold Review title:string description:text user_id:integer book_id:integer
rails generate scaffold User name:string login_id:string email:string comment:text enabled:integer
rails generate controller welcome
```
