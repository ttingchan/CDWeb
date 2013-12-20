<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" href="WebRoot/dec/css/home.css"/>
<style type="text/css">
fieldset
{
    text-align: center;
    width: 900px;
    margin-left: 5%;
    margin-top: 30px;
    border-width: 1px;
}
table{
    border-collapse: collapse;
    align:center;
}
tr{
    width: 900px;
}
td
{
    width:400px;
    height:30px;
}
select
{
    width: 200px;
}
h2
{
	margin-bottom: 15px;
	font-family: 'Ballparkweiner', serif;
	font-size: 1.5em;
	font-weight: normal;
	text-align:center;
	
}

.td2
{
    text-align: left;
}

.td3
{
    text-align: left;
}

form
{
   margin-top:10px;
   text-align:left;
   padding-right:10%;
   margin-bottom: 20px;
   

}
</style>
</head>
<body background="dec/img/background.jpg">
<div class ="Layout">
<div class ="header" style="background:url(WebRoot/dec/img/cdworld1.png)"><%@include file="WebRoot/header.jsp"%>

</div>
<div class="nav">
<%@include file="WebRoot/nav.jsp"%>
</div>

<div class="content">
        <fieldset>
                <legend>verification</legend>
            <br/>
        <tr>
		<form action="?action=submit" method="post" text-align="center">
            <td><span>username:</span>
            <input type="text" class="username" name="username"/>
            </td>
			<td><span>email address:</span>
            <input type="text" class="email" name="email"/>
            <input type="submit" name="action" value="submit"/>
        </td>
		</form>
        </tr>
    
    <tr>
	<form method="post" action="?action=sure">
    <span>Password:</span>
    <input type="password" id="password" name="password" onblur="return CheckPassword();"/>
    <span id="passworddiv"></span>
    <span>Re-enter Password:</span>
    <input type="password" id="confirm" name="confirm" onblur="return CheckConfirm();" />
    <span id="confirmdiv"></span>
    <input type="submit" name="action" value="sure"/>
    </form>
	</tr>
	</fieldset>

</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>