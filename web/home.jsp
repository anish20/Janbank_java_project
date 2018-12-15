<%-- 
    Document   : index
    Created on : Jun 7, 2016, 3:55:36 PM
    Author     : ANISH
--%>


<html>
    <head>
        
<%@page import="java.util.*" session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        
        <link href="Look\side_menu.css" rel="stylesheet" type="text/css" />
        <link href="Look\top\top_menu.css" rel="stylesheet" type="text/css" />
        <link href="Look\Image_Effect\img.css" rel="stylesheet" type="text/css" />
        <link href="Look\layout.css" rel="stylesheet" type="text/css" />
        
       


    </head>
    <body >
        <div class="Container">
            <header>
                <div style="float: left; margin: 10px;"><img src="image/an.png" style="border-radius:50% 50% 50% 50%;width: 100px;height: 100px;"></div> 
                <div style="float: left;margin: 15px;"><br><div  ><font style="font-size: xx-large">JanBank</font>&nbsp;<font style="font-size-adjust: inherit;font-size: medium;font-style: italic;color: aliceblue;">Your money yourBank</font></div></div>
                <div style="float: right;margin: 10px;"><div class="m"><a href="home.jsp" style="text-decoration: none">Home</a> | <a href="" style="text-decoration: none">About Us</a> | <a href="" style="text-decoration: none">Contact Us</a> | <a href="index.jsp" style="text-decoration: none">Logout</a></div><hr></div><br><br><br>
                <div style="float: bottom">
                    <p align="right" style="padding-right: 8px;">Last accessed time: <%=new Date(session.getLastAccessedTime())%></p>
                     
               </div>
                </header>
                    <nav>
                   <div>Welcome!&nbsp;<% 
                String msg=(String)session.getAttribute("user");
                String ms=(String)session.getAttribute("syam");
                if(ms!=null){
                    out.print("<mark>"+ms+" ");
                }
                if(msg!=null){
                out.print("<mark>"+msg+"</mark>");}
                %></div>
                <div class="dc">
                    <b> Services >></b><ul >
                        <li ><a  id="" href="Create_Account.jsp"  >Open New Account</a></li>
                        <li><a id="" href="Account_manage.jsp"   >Manage Account</a></li>
                        <li><a id="" href="Active_list.jsp" >Active Account</a></li></ul>
                    <b> Informations >></b><ul >
                    <li ><a  id="" href="Saving_Account.jsp"  >Saving Account</a></li>
                        <li><a id="" href=""   >Current Account</a></li>
                        <li><a id="" href=""   >Salary Account</a></li>
                        <li><a id="" href="" >Loaning Account</a></li></ul>
                </div>
                    </nav>
                <article style="" id="HT">
                <marquee><font color="lightpurple">Thanks to Visiting in Our Bank</marquee>
                <div id="cf" style="margin:10px;" >
                    <a  href="main.jsp"><img class="bottom" src="image/banking.png" style="width: 100%;height: 160px;"><img class="top" src="image/bnk1.jpg" style="width: 100%;height: 160px;"></a></p>
                </div><br><br><br><br><br><br><br><br><br>
                <div style=" background-color: honeydew;border:solid 1px gray;border-radius: 8px;margin:10px;">
                  
                    <p align="justify" style="padding: 8px;font-family: inherit;font-size: large;color:black">
                        It is Client-Side Web Banking Application thats provides the Services of Bank such as Opening Account,Cash Deposit,Cash Withdraw,Balance Transfer,Balance Enquiry etc.You can manage your account by deposit amount,withdraw amount,balance transfer to another account.This application mainly used for bank staff member such as Accountant , Manager.Our bank slogan is <font style="font-style: italic;color: #00F">Your Money Your Bank</font>.that means where your money,where your Bank.
                       
                        JanBank is the name of our bank title name,its a unique name.our bank is connected with other commercial banks.we have number of account holder their account joined with our bank.They can easily to manage their account by visiting in our bank.
                    </p>
                    
                </div>
                </article>
                <footer><h1>Copyright&#169;anish2016</h1></footer>
        </div>
    </body>
</html>
