<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo1.SimpleBean"%>
<html>
<head><title>Javabean与表单</title></head>
<body>
<%	request.setCharacterEncoding("GBK") ;	
	SimpleBean simple=new SimpleBean();
	simple.setName(request.getParameter("name"));
	simple.setAge(Integer.parseInt(request.getParameter("age")));
%>

<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>