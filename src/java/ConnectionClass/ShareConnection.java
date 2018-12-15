/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectionClass;
import java.sql.*;
/**
 *
 * @author ANISH
 */
public class ShareConnection {
   /*public  static String ConUrl="jdbc:mysql://localhost:3306/JanBank";
  public static  String Drivername="com.mysql.jdbc.Driver";
  public static  String User="root";
  public static  String Pass="root";*/
   static {
       try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           //Class.forName(Drivername);
         System.out.println("Driver Loaded");
       }catch(Exception e){
           System.out.println("Driver Loading er0rr"+e);
       }
   }
   public static Connection DistributeConn(){
       Connection con=null;
       try {
          con=DriverManager.getConnection("Jdbc:Odbc:janbank");
           //con=DriverManager.getConnection(ConUrl, User, Pass);
          System.out.println("Connection  Opened");
       } catch (Exception e) {
        System.out.println("connecting error"+ e);   
       }
       return con;
   }
   
    
}
