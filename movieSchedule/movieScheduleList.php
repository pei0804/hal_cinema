<?php
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/Conf.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/Functions.php';

require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/entity/MovieSchedule.class.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/dao/MovieScheduleDAO.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");
$tplPath = "movieSchedule/list.tpl";

$list = array();
try {
	$db = new PDO(DB_DNS, DB_USERNAME, DB_PASSWORD);
	$movieScheduleDAO = new MovieScheduleDAO($db);

	$date = date('2016-11-10');
	if(isset($_GET["date"])) {
		$date = $_GET["date"];
	}
	$list = $movieScheduleDAO->findByDate($date);
	$week = array("日", "月", "火", "水", "木", "金", "土");

	$smarty->assign("list", $list);
	$smarty->assign("week", $week);
} catch (PDOException $ex) {
print_r($ex);
	$smarty->assign("errorMsg", "DB接続に失敗しました。");
	$tplPath = "error.tpl";
} finally {
	$db = null;
}

$smarty->display($tplPath);
?>