<%-- 
    Document   : index
    Created on : Jun 7, 2016, 3:55:36 PM
    Author     : ANISH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #main{
                
                
            }
            #header{
                padding-bottom: 20px;
                padding-top: 30px;
                width: 70%;
                background: darkturquoise;
                text-align: center;
                
                
                
                
            }
            #content{
                height:400px;
                width: 70%;
                background-image: url(image/bnr2.jpg);
               background-repeat: no-repeat;
               background-size: cover;
                
            }
            
            #footer{
                height: 50px;
                width: 70%; 
                background: darkgrey;
                
                
            }
            
            
</style>
        
    </head>
    <body>
    <center>
        <div id="main">
            <div id="header">
                <h2>Banking Login Page</h2>
            </div>
            <div id="content"><br>
                 <marquee>Welcome to Banking Login Page</marquee>
                <div align="center" style="padding: 50px; border: solid 1px lightcoral;width: 30%;border-radius: 8px;">
                    <form action="ServletController" method="post">
                    <table cellpadding="10">
                        
                        <tr>
                            <td>Bank ID</td>
                            <td><input type="text" name="un" required="" style="width: 100%;"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="up" required="" style="width: 100%;"></td>
                        </tr>
                        <tr>
                            
                            <td><input type="submit" name="btn" value="Login"></td>
                        </tr>
                    </table></form>
                    
                </div><br>
                 <%
String mg=(String)request.getAttribute("Error");
if(mg!=null){
    out.print("<div style='border-radius:8px;background-color:white;border:solid 1px lightpink;width:30%;height:100px;'>");
   out.println("<a href='index.jsp' style='text-decoration:none;'><img src='image/cn.png' align='right'</a>");
    out.println("<br><br>"+"<img src='image/error.png' width='30px;' height='30px;'>"+"&nbsp;&nbsp;"+"<mark>"+"<b>"+mg+"</b>"+"</mark>"); 
   out.print("</div>");
}
%>
             </div>
            <div id="footer"> Copyright@2016</div>
        </div>
    </center>
    </body>
</html>
