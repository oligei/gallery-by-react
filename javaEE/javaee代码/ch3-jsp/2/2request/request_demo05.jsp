<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>request对象demo</title></head>
<body>
<%
	Enumeration enu = request.getHeaderNames() ;	// 取得全部的头信息
	while(enu.hasMoreElements()){
		String headerName = (String) enu.nextElement() ;
		String headerValue = request.getHeader(headerName) ;
%>
		<h5><%=headerName%> --> <%=headerValue%></h5>
<%
	}
%>
</table>
</body>
</html>