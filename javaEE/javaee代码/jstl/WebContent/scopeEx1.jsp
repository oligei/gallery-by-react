<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
    	<% 
    	pageContext.setAttribute("info","page��Χ����");
    	request.setAttribute("info","request��Χ����");
    	session.setAttribute("info","session��Χ����");
    	application.setAttribute("info","application��Χ����");
    	 %>
    	<h1>
        ${info}
        </h1>
    </body>
</html>
