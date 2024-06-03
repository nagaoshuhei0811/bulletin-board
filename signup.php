<?php
include_once('./model/functions.php');

if(isset($_SESSION["user_key"])){
    //ログイン済みなら TOPへ遷移
    header('Location: top.php');
}else{
    //未ログインの時

    //ポスト通信で登録情報を取得
    if($_POST){
        //登録情報が入力されているかチェック
        if($_POST["user"] && $_POST["email"] && $_POST["password"]){
       
            //すでに登録されているかチェック
            if( user_check($_POST["email"]) ){
                //ユーザーが存在するのでログインに遷移
                header('Location: login.php');
            }else{
                //ユーザが存在しないとき
                //DBにユーザ登録
                user_registration($_POST["user"], $_POST["email"], $_POST["password"] );
                //登録後
                header('Location: login.php');
            }
        }else{
            //エラー表示
        }
    }
}

include_once('./view/view-signup.php');