<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" type="text/css" href="WebRoot/dec/css/home.css"/>
</head>
<body background="WebRoot/dec/img/background.jpg">

<div class ="Layout">
<div class="header">
<div class="top">
<!--<img src ="top1.jpg" alt ="logopicture">-->
<!--<h1>logo and slogan</h1>-->

</div>
<div class="login">
<!--<h5>username:</h5>
<h5>password:</h5>
<h4>forgot? register</h4>-->
<form action="/example/html/form_action.asp" method="get">
  <p>username: <input type="text" name="fname" /></p>
  <p>password: <input type="text" name="lname" /></p>
  <input type="submit" value="login" />&nbsp&nbsp&nbsp<a href = "forgotpasswd.html">forgot?</a>&nbsp&nbsp<a href = "register.html"> register</a>
</form>
</div>
</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<ul>
                                
                                <li><a href = "./event.php?action=musique"  >CD</a>
                                        <ul>
                                        <li><a href = "./pop1.html">Blue</a></li>
                                        <li><a href = "./event.php?action=concert">Concert</a></li>
                                        <li><a href = "./event.php?action=soiree">jazz</a>
                                        </ul>
                                </li>
                                <li><a href = "./event.php?action=art">Author</a>
                                        <ul>
                                        <li><a href = "./event.php?action=expositions">Male</a></li>
                                        <li><a href = "./event.php?action=musee">Female</a></li>
                                        <li><a href = "./event.php?action=theatre">Band</a>
                                        </ul>
                                </li>

                                <li><a href = "./register.html">register</a>
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
<h1>content</h1>
</div>

<div class="bot">
<h1>bottom</h1>
</div>
</div>
</body>
</html>