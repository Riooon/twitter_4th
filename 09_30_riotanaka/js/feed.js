// ポップアップの表示
$(".tweet").on("click", function(){
    $(".popup").fadeIn();
});

$(".popup-top i").on("click", function(){
    $(".popup").fadeOut();
});

// $(".popup-middle textarea").focus();

$(".settings-action").on("click", function(){
    $(".settings").css("display", "block");
});
$(".settings-end").on("click", function(){
    $(".settings").css("display", "none");
});


// ツイートの文字数カウント
$("#tweeting").on('input', function(){
    //文字数を取得
    var cnt = $(this).val().length;
    //現在の文字数を表示
    $('.now_cnt').text(cnt);
    if(cnt > 0 && 140 > cnt){
        //1文字以上かつ140文字以内の場合はボタンを有効化＆黒字
        $('#submit-tweet').prop('disabled', false);
        $("#submit-tweet").removeClass("btn-disabled");
        $(".now_cnt").removeClass("text_over");

    }else{
        //0文字または140文字を超える場合はボタンを無効化＆赤字
        $('#submit-tweet').prop('disabled', true);
        $("#submit-tweet").addClass("btn-disabled");
        $(".now_cnt").addClass("text_over");
    }
});

// timeline.php でツイート画面が2つあるため、2つ目を用意
$("#text_tweeting").on('input', function(){
    //文字数を取得
    var cnt = $(this).val().length;
    //現在の文字数を表示
    $('.now_count').text(cnt);
    if(cnt > 0 && 140 > cnt){
        //1文字以上かつ140文字以内の場合はボタンを有効化＆黒字
        $('#tweet-submitted').prop('disabled', false);
        $("#tweet-submitted").removeClass("btn-disabled");
        $(".now_count").removeClass("text_over");

    }else{
        //0文字または140文字を超える場合はボタンを無効化＆赤字
        $('#tweet-submitted').prop('disabled', true);
        $("#tweet-submitted").addClass("btn-disabled");
        $(".now_count").addClass("text_over");
    }
});