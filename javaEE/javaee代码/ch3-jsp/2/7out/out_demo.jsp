<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>out����ѧϰ</title></head>
<body>
<%
	int buffer = out.getBufferSize() ;//�õ�ȫ����������С
	int avaliable = out.getRemaining() ;//�õ�δʹ�û�������С
	int use = buffer - avaliable ;//�õ�ʹ���еĻ�������С
%>
<h3>��������С��<%=buffer%></h3>
<h3>���õĻ�������С��<%=avaliable%></h3>
<h3>ʹ���еĻ�������С��<%=use%></h3>
</body>
</html>