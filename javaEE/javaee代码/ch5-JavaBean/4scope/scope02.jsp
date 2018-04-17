<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>scope</title></head>

<jsp:useBean id="student" scope="session" 
	class="ch5.demo2.Student"/>
<body>
<h1>scope02.jsp</h1>
<h3>
	бЇЩњаеУћЃК
	<jsp:getProperty name="student" property="stuname"/>
</h3>
</body>
</html>