<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL���ʽʾ��</title>
    </head>
	    <%
	        pageContext.setAttribute
	        	("color","#FFFFCC");
	    %>
    <body bgcolor = '${pageScope.color}' >
	    <%
	    	//����application��Χ����
	    	application.setAttribute
	    	("applicationMsg","Welcome application!");
	    	//����session��Χ����
	        session.setAttribute("sessionMsg",
	        		"Welcome session!");
	    %>
        <h1>�仯�ı���ɫ<br>
        application�������ǣ�${applicationScope.applicationMsg}<br>
        application�������ǣ�${applicationMsg}<br>
        session�������ǣ�${sessionScope.sessionMsg}<br>
        session�������ǣ�${sessionMsg}<br>
        </h1>
    </body>
</html>
