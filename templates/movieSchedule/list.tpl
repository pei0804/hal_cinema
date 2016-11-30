<!doctype html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/hal_cinema/css/movieSchedule.css">
</head>
<body>
<table>
    <thead>
		<tr>
			<th>映画ID</th>
			<th>タイトル名</th>
			<th>シアターID</th>
			<th>ムービースケジュールID</th>
			<th>作品時間</th>
			<th>リリース日</th>
			<th>始まる時間</th>
			<th>終わる時間</th>
		</tr>
    </thead>
    <tbody>
		{foreach from=$list item=item name="movieScheduleListLoop"}
		<tr>
			<td>{$item->getMovieId()}</td>
			<td>{$item->getTitle()}</td>
			<td>{$item->getTheaterId()}</td>
			<td>
				{$MSI = $item->getMovieScheduleIdArray()}
				{foreach from=","|explode:$MSI item=scheduleId}
					<a href="../reserve/reserveSeat.php?scheduleId={$scheduleId}">{$scheduleId}</a>
				{/foreach}
			</td>
			<td>{$item->getMovieTime()}</td>
			<td>{$item->getReleaseDate()}</td>
			<td>{$item->getStartAtArray()}</td>
			<td>{$item->getEndAtArray()}</td>
		</tr>
		{foreachelse}
		<tr>
			<td colspan="8">現在公開中の映画はありません。</td>
		</tr>
		{/foreach}
    </tbody>
</table>
</body>
</html>