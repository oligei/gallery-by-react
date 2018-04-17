<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo1.*"%>
<html>
<head><title>JavaBean学习</title></head>
<body>
<%
	SimpleBean simple = new SimpleBean() ;
	simple.setName("王林") ;
	simple.setAge(30) ;
%>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>