<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo1.*"%>
<html>
<head><title>JavaBeanѧϰ</title></head>
<body>
<%
	SimpleBean simple = new SimpleBean() ;
	simple.setName("����") ;
	simple.setAge(30) ;
%>
<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>