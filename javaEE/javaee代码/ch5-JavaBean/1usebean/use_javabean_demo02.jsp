<%@ page contentType="text/html" pageEncoding="GBK"%>

<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<html>
<head><title>JavaBeanѧϰ</title></head>
<body>
<%
	simple.setName("��СС") ;
	simple.setAge(20) ;
%>
<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>