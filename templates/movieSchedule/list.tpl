<!doctype html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<p>MovieScheduleIdをsplitで配列にして、＜a＞タグでパラメータをname=movieScheduleIdでreserveSeatにGETで投げる</p>
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
{foreach from=$list item=item name="moviewScheduleListLoop"}
    <tbody>
    <tr>
        <td>{$item->getMovieId()}</td>
        <td>{$item->getTitle()}</td>
        <td>{$item->getTheaterId()}</td>
        <td>{$item->getMovieScheduleIdArray()}</td>
        <td>{$item->getMovieTime()}</td>
        <td>{$item->getReleaseDate()}</td>
        <td>{$item->getStartAtArray()}</td>
        <td>{$item->getEndAtArray()}</td>
    </tr>
    </tbody>
{/foreach}
</table>
</body>
</html>