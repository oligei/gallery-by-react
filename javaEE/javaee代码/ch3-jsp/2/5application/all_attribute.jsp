<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>application对象学习</title></head>
<body>
<%	
	Enumeration enu = this.getServletContext().getAttributeNames() ;	// 取得全部的属性
	while(enu.hasMoreElements()){
		String name = (String) enu.nextElement() ;
%>
		<h4><%=name%> --> <%=this.getServletContext().getAttribute(name)%></h4>
<%
	}
%>
</body>
</html>