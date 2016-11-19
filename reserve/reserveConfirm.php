<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Functions.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$tplPath = "reserve/confirm.tpl";
// 予約の情報を表示する ※まだ情報はデータベースへ格納していない

// 確定ボタンが押されたら
//--------トランザクション開始--------//
// t_reserveに情報を格納する

// t_ticketに情報を格納する
//--------トランザクション終了--------//
$smarty->display($tplPath);
