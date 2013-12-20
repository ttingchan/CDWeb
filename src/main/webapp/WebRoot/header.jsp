<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="dec/css/home.css"/>

<div class="top">
<!--<img src ="top1.jpg" alt ="logopicture">-->
<!--<h1>logo and slogan</h1>-->

</div>
<div class="login">
<!--<h5>username:</h5>
<h5>password:</h5>
<h4>forgot? register</h4>-->
<form action="/example/html/form_action.asp" method="get">
  <p style="text-align:left;font-family:Times;color:white">USERNAME: <input type="text" name="fname" /></p>
  <p style="text-align:left;font-family:Times;color:white">PASSWORD: <input type="text" name="lname" /></p>
  <input type="submit" value="LOGIN" style="font-family:Times"/>&nbsp&nbsp&nbsp<a href = "forgotpasswd.jsp" style="font-family:Times">FORGOT?</a>&nbsp&nbsp<a href = "register.jsp" style="font-family:Times"> REGISTER</a>
</form>
</div>

