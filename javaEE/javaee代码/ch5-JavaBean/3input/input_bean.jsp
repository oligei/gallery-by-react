<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>��������</title></head>
<body>
<h1>������name���Ե�ֵ</h1>
<%	request.setCharacterEncoding("GBK") ;	%>
<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<jsp:setProperty name="simple" property="name"/>
<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>