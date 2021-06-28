
<%@page import="jspcrudpkg.jspcruddb"%>  
<jsp:useBean id="e" class="jspcrudpkg.user"></jsp:useBean>  
<jsp:setProperty property="*" name="e"/>  
<%  
int i=jspcruddb.update(e);  
response.sendRedirect("viewuser.jsp");  
%>  
