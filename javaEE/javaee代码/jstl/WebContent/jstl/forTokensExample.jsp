<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
    <head>
        <title>JSTL</title>
    </head>
    <% 
    	session.setAttribute("msg","这是一个#forTokens#示例");
     %>
    	
    	<c:forTokens items="${msg}" delims="#" var="msg">
	        ${msg}<br>
        </c:forTokens>
        
    </body>
</html>
