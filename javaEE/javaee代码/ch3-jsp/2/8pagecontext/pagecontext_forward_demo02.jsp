<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>pageContext����ѧϰ</title></head>
<body>
<%
	// ֱ�Ӵ�pageContext������ȡ����request
	String info = pageContext.getRequest().getParameter("info") ;
%>
<h3>info = <%=info%></h3>
<h3>realpath = <%=pageContext.getServletContext().getRealPath("/")%></h3>
</body>
</html>