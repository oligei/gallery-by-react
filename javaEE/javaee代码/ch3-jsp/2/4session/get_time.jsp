<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>session对象学习</title></head>
<body>
<%
	long start = session.getCreationTime() ;
	long end = session.getLastAccessedTime() ;
	long time = (end - start) / 1000 ;
%>
<h3>您已经停留了<%=time%>秒！</h3>
</body>
</html>