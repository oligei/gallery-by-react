<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>四种属性范围学习</title></head>
<body>
<%	// 设置属性
	pageContext.setAttribute("name","李兴华",PageContext.REQUEST_SCOPE) ;
	pageContext.setAttribute("birthday",new Date(),PageContext.REQUEST_SCOPE) ;
%>
<jsp:forward page="request_scope_02.jsp"/>
</body>
</html>