<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>reponse����ѧϰ</title></head>
<body>
<%!	// ����ȫ�ֱ���
	int count = 0 ;
%>
<%
	response.setHeader("refresh","2");// ҳ��2��һˢ��
%>
<h3>�Ѿ�������<%=count++%>�Σ�</h3>
</body>
</html>