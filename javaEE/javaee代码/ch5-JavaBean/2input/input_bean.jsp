<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="ch5.demo1.SimpleBean"%>
<html>
<head><title>Javabean���</title></head>
<body>
<%	request.setCharacterEncoding("GBK") ;	
	SimpleBean simple=new SimpleBean();
	simple.setName(request.getParameter("name"));
	simple.setAge(Integer.parseInt(request.getParameter("age")));
%>

<h3>������<%=simple.getName()%></h3>
<h3>���䣺<%=simple.getAge()%></h3>
</body>
</html>