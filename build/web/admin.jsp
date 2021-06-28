<%@ page import ="java.sql.*" %>
<%
  
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");

        if (uname.equals("admin") && password.equals("admin")) {
            response.sendRedirect("adminpage.jsp");
        } else {
            response.sendRedirect("admin.html");
        }
%>

