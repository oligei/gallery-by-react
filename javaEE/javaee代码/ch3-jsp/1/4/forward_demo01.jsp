<html>
<head><title>JSP����ѧϰ</title></head>
<body>
<%
	String username = "Tom";
%>
demo01---<%=username%>
<jsp:forward page="forward_demo02.jsp">
	<jsp:param name="name" value="<%=username%>"/>
	
</jsp:forward>
</body>
</html>