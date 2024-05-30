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
        <h2>新規登録</h2>
        <form action="" method="post">
            <dl id="form-login">
                <dt>名前</dt>
                <dd><input type="text" name="user"></dd>
                <dt>メールアドレス</dt>
                <dd><input type="email" name="email"></dd>
                <dt>パスワード</dt>
                <dd><input type="text" name="password"></dd>
            </dl>
            <button type="submit">登録</button>
        </form>
    </main>
    <?php include(dirname(__FILE__) . '/footer.php'); ?>
</body>
</html>