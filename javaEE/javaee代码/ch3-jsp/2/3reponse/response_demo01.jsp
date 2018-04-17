<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>reponse对象学习</title></head>
<body>
<%!	// 定义全局变量
	int count = 0 ;
%>
<%
	response.setHeader("refresh","2");// 页面2秒一刷新
%>
<h3>已经访问了<%=count++%>次！</h3>
</body>
</html>