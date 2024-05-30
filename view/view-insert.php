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
    <h2>新規投稿</h2>
    <form action="" method = "POST" class="form-insert">
        <dl class="form-insert__label-container">
            <dt class="form-insert__name-title">タイトル</dt>
            <dd class="form-insert__name-input"><input type="text" name="title"></dd>
            <dt class="form-insert__body-title">本文</dt>
            <dd class="form-insert__body-input"><textarea name="body" cols="30" rows="10"></textarea></dd>
        </dl>
        <button class="form-insert__button" type="submit">投稿</button>
    </form>
    </main>
    <?php include(dirname(__FILE__) . '/footer.php'); ?>
</body>
</html>