<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JSP基础学习</title></head>
<body>
	<%
		int x = 100 ;	// 变量重复
	%>
	<h1>include_demo04.jsp -- <%=x%></h1>
	<%@include file="include.jsp"%>
</body>
</html>