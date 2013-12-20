<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />
<title>CD</title>
<link rel="stylesheet" href="WebRoot/dec/css/home.css"/>
<script type="text/javascript" src="js/register.js" ></script>  
<script type="text/javascript" src="js/verification.js" ></script>
<style type="text/css">
        .code
        {
            background-image:url(WebRoot/dec/imgs/yanzheng1.jpg);
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
<body>
<div class ="Layout">
<div class="header" style="background:url(WebRoot/dec/img/cdworld1.png)" ><%@include file="WebRoot/header.jsp"%>
<!--<img src="WebRoot/dec/img/cd1.png" width="100%" height="100%"/> -->

</div>
<div class="nav">
<!-- <h1>navigator</h1>-->
<%@include file="WebRoot/nav.jsp"%>
</div>
<div class="content">
            <fieldset>
                <legend align="center" style="font-family:Times"><strong>Register</strong></legend>
            <br/>
           <form method="post" action="php/register.php" name="RegisterForm" >
               <table align="center">
                   <tr>
                       <td style="font-family:Times"><strong><font color="red">*</font>Username:</strong></td>
                       <td class="td2"><input type="text" id="username" name="username" onblur="return CheckName();"/>                           
                        </td >
                        <td class="td3"><span id="usernamediv"></span></td>
                   </tr>
                   <tr>
                       <td style="font-family:Times"><strong><font color="red">*</font>Password:</strong></td>
                       <td class="td2"><input type="password" id="password" name="password" onblur="return CheckPassword();"/>
                       </td>
                       <td class="td3"><span id="passworddiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td style="font-family:Times"><strong>Re-enter Password:</strong></td>
                       <td class="td2"><input type="password" id="confirm" name="confirm" onblur="return CheckConfirm();" /> 
                       </td>
                       <td class="td3"><span id="confirmdiv"></span></td>
                   </tr>
                   <tr>
                       <td style="font-family:Times"><strong><font color="red">*</font>Firstname:</strong></td>
                       <td class="td2"><input type="text" id="pseudo" name="firstname" onblur="return CheckPseudo();" />
                       </td>
                       <td class="td3"><span id="pseudodiv"></span></td>
                   </tr>
                   <tr>
                       <td style="font-family:Times"><strong><font color="red">*</font>Lastname:</strong></td>
                       <td class="td2"><input type="text" id="pseudo" name="lastname" onblur="return CheckPseudo();" />
                       </td>
                       <td class="td3"><span id="pseudodiv"></span></td>
                   </tr>
                   <tr>
                       <td style="font-family:Times"><strong>Birthday:</strong></td>
                       <td class="td2"><input type="date" id="birth" name="birthday" />                          
                       </td>
                       <td class="td3"><span id="Birthdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td style="font-family:Times"><strong><font color="red">*</font>Mail:</strong></td>
                       <td class="td2"><input type="text" id="mail" name="mail" onblur="return CheckMail();" />
                       </td>
                       <td class="td3"><span id="maildiv"></span></td>
                   </tr>
                   
                    <tr>
                       <td style="font-family:Times"><strong>Address:</strong></td>
                       <td class="td2"><input type="text" id="mail" name="adress" onblur="return CheckMail();" />
                       </td>
                       <td class="td3"><span id="maildiv"></span></td>
                   </tr>
                   
                   
                   
                   <tr>
                       <td style="font-family:Times"><strong>Sex:</strong></td>
                       <td class="td2"><input type="radio" value="male" id="sex" name="sex" onblur="return CheckSex();"/>Male
                           <input type="radio" value="female"  name="sex" onblur=" return CheckSex();"/>Female                          
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td style="font-family:Times"><strong>City:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="city" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                    <tr>
                       <td style="font-family:Times"><strong>Country:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="country" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td style="font-family:Times"><strong>Zip:</strong></td>
                       <td class="td2"><input type="text" id="sex" name="zip" onblur="return CheckSex();"/>
                                                  
                       </td>
                       <td class="td3"><span id="sexdiv"></span></td>
                   </tr>
                   
                   <tr>
                       <td style="font-family:Times"><strong>Phone:</strong></td>
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
<%@include file="WebRoot/bot.jsp"%>
</div>
</div>
</body>
</html>