<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>Javabean���</title></head>
<body>
<%	request.setCharacterEncoding("GBK") ;	%>
<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<jsp:setProperty name="simple" property="name" param="name1"/>
<jsp:setProperty name="simple" property="age" value="12"/>
<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>