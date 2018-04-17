<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<html>
<body>
	<%
		String s=(String)session.getAttribute("name");
	%>
	<h3>
		session范围属性值：<%=s %>
		<br>
		session范围属性值：${name}
	</h3>
</body>
</html>