<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>四种属性范围学习</title></head>
<body>
<%
	String username = (String) request.getAttribute("name") ;
	Date userbirthday = (Date)request.getAttribute("birthday") ;
%>
<h2>姓名：<%=username%></h2>
<h2>生日：<%=userbirthday%></h2>
</body>
</html>