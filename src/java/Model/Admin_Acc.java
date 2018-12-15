/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import Bean.Admin_Been_Data;
import ConnectionClass.ShareConnection;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author ANISH
 */
public class Admin_Acc {
   public static int pageData(Admin_Been_Data abd){
        String req_Date=(new Date().toString());
        String Status="Not Active";
       int i=0;
        try {
            Connection con=ShareConnection.DistributeConn();
            Statement st=con.createStatement();
            String sql="insert into Admin_Cust_Acc values('"+abd.getFname()+"','"+abd.getFathername()+"','"+abd.getDob()+"','"+abd.getEmail()+"','"+abd.getMobile_no()+"','"+abd.getGender()+"','"+abd.getRess_Add()+"','"+abd.getPin_code()+"','"+abd.getCity()+"','"+abd.getState()+"','"+abd.getCountry()+"','"+abd.getAcc_type()+"','"+req_Date+"','"+Status+"')";
           i=st.executeUpdate(sql);
            if(i>=1){
             System.out.print("inserted,,,,");   
            }
        } catch (Exception e) {
             System.out.print("oooooo"+e);
        }
       return i;
    }
    
     
}
