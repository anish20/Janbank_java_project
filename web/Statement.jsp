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
        <style ></style>
        <link href="Look\side_menu.css" rel="stylesheet" type="text/css" />
        <link href="Look\top\top_menu.css" rel="stylesheet" type="text/css" />
        <link href="Look\Image_Effect\img.css" rel="stylesheet" type="text/css" />
        <link href="Look\layout.css" rel="stylesheet" type="text/css" />
        <style>
            #cl:hover{
                background-color:lightpink;
                
            }
        </style>
       


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
                        <li><a id="" href="Account_manage.jsp"   >Manange Account</a></li>
                        <li><a id="" href="Active_list.jsp" >Active Account</a></li></ul>
                    <b> Informations >></b><ul >
                    <li ><a  id="" href=""  >Saving Account</a></li>
                        <li><a id="" href=""   >Current Account</a></li>
                        <li><a id="" href=""   >Salary Account</a></li>
                        <li><a id="" href="" >Loaning Account</a></li></ul>
                </div>
                    </nav>
                <article style="" id="HT">
                <div style="border:solid 1px; border-radius: 8px; height: 350px; margin: 10px;">
                <p style="padding: 5px 5px 5px 30px;"><b>Transaction Statement from Account</b></p>
                <div align="center" style="padding: 100px;">
                    <div id="cl" style="border: solid 1px deeppink;width: 70%;border-radius: 8px;"><br>
                    <form action="getReport.jsp" method="Post">
                        
                    <table cellpadding="6">
                        <tr>
                            <td>Account No</td>
                            <td><input type="text" name="acn" required=""></td>
                        </tr>
                        <tr>
                          <td>Operation</td>
                          <td>
                              <input type="text"  list="s" name="optype" >
                              <datalist id="s">
                                 <option value="DEPOSIT">
                                  <option value="WITHDRAW"> 
                              </datalist>
                          </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" align="center"><input type="submit" value="Get Statement">
                                <input type="reset" value="Cancel">
                            </td>
                        </tr>
                    </table>
                    </form>
                    </div>
                   <%
String msz1=(String)request.getAttribute("Value");
if(msz1!=null){
    out.print("<mark>"+msz1);
}
%> 
                </div>
               </div>
                </article>
                <footer><h1>Copyright&#169;anish2016</h1></footer>
        </div>
    </body>
</html>
