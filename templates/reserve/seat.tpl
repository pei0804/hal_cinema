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
            <div class="bottomBox">
                <div class="ruleText">
                    <pre>利用規約

HALシネマ株式会社（以下「当社」といいます）は、インターネットチケット販売（以下「本サービス」といいます）をご利用いただくに当たって"インターネットチケット販売利用規約"（以下「本規約」といいます）を以下の通りに定めます。本規約に同意の上本サービスをご利用ください。

１．利用条件
（1）本サービスは、当社コンピューターオンラインシステムを使用する当社および当社の関係会社の運営する映画館（以下「実施劇場」といいます）にてご利用いただけます。
（2）本サービスをご利用いただけるのは本規約に同意されたお客様のみです。お客様が本規約に違反した場合には本サービスのご利用をお断りする場合があります。
（3）本サービスは、お客様ご自身の責任でコンピューターの操作およびインターネットの利用ができ、本サービスご利用に必要な文字表示や電子メール等の諸設定が適切になされている方を対象にしています。
（4）上記条件を満たしていても、お客様が使用されているＯＳやＬＡＮ環境の事情によって、本サービスが正常に作動しない場合に、それがもたらす諸影響について、当社は一切責任を負いません。当社は本サービスの内容およびお客様が本サービスを通じて取得する情報等の完全性、正確性、確実性、有用性等について、いかなる保証も行いません。
（5）当社はお客様に対して事前の通知をすることなく本規約の内容を変更することがありますので、本サービスをご利用の際は必ず最新の本規約をご確認ください。内容変更後は変更後の内容のみを有効とさせていただきます。
                    </pre>
                </div>
            </div>
            <input type="submit" id="checkout" class="submitButton l-button" value="券種選択へ">
            <a href='/hal_cinema/movieSchedule/movieScheduleList.php?date="{$movieSchedule->getStartAt()|date_format:"%Y-%m-%d"}"'
               class="cancelButton l-button">スケジュールへ選択へ戻る</a>
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
