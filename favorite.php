<?php
//モデルの読み込み
include_once('./model/functions.php');

if($_POST){
    $board_id = $_POST["id"];
    $user_key = $_POST["user_key"];
    $return_mes = "";

    if($board_id != "" && $user_key != ""){
        $favorite = check_favorite($user_key,$board_id);

        //DBと接続
        $connection = start_db();

        if($favorite == null){
            $create_date = date("Y-m-d-H-i-s");//現在時刻;
            $update_date = date("Y-m-d-H-i-s");//現在時刻;
            //データが存在しない
            $sql = "
            INSERT INTO `favorite`
            (`id`, `board_id`, `user_key`, `delete_flag`, `create_date`, `update_date`)
            VALUES (null , $board_id , '$user_key' , 0 , '$create_date' , '$update_date' )";
            //クエリの実行

            $result = set_query($connection,$sql);

            if($result){
                $return_mes ="登録完了";
            }

        }elseif($favorite['delete_flag'] == 0 ){
            $update_date = date("Y-m-d-H-i-s");//現在時刻;
            //削除済み
            $sql = "UPDATE `favorite` 
            SET 
                `delete_flag`= 1 ,
                `update_date`='$update_date' 
            WHERE
                `board_id` = $board_id
                AND
                `user_key` = '$user_key'
            ";
            $result = set_query($connection,$sql);

            if($result){
                $return_mes ="削除完了";
            }

        }else{
            $update_date = date("Y-m-d-H-i-s");//現在時刻;
            //登録済み
            $sql = "UPDATE `favorite` 
            SET 
                `delete_flag`= 0 ,
                `update_date`='$update_date' 
            WHERE
                `board_id` = $board_id
                AND
                `user_key` = '$user_key'
            ";
            $result = set_query($connection,$sql);

            if($result){
                $return_mes ="登録完了";
            }
        }

        //DBと切断
        $reg_result = end_db($connection);
    }
    echo $return_mes;
}