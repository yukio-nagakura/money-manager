# 💰 Money Manager App

個人向けの簡易金銭管理アプリです。  
カテゴリごとの支出や収入を記録し、あとから見返せます。

## 🔧 使用技術

- Ruby on Rails 8.x
- SQLite3
- Turbo / Hotwire（標準構成）
- GitHub連携済み

## ✨ 主な機能

- 取引（収入・支出）の登録／一覧表示
- カテゴリの階層管理（食費 → 外食など）
- レスポンシブ対応（簡易UI）
- 左ペイン付きレイアウトでメニューが使いやすい

## 📷 スクリーンショット（任意）

※ アプリの画面画像を貼れると見栄えUP！

## 🚀 今後追加予定

- 月別・カテゴリ別の集計
- CSV出力
- ログイン機能
- デプロイ（Render）

---

## 🏁 セットアップ手順

```bash
git clone https://github.com/ユーザー名/money-manager.git
cd money-manager
bundle install
rails db:migrate
rails s
