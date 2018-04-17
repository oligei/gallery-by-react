<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>request对象demo</title></head>
<body>
<%
	request.setCharacterEncoding("GBK") ;// 设置统一编码
	String infomt = request.getParameter("infomt") ;
%>
<h3>您输入的信息为：<%=infomt%></h3>
</body>
</html>