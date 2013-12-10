<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" href="dec/css/home.css"/>
<script type="text/javascript" src="js/register.js" ></script>  
<script type="text/javascript" src="js/verification.js" ></script>
<style type="text/css">
        .code
        {
            background-image:url(dec/imgs/yanzheng1.jpg);
            font-family:Arial;
            font-style:italic;
            color:Red;
            border:0;
            padding:2px 3px;
            letter-spacing:3px;
            font-weight:bolder;
            text-align:center;
        }
        .unchanged
        {
            border:0;
        }
    
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
<form action="/example/html/form_action.asp" method="get">
  <p style="text-align:left;font-family:Times;color:white">USERNAME: <input type="text" name="fname" /></p>
  <p style="text-align:left;font-family:Times;color:white">PASSWORD: <input type="text" name="lname" /></p>
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

            <fieldset>
                <legend>Register</legend>
            <br/>
           <form method="post" action="php/register.php" name="RegisterForm" >
               <table>
                   <tr>
                       <td><strong><font color="red">*</font>Username:</strong></td>
                       <td class="td2"><input type="text" id="username" name="username" onblur="return CheckName();"/>                           
                        </td >
                        <td class="td3"><span id="usernamediv"></span></td>
                   </tr>
                   <tr>
                       <td><strong><font color="red">*</font>Password:</strong></td>
                       <td class="td2"><input type="password" id="password" name="password" onblur="return CheckPassword();"/>
                       </td>
                       <td class="td3"><span id="passworddiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>Re-enter Password:</strong></td>
                       <td class="td2"><input type="password" id="confirm" name="confirm" onblur="return CheckConfirm();" /> 
                       </td>
                       <td class="td3"><span id="confirmdiv"></span></td>
                   </tr>
                   <tr>
                       <td><strong><font color="red">*</font>Firstname:</strong></td>
                       <td class="td2"><input type="text" id="pseudo" name="firstname" onblur="return CheckPseudo();" />
                       </td>
                       <td class="td3"><span id="pseudodiv"></span></td>
                   </tr>
                   <tr>
                       <td><strong><font color="red">*</font>Lastname:</strong></td>
                       <td class="td2"><input type="text" id="pseudo" name="lastname" onblur="return CheckPseudo();" />
                       </td>
                       <td class="td3"><span id="pseudodiv"></span></td>
                   </tr>
                   <tr>
                       <td><strong>Birthday:</strong></td>
                       <td class="td2"><input type="date" id="birth" name="birthday" />                          
                       </td>
                       <td class="td3"><span id="Birthdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong><font color="red">*</font>Mail:</strong></td>
                       <td class="td2"><input type="text" id="mail" name="mail" onblur="return CheckMail();" />
                       </td>
                       <td class="td3"><span id="maildiv"></span></td>
                   </tr>
                   
                    <tr>
                       <td><strong>Address:</strong></td>
                       <td class="td2"><input type="text" id="mail" name="adress" onblur="return CheckMail();" />
                       </td>
                       <td class="td3"><span id="maildiv"></span></td>
                   </tr>
                   
                   
                   
                   <tr>
                       <td><strong>Sex:</strong></td>
                       <td class="td2"><input type="radio" value="male" id="sex" name="sex" onblur="return CheckSex();"/>Male
                           <input type="radio" value="female"  name="sex" onblur=" return CheckSex();"/>Female                          
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>City:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="city" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                    <tr>
                       <td><strong>Country:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="country" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>Zip:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="zip" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>Phone:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="phonenum" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                  <!--   <tr>
                       <td><strong>Verification:</strong></td>
                       <td class="td2">
                        <input type="text" onclick="createCode();" id="input1" />
                       </td >
                       <td class="td3">
                        <input type="text" id="checkCode" class="unchanged" style="width: 80px" />
                        </td>
                   </tr>-->
                   
                   <tr>
                       <td><input type="submit" id="submit" name="submit" value="submit" onclick="validate();"/></td>
                       <td class="td2"><input type="reset" id="cancel" name="cancel" value="cancel"/></td>
                   </tr>
                   
               </table> 
                </form>
            </fieldset>
</div>

<div class="bot">
<h1>bottom</h1>
</div>
</div>
</body>
</html>