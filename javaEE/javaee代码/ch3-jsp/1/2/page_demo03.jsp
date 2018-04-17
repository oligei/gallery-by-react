<%@ page language="java" contentType="application/msword" 
pageEncoding="GBK"%>
<html>
<head><title>第三章JSP基础语法学习</title></head>
<body>
<%
	response.setHeader("Content-Disposition",
		"attachement;filename=haha.doc") ;
%>
<table border="1">
	<tr><td>欢迎大家光临！</td></tr>
	<tr><td>jsp</td></tr>
	<tr><td>本页将使用word显示！</td></tr>
</table>
</body>
</html>