#!/bin/bash
source "$(dirname "$0")/password.sh"

# メイン処理
main(){
    echo "パスワードマネージャーへようこそ！"
    
    while true; do
        read -rp "次の選択肢から入力してください(Add Password/Get Password/Exit)：" choice

        case "$choice" in
            "Add Password" )
                add_password
                ;;
            "Get Password" )
                get_password
                ;;
            "Exit" )
                echo "Thank you!"
                break
                ;;
            * )
                echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
                ;;
        esac
    done
}

main
exit 0