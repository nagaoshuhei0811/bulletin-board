<?php
include_once('./model/functions.php');

//エラーメッセージを空で定義
$error_mes = ""; 

//ログインしている場合は、top.phpに遷移
if(isset($_SESSION["user_key"]) && $_SESSION["user_key"] != ""){
    //ログインしている場合
    header('Location: top.php');
}

if($_POST){
    //ユーザーが存在しているかを確認
    $result = account_check( $_POST["user"] , $_POST["email"] , $_POST["password"] );

    //account_checkの戻り値が user_keyを判定する。
    if($result != ""){
        //ユーザのパスワードが合っている
        $_SESSION["name"] = $_POST["user"];
        $_SESSION["user_key"] = $result;
        header('Location: top.php');
    }else{
        //パスワードが間違えている
        $error_mes = "ユーザー名、パスワードが違っています。";  
    }
}


include_once('./view/view-login.php');