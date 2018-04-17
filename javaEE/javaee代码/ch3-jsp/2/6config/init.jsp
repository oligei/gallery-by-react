<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>Web安全性及config对象学习</title></head>
<body>
<%
	String dbDriver = config.getInitParameter("driver") ;
	String dbUrl = config.getInitParameter("url") ;
%>
<h3>驱动程序：<%=dbDriver%></h3>
<h3>连接地址：<%=dbUrl%></h3>
</body>
</html>