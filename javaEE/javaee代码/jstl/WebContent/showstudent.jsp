<%@ page contentType="text/html" pageEncoding="GBK"
	import="demo.Student" %>
<html>
    <head>
        <title>ʹ��EL����JavaBean</title>
    </head>
	<body>
		<h1>ʹ��EL����JavaBean
	    <%
	    	Student student=new Student();
	    	student.setStuno("0001");
	    	student.setStuname("����");
	    	session.setAttribute("student",student);
	    %>
       
       	ѧ�ţ�${sessionScope.student.stuno}<br>
                 ������${sessionScope.student["stuname"]}<br>
        </h1>
    </body>
</html>
