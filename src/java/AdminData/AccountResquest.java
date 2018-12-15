/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminData;

import Bean.Admin_Been_Data;
import Model.Admin_Acc;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ANISH
 */
public class AccountResquest extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        try {
        Admin_Been_Data d=new Admin_Been_Data();
        d.setFname(request.getParameter("fnm"));
        d.setFathername(request.getParameter("ftnm"));
        d.setDob(request.getParameter("dob"));
        d.setEmail(request.getParameter("emi"));
        d.setMobile_no(Long.parseLong(request.getParameter("mn")));
        d.setGender(request.getParameter("gender"));
        d.setRess_Add(request.getParameter("rs_add"));
        d.setPin_code(Integer.parseInt(request.getParameter("pn")));
        d.setCity(request.getParameter("cty"));
        d.setState(request.getParameter("st"));
        d.setCountry(request.getParameter("cn"));
        d.setAcc_type(request.getParameter("actp"));
        int res=Admin_Acc.pageData(d);
        if(res>=1){
           RequestDispatcher rd=request.getRequestDispatcher("Fill_Up_Response.jsp");
           rd.forward(request, response);
        }else{
        pw.println(" not inserted");
        }
        } catch (Exception e) {
            System.out.println("Sorry"+e);
        }
        
    }
}