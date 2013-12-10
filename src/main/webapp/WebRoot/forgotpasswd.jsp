<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" href="dec/css/home.css"/>
<style type="text/css">
fieldset
{
    text-align: center;
    width: 800px;
    margin-left: 5%;
    margin-top: 30px;
    border-width: 1px;
}
table{
    border-collapse: collapse;
}
tr{
    width: 800px;
}
td
{
    width:230px;
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
    text-align: center;
}

.td3
{
    text-align: left;
}

form
{
   margin-top:10px;
   text-align:right;
   padding-right:10%;
   margin-bottom: 20px;
   

}
</style>
</head>
<body background="dec/img/background.jpg">
<div class ="Layout">
<div class ="header">
<div class="top">
<!--  <img src ="dec/img/cd.jpg" alt ="logopicture">-->
<!--<h1>logo and slogan</h1>-->
</div>
<div class="login">
<!--<h5>username:</h5>
<h5>password:</h5>
<h4>forgot? register</h4>-->
<form action="/example/html/form_action.asp" method="get">
  <p>username: <input type="text" name="fname" /></p>
  <p>password: <input type="text" name="lname" /></p>
  <input type="submit" value="login" />&nbsp&nbsp&nbsp<a href = "">forgot?</a>&nbsp&nbsp<a href = "register.html"> register</a>
</form>
</div>
</div>
<div class="nav">

</div>

<div class="content">
        <fieldset>
                <legend>verification</legend>
            <br/>
        <tr>
		<form action="?action=submit" method="post" text-align="center">
            <td><span>input the username:</span>
            <input type="text" class="username" name="username"/>
            </td>
			<td><span>input the email address:</span>
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
<h1>bottom</h1>
</div>
</div>
</body>
</html>