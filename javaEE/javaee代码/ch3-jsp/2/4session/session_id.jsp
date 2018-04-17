<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>session对象学习</title></head>
<body>
<%
	String id = session.getId() ;
%>
<h3>SESSION ID：<%=id%></h3>
<h3>SESSION ID长度：<%=id.length()%></h3>
</body>
</html>