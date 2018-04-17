<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>application对象学习</title></head>
<body>
<%	// http://localhost/mldn/
	String path = application.getRealPath("/") ;
	String path1 = application.getContextPath() ;
%>
<h3>真实路径：<%=path%></h3>
<h3>虚拟路径：<%=path1%></h3>
</body>
</html>