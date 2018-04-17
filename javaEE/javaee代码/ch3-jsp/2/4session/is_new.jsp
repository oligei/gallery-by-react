<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>session对象学习</title></head>
<body>
<%
	if(session.isNew()){
%>
		<h3>欢迎新用户光临！</h3>
<%
	} else {
%>
		<h3>您已经是老用户了！</h3>
<%
	}
%>
</body>
</html>