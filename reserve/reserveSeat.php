<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Functions.php';

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/dao/SeatDAO.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/entity/Seat.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/dao/ReserveDAO.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/entity/Reserve.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$tplPath = "reserveSeat.tpl";
$smarty->display($tplPath);