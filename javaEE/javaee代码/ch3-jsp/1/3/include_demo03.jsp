<%@ page contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<html>
<head><title>JSP����ѧϰ</title></head>
<body>
	<h1>��̬��������</h1>
	<%
		String username = "Tom" ;
		int x=1;
	%>
	<jsp:include page="receive_param.jsp">
		<jsp:param name="name" value="<%=username%>"/>
		<jsp:param name="info" value="JSP study"/>
	</jsp:include>
</body>
</html>