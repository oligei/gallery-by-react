<html>
<head><title>Servlet学习</title></head>
<body>
<form action="<%=request.getContextPath()%>/inputServlet" method="post">
	请输入内容：<input type="text" name="info">
	<input type="submit" value="提交">
</form>
</body>
</html>