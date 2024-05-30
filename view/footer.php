
    <footer>
       <?php if(isset($_SESSION["user_key"])): ?>
            <ul>
                <li><a href="./top.php">掲示板</a></li>
                <li><a href="./mypage.php">自分の投稿</a></li>
                <li><a href="./favorite_page.php">いいねをつけた</a></li>
                <li><a href="./insert.php">投稿する</a></li>
            </ul>
        <?php else: ?>
            <ul>
                <li><a href="./top.php">掲示板</a></li>
            </ul>
        <?php endif; ?>
    </footer>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="./js/main.js"></script>