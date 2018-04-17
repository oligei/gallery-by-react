<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JSP»ù´¡Ñ§Ï°</title></head>
<body>
	<%
		int x = 100 ;	
	%>
	<h1>include_demo05.jsp -- <%=x%></h1>
	<jsp:include page="include.jsp"/>
</body>
</html>