<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JavaBean�ı��淶Χ</title></head>
<jsp:useBean id="cou" scope="application" class="ch5.demo2.Count"/>
<body>
<h3>��<jsp:getProperty name="cou" property="count"/>�η��ʣ�</h3>
</body>
</html>