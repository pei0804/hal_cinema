<!DOCTYPE html>
<html lang="ja">
<head>
    <link href="/hal_cinema/css/jquery.bxslider.css" rel="stylesheet">
    <link href="/hal_cinema/css/top-style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>top</title>
</head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/hal_cinema/js/jquery.bxslider.min.js"></script>
<script>
    $(document).ready(function () {
        $('.bxslider').bxSlider({
            auto: true,
            pause: 2000
        });
    });
</script>
<body>
<div id="wrapper">
    {include file='include/header.tpl'}
    <nav>
        <ul>
            <li class="nav1"><a href="/hal_cinema/movieSchedule/movieScheduleList.php">本日のスケジュール</a></li>
            <li class="nav2"><a href="#">上映中作品</a></li>
            <li class="nav3"><a href="#">公開予定作品</a></li>
        </ul>
    </nav>
    <ul class="bxslider">
        <li><img src="/hal_cinema/img/slide01.jpg"></li>
        <li><img src="/hal_cinema/img/slide02.jpg"></li>
        <li><img src="/hal_cinema/img/slide03.jpg"></li>
        <li><img src="/hal_cinema/img/slide04.jpg"></li>
    </ul>
    <div id="pickup">
        <h2><img src="/hal_cinema/img/pickup.png" alt="pickup"></h2>
        <div id="movielist">
            <div id="movie1"><a href="#"><img src="/hal_cinema/img/movie05.jpg" alt=""><img src="/hal_cinema/img/1.png" alt=""
                                                                                            class="rank1">
                    <p class="title1">君の名は。</p></a></div>
            <div id="movie2"><a href="#"><img src="/hal_cinema/img/movie04.jpg" alt=""><img src="/hal_cinema/img/2.png" alt=""
                                                                                            class="rank2">
                    <p class="title2">ミュージアム</p></a></div>
            <div id="movie3"><a href="#"><img src="/hal_cinema/img/movie03.jpg" alt=""><img src="/hal_cinema/img/3.png" alt=""
                                                                                            class="rank3">
                    <p class="title3">ジャック・リ…</p></a></div>
            <div id="movie4"><a href="#"><img src="/hal_cinema/img/movie02.jpg" alt=""><img src="/hal_cinema/img/4.png" alt=""
                                                                                            class="rank4">
                    <p class="title4">インフェルノ</p></a></div>
            <div id="movie5"><a href="#"><img src="/hal_cinema/img/movie01.jpg" alt=""><img src="/hal_cinema/img/5.png" alt=""
                                                                                            class="rank5">
                    <p class="title5">デスノート</p></a></div>
        </div>
    </div>
    <div id="topics">
        <h2><img src="/hal_cinema/img/topics.png" alt="topics"></h2>
        <div id="topicbox">
            <div id="topic1">
                <img src="/hal_cinema/img/topic01.jpg" alt="topics">
                <p>Apple Payを使ってチケットを購入した方には、最大300円割引クーポンをプレゼント！<br><br>
                    クーポン配布期間／2016年12月31日（土）まで<br>
                    クーポン利用期間／2017年1月 4日(水）～2017年1月31日（火）まで
                </p>
            </div>
            <div id="topic2">
                <img src="/hal_cinema/img/topic02.jpg" alt="topics">
                <p>「ぼくは明日、昨日のきみとデートする」の公開を記念し、初日舞台挨拶の開催が決定いたしました！<br><br>
                    福士蒼汰さん、小松菜奈さん、東出昌大さん、山田裕貴さん、三木孝浩監督
                    （以上予定）をゲストに迎え、実施いたします。<br><br>
                    実施日：12月17日（土）
                </p>
            </div>
            <div id="topic3">
                <img src="/hal_cinema/img/topic03.jpg" alt="topics">
                <p>スター・ウォーズ「ローグ・ワン／スター・ウォーズ・ストーリー」の公開を<br>
                    記念し、初日舞台挨拶の開催が決定いたしました！<br><br>
                    ジン・アーソさん、デイジー・リドリーさん、オスカー・アイザックさん、
                    ジョン・ボイエガさん、ライアン・ジョンソン監督（以上予定）をゲストに迎え、実施いたします。<br><br>
                    実施日：12月20日（火）
                </p>
            </div>
        </div>
    </div>
    <div id="information">
        <h2><img src="/hal_cinema/img/infor.png" alt="information"></h2>
        <div id="infobox">
            <ul>
                <li>12/16公開『ローグ・ワン／スター・ウォーズ・ストーリー』IMAX座席指定券先行販売について<br>[2016/11/29]</li>
                <li>いつでも高校生1,000円！『デスノート Light up the NEW world』コラボポスター掲出中！<br>[2016/11/28]</li>
                <li>GENERATIONS LIVE TOUR 2016 SPEEDSTER ライブビューイング開催決定！！<br>[2016/11/28]</li>
                <li>『ぼくは明日、昨日のきみとデートする』プレゼントキャンペーン<br>[2016/11/25]</li>
                <li>『映画 妖怪ウォッチ 空飛ぶクジラとダブル世界の大冒険だニャン！』オリジナル ジバニャン<br>ポップコーンBOX販売決定！[2016/11/25]</li>
            </ul>
            <p><a href="#">お知らせ　一覧へ</a></p>
        </div>
    </div>
    {include file='include/footer.tpl'}
</div>
</body>
</html>