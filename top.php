<?php
//モデルの読み込み
include_once('./model/functions.php');



    //TOPの処理
    //DBと接続
    $connection = start_db();
    //クエリの作成
    $sql = 'SELECT * FROM `board` ORDER BY `board`.`date` DESC';
    //データの取得
    $data = get_data($connection,$sql);
    //DBと切断
    $result = end_db($connection);


//viewの読み込み
include_once('./view/view-top.php');