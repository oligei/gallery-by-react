<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>session����ѧϰ</title></head>
<body>
<%
	String id = session.getId() ;
%>
<h3>SESSION ID��<%=id%></h3>
<h3>SESSION ID���ȣ�<%=id.length()%></h3>
</body>
</html>