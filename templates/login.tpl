<!doctype html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログイン</title>
    <link rel="stylesheet" href="/hal_cinema/css/base.css">
</head>
<body>
<h1>ログイン</h1>
{if isset($validationMsgs)}
    <section id="errorMsg">
        <p>以下のメッセージを確認してください。</p>
        <ul>
            {foreach from=$validationMsgs item=msg name="validationMsgsLoop"}
                <li>{$msg}</li>
            {/foreach}
        </ul>
    </section>
{/if}
<section>
    <p>IDとパスワードを入力し、ログインをクリックしてください。</p>
    <form action="/hal_cinema/login.php" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="loginMail" id="loginMail" value="{$loginMail|default:""}"></td>
            </tr>
            <tr>
                <th>パスワード</th>
                <td><input type="text" name="loginPw" id="loginPW"></td>
            </tr>
            <tr>
                <td colspan="2" class="submit">
                    <input type="submit" value="ログイン">
                </td>
            </tr>
        </table>
    </form>
</section>
</body>
</html>