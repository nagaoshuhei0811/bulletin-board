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
    <h2>投稿を編集</h2>
    <form action="" method="post" class="form-update">
        <dl class="form-update__label-container">
            <dt class="form-update__name-title">タイトル</dt>
            <dd class="form-update__name-input"><input type="text" name="title" value="<?php
            if(isset($data[0]["title"])){
                echo $data[0]["title"];
            }
            ?>"></dd>
            <dt class="form-update__body-title">本文</dt>
            <dd class="form-update__body-input"><textarea name="body" cols="30" rows="10"><?php
            if(isset($data[0]["body"])){
                echo $data[0]["body"];
            }
            ?></textarea></dd>
        </dl>

        <input type="hidden" name="user_key" value="<?php echo $data[0]['user_key'] ?>">
        <input type="hidden" name="id" value="<?php echo $data[0]["id"] ?>">

        <button class="form-update__button" type="submit">決定</button>
    </form>
    </main>
    <?php include(dirname(__FILE__) . '/footer.php'); ?>
</body>
</html>