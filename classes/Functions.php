<?php

function loginCheck() {
    $result = false;

    if(
        !isset($_SESSION["loginFlg"])
        || $_SESSION["loginFlg"] == false
        || !isset($_SESSION["id"])
        || !isset($_SESSION["name"])
        || !isset($_SESSION["auth"])
    ) {
        $result = true;
    }
    return $result;
}

/*
 * session情報の総時間数
 * ログイン情報以外のセッション中の情報を一度破棄する
 * 各ユースケース最初の実行phpでこの関数を実行する
 */
function cleanSession() {
    $loginFlg = $_SESSION["loginFlg"];
    $id = $_SESSION["id"];
    $name = $_SESSION["name"];
    $auth = $_SESSION["auth"];

    session_unset();

    $_SESSION["loginFlg"] = $loginFlg;
    $_SESSION["id"] = $id;
    $_SESSION["name"] = $name;
    $_SESSION["auth"] = $auth;
}