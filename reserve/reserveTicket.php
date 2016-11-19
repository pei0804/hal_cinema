<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Functions.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$tplPath = "reserve/ticket.tpl";
// A_1, A_2, B_1 のように配列で予約したい座席情報が来る

$scheduleId = $_POST["scheduleId"];
$seats = $_POST['seats'];

// TODO 一旦はテストデータ
$memberId = 1;

if(!isset($seats) || !isset($scheduleId)) {
    $seats = ['A_1', 'C_2'];
    print "<h1>値が正しく取れていません。代わりにテストデータを格納しています。</h1>";
}
// SESSIONにどの席に何の券種かを格納して、reserveConfirmへ渡す。

$smarty->display($tplPath);
