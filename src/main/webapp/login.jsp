<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
<style type="text/css">
            
                   
                table tr td{width: 230px; height: 50px;text-align: left;}
        </style>
</head>
<body>

<div class ="Layout">
<div class="header" style="background:url(dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->
</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<%@include file="WebRoot/nav.jsp"%>
</div>



<div class="content">

<table align="center" style="background:#666666">
                <tr>
                    <td><a href="index.php"></a>
                       
                    </td>
                </tr>
                
                <tr>
                    <td>
                       <h3 style="font-family:Times">LOGIN</h3>
                    <form method="get" action=LoginServlet >
                        <p style="font-family:Times">USERNAME:<input type="text" name="loginname" class="loginname" style="font-family:Times"/></p>
                        
                        <p style="font-family:Times">PASSWORD:<input type="password" name="password" class="password" style="font-family:Times"/></p>
                        
                        <!--
                       <input type="text" name="authcode" id="textfield"/>
                       <img src = "php/checkcode.php" /><br />        -->               
                        <input type="submit" value="LOGIN" name="submit" class="submit" style="font-family:Times" />                      
                    </form>

                    <h4><a href="#" style="font-family:Times">FORGOT THE PASSWORD?</a></h4> 
                    <h4><a href="register.php" style="font-family:Times"> REGISTER</a></h4>  
                    </td>
                    
                      
                   
                </tr>
            </table>
              
</div>

<div class="bot">
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>