<!doctype html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/base.css">
	<link rel="stylesheet" type="text/css" href="/hal_cinema/css/movieSchedule.css">
</head>
<body>
	<ul class="dateList">
		{section name=time start=$smarty.now loop=$smarty.now+604800 step=86400}
			<li><a href="../movieSchedule/movieScheduleList.php?date={$smarty.section.time.index|date_format:'%Y-%m-%d'}">{$smarty.section.time.index|date_format:"%m&#26376;%d&#26085;"}</a></li>
		{/section}
	</ul>

	{foreach from=$list item=item name="movieScheduleListLoop"}

	<h3 class="movieTitle">{$item->getTitle()}</h3>
	<p class="movieImg"><img src="../../img/{$item->getImgUrl()}" alt=""></p>
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

	{foreachelse}
		<p>現在公開中の映画はありません。</p>
	{/foreach}
</body>
</html>