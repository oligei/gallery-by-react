<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<html>
<body>
	<%
		String s=(String)session.getAttribute("name");
	%>
	<h3>
		session��Χ����ֵ��<%=s %>
		<br>
		session��Χ����ֵ��${name}
	</h3>
</body>
</html>