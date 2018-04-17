<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>获取Servlet传递的参数</title></head>
<body>
<%	request.setCharacterEncoding("GBK") ;	%>
<h2>sesion属性：<%=session.getAttribute("name")%></h2>
<h2>request属性：<%=request.getAttribute("info")%></h2>
</body>
</html>