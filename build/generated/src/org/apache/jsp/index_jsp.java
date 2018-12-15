package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            #main{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #header{\n");
      out.write("                padding-bottom: 20px;\n");
      out.write("                padding-top: 30px;\n");
      out.write("                width: 70%;\n");
      out.write("                background: darkturquoise;\n");
      out.write("                text-align: center;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #content{\n");
      out.write("                height:400px;\n");
      out.write("                width: 70%;\n");
      out.write("                background-image: url(image/bnr2.jpg);\n");
      out.write("               background-repeat: no-repeat;\n");
      out.write("               background-size: cover;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #footer{\n");
      out.write("                height: 50px;\n");
      out.write("                width: 70%; \n");
      out.write("                background: darkgrey;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("</style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <h2>Banking Login Page</h2>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"content\"><br>\n");
      out.write("                 <marquee>Welcome to Banking Login Page</marquee>\n");
      out.write("                <div align=\"center\" style=\"padding: 50px; border: solid 1px lightcoral;width: 30%;border-radius: 8px;\">\n");
      out.write("                    <form action=\"ServletController\" method=\"post\">\n");
      out.write("                    <table cellpadding=\"10\">\n");
      out.write("                        \n");
      out.write("                        <tr>\n");
      out.write("                            <td>Bank ID</td>\n");
      out.write("                            <td><input type=\"text\" name=\"un\" required=\"\" style=\"width: 100%;\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Password</td>\n");
      out.write("                            <td><input type=\"password\" name=\"up\" required=\"\" style=\"width: 100%;\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            \n");
      out.write("                            <td><input type=\"submit\" name=\"btn\" value=\"Login\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table></form>\n");
      out.write("                    \n");
      out.write("                </div><br>\n");
      out.write("                 ");

String mg=(String)request.getAttribute("Error");
if(mg!=null){
    out.print("<div style='border-radius:8px;background-color:white;border:solid 1px lightpink;width:30%;height:100px;'>");
   out.println("<a href='index.jsp' style='text-decoration:none;'><img src='image/cn.png' align='right'</a>");
    out.println("<br><br>"+"<img src='image/error.png' width='30px;' height='30px;'>"+"&nbsp;&nbsp;"+"<mark>"+"<b>"+mg+"</b>"+"</mark>"); 
   out.print("</div>");
}

      out.write("\n");
      out.write("             </div>\n");
      out.write("            <div id=\"footer\"> Copyright@2016</div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
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
