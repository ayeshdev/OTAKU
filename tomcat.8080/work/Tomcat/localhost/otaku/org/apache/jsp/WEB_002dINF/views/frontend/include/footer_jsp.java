/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-08-18 14:19:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend.include;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("<div class=\"block-newsletter\">\r\n");
      out.write("    <div class=\"parallax\" data-source-url=\"img/banner/parallax.jpg\" style=\"background-image:url(img/banner/parallax.jpg); background-position:50% 65.8718%;\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"tt-newsletter col-sm-7\">\r\n");
      out.write("                <h2 class=\"text-uppercase\">Subscribe to our Newsletter</h2>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"block-content col-sm-5\">\r\n");
      out.write("                <form method=\"post\" action=\"contact-us.html\">\r\n");
      out.write("                    <div class=\"input-group\">\r\n");
      out.write("                        <input type=\"email\" name=\"email\" value=\"\" placeholder=\"Email address..\" required=\"\" class=\"form-control\">\r\n");
      out.write("                        <span class=\"input-group-btn\">\r\n");
      out.write("			 <button class=\"btn btn-theme text-uppercase btn-primary\" type=\"submit\">Subscribe</button>\r\n");
      out.write("			 </span>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<footer class=\"page-footer font-small footer-default\">\r\n");
      out.write("    <div class=\"container text-center text-md-left\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-2 footer-cms footer-column\">\r\n");
      out.write("                <div class=\"ttcmsfooter\">\r\n");
      out.write("                    <div class=\"footer-logo\"><img src=\"img/logos/footer-logo.png\" alt=\"footer-logo\" width=\"200\" height=\"50\"></div>\r\n");
      out.write("                    <div class=\"footer-desc\">At vero eos et accusamus et iusto odio dignissimos ducimus, duis faucibus enim vitae</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-2 footer-column\">\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <a href=\"#company\" class=\"font-weight-normal text-capitalize mb-10\" data-toggle=\"collapse\" aria-expanded=\"false\">company</a>		  </div>\r\n");
      out.write("                <ul id=\"company\" class=\"list-unstyled collapse\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">search</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">New Products</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"category.html\">Best Collection</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"wishlist.html\">wishlist</a>            </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-2 footer-column\">\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <a href=\"#products\" class=\"font-weight-normal text-capitalize mb-10\" data-toggle=\"collapse\" aria-expanded=\"false\">products</a>		  </div>\r\n");
      out.write("                <ul id=\"products\" class=\"list-unstyled collapse\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"blog-details.html\">blog</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"about-us.html\">about us</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"contact-us.html\">contact us</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"my-account.html\">my account</a>            </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-2 footer-column\">\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <a href=\"#account\" class=\"font-weight-normal text-capitalize mb-10\" data-toggle=\"collapse\" aria-expanded=\"false\">your account</a>		  </div>\r\n");
      out.write("                <ul id=\"account\" class=\"list-unstyled collapse\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"blog-details.html\">personal info</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">orders</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"contact-us.html\">addresses</a>            </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"my-account.html\">my wishlists</a>            </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-2 footer-column\">\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <a href=\"#information\" class=\"font-weight-normal text-capitalize mb-10\" data-toggle=\"collapse\" aria-expanded=\"false\">store information</a>		  </div>\r\n");
      out.write("                <ul id=\"information\" class=\"list-unstyled collapse\">\r\n");
      out.write("                    <li class=\"contact-detail links\">\r\n");
      out.write("              <span class=\"address\">\r\n");
      out.write("			  		<span class=\"icon\"><i class=\"material-icons\">location_on</i></span>\r\n");
      out.write("					<span class=\"data\"> 4030, Central Bazzar, opp. Varachha Police Station, Varachha Main Road, Surat, Gujarat 395006, India</span>			  </span>            </li>\r\n");
      out.write("                    <li class=\"links\">\r\n");
      out.write("               <span class=\"contact\">\r\n");
      out.write("			  		<span class=\"icon\"><i class=\"material-icons\">phone</i></span>\r\n");
      out.write("					<span class=\"data\"><a href=\"tel:(99)55669999\">+ (99) 55-669-999</a></span>			  </span>            </li>\r\n");
      out.write("                    <li class=\"links\">\r\n");
      out.write("               <span class=\"email\">\r\n");
      out.write("			  		<span class=\"icon\"><i class=\"material-icons\">email</i></span>\r\n");
      out.write("					<span class=\"data\"><a href=\"mailto:demo.store@gmail.com\">demo.store@gmail.com</a></span>  </span>           </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- Copyright -->\r\n");
      out.write("    <div class=\"footer-bottom-wrap\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"footer-copyright text-center py-3\">\r\n");
      out.write("                    Â© 2019 - Boostrap theme by storeâ¢\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <a href=\"#\" id=\"goToTop\" title=\"Back to top\" class=\"btn-primary\"><i class=\"material-icons arrow-up\">keyboard_arrow_up</i></a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
