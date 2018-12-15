package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <link href=\"Look\\side_menu.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"Look\\top\\top_menu.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"Look\\Image_Effect\\img.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"Look\\layout.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        \n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        <div class=\"Container\">\n");
      out.write("            <header>\n");
      out.write("                <div style=\"float: left; margin: 10px;\"><img src=\"image/an.png\" style=\"border-radius:50% 50% 50% 50%;width: 100px;height: 100px;\"></div> \n");
      out.write("                <div style=\"float: left;margin: 15px;\"><br><div  ><font style=\"font-size: xx-large\">JanBank</font>&nbsp;<font style=\"font-size-adjust: inherit;font-size: medium;font-style: italic;color: aliceblue;\">Your money yourBank</font></div></div>\n");
      out.write("                <div style=\"float: right;margin: 10px;\"><div class=\"m\"><a href=\"home.jsp\" style=\"text-decoration: none\">Home</a> | <a href=\"\" style=\"text-decoration: none\">About Us</a> | <a href=\"\" style=\"text-decoration: none\">Contact Us</a> | <a href=\"index.jsp\" style=\"text-decoration: none\">Logout</a></div><hr></div><br><br><br>\n");
      out.write("                <div style=\"float: bottom\">\n");
      out.write("                    <p align=\"right\" style=\"padding-right: 8px;\">Last accessed time: ");
      out.print(new Date(session.getLastAccessedTime()));
      out.write("</p>\n");
      out.write("                     \n");
      out.write("               </div>\n");
      out.write("                </header>\n");
      out.write("                    <nav>\n");
      out.write("                   <div>Welcome!&nbsp;");
 
                String msg=(String)session.getAttribute("user");
                String ms=(String)session.getAttribute("syam");
                if(ms!=null){
                    out.print("<mark>"+ms+" ");
                }
                if(msg!=null){
                out.print("<mark>"+msg+"</mark>");}
                
      out.write("</div>\n");
      out.write("                <div class=\"dc\">\n");
      out.write("                    <b> Services >></b><ul >\n");
      out.write("                        <li ><a  id=\"\" href=\"Create_Account.jsp\"  >Open New Account</a></li>\n");
      out.write("                        <li><a id=\"\" href=\"Account_manage.jsp\"   >Manage Account</a></li>\n");
      out.write("                        <li><a id=\"\" href=\"Active_list.jsp\" >Active Account</a></li></ul>\n");
      out.write("                    <b> Informations >></b><ul >\n");
      out.write("                    <li ><a  id=\"\" href=\"Saving_Account.jsp\"  >Saving Account</a></li>\n");
      out.write("                        <li><a id=\"\" href=\"\"   >Current Account</a></li>\n");
      out.write("                        <li><a id=\"\" href=\"\"   >Salary Account</a></li>\n");
      out.write("                        <li><a id=\"\" href=\"\" >Loaning Account</a></li></ul>\n");
      out.write("                </div>\n");
      out.write("                    </nav>\n");
      out.write("                <article style=\"\" id=\"HT\">\n");
      out.write("                <marquee><font color=\"lightpurple\">Thanks to Visiting in Our Bank</marquee>\n");
      out.write("                <div id=\"cf\" style=\"margin:10px;\" >\n");
      out.write("                    <a  href=\"main.jsp\"><img class=\"bottom\" src=\"image/banking.png\" style=\"width: 100%;height: 160px;\"><img class=\"top\" src=\"image/bnk1.jpg\" style=\"width: 100%;height: 160px;\"></a></p>\n");
      out.write("                </div><br><br><br><br><br><br><br><br><br>\n");
      out.write("                <div style=\" background-color: honeydew;border:solid 1px gray;border-radius: 8px;margin:10px;\">\n");
      out.write("                  \n");
      out.write("                    <p align=\"justify\" style=\"padding: 8px;font-family: inherit;font-size: large;color:black\">\n");
      out.write("                        It is Client-Side Web Banking Application thats provides the Services of Bank such as Opening Account,Cash Deposit,Cash Withdraw,Balance Transfer,Balance Enquiry etc.You can manage your account by deposit amount,withdraw amount,balance transfer to another account.This application mainly used for bank staff member such as Accountant , Manager.Our bank slogan is <font style=\"font-style: italic;color: #00F\">Your Money Your Bank</font>.that means where your money,where your Bank.\n");
      out.write("                       \n");
      out.write("                        JanBank is the name of our bank title name,its a unique name.our bank is connected with other commercial banks.we have number of account holder their account joined with our bank.They can easily to manage their account by visiting in our bank.\n");
      out.write("                    </p>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                </article>\n");
      out.write("                <footer><h1>Copyright&#169;anish2016</h1></footer>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
