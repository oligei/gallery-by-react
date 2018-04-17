<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>Javabean与表单</title></head>
<body>
<%	request.setCharacterEncoding("GBK") ;	%>
<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<jsp:setProperty name="simple" property="name" param="name1"/>
<jsp:setProperty name="simple" property="age" value="12"/>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>