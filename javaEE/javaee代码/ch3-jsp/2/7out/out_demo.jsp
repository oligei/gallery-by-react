<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>out对象学习</title></head>
<body>
<%
	int buffer = out.getBufferSize() ;//得到全部缓冲区大小
	int avaliable = out.getRemaining() ;//得到未使用缓冲区大小
	int use = buffer - avaliable ;//得到使用中的缓冲区大小
%>
<h3>缓冲区大小：<%=buffer%></h3>
<h3>可用的缓冲区大小：<%=avaliable%></h3>
<h3>使用中的缓冲区大小：<%=use%></h3>
</body>
</html>