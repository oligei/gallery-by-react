<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>mvc</title></head>

<jsp:useBean id="stu" scope="request" 
	class="ch5.demo2.Student"/>
<body>
	<h3>
	ѧ�ţ�<jsp:getProperty name="stu" property="stuno"/><br>
	���� ��<jsp:getProperty name="stu" property="stuname"/><br>
	</h3>
</body>
</html>