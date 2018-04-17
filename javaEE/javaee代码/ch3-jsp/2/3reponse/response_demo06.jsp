<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>reponse对象学习</title></head>
<body>
<%
	Cookie c1 = new Cookie("lxh","LiXingHua") ;
	Cookie c2 = new Cookie("mldn","www.MLDNJAVA.cn") ;
	c1.setMaxAge(1000) ;
	c2.setMaxAge(1000) ;
	response.addCookie(c1) ;
	response.addCookie(c2) ;
%>
<h2>设置Cookie到客户端！</h2>
</body>
</html>