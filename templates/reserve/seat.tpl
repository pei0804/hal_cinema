<!doctype html>
<html>
<head>
    <title>座席選択</title>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/hal_cinema/css/jquery.seat-charts.css">
    <link rel="stylesheet" type="text/css" href="/hal_cinema/css/reserveSeat.css">
</head>
<body>
<div class="wrapper">
    {include file='include/header.tpl'}
    <div class="container">
        <form id="form" action="/hal_cinema/reserve/reserveTicket.php" method="post">
            <div class="seatSelectBox">
                <div id="seat-map">
                    <div class="front-indicator">スクリーン</div>
                </div>
                <div class="seatType">
                    <ul>
                        <li>
                            <div class="seatType__reserved"></div>
                            <p>予約済</p></li>
                        <li>
                            <div class="seatType__vacancy"></div>
                            <p>空席中</p></li>
                        <li>
                            <div class="seatType__selected"></div>
                            <p>選択中</p></li>
                    </ul>
                </div>
                <input type="submit" id="checkout" class="submitButton l-button" value="券種選択へ">
                <a href='/hal_cinema/movieSchedule/movieScheduleList.php?date="{$movieSchedule->getStartAt()|date_format:"%Y-%m-%d"}"'
                   class="cancelButton l-button">スケジュールへ選択へ戻る</a>
            </div>
            <div class="booking-details">
                <div class="buyInfo">
                    <h2 class="buyInfo__header">購入内容</h2>
                    <dl class="buyInfo__block">
                        <dt class="buyInfo__subtitle">作品</dt>
                        <dd class="buyInfo__text">{$movieSchedule->getTitle()}</dd>
                        <dt class="buyInfo__subtitle">日時</dt>
                        <dd class="buyInfo__text">{$movieSchedule->getStartAt()|date_format:"%m月%d日 %H:%M"}
                            〜{$movieSchedule->getEndAt()|date_format:"%H:%M"}</dd>
                    </dl>
                </div>
                <h2 class="buyInfo__header">座席選択状態</h2>
                <h3 class="buyInfo__text"><span id="counter">0</span>席選択中</h3>
                <ul id="selected-seats"></ul>
                <input type="hidden" name="seats" id="seats">
                <input type="hidden" name="scheduleId" id="scheduleId" value="{$scheduleId}">
            </div>
        </form>
    </div>
    {include file='include/footer.tpl'}
</div>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/hal_cinema/js/jquery.seat-charts.min.js"></script>
<script src="/hal_cinema/js/seatShow.js" id="seatData" data-map='{$seatMap}' data-columns='{$seatColumns}'
        data-reserves='{$reserves}'></script>

</body>
</html>
