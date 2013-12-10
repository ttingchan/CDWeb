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
            background-image:url(imgs/yanzheng1.jpg);
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

<div class="content">
<h1>Welcome to CD!</h1>
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
                       <td><strong><font color="red">*</font>Pseudo:</strong></td>
                       <td class="td2"><input type="text" id="pseudo" name="pseudo" onblur="return CheckPseudo();" />
                       </td>
                       <td class="td3"><span id="pseudodiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong><font color="red">*</font>Mail:</strong></td>
                       <td class="td2"><input type="text" id="mail" name="mail" onblur="return CheckMail();" />
                       </td>
                       <td class="td3"><span id="maildiv"></span></td>
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
                       <td><strong>Sex:</strong></td>
                       <td class="td2"><input type="radio" value="male" id="sex" name="sex" onblur="return CheckSex();"/>Male
                           <input type="radio" value="female"  name="sex" onblur=" return CheckSex();"/>Female                          
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>Birth:</strong></td>
                       <td class="td2"><input type="date" id="birth" name="birth" />                          
                       </td>
                       <td class="td3"><span id="Birthdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td><strong>Verification:</strong></td>
                       <td class="td2">
                        <input type="text" onclick="createCode();" id="input1" />
                       </td >
                       <td class="td3">
                        <input type="text" id="checkCode" class="unchanged" style="width: 80px" />
                        </td>
                   </tr>
                   
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