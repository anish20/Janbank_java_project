<%-- 
    Document   : login_sector
    Created on : Jun 26, 2016, 3:06:01 PM
    Author     : ANISH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #cn a{
                text-decoration: none;
                font-size: large;
                font-weight: bold;
            }
            #cn a:hover{
                color: red;
                
            }
            #cn a:active{
                color: blue;
                
                
            }
            #cn:hover{
               background: #00F 
            }
        </style>
    </head>
    <body>
        <div style="margin-left: 80px;width: 60%;background-color: lavenderblush;" >
            <div style="padding: 30px;"><center><h2>Welcome to Login Gateway</h2></center></div>
            <hr>
            <center>
            <table>
                <tr>
                    <td id="cn" ><div style="background-color: white; border: solid 1px; color:  lightpink;border-radius: 10px; width: 160px;height: 110px;"><a href="Admin_Login.jsp"><img src="image/amn.jpg" style="padding: 2px; width: 100px;height: 70px"><br>&nbsp;Admin Login</a></div></td><td id="cn"><div  style="background-color: white;border: solid 1px; color:  lightpink; border-radius: 10px; width: 160px;height: 110px;"><a href="index.jsp"><img src="image/acn.jpg" style="padding: 2px;width: 80px;height: 70px"><br>&nbsp;Banking Login</a></div></td><td id="cn"><div  style="background-color: white;border: solid 1px; color:  lightpink; border-radius: 10px; width: 160px;height: 110px;"><a href="Guest_Login.jsp"><img src="image/gust.jpg" style="padding: 2px; width: 80px;height: 70px"><br>&nbsp;Guest Login</a></div></td>
                </tr>
            </table><br>
                <div style="border: solid 1px lightpink;height: 250px;margin:10px;border-radius: 8px;">
                    <p align="justify" style="margin: 5px">
                        Thanks to visit us our login gateway.We provides the different login links likes Admin login ,Account login , Guest login etc.So Admin login link goes to Admin page and where admin could handled Users account multiple queries , Account open request,modifying request and other more request communicate with database as per client request or user request.And Banking Login link goes to banking-client login page where client fill up fine their credencials then move up Banking home page there he can easily manage to users account.Now comes to Guest Login link goes to guest login page where Guest will be enter with his/her name then move up to Welcome guest page , here guest can request to account opening by self fill up form details.
                    </p>
                    
                </div>
            </center>
            <br><br><br>
        </div>
    </body>
</html>
