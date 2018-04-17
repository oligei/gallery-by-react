<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>实验2_2</title></head>
<body>
<table border="1">
	<tr>
		<td><h3>数&nbsp;值</h3></td>
		<td><h3>平方值</h3></td>
		<td><h3>立方值</h3></td>
		<td><h3>平方根</h3></td>
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