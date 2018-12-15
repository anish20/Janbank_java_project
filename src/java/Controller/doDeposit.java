/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Bean.Open_Account;
import ConnectionClass.ShareConnection;
import Model.ServiceProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ANISH
 */
public class doDeposit extends HttpServlet {
 public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter pw = response.getWriter();
  try{
String Opt="DEPOSIT";
String isNew="YES";
int Acount_no;
String name;
int amount;
//Open_Account opn=new Open_Account();
String Txn_Date=(new java.util.Date()).toString();
Acount_no=Integer.parseInt(request.getParameter("acn"));
name=request.getParameter("nm");
amount=Integer.parseInt(request.getParameter("amt"));
Connection con=ShareConnection.DistributeConn();
Statement st=con.createStatement();
String sql1="select * from Customer_info where Account_No='"+Acount_no+"' AND Customer_Name='"+name+"'";
ResultSet rs=st.executeQuery(sql1);
boolean r=rs.next();
con.close();
if(r==true){
    String bal_sql="select Balance from Account_Value where Customer_Name='"+name+"' AND Account_no='"+Acount_no+"' AND Txn_Status='YES'";
  int bal=ServiceProvider.getBalance(bal_sql);
if(bal==0){
   System.out.println("Current Balance"+bal);
   bal= bal+amount; 
   System.out.println("Current Balance"+bal);
}else{
     bal= bal+amount;
     String sql_up="update Account_Value set Txn_Status='NO'where Customer_Name='"+name+"' AND Account_no='"+Acount_no+"' AND Txn_Status='YES' ";
     int up=ServiceProvider.updateBalance(sql_up); 
      System.out.println(bal);
}
String sql="insert into Account_Value(Account_No,Customer_Name,Operation,Amount,Balance,Txn_Date,Txn_Status) values('"+Acount_no+"','"+name+"','"+Opt+"','"+amount+"','"+bal+"','"+Txn_Date+"','"+isNew+"')";
int update=ServiceProvider.updateBalance(sql); 
        if(update>0){
           HttpSession session=request.getSession();
            session.setAttribute("Balance", bal);
            response.sendRedirect("PrintDeposit.jsp");
        }
}else{
    RequestDispatcher rd=request.getRequestDispatcher("Deposit.jsp");
   String message="Sorry! data not matched with our Record";
   request.setAttribute("info", message);
   rd.forward(request, response);
}
  }catch(Exception e){
  System.out.println(e); 
     }
  }
}