<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>四种属性范围学习</title></head>
<body>
<%	// 设置属性
	pageContext.setAttribute("name","李兴华",PageContext.SESSION_SCOPE) ;
	pageContext.setAttribute("birthday",new Date(), PageContext.SESSION_SCOPE) ;
%>
<jsp:forward page="page_scope_03.jsp"/>
</body>
</html>