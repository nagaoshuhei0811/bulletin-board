<?php
include_once('./model/functions.php');

    //DBと接続
    $connection = start_db();

    $user_key = $_SESSION["user_key"];

    //クエリの作成
    $sql = "
    SELECT * 
    FROM `favorite` as FA
    JOIN `board` as BO
    ON FA.board_id = BO.id
    WHERE 
    FA.`user_key` = '$user_key'
    AND
    FA.`delete_flag` = 0
    ";

    //データの取得
    $data = get_data($connection,$sql);
    
    //DBと切断
    $result = end_db($connection);


include_once('./view/view-favorite_page.php');