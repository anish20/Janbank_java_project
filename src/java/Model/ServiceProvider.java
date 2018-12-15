/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import ConnectionClass.ShareConnection;
import java.util.*;
import java.sql.*;
/**
 *
 * @author ANISH
 */
public class ServiceProvider {
    
    public static int getBalance(String sql){
        int balance=0;
        Connection con=null;
        
        try{
           con=ShareConnection.DistributeConn(); 
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery(sql);
           while(rs.next()){
               balance=rs.getInt(1);
           }
           con.close();
        }catch(Exception e){
          System.out.println ("Yaar kuchh galat ho raha hai,,"+e);  
        }
        
        return balance;
        
    }
    public static int updateBalance(String sql){
        int update=0;
        try {
            Connection con=ShareConnection.DistributeConn();
            Statement st=con.createStatement();
            update=st.executeUpdate(sql);
            con.close();
        } catch (Exception e) {
            System.out.println (e); 
        }
        
        return update;
    }
    
}
