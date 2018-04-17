<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>application对象学习</title></head>
<body>
<%	// http://localhost/mldn/
	String path = this.getServletContext().getRealPath("/") ;
%>
<h3>真实路径：<%=path%></h3>
</body>
</html>