<%@page import="jspcrudpkg.jspcruddb"%>  
<jsp:useBean id="e" class="jspcrudpkg.user"></jsp:useBean> 

<jsp:setProperty property="*" name="e"/>  
<%  
jspcruddb.delete(e);  
response.sendRedirect("viewuser.jsp");  
%> 
