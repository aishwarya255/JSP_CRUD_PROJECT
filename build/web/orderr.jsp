<%@ page import ="java.sql.*" %>
<%
    String cakeselect = request.getParameter("cakeselect");    
    String kg = request.getParameter("kg");
    String quantity = request.getParameter("quantity");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String contactno = request.getParameter("contactno");
    String uname = request.getParameter("uname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into cakeorder(cakeselect, kg, quantity, date, time, contactno, uname) values ('" + cakeselect + "','" + kg + "','" + quantity + "','" + date + "','" + time + "','" + contactno + "','" + uname + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("order.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
