<%-- 
    Document   : getData
    Created on : Jun 30, 2016, 3:42:37 PM
    Author     : ANISH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ConnectionClass.ShareConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            #hd ul{
                width: 100%;
                height: 60px;
                background-color:  limegreen;
                margin: 0;
                padding: 0;
                list-style: none;
                 
            }
            #hd li{
                float: left;
                padding: 15px;     
            }
            #hd li a{
                text-decoration: none;
                display: inline;
                font-weight: bold;
            }
            #hd li a:hover{
                border: solid 1px ;
                border-radius: 5px;
                padding: 8px;
                background-color: #ffffff;
                color: red;
            }
            .tftable {color:#333333;width:98%;border-width: 1px;border-color: #729ea5;border-collapse: collapse;}
.tftable th {background-color:#acc8cc;border-width: 1px;padding: 5px;border-style: solid;border-color: #729ea5;text-align:center
                ;}
.tftable tr {background-color:#d4e3e5;}
.tftable td {font-size:7px;border-width: 1px;padding: 5px;border-style: solid;border-color: #729ea5;text-align: center;}

.tftable tr:hover {background-color:#ffffff;}
        </style>
    </head>
    <body>
        <div style="background-color: blanchedalmond; width: 80%;height: auto;margin-left: 150px;">
            <div style="padding: 50px">
                <div style="float: left"><b>Admin Page</b></div>
                <div style="float: right; " >
                    Logged In as <%String ms=(String)session.getAttribute("adm");if(ms!=null){out.print("<font color='green'>"+ms+"</font>");}
                            %> | <a href="" style="text-decoration: none;">Admin Home</a> | <a href="" style="text-decoration: none;">Logout</a>
                </div>
                </div>
            <div style="margin: 10px; border:solid 1px;">
            <div id="hd" >
                    <ul>
                        <li><a href="">Dashboard</a></li>
                        
                        <li><a href="Active_Cust.jsp">Active Customers</a></li>
                        <li><a href="getData.jsp">Account Request</a></li>
                        <li><a href="">User Request</a></li>
                        <li><a href="">Other Queries</a></li>
                    </ul>
                </div>
            <div style="background-color: #d4e3e5;height: 400px;">
                
                <div style=" padding: 40px;">
                    
               <div  >
                   <form name="submitForm" method="post" action="Account_Info.jsp">
                    
                  
                       <%
                       String Status="Not Active";
        try{
           Connection con=ShareConnection.DistributeConn();
           String sql="select Form_No,Account_Type,Full_Name,Gender,Mobile_No,Acc_Status,Request_Date from Admin_Cust_Acc where Acc_Status='"+Status+"'";  
           Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY); 
           ResultSet rs=st.executeQuery(sql);
           if(!rs.next()){
               %><br><br><br>
               <div style=" background-color: white;width: 42%;height: 100px;border-radius: 8px;margin: auto">
                   <div style="padding: 35px;color: red"> Sorry! There are no any Request to Open Account</div>
               </div>
               <%
           }else{
               %>
               <div style="font-weight: bold">Account Request :</div>
                   <table class="tftable"  cellpadding="5" >
                       <tr>
                           <th style="border: 1px solid white;background: cornsilk">Form No</th>
                           <th style="border: 1px solid white;background: cornsilk">Account Type</th>
                           <th style="border: 1px solid white;background: cornsilk">Customer Name</th>
                           <th style="border: 1px solid white;background: cornsilk">Gender</th>
                           <th style="border: 1px solid white;background: cornsilk">Mobile No</th>
                           <th style="border: 1px solid white;background: cornsilk">Status</th>
                           <th style="border: 1px solid white;background: cornsilk">Request Date</th>
                           <th style="border: 1px solid white;background: cornsilk">Details</th>
                       </tr> 
                       <%
                       do{
                        %>
                        <tr>
                        
                         <td style="border: 1px solid white;font-size: medium"><%=rs.getInt("Form_No")%><input type="hidden" name="fm" value="<%=rs.getInt("Form_No")%>"></td>
                         <td style="border: 1px solid white;font-size: medium"><%=rs.getString("Account_Type")%></td>
                           <td style="border: 1px solid white;font-size: medium"><%=rs.getString("Full_Name")%></td>
                           <td style="border: 1px solid white;font-size: medium"><%=rs.getString("Gender")%></td>
                           <td style="border: 1px solid white;font-size: medium"><%=rs.getLong("Mobile_No")%></td>
                           <td style="border: 1px solid white;font-size: medium"><%="<font color='red'>"+rs.getString("Acc_Status")+"</font>"%></td>
                           <td style="border: 1px solid white;font-size: medium"><%=rs.getString("Request_Date")%></td>
                           <td style="border: 1px solid white;font-size: medium"><a href="javascript:document.submitForm.submit()" style='text-decoration: none;'>View</a></td>
                           
                       </tr>  
                       <%
                       rs.next();
                     
           
                                }while(rs.isAfterLast()!=true);
               
         
               %>
                     
                       <%}%>
                       <tr>
                           <td colspan="8" style="border: 1px solid white;font-size: medium;text-align: right"><a href="Admin_Home.jsp" >Cancel</a></td>
                       </tr>
                   </table>
               </div>   
               
               <%
                                          
        }catch(Exception e){
         System.out.print(e);   
        }
        
%>
                    </form>    </div>
            </div>
        </div>
        </div>
                    
    </body>
</html>
