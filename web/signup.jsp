<%@ page import ="java.sql.*" %>
<%
    String fullname = request.getParameter("fullname");    
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String uname = request.getParameter("uname");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into signup(fullname, address, phone, uname, password) values ('" + fullname + "','" + address + "','" + phone + "','" + uname + "','" + password + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
