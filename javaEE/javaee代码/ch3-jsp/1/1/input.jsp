<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
	<title>jsp</title>
</head>
<body>
	<%
		String str = request.getParameter("info") ;
	%>
	<h1>�����������Ϊ��<%=str%></h1>
</body>
</html>