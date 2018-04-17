<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>JavaBean的保存范围</title></head>
<jsp:useBean id="cou" scope="application" class="ch5.demo2.Count"/>
<body>
<h3>第<jsp:getProperty name="cou" property="count"/>次访问！</h3>
</body>
</html>