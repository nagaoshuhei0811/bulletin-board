console.log("js\main.js");

$(function(){
    $(".favorite_button").on("click",function(){
        let favorite = $(this);
        let favorite_data = $(this).data()
        console.log(favorite_data);

        //Ajax で PHPからデータを取得
        $.ajax({
            //定義部分
            type: "POST",
            url: "./favorite.php",  //　←処理するPHPの指定
            data: favorite_data, //　←送信するデータの指定
            dataType: "text" //　←データタープの指定
        })
        .done(function (data) {
            //成功したときの処理
            console.log(data);
            if(data == "登録完了"){
                console.log(favorite)
                favorite.find("button").text('いいね 解除');
            }else if(data == "削除完了"){
                favorite.find("button").text('いいね');
            }else{
                favorite.find("button").text('いいね');
            }

        })
        .fail(function (e) {
            //失敗した時の処理
            console.log("通信エラー");
            console.log(e);
        });
    })
})