<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>��������</title></head>
<body>
<h1>ʹ��value��������Ϊ�ض�ֵ</h1>
<%	request.setCharacterEncoding("GBK") ;	
	int age=45;
%>
<jsp:useBean id="simple" scope="page" 
	class="ch5.demo1.SimpleBean"/>
<jsp:setProperty name="simple" property="name" value="haha"/>
<jsp:setProperty name="simple" property="age" 
	value="<%=age%>"/>
<h3>������<jsp:getProperty name="simple" property="name"/></h3>
<h3>���䣺<jsp:getProperty name="simple" property="age"/></h3>
</body>
</html>