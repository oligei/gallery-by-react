<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>设置属性</title></head>
<body>
<h1>仅设置name属性的值</h1>
<%	request.setCharacterEncoding("GBK") ;	%>
<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<jsp:setProperty name="simple" property="name"/>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>