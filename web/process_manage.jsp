<%-- 
    Document   : index
    Created on : Jun 7, 2016, 3:55:36 PM
    Author     : ANISH
--%>


<html>
    <head>
        
<%@page import="java.sql.ResultSet"%>
<%@page import="ConnectionClass.ShareConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
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
            .db{
               width: 100%;
              padding: 10px;
               border: solid 1px;
               border-collapse: collapse;
            }
            .db th{
                background: lightcyan;
                border: solid 1px;
                text-align: center;
                padding: 5px;
            }
            .db td{
                text-align: center;
                border: solid 1px;
                padding: 5px;
            }
            .st{
                width: 100%;
                border: solid 1px;
                border-collapse: collapse;
                
            }
            .st td{
                padding: 5px;
                background-color: #ffffff;
                text-align: center;
                border: solid 1px;
            }
            .st td a{
                text-decoration: none;
                font-size: large;
                overflow: hidden;
                
                
                    
            }
            .st td:hover{
                background: aquamarine;
            }
            .st td a:hover{
              color: red;
                
                    
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
                <%
        int account=Integer.parseInt(request.getParameter("acn"));
        Connection con=null;
        Statement st=null;
        ResultSet res=null;
        try{
            con=ShareConnection.DistributeConn();
            String sql="select * from Customer_info where Account_No='"+account+"'";
            st=con.createStatement();
           res =st.executeQuery(sql);
           
            if(res.next()){
                con=ShareConnection.DistributeConn();
                String s1="select * from Customer_info where Account_No='"+account+"'";
                st=con.createStatement();
                res=st.executeQuery(s1);
                if(res.next()){
                %>
                <%
           con=ShareConnection.DistributeConn();
                String s2="select * from Account_Value where Account_No='"+account+"'AND Txn_Status='YES'";
                st=con.createStatement();
                res=st.executeQuery(s2);
                if(res.next()){ 
                                       
    
%>

                <div style="margin: 10px; border: solid 1px lightcoral;height: 300px;border-radius: 8px;"><br>
                    <div style="float: left"><table>
                            <tr>
                                <td>&nbsp;&nbsp;Welcome :<font color="darkpink"><%=res.getString("Customer_Name") %></font></td>
                            </tr>
                            <%}%>
                        </table></div>
                        <div style="float: right">
                            | <a href="Account_manage.jsp" style="text-decoration: none" >Logout&nbsp;&nbsp;&nbsp;</a>
                        </div>
                        <div style="float: right"><table>
                            <tr>
                                <td><font color="green">Available Balance:</font><%=res.getFloat("Balance") %>&nbsp;INR</td>
                            </tr>
                            <%}%>
                        </table></div>
                        
                        <br><hr>
                        
                        <div style="margin: 5px; padding: 8px;">
                        <%con=ShareConnection.DistributeConn();
                String s3="select Account_No,Customer_Name,Account_Type,Date_Of_Birth from Customer_info where Account_No='"+account+"'";
                st=con.createStatement();
                res=st.executeQuery(s3);
                
                %>
                       <table class="db">
                                    <tr>
                                        <th>Account No</th>
                                        <th>Customer Name</th>
                                        <th>Account Type</th>
                                        <th>Date of Birth</th>
                                    </tr>
                                    <%
                                    while(res.next()){
%>
                                    <tr>
                                        <td><%=res.getInt("Account_No") %></td>
                                        <td><%=res.getString("Customer_Name") %></td>
                                        <td><%=res.getString("Account_Type") %></td>
                                        <td><%=res.getString("Date_Of_Birth") %></td>
                                    </tr>
                                    <%}%>
                                </table> 
                                <br>
                                  
                                <table  class="st">
                                    <tr>
                                        <td><a href="Deposit.jsp">Cash Deposit</a></td>
                                        <td><a href="Withdraw.jsp">Cash Withdraw</a></td>
                                        <td><a href="">Fund Transfer</a></td>
                                        <td><a href="" onclick="" >Balance Enquiry</a></td>
                                        <td><a href="Statement.jsp">Account Statement</a></td>
                                    </tr>
                                </table>
                                    
                                
                                  
                              
                        </div>
                        
                </div>    
                
                
                
                
                
                <%
                
            }else{
               
               RequestDispatcher rd=request.getRequestDispatcher("Account_manage.jsp");
               String msg1="Sorry not found this Account No";
               request.setAttribute("sess", msg1);
               rd.forward(request, response);
               
            }
        }catch(Exception e){
            System.out.print(e);
        }
        
%>
            
                </article>
                <footer><h1>Copyright&#169;anish2016</h1></footer>
        </div>
    </body>
</html>
