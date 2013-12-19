<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" type="text/css" href="dec/css/home.css"/>
<style type="text/css">
            
                   
                table tr td{width: 230px; height: 50px;text-align: left;}
        </style>
</head>
<body background="dec/img/background.jpg">

<div class ="Layout">
<div class="header" style="background:url(dec/img/cdworld.png)" width="100%" height="100%">
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->
<div class="top">
<!--<img src ="top1.jpg" alt ="logopicture">-->
<!--<h1>logo and slogan</h1>-->

</div>
<div class="login">
<!--<h5>username:</h5>
<h5>password:</h5>
<h4>forgot? register</h4>-->
<form action=LoginServlet method="get">
  <p style="text-align:left;font-family:Times;color:white">USERNAME: <input type="text" name="username" /></p>
  <p style="text-align:left;font-family:Times;color:white">PASSWORD: <input type="text" name="password" /></p>
  <input type="submit" value="LOGIN" style="font-family:Times"/>&nbsp&nbsp&nbsp<a href = "WebRoot/forgotpasswd.jsp" style="font-family:Times">FORGOT?</a>&nbsp&nbsp<a href = "WebRoot/register.jsp" style="font-family:Times"> REGISTER</a>
</form>
</div>
</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<ul>
                                
                                <li><a href = "./event.php?action=musique"  >CD</a>
                                        <ul>
                                        <li><a href = "./WebRoot/pop1.jsp">Blue</a></li>
                                        <li><a href = "./event.php?action=concert">Concert</a></li>
                                        <li><a href = "./event.php?action=soiree">jazz</a>
                                        </ul>
                                </li>
                                <li><a href = "./event.php?action=art">AUTHOR</a>
                                        <ul>
                                        <li><a href = "./event.php?action=expositions">Male</a></li>
                                        <li><a href = "./event.php?action=musee">Female</a></li>
                                        <li><a href = "./event.php?action=theatre">Band</a>
                                        </ul>
                                </li>

                                <li><a href = "./register.html">REGISTER</a>
                                        <!--<ul>
                                        <li><a href = "./event.php?action=sport">Sport</a></li>
                                        <li><a href = "./event.php?action=jeuxvideo">Jeux Video</a></li>
                                        <li><a href = "./event.php?action=salon">Salon</a></li>
                                        </ul>
                                </li>

                                <li><a href = "./event.php?action=cinema">holiday</a>
                                    <ul>
                                        <li><a href = "./event.php?action=projection">Projection</a></li>
                                        <li><a href = "./event.php?action=debat">Debat</a></li>
                                        <li><a href = "./event.php?action=sortie">Sortie</a></li>
                                        </ul>
                                </li> -->
                                
                        </ul>
						<div class="searchBar">
                    <form method="post" action="searchevent.php?action=keySearch">
                        <input type="text" class="searchtext"/>&nbsp&nbsp
                        <input type="submit" value="search CD" class="searchbutton1"/>   
                        
                    </form>
                       <!-- <input type="button" value="for more detail" onclick="self.location.href='searchevent.php';" class="searchbutton2"/>-->
                    </div>
</div>



<div class="content">

<table align="center" style="background:#000000">
                <tr>
                    <td><a href="index.php"></a>
                       
                    </td>
                </tr>
                
                <tr>
                    <td>
                       <h3 style="font-family:Times">LOGIN</h3>
                    <form method="post" action="LoginServlet" >
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
<h1>bottom</h1>
</div>
</div>
</body>
</html>