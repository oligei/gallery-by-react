<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JSP基础学习</title></head>
<body>
<%
	float x=9.0f;
%>
	<h1>动态包含操作</h1>
	<jsp:include page="info.htm"/>
	<jsp:include page="info.jsp"/>
	<jsp:include page="info.inc"/>
</body>
</html>