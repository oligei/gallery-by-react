<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>ʵ��2_2</title></head>
<body>
<table border="1">
	<tr>
		<td><h3>��&nbsp;ֵ</h3></td>
		<td><h3>ƽ��ֵ</h3></td>
		<td><h3>����ֵ</h3></td>
		<td><h3>ƽ����</h3></td>
	</tr>
	<%for(int i=1;i<=10;i++)
	{
	%>
	<tr>
		<td><h3><%=i%></h3></td>
		<td><h3><%=i*i%></h3></td>
		<td><h3><%=i*i*i%></h3></td>
		<td><h3><%=Math.sqrt(i)%></h3></td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>