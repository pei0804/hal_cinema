<?php
require_once $_SERVER['DOCUMENT_ROOT']. '/hal_cinema/classes/Conf.php';

session_destroy();

header("Location: /hal_cinema/index.php");
exit();
