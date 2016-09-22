# 本の口コミ投稿アプリケーション

---

# 課題

- [ ] 価値仮説について未記載
- [ ] ユーザー登録
 - Google oAuth2
 - API での認証
- [ ] 見た目の調整
 - Material Design Lite の利用
- [ ] Markdownで口コミが書ける
 - はてな記法っぽいもの
- [ ] テストを書く
 - rspec
- [ ] rubocopの導入
- [ ] CI
- [x] herokuへのデプロイ
 - https://secure-fjord-21755.herokuapp.com/
----

## アプリケーション作成の目的

- Rails チュートリアル と Rails Girls の間ぐらいで、ウェブアプリケーションを作ってみたい人
 - 認証
 - 書く、読む、編集
 - マークアップ
 - テスト
 - 本番公開
 - 継続すること

# 概要

- 本の口コミ（感想）が書ける
- 同じ本の口コミを読める

## 価値仮説

## URL設計

### 未登録者

画面名 | URL | 内容
----- | ----- | -----
トップ | / | 口コミ一覧 と 書籍一覧
書籍一覧 | /books/ |
書籍詳細 | /books/:book_id/ |
仮）書籍読んだ人 | /books/reviews/ |
口コミ一覧 | /reviews/ |
口コミ詳細 | /reviews/:review_id/ |
ユーザ一覧 | /users/ |
ユーザ詳細 | /users/:user_id/ |
サインオン | /sign_on | ユーザ登録
サインイン | /sign_in |
サインアウト | /sign_out |

### 登録者

画面名 | URL | 内容
----- | ----- | -----
マイページ | /my/ |
口コミ投稿 | /reviews/new |
口コミ編集 | /reviews/edit |
プロフィール編集 | /my/edit |

### 管理者

画面名 | URL | 内容
----- | ----- | -----
書籍登録 | /books/new |
書籍編集 | /books/edit |

---

# 実行環境

- Ruby 2.2（2.3？）
- Ruby on Rails 4.2（5？）
- 仮）heroku で公開できるようにする（社内向けツールであれば...）
- 仮）CircleCI でテスト実施

# Google API OAuth2.0

- https://github.com/zquestz/omniauth-google-oauth2
- http://qiita.com/giiko_/items/b0b2ff41dfb0a62d628b

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
rails generate scaffold Review title:string description:text completion_at:date user_id:integer book_id:integer
rails generate scaffold User name:string login_id:string email:string comment:text enabled:integer
rails generate controller welcome
rails generate controller my
```
