<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>四种属性范围学习</title></head>
<body>
<%	// 设置属性
	request.setAttribute("name","李兴华") ;
	request.setAttribute("birthday",new Date()) ;
%>
<jsp:forward page="request_scope_02.jsp"/>
</body>
</html>