<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>request����demo</title></head>
<body>
<%=request.getContextPath()%>/images/1024.jpg
<img src="<%=request.getContextPath()%>/images/1024.jpg">
</body>
</html>