<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include(dirname(__FILE__) . '/head.php'); ?>
</head>
<body>
    <?php include(dirname(__FILE__) . '/header.php'); ?>
    <main class="text_center">
        <h2>ログイン</h2>
        <form action="" method="post" id="form-login">
            <dl class="form-login__wrap">
                <dt class="form-login__name-title" >名前</dt>
                <dd class="form-login__name-input"><input type="text" name="user"></dd>
                <dt class="form-login__body-title">メールアドレス</dt>
                <dd class="form-login__body-input">
                    <input type="email" name="email"></dd>
                <dt>パスワード</dt>
                <dd><input type="text" name="password"></dd>
            </dl>
            <button type="submit">登録</button>
        </form>
        <?php if($error_mes != "") {
            echo "<p> ユーザー名、パスワードを確認ください。 </p>";
            echo "<p><a href='./signup.php'>新規登録</p>";
        } ?>
    </main>
    <?php include(dirname(__FILE__) . '/footer.php'); ?>
</body>
</html>