/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

//import Bean.BeanClass;
import ConnectionClass.ShareConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class ServletController extends HttpServlet {

   
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        String un,up;
        String bnk="Accountant";
        try {
            
            String button=request.getParameter("btn");
            if(button.equals("Login")){
                un=request.getParameter("un");
                    up=request.getParameter("up");
                    if(un.equals("JanBank10012") && up.equals("janbank@2016")){
                        
                        //pw.println("Hello.."+un);
                        HttpSession session=request.getSession();
                        
                        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
                        session.setAttribute("user", bnk);
                        
                        rd.forward(request, response);
                        
                   
               
                }else{
                        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                        String msg="<font color='red'>Sorry! Your credencial not found..</font>";
                        request.setAttribute("Error", msg);
                        rd.forward(request, response);
                    }
            }if(button.equals("Sign In")){
                String admn_id,password;
                admn_id=request.getParameter("admid");
                password=request.getParameter("pass");
                if(admn_id.equals("Admin00012") &&password.equals("admin@2016")){
                   RequestDispatcher rd=request.getRequestDispatcher("Admin_Home.jsp");
                   HttpSession s=request.getSession();
                   s.setAttribute("adm", admn_id);
                   rd.forward(request, response);
                }else{
                    RequestDispatcher rd=request.getRequestDispatcher("Admin_Login.jsp");
                        String msg="<font color='red'>Sorry! Your fill up value not found..</font>";
                        request.setAttribute("Error", msg);
                        rd.forward(request, response);
                }
            }
         
        } catch (Exception e) {
            System.out.print("Kuchh galat ho raha hai"+e);
        }
    }
    
}
