<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
    <head>
        <title>EL表达式示例</title>
    </head>
	    <%
	        pageContext.setAttribute
	        	("color","#FFFFCC");
	    %>
    <body bgcolor = '${pageScope.color}' >
	    <%
	    	//设置application范围属性
	    	application.setAttribute
	    	("applicationMsg","Welcome application!");
	    	//设置session范围属性
	        session.setAttribute("sessionMsg",
	        		"Welcome session!");
	    %>
        <h1>变化的背景色<br>
        application的内容是：${applicationScope.applicationMsg}<br>
        application的内容是：${applicationMsg}<br>
        session的内容是：${sessionScope.sessionMsg}<br>
        session的内容是：${sessionMsg}<br>
        </h1>
    </body>
</html>
