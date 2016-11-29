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
    <div class="container">
        <div id="seat-map">
            <div class="front-indicator">スクリーン</div>
        </div>
        <div class="booking-details">
            <h2>座席選択状態</h2>
            <h3><span id="counter">0</span>席選択中</h3>
            <ul id="selected-seats"></ul>
            <button id="checkout">Checkout &raquo;</button>
            <div id="legend"></div>
        </div>
    </div>
</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/hal_cinema/js/jquery.seat-charts.min.js"></script>
<script src="/hal_cinema/js/seatShow.js" id="seatData" data-map='{$seatMap}' data-columns='{$seatColumns}' data-reserves='{$reserves}'></script>

</body>
</html>