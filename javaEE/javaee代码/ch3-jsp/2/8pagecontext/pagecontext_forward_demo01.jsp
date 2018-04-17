<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>pageContext对象学习</title></head>
<body>
<%
	//使用pageContext对象进行跳转
	pageContext.forward("pagecontext_forward_demo02.jsp?info=MLDN") ;
%>
</body>
</html>