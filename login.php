<?php
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/entity/Member.class.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/dao/MemberDAO.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$isRedirect = false;
$tplPath = "login.tpl";

$loginMail= $_POST["loginMail"];
$loginPw = $_POST["loginPw"];

$loginMail = trim($loginMail);
$loginPw = trim($loginPw);

$validationMsgs = array();

if(strlen($loginMail) == 0) {
    $validationMsgs[] = "メールアドレスを入力してください";
}

if(strlen($loginPw) == 0) {
    $validationMsgs[] = "パスワードを入力してください";
}

if(empty($validationMsgs)) {
    try {
        $db = new PDO(DB_DNS, DB_USERNAME, DB_PASSWORD);
        $memberDAO = new MemberDAO($db);

        $member = $memberDAO->findByLoginMail($loginMail);
        if($member == null) {
            $validationMsgs[] = "存在しないメールアドレスです。正しいメールアドレスを入力してください";
        } else {
            $memberPw = $member->getPassword();
            if($loginPw == $memberPw) {
                $id = $member->getId();
                $name = $member->getName();

                $_SESSION["loginFlg"] = true;
                $_SESSION["id"] = $id;
                $_SESSION["name"] = $name;
                $_SESSION["auth"] = 1;
                $isRedirect = true;
            } else {
                $validationMsgs[] = "パスワードが違います。正しいパスワードを入力してください。";
            }
        }
    } catch(PDOException $ex) {
        print_r($ex);
        $smarty->assign("errorMsg", $validationMsgs);
        $tplPath = "error.tpl";
    } finally {
        $db = null;
    }
}

if($isRedirect) {
    header("Location: /hal_cinema/index.php");
    exit();
} else {
    if(!empty($validationMsgs)) {
        $smarty->assign("validationMsgs", $validationMsgs);
        $smarty->assign("loginMail", $loginMail);
    }
    $smarty->display($tplPath);
}
