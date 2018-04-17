<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>scope</title></head>

<jsp:useBean id="student" scope="session" 
	class="ch5.demo2.Student">
	<jsp:setProperty name="student" 
		property="stuname" value="rose"/>
</jsp:useBean>
<body>
<h1>scope01.jsp</h1>
<h3>
	бЇЩњаеУћЃК
	<jsp:getProperty name="student" property="stuname"/>
</h3>
	
</body>
</html>