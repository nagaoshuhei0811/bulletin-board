# Bulletin Board


## 概要
このプロジェクトは、ログイン機能を備えた掲示板です。ユーザーは登録し、ログインして掲示板にメッセージを投稿することができます。


## セットアップ方法
1. このリポジトリをクローンします。
    ```bash
    git clone https://github.com/nagaoshuhei0811/bulletin-board.git
    cd bulletin-board
    ```

2. XAMPPをインストールし、ApacheとMySQLを起動します。

3. MySQLにデータベースを作成し、`bulletin-board.sql`をインポートします。
    ```bash
    mysql -u root -p your_database_name < bulletin-board.sql
    ```

4. `model/functions.php`ファイルを編集し、MySQLのユーザー名やデータベース名を設定します。

5. ブラウザで `http://localhost/bulletin-board` にアクセスし、プロジェクトを利用できます。


## 開発に使用したもの
- PHP
- CSS
- JavaScript
- XAMPP MySQL


## ファイルの説明

- `bulletin-board.sql`: このファイルはデータベースのダンプファイルです。データベースのスキーマ（テーブル構造）およびデータが含まれており、データベースの再構築に使用できます。ダンプファイルをインポートすることで、プロジェクトのデータベースを簡単に再現することができます。
