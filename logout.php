<?php
    session_start();
    $_SESSION = []; //セッション情報を空にする
    session_destroy();//セッションを削除
    header('Location: top.php');