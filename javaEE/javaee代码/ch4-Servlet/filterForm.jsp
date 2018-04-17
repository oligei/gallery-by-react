<%@ page import="java.util.*" pageEncoding="GBK" %>
<html>
<head><title>使用过滤器</title></head>
<body>
	<form action="servlet/DealWithServlet" method="post">
		请输入学生信息的模糊资料：
		<input type="text" name="stuname">
		<input type="submit" value="查询">
	</form>
</body>
</html>