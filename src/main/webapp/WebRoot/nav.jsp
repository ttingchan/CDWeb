<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" type="text/css" href="dec/css/home.css"/>
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

                                <li><a href = "WebRoot/register.jsp">REGISTER</a>
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