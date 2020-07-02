<!-- ここにフォローの仕組みを書いていくなり -->

<?php
session_start();

$followed = $_POST["followed"];
$follower = $_POST["follower"];

// 関数に入れたら ERROR 500 出るので、関数化はいったん諦め
$session_id = $_SESSION["id"];
$session_email = $_SESSION["email"];
$session_password = $_SESSION["password"];
$session_username = $_SESSION["username"];
$session_name = $_SESSION["name"];
$session_bio = $_SESSION["bio"];
$session_profile_picture = $_SESSION["profile_picture"];
$session_background_image = $_SESSION["background_image"];


//1. 接続します
require "function.php";
$pdo = db_connect();

//２．データ登録SQL作成
$stmt = $pdo->prepare("INSERT INTO following(follow_id,followed,follower)VALUES(NULL,:followed,:follower)");
$stmt->bindValue(':followed', $followed, PDO::PARAM_STR);
$stmt->bindValue(':follower', $follower, PDO::PARAM_STR);
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit("ErrorMassage:".$error[2]);
  }else{
    //５．index.phpへリダイレクト
    header('Location: profile.php?username='.$session_username);
  }
  
?>

<!-- ユーザーネームで登録しちゃうと、変更すると引っ張れないことに気付きました、木曜午後10時。来週修正します。。 -->