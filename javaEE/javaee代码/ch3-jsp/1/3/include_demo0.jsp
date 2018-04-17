<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JSP基础学习</title></head>
<body>
<%
//float x=9.0f;
 %>
	<h1>静态包含操作</h1>
	<%@ include file="info.htm"%>
	<%@ include file="info.jsp"%>
	<%@ include file="info.inc"%>
</body>
</html>