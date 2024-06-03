<?php
include_once('./model/functions.php');

if(isset($_SESSION["user_key"])){

    //編集情報が渡されたとき
    if($_POST){
        $id = $_POST["id"];
        $title = $_POST["title"];
        $body = $_POST["body"];
        $user_key = $_POST["user_key"];
        $date = date("Y/m/d H:i:s");

        if($_POST["user_key"] == $_SESSION["user_key"]){
                //DBと接続
                $connection = start_db();

                //クエリの作成
                $sql = "
                UPDATE `board` 
                SET 
                `title`='$title',
                `body`='$body',
                `date`='$date' 
                WHERE 
                id = $id
                ";

                //データの取得
                $data = set_query($connection,$sql);

                //DBと切断
                $reg_result = end_db($connection);

                //登録が成功したら TOPへ
                if($reg_result){
                    header('Location: top.php');
                }
        }else{
            //user_key が違う場合はTOPへ
            header('Location: top.php');
        }

 

    }else{
        //編集情報が渡されていないとき
        if(isset($_GET["id"])){
            //GETに ID情報がある
            $id = $_GET["id"];
            //DBと接続
            $connection = start_db();

            $sql = "SELECT * FROM `board` WHERE id = $id";

            //クエリの実行
            $data = get_data($connection,$sql);

            //DBと切断
            $reg_result = end_db($connection);

            //var_dump($data);
            //var_dump($_SESSION["user_key"]);

        }else{
            //GETに ID情報がない
            header('Location: top.php');
        }
    }

}else{
    //ログインしていなければログインへ
    header('Location: login.php');
}

//viewの読み込み
include_once('./view/view-update.php');