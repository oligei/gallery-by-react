<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>reponse对象学习</title></head>
<body>
<%	System.out.println
("============ forward跳转之前 =========") ;
%>
	<jsp:forward page="/2/3reponse/hello.htm"/>
<%	System.out.println
("============ forward跳转之后=========") ;
%>
</body>
</html>