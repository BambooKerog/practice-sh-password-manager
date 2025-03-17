#!/bin/bash

# 保存先のファイル名
output_file="./data/backup_passwords.txt"

echo "パスワードマネージャーへようこそ！"

# サービス名の入力
read -p "サービス名を入力してください: " service_name

# ユーザー名の入力
read -p "ユーザー名を入力してください: " user_name

#　パスワードの入力
read -sp "パスワードを入力してください: " password

#　入力結果の保存
echo "$service_name:$user_name:$password" >> "$output_file"

# 入力が完了したら返す
echo
echo "Thank you!"
