<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>request����demo</title></head>
<body>
<%
	request.setCharacterEncoding("GBK") ;// ����ͳһ����
	String infomt = request.getParameter("infomt") ;
%>
<h3>���������ϢΪ��<%=infomt%></h3>
</body>
</html>