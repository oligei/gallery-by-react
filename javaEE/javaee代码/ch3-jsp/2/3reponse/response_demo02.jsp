<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>reponse����ѧϰ</title></head>
<body>
<h3>3�����ת��hello.htmҳ�棬���û����ת��
��<a href="hello.htm">����</a>��</h3>
<%
	response.setHeader("refresh","3;URL=hello.htm") ;	// 3�����ת��hello.htmҳ��
%>
</body>
</html>