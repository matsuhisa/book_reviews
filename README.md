# 本の口コミ投稿アプリケーション

## できる事

- 会員（Gmailのアカウントがある人）が下記の事が可能
 - 本の登録
 - 口コミの登録

# 会員登録

- Google OAuth 2.0 を利用
- users テーブルに登録

# 本の登録

- 本の一覧
- 本の詳細
 - 本にある口コミの一覧

# 本の口コミ登録

- 口コミの一覧
- 口コミの詳細

# rails generate scaffold, controller

```
rails generate scaffold Book title:string description:text author:string asin:string
rails generate scaffold Review title:string description:text user_id:integer book_id:integer
rails generate scaffold User name:string login_id:string email:string comment:text enabled:integer
rails generate controller welcome
```
