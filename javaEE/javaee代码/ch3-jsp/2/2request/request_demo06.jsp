<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>request����demo</title></head>
<body>
<%
	String method = request.getMethod() ;
	String ip = request.getRemoteAddr() ;
	String path = request.getServletPath() ;
	String contextPath = request.getContextPath() ;//�ܳ���
%>
<h3>����ʽ��<%=method%></h3>
<h3>IP��ַ��<%=ip%></h3>
<h3>����·����<%=path%></h3>
<h3>���������ƣ�<%=contextPath%></h3>
</table>
</body>
</html>