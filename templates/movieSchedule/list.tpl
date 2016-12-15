<!doctype html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/base.css">
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/slick.css">
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/slick-theme.css">
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/movieSchedule.css">
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="/hal_cinema/js/slick.min.js"></script>
	<script>
		$(function() {
			$('.multiple-item').slick({
				arrows: true,
				infinite: false,
				dots: false,
				slidesToShow: 7
			});
		});
	</script>
</head>
<body>
<div id="wrapper">
	{include file='include/header.tpl'}
	<div class="contentIn">
		<ul class="slider multiple-item dateList">
			{section name=time start=$smarty.now loop=$smarty.now+1209600 step=86400}
			<li><a href="../movieSchedule/movieScheduleList.php?date={$smarty.section.time.index|date_format:'%Y-%m-%d'}">{$smarty.section.time.index|date_format:"%m&#26376;%d&#26085; <br>(%a)"|replace:"Sun":"<span class='sun'>日</span>"|replace:"Mon":"月"|replace:"Tue":"火"|replace:"Wed":"水"|replace:"Thu":"木"|replace:"Fri":"金"|replace:"Sat":"<span class='sat'>土</span>"}</a></li>
			{/section}
		</ul>

		{foreach from=$list item=item name="movieScheduleListLoop"}

		<div class="movieList">
			<h3 class="movieTitle">{$item->getTitle()}</h3>
			<div class="movie">
				<p class="movieImg"><img src="../img/{$item->getImgUrl()}" alt=""></p>
				<p class="description">{$item->getDescription()}</p>
			</div>
			<div class="theater">
				<p class="theaterNo">シアター{$item->getTheaterId()}</p>
				<ul class="scheduleList">
					{foreach from=$item->getMovieScheduleIdArray() key=scheduleId item=time}
					<li>
						<a href="../reserve/reserveSeat.php?scheduleId={$scheduleId}">
							{$time}
						</a>
					</li>
					{/foreach}
				</ul>
			</div>
		</div>
		{foreachelse}
			<p>現在公開中の映画はありません。</p>
		{/foreach}
	</div>
</div>
{include file='include/footer.tpl'}
</body>
</html>