<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>�������Է�Χѧϰ</title></head>
<body>
<%	// ��������
	session.setAttribute("name","���˻�") ;
	session.setAttribute("birthday",new Date()) ;
%>
<jsp:forward page="page_scope_03.jsp"/>
</body>
</html>