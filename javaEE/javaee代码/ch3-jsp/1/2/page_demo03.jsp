<%@ page language="java" contentType="application/msword" 
pageEncoding="GBK"%>
<html>
<head><title>������JSP�����﷨ѧϰ</title></head>
<body>
<%
	response.setHeader("Content-Disposition",
		"attachement;filename=haha.doc") ;
%>
<table border="1">
	<tr><td>��ӭ��ҹ��٣�</td></tr>
	<tr><td>jsp</td></tr>
	<tr><td>��ҳ��ʹ��word��ʾ��</td></tr>
</table>
</body>
</html>