<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="shortcut icon" href="favicon.ico"/>
        <style type="text/css">
            .layout{width: 900px; margin-top: 20px; margin-left: 15%}
                .layout img{width: 120px;height: 120px;}
                    h1{margin-left: 33%;margin-top: -100px;}
                table tr td{width: 900px; height: 200px;text-align: left;}
        </style>
    </head>
    <body background="dec/img/background.jpg">
<div class ="Layout">
<div class="header">
<div class="top">
<img src ="cd.jpg" alt ="logopicture">
<!--<h1>logo and slogan</h1>-->
</div>
<div class="login">
<!--<h5>username:</h5>
<h5>password:</h5>
<h4>forgot? register</h4>-->
<form action="/example/html/form_action.asp" method="get">
  <p>username: <input type="text" name="fname" /></p>
  <p>password: <input type="text" name="lname" /></p>
  <input type="submit" value="login" />&nbsp&nbsp&nbsp<a href = "">forgot?</a>&nbsp&nbsp<a href = ""> register</a>
</form>
</div>
</div>
<div class="nav">

</div>


<div class="bot">
<h1>bottom</h1>
</div>
</div>
</body>
</html>
    </body>
</html>
