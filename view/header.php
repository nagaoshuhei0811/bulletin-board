   <header>

        <?php if(isset($_SESSION["user_key"])): ?>
            <h1><a href="./top.php">掲示板</a></h1>
            <ul>
                <li><a href="./logout.php">ログアウト</a></li>
            </ul>
        <?php else: ?>
            <h1><a href="./top.php">掲示板</a></h1>
            <ul>
                <li><a href="./login.php">ログイン</a></li>
                <li><a href="./signup.php">新規登録</a></li>
            </ul>
        <?php endif; ?>

    </header>