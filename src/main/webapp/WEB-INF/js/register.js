function CheckName()
   {
       var div=document.getElementById('usernamediv');
       div.innerHTML="";
       var username = document.RegisterForm.username.value;
       if(username=="")
       {
           div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á please input the name!</span>";
  //         document.RegisterForm.username.focus();
           return (false);
       }
        var name = username.toLowerCase();
        for(var i=0; i< username.length; i++)
        {
            var charname = name.charAt(i);
            if((!(charname >='a' && charname <='z')) )
            {
                div.innerHTML = "<span style='COLOR:#ff0000'>  ¡Á the name is a-z,A-Z!</span>";
                document.RegisterForm.username.blur();
                reutrn (false);
            }
        }
        div.innerHTML ="<span style ='color:#00ff00'>¡Ì you can use this name;</span>";
        return (true);
   }
    function CheckPseudo()
   {
       var div=document.getElementById('pseudodiv');
       div.innerHTML="";
       var username = document.RegisterForm.pseudo.value;
       if(username=="")
       {
           div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á please input the name;</span>";
           document.RegisterForm.pseudo.focus();
           return (false);
       }
       
        if(username.length <4 || username.length > 16)
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á the length is 4 to 16</span>";
            document.RegisterForm.pseudo.blur();
            return (false);
        }
        
        var pseudoname = username.toLowerCase();
        for(var i=0; i< pseudoname.length; i++)
        {
            var charname = pseudoname.charAt(i);
            if(!(charname >=0 && charname <=9) && (!(charname >='a' && charname <='z')) && (charname !== '_') )
            {
                div.innerHTML = "<span style='COLOR:#ff0000'>  ¡Á the name is a-z,A-Z,0-9 and _;</span>";
                document.RegisterForm.pseudo.blur();
                reutrn (false);
            }
        }
        div.innerHTML ="<span style='COLOR:#00ff00'>¡Ì  ok!</span>";
        return (true);       
   }
   
    function CheckMail()
    {
        var div = document.getElementById('maildiv');
        div.innerHTML = "";
        var mail = document.RegisterForm.mail.value;
        var char1 = mail.indexOf("@",0);
        var char2 = mail.indexOf(".",0);
        
        if(mail.length == 0)
        {
            div.innerHTML = "<span style='COLOR:#ff0000'>  ¡Á please input the mail</span>";
            document.RegisterForm.mail.focus();
            return (false);
        }
        
        if(mail.indexOf("@",0) == -1)
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á the address is not valid</span>";
            document.RegisterForm.mail.focus();
            return (false);
        }
        
        if(mail.indexOf(".",0) == -1)
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á the address is not valid</span>";
            document.RegisterForm.mail.focus();
            return (false);
        }
        div.innerHTML ="<span style='color:#00ff00'> ¡Ì ok!</span>";
        return (true);
    }
    function CheckPassword()
    {
        var div=document.getElementById('passworddiv');
       div.innerHTML="";
       var password = document.RegisterForm.password.value;
       
        if(password ==="")
        {
            div.innerHTML = "<span style='COLOR:#ff0000'>  ¡Á please input the password</span>";
            document.RegisterForm.password.focus();
            return (false);
        }
        
        if(password.length < 5 || password.length >15)
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á the length is 5-15</span>";
            document.RegisterForm.password.blur();
            return (false);
        }
        div.innerHTML="<span style='COLOR:#00ff00'> ¡Ì ok!</span>"
        return (true);
    }
    
    function CheckConfirm()
    {
        var div = document.getElementById('confirmdiv');
        div.innerHTML ="";
        var confirm = document.RegisterForm.confirm.value;
        var password = document.RegisterForm.password.value;
        if(confirm =="")
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á please input the password again</span>";
            document.RegisterForm.confirm.focus();
            return (false);
        }
        
        if(confirm != password)
        {
            div.innerHTML ="<span style='COLOR:#ff0000'>  ¡Á the password is different</span>";
            document.RegisterForm.confirm.blur();
            reutrn (false);
        }
        div.innerHTML ="<span style='COLOR:#00ff00'> ¡Ì ok!</span>"
        return (true);
    }
    function CheckType()
    {
        var div = document.getElementById('typediv');
        div.innerHTML="";
        var type = document.RegisterForm.type.value;
        if(type=="")
        {
            div.innerHTML ="<span style='COLOR:#ff0000'> ¡Á please choose a type for registeration</span>";
            document.RegisterForm.type.focus();
            reurn (false);
        }
        div.innerHTML="<span style='COLOR:#00ff00'> ¡Ì ok!</span>";
        return (true);
    }
    function Check()
    {
        if(CheckName() && CheckPseudo()&& CheckMail()  && CheckPassword() && CheckConfirm() )
        return (true);
        else
        return (false);
    }