<?php
//モデルの読み込み
include_once('./model/functions.php');



    //TOPの処理
    //DBと接続
    $connection = start_db();

    $user_key = $_SESSION["user_key"];
    //クエリの作成
    $sql = "
    SELECT * 
    FROM `board` as BO
    WHERE 
    BO.`user_key` = '$user_key'
    ";

    //データの取得
    $data = get_data($connection,$sql);
    //DBと切断
    $result = end_db($connection);


//viewの読み込み
include_once('./view/view-mypage.php');