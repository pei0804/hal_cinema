<?php

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/libs/Smarty.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Functions.php';

require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/dao/SeatDAO.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/entity/Seat.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/dao/ReserveDAO.class.php';
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/entity/Reserve.class.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/entity/MovieSchedule.class.php';
require_once $_SERVER["DOCUMENT_ROOT"]. '/hal_cinema/classes/dao/MovieScheduleDAO.class.php';

$smarty = new Smarty();
$smarty->setTemplateDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates/");
$smarty->setCompileDir($_SERVER['DOCUMENT_ROOT'] . "/hal_cinema/templates_c/");

$tplPath = "reserve/seat.tpl";
//if(loginCheck()) {
//    $validationMsgs[] = "ログインしていないか、前回ログインしてから一定時間が経過しています。もう一度ログインし直してください。";
//    $smarty->assign("validationMsgs", $validationMsgs);
//    $tplPath = "login.tpl";
//} else {

    try {
        $db = new PDO(DB_DNS, DB_USERNAME, DB_PASSWORD);

        // シアターID取得
        $movieScheduleDAO = new MovieScheduleDAO($db);
        $movieSchedule = null;
        $movieSchedule = $movieScheduleDAO->findByPK(1);

//        // 座席情報
//        $seatDAO = new SeatDAO($db);
//        $seats = array();
//        $seats = $seatDAO->findByTheatreId($movieSchedule->getTheaterId());
//        $smarty->assign("seats", $seats);
//
//        // 予約情報
//        $reserveDAO = new ReserveDAO($db);
//        $reserves = array();
//        $reserves = $reserveDAO->findByScheduleId(1);
//        $smarty->assign("reserves", $reserves);

        // 座席情報
        $seatDAO = new SeatDAO($db);
        $seats = array();
        $seats = $seatDAO->findByTheatreId(1);

        // HACK 便宜的に小文字でインクリメントしているが、出来れば大文字でインクリメントした方がスマート
//        $seatRowAlphabet = 'a';
        // AAAAAAAAAなどの１列の席情報を格納する
        $seatRow = "";
        // View側のjsのためのmap情報
        $seatMap = array();
        foreach ($seats as $seat) {

            // TODO 現状はA~Zまでしか許容していない。AAまで席が増える場合は対応必要
            if($seatRowAlphabet == "" && $seatRowAlphabet != substr($seat->getSeat(), 0, 1)) {
                $seatRowAlphabet = substr($seat->getSeat(), 0, 1);
            }

            if($seatRowAlphabet == substr($seat->getSeat(), 0, 1) && strlen($seat->getSeat()) != 0) {
                $seatRow .= substr($seat->getSeat(), 0, 1);
            } else {
                $seatMap[] = $seatRow;
            }


//            if(strtoupper($seatRowAlphabet) == substr($seat->getSeat(), 0, 1)) {
//                $seatRow .= strtoupper($seatRowAlphabet);
//            } else {
//                $seatMap[] = $seatRow;
//                $seatRow = "";
//                ++$seatRowAlphabet;
//                $seatRow .= strtoupper($seatRowAlphabet);
//            }
        }
        $seatMap[] = $seatRow;

        $smarty->assign("seats", $seats);
        $smarty->assign("seatMap", $seatMap);

        // 予約情報
        $reserveDAO = new ReserveDAO($db);
        $reserves = array();
        $reserves = $reserveDAO->findByScheduleId(1);
        $smarty->assign("reserves", $reserves);

    } catch (PDOException $ex) {
        print_r($ex);
        $smarty->assign("errorMsg", "DB接続に失敗しました。");
        $tplPath = "error.tpl";
    } finally {
        $db = null;
    }
//    $smarty->display($tplPath);
//}


$smarty->display($tplPath);