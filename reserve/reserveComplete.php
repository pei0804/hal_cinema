<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Functions.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$tplPath = "reserve/complete.tpl";
$smarty->display($tplPath);
