<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from signup where uname='" + uname + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("uname", uname);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>"); 
        
        response.sendRedirect("order.jsp");
    } else {
        out.println("Invalid password try again</a>");
        response.sendRedirect("index.jsp");
    }
%>
