<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>�������Է�Χѧϰ</title></head>
<body>
<%	// ��������
	pageContext.setAttribute("name","���˻�",PageContext.SESSION_SCOPE) ;
	pageContext.setAttribute("birthday",new Date(), PageContext.SESSION_SCOPE) ;
%>
<jsp:forward page="page_scope_03.jsp"/>
</body>
</html>