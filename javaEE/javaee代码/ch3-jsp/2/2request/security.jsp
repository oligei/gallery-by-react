<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>request����demo</title></head>
<body>
<%
	if(request.isUserInRole("admin")){
%>
		<h2>��ӭ���٣�</h2>
<%
	}
%>
</table>
</body>
</html>