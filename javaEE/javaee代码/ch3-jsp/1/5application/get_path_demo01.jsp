<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>application����ѧϰ</title></head>
<body>
<%	// http://localhost/mldn/
	String path = application.getRealPath("/") ;
	String path1 = application.getContextPath() ;
%>
<h3>��ʵ·����<%=path%></h3>
<h3>����·����<%=path1%></h3>
</body>
</html>