<%@page import="jspcrudpkg.jspcruddb"%>  
<jsp:useBean id="f" class="jspcrudpkg.order"></jsp:useBean> 

<jsp:setProperty property="*" name="f"/>  
<%  
jspcruddb.deleteorder(f);  
response.sendRedirect("vieworder.jsp");  
%> 
