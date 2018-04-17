<%@ page contentType="text/html" pageEncoding="GBK"
	import="demo.Student" %>
<html>
    <head>
        <title>使用EL访问JavaBean</title>
    </head>
	<body>
		<h1>使用EL访问JavaBean
	    <%
	    	Student student=new Student();
	    	student.setStuno("0001");
	    	student.setStuname("张三");
	    	session.setAttribute("student",student);
	    %>
       
       	学号：${sessionScope.student.stuno}<br>
                 姓名：${sessionScope.student["stuname"]}<br>
        </h1>
    </body>
</html>
