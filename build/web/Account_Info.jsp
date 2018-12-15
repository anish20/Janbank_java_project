<%-- 
    Document   : Admin_Home
    Created on : Jun 27, 2016, 6:07:07 PM
    Author     : ANISH
--%>

<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="ConnectionClass.ShareConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            td{
                text-align: center;
                
            }
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
            <div style="background-color: #d4e3e5;height: auto;">
                <div style=" padding: 20px;">
                     <%
                 try{
    int f=Integer.parseInt(request.getParameter("fm"));
%>      
                    <form action="Account_Activate.jsp">
                    <div style="background-color: aliceblue;width:30%;height:auto; padding: 10px;border-radius: 8px;">
                        <%
                        try{
                         Connection cn1=ShareConnection.DistributeConn();
                         String Sq="select * from Admin_Cust_Acc where Form_No='"+f+"'";
                         Statement statement=cn1.createStatement();
                         ResultSet rst=statement.executeQuery(Sq);
                         while(rst.next()){
                             %>
                             <font color="red"><%=rst.getString("Full_Name") %> Account not yet Alloted.</font>
                             <%
                         }
}catch(Exception e){
    
}
%><br><br>
                        <input type="text" placeholder="Enter Amount" title="Enter Amount To Alloted" name="value" >
                        <input type="hidden" name="txt" value="">
                        <input type="submit"  value="Alloted Account">
                    </div><br>
                
                   
 <div style="background-color: royalblue;padding: 3px;margin-left:  1px;">General Info</div><br>
 <div style="background: white;padding: 3px;">
     <div>
    
         <%   
try{
    Connection con=null;
   Statement st=null;
   ResultSet rs=null;
   %>
   <input type="hidden" name="fmt" value="<%=f %>">
   <%
  
  con=ShareConnection.DistributeConn();
  String sql="select * from Admin_Cust_Acc where Form_No='"+f+"'";
  st=con.createStatement();
  rs=st.executeQuery(sql);
  
  %>
  <table width="80%" cellpadding="4">
      <tr>
          <th>Full_Name</th>
          <th>Father's Name</th>
          <th> Date of Birth</th>
          <th>Gender</th>
      </tr>
      <%
      while(rs.next()){
%>
      <tr>
          <td><%= rs.getString("Full_Name") %></td>
          <td><%= rs.getString("Father_Name") %></td>
          <td><%= rs.getString("DOB") %></td>
          <td><%= rs.getString("Gender") %></td>
      </tr>
      <%}%>
      
  </table>
      <%
      con.close();
      st.close();
      rs.close();
}catch(Exception e){
  System.out.print("Soorryy"+e);
}
%>
 </div></div><br>
 <div>
    <div style="background-color: royalblue;padding: 3px;margin-left:  1px;">Contact Info</div><br>
    <div style="background: white;padding: 3px;">
    <%
try{
  Connection con=ShareConnection.DistributeConn();
  String sql="select Ress_Address,City,State_name,Country,Pin_Code,Mobile_No,Email_ID from Admin_Cust_Acc where Form_No='"+f+"'";
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery(sql);
  %>
  <table width="80%" cellpadding="4">
      <tr>
          <th>Full Address</th>
          <th>City</th>
          <th>State Name</th>
          <th>Country</th>
          <th>Pin No</th>
          <th>Mobile No</th>
          <th>Email ID</th>
      </tr>
      <%
      while(rs.next()){
%>
      <tr>
          <td><%= rs.getString("Ress_Address") %></td>
          <td><%= rs.getString("City") %></td>
          <td><%= rs.getString("State_name") %></td>
          <td><%= rs.getString("Country") %></td>
          <td><%= rs.getInt("Pin_Code") %></td>
          <td><%= rs.getLong("Mobile_No") %></td>
          <td><%= rs.getString("Email_ID") %></td>
      </tr>
      <%}%>
      
  </table>
      <%
      con.close();
      st.close();
     
}catch(Exception e){
   System.out.print(e); 
}
%>
    </div>
     </div><br>
     <div>
    <div style="background-color: royalblue;padding: 3px;margin-left:  1px;"> Request Info:</div><BR>
    <div style="background: white;padding: 3px;">
    <%
try{
  Connection cn=ShareConnection.DistributeConn();
  String sql="select * from Admin_Cust_Acc where Form_No='"+f+"'";
  Statement st=cn.createStatement();
  ResultSet rs=st.executeQuery(sql);
  %>
  <table width="60%" cellpadding="4">
      <tr>
          <th>Form No</th>
          <th>Requested Date</th>
          <th>Account Status</th>
          
      </tr>
      <%
      while(rs.next()){
%>
      <tr>
          <td><%= rs.getInt("Form_No") %></td>
          <td><%= rs.getString("Request_Date") %></td>
          <td><%= "<font color='red'>"+rs.getString("Acc_Status")+"</font>" %></td>
          
      </tr>
      <%}%>
      
  </table>
      <%
      cn.close();
      st.close();
     
}catch(Exception e){
 System.out.print("Soorryy"+e);   
}
%>


    </div>

</div>
            
     
 
          
<%
                 }catch(Exception e){
                   System.out.print("Soorryy kuchh galat hai.."+e);
                 }
%>
                    </form></div>
            </div>
        </div>
                    jdefsukiyfhuejfbuiw4yhujfruijfnkgf
        </div>
    </body>
</html>
