<%@ page contentType="text/html" pageEncoding="GBK"%>

<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<html>
<head><title>JavaBean学习</title></head>
<body>
<%
	simple.setName("张小小") ;
	simple.setAge(20) ;
%>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>