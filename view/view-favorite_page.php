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
    <main>
        <h2>いいねをつけた投稿</h2>
        <?php foreach($data as $key=>$value) {?>
        <div class="post">
            <h2 class="post-title">
                <?php echo $value['id'] ?>
                :
                <?php echo $value['title'];?>
            </h2>
            <div class="post-body"><?php echo $value['body']; ?></div>
            <div class="post-date"><?php echo $value['date']; ?></div>
            <?php 
                if(isset($_SESSION["user_key"])){ 
                /* ログイン時に表示 */
            ?>
                <!-- jsにデータを渡すタグ -->
                <span 
                    class="favorite_button" 
                    data-id="<?php echo $value['id'] ?>"
                    data-user_key="<?php echo $_SESSION["user_key"] ?>"
                >
                <?php 
                /* 検索結果のデータが返ってくる */
                $favorite = check_favorite($_SESSION["user_key"]  ,$value['id']);
                if($favorite == null){
                    echo "<button type='button'>いいね</button>";
                }else if($favorite["delete_flag"] == 1){
                    echo "<button type='button'>いいね 解除</button>";
                }else{
                    echo "<button type='button'>いいね 解除</button>";
                }
                ?>
                <?php if($value['user_key'] == $_SESSION["user_key"]){ ?>
                <a href="./update.php?id=<?php echo $value['id'] ?>">編集</a>
                <?php } ?>
                </span>
            <?php } ?>
        </div>
        <?php  }?>
    </main>
    <?php include(dirname(__FILE__) . '/footer.php'); ?>
</body>
</html>