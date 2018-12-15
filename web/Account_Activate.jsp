<%-- 
    Document   : Admin_Home
    Created on : Jun 27, 2016, 6:07:07 PM
    Author     : ANISH
--%>

<%@page import="java.sql.ResultSet"%>

<%@page import="ConnectionClass.ShareConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@page import="java.util.Date"%>
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
               Connection con=null;
               Statement st=null;
               ResultSet rs=null;
               int form=Integer.parseInt(request.getParameter("fmt"));
               int amt=Integer.parseInt(request.getParameter("value"));
               con=ShareConnection.DistributeConn();
               String status="Active";        
               con=ShareConnection.DistributeConn();
               String update="update Admin_Cust_Acc SET Acc_Status='"+status+"' WHERE Form_No ='"+form+"' ";
               st=con.createStatement();
               int up=st.executeUpdate(update);
               if(up>=0){
                   System.out.print("Updated..");
               }
               
               String inst="insert into Customer_info select Form_No,Full_Name,Father_Name,DOB,Email_ID,Mobile_No,Gender,Ress_Address,Pin_Code,City,State_name,Country,Account_Type,Acc_Status from Admin_Cust_Acc where Form_No='"+form+"'";
               st=con.createStatement();
               int mt=st.executeUpdate(inst);
               if(mt>=0){
                   con=ShareConnection.DistributeConn();
                  String qury="insert into Account_Value (Account_No,Customer_ID,Customer_Name) select Account_No,Customer_ID,Customer_Name from Customer_info where Customer_ID='"+form+"' ";
                  st=con.createStatement();
                  int ra=st.executeUpdate(qury);
                  if(ra>=0){
                   Date opn_Date=new Date();
               String dt=(new SimpleDateFormat("MM-dd-yyyy").format(opn_Date));
               String Operation="Opening Account";
               int bal=0;
               bal=bal+amt;
               String Txn_date=(new Date().toString());
               String isNew="Yes";
              
               String upt="update Account_Value set Operation='"+Operation+"',Amount='"+amt+"',Balance='"+bal+"',Opening_Date='"+dt+"',Txn_Date='"+Txn_date+"',Txn_Status='"+isNew+"' where Customer_ID='"+form+"'";
               st=con.createStatement();
               int i1=st.executeUpdate(upt);
               if(i1>=0){
                   System.out.print("jhgyugyuguygUpdated.."+amt);
               }   
                  }
               }else{}
               
               
                       
               
              
                 try{
   
%>      
                   
 <div style="background-color: royalblue;padding: 3px;margin-left:  1px;">General Info</div><br>
 <div style="background: white;padding: 3px;">
     <div>
    
         <%   

    
   con=ShareConnection.DistributeConn();
  String sql3="select * from Admin_Cust_Acc where Form_No='"+form+"'";
  st=con.createStatement();
  rs=st.executeQuery(sql3);
  
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
  con=ShareConnection.DistributeConn();
  String sql4="select Ress_Address,City,State_name,Country,Pin_Code,Mobile_No,Email_ID from Admin_Cust_Acc where Form_No='"+form+"'";
   st=con.createStatement();
   rs=st.executeQuery(sql4);
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
    <div style="background:white;padding: 3px;">
    <%
try{
  con=ShareConnection.DistributeConn();
  String sql4="select * from Admin_Cust_Acc where Form_No='"+form+"'";
   st=con.createStatement();
   rs=st.executeQuery(sql4);
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
          <td><%= "<font color='green'>"+rs.getString("Acc_Status")+"</font>" %></td>
          
      </tr>
      <%}%>
      
  </table>
      <%
      con.close();
      st.close();
     
}catch(Exception e){
 System.out.print("Soorryy"+e);   
}
%>


    </div>

     </div><br>
            
              
               <%
}catch(Exception e){
  System.out.print("what happend"+e);  
}
%>
                    
                </div>

            </div>
        </div>
        </div>
    </body>
</html>
