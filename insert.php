<?php
include_once('./model/functions.php');

if (isset($_SESSION["user_key"])) {
    //POST通信にデータがある場合に処理をする
    if ($_POST) {
        //$_POSTの中に name属性で決めたキーで連想配列で渡されている
        $title = $_POST['title'];
        $body = $_POST['body'];
        $date = date("Y/m/d H:i:s"); //現在時刻
        $user_key = $_SESSION["user_key"];

        //DBと接続
        $connection = start_db();

        //クエリの作成
        $sql = "
        INSERT
        INTO `board`
        (`id`,`user_key`, `title`, `body`, `date`)
        VALUES
        (null,'$user_key','$title','$body','$date')
        ";
        var_dump($sql);

        //クエリの実行
        $result = set_query($connection, $sql);

        //DBと切断
        $result = end_db($connection);

        //成功したらTOPに遷移
        if ($result) {
            //登録終了後に一覧ページに遷移
            header("Location: ./top.php");
            exit();
        }
    }
} else {
    header('Location: top.php');
}

include_once('./view/view-insert.php');