<?php
//セッション開始
session_start();

function start_db(){
    //DBの接続
    $host = 'localhost';        //ホスト
    $username = 'root';         //ユーザ名
    $password = '';             //パスワード
    $dbname = 'bulletin-board';  //DB名
    //DBと接続
    $connection = mysqli_connect($host, $username, $password, $dbname);

    //接続確認
    if(!$connection) {
        die("接続に失敗しました。");
    }
    return $connection;
}


//DBの切断
function end_db($connection){
    //DBを切断
    $result = mysqli_close($connection);
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }
    return $result;
}




//SELECTの場合
function get_data($connection,$sql){
    //文字エンコードを指定
    mysqli_set_charset($connection, "utf8");

    // SQLを送信
    $result = mysqli_query( $connection, $sql);

    //データの取得
    $data = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
    return $data;
}




//INSERT UPDATE DELETE
function set_query($connection,$sql){
    //DBの設定
    mysqli_set_charset($connection, "utf8");
    //クエリの発行
    $result = mysqli_query( $connection, $sql);
    return $result;
}




//画像の処理
function setFile($image){


    $filename = $image["image"]["name"]; //ファイル名
    $type = $image["image"]["type"]; //ファイルタイプ　.jpg .png;
    $tmp_name = $image["image"]["tmp_name"]; //仮アップした場所
    $error = $image["image"]["error"]; //エラー
    $size = $image["image"]["size"]; //ファイルサイズ


    $upFilename = "";
    if($filename){
        $fieleArr = explode('.',$filename);  // ファイル名 拡張子
        $uploadDate = date("Y-m-d-H-i-s");//現在時刻
        $upFilename = $fieleArr[0] . $uploadDate . '.' . $fieleArr[1];
   
        if($error == 0 && $size < 2048000){
            if($type == 'image/jpeg'){
                $up_file = './images/' . $upFilename;
                move_uploaded_file($tmp_name , $up_file);
            }
        }
    }
    return $upFilename;
}




function user_check($email){

    //DBと接続
    $connection = start_db();

    //クエリの発行
    $sql = "SELECT * FROM `users` WHERE `email` = '$email'";

    //クエリの実行
    $data = get_data($connection,$sql);

    //DBと切断
    $reg_result = end_db($connection);

    //結果で判断
    if(empty($data)){
        //$dataが空だったら
        return false;
    }else{
        //存在したら
        return true;
    }
}


function user_registration($user,$email,$password){
    //DBと接続
    $connection = start_db();

    //クエリの発行
    $user_key = md5($email); //e-mailからユーザキーを作成
    //パスワードをハッシュ化する
    $hash_password = password_hash($_POST["password"], PASSWORD_DEFAULT);

    $sql = "
    INSERT
    INTO `users`
    (`id`, `name`, `email`, `password`, `user_key`)
    VALUES
    (null,'$user','$email','$hash_password','$user_key')
    ";

    //クエリの実行
    $result = set_query($connection,$sql);

    //DBと切断
    $reg_result = end_db($connection);


}


function account_check($user , $email , $password){

    //DBと接続
    $connection = start_db();

    //クエリの発行
    $sql = "SELECT * FROM `users` WHERE `email` = '$email'";

    //クエリの実行
    $data = get_data($connection,$sql);

    //DBと切断
    $reg_result = end_db($connection);

    if(
        isset($data[0]) //データの存在を確認
        &&
        $data[0]['name'] == $user
        &&
        password_verify($password , $data[0]["password"])
    ){
        return $data[0]["user_key"];
    }else{
        return "";
    }

}

/* お気に入りの確認 */
function check_favorite($user_key ,$board_id){
    //DBと接続
    $connection = start_db();

    //クエリの発行
    $sql = "
    SELECT * 
    FROM `favorite` 
    WHERE 
        `board_id` = $board_id
        AND
        `user_key` = '$user_key'
    ";

    //クエリの実行
    $data = get_data($connection,$sql);

    //DBと切断
    $reg_result = end_db($connection);

    if(isset($data[0])){
        return $data[0];
    }else{
        return null;
    }
}