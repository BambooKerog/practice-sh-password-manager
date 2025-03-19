file_path="./data/passwords.txt"

# パスワードを追加する関数
add_password(){
    # サービス名/ユーザー名/パスワードの入力
    read -p "サービス名を入力してください：" service_name
    read -p "ユーザー名を入力してください：" user_name
    read -sp "パスワードを入力してください：" password
    echo

    #　入力結果の保存
    echo "$service_name:$user_name:$password" >> "$file_path"
    
    # 入力完了メッセージ
    echo "パスワードの追加は成功しました。"
}

# パスワードを取得する関数
get_password(){
    read -p "サービス名を入力してください：" search_service_name

    #　サービスがあるか探す
    search_result=$(grep "^$search_service_name:" "$file_path")

    if [ -z "$search_result" ]; then
        echo "そのサービスは登録されていません。"
    else
        service_name=$(echo $search_result | cut -d ":" -f1)
        user_name=$(echo $search_result | cut -d ":" -f2)
        password=$(echo $search_result | cut -d ":" -f3)
        echo "サービス名：" $service_name
        echo "ユーザー名：" $user_name
        echo "パスワード：" $password
    fi
}