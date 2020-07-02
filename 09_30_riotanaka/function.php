<?php

// データベースへの接続
function db_connect(){
    try {
        //Password:MAMP='root',XAMPP=''
        return new PDO('mysql:dbname=twitter_db;charset=utf8;host=localhost','root','root');
        } catch (PDOException $e) {
        exit('DBConnectError:'.$e->getMessage());
        }
}

// セッションIDでログインしてないユーザーを弾く
function login_check_by_ssid(){
    if( !isset($_SESSION["ssid"]) || $_SESSION["ssid"]!=session_id()){
        header("Location: login.php");
        exit();
    }
}

// // セッションでアカウント情報をページまたぎで取得
// function session_info() {
//     $session_id = $_SESSION["id"];
//     $session_email = $_SESSION["email"];
//     $session_password = $_SESSION["password"];
//     $session_username = $_SESSION["username"];
//     $session_name = $_SESSION["name"];
//     $session_bio = $_SESSION["bio"];
//     $session_profile_picture = $_SESSION["profile_picture"];
//     $session_background_image = $_SESSION["background_image"];
// }

?>