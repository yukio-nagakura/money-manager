#!/usr/bin/env bash
# エラーが出た時点で終了
set -o errexit

# 必要なパッケージをインストール
bundle install

# 必要に応じて yarn もインストール（Webpackerなど使用している場合）
# yarn install --check-files

# データベースのマイグレーションを実行
bundle exec rake db:migrate

# アセットプリコンパイル（使っているなら）
# bundle exec rake assets:precompile

