# TRASK   -- Travel ＋ Ask --

旅に特化したQ&amp;Aアプリです。 (2020/5/3 close)


## 機能一覧

**ユーザー関連**

- 登録/編集/削除
- ログイン/ログアウト
- プロフィール画像アップロード
- 管理者権限

**質問・回答関連**

- 投稿/編集/削除
- 質問へのタグ付け・カテゴリ分け
- 一覧表示
- 質問検索
- カテゴリ検索
- 回答へのコメント・いいね（Ajax）
- 質問ランキング表示（回答多い順）
- 回答ランキング表示（いいね多い順）

## 使用技術
- Ruby 2.5.1
- Rails 5.2.3
- PostgreSQL 9.2.24
- AWS EC2
- AWS S3 - 画像管理
- Capistrano - 自動デプロイ
- RSpec - 単体・統合テスト
- carriewave - 画像アップロード
- will_paginate - ページネーション
- Ransack - 検索機能
- bootstrap4 
- slim
- sass
