<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head><title>JSP»ù´¡Ñ§Ï°new</title></head>
<body>
<%
	int rows = 10 ;
	int cols = 10 ;
%>
	<table border="1" width="100%">
<%
	for (int x=0;x<rows;x++){
	%>
		<tr>
	<%
		for(int y=0;y<cols;y++){
	%>
			<td><%=x*y%></td>
	<%
		}
	%>
		</tr>
	<%
	}
%>
	</table>
</body>
</html>